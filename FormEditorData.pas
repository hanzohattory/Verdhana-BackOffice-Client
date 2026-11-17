unit FormEditorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, NDatasetContainer, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxDateUtils, cxCalendar,
  Data.DB, ClassClientConst, cxDBEdit, cxSpinEdit, cxDBLookupComboBox, cxMaskEdit, cxButtonEdit, cxCalc,
  cxTextEdit, cxDropDownEdit, cxEdit, dxLayoutcxEditAdapters, cxContainer,
  cxImageComboBox, Vcl.Tabs, NDatasetGeneral, cxClasses, NDatasetActionLog,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient,
  NClientDataset, cxGridDBBandedTableView, cxGridDBTableView, cxGrid,
  cxGridCustomView, cxGridCustomTableView, cxCheckGroup, cxDBCheckGroup,
  cxGridLayoutView, cxGridDBLayoutView, cxCheckBox, RecError, cxPC,
  dxLayoutLookAndFeels, System.JSON, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmEditorData = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    tabEditorData: TTabSet;
    dbNavLog: TDBNavigator;
    lcNavLog: TdxLayoutItem;
    LookAndFeelStyle: TdxLayoutLookAndFeelList;
    lcRequired: TdxLayoutStandardLookAndFeel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure tabEditorDataChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FDataContainer: TNMasterDetailData;
    FActiveNextOnEnter: Boolean;
    FBrowserForm: TForm;
    FIsLogView: Boolean;

    FListDataSourceDetail: TStringList;
    isEverShow: Boolean;
    FState: TProcessKind;
    FUpdateDataset: TClientDataSet;
    FValidDataset: TClientDataSet;
    FIsError: Boolean;
    FOnReconcileError: TReconcileErrorEvent;
    FLockForm: Boolean;

    procedure EditModes;
    procedure ViewModes;
    procedure UpdateLastRefreshData;
    procedure ChangeDetailDatasetControl(NewTab: Integer);
    procedure SetSkin;
    procedure DrawEditorChangedData;

    {New Framework Model 20160511}
    procedure OpenUpdateDataSet(AKey: String);
    procedure SetLockForm(const Value: Boolean);
  public
    property DataContainer: TNMasterDetailData read FDataContainer write FDataContainer;
    property ActiveNextOnEnter: Boolean read FActiveNextOnEnter write FActiveNextOnEnter;
    property BrowserForm: TForm read FBrowserForm write FBrowserForm;
    property IsLogView: Boolean read FIsLogView write FIsLogView;

    {New Framework Model 20160511}
    property State: TProcessKind read FState;
    property ValidDataset: TClientDataSet read FValidDataset write FValidDataSet;
    property UpdateDataset: TClientDataSet read FUpdateDataset write FUpdateDataset;
    property IsError: Boolean read FIsError write FIsError;
    property OnReconcileError: TReconcileErrorEvent read FOnReconcileError write FOnReconcileError;
    property LockForm: Boolean read FLockForm write SetLockForm;

    procedure LockWindow(AForm: TForm);
    procedure GetDataSetFromControl(AControl: TComponent; var ADataSet: TDataSet; var AFieldName: String);
    procedure GridChangedCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);

    {New Framework Model 20160427 :p}
    procedure OpenDataSet(AKey: String);
    procedure View(AKey: String);
    procedure Insert; Overload;
    procedure Insert(AKey: String); Overload;
    procedure Edit(AKey: String);
    procedure Delete(AKey: String);
    procedure Approve(AKey: String);
    procedure Reject(AKey: String);
    procedure Cancel(AKey: String);
    procedure Remodify(AKey: String);
    procedure ViewApprove(AKey: String);
    procedure ModifyApprove(AKey: String);

    procedure InternalReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  end;

var
  frmEditorData: TfrmEditorData;

implementation

{$R *.dfm}

uses DataGlobal, TypInfo, FormAuditLog;

{ TfrmEditorData }

procedure TfrmEditorData.Approve(AKey: String);
begin
//  dmGlobal.CreateChangeFlagField(TClientDataSet(dsSubject.DataSet));
  FState := pkApprove;
  OpenDataSet(AKey);
  OpenUpdateDataSet(AKey);
  ViewModes;
end;

procedure TfrmEditorData.btnOKClick(Sender: TObject);
var
  i : Integer;
begin
  if (dsSubject.DataSet <> nil) and (FState in [pkCreate, pkUpdate]) then
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

procedure TfrmEditorData.Cancel(AKey: String);
begin
  FState := pkCancel;
  OpenDataSet(AKey);
  OpenUpdateDataSet(AKey);
  ViewModes;
end;

procedure TfrmEditorData.ChangeDetailDatasetControl(NewTab: Integer);
var
  i, j, iLevel: Integer;
  oDataSource: TDataSource;
  oOldCds, oNewCds: TClientDataSet;
  oField: TField;
  slDataSetFieldName: TStringList;
begin
  for i := 0 to FListDataSourceDetail.Count - 1 do
  begin
    oDataSource := nil;

    if (FListDataSourceDetail.Objects[i] is TDataSource) then
    begin
      oDataSource := TDataSource(FListDataSourceDetail.Objects[i]);
    end
    else
    begin
      if Self.Components[StrToInt(FListDataSourceDetail[i])] is TDataSource then
      begin
        oDataSource := TDataSource(Self.Components[StrToInt(FListDataSourceDetail[i])]);
      end;
    end;

    if oDataSource <> nil then
    begin
      if oDataSource.DataSet is TClientDataSet then
      begin
        oOldCds := TClientDataSet(oDataSource.DataSet);
        iLevel := 0;
        if (oOldCds.DataSetField <> nil) then
        begin
          slDataSetFieldName := TStringList.Create;
          Try
            while (oOldCds.DataSetField <> nil) do
            begin
              slDataSetFieldName.Add(oOldCds.DataSetField.FieldName);
              oOldCds := TClientDataSet(oOldCds.DataSetField.DataSet);
              iLevel := iLevel + 1;
            end;

            oNewCds := Nil;

            if tabEditorData.Tabs[NewTab] = 'New Data' then
              oNewCds := FUpdateDataset
            else if tabEditorData.Tabs[NewTab] = 'Current Data' then
              oNewCds := FValidDataset;

            if (oNewCds <> Nil) then
            begin
              for j := iLevel - 1 downto 0 do
              begin
                oField := oNewCds.FindField(slDataSetFieldName[j]);
                if (oField <> Nil) and (oField.DataType = ftDataSet) then
                begin
                  oNewCds := TClientDataSet(TDataSetField(oField).NestedDataSet);
                end;
              end;

              oDataSource.DataSet := oNewCds;
            end;
          Finally
            FreeAndNil(slDataSetFieldName);
          End;
        end;
      end;

    end;

  end;
end;

procedure TfrmEditorData.Delete(AKey: String);
begin
  OpenDataSet(AKey);
  ViewModes;
  FState := pkDelete;
  StatusBar.Panels[0].Text := 'Delete';
end;

procedure TfrmEditorData.DrawEditorChangedData;
var
  i, j: Integer;
  sField: String;
  oField, oFieldUpd: TField;
begin
  if (FValidDataset = Nil) or (FUpdateDataset = Nil) then
    Exit;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TcxDBTextEdit) then
    begin
      sField := TcxDBTextEdit(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBTextEdit(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBTextEdit(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBTextEdit(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBLookupComboBox) then
    begin
      sField := TcxDBLookupComboBox(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBLookupComboBox(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBLookupComboBox(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBLookupComboBox(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBDateEdit) then
    begin
      sField := TcxDBDateEdit(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBDateEdit(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBDateEdit(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBDateEdit(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBCheckBox) then
    begin
      sField := TcxDBCheckBox(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBCheckBox(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBCheckBox(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBCheckBox(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
          TcxDBCheckBox(Self.Components[i]).ParentBackground := False;
          TcxDBCheckBox(Self.Components[i]).ParentColor := False;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBRadioGroup) then
    begin
      sField := TcxDBRadioGroup(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBRadioGroup(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBRadioGroup(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBRadioGroup(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
          TcxDBRadioGroup(Self.Components[i]).ParentBackground := False;
          TcxDBRadioGroup(Self.Components[i]).ParentColor := False;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBImageComboBox) then
    begin
      sField := TcxDBImageComboBox(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBImageComboBox(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBImageComboBox(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBImageComboBox(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBMemo) then
    begin
      sField := TcxDBMemo(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBMemo(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBMemo(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBMemo(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBMaskEdit) then
    begin
      sField := TcxDBMaskEdit(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBMaskEdit(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBMaskEdit(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBMaskEdit(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBButtonEdit) then
    begin
      sField := TcxDBButtonEdit(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBButtonEdit(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBButtonEdit(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBButtonEdit(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBComboBox) then
    begin
      sField := TcxDBComboBox(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBComboBox(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBComboBox(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBComboBox(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBSpinEdit) then
    begin
      sField := TcxDBSpinEdit(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBSpinEdit(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBSpinEdit(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBSpinEdit(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxDBCheckGroup) then
    begin
      sField := TcxDBCheckGroup(Self.Components[i]).DataBinding.Field.FieldName;
      oField := FValidDataset.FindField(sField);
      oFieldUpd := FUpdateDataset.FindField(sField);

      if (oField <> nil) and (oFieldUpd <> nil) then
      begin
        if oField.Value <> oFieldUpd.Value then
        begin
//          TcxDBCheckGroup(Self.Components[i]).Style.BorderColor := dmGlobal.ChangedData.Color;
//          TcxDBCheckGroup(Self.Components[i]).Style.Font.Color := dmGlobal.ChangedData.Color;
          TcxDBCheckGroup(Self.Components[i]).Style.Color := dmGlobal.ChangedData.Color;
        end;
      end;
    end

    else if (Self.Components[i] is TcxGridDBTableView) then
    begin
      with TcxGridDBTableView(Self.Components[i]).CreateColumn do
      begin
        DataBinding.FieldName := 'NOTES4Y';
        Visible := False;
      end;
      TcxGridDBTableView(Self.Components[i]).OnCustomDrawCell := GridChangedCustomDrawCell;
    end

    else if (Self.Components[i] is TcxGridDBBandedTableView) then
    begin
      with TcxGridDBBandedTableView(Self.Components[i]).CreateColumn do
      begin
        DataBinding.FieldName := 'NOTES4Y';
        Visible := False;
      end;
      TcxGridDBBandedTableView(Self.Components[i]).OnCustomDrawCell := GridChangedCustomDrawCell;
    end

    else if (Self.Components[i] is TcxGridDBLayoutView) then
    begin
      with TcxGridDBLayoutView(Self.Components[i]).CreateItem do
      begin
        DataBinding.FieldName := 'NOTES4Y';
        Visible := False;
      end;
      TcxGridDBLayoutView(Self.Components[i]).OnCustomDrawCell := GridChangedCustomDrawCell;
    end;

  end;
end;

procedure TfrmEditorData.Edit(AKey: String);
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
    Insert(AKey);
//    FState := pkRead;
//    ViewModes;
//    ShowMessage('Data not found.');
  end;
end;

procedure TfrmEditorData.EditModes;
var
  oCds: TClientDataSet;
begin
  oCds := TClientDataSet(dsSubject.DataSet);
  dmGlobal.SetReadOnlyDataset(oCds, False);
  LockForm := False;
end;

procedure TfrmEditorData.FormCreate(Sender: TObject);
var
  i: Integer;
  oCds: TNClientDataset;
  oComp: TControl;
  oField: TField;
begin
  if (Self.Height > Screen.MonitorFromWindow(Application.MainFormHandle).Height - 40) then
    Self.Height := Screen.MonitorFromWindow(Application.MainFormHandle).Height - 40;

  if (Self.Width > Screen.MonitorFromWindow(Application.MainFormHandle).Width - 40) then
    Self.Width := Screen.MonitorFromWindow(Application.MainFormHandle).Width - 40;

  //Additional for audit log start
  lcNavLog.Visible := False;
  //Additional for audit log end

  {New Framework Feature 20160502}
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

  ActiveNextOnEnter := dmGlobal.EnterForNextControl = 'Y';

  FListDataSourceDetail := TStringList.Create;
  FListDataSourceDetail.Clear;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TDataSource) then
    begin
      if TDataSource(Self.Components[i]).Name <> dsSubject.Name then
      begin
        FListDataSourceDetail.AddObject(IntToStr(Self.Components[i].ComponentIndex), Self.Components[i]);
      end;
    end
    else if (Self.Components[i] is TcxDBLookupComboBox)
      or (Self.Components[i] is TcxDBComboBox)
      or (Self.Components[i] is TcxDBDateEdit)
      or (Self.Components[i] is TcxDBButtonEdit)
      or (Self.Components[i] is TcxDBSpinEdit)
      or (Self.Components[i] is TcxDBCalcEdit)
      or (Self.Components[i] is TcxDBImageComboBox)
      or (Self.Components[i] is TcxLookupComboBox)
      or (Self.Components[i] is TcxComboBox)
      or (Self.Components[i] is TcxDateEdit)
      or (Self.Components[i] is TcxButtonEdit)
      or (Self.Components[i] is TcxSpinEdit)
      or (Self.Components[i] is TcxCalcEdit)
      or (Self.Components[i] is TcxImageComboBox) then
    begin
      TcxCustomEdit(Self.Components[i]).Style.LookAndFeel.NativeStyle := False;
      TcxCustomEdit(Self.Components[i]).Style.LookAndFeel.SkinName := 'VS2010';
      TcxCustomEdit(Self.Components[i]).Style.BorderColor := clSilver;
      TcxCustomEdit(Self.Components[i]).Style.BorderStyle := ebs3D;
      TcxCustomEdit(Self.Components[i]).Style.ButtonStyle := bts3D;
    end
    else if (Self.Components[i] is TdxLayoutItem) then
    begin
      if not TdxLayoutItem(Self.Components[i]).Enabled then
        TdxLayoutItem(Self.Components[i]).Tag := -1;
    end;
  end;

  isEverShow := False;
end;

procedure TfrmEditorData.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmEditorData.FormShow(Sender: TObject);
begin
  //Additional for audit log start
//  if IsLogView then Abort;
{  if IsLogView then Exit;

  //Additional for audit log end

  tabEditorData.Visible := (FDataContainer.Control4Eyes)
    and (FDataContainer.State in [mddsEdit, mddsView4Eyes, mddsApprove, mddsReject, mddsCancel]);

  if FDataContainer.State in [mddsView4Eyes, mddsApprove, mddsReject, mddsCancel] then
  begin
    tabEditorData.Tabs.Delete(1);
    if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_NEW then
      tabEditorData.Visible := False
    else
      DrawEditorChangedData;
  end;

  if FDataContainer.Control4Eyes then
  begin
    dsSubject.DataSet := FDataContainer.MasterDatasetUpd;
    if FDataContainer.State = mddsView then
      tabEditorData.TabIndex := 2
    else
      tabEditorData.TabIndex := 0;
  end
  else
    dsSubject.DataSet := FDataContainer.MasterDataset;

  ChangeDetailDatasetControl(tabEditorData.TabIndex);

  if (not tabEditorData.Visible) and (not isEverShow) then
    Self.Height := Self.Height - tabEditorData.Height;

  if FDataContainer.State = mddsInsert then StatusBar.Panels[0].Text := 'New'
  else if FDataContainer.State = mddsEdit then StatusBar.Panels[0].Text := 'Edit'
  else if FDataContainer.State = mddsView then StatusBar.Panels[0].Text := 'View'
  else if FDataContainer.State = mddsView4Eyes then StatusBar.Panels[0].Text := 'View Approval Data'
  else if FDataContainer.State = mddsApprove then
  begin
    if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_NEW then
      StatusBar.Panels[0].Text := 'Approve New Data'
    else if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_UPDATE then
      StatusBar.Panels[0].Text := 'Approve Update Data'
    else if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_DELETE then
      StatusBar.Panels[0].Text := 'Approve Delete Data';
  end
  else if FDataContainer.State = mddsReject then
  begin
    if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_NEW then
      StatusBar.Panels[0].Text := 'Reject New Data'
    else if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_UPDATE then
      StatusBar.Panels[0].Text := 'Reject Update Data'
    else if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_DELETE then
      StatusBar.Panels[0].Text := 'Reject Delete Data';
  end
  else if FDataContainer.State = mddsCancel then
  begin
    if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_NEW then
      StatusBar.Panels[0].Text := 'Cancel New Data'
    else if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_UPDATE then
      StatusBar.Panels[0].Text := 'Cancel Update Data'
    else if FDataContainer.MasterDatasetUpd.FieldByName(CONT_FIELD_UPDSTS).AsString = UPD_FLAG_DELETE then
      StatusBar.Panels[0].Text := 'Cancel Delete Data';
  end;

  isEverShow := True;
  LockWindow(Self);
}
end;

procedure TfrmEditorData.GetDataSetFromControl(AControl: TComponent;
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
  else if (AControl is TcxDBCheckGroup) then
  begin
    ADataSet := TcxDBCheckGroup(AControl).DataBinding.DataSource.DataSet;
    AFieldName := TcxDBCheckGroup(AControl).DataBinding.DataField;
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
    end
    //Additional for TcxGridLayoutViewSite 20160827 Rendi
    else if (TcxGrid(AControl).FocusedView is TcxGridDBLayoutView) then
    begin
      ADataSet := TcxGridDBLayoutView(TcxGrid(AControl).FocusedView).DataController.DataSource.DataSet;
      begin
        if TcxGridDBLayoutView(TcxGrid(AControl).FocusedView).Controller.FocusedItem is TcxGridDBLayoutViewItem then
        begin
          AFieldName := TcxGridDBLayoutViewItem(TcxGridDBLayoutView(TcxGrid(AControl).FocusedView).Controller.FocusedItem).DataBinding.FieldName;
        end;
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
  //Additional for TcxGridLayoutViewSite 20160827 Rendi
  else if (AControl is TcxCustomEdit) then
  begin
    if TcxCustomEdit(AControl).Parent is TcxGridLayoutViewSite then
    begin
      GetDataSetFromControl(TcxGridLayoutViewSite(TcxCustomEdit(AControl).Parent).Parent, ADataSet, AFieldName);
    end
    else if TcxCustomEdit(AControl).Parent is TcxGridSite then
    begin
      GetDataSetFromControl(TcxGridSite(TcxCustomEdit(AControl).Parent).Parent, ADataSet, AFieldName);
    end;
  end
  else
  begin
    GetDataSetFromControl(AControl.Owner, ADataSet, AFieldName);
  end;
end;

procedure TfrmEditorData.GridChangedCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[Sender.ItemCount - 1] = 'S') then
  begin
    ACanvas.Font.Color := clBlack;
  end
  else if (AViewInfo.GridRecord.Values[Sender.ItemCount - 1] = 'U') then
  begin
    ACanvas.Font.Color := clGreen;
  end
  else if (AViewInfo.GridRecord.Values[Sender.ItemCount - 1] = 'D') then
  begin
    ACanvas.Font.Color := clRed;
  end
  else
  begin
    ACanvas.Font.Color := clBlue;
  end;
end;

procedure TfrmEditorData.Insert(AKey: String);
var
  oCds, oTempDataSet: TClientDataSet;
  i: Integer;
begin
  OpenDataSet(AKey);

  EditModes;

  oCds := TClientDataSet(dsSubject.DataSet);
  if not oCds.IsEmpty then
  begin
    oTempDataSet := TClientDataSet.Create(nil);
    Try
      oTempDataSet.Data := oCds.Data;

      oCds.Close;
      for i := 0 to oCds.Params.Count - 1 do
      begin
        if oCds.Params[i].DataType in [ftDateTime, ftDate, ftTime] then
          oCds.Params[i].AsDateTime := Now
        else
          oCds.Params[i].AsString := '0';
      end;
      oCds.Open;

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

procedure TfrmEditorData.InternalReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  IsError := True;
  Action := HandleReconcileError(Dataset, UpdateKind, E);

  if Assigned(FOnReconcileError) then
    FOnReconcileError(DataSet, E, UpdateKind, Action);
end;

procedure TfrmEditorData.Insert;
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

procedure TfrmEditorData.LockWindow(AForm: TForm);
  procedure SetLockToEdit;
  var
    i: Integer;
    sFieldName: String;
    oField: TField;
    oDataset: TDataset;
  begin
    for i:=0 to AForm.ComponentCount-1 do
    begin
      if AForm.Components[i].Tag <> -1 then
      begin
        if (AForm.Components[i] is TcxDBLookupComboBox) then
        begin
          if TcxDBLookupComboBox(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBLookupComboBox(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBLookupComboBox(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBLookupComboBox(AForm.Components[i]).TabStop := False;
            TcxDBLookupComboBox(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBLookupComboBox(AForm.Components[i]).TabStop := False
              else TcxDBLookupComboBox(AForm.Components[i]).TabStop := True;
              TcxDBLookupComboBox(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxDBTextEdit) then
        begin
//          sFieldName := TcxDBTextEdit(AForm.Components[i]).DataBinding.DataField;
//          oDataset := TcxDBTextEdit(AForm.Components[i]).DataBinding.DataSource.DataSet;
//
//          if (oDataset <> nil) then
//          begin
//            oField := oDataset.FindField(sFieldName);
//            if (oField <> nil) then
//            begin
//              if oField.ReadOnly then
//                TcxDBTextEdit(AForm.Components[i]).Properties.ReadOnly := True;
//            end;
//          end;

          if TcxDBTextEdit(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBTextEdit(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBTextEdit(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBTextEdit(AForm.Components[i]).TabStop := False;
            TcxDBTextEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBTextEdit(AForm.Components[i]).TabStop := False
              else TcxDBTextEdit(AForm.Components[i]).TabStop := True;
              TcxDBTextEdit(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxDBMemo) then
        begin
          if TcxDBMemo(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBMemo(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBMemo(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBMemo(AForm.Components[i]).TabStop := False;
            TcxDBMemo(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBMemo(AForm.Components[i]).TabStop := False
              else TcxDBMemo(AForm.Components[i]).TabStop := True;
              TcxDBMemo(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxDBButtonEdit) then
        begin
          if TcxDBButtonEdit(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBButtonEdit(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBButtonEdit(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBButtonEdit(AForm.Components[i]).TabStop := False;
            TcxDBButtonEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBButtonEdit(AForm.Components[i]).TabStop := False
              else TcxDBButtonEdit(AForm.Components[i]).TabStop := True;
              TcxDBButtonEdit(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxTextEdit) then
        begin
          if TcxTextEdit(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxTextEdit(AForm.Components[i]).TabStop := False;
            TcxTextEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxTextEdit(AForm.Components[i]).TabStop := False
              else TcxTextEdit(AForm.Components[i]).TabStop := True;
              TcxTextEdit(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxDBDateEdit) then
        begin
          if TcxDBDateEdit(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBDateEdit(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBDateEdit(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBDateEdit(AForm.Components[i]).TabStop := False;
            TcxDBDateEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBDateEdit(AForm.Components[i]).TabStop := False
              else TcxDBDateEdit(AForm.Components[i]).TabStop := True;
              TcxDBDateEdit(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxDBComboBox) then
        begin
          if TcxDBComboBox(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBComboBox(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBComboBox(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBComboBox(AForm.Components[i]).TabStop := False;
            TcxDBComboBox(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBComboBox(AForm.Components[i]).TabStop := False
              else TcxDBComboBox(AForm.Components[i]).TabStop := True;
              TcxDBComboBox(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxDBTimeEdit) then
        begin
          if TcxDBTimeEdit(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBTimeEdit(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBTimeEdit(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBTimeEdit(AForm.Components[i]).TabStop := False;
            TcxDBTimeEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBTimeEdit(AForm.Components[i]).TabStop := False
              else TcxDBTimeEdit(AForm.Components[i]).TabStop := True;
              TcxDBTimeEdit(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end
        else if (AForm.Components[i] is TcxDBSpinEdit) then
        begin
          if TcxDBSpinEdit(AForm.Components[i]).DataBinding.Field.ReadOnly then
            TcxDBSpinEdit(AForm.Components[i]).Properties.ReadOnly := True;

          if TcxDBSpinEdit(AForm.Components[i]).Properties.ReadOnly then
          begin
            TcxDBSpinEdit(AForm.Components[i]).TabStop := False;
            TcxDBSpinEdit(AForm.Components[i]).Style.Color := dmGlobal.DisableColor.Color;
          end
          else
          begin
            if AForm.Components[i].Tag <> -1 then
            begin
              if AForm.Components[i].Tag = 1 then TcxDBSpinEdit(AForm.Components[i]).TabStop := False
              else TcxDBSpinEdit(AForm.Components[i]).TabStop := True;
              TcxDBSpinEdit(AForm.Components[i]).Style.Color := clWindow;
            end;
          end;
        end;
      end;
    end;
  end;
begin
  if (FDataContainer.State = mddsInsert) or (FDataContainer.State = mddsEdit) then
  begin
    SetLockToEdit;
  end;
end;

procedure TfrmEditorData.ModifyApprove(AKey: String);
var
  oCds: TClientDataSet;
begin
  OpenDataSet(AKey);
  oCds := TClientDataSet(dsSubject.DataSet);
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
          EditModes;
          if cdsApproveRequestSTATE.AsString = 'I' then
          begin
            oCds.Append;
            oCds.XMLData := cdsApproveRequestXMLDATA.AsString;
            FState := pkCreate;
            StatusBar.Panels[0].Text := 'New';
          end
          else if cdsApproveRequestSTATE.AsString = 'U' then
          begin
            oCds.Edit;
            oCds.XMLData := cdsApproveRequestXMLDATA.AsString;
            FState := pkUpdate;
            StatusBar.Panels[0].Text := 'Edit';
          end
          else if cdsApproveRequestSTATE.AsString = 'D' then
          begin
            ViewModes;
            FState := pkDelete;
            StatusBar.Panels[0].Text := 'Delete';
          end;
        end
        else
        begin
          FState := pkRead;
          ViewModes;
          ShowMessage('Data not found.');
        end;
      end;
    end;
  end;
end;

procedure TfrmEditorData.OpenDataSet(AKey: String);
var
  oCds: TClientDataSet;
  bLastParamSame: Boolean;
  i: Integer;
  slKey: TStringList;
  sDateParam: String;
  dtDateParam: TDate;
  iYear, iMonth, iDay: Word;
begin
  oCds := TClientDataSet(Self.dsSubject.DataSet);
  FValidDataset := oCds;
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
      oCds.FetchParams;
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
      oCds.FetchParams;
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

procedure TfrmEditorData.OpenUpdateDataSet(AKey: String);
var
  oCds: TClientDataSet;
  oField: TField;
  iDataType: Integer;
  jValue: TJSONValue;
  sData: String;
begin
  oCds := TClientDataSet(dsSubject.DataSet);
  with dmGlobal do
  begin
    cdsApproveRequest.Close;
    cdsApproveRequest.Params[0].AsString := oCds.ProviderName;
    cdsApproveRequest.Params[1].AsString := AKey;
    cdsApproveRequest.Open;

    if not cdsApproveRequest.IsEmpty then
    begin
      sData := cdsApproveRequestXMLDATA.AsString;
      FUpdateDataset := TNClientDataSet.Create(Nil);
      dmGlobal.CopyDataSetField(FValidDataset, FUpdateDataset);
//      FUpdateDataset.XMLData := cdsApproveRequestXMLDATA.AsString;
      dmGlobal.InsertDataSet(FUpdateDataset, sData, iDataType);

      if (FUpdateDataset.IsEmpty) then
      begin
        MessageDlg('Invalid data format. This record can''t be process!'
          + #13#10 + 'Please reject or cancel this data request.', mtError, [mbOK], 0);
        Abort;
      end;

      dmGlobal.SetReadOnlyDataset(FUpdateDataset, True);
      
      if cdsApproveRequestSTATE.AsString = 'I' then
      begin
        Try
          if iDataType = 1 then
          begin
            TClientDataSet(dsSubject.DataSet).XMLData := FUpdateDataset.XMLData;
          end
          else if iDataType = 2 then
          begin
            jValue := TJSONObject.ParseJSONValue(sData);
            if jValue <> Nil then
            begin
              if jValue is TJSONArray then
              begin
                JSONToDataSet(TClientDataSet(dsSubject.DataSet), TJSONArray(jValue));
              end;
            end;
          end;
        Except
          dmGlobal.InsertDataSet(TClientDataSet(dsSubject.DataSet), cdsApproveRequestXMLDATA.AsString, iDataType);
        End;

        if (TClientDataSet(dsSubject.DataSet).IsEmpty) then
        begin
          MessageDlg('Invalid data format. This record can''t be process!'
            + #13#10 + 'Please reject or cancel this data request.', mtError, [mbOK], 0);
          Abort;
        end;

        if (iDataType <> 1) then
        begin
          cdsApproveRequest.Edit;
          cdsApproveRequestXMLDATA.AsString := TClientDataSet(dsSubject.DataSet).XMLData;
          cdsApproveRequest.Post;
          cdsApproveRequest.ApplyUpdates(-1);
        end;

//        dsSubject.DataSet := FUpdateDataset;
//        ChangeDetailDatasetControl(0);

        if FState = pkApprove then
          StatusBar.Panels[0].Text := 'Approve New Data'
        else if FState = pkReject then
          StatusBar.Panels[0].Text := 'Reject New Data'
        else if FState = pkCancel then
          StatusBar.Panels[0].Text := 'Cancel New Data'
        else if FState = pkRemodify then
          StatusBar.Panels[0].Text := 'Remodify New Data'
        else if FState = pkReadApproval then
          StatusBar.Panels[0].Text := 'Approval New Data';
      end
      else if cdsApproveRequestSTATE.AsString = 'U' then
      begin
        if (TClientDataSet(FUpdateDataSet).IsEmpty) then
        begin
          MessageDlg('Invalid data format. This record can''t be process!'
            + #13#10 + 'Please reject or cancel this data request.', mtError, [mbOK], 0);
          Abort;
        end;

        if (iDataType <> 1) then
        begin
          dmGlobal.ModifyDataSetData(TNClientDataSet(FValidDataset), TNClientDataSet(FUpdateDataset));

          cdsApproveRequest.Edit;
          cdsApproveRequestXMLDATA.AsString := TClientDataSet(FValidDataSet).XMLData;
          cdsApproveRequest.Post;
          cdsApproveRequest.ApplyUpdates(-1);

          OpenDataSet(AKey);
        end;

        dmGlobal.ComparedChangedData(TNClientDataSet(FValidDataset), TNClientDataSet(FUpdateDataset));
        dsSubject.DataSet := FUpdateDataset;
        ChangeDetailDatasetControl(0);
        tabEditorData.Visible := True;
        DrawEditorChangedData;
//        Self.Height := Self.Height + tabEditorData.Height;

        if FState = pkApprove then
          StatusBar.Panels[0].Text := 'Approve Update Data'
        else if FState = pkReject then
          StatusBar.Panels[0].Text := 'Reject Update Data'
        else if FState = pkCancel then
          StatusBar.Panels[0].Text := 'Cancel Update Data'
        else if FState = pkRemodify then
          StatusBar.Panels[0].Text := 'Remodify Update Data'
        else if FState = pkReadApproval then
          StatusBar.Panels[0].Text := 'Approval Update Data';
      end
      else if cdsApproveRequestSTATE.AsString = 'D' then
      begin
        if FState = pkApprove then
          StatusBar.Panels[0].Text := 'Approve Delete Data'
        else if FState = pkReject then
          StatusBar.Panels[0].Text := 'Reject Delete Data'
        else if FState = pkCancel then
          StatusBar.Panels[0].Text := 'Cancel Delete Data'
        else if FState = pkReadApproval then
          StatusBar.Panels[0].Text := 'Approval Delete Data';
      end;

    end;
  end;
end;

procedure TfrmEditorData.Reject(AKey: String);
begin
  FState := pkReject;
  OpenDataSet(AKey);
  OpenUpdateDataSet(AKey);
  ViewModes;
end;

procedure TfrmEditorData.Remodify(AKey: String);
begin
  FState := pkRemodify;
  OpenDataSet(AKey);
  OpenUpdateDataSet(AKey);
  ViewModes;
end;

procedure TfrmEditorData.SetLockForm(const Value: Boolean);
var
  i: Integer;
begin
  if (FLockForm <> Value) then
  begin
    for i := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TdxLayoutItem then
      begin
        if (TdxLayoutItem(Self.Components[i]).Parent.Container <> dxLayoutControl2.Container) then
        begin

          if TdxLayoutItem(Self.Components[i]).Tag > 0 then
          begin
            TdxLayoutItem(Self.Components[i]).Enabled := not Value;
          end
          else
          begin
//            TdxLayoutItem(Self.Components[i]).Enabled := False;
          end;

          if (TdxLayoutItem(Self.Components[i]).Control is TcxPageControl)
            or (TdxLayoutItem(Self.Components[i]).Control is TcxGrid)then
          begin
            TdxLayoutItem(Self.Components[i]).Enabled := True;
          end;

        end;
      end;
    end;

    FLockForm := Value;
  end;
end;

procedure TfrmEditorData.SetSkin;
var
  i: Integer;
begin
  for i:=0 to Self.ComponentCount-1 do
  begin
    if Self.Components[i] is TcxCustomEdit then
    begin
      TcxCustomEdit(Self.Components[i]).Style.LookAndFeel.NativeStyle := False;
      TcxCustomEdit(Self.Components[i]).Style.LookAndFeel.SkinName := 'Caramel';

    end;
  end;

end;

procedure TfrmEditorData.tabEditorDataChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  i, j, iLevel: Integer;
  oDataSource: TDataSource;
  oOldCds, oNewCds: TClientDataSet;
  oField: TField;
  slDataSetFieldName: TStringList;
begin
  if tabEditorData.Tabs[NewTab] = 'New Data' then
  begin
    dsSubject.DataSet := FUpdateDataset;
  end
  else if tabEditorData.Tabs[NewTab] = 'Current Data' then
  begin
    dsSubject.DataSet := FValidDataset;
  end;

  for i := 0 to FListDataSourceDetail.Count - 1 do
  begin
    oDataSource := nil;

    if (FListDataSourceDetail.Objects[i] is TDataSource) then
    begin
      oDataSource := TDataSource(FListDataSourceDetail.Objects[i]);
    end
    else
    begin
      if Self.Components[StrToInt(FListDataSourceDetail[i])] is TDataSource then
      begin
        oDataSource := TDataSource(Self.Components[StrToInt(FListDataSourceDetail[i])]);
      end;
    end;

    if oDataSource <> nil then
    begin
      if oDataSource.DataSet is TClientDataSet then
      begin
        oOldCds := TClientDataSet(oDataSource.DataSet);
        iLevel := 0;
        if (oOldCds.DataSetField <> nil) then
        begin
          slDataSetFieldName := TStringList.Create;
          Try
            while (oOldCds.DataSetField <> nil) do
            begin
              slDataSetFieldName.Add(oOldCds.DataSetField.FieldName);
              oOldCds := TClientDataSet(oOldCds.DataSetField.DataSet);
              iLevel := iLevel + 1;
            end;

            if tabEditorData.Tabs[NewTab] = 'New Data' then
              oNewCds := FUpdateDataset
            else if tabEditorData.Tabs[NewTab] = 'Current Data' then
              oNewCds := FValidDataset;

            if (oNewCds <> Nil) then
            begin
              for j := iLevel - 1 downto 0 do
              begin
                oField := oNewCds.FindField(slDataSetFieldName[j]);
                if (oField <> Nil) and (oField.DataType = ftDataSet) then
                begin
                  oNewCds := TClientDataSet(TDataSetField(oField).NestedDataSet);
                end;
              end;

              oDataSource.DataSet := oNewCds;
            end;
          Finally
            FreeAndNil(slDataSetFieldName);
          End;
        end;
      end;

    end;

  end;
end;

procedure TfrmEditorData.UpdateLastRefreshData;
begin
  StatusBar.Panels[1].Text := 'Last Refresh Data: ' + FormatDateTime('dd MMM yyyy hh:nn:ss.zzz', Now);
end;

procedure TfrmEditorData.View(AKey: String);
begin
  OpenDataSet(AKey);
  ViewModes;
  FState := pkRead;
  StatusBar.Panels[0].Text := 'View';
end;

procedure TfrmEditorData.ViewApprove(AKey: String);
begin
  FState := pkReadApproval;
  OpenDataSet(AKey);
  OpenUpdateDataSet(AKey);
  ViewModes;
end;

procedure TfrmEditorData.ViewModes;
begin
  if (FValidDataset <> Nil) then
    dmGlobal.SetReadOnlyDataset(FValidDataset, True);

  if (FUpdateDataset <> Nil) then
    dmGlobal.SetReadOnlyDataset(FUpdateDataset, True);

  LockForm := True;
end;

end.
