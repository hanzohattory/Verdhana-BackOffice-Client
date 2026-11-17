unit FormEditorBasic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxStatusBar, Vcl.Tabs, Data.DB, Datasnap.DBClient, NClientDataset,
  ClassClientConst, cxDateUtils, cxCalendar, cxDBEdit, cxSpinEdit, cxDBLookupComboBox,
  cxMaskEdit, cxButtonEdit, cxCalc, cxTextEdit, cxDropDownEdit, cxEdit, cxContainer,
  cxGridDBBandedTableView, cxGridDBTableView, cxClasses;

type
  TfrmEditorBasic = class(TForm)
    dsSubject: TDataSource;
    tabEditorData: TTabSet;
    StatusBar: TdxStatusBar;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FState: TProcessKind;

    procedure EditModes;
    procedure ViewModes;
    procedure OpenDataSet(AKey: String);
    procedure UpdateLastRefreshData;
  public
    { Public declarations }
    procedure GetDataSetFromControl(AControl: TComponent; var ADataSet: TDataSet; var AFieldName: String);

    {New Framework Model 20160503 :p}
    procedure View(AKey: String);
    procedure Insert; Overload;
    procedure Insert(AKey: String); Overload;
    procedure Edit(AKey: String);
    procedure Delete(AKey: String);
    procedure Approve(AKey: String);
    procedure Reject(AKey: String);
    procedure Cancel(AKey: String);
  end;

var
  frmEditorBasic: TfrmEditorBasic;

implementation

{$R *.dfm}

uses DataGlobal, FormAuditLog, cxGrid, cxGridCustomView, TypInfo;

procedure TfrmEditorBasic.Approve(AKey: String);
begin
  OpenDataSet(AKey);
  ViewModes;
  FState := pkApprove;
  StatusBar.Panels[0].Text := 'Approve';
end;

procedure TfrmEditorBasic.btnOKClick(Sender: TObject);
var
  i: Integer;
begin

  if dsSubject.DataSet <> nil then
  begin
    for i := 0 to dsSubject.DataSet.FieldCount -1 do
    begin
      if ((dsSubject.DataSet.Fields[i].Tag = REQUIRED_FIELD_TAG) or (dsSubject.DataSet.Fields[i].Required)) and
        (not dsSubject.DataSet.Fields[i].ReadOnly) then
      begin
        case dsSubject.DataSet.Fields[i].DataType of
          ftString, ftWideString, //karakter
          ftMemo                  : begin
                                      if (dsSubject.DataSet.Fields[i].AsString = '') or
                                        (dsSubject.DataSet.Fields[i].IsNull)
                                      then
                                      begin
                                        dmGlobal.ErrorMessage(dsSubject.DataSet.Fields[i].DisplayName +' must have value ');
                                        Abort;
                                      end;
                                    end;
          ftInteger,ftFloat, ftBCD,ftLargeint,
          ftDate, ftTime, ftDateTime,
          ftWord,ftSmallint,
          ftCurrency
                                  : begin
                                      if //(dsSubject.DataSet.Fields[i].Value = 0) or
                                        (dsSubject.DataSet.Fields[i].IsNull)
                                      then
                                      begin
                                        dmGlobal.ErrorMessage(dsSubject.DataSet.Fields[i].DisplayName +' must have value ');
                                        Abort;
                                      end;
                                    end;

        end;
      end;
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfrmEditorBasic.Cancel(AKey: String);
begin
  OpenDataSet(AKey);
  ViewModes;
  FState := pkCancel;
  StatusBar.Panels[0].Text := 'Cancel';
end;

procedure TfrmEditorBasic.Delete(AKey: String);
begin
  OpenDataSet(AKey);
  ViewModes;
  FState := pkDelete;
  StatusBar.Panels[0].Text := 'Delete';
end;

procedure TfrmEditorBasic.Edit(AKey: String);
var
  oCds: TClientDataSet;
begin
  OpenDataSet(AKey);

  oCds := TClientDataSet(dsSubject.DataSet);
  if not oCds.IsEmpty then
  begin
    EditModes;
    oCds.Edit;
    if oCds is TNClientDataSet then
    begin
      if TNClientDataset(oCds).Control4Eyes then
      begin
        with dmGlobal do
        begin
          cdsApproveRequest.Close;
          cdsApproveRequest.Params[0].AsString := oCds.ProviderName;
          cdsApproveRequest.Params[1].AsString := AKey;
          cdsApproveRequest.Open;

          if not cdsApproveRequest.IsEmpty then
          begin
            oCds.XMLData := cdsApproveRequestXMLDATA.AsString;
          end;
        end;
      end;
    end;
    FState := pkUpdate;
    StatusBar.Panels[0].Text := 'Edit';
  end
  else
  begin
    FState := pkRead;
    ViewModes;
    ShowMessage('Data not found.');
  end;
end;

procedure TfrmEditorBasic.EditModes;
var
  oCds: TClientDataSet;
begin
  oCds := TClientDataSet(dsSubject.DataSet);
  dmGlobal.SetReadOnlyDataset(oCds, False);
end;

procedure TfrmEditorBasic.FormCreate(Sender: TObject);
var
  oCds: TNClientDataset;
begin
  if (dsSubject.DataSet is TNClientDataset) then
  begin
    with dmGlobal do
    begin
      oCds := TNClientDataset(dsSubject.DataSet);
      SetDataSetProperty(oCds);

      if cdsModule.Locate('MODULE', oCds.ProviderName, []) then
      begin
        if (cdsModuleDEFAULTFORM.IsNull) or (Trim(cdsModuleDEFAULTFORM.AsString) = '') then
        begin
          cdsModule.Edit;
          cdsModuleDEFAULTFORM.AsString := Self.ClassName;
          if oCds.Control4Eyes then
            cdsModuleCONTROL4EYES.AsString := '1'
          else
            cdsModuleCONTROL4EYES.AsString := '0';
          cdsModule.Post;
//          cdsModule.ApplyUpdates(-1);
        end;
      end;
    end;
  end;
end;

procedure TfrmEditorBasic.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sName, sCaption: String;
  AControl: TWinControl;
  PropList: PPropList;
  PropInfo: PPropInfo;
  i, iPos, PropCount: Integer;

  oCds: TNClientDataset;
  oDataSet: TDataSet;
  sFieldName, sDataSetName, sTableName, sPrimaryKey: String;
  sFieldValue, sPrimaryKeyValue, sTempKeyField: String;
  oField: TField;
  Lanjut: Boolean;
begin
  if (Key = VK_F9) or (Key = VK_F10) or (Key = VK_F11) or (Key = VK_F12) then
  begin
    oDataSet := Nil;
    sFieldName := '';
    AControl := Screen.ActiveControl;
    if Supports(AControl, IcxInnerEditHelper) or Supports(AControl, IcxContainerInnerControl) then
    begin
      GetDataSetFromControl(AControl.Owner, oDataSet, sFieldName);
    end
    else
    begin
      if AControl is TcxGridSite then
      begin
        GetDataSetFromControl(AControl.Parent, oDataSet, sFieldName);
      end
      else
      begin
        GetDataSetFromControl(AControl, oDataSet, sFieldName);
      end;
    end;

    if (oDataSet <> Nil) then
    begin
      if (oDataSet is TNClientDataset) then
      begin
        oCds := TNClientDataset(oDataSet);
        sDataSetName := oCds.Name;
        sTableName := oCds.TableName;
        sPrimaryKey := oCds.PrimaryKeyFields;
        oField := oCds.FindField(sFieldName);
        if (oField <> nil) then
        begin
          if not oField.IsNull then
          begin
            if oField.DataType in [ftDate] then
              sFieldValue := FormatDateTime('dd MMMM yyyy', oField.AsDateTime)
            else if oField.DataType in [ftDateTime, ftTimeStamp] then
              sFieldValue := FormatDateTime('dd MMMM yyyy hh:nn:ss.zzz', oField.AsDateTime)
            else if oField.DataType in [ftTime] then
              sFieldValue := FormatDateTime('hh:nn:ss.zzz', oField.AsDateTime)
            else
              sFieldValue := VarToStr(oField.Value);
          end
          else
            sFieldValue := '';
        end
        else
          sFieldValue := '';

        sPrimaryKeyValue := '';
        iPos := 1;
        Lanjut := True;
        while Lanjut do
        begin
          sTempKeyField := ExtractFieldName(sPrimaryKey, iPos);

          if (sTempKeyField <> '') then
          begin
            oField := oCds.FindField(sTempKeyField);
            if (oField <> nil) then
            begin
              if (sPrimaryKeyValue <> '') then
                sPrimaryKeyValue := sPrimaryKeyValue + Chr(1);

              if not oField.IsNull then
              begin
                if oField.DataType in [ftDate, ftDateTime, ftTimeStamp] then
                  sPrimaryKeyValue := sPrimaryKeyValue + FormatDateTime('yyyyMMdd', oField.AsDateTime)
                else if oField.DataType in [ftTime] then
                  sPrimaryKeyValue := sPrimaryKeyValue + FormatDateTime('hh:nn:ss.zzz', oField.AsDateTime)
                else
                  sPrimaryKeyValue := sPrimaryKeyValue + VarToStr(oField.Value);
              end
              else
                sPrimaryKeyValue := sPrimaryKeyValue + '';
            end
            else
              sPrimaryKeyValue := sPrimaryKeyValue + '';
          end
          else
            Lanjut := False;
        end;

        if (Key = VK_F9) then
        begin
          ShowMessage('DataSet Name: ' + sDataSetName + #13#10
            + 'Table Name: ' + sTableName + #13#10
            + 'Field Name: ' + sFieldName + #13#10
            + 'Field Value: ' + sFieldValue + #13#10
            + 'Primary Key Field Name: ' + sPrimaryKey + #13#10
            + 'Primary Key Field Value: ' + sPrimaryKeyValue);
        end
        else if (Key = VK_F10) then
        begin
          frmAuditLog.ViewAuditByField(sTableName, sFieldName, sPrimaryKeyValue);
        end
        else if (Key = VK_F11) then
        begin
          frmAuditLog.ViewAuditByTable(sTableName, sPrimaryKeyValue);
        end
        else if (Key = VK_F12) then
        begin
          if oCds.DataSetField = nil then
            Lanjut := False
          else
            Lanjut := True;

          while (oCds.DataSetField <> nil) do
          begin
            oCds := TNClientDataset(oCds.DataSetField.DataSet);
          end;

          if Lanjut then
          begin
            sPrimaryKey := oCds.PrimaryKeyFields;
            sPrimaryKeyValue := '';
            iPos := 1;
            Lanjut := True;
            while Lanjut do
            begin
              sTempKeyField := ExtractFieldName(sPrimaryKey, iPos);

              if (sTempKeyField <> '') then
              begin
                oField := oCds.FindField(sTempKeyField);
                if (oField <> nil) then
                begin
                  if (sPrimaryKeyValue <> '') then
                    sPrimaryKeyValue := sPrimaryKeyValue + Chr(1);

                  if not oField.IsNull then
                  begin
                    if oField.DataType in [ftDate, ftDateTime, ftTimeStamp] then
                      sPrimaryKeyValue := sPrimaryKeyValue + FormatDateTime('yyyyMMdd', oField.AsDateTime)
                    else if oField.DataType in [ftTime] then
                      sPrimaryKeyValue := sPrimaryKeyValue + FormatDateTime('hh:nn:ss.zzz', oField.AsDateTime)
                    else
                      sPrimaryKeyValue := sPrimaryKeyValue + VarToStr(oField.Value);
                  end
                  else
                    sPrimaryKeyValue := sPrimaryKeyValue + '';
                end
                else
                  sPrimaryKeyValue := sPrimaryKeyValue + '';
              end
              else
                Lanjut := False;
            end;
          end;

          frmAuditLog.ViewAuditByModule(oCds.ProviderName, sPrimaryKeyValue);
        end;
      end;

    end;
  end;
end;

procedure TfrmEditorBasic.GetDataSetFromControl(AControl: TComponent;
  var ADataSet: TDataSet; var AFieldName: String);
begin
  ADataSet := Nil;
  AFieldName := '';
  if (AControl.ClassName = Self.ClassName) then
    Exit;

  if (AControl is TcxDBTextEdit) then
  begin
    ADataSet := TcxDBTextEdit(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBTextEdit(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBDateEdit) then
  begin
    ADataSet := TcxDBDateEdit(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBDateEdit(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBLookupComboBox) then
  begin
    ADataSet := TcxDBLookupComboBox(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBLookupComboBox(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBImageComboBox) then
  begin
    ADataSet := TcxDBImageComboBox(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBImageComboBox(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBComboBox) then
  begin
    ADataSet := TcxDBComboBox(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBComboBox(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBCheckBox) then
  begin
    ADataSet := TcxDBCheckBox(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBCheckBox(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBRadioGroup) then
  begin
    ADataSet := TcxDBRadioGroup(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBRadioGroup(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBMemo) then
  begin
    ADataSet := TcxDBMemo(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBMemo(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBSpinEdit) then
  begin
    ADataSet := TcxDBSpinEdit(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBSpinEdit(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBButtonEdit) then
  begin
    ADataSet := TcxDBButtonEdit(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBButtonEdit(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBCurrencyEdit) then
  begin
    ADataSet := TcxDBCurrencyEdit(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBCurrencyEdit(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxDBMaskEdit) then
  begin
    ADataSet := TcxDBMaskEdit(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBMaskEdit(AControl).DataBinding.DataField;
  end
  else if (AControl is TcxGrid) then
  begin
    if (TcxGrid(AControl).FocusedView is TcxGridDBTableView) then
    begin
      ADataSet := TcxGridDBTableView(TcxGrid(AControl).FocusedView).DataController.DataSource.DataSet;
      if TcxGridDBTableView(TcxGrid(AControl).FocusedView).Controller.FocusedColumn is TcxGridDBColumn then
      begin
        AFieldName := TcxGridDBColumn(TcxGridDBTableView(TcxGrid(AControl).FocusedView).Controller.FocusedColumn).DataBinding.FieldName;
      end;
    end
    else if (TcxGrid(AControl).FocusedView is TcxGridDBBandedTableView) then
    begin
      ADataSet := TcxGridDBBandedTableView(TcxGrid(AControl).FocusedView).DataController.DataSource.DataSet;
      if TcxGridDBBandedTableView(TcxGrid(AControl).FocusedView).Controller.FocusedColumn is TcxGridDBBandedColumn then
      begin
        AFieldName := TcxGridDBBandedColumn(TcxGridDBBandedTableView(TcxGrid(AControl).FocusedView).Controller.FocusedColumn).DataBinding.FieldName;
      end;
    end;
  end
  else if (AControl is TcxGridDBTableView) then
  begin
    ADataSet := TcxGridDBTableView(AControl).DataController.DataSource.DataSet;
    if TcxGridDBTableView(AControl).Controller.FocusedColumn is TcxGridDBColumn then
    begin
      AFieldName := TcxGridDBColumn(TcxGridDBTableView(AControl).Controller.FocusedColumn).DataBinding.FieldName;
    end;
  end
  else if (AControl is TcxGridDBBandedTableView) then
  begin
    ADataSet := TcxGridDBBandedTableView(AControl).DataController.DataSource.DataSet;
    if TcxGridDBBandedTableView(AControl).Controller.FocusedColumn is TcxGridDBBandedColumn then
    begin
      AFieldName := TcxGridDBBandedColumn(TcxGridDBBandedTableView(AControl).Controller.FocusedColumn).DataBinding.FieldName;
    end;
  end
  else
  begin
    GetDataSetFromControl(AControl.Owner, ADataSet, AFieldName);
  end;
end;

procedure TfrmEditorBasic.Insert(AKey: String);
var
  oCds, oTempDataSet: TClientDataSet;
begin
  OpenDataSet(AKey);

  EditModes;

  oCds := TClientDataSet(dsSubject.DataSet);
  if not oCds.IsEmpty then
  begin
    oTempDataSet := TClientDataSet.Create(nil);
    Try
      oTempDataSet.Data := oCds.Data;
      dmGlobal.DuplicateRecord(oTempDataSet, oCds);
    Finally
      FreeAndNil(oTempDataSet);
    End;
  end
  else
  begin
    oCds.Append;
  end;

  FState := pkCreate;

  StatusBar.Panels[0].Text := 'New';
end;

procedure TfrmEditorBasic.Insert;
var
  oCds: TClientDataSet;
  i: Integer;
begin
  oCds := TClientDataSet(dsSubject.DataSet);
  oCds.Close;
  for i := 0 to oCds.Params.Count - 1 do
  begin
    if oCds.Params[i].DataType in [ftDateTime, ftDate, ftTime] then
      oCds.Params[i].AsDateTime := Now
    else
      oCds.Params[i].AsString := '0';
  end;
  oCds.Open;
  UpdateLastRefreshData;

  EditModes;
  oCds.Append;
  FState := pkCreate;
  StatusBar.Panels[0].Text := 'New';
end;

procedure TfrmEditorBasic.OpenDataSet(AKey: String);
var
  oCds: TClientDataSet;
  bLastParamSame: Boolean;
  i: Integer;
  slKey: TStringList;
  sDateParam: String;
  dtDateParam: TDate;
  iYear, iMonth, iDay: Word;
begin
  oCds := TClientDataSet(dsSubject.DataSet);
  bLastParamSame := False;

  with dmGlobal do
  begin
    if cdsLastModuleParam.Locate('MODULENAME', oCds.ProviderName, []) then
    begin
      if cdsLastModuleParamPARAMVALUE.AsString = AKey then
        bLastParamSame := True;

      cdsLastModuleParam.Edit;
    end
    else
    begin
      cdsLastModuleParam.Append;
    end;

    cdsLastModuleParamMODULENAME.AsString := oCds.ProviderName;
    cdsLastModuleParamPARAMVALUE.AsString := AKey;
    cdsLastModuleParam.Post;

    if bLastParamSame then
    begin
      oCds.Close;
      for i := 0 to oCds.Params.Count - 1 do
      begin
        if oCds.Params[i].DataType in [ftDateTime, ftDate, ftTime] then
          oCds.Params[i].AsDateTime := Now
        else
          oCds.Params[i].AsString := '0';
      end;
      oCds.Open;
    end;

    slKey := TStringList.Create;
    Try
      ParseDelimited(slKey, AKey, Chr(1));

      oCds.Close;
      for i := 0 to oCds.Params.Count - 1 do
      begin
        if (oCds.Params[i].DataType in [ftInteger, ftLargeint, ftShortint]) then
        begin
          oCds.Params[i].AsInteger := StrToIntDef(slKey[i], -1);
        end
        else if (oCds.Params[i].DataType in [ftDate, ftDateTime, ftTimeStamp]) then
        begin
          sDateParam := slKey[i];
          dtDateParam := MinDateTime;
          if Length(sDateParam) = 8 then
          begin
            iYear := StrToIntDef(Copy(sDateParam, 1, 4), 1899);
            iMonth := StrToIntDef(Copy(sDateParam, 5, 2), 12);
            iDay := StrToIntDef(Copy(sDateParam, 7, 2), 31);
            dtDateParam := EncodeDate(iYear, iMonth, iDay);
          end;
          oCds.Params[i].AsDateTime := dtDateParam;
        end
        else if (oCds.Params[i].DataType in [ftFloat]) then
        begin
          oCds.Params[i].AsFloat := StrToFloatDef(slKey[i], -1);
        end
        else if (oCds.Params[i].DataType in [ftString, ftWideString]) then
        begin
          oCds.Params[i].AsString := slKey[i];
        end
        else
        begin
          oCds.Params[i].Value := slKey[i];
        end;
      end;
      oCds.Open;

      UpdateLastRefreshData;
    Finally
      FreeAndNil(slKey);
    End;
  end;

end;

procedure TfrmEditorBasic.Reject(AKey: String);
begin
  OpenDataSet(AKey);
  ViewModes;
  FState := pkReject;
  StatusBar.Panels[0].Text := 'Reject';
end;

procedure TfrmEditorBasic.UpdateLastRefreshData;
begin
  StatusBar.Panels[1].Text := 'Last Refresh Data: ' + FormatDateTime('dd MMM yyyy hh:nn:ss.zzz', Now);
end;

procedure TfrmEditorBasic.View(AKey: String);
begin
  OpenDataSet(AKey);
  ViewModes;
  FState := pkRead;
  StatusBar.Panels[0].Text := 'View';
end;

procedure TfrmEditorBasic.ViewModes;
var
  oCds: TClientDataSet;
begin
  oCds := TClientDataSet(dsSubject.DataSet);
  dmGlobal.SetReadOnlyDataset(oCds, True);
end;

end.
