unit FormIPOAllotmentsDist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, Data.DB, cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ActnList, NDatasetAction, FormIPOList;

type
  TfrmIPOAllotmentsDistribution = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
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
    cxDBTextEdit10: TcxDBTextEdit;
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
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dsSubject: TDataSource;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsAllotment: TDataSource;
    gvwMasterALLOTMENTID: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterALLOTMENTCODE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterNETFEE_PCT: TcxGridDBBandedColumn;
    gvwMasterVAT_PCT: TcxGridDBBandedColumn;
    gvwMasterWHT_PCT: TcxGridDBBandedColumn;
    gvwMasterBFEE: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    gvwMasterNETAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCDBCRID: TcxGridDBBandedColumn;
    gvwMasterCOUTSTANDID: TcxGridDBBandedColumn;
    gvwMasterFPPS: TcxGridDBBandedColumn;
    gvwMasterDPPS: TcxGridDBBandedColumn;
    gvwMasterCOFSENT: TcxGridDBBandedColumn;
    gvwMasterCONFIRMED: TcxGridDBBandedColumn;
    gvwMasterCONFORIGIN: TcxGridDBBandedColumn;
    gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwMasterPOSTEDCUSTODY: TcxGridDBBandedColumn;
    gvwMasterIDCARD: TcxGridDBBandedColumn;
    gvwMasterQTYPROCESS: TcxGridDBBandedColumn;
    gvwMasterPEID: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterBOOKID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    aclAllotments: TActionList;
    actImportFromBook: TNAction;
    actNew: TNAction;
    actEdit: TNAction;
    actDelete: TNAction;
    actReload: TNAction;
    actSetQtyProcess: TNAction;
    actSetRemark: TNAction;
    actSetFPPS: TNAction;
    actSetDPPS: TNAction;
    actViewConf: TNAction;
    popMaster: TPopupMenu;
    actSendMail: TNAction;
    actConfirmed: TNAction;
    gvwMasterALLOTMENTDATE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSTOCK_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterACCCODE_1: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn;
    procedure actReloadExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actSetQtyProcessExecute(Sender: TObject);
    procedure actSetRemarkExecute(Sender: TObject);
    procedure actSetFPPSExecute(Sender: TObject);
    procedure actSetDPPSExecute(Sender: TObject);
    procedure actViewConfExecute(Sender: TObject);
    procedure actSendMailExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actConfirmedExecute(Sender: TObject);
    procedure actNewUpdate(Sender: TObject);
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
  frmIPOAllotmentsDistribution: TfrmIPOAllotmentsDistribution;

implementation

{$R *.dfm}

uses DataGlobal, FormIPOAllotment, FormIPOAllotmentFromBook,
  FormReportTradeConfIPO;

procedure TfrmIPOAllotmentsDistribution.actConfirmedExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to confirm multiple IPO Allotments?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsAllotment.DataSet.FieldByName('CONFIRMED').AsString <> '1') then
          dmGlobal.RemoteServer.ConfirmIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Allotment comfirmed successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.ConfirmIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Allotment comfirmed successfully');
    end;
  end;
end;

procedure TfrmIPOAllotmentsDistribution.actDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Are you sure to delete this record?', mtConfirmation, mbYesNo,
     0) = mrYes then
  begin
    with FFormBrowse do
    begin
      cdsIPOAllotment.Close;
      cdsIPOAllotment.Params[0].AsInteger :=
         cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
      cdsIPOAllotment.Open;

      if not cdsIPOAllotment.IsEmpty then
      begin
        if (cdsIPOAllotmentCONFIRMED.AsString = '1') then
        begin
          MessageDlg('This allotment have been confirmed.' + #13#10
            + 'You can''t delete this data!', mtInformation, [mbOK], -1);
          Exit;
        end;

        cdsIPOAllotment.Delete;
        cdsIPOAllotment.ApplyUpdates(-1);
      end;

    end;

  end;

end;

procedure TfrmIPOAllotmentsDistribution.actEditExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotment;
  OldAmount: Double;
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if (cdsIPOAllotmentCONFIRMED.AsString = '1') then
    begin
      MessageDlg('This allotment have been confirmed.' + #13#10
        + 'You can''t change this data!', mtInformation, [mbOK], -1);
      Exit;
    end;

    oForm := TfrmIPOAllotment.Create(nil);
    Try
      OldAmount := cdsIPOAllotmentAMOUNT.AsFloat;
      cdsIPOAllotment.Edit;
      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOAllotment.State in dsEditModes then
        begin
          cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
          cdsIPOAllotment.Post;
        end;

        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
        begin
          cdsIPO.Close;
          cdsIPO.Open;

          cdsIPO.Edit;
          cdsIPOABSORBAMT.AsFloat := cdsIPOABSORBAMT.AsFloat - OldAmount +
             cdsIPOAllotmentAMOUNT.AsFloat;
          cdsIPO.Post;
          cdsIPO.ApplyUpdates(-1);

          cdsIPOAllotmentByIPO.Close;
          cdsIPOAllotmentByIPO.Open;
        end;

      end
      else
      begin
        cdsIPOAllotment.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

  end;
end;

procedure TfrmIPOAllotmentsDistribution.actEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (dsAllotment.DataSet.FieldByName('CONFIRMED').AsString <> '1')
    and (not ReadOnly);
end;

procedure TfrmIPOAllotmentsDistribution.actNewExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotment;
  iID, iCode: Integer;
  sCodeSeq: String;
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := -1;
    cdsIPOAllotment.Open;

    oForm := TfrmIPOAllotment.Create(nil);
    Try
      iID := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO_ALLOTMENT');
      sCodeSeq := 'Allotment' + cdsIPOIPOCODE.AsString;
      iCode := dmGlobal.RemoteServer.GetSeq(sCodeSeq);
      cdsIPOAllotment.Append;
      cdsIPOAllotmentALLOTMENTID.AsInteger := iID;
      cdsIPOAllotmentALLOTMENTCODE.AsString := cdsIPOIPOCODE.AsString + '-F' +
         Format('%.5d', [iCode]);
      cdsIPOAllotmentIPOID.AsInteger := cdsIPOIPOID.AsInteger;
      cdsIPOAllotmentQTY.AsFloat := 0;
      cdsIPOAllotmentNETFEE_PCT.AsFloat := cdsIPONETFEE.AsFloat;
      cdsIPOAllotmentVAT_PCT.AsFloat := cdsIPOVAT.AsFloat;
      cdsIPOAllotmentWHT_PCT.AsFloat := cdsIPOWHT.AsFloat;

      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOAllotment.State in dsEditModes then
        begin
          cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
          cdsIPOAllotment.Post;
        end;

        if cdsIPOAllotment.ApplyUpdates(0) = 0 then
        begin
          cdsIPO.Close;
          cdsIPO.Open;

          cdsIPO.Edit;
          cdsIPOABSORBAMT.AsFloat := cdsIPOABSORBAMT.AsFloat +
             cdsIPOAllotmentAMOUNT.AsFloat;
          cdsIPO.Post;
          cdsIPO.ApplyUpdates(-1);

          cdsIPOAllotmentByIPO.Close;
          cdsIPOAllotmentByIPO.Open;
        end;

      end
      else
      begin
        dmGlobal.RemoteServer.CancelSeq('TBL_B_IPO_ALLOTMENT', iID);
        dmGlobal.RemoteServer.CancelSeq(sCodeSeq, iCode);

        cdsIPOAllotment.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

  end;
end;

procedure TfrmIPOAllotmentsDistribution.actNewUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not ReadOnly;
end;

procedure TfrmIPOAllotmentsDistribution.actReloadExecute(Sender: TObject);
var
  AllotmentID: Integer;
begin
  AllotmentID := -1;
  if dsAllotment.DataSet.Active then
    AllotmentID := dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger;

  dsAllotment.DataSet.Close;
  dsAllotment.DataSet.Open;

  dsAllotment.DataSet.Locate('ALLOTMENTID', AllotmentID, []);

  dsSubject.DataSet.Close;
  dsSubject.DataSet.Open;
end;

procedure TfrmIPOAllotmentsDistribution.actSendMailExecute(Sender: TObject);
begin
  ShowMessage(dmGlobal.RemoteServer.SendIPOContractByMail(
     dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger));
end;

procedure TfrmIPOAllotmentsDistribution.actSetDPPSExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      Try
        cdsIPOAllotment.Edit;
        cdsIPOAllotmentDPPS.AsString := InputBox('Set DPPS', 'DPPS No ',
           cdsIPOAllotmentDPPS.AsString);
        cdsIPOAllotment.Post;
        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
          cdsIPOAllotmentByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
  end;
end;

procedure TfrmIPOAllotmentsDistribution.actSetFPPSExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      Try
        cdsIPOAllotment.Edit;
        cdsIPOAllotmentFPPS.AsString := InputBox('Set FPPS', 'FPPS No ',
           cdsIPOAllotmentFPPS.AsString);
        cdsIPOAllotment.Post;
        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
          cdsIPOAllotmentByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
  end;
end;

procedure TfrmIPOAllotmentsDistribution.actSetQtyProcessExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      Try
        cdsIPOAllotment.Edit;
        cdsIPOAllotmentQTYPROCESS.AsFloat := StrToFloat(InputBox('Set Qty ' +
           'Process', 'Qty Process', cdsIPOAllotmentQTYPROCESS.AsString));
        cdsIPOAllotment.Post;
        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
          cdsIPOAllotmentByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
  end;
end;

procedure TfrmIPOAllotmentsDistribution.actSetRemarkExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      Try
        cdsIPOAllotment.Edit;
        cdsIPOAllotmentREMARK.AsString := InputBox('Set Remark', 'Remark ',
           cdsIPOAllotmentREMARK.AsString);
        cdsIPOAllotment.Post;
        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
          cdsIPOAllotmentByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
  end;
end;

procedure TfrmIPOAllotmentsDistribution.actViewConfExecute(Sender: TObject);
begin
  frmReportTradeConfIPO.Run(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger);
end;

end.
