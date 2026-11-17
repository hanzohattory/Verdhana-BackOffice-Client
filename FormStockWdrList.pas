unit FormStockWdrList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, NReportClient,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, DBXJSON, DBXJSONCommon, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, System.DateUtils, System.Actions, System.ImageList, System.JSON,
  ComObj, dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges, cxBarEditItem, cxCheckBox,System.Math,
  cxSpinEdit, cxLabel, dxScrollbarAnnotations, cxCheckGroup;

type
  TfrmStockWdrList = class(TfrmBrowseData)
    cdsStockWdrList: TNClientDataset;
    cdsStockWdr: TNClientDataset;
    cdsStockWdrACCNAME: TStringField;
    actViewList: TNAction;
    actPosting: TNAction;
    actPostingAll: TNAction;
    gvwMasterSWCODE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterCBCODE: TcxGridDBBandedColumn;
    gvwMasterSWPRICE: TcxGridDBBandedColumn;
    gvwMasterSWQTY: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSWID: TcxGridDBBandedColumn;
    gvwMasterSWDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterKSEIACC: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterSCRIPLESS: TcxGridDBBandedColumn;
    gvwMasterPLEDGED: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterPURPOSE: TcxGridDBBandedColumn;
    gvwMasterTRADEREFF: TcxGridDBBandedColumn;
    gvwMasterSETTLEREASON: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsStockWdrINVTYPE: TStringField;
    cdsStockWdrPRDTYPE: TStringField;
    cdsStockWdrKSEIACC_TMP: TStringField;
    cdsStockWdrACTLED_SEQID_TMP: TIntegerField;
    cdsStockWdrACTLED_SEQID: TIntegerField;
    cdsStockWdrAcq: TNClientDataset;
    cdsStockWdrAcqSWID: TLargeintField;
    cdsStockWdrAcqACQDATE: TDateField;
    cdsStockWdrAcqACQPRICE: TFloatField;
    cdsStockWdrAcqACQVALUE: TFloatField;
    cdsStockWdrAcqMODDA: TDateTimeField;
    cdsStockWdrAcqMODUI: TStringField;
    cdsStockWdrAcqAPPDA: TDateTimeField;
    cdsStockWdrAcqAPPUI: TStringField;
    cdsStockWdrAcqUNDER4Y: TIntegerField;
    cdsStockWdrAcqUNDER4YDA: TDateTimeField;
    cdsStockWdrAcqNOTES4Y: TStringField;
    cdsStockWdrAcqISDEL: TIntegerField;
    cdsStockWdrAcqID: TLargeintField;
    cdsStockWdrINSTRUMEN_NAME_TMP: TStringField;
    cdsStockWdrSWID: TLargeintField;
    cdsStockWdrSWCODE: TStringField;
    cdsStockWdrSWDATE: TDateField;
    cdsStockWdrACCID: TLargeintField;
    cdsStockWdrACCNO: TStringField;
    cdsStockWdrINSTRUMENT_ID: TLargeintField;
    cdsStockWdrINSTRUMENT_CODE: TStringField;
    cdsStockWdrCBCODE: TStringField;
    cdsStockWdrKSEIACC: TStringField;
    cdsStockWdrACCTYPE: TStringField;
    cdsStockWdrSCRIPLESS: TStringField;
    cdsStockWdrPLEDGED: TStringField;
    cdsStockWdrSWPRICE: TFloatField;
    cdsStockWdrSWQTY: TLargeintField;
    cdsStockWdrREMARK: TStringField;
    cdsStockWdrPURPOSE: TStringField;
    cdsStockWdrTRADEREFF: TStringField;
    cdsStockWdrSETTLEREASON: TStringField;
    cdsStockWdrPOSTED: TStringField;
    cdsStockWdrMODDA: TDateTimeField;
    cdsStockWdrMODUI: TStringField;
    cdsStockWdrAPPDA: TDateTimeField;
    cdsStockWdrAPPUI: TStringField;
    cdsStockWdrUNDER4Y: TIntegerField;
    cdsStockWdrUNDER4YDA: TDateTimeField;
    cdsStockWdrNOTES4Y: TStringField;
    cdsStockWdrISDEL: TIntegerField;
    cdsStockWdrID: TLargeintField;
    cdsStockWdrqryStockWdrACQ: TDataSetField;
    cdsStockWdrListSWID: TLargeintField;
    cdsStockWdrListSWCODE: TStringField;
    cdsStockWdrListSWDATE: TDateField;
    cdsStockWdrListACCID: TLargeintField;
    cdsStockWdrListACCNO: TStringField;
    cdsStockWdrListINSTRUMENT_ID: TLargeintField;
    cdsStockWdrListINSTRUMENT_CODE: TStringField;
    cdsStockWdrListCBCODE: TStringField;
    cdsStockWdrListKSEIACC: TStringField;
    cdsStockWdrListACTLED_SEQID: TIntegerField;
    cdsStockWdrListACCTYPE: TStringField;
    cdsStockWdrListSCRIPLESS: TStringField;
    cdsStockWdrListPLEDGED: TStringField;
    cdsStockWdrListSWPRICE: TFloatField;
    cdsStockWdrListSWQTY: TLargeintField;
    cdsStockWdrListREMARK: TStringField;
    cdsStockWdrListPURPOSE: TStringField;
    cdsStockWdrListTRADEREFF: TStringField;
    cdsStockWdrListSETTLEREASON: TStringField;
    cdsStockWdrListPOSTED: TStringField;
    cdsStockWdrListMODDA: TDateTimeField;
    cdsStockWdrListMODUI: TStringField;
    cdsStockWdrListAPPDA: TDateTimeField;
    cdsStockWdrListAPPUI: TStringField;
    cdsStockWdrListUNDER4Y: TIntegerField;
    cdsStockWdrListUNDER4YDA: TDateTimeField;
    cdsStockWdrListNOTES4Y: TStringField;
    cdsStockWdrListISDEL: TIntegerField;
    cdsStockWdrListID: TLargeintField;
    actGenerateOTCNonExchange: TNAction;
    N5: TMenuItem;
    cdsStockWdrListENTRYDATE: TDateField;
    cdsStockWdrSETTLEDATE: TDateField;
    cdsStockWdrACCSOPID: TLargeintField;
    cdsStockWdrENTRYDATE: TDateField;
    OpenDialog: TOpenDialog;
    actUploadFromFile: TNAction;
    UploadFromExcelFile1: TMenuItem;
    Posting1: TMenuItem;
    actStockReverse: TNAction;
    cdsStockWdrListPOSTED_DATE: TDateField;
    cdsStockWdrListPOSTED_UI: TStringField;
    cdsStockWdrListCANCEL: TStringField;
    cdsStockWdrListCANCEL_DATE: TDateField;
    cdsStockWdrListCANCEL_UI: TStringField;
    cdsStockWdrListAPPROVED: TStringField;
    cdsStockWdrListAPPROVED_DATE: TDateField;
    cdsStockWdrListAPPROVED_UI: TStringField;
    cdsStockWdrListCHGOTC: TStringField;
    cdsStockWdrPOSTED_DATE: TDateField;
    cdsStockWdrPOSTED_UI: TStringField;
    cdsStockWdrCANCEL: TStringField;
    cdsStockWdrCANCEL_DATE: TDateField;
    cdsStockWdrCANCEL_UI: TStringField;
    cdsStockWdrAPPROVED: TStringField;
    cdsStockWdrAPPROVED_DATE: TDateField;
    cdsStockWdrAPPROVED_UI: TStringField;
    cdsStockWdrCHGOTC: TStringField;
    gvwMasterACTLED_SEQID: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDTYPE: TcxGridDBBandedColumn;
    gvwMasterKSEIACC_TMP: TcxGridDBBandedColumn;
    gvwMasterACTLED_SEQID_TMP: TcxGridDBBandedColumn;
    gvwMasterSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCEL: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterAPPROVED: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_UI: TcxGridDBBandedColumn;
    gvwMasterCHGOTC: TcxGridDBBandedColumn;
    actApproved: TNAction;
    Approve2: TMenuItem;
    actReverse: TNAction;
    StockWithdrawReverse1: TMenuItem;
    actStockWithdrawCancel: TNAction;
    StockWithdrawCancel1: TMenuItem;
    N6: TMenuItem;
    cdsStockWdrListMARKETCODE: TStringField;
    MultipleWithdraw1: TMenuItem;
    actByCustomer: TNAction;
    actByStock: TNAction;
    ByCustomer1: TMenuItem;
    ByCustomer2: TMenuItem;
    cdsStockWdrSTOCK_TYPE: TStringField;
    grdMasterLevel2: TcxGridLevel;
    gvwOtcInstr: TcxGridDBBandedTableView;
    cdsOTCInstr: TNClientDataset;
    cdsOTCInstrAccountNo: TStringField;
    cdsOTCInstrAccountName: TStringField;
    cdsOTCInstrinstructionType: TStringField;
    cdsOTCInstrexternalReference: TStringField;
    cdsOTCInstrparticipantCode: TStringField;
    cdsOTCInstrparticipantAccount: TStringField;
    cdsOTCInstrparticipantAccountCash: TStringField;
    cdsOTCInstrcounterpartCode: TStringField;
    cdsOTCInstrsecurityCode: TStringField;
    cdsOTCInstrnumberOfSecurities: TFloatField;
    cdsOTCInstrtradeDate: TStringField;
    cdsOTCInstrcurrencyCode: TStringField;
    cdsOTCInstrsettlementAmount: TFloatField;
    cdsOTCInstrsettlementDate: TStringField;
    cdsOTCInstrpurpose: TStringField;
    cdsOTCInstrtradingReference: TStringField;
    cdsOTCInstrsettlementReason: TStringField;
    cdsOTCInstrdescription: TStringField;
    cdsOTCInstrsecurityCodeType: TStringField;
    dsOTCInstr: TDataSource;
    gvwOtcInstrAccountNo: TcxGridDBBandedColumn;
    gvwOtcInstrAccountName: TcxGridDBBandedColumn;
    gvwOtcInstrinstructionType: TcxGridDBBandedColumn;
    gvwOtcInstrexternalReference: TcxGridDBBandedColumn;
    gvwOtcInstrparticipantCode: TcxGridDBBandedColumn;
    gvwOtcInstrparticipantAccount: TcxGridDBBandedColumn;
    gvwOtcInstrparticipantAccountCash: TcxGridDBBandedColumn;
    gvwOtcInstrcounterpartCode: TcxGridDBBandedColumn;
    gvwOtcInstrsecurityCode: TcxGridDBBandedColumn;
    gvwOtcInstrnumberOfSecurities: TcxGridDBBandedColumn;
    gvwOtcInstrtradeDate: TcxGridDBBandedColumn;
    gvwOtcInstrcurrencyCode: TcxGridDBBandedColumn;
    gvwOtcInstrsettlementAmount: TcxGridDBBandedColumn;
    gvwOtcInstrsettlementDate: TcxGridDBBandedColumn;
    gvwOtcInstrpurpose: TcxGridDBBandedColumn;
    gvwOtcInstrtradingReference: TcxGridDBBandedColumn;
    gvwOtcInstrsettlementReason: TcxGridDBBandedColumn;
    gvwOtcInstrdescription: TcxGridDBBandedColumn;
    gvwOtcInstrsecurityCodeType: TcxGridDBBandedColumn;
    popOTCIns: TPopupMenu;
    GenerateRFOPFile1: TMenuItem;
    actGenerateDFOPFile: TNAction;
    dtTransDate: TcxBarEditItem;
    cdsAccountByAccNo: TNClientDataset;
    cdsAccountByAccNoACCID: TIntegerField;
    cdsAccountByAccNoACCCODE: TStringField;
    cdsAccountByAccNoACCNAME: TStringField;
    cdsAccountByAccNoACCBANKID: TIntegerField;
    cdsAccountByAccNoACCBANKCODE: TStringField;
    cdsStockWdrListREVERSED: TStringField;
    cdsStockWdrListREVERSED_DATE: TDateTimeField;
    cdsStockWdrListREVERSED_UI: TStringField;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    cdsUploadStock: TNClientDataset;
    cdsUploadStockSWID: TLargeintField;
    cdsUploadStockSWCODE: TStringField;
    cdsUploadStockSWDATE: TDateField;
    cdsUploadStockACCID: TLargeintField;
    cdsUploadStockACCNO: TStringField;
    cdsUploadStockINSTRUMENT_ID: TLargeintField;
    cdsUploadStockINSTRUMENT_CODE: TStringField;
    cdsUploadStockCBCODE: TStringField;
    cdsUploadStockKSEIACC: TStringField;
    cdsUploadStockACCTYPE: TStringField;
    cdsUploadStockSCRIPLESS: TStringField;
    cdsUploadStockPLEDGED: TStringField;
    cdsUploadStockSWPRICE: TFloatField;
    cdsUploadStockSWQTY: TLargeintField;
    cdsUploadStockREMARK: TStringField;
    cdsUploadStockPURPOSE: TStringField;
    cdsUploadStockTRADEREFF: TStringField;
    cdsUploadStockSETTLEREASON: TStringField;
    cdsUploadStockPOSTED: TStringField;
    cdsUploadStockMODDA: TDateTimeField;
    cdsUploadStockMODUI: TStringField;
    cdsUploadStockAPPDA: TDateTimeField;
    cdsUploadStockAPPUI: TStringField;
    cdsUploadStockUNDER4Y: TIntegerField;
    cdsUploadStockUNDER4YDA: TDateTimeField;
    cdsUploadStockNOTES4Y: TStringField;
    cdsUploadStockISDEL: TIntegerField;
    cdsUploadStockID: TLargeintField;
    cdsUploadStockqryStockWdrACQ: TDataSetField;
    cdsUploadStockACTLED_SEQID: TIntegerField;
    cdsUploadStockACTLED_SEQID_TMP: TIntegerField;
    cdsUploadStockKSEIACC_TMP: TStringField;
    cdsUploadStockPRDTYPE: TStringField;
    cdsUploadStockINVTYPE: TStringField;
    cdsUploadStockACCNAME: TStringField;
    cdsUploadStockINSTRUMEN_NAME_TMP: TStringField;
    cdsUploadStockSETTLEDATE: TDateField;
    cdsUploadStockACCSOPID: TLargeintField;
    cdsUploadStockENTRYDATE: TDateField;
    cdsUploadStockPOSTED_DATE: TDateField;
    cdsUploadStockPOSTED_UI: TStringField;
    cdsUploadStockCANCEL: TStringField;
    cdsUploadStockCANCEL_DATE: TDateField;
    cdsUploadStockCANCEL_UI: TStringField;
    cdsUploadStockAPPROVED: TStringField;
    cdsUploadStockAPPROVED_DATE: TDateField;
    cdsUploadStockAPPROVED_UI: TStringField;
    cdsUploadStockCHGOTC: TStringField;
    cdsUploadStockSTOCK_TYPE: TStringField;
    actStockWithdrawUpload: TNAction;
    cdsStockWdrUpload: TNClientDataset;
    cdsStockWdrUploadROWNO: TIntegerField;
    cdsStockWdrUploadACCNO: TStringField;
    cdsStockWdrUploadACCNAME: TStringField;
    cdsStockWdrUploadSTOCKCODE: TStringField;
    cdsStockWdrUploadPRICE: TFloatField;
    cdsStockWdrUploadQTY: TFloatField;
    cdsStockWdrUploadREMARK: TStringField;
    cdsStockWdrUploadCUSTODIAN: TStringField;
    cdsStockWdrListSETTLEDATE: TDateField;
    cdsStockWdrListACCSOPID: TLargeintField;
    cdsStockWdrListCCYCODE: TStringField;
    cdsStockWdrListINSTRUCTION: TStringField;
    cdsStockWdrListSETTLE_AMT: TFloatField;
    cdsStockWdrListSHORTNAME: TStringField;
    cdsStockWdrListACCNAME: TStringField;
    cdsStockWdrListKSEI_SID: TStringField;
    cdsStockWdrListACC_TYPE: TStringField;
    cdsStockWdrListSTAT: TStringField;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION: TcxGridDBBandedColumn;
    gvwMasterSETTLE_AMT: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterKSEI_SID: TcxGridDBBandedColumn;
    gvwMasterACC_TYPE: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsStockWdrListSTOCKTRANSID: TLargeintField;
    chStatus: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    strngfldStockWdrCANCEL_NOTES: TStringField;
    gvwMasterCANCEL_NOTES: TcxGridDBBandedColumn;
    strngfldStockWdrListCANCEL_NOTES: TStringField;
    procedure actPostingExecute(Sender: TObject);
    procedure actPostingAllExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsStockWdrACCIDChange(Sender: TField);
    procedure cdsStockWdrINSTRUMENT_IDChange(Sender: TField);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure popMasterPopup(Sender: TObject);
    procedure actGenerateOTCNonExchangeExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actUploadFromFileExecute(Sender: TObject);
    procedure actApprovedExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actStockWithdrawCancelExecute(Sender: TObject);
    procedure cmbMarketPropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsStockWdrNewRecord(DataSet: TDataSet);
    procedure actByCustomerExecute(Sender: TObject);
    procedure actByStockExecute(Sender: TObject);
    procedure actGenerateDFOPFileExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actStockWithdrawUploadExecute(Sender: TObject);
    procedure cdsStockWdrBeforePost(DataSet: TDataSet);
    procedure actViewTransactionExecute(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;
  public
    { Public declarations }
  end;

var
  frmStockWdrList: TfrmStockWdrList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormStockWdr, FormProgressBar, FormStockByCustomer,
  FormCustomerByStock, DataCBest, FormViewTransaction;

procedure TfrmStockWdrList.actApprovedExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to approve selected stock withdraw?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Withdraw ' +
            QuotedStr(cdsStockWdrListSWCODE.AsString));

  //          if not cdsStockWdr.IsEmpty then
  //          begin
  //            if not dmGlobal.RemoteServer.StockWithdrawApprove(cdsStockWdrListSWID.AsLargeInt, sMsg) then
  //            begin
  //              Inc(iReject);
  //              slMsg.Add(sMsg);
  //            end
  //            else
  //              Inc(iSuccess);
  //          end;
  //        end;
  //      Finally
  //        sMsg := IntToStr(iSuccess) +' data has successfully approved';
  //        if iReject > 0 then
  //        begin
  //          sMsg := sMsg +#13#10+ IntToStr(iSuccess) +' data has failed to approve'+#13#10+
  //            'Error messages : '+#13#10+ slMsg.Text;
  //        end;
  //
  //        FreeAndNil(oProgress);
  //        FreeAndNil(slMsg);
  //        ShowMessage(sMsg);
  //      End;
  //
  //      cdsStockWdrList.Refresh;
  //    end;
  //  end;
          if not cdsStockWdr.IsEmpty then
          begin
            bRes := dmGlobal.RemoteServer.StockWithdrawApprove(cdsStockWdrListSWID.AsLargeInt, sMsg);
            slMsg.Add(sMsg);
            if not bRes then
              Inc(iReject)
            else
              Inc(iSuccess);
          end;
        end;
        Finally
          sMsg := slMsg.Text;
          FreeAndNil(oProgress);
          FreeAndNil(slMsg);
         ShowMessage(sMsg);
      End;
      cdsStockWdrList.Refresh;
    end;
  end;
end;

procedure TfrmStockWdrList.actByCustomerExecute(Sender: TObject);
var
  oForm : TfrmStockByCustomer;
  iSeqID, iSeqNo: Int64;
  sSeqNo: string;
begin
  inherited;
  oForm := TfrmStockByCustomer.Create(nil);

  TfrmStockByCustomer(oForm).StockType := 'SW';
  if oForm.ShowModal = mrOk then
  begin
    cdsStockWdr.Close;
    cdsStockWdr.Params[0].AsInteger := -1;
    cdsStockWdr.Open;

    with TfrmStockByCustomer(oForm) do
    begin
      if not cdsDetailedStock.IsEmpty then
      begin
        cdsDetailedStock.First;
        while not cdsDetailedStock.Eof do
        begin
          iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR');
          iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR_'+ FormatDateTime('YYYYMM', FTransDate));
          sSeqNo := 'SW-'+FormatDateTime('MMYYYY', FTransDate)+'-'+FormatFloat('0000000000',iSeqNo);

          cdsStockWdr.Append;
          cdsStockWdrSWID.AsInteger           := iSeqID;
          cdsStockWdrSWCODE.AsString          := sSeqNo;
          cdsStockWdrSWDATE.AsDateTime        := cdsCustomerENTRYDATE.AsDateTime;
          cdsStockWdrSETTLEDATE.AsDateTime    := cdsCustomerSETTLEDATE.AsDateTime;
          cdsStockWdrACCID.AsInteger          := cdsCustomerACCID.AsInteger;
          cdsStockWdrACCNO.AsString           := cdsCustomerACCCODE.AsString;
          cdsStockWdrINSTRUMENT_ID.AsInteger  := cdsDetailedStockSTOCKID.AsInteger;
          cdsStockWdrINSTRUMENT_CODE.AsString := cdsDetailedStockSTOCKCODE.AsString;
          cdsStockWdrKSEIACC.AsString         := cdsCustomerKSEIACC_TMP.AsString;
          cdsStockWdrACTLED_SEQID.AsInteger   := 0;
          cdsStockWdrACCTYPE.AsString         := 'L';
          cdsStockWdrPLEDGED.AsString         := '0';
          cdsStockWdrSWPRICE.AsFloat          := 0; //cdsDetailedStockAVG_PRICE.AsFloat;
          cdsStockWdrSWQTY.AsFloat            := cdsDetailedStockQTY.AsFloat;
          cdsStockWdrPURPOSE.AsString         := 'NONEXCHG';
          cdsStockWdrSETTLEREASON.AsString    := 'OWNE';
          cdsStockWdrENTRYDATE.AsDateTime     := cdsCustomerENTRYDATE.AsDateTime;
          cdsStockWdrPOSTED.AsString          := '0';
          cdsStockWdrSCRIPLESS.AsString       := '1';
          cdsStockWdrCancel.AsString          := '0';
          cdsStockWdrCBCODE.AsString          := cdsCustomerCBCODE.AsString;
          cdsStockWdr.Post;

          cdsDetailedStock.Next;
        end;
        cdsStockWdr.ApplyUpdates(-1);

        if not cdsStockWdrList.Active then
          actRefresh.Execute
        else
          cdsStockWdrList.Refresh;
      end;
    end;
  end;

  FreeAndNil(oForm);
end;

procedure TfrmStockWdrList.actByStockExecute(Sender: TObject);
var
  oForm : TfrmCustomerByStock;
  iSeqID, iSeqNo: Int64;
  sSeqNo: string;
begin
  inherited;
  oForm := TfrmCustomerByStock.Create(nil);

  TfrmCustomerByStock(oForm).StockType := 'SW';
  if oForm.ShowModal = mrOk then
  begin
    cdsStockWdr.Close;
    cdsStockWdr.Params[0].AsInteger := -1;
    cdsStockWdr.Open;

    with TfrmCustomerByStock(oForm) do
    begin
      if not cdsCustomer.IsEmpty then
      begin
        cdsCustomer.First;
        while not cdsCustomer.Eof do
        begin
          iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR');
          iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR_'+ FormatDateTime('YYYYMM', FTransDate));
          sSeqNo := 'SW-'+FormatDateTime('MMYYYY', FTransDate)+'-'+FormatFloat('0000000000',iSeqNo);

          cdsStockWdr.Append;
          cdsStockWdrSWID.AsInteger           := iSeqID;
          cdsStockWdrSWCODE.AsString          := sSeqNo;
          cdsStockWdrSWDATE.AsDateTime        := cdsStockENTRYDATE.AsDateTime;
          cdsStockWdrSETTLEDATE.AsDateTime    := cdsStockSETTLEDATE.AsDateTime;
          cdsStockWdrACCID.AsInteger          := cdsCustomerACCID.AsInteger;
          cdsStockWdrACCNO.AsString           := cdsCustomerACCCODE.AsString;
          cdsStockWdrINSTRUMENT_ID.AsInteger  := cdsStockSTOCKID.AsInteger;
          cdsStockWdrINSTRUMENT_CODE.AsString := cdsStockSTOCKCODE.AsString;
          cdsStockWdrKSEIACC.AsString         := cdsCustomerKSEIACC_TMP.AsString;
          cdsStockWdrACTLED_SEQID.AsInteger   := 0;
          cdsStockWdrACCTYPE.AsString         := 'L';
          cdsStockWdrPLEDGED.AsString         := '0';
          cdsStockWdrSWPRICE.AsFloat          := 0; //cdsCustomerAVG_PRICE.AsFloat;
          cdsStockWdrSWQTY.AsFloat            := cdsCustomerQTY.AsFloat;
          cdsStockWdrPURPOSE.AsString         := 'NONEXCHG';
          cdsStockWdrSETTLEREASON.AsString    := 'OWNE';
          cdsStockWdrENTRYDATE.AsDateTime     := cdsStockENTRYDATE.AsDateTime;
          cdsStockWdrPOSTED.AsString          := '0';
          cdsStockWdrSCRIPLESS.AsString       := '1';
          cdsStockWdrCancel.AsString          := '0';
          cdsStockWdrCBCODE.AsString          := cdsCustomerCBCODE.AsString;
          cdsStockWdr.Post;

          cdsCustomer.Next;
        end;
        cdsStockWdr.ApplyUpdates(-1);

        if not cdsStockWdrList.Active then
          actRefresh.Execute
        else
          cdsStockWdrList.Refresh;
      end;
    end;
  end;
  FreeAndNil(oForm);
end;

procedure TfrmStockWdrList.actEditUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := (cdsStockWdrListPOSTED.AsString <> '1') and (not VarIsNull(cdsStockWdrListACCID.AsLargeInt));
  end;
end;

procedure TfrmStockWdrList.actGenerateDFOPFileExecute(Sender: TObject);
  function GetValue(ARecord: Integer; AIndex: Integer): Variant;
  begin
    Result := gvwOTCInstr.Controller.SelectedRecords[ARecord].Values[AIndex];
  end;

  function IsNull(AData: variant): string;
  begin
    if VarIsNull(AData) then
      Result := ''
    else
      Result := AData;
  end;

var
  i: Integer;
  sSettlementReason,
  sDataList, sExt,
  sFileName: string;
  oDataList: TStringList;
begin
  inherited;
  if cdsOTCInstr.IsEmpty then
  begin
    MessageError('There is no data can be generated');
    Abort;
  end;

  if SaveDlg.Execute then
    sFileName := SaveDlg.FileName;

  if sFileName = '' then
    Abort;

  sExt := ExtractFileExt(sFileName);
  if sExt <> '.otc' then
  begin
    if not MessageQuestion('This extection file name will be rename as .otc') then
      Abort;
  end;

  try
    oDataList := TStringList.Create;

    for i := 0 to gvwOTCInstr.Controller.SelectedRecordCount -1 do
    begin
      sDataList := '';

      sDataList := IsNull(GetValue(i, gvwOTCInstrexternalReference.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrinstructionType.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrparticipantCode.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrparticipantAccount.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrparticipantAccountCash.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrcounterpartCode.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsecurityCode.Index)) +'|'+
                   FloatToStr(GetValue(i, gvwOTCInstrnumberOfSecurities.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrtradeDate.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrcurrencyCode.Index)) +'|'+
                   FloatToStr(GetValue(i, gvwOTCInstrsettlementAmount.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsettlementDate.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrpurpose.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrtradingReference.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsettlementReason.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrdescription.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsecurityCodeType.Index));

      oDataList.Add(sDataList);
    end;
  finally
    if oDataList.Count > 0 then
      dmGlobal.IntDataCBest.GenerateRD(sFileName, oDataList);

    FreeAndNil(oDataList);
    MessageDlg('Generate OTC Instruction File has been generate', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmStockWdrList.actGenerateOTCNonExchangeExecute(
  Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Generate Selected Data to OTC Non Exchange ?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Withdraw ' +
            QuotedStr(cdsStockWdrListSWCODE.AsString));

          sMsg := dmGlobal.RemoteServer.GenerateOTCNonExchange(cdsStockWdrListSWID.AsString, 'W');

          sMsg := cdsStockWdrListSWCODE.AsString + ': ' + sMsg;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Process Generate OTC Stock Withdraw Done.');
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      cdsStockWdrList.Refresh;
    end;
  end;

end;

procedure TfrmStockWdrList.actPostingAllExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to posting all stock withdraw?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostAllStockWdr(DateTimeToFileDate(DateOf(dtTransDate.EditValue)));
    ShowMessage('Finished Posting All Stock Withdraw.');
  end;
end;

procedure TfrmStockWdrList.actPostingExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to posting selected stock withdraw?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Withdraw ' +
            QuotedStr(cdsStockWdrListSWCODE.AsString));

//          if not cdsStockWdr.IsEmpty then
//          begin
//            if not dmGlobal.RemoteServer.StockWithdrawPosting(cdsStockWdrListSWID.AsLargeInt, sMsg) then
//            begin
//              Inc(iReject);
//              slMsg.Add(sMsg);
//            end
//            else
//              Inc(iSuccess);
//          end;
//        end;
//      Finally
//        sMsg := IntToStr(iSuccess) +' data has successfully posted';
//        if iReject > 0 then
//        begin
//          sMsg := sMsg +#13#10+ IntToStr(iSuccess) +' data has failed to post'+#13#10+
//            'Error messages : '+#13#10+ slMsg.Text;
//        end;
//
//        FreeAndNil(oProgress);
//        FreeAndNil(slMsg);
//        ShowMessage(sMsg);
//      End;
//
//      if iSuccess > 0 then
//        cdsStockWdrList.Refresh;
//    end;
//  end;
          if not cdsStockWdr.IsEmpty then
          begin
            bRes := dmGlobal.RemoteServer.StockWithdrawPosting(cdsStockWdrListSWID.AsLargeInt, sMsg);
            slMsg.Add(sMsg);
            if not bRes then
              Inc(iReject)
            else
              Inc(iSuccess);
          end;
        end;
      Finally
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;
      if iSuccess > 0 then
        cdsStockWdrList.Refresh;
    end;
  end;
end;

procedure TfrmStockWdrList.actRefreshExecute(Sender: TObject);
var
  sTempStatus, sStatus: string;
begin
//  inherited;
  sTempStatus := chStatus.EditValue;
  sStatus     := '';

  // Status : Open
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'O';
  end;

  // Status : Posted
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'P';
  end;

  // Status : Canceled
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'C';
  end;

  // Status : Reversed
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'R';
  end;

  cdsStockWdrList.Close;
  cdsStockWdrList.Params[0].AsDate   := DateOf(dtTransDate.EditValue);
  cdsStockWdrList.Params[1].AsString := sStatus;
  cdsStockWdrList.Open;

  cdsOTCInstr.Close;
  cdsOTCInstr.Params[0].AsDate := DateOf(dtTransDate.EditValue);
  cdsOTCInstr.Open;
end;

procedure TfrmStockWdrList.actReverseExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to reverse selected stock withdraw?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc(i / n * 100), 'Processing Stock Withdraw ' +
            QuotedStr(cdsStockWdrListSWCODE.AsString));

//          if not cdsStockWdr.IsEmpty then
//          begin
//            if not dmGlobal.RemoteServer.StockWithdrawReverse(cdsStockWdrListSWID.AsLargeInt, sMsg) then
//            begin
//              Inc(iReject);
//              slMsg.Add(sMsg);
//            end
//            else
//              Inc(iSuccess);
//          end;
//        end;
//      Finally
//        sMsg := IntToStr(iSuccess) +' data has successfully reversed';
//        if iReject > 0 then
//        begin
//          sMsg := sMsg +#13#10+ IntToStr(iSuccess) +' data has failed to reversed'+#13#10+
//            'Error messages : '+#13#10+ slMsg.Text;
//        end;
//
//        FreeAndNil(oProgress);
//        FreeAndNil(slMsg);
//        ShowMessage(sMsg);
//      End;
//
//      if iSuccess > 0 then
//        cdsStockWdrList.Refresh;
//    end;
          if not cdsStockWdr.IsEmpty then
          begin
            bRes := dmGlobal.RemoteServer.StockWithdrawReverse(cdsStockWdrListSWID.AsLargeInt, sMsg);
            slMsg.Add(sMsg);
            if not bRes then
              Inc(iReject)
            else
              Inc(iSuccess);
          end;
        end;
      Finally
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;
      if iSuccess > 0 then
        cdsStockWdrList.Refresh;
    end;
  end;
end;

//procedure TfrmStockWdrList.actStockWithdrawCancelExecute(Sender: TObject);
//var
//  slMsg: TStringList;
//  sMsg, sVoucherNo: String;
//  i, n, RecIdx, iSuccess, iReject: Integer;
//  bRes: Boolean;
//  oProgress: TfrmProgressBar;
//begin
//  inherited;
//  if gvwMaster.Controller.SelectedRecordCount >= 1 then
//  begin
//    if MessageDlg('Are you sure to cancel selected stock withdraw?', mtConfirmation, mbYesNo, 0) = mrYes then
//    begin
//      slMsg := TStringList.Create;
//      oProgress := TfrmProgressBar.Create(Nil);
//      Try
//        iSuccess := 0;
//        iReject := 0;
//        n := gvwMaster.Controller.SelectedRecordCount;
//        oProgress.Show;
//        for i := 0 to n -1 do
//        begin
//          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
//          gvwMaster.DataController.FocusedRecordIndex := RecIdx;
//
//          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Withdraw ' +
//            QuotedStr(cdsStockWdrListSWCODE.AsString));
//
//          cdsStockWdr.Close;
//          cdsStockWdr.Params[0].AsInteger := cdsStockWdrListsWID.AsInteger;
//          cdsStockWdr.Open;
//
//          bRes := False;
//
//          if not cdsStockWdr.IsEmpty then
//          begin
//            if not dmGlobal.RemoteServer.StockWithdrawCancel(cdsStockWdrListSWID.AsLargeInt, sMsg) then
//            begin
//              Inc(iReject);
//              slMsg.Add(sMsg);
//            end
//            else
//              Inc(iSuccess);
//          end;
//        end;
//      Finally
//        sMsg := IntToStr(iSuccess) +' data has successfully canceled';
//        if iReject > 0 then
//        begin
//          sMsg := sMsg +#13#10+ IntToStr(iSuccess) +' data has failed to cancel'+#13#10+
//            'Error messages : '+#13#10+ slMsg.Text;
//        end;
//
//        FreeAndNil(oProgress);
//        FreeAndNil(slMsg);
//        ShowMessage(sMsg);
//      End;
//
//      cdsStockWdrList.Refresh;
//    end;
//  end;
//
//end;

procedure TfrmStockWdrList.actStockWithdrawCancelExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sCancelNotes: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to cancel selected stock withdraw?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      sCancelNotes := InputBox('Cancel Stock Withdraw', 'Cancel Notes:', '');
      if Trim(sCancelNotes) = '' then
      begin
        ShowMessage('Cancel notes is required!');
        Exit;
      end;

      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;
          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Withdraw ' +
            QuotedStr(cdsStockWdrListSWCODE.AsString));
          cdsStockWdr.Close;
          cdsStockWdr.Params[0].AsInteger := cdsStockWdrListsWID.AsInteger;
          cdsStockWdr.Open;
          bRes := False;
          if not cdsStockWdr.IsEmpty then
          begin
            bRes := dmGlobal.RemoteServer.StockWithdrawCancel(
              cdsStockWdrListSWID.AsLargeInt, sCancelNotes, sMsg);

            slMsg.Add(sMsg);

            if not bRes then
              Inc(iReject)
            else
              Inc(iSuccess);
          end;
        end;
      Finally
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;
      cdsStockWdrList.Refresh;
    end;
  end;
end;

procedure TfrmStockWdrList.actStockWithdrawUploadExecute(Sender: TObject);
var
  sMsg: string;
  oProgress: TfrmProgressBar;
  sFileName, sErrorMsg, sMessage: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iSDID: Integer;
  iError, iSuccess: Integer;
  sAccNo, sStockCode: string;
  iRowNo: integer;
begin
  inherited;
  dmGlobal.RemoteServer.EmptyTable('upload.StockDeposit', sMsg);

  cdsStockWdrUpload.Close;
  cdsStockWdrUpload.Open;

  try
    iError   := 0;
    iSuccess := 0;
    iRowNo   := 0;

    if OpenDialog.Execute then
      sFileName := OpenDialog.FileName;

    if (FileExists(sFileName))and (sFileName <> '') then
    begin
      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading stock withdraw from excel file');

      for i := 2 to iRows do
      begin
        iRowNo     := iRowNo + 1;
        sAccNo     := oSheet.Cells[i, 1].Value;
        sStockCode := oSheet.Cells[i, 3].Value;

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock withdraw '+ QuotedStr(sAccNo)+' - '+QuotedStr(sStockCode));

        cdsStockWdrUpload.Append;
        cdsStockWdrUploadROWNO.AsInteger    := iRowNo;
        cdsStockWdrUploadACCNO.AsString     := sAccNo;
        cdsStockWdrUploadACCNAME.AsString   := oSheet.Cells[i, 2].Value;
        cdsStockWdrUploadSTOCKCODE.AsString := sStockCode;
        cdsStockWdrUploadPRICE.AsFloat      := oSheet.Cells[i, 4].Value;
        cdsStockWdrUploadQTY.AsFloat        := oSheet.Cells[i, 5].Value;
        cdsStockWdrUploadREMARK.AsString    := oSheet.Cells[i, 6].Value;
        cdsStockWdrUploadCUSTODIAN.AsString := oSheet.Cells[i, 7].Value;
        cdsStockWdrUpload.Post;
      end;
    end;
  finally
    if(FileExists(sFileName))and (sFileName <> '') then
    begin
      oProgress.ChangeBarCaption('Saving data stock withdraw into database');
      cdsStockWdrUpload.ApplyUpdates(-1);
      dmGlobal.RemoteServer.CopyStockWdrFromUpload;
      FreeAndNil(oProgress);
      oExcel.Quit;

      sMessage := IntToStr(iRowNo) + ' data successfully uploaded';
      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      oExcel := Unassigned;
      oSheet := Unassigned;

      if cdsStockWdrList.Active then
        cdsStockWdrList.Refresh;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmStockWdrList.actUploadFromFileExecute(Sender: TObject);
var
  sFileName: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iSWID: Integer;
  oProgress: TfrmProgressBar;
  sAccCode, sStockCode, sSeqNo,sCustody: string;
  iAccID, iStockID: Integer;
  sErrorMsg,sMessage: string;
  iError, iSuccess: Integer;
  sPrice,sQty : Boolean;
  oPros : Boolean ;
  iSeqNoId: Integer;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if FileExists(sFileName) then
  begin
    try
      cdsUploadStock.Close;
      cdsUploadStock.Params[0].AsInteger := -1;
      cdsUploadStock.Open;

      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      iSWID    := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR');
      iSeqNoID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR_'+ FormatDateTime('YYYYMM', FTransDate));

      dmGlobal.RemoteServer.UpdateSeq('TBL_B_STOCKWDR', iSWID + (iRows));
      dmGlobal.RemoteServer.UpdateSeq('TBL_B_STOCKWDR_'+ FormatDateTime('YYYYMM', FTransDate), iSeqNoID + (iRows));

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading stock withdraw');
      for i := 2 to iRows do
      begin
        Inc(iSWID);
        Inc(iSeqNoID);

        sAccCode   := oSheet.Cells[i, 1].Value;
        sStockCode := oSheet.Cells[i, 3].Value;
        sPrice     := IsZero(oSheet.Cells[i, 4].Value);
        sQty       := IsZero(oSheet.Cells[i, 5].Value);
        sCustody   := oSheet.Cells[i, 7].Value;

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock withdraw ' +
          QuotedStr(sAccCode)+' - '+QuotedStr(sStockCode));

        dmGlobal.IntDataLookup.cdsluAccountByCode.Close;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Params[0].AsString := sAccCode;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Open;

        if not dmGlobal.IntDataLookup.cdsluAccountByCode.IsEmpty then
        begin
          iAccID := dmGlobal.IntDataLookup.cdsluAccountByCodeACCID.AsInteger;

          with dmGlobal.IntDataLookup do
          begin
            cdsluCustStock.Close;
            cdsluCustStock.Params[0].AsDate    := dtTransDate.EditValue;
            cdsluCustStock.Params[1].AsInteger := iAccID;
            cdsluCustStock.Open;

            if cdsluCustStock.IsEmpty then
            begin
               Inc(iError);
               sErrorMsg := sErrorMsg + sAccCode +'-'+ cdsLuAccountACCNAME.AsString +
                ' does not have stock '+ sStockCode + #13;
            end
            else
            begin
              sStockCode := dmGlobal.GetStringDelimiter(sStockCode, '.');
              sStockCode := sStockCode +'.'+ dmGlobal.RemoteServer.GetDefaultMarket;

              if not cdsluCustStock.Locate('StockCode', sStockCode, []) then
              begin
                Inc(iError);
                sErrorMsg := sErrorMsg + sAccCode +'-'+ cdsLuAccountACCNAME.AsString +
                ' does not have stock '+ sStockCode + #13;
              end
              else
              begin
                if cdsluCustStockStockBalance.AsFloat < oSheet.Cells[i, 5].Value then
                begin
                  Inc(iError);
                  sErrorMsg := sErrorMsg + sAccCode +'-'+ cdsLuAccountACCNAME.AsString +
                    ' does not have enough balance stock for '+ sStockCode + #13
                end
                else
                begin
                  if cdsluCustStock.Locate('StockCode', sStockCode, []) then
                  begin
                    if sQty then
                    begin
                      Inc(iError);
                      sErrorMsg := sErrorMsg + 'Value Qty Is Empty ' + #13;
                      oPros := False
                    end
                    else if sCustody = '' then
                    begin
                      Inc(iError);
                      sErrorMsg := sErrorMsg + 'Value Custody Is Empty ' + #13;
                      oPros := False
                    end
                    else oPros := True;

                    if oPros then
                    begin
                      iStockID := cdsluCustStockStockID.AsInteger;
                      sSeqNo   := FormatFloat('0000000000', iSeqNoId);

                      cdsUploadStock.Append;
                      cdsUploadStockSWID.AsInteger           := iSWID;
                      cdsUploadStockSWCODE.AsString          := 'SW-'+FormatDateTime('MMYYYY', FTransDate)+'-'+sSeqNo;
                      cdsUploadStockSWDATE.AsDateTime        := dmGlobal.RemoteServer.GetTransDate;
                      cdsUploadStockSETTLEDATE.AsDateTime    := cdsUploadStockSWDATE.AsDateTime;
                      cdsUploadStockACCID.AsInteger          := iAccID;
                      cdsUploadStockACCNO.AsString           := sAccCode;
                      cdsUploadStockINSTRUMENT_ID.AsInteger  := iStockID;
                      cdsUploadStockINSTRUMENT_CODE.AsString := sStockCode;
                      cdsUploadStockPLEDGED.AsString         := '0';
                      cdsUploadStockSCRIPLESS.AsString       := '1';
                      cdsUploadStockPURPOSE.AsString         := 'NONEXCHG';
                      cdsUploadStockSETTLEREASON.AsString    := 'OWNE';
                      cdsUploadStockKSEIACC.AsString         := cdsUploadStockKSEIACC_TMP.AsString;
                      cdsUploadStockACTLED_SEQID.AsInteger   := 0;
                      cdsUploadStockACCTYPE.AsString         := 'L';
                      cdsUploadStockPLEDGED.AsString         := '0';
                      cdsUploadStockSWPRICE.AsFloat          := oSheet.Cells[i, 4].Value;
                      cdsUploadStockSWQTY.AsFloat            := oSheet.Cells[i, 5].Value;
                      cdsUploadStockPURPOSE.AsString         := 'NONEXCHG';
                      cdsUploadStockSETTLEREASON.AsString    := 'OWNE';
                      cdsUploadStockENTRYDATE.AsDateTime     := dmGlobal.RemoteServer.GetServerTimeStamp;
                      cdsUploadStockPOSTED.AsString          := '0';
                      cdsUploadStockSCRIPLESS.AsString       := '1';
                      cdsUploadStockCancel.AsString          := '0';
                      cdsUploadStockREMARK.AsString          := oSheet.Cells[i, 6].Value;
                      cdsUploadStock.Post;

                      Inc(iSuccess);
                    end;
                  end
                  else
                  begin
                    Inc(iError);
                    sErrorMsg := sErrorMsg + sAccCode +'-'+ cdsLuAccountACCNAME.AsString +
                      ' does not have stock '+ sStockCode + #13
                  end;

                end;
              end;
            end;
          end;
        end
        else
        begin
          Inc(iError);
          sErrorMsg := sErrorMsg + 'Unregistered Account No '+ sAccCode +'-'+ dmGlobal.IntDataLookup.cdsluAccountByCodeACCNAME.AsString + #13
        end;
      end;
    finally
      oProgress.ChangeBarCaption('Saving to database...');
      Application.ProcessMessages;
      cdsUploadStock.ApplyUpdates(-1);

      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sErrorMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);

//      if sErrorMsg <> '' then
//        MessageDlg('There some error while uploading stock withdraw'+#13+sErrorMsg, mtInformation, [mbOk], 0);
//      MessageDlg('Upload data stock withdraw from excel file has been done', mtInformation, [mbOk], 0);


      FreeAndNil(oProgress);
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      if cdsStockWdrList.Active then
        cdsStockWdrList.Refresh;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmStockWdrList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsStockWdrListSWDATE.AsDateTime;
    iLedgerTransID := -1;
    iStockTransID  := cdsStockWdrListSTOCKTRANSID.AsLargeInt;
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

procedure TfrmStockWdrList.cdsStockWdrACCIDChange(Sender: TField);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsluCustStock.Close;
  dmGlobal.IntDataLookup.cdsluCustStock.Params[0].AsDate    := cdsStockWdrSWDATE.AsDateTime;
  dmGlobal.IntDataLookup.cdsluCustStock.Params[1].AsInteger := cdsStockWdrACCID.AsInteger;
  dmGlobal.IntDataLookup.cdsluCustStock.Open;
end;

procedure TfrmStockWdrList.cdsStockWdrBeforePost(DataSet: TDataSet);
var
  iSeqID, iSeqNo: Int64;
  dDate: TDate;
  sSeqNo: string;
begin
  inherited;
  if cdsStockWdrSWID.AsLargeInt = -1 then
  begin
    dDate := VarToDateTime(dtTransDate.EditValue);

    iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR');
    iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR_'+ FormatDateTime('YYYYMM', dDate));
    sSeqNo := 'SW-'+FormatDateTime('MMYYYY', FTransDate)+'-'+FormatFloat('0000000000',iSeqNo);

    cdsStockWdrSWID.AsLargeInt := iSeqID;
    cdsStockWdrSWCODE.AsString := sSeqNo;
  end;
end;

procedure TfrmStockWdrList.cdsStockWdrINSTRUMENT_IDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsStockWdrINSTRUMENT_ID.Value, []) then
      cdsStockWdrINSTRUMENT_CODE.AsString := cdsLuInstrumentAllINSTRUMENT_CODE.AsString;
  end;
end;

procedure TfrmStockWdrList.cdsStockWdrNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsStockWdrSWID.AsLargeInt   := -1;
  cdsStockWdrPOSTED.AsString   := '0';
  cdsStockWdrAPPROVED.AsString := '0';
  cdsStockWdrSWDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsStockWdrPURPOSE.AsString  := 'NONEXCHG'
end;

procedure TfrmStockWdrList.cmbMarketPropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  cdsStockWdrList.Filter   := 'MARKETCODE = '+QuotedStr(cmbMarket.EditValue);
//  cdsStockWdrList.Filtered := True;
end;

procedure TfrmStockWdrList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmStockWdr;
end;

procedure TfrmStockWdrList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '0000';
end;

procedure TfrmStockWdrList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '1111';
end;

procedure TfrmStockWdrList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField   := cdsStockWdrListSWID;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  dtTransDate.EditValue := FTransDate;

  chStatus.EditValue := '1000';
end;

procedure TfrmStockWdrList.FormShow(Sender: TObject);
begin
  inherited;
//  cmbMarket.EditValue := 'IDX';

//  cdsStockWdrList.Filter   := 'MARKETCODE = '+QuotedStr(cmbMarket.EditValue);
//  cdsStockWdrList.Filtered := True;
end;

procedure TfrmStockWdrList.popMasterPopup(Sender: TObject);
begin
  inherited;
  if cdsStockWdrListPOSTED.AsString = '1' then
    actPosting.Enabled := false
  else
    actPosting.Enabled := true;

end;

Initialization
  RegisterClass(TfrmStockWdrList);

end.
