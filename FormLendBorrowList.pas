unit FormLendBorrowList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCalendar, NReportClient, cxCheckBox, cxImageComboBox,ClassClientConst,
  dxDateRanges, dxScrollbarAnnotations, System.Actions, System.ImageList;

type
  TfrmLendBorrowList = class(TfrmBrowseData)
    cdsLendBorrowList: TNClientDataset;
    cdsLendBorrowListLBID: TLargeintField;
    cdsLendBorrowListLBNO: TStringField;
    cdsLendBorrowListENTRYDATE: TDateField;
    cdsLendBorrowListLBDATE: TDateField;
    cdsLendBorrowListDUEDATE: TDateField;
    gvwMasterLBID: TcxGridDBBandedColumn;
    gvwMasterLBNO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterLBDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    cdsLendBorrow: TNClientDataset;
    cdsLendBorrowListSTOCKID: TLargeintField;
    cdsLendBorrowListSTOCKCODE: TStringField;
    cdsLendBorrowListACCID: TLargeintField;
    cdsLendBorrowListACCNO: TStringField;
    cdsLendBorrowListACCNAME: TStringField;
    cdsLendBorrowListCP_ACCID: TLargeintField;
    cdsLendBorrowListCP_ACCNO: TStringField;
    cdsLendBorrowListCP_ACCNAME: TStringField;
    cdsLendBorrowListLBTYPE: TStringField;
    cdsLendBorrowListLB_QTY: TFloatField;
    cdsLendBorrowListLB_PRICE: TFloatField;
    cdsLendBorrowListLB_CHARGESRATE: TFloatField;
    cdsLendBorrowListLB_DAY: TIntegerField;
    cdsLendBorrowListLB_TIMEMODE: TStringField;
    cdsLendBorrowListARO: TStringField;
    cdsLendBorrowListCHARGE_PAYDATE: TDateField;
    cdsLendBorrowListPOSTED: TStringField;
    cdsLendBorrowListPAID: TStringField;
    cdsLendBorrowListCASH_VOUCHERID: TLargeintField;
    cdsLendBorrowListSET2SIDE: TStringField;
    cdsLendBorrowListLINK2SIDEID: TLargeintField;
    cdsLendBorrowListMODDA: TDateTimeField;
    cdsLendBorrowListMODUI: TStringField;
    cdsLendBorrowListAPPDA: TDateTimeField;
    cdsLendBorrowListAPPUI: TStringField;
    cdsLendBorrowListUNDER4Y: TIntegerField;
    cdsLendBorrowListUNDER4YDA: TDateTimeField;
    cdsLendBorrowListNOTES4Y: TStringField;
    cdsLendBorrowListISDEL: TIntegerField;
    cdsLendBorrowListID: TLargeintField;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCP_ACCID: TcxGridDBBandedColumn;
    gvwMasterCP_ACCNO: TcxGridDBBandedColumn;
    gvwMasterCP_ACCNAME: TcxGridDBBandedColumn;
    gvwMasterLBTYPE: TcxGridDBBandedColumn;
    gvwMasterLB_QTY: TcxGridDBBandedColumn;
    gvwMasterLB_PRICE: TcxGridDBBandedColumn;
    gvwMasterLB_CHARGESRATE: TcxGridDBBandedColumn;
    gvwMasterLB_DAY: TcxGridDBBandedColumn;
    gvwMasterLB_TIMEMODE: TcxGridDBBandedColumn;
    gvwMasterARO: TcxGridDBBandedColumn;
    gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSET2SIDE: TcxGridDBBandedColumn;
    gvwMasterLINK2SIDEID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsLendBorrowLBID: TLargeintField;
    cdsLendBorrowLBNO: TStringField;
    cdsLendBorrowENTRYDATE: TDateField;
    cdsLendBorrowLBDATE: TDateField;
    cdsLendBorrowDUEDATE: TDateField;
    cdsLendBorrowSTOCKID: TLargeintField;
    cdsLendBorrowSTOCKCODE: TStringField;
    cdsLendBorrowACCID: TLargeintField;
    cdsLendBorrowACCNO: TStringField;
    cdsLendBorrowACCNAME: TStringField;
    cdsLendBorrowCP_ACCID: TLargeintField;
    cdsLendBorrowCP_ACCNO: TStringField;
    cdsLendBorrowCP_ACCNAME: TStringField;
    cdsLendBorrowLBTYPE: TStringField;
    cdsLendBorrowLB_QTY: TFloatField;
    cdsLendBorrowLB_PRICE: TFloatField;
    cdsLendBorrowLB_CHARGESRATE: TFloatField;
    cdsLendBorrowLB_DAY: TIntegerField;
    cdsLendBorrowLB_TIMEMODE: TStringField;
    cdsLendBorrowARO: TStringField;
    cdsLendBorrowCHARGE_PAYDATE: TDateField;
    cdsLendBorrowPOSTED: TStringField;
    cdsLendBorrowPAID: TStringField;
    cdsLendBorrowCASH_VOUCHERID: TLargeintField;
    cdsLendBorrowSET2SIDE: TStringField;
    cdsLendBorrowLINK2SIDEID: TLargeintField;
    cdsLendBorrowMODDA: TDateTimeField;
    cdsLendBorrowMODUI: TStringField;
    cdsLendBorrowAPPDA: TDateTimeField;
    cdsLendBorrowAPPUI: TStringField;
    cdsLendBorrowUNDER4Y: TIntegerField;
    cdsLendBorrowUNDER4YDA: TDateTimeField;
    cdsLendBorrowNOTES4Y: TStringField;
    cdsLendBorrowISDEL: TIntegerField;
    cdsLendBorrowID: TLargeintField;
    cdsLendBorrowOVERDUEDATE: TDateField;
    cdsLendBorrowOVERDAY: TIntegerField;
    cdsLendBorrowListOVERDUEDATE: TDateField;
    cdsLendBorrowListOVERDAY: TIntegerField;
    cdsLendBorrowACCCODETEMP: TStringField;
    cdsLendBorrowACCNAMETMP: TStringField;
    cdsLendBorrowCPACCCODETMP: TStringField;
    cdsLendBorrowCPACCNAMETMP: TStringField;
    cdsLendBorrowSTOCKCODETMP: TStringField;
    cdsLendBorrowSTOCKNAMETMP: TStringField;
    actLBProcess: TNAction;
    actLBSettle: TNAction;
    N5: TMenuItem;
    LendBorrowProcess1: TMenuItem;
    LendBorrowSettle1: TMenuItem;
    cdsLendBorrowPROCESSED: TStringField;
    cdsLendBorrowLB_FEEAMT: TFloatField;
    cdsLendBorrowJRNID: TLargeintField;
    cdsLendBorrowRECALL: TStringField;
    cdsLendBorrowRECALL_DATE: TDateField;
    cdsLendBorrowSETTLED: TStringField;
    actReverse: TNAction;
    actChangeDueDate: TNAction;
    actRecall: TNAction;
    gvwMasterOVERDUEDATE: TcxGridDBBandedColumn;
    gvwMasterOVERDAY: TcxGridDBBandedColumn;
    cdsLendBorrowListPROCESSED: TStringField;
    cdsLendBorrowListLB_FEEAMT: TFloatField;
    cdsLendBorrowListJRNID: TLargeintField;
    cdsLendBorrowListRECALL: TStringField;
    cdsLendBorrowListRECALL_DATE: TDateField;
    cdsLendBorrowListSETTLED: TStringField;
    Reverse1: TMenuItem;
    ChangeDueDate1: TMenuItem;
    Recall1: TMenuItem;
    cdsLendBorrowCOL_AMT: TFloatField;
    gvwMasterPROCESSED: TcxGridDBBandedColumn;
    cdsLendBorrowListSETTLED_RECALL: TStringField;
    gvwMasterRECALL: TcxGridDBBandedColumn;
    gvwMasterSETTLED_RECALL: TcxGridDBBandedColumn;
    gvwMasterSETTLED: TcxGridDBBandedColumn;
    gvwMasterRECALL_DATE: TcxGridDBBandedColumn;
    gvwMasterLB_FEEAMT: TcxGridDBBandedColumn;
    actLendBorrowFeeHis: TNAction;
    ViewFeeHistory1: TMenuItem;
    cdsLendBorrowSTOCKTRANSID: TLargeintField;
    cdsLendBorrowLEDGERTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsLendBorrowListSTOCKTRANSID: TLargeintField;
    cdsLendBorrowListLEDGERTRANSID: TLargeintField;
    cdsLendBorrowListREVERSED: TStringField;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsLendBorrowNewRecord(DataSet: TDataSet);
    procedure actLBProcessExecute(Sender: TObject);
    procedure actLBSettleExecute(Sender: TObject);
    procedure actLBSettleUpdate(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actChangeDueDateExecute(Sender: TObject);
    procedure actChangeDueDateUpdate(Sender: TObject);
    procedure actRecallExecute(Sender: TObject);
    procedure actRecallUpdate(Sender: TObject);
    procedure actLBProcessUpdate(Sender: TObject);
    procedure actLendBorrowFeeHisExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLendBorrowList: TfrmLendBorrowList;

implementation

{$R *.dfm}

uses FormLendBorrow, DataGlobal, DataLookup, FormRecallDate,
  FormLendBorrowFeeHis, FormViewTransaction;

procedure TfrmLendBorrowList.actLBProcessExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := dmGlobal.RemoteServer.LBProcess(cdsLendBorrowListLBID.AsLargeInt);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
//  sMessage := dmGlobal.RemoteServer.GenerateOTCNonExchange(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterLBID.Index], gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterLBTYPE.Index]);
//  MessageDlg(sMessage, mtInformation, [mbOk], 0);

  cdsLendBorrowList.Refresh;
end;

procedure TfrmLendBorrowList.actLBProcessUpdate(Sender: TObject);
begin
  inherited;
  // Posting: hanya untuk kontrak yang belum diposting, belum settled, dan belum direverse
  actLBProcess.Enabled := (not cdsLendBorrowList.IsEmpty) and
    (cdsLendBorrowListPROCESSED.AsString <> '1') and
    (cdsLendBorrowListSETTLED.AsString <> '1') and
    (cdsLendBorrowListREVERSED.AsString <> '1');
end;

procedure TfrmLendBorrowList.actLBSettleExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := dmGlobal.RemoteServer.LBSettle(cdsLendBorrowListLBID.AsLargeInt);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);

  cdsLendBorrowList.Refresh;
end;

procedure TfrmLendBorrowList.actLBSettleUpdate(Sender: TObject);
begin
  inherited;
  if cdsLendBorrowListRECALL.AsString = '1' then actLBSettle.Enabled := (cdsLendBorrowListRECALL_DATE.AsDateTime = dmGlobal.RemoteServer.GetTransDate) else
  if (not cdsLendBorrowListOVERDAY.IsNull) and (cdsLendBorrowListOVERDAY.AsInteger > 0) then actLBSettle.Enabled := (cdsLendBorrowListOVERDUEDATE.AsDateTime = dmGlobal.RemoteServer.GetTransDate) else
  actLBSettle.Enabled := ((cdsLendBorrowListPROCESSED.AsString = '1') and (cdsLendBorrowListSETTLED.AsString <> '1'));
end;

procedure TfrmLendBorrowList.actLendBorrowFeeHisExecute(Sender: TObject);
var
  CWID: Int64;
  sKey, sMsg: string;
begin
  inherited;
  sKey := inttostr(cdsLendBorrowListLBID.AsInteger);
  dmGlobal.ShowEditorForm(TfrmLendBorrowFeeHis, sKey, pkRead);
end;

procedure TfrmLendBorrowList.actReverseExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  if MessageDlg('Reverse Lending/Borrowing No. ' + cdsLendBorrowListLBNO.AsString + ' ?',
    mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  // server: main.nsp_LB_Process_Reversed
  sMessage := dmGlobal.RemoteServer.LBReverse(cdsLendBorrowListLBID.AsLargeInt);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);

  cdsLendBorrowList.Refresh;
end;

procedure TfrmLendBorrowList.actReverseUpdate(Sender: TObject);
begin
  inherited;
  // Reverse: hanya untuk kontrak yang sudah diposting dan belum settled/recall/reversed
  actReverse.Enabled := (not cdsLendBorrowList.IsEmpty) and
    (cdsLendBorrowListPROCESSED.AsString = '1') and
    (cdsLendBorrowListSETTLED.AsString <> '1') and
    (cdsLendBorrowListRECALL.AsString <> '1') and
    (cdsLendBorrowListSETTLED_RECALL.AsString <> '1') and
    (cdsLendBorrowListREVERSED.AsString <> '1');
end;

procedure TfrmLendBorrowList.actChangeDueDateExecute(Sender: TObject);
var
  oForm: TfrmRecallDate;
  dtNewDue, dtDefault: TDateTime;
  sMessage: string;
begin
  inherited;
  // Default tanggal baru = 2 hari setelah due date saat ini (tanggal valid terdekat).

  dtDefault := Trunc(cdsLendBorrowListDUEDATE.AsDateTime);
  if dtDefault <= 0 then
    dtDefault := Trunc(dmGlobal.RemoteServer.GetTransDate);
  dtDefault := dtDefault + 2;

  oForm := TfrmRecallDate.Create(nil);
  try
    oForm.Caption := 'Change Due Date';
    oForm.SetDateLabel('New Due Date');
    oForm.dtRecall.Properties.MinDate := Trunc(cdsLendBorrowListLBDATE.AsDateTime) + 1;
    oForm.dtRecall.EditValue := dtDefault;
    if oForm.ShowModal <> mrOk then
      Exit;
    dtNewDue := Trunc(oForm.dtRecall.Date);
  finally
    FreeAndNil(oForm);
  end;

  if dtNewDue <= cdsLendBorrowListLBDATE.AsDateTime then
  begin
    MessageDlg('New due date must be greater than the contract date!', mtWarning, [mbOk], 0);
    Exit;
  end;
  if dtNewDue = cdsLendBorrowListDUEDATE.AsDateTime then
  begin
    MessageDlg('New due date is the same as the current due date!', mtWarning, [mbOk], 0);
    Exit;
  end;

  // server: main.nsp_LB_SettleChangeDueDateforToDay
  // (reverse kontrak lama, buat kontrak baru dengan due date baru, lalu posting)
  sMessage := dmGlobal.RemoteServer.LBChangeDueDate(cdsLendBorrowListLBID.AsLargeInt, dtNewDue);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);

  cdsLendBorrowList.Refresh;
end;

procedure TfrmLendBorrowList.actChangeDueDateUpdate(Sender: TObject);
begin
  inherited;
  // Change Due Date: kontrak sudah diposting, belum paid/settled/recall/reversed
  actChangeDueDate.Enabled := (not cdsLendBorrowList.IsEmpty) and
    (cdsLendBorrowListPROCESSED.AsString = '1') and
    (cdsLendBorrowListPAID.AsString <> '1') and
    (cdsLendBorrowListSETTLED.AsString <> '1') and
    (cdsLendBorrowListRECALL.AsString <> '1') and
    (cdsLendBorrowListREVERSED.AsString <> '1');
end;

procedure TfrmLendBorrowList.actRecallExecute(Sender: TObject);
var
  oForm: TForm;
  sMessage: string;
begin
  inherited;
//  oForm := TfrmRecallDate.Create(nil);
//  TfrmRecallDate(oForm).dtRecall.Date := dmGlobal.RemoteServer.GetTransDate;
//  if oForm.ShowModal = mrOk then
//  begin
//    cdsLendBorrowList.Edit;
//    cdsLendBorrowListRECALL_DATE.AsDateTime := TfrmRecallDate(oForm).dtRecall.Date;
//    cdsLendBorrowListRECALL.AsString        := '1';
//    cdsLendBorrowList.Post;
//    cdsLendBorrowList.ApplyUpdates(-1);
//  end;
//  FreeAndNil(oForm);

//  sMessage := dmGlobal.RemoteServer.GenerateOTCNonExchange(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterLBID.Index], gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterLBTYPE.Index]);
//  MessageDlg(sMessage, mtInformation, [mbOk], 0);
  sMessage := dmGlobal.RemoteServer.LBSettle(cdsLendBorrowListLBID.AsLargeInt);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);

  cdsLendBorrowList.Refresh;
end;

procedure TfrmLendBorrowList.actRecallUpdate(Sender: TObject);
begin
  inherited;
  actRecall.Enabled := cdsLendBorrowListPROCESSED.AsString = '1';
end;

procedure TfrmLendBorrowList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsLendBorrowListLBDATE.AsDateTime;
    iLedgerTransID := cdsLendBorrowListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := cdsLendBorrowListSTOCKTRANSID.AsLargeInt;
    iFundTransID   := -1;

    oForm := TfrmViewTransaction.Create(nil);

    TfrmViewTransaction(oForm).conDate       := dtConDate;
    TfrmViewTransaction(oForm).ledgerTransID := iLedgerTransID;
    TfrmViewTransaction(oForm).stockTransID  := iStockTransID;
    TfrmViewTransaction(oForm).fundTransID   := iFundTransID;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmLendBorrowList.cdsLendBorrowNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsLendBorrowLBID.AsLargeInt      := dmGlobal.RemoteServer.GetSeq('TBL_LBCONTRACT');
  cdsLendBorrowENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsLendBorrowLBNO.AsString        := dmGlobal.RemoteServer.GetVoucherNo(dmGlobal.RemoteServer.GetTransDate, 'LB', 'TBL_LB_CONTRACT');
  cdsLendBorrowLBDATE.AsDateTime    := dmGlobal.RemoteServer.GetTransDate;
  cdsLendBorrowLBTYPE.AsString      := 'B';
end;

procedure TfrmLendBorrowList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmLendBorrow;
end;

procedure TfrmLendBorrowList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsLendBorrowList.Close;
  cdsLendBorrowList.Open;

  dmGlobal.IntDataLookup.cdsLuAccount.Close;
  dmGlobal.IntDataLookup.cdsLuAccount.Open;

  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Close;
  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Open;
end;

Initialization
  RegisterClass(TfrmLendBorrowList);

end.
