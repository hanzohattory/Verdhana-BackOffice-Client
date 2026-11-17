unit FormBondsDealTicketList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCalendar, cxCurrencyEdit, cxImageComboBox, NReportRPC,
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
  dxSkinsdxRibbonPainter, NReportClient, frxClass, frxDBSet, cxBarEditItem,
  cxCheckBox, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxLayoutControl, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.Actions, System.ImageList, dxDateRanges,
  dxScrollbarAnnotations;

const
  CCTYPE_CASH = 'CS';
  CCTYPE_REG = 'RV';
  CCTYPE_RATIO = 'TV';
  CCTYPE_APPRLIMIT = 'AL';

type
  TfrmBondsDealTicketList = class(TfrmBrowseData)
    cdsBondsDealTicketList: TNClientDataset;
    cdsBondsDealTicket: TNClientDataset;
    cdsBondsDealTicketTRADEBOND_ID: TLargeintField;
    cdsBondsDealTicketTRADEDATE: TDateTimeField;
    cdsBondsDealTicketINSTRUMENT_ID: TLargeintField;
    cdsBondsDealTicketINSTRUMENT_CODE: TStringField;
    cdsBondsDealTicketTRADETYPE: TStringField;
    cdsBondsDealTicketCCY: TStringField;
    cdsBondsDealTicketFACEVALUE: TFloatField;
    cdsBondsDealTicketINTERESTRATE: TFloatField;
    cdsBondsDealTicketBACCID: TLargeintField;
    cdsBondsDealTicketBPRICE: TFloatField;
    cdsBondsDealTicketSACCID: TLargeintField;
    cdsBondsDealTicketSPRICE: TFloatField;
    cdsBondsDealTicketSTAT: TStringField;
    cdsBondsDealTicketBACCNAME: TStringField;
    cdsBondsDealTicketSACCNAME: TStringField;
    cdsBondsDealTicketLASTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketNEXTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketPERIODECOUPON: TIntegerField;
    cdsBondsDealTicketSACCCODETMP: TStringField;
    cdsBondsDealTicketBACCCODETMP: TStringField;
    cdsQuotationDealTicket: TNClientDataset;
    cdsQuotationDealTicketTRADE_DATE: TDateTimeField;
    cdsQuotationDealTicketINSTRUMENT_ID: TLargeintField;
    cdsQuotationDealTicketBID_PRICE: TFloatField;
    cdsQuotationDealTicketBOTTOM_BID_PRICE: TFloatField;
    cdsQuotationDealTicketTOP_BID_PRICE: TFloatField;
    cdsQuotationDealTicketOFFER_PRICE: TFloatField;
    cdsQuotationDealTicketBOTTOM_OFFER_PRICE: TFloatField;
    cdsQuotationDealTicketTOP_OFFER_PRICE: TFloatField;
    cdsQuotationDealTicketHARDLIMIT: TFloatField;
    cdsUserLimit: TNClientDataset;
    cdsUserLimitUSERID: TStringField;
    cdsUserLimitHARDLIMIT: TFloatField;
    cdsUserLimitSOFTLIMIT: TFloatField;
    cdsUserLimitTEMPLIMIT: TFloatField;
    actCancelOrder: TNAction;
    dxBarButton2: TdxBarButton;
    actGenerateContract: TNAction;
    cdsBondsDealTicketDUEDAYS: TIntegerField;
    cdsBondsDealTicketSACCCODE: TStringField;
    cdsBondsDealTicketBACCCODE: TStringField;
    cdsBondsDealTicketSACCNAME2: TStringField;
    cdsBondsDealTicketBACCNAME2: TStringField;
    cdsBondsDealTicketACCRDAYS: TIntegerField;
    cdsBondsDealTicketCOUPONDAY: TIntegerField;
    cdsBondsDealTicketBONDCONID: TLargeintField;
    cdsAccount: TClientDataSet;
    cdsAccountACCID: TIntegerField;
    cdsAccountENTTID: TIntegerField;
    cdsAccountACCCODE: TStringField;
    cdsAccountACCNAME: TStringField;
    cdsAccountACCINIT: TStringField;
    cdsAccountACCTYPE: TStringField;
    cdsAccountACCSUBTYPE: TStringField;
    cdsAccountBRANCHID: TLargeintField;
    cdsAccountINVTYPE: TStringField;
    cdsAccountBUSSTYPE: TLargeintField;
    cdsAccountTC_MODEL: TStringField;
    cdsAccountPRDCODE: TStringField;
    cdsAccountA_CLS_ORDER: TStringField;
    cdsAccountAVGPRICEDEC: TSmallintField;
    cdsAccountOMNIBUSTRADE: TStringField;
    cdsAccountCASHKEEP: TStringField;
    cdsAccountSTOCKKEEP: TStringField;
    cdsAccountISWAPU: TStringField;
    cdsAccountWAPUVALUE: TFloatField;
    cdsAccountISAVGPRICE: TStringField;
    cdsAccountISDEBETINTEREST: TStringField;
    cdsAccountISCREDITINTEREST: TStringField;
    cdsAccountISPENALTY: TStringField;
    cdsAccountISUSEWHT: TStringField;
    cdsAccountISUSEOTC: TStringField;
    cdsAccountISOWNCONTACT: TStringField;
    cdsAccountISTRDACCOUNT: TStringField;
    cdsAccountSALESID: TLargeintField;
    cdsAccountACC_STS: TStringField;
    cdsAccountOMGUSE: TStringField;
    cdsAccountOMGEXREFFCODE: TStringField;
    cdsAccountOMGALERT: TStringField;
    cdsAccountOMGSENDSSI: TStringField;
    cdsAccountOMGSENDFEEINBLOCK: TStringField;
    cdsAccountSI_SPLIT: TStringField;
    cdsAccountALCID: TIntegerField;
    cdsAccountTALCID: TIntegerField;
    cdsAccountLASTTR_DATE: TDateTimeField;
    cdsAccountIDX_CASHPAY_SOURCE: TIntegerField;
    cdsAccountIDX_CASHPAY_TARGET: TIntegerField;
    cdsAccountIDX_CASHRCV_SOURCE: TIntegerField;
    cdsAccountIDX_CASHRCV_TARGET: TIntegerField;
    cdsAccountIDX_CASHPAY_INSTR: TStringField;
    cdsAccountIDX_CASHRCV_INSTR: TStringField;
    cdsAccountCASHRCV_SOURCE: TIntegerField;
    cdsAccountCASHRCV_TARGET: TIntegerField;
    cdsAccountCASHPAY_SOURCE: TIntegerField;
    cdsAccountCASHPAY_TARGET: TIntegerField;
    cdsAccountTRF_PRVT_BANK: TStringField;
    cdsAccountTRF_PRVT_BANK_SOURCE: TIntegerField;
    cdsAccountTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccountCASHRCV_INSTR: TStringField;
    cdsAccountCASHPAY_INSTR: TStringField;
    cdsAccountTRF_PRVT_BANK_INSTR: TStringField;
    cdsAccountIDX_STKDLV_SOURCE: TIntegerField;
    cdsAccountIDX_STKDLV_TARGET: TIntegerField;
    cdsAccountIDX_STKRCV_SOURCE: TIntegerField;
    cdsAccountIDX_STKRCV_TARGET: TIntegerField;
    cdsAccountCUST_STKDLV_SOURCE: TIntegerField;
    cdsAccountCUST_STKDLV_TARGET: TIntegerField;
    cdsAccountCUST_STKRCV_SOURCE: TIntegerField;
    cdsAccountCUST_STKRCV_TARGET: TIntegerField;
    cdsAccountIDX_STKDLV_INSTR: TStringField;
    cdsAccountIDX_STKRCV_INSTR: TStringField;
    cdsAccountCUST_STKDLV_INSTR: TStringField;
    cdsAccountCUST_STKRCV_INSTR: TStringField;
    cdsAccountCCCLS_ID: TLargeintField;
    cdsAccountCC_TYPE: TStringField;
    cdsAccountCR_VAL: TFloatField;
    cdsAccountBUY_LIMIT: TFloatField;
    cdsAccountSELL_LIMIT: TFloatField;
    cdsAccountIS_IDX_TRX: TStringField;
    cdsAccountMODDA: TDateTimeField;
    cdsAccountMODUI: TStringField;
    cdsAccountAPPDA: TDateTimeField;
    cdsAccountAPPUI: TStringField;
    cdsAccountUNDER4Y: TIntegerField;
    cdsAccountUNDER4YDA: TDateTimeField;
    cdsAccountNOTES4Y: TStringField;
    cdsAccountISDEL: TIntegerField;
    cdsAccountID: TLargeintField;
    cdsAccountqryAccountCustody: TDataSetField;
    cdsAccountqryAccountContact: TDataSetField;
    cdsAccountqryAccountExtRef: TDataSetField;
    cdsAccountqryAccountTransLedger: TDataSetField;
    cdsAccountqryAccountBank: TDataSetField;
    cdsAccountqryAccountLedger: TDataSetField;
    cdsAccountqryAccountCharge: TDataSetField;
    cdsAccountqryAccountComm: TDataSetField;
    cdsMarketByCurrency: TNClientDataset;
    cdsMarketByCurrencyMARKETCODE: TStringField;
    cdsMarketByCurrencyINITCODE: TStringField;
    cdsMarketByCurrencyMARKETDESC: TStringField;
    cdsMarketByCurrencyADDRESS1: TStringField;
    cdsMarketByCurrencyADDRESS2: TStringField;
    cdsMarketByCurrencyADDRESS3: TStringField;
    cdsMarketByCurrencyPOSTCODE: TStringField;
    cdsMarketByCurrencyCOUNTRYCODE: TStringField;
    cdsMarketByCurrencyPHONE: TStringField;
    cdsMarketByCurrencyFAX: TStringField;
    cdsMarketByCurrencyCONTACTPERSON: TStringField;
    cdsMarketByCurrencyCP_POSITION: TStringField;
    cdsMarketByCurrencyCCY: TStringField;
    cdsMarketByCurrencyCCYTRANS: TStringField;
    cdsMarketByCurrencyCCYSETTLE: TStringField;
    cdsMarketByCurrencyVATPCT: TFloatField;
    cdsMarketByCurrencyWHTPCT: TFloatField;
    cdsMarketByCurrencySELLTAX: TFloatField;
    cdsMarketByCurrencyOTCAMOUNT: TFloatField;
    cdsMarketByCurrencyVAT_ACCID: TIntegerField;
    cdsMarketByCurrencyVAT_ALTYPE: TStringField;
    cdsMarketByCurrencyWHT_ACCID: TIntegerField;
    cdsMarketByCurrencyWHT_ALTYPE: TStringField;
    cdsMarketByCurrencySELLTAX_ACCID: TIntegerField;
    cdsMarketByCurrencySELLTAX_ALTYPE: TStringField;
    cdsMarketByCurrencyBFEE_ACCID: TIntegerField;
    cdsMarketByCurrencyBFEE_ALTYPE: TStringField;
    cdsMarketByCurrencyBUY_ALTYPE: TStringField;
    cdsMarketByCurrencySELL_ALTYPE: TStringField;
    cdsMarketByCurrencySREC_ALTYPE: TStringField;
    cdsMarketByCurrencySDEL_ALTYPE: TStringField;
    cdsMarketByCurrencyINV_BANK_ALTYPE: TStringField;
    cdsMarketByCurrencySTOCK_SETTLE_ALTYPE: TStringField;
    cdsMarketByCurrencyCASH_SETTLE_ALTYPE: TStringField;
    cdsMarketByCurrencyFACILITATION_BOARD: TLargeintField;
    cdsMarketByCurrencyWAREHOUSE_BOARD: TLargeintField;
    cdsMarketByCurrencyCROSSTOM_BOARD: TLargeintField;
    cdsMarketByCurrencyMODDA: TDateTimeField;
    cdsMarketByCurrencyMODUI: TStringField;
    cdsMarketByCurrencyAPPDA: TDateTimeField;
    cdsMarketByCurrencyAPPUI: TStringField;
    cdsMarketByCurrencyUNDER4Y: TIntegerField;
    cdsMarketByCurrencyUNDER4YDA: TDateTimeField;
    cdsMarketByCurrencyNOTES4Y: TStringField;
    cdsMarketByCurrencyISDEL: TIntegerField;
    cdsMarketByCurrencyID: TLargeintField;
    cdsMarketByCurrencyHOLDTAX: TFloatField;
    cdsMarketByCurrencyCAPGAINTAX: TFloatField;
    cdsConBonSettle: TNClientDataset;
    cdsConBonSettleBONDCONID: TLargeintField;
    cdsConBonSettleSEQNO: TIntegerField;
    cdsConBonSettleACCID: TLargeintField;
    cdsConBonSettleCASH_STOCK: TStringField;
    cdsConBonSettleSIDE_ACC: TStringField;
    cdsConBonSettleACCNO: TStringField;
    cdsConBonSettleDUEDATE: TDateField;
    cdsConBonSettleSETTLE_SIDE: TStringField;
    cdsConBonSettleNETTYPE: TStringField;
    cdsConBonSettleINSTRUCTION_TYPE: TStringField;
    cdsConBonSettleINSTRUMENT_ID: TIntegerField;
    cdsConBonSettleINTRUMENT_CODE: TStringField;
    cdsConBonSettleFACEVALUE: TFloatField;
    cdsConBonSettleCCYCODE: TStringField;
    cdsConBonSettleNETPROCEED: TFloatField;
    cdsConBonSettleISMULTICCY: TStringField;
    cdsConBonSettleFOREIGN_CCYCODE: TStringField;
    cdsConBonSettleFOREIGN_EXRATE: TFloatField;
    cdsConBonSettleFOREIGN_NETPROCEED: TFloatField;
    cdsConBonSettleSETTLEDATE: TDateField;
    cdsConBonSettleSETTLECY: TStringField;
    cdsConBonSettleSETTLEAMT: TFloatField;
    cdsConBonSettleACCBANKID_SOURCE: TIntegerField;
    cdsConBonSettleBNCODE_SOURCE: TStringField;
    cdsConBonSettleBNACCNO_SOURCE: TStringField;
    cdsConBonSettleBNACCNAME_SOURCE: TStringField;
    cdsConBonSettleACCBANKID_TARGET: TIntegerField;
    cdsConBonSettleBNCODE_TARGET: TStringField;
    cdsConBonSettleBNACCNO_TARGET: TStringField;
    cdsConBonSettleBNACCNAME_TARGET: TStringField;
    cdsConBonSettleTRF_PRVT_BANK: TStringField;
    cdsConBonSettleTRF_PRVT_ACCBANKID_SOURCE: TIntegerField;
    cdsConBonSettleTRF_PRVT_BNCODE_SOURCE: TStringField;
    cdsConBonSettleTRF_PRVT_BNCODE_TARGET: TStringField;
    cdsConBonSettleTRF_PRVT_BNACCNO_SOURCE: TStringField;
    cdsConBonSettleTRF_PRVT_ACCBANKID_TARGET: TIntegerField;
    cdsConBonSettleTRF_PRVT_BNACCNO_TARGET: TStringField;
    cdsConBonSettleTRF_PRVT_BNACCNAME_SOURCE: TStringField;
    cdsConBonSettleTRF_PRVT_BNACCNAME_TARGET: TStringField;
    cdsConBonSettleTRF_PRVT_BANK_INSTR: TStringField;
    cdsConBonSettleSTAT: TStringField;
    cdsConBonSettleMODDA: TDateTimeField;
    cdsConBonSettleMODUI: TStringField;
    cdsConBonSettleAPPDA: TDateTimeField;
    cdsConBonSettleAPPUI: TStringField;
    cdsConBonSettleUNDER4Y: TIntegerField;
    cdsConBonSettleUNDER4YDA: TDateTimeField;
    cdsConBonSettleNOTES4Y: TStringField;
    cdsConBonSettleISDEL: TIntegerField;
    cdsConBonSettleID: TLargeintField;
    cdsConBonSettleSETTLE_FV: TFloatField;
    cdsConBonSettleCONBONID_DE: TLargeintField;
    cdsBondsDealTicketMARKETCODE: TStringField;
    cdsBondsDealTicketWHTPCT: TFloatField;
    cdsBondsDealTicketRVSDDATE: TDateField;
    cdsBondsDealTicketRVSD_DTID: TLargeintField;
    cdsBondsDealTicketSSALES: TLargeintField;
    cdsBondsDealTicketBSALES: TLargeintField;
    cdsBondsDealTicketBSALESTMP: TIntegerField;
    cdsBondsDealTicketSSALESTMP: TIntegerField;
    cdsInstrumentByID: TNClientDataset;
    cdsInstrumentByIDINSTRUMENT_ID: TLargeintField;
    cdsInstrumentByIDINSTRUMENT_CODE: TStringField;
    cdsInstrumentByIDLOCALCODE: TStringField;
    cdsInstrumentByIDMARKETCODE: TStringField;
    cdsInstrumentByIDINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentByIDSHORTNAME: TStringField;
    cdsInstrumentByIDLONGNAME: TStringField;
    cdsInstrumentByIDISSUERNAME: TStringField;
    cdsInstrumentByIDCCY: TStringField;
    cdsInstrumentByIDISINCODE: TStringField;
    cdsInstrumentByIDISINDATE: TDateTimeField;
    cdsInstrumentByIDMARGIN: TIntegerField;
    cdsInstrumentByIDSTATUS: TStringField;
    cdsInstrumentByIDDELISTINGDATE: TDateTimeField;
    cdsInstrumentByIDLISTINGDATE: TDateTimeField;
    cdsInstrumentByIDLASTCLSPRICE: TFloatField;
    cdsInstrumentByIDLASTCPPRICEDATE: TDateField;
    cdsInstrumentByIDSECTOR: TStringField;
    cdsInstrumentByIDMODDA: TDateTimeField;
    cdsInstrumentByIDMODUI: TStringField;
    cdsInstrumentByIDAPPDA: TDateTimeField;
    cdsInstrumentByIDAPPUI: TStringField;
    cdsInstrumentByIDISDEL: TIntegerField;
    cdsInstrumentByIDID: TLargeintField;
    cdsInstrumentByIDCATEGORY: TStringField;
    cdsInstrumentByIDMATURITYDATE: TDateTimeField;
    cdsInstrumentByIDRATING: TStringField;
    cdsInstrumentByIDREMARKS: TStringField;
    cdsInstrumentByIDEFFECTIVEDATE: TDateTimeField;
    cdsInstrumentByIDOFFERING_PERIODBEG: TDateTimeField;
    cdsInstrumentByIDOFFERING_PERIODEND: TDateTimeField;
    cdsInstrumentByIDISSUEDATE: TDateTimeField;
    cdsInstrumentByIDNO_OFCERTIFICATES: TStringField;
    cdsInstrumentByIDLEAD_UNDERWRITER: TStringField;
    cdsInstrumentByIDSELLING_AGENT: TStringField;
    cdsInstrumentByIDTRUSTEE: TStringField;
    cdsInstrumentByIDCALCULATE_DAYS_METHOD: TIntegerField;
    cdsInstrumentByIDCOUPON_IN_YEAR: TIntegerField;
    cdsInstrumentByIDCOMMONCODE: TStringField;
    cdsInstrumentByIDDAYSOFYEAR: TIntegerField;
    cdsInstrumentByIDREGIONALBONDS: TIntegerField;
    cdsInstrumentByIDCOUNTINGDAYS_METHOD: TIntegerField;
    cdsInstrumentByIDACCRUEDDAYS_METHOD: TIntegerField;
    cdsInstrumentByIDDAYSPERYEAR_METHOD: TIntegerField;
    cdsInstrumentByIDACCRUEDTYPE: TStringField;
    cdsInstrumentByIDDECDIGIT: TIntegerField;
    cdsBondsDealTicketDUEBUYSTOCK: TIntegerField;
    cdsBondsDealTicketDUESELLSTOCK: TIntegerField;
    cdsBondsDealTicketDUEBUYCASH: TIntegerField;
    cdsBondsDealTicketDUESELLCASH: TIntegerField;
    cdsBondsDealTicketHOLDPERIOD: TIntegerField;
    cdsBondsDealTicketINTEREST_AMT: TFloatField;
    cdsMarketByCurrencyCAPGAIN_ACCID: TLargeintField;
    cdsMarketByCurrencyCAPGAIN_ALTYPE: TStringField;
    cdsMarketByCurrencyCAPGAINTAX_ACCID: TLargeintField;
    cdsMarketByCurrencyCAPGAINTAX_ALTYPE: TStringField;
    cdsMarketByCurrencyHOLDINTTAX_ALTYPE: TStringField;
    cdsMarketByCurrencyHOLDINTTAX_ACCID: TLargeintField;
    cdsMarketByCurrencyTAXFINALOUT_ACCID: TLargeintField;
    cdsMarketByCurrencyTAXFINALOUT_ALTYPE: TStringField;
    cdsMarketByCurrencyTAXFINALIN_ACCID: TLargeintField;
    cdsMarketByCurrencyTAXFINALIN_ALTYPE: TStringField;
    cdsMarketByCurrencyBONDSWHT: TFloatField;
    cdsBondsDealTicketSPROCEED: TFloatField;
    cdsBondsDealTicketSNETPROCEED: TFloatField;
    cdsBondsDealTicketBPROCEED: TFloatField;
    cdsBondsDealTicketBNETPROCEED: TFloatField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    txtTradeDate: TcxBarEditItem;
    cdsBondsDealTicketSCAPGAIN: TFloatField;
    cdsBondsDealTicketBCAPGAIN: TFloatField;
    cdsBondsDealTicketVALUEDATE: TDateTimeField;
    cdsBondsDealTicketSCAPGAINTAX: TFloatField;
    cdsBondsDealTicketBCAPGAINTAX: TFloatField;
    cdsBondsDealTicketSCOST_PRICE: TFloatField;
    cdsBondsDealTicketSCOST_AMT: TFloatField;
    cdsBondsDealTicketBCOST_PRICE: TFloatField;
    cdsBondsDealTicketBCOST_AMT: TFloatField;
    cdsBondsDealTicketMATURITY_DATE: TDateTimeField;
    cdsBondsDealTicketSUM_SCAPGAIN: TFloatField;
    cdsBondsDealTicketSUM_BCAPGAIN: TFloatField;
    cdsBondsDealTicketHOLDING_INTEREST: TFloatField;
    cdsBondsDealTicketHOLDING_INTEREST_TAX: TFloatField;
    cdsBondsDealTicketWHT_TAX: TFloatField;
    Cancel2: TMenuItem;
    actCloseDealTicket: TNAction;
    cdsBondsDealTicketCTPREFF: TStringField;
    cdsBondsDealTicketMATCH_BUY: TStringField;
    cdsBondsDealTicketMATCH_SELL: TStringField;
    cdsBondsDealTicketCONTRACT: TStringField;
    cdsBondsDealTicketBCTPREFF: TStringField;
    cdsBondsDealTicketSCTPREFF: TStringField;
    cdsBondsDealTicketHOLD_TAX: TFloatField;
    cdsBondsDealTicketMODDA: TDateTimeField;
    cdsBondsDealTicketMODUI: TStringField;
    cdsBondsDealTicketAPPDA: TDateTimeField;
    cdsBondsDealTicketAPPUI: TStringField;
    cdsBondsDealTicketUNDER4Y: TIntegerField;
    cdsBondsDealTicketUNDER4YDA: TDateTimeField;
    cdsBondsDealTicketNOTES4Y: TStringField;
    cdsBondsDealTicketISDEL: TIntegerField;
    cdsBondsDealTicketID: TLargeintField;
    cdsBondsCashPos: TNClientDataset;
    cdsBondsCashPosVALUEDATE: TDateField;
    cdsBondsCashPosACCID: TLargeintField;
    cdsBondsCashPosCCY: TStringField;
    cdsBondsCashPosACCNO: TStringField;
    cdsBondsCashPosCASH_ONHAND: TFloatField;
    cdsBondsCashPosCASH_ONHOLD: TFloatField;
    cdsBondsCashPosARAMT: TFloatField;
    cdsBondsCashPosAPAMT: TFloatField;
    cdsBondsCashPosCASH_OUTS: TFloatField;
    cdsBondsCashPosBUY_AMT: TFloatField;
    cdsBondsCashPosSELL_AMT: TFloatField;
    cdsBondsCashPosMODDA: TDateTimeField;
    cdsBondsCashPosMODUI: TStringField;
    cdsBondsCashPosAPPDA: TDateTimeField;
    cdsBondsCashPosAPPUI: TStringField;
    cdsBondsCashPosUNDER4Y: TIntegerField;
    cdsBondsCashPosUNDER4YDA: TDateTimeField;
    cdsBondsCashPosNOTES4Y: TStringField;
    cdsBondsCashPosISDEL: TIntegerField;
    cdsBondsCashPosID: TLargeintField;
    cdsBondsDealTicketSHORTNAME: TStringField;
    cdsBondsDealTicketTRADEBOND_NO: TStringField;
    cdsBondsDealTicketSTAX: TFloatField;
    cdsBondsDealTicketBTAX: TFloatField;
    cdsBondsDealTicketSACCTYPE: TStringField;
    cdsBondsDealTicketBACCTYPE: TStringField;
    cdsAquisitionBonds: TNClientDataset;
    cdsAquisitionBondsACQDATE: TDateField;
    cdsAquisitionBondsACCID: TLargeintField;
    cdsAquisitionBondsSTOCKID: TIntegerField;
    cdsAquisitionBondsSELL_VAL: TFloatField;
    cdsStockPos: TNClientDataset;
    cdsStockPosVALUEDATE: TDateField;
    cdsStockPosACQDATE: TDateField;
    cdsStockPosACCID: TLargeintField;
    cdsStockPosACCNO: TStringField;
    cdsStockPosSTOCKID: TIntegerField;
    cdsStockPosSTOCKCODE: TStringField;
    cdsStockPosAVGPRICE: TFloatField;
    cdsStockPosQTY_ONHAND: TFloatField;
    cdsStockPosQTY_OUTS: TFloatField;
    cdsStockPosQTY_ONHOLD: TFloatField;
    cdsStockPosQTY_BAL: TFloatField;
    cdsStockPosQTY_OVERDUE: TFloatField;
    cdsStockPosQTY_DLV: TFloatField;
    cdsStockPosQTY_RCV: TFloatField;
    cdsStockPosPROFIT_LOSS: TFloatField;
    cdsStockPosBUY_VAL: TFloatField;
    cdsStockPosSELL_VAL: TFloatField;
    cdsBondsDealTicketBCOSTDATE: TDateField;
    cdsBondsDealTicketSCOSTDATE: TDateField;
    actNewOrder: TNAction;
    AddBondsBuyMultipleDealTickets1: TMenuItem;
    cdsBondsDealTicketListSTAT: TStringField;
    cdsBondsDealTicketListBS: TStringField;
    cdsBondsDealTicketListTRADEBOND_ID: TLargeintField;
    cdsBondsDealTicketListTRADEBOND_NO: TStringField;
    cdsBondsDealTicketListTRADEDATE: TDateTimeField;
    cdsBondsDealTicketListVALUEDATE: TDateTimeField;
    cdsBondsDealTicketListINSTRUMENT_ID: TLargeintField;
    cdsBondsDealTicketListINSTRUMENT_CODE: TStringField;
    cdsBondsDealTicketListACC_ID: TLargeintField;
    cdsBondsDealTicketListACC_CODE: TStringField;
    cdsBondsDealTicketListACC_NAME: TStringField;
    cdsBondsDealTicketListCP_ID: TLargeintField;
    cdsBondsDealTicketListCP_CODE: TStringField;
    cdsBondsDealTicketListCP_NAME: TStringField;
    cdsBondsDealTicketListCCY: TStringField;
    cdsBondsDealTicketListORDER_PRICE: TFloatField;
    cdsBondsDealTicketListFACEVALUE: TFloatField;
    cdsBondsDealTicketListINTERESTRATE: TFloatField;
    cdsBondsDealTicketListPROCEED: TFloatField;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterTRADEBOND_ID: TcxGridDBBandedColumn;
    gvwMasterTRADEBOND_NO: TcxGridDBBandedColumn;
    gvwMasterTRADEDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterACC_ID: TcxGridDBBandedColumn;
    gvwMasterACC_CODE: TcxGridDBBandedColumn;
    gvwMasterACC_NAME: TcxGridDBBandedColumn;
    gvwMasterCP_ID: TcxGridDBBandedColumn;
    gvwMasterCP_CODE: TcxGridDBBandedColumn;
    gvwMasterCP_NAME: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterORDER_PRICE: TcxGridDBBandedColumn;
    gvwMasterFACEVALUE: TcxGridDBBandedColumn;
    gvwMasterINTERESTRATE: TcxGridDBBandedColumn;
    gvwMasterPROCEED: TcxGridDBBandedColumn;
    cdsBondsDealTicketBS: TStringField;
    cdsBondsDealTicketISINCODE: TStringField;
    cdsBondsDealTicketSETTLE_INSTR: TStringField;
    cdsBondsDealTicketBCAPGAIN_TAX: TFloatField;
    cdsBondsDealTicketSCAPGAIN_TAX: TFloatField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtTransDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtMarket: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsBondsDealTicketListMARKETCODE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsBondsDealTicketBeforePost(DataSet: TDataSet);
    procedure actCancelOrderExecute(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure popMasterPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtTradeDatePropertiesCloseUp(Sender: TObject);
    procedure cdsBondsDealTicketCalcFields(DataSet: TDataSet);
    procedure actNewOrderExecute(Sender: TObject);
    procedure cdsBondsDealTicketNewRecord(DataSet: TDataSet);
    procedure actOpenExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    function DecToRoman(Decimal : LongInt): string;
    procedure CreateMultiBondsDealTicket(ABuySell: string);
  public
    { Public declarations }
  end;

var
  frmBondsDealTicketList: TfrmBondsDealTicketList;

implementation

{$R *.dfm}

uses DataGlobal, FormBondsDealTicket, DataLookup, FormBondsMultiDealTicket,
  FormBondsMultiDealTicket_View;

procedure TfrmBondsDealTicketList.actNewOrderExecute(Sender: TObject);
var
  oForm: TfrmBondsMultiDealTicket;
  iTradeBondID: Int64;
  sMsg: string;
begin
  inherited;
  cdsBondsDealTicket.Close;
  cdsBondsDealTicket.Params[0].AsInteger := 0;
  cdsBondsDealTicket.Open;


  oForm := TfrmBondsMultiDealTicket.Create(nil);
  TfrmBondsMultiDealTicket(oForm).BuySell := 'B';
  if oForm.ShowModal = mrOk then
  begin
    iTradeBondID := TfrmBondsMultiDealTicket(oForm).cdsBondsDealTicketTRADEBOND_ID.AsLargeInt;
    FreeAndNil(oForm);

    dmGlobal.RemoteServer.GenerateContractBonds(iTradeBondID, sMsg);
    MessageDlg(sMsg, mtInformation,[mbOk], 0);
    cdsBondsDealTicketList.Refresh;
  end;
end;

procedure TfrmBondsDealTicketList.actOpenExecute(Sender: TObject);
var
  oForm: TfrmBondsMultiDealTicket_View;
begin
//  inherited;
  oForm := TfrmBondsMultiDealTicket_View.Create(nil);

  with TfrmBondsMultiDealTicket_View(oForm) do
  begin
    cdsBondsDealTicket.Close;
    cdsBondsDealTicket.Params[0].AsInteger := cdsBondsDealTicketListTRADEBOND_ID.AsInteger;
    cdsBondsDealTicket.Open;
  end;

  oForm.ShowModal;
  FreeAndNil(oForm);
end;

procedure TfrmBondsDealTicketList.actCancelOrderExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure want to cancel this order ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsBondsDealTicketList.Edit;
    cdsBondsDealTicketListSTAT.AsString := 'C';
    cdsBondsDealTicketList.Post;

    dmGlobal.RemoteServer.StartTransaction;
    cdsBondsDealTicketList.ApplyUpdates(-1);
    dmGlobal.RemoteServer.CommitTransaction;
  end;
end;

procedure TfrmBondsDealTicketList.cdsBondsDealTicketBeforePost(
  DataSet: TDataSet);
var
  iMonth : integer;
begin
  iMonth := StrToIntDef(FormatDateTime('MM', dmGlobal.RemoteServer.GetTransDate), 0);

  cdsBondsDealTicketTRADEBOND_NO.AsString := 'TB-'+DecToRoman(iMonth)+'-'+
     FormatDateTime('YYYY', dmGlobal.RemoteServer.GetTransDate)+'-'+
     FormatFloat('00000000', cdsBondsDealTicketTRADEBOND_ID.AsInteger);
  cdsBondsDealTicketMODUI.AsString   := dmGlobal.UserID;
  cdsBondsDealTicketMODDA.AsDateTime := Now;
  inherited;
end;

procedure TfrmBondsDealTicketList.cdsBondsDealTicketCalcFields(
  DataSet: TDataSet);
var
  fSumCapGain : Double;
begin
  inherited;
  if (cdsBondsDealTicketSPRICE.AsFloat > cdsBondsDealTicketSCOST_PRICE.AsFloat) and (cdsBondsDealTicketSCOST_PRICE.AsFloat > 0) then
    fSumCapGain := cdsBondsDealTicketSPROCEED.AsFloat - cdsBondsDealTicketSCOST_AMT.AsFloat
  else
    fSumCapGain := 0;
  cdsBondsDealTicketSUM_SCAPGAIN.AsFloat := fSumCapGain;

  if cdsBondsDealTicketBPRICE.AsFloat > cdsBondsDealTicketBCOST_PRICE.AsFloat then
    cdsBondsDealTicketSUM_BCAPGAIN.AsFloat := cdsBondsDealTicketBPROCEED.AsFloat - cdsBondsDealTicketBCOST_AMT.AsFloat
  else
    cdsBondsDealTicketSUM_BCAPGAIN.AsFloat := 0;

end;

procedure TfrmBondsDealTicketList.cdsBondsDealTicketNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsBondsDealTicketTRADEBOND_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('main.b_bondsdealticket');
end;

procedure TfrmBondsDealTicketList.CreateMultiBondsDealTicket(
  ABuySell: string);
var
  oForm: TfrmBondsMultiDealTicket;
  dTransDate: TDate;
begin
  dTransDate := dmGlobal.RemoteServer.GetTransDate;

  oForm := TfrmBondsMultiDealTicket.Create(nil);
  TfrmBondsMultiDealTicket(oForm).BuySell := ABuySell;
  oForm.ShowModal;
  FreeAndNil(oForm);
end;

procedure TfrmBondsDealTicketList.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsBondsDealTicketList.Close;
  cdsBondsDealTicketList.Params[0].AsDateTime := txtTransDate.Date;
  cdsBondsDealTicketList.Params[1].AsString   := txtMarket.EditValue;
  cdsBondsDealTicketList.Open;
end;

function TfrmBondsDealTicketList.DecToRoman(Decimal: Integer): string;
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

procedure TfrmBondsDealTicketList.FormCreate(Sender: TObject);
begin
  inherited;
  actEdit.Visible := True;

  cdsBondsDealTicketList.Close;
  cdsBondsDealTicketList.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsBondsDealTicketList.Params[1].AsString   := 'IDX';
  cdsBondsDealTicketList.Open;

  cdsConBonSettle.Close;
  cdsConBonSettle.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsConBonSettle.Open;

  dmGlobal.IntDataLookup.cdsLuMarket.Close;
  dmGlobal.IntDataLookup.cdsLuMarket.Open;

end;

procedure TfrmBondsDealTicketList.FormShow(Sender: TObject);
begin
  inherited;
  txtTransDate.Date   := dmGlobal.RemoteServer.GetTransDate;
  txtMarket.EditValue := 'IDX';
end;

procedure TfrmBondsDealTicketList.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  if AViewInfo.GridRecord.Values[gvwMasterSTAT.Index] = 'C' then
//    ACanvas.Font.Color := clRed;
//
//  if AViewInfo.GridRecord.Values[gvwMasterSTAT.Index] = 'S' then
//    ACanvas.Font.Color := clBlue;
end;

procedure TfrmBondsDealTicketList.popMasterPopup(Sender: TObject);
begin
  inherited;
  if dsBrowseMaster.DataSet.FieldByName('STAT').AsString = 'O' then
  begin
    actCancelOrder.Enabled := True;
    actEdit.Visible        := false;
  end
  else
  begin
    actCancelOrder.Enabled := False;
    actEdit.Visible        := False;
  end;

  actDelete.Visible := False;
end;

procedure TfrmBondsDealTicketList.txtTradeDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cdsBondsDealTicketList.Close;
  cdsBondsDealTicketList.Params[0].AsDateTime := txtTradeDate.EditValue;
  cdsBondsDealTicketList.Open;
end;

Initialization
  RegisterClass(TfrmBondsDealTicketList);

end.


