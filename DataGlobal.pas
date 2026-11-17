unit DataGlobal;

interface

uses
  SysUtils,
  compNConfig,
  NLibraries,
  Classes,
  DBXDataSnap,
  ActnList,
  Graphics,
  GraphUtil,
  DB,
  DBClient,
  DSConnect,
  SqlExpr,
  NMenuBar,
  Forms,
  LMDDckSite,
  Controls,
  Windows,
  Messages,
  Dialogs,
  cxPropertiesStore,
  cxEditRepositoryItems,
  cxEdit,
  cxStyles,
  Variants,
  NClientDataset,
  cxClasses,
  ClassRemoteServer,
  ClassGeneral,
  Inifiles,
  NDatasetAction,
  JvDesktopAlert,
  DataLookup,
  DataReport,
  DBXCommon,
  DataConnector,
  DSService,
  HtmlHelpViewer,
  HookCreateFrm,
  DSHTTPLayer,
  StrUtils,
  RecError,
  ClassClientConst,
  Datasnap.DSSession,
  dxSkinsCore,
  cxLookAndFeels, dxSkinsForm, dxSkinLiquidSky, IndyPeerImpl,
  Datasnap.DSHTTPCommon, NUpdateCommand, cxDBEditRepository, cxDBEdit, Math,
  frxClass, frxRich, NDatasetActionLog, Vcl.AppEvnts, Vcl.ExtCtrls, JclStrings,
  dxNavBarCollns, Winapi.ShellAPI, frxServerClient,
  DataCBest, Data.DBXJSON, Data.FMTBcd, FormEditorData, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxDBExtLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxControls, cxGridCustomView,
  cxGrid, cxLocalization, XLSSheetData5, XML.XMLDoc, XML.XMLIntf, DateUtils,
  XLSReadWriteII5, XLSMergedCells5, System.JSON, IPPeerClient,
  Datasnap.DSCommon, System.Actions, DataSInvest, Data.DBXJSONCommon, System.Zip,
  dxDateRanges, Vcl.OleServer, KSEI_Recon_API_Com_TLB, Idx_Bofis_Api_Com_TLB,
  dxCore, dxScrollbarAnnotations, NAutoUpdateHttp, FormNewSplash, DataModel.SplashController,
  SplashCommUtils, System.ImageList, Vcl.ImgList, cxImageList,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

//  ;

const
  // Constants For Unique Window ClassName
  APP_ID = 'GAML_CLIENT_1';

  RICHMENU_MARG_X                     = 4;
  RICHMENU_MARG_Y                     = 2;
  RICHMENU_SEPARATOR_LEADING          = 6;
  RICHMENU_GUTTER_WIDTH               = 26;

  RICHMENU_SEPARATOR_BACKGROUND_COLOR = $00eee7dd;
  RICHMENU_SEPARATOR_LINE_COLOR       = $00c5c5c5;
  RICHMENU_GUTTER_COLOR               = $00eeeee9;
  RICHMENU_ITEM_BACKGROUND_COLOR      = $00fafafa;
  RICHMENU_ITEM_SELECTED_COLOR        = $00e6d5cb;
  RICHMENU_FONT_COLOR                 = $006e1500;
  RICHMENU_FONT_DISABLED_COLOR        = $00dec5d8;

  RICHMENU_GRADIENT_START1            = $00efe8e4;
  RICHMENU_GRADIENT_END1              = $00dec5b8;
  RICHMENU_GRADIENT_START2            = $00d8baab;
  RICHMENU_GRADIENT_END2              = $00efe8e4;


type

  TColumn = class(TObject)
   private
    FDisplayLabel : string;
    FWidth : Integer;
  public
    property DisplayLabel : string read FDisplayLabel write FDisplayLabel;
    property Width : Integer read FWidth write FWidth;
  end;

  TMyCallBack = class(TDBXCallback)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

  TdmGlobal = class(TDataModule)
    cnnMain: TSQLConnection;
    dspConnection: TDSProviderConnection;
    cdsGroups: TClientDataSet;
    cdsGroupPermission: TClientDataSet;
    aclMenu: TActionList;
    menuBar: TNMenuBar;
    actCurrency: TNAction;
    actBank: TNAction;
    actCustody: TNAction;
    actUserAdmin: TNAction;
    cdsUsers: TClientDataSet;
    cdsUserGroup: TClientDataSet;
    cdsOpenPermission: TClientDataSet;
    saGlobal: TcxStyleRepository;
    BlueToggle: TcxStyle;
    BlueToggle2: TcxStyle;
    DisableColor: TcxStyle;
    BackGrid: TcxStyle;
    BuyColor: TcxStyle;
    SellColor: TcxStyle;
    rowSelected: TcxStyle;
    colSelected: TcxStyle;
    backColor: TcxStyle;
    Repository: TcxEditRepository;
    luValidationMode: TcxEditRepositoryImageComboBoxItem;
    luValidationType: TcxEditRepositoryImageComboBoxItem;
    chkStandard: TcxEditRepositoryCheckBoxItem;
    luChargeType: TcxEditRepositoryImageComboBoxItem;
    luDebetCredit: TcxEditRepositoryImageComboBoxItem;
    luLocalForeign: TcxEditRepositoryImageComboBoxItem;
    luCustTYpe: TcxEditRepositoryImageComboBoxItem;
    luCustSubType: TcxEditRepositoryImageComboBoxItem;
    luGLPeriodStatus: TcxEditRepositoryImageComboBoxItem;
    luMonth: TcxEditRepositoryImageComboBoxItem;
    luUpdateStatus: TcxEditRepositoryImageComboBoxItem;
    luAgency: TcxEditRepositoryImageComboBoxItem;
    propsAppSetting: TcxPropertiesStore;
    actReport: TNAction;
    actAccount: TNAction;
    actAssignGroupAccount: TNAction;
    saStandard: TcxStyleRepository;
    cxStyle1: TcxStyle;
    luCheckIsManager: TcxEditRepositoryCheckBoxItem;
    actOMSGroup: TNAction;
    actCountry: TNAction;
    actMarket: TNAction;
    actInstrumentType: TNAction;
    actExtReff: TNAction;
    actInstrument: TNAction;
    actHoliday: TNAction;
    actProductype: TNAction;
    actProduct: TNAction;
    actBoard: TNAction;
    actBranch: TNAction;
    actBroker: TNAction;
    actBrokerBank: TNAction;
    actTIF: TNAction;
    actCPCenter: TNAction;
    actContactUsage: TNAction;
    actEmp: TNAction;
    actJournalType: TNAction;
    actCOA: TNAction;
    actGLFiscalYear: TNAction;
    actFeeType: TNAction;
    actProvince: TNAction;
    actCity: TNAction;
    actGLInput: TNAction;
    actGLListReport: TNAction;
    actBalanceSheet: TNAction;
    actProfitLost: TNAction;
    actConsolidatedTrialBalance: TNAction;
    actTrialBalanceByCcy: TNAction;
    actAccActivity: TNAction;
    actEntityInformation: TNAction;
    actAccountManagement: TNAction;
    actCustomerProfile: TNAction;
    actCashStockOutstanding: TNAction;
    actDailyTradeInput: TNAction;
    actDailyExchangeRate: TNAction;
    actDealTickets: TNAction;
    actContracts: TNAction;
    actTransactionLegs: TNAction;
    actConfirmationList: TNAction;
    actImportDTE: TNAction;
    actOrderList: TNAction;
    actContractHeaderList: TNAction;
    actDailyTransaction: TNAction;
    actProcessNextTradingDate: TNAction;
    actSettlementInstruction: TNAction;
    actClosingPrice: TNAction;
    actCashDeposit: TNAction;
    actCashWithdraw: TNAction;
    actAgingARAP: TNAction;
    actCashPosition: TNAction;
    actStockDeposit: TNAction;
    actStockWithdraw: TNAction;
    actStockPortofolio: TNAction;
    actStockSettlement: TNAction;
    actFRColDef: TNAction;
    actFRRowDef: TNAction;
    actFRReportDef: TNAction;
    actReportGenerator: TNAction;
    actOrderValidationClass: TNAction;
    actFeeClass: TNAction;
    actSettlClass: TNAction;
    actGLMapClass: TNAction;
    actOpeningAccounts: TNAction;
    actCorpAction: TNAction;
    actStockHaircut: TNAction;
    actPayBankTrans: TNAction;
    actBankCharges: TNAction;
    actBankChargesType: TNAction;
    actClearingTrans: TNAction;
    actStockRecImport: TNAction;
    actCcyRevaluation: TNAction;
    actPortoRevaluation: TNAction;
    actCAType: TNAction;
    actStockIPO: TNAction;
    actImportClearingResult: TNAction;
    actMargin: TNAction;
    actIntrsClasses: TNAction;
    actIntrsBal: TNAction;
    actSQLExecutor: TNAction;
    actBusAlert: TNAction;
    actFSLAcc: TNAction;
    actSecLedgerAcc: TNAction;
    actRepoClass: TNAction;
    actRepoContract: TNAction;
    actRepoIntrsBal: TNAction;
    actOmgeoMonitor: TNAction;
    actBatchProcess: TNAction;
    actUserAccounts: TNAction;
    actSecLedger: TNAction;
    actFSLTrans: TNAction;
    actReportMaintenance: TNAction;
    GreenToggle: TcxStyle;
    actCSOA: TNAction;
    cdsUserLayout: TNClientDataset;
    skinController: TdxSkinController;
    actSecLedgerBal: TNAction;
    actCSOACashOnly: TNAction;
    actCSOAByTrans: TNAction;
    actBrkStockSett: TNAction;
    actCStockSettle: TNAction;
    actStockMovement: TNAction;
    actUserMonitoring: TNAction;
    actCashSettlement: TNAction;
    actBrokerCashSettle: TNAction;
    actClientCashSettle: TNAction;
    luInterestBalType: TcxEditRepositoryImageComboBoxItem;
    luCalcType: TcxEditRepositoryImageComboBoxItem;
    GlobalCallbackManager: TDSClientCallbackChannelManager;
    actMarketInfo: TNAction;
    actCharge: TNAction;
    actChargeTable: TNAction;
    actChannel: TNAction;
    actCommission: TNAction;
    actCommTable: TNAction;
    luChargeBasis: TcxEditRepositoryImageComboBoxItem;
    luCommCalcMethod: TcxEditRepositoryImageComboBoxItem;
    actSales: TNAction;
    luChargeRateSource: TcxEditRepositoryImageComboBoxItem;
    actNetARAP: TNAction;
    actInterest: TNAction;
    actInterestTable: TNAction;
    cdsGroupsGROUPID: TStringField;
    cdsGroupsAPPID: TStringField;
    cdsGroupsGROUPDESC: TStringField;
    cdsGroupsMODDA: TDateTimeField;
    cdsGroupsMODUI: TStringField;
    cdsGroupsINSDA: TDateTimeField;
    cdsGroupsINSUI: TStringField;
    cdsGroupPermissionGROUPID: TStringField;
    cdsGroupPermissionAPPID: TStringField;
    cdsGroupPermissionPERMISSION: TStringField;
    cdsGroupPermissionMODDA: TDateTimeField;
    cdsGroupPermissionMODUI: TStringField;
    cdsGroupPermissionINSDA: TDateTimeField;
    cdsGroupPermissionINSUI: TStringField;
    cdsUsersUSERID: TStringField;
    cdsUsersAPPID: TStringField;
    cdsUsersUSERNAME: TStringField;
    cdsUsersCRETEDATE: TDateTimeField;
    cdsUsersUSERSTATE: TStringField;
    cdsUsersUSERPWD: TStringField;
    cdsUsersLASTCHANGEPWD: TDateTimeField;
    cdsUsersLOCKED: TStringField;
    cdsUsersWRONGPWDCOUNT: TIntegerField;
    cdsUserGroupUSERID: TStringField;
    cdsUserGroupAPPID: TStringField;
    cdsUserGroupGROUPID: TStringField;
    cdsOpenPermissionPERMISSION: TStringField;
    cdsUserLayoutUSERID: TStringField;
    cdsUserLayoutAPPID: TStringField;
    cdsUserLayoutFORMNAME: TStringField;
    cdsUserLayoutLAYOUTSETTING: TWideMemoField;
    cdsUserLayoutMODDA: TDateTimeField;
    cdsUserLayoutMODUI: TStringField;
    cdsMainTableList: TClientDataSet;
    cdsUpdateTableList: TClientDataSet;
    CommandUpdate: TNCommandUpdateControl;
    cdsMainTableListTABLE_NAME: TStringField;
    cdsUpdateTableListTABLE_NAME: TStringField;
    cdsLogTableList: TClientDataSet;
    cdsLogTableListTABLE_NAME: TStringField;
    luCurrency: TcxEditRepositoryLookupComboBoxItem;
    luMarket: TcxEditRepositoryLookupComboBoxItem;
    luInstrumentType: TcxEditRepositoryLookupComboBoxItem;
    luBroker: TcxEditRepositoryLookupComboBoxItem;
    luBoard: TcxEditRepositoryLookupComboBoxItem;
    luInstrument: TcxEditRepositoryLookupComboBoxItem;
    luChannel: TcxEditRepositoryLookupComboBoxItem;
    luChargeTableBasis: TcxEditRepositoryImageComboBoxItem;
    rgChargeBasis: TcxEditRepositoryRadioGroupItem;
    luCommissionCalcMethod: TcxEditRepositoryImageComboBoxItem;
    rgCommissionCalcMethod: TcxEditRepositoryRadioGroupItem;
    luBranch: TcxEditRepositoryLookupComboBoxItem;
    luDealer: TcxEditRepositoryLookupComboBoxItem;
    actDealer: TNAction;
    actSalesAgent: TNAction;
    luSalesAgent: TcxEditRepositoryLookupComboBoxItem;
    luSales: TcxEditRepositoryLookupComboBoxItem;
    luBuySell: TcxEditRepositoryImageComboBoxItem;
    actGLPeriod: TNAction;
    luFiscalYear: TcxEditRepositoryLookupComboBoxItem;
    luAccount: TcxEditRepositoryLookupComboBoxItem;
    luCharge: TcxEditRepositoryLookupComboBoxItem;
    luChargeByMarket: TcxEditRepositoryLookupComboBoxItem;
    luCommission: TcxEditRepositoryLookupComboBoxItem;
    luCommissionByMarket: TcxEditRepositoryLookupComboBoxItem;
    luProductType: TcxEditRepositoryLookupComboBoxItem;
    luProduct: TcxEditRepositoryLookupComboBoxItem;
    luActLedgerTypeSystem: TcxEditRepositoryImageComboBoxItem;
    luActLedgerTypeGL_SGL: TcxEditRepositoryImageComboBoxItem;
    luActLedgerTypeCashStock: TcxEditRepositoryImageComboBoxItem;
    luCashStock: TcxEditRepositoryImageComboBoxItem;
    luActLedgerType: TcxEditRepositoryLookupComboBoxItem;
    luTradingLimitValidationModel: TcxEditRepositoryImageComboBoxItem;
    luNationality: TcxEditRepositoryLookupComboBoxItem;
    luCountry: TcxEditRepositoryLookupComboBoxItem;
    luBank: TcxEditRepositoryLookupComboBoxItem;
    luProvince: TcxEditRepositoryLookupComboBoxItem;
    luSecAnnualIncome: TcxEditRepositoryLookupComboBoxItem;
    luCity: TcxEditRepositoryLookupComboBoxItem;
    luExtConfSystem: TcxEditRepositoryLookupComboBoxItem;
    actAccountLedgerType: TNAction;
    actAccountLedgerClass: TNAction;
    actTradingLimitClass: TNAction;
    rgAcceptRejectApproval: TcxEditRepositoryRadioGroupItem;
    luActLedgerClass: TcxEditRepositoryLookupComboBoxItem;
    luTradingLimitClass: TcxEditRepositoryLookupComboBoxItem;
    luInterest: TcxEditRepositoryLookupComboBoxItem;
    luGroupAccount: TcxEditRepositoryLookupComboBoxItem;
    rgPLBS: TcxEditRepositoryRadioGroupItem;
    rgYesNo: TcxEditRepositoryRadioGroupItem;
    luBusinessType: TcxEditRepositoryLookupComboBoxItem;
    luEducationalBackground: TcxEditRepositoryImageComboBoxItem;
    luMaritalStatus: TcxEditRepositoryImageComboBoxItem;
    rgSex: TcxEditRepositoryRadioGroupItem;
    luOccupation: TcxEditRepositoryImageComboBoxItem;
    rgSourceFundRet: TcxEditRepositoryRadioGroupItem;
    rgAnnualIncome: TcxEditRepositoryRadioGroupItem;
    rgInvestmentObjectives: TcxEditRepositoryRadioGroupItem;
    luIDType: TcxEditRepositoryImageComboBoxItem;
    rgEstDailyTrading: TcxEditRepositoryRadioGroupItem;
    rgInvestExperience: TcxEditRepositoryRadioGroupItem;
    luCompanyType: TcxEditRepositoryImageComboBoxItem;
    rgSourceFundIns: TcxEditRepositoryRadioGroupItem;
    luInsBusType: TcxEditRepositoryImageComboBoxItem;
    luTrackInfoType: TcxEditRepositoryImageComboBoxItem;
    luTrackInfoLevel: TcxEditRepositoryImageComboBoxItem;
    luEntityStatus: TcxEditRepositoryImageComboBoxItem;
    luEntityType: TcxEditRepositoryImageComboBoxItem;
    luSourceFund: TcxEditRepositoryImageComboBoxItem;
    luInvestmentObjectives: TcxEditRepositoryImageComboBoxItem;
    luAccountStatus: TcxEditRepositoryImageComboBoxItem;
    luTCModel: TcxEditRepositoryImageComboBoxItem;
    rgTCSendBy: TcxEditRepositoryRadioGroupItem;
    luCashSettleBy: TcxEditRepositoryImageComboBoxItem;
    luStockSettleBy: TcxEditRepositoryImageComboBoxItem;
    luBankChargeType: TcxEditRepositoryImageComboBoxItem;
    luIPOStatus: TcxEditRepositoryImageComboBoxItem;
    actEvent: TNAction;
  	actIPO: TNAction;
    luGLAccountNo: TcxEditRepositoryLookupComboBoxItem;
    luGLAccountName: TcxEditRepositoryLookupComboBoxItem;
    luCPCenter: TcxEditRepositoryLookupComboBoxItem;
  	luInstrumentBonds: TcxEditRepositoryLookupComboBoxItem;
    luBoardCounterPartType: TcxEditRepositoryImageComboBoxItem;
    rptDesigner: TfrxReport;
    actProcessMonthlyStatement: TNAction;
    actBankRecon: TNAction;
	  actInstrumentBonds: TNAction;
    actBondsDealTicket: TNAction;
    actBondsClosingPrice: TNAction;
    cdsUsersHARDLIMIT: TFloatField;
    cdsUsersSOFTLIMIT: TFloatField;
    cdsUsersTEMPLIMIT: TFloatField;
	  actLetterOfConfirm: TNAction;
    actStockSettleInstruction: TNAction;
    actClientInquiry: TNAction;
    luActLedCashByAccount: TcxEditRepositoryLookupComboBoxItem;
    luActLedStockByAccount: TcxEditRepositoryLookupComboBoxItem;
    luBankByAccount: TcxEditRepositoryLookupComboBoxItem;
    luBankRDNByAccount: TcxEditRepositoryLookupComboBoxItem;
    luBatchProcessStatus: TcxEditRepositoryImageComboBoxItem;
    actStockPosition: TNAction;
    actStockAging: TNAction;
    luTradingAccount: TcxEditRepositoryLookupComboBoxItem;
    luAccountSubType: TcxEditRepositoryImageComboBoxItem;
    actFacilitationTrade: TNAction;
    actWarehouseTrade: TNAction;
    actCrossTomTrade: TNAction;
    luBatchCategory: TcxEditRepositoryLookupComboBoxItem;
    luBatchPeriod: TcxEditRepositoryImageComboBoxItem;
    luBatchDayType: TcxEditRepositoryImageComboBoxItem;
    actBatchConfig: TNAction;
    ackBankReceive: TNAction;
  	actDailyTradeSum: TNAction;
    luSuspendList: TcxEditRepositoryLookupComboBoxItem;
    luAddressTypeIndividual: TcxEditRepositoryLookupComboBoxItem;
    actCompany: TNAction;
    luEntity: TcxEditRepositoryLookupComboBoxItem;
    luClientBroker: TcxEditRepositoryImageComboBoxItem;
    luReceiveDeliver: TcxEditRepositoryImageComboBoxItem;
    luReceivementPayment: TcxEditRepositoryImageComboBoxItem;
	  luAccType: TcxEditRepositoryLookupComboBoxItem;
    actCompanyAccount: TNAction;
    actAccLedgerTemplate: TNAction;
    actCashFlow: TNAction;
    actCBestInstruction: TNAction;
    luAssetDepreciationMethod: TcxEditRepositoryImageComboBoxItem;
    luAssetGroup: TcxEditRepositoryLookupComboBoxItem;
    luAssetDeprecTable: TcxEditRepositoryLookupComboBoxItem;
    actFixedAssetGroup: TNAction;
    actFixedAsset: TNAction;
    actDepreciationTable: TNAction;
    ActionLog: TNDatasetActionLog;
    ApplicationEvents: TApplicationEvents;
    TimerGlobal: TTimer;
    actAccLedgerBalPosition: TNAction;
    luAllocationAccount: TcxEditRepositoryLookupComboBoxItem;
    luCompany: TcxEditRepositoryLookupComboBoxItem;
    luInstructionType: TcxEditRepositoryImageComboBoxItem;
    luTransType: TcxEditRepositoryLookupComboBoxItem;
    actReconcileDTE: TNAction;
    luDealTicketStat: TcxEditRepositoryImageComboBoxItem;
    luDealTicketSTATUS: TcxEditRepositoryImageComboBoxItem;
    luExternalSystem: TcxEditRepositoryLookupComboBoxItem;
    ChangedData: TcxStyle;
    luContactUsage: TcxEditRepositoryLookupComboBoxItem;
    luCompanyAccount: TcxEditRepositoryLookupComboBoxItem;
    luLedgerAccByAccount: TcxEditRepositoryLookupComboBoxItem;
    luCompanyAccountSubType: TcxEditRepositoryImageComboBoxItem;
    cdsUserFavorites: TNClientDataset;
    cdsUserFavoritesUSERID: TStringField;
    cdsUserFavoritesAPPID: TStringField;
    cdsUserFavoritesACTIONNAME: TStringField;
    luEmailType: TcxEditRepositoryImageComboBoxItem;
    actEmailConfig: TNAction;
    actEmailMonitoring: TNAction;
    luEmailStatus: TcxEditRepositoryImageComboBoxItem;
    luCashVoucherType: TcxEditRepositoryImageComboBoxItem;
    actCashVoucher: TNAction;
    actStockVoucher: TNAction;
    actJournalList: TNAction;
    luJournalTypeManual: TcxEditRepositoryLookupComboBoxItem;
    luUser: TcxEditRepositoryLookupComboBoxItem;
    actUserActivity: TNAction;
    luCustody: TcxEditRepositoryLookupComboBoxItem;
    ReportServerConnection: TfrxServerConnection;
    ReportClient: TfrxReportClient;
    actGLActivity: TNAction;
    actReportSalesActivity: TNAction;
    actReportClientActivity: TNAction;
    luSettleReason: TcxEditRepositoryImageComboBoxItem;
    luStockPurpose: TcxEditRepositoryImageComboBoxItem;
    luBankAccount: TcxEditRepositoryLookupComboBoxItem;
    actReceiptList: TNAction;
  	luCCType: TcxEditRepositoryLookupComboBoxItem;
    actCCClass: TNAction;
    luSalesType: TcxEditRepositoryLookupComboBoxItem;
    actPermissions: TNAction;
    cdsPermission: TClientDataSet;
    cdsPermissionForm: TClientDataSet;
    cdsPermissionFormAction: TClientDataSet;
    cdsPermissionPERMISSIONNAME: TStringField;
    cdsPermissionPERMISSIONDESC: TStringField;
    cdsPermissionFormPERMISSIONNAME: TStringField;
    cdsPermissionFormFORMNAME: TStringField;
    cdsPermissionFormActionPERMISSIONNAME: TStringField;
    cdsPermissionFormActionFORMNAME: TStringField;
    cdsPermissionFormActionACTIONNAME: TStringField;
    actRDNRequest: TNAction;
    actAccLegClass: TNAction;
    luAccLegClass: TcxEditRepositoryLookupComboBoxItem;
    luBankCustody: TcxEditRepositoryLookupComboBoxItem;
    luCRDCONCLASS: TcxEditRepositoryLookupComboBoxItem;
  	actLendBorrow: TNAction;
    actCorpAct: TNAction;
    actAccountSuspend: TNAction;
    actClosingProcess: TNAction;
    actAccUnSuspend: TNAction;
    actAccDorman: TNAction;
    luCustudyType: TcxEditRepositoryImageComboBoxItem;
    actUserDataOwner: TNAction;
    cdsUsersMODDA: TDateTimeField;
    cdsUsersMODUI: TStringField;
    cdsUsersAPPDA: TDateTimeField;
    cdsUsersAPPUI: TStringField;
    cdsUsersUNDER4Y: TIntegerField;
    cdsUsersUNDER4YDA: TDateTimeField;
    cdsUsersNOTES4Y: TStringField;
    cdsUsersISDEL: TIntegerField;
    cdsUsersID: TLargeintField;
    cdsUserGroupMODDA: TDateTimeField;
    cdsUserGroupMODUI: TStringField;
    cdsUserGroupAPPDA: TDateTimeField;
    cdsUserGroupAPPUI: TStringField;
    cdsUserGroupUNDER4Y: TIntegerField;
    cdsUserGroupUNDER4YDA: TDateTimeField;
    cdsUserGroupNOTES4Y: TStringField;
    cdsUserGroupISDEL: TIntegerField;
    cdsUserGroupID: TLargeintField;
    actUserConfiguration: TNAction;
    actCashMutation: TNAction;
    actGLJournal: TNAction;
    ncDisableCOB: TcxStyle;
    cdsGlobal: TNClientDataset;
    actAssignGroupToCOB: TNAction;
    actGroupAdmin: TNAction;
    actKSEIRequest: TNAction;
    actKSEIRDNUpload: TNAction;
    luCashInstr: TcxEditRepositoryImageComboBoxItem;
    luStockDelInstr: TcxEditRepositoryImageComboBoxItem;
    luStockRecInstr: TcxEditRepositoryImageComboBoxItem;
    actAccCreditLimit: TNAction;
    actReportStatementOfAccount: TNAction;
    actMonthlyStatement: TNAction;
    actExpiredDocList: TNAction;
    actCashProjection: TNAction;
    actStockDelRev: TNAction;
    actContractBonds: TNAction;
    actCTPRecon: TNAction;
    actBondsDealTicketContract: TNAction;
    luAuthPerson: TcxEditRepositoryLookupComboBoxItem;
    luDocType: TcxEditRepositoryImageComboBoxItem;
    actReportCashDepositList: TNAction;
    actReportCashWitdrawList: TNAction;
    actReportStockPosBySalesAcc: TNAction;
    actReportStockPosBySalesStock: TNAction;
    actAuthPerson: TNAction;
    actVoucherSummary: TNAction;
    actReportARAPSummary: TNAction;
    actBusinessLine: TNAction;
    actJournalMap: TNAction;
    actReportCashVoucher: TNAction;
    actReportTest: TNAction;
    actGLJournalMap: TNAction;
    actIDXTrade: TNAction;
    actBatchConfigSetting: TNAction;
    actIDXOrder: TNAction;
  	actAccStatList: TNAction;
    actReportContractBondTrade: TNAction;
    actBussType: TNAction;
    luBussCat: TcxEditRepositoryLookupComboBoxItem;
    luBankRDN: TcxEditRepositoryLookupComboBoxItem;
    luBusinessLine: TcxEditRepositoryLookupComboBoxItem;
    ludbOccupation: TcxEditRepositoryLookupComboBoxItem;
    luInstrumentAll: TcxEditRepositoryLookupComboBoxItem;
    luRisk: TcxEditRepositoryImageComboBoxItem;
    luFamilyRelationship: TcxEditRepositoryImageComboBoxItem;
    luCustEntity: TcxEditRepositoryLookupComboBoxItem;
    luIPOBookOrderType: TcxEditRepositoryImageComboBoxItem;
    luIPOBookType: TcxEditRepositoryImageComboBoxItem;
    luCustAccount: TcxEditRepositoryLookupComboBoxItem;
    luIPODistType: TcxEditRepositoryImageComboBoxItem;
    actBAE: TNAction;
    luBAE: TcxEditRepositoryLookupComboBoxItem;
    actSOP: TNAction;
    actDHK: TNAction;
    LuPaymentReceiveDeliver: TcxEditRepositoryImageComboBoxItem;    
  	actOpenDorman: TNAction;
    luSettleTypeCash: TcxEditRepositoryLookupComboBoxItem;
    luSettleTypeStock: TcxEditRepositoryLookupComboBoxItem;
    luSettleTransType: TcxEditRepositoryLookupComboBoxItem;
    luSettleTypeAll: TcxEditRepositoryLookupComboBoxItem;
    actARAPReport: TNAction;
	  actReverseRepo: TNAction;
    actBankMutation: TNAction;
    luInstrumentStock: TcxEditRepositoryLookupComboBoxItem;
    SettleSide: TcxEditRepositoryImageComboBoxItem;
    actOTCInstruction: TNAction;
    actKSEIAccRecon: TNAction;
    actReportFundLedgerBalance: TNAction;
    actReportSecuritiesLedgerBalance: TNAction;
    luInterestType: TcxEditRepositoryLookupComboBoxItem;
    luInterestByType: TcxEditRepositoryLookupComboBoxItem;
    actReportFundLedgerJournal: TNAction;
    luCashMutationType: TcxEditRepositoryImageComboBoxItem;
    actWHT: TNAction;
    actReportSalesCommission: TNAction;
    actReportClientCommission: TNAction;
    actReportClientCommissionByRange: TNAction;
	  actBankPaymentList: TNAction;
    actBankReceiveList: TNAction;
    actDHKCash: TNAction;
    luAccountName: TcxEditRepositoryLookupComboBoxItem;
    actHandOverExer: TNAction;
	  actCorpactCashLoanApproval: TNAction;
    actExerciseMonitoring: TNAction;
    luJrnType: TcxEditRepositoryLookupComboBoxItem;
    actCashDCNotes: TNAction;
    luTaxPayerStatus: TcxEditRepositoryImageComboBoxItem;
    luSOPType: TcxEditRepositoryImageComboBoxItem;
    actDOT: TNAction;
    GridFilterBox: TcxStyle;
    actBalanceSheetReport: TNAction;
    actReportTrialBalance: TNAction;
    actReportProfitLossStatement: TNAction;
    actAccountInterest: TNAction;
    actProvisionPortFolioM2M: TNAction;
    luInstrumentGroupType: TcxEditRepositoryLookupComboBoxItem;
    actInterestTrack: TNAction;
    actReportSecuritiesLedgerJournal: TNAction;
    cdsCorpactMessage: TNClientDataset;
    actUploadDataFeedback: TNAction;
    cdsCorpactMessageNGRG_CUMDATE: TDateField;
    cdsCorpactMessageDISTDATE: TDateField;
    cdsCorpactMessagePAYDATE: TDateField;
    cdsCorpactMessageSTOCKCODE: TStringField;
    cdsCorpactMessageCATYPE: TStringField;
    actCashMovement: TNAction;
    actACSList: TNAction;
    actTenderOffer: TNAction;
    luEmailTypes: TcxEditRepositoryLookupComboBoxItem;
    cdsHelpConfig: TClientDataSet;
    cdsHelpConfigClass: TStringField;
    cdsHelpConfigCaption: TStringField;
    cdsHelpConfigHelpContext: TIntegerField;
    SqlServerMethod1: TSqlServerMethod;
    luMTITransType: TcxEditRepositoryImageComboBoxItem;
    luMTIMOC: TcxEditRepositoryImageComboBoxItem;
    luMTIEOC: TcxEditRepositoryImageComboBoxItem;
    actMTITrans: TNAction;
    actMTIRecord: TNAction;
    actMTIConfig: TNAction;
    luMTIRecord: TcxEditRepositoryLookupComboBoxItem;
    luMTITrans: TcxEditRepositoryLookupComboBoxItem;
    luMTITransRecord: TcxEditRepositoryLookupComboBoxItem;
    luMTISourceData: TcxEditRepositoryImageComboBoxItem;
    luMTIField: TcxEditRepositoryLookupComboBoxItem;
    luMTIDatasetField: TcxEditRepositoryLookupComboBoxItem;
    actAccOmgeoConfig: TNAction;
    luMTIConfig: TcxEditRepositoryLookupComboBoxItem;
    luBankCode: TcxEditRepositoryLookupComboBoxItem;
    actReportStockActProfitLoss: TNAction;
    actTaxInvoice: TNAction;
    actTaxOffNo: TNAction;
    actGLWithFL: TNAction;
    actCompanyBankRecon: TNAction;
    actGLWithBankRecon: TNAction;
    actGLWithSLRecon: TNAction;
    luAccountRDN: TcxEditRepositoryLookupComboBoxItem;
    cdsDatasetInformation: TNClientDataset;
    cdsDatasetInformationDATAMODULE: TStringField;
    cdsDatasetInformationDATASET: TStringField;
    cdsDatasetInformationTABLENAME: TStringField;
    cdsDatasetInformationPRIMARYKEY: TStringField;
    luInsertUpdateDelete: TcxEditRepositoryImageComboBoxItem;
    cdsLastModuleParam: TNClientDataset;
    cdsLastModuleParamMODULENAME: TStringField;
    cdsLastModuleParamPARAMVALUE: TStringField;
    cdsApproveRequest: TNClientDataset;
    cdsApproveRequestMODULE: TStringField;
    cdsApproveRequestKEYID: TStringField;
    cdsApproveRequestSTATE: TStringField;
    cdsApproveRequestNOTES: TMemoField;
    cdsApproveRequestXMLDATA: TMemoField;
    cdsApproveRequestREQDA: TDateTimeField;
    cdsApproveRequestREQUI: TStringField;
    cdsApproveRequestAPPDA: TDateTimeField;
    cdsApproveRequestAPPUI: TStringField;
    cdsApproveRequestAPPSTATE: TStringField;
    actApprovalRequest: TNAction;
    cdsModule: TNClientDataset;
    cdsModuleMODULE: TStringField;
    cdsModuleDESCRIPTION: TStringField;
    cdsModuleDEFAULTFORM: TStringField;
    cdsModuleCONTROL4EYES: TStringField;
    actApprovalHistory: TNAction;
    luApprovalState: TcxEditRepositoryImageComboBoxItem;
    actMyApprovalRequestList: TNAction;
    actReportList: TNAction;
    actGridReportDesigner: TNAction;
    luReportCategory: TcxEditRepositoryLookupComboBoxItem;
    luActLedgerTypeOwner: TcxEditRepositoryImageComboBoxItem;
    luTaxID: TcxEditRepositoryLookupComboBoxItem;
    luAllClientRetailInstitution: TcxEditRepositoryImageComboBoxItem;
    luInvestorAsset: TcxEditRepositoryImageComboBoxItem;
    luInvestorOperatingProfit: TcxEditRepositoryImageComboBoxItem;
    luInvestorCategory: TcxEditRepositoryImageComboBoxItem;
    luClientAssetOwner: TcxEditRepositoryImageComboBoxItem;
    luSupplementaryDocType: TcxEditRepositoryImageComboBoxItem;
    luWorkflowStatus: TcxEditRepositoryImageComboBoxItem;
    luKSEIAccType: TcxEditRepositoryImageComboBoxItem;
    luAddressTypeInstitution: TcxEditRepositoryLookupComboBoxItem;
    luYesNo: TcxEditRepositoryImageComboBoxItem;
    luGL_FL_SL: TcxEditRepositoryImageComboBoxItem;
    luJournalType: TcxEditRepositoryLookupComboBoxItem;
    luSIType: TcxEditRepositoryLookupComboBoxItem;
    actGLType: TNAction;
    actCashPositionMovement: TNAction;
    luLedgerTypeByCatCode: TcxEditRepositoryLookupComboBoxItem;
    luAccountInit: TcxEditRepositoryLookupComboBoxItem;
    actStockOutstanding: TNAction;
    actInterestBal: TNAction;
    actCorpActEnt: TNAction;
    actReportStockPosByClientAcc: TNAction;
    actReportClientPortofolio: TNAction;
    actReportDormantClientList: TNAction;
    actReportDailyTradeByClientOrClientType: TNAction;
    actReportDailyTradeByAgent: TNAction;
    actGLInterface: TNAction;
    actReportClientDetail: TNAction;
    actReportMarginCashAccountBalance: TNAction;
    actReportTotalShareValue: TNAction;
    actReportTotalDetailShareCollateral: TNAction;
    actReportMarketCapitalization: TNAction;
    actReportTop15SingleStockCashClient: TNAction;
    actReportTotalDetailOutstandingShareValue: TNAction;
    actReportTotalOutstandingCashClient: TNAction;
    actReportTotalLoanMarginClient: TNAction;
    actReportAgingMonitoring: TNAction;
    actReportProductList: TNAction;
    actReportClientAccountBalanceSummary: TNAction;
    actReportSummaryActivityByAgentPerClient: TNAction;
    actReportDetailedPortofolioClient: TNAction;
    actReportMarginAccountSummary: TNAction;
    actReportDetailOutstandingCashClient: TNAction;
    actReportExceptionalReport: TNAction;
    actReportForceSelling: TNAction;
    actReportDetailOutstandingMarginClient: TNAction;
    actReportTotalDetailOutstandingContraClient: TNAction;
    actReportListStockEfek: TNAction;
    actReportMarginYU: TNAction;
    luRptGrpType: TcxEditRepositoryLookupComboBoxItem;
    actRptGrpType: TNAction;
    actReportType: TNAction;
	  actCreteNewREPO: TNAction;
    actMarginMonitoring: TNAction;
    actReportDefinition: TNAction;
    actReportSource: TNAction;
    actReportNTransform: TNAction;
    actGenerateReport: TNAction;
    actCreateReport: TNAction;
    actCheckDifferent: TNAction;
    actSupportingData: TNAction;
    actSetOff: TNAction;
    actCashBalanceAccount: TNAction;
    actLTHReport: TNAction;
    actPortofolioDetailReport: TNAction;
    menuBarReport: TNMenuBar;
    luRptType: TcxEditRepositoryLookupComboBoxItem;
    luSelectDataReport: TcxEditRepositoryLookupComboBoxItem;
    actReportSupportingDataMKBD: TNAction;
    actReportCashAccountStatement: TNAction;
    actReportStatementofAccountCSO: TNAction;
    actReportInvestorOpeningAccount: TNAction;
    actReportNotificationToClient: TNAction;
    actReportAuditLog: TNAction;
    luOrderSource: TcxEditRepositoryImageComboBoxItem;
    actREPOMonitoring: TNAction;
    actChangeCollateral: TNAction;
    actReportTop15SingleExposureOnMarginAndRepo: TNAction;
    actReportCombinedAccountReceivablePayable: TNAction;
    actReportMarginAccountSummaryByAgent: TNAction;
    actReportMarginAccountSummaryByClient: TNAction;
    actReportMarginAccountSummaryUSD: TNAction;
    actReportExposureReport: TNAction;
    actReportMarginStatement: TNAction;
    actReportSingleCounterMargin: TNAction;
    actReportOutstandingRepoDueForSettlement: TNAction;
    actReportRegularAccountSummary: TNAction;
    actReportForecastCombinedACReceivablePayable: TNAction;
    actReportOutstandingTransactionWithSettlementMovement: TNAction;
    actReportMarginTPlusFinancingCreditRisk: TNAction;
    actReportShareBalancesByClient: TNAction;
    actReportClientActivityAndSharesMovement: TNAction;
    actReportMarginProduct: TNAction;
    actReportListOfNewClient: TNAction;
    actReportRegularSummaryCrossBorderTrades: TNAction;
    actReportShareBalanceWithShareValue: TNAction;
    actReportLaporanREPOReverseREPO: TNAction;
    actReportCashStatement: TNAction;
    actReportAnnouncementWarrant: TAction;
    actReportBorrowingFeeReportInternalCSI: TAction;
    actReportBorrowingFeeReportNasabah: TAction;
    actReportBukuPembantuEfekAMT: TAction;
    actReportCBestAndClientCustodyReconciliation: TAction;
    actReportCBestDailyTradeList: TAction;
    actReportConfirmationCorpactDetailReverseStock: TAction;
    actReportDailyCommision: TAction;
    actReportDailyReportOddLotPosition: TAction;
    actReportDailyTransactionReport: TAction;
    actReportLaporanKegiatanPerantaraPedagangEfek: TAction;
    actReportLaporanPendukungVD55: TAction;
    actReportLaporanPendukungVD57: TAction;
    actReportMonthlySafeCustodyStatementOfAccount: TAction;
    actReportMovementSafeCustody: TAction;
    actReportOutstandingTradesDueForDelivery: TAction;
    actReportPembayaranSahamIPO: TAction;
    actReportPendukungDailyTransaction: TAction;
    actReportPortfolioAndCashAccountStatement: TAction;
    actReportReconPortofolioReportUntukIDX: TAction;
    actReportRekapInstruksiDistribusiIPO: TAction;
    actReportRekapitulasiTransaksiSaham: TAction;
    actReportSafeKeepingFeeStatement: TAction;
    actReportScheduleCorporateAction: TAction;
    actReportSettlementInstructionForBondTransaction: TAction;
    actReportShareBalancesByAgent: TAction;
    actReportShareBalancesByAgent2: TAction;
    actReportShareBalancesByClient1: TAction;
    actReportShareBalancesByClient2: TAction;
    actReportShareBalancesByProduct: TAction;
    actReportStockHoldingByClient: TAction;
    actReportStockHoldingByAgent: TAction;
    actReportStockHoldingByStock: TAction;
    actReportSummaryObligasi: TAction;
    actReportSummarySuspenseAccount: TAction;
    actReportTCObligasi: TAction;
    actReportTradeListWithCustodianBank: TAction;
    actReportBOFISDHKMatch: TAction;
    actReportCashDividendEntitlementListing: TAction;
    actReportCashDividendPayment: TAction;
    actReportInterestPrincipalizedForCashAccount: TAction;
    actReportMonthlyLTAB: TAction;
    actReportOutstandingTransactionDueForSettlement: TAction;
    actReportOutstandingTradesDueForSettlement: TAction;
    actReportRecommendedTransactionsForSetoffRollOver: TAction;
    actReportRepoDailyTrade: TAction;
    actReportCorpactEntitlementListing: TNAction;
    actReportClientTradeActivitiesByPurchaseSales: TNAction;
    actReportAgentRanking: TNAction;
    luApproveMethod: TcxEditRepositoryImageComboBoxItem;
    actReportMarginMKBD: TNAction;
    actReportDailyTradeDetail: TNAction;
    actReportValueAddedTax: TNAction;
    actFidessaLimit: TNAction;
    actDailyMarketTransaction: TNAction;
    actReportDailyCommisionGrid: TNAction;
    actReportWashSale: TNAction;
    actReportCreditLimitViolation: TNAction;
    actReportValueAddedTaxGrid: TNAction;
    actReportClientCommisionList: TNAction;
    luChargeConfig: TcxEditRepositoryLookupComboBoxItem;
    actReportTransactionRecapitulation: TNAction;
    actReportTradeAccountInterface: TNAction;
    GridRepository: TcxGridViewRepository;
    gvwLuMarket: TcxGridDBBandedTableView;
    gvwLuMarketMARKETCODE: TcxGridDBBandedColumn;
    gvwLuMarketMARKETDESC: TcxGridDBBandedColumn;
    luExtMarket: TcxEditRepositoryExtLookupComboBoxItem;
    actCashLedgerBalance: TNAction;
    actStockLedgerBalance: TNAction;
    actReportDailyPaymentReceive: TNAction;
    luRptTypeAll: TcxEditRepositoryLookupComboBoxItem;
    luFilterDateBy: TcxEditRepositoryImageComboBoxItem;
    actCashTransaction: TNAction;
    luCAType: TcxEditRepositoryImageComboBoxItem;
    luCashSettleStatus: TcxEditRepositoryImageComboBoxItem;
    actCashSettlementVoucher: TNAction;
    luCompanyPaymentBank: TcxEditRepositoryLookupComboBoxItem;
    luCompanyReceiveBank: TcxEditRepositoryLookupComboBoxItem;
    LocalizerSetting: TcxLocalizer;
    actREPOSettlement: TNAction;
    actRenewalRepoContract: TNAction;
    actMKBDSupportingReport: TNAction;
    actReportDailyBondsTradeList: TNAction;
    actReportStockDepositList: TNAction;
    actReportStockWithdrawList: TNAction;
    actReportClientStockActivity: TNAction;
    actOpeningAccountHistory: TNAction;
    actStockSettlementVoucher: TNAction;
    actCompanyBank: TNAction;
    luCompanyBankType: TcxEditRepositoryImageComboBoxItem;
    luCompanyBank: TcxEditRepositoryLookupComboBoxItem;
    actDailyCashOutstanding: TNAction;
    luPrivateBankAcc: TcxEditRepositoryLookupComboBoxItem;
    luRDNBankAcc: TcxEditRepositoryLookupComboBoxItem;
    luBankType: TcxEditRepositoryImageComboBoxItem;
    actDailyBankInstruction: TNAction;
    actCashDepositRDN: TNAction;
    luAccountCustodian: TcxEditRepositoryLookupComboBoxItem;
    actCashBook: TNAction;
    luCashSettleWith: TcxEditRepositoryImageComboBoxItem;
    luCashBook: TcxEditRepositoryLookupComboBoxItem;
    actDHKReconcile: TNAction;
    actVD55MonthlySupport: TNAction;
    luDCNotesStatus: TcxEditRepositoryImageComboBoxItem;
    luLedgerType: TcxEditRepositoryLookupComboBoxItem;
    luGLType: TcxEditRepositoryLookupComboBoxItem;
    actVD55Monthly: TNAction;
    luReferral: TcxEditRepositoryLookupComboBoxItem;
    luReferralType: TcxEditRepositoryLookupComboBoxItem;
    actReferralType: TNAction;
    actReferral: TNAction;
    actCommShare: TNAction;
    actDailyStockSettleVoucher: TNAction;
    luStockSettleStatus: TcxEditRepositoryImageComboBoxItem;    
	luSalesByBranch: TcxEditRepositoryLookupComboBoxItem;
    luBranch2: TcxEditRepositoryLookupComboBoxItem;
    luCommShare: TcxEditRepositoryLookupComboBoxItem;
    actMarginAlert: TNAction;
    actVidesaCreditLimit: TNAction;
    actSInvestMonitor: TNAction;
    actFundLedgerJournalEntry: TNAction;
    actSecuritiesJournalEntry: TNAction;
    actCouponPayment: TNAction;
    actReportDailyVD5Report: TNAction;
    actReportMonthlyVD55Report: TNAction;
    actReportDailyVD5Support: TNAction;
    actReportMonthlyVD55Support: TNAction;
    actReportCashFlowStatement: TNAction;
    actReportDailyCashProjection: TNAction;
    actReportMonthlyCommision: TNAction;
    actReportMonthlyWithholdingTax: TNAction;
    actReportEntityList: TNAction;
    actReportAccountActiveList: TNAction;
    actReportAccountSuspendList: TNAction;
    actReportAccountDormanList: TNAction;
    actReportAccountClosedList: TNAction;
    actReportClientTradeSummary: TNAction;
    actReportARAPNeting: TNAction;
    actReportOutstandingTradeDueForCashSettlement: TNAction;
    actReportCashFlow: TNAction;
    actReportCashProjection: TNAction;
    actReportStockMovementList: TNAction;
    actReportStockOutstanding: TNAction;
    actReportCouponPaymentList: TNAction;
    actReportCorpactAnnouncementList: TNAction;
    actReportCorpactEntitlementList: TNAction;
    actReportCorpactClientConfirmation: TNAction;
    actReportIPOAllocationList: TNAction;
    actReportIPOClientConfirmation: TNAction;
    actReportTenderOfferOrderList: TNAction;
    actReportTenderOfferClientConfirmation: TNAction;
    actReportClientCashOutstanding: TNAction;
    actReportTradeDetailOutstanding: TNAction;
    actReportDetailShareCollateral: TNAction;
    actReportLoanMarginRankClient: TNAction;
    actReportOutstandingCashRankClient: TNAction;
    actReportBlacklistPeopleOrganizationReport: TNAction;
    actReportTradeSummaryActivity: TNAction;
    menuBarAdmin: TNMenuBar;
    menuBarStatic: TNMenuBar;
    actReportTop15SingleCounterExposure: TNAction;
    actReportMKBDCompare2Date: TNAction;
    actVD57Qty: TNAction;
    luGLAccountTrxNo: TcxEditRepositoryLookupComboBoxItem;
    LuGLAccountTrxName: TcxEditRepositoryLookupComboBoxItem;
    actOTCSettlementList: TNAction;
    actStaticDatalog: TNAction;
    actStaticEmployee: TNAction;
    actStaticProject: TNAction;
    LuEmployee: TcxEditRepositoryLookupComboBoxItem;
    LuProject: TcxEditRepositoryLookupComboBoxItem;
    luJenisRumah: TcxEditRepositoryImageComboBoxItem;
    luJenisKepemilikan: TcxEditRepositoryImageComboBoxItem;
    actGlobalParam: TNAction;
    actAccSInvestConf: TNAction;
    actSInvProcessConfig: TNAction;
    actSInvGenerateFile: TNAction;
    actSInvTradeAlloc: TNAction;
    actPortfolioRevaluationList: TNAction;
    actGenerateDailyTransReport: TNAction;
    actNextOfYearProcess: TNAction;
    luGLCategory: TcxEditRepositoryImageComboBoxItem;
    luReligions: TcxEditRepositoryImageComboBoxItem;
    luBankAccountMutation: TcxEditRepositoryLookupComboBoxItem;
    actReportMonthlyTransaction: TNAction;
    actReportInterestTractList: TNAction;
    actReportMonthlyTax: TNAction;
    actReportMonthlyTaxSummary: TNAction;
    actReportTotalTransaction: TNAction;
    actReportOpeningAccountByDate: TNAction;
    actReportStockPosByAccount: TNAction;
    actReportAccountPosByStock: TNAction;
    actReportClientActivityOLNonOL: TNAction;
    actReportClientActivityInsReg: TNAction;
    actReportCustomersAging: TNAction;
    luCustomerStock: TcxEditRepositoryLookupComboBoxItem;
    actRDNBankReconList: TNAction;
    actReportTradeTransaction: TNAction;
    actVD510Config: TNAction;
    actReportCustomersData: TNAction;
    actReportFundStatement: TNAction;
    actAccountDorman: TNAction;
    actOccupation: TNAction;
    luOccupations: TcxEditRepositoryLookupComboBoxItem;
    actBlastConfig: TNAction;
    actEBlastCustList: TNAction;
    actCorpactExerciseLIst: TNAction;
    actCorpactEntitlementList: TNAction;
    actCOAConfig: TNAction;
    actStockMoveProgram: TNAction;
    luStockMovProgram: TcxEditRepositoryLookupComboBoxItem;
    cdsCorpactMessageRI_STR_EXERDATE: TDateField;
    cdsCorpactMessageRI_END_EXERDATE: TDateField;
    actCompareCashBalancePosition: TNAction;
    actReportTrialBalanceStock: TNAction;
    actGLClient: TNAction;
    actReportTrialBalanceClient: TNAction;
    luStockSettlementVoucherSettleModel: TcxEditRepositoryImageComboBoxItem;
    actReportARAPNetHistory: TNAction;
    actReportStockShortSell: TNAction;
    actBOFISRecon: TNAction;
    actReceiveEmail: TNAction;
    actReportTradeConfirmation: TNAction;
    actEIPO: TNAction;
    actReportTradeTransactionNew: TNAction;
    actEIPOAllotment: TNAction;
    luEIPOStatus: TcxEditRepositoryImageComboBoxItem;
    luInstrumentStatus: TcxEditRepositoryImageComboBoxItem;
    actJournalBankList: TNAction;
    luJournalBankList: TcxEditRepositoryLookupComboBoxItem;
    actReportSummaryMarketTradeActivity: TNAction;
    luAllAccountType: TcxEditRepositoryImageComboBoxItem;
    actSInvestRecon: TNAction;
    cdsReportParameter: TNClientDataset;
    cdsReportParameterDATAKEY: TStringField;
    cdsReportParameterDATAVALUE: TMemoField;
    actSInvestReconTC: TNAction;
    luCPAccount: TcxEditRepositoryLookupComboBoxItem;
    luBoardMarket: TcxEditRepositoryLookupComboBoxItem;
    actSInvestMonitoring: TNAction;
    luReportTC: TcxEditRepositoryLookupComboBoxItem;
    edCurrency: TcxEditRepositoryCurrencyItem;
    actSlikInterface: TNAction;
    actEODProcess: TNAction;
    actSInvestAutoSplit: TNAction;
    actVD5Configs: TNAction;
    ilIcons: TcxImageList;
    actDailyInterestOuts: TNAction;
    actInvoiceInterest: TNAction;
    actWaveInterestPenalty: TNAction;
    actReportFakeDemand: TNAction;
    actReportFrontRunning: TNAction;
    actReportMarkingTheClose: TNAction;
    actReportUnusualMarketVol: TNAction;
    actSurvailanceSetting: TNAction;
    actDailyInterestActivity: TNAction;
    luStatus: TcxEditRepositoryImageComboBoxItem;
    actDailyInstructionList: TNAction;
    actAlternateCashSettlement: TNAction;
    luAccountKSEI: TcxEditRepositoryLookupComboBoxItem;
    actTodoList: TNAction;
    actAMLConditionParameter: TNAction;
    actBankCompany: TNAction;
    luBankCompany: TcxEditRepositoryLookupComboBoxItem;
    actVerdhanaOMSInstitution: TNAction;
    actAMLGenerateReportMonitoring: TNAction;
    actAMLGenerateReportMonitoringHis: TNAction;
    actAmlSummary: TNAction;
    actAMLList: TNAction;
    actEmateraiMonitortingList: TNAction;
    actEMateraiConfig: TNAction;
    luACSType: TcxEditRepositoryImageComboBoxItem;
    actCompanyCustody: TNAction;
    actStockWithdrawApprove: TNAction;
    actStockWithdrawPosting: TNAction;
    actStockWithdrawCancel: TNAction;
    actStockWithdrawReverse: TNAction;
    actDepositoBank: TNAction;
    actACTReconcile: TNAction;
    actDeposito: TNAction;
    actIDXMonthlyTransReport: TNAction;
    luBankTransferType: TcxEditRepositoryLookupComboBoxItem;
    luCcy: TcxEditRepositoryLookupComboBoxItem;
    actReportVD51_2: TNAction;
    actReportIdxClearingResult: TNAction;
    actReportMonthlyStamp: TNAction;
    tmrHeartbeat: TTimer;
    actReportEODSupport: TNAction;
    edPercentage4Digit: TcxEditRepositoryCurrencyItem;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsUserLayoutBeforePost(DataSet: TDataSet);
    procedure actBankExecute(Sender: TObject);
    procedure CommandUpdateAddCommand(ACommandUpdate: TNCommandUpdate;
      var AResultKeys: string);
    procedure actCurrencyExecute(Sender: TObject);
    procedure actMarketExecute(Sender: TObject);
    procedure actChannelExecute(Sender: TObject);
    procedure actCommTableExecute(Sender: TObject);
    procedure actInterestExecute(Sender: TObject);
    procedure actInterestTableExecute(Sender: TObject);
    procedure actInstrumentTypeExecute(Sender: TObject);
    procedure actInstrumentExecute(Sender: TObject);
    procedure actBoardExecute(Sender: TObject);
    procedure actBrokerExecute(Sender: TObject);
    procedure actDealTicketsExecute(Sender: TObject);
    procedure actChargeExecute(Sender: TObject);
    procedure actChargeTableExecute(Sender: TObject);
    procedure actCommissionExecute(Sender: TObject);
    procedure actBranchExecute(Sender: TObject);
    procedure actDealerExecute(Sender: TObject);
    procedure actSalesAgentExecute(Sender: TObject);
    procedure actSalesExecute(Sender: TObject);
    procedure actImportDTEExecute(Sender: TObject);
    procedure actGLFiscalYearExecute(Sender: TObject);
    procedure actGLPeriodExecute(Sender: TObject);
    procedure actContractsExecute(Sender: TObject);
    procedure actOpeningAccountsExecute(Sender: TObject);
    procedure actAccountParamClassExecute(Sender: TObject);
    procedure actProductExecute(Sender: TObject);
    procedure actProductypeExecute(Sender: TObject);
    procedure actAccountLedgerTypeExecute(Sender: TObject);
    procedure actAccountLedgerClassExecute(Sender: TObject);
    procedure actTradingLimitClassExecute(Sender: TObject);
    procedure actClosingPriceExecute(Sender: TObject);
    procedure actCOAExecute(Sender: TObject);
    procedure actDailyExchangeRateExecute(Sender: TObject);
    procedure actEntityInformationExecute(Sender: TObject);
    procedure actAccountManagementExecute(Sender: TObject);
    procedure actProcessMonthlyStatementExecute(Sender: TObject);
    procedure actOmgeoMonitorExecute(Sender: TObject);
    procedure actJournalTypeExecute(Sender: TObject);
    procedure actCPCenterExecute(Sender: TObject);
    procedure actEventExecute(Sender: TObject);
    procedure actKSEIRequestExecute(Sender: TObject);
    procedure actJournalInputExecute(Sender: TObject);
    procedure actGLInputExecute(Sender: TObject);
    procedure actTrialBalanceByCcyExecute(Sender: TObject);
    procedure actContactUsageExecute(Sender: TObject);
    procedure actCashSettlementExecute(Sender: TObject);
    procedure actBankReconExecute(Sender: TObject);
    procedure actStockSettleInstructionExecute(Sender: TObject);
    procedure actClientInquiryExecute(Sender: TObject);
    procedure actCashDepositExecute(Sender: TObject);
    procedure actCashWithdrawExecute(Sender: TObject);
    procedure actBatchProcessExecute(Sender: TObject);
    procedure actAgingARAPExecute(Sender: TObject);
    procedure actCashPositionExecute(Sender: TObject);
    procedure actStockPositionExecute(Sender: TObject);
    procedure actStockAgingExecute(Sender: TObject);
    procedure actFacilitationTradeExecute(Sender: TObject);
    procedure actWarehouseTradeExecute(Sender: TObject);
    procedure actCrossTomTradeExecute(Sender: TObject);
    procedure actBatchConfigExecute(Sender: TObject);
    procedure ackBankReceiveExecute(Sender: TObject);
    procedure actDailyTradeSumExecute(Sender: TObject);
    procedure actCompanyExecute(Sender: TObject);
    procedure actCompanyAccountExecute(Sender: TObject);
    procedure actAccLedgerTemplateExecute(Sender: TObject);
    procedure actCashFlowExecute(Sender: TObject);
    procedure actCBestInstructionExecute(Sender: TObject);
  	procedure actBalanceSheetExecute(Sender: TObject);
    procedure actProfitLostExecute(Sender: TObject);
  	procedure actIPOExecute(Sender: TObject);
    procedure actInstrumentBondsExecute(Sender: TObject);
    procedure actBondsDealTicketExecute(Sender: TObject);
    procedure actBondsClosingPriceExecute(Sender: TObject);
    procedure actLetterOfConfirmExecute(Sender: TObject);
    procedure actFixedAssetGroupExecute(Sender: TObject);
    procedure actFixedAssetExecute(Sender: TObject);
    procedure actDepreciationTableExecute(Sender: TObject);
    procedure ActionLogGetActionLog(Log: TNActionLog);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure ApplicationEventsMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure TimerGlobalTimer(Sender: TObject);
    procedure actAccLedgerBalPositionExecute(Sender: TObject);
    procedure actStockDepositExecute(Sender: TObject);
    procedure actStockWithdrawExecute(Sender: TObject);
    procedure actReconcileDTEExecute(Sender: TObject);
    procedure actSettlementInstructionExecute(Sender: TObject);
    procedure actEmailConfigExecute(Sender: TObject);
    procedure actEmailMonitoringExecute(Sender: TObject);
    procedure actStockSettlementExecute(Sender: TObject);
    procedure actStockVoucherExecute(Sender: TObject);
    procedure actCashVoucherExecute(Sender: TObject);
    procedure actJournalListExecute(Sender: TObject);
    procedure actConsolidatedTrialBalanceExecute(Sender: TObject);
    procedure actUserActivityExecute(Sender: TObject);
    procedure actCountryExecute(Sender: TObject);
    procedure actProvinceExecute(Sender: TObject);
    procedure actCityExecute(Sender: TObject);
    procedure actCustodyExecute(Sender: TObject);
    procedure actGLActivityExecute(Sender: TObject);
    procedure actReportSalesActivityExecute(Sender: TObject);
    procedure actReportClientActivityExecute(Sender: TObject);
    procedure actPaymentListExecute(Sender: TObject);
    procedure actReceiptListExecute(Sender: TObject);
  	procedure actCCClassExecute(Sender: TObject);
    procedure actPermissionsExecute(Sender: TObject);
    procedure actRDNRequestExecute(Sender: TObject);
    procedure actAccLegClassExecute(Sender: TObject);
	  procedure actLendBorrowExecute(Sender: TObject);
    procedure actCorpActExecute(Sender: TObject);
    procedure actCorpActionExecute(Sender: TObject);
    procedure actCorpActEntExecute(Sender: TObject);
    procedure actAccountSuspendExecute(Sender: TObject);
    procedure actClosingProcessExecute(Sender: TObject);
    procedure actAccUnSuspendExecute(Sender: TObject);
    procedure actAccDormanExecute(Sender: TObject);
	  procedure actHolidayExecute(Sender: TObject);
    procedure actUserMonitoringExecute(Sender: TObject);
    procedure actUserDataOwnerExecute(Sender: TObject);
    procedure actUserConfigurationExecute(Sender: TObject);
    procedure actCashMutationExecute(Sender: TObject);
    procedure actGLJournalExecute(Sender: TObject);
	  procedure actAssignGroupToCOBExecute(Sender: TObject);
    procedure actStockRecImportExecute(Sender: TObject);
    procedure actGroupAdminExecute(Sender: TObject);
    procedure actKSEIRDNUploadExecute(Sender: TObject);
    procedure actAccCreditLimitExecute(Sender: TObject);
    procedure actReportStatementOfAccountExecute(Sender: TObject);
    procedure actMonthlyStatementExecute(Sender: TObject);
    procedure actExpiredDocListExecute(Sender: TObject);
    procedure actCashProjectionExecute(Sender: TObject);
    procedure actStockDelRevExecute(Sender: TObject);
    procedure actContractBondsExecute(Sender: TObject);
    procedure actCTPReconExecute(Sender: TObject);
    procedure actBondsDealTicketContractExecute(Sender: TObject);
    procedure actReportCashDepositListExecute(Sender: TObject);
    procedure actReportCashWitdrawListExecute(Sender: TObject);
    procedure actReportStockPosBySalesAccExecute(Sender: TObject);
    procedure actReportStockPosBySalesStockExecute(Sender: TObject);
    procedure actAuthPersonExecute(Sender: TObject);
    procedure actVoucherSummaryExecute(Sender: TObject);
    procedure actReportARAPSummaryExecute(Sender: TObject);
    procedure actBusinessLineExecute(Sender: TObject);
    procedure actJournalMapExecute(Sender: TObject);
    procedure actReportCashVoucherExecute(Sender: TObject);
    procedure actReportTestExecute(Sender: TObject);
    procedure actGLJournalMapExecute(Sender: TObject);
    procedure actIDXTradeExecute(Sender: TObject);
    procedure actBatchConfigSettingExecute(Sender: TObject);
    procedure actIDXOrderExecute(Sender: TObject);
	  procedure actAccStatListExecute(Sender: TObject);
    procedure actReportContractBondTradeExecute(Sender: TObject);
    procedure actBussTypeExecute(Sender: TObject);
    procedure actBAEExecute(Sender: TObject);
    procedure actSOPExecute(Sender: TObject);
    procedure actDHKExecute(Sender: TObject);
	  procedure actOpenDormanExecute(Sender: TObject);
    procedure actARAPReportExecute(Sender: TObject);
    procedure actReverseRepoExecute(Sender: TObject);
    procedure actBankMutationExecute(Sender: TObject);
    procedure actOTCInstructionExecute(Sender: TObject);
    procedure actKSEIAccReconExecute(Sender: TObject);
    procedure actReportFundLedgerBalanceExecute(Sender: TObject);
    procedure actReportSecuritiesLedgerBalanceExecute(Sender: TObject);
    procedure actReportFundLedgerJournalExecute(Sender: TObject);
    procedure actWHTExecute(Sender: TObject);
    procedure actReportSalesCommissionExecute(Sender: TObject);
    procedure actReportClientCommissionExecute(Sender: TObject);
    procedure actReportClientCommissionByRangeExecute(Sender: TObject);
    procedure actBankPaymentListExecute(Sender: TObject);
    procedure actBankReceiveListExecute(Sender: TObject);
    procedure actDHKCashExecute(Sender: TObject);
    procedure actHandOverExerExecute(Sender: TObject);
    procedure actCashDCNotesExecute(Sender: TObject);
    procedure actCorpactCashLoanApprovalExecute(Sender: TObject);
    procedure actExerciseMonitoringExecute(Sender: TObject);
    procedure actDOTExecute(Sender: TObject);
    procedure actBalanceSheetReportExecute(Sender: TObject);
    procedure actReportTrialBalanceExecute(Sender: TObject);
    procedure actReportProfitLossStatementExecute(Sender: TObject);
    procedure actProvisionPortFolioM2MExecute(Sender: TObject);
    procedure actAccountInterestExecute(Sender: TObject);
    procedure actInterestTrackExecute(Sender: TObject);
    procedure actReportSecuritiesLedgerJournalExecute(Sender: TObject);
    procedure actUploadDataFeedbackExecute(Sender: TObject);
    procedure actStockMovementExecute(Sender: TObject);
    procedure actCashMovementExecute(Sender: TObject);
    procedure actStockHaircutExecute(Sender: TObject);
    procedure actACSListExecute(Sender: TObject);
    procedure actTenderOfferExecute(Sender: TObject);
    procedure actMTITransExecute(Sender: TObject);
    procedure actMTIRecordExecute(Sender: TObject);
    procedure actMTIConfigExecute(Sender: TObject);
    procedure actAccOmgeoConfigExecute(Sender: TObject);
    procedure actReportStockActProfitLossExecute(Sender: TObject);
    procedure actTaxInvoiceExecute(Sender: TObject);
    procedure actTaxOffNoExecute(Sender: TObject);
    procedure actGLWithFLExecute(Sender: TObject);
    procedure actCompanyBankReconExecute(Sender: TObject);
    procedure actGLWithBankReconExecute(Sender: TObject);
    procedure actGLWithSLReconExecute(Sender: TObject);
    procedure cnnMainValidatePeerCertificate(Owner: TObject;
      Certificate: TX509Certificate; const ADepth: Integer; var Ok: Boolean);
    procedure actApprovalRequestExecute(Sender: TObject);
    procedure actApprovalHistoryExecute(Sender: TObject);
    procedure actMyApprovalRequestListExecute(Sender: TObject);
    procedure actReportListExecute(Sender: TObject);
    procedure actGridReportDesignerExecute(Sender: TObject);
    procedure actGLTypeExecute(Sender: TObject);
    procedure actCashPositionMovementExecute(Sender: TObject);

    procedure actReportDormantClientListExecute(Sender: TObject);
    procedure actReportDailyTradeByClientOrClientTypeExecute(Sender: TObject);
    procedure actReportStockPosByClientAccExecute(Sender: TObject);
    procedure actReportDailyTradeByAgentExecute(Sender: TObject);
    procedure actReportClientPortofolioExecute(Sender: TObject);
    procedure actReportStockPortfolioExecute(Sender: TObject);
    procedure actGLInterfaceExecute(Sender: TObject);
    procedure actReportClientDetailExecute(Sender: TObject);
    procedure actReportMarginCashAccountBalanceExecute(Sender: TObject);
    procedure actReportTotalShareValueExecute(Sender: TObject);
    procedure actReportTotalDetailShareCollateralExecute(Sender: TObject);
    procedure actReportMarketCapitalizationExecute(Sender: TObject);
    procedure actReportTop15SingleStockCashClientExecute(Sender: TObject);
    procedure actReportTotalDetailOutstandingShareValueExecute(Sender: TObject);
    procedure actReportTotalOutstandingCashClientExecute(Sender: TObject);
    procedure actReportTotalLoanMarginClientExecute(Sender: TObject);
    procedure actReportAgingMonitoringExecute(Sender: TObject);
    procedure actReportProductListExecute(Sender: TObject);
    procedure actReportClientAccountBalanceSummaryExecute(Sender: TObject);
    procedure actReportSummaryActivityByAgentPerClientExecute(Sender: TObject);
    procedure actReportDetailedPortofolioClientExecute(Sender: TObject);
    procedure actReportMarginAccountSummaryExecute(Sender: TObject);
    procedure actReportDetailOutstandingCashClientExecute(Sender: TObject);
    procedure actReportExceptionalReportExecute(Sender: TObject);
    procedure actReportForceSellingExecute(Sender: TObject);
    procedure actReportDetailOutstandingMarginClientExecute(Sender: TObject);
    procedure actReportTotalDetailOutstandingContraClientExecute(
      Sender: TObject);
    procedure actReportListStockEfekExecute(Sender: TObject);
    procedure actReportMarginYUExecute(Sender: TObject);
    procedure actRptGrpTypeExecute(Sender: TObject);
    procedure actReportTypeExecute(Sender: TObject);
	  procedure actCreteNewREPOExecute(Sender: TObject);
    procedure actMarginMonitoringExecute(Sender: TObject);
    procedure actReportDefinitionExecute(Sender: TObject);
    procedure actReportSourceExecute(Sender: TObject);
    procedure actReportNTransformExecute(Sender: TObject);
    procedure actCreateReportExecute(Sender: TObject);
    procedure actGenerateReportExecute(Sender: TObject);
    procedure actCheckDifferentExecute(Sender: TObject);
    procedure actSupportingDataExecute(Sender: TObject);
    procedure actSetOffExecute(Sender: TObject);
    procedure actCashBalanceAccountExecute(Sender: TObject);
    procedure actLTHReportExecute(Sender: TObject);
    procedure actPortofolioDetailReportExecute(Sender: TObject);
    procedure actReportSupportingDataMKBDExecute(Sender: TObject);
    procedure actReportCashAccountStatementExecute(Sender: TObject);
    procedure actReportStatementofAccountCSOExecute(Sender: TObject);
    procedure actReportInvestorOpeningAccountExecute(Sender: TObject);
    procedure actReportNotificationToClientExecute(Sender: TObject);
    procedure actReportAuditLogExecute(Sender: TObject);
    procedure actREPOMonitoringExecute(Sender: TObject);
    procedure actChangeCollateralExecute(Sender: TObject);
    procedure actReportTop15SingleExposureOnMarginAndRepoExecute(Sender: TObject);
    procedure actTotalDetailOutstandingShareValueExecute(Sender: TObject);
    procedure actExceptionalReportExecute(Sender: TObject);
    procedure actReportCombinedAccountReceivablePayableExecute(Sender: TObject);
    procedure actReportMarginAccountSummaryByAgentExecute(Sender: TObject);
    procedure actReportMarginAccountSummaryByClientExecute(Sender: TObject);
    procedure actReportExposureReportExecute(Sender: TObject);
    procedure actReportMarginStatementExecute(Sender: TObject);
    procedure actReportSingleCounterMarginExecute(Sender: TObject);
    procedure actReportOutstandingRepoDueForSettlementExecute(Sender: TObject);
    procedure actReportRegularAccountSummaryExecute(Sender: TObject);
    procedure actReportForecastCombinedACReceivablePayableExecute(Sender: TObject);
    procedure actReportOutstandingTransactionWithSettlementMovementExecute(
      Sender: TObject);
    procedure actReportMarginTPlusFinancingCreditRiskExecute(Sender: TObject);
    procedure actReportShareBalancesByClientExecute(Sender: TObject);
    procedure actReportClientActivityAndSharesMovementExecute(Sender: TObject);
    procedure actReportMarginProductExecute(Sender: TObject);
    procedure actReportListOfNewClientExecute(Sender: TObject);
    procedure actReportRegularSummaryCrossBorderTradesExecute(Sender: TObject);
    procedure actReportShareBalanceWithShareValueExecute(Sender: TObject);
    procedure actReportLaporanREPOReverseREPOExecute(Sender: TObject);
    procedure actReportCashStatementExecute(Sender: TObject);
    procedure actReportAnnouncementWarrantExecute(Sender: TObject);
    procedure actReportBOFISDHKMatchExecute(Sender: TObject);
    procedure actReportTradeListWithCustodianBankExecute(Sender: TObject);
    procedure actReportTCObligasiExecute(Sender: TObject);
    procedure actReportSummarySuspenseAccountExecute(Sender: TObject);
    procedure actReportSummaryObligasiExecute(Sender: TObject);
    procedure actReportStockHoldingByStockExecute(Sender: TObject);
    procedure actReportStockHoldingByAgentExecute(Sender: TObject);
    procedure actReportStockHoldingByClientExecute(Sender: TObject);
    procedure actReportShareBalancesByProductExecute(Sender: TObject);
    procedure actReportShareBalancesByAgentExecute(Sender: TObject);
    procedure actReportSettlementInstructionForBondTransactionExecute(
      Sender: TObject);
    procedure actReportScheduleCorporateActionExecute(Sender: TObject);
    procedure actReportSafeKeepingFeeStatementExecute(Sender: TObject);
    procedure actReportRekapitulasiTransaksiSahamExecute(Sender: TObject);
    procedure actReportRekapInstruksiDistribusiIPOExecute(Sender: TObject);
    procedure actReportReconPortofolioReportUntukIDXExecute(Sender: TObject);
    procedure actReportPortfolioAndCashAccountStatementExecute(Sender: TObject);
    procedure actReportPendukungDailyTransactionExecute(Sender: TObject);
    procedure actReportPembayaranSahamIPOExecute(Sender: TObject);
    procedure actReportOutstandingTradesDueForDeliveryExecute(Sender: TObject);
    procedure actReportMovementSafeCustodyExecute(Sender: TObject);
    procedure actReportMonthlySafeCustodyStatementOfAccountExecute(
      Sender: TObject);
    procedure actReportLaporanPendukungVD57Execute(Sender: TObject);
    procedure actReportLaporanKegiatanPerantaraPedagangEfekExecute(
      Sender: TObject);
    procedure actReportDailyTransactionReportExecute(Sender: TObject);
    procedure actReportDailyReportOddLotPositionExecute(Sender: TObject);
    procedure actReportDailyCommisionExecute(Sender: TObject);
    procedure actReportConfirmationCorpactDetailReverseStockExecute(
      Sender: TObject);
    procedure actReportCBestDailyTradeListExecute(Sender: TObject);
    procedure actReportCBestAndClientCustodyReconciliationExecute(
      Sender: TObject);
    procedure actReportBukuPembantuEfekAMTExecute(Sender: TObject);
    procedure actReportBorrowingFeeReportNasabahExecute(Sender: TObject);
    procedure actReportBorrowingFeeReportInternalCSIExecute(Sender: TObject);
    procedure actReportRepoDailyTradeExecute(Sender: TObject);
    procedure actReportRecommendedTransactionsForSetoffRollOverExecute(
      Sender: TObject);
    procedure actReportOutstandingTradesDueForSettlementExecute(
      Sender: TObject);
    procedure actReportOutstandingTransactionDueForSettlementExecute(
      Sender: TObject);
    procedure actReportMonthlyLTABExecute(Sender: TObject);
    procedure actReportInterestPrincipalizedForCashAccountExecute(
      Sender: TObject);
    procedure actReportCashDividendPaymentExecute(Sender: TObject);
    procedure actReportCashDividendEntitlementListingExecute(Sender: TObject);
    procedure actReportCorpactEntitlementListingExecute(Sender: TObject);
    procedure actReportClientTradeActivitiesByPurchaseSalesExecute(
      Sender: TObject);
    procedure actReportAgentRankingExecute(Sender: TObject);
    procedure actReportMarginMKBDExecute(Sender: TObject);
    procedure actReportDailyTradeDetailExecute(Sender: TObject);
    procedure actReportValueAddedTaxExecute(Sender: TObject);
    procedure actFidessaLimitExecute(Sender: TObject);
    procedure actDailyMarketTransactionExecute(Sender: TObject);
    procedure actReportDailyCommisionGridExecute(Sender: TObject);
    procedure actReportWashSaleExecute(Sender: TObject);
    procedure actReportCreditLimitViolationExecute(Sender: TObject);
    procedure actReportValueAddedTaxGridExecute(Sender: TObject);
    procedure actReportClientCommisionListExecute(Sender: TObject);
    procedure actReportTransactionRecapitulationExecute(Sender: TObject);
    procedure actReportTradeAccountInterfaceExecute(Sender: TObject);
    procedure actCashLedgerBalanceExecute(Sender: TObject);
    procedure actStockLedgerBalanceExecute(Sender: TObject);
    procedure actReportDailyPaymentReceiveExecute(Sender: TObject);
    procedure actCashTransactionExecute(Sender: TObject);
    procedure actCashSettlementVoucherExecute(Sender: TObject);
    procedure actREPOSettlementExecute(Sender: TObject);
    procedure actRenewalRepoContractExecute(Sender: TObject);
    procedure actMKBDSupportingReportExecute(Sender: TObject);
    procedure actReportDailyBondsTradeListExecute(Sender: TObject);
    procedure actReportStockDepositListExecute(Sender: TObject);
    procedure actReportStockWithdrawListExecute(Sender: TObject);
    procedure actReportClientStockActivityExecute(Sender: TObject);
    procedure actOpeningAccountHistoryExecute(Sender: TObject);
    procedure actStockSettlementVoucherExecute(Sender: TObject);
    procedure actCompanyBankExecute(Sender: TObject);
    procedure actDailyCashOutstandingExecute(Sender: TObject);
    procedure actDailyBankInstructionExecute(Sender: TObject);
    procedure actCashDepositRDNExecute(Sender: TObject);
    procedure actCashBookExecute(Sender: TObject);
    procedure actReportMarginAccountSummaryUSDExecute(Sender: TObject);
    procedure actDHKReconcileExecute(Sender: TObject);
    procedure actVD55MonthlySupportExecute(Sender: TObject);
    procedure actVD55MonthlyExecute(Sender: TObject);
    procedure actReferralTypeExecute(Sender: TObject);
    procedure actReferralExecute(Sender: TObject);
    procedure actCommShareExecute(Sender: TObject);
    procedure actDailyStockSettleVoucherExecute(Sender: TObject);
    procedure actMarginAlertExecute(Sender: TObject);
    procedure actVidesaCreditLimitExecute(Sender: TObject);
    procedure actReportMKBDCompare2DateExecute(Sender: TObject);
    procedure actReportARAPNetingExecute(Sender: TObject);
    procedure actReportDailyCashProjectionExecute(Sender: TObject);
    procedure actReportDailyVD5SupportExecute(Sender: TObject);
    procedure actVD57QtyExecute(Sender: TObject);
    procedure actReportVD51_2Execute(Sender: TObject);                //20260826
    procedure actIdxClearingResult(Sender:TObject);                   //20270826
    procedure actReportMonthlyVD55SupportExecute(Sender: TObject);
    procedure actReportMonthlyVD55ReportExecute(Sender: TObject);
    procedure actReportCorpactAnnouncementListExecute(Sender: TObject);
    procedure actReportBlacklistPeopleOrganizationReportExecute(
      Sender: TObject);
    procedure actReportAccountActiveListExecute(Sender: TObject);
    procedure actReportAccountSuspendListExecute(Sender: TObject);
    procedure actReportAccountDormanListExecute(Sender: TObject);
    procedure actReportAccountClosedListExecute(Sender: TObject);
    procedure actOTCSettlementListExecute(Sender: TObject);
    procedure actStaticDatalogExecute(Sender: TObject);
    procedure actStaticEmployeeExecute(Sender: TObject);
    procedure actStaticProjectExecute(Sender: TObject);
    procedure actGlobalParamExecute(Sender: TObject);
    procedure actAccSInvestConfExecute(Sender: TObject);
    procedure actSInvProcessConfigExecute(Sender: TObject);
    procedure actSInvGenerateFileExecute(Sender: TObject);
    procedure actSInvTradeAllocExecute(Sender: TObject);
    procedure actPortfolioRevaluationListExecute(Sender: TObject);
    procedure actGenerateDailyTransReportExecute(Sender: TObject);
    procedure actNextOfYearProcessExecute(Sender: TObject);
    procedure actFundLedgerJournalEntryExecute(Sender: TObject);
    procedure actSecuritiesJournalEntryExecute(Sender: TObject);
    procedure actReportMonthlyTransactionExecute(Sender: TObject);
    procedure actReportInterestTractListExecute(Sender: TObject);
    procedure actReportMonthlyTaxExecute(Sender: TObject);
    procedure actReportMonthlyTaxSummaryExecute(Sender: TObject);
    procedure actReportTotalTransactionExecute(Sender: TObject);
    procedure actReportOpeningAccountByDateExecute(Sender: TObject);
    procedure actReportStockPosByAccountExecute(Sender: TObject);
    procedure actReportAccountPosByStockExecute(Sender: TObject);
    procedure actReportClientActivityOLNonOLExecute(Sender: TObject);
    procedure actReportClientActivityInsRegExecute(Sender: TObject);
    procedure actReportCustomersAgingExecute(Sender: TObject);
    procedure actRDNBankReconListExecute(Sender: TObject);
    procedure actReportTradeTransactionExecute(Sender: TObject);
    procedure actVD510ConfigExecute(Sender: TObject);
    procedure actReportCustomersDataExecute(Sender: TObject);
    procedure actReportFundStatementExecute(Sender: TObject);
    procedure actAccountDormanExecute(Sender: TObject);
    procedure actOccupationExecute(Sender: TObject);
    procedure actBlastConfigExecute(Sender: TObject);
    procedure actEBlastCustListExecute(Sender: TObject);
    procedure actCorpactExerciseLIstExecute(Sender: TObject);
    procedure actCorpactEntitlementListExecute(Sender: TObject);
    procedure actCOAConfigExecute(Sender: TObject);
    procedure actStockMoveProgramExecute(Sender: TObject);
    procedure actCompareCashBalancePositionExecute(Sender: TObject);
    procedure actReportTrialBalanceStockExecute(Sender: TObject);
    procedure actGLClientExecute(Sender: TObject);
    procedure actReportTrialBalanceClientExecute(Sender: TObject);
    procedure actReportARAPNetHistoryExecute(Sender: TObject);
    procedure actReportStockShortSellExecute(Sender: TObject);
    procedure actBOFISReconExecute(Sender: TObject);
    procedure actReceiveEmailExecute(Sender: TObject);
    procedure actReportTradeConfirmationExecute(Sender: TObject);
    procedure actEIPOExecute(Sender: TObject);
    procedure actEIPOAllotmentExecute(Sender: TObject);
    procedure actReportTradeTransactionNewExecute(Sender: TObject);
    procedure actInputJurnalBankListExecute(Sender: TObject);
    procedure actInputBankExecute(Sender: TObject);
    procedure actJournalBankListExecute(Sender: TObject);
    procedure actReportSummaryMarketTradeActivityExecute(Sender: TObject);
    procedure actSInvestReconExecute(Sender: TObject);
    procedure actSInvestReconTCExecute(Sender: TObject);
    procedure actSInvestMonitoringExecute(Sender: TObject);
    procedure actSlikInterfaceExecute(Sender: TObject);
    procedure actEODProcessExecute(Sender: TObject);
    procedure actSInvestAutoSplitExecute(Sender: TObject);
    procedure actVD5ConfigsExecute(Sender: TObject);
    procedure actDailyInterestOutsExecute(Sender: TObject);
    procedure actInvoiceInterestExecute(Sender: TObject);
    procedure actWaveInterestPenaltyExecute(Sender: TObject);
    procedure actReportFakeDemandExecute(Sender: TObject);
    procedure actReportFrontRunningExecute(Sender: TObject);
    procedure actReportMarkingTheCloseExecute(Sender: TObject);
    procedure actReportUnusualMarketVolExecute(Sender: TObject);
    procedure actSurvailanceSettingExecute(Sender: TObject);
    procedure actDailyInterestActivityExecute(Sender: TObject);
    procedure actDailyInstructionListExecute(Sender: TObject);
    procedure actAlternateCashSettlementExecute(Sender: TObject);
    procedure actTodoListExecute(Sender: TObject);
    procedure actAMLConditionParameterExecute(Sender: TObject);
    procedure actBankCompanyExecute(Sender: TObject);
    procedure actVerdhanaOMSInstitutionExecute(Sender: TObject);
    procedure actAMLGenerateReportMonitoringExecute(Sender: TObject);
    procedure actAMLGenerateReportMonitoringHisExecute(Sender: TObject);
    procedure actAmlSummaryExecute(Sender: TObject);
    procedure actAMLListExecute(Sender: TObject);
    procedure actEmateraiMonitortingListExecute(Sender: TObject);
    procedure actEMateraiConfigExecute(Sender: TObject);
    procedure actCompanyCustodyExecute(Sender: TObject);
    procedure actDepositoBankExecute(Sender: TObject);
    procedure actACTReconcileExecute(Sender: TObject);
    procedure actDepositoExecute(Sender: TObject);
    procedure actIDXMonthlyTransReportExecute(Sender: TObject);
    procedure actReportIdxClearingResultExecute(Sender: TObject);
    procedure actReportMonthlyStampExecute(Sender:TObject);
    procedure tmrHeartbeatTimer(Sender: TObject);
    procedure actReportEODSupportExecute(Sender: TObject);
    procedure actReksadanaDepositoExecute(Sender: TObject);
  private
    { Private declarations }
    FLogs: TNLogs;
    FAppConfig: TNConfig;
    FAppID: string;
    FEnterForNextControl: string;
    FFormList: TStringList;
    FDataSnapCommunicationProtocol: string;
    FDataSnapServerPort: string;
    FDataSnapServerHost: string;

    FRemoteServer: TSessionServerModuleClient;

    FUserID: string;
    FSelectedHolidayYear: word;
    FSearchItemsList: TStringList;
    FSearchGroupList: TStringList;
    FAppPath: String;
    FListReport: TStringList;
    FIPAddress: string;
    FCompName: string;
    FOMGOutboundDir: string;
    FOMGOutboundBackupDir: string;
    FOMGBIC: string;
    FOMGMachineID: string;
    FMKBDOutPath: string;
    FCBESTOutPath: string;

    FFITSBankInterfaceDir: string;
    FFITSCBestInterfaceDir: string;
    FFITSJournalListDir: string;

    FBCACheckSum: string;

    //Report Server Configuration
    FReportServerHost: String;
    FReportServerPort: String;
    FReportServerProxyHost: String;
    FReportServerProxyPort: String;
    FReportServerLogin: String;
    FReportServerPassword: String;

    FSInvestGenerateFolder: string;
    FSinvestDownloadFolder: string;

    FDataLookup: TdmLookup;
    FDataReport: TdmReport;
    FDataConnector: TdmConnector;
  	FBottomBid: Double;
    FBottomOffer: Double;
    FTopBid: Double;
    FTopOffer: Double;
    FSecondIdleSystem: Integer;

    FDataCBest: TdmCBest;
    FDataSInvest: TdmSInvest;

    FThreadBackgroundProcess: TNProcessObjectMessageThreadByQueue;
    FListBackgroundProcess: TNQueueObjectThreadSafe;
    FMyCallBackName: String;
    FNayagaDir: String;
    FNayagaHelpFile: String;
    FNayagaHelpConfigFile: String;
    FLastOTCConfirmWith: string;
    FBankDefDesc: string;
    FNewAccountTag: Integer;
    FStockDepDate: TDateTime;
    FReportTypeDifferent: String;
    FEndDayProcess: Boolean;
    FDefaultAccountID: Integer;
    FDefaultAmount: Double;
    FDefaultCurrency: string;
    FOldRepoContractID: Int64;
    FAccountCreditLimit: Integer;
    FShowDukcapil: Boolean;
    FCashDepID: integer;
    FCashDepRDNID: integer;
    FDailyReportFolder: string;
    FJournalReverseList: TStringList;
    FSFTPUserName: string;
    FSFTPPassword: string;
    FSFTPFileUrl: string;
    FNeedToDelete: Boolean;
    FDeleteAct: Boolean;
    FDebugMode: boolean;

    { Surveilance Setting }
    FFakeDemandSupplyAmendSupply: integer;
    FFrontRunningBigReleaseQty: integer;
    FFrontRunningRageTime: integer;
    FMarkingTheCloseMinimalOrderQty: integer;
    FMarkingTheCloseStartTime: string;
    FMarkingTheCloseEndTime: string;
    FUnusualMarketVolTransCount: integer;
    FWashsaleNPWP: integer;
    FWashsaleContactPerson: integer;
    FWashsaleHomeAddress: integer;
    FWashsaleOfficeAddress: integer;
    FWashsaleSpouse: integer;
    FWashsaleBankAccount: integer;
    FWashsaleEmail: integer;
    FWashsaleSID: integer;
    FCashWithdrawType: string;
    FPerkalianTertentu: Double;
    FBatasAtasDeposit: Double;
    FBatasAtasNetAsset: Double;
    FPenghasilan: Double;
    FBatasPenghasilanNetAsset: Double;
    FRataanNetPlusDeviasi: Double;
    FRataan: Double;
    FBatasAtasUsia: Double;
    FDeviasi: Double;
    FTotalPlusDeviasi: Double;

    { heartbeat }
    fidTCPClient: TIdTCPClient;
    fidTCPPort: integer;

    procedure BackgroundProcessing(AObject: TObject);
    procedure LoadConfig;
    procedure IntAppConfigAddConfigItem(AConfigItem: TNConfigItem);
    procedure IntAppConfigLogTracking(ALog: string);
    procedure PrepareDataModule;
    procedure DestroyDataModule;
    procedure PrepareSQLParameter;
    procedure PrepareGlobalParameter;
    procedure SetMenuIcon;
    procedure SetEndDayProcess(const Value: Boolean);
  public
    { Public declarations }
    function ShowFormModal(AFormClass: TFormClass): TModalResult; overload;
    function ShowFormModal(AForm: TForm): TModalResult; overload;
    function CreateForm(AFormClass: TFormClass): TForm;
    function Login(AUser, APassword: string) : string;
    function GetSeqID(AType : string; AInitCode : string): string;
    function GetStringDelimiter(var AValue: String; ADelimiter: String): String;
    function RoundFloatNumber(AValue: Double; ADecimalPoint: Byte): Double;
    function CountDecimalPoint(AValue: Double): Integer;
    function SecondsIdle: DWord;
//    function DecimalRound(AValue: Double; ADecimal: Integer): Double;
    function ApplicationHelp(Command: Word; Data: THelpEventData; var CallHelp: Boolean): Boolean;

    procedure Log(ALogType: TAppLogType; ALogText: String);
    procedure ShowForm(AFormClass: TFormClass); overload;
    procedure ShowForm(AForm: TForm); overload;
    procedure ErrorMessage(AError: String);
    procedure WarningMessage(AError: String);
    procedure StartEngine;
    procedure StopEngine;

    {Help Configuration}
    procedure LoadHelpConfig;
    procedure SaveHelpConfig;

    procedure InitializeEngine;
    procedure DeinitializeEngine;

    procedure InitializeThreads;
    procedure DeinitializeThreads;


    procedure GlobalReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);

    procedure StartReportEngine;
    procedure StopReportEngine;
    procedure ParseDelimited(const sl: TStrings; const value: string; const delimiter: string);
    procedure SetDefaultDataDisplayFormat(ADataset: TDataset);
    procedure OpenUserLayout(AFormName: String);
    procedure OpenUserFavorites(AUserID: String);
    procedure SetUserInformation;
    procedure ShowOMGNotification;
    procedure SetActionDescription(actList: TActionList);
    procedure OpenFile(const FileName: String);
    procedure GetAllPermissions;
    procedure ProcessCallbackMessage(s: String);Overload;
    procedure ProcessCallbackMessage(ACat, ADesc, AUser: String; dtTrans, dtExec: TDateTime);Overload;
    procedure UpdateTradingDate;
    procedure NewAlertMessage(const Msg: String; DlgType: TMsgDlgType = mtInformation);
    procedure SetDataSetProperty(ADataSet: TNClientDataSet);
    function ViewEditorForm(AFormClassName: String; var AKey: String; AProcess: TProcessKind = pkRead): TModalResult;
    function ShowEditorForm(AFormClass: TFormEditorClass; var AKey: String; AProcess: TProcessKind = pkRead): TModalResult;
    function ShowEditorBasicForm(AFormClass: TFormEditorBasicClass; var AKey: String; AProcess: TProcessKind = pkRead): TModalResult;
    procedure CopyDataSetProperty(ASource, ATarget: TClientDataSet);
    procedure CopyDataSetField(ASource, ATarget: TClientDataSet);
    procedure ComparedChangedData(AValidDataSet, AUpdateDataSet: TNClientDataSet);
    procedure CreateChangeFlagField(ADataSet: TClientDataSet);

    function DeleteRecord(ADataSet: TDataSet): Boolean;
    function DuplicateDataset(ASource, ATarget: TDataSet): Boolean;
    function DuplicateRecord(ASource, ATarget: TDataSet): Boolean;
    function ModifyDataSetData(AValidDataSet, AUpdateDataSet: TNClientDataSet): Boolean;
    function ChangeCountAllDataset(ADataSet: TClientDataSet): Int64;
    function SetReadOnlyDataset(ADataSet: TClientDataSet; AReadOnly: Boolean): Boolean;
    function GetDataSetKey(ADataSet: TNClientDataSet): String;

    function GenerateParameterKey(AKey: string): string;

    property AppConfig: TNConfig read FAppConfig write FAppConfig;
    property EnterForNextControl: string read FEnterForNextControl write FEnterForNextControl;
    property FormList: TStringList read FFormList write FFormList;
    property AppPath: String read FAppPath write FAppPath;
    property RemoteServer: TSessionServerModuleClient read FRemoteServer;
    property UserID: string read FUserID write FUserID;
    property SelectedHolidayYear: word read FSelectedHolidayYear write FSelectedHolidayYear;
    property SearchGroupList: TStringList read FSearchGroupList write FSearchGroupList;
    property SearchItemsList: TStringList read FSearchItemsList write FSearchItemsList;
    property ListReport: TStringList read FListReport;
    property IPAddress: string read FIPAddress write FIPAddress;
    property CompName: string read FCompName write FCompName;
    property OMGOutboundDir: string read FOMGOutboundDir write FOMGOutboundDir;
    property OMGBIC: string read FOMGBIC write FOMGBIC;
    property OMGMachineID: string read FOMGMachineID write FOMGMachineID;
    property MKBDOutPath: string read FMKBDOutPath write FMKBDOutPath;
    property CBESTOutPath: string read FCBESTOutPath write FCBESTOutPath;

    property IntDataLookup: TdmLookup read FDataLookup;
    property IntDataReport: TdmReport read FDataReport;
    property IntDataConnector: TdmConnector read FDataConnector;
	  property BottomBid: Double read FBottomBid write FBottomBid;
    property TopBid: Double read FTopBid write FTopBid;
    property BottomOffer: Double read FBottomOffer write FBottomOffer;
    property TopOffer: Double read FTopOffer write FTopOffer;
    property SecondIdleSystem: Integer read FSecondIdleSystem write FSecondIdleSystem;
    property IntDataCBest: TdmCBest read FDataCBest;
    property FITSBankInterfaceDir: string read FFITSBankInterfaceDir write FFITSBankInterfaceDir;
    property FITSCBestInterfaceDir: string read FFITSCBestInterfaceDir write FFITSCBestInterfaceDir;
    property FITSJournalListDir: string read FFITSJournalListDir write FFITSJournalListDir;
    property BCACheckSum: string read FBCACheckSum write FBCACheckSum;
    property MyCallBackName: String read FMyCallBackName write FMyCallBackName;
    property NayagaDir: String read FNayagaDir write FNayagaDir;
    property NayagaHelpFile: String read FNayagaHelpFile write FNayagaHelpFile;
    property NayagaHelpConfigFile: String read FNayagaHelpConfigFile write FNayagaHelpConfigFile;

    property LastOTCConfirmWith: string read FLastOTCConfirmWith write FLastOTCConfirmWith;
    property BankDefDesc: string read FBankDefDesc write FBankDefDesc;

    procedure GenerateBCAChecksum(AFileName, ATransferMode: string);

    //For Help to Create New Account From System
    //1 --> Create Allocation Account
    //2 --> Create Emiten Account
    //3 --> Create Repo Account
    //4 --> Create House Account Company
    //5 --> Create Margin Account
    //6 --> Create Clearing House Account
    //7 --> Create Broker Account
    //8 --> Create Walk In Client
    property NewAccountTag: Integer read FNewAccountTag write FNewAccountTag;

    property StockDepDate: TDateTime read FStockDepDate write FStockDepDate;

    {MKBD}
    function generatereportdata(RptType : string; RptDate : TDate): Boolean;
    property ReportTypeDifferent: String read FReportTypeDifferent write FReportTypeDifferent;

    //EndDayProtection
    property EndDayProcess: Boolean read FEndDayProcess write SetEndDayProcess;

    //Additional for help default accountid when insert transaction
    property DefaultAccountID: Integer read FDefaultAccountID write FDefaultAccountID;
    property DefaultCurrency: string read FDefaultCurrency write FDefaultCurrency;
    property DefaultAmount : Double read FDefaultAmount write FDefaultAmount;

    property OldRepoContractID: Int64 read FOldRepoContractID write FOldRepoContractID;

    function DecToRoman(Decimal : LongInt): string;

    //Additional for help set account credit limit
    property AccountCreditLimit: Integer read FAccountCreditLimit write FAccountCreditLimit;
    procedure CreateMergeCells(ASheet: TXLSWorkSheet; col1, row1, col2, row2: Integer);

    function PhoneNoWithCounCode(ACounCode: string; APhoneNo: string): string;
    property ShowDukcapil: Boolean read FShowDukcapil write FShowDukcapil;
    function GetKSEINo(ALastKSEINo: string): string;

    property CashDepID: integer read FCashDepID write FCashDepID;
    property CashDepRDNID: integer read FCashDepRDNID write FCashDepRDNID;

    property IntDataSInvest: TdmSInvest read FDataSInvest;
    property SInvestGenerateFolder: string read FSInvestGenerateFolder;
    property SInvestDownload: string read FSinvestDownloadFolder;

    procedure ReplaceXMLstring(AFileName: string);

    property DailyReportFolder: string read FDailyReportFolder;
    property JournalReverseList: TStringList read FJournalReverseList write FJournalReverseList;
    procedure CreateJournalReverseList;
    procedure FreeJournalReverseList;

    { Application Version }
//    function SynchronizeApplication: Boolean;
    procedure SynchronizeApplication;
    procedure UpdateApplication;
    procedure GetApplicationBuildInfo(exeName: string; var V1, V2, V3, V4: word);
    function GetBuildInfoAsString(exeName: string): string;
    function GetVersionInfoAsString(exeName: string): string;

    { Application Version New }
    procedure CheckAppVersion;

    function InsertDataSet(const ADataSet: TClientDataSet; const AData: String; out ADataType: Integer): Boolean;
    function JSONToDataSet(const ADataSet: TClientDataSet; AValue: TJSONArray): Boolean;
    function DataSetToJSON(const ADataSet: TDataSet; out AValue: TJSONValue): boolean;
    function StringToDate(const AValue: String): TDate;
    function StringToDateTime(const AValue: String): TDateTime;

    function GetGUID: String;

    property NeedToDelete: boolean read FNeedToDelete write FNeedToDelete;
    property DeleteAct: boolean read FDeleteAct write FDeleteAct;

    { Debug Mode Information }
    property DebugMode: boolean read FDebugMode write FDebugMode;

    { Surveilance Settings }
    property FakeDemandSupplyAmendSupply: integer read FFakeDemandSupplyAmendSupply write FFakeDemandSupplyAmendSupply;
    property FrontRunningBigReleaseQty: integer read FFrontRunningBigReleaseQty write FFrontRunningBigReleaseQty;
    property FrontRunningRageTime: integer read FFrontRunningRageTime write FFrontRunningRageTime;
    property MarkingTheCloseMinimalOrderQty: integer read FMarkingTheCloseMinimalOrderQty write FMarkingTheCloseMinimalOrderQty;
    property MarkingTheCloseStartTime: string read FMarkingTheCloseStartTime write FMarkingTheCloseStartTime;
    property MarkingTheCloseEndTime: string read FMarkingTheCloseEndTime write FMarkingTheCloseEndTime;
    property UnusualMarketVolTransCount: integer read FUnusualMarketVolTransCount write FUnusualMarketVolTransCount;
    property WashsaleSID: integer read FWashsaleSID write FWashsaleSID;
    property WashsaleNPWP: integer read FWashsaleNPWP write FWashsaleNPWP;
    property WashsaleContactPerson: integer read FWashsaleContactPerson write FWashsaleContactPerson;
    property WashsaleHomeAddress: integer read FWashsaleHomeAddress write FWashsaleHomeAddress;
    property WashsaleOfficeAddress: integer read FWashsaleOfficeAddress write FWashsaleOfficeAddress;
    property WashsaleSpouse: integer read FWashsaleSpouse write FWashsaleSpouse;
    property WashsaleBankAccount: integer read FWashsaleBankAccount write FWashsaleBankAccount;
    property WashsaleEmail: integer read FWashsaleEmail write FWashsaleEmail;

    procedure LoadingSurveilanceSetting;

    { General Function }
    function IsIntegerInArray(const ANumber: Integer; const AArray: Array of Integer): Boolean;
    function IsStringInArray(const AValue: String; const AArray: Array of String): Boolean;

    procedure CreateSelecctedAccountID(const ADataSet: TClientDataSet; const ACCID: TArray<Integer>);

    { Cash Withdraw Type }
    property CashWithdrawType: string read FCashWithdrawType write FCashWithdrawType;

    { AML Condition Parameter }
    property BatasPenghasilanNetAsset: Double read FBatasPenghasilanNetAsset write FBatasPenghasilanNetAsset;
    property BatasAtasNetAsset: Double read FBatasAtasNetAsset write FBatasAtasNetAsset;
    property BatasAtasUsia: Double read FBatasAtasUsia write FBatasAtasUsia;
    property BatasAtasDeposit: Double read FBatasAtasDeposit write FBatasAtasDeposit;
    property Rataan: Double read FRataan write FRataan;
    property Deviasi: Double read FDeviasi write FDeviasi;
    property Penghasilan: Double read FPenghasilan write FPenghasilan;
    property PerkalianTertentu: Double read FPerkalianTertentu write FPerkalianTertentu;
    property RataanNetPlusDeviasi: Double read FRataanNetPlusDeviasi write FRataanNetPlusDeviasi;
    property TotalPlusDeviasi: Double read FTotalPlusDeviasi write FTotalPlusDeviasi;

    property idTCPClient: TIdTCPClient read fidTCPClient write fidTCPClient;
  end;

var
  dmGlobal: TdmGlobal;

implementation

uses FormMain, FormBanks, FormChannels, FormMarkets,
  FormCommTables, FormCommissionTables, FormCurrencyList, FormInterestList,
  FormInterestTables, FormLuInterestTable, FormInstruments, FormInstrumentTypes,
  FormBoards, FormBrokers, FormDealTickets, FormCharges, FormChargeTables,
  FormCommissionList, FormBranchList, FormDealerList, FormSalesAgentList,
  FormSalesList, FormDTE, FormFiscalYearList, FormPeriodList, FormContracts,
  FormProductList, FormProductTypeList, FormAccParamClasses,
  FormActLedgerClassList, FormActLedgerTypeList, FormTradingLimitClassList,
  FormClosingPrice, FormCOAList, FormExchangeRates, FormEntityList,
  FormAccountList, FormMonthlyStatementProcess, FormOMGMonitor, FormJrnTypeList, FormCPCenterList, FormEventList,
  FormKSEIRequest, FormJournalInputList, FormTrialBalance, FormContactUsageList,
  FormCashSettleInstruction, FormBankRecons, FormStockSettleInstruction,
  FormClientInquiry, FormCashDepList, FormCashWdrList, FormEndOfDay,
  FormARAPAging, FormCashPosition, FormStockAging, FormStockPosition,
  FormFacilitationTrade, FormWarehouseTrade, FormCrossTomTrade,
  FormBatchConfigList, FormCOBList, FormBankReceive, FormDailyTradeSummary,
  FormCompanyList, FormBalanceSheet, FormProfitLost, FormCompanyAccountList, FormAccLedgerTempList, FormCashFlow,
  FormCBestInstruction, FormIPOList, FormInstrumentBondList, FormBondsDealTicketList,
  FormLetterOfConfirmation, FormFixedAssetGroupList,
  FormFixedAssetList, FormAssetDepreciationTableList, FormAccLedgerBalPosition,
  FormStockDepList, FormStockWdrList, FormLoginDialog, FormReconcileDTE,
  FormAccountCompanyList, FormSettlementInstruction, FormEmailConfigList,
  FormEmailMonitoring, FormStockVoucherList, FormCashVoucherList,
  FormJournalList, FormTrialBalanceByCcy, FormTrialBalanceConsolidated,
  FormUserActivity, FormCityList, FormCountryList, FormProvinceList,
  FormCustodyList, FormGLAccountActivity, FormReportSalesActivity,
  FormReportClientActivity, FormPaymentList, FormReceiptList, FormCCClassList, FormPermissions,
  FormRDNRequest, FormAccLedgerClassList,
  FormLendBorrowList, FormCorpactList, FormCorpactEntList, FormAccSuspendList,
  FormClosingProcessList, FormSettleInstrList, FormAccUnSuspendList, FormDorman, FormHolidayList,
  FormUserMonitoring, FormDataOwnerSetting, FormUserConfigList,
  FormCashMutationList, FormGLJournalList, FormCOBGroupAssign, FormStockRecon,
  FormUserGroupList, FormKSEIRDNUpload, FormAccCreditLimitList,
  FormReportStatementOfAccount, FormMonthlyStatement, FormExpiredDocList,
  FormCashProjection, FromStockDelRev, FormContractBonds,
  FormGenerateContractBondsDealTicket, FormCTPRecon, FormGeneralLedgerJournal,
  FormmCashSettlement, FormStockSettement, FormStockSettle,
  FormBondsTradeOfConfirmation, FormReportCashDepositList,
  FormReportCashWithdrawList, FormReportStockPosBySalesAcc,
  FormReportStockPosBySalesStock, FormAuthPerson, FormReportVoucherSummary,
  FormARAPSummary, FormBusinessLineList, FormJournalMap,
  FormReportCashVoucher, FormReportTest, FormGLJournalMap, FormIDXTrade, FormBatchConfigSetting,
  FormIDXOrder, FormReportAccountStatusList, FormReportContractDate, FormBussTypes,
  FormUserAdministrator, FormBAEList, FormSOPList, FormDHK, FormOpenDormanList,
  FormARAPReport, FormContractRepo, FormBankMutation, FormOTCInstruction,
  FormKSEIAccReconcile, FormReportFundLedgerBalance,
  FormReportSecuritiesLedgerBalance, FormReportFundLedgerJournal, FormWHTList,
  FormReportSalesCommission, FormReportClientCommission, FormCashSettlementList,
  FormReportClientCommissionByRange, FormBankPaymentList, FormBankReceiveList,
  FormDHKCash, FormHandOverExer, FormCashDebetCreditNoteList, FormCorpactCashLoanApproval,
  FormExerciseMonitoring, FormBasic, FormDOTList, FormReportBalanceSheetReport,
  FromReportTrialBalance, FormReportProfitLossStatement, FormProduct,
  FormProvisionPortFolioM2M, FormAccountInterestList,
  FormInterestTrackList, FormReportSecuritiesLedgerJournal,
  FormUploadDataFeedback, FormStockMovList, FormCashMovList,
  FormCustHaircutList, FormACSList, FormTenderOfferList, FormMTIRecordList,
  FormMTITransList, FormMTIConfigList, FormOmgeoMonitor, FormAccountOmgeoList,
  FormReportStockActivityProfiltLoss, FormTaxInvoiceList,
  FormTaxinvOfficeNoList, FormGLWithFL, FormCompanyBankRecons,
  FormGLwithBANKRekon, FormGLWithSLRecon, FormBankMovement, FormApprovalRequest,
  FormEditorBasic, FormAuditTrail, FormApprovalHistory,
  FormMyApprovalRequestList, FormReportList, FormGridReportEditor,
  FormReportGridList, FormOpeningAccount, FormClosingAccountList, FormGLTypes,
  FormCashPositionMovementList, FormBatchConfigs,FormReportDormantClient,
  FormReportDailyTradeByClientOrClientType, FormReportClientPortofolio,
  FormReportStockPosByClientAcc, FormReportDailyTradeByAgent,
  FormReportStockPortfolio, FormInterestTracksList, FormGLInterfaces,
  FormReportClientDetail, FormReportMarginCashAccountBalance,
  FormReportTotalShareValue, FormReportTotalDetailShareCollateral,
  FormReportMarketCapitalization,
  FormReportTop15SingleStockCashClient,
  FormReportTotalDetailOutstandingShareValue,
  FormReportTotalOutstandingCashClient,
  FormReportTotalLoanMarginClient, FormReportAgingMonitoring,
  FormReportProductList, FormReportClientAccountBalanceSummary,
  FormReportSummaryActivityByAgentPerClient, FormReportDetailedPortofolioClient,
  FormReportMarginAccountSummary, FormReportDetailOutstandingCashClient,
  FormReportExceptional, FormReportForceSelling,
  FormReportDetailOutstandingMarginClient,
  FormReportTotalDetailOutstandingContraClient, FormReportListStockEfek,
  FormReportMarginYU, FormReportGroupTypes, FormReportTypes,
  FormOpeningRepoContract, FormMarginMonitor, FormReportDefs, FormReportSources,
  FormReportNTransform, FormCreateReport, FormGenerateReportByReportType,
  FormCheckDifferent, FormMKBDSupportingData, FormDataSetOffList, FormCashBalanceAccount,
  FormLTHReport, FormPortfolioDetailsReport,
  FormReportSupportingDataMKBD, FormReportCashAccountStatement,
  FormReportStatementOfAccountCSO, FormReportInvestorOpeningAccount,
  FormReportNotificationToClient, FormReportAuditLog, FormREPOMonitor,
  FormChangeColList, FormChangeCol, FormReportMonthlyStamp  ,

  //Froms Report Credit Control;

  FormReportTop15SingleExposureOnMarginAndRepo,
  FormReportCombinedAccountReceivablePayable,
  FormReportMarginAccountSummaryByAgent,
  FormReportMarginAccountSummaryByClient,
  FormReportMarginAccountSummaryUSD,
  FormReportExposureReport,
  FormReportMarginStatement,
  FormReportSingleCounterMargin,
  FormReportOutstandingRepoDueForSettlement,
  FormReportRegularAccountSummary,
  FormReportForecastCombinedACReceivablePayable,
  FormReportOSTrxWithSettlementMovement,
  FormReportMarginTPlusFinancingCreditRisk,
  FormReportShareBalanceByClient,
  FormReportClientActivityAndSharesMovement,
  FormReportMarginProduct,
  FormReportListOfNewClient,
  FormReportRegularSummaryCrossBorderTrades,
  FormReportShareBalanceWithShareValue,
  FormReportLaporanREPOReverseREPO,
  FormReportCashStatement,

  //Forms Report Settlement;

  FormReportAnnouncementWarrant,
  FormReportBorrowingFeeReportInternalCSI,
  FormReportBorrowingFeeReportNasabah,
  FormReportBukuPembantuEfekAMT,
  FormReportCBestAndClientCustodyReconciliation,
  FormReportCBestDailyTradeList,
  FormReportConfirmationCorpactDetailReverseStock,
  FormReportDailyCommision,
  FormReportDailyReportOddLotPosition,
  FormReportDailyTransactionReport,
  FormReportLaporanKegiatanPerantaraPedagangEfek,
  FormReportLaporanPendukungVD55,
  FormReportLaporanPendukungVD57,
  FormReportMonthlySafeCustodyStatementOfAccount,
  FormReportMovementSafeCustody,
  FormReportOutstandingTradesDueForDelivery,
  FormReportPembayaranSahamIPO,
  FormReportPendukungDailyTransaction,
  FormReportPortfolioAndCashAccountStatement,
  FormReportReconPortofolioReportUntukIDX,
  FormReportRekapInstruksiDistribusiIPO,
  FormReportRekapitulasiTransaksiSaham,
  FormReportSafeKeepingFeeStatement,
  FormReportScheduleCorporateAction,
  FormReportSettlementInstructionForBondTransaction,
  FormReportShareBalancesByProduk,
  FormReportSummaryObligasi,
  FormReportSummarySuspenseAccount,
  FormReportTCObligasi,
  FormReportTradeListWithCustodianBank,
  FormReportStockShortSell,

  //Finance Accounting

  FormReportCashDividendEntitlementListing,
  FormReportCashDividendPayment,
  FormReportInterestPrincipalizedForCashAccount,
  FormReportOutstandingTransactionDueForSettlement,
  FormReportOutstandingTransactionWithSettlementMovement,
  FormReportOutstandingTradesDueForSettlement,
  FormReportRecommendedTransactionsForSetoffRollOver,
  FormReportRepoDailyTrade, FormReportBOFISDHKmatch,
  FormReportStockHoldingByAgent, FormReportStockHoldingByClient,
  FormReportStockHoldingByStock, FormReportShareBalancesByAgent,
  FormReportCorpactEntitlementListing,
  FormReportClientTradeActivityByPurchaseSales, FormReportAgentRanking,
  FormReportMarginMKBD, FormReportDailyTradeDetail, FormReportValueAddedTax,
  FormFidessaLimit, FormDailyMarketTransaction,
  FormReportDailyCommisionGrid, FormReportWashSale,
  FormReportCreditLimitViolation, FormReportValueAddedTaxGrid,
  FormReportClientCommisionList, FormReportTransactionRecapitulation, FormReportTradeAccountInterface,
  FormCashLedgerBalance, FormStockLedgerBalance, FormClosingPriceList,
  FormReportDailyPaymentReceive, FormMonthlyLTAB, FormCashTransaction,
  FormCashSettlementVoucherList, FormREPOSettlement, FormRenewalRepoContract,
  FormRenewalContractRepoList, FormBondsClosePriceList, FormStockSettementList,
  FormMKBDSupportingReport, FormCashSettlementList2, FormReportBondsDailyTrade,
  FormReportStockDepositList, FormReportStockWithdrawList,
  FormReportClientStockActivity, FormOpeningAccountHistory,
  FormStockSettlementVoucherList, FormCompanyBankList, FormDailyCashOutstanding,
  FormDailyBankInstruction, FormRDNCashDepositList, FormCashBookList,
  FormDHKList, FormVD55MonthlySupport, FormEODSupport, FormCashDebetCreditNotesList,
  FormGLTypeList, FormMKBDVD55Monthly, FormReferralList, FormReferralTypeList,
  FormCommShareList, FormStockSettleVoucherList, FormClient2Inquery,
  FormReportAccountBalanceSummary, FormReportClientCommisionLists,
  FormReportAccountStatus, FormReportAgingMonitoringList,
  FormReportCashStatementList, FormReportForceSellingList,
  FormReportDetailedPortfolioClientList,
  FormReportDetailedOuttandRegularClientRetailList, FormReportDormantClientList,
  FormReportDetailedOutstandNasabahMarginList, FormReportExceptionalList,
  FormReportListStockEfekList, FormReportListOfProductList,
  FormReportMarginAccountSummaryList, FormReportMarginAccountSummaryUSDList,
  FormReportMarginCashAccountBalanceList, FormMarginAlertList, FormVidesaCreditLimitList,
  FormReportMKBDCompare, FormReportARAPNetting, FormReportDailyCashProjection,
  FormReportSupportMBKDVD5, FormVD57Qty, FormReportCorpactAnno, FormReportDOT, FormReportVD51_2, FormReportIDXClearingResult,
  FormReportAccountActiveList, FormReportAccountClosedList,
  FormReportAccountDormanList, FormReportAccountSuspendList,
  FormOTCSettlementList, FormStaticDataLog, FormProjectList, FormEmployeeList,
  FormGlobalParamList, FormAccSInvestList, FormSInvProcessList,
  FormSInvProcessUploadList, FormSInvTradeAllocList,
  FormPortfolioRevaluationList, FormGenerateDailyTransReport,
  FormNextOfYearProcess, FormFundLedgerList, FormStockLedgerList,
  FormMonthlyTransactionReport, FormProcessWait, FormProgressBar,
  FormReportMonthlyTax, FormReportMonthlyTaxSummary, FormReportTotalTransaction,
  FormReportOpeningAccountByDate, FormReportAccountPosByStock,
  FormReportStockPosByAccount, FormReportClientActivityInsReg,
  FormReportClientActivityOLNonOL, FormReportAccountAging, FormRDNBankReconList,
  FormCashSettlementT4, FormReportTradeTransaction, FormVD510Static,
  FormReportCustomersData, FormReportCustomersDataList, FormReportFundStatement,
  FormAccountDormanList, FormOccupationList, FormEBlastList,
  FormEBlastCustomerList, FormCorpactExerciseList, FormCorpactEntitlementList,
  FormCOAConfigList, FormReportTradeConfirmation,
  FormStockMovProgramList, FormCompareCashBalancePosition, FormReportTrialBalanceStock, FormGLClient, FormReportTrialBalanceClient,
  FormReportARAPNettingHistory, FormLPPE, FormReportTradeTransactionNew, FormInputJurnalBankList, FormInputJurnalBank,

  //BOFIS Reconcile
  FormReconcileBOFIS,

  //Receive Email
  FormReveiceEmailList,

  //E-IPO
  FormEIPOAllotmentList, FormEIPOList, FormReportSummaryMarketTradeActivity,

  //FormJournalList
  FormJournalsList,

  FormSInvestReconTC,

  FormSInvestRecon, FormSInvestMonitoringList, FormSlikInterfaceList,
  FormGLInterfaceList, FormEODProcess, FormSInvestAutoSplitList, FormVD5Config,
  FormDailyInterestOutsList, FormInvoiceInterestList,
  FormWaveInterestPenaltyList, FormReportFakeDemand, FormReportFrontRunning,
  FormReportMarkingTheClose, FormReportUnusualMarketVol, FormSurvailanceSetting,
  FormPtbFakeDemandSupply, FormPtbFrontRunning, FormPtbMarkingTheClose,
  FormPtbUnusualMarketVol, FormPTBWashSale, FormReportDailyInterestActivity,
  FormDailyInstructionList, FormAlternateCashSettlementList,
  FormCorpactExercise, FormTodoList, FormAMLSetting, FormBankCompanyList,
  FormVerdhanaOMSInsti, FormGenerateAMLDataReport, FormGenerateAMLDataReportHis,
  FormAMLSummary, FormAmlAccountList, FormEMateraiMonitoringList,
  FormEMateraiConfig, FormVerdhanaOrderList, FormCompanyCustodyList,
  FormMonthlyXE13Report, FormDepositoBankList, FormACTReconcile,
  FormDepositoList, FormIDXMonthlyTransactionReport, FormReksdanaList;

{$R *.dfm}

{ TdmGlobal }

procedure TdmGlobal.ParseDelimited(const sl: TStrings; const value: string; const delimiter: string);
var
  dx: integer;
  ns: string;
  txt: string;
  delta: integer;
begin
  delta := Length(delimiter);
  txt := value + delimiter;
  sl.BeginUpdate;
  sl.Clear;
  try
    while Length(txt) > 0 do
    begin
      dx := Pos(delimiter, txt) ;
      ns := Copy(txt,0,dx-1) ;
      sl.Add(ns) ;
      txt := Copy(txt,dx+delta,MaxInt) ;
    end;
  finally
    sl.EndUpdate;
  end;
end;

function TdmGlobal.PhoneNoWithCounCode(ACounCode, APhoneNo: string): string;
var
  sFirst,
  sCounCode,
  sPhoneNo: string;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open;

    if cdsLuCounNation.Locate('CODE', ACounCode, []) then
      sCounCode := cdsLuCounNationPHONECODE.AsString
    else
      sCounCode := '';

    sFirst := Copy(APhoneNo, 1, 1);
    if sFirst = '0' then
    begin
      sPhoneNo := Copy(APhoneNo, 2, Length(APhoneNo));
      Result   := '+'+ sCounCode +'-'+ sPhoneNo;
    end
    else
      Result := APhoneNo;
  end;
end;

procedure TdmGlobal.ShowForm(AFormClass: TFormClass);
//var
//  oMainForm: TfrmMain;
begin
//  oMainForm := TfrmMain(Application.MainForm);
//  oMainForm.CreatePluginPanel(AFormClass, True);
end;

procedure TdmGlobal.ackBankReceiveExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmRDNReceive);
end;

procedure TdmGlobal.actAccCreditLimitExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccCreditLimitList);
end;

procedure TdmGlobal.actAccDormanExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDorman);
end;

procedure TdmGlobal.actAccLedgerBalPositionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccLedgerBalPosition);
end;

procedure TdmGlobal.actAccLedgerTemplateExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccLedgerTempList);
end;

procedure TdmGlobal.actAccLegClassExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccLedgerClassList);
end;

procedure TdmGlobal.actAccOmgeoConfigExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccountOmgeoList);
end;

procedure TdmGlobal.actAccountDormanExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccountDormanList);
end;

procedure TdmGlobal.actAccountInterestExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccountInterestList);
end;

procedure TdmGlobal.actAccountLedgerClassExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmActLedgerClassList);
end;

procedure TdmGlobal.actAccountLedgerTypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmActLedgerTypeList);
end;

procedure TdmGlobal.actAccountManagementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccountList);
end;

procedure TdmGlobal.actAccountSuspendExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccSuspendList);
end;

procedure TdmGlobal.actAccSInvestConfExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccSInvestList);
end;

procedure TdmGlobal.actAccStatListExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportAccountStatusList);
  frmMain.ShowForm(TfrmReportAccountStatus);
end;

procedure TdmGlobal.actAccUnSuspendExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccUnSuspendList);
end;

procedure TdmGlobal.actACSListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmACSList);
end;

procedure TdmGlobal.actACTReconcileExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmACTReconcile);
end;

procedure TdmGlobal.actAgingARAPExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmARAPAging);
end;

procedure TdmGlobal.actAlternateCashSettlementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAlternateCashSettlementList);
end;

procedure TdmGlobal.actAMLConditionParameterExecute(Sender: TObject);
begin
  ShowAMLSetting;
end;

procedure TdmGlobal.actAMLGenerateReportMonitoringExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGenerateAMLDataReport);
end;

procedure TdmGlobal.actAMLGenerateReportMonitoringHisExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGenerateAMLDataReportHis);
end;

procedure TdmGlobal.actAMLListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAmlAccountList);
end;

procedure TdmGlobal.actAmlSummaryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAMLSummary);
end;

procedure TdmGlobal.actApprovalHistoryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmApprovalHistory);
end;

procedure TdmGlobal.actApprovalRequestExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmApprovalRequest);
end;

procedure TdmGlobal.actARAPReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmARAPReport);
end;

procedure TdmGlobal.actBatchConfigSettingExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBatchConfigSetting);
end;

procedure TdmGlobal.actAssignGroupToCOBExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCOBGroupAssign);
end;

procedure TdmGlobal.actAuthPersonExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAuthPerson);
end;

procedure TdmGlobal.actBAEExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBAEList);
end;

procedure TdmGlobal.actBalanceSheetExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBalanceSheet);
end;

procedure TdmGlobal.actBalanceSheetReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBalanceSheetReport);
end;

procedure TdmGlobal.actBankCompanyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBankCompanyList);
end;

procedure TdmGlobal.actBankExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBanks);
end;

procedure TdmGlobal.actBankMutationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBankMovement);
end;

procedure TdmGlobal.actBankPaymentListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBankPaymentList);
end;

procedure TdmGlobal.actBankReceiveListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBankReceiveList);
end;

procedure TdmGlobal.actBankReconExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBankRecons);
end;

procedure TdmGlobal.actBatchConfigExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmBatchConfigList);
end;

procedure TdmGlobal.actBoardExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBoards);
end;

procedure TdmGlobal.actBOFISReconExecute(Sender: TObject);
begin
  frmReconcileBOFIS := TfrmReconcileBOFIS.Create(Nil);
  Try
    frmReconcileBOFIS.ShowModal;
  Finally
    FreeAndNil(frmReconcileBOFIS);
  End;
end;

procedure TdmGlobal.actBondsDealTicketContractExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGenerateContractBonds);
end;

procedure TdmGlobal.actBondsDealTicketExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBondsDealTicketList);
end;

procedure TdmGlobal.actBondsClosingPriceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBondsClosePriceList);
end;

procedure TdmGlobal.actBranchExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBranchList);
end;

procedure TdmGlobal.actBrokerExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBrokers);
end;

procedure TdmGlobal.actBusinessLineExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBusinessLineList);
end;

procedure TdmGlobal.actBussTypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBussTypes);
end;

procedure TdmGlobal.actAccountParamClassExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAccParamClasses);
end;

procedure TdmGlobal.actCashBalanceAccountExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashBalanceAccount);
end;

procedure TdmGlobal.actCashBookExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashBookList);
end;

procedure TdmGlobal.actCashDCNotesExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmCashDebetCreditNoteList);
  frmMain.ShowForm(TfrmCashDebetCreditNotesList);
end;

procedure TdmGlobal.actCashDepositExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashDepList);
end;

procedure TdmGlobal.actCashDepositRDNExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmRDNCashDepositList);
end;

procedure TdmGlobal.actCashFlowExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashFlow);
end;

procedure TdmGlobal.actCashLedgerBalanceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashLedgerBalance);
end;

procedure TdmGlobal.actCashMovementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashMovList);
end;

procedure TdmGlobal.actCashMutationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashMutationList);
end;

procedure TdmGlobal.actCashPositionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashPosition);
end;

procedure TdmGlobal.actCashPositionMovementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashPositionMovementList);
end;

procedure TdmGlobal.actCashProjectionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashProjection);
end;

procedure TdmGlobal.actCashSettlementExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmCashSettlement);
//  frmMain.ShowForm(TfrmCashSettlementList);
  frmMain.ShowForm(TfrmCashSettlementList2);
end;

procedure TdmGlobal.actCashSettlementVoucherExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashSettlementVoucherList);
end;

procedure TdmGlobal.actCashTransactionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashTransaction);
end;

procedure TdmGlobal.actReportCashStatementExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportCashStatement);
  frmMain.ShowForm(TfrmReportCashStatementList);
end;

procedure TdmGlobal.actCashVoucherExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashVoucherList);
end;

procedure TdmGlobal.actCashWithdrawExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashWdrList);
end;

procedure TdmGlobal.actCBestInstructionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCBestInstruction);
end;

procedure TdmGlobal.actCCClassExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCCClassList);
end;

procedure TdmGlobal.actChangeCollateralExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmChangeColList);
end;

procedure TdmGlobal.actChannelExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmChannels);
end;

procedure TdmGlobal.actChargeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCharges);
end;

procedure TdmGlobal.actChargeTableExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmChargeTables);
end;

procedure TdmGlobal.actCheckDifferentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCheckDifferent);
end;

procedure TdmGlobal.actCityExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCityList);
end;

procedure TdmGlobal.actReportClientActivityAndSharesMovementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientActivityAndSharesMovement);
end;

procedure TdmGlobal.actClientInquiryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmClient2Inquery);
end;

procedure TdmGlobal.actClosingPriceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmClosingPriceList);
end;

procedure TdmGlobal.actClosingProcessExecute(Sender: TObject);
begin
//  frmMain.Showform(TfrmClosingProcessList);
  frmMain.ShowForm(TfrmClosingAccountList);
end;

procedure TdmGlobal.actCOAConfigExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmCOAConfigList);
end;

procedure TdmGlobal.actCOAExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCOAList);
end;

procedure TdmGlobal.actReportCombinedAccountReceivablePayableExecute(Sender: TObject);
begin
//
end;

procedure TdmGlobal.actCommissionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCommissionList);
end;

procedure TdmGlobal.actCommShareExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCommShareList);
end;

procedure TdmGlobal.actCommTableExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmCommTables);
  frmMain.ShowForm(TfrmCommissionTables);
end;

procedure TdmGlobal.actCompanyAccountExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmCompanyAccList);
  frmMain.ShowForm(TfrmAccountCompanyList);
end;

procedure TdmGlobal.actCompanyBankExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCompanyBankList);
end;

procedure TdmGlobal.actCompanyBankReconExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCompanyBankRecons);
end;

procedure TdmGlobal.actCompanyCustodyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCompanyCustodyList);
end;

procedure TdmGlobal.actCompanyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCompanyList);
end;

procedure TdmGlobal.actCompareCashBalancePositionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCompareCashBalancePosition);
end;

procedure TdmGlobal.actConsolidatedTrialBalanceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmTrialBalanceConsolidated);
end;

procedure TdmGlobal.actContactUsageExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmContactUsageList);
end;

procedure TdmGlobal.actContractBondsExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmContractBonds);
end;

procedure TdmGlobal.actReverseRepoExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmOpeningRepoContract);
end;

procedure TdmGlobal.actRptGrpTypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportGroupTypes);
end;

procedure TdmGlobal.actReportStockActProfitLossExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockActivityProfitLoss);
end;

procedure TdmGlobal.actReportStockDepositListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockDepList);
end;

procedure TdmGlobal.actReportStockHoldingByClientExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockHoldingByClient);
end;

procedure TdmGlobal.actReportStockHoldingByAgentExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockHoldingByAgent);
end;

procedure TdmGlobal.actReportStockHoldingByStockExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockHoldingByStock);
end;

procedure TdmGlobal.actContractsExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmContracts);
end;

procedure TdmGlobal.actCountryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCountryList);
end;

procedure TdmGlobal.actCorpactCashLoanApprovalExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCorpactCashLoanApproval);
end;

procedure TdmGlobal.actCorpActEntExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCorpactEntList);
end;

procedure TdmGlobal.actCorpactEntitlementListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCorpactEntitlementList);
end;

procedure TdmGlobal.actCorpActExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCorpActList);
end;

procedure TdmGlobal.actCorpactExerciseLIstExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCorpactExerciseList);
end;

procedure TdmGlobal.actCorpActionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCorpActList);
end;

procedure TdmGlobal.actCPCenterExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmCPCenterList);
end;

procedure TdmGlobal.actCreateReportExecute(Sender: TObject);
begin
  frmCreateReport := TfrmCreateReport.Create(Nil);
  Try
    frmCreateReport.ShowModal;
  Finally
    FreeAndNil(frmCreateReport);
  End;
end;

procedure TdmGlobal.actCreteNewREPOExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmOpeningRepoContract);
end;

procedure TdmGlobal.actCrossTomTradeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCrossTomTrade);
end;

procedure TdmGlobal.actCTPReconExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCTPRecon);
end;

procedure TdmGlobal.actCurrencyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCurrencyList);
end;

procedure TdmGlobal.actCustodyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCustodyList);
end;

procedure TdmGlobal.actDailyBankInstructionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDailyBankInstruction);
end;

procedure TdmGlobal.actDailyCashOutstandingExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDailyCashOutstanding);
end;

procedure TdmGlobal.actDailyExchangeRateExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmExchangeRates);
end;

procedure TdmGlobal.actDailyInstructionListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDailyInstructionList);
end;

procedure TdmGlobal.actDailyInterestActivityExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmReportDailyInterestActivity);
end;

procedure TdmGlobal.actDailyInterestOutsExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDailyInterestOutsList);
end;

procedure TdmGlobal.actDailyMarketTransactionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDailyMarketTransaction);
end;

procedure TdmGlobal.actDailyStockSettleVoucherExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockSettleVoucherList);
end;

procedure TdmGlobal.actDailyTradeSumExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDailyTradeSummary);
end;

procedure TdmGlobal.actDealerExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDealerList);
end;

procedure TdmGlobal.actDealTicketsExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDealTickets);
end;

procedure TdmGlobal.actDepositoBankExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDepositoBankList);
end;

procedure TdmGlobal.actDepositoExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDepositoList);
end;

procedure TdmGlobal.actDepreciationTableExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmAssetDepreciationTableList);
end;

procedure TdmGlobal.actDHKCashExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDHKCash);
end;

procedure TdmGlobal.actDHKExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDHK);
end;

procedure TdmGlobal.actDHKReconcileExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDHKList);
end;

procedure TdmGlobal.actDOTExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDOTList);
end;

procedure TdmGlobal.actEBlastCustListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEBlastCustomerList);
end;

procedure TdmGlobal.actEIPOAllotmentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEIPOAllotmentList);
end;

procedure TdmGlobal.actEIPOExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEIPOList);
end;

procedure TdmGlobal.actEmailConfigExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEmailConfigList);
end;

procedure TdmGlobal.actEmailMonitoringExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEmailMonitoring);
end;

procedure TdmGlobal.actEMateraiConfigExecute(Sender: TObject);
begin
  frmMain.ShowForm(TFrmEMateraiConfig);
end;

procedure TdmGlobal.actEmateraiMonitortingListExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmEMateraiMonitoringList);
end;

procedure TdmGlobal.actEntityInformationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEntityList);
end;

procedure TdmGlobal.actEODProcessExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEODProcess);
end;

procedure TdmGlobal.actEventExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmEventList);
end;

procedure TdmGlobal.actExceptionalReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportExceptionalReport);
end;

procedure TdmGlobal.actExerciseMonitoringExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmExerciseMonitoring);
end;

procedure TdmGlobal.actExpiredDocListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmExpiredDocList);
end;

procedure TdmGlobal.actReportExposureReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportExposureReport);
end;

procedure TdmGlobal.actFacilitationTradeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmFacilitationTrade);
end;

procedure TdmGlobal.actFidessaLimitExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmFidessaLimit);
end;

procedure TdmGlobal.actFixedAssetExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmFixedAssetList);
end;

procedure TdmGlobal.actFixedAssetGroupExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmFixedAssetGroupList);
end;

procedure TdmGlobal.actFundLedgerJournalEntryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmFundLedgerList);
end;

procedure TdmGlobal.actReportForecastCombinedACReceivablePayableExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportForecastCombinedACReceivablePayable);
end;

procedure TdmGlobal.actReportFrontRunningExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportFrontRunning);
  frmmain.ShowForm(TfrmPtbFrontRunning);
end;

procedure TdmGlobal.actReportFakeDemandExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportFakeDemand);
  frmmain.ShowForm(TfrmPtbFakeDemand);
end;

procedure TdmGlobal.actReportForceSellingExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportForceSelling);
  frmMain.ShowForm(TfrmReportForceSellingList);
end;

procedure TdmGlobal.actReportFundLedgerBalanceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportFundLedgerBalance);
end;

procedure TdmGlobal.actReportFundLedgerJournalExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportFundLedgerJournal);
end;

procedure TdmGlobal.actReportFundStatementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportFundStatement);
end;

procedure TdmGlobal.actReportIdxClearingResultExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportIDXClearingResult);
end;

procedure TdmGlobal.actReportInterestPrincipalizedForCashAccountExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportInterestPrincipalizedForCashAccount);
end;

procedure TdmGlobal.actReportInterestTractListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInterestTrackList);
end;

procedure TdmGlobal.actReportInvestorOpeningAccountExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportInvestorOpeningAccount);
end;

procedure TdmGlobal.actReportListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportList);
end;

procedure TdmGlobal.actReportListStockEfekExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportListStockEfek);
  frmMain.ShowForm(TfrmReportListStockEfekList);
end;

procedure TdmGlobal.actReportMarginAccountSummaryExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportMarginAccountSummary);
  frmMain.ShowForm(TfrmReportMarginAccountSummaryList);
end;

procedure TdmGlobal.actReportMarginAccountSummaryUSDExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportMarginAccountSummaryUSD);
  frmMain.ShowForm(TfrmReportMarginAccountSummaryOnUSDList);
end;

procedure TdmGlobal.actReportMarginCashAccountBalanceExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportMarginCashAccountBalance);
  frmMain.ShowForm(TfrmReportMarginCashAccountBalanceList);
end;

procedure TdmGlobal.actReportMarginMKBDExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarginMKBD);
end;

procedure TdmGlobal.actReportMarginYUExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarginYU);
end;

procedure TdmGlobal.actReportMarketCapitalizationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarketCapitalization);
end;

procedure TdmGlobal.actReportMarkingTheCloseExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportMarkingTheClose);
  frmMain.ShowForm(TfrmPtbMarkingTheClose);
end;

procedure TdmGlobal.actReportMKBDCompare2DateExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMKBDCompare);
end;

procedure TdmGlobal.actReportMonthlyLTABExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMonthlyLTAB);
end;

procedure TdmGlobal.actReportMonthlySafeCustodyStatementOfAccountExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMonthlySafeCustodyStatementOfAccount);
end;

procedure TdmGlobal.actReportMonthlyStampExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMonthlyStamp);
end;


procedure TdmGlobal.actReportMonthlyTaxExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMonthlyTax);
end;

procedure TdmGlobal.actReportMonthlyTransactionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMonthlyTransactionReport);
end;

procedure TdmGlobal.actReportMonthlyVD55ReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMKBDVD55Monthly);
end;

procedure TdmGlobal.actReportMonthlyVD55SupportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmVD55MonthlySupport);
end;

procedure TdmGlobal.actReportEODSupportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEODSupport);
end;

procedure TdmGlobal.actReportMovementSafeCustodyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMovementSafeCustody);
end;

procedure TdmGlobal.actReportNotificationToClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportNotificationToClient);
end;

procedure TdmGlobal.actReportNTransformExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportNTransform);
end;

procedure TdmGlobal.actReportPembayaranSahamIPOExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportPembayaranSahamIPO);
end;

procedure TdmGlobal.actReportPendukungDailyTransactionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportPendukungDailyTransaction);
end;

procedure TdmGlobal.actReportPortfolioAndCashAccountStatementExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportPortfolioAndCashAccountStatement);
end;

procedure TdmGlobal.actReportProductListExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportProductList);
  frmMain.ShowForm(TfrmReportListOfProductList);
end;

procedure TdmGlobal.actReportProfitLossStatementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportProfilLossStatement);
end;

procedure TdmGlobal.actGenerateDailyTransReportExecute(Sender: TObject);
var
  oForm: TfrmGenerateDailyTransReport;
begin
  oForm := TfrmGenerateDailyTransReport.Create(nil);
  try
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TdmGlobal.actGenerateReportExecute(Sender: TObject);
var
  sMsg: String;
begin
  frmGenerateReportByRptType := TfrmGenerateReportByRptType.Create(Nil);
  Try
    with frmGenerateReportByRptType do
    begin
      if ShowModal = mrIgnore then
      begin
          sMsg := RemoteServer.GenerateMKBD;
          MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOK], 0);
      end;
    end;
  Finally
    ReportTypeDifferent := '';
    FreeAndNil(frmGenerateReportByRptType);
  End;
end;

procedure TdmGlobal.actGLActivityExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGLAccountActivity);
end;

procedure TdmGlobal.actGLClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGLClient);
end;

procedure TdmGlobal.actGLFiscalYearExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmFiscalYearList);
end;

procedure TdmGlobal.actGLInputExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmJournalInputList);
end;

procedure TdmGlobal.actGLInterfaceExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmGLInterfaces);
  frmMain.ShowForm(TfrmGLInterfaceList);
end;

procedure TdmGlobal.actGLJournalExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGeneralLedgerJournal);
end;

procedure TdmGlobal.actGLJournalMapExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGLJournalMap);
end;

procedure TdmGlobal.actGlobalParamExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGlobalParamList);
end;

procedure TdmGlobal.actGLPeriodExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmPeriodList);
end;

procedure TdmGlobal.actGLTypeExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmGLTypes);
  frmMain.ShowForm(TfrmGLTypeList);
end;

procedure TdmGlobal.actGLWithBankReconExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGLWithBankRecon);
end;

procedure TdmGlobal.actGLWithFLExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGLWithFL);
end;

procedure TdmGlobal.actGLWithSLReconExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmGLWithSLRecon);
end;

procedure TdmGlobal.actGridReportDesignerExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmGridReportEditor);
  frmMain.ShowForm(TfrmReportGridList);
end;

procedure TdmGlobal.actGroupAdminExecute(Sender: TObject);
var
  oForm: TfrmUserGroupList;
begin
  oForm := TfrmUserGroupList.Create(nil);
  oform.ShowModal;
  oForm.Free;
end;

procedure TdmGlobal.actHandOverExerExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmHandOverExer);
end;

procedure TdmGlobal.actHolidayExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmHolidayList);
end;

procedure TdmGlobal.actIdxClearingResult(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportIDXClearingResult);
end;

procedure TdmGlobal.actIDXMonthlyTransReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmIDXTransactionReport);
end;

procedure TdmGlobal.actIDXOrderExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmIDXOrder);
end;

procedure TdmGlobal.actIDXTradeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmIDXTrade);
end;

procedure TdmGlobal.actImportDTEExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDTE);
end;

procedure TdmGlobal.actInputBankExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInputJurnalBank);
end;

procedure TdmGlobal.actInputJurnalBankListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInputJurnalBankList);
end;

procedure TdmGlobal.actInstrumentBondsExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInstrumentBondsList);
end;

procedure TdmGlobal.actInstrumentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInstruments);
end;

procedure TdmGlobal.actInstrumentTypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInstrumentTypes);
end;

procedure TdmGlobal.actInterestExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInterestList);
end;

procedure TdmGlobal.actInterestTableExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInterestTables);
end;

procedure TdmGlobal.actInterestTrackExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSelectDataInterest);
end;

procedure TdmGlobal.actInvoiceInterestExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInvoiceInterestList);
end;

procedure TdmGlobal.ActionLogGetActionLog(Log: TNActionLog);
begin
  FRemoteServer.WriteActivityLog(Log.FormName, Log.ActionName, Log.ActionDesc, Log.ActionType);
end;

procedure TdmGlobal.actIPOExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmIPOList);
end;

procedure TdmGlobal.actLetterOfConfirmExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBondsTradeConfirmation);
end;

procedure TdmGlobal.actReportListOfNewClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportListOfNewClient);
end;

procedure TdmGlobal.actLTHReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmLTHReport);
end;

procedure TdmGlobal.actReportLaporanKegiatanPerantaraPedagangEfekExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmLPPE);
end;

procedure TdmGlobal.actReportLaporanPendukungVD57Execute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportLaporanPendukungVD57);
end;

procedure TdmGlobal.actReportLaporanREPOReverseREPOExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportLaporanREPOReverseREPO);
end;

procedure TdmGlobal.actLendBorrowExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmLendBorrowList);
end;

procedure TdmGlobal.actJournalBankListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmInputJurnalBankList);
end;

procedure TdmGlobal.actJournalInputExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmJournalInputList);
end;

procedure TdmGlobal.actJournalListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmJournalsList);
end;

procedure TdmGlobal.actJournalMapExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmJournalMap);
end;

procedure TdmGlobal.actJournalTypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmJrnTypeList);
end;

procedure TdmGlobal.actKSEIAccReconExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmKSEIAccReconcile);
end;

procedure TdmGlobal.actKSEIRDNUploadExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmKSEIRDNUpload);
end;

procedure TdmGlobal.actKSEIRequestExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmKSEIRequest);
end;

procedure TdmGlobal.actReportMarginAccountSummaryByAgentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarginAccountSummaryByAgent);
end;

procedure TdmGlobal.actReportMarginAccountSummaryByClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarginAccountSummaryByClient);
end;

procedure TdmGlobal.actMarginAlertExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMarginAlertList);
end;

procedure TdmGlobal.actMarginMonitoringExecute(Sender: TObject);
begin
  frmmain.ShowForm(TfrmMarginMonitor);
end;

procedure TdmGlobal.actReportMarginProductExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarginProduct);
end;

procedure TdmGlobal.actReportMarginStatementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarginStatement);
end;

procedure TdmGlobal.actReportMarginTPlusFinancingCreditRiskExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportMarginTPlusFinancingCreditRisk);
end;

procedure TdmGlobal.actMarketExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMarkets);
end;

procedure TdmGlobal.actMKBDSupportingReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMKBDSupportingReport);
end;

procedure TdmGlobal.actMonthlyStatementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMonthlyStatement);
end;

procedure TdmGlobal.actReportMonthlyTaxSummaryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMonthlyTaxSummary);
end;

procedure TdmGlobal.actMTIConfigExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMTIConfigList);
end;

procedure TdmGlobal.actMTIRecordExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMTIRecordList);
end;

procedure TdmGlobal.actMTITransExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMTITransList);
end;

procedure TdmGlobal.actMyApprovalRequestListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMyApprovalRequestList);
end;

procedure TdmGlobal.actNextOfYearProcessExecute(Sender: TObject);
var
  oForm: TfrmNextOfYearProcess;
begin
  try
    oForm := TfrmNextOfYearProcess.Create(nil);
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TdmGlobal.actOccupationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmOccupationList);
end;

procedure TdmGlobal.actOmgeoMonitorExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmOMGMonitor);
  frmMain.ShowForm(TfrmOmgeoMonitor);
end;

procedure TdmGlobal.actOpenDormanExecute(Sender: TObject);
begin
  frmMain.ShowForm(TFrmOpenDormanList);
end;

procedure TdmGlobal.actOpeningAccountHistoryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmOpeningAccountHistory);
end;

procedure TdmGlobal.actOpeningAccountsExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmCOBList);
  frmMain.ShowForm(TfrmOpeningAccount);
end;

procedure TdmGlobal.actOTCInstructionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmOTCInstruction);
end;

procedure TdmGlobal.actOTCSettlementListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmOTCSettlementList);
end;

procedure TdmGlobal.actReportOpeningAccountByDateExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportOpeningAccountByDate);
end;

procedure TdmGlobal.actReportOutstandingRepoDueForSettlementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportOutstandingRepoDueForSettlement);
end;

procedure TdmGlobal.actReportOutstandingTradesDueForDeliveryExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportOutstandingTradesDueForDelivery);
end;

procedure TdmGlobal.actReportOutstandingTradesDueForSettlementExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportOutstandingTradesDueForSettlement);
end;

procedure TdmGlobal.actReportOutstandingTransactionDueForSettlementExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportOutstandingTransactionDueForSettlement);
end;

procedure TdmGlobal.actReportOutstandingTransactionWithSettlementMovementExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportOutstandingTransactionWithSettlementMovement);
end;

procedure TdmGlobal.actBatchProcessExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmBatchConfigs);
end;

procedure TdmGlobal.actBlastConfigExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEBlastList);
end;

procedure TdmGlobal.actPaymentListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmPaymentList);
end;

procedure TdmGlobal.actPermissionsExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmPermissions);
end;

procedure TdmGlobal.actPortfolioRevaluationListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmPortfolioRevaluationList);
end;

procedure TdmGlobal.actPortofolioDetailReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmPortfolioDetailsReport);
end;

procedure TdmGlobal.actProcessMonthlyStatementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMonthlyStatementProcess);
end;

procedure TdmGlobal.actProductExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmProductList);
end;

procedure TdmGlobal.actProductypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmProductTypeList);
end;

procedure TdmGlobal.actProfitLostExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmProfitLost);
end;

procedure TdmGlobal.actRDNBankReconListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmRDNBankReconList);
end;

procedure TdmGlobal.actRDNRequestExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmRDNRequest);
end;

procedure TdmGlobal.actProvinceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmProvinceList);
end;

procedure TdmGlobal.actProvisionPortFolioM2MExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmProvisionPortFolioM2M);
end;

procedure TdmGlobal.actReceiptListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReceiptList);
end;

procedure TdmGlobal.actReceiveEmailExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReceiveEmailList);
end;

procedure TdmGlobal.actReconcileDTEExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReconcileDTE);
end;

procedure TdmGlobal.actReferralExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReferralList);
end;

procedure TdmGlobal.actReferralTypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReferralTypeList);
end;

procedure TdmGlobal.actReksadanaDepositoExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReksadanaList);
end;

procedure TdmGlobal.actRenewalRepoContractExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmRenewalRepoContract);
  frmMain.ShowForm(TfrmRenewalContractRepoList);
end;

procedure TdmGlobal.actReportRecommendedTransactionsForSetoffRollOverExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportRecommendedTransactionsForSetoffRollOver);
end;

procedure TdmGlobal.actReportReconPortofolioReportUntukIDXExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportReconPortofolioReportUntukIDX);
end;

procedure TdmGlobal.actReportRegularAccountSummaryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportRegularAccountSummary);
end;

procedure TdmGlobal.actReportRegularSummaryCrossBorderTradesExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportRegularSummaryCrossBorderTrades);
end;

procedure TdmGlobal.actReportRekapInstruksiDistribusiIPOExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportRekapInstruksiDistribusiIPO);
end;

procedure TdmGlobal.actReportRekapitulasiTransaksiSahamExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportRekapitulasiTransaksiSaham);
end;

procedure TdmGlobal.actReportRepoDailyTradeExecute(Sender: TObject);
begin
   frmMain.ShowForm(TfrmReportRepoDailyTrade);
end;

procedure TdmGlobal.actReportAccountActiveListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAccountActiveList);
end;

procedure TdmGlobal.actReportCustomersAgingExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCashSettlementT4);
end;

procedure TdmGlobal.actReportCustomersDataExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCustomerDataList);
end;

procedure TdmGlobal.actReportAccountClosedListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAccountClosedList);
end;

procedure TdmGlobal.actReportAccountDormanListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAccountDormanList);
end;

procedure TdmGlobal.actReportAccountPosByStockExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAccountPosByStock);
end;

procedure TdmGlobal.actReportAccountSuspendListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAccountSuspendList);
end;

procedure TdmGlobal.actReportAgentRankingExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAgentRanking);
end;

procedure TdmGlobal.actREPOMonitoringExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmREPOMonitor);
end;

procedure TdmGlobal.actReportAgingMonitoringExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportAgingMonitoring);
  frmMain.ShowForm(TfrmReportAgingMonitoringList);
end;

procedure TdmGlobal.actReportAnnouncementWarrantExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAnnouncementWarrant);
end;

procedure TdmGlobal.actReportARAPNetHistoryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportArapNettingHistory)
end;

procedure TdmGlobal.actReportARAPNetingExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportArapNetting);
end;

procedure TdmGlobal.actReportARAPSummaryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmARAPSummary);
end;

procedure TdmGlobal.actReportAuditLogExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportAuditLog);
end;

procedure TdmGlobal.actReportBorrowingFeeReportInternalCSIExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportBorrowingFeeReportInternalCSI);
end;

procedure TdmGlobal.actReportBorrowingFeeReportNasabahExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportBorrowingFeeReportNasabah);
end;

procedure TdmGlobal.actReportBukuPembantuEfekAMTExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportBukuPembantuEfekAMT);
end;

procedure TdmGlobal.actReportCashAccountStatementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCashAccountStatement);
end;

procedure TdmGlobal.actReportCashDepositListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCashDepList);
end;

procedure TdmGlobal.actReportCashDividendEntitlementListingExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCashDividendEntitlementListing);
end;

procedure TdmGlobal.actReportCashDividendPaymentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCashDividendPayment);
end;

procedure TdmGlobal.actReportCashWitdrawListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCashWdrList);
end;

procedure TdmGlobal.actReportCBestAndClientCustodyReconciliationExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCBestAndClientCustodyReconciliation);
end;

procedure TdmGlobal.actReportCBestDailyTradeListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCBestDailyTradeList);
end;

procedure TdmGlobal.actReportClientAccountBalanceSummaryExecute(
  Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportClientAccountBalanceSummary);
  frmMain.ShowForm(TfrmReportClientAccountBalanceSummarys);
end;

procedure TdmGlobal.actReportClientActivityExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientActivity);
end;

procedure TdmGlobal.actReportClientActivityInsRegExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientActivityInsReg);
end;

procedure TdmGlobal.actReportClientActivityOLNonOLExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientActivityOLNonOL);
end;

procedure TdmGlobal.actReportClientCommisionListExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportClientCommisionList);
  frmMain.ShowForm(TfrmReportClientCommisionLists);
end;

procedure TdmGlobal.actReportClientCommissionByRangeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientCommissionByRange);
end;

procedure TdmGlobal.actReportClientCommissionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientCommission);
end;

procedure TdmGlobal.actReportClientDetailExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientDetail);
end;

procedure TdmGlobal.actReportClientPortofolioExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientPortofolio);
end;

procedure TdmGlobal.actReportClientStockActivityExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientStockActivity);
end;

procedure TdmGlobal.actReportClientTradeActivitiesByPurchaseSalesExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportClientTradeActivityByPurchaseSales);
end;

procedure TdmGlobal.actReportConfirmationCorpactDetailReverseStockExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportConfirmationCorpactDetailReverseStock);
end;

procedure TdmGlobal.actReportContractBondTradeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportContractDate);
end;

procedure TdmGlobal.actReportCorpactAnnouncementListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCorpactAnnoList);
end;

procedure TdmGlobal.actReportCorpactEntitlementListingExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCorpactEntitlementListing);
end;

procedure TdmGlobal.actReportCreditLimitViolationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportCreditLimitViolation);
end;

procedure TdmGlobal.actReportDailyBondsTradeListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportBondsDailyTrade);
end;

procedure TdmGlobal.actReportDailyCashProjectionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyCashProjection);
end;

procedure TdmGlobal.actReportDailyCommisionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyCommision);
end;

procedure TdmGlobal.actReportDailyCommisionGridExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyCommisionGrid);
end;

procedure TdmGlobal.actReportDailyPaymentReceiveExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyPaymentReceive);
end;

procedure TdmGlobal.actReportDailyReportOddLotPositionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyReportOddLotPosition);
end;

procedure TdmGlobal.actReportDailyTradeByAgentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyTradeByAgent);
end;

procedure TdmGlobal.actReportDailyTradeByClientOrClientTypeExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyTradeReportClientType);
end;

procedure TdmGlobal.actReportDailyTradeDetailExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDailyTradeDetail);
end;

procedure TdmGlobal.actReportDailyTransactionReportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmLTHReport);
end;

procedure TdmGlobal.actReportDailyVD5SupportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSupportMBKDVD5);
end;

procedure TdmGlobal.actReportDefinitionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDefs);
end;

procedure TdmGlobal.actReportDetailedPortofolioClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDetailedPortfolioClientList);
end;

procedure TdmGlobal.actReportDetailOutstandingCashClientExecute(
  Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportDetailOutstandingCashClient);
  frmMain.ShowForm(TfrmReportDetailedOuttandRegularClientRetail);
end;

procedure TdmGlobal.actReportDetailOutstandingMarginClientExecute(
  Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportDetailOutstandingMarginClient);
  frmMain.ShowForm(TfrmReportDetailedOutstandNasabahMarginList);
end;

procedure TdmGlobal.actReportDormantClientListExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportDormantClient);
  frmMain.ShowForm(TfrmReportDormanClientList);
end;

procedure TdmGlobal.actReportExceptionalReportExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportExceptionalReport);
  frmMain.ShowForm(TfrmReportExceptionalList);
end;

procedure TdmGlobal.actReportSafeKeepingFeeStatementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSafeKeepingFeeStatement);
end;

procedure TdmGlobal.actReportSalesActivityExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSalesActivity);
end;

procedure TdmGlobal.actReportSalesCommissionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSalesCommission);
end;

procedure TdmGlobal.actReportScheduleCorporateActionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportScheduleCorporateAction);
end;

procedure TdmGlobal.actReportSecuritiesLedgerBalanceExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSecuritiesLedgerBalance);
end;

procedure TdmGlobal.actReportSecuritiesLedgerJournalExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSecuritiesLedgerJournal);
end;

procedure TdmGlobal.actReportSettlementInstructionForBondTransactionExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSettlementInstructionForBondTransaction);
end;

procedure TdmGlobal.actReportSourceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSources);
end;

procedure TdmGlobal.actReportStatementofAccountCSOExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStatementOfAccountCSO);
end;

procedure TdmGlobal.actReportStatementOfAccountExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStatementOfAccount);
end;


procedure TdmGlobal.actReportStockPortfolioExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockPortfolio);
end;

procedure TdmGlobal.actReportStockPosByAccountExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockPosByAccount);
end;

procedure TdmGlobal.actReportStockPosByClientAccExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockPosByClientAcc);
end;

procedure TdmGlobal.actReportStockPosBySalesAccExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockPosBySalesAcc);
end;

procedure TdmGlobal.actReportStockPosBySalesStockExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockBySalesStock);
end;

procedure TdmGlobal.actReportStockShortSellExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockShortSell);
end;

procedure TdmGlobal.actReportStockWithdrawListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportStockWdrList);
end;

procedure TdmGlobal.actReportSummaryActivityByAgentPerClientExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSummaryActivityByAgentPerClient);
end;

procedure TdmGlobal.actReportSummaryMarketTradeActivityExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSummaryMarketTradeActivity);
end;

procedure TdmGlobal.actReportSummaryObligasiExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSummaryObligasi);
end;

procedure TdmGlobal.actReportSummarySuspenseAccountExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSummarySuspenseAccount);
end;

procedure TdmGlobal.actReportSupportingDataMKBDExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSupportingDataMKBD);
end;

procedure TdmGlobal.actReportTCObligasiExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTCObligasi);
end;

procedure TdmGlobal.actReportTestExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTest);
end;

procedure TdmGlobal.actReportTop15SingleStockCashClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTop15SingleStockCashClient);
end;

procedure TdmGlobal.actReportTotalLoanMarginClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTotalLoanMarginClient);
end;

procedure TdmGlobal.actReportTotalOutstandingCashClientExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTotalOutstandingCashClient);
end;

procedure TdmGlobal.actReportTotalDetailOutstandingContraClientExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTotalDetailOutstandingContraClient);
end;

procedure TdmGlobal.actReportTotalDetailOutstandingShareValueExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTotalDetailOutstandingShareValue);
end;

procedure TdmGlobal.actReportTotalDetailShareCollateralExecute(Sender: TObject);
begin
   frmMain.ShowForm(TfrmReportTotalDetailShareCollateral);
end;

procedure TdmGlobal.actReportTotalShareValueExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTotalShareValue);
end;

procedure TdmGlobal.actReportTotalTransactionExecute(Sender: TObject);
var
  oForm: TfrmReportTotalTransaction;
begin
  oForm := TfrmReportTotalTransaction.Create(nil);
  try
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TdmGlobal.actReportTradeAccountInterfaceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTradeAccountInterface);
end;

procedure TdmGlobal.actReportTradeConfirmationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTradeConfirmation);
end;

procedure TdmGlobal.actReportTradeListWithCustodianBankExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTradeListWithCustodianBank);
end;

procedure TdmGlobal.actReportTradeTransactionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTradeTransaction);
end;

procedure TdmGlobal.actReportTradeTransactionNewExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTradeTransactionNew);
end;

procedure TdmGlobal.actReportTransactionRecapitulationExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTransactionRecapitulation);
end;

procedure TdmGlobal.actReportTrialBalanceClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTrialBalanceClient);
end;

procedure TdmGlobal.actReportTrialBalanceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTrialBalance);
end;

procedure TdmGlobal.actReportTrialBalanceStockExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTrialBalanceStock);
end;

procedure TdmGlobal.actReportTypeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTypes);
end;

procedure TdmGlobal.actReportUnusualMarketVolExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportUnusualMarketVol);
  frmMain.ShowForm(TfrmPtbUnusualMarketVol);
end;

procedure TdmGlobal.actReportValueAddedTaxExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportValueAddedTax);
end;

procedure TdmGlobal.actReportValueAddedTaxGridExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportValueAddedTaxGrid);
end;

procedure TdmGlobal.actReportVD51_2Execute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportVD51_2);
end;

procedure TdmGlobal.actReportWashSaleExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmReportWashSale);
  frmMain.ShowForm(TfrmPtbWashSale);
end;

procedure TdmGlobal.actREPOSettlementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmRepoSettlement);
end;

procedure TdmGlobal.actReportBlacklistPeopleOrganizationReportExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportDOT);
end;

procedure TdmGlobal.actReportBOFISDHKMatchExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportBOFISDHKMatch);
end;

procedure TdmGlobal.actReportCashVoucherExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmRptCashVoucher);
end;

procedure TdmGlobal.actSalesAgentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSalesAgentList);
end;

procedure TdmGlobal.actSalesExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSalesList);
end;

procedure TdmGlobal.actSecuritiesJournalEntryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockLedgerList);
end;

procedure TdmGlobal.actSetOffExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmDataSetOffList);
end;

procedure TdmGlobal.actSettlementInstructionExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmSettlementInstruction);
  frmMain.ShowForm(TfrmSettleInstrList);
end;

procedure TdmGlobal.actSInvGenerateFileExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSInvProcessUploadList);
end;

procedure TdmGlobal.actSInvProcessConfigExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSInvProcessList);
end;

procedure TdmGlobal.actSInvTradeAllocExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSInvTradeAllocList);
end;

procedure TdmGlobal.actSlikInterfaceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSlikInterfaceList);
end;

procedure TdmGlobal.actReportShareBalancesByClientExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportShareBalanceByClient);
end;

procedure TdmGlobal.actReportShareBalancesByAgentExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportShareBalancesByAgent);
end;


procedure TdmGlobal.actReportShareBalancesByProductExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportShareBalancesByProduk);
end;

procedure TdmGlobal.actReportShareBalanceWithShareValueExecute(Sender: TObject);
begin
   frmMain.ShowForm(TfrmReportShareBalanceWithShareValue);
end;

procedure TdmGlobal.actReportSingleCounterMarginExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportSingleCounterMargin);
end;

procedure TdmGlobal.actSOPExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSOPList);
end;

procedure TdmGlobal.actStaticDatalogExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStaticDataLog);
end;

procedure TdmGlobal.actStaticEmployeeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmEmployeeList);
end;

procedure TdmGlobal.actStaticProjectExecute(Sender: TObject);
begin
   frmMain.ShowForm(TfrmProjectList);
end;

procedure TdmGlobal.actStockAgingExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockAging);
end;

procedure TdmGlobal.actStockDelRevExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockDeliverList);
end;

procedure TdmGlobal.actStockDepositExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockDepList);
end;

procedure TdmGlobal.actStockHaircutExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmCustHaircutList);
end;

procedure TdmGlobal.actStockLedgerBalanceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockLedgerBalance);
end;

procedure TdmGlobal.actStockMovementExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockMovList);
end;

procedure TdmGlobal.actStockMoveProgramExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockMovementProgramList);
end;

procedure TdmGlobal.actStockPositionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockPosition);
end;

procedure TdmGlobal.actStockRecImportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockRecon);
end;

procedure TdmGlobal.actStockSettleInstructionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockSettleInstruction);
end;

procedure TdmGlobal.actStockSettlementExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmStockSettlement);
  frmMain.ShowForm(TfrmStockSettlementList);
end;

procedure TdmGlobal.actStockSettlementVoucherExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockSettlementVoucherList);
end;

procedure TdmGlobal.actStockVoucherExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockVoucherList);
end;

procedure TdmGlobal.actStockWithdrawExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmStockWdrList);
end;

procedure TdmGlobal.actSupportingDataExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMKBDSupportingData);
end;

procedure TdmGlobal.actSurvailanceSettingExecute(Sender: TObject);
var
  oform: TfrmSurvailanceSetting;
begin
  try
    oform := TfrmSurvailanceSetting.create(nil);
    oform.ShowModal;
  finally
    oform.free;
  end;
end;

procedure TdmGlobal.actTaxInvoiceExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmTaxInvoiceList);
end;

procedure TdmGlobal.actTaxOffNoExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmTaxInvOfficeNoList);
end;

procedure TdmGlobal.actTenderOfferExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmTenderOfferList);
end;

procedure TdmGlobal.actReportTop15SingleExposureOnMarginAndRepoExecute(
  Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTop15SingleExposureOnMarginAndRepo);
end;

procedure TdmGlobal.actSInvestAutoSplitExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSInvestAutoSplitList);
end;

procedure TdmGlobal.actSInvestMonitoringExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSInvestMonitoringList);
end;

procedure TdmGlobal.actSInvestReconExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSInvestRecon);
end;

procedure TdmGlobal.actSInvestReconTCExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmSInvestReconTC);
end;

procedure TdmGlobal.actTodoListExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmTodoList);
end;

procedure TdmGlobal.actTotalDetailOutstandingShareValueExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportTotalDetailOutstandingShareValue);
end;

procedure TdmGlobal.actTradingLimitClassExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmTradingLimitClassList);
end;

procedure TdmGlobal.actTrialBalanceByCcyExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmTrialBalance);
  frmMain.ShowForm(TfrmTrialBalanceByCcy);
end;

procedure TdmGlobal.actUploadDataFeedbackExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmUploadDataFeedback);
end;

procedure TdmGlobal.actUserActivityExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmUserActivity);
  frmMain.ShowForm(TfrmAuditTrail);
end;

procedure TdmGlobal.actUserConfigurationExecute(Sender: TObject);
begin
//  frmMain.ShowForm(TfrmUserConfigList);
  ShowUserAdministrator(menuBar, menuBarReport, menuBarStatic, menuBarAdmin);//<-- TfrmUserAdministrator
end;

procedure TdmGlobal.actUserDataOwnerExecute(Sender: TObject);
begin
  frmDataOwnerSetting.Run;
end;

procedure TdmGlobal.actUserMonitoringExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmUserMonitoring);
end;

procedure TdmGlobal.actVD510ConfigExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmVD510Static);
end;

procedure TdmGlobal.actVD55MonthlyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmMKBDVD55Monthly);
end;

procedure TdmGlobal.actVD55MonthlySupportExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmVD55MonthlySupport);
end;

procedure TdmGlobal.actVD57QtyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmVD57Qty);
end;

procedure TdmGlobal.actVD5ConfigsExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmVD5Configs);
end;

procedure TdmGlobal.actVerdhanaOMSInstitutionExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmVerdhanaOMSInsti);
end;

procedure TdmGlobal.actVidesaCreditLimitExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmVidesaCreditLimitList);
end;

procedure TdmGlobal.actVoucherSummaryExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmReportVoucherSummary);
end;

procedure TdmGlobal.actWarehouseTradeExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmWarehouseTrade);
end;

procedure TdmGlobal.actWaveInterestPenaltyExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmWaveInterestPenaltyList);
end;

procedure TdmGlobal.actWHTExecute(Sender: TObject);
begin
  frmMain.ShowForm(TfrmWHTList);
end;

procedure TdmGlobal.ApplicationEventsException(Sender: TObject; E: Exception);
begin
  Log(ltError, E.ClassName + ': ' + E.Message);
  if Assigned(frmMain) then
    frmMain.NewAlertMessage(E.ClassName + ': ' + E.Message, mtError);
end;

procedure TdmGlobal.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
begin
//  if (Msg.message = WM_KEYDOWN) or (Msg.message = WM_MOUSEMOVE) then
//  begin
//    //
//  end;
end;

function TdmGlobal.ApplicationHelp(Command: Word; Data: THelpEventData;
  var CallHelp: Boolean): Boolean;
var
  Link: THH_AKLink;
  ALink: string;
begin
  CallHelp := False;
  Result := True;
  //argh, WinHelp commands
  case Command of
  HELP_COMMAND:
    begin
      ZeroMemory(@Link, SizeOf(Link));
      Link.cbStruct := SizeOf(Link);
      ALink := PChar(Data); // we are going to re-purpose the keyword as an A-link
      Link.pszKeywords := PWideChar(AnsiString(ALink)); // seems we have to pass a PAnsiChar ..
      Link.fIndexOnFail := True;
      HtmlHelp(GetDesktopWindow, Application.HelpFile, HH_ALINK_LOOKUP,
        DWORD_PTR(@Link));
    end;
  end;
end;

procedure TdmGlobal.BackgroundProcessing(AObject: TObject);
var
  sMsg: String;
begin
  if AObject is TNBackgroundProcess then
  begin

    if TNBackgroundProcess(AObject).Category = 'Batch Process' then
    begin
      sMsg := 'Batch Process running on Server by ' +
        TNBackgroundProcess(AObject).User + '.' + #10#13;
      sMsg := sMsg + 'Process ' + TNBackgroundProcess(AObject).Description +
        ' running for transaction date ' +
        FormatDateTime('dd MMM yyyy', TNBackgroundProcess(AObject).TransDate);

      dmGlobal.NewAlertMessage(sMsg, mtInformation);
    end;

  end;
end;

procedure TdmGlobal.cdsUserLayoutBeforePost(DataSet: TDataSet);
begin
  cdsUserLayoutUSERID.AsString := dmGlobal.UserID;
  cdsUserLayoutAPPID.AsString := MenuBar.AppID;
  cdsUserLayoutMODDA.AsDateTime := Now;
  cdsUserLayoutMODUI.AsString := dmGlobal.UserID;
end;

function TdmGlobal.ChangeCountAllDataset(ADataSet: TClientDataSet): Int64;
var
  i: Integer;
begin
  ADataSet.CheckBrowseMode;
  Result := ADataSet.ChangeCount;
  for i := 0 to ADataSet.FieldCount - 1 do
  begin
    if ADataSet.Fields[i].DataType = ftDataSet then
    begin
      if (TDataSetField(ADataSet.Fields[i]).NestedDataSet <> nil)
        and (TDataSetField(ADataSet.Fields[i]).NestedDataSet is TClientDataSet) then
        Result := Result + ChangeCountAllDataset(TClientDataSet(TDataSetField(ADataSet.Fields[i]).NestedDataSet));
    end;
  end;
end;

procedure TdmGlobal.CheckAppVersion;
var
  oAutoUpdater: TNAutoUpdateHttp;
  oSplash: TfrmNewSplash;
  oSplashControl: TSplashController;
begin
  if not FDebugMode then
  begin
    oSplashControl := TSplashController.Create;
    oSplash := TfrmNewSplash.Create(nil);
    oAutoUpdater := TNAutoUpdateHttp.Create;
    try
      SetSplashClassName('TfrmProcessUpdate');
      oSplash.Show;

      oAutoUpdater.User := FSFTPUserName;
      oAutoUpdater.Password := FSFTPPassword;
      oAutoUpdater.VersionFileURL := FSFTPFileUrl;
      oAutoUpdater.OnProcess := oSplashControl.AutoUpdateProcess;
      oAutoUpdater.OnGetReleaseNotes := oSplashControl.AutoUpdateGetReleaseNotes;
      oAutoUpdater.OnSetMaxProgress := oSplashControl.AutoUpdateSetMaxProgress;
      oAutoUpdater.OnProgress := oSplashControl.AutoUpdateProgress;
      try
        oAutoUpdater.Execute;
      except
        on E:Exception do
          raise;
      end;
    finally
      oAutoUpdater.Free;
      oSplash.Free;
      oSplashControl.Free;
    end;
  end;
end;

procedure TdmGlobal.cnnMainValidatePeerCertificate(Owner: TObject;
  Certificate: TX509Certificate; const ADepth: Integer; var Ok: Boolean);
begin
//  Ok := True;
end;

procedure TdmGlobal.CommandUpdateAddCommand(ACommandUpdate: TNCommandUpdate;
  var AResultKeys: string);
var
  sMsg: String;
begin
//  sMsg := FRemoteServer.DataUpdateCommand(ACommandUpdate);
  AResultKeys := sMsg;
  ShowMessage(sMsg);
end;

procedure TdmGlobal.ComparedChangedData(AValidDataSet,
  AUpdateDataSet: TNClientDataSet);
var
  i, iLastRecNo: Integer;
  oValidCds, oUpdateCds: TNClientDataSet;
  oField, oValidField, oUpdateField: TField;
  bValidDataReadOnly, bUpdateDataReadOnly, bChanged: Boolean;
  slPrimaryKeyFields: TStringList;
  sKey: String;
  vFind: Variant;
begin
  oValidField := AValidDataSet.FindField('NOTES4Y');
  if (oValidField = Nil) then
  begin
    Exit;
    oValidField := TStringField.Create(AValidDataSet);
    oValidField.FieldKind := fkInternalCalc;
    oValidField.FieldName := 'NOTES4Y';
    oValidField.Size := 1;
    oValidField.DataSet := AValidDataSet;
  end;

  oUpdateField := AUpdateDataSet.FindField('NOTES4Y');
  if (oUpdateField = Nil) then
  begin
    Exit;
    oUpdateField := TStringField.Create(AUpdateDataSet);
    oUpdateField.FieldKind := fkInternalCalc;
    oUpdateField.FieldName := 'NOTES4Y';
    oUpdateField.Size := 1;
    oUpdateField.DataSet := AUpdateDataSet;
  end;

  bValidDataReadOnly := AValidDataSet.ReadOnly;
  bUpdateDataReadOnly := AUpdateDataSet.ReadOnly;
  slPrimaryKeyFields := TStringList.Create;
  AValidDataSet.DisableControls;
  AUpdateDataSet.DisableControls;
  Try
    AValidDataSet.ReadOnly := False;
    AUpdateDataSet.ReadOnly := False;
    ParseDelimited(slPrimaryKeyFields, AValidDataSet.PrimaryKeyFields, ';');
    sKey := AValidDataSet.PrimaryKeyFields;
    vFind := VarArrayCreate([0, slPrimaryKeyFields.Count - 1], varVariant);
    try
      AValidDataSet.First;
      while not AValidDataSet.Eof do
      begin
        iLastRecNo := AValidDataSet.RecNo;
        for i := 0 to slPrimaryKeyFields.Count - 1 do
        begin
          oField := AValidDataSet.FindField(slPrimaryKeyFields[i]);
          if (oField <> Nil) then
          begin
            vFind[i] := oField.Value;
          end;
        end;

        if AUpdateDataSet.Locate(sKey, vFind, []) then
        begin
          bChanged := False;
          for i := 0 to AValidDataSet.FieldCount - 1 do
          begin
            oField := AUpdateDataSet.FindField(AValidDataSet.Fields[i].FieldName);
            if (oField <> Nil) and (oField.FieldKind = fkData)then
            begin
              if (oField.DataType = ftDataSet) then
              begin
                oValidCds := TNClientDataSet(TDataSetField(AValidDataSet.Fields[i]).NestedDataSet);
                oUpdateCds := TNClientDataSet(TDataSetField(oField).NestedDataSet);

                if (oValidCds <> Nil) and (oUpdateCds <> Nil) then
                begin
                  ComparedChangedData(oValidCds, oUpdateCds);
                end;
              end
              else
              begin
                if oField.Value <> AValidDataSet.Fields[i].Value then
                begin
                  bChanged := True;
                end;
              end;
            end
          end;

          if bChanged then
          begin
            AValidDataSet.Edit;
            oValidField.AsString := 'U';
            AValidDataSet.Post;

            AUpdateDataSet.Edit;
            oUpdateField.AsString := 'U';
            AUpdateDataSet.Post;
          end
          else
          begin
            AValidDataSet.Edit;
            oValidField.AsString := 'S';
            AValidDataSet.Post;

            AUpdateDataSet.Edit;
            oUpdateField.AsString := 'S';
            AUpdateDataSet.Post;
          end;
        end
        else
        begin
          AValidDataSet.Edit;
          oValidField.AsString := 'D';
          AValidDataSet.Post;
        end;

        while AValidDataSet.RecNo < iLastRecNo do
        begin
          AValidDataSet.Next;
  //        AValidDataSet.RecNo := iLastRecNo;
        end;

        AValidDataSet.Next;
      end;
    except

    end

  Finally
    AValidDataSet.ReadOnly := bValidDataReadOnly;
    AUpdateDataSet.ReadOnly := bUpdateDataReadOnly;
    AUpdateDataSet.EnableControls;
    AValidDataSet.EnableControls;

    FreeAndNil(slPrimaryKeyFields);
  End
end;

procedure TdmGlobal.CopyDataSetField(ASource, ATarget: TClientDataSet);
var
  i: Integer;
  oField, oTargetField, oNewField, oDataSetField: TField;
  oCdsSource, oCdsTarget, oCdsMaster: TClientDataSet;
begin
  for i := 0 to ASource.FieldCount - 1 do
  begin
    oField := ASource.Fields[i];
    oTargetField := ATarget.FindField(oField.FieldName);
    if (oTargetField = Nil) then
    begin
      oNewField := TFieldClass(oField.ClassType).Create(ATarget);
      oNewField.FieldName := oField.FieldName;
      oNewField.FieldKind := oField.FieldKind;
      oNewField.Size := oField.Size;
      oNewField.KeyFields := oField.KeyFields;
      oNewField.LookupDataSet := oField.LookupDataSet;
      oNewField.LookupKeyFields := oField.LookupKeyFields;
      oNewField.LookupResultField := oField.LookupResultField;
      oNewField.DataSet := ATarget;
//      ATarget.Fields.Add(oNewField);

      //Additional for account bank 4 eyes
      if (oField.LookupDataSet <> nil) then
      begin
        if (TClientDataSet(oField.LookupDataSet).DataSetField <> Nil) then
        begin
          oCdsMaster := ATarget;
          while (oCdsMaster.DataSetField <> Nil) do
          begin
            oCdsMaster := TClientDataSet(oCdsMaster.DataSetField.DataSet)
          end;

          oDataSetField := oCdsMaster.FindField(TClientDataSet(oField.LookupDataSet).DataSetField.FieldName);
          if (oDataSetField <> nil) And (oDataSetField.DataType = ftDataSet) then
          begin
            oNewField.LookupDataSet := TDataSetField(oDataSetField).NestedDataSet;
          end;
        end;
      end;

      oTargetField := oNewField;
    end;

    if oField is TNumericField then
    begin
      if (oTargetField <> nil) then
      begin
        TNumericField(oTargetField).DisplayFormat := TNumericField(oField).DisplayFormat;
        TNumericField(oTargetField).EditFormat := TNumericField(oField).EditFormat;
      end;
    end
    else if oField is TDateTimeField then
    begin
      if (oTargetField <> nil) then
      begin
        TDateTimeField(oTargetField).DisplayFormat := TDateTimeField(oField).DisplayFormat;
      end;
    end
    else if oField is TSQLTimeStampField then
    begin
      if (oTargetField <> nil) then
      begin
        TSQLTimeStampField(oTargetField).DisplayFormat := TSQLTimeStampField(oField).DisplayFormat;
      end;
    end
    else if oField is TDataSetField then
    begin
      if (oTargetField <> nil) then
      begin
        oCdsSource := TClientDataSet(TDataSetField(oField).NestedDataSet);
        oCdsTarget := TClientDataSet(TDataSetField(oTargetField).NestedDataSet);

        CopyDataSetField(oCdsSource, oCdsTarget);
      end;
    end;
  end;

  //Additional for account bank 4 eyes
  ATarget.OnCalcFields := ASource.OnCalcFields;

  if (ASource is TNClientDataset) and (ATarget is TNClientDataset) then
  begin
    TNClientDataset(ATarget).PrimaryKeyFields := TNClientDataset(ASource).PrimaryKeyFields;
    TNClientDataset(ATarget).TableName := TNClientDataset(ASource).TableName;
  end;
end;

procedure TdmGlobal.CopyDataSetProperty(ASource, ATarget: TClientDataSet);
var
  i: Integer;
  oField, oTargetField, oNewField: TField;
  oCdsSource, oCdsTarget: TClientDataSet;
begin
  for i := 0 to ASource.FieldCount - 1 do
  begin
    oField := ASource.Fields[i];
    if oField.FieldKind = fkData then
    begin
      if oField is TNumericField then
      begin
        oTargetField := ATarget.FindField(oField.FieldName);
        if (oTargetField <> nil) then
        begin
          TNumericField(oTargetField).DisplayFormat := TNumericField(oField).DisplayFormat;
          TNumericField(oTargetField).EditFormat := TNumericField(oField).EditFormat;
        end;
      end
      else if oField is TDateTimeField then
      begin
        oTargetField := ATarget.FindField(oField.FieldName);
        if (oTargetField <> nil) then
        begin
          TDateTimeField(oTargetField).DisplayFormat := TDateTimeField(oField).DisplayFormat;
        end;
      end
      else if oField is TSQLTimeStampField then
      begin
        oTargetField := ATarget.FindField(oField.FieldName);
        if (oTargetField <> nil) then
        begin
          TSQLTimeStampField(oTargetField).DisplayFormat := TSQLTimeStampField(oField).DisplayFormat;
        end;
      end
      else if oField is TDataSetField then
      begin
        oTargetField := ATarget.FindField(oField.FieldName);
        if (oTargetField <> nil) then
        begin
          oCdsSource := TClientDataSet(TDataSetField(oField).NestedDataSet);
          oCdsTarget := TClientDataSet(TDataSetField(oTargetField).NestedDataSet);

          CopyDataSetProperty(oCdsSource, oCdsTarget);
        end;
      end;
    end
    else
    begin
      oTargetField := ATarget.FindField(oField.FieldName);
      if (oTargetField = Nil) then
      begin
        oNewField := TFieldClass(oField.ClassType).Create(ATarget);
        oNewField.FieldName := oField.FieldName;
        oNewField.FieldKind := oField.FieldKind;
        oNewField.Size := oField.Size;
        oNewField.KeyFields := oField.KeyFields;
        oNewField.LookupDataSet := oField.LookupDataSet;
        oNewField.LookupKeyFields := oField.LookupKeyFields;
        oNewField.LookupResultField := oField.LookupResultField;
//        oNewField.DataSet := ATarget;
        ATarget.Fields.Add(oNewField);
      end;
    end;
  end;
end;

function TdmGlobal.CountDecimalPoint(AValue: Double): Integer;
begin
  Result := Length(StrAfter(FormatSettings.DecimalSeparator, FloatToStr(AValue)));
end;

procedure TdmGlobal.CreateChangeFlagField(ADataSet: TClientDataSet);
var
  i: Integer;
  oField: TField;
  oCds: TClientDataSet;
begin
  oField := ADataSet.FindField('NOTES4Y');
  if (oField = Nil) then
  begin
    oField := TStringField.Create(ADataSet);
    oField.FieldKind := fkInternalCalc;
    oField.FieldName := 'NOTES4Y';
    oField.Size := 1;
    oField.DataSet := ADataSet;
  end;

  for i := 0 to ADataSet.FieldCount - 1 do
  begin
    oField := ADataSet.Fields[i];
    if (oField.DataType = ftDataSet) then
    begin
      oCds := TClientDataSet(TDataSetField(oField).NestedDataSet);
      CreateChangeFlagField(oCds);
    end;
  end;
end;

function TdmGlobal.CreateForm(AFormClass: TFormClass): TForm;
begin
  Result := Nil;
end;

procedure TdmGlobal.CreateJournalReverseList;
begin
  FJournalReverseList := TStringList.Create;
end;

procedure TdmGlobal.CreateMergeCells(ASheet: TXLSWorkSheet; col1, row1, col2,
  row2: Integer);
var
  oMergedCell: TXLSMergedCell;
begin
  oMergedCell := ASheet.MergedCells.Add;
  oMergedCell.Col1 := col1;
  oMergedCell.Row1 := row1;
  oMergedCell.Col2 := col2;
  oMergedCell.Row2 := row2;
end;

procedure TdmGlobal.CreateSelecctedAccountID(const ADataSet: TClientDataSet;
  const ACCID: TArray<Integer>);
begin
  ADataSet.EmptyDataSet;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccountList.Filter   := 'Check = ''1''';
    cdsLuAccountList.Filtered := True;
    cdsLuAccountList.DisableControls;

    ADataSet.DisableControls;
    Try
      cdsLuAccountList.First;
      while not cdsLuAccountList.Eof do
      begin
        ADataSet.Append;
        ADataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountListACCID.AsInteger;
        ADataSet.FieldByName('ACCCODE').AsString := cdsLuAccountListACCCODE.AsString;
        ADataSet.FieldByName('ACCNAME').AsString := cdsLuAccountListACCNAME.AsString;
        ADataSet.FieldByName('ACCTYPE').AsString := cdsLuAccountListACCTYPE.AsString;
        ADataSet.FieldByName('PRDCODE').AsString := cdsLuAccountListPRDCODE.AsString;
        ADataSet.Post;

        cdsLuAccountList.Next;
      end;
    Finally
      ADataSet.EnableControls;
      cdsLuAccountList.EnableControls;
      cdsLuAccountList.Filtered := False;
      cdsLuAccountList.Filter   := '';
    End;
  end;
end;

procedure TdmGlobal.DataModuleCreate(Sender: TObject);
begin
  if cnnMain.Connected then
    cnnMain.Connected := False;

  FDebugMode := False;
  {$IFDEF DEBUG}
    FDebugMode := True;
  {$ENDIF}

  FFormList := TStringList.Create;
  FSearchItemsList := TStringList.Create;
  FSearchGroupList := TStringList.Create;
  FAppPath := ExtractFilePath(Application.ExeName);
  FListReport := TStringList.Create;
  SetActionDescription(aclMenu);

  cdsLastModuleParam.CreateDataSet;
end;

procedure TdmGlobal.DataModuleDestroy(Sender: TObject);
begin
  FFormList.Free;
  FSearchItemsList.Free;
  FSearchGroupList.Free;
  FListReport.Free;
end;

function TdmGlobal.DataSetToJSON(const ADataSet: TDataSet;
  out AValue: TJSONValue): boolean;
var
  jsonArray: TJSONArray;
  jsonObj: TJSONObject;
  tempValue: TJSONValue;
  i: Integer;
  oField: TField;
begin
  Result := False;
  jsonArray := TJSONArray.Create;
  ADataSet.First;
  while not ADataSet.Eof do
  begin
    jsonObj := TJSONObject.Create;
    for i := 0 to ADataSet.FieldCount - 1 do
    begin
      oField := ADataSet.Fields[i];

      if oField.DataType in [ftDataSet] then
      begin
        DataSetToJSON(TDataSetField(oField).NestedDataSet, tempValue);
        jsonObj.AddPair(oField.FieldName, tempValue);
      end
      else
      begin
        if oField.IsNull then
        begin
          jsonObj.AddPair(oField.FieldName, TJSONNull.Create);
        end
        else if oField.DataType in [ftDate] then
        begin
          jsonObj.AddPair(oField.FieldName, FormatDateTime('YYYYMMDD', oField.AsDateTime));
        end
        else if oField.DataType in [ftDateTime, ftTimeStamp] then
        begin
          jsonObj.AddPair(oField.FieldName, FormatDateTime('YYYYMMDDHHNNSSZZZ', oField.AsDateTime));
        end
        else if oField.DataType in [ftTime] then
        begin
          jsonObj.AddPair(oField.FieldName, FormatDateTime('HHNNSSZZZ', oField.AsDateTime));
        end
        else
        begin
          jsonObj.AddPair(oField.FieldName, oField.AsString);
        end;
      end;
    end;

    jsonArray.AddElement(jsonObj);
    ADataSet.Next;
  end;
  AValue := jsonArray;
  Result := True;
end;

procedure TdmGlobal.ErrorMessage(AError: String);
begin
  MessageDlg(AError,mtError,[mbOk],0);
end;

procedure TdmGlobal.FreeJournalReverseList;
begin
  FreeAndNil(FJournalReverseList);
end;

procedure TdmGlobal.GenerateBCAChecksum(AFileName, ATransferMode: string);
  function Replace(AString: string): string;
  begin
    Result := ReplaceStr(AString, '\', '/');
  end;

var
  oTextFile: TextFile;
  sFileName,
  sCheckSumFileName,
  sCheckSumDir,
  sDataUpload,
  sTransMode: string;

  sTransFile, sCheckFile, sLogFile,
  sSource, sTarget: string;
begin
  Try
    sFileName         := ExtractFileName(AFileName);
    sCheckSumFileName := BCACheckSum + '\Checksum.exe';
    sDataUpload       := BCACheckSum + '\Dataupload\';

    Insert(' CS', sFileName, Pos('.', sFileName));

    sTransFile := ChangeFilePath(ExtractFileName(AFileName), sDataUpload);
    sCheckFile := sDataUpload + sFileName;
    sLogFile   := BCACheckSum +'\checksum.log';

    sSource := Replace(AFileName);
    sTarget := Replace(sTransFile);
    CopyFile(pChar(sSource), pChar(sTarget), True);

    AssignFile(oTextFile, BCACheckSum+'\Checksum.properties');
    Rewrite(oTextFile);
    Writeln(oTextFile, 'Is_Logged     = true');
    Writeln(oTextFile, 'Log_File_Path = ' + Replace(sLogFile));

    if ATransferMode = 'RTG' then
    begin
      sTransMode := 'atr';

      Writeln(oTextFile, 'Auto_Transfer_Rtgs_File_Path          = ' + Replace(sTransFile));
      Writeln(oTextFile, 'Auto_Transfer_Rtgs_Checksum_File_Path = ' + Replace(sCheckFile));
    end
    else if ATransferMode = 'BCA' then
    begin
      sTransMode := 'atb';

      Writeln(oTextFile, 'Auto_Transfer_Bca_File_Path          = ' + Replace(sTransFile));
      Writeln(oTextFile, 'Auto_Transfer_Bca_Checksum_File_Path = ' + Replace(sCheckFile));
    end;

    CloseFile(oTextFile);

    SetCurrentDir(BCACheckSum);
    ShellExecute(Application.Handle, 'open', PChar(sCheckSumFileName), PChar(sTransMode), nil, SW_SHOWNORMAL);
  Except
    on E: Exception do
    begin
      Log(ltError, 'TdmGlobal.GenerateBCAChecksum --> ' + E.Message);
    end;
  End;
end;

function TdmGlobal.GenerateParameterKey(AKey: string): string;
begin

end;

function TdmGlobal.generatereportdata(RptType: string; RptDate: TDate): Boolean;
begin
  Result := False;

  with dmGlobal.RemoteServer do
  begin
    Screen.Cursor := crSQLWait;

    if UpperCase(RptType) = 'VD5' then
    Begin
      Try
        GenerateMKBD;
      Except
        on E:Exception do
        begin
            screen.Cursor := crDefault;
            ShowMessage('Error Generate VD5 Report (MKBD) '+ #13 + E.Message);
            dmGlobal.Log(ltError,'Error Generate VD5 Report (MKBD) '+E.Message);
            Exit;
        end;
      End
    End
    Else
    Begin

      try
        RunSPInsertToSource(rptType,RptDate);
      except
        on E:Exception do
        begin
            screen.Cursor := crDefault;
            ShowMessage('Error Insert data to source '+#13+E.Message);
            dmGlobal.Log(ltError,'Inserting data to source failed '+E.Message);
            Exit;
        end;
      end;

      try
        RunSPGenerateReport(RptDate, rptType);
      except
        on E:Exception do
        begin
            screen.Cursor := crDefault;
            ShowMessage('Error Insert data to report '+#13+E.Message);
            dmGlobal.Log(ltError,'Inserting data to report failed '+E.Message);
            Exit;
        end;
      end;

    End;
    Screen.Cursor := crDefault;

    Result := True;
//    ShowMessage('Done...');
    dmGlobal.Log(ltInfo,'Generating report successful');
  end;
end;

procedure TdmGlobal.GetAllPermissions;
begin
  cdsPermission.Close;
  cdsPermission.Open;

  cdsPermissionForm.Close;
  cdsPermissionForm.Open;

  cdsPermissionFormAction.Close;
  cdsPermissionFormAction.Open;
end;

procedure TdmGlobal.GetApplicationBuildInfo(exeName: string; var V1, V2, V3,
  V4: word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(exeName), Dummy);
  if VerInfoSize > 0 then
  begin
      GetMem(VerInfo, VerInfoSize);
      try
        if GetFileVersionInfo(PChar(exeName), 0, VerInfoSize, VerInfo) then
        begin
          VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
          with VerValue^ do
          begin
            V1 := dwFileVersionMS shr 16;
            V2 := dwFileVersionMS and $FFFF;
            V3 := dwFileVersionLS shr 16;
            V4 := dwFileVersionLS and $FFFF;
          end;
        end;
      finally
        FreeMem(VerInfo, VerInfoSize);
      end;
  end;
end;

function TdmGlobal.GetBuildInfoAsString(exeName: string): string;
var
  V1, V2, V3, V4: word;
begin
  GetApplicationBuildInfo(exeName, V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' +
    IntToStr(V3) + '.' + IntToStr(V4);
end;

function TdmGlobal.GetDataSetKey(ADataSet: TNClientDataSet): String;
var
  sKey, sKeyField, sTempKeyField: String;
  iPos: Integer;
  oKeyField: TField;
  Lanjut: Boolean;
begin
  Try
    sKey := '';
    sKeyField := ADataSet.PrimaryKeyFields;
    iPos := 1;
    Lanjut := True;
    while Lanjut do
    begin
      sTempKeyField := ExtractFieldName(sKeyField, iPos);

      if (sTempKeyField <> '') then
      begin
        oKeyField := ADataSet.FindField(sTempKeyField);
        if (oKeyField <> nil) then
        begin
          if (sKey <> '') then
            sKey := sKey + Chr(1);

          if not oKeyField.IsNull then
          begin
            if oKeyField.DataType in [ftDate, ftDateTime, ftTimeStamp] then
              sKey := sKey + FormatDateTime('yyyyMMdd', oKeyField.AsDateTime)
            else if oKeyField.DataType in [ftTime] then
              sKey := sKey + FormatDateTime('hh:nn:ss.zzz', oKeyField.AsDateTime)
            else
              sKey := sKey + VarToStr(oKeyField.Value);
          end
          else
            sKey := sKey + '';
        end
        else
          sKey := sKey + '';
      end
      else
        Lanjut := False;

    end;
  Finally
    Result := sKey;
  End;
end;

function TdmGlobal.GetGUID: String;
var
  MyGUID: TGUID;
begin
  Result := '';
  if CreateGUID(MyGUID) = 0 then
  begin
    Result := GUIDToString(MyGUID);
    Result := StringReplace(Result, '{', '', [rfReplaceAll, rfIgnoreCase]);
    Result := StringReplace(Result, '}', '', [rfReplaceAll, rfIgnoreCase]);
    Result := StringReplace(Result, '-', '', [rfReplaceAll, rfIgnoreCase]);
  end;
end;

function TdmGlobal.GetKSEINo(ALastKSEINo: string): string;
var
  b : Byte;
  s : string;
  c1, c2, c3, c4: Char;
begin
  s  := UpperCase(ALastKSEINo);

  c1 := Char(Ord(s[1]));
  c2 := Char(Ord(s[2]));
  c3 := Char(Ord(s[3]));
  c4 := Char(Ord(s[4]));

  if c4 = '9' then
    c4 := 'A'
  else if UpperCase(c4) = 'Z' then
  begin
    c4 := '0';
    if c3 = '9' then
      c3 := 'A'
    else if UpperCase(c3) = 'Z' then
    begin
      c3 := '0';
      if c2 = '9' then
        c2 := 'A'
      else if UpperCase(c2) = 'Z' then
      begin
        c2 := '0';
        if c1 = '9' then c1 := 'A' else Inc(c1);
      end
      else
        inc(c2);
    end
    else
      inc(c3);
  end
  else
    inc(c4);

  Result := c1+c2+c3+c4;
end;

function TdmGlobal.GetSeqID(AType, AInitCode: string): string;
var
  sDate : string;
  Seq : integer;
begin
  sDate := FormatDateTime('yymmdd',RemoteServer.GetTransDate);
//  Seq := RemoteServer.GetSeqFromSP(AType+sDate);

  Result:= AType +'/'+ AInitCode +'/'+ sDate +'/'+ FormatFloat('00000',Seq);
end;

function TdmGlobal.GetStringDelimiter(var AValue: String;
  ADelimiter: String): String;
var
  iPos : Integer;
  sTemp: String;
begin
  if ADelimiter ='' then exit;
  iPos := Pos(ADelimiter,AValue);
  if iPos <> 0 then
  begin

    sTemp := Copy(AValue,1,iPos-1);
    Delete(AValue,1,iPos+(Length(ADelimiter)-1));
  end
  else
    sTemp:= AValue;
  Result := sTemp;
end;

function TdmGlobal.GetVersionInfoAsString(exeName: string): string;
var
  V1, V2, V3, V4: word;
begin
  GetApplicationBuildInfo(exeName, V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' +
    IntToStr(V3);
end;

procedure TdmGlobal.GlobalReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(Dataset, UpdateKind, E);
end;

procedure TdmGlobal.InitializeEngine;
begin
  FDataConnector := TdmConnector.Create(nil);
  FDataConnector.EngineInitialize;
end;

procedure TdmGlobal.InitializeThreads;
begin
  FListBackgroundProcess := TNQueueObjectThreadSafe.Create;
  FThreadBackgroundProcess := TNProcessObjectMessageThreadByQueue.Create('BackgroundProcess', True, True, 100, 1000);
  FThreadBackgroundProcess.OnProcessMessage := BackgroundProcessing;
  FThreadBackgroundProcess.MessageList := FListBackgroundProcess;
  FThreadBackgroundProcess.Resume;
end;

function TdmGlobal.InsertDataSet(const ADataSet: TClientDataSet;
  const AData: String; out ADataType: Integer): Boolean;
var
  oDoc: IXMLDocument;
  oNode: IXMLNode;
  i: Integer;
  jValue: TJSONValue;
begin
  Result := False;
  ADataType := -1;
  try
    ADataSet.XMLData := AData;

    ADataType := 1; //Valid standard TClientDataSet XML Format
    Result := True;
  except
    try
      jValue := TJSONObject.ParseJSONValue(AData);
      if jValue <> Nil then
      begin
        if jValue is TJSONArray then
        begin
          Result := JSONToDataSet(ADataSet, TJSONArray(jValue));
        end;

        ADataType := 2; //Valid standard JSON Format
        Result := True;
      end;
    except
      try
        oDoc := LoadXMLData(AData);
        oDoc.Active := True;
//        for i := 0 to oDoc.ChildNodes.Count - 1 do
//        begin
//          oNode := oDoc.ChildNodes.Nodes[i];
//          ShowMessage('oNode.NodeName --> ' + oNode.NodeName + #13#10
//            + 'oNode.NodeType --> ' + IntToStr(Ord(oNode.NodeType)) + #13#10
//            + 'oNode.NodeValue --> ' + VarToStr(oNode.NodeValue) + #13#10
//            + 'oNode.ChildNodes.Count --> ' + IntToStr(oNode.ChildNodes.Count) + #13#10
//            + 'oDoc.ChildNodes.Count --> ' + IntToStr(oDoc.ChildNodes.Count));
//        end;
        oDoc.Active := False;

        ADataType := 3; //Valid standard XML Format
        Result := True;
      except

      end;
    end;
  end;
end;

procedure TdmGlobal.IntAppConfigAddConfigItem(AConfigItem: TNConfigItem);
var
  sValue: string;
begin
  if AConfigItem.ValueType = 'textencr' then sValue := 'xxxxxxxx'
  else sValue := AConfigItem.ConfigValue;

  if AConfigItem.ConfigName = SETNAME_DATASNAP_COMMUNICATION_PROTOCOL then FDataSnapCommunicationProtocol := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_DATASNAP_PORT then FDataSnapServerPort := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_DATASNAP_HOSTNAME then FDataSnapServerHost := AConfigItem.AsString
//  else if AConfigItem.ConfigName = SETNAME_OMGEO_OUTBOUND then FOMGOutboundDir := AConfigItem.AsString
//  else if AConfigItem.ConfigName = SETNAME_OMGEO_OUTBOUND_BACKUP then FOMGOutboundBackupDir := AConfigItem.AsString
//  else if AConfigItem.ConfigName = SETNAME_OMGEO_BIC then FOMGBIC := AConfigItem.AsString
//  else if AConfigItem.ConfigName = SETNAME_OMGEO_MACHINEID then FOMGMachineID := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_MKBD_OUTPATH then FMKBDOutPath := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_CBEST_OUTPATH then FCBESTOutPath := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_REPORT_HOST then FReportServerHost := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_REPORT_PORT then FReportServerPort := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_REPORT_PROXYHOST then FReportServerProxyHost := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_REPORT_PROXYPORT then FReportServerProxyPort := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_REPORT_LOGIN then FReportServerLogin := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_REPORT_PASSWORD then FReportServerPassword := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_FITS_BANK_INTERFACE then FFITSBankInterfaceDir := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_FITS_CBEST_INTERFACE then FFITSCBestInterfaceDir := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_FITS_JOURNAL_LIST then FFITSJournalListDir := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_BCA_CHECKSUM then FBCACheckSum := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_SINVEST_UPLOAD then FSInvestGenerateFolder := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_SINVEST_DOWNLOAD then FSinvestDownloadFolder := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_DAILY_REPORT then FDailyReportFolder := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_SFTP_USER_NAME then FSFTPUserName := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_SFTP_PASSWORD then FSFTPPassword := AConfigItem.AsString
  else if AConfigItem.ConfigName = SETNAME_SFTP_FILE_URL then FSFTPFileUrl := AConfigItem.AsString;


  Log(ltDebug, 'TdmGlobal.IntAppConfigAddConfigItem -> Add Config(' + AConfigItem.ConfigName + ') : ' + AConfigItem.AsString);
end;

procedure TdmGlobal.IntAppConfigLogTracking(ALog: string);
begin

end;

function TdmGlobal.IsIntegerInArray(const ANumber: Integer;
  const AArray: array of Integer): Boolean;
var
  i: Integer;
begin
  for i := Low(AArray) to High(AArray) do
    if ANumber = AArray[i] then
      Exit(True);

  Result := False;
end;

function TdmGlobal.IsStringInArray(const AValue: String;
  const AArray: array of String): Boolean;
var
  i: Integer;
begin
  for i := Low(AArray) to High(AArray) do
    if AValue = AArray[i] then
      Exit(True);

  Result := False;
end;

function TdmGlobal.JSONToDataSet(const ADataSet: TClientDataSet;
  AValue: TJSONArray): Boolean;
var
  i, j: Integer;
  jsonObj: TJSONObject;
  jValue: TJSONValue;
  sFieldName, sValue: String;
  oField: TField;
  oCds: TClientDataSet;
begin
  Result := False;
  for i := 0 to AValue.Count - 1 do
  begin
    if AValue.Items[i] is TJSONObject then
    begin
      jsonObj := TJSONObject(AValue.Items[i]);

      if (not ADataSet.Active) then
      begin
        if (ADataSet.RemoteServer = Nil) And (ADataSet.DataSetField = Nil) then
          ADataSet.CreateDataSet
        else
        begin
          ADataSet.Close;
          ADataSet.Open;
        end;
      end;

      ADataSet.Append;

      for j := 0 to jsonObj.Count - 1 do
      begin
        sFieldName := jsonObj.Pairs[j].JsonString.Value;

        oField := ADataSet.FindField(sFieldName);

        if (oField <> Nil) then
        begin
          jValue := jsonObj.Pairs[j].JsonValue;
          sValue := jValue.Value;

          if (jValue is TJSONNull) then
          begin
            oField.Clear;
          end
          else
          begin
            if oField.DataType in [ftDataSet] then
            begin
              if jValue is TJSONArray then
              begin
                oCds := TClientDataSet(TDataSetField(oField).NestedDataSet);
                if (oCds <> Nil) then
                begin
                  Result := JSONToDataSet(oCds, TJSONArray(jValue));
                end;
              end;
            end
            else if oField.DataType in [ftInteger, ftLargeint, ftSmallint] then
              oField.AsInteger := StrToIntDef(sValue, 0)
            else if oField.DataType in [ftDate] then
            begin
              oField.AsDateTime := StringToDate(sValue);
            end
            else if oField.DataType in [ftDateTime, ftTimeStamp] then
            begin
              oField.AsDateTime := StringToDateTime(sValue);
            end
            else
              oField.AsString := sValue;
          end;
        end;
      end;

      ADataSet.Post;
    end;
  end;
end;

procedure TdmGlobal.LoadConfig;
var
  sFile: string;
begin
  try
    sFile := 'globalsetting.xml';
    Log(ltInfo, 'Load Config For ' + sFile);
    FAppConfig := TNConfig.Create(Self);
    FAppConfig.OnAddConfigItem := IntAppConfigAddConfigItem;
    FAppConfig.OnLogTracking := IntAppConfigLogTracking;
    FAppConfig.ConfigFileName := sFile;
    FAppConfig.LoadConfig;

    FAppID := FAppConfig.ApplicationID;
  except
    on E: Exception do
      Log(ltError, 'Load Config - > ' + E.ClassName + ': ' + E.Message);
  end;
end;

procedure TdmGlobal.LoadHelpConfig;
begin
  Try
    cdsHelpConfig.Close;
    cdsHelpConfig.CreateDataSet;

    if FileExists(NayagaHelpConfigFile) then
    begin
      cdsHelpConfig.LoadFromFile(NayagaHelpConfigFile);
    end;
  Except
    on E: Exception do
    begin
      Log(ltError, 'TdmGlobal.LoadHelpConfig --> ' + E.Message);
    end;
  End;
end;

procedure TdmGlobal.LoadingSurveilanceSetting;
begin
  FFakeDemandSupplyAmendSupply    := RemoteServer.GetGlobalParamInteger('310');
  FFrontRunningBigReleaseQty      := RemoteServer.GetGlobalParamInteger('311');
  FFrontRunningRageTime           := RemoteServer.GetGlobalParamInteger('312');
  FMarkingTheCloseMinimalOrderQty := RemoteServer.GetGlobalParamInteger('313');
  FMarkingTheCloseStartTime       := RemoteServer.GetGlobalParamString('314');
  FMarkingTheCloseEndTime         := RemoteServer.GetGlobalParamString('315');
  FUnusualMarketVolTransCount     := RemoteServer.GetGlobalParamInteger('316');
  FWashsaleSID                    := RemoteServer.GetGlobalParamInteger('317');
  FWashsaleNPWP                   := RemoteServer.GetGlobalParamInteger('318');
  FWashsaleContactPerson          := RemoteServer.GetGlobalParamInteger('319');
  FWashsaleHomeAddress            := RemoteServer.GetGlobalParamInteger('320');
  FWashsaleOfficeAddress          := RemoteServer.GetGlobalParamInteger('321');
  FWashsaleSpouse                 := RemoteServer.GetGlobalParamInteger('322');
  FWashsaleBankAccount            := RemoteServer.GetGlobalParamInteger('323');
  FWashsaleEmail                  := RemoteServer.GetGlobalParamInteger('324');
end;

procedure TdmGlobal.Log(ALogType: TAppLogType; ALogText: String);
var
  sLog: string;
begin
  sLog := FormatDateTime('hh.nn.ss.zzz',now) + ':: ';

  if ALogType = ltInfo then sLog := sLog + 'INFO -> '
  else if ALogType = ltDebug then sLog := sLog + 'DEBUG -> '
  else if ALogType = ltError then sLog := sLog + 'ERROR -> '
  else if ALogType = ltWarning then sLog := sLog + 'WARNING -> ';

  sLog := sLog + ALogText;

  FLogs.Log(sLog);
end;

function TdmGlobal.Login(AUser, APassword: string): string;
var
  sIPAddress, sCompName, sAppVersion, sAppName: string;
begin
  sIPAddress := GetIPAddressAsString;
  sCompName := MyComputerName;

  FCompName := sCompName;
  FIPAddress := sIPAddress;

  sAppVersion := '1';
  sAppName    := Application.Title;

  Result := FRemoteServer.Login(AUser, APassword, sCompName, sIPAddress, sAppVersion, sAppName);
end;

function TdmGlobal.ModifyDataSetData(AValidDataSet,
  AUpdateDataSet: TNClientDataSet): Boolean;
var
  i: Integer;
  oValidCds, oUpdateCds: TNClientDataSet;
  oField: TField;
  bValidDataReadOnly, bUpdateDataReadOnly: Boolean;
  slPrimaryKeyFields: TStringList;
  sKey: string;
  vFind: Variant;
begin
  bValidDataReadOnly := AValidDataSet.ReadOnly;
  bUpdateDataReadOnly := AUpdateDataSet.ReadOnly;
  slPrimaryKeyFields := TStringList.Create;
  AValidDataSet.DisableControls;
  AUpdateDataSet.DisableControls;
  try
    AValidDataSet.ReadOnly := False;
    AUpdateDataSet.ReadOnly := False;
    ParseDelimited(slPrimaryKeyFields, AValidDataSet.PrimaryKeyFields, ';');
    sKey := AValidDataSet.PrimaryKeyFields;
    vFind := VarArrayCreate([0, slPrimaryKeyFields.Count - 1], varVariant);

    AValidDataSet.First;
    while not AValidDataSet.Eof do
    begin
      for i := 0 to slPrimaryKeyFields.Count - 1 do
      begin
        oField := AValidDataSet.FindField(slPrimaryKeyFields[i]);
        if (oField <> Nil) then
        begin
          vFind[i] := oField.Value;
        end;
      end;

      if AUpdateDataSet.Locate(sKey, vFind, []) then
      begin
        AValidDataSet.Edit;
        for i := 0 to AValidDataSet.FieldCount - 1 do
        begin
          oField := AUpdateDataSet.FindField(AValidDataSet.Fields[i].FieldName);
          if (oField <> Nil) and (oField.FieldKind = fkData) then
          begin
            if (oField.DataType = ftDataSet) then
            begin
              oValidCds := TNClientDataSet(TDataSetField(AValidDataSet.Fields[i]).NestedDataSet);
              oUpdateCds := TNClientDataSet(TDataSetField(oField).NestedDataSet);

              if (oValidCds <> Nil) and (oUpdateCds <> Nil) then
              begin
                ModifyDataSetData(oValidCds, oUpdateCds);
              end;
            end
            else
            begin
              AValidDataSet.Fields[i].value := oField.Value;
            end;
          end
        end;
        AValidDataSet.Post;
      end
      else
      begin
        DeleteRecord(AValidDataSet);
      end;

      AValidDataSet.Next;
    end;

    AUpdateDataSet.First;
    while not AUpdateDataSet.Eof do
    begin
      for i := 0 to slPrimaryKeyFields.Count - 1 do
      begin
        oField := AUpdateDataSet.FindField(slPrimaryKeyFields[i]);
        if (oField <> Nil) then
        begin
          vFind[i] := oField.Value;
        end;
      end;

      if AValidDataSet.Locate(sKey, vFind, []) then
      begin
        AValidDataSet.Edit;
      end
      else
      begin
        AValidDataSet.Append;
      end;

      for i := 0 to AValidDataSet.FieldCount - 1 do
      begin
        oField := AUpdateDataSet.FindField(AValidDataSet.Fields[i].FieldName);
        if (oField <> Nil) and (oField.FieldKind = fkData) then
        begin
          if (oField.DataType = ftDataSet) then
          begin
            oValidCds := TNClientDataSet(TDataSetField(AValidDataSet.Fields[i]).NestedDataSet);
            oUpdateCds := TNClientDataSet(TDataSetField(oField).NestedDataSet);

            if (oValidCds <> Nil) and (oUpdateCds <> Nil) then
            begin
              ModifyDataSetData(oValidCds, oUpdateCds);
            end;
          end
          else
          begin
            AValidDataSet.Fields[i].value := oField.Value;
          end;
        end
      end;
      AValidDataSet.Post;

      AUpdateDataSet.Next;
    end;

  finally
    AValidDataSet.ReadOnly := bValidDataReadOnly;
    AUpdateDataSet.ReadOnly := bUpdateDataReadOnly;
    AUpdateDataSet.EnableControls;
    AValidDataSet.EnableControls;

    FreeAndNil(slPrimaryKeyFields);
  end
end;

procedure TdmGlobal.NewAlertMessage(const Msg: String; DlgType: TMsgDlgType);
begin
  frmMain.NewAlertMessage(Msg, DlgType);
end;

procedure TdmGlobal.OpenFile(const FileName: String);
begin
  if FileExists(FileName) then
  begin
    ShellExecute(Application.Handle, 'open', PChar(FileName), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    ShowMessage('File ' + QuotedStr(FileName) + ' not found.');
  end;
end;

procedure TdmGlobal.OpenUserFavorites(AUserID: String);
var
  oItem: TdxNavBarItem;
  oAction: TCustomAction;
  i: Integer;
begin
  cdsUserFavorites.Close;
  cdsUserFavorites.Params[0].AsString := AUserID;
  cdsUserFavorites.Params[1].AsString := MenuBar.AppID;
  cdsUserFavorites.Open;

  while frmMain.nbFavorites.Items.Count > 0 do
  begin
    frmMain.nbFavorites.Items[0].Free;
  end;

  cdsUserFavorites.First;
  while not cdsUserFavorites.Eof do
  begin
    if FindComponent(cdsUserFavoritesACTIONNAME.AsString) is TCustomAction then
    begin
      oAction := TCustomAction(FindComponent(cdsUserFavoritesACTIONNAME.AsString));

      if frmMain.nbFavorites.Items.ItemByCaption(oAction.Caption) = nil then
      begin
        oItem := frmMain.nbFavorites.Items.Add;
        oItem.Action := oAction;
        frmMain.nbFavoritesGroup.CreateLink(oItem);
      end;
    end
    else
    begin
      cdsUserFavorites.Delete;
      cdsUserFavorites.Prior;
    end;

    cdsUserFavorites.Next;
  end;
end;

procedure TdmGlobal.OpenUserLayout(AFormName: String);
begin
  cdsUserLayout.Close;
  cdsUserLayout.Params[0].AsString := UserID;
  cdsUserLayout.Params[1].AsString := MenuBar.AppID;
  cdsUserLayout.Params[2].AsString := AFormName;
  cdsUserLayout.Open;
end;

procedure TdmGlobal.SaveHelpConfig;
begin
  Try
    cdsHelpConfig.SaveToFile(NayagaHelpConfigFile, dfXMLUTF8);
  Except
    on E: Exception do
    begin
      Log(ltError, 'TdmGlobal.SaveHelpConfig --> ' + E.Message);
    end;
  End;
end;

function TdmGlobal.SecondsIdle: DWord;
var
   liInfo: TLastInputInfo;
begin
   liInfo.cbSize := SizeOf(TLastInputInfo) ;
   GetLastInputInfo(liInfo) ;
   Result := (GetTickCount - liInfo.dwTime) DIV 1000;
end;

procedure TdmGlobal.SetActionDescription(actList: TActionList);
var
  i: Integer;
  oAction: TNBaseAction;
begin
  for i := 0 to actList.ActionCount - 1 do
  begin
    if actList.Actions[i] is TNBaseAction then
    begin
      oAction := TNBaseAction(actList.Actions[i]);
      if Trim(oAction.Description) = '' then
      begin
        if oAction.Owner is TForm then
          oAction.Description := oAction.Caption + ' ' + TForm(oAction.Owner).Caption
        else
          oAction.Description := oAction.Caption;
      end;
    end;

  end;
end;

procedure TdmGlobal.SetDataSetProperty(ADataSet: TNClientDataSet);
var
  oDataSet: TNClientDataset;
  i: Integer;
  sDataModuleName, sDataSet: String;
  sTableName: String;

  procedure SetProperty(AClientDataSet: TNClientDataset; ADataModule, ADataSet: String);
  var
    i: Integer;
    oField: TField;
    oClientDataSet: TNClientDataset;
  begin
    if cdsDatasetInformation.Locate('DATAMODULE;DATASET', VarArrayOf([ADataModule, ADataSet]), []) then
    begin
      AClientDataSet.TableName := cdsDatasetInformationTABLENAME.AsString;
      AClientDataSet.PrimaryKeyFields := cdsDatasetInformationPRIMARYKEY.AsString;
    end;

    for i := 0 to AClientDataSet.FieldCount - 1 do
    begin
      oField := AClientDataSet.Fields[i];
      if (oField.DataType in [ftDataSet]) then
      begin
        if (TDataSetField(oField).NestedDataSet <> nil)
          and (TDataSetField(oField).NestedDataSet is TNClientDataset) then
        begin
          oClientDataSet := TNClientDataset(TDataSetField(oField).NestedDataSet);

          SetProperty(oClientDataSet, ADataModule, oField.FieldName);
        end;
      end;
    end;
  end;
begin
  sDataModuleName := ADataSet.ProviderName;
  Delete(sDataModuleName, 1, 5);
  i := AnsiPos('_', sDataModuleName);
  sDataSet := RightStr(sDataModuleName, Length(sDataModuleName) - i);
  sDataModuleName := LeftStr(sDataModuleName, i -1);

  SetProperty(ADataSet, sDataModuleName, sDataSet);
end;

procedure TdmGlobal.SetDefaultDataDisplayFormat(ADataset: TDataset);
var
  i: Integer;
begin
  if ADataset.Tag <> 17 then
  begin
    for i := 0 to ADataset.FieldCount - 1 do
    begin
      if ADataset.Fields[i].DataType = ftInteger then
      begin
        if (Trim(TIntegerField(ADataset.Fields[i]).DisplayFormat) = '') then
          TIntegerField(ADataset.Fields[i]).DisplayFormat := '#,##0';
      end
      else if ADataset.Fields[i].DataType = ftFloat then
      begin
        if (Trim(TFloatField(ADataset.Fields[i]).DisplayFormat) = '') then
          TFloatField(ADataset.Fields[i]).DisplayFormat := '#,##0.00';
      end
      else if ADataset.Fields[i].DataType in [ftDate, ftDateTime, ftTimeStamp] then
      begin
        if (Trim(TSQLTimeStampField(ADataset.Fields[i]).DisplayFormat) = '') then
          TSQLTimeStampField(ADataset.Fields[i]).DisplayFormat := 'dd-MMM-yy';
      end;
    end;
  end;
end;

procedure TdmGlobal.SetEndDayProcess(const Value: Boolean);
begin
  if FEndDayProcess <> Value then
  begin
    FEndDayProcess := Value;
    if Value then
    begin
      if not RemoteServer.StartEndDayProcess then
      begin
        FEndDayProcess := False;
      end;
    end
    else
    begin
      RemoteServer.FinishEndDayProcess;
    end;
  end;
end;

procedure TdmGlobal.SetMenuIcon;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TAction then
    begin
      TAction(Self.Components[i]).ImageIndex := 46;
    end;
  end;
end;

function TdmGlobal.SetReadOnlyDataset(ADataSet: TClientDataSet;
  AReadOnly: Boolean): Boolean;
var
  i: Integer;
  oCds: TClientDataSet;
begin
  ADataSet.ReadOnly := AReadOnly;
  for i := 0 to ADataSet.FieldCount - 1 do
  begin
    if ADataSet.Fields[i].DataType = ftDataSet then
    begin
      if TDataSetField(ADataSet.Fields[i]).NestedDataSet is TClientDataSet then
      begin
        oCds := TClientDataSet(TDataSetField(ADataSet.Fields[i]).NestedDataSet);
        SetReadOnlyDataset(oCds, AReadOnly);
      end;
    end;
  end;
  Result := True;
end;

procedure TdmGlobal.SetUserInformation;
var
  sVersion: string;
  sDebug: string;
begin
  sDebug := '';
  if FDebugMode then
    sDebug := ' - Debug Mode';

  sVersion := dmGlobal.GetVersionInfoAsString(ParamStr(0));
  frmMain.Caption := 'Nayaga iBanking System - Client Version ' + sVersion + sDebug;
  frmMain.StatusBar.Panels.Items[0].Text := 'User: ' + FUserID;
  frmMain.StatusBar.Panels.Items[1].Text := 'Nayaga iBanking System is powered by PT Kalacakra Teknologi - Client Version ' + sVersion + sDebug;
  frmMain.StatusBar.Panels.Items[2].Text := 'System Date: ' + FormatDateTime('dd mmm yyyy', +FRemoteServer.GetTransDate);
end;

function TdmGlobal.ShowEditorBasicForm(AFormClass: TFormEditorBasicClass;
  var AKey: String; AProcess: TProcessKind): TModalResult;
var
  oForm: TfrmEditorBasic;
  oCds: TClientDataSet;
  sUserID, sIPAddress, sCompName, sMsg: String;
  editDate: TDateTime;
  i: Integer;
  AContinue: Boolean;
  sState, sNotes, sTableName: String;
begin
  Result := mrNone;
  oForm := AFormClass.Create(nil);
  Try
    AContinue := True;
    oCds := TClientDataSet(oForm.dsSubject.DataSet);

    if oCds is TNClientDataSet then
      sTableName := TNClientDataset(oCds).TableName
    else
      sTableName := oCds.ProviderName;

    if AProcess in [pkUpdate, pkDelete, pkApprove, pkreject, pkCancel] then
    begin
      editDate := Now;
      if not dmGlobal.RemoteServer.StartEditTable(sTableName, AKey, sUserID, sIPAddress, sCompName, editDate) then
      begin
        AContinue := False;
        sMsg := 'You can''t changes this Data! Key: ' + QuotedStr(AKey) + #13;
        sMsg := sMsg + 'This data is currently editing by ' + sUserID
          + ' from computer ' + sCompName + ' since '
          + FormatDateTime('dd MMM yyyy hh:nn:ss.zzz', editDate);
        ShowMessage(sMsg);
      end;
    end;

    if AContinue then
    begin
      if AProcess = pkCreate then
      begin
        sState := 'I';
        if AKey = '' then
          oForm.Insert
        else
          oForm.Insert(AKey);
      end
      else if AProcess = pkUpdate then
      begin
        sState := 'U';
        oForm.Edit(AKey);
      end
      else if AProcess = pkDelete then
      begin
        sState := 'D';
        oForm.Delete(AKey);
      end
      else if AProcess = pkApprove then
      begin
        sState := 'A';
        oForm.Approve(AKey);
      end
      else if AProcess = pkReject then
      begin
        sState := 'R';
        oForm.Reject(AKey);
      end
      else if AProcess = pkCancel then
      begin
        sState := 'C';
        oForm.Cancel(AKey);
      end
      else
        oForm.View(AKey);

      if AProcess in [pkCreate, pkRead, pkUpdate, pkDelete] then
      begin
        oForm.Height := oForm.Height - oForm.tabEditorData.Height;
      end
      else if AProcess in [pkApprove, pkReject, pkCancel] then
      begin
        oForm.tabEditorData.Visible := True;
      end;

      if oForm.ShowModal = mrOk then
      begin
        if AProcess in [pkCreate, pkUpdate, pkDelete] then
        begin
          if oCds is TNClientDataset then
          begin
            if TNClientDataset(oCds).Control4Eyes then
            begin
              if ChangeCountAllDataset(oCds) > 0 then
              begin
                if AProcess = pkCreate then
                begin
                  AKey := GetDataSetKey(TNClientDataset(oCds));
                  sNotes := InputBox('Reason for create this data', 'Notes : ', sNotes);
                  if sNotes = '' then
                    sNotes := 'Create Document in Module ' + QuotedStr(oCds.ProviderName)
                      + ' with primary key ' + QuotedStr(AKey);
                end
                else if AProcess = pkUpdate then
                begin
                  sNotes := InputBox('Reason for update this data', 'Notes : ', sNotes);
                  if sNotes = '' then
                    sNotes := 'Modify Document in Module ' + QuotedStr(oCds.ProviderName)
                      + ' with primary key ' + QuotedStr(AKey);
                end
                else if AProcess = pkDelete then
                begin
                  sNotes := InputBox('Reason for delete this data', 'Notes : ', sNotes);
                  if sNotes = '' then
                    sNotes := 'Delete Document in Module ' + QuotedStr(oCds.ProviderName)
                      + ' with primary key ' + QuotedStr(AKey);
                end;

                if RemoteServer.ApproveRequest(oCds.ProviderName, oForm.ClassName, AKey, sState, sNotes, oCds.XMLData, sMsg) then
                  Result := mrOk;
                ShowMessage(sMsg);
              end;
            end
            else
              if oCds.ApplyUpdates(0) = 0 then
              begin
                Result := mrOk;

                if oCds is TNClientDataset then
                  AKey := GetDataSetKey(TNClientDataset(oCds));
              end;
          end
          else
            if oCds.ApplyUpdates(0) = 0 then
            begin
              Result := mrOk;

              if oCds is TNClientDataset then
                AKey := GetDataSetKey(TNClientDataset(oCds));
            end;
        end
        else if AProcess in [pkApprove, pkReject, pkCancel, pkRemodify] then
        begin
          if AProcess = pkApprove then
          begin
            AKey := GetDataSetKey(TNClientDataset(oCds));
            sNotes := InputBox('Reason for approve this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Approve Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end
          else if AProcess = pkReject then
          begin
            sNotes := InputBox('Reason for reject this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Reject Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end
          else if AProcess = pkCancel then
          begin
            sNotes := InputBox('Reason for cancel this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Cancel Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end
          else if AProcess = pkRemodify then
          begin
            sNotes := InputBox('Reason for remodify this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Remodify Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end;

          if RemoteServer.ApproveModule(oCds.ProviderName, AKey, sState, sNotes, sMsg) then
            Result := mrOk;

          ShowMessage(sMsg);
        end;
      end;

      if AProcess in [pkUpdate, pkDelete, pkApprove, pkreject, pkCancel] then
      begin
        dmGlobal.RemoteServer.FinishEditTable(sTableName, AKey);
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;

end;

function TdmGlobal.ShowEditorForm(AFormClass: TFormEditorClass; var AKey: String;
  AProcess: TProcessKind): TModalResult;
var
  oForm: TfrmEditorData;
  oCds: TClientDataSet;
  sUserID, sIPAddress, sCompName, sMsg: String;
  editDate: TDateTime;
  i: Integer;
  AContinue: Boolean;
  sState, sNotes, tempKey: String;

label
  GotoEditor;

begin
  Result := mrNone;

  oForm := AFormClass.Create(Nil);
  Try
    AContinue := True;
    oCds := TClientDataSet(oForm.dsSubject.DataSet);
    if AProcess in [pkUpdate, pkDelete, pkApprove, pkreject, pkCancel, pkRemodify, pkModifyApproval] then
    begin
      editDate := Now;
      if not dmGlobal.RemoteServer.StartEditTable(oCds.ProviderName, AKey, sUserID, sIPAddress, sCompName, editDate) then
      begin
        AContinue := False;
        sMsg := 'You can''t changes this Data! Key: ' + QuotedStr(AKey) + #13;
        sMsg := sMsg + 'This data is currently editing by ' + sUserID
          + ' from computer ' + sCompName + ' since '
          + FormatDateTime('dd MMM yyyy hh:nn:ss.zzz', editDate);
        ShowMessage(sMsg);
      end;
    end;

    if AContinue then
    begin
      if Assigned(oCds.OnReconcileError) then
      begin
        oForm.OnReconcileError := oCds.OnReconcileError;
      end;

      oCds.OnReconcileError := oForm.InternalReconcileError;

      if AProcess = pkCreate then
      begin
        sState := 'I';
        if AKey = '' then
          oForm.Insert
        else
          oForm.Insert(AKey);
      end
      else if AProcess = pkUpdate then
      begin
        sState := 'U';
        oForm.Edit(AKey);
      end
      else if AProcess = pkDelete then
      begin
        sState := 'D';
        oForm.Delete(AKey);
      end
      else if AProcess = pkApprove then
      begin
        sState := 'A';
        oForm.Approve(AKey);
      end
      else if AProcess = pkReject then
      begin
        sState := 'R';
        oForm.Reject(AKey);
      end
      else if AProcess = pkCancel then
      begin
        sState := 'C';
        oForm.Cancel(AKey);
      end
      else if AProcess = pkRemodify then
      begin
        sState := 'M';
        oForm.Cancel(AKey);
      end
      else if AProcess = pkReadApproval then
      begin
        oForm.ViewApprove(AKey);
      end
      else if AProcess = pkModifyApproval then
      begin
        oForm.ModifyApprove(AKey);
      end
      else
        oForm.View(AKey);

      if AProcess in [pkCreate, pkRead, pkUpdate, pkDelete] then
      begin
        oForm.Height := oForm.Height - oForm.tabEditorData.Height;
      end;

      GotoEditor:
      oForm.IsError := False;

      if oForm.ShowModal = mrOk then
      begin
        if oCds.State in dsEditModes then
          oCds.Post;

        if AProcess <> oForm.State then
        begin
          if oForm.State = pkCreate then
            sState := 'I'
          else if oForm.State = pkUpdate then
            sState := 'U'
          else if oForm.State = pkDelete then
            sState := 'D';
        end;

        if oForm.State in [pkCreate, pkUpdate, pkDelete] then
        begin
          if oCds is TNClientDataset then
          begin
            if TNClientDataset(oCds).Control4Eyes then
            begin
              if oForm.State = pkCreate then
              begin
                tempKey := AKey;
                AKey := GetDataSetKey(TNClientDataset(oCds));
                sNotes := InputBox('Reason for create this data', 'Notes : ', sNotes);
                if sNotes = '' then
                  sNotes := 'Create Document in Module ' + QuotedStr(oCds.ProviderName)
                    + ' with primary key ' + QuotedStr(AKey);

                if (AKey <> tempKey) And (AProcess = pkModifyApproval) then
                begin
                  if (cdsApproveRequest.Active)
                    And (not cdsApproveRequest.IsEmpty)
                    And (cdsApproveRequestKEYID.AsString = tempKey) then
                  begin
                    cdsApproveRequest.Delete;
                    cdsApproveRequest.ApplyUpdates(0);
                  end;
                end;

                if RemoteServer.ApproveRequest(oCds.ProviderName, oForm.ClassName, AKey, sState, sNotes, oCds.XMLData, sMsg) then
                begin
                  Result := mrOk;
                end;

                ShowMessage(sMsg);
              end
              else if oForm.State = pkUpdate then
              begin
                if ChangeCountAllDataset(oCds) > 0 then
                begin
                  sNotes := InputBox('Reason for update this data', 'Notes : ', sNotes);
                  if sNotes = '' then
                    sNotes := 'Modify Document in Module ' + QuotedStr(oCds.ProviderName)
                      + ' with primary key ' + QuotedStr(AKey);

                  if RemoteServer.ApproveRequest(oCds.ProviderName, oForm.ClassName, AKey, sState, sNotes, oCds.XMLData, sMsg) then
                  begin
                    Result := mrOk;
                  end;

                  ShowMessage(sMsg);
                end;
              end
              else if oForm.State = pkDelete then
              begin
                sNotes := InputBox('Reason for delete this data', 'Notes : ', sNotes);
                if sNotes = '' then
                  sNotes := 'Delete Document in Module ' + QuotedStr(oCds.ProviderName)
                    + ' with primary key ' + QuotedStr(AKey);

                if RemoteServer.ApproveRequest(oCds.ProviderName, oForm.ClassName, AKey, sState, sNotes, oCds.XMLData, sMsg) then
                begin
                  Result := mrOk;
                end;

                ShowMessage(sMsg);
              end;
            end
            else
            begin
              if oCds.ApplyUpdates(0) = 0 then
              begin
                Result := mrOk;
                if oCds is TNClientDataset then
                  AKey := GetDataSetKey(TNClientDataset(oCds));
              end;
            end;
          end
          else
          begin
            if oCds.ApplyUpdates(0) = 0 then
            begin
              Result := mrOk;
              if oCds is TNClientDataset then
                AKey := GetDataSetKey(TNClientDataset(oCds));
            end;
          end;
        end
        else if oForm.State in [pkApprove, pkReject, pkCancel, pkRemodify] then
        begin
          if oForm.State = pkApprove then
          begin
//            AKey := GetDataSetKey(TNClientDataset(oCds));
            sNotes := InputBox('Reason for approve this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Approve Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end
          else if oForm.State = pkReject then
          begin
            sNotes := InputBox('Reason for reject this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Reject Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end
          else if oForm.State = pkCancel then
          begin
            sNotes := InputBox('Reason for cancel this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Cancel Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end
          else if oForm.State = pkRemodify then
          begin
            sNotes := InputBox('Reason for remodify this data', 'Notes : ', sNotes);
            if sNotes = '' then
              sNotes := 'Remodify Document in Module ' + QuotedStr(oCds.ProviderName)
                + ' with primary key ' + QuotedStr(AKey);
          end;

          if RemoteServer.ApproveModule(oCds.ProviderName, AKey, sState, sNotes, sMsg) then
            Result := mrOk;

          ShowMessage(sMsg);
        end;
      end;

      if oForm.IsError then
      begin
        Goto GotoEditor;
      end;

      if AProcess in [pkUpdate, pkDelete, pkApprove, pkreject, pkCancel, pkRemodify, pkModifyApproval] then
      begin
        dmGlobal.RemoteServer.FinishEditTable(oCds.ProviderName, AKey);
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;

end;

procedure TdmGlobal.ShowForm(AForm: TForm);
var
  oMainForm: TfrmMain;
begin
  oMainForm := TfrmMain(Application.MainForm);
  oMainForm.ShowForm(AForm);
end;

function TdmGlobal.ShowFormModal(AFormClass: TFormClass): TModalResult;
var
  oMainForm: TfrmMain;
begin
  oMainForm := TfrmMain(Application.MainForm);
  Result := oMainForm.ShowFormModal(AFormClass);
end;

function TdmGlobal.ShowFormModal(AForm: TForm): TModalResult;
var
  oMainForm: TfrmMain;
begin
  oMainForm := TfrmMain(Application.MainForm);
  Result := oMainForm.ShowFormModal(AForm);
end;

procedure TdmGlobal.ShowOMGNotification;
var
  OMGAlert:TJvDesktopAlert;
  FOptions:TJvDesktopAlertOptions;
  oForm: TForm;
  oMainForm: TfrmMain;
begin
  try
    OMGAlert := TJvDesktopAlert.Create(Self);
    OMGAlert.AutoFree := true;
    OMGAlert.HeaderText := Format('%s ', ['Information']);
    OMGAlert.MessageText := 'OMGEO response file received';
    FOptions := [];
    OMGAlert.Options := FOptions;
    OMGAlert.Location.AlwaysResetPosition := false;
    OMGAlert.Location.Position := TJvDesktopAlertPosition(dapBottomRight);
    OMGAlert.Location.Width := 0;
    OMGAlert.Location.Height := 0;
    if OMGAlert.Location.Position = dapCustom then
    begin
      OMGAlert.Location.Left := Random(Screen.Width - 200);
      OMGAlert.Location.Top :=  Random(Screen.Height - 100);
    end;
    OMGAlert.AlertStyle := TJvAlertStyle(asFade);
    OMGAlert.StyleHandler.StartInterval := 5;
    OMGAlert.StyleHandler.StartSteps := 10;
    OMGAlert.StyleHandler.DisplayDuration  := 1400; //  + Random(WaitTime);
    OMGAlert.StyleHandler.EndInterval := 1000;
    OMGAlert.StyleHandler.EndSteps := 7;
    OMGAlert.Execute;
  finally
//    oMainForm := TfrmMain(Application.MainForm);
//    oForm := TForm(oMainForm.dpnlMain.Controls[0]);
//    if oForm.ClassName = 'TfrmOMGMonitor' then
//    begin
//      TfrmOMGMonitor(oForm).OpenListTrade;
//      TfrmOMGMonitor(oForm).OpenSSI;
//    end;

  end;
end;

procedure TdmGlobal.StartEngine;
var
  sFileName, sWorkingPath: string;
  sSession: string;
begin
  if cnnMain.Connected then
    cnnMain.Connected := False;

  NayagaDir := ExtractFileDir(Application.ExeName);
  NayagaHelpFile := NayagaDir + '\Nayaga.chm';
  NayagaHelpConfigFile := NayagaDir + '\HelpConfig.xml';
  Application.HelpFile := NayagaHelpFile;
//  Application.OnHelp := ApplicationHelp;
  LoadHelpConfig;

  //Set Default Format Settings
//  FormatSettings := TFormatSettings.Create;
//  FormatSettings.ShortDateFormat := 'dd MMM yyyy';
//  FormatSettings.LongDateFormat := 'dd MMM yyyy hh:nn:ss';
//  FormatSettings.DecimalSeparator := '.';
//  FormatSettings.ThousandSeparator := ',';

  sWorkingPath := GetCurrentDir + '\Log\';
  if not DirectoryExists(sWorkingPath) then CreateDir(sWorkingPath);
  sFileName := sWorkingPath +'nayaga_' + FormatDateTime('yymmdd', Date) + '.log';

  FLogs := TNLogs.Create(sFileName);
  LoadConfig;
  PrepareSQLParameter;
  cnnMain.Connected := True;
  GetAllPermissions;
  FRemoteServer := TSessionServerModuleClient.Create(cnnMain.DBXConnection);
  PrepareDataModule;
  PrepareGlobalParameter;
  StartReportEngine;
  InitializeEngine;
  InitializeThreads;
  SetMenuIcon;

  cdsDatasetInformation.Close;
  cdsDatasetInformation.Open;

  {Callback Configuration}
  dmGlobal.GlobalCallbackManager.ManagerId := TDSTunnelSession.GenerateSessionId;
  FMyCallBackName := TDSTunnelSession.GenerateSessionId;

  dmGlobal.GlobalCallbackManager.RegisterCallback(
    FMyCallBackName,
    TMyCallback.Create
  );

  FRemoteServer.RegisterCallbackInfo(
    dmGlobal.GlobalCallbackManager.ManagerId,
    FMyCallBackName);

  FBankDefDesc := RemoteServer.GetGlobalParamString('771');

  LoadingSurveilanceSetting;

  fidTCPClient := tidTCPClient.Create;
  fidTCPClient.Host := FDataSnapServerHost;
  fidTCPClient.Port := RemoteServer.GetGlobalParamInteger('951'); //9000;
  fidTCPClient.ConnectTimeout := 10000;

  tmrHeartbeat.Interval := RemoteServer.GetGlobalParamInteger('950');
//  fidTCPClient.Connect;

//  if fidTCPClient.Connected then
//  begin
//    fidTCPClient.IOHandler.WriteLn(gvwMaster.DataController.DataSet.FieldByName('SESSION').AsString);
//    tmrHeartbeat.Enabled := True;
//  end;
end;

procedure TdmGlobal.StartReportEngine;
var
  t: Cardinal;
  tf: Double;
begin
  Try
    with ReportServerConnection do
    begin
      Host := FReportServerHost;
      Port := StrToInt(FReportServerPort);
      Login := FReportServerLogin;
      Password := FReportServerPassword;

      if (Length(Trim(FReportServerProxyHost)) > 0) then
      begin
        ProxyHost := FReportServerProxyHost;
        ProxyPort := StrToInt(FReportServerProxyPort);
      end;
    end;

    with ReportClient do
    begin
      t := GetTickCount;
      Log(ltInfo, 'Report Server Name: ' + GetServerVariable('SERVER_NAME'));
      tf := (GetTickCount - t) / 1000;

      if Errors.Count = 0 then
      begin
//        Log(ltInfo, 'Report Server From: ' + GetServerVariable('SERVER_LAST_UPDATE'));
        Log(ltInfo, 'Report Server Uptime: ' + GetServerVariable('SERVER_UPTIME'));
        Log(ltInfo, 'Report Server Ping: ' + FloatToStr(tf) + ' ms.');
      end
      else
        Log(ltError, 'Report Client Error: ' + Errors.Text);
    end;

  Except
    on E: Exception do
    begin
      Log(ltError, 'Start Report Engine - > ' + E.ClassName + ': ' + E.Message);
    end;
  End;
end;

procedure TdmGlobal.StopEngine;
begin
//  cnnMain.Connected := False;
//  FRemoteServer := TSessionServerModuleClient.Create(cnnMain.DBXConnection);

  FreeAndNil(fidTCPClient);

  SaveHelpConfig;
//  dmGlobal.GlobalCallbackManager.UnregisterCallback(FMyCallBackName);

  DeinitializeEngine;
  DeinitializeThreads;
  dmGlobal.TimerGlobal.Enabled := False;
  StopReportEngine;
  FRemoteServer.Logout(FUserID, FIPAddress);
//  FDataConnector.EngineDeinitialize;
  DestroyDataModule;
end;


procedure TdmGlobal.StopReportEngine;
begin
  Log(ltInfo, 'Report Engine Stop');
end;

function TdmGlobal.StringToDate(const AValue: String): TDate;
var
  iYear, iMonth, iDay: Word;
begin
  if Length(AValue) = 8 then
  begin
    iYear   := StrToIntDef(Copy(AValue, 1, 4), 1899);
    iMonth  := StrToIntDef(Copy(AValue, 5, 2), 12);
    iDay    := StrToIntDef(Copy(AValue, 7, 2), 31);

    Result := EncodeDate(iYear, iMonth, iDay);
  end
  else
    Result := MinDateTime;
end;

function TdmGlobal.StringToDateTime(const AValue: String): TDateTime;
var
  iYear, iMonth, iDay, iHour, iMin, iSec, iMSec: Word;
begin
  if Length(AValue) = 8 then
  begin
    iYear   := StrToIntDef(Copy(AValue, 1, 4), 1899);
    iMonth  := StrToIntDef(Copy(AValue, 5, 2), 12);
    iDay    := StrToIntDef(Copy(AValue, 7, 2), 31);
    iHour   := StrToIntDef(Copy(AValue, 9, 2), 0);
    iMin    := StrToIntDef(Copy(AValue, 11, 2), 0);
    iSec    := StrToIntDef(Copy(AValue, 13, 2), 0);
    iMSec   := StrToIntDef(Copy(AValue, 15, 2), 0);

    Result := EncodeDateTime(iYear, iMonth, iDay, iHour, iMin, iSec, iMSec);
  end
  else
    Result := MinDateTime;
end;

procedure TdmGlobal.SynchronizeApplication;
var
  V1, V2, V3, V4, V1Server, V2Server, V3Server, V4Server: word;
  oUpdateFile: TJSONArray;
  oOutStream: TStream;
//  oUpdateFileStream: TFileStream;
  sAppPath, sTempPath, sFileName, sBatFile, sBackUpFileName: String;
  oZipFile: TZIPFile;

  slRestartBatch: TStringList;
  oWaitForm: TfrmProcessWait;
  bDiff: Boolean;
begin
  Try
//    Result := False;

    oWaitForm := TfrmProcessWait.Create(Nil);
    Try
      oWaitForm.Show;
      Application.ProcessMessages;

      oWaitForm.ChangeProcessCaption('Check Client Application Version');
      GetApplicationBuildInfo(ParamStr(0), V1, V2, V3, V4);

      oWaitForm.ChangeProcessCaption('Client Application Version ' + IntToStr(V1) + '.'
         + IntToStr(V2) + '.' + IntToStr(V3) + ' compared with server.');
      bDiff := FRemoteServer.CheckClientApplicationVersion(V1, V2, V3, V4, V1Server, V2Server, V3Server, V4Server);

      if (bDiff) and (not DebugMode) then
      begin
        oWaitForm.ChangeProcessCaption('Checking And Downloading Client Application Version '
          + IntToStr(V1Server) + '.' + IntToStr(V2Server) + '.' + IntToStr(V3Server)
          + ' From Server.');
        if FRemoteServer.SynchronizeClientApplication(V1, V2, V3, V4, oUpdateFile) then
        begin
          if oUpdateFile <> nil then
          begin
            oWaitForm.ChangeProcessCaption('Client Application Downloaded Successfully.');
            sFileName := ExtractFileName(Application.ExeName);
            sAppPath := ExtractFilePath(Application.ExeName);
            sBackUpFileName := ChangeFileExt(Application.ExeName, '.bak');

            if FileExists(sBackUpFileName) then
              System.SysUtils.DeleteFile(sBackUpFileName);

            sTempPath := sAppPath + 'temp\';
            if not DirectoryExists(sTempPath) then
              CreateDir(sTempPath);

            sBatFile := sAppPath + 'restart.bat';
            sFileName := sTempPath + sFileName;

            oWaitForm.ChangeProcessCaption('Extract updated file.');
            oOutStream := TDBXJSONTools.JSONToStream(oUpdateFile);

            oZipFile := TZipFile.Create;
            Try
              oZipFile.Open(oOutStream, zmRead);
              oZipFile.ExtractAll(sTempPath);
            Finally
              FreeAndNil(oZipFile);
              FreeAndNil(oOutStream);
            End;

            oWaitForm.ChangeProcessCaption('Update Client Application.');
            slRestartBatch := TStringList.Create;
            Try
              slRestartBatch.Add('@echo off');
              slRestartBatch.Add('cd "' + sAppPath + '"');
              slRestartBatch.Add('taskkill /im NayagaClient.exe /f');
              slRestartBatch.Add('ren "' + Application.ExeName + '" "' + ExtractFileName(sBackUpFileName) + '"');
              slRestartBatch.Add('copy "' + sFileName + '" "' + Application.ExeName + '"');
              slRestartBatch.Add('Start "" /b NayagaClient.exe');
              slRestartBatch.Add('del "' + sFileName + '"');
              slRestartBatch.Add('del "' + sBackUpFileName + '"');
              slRestartBatch.Add('del "' + sBatFile + '"');
              slRestartBatch.Add('exit');

              slRestartBatch.SaveToFile(sBatFile);
            Finally
              FreeAndNil(slRestartBatch);
//              Result:= True;
            End;

          end;
        end;
      end;
    Finally
      FreeAndNil(oWaitForm);
    End;

    if FileExists(sBatFile) then
    begin
      cnnMain.Connected := False;
      openFile(sBatFile);
    end;
  Except

  End;
end;

procedure TdmGlobal.TimerGlobalTimer(Sender: TObject);
var
  sFileName: String;
begin
  if not Assigned(frmMain) then
    Exit;

  frmMain.StatusBar.Panels[3].Text := Format('System IDLE last %d seconds', [SecondsIdle]);

  //New Procedure Update By Rendi 20160824
  if SecondsIdle = SecondIdleSystem then
  begin
    Try
      TimerGlobal.Enabled := False;
      if cnnMain.Connected then
      begin
        MessageDlg('application idle more than '+ formatfloat('#,##0', SecondIdleSystem) +' seconds, application must terminate !', mtinformation, [mbOk], 0);

        frmMain.ClearAllForm;
        StopEngine;
        Application.Terminate;
      end;
    Except
      Application.Terminate;
    End;
  end;
end;

procedure TdmGlobal.tmrHeartbeatTimer(Sender: TObject);
var
  sServerResponse: string;
begin
  tmrHeartbeat.Enabled := False;
//  try
//    if fidTCPClient.Connected then
//    begin
//      fidTCPClient.IOHandler.WriteLn('ping');
//      sServerResponse := fidTCPClient.IOHandler.ReadLn;
//      tmrHeartbeat.Enabled := True;
//    end
//    else
//      raise Exception.Create('Server not response');
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Lost connection to server: ' + E.Message);
//
//      frmMain.ClearAllForm;
//      StopEngine;
//      Application.Terminate;
//    end;
//  end;
end;

procedure TdmGlobal.UpdateApplication;
var
  V1, V2, V3, V4: word;
  oUpdateFile: TJSONArray;
  oOutStream: TStream;
  sAppPath, sTempPath, sFileName, sBatFile, sBackUpFileName: String;
  oZipFile: TZIPFile;

  slRestartBatch: TStringList;
  oProgress: TfrmProgressBar;
begin

  oProgress := TfrmProgressBar.Create(Nil);
  Try
    oProgress.ChangeBar(1, 'Check client application version');

  Finally
    FreeAndNil(oProgress);
  End;
end;

procedure TdmGlobal.UpdateTradingDate;
begin
  frmMain.StatusBar.Panels.Items[2].Text := 'System Date: ' + FormatDateTime('dd-mmm-yyyy', + FRemoteServer.GetTransDate);
end;

function TdmGlobal.ViewEditorForm(AFormClassName: String; var AKey: String;
  AProcess: TProcessKind): TModalResult;
var
  AFormClass: TPersistentClass;
begin
  Result := mrNone;
  AFormClass := GetClass(AFormClassName);
  if Assigned(AFormClass) and (AFormClass.InheritsFrom(TfrmEditorData)) then
  begin
    Result := ShowEditorForm(TFormEditorClass(AFormClass), AKey, AProcess);
  end
  else if Assigned(AFormClass) and (AFormClass.InheritsFrom(TfrmEditorBasic)) then
  begin
    Result := ShowEditorBasicForm(TFormEditorBasicClass(AFormClass), AKey, AProcess);
  end
  else
  begin
    ShowMessage('Form Class ' + QuotedStr(AFormClassName) + ' not found.');
  end;
end;

procedure TdmGlobal.WarningMessage(AError: String);
begin
  MessageDlg(AError,mtwarning,[mbOk],0);
end;

procedure TdmGlobal.PrepareDataModule;
begin
//  FDataMaster := TdmMaster.Create(nil);
//  FDataAccounting := TdmAccounting.Create(nil);
//  FDataMiddleOffice := TdmMiddleOffice.Create(nil);
//  FDataClientManagement := TdmClientManagement.Create(nil);
  FDataLookup := TdmLookup.Create(nil);
  FDataReport := TdmReport.Create(nil);
//  FDataCashManagement := TdmCashManagement.Create(nil);
//  FDataStockManagement := TdmStockManagement.Create(nil);
//  FDataFinancialReport := TdmFinancialReport.Create(nil);
//  FDataOpeningAccount := TdmOpeningAccount.Create(nil);
//  FDataCorpAction := TdmCorpAction.Create(nil);
//  FDataBankPayment := TdmBankPayment.Create(nil);
//  FDataRepoManagement := TdmRepoManagement.Create(nil);
//  FDataOmgeo := TdmOmgeo.Create(nil);
//  FDataConnector := TdmOMGEOClient.Create(nil);
  FDataCBest := TdmCBest.Create(nil);
  FDataSInvest := TdmSInvest.Create(nil);
end;

procedure TdmGlobal.PrepareGlobalParameter;
begin
  SecondIdleSystem := RemoteServer.GetGlobalParamInteger('701');
  FDataLookup.PrepareGeneralLookupData;
  cdsModule.Close;
  cdsModule.Open;
end;

procedure TdmGlobal.PrepareSQLParameter;
begin
  try
    if cnnMain.Connected then
      cnnMain.Connected := False;

    cnnMain.Params.Clear;

    with cnnMain.Params do
    begin
      Add('DriverUnit=DBXDataSnap');
      Add('HostName=' + FDataSnapServerHost);
      Add('Port='+ FDataSnapServerPort);
      Add('CommunicationProtocol=' + FDataSnapCommunicationProtocol);
      Add('DatasnapContext=datasnap/');
      Add('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
      Add('Filters={}');
      Add('DSAuthenticationPassword=admin');
      Add('DSAuthenticationUser=admin');
    end;

    GlobalCallbackManager.DSHostname := FDataSnapServerHost;
    GlobalCallbackManager.DSPort := FDataSnapServerPort;
    GlobalCallbackManager.UserName := 'admin';
    GlobalCallbackManager.Password := 'admin';
  except
    on E: Exception do
      ShowMessage(E.ClassName + ': ' + E.Message);
  end;
end;

procedure TdmGlobal.ProcessCallbackMessage(ACat, ADesc, AUser: String; dtTrans,
  dtExec: TDateTime);
var
  oBackground: TNBackgroundProcess;
begin

  oBackground := TNBackgroundProcess.Create;
  oBackground.Category := ACat;
  oBackground.Description := ADesc;
  oBackground.User := AUser;
  oBackground.TransDate := dtTrans;
  oBackground.ExecuteDate := dtExec;

  FListBackgroundProcess.Push(oBackground);

end;

procedure TdmGlobal.ProcessCallbackMessage(s: String);
var
  iRes: Integer;
  oForm: TfrmBasic;
begin
  if s = '"UpdateTradingDate"' then
  begin
    TThread.Queue(nil,
      procedure
      begin
        UpdateTradingDate;
      end);
  end
  else if s = '"UpdateBatchProcessView"' then
  begin
    iRes := dmGlobal.FormList.IndexOf('TfrmEndOfDay');
    if iRes <> - 1 then
    begin
      oForm  := TfrmBasic(dmGlobal.FormList.Objects[iRes]);

      if (oForm is TfrmEndOfDay) then
      begin
        TfrmEndOfDay(oForm).ProcessCallbackMessage(s);
      end;
    end;
  end
  else if s = '"StartEndDayProcess"' then
  begin
    TThread.Queue(nil,
      procedure
      begin
        Log(ltInfo, 'Process End Day Started');
        if not EndDayProcess then
        begin
          Application.Terminate;
        end;
      end);
  end
  else if s = '"FinishEndDayProcess"' then
  begin
    //
  end;
end;

procedure TdmGlobal.ReplaceXMLstring(AFileName: string);
var
  oList, oListTmp, oFirstLine: TStringList;
begin
  oList      := TStringList.Create;
  oListTmp   := TStringList.Create;
  oFirstLine := TStringList.Create;

  oListTmp.LoadFromFile(AFileName);
  oList.Text := StringReplace(oListTmp.Text,'&lt;','<',[RfReplaceAll]);
  oList.SaveToFile(AFileName);

  oListTmp.LoadFromFile(AFileName);
  oList.Text := StringReplace(oListTmp.Text,'&gt;','>',[RfReplaceAll]);
  oList.SaveToFile(AFileName);

  oFirstLine.LoadFromFile(AFileName);
  oFirstLine.Delete(0);
  oFirstLine.SaveToFile(AFileName);

  FreeAndNil(oFirstLine);
end;

function TdmGlobal.RoundFloatNumber(AValue: Double;
  ADecimalPoint: Byte): Double;
var
  tempFloat: Double;
begin
  Result := AValue;
  if ADecimalPoint > 15 then Exit;

  tempFloat := Power(10, ADecimalPoint);
  Result := Int(AValue) + (Round(Frac(AValue) * tempFloat) / tempFloat);
end;

//function TdmGlobal.DecimalRound(AValue: Double; ADecimal: Integer): Double;
//var
//  iDecimal: Double;
//begin
//  iDecimal := Power10(1, ADecimal);
//  Result   := Round(AValue * iDecimal) / iDecimal;
//end;

function TdmGlobal.DecToRoman(Decimal: Integer): string;
const
  Numbers :  array[1..5] of Integer =(1, 4, 5, 9, 10);
  Romans: array [1..5] of string = ('I', 'IV', 'V', 'IX', 'X');
var
  i : Integer;
begin
  Result := '';
  for i := 5 downto 1 do
  begin
    while (Decimal >= Numbers[i]) do
    begin
    Decimal := Decimal - Numbers[i];
    Result := Result + Romans[i];
    end;
  end;
end;

procedure TdmGlobal.DeinitializeEngine;
begin
  FDataConnector.StopClient;
  FDataConnector.EngineDeinitialize;
end;

procedure TdmGlobal.DeinitializeThreads;
begin
  FThreadBackgroundProcess.Terminate;
  FThreadBackgroundProcess.Free;
  FListBackgroundProcess.Free;
end;

function TdmGlobal.DeleteRecord(ADataSet: TDataSet): Boolean;
var
  i: Integer;
  oDataSet: TDataSet;
begin
  Result := False;
  if not ADataSet.IsEmpty then
  begin
    ADataSet.DisableControls;
    Try
      for i := 0 to ADataSet.FieldCount - 1 do
      begin
        if ADataSet.Fields[i].DataType = ftDataSet then
        begin
          oDataSet := TDataSetField(ADataSet.Fields[i]).NestedDataSet;
          while not oDataSet.IsEmpty do
          begin
            DeleteRecord(oDataSet);
          end;
        end;
      end;

      ADataSet.Delete;
      Result := True;
    Finally
      ADataSet.EnableControls;
    End;
  end;
end;

procedure TdmGlobal.DestroyDataModule;
begin
//  FDataMaster.Free;
//  FDataAccounting.Free;
//  FDataMiddleOffice.Free;
//  FDataClientManagement.Free;
  FDataLookup.Free;
  FDataReport.Free;
//  FDataCashManagement.Free;
//  FDataStockManagement.Free;
//  FDataFinancialReport.Free;
//  FDataOpeningAccount.Free;
//  FDataCorpAction.Free;
//  FDataBankPayment.Free;
//  FDataRepoManagement.Free;
//  FDataOmgeo.Free;
  FDataConnector.Free;
  FDataCBest.Free;
end;

function TdmGlobal.DuplicateDataset(ASource, ATarget: TDataSet): Boolean;
var
  i: Integer;
  oField, oSourceField, oTargetField: TField;
  oCdsSource, oCdsTarget: TDataSet;
  oTarget, oTargetMaster: TNClientDataSet;
  oListDataSetFieldName: TStringList;
  sPrimaryKey: String;
begin
  Result := False;
  if not ASource.IsEmpty then
  begin
    ASource.DisableControls;
    ATarget.DisableControls;
    oListDataSetFieldName := TStringList.Create;
    Try
      sPrimaryKey := '';

      if ATarget is TNClientDataSet then
      begin
        oTarget := TNClientDataSet(ATarget);

        oTargetMaster := oTarget;
        while (oTargetMaster.DataSetField <> Nil) do
        begin
          oTargetMaster := TNClientDataset(oTargetMaster.DataSetField.DataSet);
        end;

        sPrimaryKey := oTargetMaster.PrimaryKeyFields;
      end
      else
        oTarget := nil;

      for i := 0 to ASource.FieldCount - 1 do
      begin
        oField := ATarget.FindField(ASource.Fields[i].FieldName);
        if (oField <> nil) and (oField.DataType = ftDataSet)
          and (oField.FieldKind = fkData) then
        begin
          oListDataSetFieldName.Add(oField.FieldName);
        end;
      end;

      ASource.First;
      while not ASource.Eof do
      begin
        ATarget.Append;
        for i := 0 to ASource.FieldCount - 1 do
        begin
          oField := ATarget.FindField(ASource.Fields[i].FieldName);

          if (oField <> nil) and (oField.FieldKind = fkData)
            and (oField.DataType <> ftDataSet) and (not oField.ReadOnly) then
          begin
            if oField.Tag >= 0 then
            begin
              if (oTarget <> nil) and (oField.FieldName = sPrimaryKey) then
              begin
                if oField.IsNull then
                begin
                  oTarget.Tag := oTarget.Tag - 1;
                  oField.Value := oTarget.Tag;
                end;
              end
              else
              begin
                oField.Value := ASource.Fields[i].Value;
              end;
            end;
          end;
        end;

        for i := 0 to oListDataSetFieldName.Count - 1 do
        begin
          oSourceField := ASource.FindField(oListDataSetFieldName.Strings[i]);
          oTargetField := ATarget.FindField(oListDataSetFieldName.Strings[i]);

          if (oSourceField <> nil) and (oTargetField <> nil)
            and (oSourceField.DataType = oTargetField.DataType) then
          begin
            oCdsSource := TDataSetField(oSourceField).NestedDataSet;
            oCdsTarget := TDataSetField(oTargetField).NestedDataSet;

            if oCdsTarget.Tag >= 0 then
            begin
              DuplicateDataset(oCdsSource, oCdsTarget);
            end;
          end;
        end;

        if ATarget.State in dsEditModes then
          ATarget.Post;

        ASource.Next;
      end;

      Result := True;
    Finally
      FreeAndNil(oListDataSetFieldName);
      ATarget.EnableControls;
      ASource.EnableControls;
    End;
  end;

end;

function TdmGlobal.DuplicateRecord(ASource, ATarget: TDataSet): Boolean;
var
  i: Integer;
  oField, oSourceField, oTargetField: TField;
  oCdsSource, oCdsTarget: TDataSet;
  oTarget, oTargetMaster: TNClientDataSet;
  oListDataSetFieldName: TStringList;
  sPrimaryKey: String;
begin
  Result := False;
  if not ASource.IsEmpty then
  begin
    ASource.DisableControls;
    ATarget.DisableControls;
    oListDataSetFieldName := TStringList.Create;
    Try
      sPrimaryKey := '';

      if ATarget is TNClientDataSet then
      begin
        oTarget := TNClientDataSet(ATarget);

        oTargetMaster := oTarget;
        while (oTargetMaster.DataSetField <> Nil) do
        begin
          oTargetMaster := TNClientDataset(oTargetMaster.DataSetField.DataSet);
        end;

        sPrimaryKey := oTargetMaster.PrimaryKeyFields;
      end
      else
        oTarget := nil;

      for i := 0 to ASource.FieldCount - 1 do
      begin
        oField := ATarget.FindField(ASource.Fields[i].FieldName);
        if (oField <> nil) and (oField.DataType = ftDataSet)
          and (oField.FieldKind = fkData) then
        begin
          oListDataSetFieldName.Add(oField.FieldName);
        end;
      end;

      ATarget.Append;
      for i := 0 to ASource.FieldCount - 1 do
      begin
        oField := ATarget.FindField(ASource.Fields[i].FieldName);

        if (oField <> nil) and (oField.FieldKind = fkData)
          and (oField.DataType <> ftDataSet) and (not oField.ReadOnly) then
        begin
          if oField.Tag >= 0 then
          begin
            if (oTarget <> nil) and (oField.FieldName = sPrimaryKey) then
            begin
              if oField.IsNull then
              begin
                oTarget.Tag := oTarget.Tag - 1;
                oField.Value := oTarget.Tag;
              end;
            end
            else
            begin
              oField.Value := ASource.Fields[i].Value;
            end;
          end;
        end;
      end;

      for i := 0 to oListDataSetFieldName.Count - 1 do
      begin
        oSourceField := ASource.FindField(oListDataSetFieldName.Strings[i]);
        oTargetField := ATarget.FindField(oListDataSetFieldName.Strings[i]);

        if (oSourceField <> nil) and (oTargetField <> nil)
          and (oSourceField.DataType = oTargetField.DataType) then
        begin
          oCdsSource := TDataSetField(oSourceField).NestedDataSet;
          oCdsTarget := TDataSetField(oTargetField).NestedDataSet;

          if oCdsTarget.Tag >= 0 then
          begin
            DuplicateDataset(oCdsSource, oCdsTarget);
          end;
        end;
      end;

      if ATarget.State in dsEditModes then
        ATarget.Post;

      Result := True;
    Finally
      FreeAndNil(oListDataSetFieldName);
      ATarget.EnableControls;
      ASource.EnableControls;
    End;
  end;

end;

{ TMyCallBack }

function TMyCallBack.Execute(const Arg: TJSONValue): TJSONValue;
var
  jObj: TJSONObject;
  sCat, sDesc, sUser: String;
  iTrans: Integer;
  fExec: Extended;
  dtTrans, dtExec: TDateTime;
begin
  Result := TJSONFalse.Create;
  if Arg is TJSONString then
  begin
    dmGlobal.ProcessCallbackMessage(Arg.ToString);
  end
  else if Arg is TJSONObject then
  begin
    jObj := TJSONObject(Arg);

    sCat := jObj.Get('Category').JsonValue.Value;
    sDesc := jObj.Get('Description').JsonValue.Value;
    sUser := jObj.Get('User').JsonValue.Value;
    iTrans := StrToIntDef(jObj.Get('TransDate').JsonValue.Value, 0);
    fExec := StrToFloatDef(jObj.Get('ExecuteDate').JsonValue.Value, 0);
    dtTrans := FileDateToDateTime(iTrans);
    dtExec := FloatToDateTime(fExec);

    dmGlobal.ProcessCallbackMessage(sCat, sDesc, sUser, dtTrans, dtExec);

  end;

  Result := TJSONTrue.Create;
end;

end.


