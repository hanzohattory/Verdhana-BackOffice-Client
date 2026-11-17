unit FormCashSettlementList2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxRadioGroup, cxCalendar, cxBarEditItem,
  System.Actions, System.ImageList, dxDateRanges, cxCheckBox,Clipbrd,
  dxScrollbarAnnotations;

type
  TfrmCashSettlementList2 = class(TfrmBrowseData)
    cdsCashSettlementList: TNClientDataset;
    cdsCashSettlementListACCID: TLargeintField;
    cdsCashSettlementListACCCODE: TStringField;
    cdsCashSettlementListACCNAME: TStringField;
    cdsCashSettlementListACCINIT: TStringField;
    cdsCashSettlementListACCTYPE: TStringField;
    cdsCashSettlementListPRDCODE: TStringField;
    cdsCashSettlementListSETTLE_CCYCODE: TStringField;
    cdsCashSettlementListCASH_ONHAND: TFloatField;
    cdsCashSettlementListCASH_QQ: TFloatField;
    cdsCashSettlementListACCRUED_INTEREST: TFloatField;
    cdsCashSettlementListVOUCHERAMT: TFloatField;
    cdsCashSettlementListAP_OVERDUE: TFloatField;
    cdsCashSettlementListAR_OVERDUE: TFloatField;
    cdsCashSettlementListAP_DUE: TFloatField;
    cdsCashSettlementListAR_DUE: TFloatField;
    cdsCashSettlementListAP_NOTDUE: TFloatField;
    cdsCashSettlementListAR_NOTDUE: TFloatField;
    cdsCashSettlementListNET_OVERDUE: TFloatField;
    cdsCashSettlementListNET_DUE: TFloatField;
    cdsCashSettlementListNET_NOTDUE: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterCASH_QQ: TcxGridDBBandedColumn;
    gvwMasterACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwMasterVOUCHERAMT: TcxGridDBBandedColumn;
    gvwMasterAP_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterAR_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterAP_DUE: TcxGridDBBandedColumn;
    gvwMasterAR_DUE: TcxGridDBBandedColumn;
    gvwMasterAP_NOTDUE: TcxGridDBBandedColumn;
    gvwMasterAR_NOTDUE: TcxGridDBBandedColumn;
    gvwMasterNET_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterNET_DUE: TcxGridDBBandedColumn;
    gvwMasterNET_NOTDUE: TcxGridDBBandedColumn;
    cdsCashSettlementListCASHKEEP: TStringField;
    cdsCashSettlementListBANKID_COMPANY: TIntegerField;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterBANKID_COMPANY: TcxGridDBBandedColumn;
    actViewVoucher: TNAction;
    actCreateVoucher: TNAction;
    actCashDep: TNAction;
    actCreateAllPaymentVoucher: TNAction;
    actCreateAllReceiveVoucher: TNAction;
    CreateVoucher1: TMenuItem;
    CreateAllPaymentVoucher1: TMenuItem;
    CreateAllReceiveVoucher1: TMenuItem;
    CashDeposit1: TMenuItem;
    ViewVoucher1: TMenuItem;
    dtDue: TcxBarEditItem;
    rgCashKeep: TcxBarEditItem;
    cdsCashSettlementListISRDN_HOMECCY: TStringField;
    cdsCashSettlementListISRDN_SETTLECCY: TStringField;
    gvwMasterISRDN_HOMECCY: TcxGridDBBandedColumn;
    gvwMasterISRDN_SETTLECCY: TcxGridDBBandedColumn;
    actProcessAutoRollOverCash: TNAction;
    ProcessAutoRollOverCash1: TMenuItem;
    cxBarEditItem1: TcxBarEditItem;
    chkIncludeNotDue: TcxBarEditItem;
    actCreateVoucherAll: TNAction;
    dxBarButton1: TdxBarButton;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    procedure cdsCashSettlementListCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actViewVoucherExecute(Sender: TObject);
    procedure actCreateVoucherExecute(Sender: TObject);
    procedure actCashDepExecute(Sender: TObject);
    procedure actCreateAllPaymentVoucherExecute(Sender: TObject);
    procedure actCreateAllReceiveVoucherExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actProcessAutoRollOverCashExecute(Sender: TObject);
    procedure actCreateVoucherAllExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashSettlementList2: TfrmCashSettlementList2;

implementation

{$R *.dfm}

uses DataGlobal, FormCashSettleVoucherProcess, FormCashSettleVoucher,
  FormCashDep, ClassClientConst, FormProgressBar;

procedure TfrmCashSettlementList2.actCashDepExecute(Sender: TObject);
var
  sKey, sMsg: String;
  CDID: Int64;
begin
  inherited;
  //Request By Irvan 20170430 untuk cash deposit auto posting setelah data insert
  sKey := '';
  dmGlobal.DefaultAccountID := cdsCashSettlementListACCID.AsInteger;
  dmGlobal.DefaultAmount := 0;
  if dmGlobal.ShowEditorForm(TfrmCashDep, sKey, pkCreate) = mrOk then
  Begin
    CDID := StrToInt64Def(sKey, Low(Int64));
    if CDID <> Low(Int64) then
    begin
      if dmGlobal.RemoteServer.PostCashDep(CDID, sMsg) then
      begin
        cdsCashSettlementList.Refresh;
        ShowMessage(sMsg);
      end;
    end;
  End;
end;

procedure TfrmCashSettlementList2.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
begin
  inherited;
  LView := TcxGridDBBandedTableView(grdMaster.FocusedView);

  If Assigned(LView) Then
  begin
    Clipboard.Clear;
    sValues := '';

    if LView.OptionsSelection.CellMultiSelect then
    begin
      for iRow := 0 to Pred(LView.Controller.SelectedRecordCount) do
      begin
        for iCol := 0 to Pred(LView.Controller.SelectedColumnCount) do
        begin
          if iRow = 0 then
          begin
            if sHeader = '' then sHeader := LView.Controller.SelectedColumns[iCol].Caption + #9
            else sHeader := sHeader + LView.Controller.SelectedColumns[iCol].Caption + #9;
          end;

          if sValues = '' then
            sValues := VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) + #9
          else
            sValues := sValues + VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) +#9;
        end;
        sValues := sValues + sLineBreak ;
      end;
    end;
    Clipboard.AsText := sHeader + sLineBreak + sValues;
  end;

end;

procedure TfrmCashSettlementList2.actCreateAllPaymentVoucherExecute(
  Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
  slMsg: TStringList;
  oProgress: TfrmProgressBar;
  i, n, iSuccess, iReject: Integer;
  dDue: TDateTime;
  x: Integer;
  iAccID: Integer;
  sAccCode: string;
  sSettleCCY: string;
begin
  inherited;
  if (not cdsCashSettlementList.Active) or (cdsCashSettlementList.IsEmpty) then
    Exit;

//  if MessageDlg('Are you sure to create all payment voucher?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  if MessageDlg('Are you sure to create selected payment voucher?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    dDue := dtDue.EditValue;
    slMsg := TStringList.Create;
    oProgress := TfrmProgressBar.Create(Nil);
    Try
      iSuccess := 0;
      iReject := 0;
      i := 0;
      n := gvwMaster.Controller.SelectedRecordCount;
      oProgress.Show;

//      cdsCashSettlementList.First;
//      while not cdsCashSettlementList.Eof do
//      begin
//        i := i + 1;
//
//        oProgress.ChangeBar(trunc(i / n * 100), 'Processing Voucher for Account ' +
//          QuotedStr(cdsCashSettlementListACCCODE.AsString));
//
//        bResult := dmGlobal.RemoteServer.CreatePaymentVoucher(cdsCashSettlementListACCID.AsInteger, dtDue, sMsg);
//        slMsg.Add('Account ' + cdsCashSettlementListACCCODE.AsString + ': ' + sMsg);
//        if bResult then
//          iSuccess := iSuccess + 1
//        else
//          iReject := iReject + 1;
//
//        cdsCashSettlementList.Next;
//      end;

      cdsCashSettlementList.DisableControls;
      for x := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        iAccID     := StrToIntDef(gvwMaster.Controller.SelectedRecords[x].Values[gvwMasterACCID.Index], 0);
        sAccCode   := gvwMaster.Controller.SelectedRecords[x].Values[gvwMasterACCCODE.Index];
        sSettleCCY := gvwMaster.Controller.SelectedRecords[x].Values[gvwMasterSETTLE_CCYCODE.Index];

        i := i + 1;

        oProgress.ChangeBar(trunc(i / n * 100), 'Processing Voucher for Account ' +
          QuotedStr(sAccCode));

        bResult := dmGlobal.RemoteServer.CreatePaymentVoucher(iAccID, sSettleCCY, dDue, sMsg);
        slMsg.Add('Account ' + sAccCode + ': ' + sMsg);
        if bResult then
          iSuccess := iSuccess + 1
        else
          iReject := iReject + 1;
      end;
      cdsCashSettlementList.EnableControls;
    Finally
      slMsg.Insert(0, 'Cash payment voucher created successfully for ' + IntToStr(iSuccess) + ' Accounts.');
      sMsg := slMsg.Text;
      FreeAndNil(oProgress);
      FreeAndNil(slMsg);
      ShowMessage(sMsg);
    End;

    cdsCashSettlementList.Refresh;
  end;
end;

procedure TfrmCashSettlementList2.actCreateAllReceiveVoucherExecute(
  Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
  slMsg: TStringList;
  oProgress: TfrmProgressBar;
  i, n, iSuccess, iReject: Integer;
  dtDue: TDateTime;
  x: Integer;
  iAccID: Integer;
  sAccCode: string;
  sSettleCCY: string;
begin
  inherited;
  if (not cdsCashSettlementList.Active) or (cdsCashSettlementList.IsEmpty) then
    Exit;

  if MessageDlg('Are you sure to create selected receive voucher?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    dtDue := cdsCashSettlementList.Params[0].AsDate;
    slMsg := TStringList.Create;
    oProgress := TfrmProgressBar.Create(Nil);
    Try
      iSuccess := 0;
      iReject := 0;
      i := 0;
      n := gvwMaster.Controller.SelectedRecordCount;
      oProgress.Show;

//      cdsCashSettlementList.First;
//      while not cdsCashSettlementList.Eof do
//      begin
//        i := i + 1;
//
//        oProgress.ChangeBar(trunc(i / n * 100), 'Processing Voucher for Account ' +
//          QuotedStr(cdsCashSettlementListACCCODE.AsString));
//
//        bResult := dmGlobal.RemoteServer.CreateReceiveVoucher(cdsCashSettlementListACCID.AsInteger, dtDue, sMsg);
//        slMsg.Add('Account ' + cdsCashSettlementListACCCODE.AsString + ': ' + sMsg);
//        if bResult then
//          iSuccess := iSuccess + 1
//        else
//          iReject := iReject + 1;
//
//        cdsCashSettlementList.Next;
//      end;

      cdsCashSettlementList.DisableControls;
      for x := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        iAccID     := StrToIntDef(gvwMaster.Controller.SelectedRecords[x].Values[gvwMasterACCID.Index], 0);
        sAccCode   := gvwMaster.Controller.SelectedRecords[x].Values[gvwMasterACCCODE.Index];
        sSettleCCY := gvwMaster.Controller.SelectedRecords[x].Values[gvwMasterSETTLE_CCYCODE.Index];

        i := i + 1;

        oProgress.ChangeBar(trunc(i / n * 100), 'Processing Voucher for Account ' + QuotedStr(sAccCode));

        bResult := dmGlobal.RemoteServer.CreateReceiveVoucher(iAccID, sSettleCCY, dtDue, sMsg);
        slMsg.Add('Account ' + sAccCode + ': ' + sMsg);
        if bResult then
          iSuccess := iSuccess + 1
        else
          iReject := iReject + 1;
      end;
      cdsCashSettlementList.EnableControls;
    Finally
      slMsg.Insert(0, 'Cash recive voucher created successfully for ' + IntToStr(iSuccess) + ' Accounts.');
      sMsg := slMsg.Text;
      FreeAndNil(oProgress);
      FreeAndNil(slMsg);
      ShowMessage(sMsg);
    End;

    cdsCashSettlementList.Refresh;
  end;
end;

procedure TfrmCashSettlementList2.actCreateVoucherAllExecute(Sender: TObject);
var
  i, iErr, iSuc: Integer;
  slMsg: TStringList;
  sMsg: string;
  bCon: Boolean;
begin
  inherited;
  if MessageDlg('Create Voucher All Cash Settlement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PararelCreateCashSettementVoucher(VarToDateTime(dtDue.EditValue), VarToStrDef(rgCashKeep.EditValue, '2'), chkIncludeNotDue.EditValue, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
    cdsCashSettlementList.Refresh;
  end;

//  try
//    cdsCashSettlementList.DisableControls;
//    slMsg := TStringList.Create;
//    iErr  := 0;
//    iSuc  := 0;
//
//    cdsCashSettlementList.First;
//    while not cdsCashSettlementList.Eof do
//    begin
//      bCon := dmglobal.RemoteServer.CreateAllCashSettlementVoucher(cdsCashSettlementListACCID.AsLargeInt, cdsCashSettlementListSETTLE_CCYCODE.AsString, sMsg);
//      if bCon then
//        Inc(iSuc)
//      else
//      begin
//        Inc(iErr);
//        slMsg.Add('Account ' + cdsCashSettlementListACCCODE.AsString + ' fail to create voucher : '+ sMsg);
//      end;
//
//      cdsCashSettlementList.Next;
//    end;
//  finally
//    cdsCashSettlementList.EnableControls;
//    if iErr > 0 then
//      slMsg.Add(intToStr(iErr) + ' Record(s) Fail To Crate Voucher');
//    if iSuc > 0 then
//      slMsg.Add(intToStr(iSuc) + ' Record(s) Success Crate Voucher');
//
//    MessageDlg(slMsg.Text, mtInformation, [mbOk], 0);
//    FreeAndNil(slMsg);
//    cdsCashSettlementList.Refresh;
//  end;
end;

procedure TfrmCashSettlementList2.actCreateVoucherExecute(Sender: TObject);
begin
  inherited;
  if frmCashSettleVoucher.CreateVoucher(cdsCashSettlementListACCID.AsInteger, cdsCashSettlementListBANKID_COMPANY.AsInteger
    , cdsCashSettlementListACCTYPE.AsString, cdsCashSettlementListSETTLE_CCYCODE.AsString, cdsCashSettlementListISRDN_SETTLECCY.AsString, dtDue.EditValue) then
  begin
    cdsCashSettlementList.Refresh;
  end;
end;

procedure TfrmCashSettlementList2.actProcessAutoRollOverCashExecute(
  Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
  slMsg: TStringList;
  oProgress: TfrmProgressBar;
  i, n, iSuccess, iReject: Integer;
  dtDue: TDateTime;
begin
  inherited;
  if (not cdsCashSettlementList.Active) or (cdsCashSettlementList.IsEmpty) then
    Exit;

  if MessageDlg('Are you sure to Process Auto Roll Over Cash?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    dtDue := dmGlobal.RemoteServer.GetTransDate;
    slMsg := TStringList.Create;
    oProgress := TfrmProgressBar.Create(Nil);
    Try
      iSuccess := 0;
      iReject := 0;
      i := 0;
      n := cdsCashSettlementList.RecordCount;
      oProgress.Show;

      cdsCashSettlementList.First;
      while not cdsCashSettlementList.Eof do
      begin
        i := i + 1;

        oProgress.ChangeBar(trunc(i / n * 100), 'Processing Auto Roll Over for Account ' +
          QuotedStr(cdsCashSettlementListACCCODE.AsString));

        bResult := dmGlobal.RemoteServer.CreateAllCashSettlementVoucher(cdsCashSettlementListACCID.AsInteger  //CreateAutoRollOverCashVoucher(cdsCashSettlementListACCID.AsInteger
          , cdsCashSettlementListSETTLE_CCYCODE.AsString, sMsg);
        slMsg.Add('Account ' + cdsCashSettlementListACCCODE.AsString + ': ' + sMsg);
        if bResult then
          iSuccess := iSuccess + 1
        else
          iReject := iReject + 1;

        cdsCashSettlementList.Next;
      end;

    Finally
      slMsg.Insert(0, 'Process Auto Roll Over successfully for ' + IntToStr(iSuccess) + ' Accounts.');
      sMsg := slMsg.Text;
      FreeAndNil(oProgress);
      FreeAndNil(slMsg);
      ShowMessage(sMsg);
    End;

    cdsCashSettlementList.Refresh;
  end;
end;

procedure TfrmCashSettlementList2.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsCashSettlementList.Close;
  cdsCashSettlementList.Params[0].AsDate   := VarToDateTime(dtDue.EditValue);
  cdsCashSettlementList.Params[1].AsString := VarToStrDef(rgCashKeep.EditValue, '2');
  cdsCashSettlementList.Params[2].AsString := chkIncludeNotDue.EditValue;
  cdsCashSettlementList.Open;
end;

procedure TfrmCashSettlementList2.actViewVoucherExecute(Sender: TObject);
begin
  inherited;
  if frmCashSettleVoucherProcess.ProcessVoucher(False, cdsCashSettlementListACCID.AsInteger, -1) then
  begin
    cdsCashSettlementList.Refresh;
  end;
end;

procedure TfrmCashSettlementList2.cdsCashSettlementListCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsCashSettlementListNET_OVERDUE.AsFloat := cdsCashSettlementListAR_OVERDUE.AsFloat - cdsCashSettlementListAP_OVERDUE.AsFloat;
  cdsCashSettlementListNET_DUE.AsFloat     := cdsCashSettlementListAR_DUE.AsFloat - cdsCashSettlementListAP_DUE.AsFloat;
  cdsCashSettlementListNET_NOTDUE.AsFloat  := cdsCashSettlementListAR_NOTDUE.AsFloat - cdsCashSettlementListAP_NOTDUE.AsFloat;
end;

procedure TfrmCashSettlementList2.FormCreate(Sender: TObject);
begin
  inherited;
  dtDue.EditValue := dmGlobal.RemoteServer.GetTransDate;
  rgCashKeep.EditValue := '2';

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;

    if not cdsLuProductType.Active then
      cdsLuProductType.Open;

    if not cdsLuBankCompany.Active then
      cdsLuBankCompany.Open;
  end;

//  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmCashSettlementList2);

end.
