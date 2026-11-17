unit FormStockDepList;

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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  System.DateUtils, System.Actions, System.ImageList, cxBarEditItem,
  dxDateRanges, ComObj, cxCheckBox,System.Math, cxSpinEdit, cxLabel,
  dxScrollbarAnnotations, cxCheckGroup;

type
  TfrmStockDepList = class(TfrmBrowseData)
    actViewList: TNAction;
    actPosting: TNAction;
    actPostingAll: TNAction;
    Posting1: TMenuItem;
    gvwMasterSDCODE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterCBCODE: TcxGridDBBandedColumn;
    gvwMasterSDPRICE: TcxGridDBBandedColumn;
    gvwMasterSDQTY: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterSDID: TcxGridDBBandedColumn;
    gvwMasterSDDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterSCRIPLESS: TcxGridDBBandedColumn;
    gvwMasterPLEDGED: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actGenerateOTCNonExchange: TNAction;
    N5: TMenuItem;
    actStockReverse: TNAction;
    StockDepositReverse1: TMenuItem;
    gvwMasterACQPRICE: TcxGridDBBandedColumn;
    gvwMasterACQDATE: TcxGridDBBandedColumn;
    gvwMasterACTLED_SEQID: TcxGridDBBandedColumn;
    gvwMasterACTLED_SEQID_TMP: TcxGridDBBandedColumn;
    gvwMasterKSEIACC_TMP: TcxGridDBBandedColumn;
    gvwMasterPRDTYPE: TcxGridDBBandedColumn;
    gvwMasterINVTYPE_TMP: TcxGridDBBandedColumn;
    gvwMasterSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    actStockByCust: TNAction;
    MulitpleStockDeposit1: TMenuItem;
    ByCustomer1: TMenuItem;
    actStockByStock: TNAction;
    byStock1: TMenuItem;
    cdsStockDepList: TNClientDataset;
    cdsStockDepListSDID: TLargeintField;
    cdsStockDepListSDCODE: TStringField;
    cdsStockDepListSDDATE: TDateField;
    cdsStockDepListACQPRICE: TFloatField;
    cdsStockDepListACQDATE: TDateField;
    cdsStockDepListACCID: TLargeintField;
    cdsStockDepListACCNO: TStringField;
    cdsStockDepListINSTRUMENT_ID: TLargeintField;
    cdsStockDepListINSTRUMENT_CODE: TStringField;
    cdsStockDepListCBCODE: TStringField;
    cdsStockDepListKSEIACC: TStringField;
    cdsStockDepListACTLED_SEQID: TIntegerField;
    cdsStockDepListACCTYPE: TStringField;
    cdsStockDepListSCRIPLESS: TStringField;
    cdsStockDepListPLEDGED: TStringField;
    cdsStockDepListSDPRICE: TFloatField;
    cdsStockDepListSDQTY: TLargeintField;
    cdsStockDepListREMARK: TStringField;
    cdsStockDepListPURPOSE: TStringField;
    cdsStockDepListTRADEREFF: TStringField;
    cdsStockDepListSETTLEREASON: TStringField;
    cdsStockDepListPOSTED: TStringField;
    cdsStockDepListMODDA: TDateTimeField;
    cdsStockDepListMODUI: TStringField;
    cdsStockDepListAPPDA: TDateTimeField;
    cdsStockDepListAPPUI: TStringField;
    cdsStockDepListUNDER4Y: TIntegerField;
    cdsStockDepListUNDER4YDA: TDateTimeField;
    cdsStockDepListNOTES4Y: TStringField;
    cdsStockDepListISDEL: TIntegerField;
    cdsStockDepListID: TLargeintField;
    cdsStockDepListSETTLEDATE: TDateField;
    cdsStockDepListACCSOPID: TLargeintField;
    cdsStockDepListPOSTED_DATE: TDateField;
    cdsStockDepListPOSTED_UI: TStringField;
    cdsStockDepListENTRYDATE: TDateField;
    cdsStockDepListCANCEL: TStringField;
    cdsStockDepListCANCEL_DATE: TDateField;
    cdsStockDepListCANCEL_UI: TStringField;
    cdsStockDepListCHGOTC: TStringField;
    cdsStockDepListMARKETCODE: TStringField;
    grdMasterLevel2: TcxGridLevel;
    gvwOTCInstr: TcxGridDBBandedTableView;
    cdsOTCInstr: TNClientDataset;
    dsOTCInstr: TDataSource;
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
    gvwOTCInstrAccountNo: TcxGridDBBandedColumn;
    gvwOTCInstrAccountName: TcxGridDBBandedColumn;
    gvwOTCInstrinstructionType: TcxGridDBBandedColumn;
    gvwOTCInstrexternalReference: TcxGridDBBandedColumn;
    gvwOTCInstrparticipantCode: TcxGridDBBandedColumn;
    gvwOTCInstrparticipantAccount: TcxGridDBBandedColumn;
    gvwOTCInstrparticipantAccountCash: TcxGridDBBandedColumn;
    gvwOTCInstrcounterpartCode: TcxGridDBBandedColumn;
    gvwOTCInstrsecurityCode: TcxGridDBBandedColumn;
    gvwOTCInstrnumberOfSecurities: TcxGridDBBandedColumn;
    gvwOTCInstrtradeDate: TcxGridDBBandedColumn;
    gvwOTCInstrcurrencyCode: TcxGridDBBandedColumn;
    gvwOTCInstrsettlementAmount: TcxGridDBBandedColumn;
    gvwOTCInstrsettlementDate: TcxGridDBBandedColumn;
    gvwOTCInstrpurpose: TcxGridDBBandedColumn;
    gvwOTCInstrtradingReference: TcxGridDBBandedColumn;
    gvwOTCInstrsettlementReason: TcxGridDBBandedColumn;
    gvwOTCInstrdescription: TcxGridDBBandedColumn;
    gvwOTCInstrsecurityCodeType: TcxGridDBBandedColumn;
    actGenerateRFOPFile: TNAction;
    popOTCIns: TPopupMenu;
    GenerateRFOPFile1: TMenuItem;
    actStockUpload: TNAction;
    OpenDialog: TOpenDialog;
    dtTrans: TcxBarEditItem;
    UploadFromExcelFile1: TMenuItem;
    cdsAccountByAccNo: TNClientDataset;
    cdsAccountByAccNoACCID: TIntegerField;
    cdsAccountByAccNoACCCODE: TStringField;
    cdsAccountByAccNoACCNAME: TStringField;
    cdsAccountByAccNoACCBANKID: TIntegerField;
    cdsAccountByAccNoACCBANKCODE: TStringField;
    cdsStockByLocalCode: TNClientDataset;
    cdsStockByLocalCodeINSTRUMENT_ID: TLargeintField;
    cdsStockByLocalCodeINSTRUMENT_CODE: TStringField;
    cdsStockByLocalCodeLOCALCODE: TStringField;
    cdsStockByLocalCodeMARKETCODE: TStringField;
    cdsStockByLocalCodeINSTRUMENT_TYPE_CODE: TStringField;
    cdsStockByLocalCodeSHORTNAME: TStringField;
    cdsStockByLocalCodeLONGNAME: TStringField;
    cdsStockByLocalCodeISSUERNAME: TStringField;
    cdsStockByLocalCodeCCY: TStringField;
    cdsStockByLocalCodeISINCODE: TStringField;
    cdsStockByLocalCodeISINDATE: TDateTimeField;
    cdsStockByLocalCodeMARGIN: TIntegerField;
    cdsStockByLocalCodeSTATUS: TStringField;
    cdsStockByLocalCodeDELISTINGDATE: TDateTimeField;
    cdsStockByLocalCodeLISTINGDATE: TDateTimeField;
    cdsStockByLocalCodeLASTCLSPRICE: TFloatField;
    cdsStockByLocalCodeLASTCPPRICEDATE: TDateField;
    cdsStockByLocalCodeSECTOR: TStringField;
    cdsStockByLocalCodeMODDA: TDateTimeField;
    cdsStockByLocalCodeMODUI: TStringField;
    cdsStockByLocalCodeAPPDA: TDateTimeField;
    cdsStockByLocalCodeAPPUI: TStringField;
    cdsStockByLocalCodeISDEL: TIntegerField;
    cdsStockByLocalCodeID: TLargeintField;
    cdsStockByLocalCodeCATEGORY: TStringField;
    cdsStockByLocalCodeMATURITYDATE: TDateTimeField;
    cdsStockByLocalCodeRATING: TStringField;
    cdsStockByLocalCodeREMARKS: TStringField;
    cdsStockByLocalCodeEFFECTIVEDATE: TDateTimeField;
    cdsStockByLocalCodeOFFERING_PERIODBEG: TDateTimeField;
    cdsStockByLocalCodeOFFERING_PERIODEND: TDateTimeField;
    cdsStockByLocalCodeISSUEDATE: TDateTimeField;
    cdsStockByLocalCodeNO_OFCERTIFICATES: TStringField;
    cdsStockByLocalCodeLEAD_UNDERWRITER: TStringField;
    cdsStockByLocalCodeSELLING_AGENT: TStringField;
    cdsStockByLocalCodeTRUSTEE: TStringField;
    cdsStockByLocalCodeCALCULATE_DAYS_METHOD: TIntegerField;
    cdsStockByLocalCodeCOUPON_IN_YEAR: TIntegerField;
    cdsStockByLocalCodeCOMMONCODE: TStringField;
    cdsStockByLocalCodeDAYSOFYEAR: TIntegerField;
    cdsStockByLocalCodeREGIONALBONDS: TIntegerField;
    cdsStockByLocalCodeCOUNTINGDAYS_METHOD: TIntegerField;
    cdsStockByLocalCodeACCRUEDDAYS_METHOD: TIntegerField;
    cdsStockByLocalCodeDAYSPERYEAR_METHOD: TIntegerField;
    cdsStockByLocalCodeACCRUEDTYPE: TStringField;
    cdsStockByLocalCodeDECDIGIT: TIntegerField;
    cdsStockByLocalCodeSEDOL: TStringField;
    cdsStockByLocalCodeHAIRCUT: TFloatField;
    cdsStockByLocalCodeLIQUIDITY: TFloatField;
    cdsStockByLocalCodeLASTHAIRCUTDATE: TDateField;
    cdsStockByLocalCodeISSUERID: TLargeintField;
    cdsStockByLocalCodeHCUT_REPO: TFloatField;
    cdsStockByLocalCodeHCUT_MARGIN: TFloatField;
    cdsStockByLocalCodeHCUT_REG: TFloatField;
    cdsStockByLocalCodeAFFIL: TBooleanField;
    cdsStockDep: TNClientDataset;
    cdsStockDepSDID: TLargeintField;
    cdsStockDepSDCODE: TStringField;
    cdsStockDepSDDATE: TDateField;
    cdsStockDepACQPRICE: TFloatField;
    cdsStockDepACQDATE: TDateField;
    cdsStockDepACCID: TLargeintField;
    cdsStockDepACCNO: TStringField;
    cdsStockDepINSTRUMENT_ID: TLargeintField;
    cdsStockDepINSTRUMENT_CODE: TStringField;
    cdsStockDepCBCODE: TStringField;
    cdsStockDepKSEIACC: TStringField;
    cdsStockDepACTLED_SEQID: TIntegerField;
    cdsStockDepACCTYPE: TStringField;
    cdsStockDepSCRIPLESS: TStringField;
    cdsStockDepPLEDGED: TStringField;
    cdsStockDepSDPRICE: TFloatField;
    cdsStockDepSDQTY: TLargeintField;
    cdsStockDepREMARK: TStringField;
    cdsStockDepPURPOSE: TStringField;
    cdsStockDepTRADEREFF: TStringField;
    cdsStockDepSETTLEREASON: TStringField;
    cdsStockDepPOSTED: TStringField;
    cdsStockDepMODDA: TDateTimeField;
    cdsStockDepMODUI: TStringField;
    cdsStockDepAPPDA: TDateTimeField;
    cdsStockDepAPPUI: TStringField;
    cdsStockDepUNDER4Y: TIntegerField;
    cdsStockDepUNDER4YDA: TDateTimeField;
    cdsStockDepNOTES4Y: TStringField;
    cdsStockDepISDEL: TIntegerField;
    cdsStockDepID: TLargeintField;
    cdsStockDepINVTYPE_TMP: TStringField;
    cdsStockDepPRDTYPE: TStringField;
    cdsStockDepKSEIACC_TMP: TStringField;
    cdsStockDepACTLED_SEQID_TMP: TIntegerField;
    cdsStockDepINSTRUMEN_NAME_TMP: TStringField;
    cdsStockDepSETTLEDATE: TDateField;
    cdsStockDepENTRYDATE: TDateField;
    cdsStockDepSTOCK_TYPE: TStringField;
    cdsStockDepListREVERSED: TStringField;
    cdsStockDepListREVERSED_DATE: TDateTimeField;
    cdsStockDepListREVERSED_UI: TStringField;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    actStockDepositCancel: TNAction;
    Cancel1: TMenuItem;
    cdsUploadStock: TNClientDataset;
    cdsUploadStockSDID: TLargeintField;
    cdsUploadStockSDCODE: TStringField;
    cdsUploadStockSDDATE: TDateField;
    cdsUploadStockACQPRICE: TFloatField;
    cdsUploadStockACQDATE: TDateField;
    cdsUploadStockACCID: TLargeintField;
    cdsUploadStockACCNO: TStringField;
    cdsUploadStockINSTRUMENT_ID: TLargeintField;
    cdsUploadStockINSTRUMENT_CODE: TStringField;
    cdsUploadStockCBCODE: TStringField;
    cdsUploadStockKSEIACC: TStringField;
    cdsUploadStockACTLED_SEQID: TIntegerField;
    cdsUploadStockACCTYPE: TStringField;
    cdsUploadStockSCRIPLESS: TStringField;
    cdsUploadStockPLEDGED: TStringField;
    cdsUploadStockSDPRICE: TFloatField;
    cdsUploadStockSDQTY: TLargeintField;
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
    cdsUploadStockSETTLEDATE: TDateField;
    cdsUploadStockENTRYDATE: TDateField;
    cdsStockDepUpload: TNClientDataset;
    cdsStockDepUploadROWNO: TIntegerField;
    cdsStockDepUploadACCNO: TStringField;
    cdsStockDepUploadACCNAME: TStringField;
    cdsStockDepUploadSTOCKCODE: TStringField;
    cdsStockDepUploadPRICE: TFloatField;
    cdsStockDepUploadQTY: TFloatField;
    cdsStockDepUploadREMARK: TStringField;
    cdsStockDepUploadCUSTODIAN: TStringField;
    actStockDepositUpload: TNAction;
    cdsStockDepListSHORTNAME: TStringField;
    cdsStockDepListACCNAME: TStringField;
    cdsStockDepListKSEI_SID: TStringField;
    cdsStockDepListACC_TYPE: TStringField;
    cdsStockDepListSTAT: TStringField;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsStockDepListSTOCKTRANSID: TLargeintField;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    chStatus: TcxBarEditItem;
    procedure actPostingExecute(Sender: TObject);
    procedure actPostingAllExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsStockDepACCIDChange(Sender: TField);
    procedure cdsStockDepINSTRUMENT_IDChange(Sender: TField);
    procedure popMasterPopup(Sender: TObject);
    procedure actGenerateOTCNonExchangeExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actStockReverseExecute(Sender: TObject);
    procedure actStockReverseUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbMarketPropertiesCloseUp(Sender: TObject);
    procedure dtTransDatePropertiesCloseUp(Sender: TObject);
    procedure actGenerateOTCNonExchangeUpdate(Sender: TObject);
    procedure actPostingUpdate(Sender: TObject);
    procedure actStockByCustExecute(Sender: TObject);
    procedure actStockByStockExecute(Sender: TObject);
    procedure actGenerateRFOPFileExecute(Sender: TObject);
    procedure actStockUploadExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actStockDepositCancelExecute(Sender: TObject);
    procedure actStockDepositCancelUpdate(Sender: TObject);
    procedure actStockDepositUploadExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;
  public
    { Public declarations }
    FIsAccMargin: Boolean;
    FIsStockMargin: Boolean;
  end;

var
  frmStockDepList: TfrmStockDepList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormStockDep, FormProgressBar, FormStockByCustomer,
  FormCustomerByStock, DataCBest, FormViewTransaction;

procedure TfrmStockDepList.actEditUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := (cdsStockDepListPOSTED.AsString <> '1') and (not VarIsNull(cdsStockDepListACCID.AsLargeInt));
  end;
end;

procedure TfrmStockDepList.actGenerateOTCNonExchangeExecute(
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

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Deposit ' +
            QuotedStr(cdsStockDepListSDCODE.AsString));

          if (cdsStockDepListCHGOTC.AsString <> '1') and (cdsStockDepListPOSTED.AsString <> '1') then
          begin
            sMsg := dmGlobal.RemoteServer.GenerateOTCNonExchange(cdsStockDepListSDID.AsString, 'D');

            sMsg := cdsStockDepListSDCODE.AsString + ': ' + sMsg;
          end
          else
          begin
            sMsg := cdsStockDepListSDCODE.AsString + ': Stock Deposit Can''t be Processed.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Process Generate OTC Stock Deposit Done.');
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      cdsStockDepList.Refresh;
    end;
  end;

end;

procedure TfrmStockDepList.actGenerateOTCNonExchangeUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsStockDepListCHGOTC.AsString <> '1') and (cdsStockDepListPOSTED.AsString <> '1');
end;

procedure TfrmStockDepList.actGenerateRFOPFileExecute(Sender: TObject);
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

procedure TfrmStockDepList.actPostingAllExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to posting all stock deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostAllStockDep(DateTimeToFileDate(DateOf(dtTrans.EditValue)));
    ShowMessage('Finished Posting All Stock Deposit.');
  end;
end;

procedure TfrmStockDepList.actPostingExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if MessageDlg('Are you sure to posting selected stock deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    iSuccess := 0;
    iReject  := 0;

    if gvwMaster.Controller.SelectedRecordCount = 1 then
    begin
        
      bRes := dmGlobal.RemoteServer.PostStockDeposit(cdsStockDepListSDID.AsLargeInt, sMsg);
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

      if bRes then
        iSuccess := iSuccess + 1
      else
        iReject := iReject + 1;

    end
    else if gvwMaster.Controller.SelectedRecordCount > 1 then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      
      Try
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i + 1) / n * 100), 'Processing Stock Deposit ' +
            QuotedStr(cdsStockDepListSDCODE.AsString));

          if (cdsStockDepListCHGOTC.AsString <> '1') and (cdsStockDepListPOSTED.AsString <> '1') then
          begin
            bRes := dmGlobal.RemoteServer.PostStockDeposit(cdsStockDepListSDID.AsLargeInt, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsStockDepListSDCODE.AsString + ': ' + sMsg;
          end
          else
          begin
            sMsg := cdsStockDepListSDCODE.AsString + ': Stock Deposit Can''t be Processed.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Stock Deposit Posted Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;
      
    end
    else
      MessageWarning('There is no selected data can be proceed !');        

    if iSuccess > 0 then
      cdsStockDepList.Refresh;
  end;
end;

procedure TfrmStockDepList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsStockDepListCHGOTC.AsString <> '1') and (cdsStockDepListPOSTED.AsString <> '1');
end;

procedure TfrmStockDepList.actRefreshExecute(Sender: TObject);
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

  cdsStockDepList.Close;
  cdsStockDepList.Params[0].AsDate   := DateOf(dtTrans.EditValue);
  cdsStockDepList.Params[1].AsString := sStatus;
  cdsstockdeplist.open;

  cdsOTCInstr.Close;
  cdsOTCInstr.Params[0].AsDate := DateOf(dtTrans.EditValue);
  cdsOTCInstr.Open;
end;

procedure TfrmStockDepList.actStockByCustExecute(Sender: TObject);
var
  oForm : TfrmStockByCustomer;
  iSeqID, iSeqNo: int64;
  sSeqNo: string;
begin
  inherited;
  oForm := TfrmStockByCustomer.Create(nil);

  TfrmStockByCustomer(oForm).StockType := 'SD';
  if oForm.ShowModal = mrOk then
  begin
    cdsStockDep.Close;
    cdsStockDep.Params[0].AsInteger := -1;
    cdsStockDep.Open;

    with TfrmStockByCustomer(oForm) do
    begin
      if not cdsDetailedStock.IsEmpty then
      begin
        cdsDetailedStock.First;
        while not cdsDetailedStock.Eof do
        begin
          iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP');
          iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP_'+ FormatDateTime('yyyymm', FTransDate));
          sSeqNo := 'SD-'+ FormatDateTime('mmyyyy', FTransDate) +'-'+ FormatFloat('0000000000', iSeqNo);

          cdsStockDep.Append;
          cdsStockDepSDID.AsInteger           := iSeqID;
          cdsStockDepSDCODE.AsString          := sSeqNo;
          cdsStockDepSDDATE.AsDateTime        := cdsCustomerENTRYDATE.AsDateTime;
          cdsStockDepSETTLEDATE.AsDateTime    := cdsCustomerSETTLEDATE.AsDateTime;
          cdsStockDepACQDATE.AsFloat          := cdsCustomerTRANSDATE.AsDateTime;
          cdsStockDepACQPRICE.AsFloat         := 0; //cdsDetailedStockPRICE.AsFloat;
          cdsStockDepACCID.AsInteger          := cdsCustomerACCID.AsInteger;
          cdsStockDepACCNO.AsString           := cdsCustomerACCCODE.AsString;
          cdsStockDepINSTRUMENT_ID.AsInteger  := cdsDetailedStockSTOCKID.AsInteger;
          cdsStockDepINSTRUMENT_CODE.AsString := dmGlobal.IntDataLookup.GetStockCode(cdsDetailedStockSTOCKID.AsInteger);
          cdsStockDepKSEIACC.AsString         := cdsCustomerKSEIACC_TMP.AsString;
          cdsStockDepACTLED_SEQID.AsInteger   := 0;
          cdsStockDepACCTYPE.AsString         := 'L';
          cdsStockDepPLEDGED.AsString         := '0';
          cdsStockDepSDPRICE.AsFloat          := cdsDetailedStockPRICE.AsFloat;
          cdsStockDepSDQTY.AsFloat            := cdsDetailedStockQTY.AsFloat;
          cdsStockDepPURPOSE.AsString         := 'NONEXCHG';
          cdsStockDepSETTLEREASON.AsString    := 'OWNE';
          cdsStockDepENTRYDATE.AsDateTime     := cdsCustomerENTRYDATE.AsDateTime;
          cdsStockDepPOSTED.AsString          := '0';
          cdsStockDepSCRIPLESS.AsString       := '1';
          cdsStockDepCBCODE.AsString          := cdsStockDepListCBCODE.AsString;
          cdsStockDepREMARK.AsString          := cdsCustomerDEP_DESC.AsString;
          cdsStockDep.Post;

          cdsDetailedStock.Next;
        end;
        cdsStockDep.ApplyUpdates(-1);

        if cdsStockDepList.Active then
          cdsStockDepList.Refresh;
      end;
    end;
  end;

  FreeAndNil(oForm);
end;

procedure TfrmStockDepList.actStockByStockExecute(Sender: TObject);
var
  oForm : TfrmCustomerByStock;
  iSeqID, iSeqNo: int64;
  sSeqNo: string;
begin
  inherited;
  oForm := TfrmCustomerByStock.Create(nil);

  TfrmCustomerByStock(oForm).StockType := 'SD';
  if oForm.ShowModal = mrOk then
  begin
    cdsStockDep.Close;
    cdsStockDep.Params[0].AsInteger := -1;
    cdsStockDep.Open;

    with TfrmCustomerByStock(oForm) do
    begin
      if not cdsCustomer.IsEmpty then
      begin
        cdsCustomer.First;
        while not cdsCustomer.Eof do
        begin
          iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP');
          iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP_'+ FormatDateTime('yyyymm', FTransDate));
          sSeqNo := 'SD-'+ FormatDateTime('mmyyyy', FTransDate) +'-'+ FormatFloat('0000000000', iSeqNo);

          cdsStockDep.Append;
          cdsStockDepSDID.AsInteger           := iSeqID;
          cdsStockDepSDCODE.AsString          := sSeqNo;
          cdsStockDepSDDATE.AsDateTime        := cdsStockENTRYDATE.AsDateTime;
          cdsStockDepSETTLEDATE.AsDateTime    := cdsStockSETTLEDATE.AsDateTime;
          cdsStockDepACQDATE.AsFloat          := cdsStockTRANSDATE.AsDateTime;
          cdsStockDepACQPRICE.AsFloat         := 0; //cdsCustomerPRICE.AsFloat;
          cdsStockDepACCID.AsInteger          := cdsCustomerACCID.AsInteger;
          cdsStockDepACCNO.AsString           := cdsCustomerACCCODE.AsString;
          cdsStockDepINSTRUMENT_ID.AsInteger  := cdsStockSTOCKID.AsInteger;
          cdsStockDepINSTRUMENT_CODE.AsString := cdsStockSTOCKCODE.AsString;
          cdsStockDepKSEIACC.AsString         := cdsCustomerKSEIACC_TMP.AsString;
          cdsStockDepACTLED_SEQID.AsInteger   := 0;
          cdsStockDepACCTYPE.AsString         := 'L';
          cdsStockDepPLEDGED.AsString         := '0';
          cdsStockDepSDPRICE.AsFloat          := cdsCustomerPRICE.AsFloat;
          cdsStockDepSDQTY.AsFloat            := cdsCustomerQTY.AsFloat;
          cdsStockDepPURPOSE.AsString         := 'NONEXCHG';
          cdsStockDepSETTLEREASON.AsString    := 'OWNE';
          cdsStockDepENTRYDATE.AsDateTime     := cdsStockENTRYDATE.AsDateTime;
          cdsStockDepPOSTED.AsString          := '0';
          cdsStockDepSCRIPLESS.AsString       := '1';
          cdsStockDepCBCODE.AsString          := cdsCustomerCBCODE.AsString;
          cdsStockDep.Post;

          cdsCustomer.Next;
        end;
        cdsStockDep.ApplyUpdates(-1);

        if cdsStockDepList.Active then
          cdsStockDepList.Refresh;
      end;
    end;
  end;
  FreeAndNil(oForm);
end;

procedure TfrmStockDepList.actStockDepositCancelExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if MessageDlg('Are you sure to cancel selected stock deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    iSuccess := 0;
    iReject := 0;

    if gvwMaster.Controller.SelectedRecordCount = 1 then
    begin
      bRes := dmGlobal.RemoteServer.PostStockWithdrawCalcel(cdsStockDepListSDID.AsLargeInt, sMsg);
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

      if bRes then
        iSuccess := iSuccess + 1
      else
        iReject := iReject + 1;

    end
    else if gvwMaster.Controller.SelectedRecordCount > 1 then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Deposit ' +
            QuotedStr(cdsStockDepListSDCODE.AsString));

          bRes := dmGlobal.RemoteServer.PostStockWithdrawCalcel(cdsStockDepListSDID.AsLargeInt, sMsg);

          if bRes then
          begin
            iSuccess := iSuccess + 1;
          end
          Else
          begin
            iReject := iReject + 1;
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Stock Deposit Canceled Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;
    end
    else
      MessageWarning('There is no selected data can be proceed !');       
      

    if iSuccess > 0 then
    begin
      if cdsStockDepList.Active then
        cdsStockDepList.Refresh;
    end;
  end;
end;

procedure TfrmStockDepList.actStockDepositCancelUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsStockDepListREVERSED.AsString <> '1') and (cdsStockDepListPOSTED.AsString <> '1');
end;

procedure TfrmStockDepList.actStockDepositUploadExecute(Sender: TObject);
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

  cdsStockDepUpload.Close;
  cdsStockDepUpload.Open;

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
      oProgress.ChangeBarCaption('Uploading stock deposit from excel file');

      for i := 2 to iRows do
      begin
        iRowNo     := iRowNo + 1;
        sAccNo     := oSheet.Cells[i, 1].Value;
        sStockCode := oSheet.Cells[i, 3].Value;

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock deposit '+ QuotedStr(sAccNo)+' - '+QuotedStr(sStockCode));

        cdsStockDepUpload.Append;
        cdsStockDepUploadROWNO.AsInteger    := iRowNo;
        cdsStockDepUploadACCNO.AsString     := sAccNo;
        cdsStockDepUploadACCNAME.AsString   := oSheet.Cells[i, 2].Value;
        cdsStockDepUploadSTOCKCODE.AsString := sStockCode;
        cdsStockDepUploadPRICE.AsFloat      := oSheet.Cells[i, 4].Value;
        cdsStockDepUploadQTY.AsFloat        := oSheet.Cells[i, 5].Value;
        cdsStockDepUploadREMARK.AsString    := oSheet.Cells[i, 6].Value;
        cdsStockDepUploadCUSTODIAN.AsString := oSheet.Cells[i, 7].Value;
        cdsStockDepUpload.Post;
      end;
    end;
  finally
   if (FileExists(sFileName))and (sFileName <> '') then
   begin
      oProgress.ChangeBarCaption('Saving data stock deposit into database');
      cdsStockDepUpload.ApplyUpdates(-1);
      dmGlobal.RemoteServer.CopyStockDepFromUpload;
      FreeAndNil(oProgress);
      oExcel.Quit;

      sMessage := IntToStr(iRowNo) + ' data successfully uploaded';
      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      oExcel := Unassigned;
      oSheet := Unassigned;

      if cdsStockDepList.Active then
        cdsStockDepList.Refresh;
      Screen.Cursor := crDefault;
   end;
  end;
end;

procedure TfrmStockDepList.actStockReverseExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if MessageDlg('Are you sure to reverse selected stock deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    iSuccess := 0;
    iReject := 0;

    if gvwMaster.Controller.SelectedRecordCount = 1 then
    begin
      bRes := dmGlobal.RemoteServer.PostStockDepositReverse(cdsStockDepListSDID.AsLargeInt, sMsg);
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

      if bRes then
        iSuccess := iSuccess + 1
      Else
        iReject := iReject + 1;

    end
    else if gvwMaster.Controller.SelectedRecordCount > 1 then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Deposit ' +
            QuotedStr(cdsStockDepListSDCODE.AsString));

          bRes := dmGlobal.RemoteServer.PostStockDepositReverse(cdsStockDepListSDID.AsLargeInt, sMsg);

          if bRes then
          begin
            iSuccess := iSuccess + 1;
          end
          Else
          begin
            iReject := iReject + 1;
          end;

          sMsg := cdsStockDepListSDCODE.AsString + ': ' + sMsg;
        end;
      Finally
        slMsg.Insert(0, 'Stock Deposit Reversed Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;
    end
    else
      MessageWarning('There is no selected data can be proceed !');

    if iSuccess > 0 then
      cdsStockDepList.Refresh;
  end;

end;

procedure TfrmStockDepList.actStockReverseUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := ((cdsStockDepListREVERSED.AsString = '0') or (cdsStockDepListREVERSED.AsString = '')) and (cdsStockDepListCANCEL.AsString = '0') and (cdsStockDepListPOSTED.AsString = '1');
end;

procedure TfrmStockDepList.actStockUploadExecute(Sender: TObject);
var
  sFileName: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iSDID: Integer;
  oProgress: TfrmProgressBar;
  sAccCode, sStockCode, sSeqNo,sCustody: string;
  sPrice,sQty : Boolean;
  iAccID, iStockID: Integer;
  sErrorMsg,sMessage: string;
  iError, iSuccess: Integer;
  oPros : Boolean ;
  iSeqNoID: Integer;
  iNewSeqID, iNewSeqNoID: integer;
  sPrdCode: string;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if FileExists(sFileName) then
  begin
    try
      oProgress := TfrmProgressBar.Create(Nil);

      cdsUploadStock.Close;
      cdsUploadStock.Params[0].AsInteger := -1;
      cdsUploadStock.Open;

//      cdsStockDep.Close;
//      cdsStockDep.Params[0].AsInteger := -1;
//      cdsStockDep.Open;

      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      iSDID    := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP');
      iSeqNoID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP_'+ FormatDateTime('YYYYMM', FTransDate));

      iNewSeqID   := iSDID + iRows + 3;
      iNewSeqNoID := iSeqNoID + iRows + 3;

      dmGlobal.RemoteServer.UpdateSeq('TBL_B_STOCKDEP', iNewSeqID);
      dmGlobal.RemoteServer.UpdateSeq('TBL_B_STOCKDEP_'+ FormatDateTime('YYYYMM', FTransDate), iNewSeqNoID);

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading stock withdraw');
      for i := 2 to iRows do
      begin
//        Inc(iSDID);
//        Inc(iSeqNoID);

        sAccCode   := oSheet.Cells[i, 1].Value;
        sStockCode := oSheet.Cells[i, 3].Value;
        sPrice     := IsZero(oSheet.Cells[i, 4].Value);
        sQty       := IsZero(oSheet.Cells[i, 5].Value);
        sCustody   := oSheet.Cells[i, 7].Value;

        dmGlobal.IntDataLookup.cdsluAccountByCode.Close;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Params[0].AsString := sAccCode;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Open;

        cdsStockByLocalCode.Close;
        cdsStockByLocalCode.Params[0].AsString := sStockCode;
        cdsStockByLocalCode.Open;

        if not dmGlobal.IntDataLookup.cdsluAccountByCode.IsEmpty then
        begin
          iAccID   := dmGlobal.IntDataLookup.cdsluAccountByCodeACCID.AsInteger;
          sPrdCode := dmGlobal.IntDataLookup.cdsluAccountByCodePRDCODE.AsString;

          if not cdsStockByLocalCode.IsEmpty then
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
              with dmGlobal.IntDataLookup do
              begin
                iSDID    := iSDID + 1;
                iSeqNoID := iSeqNoID + 1;

                sSeqNo := 'SD-'+FormatDateTime('MMYYYY',dmGlobal.RemoteServer.GetTransDate)+'-'+FormatFloat('0000000000', iSeqNoID);

                oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock deposit (' +
                QuotedStr(sSeqNo) +') '+ QuotedStr(sAccCode)+' - '+QuotedStr(sStockCode));

                cdsUploadStock.Append;
                cdsUploadStockSDID.AsInteger           := iSDID;
                cdsUploadStockSDCODE.AsString          := sSeqNo;
                cdsUploadStockSDDATE.AsDateTime        := FTransDate;
                cdsUploadStockACQDATE.AsDateTime       := FTransDate;
                cdsUploadStockSETTLEDATE.AsDateTime    := cdsUploadStockSDDATE.AsDateTime;
                cdsUploadStockACCID.AsInteger          := iAccID;
                cdsUploadStockACCNO.AsString           := sAccCode;
                cdsUploadStockINSTRUMENT_ID.AsInteger  := cdsStockByLocalCodeINSTRUMENT_ID.AsInteger;
                cdsUploadStockINSTRUMENT_CODE.AsString := sStockCode;
                cdsUploadStockPLEDGED.AsString         := '0';
                cdsUploadStockSCRIPLESS.AsString       := '1';
                cdsUploadStockPURPOSE.AsString         := 'NONEXCHG';
                cdsUploadStockSETTLEREASON.AsString    := 'OWNE';
                cdsUploadStockACTLED_SEQID.AsInteger   := 0;
                cdsUploadStockSDPRICE.AsFloat          := oSheet.Cells[i, 4].Value;
                cdsUploadStockSDQTY.AsFloat            := oSheet.Cells[i, 5].Value;
                cdsUploadStockPURPOSE.AsString         := 'NONEXCHG';
                cdsUploadStockSETTLEREASON.AsString    := 'OWNE';
                cdsUploadStockENTRYDATE.AsDateTime     := Now;
                cdsUploadStockPOSTED.AsString          := '0';
                cdsUploadStockSCRIPLESS.AsString       := '1';
                cdsUploadStockREMARK.AsString          := oSheet.Cells[i, 6].Value;
                cdsUploadStockCBCODE.AsString          := oSheet.Cells[i, 7].Value;
                cdsUploadStockACCTYPE.AsString         := cdsStockDepINVTYPE_TMP.AsString;
                cdsUploadStockKSEIACC.AsString         := cdsStockDepKSEIACC_TMP.AsString;
                cdsUploadStockACTLED_SEQID.AsInteger   := cdsStockDepACTLED_SEQID_TMP.AsInteger;

                FIsAccMargin := False;
                if cdsLuAccountPRDCODE.AsString = dmGlobal.RemoteServer.GetGlobalParamString('762') then
                  FIsAccMargin := True;

                if FIsAccMargin and FIsStockMargin then
                  cdsUploadStockPLEDGED.AsString := '1'
                else
                  cdsUploadStockPLEDGED.AsString := '0';

                cdsUploadStock.Post;
                Inc(iSuccess);
              end;
            end;
          end
          else
          begin
            Inc(iError);
            sErrorMsg := sErrorMsg + 'Unregistered Stock Code '+ sStockCode +'-'+ cdsStockByLocalCodeLOCALCODE.AsString + #13;
          end;
        end
        else
        begin
          Inc(iError);
          sErrorMsg := sErrorMsg + 'Unregistered Account No '+ sAccCode +'-'+ dmGlobal.IntDataLookup.cdsluAccountByCodeACCNAME.AsString + #13;
        end;
      end;
    finally
      oProgress.ChangeBarCaption('Saving to database...');
      cdsUploadStock.ApplyUpdates(-1);

      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sErrorMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      FreeAndNil(oProgress);
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      if cdsStockDepList.Active then
        cdsStockDepList.Refresh;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmStockDepList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsStockDepListSDDATE.AsDateTime;
    iLedgerTransID := -1;
    iStockTransID  := cdsStockDepListSTOCKTRANSID.AsLargeInt;
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

procedure TfrmStockDepList.cdsStockDepACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', cdsStockDepACCID.Value, []) then
    begin
      cdsStockDepACCNO.AsString := cdsLuAccountACCCODE.AsString;

      FIsAccMargin := False;
      if cdsLuAccountPRDCODE.AsString = dmGlobal.RemoteServer.GetGlobalParamString('762') then
        FIsAccMargin := True;
    end;

    cdsStockDepACCTYPE.AsString       := cdsStockDepINVTYPE_TMP.AsString;
    cdsStockDepKSEIACC.AsString       := cdsStockDepKSEIACC_TMP.AsString;
    cdsStockDepACTLED_SEQID.AsInteger := cdsStockDepACTLED_SEQID_TMP.AsInteger;


    if FIsAccMargin and FIsStockMargin then
      cdsStockDepPLEDGED.AsString := '1'
    else
      cdsStockDepPLEDGED.AsString := '0';
  end;
end;

procedure TfrmStockDepList.cdsStockDepINSTRUMENT_IDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsStockDepINSTRUMENT_ID.Value, []) then
      cdsStockDepINSTRUMENT_CODE.AsString := cdsLuInstrumentAllLOCALCODE.AsString;
  end;
end;

procedure TfrmStockDepList.cmbMarketPropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  cdsStockDepList.Filter   := 'MARKETCODE = '+QuotedStr(cmbMarket.EditValue);
  cdsStockDepList.Filtered := True;
end;

procedure TfrmStockDepList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmStockDep;
end;

procedure TfrmStockDepList.dtTransDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  dmGlobal.StockDepDate := DateOf(dtTrans.EditValue);
end;

procedure TfrmStockDepList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '1111';
end;

procedure TfrmStockDepList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '0000';
end;

procedure TfrmStockDepList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField   := cdsStockDepListSDID;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  dtTrans.EditValue  := FTransDate;
  chStatus.EditValue := '1000';
end;

procedure TfrmStockDepList.FormShow(Sender: TObject);
begin
  inherited;
  dmGlobal.StockDepDate := DateOf(dtTrans.EditValue);

  FIsAccMargin   := False;
  FIsStockMargin := False;
end;

procedure TfrmStockDepList.popMasterPopup(Sender: TObject);
begin
  inherited;
  if cdsStockDepListPOSTED.AsString = '1' then
    actPosting.Enabled := False
  else
    actPosting.Enabled := True;
end;

Initialization
  RegisterClass(TfrmStockDepList);

end.
