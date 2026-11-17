unit FormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  StdCtrls, ComCtrls, dxNavBarGroupItems, ExtCtrls, FormBasic, dxNavBarCollns,
  dxNavBarBase, dxNavBar, ActnList, cxClasses, dxBar, ImgList, dxStatusBar,
  LMDDckSite, LMDTypes, StrUtils, Menus, DB, NDatasetActionLog, NDatasetAction,
  NLibraries, dxAlertWindow, ShellAPI, System.Actions, System.ImageList,
  Vcl.OleCtrls, SHDocVw, cxPC, dxDockControl, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinsdxStatusBarPainter, dxSkinsdxNavBarPainter,
  dxSkinsdxNavBarAccordionViewPainter, dxSkinsdxBarPainter, cxImageList;

type
  TFormBasicClass = class of TfrmBasic;

  TfrmMain = class(TForm)
    StatusBar: TdxStatusBar;
    BarMain: TdxBarManager;
    ilSmall: TcxImageList;
    ilLarge: TcxImageList;
    dxBarManager1Bar1: TdxBar;
    LookFell: TcxLookAndFeelController;
    ilMainSmall: TImageList;
    ilMainLarge: TImageList;
    ActionList1: TActionList;
    actUp: TAction;
    actLargeIcons: TAction;
    actSmallIcons: TAction;
    actList: TAction;
    actReport: TAction;
    actDesktop: TAction;
    actMyDocuments: TAction;
    actMyNetworkPlaces: TAction;
    nbMain: TdxNavBar;
    bgMainMenu: TdxNavBarGroup;
    bgFavorites: TdxNavBarGroup;
    bgSearch: TdxNavBarGroup;
    bgOptions: TdxNavBarGroup;
    nbMainUp: TdxNavBarItem;
    nbMainDesktop: TdxNavBarItem;
    nbMainMyDocuments: TdxNavBarItem;
    nbMainNetwork: TdxNavBarItem;
    nbMainBlue: TdxNavBarItem;
    nbMainBlack: TdxNavBarItem;
    nbMainSilver: TdxNavBarItem;
    nbMainLargeIcons: TdxNavBarItem;
    nbMainSmallIcons: TdxNavBarItem;
    nbMainList: TdxNavBarItem;
    nbMainReport: TdxNavBarItem;
    bgMainMenuControl: TdxNavBarGroupControl;
    nbMainMenu: TdxNavBar;
    bgFavoritesControl: TdxNavBarGroupControl;
    bgSearchControl: TdxNavBarGroupControl;
    btnSearch: TButton;
    edSearch: TEdit;
    bgOptionsControl: TdxNavBarGroupControl;
    nbOptions: TdxNavBar;
    nbOptionsListOptions: TdxNavBarGroup;
    nbOptionsNavBarOptions: TdxNavBarGroup;
    nbOptionsLargeIcons: TdxNavBarItem;
    nbOptionsSmallIcons: TdxNavBarItem;
    nbOptionsList: TdxNavBarItem;
    nbOptionsReport: TdxNavBarItem;
    nbOptionsAdjustWidthByPopup: TdxNavBarItem;
    nbOptionsAllowCustomize: TdxNavBarItem;
    nbOptionsCollapsible: TdxNavBarItem;
    nbOptionsTabStop: TdxNavBarItem;
    nbGroupMiddleOffice: TdxNavBarGroup;
    nbGroupStaticData: TdxNavBarGroup;
    Site: TLMDDockSite;
    DockManager: TLMDDockManager;
    pmHeader: TPopupMenu;
    SetAsParentPanel1: TMenuItem;
    actSetParentForm: TAction;
    nbGroupAccounting: TdxNavBarGroup;
    nbGroupClientManagement: TdxNavBarGroup;
    nbSearch: TdxNavBar;
    nbGroupBankPayment: TdxNavBarGroup;
    nbGroupOmgeo: TdxNavBarGroup;
    nbBroker: TdxNavBarItem;
    nbDealTicket: TdxNavBarItem;
    nbDealer: TdxNavBarItem;
    nbImportDTE: TdxNavBarItem;
    nbContracts: TdxNavBarItem;
    nbClientOnBoarding: TdxNavBarItem;
    nbAccountLedgerType: TdxNavBarItem;
    nbAccountLedgerClass: TdxNavBarItem;
    nbTradingLimitClass: TdxNavBarItem;
    nbClosingPrice: TdxNavBarItem;
    nbDailyExchangeRate: TdxNavBarItem;
    nbEntityInformation: TdxNavBarItem;
    nbAccountManagement: TdxNavBarItem;
    nbProcessMonthlyStatement: TdxNavBarItem;
    nbOmgeoMonitor: TdxNavBarItem;
    nbJournalType: TdxNavBarItem;
    nbCPCenter: TdxNavBarItem;
    nbKSEIRequest: TdxNavBarItem;
    nbJournalInput: TdxNavBarItem;
    nbContactUsage: TdxNavBarItem;
    nbCashSettlement: TdxNavBarItem;
    nbBankRecon: TdxNavBarItem;
    nbStockSettleInstruction: TdxNavBarItem;
    nbClientInquiry: TdxNavBarItem;
    nbCashDeposit: TdxNavBarItem;
    nbCashWithdraw: TdxNavBarItem;
    nbFacilitationTrade: TdxNavBarItem;
    nbWarehouseTrade: TdxNavBarItem;
    nbCrossTomTrade: TdxNavBarItem;
    nbAccLedgerTemplate: TdxNavBarItem;
    nbCBESTInstruction: TdxNavBarItem;
    nbFixedAssetGroup: TdxNavBarItem;
    nbFixedAsset: TdxNavBarItem;
    nbDepreciationTable: TdxNavBarItem;
    nbAccLedgerBalPosition: TdxNavBarItem;
    nbStockDeposit: TdxNavBarItem;
    nbStockWithdraw: TdxNavBarItem;
    barOpenedForm: TdxBarSubItem;
    nbReconcileDTE: TdxNavBarItem;
    barWindows: TdxBarSubItem;
    btnCloseAllOpenedForm: TdxBarButton;
    nbSettlementInstruction: TdxNavBarItem;
    actAddToFavorite: TNAction;
    pmMainMenu: TPopupMenu;
    AddToFavorite1: TMenuItem;
    nbFavorites: TdxNavBar;
    nbFavoritesGroup: TdxNavBarGroup;
    actRemoveFromFavorite: TNAction;
    pmFavoriteMenu: TPopupMenu;
    RemoveFromFavorite1: TMenuItem;
    nbStockSettlement: TdxNavBarItem;
    nbCashVoucher: TdxNavBarItem;
    nbStockVoucher: TdxNavBarItem;
    nbJournalList: TdxNavBarItem;
    nbReceiptList: TdxNavBarItem;
    nbLendBorrow: TdxNavBarItem;
    nbGroupCoporateAction: TdxNavBarGroup;
    nbCorpAct: TdxNavBarItem;
    nbCorpActEnt: TdxNavBarItem;
    nbAccSuspend: TdxNavBarItem;
    nbClosingProcess: TdxNavBarItem;
    nbRDNRequest: TdxNavBarItem;
    nbAccUnSuspend: TdxNavBarItem;
    nbAccDorman: TdxNavBarItem;
    nbCashMutation: TdxNavBarItem;
    nbGLJournal: TdxNavBarItem;
    nbStockRec: TdxNavBarItem;
    nbAssignGroupToCOB: TdxNavBarItem;
    nbContractBonds: TdxNavBarItem;
    nbKSEIRDNUpload: TdxNavBarItem;
    nbMonthlyStatement: TdxNavBarItem;
    nbExpiredDocList: TdxNavBarItem;
    nbGenerateContractBonds: TdxNavBarItem;
    nbStockDelRev: TdxNavBarItem;
    nbAuthPerson: TdxNavBarItem;
    nbJournalMap: TdxNavBarItem;
    nbGLJournalMap: TdxNavBarItem;
    nbIDXTrade: TdxNavBarItem;
    nbSOP: TdxNavBarItem;
    nbDHK: TdxNavBarItem;
    nbGroupFinance: TdxNavBarGroup;
    nbOpenDorman: TdxNavBarItem;
    nbReverseRepo: TdxNavBarItem;
    nbBankMutation: TdxNavBarItem;
    nbOTCInstruction: TdxNavBarItem;
    nbKSEIAccRecon: TdxNavBarItem;
    nbWHT: TdxNavBarItem;
    nbBankPaymentList: TdxNavBarItem;
    nbBankReceiveList: TdxNavBarItem;
    nbDHKCash: TdxNavBarItem;
    ilMessages: TcxImageList;
    AlertManager: TdxAlertWindowManager;
    pmAlertWindow: TPopupMenu;
    pmUnqueueMessage: TMenuItem;
    pmDeleteMessage: TMenuItem;
    pmCopyMessage: TMenuItem;
    ilToolBar: TcxImageList;
    nbCashDCNote: TdxNavBarItem;
    nbCashLoanApproval: TdxNavBarItem;
    nbExerciseMonitoring: TdxNavBarItem;
    nbProvisionPortFolioM2M: TdxNavBarItem;
    nbAccountInterest: TdxNavBarItem;
    nbInterestTrack: TdxNavBarItem;
    nbUploadDataFeedback: TdxNavBarItem;
    nbStockMovement: TdxNavBarItem;
    nbCashMovement: TdxNavBarItem;
    nbStockHaircut: TdxNavBarItem;
    nbACS: TdxNavBarItem;
    nbTenderOfferList: TdxNavBarItem;
    nbTaxOfficeNo: TdxNavBarItem;
    nbGLWithFL: TdxNavBarItem;
    nbCompanyBankRecon: TdxNavBarItem;
    nbGLWithBankRecon: TdxNavBarItem;
    nbGLWithSLRecon: TdxNavBarItem;
    nbCashPositionMovement: TdxNavBarItem;
    nbGLInterface: TdxNavBarItem;
    nbRegulatorReportProcess: TdxNavBarGroup;
    nbRptGrpType: TdxNavBarItem;
    nbReportType: TdxNavBarItem;
    nbGroupCreditControl: TdxNavBarGroup;
    nbCreateContractREPO: TdxNavBarItem;
    nbMarginMonitoring: TdxNavBarItem;
    nbReportDefinition: TdxNavBarItem;
    nbReportSource: TdxNavBarItem;
    nbReportNTransform: TdxNavBarItem;
    nbGenerateReport: TdxNavBarItem;
    nbCreateReport: TdxNavBarItem;
    nbCheckDifferent: TdxNavBarItem;
    nbSetOff: TdxNavBarItem;
    nbCashBalanceAccount: TdxNavBarItem;
    nbSupportingData: TdxNavBarItem;
    bgReportMenu: TdxNavBarGroup;
    bgReportMenuControl: TdxNavBarGroupControl;
    nbReportMenu: TdxNavBar;
    nbRptClientActivity: TdxNavBarItem;
    nbReportSupporting: TdxNavBarItem;
    nbAgingARAP: TdxNavBarItem;
    nbARAPReport: TdxNavBarItem;
    nbARAPSummary: TdxNavBarItem;
    nbBalanceSheetReport: TdxNavBarItem;
    nbCashFlow: TdxNavBarItem;
    nbCashProjection: TdxNavBarItem;
    nbConsolidatedTrialBalance: TdxNavBarItem;
    nbGLActivity: TdxNavBarItem;
    nbGridReportDesign: TdxNavBarItem;
    nbLetterOfConfirm: TdxNavBarItem;
    nbProfitLost: TdxNavBarItem;
    nbReportAccStatList: TdxNavBarItem;
    nbReportAgingMonitoring: TdxNavBarItem;
    nbReportCashDepositList: TdxNavBarItem;
    nbReportCashVoucher: TdxNavBarItem;
    nbReportCashWithdrawList: TdxNavBarItem;
    nbReportClientAccountBalanceSummary: TdxNavBarItem;
    nbReportClientActivity: TdxNavBarItem;
    nbReportClientCommission: TdxNavBarItem;
    nbReportClientCommissionByRange: TdxNavBarItem;
    nbReportClientPortofolio: TdxNavBarItem;
    nbReportContractBondTrade: TdxNavBarItem;
    nbReportDailyTradeByAgent: TdxNavBarItem;
    nbReportDailyTradeByClientOrClientType: TdxNavBarItem;
    nbReportDetailedPortofolioClient: TdxNavBarItem;
    nbReportDetailOutstandingCashClient: TdxNavBarItem;
    nbReportDetailOutstandingMarginClient: TdxNavBarItem;
    nbReportDormantClientList: TdxNavBarItem;
    nbReportExceptionalReport: TdxNavBarItem;
    nbReportForceSelling: TdxNavBarItem;
    nbReportFundLedgerBalance: TdxNavBarItem;
    nbReportFundLedgerJournal: TdxNavBarItem;
    nbReportList: TdxNavBarItem;
    nbReportListStockEfek: TdxNavBarItem;
    nbReportMarginAccountSummary: TdxNavBarItem;
    nbReportMarginCashAccountBalance: TdxNavBarItem;
    nbReportMarginYU: TdxNavBarItem;
    nbReportMarketCapitalization: TdxNavBarItem;
    nbReportProductList: TdxNavBarItem;
    nbReportSalesActivity: TdxNavBarItem;
    nbReportSalesCommission: TdxNavBarItem;
    nbReportSecuritiesLedgerBalance: TdxNavBarItem;
    nbReportSecuritiesLedgerJournal: TdxNavBarItem;
    nbReportStatementOfAccount: TdxNavBarItem;
    nbReportStockActProfitLoss: TdxNavBarItem;
    nbReportStockPortfolio: TdxNavBarItem;
    nbReportStockPosByClientAcc: TdxNavBarItem;
    nbReportStockPosBySalesAcc: TdxNavBarItem;
    nbReportStockPosBySalesStock: TdxNavBarItem;
    nbReportTop15SingleStockCashClient: TdxNavBarItem;
    nbReportTotalDetailCollateral: TdxNavBarItem;
    nbReportTotalDetailOutstandingContraClient: TdxNavBarItem;
    nbReportTotalDetailOutstandingShareValue: TdxNavBarItem;
    nbReportTotalLoanMarginClient: TdxNavBarItem;
    nbReportTotalOutstandingCashClient: TdxNavBarItem;
    nbReportTotalShareValue: TdxNavBarItem;
    nbReportTrialBalance: TdxNavBarItem;
    nbReportVoucherSummary: TdxNavBarItem;
    nbStockAging: TdxNavBarItem;
    nbReportSummaryActivityByAgentPerClient: TdxNavBarItem;
    nbTrialBalance: TdxNavBarItem;
    nbBalanceSheet: TdxNavBarItem;
    nbReportCashAccountStatement: TdxNavBarItem;
    nbReportStatementofAccountCSO: TdxNavBarItem;
    nbReportInvestorOpeningAccount: TdxNavBarItem;
    nbReportNotificaitonToClient: TdxNavBarItem;
    nbReportAuditLog: TdxNavBarItem;
    nbLTHReport: TdxNavBarItem;
    nbPortofolioDetailReport: TdxNavBarItem;
    nbREPOMonitor: TdxNavBarItem;
    nbChangeCollateral: TdxNavBarItem;
    nbReportCombinedAccountReceivablePayabl: TdxNavBarItem;
    nbReportMarginAccountSummaryByAgent: TdxNavBarItem;
    nbReportMarginAccountSummaryByClient: TdxNavBarItem;
    nbReportMarginAccountSummaryUSD: TdxNavBarItem;
    nbReportExposureReport: TdxNavBarItem;
    nbReportSingleCounterMargin: TdxNavBarItem;
    nbReportOutstandingRepoDueForSettlement: TdxNavBarItem;
    nbReportRegularAccountSummary: TdxNavBarItem;
    nbReportForecastCombinedACReceivablePayable: TdxNavBarItem;
    nbReportOutstandingTrxSettlementMovement: TdxNavBarItem;
    nbReportMarginTPlusFinancingCreditRiskReport: TdxNavBarItem;
    nbReportShareBalance: TdxNavBarItem;
    nbReportClientActivityAndSharesMovement: TdxNavBarItem;
    nbReportMarginProduct: TdxNavBarItem;
    nbReportListOfNewClient: TdxNavBarItem;
    nbReportRegularSummaryCrossBorderTrades: TdxNavBarItem;
    nbReportShareBalanceWithShareValue: TdxNavBarItem;
    nbReportReverseREPO: TdxNavBarItem;
    nbReportCashStatement: TdxNavBarItem;
    nbReportBukuPembantuEfekAMT: TdxNavBarItem;
    nbReportCBestAndClientCustodyReconciliation: TdxNavBarItem;
    nbReportCBestDailyTradeList: TdxNavBarItem;
    nbReportDailyCommision: TdxNavBarItem;
    nbReportDailyReportOddLotPosition: TdxNavBarItem;
    nbReportDailyTransactionReport: TdxNavBarItem;
    nbReportLaporanKegiatanPerantaraPedagangEfek: TdxNavBarItem;
    nbReportMonthlySafeCustodyStatementOfAccount: TdxNavBarItem;
    nbReportMovementSafeCustody: TdxNavBarItem;
    nbReportOutstandingTradesDueForDelivery: TdxNavBarItem;
    nbReportPendukungDailyTransaction: TdxNavBarItem;
    nbReportPortfolioAndCashAccountStatement: TdxNavBarItem;
    nbReportReconPortofolioReportUntukIDX: TdxNavBarItem;
    nbReportRekapitulasiTransaksiSaham: TdxNavBarItem;
    nbReportSafeKeepingFeeStatement: TdxNavBarItem;
    nbReportScheduleCorporateAction: TdxNavBarItem;
    nbReportSettlementInstructionForBondTransaction: TdxNavBarItem;
    nbReportShareBalancesByProduk: TdxNavBarItem;
    nbReportStockHoldingByClient: TdxNavBarItem;
    nbReportStockHoldingByAgent: TdxNavBarItem;
    nbReportStockHoldingByStock: TdxNavBarItem;
    nbReportTradeListWithCustodianBank: TdxNavBarItem;
    nbReportBOFISDHKMatch: TdxNavBarItem;
    nbReportCashDividendEntitlementListing: TdxNavBarItem;
    nbReportCashDividendPayment: TdxNavBarItem;
    nbReportCombinedAccountReceivablePayable: TdxNavBarItem;
    nbReportInterestPrincipalizedForCashAccount: TdxNavBarItem;
    nbReportMonthlyLTAB: TdxNavBarItem;
    nbReportOutstandingTransactionDueForSettlement: TdxNavBarItem;
    nbReportOutstandingTradesDueForSettlement: TdxNavBarItem;
    nbReportOutstandingTransactionWithSettlementMovement: TdxNavBarItem;
    nbReportRecommendedTransactionsForSetoffRollOver: TdxNavBarItem;
    nbReportRepoDailyTrade: TdxNavBarItem;
    nbReportShareBalanceByAgent: TdxNavBarItem;
    nbReportCorpactEntitlementListing: TdxNavBarItem;
    nbReportClientTradeActivitiesByPurchaseSales: TdxNavBarItem;
    nbReportAgentRanking: TdxNavBarItem;
    nbReportMarginMKBD: TdxNavBarItem;
    nbReportDailyTradeDetail: TdxNavBarItem;
    nbReportValueAddedTax: TdxNavBarItem;
    nbFidessaLimit: TdxNavBarItem;
    nbDailyMarketTransaction: TdxNavBarItem;
    nbReportDailyCommisionGrid: TdxNavBarItem;
    nbReportWashSale: TdxNavBarItem;
    nbReportCreditLimitViolation: TdxNavBarItem;
    nbReportValueAddedTaxGrid: TdxNavBarItem;
    nbReportClientCommisionList: TdxNavBarItem;
    nbReportTransactionRecapitulation: TdxNavBarItem;
    nbReportTradeAccountInterface: TdxNavBarItem;
    nbCashLedgerBalance: TdxNavBarItem;
    nbStockLedgerBalance: TdxNavBarItem;
    nbReportDailyPaymentReceive: TdxNavBarItem;
    nbCashTransaction: TdxNavBarItem;
    nbCashSettlementVoucher: TdxNavBarItem;
    nbREPOSettlement: TdxNavBarItem;
    nbRenewalRepoContract: TdxNavBarItem;
    nbMKBDSupportingReport: TdxNavBarItem;
    nbReportDailyBondTradeList: TdxNavBarItem;
    nbReportStockDepositList: TdxNavBarItem;
    nbReportStockWithdrawList: TdxNavBarItem;
    nbReportClientStockActivity: TdxNavBarItem;
    nbOpeningAccountHistory: TdxNavBarItem;
    nbStockSettlementVoucher: TdxNavBarItem;
    nbReportDailyCashOutstanding: TdxNavBarItem;
    nbDailyBankInstruction: TdxNavBarItem;
    nbCashDepositRDN: TdxNavBarItem;
    nbDHKReconcile: TdxNavBarItem;
    nbVD55MonthlySupport: TdxNavBarItem;
    nbVD55Monthly: TdxNavBarItem;
    nbDailyStockSettleVoucher: TdxNavBarItem;
    nbMarginAlert: TdxNavBarItem;
    nbVidesaCreditLimit: TdxNavBarItem;
    nbGroupOpeningAccount: TdxNavBarGroup;
    nbGroupAccountManagement: TdxNavBarGroup;
    nbGroupSettlementInterface: TdxNavBarGroup;
    nbGroupSettlementCustody: TdxNavBarGroup;
    sbSInvestMonitor: TdxNavBarItem;
    nbFundLedgerJournalEntry: TdxNavBarItem;
    nbSecuritiesJournalEntry: TdxNavBarItem;
    nbCouponPayment: TdxNavBarItem;
    nbReportGroupAccountInformation: TdxNavBarGroup;
    nbReportGroupMiddleOffice: TdxNavBarGroup;
    bnReportGroupFinance: TdxNavBarGroup;
    nbReportGroupSettlementCustody: TdxNavBarGroup;
    nbReportGroupFixedIncome: TdxNavBarGroup;
    nbReportGroupCorpact: TdxNavBarGroup;
    nbReportGroupCreditControl: TdxNavBarGroup;
    nbReportGroupAccounting: TdxNavBarGroup;
    nbReportRegulatorReport: TdxNavBarGroup;
    nbReportAdministrator: TdxNavBarGroup;
    nbReportApprovalHistory: TdxNavBarItem;
    nbreportDailyVD55Report: TdxNavBarItem;
    nbReportMonthlyVD55Report: TdxNavBarItem;
    nbReportDailyVD55Support: TdxNavBarItem;
    nbReportMonthlyVD55Support: TdxNavBarItem;
    nbReportCashFlowStatement: TdxNavBarItem;
    nbReportDailyCashProjection: TdxNavBarItem;
    nbReportMonthlyCommision: TdxNavBarItem;
    nbReportMonthlyWithholdingTax: TdxNavBarItem;
    nbReportEntityList: TdxNavBarItem;
    nbReportAccountActiveList: TdxNavBarItem;
    nbReportClientInquiry: TdxNavBarItem;
    nbReportProcessMonthlyStatement: TdxNavBarItem;
    nbReportOpeningAccountHistory: TdxNavBarItem;
    nbReportExpiredDocumentsList: TdxNavBarItem;
    nbReportAccountSuspendList: TdxNavBarItem;
    nbReportAccountDormanList: TdxNavBarItem;
    nbReportAccountClosedList: TdxNavBarItem;
    nbReportClientTradeSummary: TdxNavBarItem;
    nbReportARAPNeting: TdxNavBarItem;
    nbReportOutstandingTradeDueForCashSettlement: TdxNavBarItem;
    nbReportCashFlow: TdxNavBarItem;
    nbReportCashProjection: TdxNavBarItem;
    nbReportStockMovementList: TdxNavBarItem;
    nbReportStockOutstanding: TdxNavBarItem;
    nbReportCouponPaymentList: TdxNavBarItem;
    nbReportCorpactAnnouncementList: TdxNavBarItem;
    nbReportCorpactEntitlementList: TdxNavBarItem;
    nbReportCorpactClientConfirmation: TdxNavBarItem;
    nbReportIPOAllocationList: TdxNavBarItem;
    nbReportIPOClientConfirmation: TdxNavBarItem;
    nbReportTenderOfferOrderList: TdxNavBarItem;
    nbReportTenderOfferClientConfirmation: TdxNavBarItem;
    nbReportClientCashOutstanding: TdxNavBarItem;
    nbReportTradeDetailOutstanding: TdxNavBarItem;
    nbReportDetailShareCollateral: TdxNavBarItem;
    nbReportLoanMarginRankClient: TdxNavBarItem;
    nbReportOutstandingCashRankClient: TdxNavBarItem;
    nbReportBlacklistPeopleOrganization: TdxNavBarItem;
    bgAdministratorCompanySetup: TdxNavBarGroup;
    bgStatic: TdxNavBarGroup;
    bgAdministratorCompanySetupControl: TdxNavBarGroupControl;
    bgStaticControl: TdxNavBarGroupControl;
    nbReportTradeSummaryActivity: TdxNavBarItem;
    nbReportTop15SingleCounterExposure: TdxNavBarItem;
    nbAdmin: TdxNavBar;
    nbGroupAdministrator: TdxNavBarGroup;
    nbUserConfiguration: TdxNavBarItem;
    nbUserMonitoring: TdxNavBarItem;
    nbUserActivity: TdxNavBarItem;
    nbEmailConfig: TdxNavBarItem;
    nbEmailMonitoring: TdxNavBarItem;
    nbPermissionList: TdxNavBarItem;
    nbUserDataOwner: TdxNavBarItem;
    nbGroupEditor: TdxNavBarItem;
    nbProcessingEOD: TdxNavBarItem;
    nbBatchConfig: TdxNavBarItem;
    nbMyApprovalRequest: TdxNavBarItem;
    nbApprovalRequest: TdxNavBarItem;
    nbApprovalHistory: TdxNavBarItem;
    nbCompanyMaintenance: TdxNavBarItem;
    nbCompanyAccount: TdxNavBarItem;
    nbCompanyBank: TdxNavBarItem;
    nbCompanyCashBook: TdxNavBarItem;
    nbGroupCompany: TdxNavBarGroup;
    nbStatic: TdxNavBar;
    nbGroupGeneral: TdxNavBarGroup;
    nbGroupAccountInformation: TdxNavBarGroup;
    nbStaticMiddleOffice: TdxNavBarGroup;
    nbStaticSettlementInterface: TdxNavBarGroup;
    nbStaticFinance: TdxNavBarGroup;
    nbStaticSettlementCustody: TdxNavBarGroup;
    nbStaticFixedIncome: TdxNavBarGroup;
    nbStaticAccounting: TdxNavBarGroup;
    nbStaticCreditControl: TdxNavBarGroup;
    nbCity: TdxNavBarItem;
    nbCountry: TdxNavBarItem;
    nbProvince: TdxNavBarItem;
    nbProductType: TdxNavBarItem;
    nbProduct: TdxNavBarItem;
    nbHoliday: TdxNavBarItem;
    nbBranch: TdxNavBarItem;
    nbAccountParamClass: TdxNavBarItem;
    nbBusinessLine: TdxNavBarItem;
    nbBussType: TdxNavBarItem;
    nbCommShare: TdxNavBarItem;
    nbEvent: TdxNavBarItem;
    nbSales: TdxNavBarItem;
    nbSalesAgent: TdxNavBarItem;
    nbReferralType: TdxNavBarItem;
    nbReferral: TdxNavBarItem;
    nbMarket: TdxNavBarItem;
    nbBoard: TdxNavBarItem;
    nbChannel: TdxNavBarItem;
    nbCommission: TdxNavBarItem;
    nbCommTable: TdxNavBarItem;
    nbCharge: TdxNavBarItem;
    nbChargeTable: TdxNavBarItem;
    nbAccOmgeoConfig: TdxNavBarItem;
    nbMTITrans: TdxNavBarItem;
    nbMTIRecord: TdxNavBarItem;
    nbMTIConfig: TdxNavBarItem;
    nbBank: TdxNavBarItem;
    nbInterest: TdxNavBarItem;
    nbInterestTable: TdxNavBarItem;
    nbCustody: TdxNavBarItem;
    nbBAE: TdxNavBarItem;
    nbInstrumentType: TdxNavBarItem;
    nbInstrument: TdxNavBarItem;
    nbInstrumentBonds: TdxNavBarItem;
    nbCCClass: TdxNavBarItem;
    nbDOT: TdxNavBarItem;
    nbAccCreditLimit: TdxNavBarItem;
    nbGLFiscalYear: TdxNavBarItem;
    nbPeriod: TdxNavBarItem;
    nbCurrency: TdxNavBarItem;
    nbTaxInvoiceNo: TdxNavBarItem;
    nbGLType: TdxNavBarItem;
    nbCOA: TdxNavBarItem;
    nbTaxInvoice: TdxNavBarItem;
    nbReportMKBDCompare2Date: TdxNavBarItem;
    nbReportVD57Qty: TdxNavBarItem;
    nbOTCSettlementList: TdxNavBarItem;
    nbStaticDataLog: TdxNavBarItem;
    nbProject: TdxNavBarItem;
    nbEmployee: TdxNavBarItem;
    nbGlobalParameter: TdxNavBarItem;
    nbAccSInvestConf: TdxNavBarItem;
    nbSInvProcessConfig: TdxNavBarItem;
    nbSInvGenerateFile: TdxNavBarItem;
    nbSInvTradeAlloc: TdxNavBarItem;
    nbPortfolioRevaluation: TdxNavBarItem;
    nbGenerateDailyTransReport: TdxNavBarItem;
    nbNextOfYearProcess: TdxNavBarItem;
    dxMenuUser: TdxBarSubItem;
    actChangePassword: TNAction;
    dxBarButton1: TdxBarButton;
    actLogout: TNAction;
    dxBarButton2: TdxBarButton;
    nbFunSubLedger: TdxNavBarItem;
    nbMonthlyTransaction: TdxNavBarItem;
    nbReportInterestTrack: TdxNavBarItem;
    nbReportMonthlyTax: TdxNavBarItem;
    nbReportMonthlyTaxSummary: TdxNavBarItem;
    nbReportTotalMonthlyTransaction: TdxNavBarItem;
    nbReportOpeningAccountByDate: TdxNavBarItem;
    nbReportStockPosByAccount: TdxNavBarItem;
    nbReportAccountPosByStock: TdxNavBarItem;
    nbReportClientActivityOLNonOL: TdxNavBarItem;
    nbReportClientActivityInsReg: TdxNavBarItem;
    nbReportCustomerAging: TdxNavBarItem;
    nbReportTradeTransaction: TdxNavBarItem;
    nbVD510Config: TdxNavBarItem;
    nbReportCustomersData: TdxNavBarItem;
    nbReportAccountFundStatement: TdxNavBarItem;
    nbOccupation: TdxNavBarItem;
    nbEmailBlast: TdxNavBarItem;
    nbEmailBlastConfig: TdxNavBarItem;
    nbEBCustomers: TdxNavBarItem;
    nbStockPosition: TdxNavBarItem;
    nbCashPosition: TdxNavBarItem;
    nbCoporateActionList: TdxNavBarItem;
    nbCorporateActonEntitlementList: TdxNavBarItem;
    nbCOAConfig: TdxNavBarItem;
    nbStockMovProgram: TdxNavBarItem;
    nbCompareCashBalancePosition: TdxNavBarItem;
    nbReportTrialBalanceStock: TdxNavBarItem;
    nbGLClient: TdxNavBarItem;
    nbReportTrialBalanceClient: TdxNavBarItem;
    nbTrialBalanceStock: TdxNavBarItem;
    procedure Button1Click(Sender: TObject);
    procedure actReportExecute(Sender: TObject);
    procedure DockManagerGetComp(Sender: TObject; const AId: TLMDString; var
      AComponent: TComponent);
    procedure DockManagerGetCompId(Sender: TObject; AComponent: TComponent; var AId: TLMDString);
    procedure SaveLayout(Sender: TObject);
    procedure LoadLayout(Sender: TObject);
    procedure SiteGetSiteInfo(Sender: TObject; DockClient: TControl; var
      InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actSetParentFormExecute(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseAllOpenedFormClick(Sender: TObject);
    procedure actAddToFavoriteExecute(Sender: TObject);
    procedure nbMainMenuLinkHotTrack(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure actRemoveFromFavoriteExecute(Sender: TObject);
    procedure nbFavoritesLinkHotTrack(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure actRemoveFromFavoriteUpdate(Sender: TObject);
    procedure pmUnqueueMessageClick(Sender: TObject);
    procedure pmDeleteMessageClick(Sender: TObject);
    procedure pmCopyMessageClick(Sender: TObject);
    procedure AlertManagerButtonClick(Sender: TObject; AAlertWindow:
      TdxAlertWindow; AButtonIndex: Integer);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure nbMainActiveGroupChanged(Sender: TObject);
    procedure actChangePasswordExecute(Sender: TObject);
    procedure actLogoutExecute(Sender: TObject);
  private
    { Private declarations }
    FParentDockForm: TLMDDockPanel;
    FMainActiveLink: TdxNavBarItemLink;
    FFavoriteActiveLink: TdxNavBarItemLink;
    FiInformation: Integer;
    FiWarning: Integer;
    FiError: Integer;
    procedure AddGroup;
    procedure ClearSearchResult;
    procedure CreateOpenedFormButton(ACaption, ADescription: string);
    procedure DestroyOpenedFormButton(ACaption: string);
    procedure DestroyAllOpenedFormButton;
    procedure OpenedFormButton(Sender: TObject);
    function TrimTitle(ACaption: string): string;
    function Matchstrings(Source, pattern: string): Boolean;
  public
    { Public declarations }
    property ParentDockForm: TLMDDockPanel read FParentDockForm write FParentDockForm;

    //Additional Property To Make Alert Message Caption Always Different
    property iInformation: Integer read FiInformation write FiInformation;
    property iWarning: Integer read FiWarning write FiWarning;
    property iError: Integer read FiError write FiError;
    function ShowFormModal(AFormClass: TFormClass): TModalResult; overload;
    function ShowFormModal(AForm: TForm): TModalResult; overload;
    function CreatePluginPanel(AFormClass: TFormBasicClass; AForceShow: boolean): TLMDDockPanel;
    procedure ShowForm(AFormClass: TFormClass); overload;
    procedure ShowForm(AForm: TForm); overload;
    procedure ShowForm(AFormClass: TFormBasicClass); overload;
    procedure ClearAllForm;
    procedure OnDockPanelHidden(Sender: TObject);
    procedure DockPanelEndDock(Sender, Target: TObject; X, Y: Integer);
    procedure FloatingDockPanelGetSiteInfo(Sender: TObject; DockClient: TControl;
      var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
    procedure ClearAllHiddenPanel;
    procedure DisableOtherPanel(exPanel: TLMDDockPanel);
    procedure EnableOtherPanel(exPanel: TLMDDockPanel);
    procedure CollapseAllNavBar(ANavBar: TdxNavBar);
    procedure ExpandAllNavBar(ANavBar: TdxNavBar);
    procedure SortNavBarMenu(ANavBar: TdxNavBar);
    procedure NewAlertMessage(const Msg: string; DlgType: TMsgDlgType = mtInformation);
    procedure SetAlertWindowOptions(AManager: TdxAlertWindowManager);
    function FindWindowByCaption(const ACaption: string): TdxAlertWindow;
    function GetCurrentMessage(AAlertWindow: TdxAlertWindow): TdxAlertWindowMessage;
  end;

var
  frmMain: TfrmMain;

implementation

uses
  DataGlobal, Clipbrd, FormInterestTrackList, FormWorkflow, FormChangePassword;

{$R *.dfm}

{ TfrmMain }

procedure TfrmMain.actAddToFavoriteExecute(Sender: TObject);
var
  oItem: TdxNavBarItem;
begin

  if FMainActiveLink <> nil then
  begin
    if nbFavorites.Items.ItemByCaption(FMainActiveLink.Item.Caption) = nil then
    begin
      oItem := nbFavorites.Items.Add;
//      oItem.Caption := FMainActiveLink.Item.Caption;
      oItem.Action := FMainActiveLink.Item.Action;
      nbFavoritesGroup.CreateLink(oItem);

      with dmGlobal do
      begin
        try
          cdsUserFavorites.Append;
          cdsUserFavoritesUSERID.AsString := dmGlobal.UserID;
          cdsUserFavoritesAPPID.AsString := dmGlobal.menuBar.AppID;
          cdsUserFavoritesACTIONNAME.AsString := oItem.Action.Name;
          cdsUserFavorites.Post;
        except
          on E: Exception do
          begin
            Log(ltError, 'Write User Favorites Menu, ' + E.ClassName + ': ' + E.Message);
          end;
        end;
      end;

    end;
  end;

//  ShowMessage(FMainActiveLink.Item.Action.Name);
end;

procedure TfrmMain.actChangePasswordExecute(Sender: TObject);
var
  sMsg: string;
  sRes: Boolean;
  oForm: TfrmChangePassword;
begin
  oForm := TfrmChangePassword.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    sRes := dmGlobal.RemoteServer.ChangePassword(dmGlobal.UserID, TfrmChangePassword(oForm).edOldPwd.Text
            , TfrmChangePassword(oForm).edNewPwd.Text, sMsg);
    ShowMessage(sMsg);
  end;
end;

procedure TfrmMain.actLogoutExecute(Sender: TObject);
var
  sFileName: string;
begin
  if MessageDlg('Logout Application ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmGlobal.StopEngine;
    sFileName := ExtractFilePath(Application.ExeName) + 'NayagaLogin.exe';
    if FileExists(sFileName) then
    begin
      ShellExecute(Application.Handle, 'open', PChar(sFileName), '', '', SW_SHOWNORMAL);
    end;
    Application.Terminate;
  end;
end;

procedure TfrmMain.actRemoveFromFavoriteExecute(Sender: TObject);
begin
  if FFavoriteActiveLink <> nil then
  begin
    if Assigned(FFavoriteActiveLink.Item) then
    begin
      with dmGlobal do
      begin
        if cdsUserFavorites.Locate('ACTIONNAME', FFavoriteActiveLink.Item.Action.Name, []) then
        begin
          cdsUserFavorites.Delete;
        end;
      end;

      FFavoriteActiveLink.Item.Free;
    end;
  end;
end;

procedure TfrmMain.actRemoveFromFavoriteUpdate(Sender: TObject);
begin
  actRemoveFromFavorite.Enabled := nbFavorites.Items.Count > 0;
  actRemoveFromFavorite.Visible := actRemoveFromFavorite.Enabled;
end;

procedure TfrmMain.actReportExecute(Sender: TObject);
begin
//  CreatePluginPanel(TfrmReport)
end;

procedure TfrmMain.actSetParentFormExecute(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Site.PanelCount - 1 do
  begin
    if Assigned(FParentDockForm) then
      FParentDockForm.Caption := TrimTitle(FParentDockForm.Caption);

    if Site.Panels[i].Active then
    begin
      Site.Panels[i].Caption := Site.Panels[i].Caption + '[Parent Form]';
      FParentDockForm := Site.Panels[i];
      break;
    end;
  end;

end;

procedure TfrmMain.AddGroup;
var
  oBarGroup: TdxNavBarGroup;
  oBarItem: TdxNavBarItem;
  oBarItemLink: TdxBarItemLink;
begin
  oBarGroup := nbMainMenu.Groups.Add;
  oBarGroup.Caption := 'Administration';
//  oBarGroup.st

  oBarItem := nbMainMenu.Items.Add;
  oBarItem.Caption := 'Test';
  oBarItem.SmallImageIndex := 20;

  oBarGroup.CreateLink(oBarItem);
//  oBarItemLink.

//  nbMainMenu.Groups[0].

//  nbMainMenu.Items.Add.
end;

procedure TfrmMain.AlertManagerButtonClick(Sender: TObject; AAlertWindow:
  TdxAlertWindow; AButtonIndex: Integer);
var
  AAddressMessage: string;
  ACaption: string;
begin
  if AButtonIndex = 0 then
  begin
    AAddressMessage := AnsiReplaceStr(AAlertWindow.MessageList[AAlertWindow.CurrentMessageIndex].Caption,
      ' ', '%20');
    ShellExecute(Handle, 'Open', PChar('mailto:' + AAddressMessage + '?'), nil, nil, sw_restore)
  end
  else if AButtonIndex = 1 then
  begin
    ACaption := AAlertWindow.MessageList[AAlertWindow.CurrentMessageIndex].Caption;
    AAddressMessage := AAlertWindow.MessageList[AAlertWindow.CurrentMessageIndex].Text;

    if ACaption = 'Warning' then
      MessageDlg(AAddressMessage, mtWarning, [mbOK], 0)
    else if ACaption = 'Error' then
      MessageDlg(AAddressMessage, mtError, [mbOK], 0)
    else
      MessageDlg(AAddressMessage, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmMain.btnCloseAllOpenedFormClick(Sender: TObject);
begin
  ClearAllForm;
end;

procedure TfrmMain.btnSearchClick(Sender: TObject);
var
  i: Integer;
  oGroup: TdxNavBarGroup;
  oItems: TdxNavBarItem;
  sMenuCaption: string;
  bMatch: Boolean;
begin
  ClearSearchResult;

  //Searching Main Menu
  oGroup := nbSearch.Groups.Add;
  oGroup.Caption := 'Main Menu Search Result';
  dmGlobal.SearchGroupList.AddObject(oGroup.Caption, oGroup);

  for i := 0 to nbMainMenu.Items.Count - 1 do
  begin
    if nbMainMenu.Items.Items[i].Action = Nil then
      Continue;

    sMenuCaption := nbMainMenu.Items.Items[i].Caption;
    bMatch := Matchstrings(LowerCase(sMenuCaption), LowerCase('*' + edSearch.Text + '*'));

    if bMatch then
    begin
      if (nbMainMenu.Items.Items[i].Visible) and (nbMainMenu.Items.Items[i].Enabled) then
      begin
        oItems := nbSearch.Items.Add;
        oItems.Caption := nbMainMenu.Items.Items[i].Caption;
        oItems.Action := nbMainMenu.Items.Items[i].Action;

        dmGlobal.SearchItemsList.AddObject(oItems.Caption, oItems);
        oGroup.CreateLink(oItems);
      end;
    end;
  end;

  //Searching Report Menu
  oGroup := nbSearch.Groups.Add;
  oGroup.Caption := 'Report Menu Search Result';
  dmGlobal.SearchGroupList.AddObject(oGroup.Caption, oGroup);

  for i := 0 to nbReportMenu.Items.Count - 1 do
  begin
    if nbReportMenu.Items.Items[i].Action = Nil then
      Continue;

    sMenuCaption := nbReportMenu.Items.Items[i].Caption;
    bMatch := Matchstrings(LowerCase(sMenuCaption), LowerCase('*' + edSearch.Text + '*'));

    if bMatch then
    begin
      if (nbReportMenu.Items.Items[i].Visible) and (nbReportMenu.Items.Items[i].Enabled) then
      begin
        oItems := nbSearch.Items.Add;
        oItems.Caption := nbReportMenu.Items.Items[i].Caption;
        oItems.Action := nbReportMenu.Items.Items[i].Action;

        dmGlobal.SearchItemsList.AddObject(oItems.Caption, oItems);
        oGroup.CreateLink(oItems);
      end;
    end;
  end;

end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  AddGroup;
end;

procedure TfrmMain.ClearAllForm;
var
  i, j: Integer;
  oSite: TLMDDockSite;
begin
//  mainBrowser.Visible := True;

  for j := DockManager.SiteCount - 1 downto 0 do
  begin
    oSite := DockManager.Sites[j];
    for i := oSite.PanelCount - 1 downto 0 do
    begin
      oSite.Panels[i].Free;
    end;
  end;
  dmGlobal.FormList.Clear;
  DestroyAllOpenedFormButton;
end;

procedure TfrmMain.ClearAllHiddenPanel;
var
  i, j: Integer;
  oSite: TLMDDockSite;
begin
  for j := DockManager.SiteCount - 1 downto 0 do
  begin
    oSite := DockManager.Sites[j];
    for i := oSite.PanelCount - 1 downto 0 do
    begin
      if not oSite.Panels[i].PanelVisible then
      begin
        oSite.Panels[i].Free;
      end;
    end;
  end;
end;

procedure TfrmMain.ClearSearchResult;
var
  oGroup: TdxNavBarGroup;
  oItems: TdxNavBarItem;
begin
  while dmGlobal.SearchItemsList.Count > 0 do
  begin
    oItems := TdxNavBarItem(dmGlobal.SearchItemsList.Objects[0]);
    oItems.Free;
    dmGlobal.SearchItemsList.Delete(0);
  end;

  while dmGlobal.SearchGroupList.Count > 0 do
  begin
    oGroup := TdxNavBarGroup(dmGlobal.SearchGroupList.Objects[0]);
    oGroup.Free;
    dmGlobal.SearchGroupList.Delete(0);
  end;
end;

procedure TfrmMain.CollapseAllNavBar(ANavBar: TdxNavBar);
var
  i: Integer;
  oGroup: TdxNavBarGroup;
begin
  for i := 0 to ANavBar.Groups.Count - 1 do
  begin
    oGroup := ANavBar.Groups.Items[i];

    oGroup.OptionsExpansion.Expanded := False;
  end;
end;

procedure TfrmMain.CreateOpenedFormButton(ACaption, ADescription: string);
var
  oButtonLink: TdxBarItemLink;
  oButton: TdxBarButton;
begin
  oButtonLink := barOpenedForm.ItemLinks.AddButton;
  if oButtonLink.Item is TdxBarButton then
  begin
    oButton := TdxBarButton(oButtonLink.Item);
    oButton.Caption := ACaption;
    oButton.Description := ADescription;
    oButton.OnClick := OpenedFormButton;
  end;
end;

function TfrmMain.CreatePluginPanel(AFormClass: TFormBasicClass; AForceShow:
  boolean): TLMDDockPanel;
var
  oPanel: TLMDDockPanel;
  oForm: TfrmBasic;
  i, iRes: integer;
begin
  Result := nil;

  ClearAllHiddenPanel;

  iRes := dmGlobal.FormList.IndexOf(TrimTitle(AFormClass.ClassName));
  if iRes <> -1 then
  begin
    if Assigned(oForm) then
      FreeAndNil(oForm);

    oForm := TfrmBasic(dmGlobal.FormList.Objects[iRes]);

    if oForm.Parent is TLMDDockPanel then
    begin
      oPanel := TLMDDockPanel(oForm.Parent);
      oPanel.Show;

      //Additional By Rendi 20170130
      if Assigned(oForm.OnShow) then
      begin
        oForm.OnShow(oForm);
      end;
    end;

  end
  else
  begin
    oForm := AFormClass.Create(self);
    oPanel := TLMDDockPanel.Create(Self);
    oPanel.OnHide := OnDockPanelHidden;
    oPanel.OnEndDock := DockPanelEndDock;
    oPanel.HeaderMenu := oForm.popDocking;
    oPanel.Hint := AFormClass.ClassName;

    with oForm do
    begin
      Parent := oPanel;
      Align := alClient;
      oPanel.Caption := Caption;
      Show;
    end;

    CreateOpenedFormButton(oPanel.Caption, AFormClass.ClassName);

    dmGlobal.FormList.AddObject(AFormClass.ClassName, oForm);

    if AForceShow then
    begin
      if Assigned(FParentDockForm) then
        oPanel.ManualDock(Site, FParentDockForm, alClient)
      else
        oPanel.ManualDock(Site, Site, alClient);
    end;

    DockPanelEndDock(oPanel, nil, 0, 0);  // disable docking on floating panels

  end;

//  mainBrowser.Visible := False;
  Result := oPanel;
end;

procedure TfrmMain.DestroyAllOpenedFormButton;
var
  oButtonLink: TdxBarItemLink;
  i: Integer;
begin
  for i := barOpenedForm.ItemLinks.Count - 1 downto 0 do
  begin
    oButtonLink := barOpenedForm.ItemLinks.Items[i];
    oButtonLink.Free;
  end;
end;

procedure TfrmMain.DestroyOpenedFormButton(ACaption: string);
var
  oButtonLink: TdxBarItemLink;
  i: Integer;
begin
  for i := 0 to barOpenedForm.ItemLinks.Count - 1 do
  begin
    oButtonLink := barOpenedForm.ItemLinks.Items[i];

    if (oButtonLink.Caption = ACaption) then
    begin
      oButtonLink.Free;
      Exit;
    end;
  end;
end;

procedure TfrmMain.DisableOtherPanel(exPanel: TLMDDockPanel);
var
  i: Integer;
begin
  ClearAllHiddenPanel;

  for i := 0 to Site.PanelCount - 1 do
  begin
    if Site.Panels[i] = exPanel then
      Continue;

    Site.Panels[i].Enabled := False;
  end;

  frmMain.nbMain.Enabled := False;
end;

procedure TfrmMain.DockManagerGetComp(Sender: TObject; const AId: TLMDString;
  var AComponent: TComponent);
var
  s: string;
begin
  if copy(AId, 1, 4) = 'Form' then
  begin
    s := AId;
    delete(s, 1, 5);
    AComponent := CreatePluginPanel(TFormBasicClass(FindClass(s)), False);
  end;
end;

procedure TfrmMain.DockManagerGetCompId(Sender: TObject; AComponent: TComponent;
  var AId: TLMDString);
var
  AFormClass: TFormClass;
  iRes: integer;
  AForm: TForm;
begin
  if AComponent is TLMDDockPanel then
  begin
    iRes := dmGlobal.FormList.IndexOf(TrimTitle((AComponent as TLMDDockPanel).Hint));
    if iRes <> -1 then
    begin
      AForm := TForm(dmGlobal.FormList.Objects[iRes]);
      AId := 'Form:' + AForm.ClassName;
    end;
  end;

end;

procedure TfrmMain.DockPanelEndDock(Sender, Target: TObject; X, Y: Integer);
var
  oPanel: TLMDDockPanel;
begin
  oPanel := Sender as TLMDDockPanel;
  if oPanel.Floating then
     // TLMDDockPanel on TFloatingSite on TLMDFloatingForm
  begin
    (oPanel.Parent as TLMDDockSite).OnGetSiteInfo := FloatingDockPanelGetSiteInfo;
    oPanel.HeaderMenu := nil;

    if (Assigned(FParentDockForm) and (oPanel = FParentDockForm)) then
    begin
      FParentDockForm := nil;
      oPanel.Caption := TrimTitle(oPanel.Caption);
    end;
          // If in "Frozen" mode - hide window caption
          //   (actually a different, more stylish caption should be shown)
          // Doesn't work for forms that are created when a layout is loaded
//          (pnl.Parent.Parent as TCustomForm).BorderStyle:=bsNone;
  end
  else
    oPanel.HeaderMenu := pmHeader;

end;

procedure TfrmMain.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnSearch.Click;
  end;
end;

procedure TfrmMain.EnableOtherPanel(exPanel: TLMDDockPanel);
var
  i: Integer;
begin
  for i := 0 to Site.PanelCount - 1 do
  begin
    if Site.Panels[i] = exPanel then
      Continue;

    Site.Panels[i].Enabled := True;
  end;

  frmMain.nbMain.Enabled := True;
end;

procedure TfrmMain.ExpandAllNavBar(ANavBar: TdxNavBar);
var
  i: Integer;
  oGroup: TdxNavBarGroup;
begin
  for i := 0 to ANavBar.Groups.Count - 1 do
  begin
    oGroup := ANavBar.Groups.Items[i];

    oGroup.OptionsExpansion.Expanded := True;
  end;
end;

function TfrmMain.FindWindowByCaption(const ACaption: string): TdxAlertWindow;

  function IsWindowForMessagesGroup(AAlertWindow: TdxAlertWindow): Boolean;
  begin
    Result := (AAlertWindow <> nil) and (AAlertWindow.Tag = 1) and (AAlertWindow.VisibilityTransition <> awvtHiding);
  end;

var
  I: Integer;
begin
  Result := nil;
  for I := 0 to AlertManager.Count - 1 do
  begin
    Result := AlertManager.Items[I];
    if IsWindowForMessagesGroup(Result) and (Result.MessageList[0].Caption = ACaption) then
      Break
    else
      Result := nil;
  end;

end;

procedure TfrmMain.FloatingDockPanelGetSiteInfo(Sender: TObject; DockClient:
  TControl; var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
begin
  CanDock := False;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Are you sure to exit application ? ', mtConfirmation, [mbYes,
    mbNo], 0) = mrYes then
  begin
    if dmGlobal.cnnMain.Connected then
    begin
      try
        CanClose := True;
//        SaveLayout(Self);
        ClearAllForm;
        dmGlobal.StopEngine;
      except
        Application.Terminate;
      end;
    end
    else
      CanClose := True;

    dmGlobal.TimerGlobal.Enabled := False;
  end
  else
    CanClose := False;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  dmGlobal.SetUserInformation;
  dmGlobal.TimerGlobal.Enabled := True;
  SetAlertWindowOptions(AlertManager);
  nbMain.ActiveGroupIndex := 0;

  CollapseAllNavBar(nbMainMenu);
  CollapseAllNavBar(nbReportMenu);
  CollapseAllNavBar(nbStatic);
  CollapseAllNavBar(nbAdmin);
  SortNavBarMenu(nbMainMenu);
  SortNavBarMenu(nbReportMenu);
  SortNavBarMenu(nbStatic);
  SortNavBarMenu(nbAdmin);
end;

function TfrmMain.GetCurrentMessage(AAlertWindow: TdxAlertWindow): TdxAlertWindowMessage;
begin
  Result := AAlertWindow.MessageList[AAlertWindow.CurrentMessageIndex];
end;

procedure TfrmMain.LoadLayout(Sender: TObject);

  function GetCorpactByID(ACAType: Integer): string;
  begin
    case ACAType of
      1:
        Result := 'HMETD';
      2:
        Result := 'Cash Deviden';
      3:
        Result := 'Stock Deviden';
      4:
        Result := 'Stock Mix';
      5:
        Result := 'Stock Bonus';
      6:
        Result := 'Stock Split';
      7:
        Result := 'Stock Reverse';
      8:
        Result := 'Stock Merge';
      9:
        Result := 'Coupon Payment';
    end;
  end;

var
  i: integer;
  AForm: TForm;
  LayoutStream: TStream;
  dTradingDate: TDateTime;
  sMessage: string;
  sFileName: string;
begin
{  with dmGlobal do
  begin
    OpenUserLayout(Self.Name);

    if cdsUserLayout.IsEmpty then
      exit;

    LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmRead);
    try
      DockManager.LoadFromStream(LayoutStream);
    finally
      if Assigned(LayoutStream) then
        FreeAndNil(LayoutStream);
    end;
  end;

//  DockManager.Style.ZoneSplitterWidth:= 4;
  Site.UseSpace:=True;

  for i:= 0 to Site.PanelCount-1 do
     Site.Panels[i].ShowHeader:=True;

   for i:= 0 to dmGlobal.FormList.Count-1 do
   begin
      AForm := TForm(dmGlobal.FormList.Objects[i]);
      AForm.Show;
   end;
}
  NewAlertMessage(dmGlobal.UserID + ', Welcome to Nayaga iBanking System.', mtInformation);

  with dmGlobal do
  begin
    dTradingDate := RemoteServer.GetTransDate;

    cdsCorpactMessage.Close;
    cdsCorpactMessage.Params[0].AsDateTime :=  dTradingDate; //RemoteServer.GetNextTradingDate(dTradingDate, 3);
    cdsCorpactMessage.Open;

    if not cdsCorpactMessage.IsEmpty then
    begin
      sMessage := 'CORPORATE ACTION ALERT' + chr(13) + chr(13);
      while not cdsCorpactMessage.Eof do
      begin
        sMessage := sMessage + GetCorpactByID(cdsCorpactMessageCATYPE.AsInteger)
          + ' ' + cdsCorpactMessageSTOCKCODE.AsString + chr(13);
        case StrToInt(cdsCorpactMessageCATYPE.AsString) of
          1:
            sMessage := sMessage + 'Exercise Date : ' + FormatDateTime('dd mmm yyyy',
              cdsCorpactMessageRI_STR_EXERDATE.AsDateTime) +' and '+ FormatDateTime('dd mmm yyyy',
              cdsCorpactMessageRI_END_EXERDATE.AsDateTime) + chr(13) + chr(13);
          2:
            sMessage := sMessage + 'Payment Date : ' + FormatDateTime('dd mmm yyyy',
              cdsCorpactMessagePAYDATE.AsDateTime) + chr(13) + chr(13);
          3, 5, 6, 7, 8, 9:
            sMessage := sMessage + 'Distibution Day : ' + FormatDateTime('dd mmm yyyy',
              cdsCorpactMessageDISTDATE.AsDateTime) + chr(13) + chr(13);
          4:
            sMessage := sMessage + 'Payment Date : ' + FormatDateTime('dd mmm yyyy',
              cdsCorpactMessagePAYDATE.AsDateTime) + chr(13) +
              'Distibution Day : ' + FormatDateTime('dd mmm yyyy',
              cdsCorpactMessageDISTDATE.AsDateTime) + chr(13) + chr(13);
        end;
        cdsCorpactMessage.Next;
      end;
      NewAlertMessage(sMessage);
    end;

  end;

  sFileName := ExtractFilePath(Application.ExeName) + 'MainBackground.htm';
//  mainBrowser.Navigate(sFileName);
end;

function TfrmMain.Matchstrings(Source, pattern: string): Boolean;
var
  pSource: array[0..255] of Char;
  pPattern: array[0..255] of Char;

  function MatchPattern(element, pattern: PChar): Boolean;

    function IsPatternWild(pattern: PChar): Boolean;
    var
      t: Integer;
    begin
      Result := StrScan(pattern, '*') <> nil;
    end;

  begin
    if 0 = StrComp(pattern, '*') then
      Result := True
    else if (element^ = Chr(0)) and (pattern^ <> Chr(0)) then
      Result := False
    else if element^ = Chr(0) then
      Result := True
    else
    begin
      case pattern^ of
        '*':
          if MatchPattern(element, @pattern[1]) then
            Result := True
          else
            Result := MatchPattern(@element[1], pattern);
      else
        if element^ = pattern^ then
          Result := MatchPattern(@element[1], @pattern[1])
        else
          Result := False;
      end;
    end;
  end;

begin
  StrPCopy(pSource, Source);
  StrPCopy(pPattern, pattern);
  Result := MatchPattern(pSource, pPattern);
end;

procedure TfrmMain.nbFavoritesLinkHotTrack(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  FFavoriteActiveLink := ALink;
end;

procedure TfrmMain.nbMainActiveGroupChanged(Sender: TObject);
begin
  if nbMain.ActiveGroup = bgSearch then
  begin
    edSearch.SetFocus;
  end;
end;

procedure TfrmMain.nbMainMenuLinkHotTrack(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  FMainActiveLink := ALink;
end;

procedure TfrmMain.NewAlertMessage(const Msg: string; DlgType: TMsgDlgType);
var
  ACaption: string;
  AImageIndex: Integer;
  AAlertWindow: TdxAlertWindow;
begin
  if DlgType = mtWarning then
  begin
    ACaption := 'Warning #' + IntToStr(iWarning);
    AImageIndex := 1;
    iWarning := iWarning + 1;
  end
  else if DlgType = mtError then
  begin
    ACaption := 'Error #' + IntToStr(iError);
    AImageIndex := 2;
    iError := iError + 1;
  end
  else
  begin
    ACaption := 'Information #' + IntToStr(iInformation);
    AImageIndex := 0;
    iInformation := iInformation + 1;
  end;

  AAlertWindow := FindWindowByCaption(ACaption);
  if AAlertWindow = nil then
  begin
    AlertManager.Show(ACaption, Msg, AImageIndex).Tag := 1;
  end
  else
  begin
    AAlertWindow.MessageList.Add(ACaption, Msg, AImageIndex);
    AAlertWindow.RestartDisplayTimer;
  end;
end;

procedure TfrmMain.OnDockPanelHidden(Sender: TObject);
var
  iRes: integer;
  oForm: TfrmBasic;
  Log: TNActionLog;
begin
  iRes := dmGlobal.FormList.IndexOf(TrimTitle(TLMDDockPanel(Sender).Hint));
  if iRes <> -1 then
  begin
    if dmGlobal.FormList.Objects[iRes] is TfrmBasic then
    begin
      oForm := TfrmBasic(dmGlobal.FormList.Objects[iRes]);

      Log := TNActionLog.Create;
      try
        Log.FormName := oForm.Name;
        Log.ActionName := 'actCloseFormBasic';
        Log.ActionDesc := 'Close Form ' + oForm.Caption;
        Log.ActionType := 'Close Form';

        dmGlobal.ActionLog.WriteLog(Log);
      finally
        FreeAndNil(Log);
      end;

    end;

    dmGlobal.FormList.delete(iRes);
  end;

  DestroyOpenedFormButton(TLMDDockPanel(Sender).Caption);

  if (Assigned(FParentDockForm) and (TLMDDockPanel(Sender) = FParentDockForm)) then
    FParentDockForm := nil;

//  TLMDDockPanel(Sender).Free;
end;

procedure TfrmMain.OpenedFormButton(Sender: TObject);
var
  i, iRes: Integer;
  oPanel: TLMDDockPanel;
  sPanelCaption: string;
  oButton: TdxBarButton;
  oForm: TfrmBasic;
begin
  oButton := TdxBarButton(Sender);
  sPanelCaption := oButton.Description;

  iRes := dmGlobal.FormList.IndexOf(sPanelCaption);
  if iRes <> -1 then
  begin
    oForm := TfrmBasic(dmGlobal.FormList.Objects[iRes]);

    if oForm.Parent is TLMDDockPanel then
    begin
      oPanel := TLMDDockPanel(oForm.Parent);
      oPanel.Show;
      Exit;
    end;
  end;

end;

procedure TfrmMain.pmCopyMessageClick(Sender: TObject);
begin
  Clipboard.AsText := GetCurrentMessage(pmAlertWindow.PopupComponent as TdxAlertWindow).Text;
end;

procedure TfrmMain.pmDeleteMessageClick(Sender: TObject);
begin
  (pmAlertWindow.PopupComponent as TdxAlertWindow).DeleteCurrentMessage;
end;

procedure TfrmMain.pmUnqueueMessageClick(Sender: TObject);
var
  AAlertWindow: TdxAlertWindow;
  AMessage: TdxAlertWindowMessage;
begin
  AAlertWindow := (pmAlertWindow.PopupComponent as TdxAlertWindow);
  AMessage := GetCurrentMessage(AAlertWindow);

//  AlertManager.Show(AMessage.Caption,
//    Copy(AMessage.Text, 1, Pos(#13#10, AMessage.Text) - 1), AMessage.ImageIndex);
  AAlertWindow.DeleteCurrentMessage;
end;

procedure TfrmMain.SaveLayout(Sender: TObject);
var
  i: integer;
  LayoutStream: TStream;
begin
//  DockManager.Style.ZoneSplitterWidth:=0;
  Site.UseSpace := True;

  for i := 0 to Site.PanelCount - 1 do
    Site.Panels[i].ShowHeader := True;

  with dmGlobal do
  begin
    OpenUserLayout(Self.Name);

    if cdsUserLayout.IsEmpty then
      cdsUserLayout.Append
    else
      cdsUserLayout.Edit;

    LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmReadWrite);
    try
      DockManager.SaveToStream(LayoutStream);
      cdsUserLayoutFORMNAME.AsString := Self.Name;
      cdsUserLayoutLAYOUTSETTING.LoadFromStream(LayoutStream);
      cdsUserLayout.Post;
    finally
      if Assigned(LayoutStream) then
        FreeAndNil(LayoutStream);
    end;
  end;
end;

procedure TfrmMain.SetAlertWindowOptions(AManager: TdxAlertWindowManager);
begin
  AManager.WindowPosition := awpBottomRight;
  AManager.OptionsSize.Width := 500;
  AManager.OptionsSize.Height := 200;
  AManager.OptionsSize.AutoWidth := True;
  AManager.OptionsSize.AutoHeight := True;
  AManager.OptionsBehavior.DisplayTime := 15000;
  AManager.OptionsBehavior.CloseOnRightClick := False;
  AManager.OptionsAnimate.HotTrack := True;
  AManager.WindowMaxCount := 0;
  AManager.OptionsAnimate.ShowingAnimation := awaSlide;
  AManager.OptionsAnimate.HidingAnimation := awaFade;
  AManager.OptionsAnimate.ShowingAnimationDirection := awmdAuto;
  AManager.OptionsAnimate.HidingAnimationDirection := awmdAuto;

  iInformation := 1;
  iWarning := 1;
  iError := 1;
end;

procedure TfrmMain.ShowForm(AForm: TForm);
begin

end;

procedure TfrmMain.ShowForm(AFormClass: TFormBasicClass);
begin
  CreatePluginPanel(AFormClass, True)
end;

function TfrmMain.ShowFormModal(AFormClass: TFormClass): TModalResult;
var
  oForm: TForm;
begin
  oForm := dmGlobal.CreateForm(AFormClass);
  Result := oForm.ShowModal;
end;

function TfrmMain.ShowFormModal(AForm: TForm): TModalResult;
begin
  Result := AForm.ShowModal;
end;

procedure TfrmMain.SiteGetSiteInfo(Sender: TObject; DockClient: TControl; var
  InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
begin
  CanDock := True;
end;

procedure TfrmMain.SortNavBarMenu(ANavBar: TdxNavBar);
var
  i, j: Integer;
  oGroup: TdxNavBarGroup;
  oItem: TdxNavBarItem;
  slItem: TStringList;
begin
  slItem := TStringList.Create;

  try
    slItem.Sorted := True;

    for i := 0 to ANavBar.Groups.Count - 1 do
    begin
      oGroup := ANavBar.Groups.Items[i];

      slItem.Clear;
      for j := 0 to oGroup.LinkCount - 1 do
      begin
        oItem := oGroup.Links[j].Item;
        slItem.AddObject(oItem.Caption, oItem);
      end;

      oGroup.ClearLinks;
      for j := 0 to slItem.Count - 1 do
      begin
        oItem := TdxNavBarItem(slItem.Objects[j]);

        if oItem.Action <> Nil then
          oGroup.CreateLink(oItem);
      end;
    end;

  finally
    FreeAndNil(slItem);
  end;
end;

function TfrmMain.TrimTitle(ACaption: string): string;
const
  AddTitle = '[Parent Form]';
begin
  Result := ReplaceStr(ACaption, AddTitle, '');
end;

procedure TfrmMain.ShowForm(AFormClass: TFormClass);
begin

end;

end.

