unit FormIPOPoolingsDistribution;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ActnList,
  NDatasetAction, cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  FormIPOList, cxCheckBox, cxImageComboBox, cxCurrencyEdit;

type
  TfrmIPOPoolingsDist = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    popMaster: TPopupMenu;
    aclPooling: TActionList;
    actNew: TNAction;
    actEdit: TNAction;
    actDelete: TNAction;
    actReload: TNAction;
    dsPooling: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterPOOLINGID: TcxGridDBBandedColumn;
    gvwMasterPOOLINGCODE: TcxGridDBBandedColumn;
    gvwMasterPOOLINGDATE: TcxGridDBBandedColumn;
    gvwMasterPOOLINGDESC: TcxGridDBBandedColumn;
    gvwMasterPOOLINGTYPE: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterCUST_NAME: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDTYPE: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDNO: TcxGridDBBandedColumn;
    gvwMasterCUST_IDCARDEXPIRE: TcxGridDBBandedColumn;
    gvwMasterCUST_ADDRESS: TcxGridDBBandedColumn;
    gvwMasterCUST_PHONE: TcxGridDBBandedColumn;
    gvwMasterCUST_FAX: TcxGridDBBandedColumn;
    gvwMasterCUST_MAIL: TcxGridDBBandedColumn;
    gvwMasterORDERCCY: TcxGridDBBandedColumn;
    gvwMasterORDERQTY: TcxGridDBBandedColumn;
    gvwMasterORDERAMT: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterPROCESSQTY: TcxGridDBBandedColumn;
    gvwMasterPROCESSAMT: TcxGridDBBandedColumn;
    gvwMasterRETURNAMT: TcxGridDBBandedColumn;
    actSetQtyProcess: TNAction;
    SetQtyProcess1: TMenuItem;
    actConfirmed: TNAction;
    gvwMasterCONFIRMED: TcxGridDBBandedColumn;
    gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn;
    actComfirmProcess: TNAction;
    gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSTOCK_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterPROCESS_CONFIRM: TcxGridDBBandedColumn;
    gvwMasterPOSTEDCUSTODY: TcxGridDBBandedColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actReloadExecute(Sender: TObject);
    procedure actSetQtyProcessExecute(Sender: TObject);
    procedure actNewUpdate(Sender: TObject);
    procedure actConfirmedExecute(Sender: TObject);
    procedure actSetQtyProcessUpdate(Sender: TObject);
    procedure actComfirmProcessExecute(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FReadOnly: Boolean;
    FDistribution: Boolean;
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;
    property ReadOnly: Boolean read FReadOnly write FReadOnly;
    property Distribution: Boolean read FDistribution write FDistribution;
  end;

var
  frmIPOPoolingsDist: TfrmIPOPoolingsDist;

implementation

{$R *.dfm}

uses DataGlobal, FormIPOPooling;

procedure TfrmIPOPoolingsDist.actComfirmProcessExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to confirm multiple distribution IPO Poolings?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsPooling.DataSet.FieldByName('CONFIRMED').AsString <> '1') then
          dmGlobal.RemoteServer.ConfirmIPOPoolingDistribution(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Pooling comfirmed successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.ConfirmIPOPoolingDistribution(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Pooling comfirmed successfully');
    end;
  end;
end;

procedure TfrmIPOPoolingsDist.actConfirmedExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to confirm multiple IPO Poolings?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsPooling.DataSet.FieldByName('CONFIRMED').AsString <> '1') then
          dmGlobal.RemoteServer.ConfirmIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Pooling comfirmed successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.ConfirmIPOPooling(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Pooling comfirmed successfully');
    end;
  end;
end;

procedure TfrmIPOPoolingsDist.actDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure to delete this record?', mtConfirmation, mbYesNo,
     0) = mrYes then
  begin
    with FFormBrowse do
    begin
      cdsIPOPooling.Close;
      cdsIPOPooling.Params[0].AsInteger := cdsIPOPoolingByIPOPOOLINGID.AsInteger;
      cdsIPOPooling.Open;

      if not cdsIPOPooling.IsEmpty then
      begin
        cdsIPOPooling.Delete;
        cdsIPOPooling.ApplyUpdates(-1);
      end;
    end;
  end;

end;

procedure TfrmIPOPoolingsDist.actEditExecute(Sender: TObject);
var
  oForm: TfrmIPOPooling;
begin
  with FFormBrowse do
  begin
    cdsIPOPooling.Close;
    cdsIPOPooling.Params[0].AsInteger := cdsIPOPoolingByIPOPOOLINGID.AsInteger;
    cdsIPOPooling.Open;

    oForm := TfrmIPOPooling.Create(nil);
    Try
      cdsIPOPooling.Edit;
      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOPooling.State in dsEditModes then
          cdsIPOPooling.Post;

        if cdsIPOPooling.ApplyUpdates(-1) = 0 then
        begin
          cdsIPO.Close;
          cdsIPO.Open;

          cdsIPOPoolingByIPO.Close;
          cdsIPOPoolingByIPO.Open;
        end;

      end
      else
      begin
        cdsIPOPoolingByIPO.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

  end;
end;

procedure TfrmIPOPoolingsDist.actNewExecute(Sender: TObject);
var
  oForm: TfrmIPOPooling;
  iID, iCode: Integer;
  sCodeSeq: String;
begin
  with FFormBrowse do
  begin
    cdsIPOPooling.Close;
    cdsIPOPooling.Params[0].AsInteger := -1;
    cdsIPOPooling.Open;

    oForm := TfrmIPOPooling.Create(nil);
    Try
      iID := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO_POOLING');
      sCodeSeq := 'Pooling' + cdsIPOIPOCODE.AsString;
      iCode := dmGlobal.RemoteServer.GetSeq(sCodeSeq);
      cdsIPOPooling.Append;
      cdsIPOPoolingPOOLINGID.AsInteger := iID;
      cdsIPOPoolingPOOLINGCODE.AsString := cdsIPOIPOCODE.AsString + '-P' + Format('%.5d', [iCode]);
      cdsIPOPoolingIPOID.AsInteger := cdsIPOIPOID.AsInteger;
      cdsIPOPoolingPOOLINGTYPE.AsString := 'C';
      cdsIPOPoolingORDERCCY.AsString := cdsIPOCCY.AsString;
      cdsIPOPoolingSTATUS.AsString := 'O';

      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOPooling.State in dsEditModes then
          cdsIPOPooling.Post;

        if cdsIPOPooling.ApplyUpdates(-1) = 0 then
        begin
          cdsIPO.Close;
          cdsIPO.Open;

          cdsIPOPoolingByIPO.Close;
          cdsIPOPoolingByIPO.Open;
        end;

      end
      else
      begin
        dmGlobal.RemoteServer.CancelSeq('TBL_B_IPO_POOLING', iID);
        dmGlobal.RemoteServer.CancelSeq(sCodeSeq, iCode);

        cdsIPOPooling.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

  end;

end;

procedure TfrmIPOPoolingsDist.actNewUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (dsPooling.DataSet.FieldByName('CONFIRMED').AsString <> '1') and (not ReadOnly);
end;

procedure TfrmIPOPoolingsDist.actReloadExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPO.Close;
    cdsIPO.Open;

    cdsIPOPoolingByIPO.Close;
    cdsIPOPoolingByIPO.Open;
  end;
end;

procedure TfrmIPOPoolingsDist.actSetQtyProcessExecute(Sender: TObject);
var
  dQtyProcess : Double;
begin
  with FFormBrowse do
  begin
    cdsIPOPooling.Close;
    cdsIPOPooling.Params[0].AsInteger := cdsIPOPoolingByIPOPOOLINGID.AsInteger;
    cdsIPOPooling.Open;

    if not cdsIPOPooling.IsEmpty then
    begin
      Try
        dQtyProcess := StrToFloat(InputBox('Set Qty ' + 'Process', 'Qty Process', cdsIPOPoolingPROCESSQTY.AsString));
        if cdsIPOPoolingORDERQTY.AsFloat < dQtyProcess then
          MessageDlg('Process quantity can not bigger than order qty', mtError, [mbOK], 0)
        else
        begin
          cdsIPOPooling.Edit;
          cdsIPOPoolingPROCESSQTY.AsFloat       := dQtyProcess;
          cdsIPOPoolingPROCESSAMT.AsFloat       := cdsIPOPoolingPROCESSQTY.AsFloat * cdsIPOPoolingFIXEDPRICE.AsFloat;
          cdsIPOPoolingRETURNAMT.AsFloat        := cdsIPOPoolingPROCESSAMT.AsFloat - cdsIPOPoolingORDERAMT.AsFloat;
          cdsIPOPooling.Post;

          dmGlobal.RemoteServer.ConfirmIPOPoolingDistribution(dsPooling.DataSet.FieldByName('POOLINGID').AsInteger);
          if cdsIPOPooling.ApplyUpdates(-1) = 0 then
            cdsIPOPoolingByIPO.Refresh;
        end;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
  end;
end;

procedure TfrmIPOPoolingsDist.actSetQtyProcessUpdate(Sender: TObject);
begin
  actSetQtyProcess.Enabled := (dsPooling.DataSet.FieldByName('CONFIRMED').AsString = '1');// and (Distribution);
end;

end.
