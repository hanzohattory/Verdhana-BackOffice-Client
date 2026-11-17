unit FormTenderOfferList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  System.ImageList, cxImageComboBox;

type
  TfrmTenderOfferList = class(TfrmBrowseData)
    cdsTenderOfferList: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTODate: TcxDateEdit;
    TODate: TdxLayoutItem;
    cdsTenderOffer: TNClientDataset;
    cdsTenderOfferTrade: TNClientDataset;
    actTOTrade: TNAction;
    N5: TMenuItem;
    enderOfferTrade1: TMenuItem;
    actCloseTenderOffer: TNAction;
    CloseTenderOffer1: TMenuItem;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsTenderOfferTOID: TLargeintField;
    cdsTenderOfferTOCODE: TStringField;
    cdsTenderOfferTODATE: TDateField;
    cdsTenderOfferQUO_STARTDATE: TDateField;
    cdsTenderOfferQUO_ENDDATE: TDateField;
    cdsTenderOfferPAYMENTDATE: TDateField;
    cdsTenderOfferKSEIACCOUNT: TStringField;
    cdsTenderOfferSTOCKID: TLargeintField;
    cdsTenderOfferSTOCKCODE: TStringField;
    cdsTenderOfferEXT_QUO_STDATE: TDateField;
    cdsTenderOfferEXT_QUO_ENDATE: TDateField;
    cdsTenderOfferEXT_PAYMENTDATE: TDateField;
    cdsTenderOfferQUOTATION_PRICE: TFloatField;
    cdsTenderOfferCOM_CALCMODE: TStringField;
    cdsTenderOfferCOMISSION_PERCENT: TFloatField;
    cdsTenderOfferVAT_PERCENT: TFloatField;
    cdsTenderOfferLEVY_PERCENT: TFloatField;
    cdsTenderOfferWHT_PERCENT: TFloatField;
    cdsTenderOfferSALESTAX_PERCENT: TFloatField;
    cdsTenderOfferMARKETCODE: TStringField;
    cdsTenderOfferQUO_TENDERQTY: TFloatField;
    cdsTenderOfferPAID_STAT: TStringField;
    cdsTenderOfferEXT_PAID_STAT: TStringField;
    cdsTenderOfferSTOCKTRANSID: TLargeintField;
    cdsTenderOfferSTOCKTRANSID_REVERSED: TLargeintField;
    cdsTenderOfferLEDGERTRANSID: TLargeintField;
    cdsTenderOfferLEDGERTRANSID_REVERSED: TLargeintField;
    cdsTenderOfferCOID: TLargeintField;
    cdsTenderOfferSOID: TLargeintField;
    cdsTenderOfferSTAT: TStringField;
    cdsTenderOfferCLOSED_DATE: TDateTimeField;
    cdsTenderOfferCLOSED_SYSDATE: TDateTimeField;
    cdsTenderOfferCLOSED_UI: TStringField;
    cdsTenderOfferPAID: TStringField;
    cdsTenderOfferPAID_DATE: TDateTimeField;
    cdsTenderOfferPAID_SYSDATE: TDateTimeField;
    cdsTenderOfferPAID_UI: TStringField;
    cdsTenderOfferSETTLED: TStringField;
    cdsTenderOfferSETTLED_DATE: TDateTimeField;
    cdsTenderOfferSETTLED_SYSDATE: TDateTimeField;
    cdsTenderOfferSETTLED_UI: TStringField;
    cdsTenderOfferREVERSED: TStringField;
    cdsTenderOfferREVERSED_DATE: TDateTimeField;
    cdsTenderOfferREVERSED_SYSDATE: TDateTimeField;
    cdsTenderOfferREVERSED_UI: TStringField;
    cdsTenderOfferREVERSED_POST: TStringField;
    cdsTenderOfferREVERSED_POST_DATE: TDateTimeField;
    cdsTenderOfferREVERSED_POST_UI: TStringField;
    cdsTenderOfferMODDA: TDateTimeField;
    cdsTenderOfferMODUI: TStringField;
    cdsTenderOfferAPPDA: TDateTimeField;
    cdsTenderOfferAPPUI: TStringField;
    cdsTenderOfferUNDER4Y: TIntegerField;
    cdsTenderOfferUNDER4YDA: TDateTimeField;
    cdsTenderOfferNOTES4Y: TStringField;
    cdsTenderOfferISDEL: TIntegerField;
    cdsTenderOfferID: TLargeintField;
    cdsTenderOfferTradeTOID: TLargeintField;
    cdsTenderOfferTradeTOTRID: TLargeintField;
    cdsTenderOfferTradeTOCONNO: TStringField;
    cdsTenderOfferTradeTRANSDATE: TDateField;
    cdsTenderOfferTradeIS_EXTEND: TStringField;
    cdsTenderOfferTradeACCID: TLargeintField;
    cdsTenderOfferTradeACCNO: TStringField;
    cdsTenderOfferTradeQTY: TFloatField;
    cdsTenderOfferTradeVALUE: TFloatField;
    cdsTenderOfferTradeCOM_CALCMODE: TStringField;
    cdsTenderOfferTradeCOMM_AMT: TFloatField;
    cdsTenderOfferTradeVATAMT: TFloatField;
    cdsTenderOfferTradeLEVY_AMT: TFloatField;
    cdsTenderOfferTradeSALESTAX_AMT: TFloatField;
    cdsTenderOfferTradeWHT_AMT: TFloatField;
    cdsTenderOfferTradeNETAMOUNT: TFloatField;
    cdsTenderOfferTradeSTAT: TStringField;
    cdsTenderOfferTradeCLOSED_DATE: TDateTimeField;
    cdsTenderOfferTradeCLOSED_SYSDATE: TDateTimeField;
    cdsTenderOfferTradeCLOSED_UI: TStringField;
    cdsTenderOfferTradeREVERSED_DATE: TDateTimeField;
    cdsTenderOfferTradeREVERSED_SYSDATE: TDateTimeField;
    cdsTenderOfferTradeREVERSED_UI: TStringField;
    cdsTenderOfferTradeCANCELED_DATE: TDateTimeField;
    cdsTenderOfferTradeCANCELED_SYSDATE: TDateTimeField;
    cdsTenderOfferTradeCANCELED_UI: TStringField;
    cdsTenderOfferTradeRECV_STAT: TStringField;
    cdsTenderOfferTradeRECV_DATE: TDateField;
    cdsTenderOfferTradePAID_STAT: TStringField;
    cdsTenderOfferTradePAID_SYSDATE: TDateTimeField;
    cdsTenderOfferTradePAID_DATE: TDateField;
    cdsTenderOfferTradePAID_UI: TStringField;
    cdsTenderOfferTradeJRNID: TLargeintField;
    cdsTenderOfferTradeCOID: TLargeintField;
    cdsTenderOfferTradeSOID: TLargeintField;
    cdsTenderOfferTradeMODDA: TDateTimeField;
    cdsTenderOfferTradeMODUI: TStringField;
    cdsTenderOfferTradeAPPDA: TDateTimeField;
    cdsTenderOfferTradeAPPUI: TStringField;
    cdsTenderOfferTradeUNDER4Y: TIntegerField;
    cdsTenderOfferTradeUNDER4YDA: TDateTimeField;
    cdsTenderOfferTradeNOTES4Y: TStringField;
    cdsTenderOfferTradeISDEL: TIntegerField;
    cdsTenderOfferTradeID: TLargeintField;
    cdsTenderOfferListTOID: TLargeintField;
    cdsTenderOfferListTOCODE: TStringField;
    cdsTenderOfferListTODATE: TDateField;
    cdsTenderOfferListQUO_STARTDATE: TDateField;
    cdsTenderOfferListQUO_ENDDATE: TDateField;
    cdsTenderOfferListPAYMENTDATE: TDateField;
    cdsTenderOfferListKSEIACCOUNT: TStringField;
    cdsTenderOfferListSTOCKID: TLargeintField;
    cdsTenderOfferListSTOCKCODE: TStringField;
    cdsTenderOfferListEXT_QUO_STDATE: TDateField;
    cdsTenderOfferListEXT_QUO_ENDATE: TDateField;
    cdsTenderOfferListEXT_PAYMENTDATE: TDateField;
    cdsTenderOfferListQUOTATION_PRICE: TFloatField;
    cdsTenderOfferListCOM_CALCMODE: TStringField;
    cdsTenderOfferListCOMISSION_PERCENT: TFloatField;
    cdsTenderOfferListVAT_PERCENT: TFloatField;
    cdsTenderOfferListLEVY_PERCENT: TFloatField;
    cdsTenderOfferListWHT_PERCENT: TFloatField;
    cdsTenderOfferListSALESTAX_PERCENT: TFloatField;
    cdsTenderOfferListMARKETCODE: TStringField;
    cdsTenderOfferListQUO_TENDERQTY: TFloatField;
    cdsTenderOfferListPAID_STAT: TStringField;
    cdsTenderOfferListEXT_PAID_STAT: TStringField;
    cdsTenderOfferListSTOCKTRANSID: TLargeintField;
    cdsTenderOfferListSTOCKTRANSID_REVERSED: TLargeintField;
    cdsTenderOfferListLEDGERTRANSID: TLargeintField;
    cdsTenderOfferListLEDGERTRANSID_REVERSED: TLargeintField;
    cdsTenderOfferListCOID: TLargeintField;
    cdsTenderOfferListSOID: TLargeintField;
    cdsTenderOfferListSTAT: TStringField;
    cdsTenderOfferListCLOSED_DATE: TDateTimeField;
    cdsTenderOfferListCLOSED_SYSDATE: TDateTimeField;
    cdsTenderOfferListCLOSED_UI: TStringField;
    cdsTenderOfferListPAID: TStringField;
    cdsTenderOfferListPAID_DATE: TDateTimeField;
    cdsTenderOfferListPAID_SYSDATE: TDateTimeField;
    cdsTenderOfferListPAID_UI: TStringField;
    cdsTenderOfferListSETTLED: TStringField;
    cdsTenderOfferListSETTLED_DATE: TDateTimeField;
    cdsTenderOfferListSETTLED_SYSDATE: TDateTimeField;
    cdsTenderOfferListSETTLED_UI: TStringField;
    cdsTenderOfferListREVERSED: TStringField;
    cdsTenderOfferListREVERSED_DATE: TDateTimeField;
    cdsTenderOfferListREVERSED_SYSDATE: TDateTimeField;
    cdsTenderOfferListREVERSED_UI: TStringField;
    cdsTenderOfferListREVERSED_POST: TStringField;
    cdsTenderOfferListREVERSED_POST_DATE: TDateTimeField;
    cdsTenderOfferListREVERSED_POST_UI: TStringField;
    cdsTenderOfferListMODDA: TDateTimeField;
    cdsTenderOfferListMODUI: TStringField;
    cdsTenderOfferListAPPDA: TDateTimeField;
    cdsTenderOfferListAPPUI: TStringField;
    cdsTenderOfferListUNDER4Y: TIntegerField;
    cdsTenderOfferListUNDER4YDA: TDateTimeField;
    cdsTenderOfferListNOTES4Y: TStringField;
    cdsTenderOfferListISDEL: TIntegerField;
    cdsTenderOfferListID: TLargeintField;
    gvwMasterTOID: TcxGridDBBandedColumn;
    gvwMasterTOCODE: TcxGridDBBandedColumn;
    gvwMasterTODATE: TcxGridDBBandedColumn;
    gvwMasterQUO_STARTDATE: TcxGridDBBandedColumn;
    gvwMasterQUO_ENDDATE: TcxGridDBBandedColumn;
    gvwMasterPAYMENTDATE: TcxGridDBBandedColumn;
    gvwMasterKSEIACCOUNT: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterEXT_QUO_STDATE: TcxGridDBBandedColumn;
    gvwMasterEXT_QUO_ENDATE: TcxGridDBBandedColumn;
    gvwMasterEXT_PAYMENTDATE: TcxGridDBBandedColumn;
    gvwMasterQUOTATION_PRICE: TcxGridDBBandedColumn;
    gvwMasterCOM_CALCMODE: TcxGridDBBandedColumn;
    gvwMasterCOMISSION_PERCENT: TcxGridDBBandedColumn;
    gvwMasterVAT_PERCENT: TcxGridDBBandedColumn;
    gvwMasterLEVY_PERCENT: TcxGridDBBandedColumn;
    gvwMasterWHT_PERCENT: TcxGridDBBandedColumn;
    gvwMasterSALESTAX_PERCENT: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterQUO_TENDERQTY: TcxGridDBBandedColumn;
    gvwMasterPAID_STAT: TcxGridDBBandedColumn;
    gvwMasterEXT_PAID_STAT: TcxGridDBBandedColumn;
    gvwMasterSTOCKTRANSID: TcxGridDBBandedColumn;
    gvwMasterSTOCKTRANSID_REVERSED: TcxGridDBBandedColumn;
    gvwMasterLEDGERTRANSID: TcxGridDBBandedColumn;
    gvwMasterLEDGERTRANSID_REVERSED: TcxGridDBBandedColumn;
    gvwMasterCOID: TcxGridDBBandedColumn;
    gvwMasterSOID: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterCLOSED_DATE: TcxGridDBBandedColumn;
    gvwMasterCLOSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCLOSED_UI: TcxGridDBBandedColumn;
    gvwMasterPAID: TcxGridDBBandedColumn;
    gvwMasterPAID_DATE: TcxGridDBBandedColumn;
    gvwMasterPAID_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterPAID_UI: TcxGridDBBandedColumn;
    gvwMasterSETTLED: TcxGridDBBandedColumn;
    gvwMasterSETTLED_DATE: TcxGridDBBandedColumn;
    gvwMasterSETTLED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED_POST: TcxGridDBBandedColumn;
    gvwMasterREVERSED_POST_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_POST_UI: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actTenderOfferReverse: TNAction;
    enderOfferReverse1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuRefreshClick(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsTenderOfferNewRecord(DataSet: TDataSet);
    procedure dtTODatePropertiesCloseUp(Sender: TObject);
    procedure actTOTradeExecute(Sender: TObject);
    procedure actCloseTenderOfferExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
    procedure cdsTenderOfferBeforePost(DataSet: TDataSet);
    procedure actTenderOfferReverseExecute(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDateTime;

    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmTenderOfferList: TfrmTenderOfferList;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactEntitlement, FormTenderOffer,
  FormTenderOfferTrade, FormViewTransaction;

{ TfrmTenderOfferList }

procedure TfrmTenderOfferList.actCloseTenderOfferExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := dmGlobal.RemoteServer.TenderOfferClose(cdsTenderOfferListTOID.AsLargeInt);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
end;

procedure TfrmTenderOfferList.actTenderOfferReverseExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := dmGlobal.RemoteServer.TenderOfferReverse(cdsTenderOfferListTOID.AsLargeInt);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
end;

procedure TfrmTenderOfferList.actTOTradeExecute(Sender: TObject);
var
  oForm: TfrmTenderOfferTrade;
begin
  inherited;
  oForm := TfrmTenderOfferTrade.Create(nil);

  cdsTenderOfferTrade.Close;
  cdsTenderOfferTrade.Params[0].AsInteger := cdsTenderOfferListTOID.AsInteger;
  cdsTenderOfferTrade.Open;

  try
    oForm.FormBrowse := Self;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmTenderOfferList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsTenderOfferListTODATE.AsDateTime;
    iLedgerTransID := cdsTenderOfferListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := cdsTenderOfferListSTOCKTRANSID.AsLargeInt;
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

procedure TfrmTenderOfferList.cdsTenderOfferBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsTenderOfferTOID.AsLargeInt = -1 then
  begin
    cdsTenderOfferTOID.AsLargeInt   := dmGlobal.RemoteServer.GetSeq('main.B_TENDER_OFFER');
    cdsTenderOfferTOCODE.AsString   := dmGlobal.RemoteServer.GetVoucherNo(FTransDate, 'TENDER_OFFER', 'TBL_TENDER_OFFER');
  end;
end;

procedure TfrmTenderOfferList.cdsTenderOfferNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsTenderOfferTOID.AsLargeInt   := -1;
  cdsTenderOfferTOCODE.AsString   := '<Auto>';
  cdsTenderOfferTODATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmTenderOfferList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmTenderOffer;
end;

procedure TfrmTenderOfferList.dtTODatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmTenderOfferList.FormCreate(Sender: TObject);
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;
  end;
end;

procedure TfrmTenderOfferList.FormShow(Sender: TObject);
begin
  inherited;
  dtTODate.Date := FTransDate;
  RefreshData;
end;

procedure TfrmTenderOfferList.mnuRefreshClick(Sender: TObject);
begin
//  inherited;
  RefreshData;
end;

procedure TfrmTenderOfferList.RefreshData;
begin
  cdsTenderOfferList.Close;
  cdsTenderOfferList.Params[0].AsDateTime := dtTODate.Date;
  cdsTenderOfferList.Open;
end;

Initialization
  RegisterClass(TfrmTenderOfferList);


end.
