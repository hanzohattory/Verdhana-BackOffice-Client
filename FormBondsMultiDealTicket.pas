unit FormBondsMultiDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxImageComboBox, Datasnap.DBClient,
  NClientDataset, cxLabel, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter;

type
  TfrmBondsMultiDealTicket = class(TfrmEditor)
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    txtFaceValue: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Item31: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    LayoutControlGroup4: TdxLayoutGroup;
    LayoutControlGroup5: TdxLayoutGroup;
    LayoutControlGroup6: TdxLayoutGroup;
    cxGrid3: TcxGrid;
    gvwAquisitionBonds: TcxGridDBBandedTableView;
    cxGrid3Level1: TcxGridLevel;
    loHistoricalAcq: TdxLayoutGroup;
    dxLayoutControl1Item25: TdxLayoutItem;
    dsAquisition: TDataSource;
    LayoutControlGroup9: TdxLayoutGroup;
    LayoutControlGroup10: TdxLayoutGroup;
    LayoutControlGroup11: TdxLayoutGroup;
    LayoutControlGroup3: TdxLayoutGroup;
    LayoutControlGroup7: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    LayoutControlItem2: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    LayoutControlItem3: TdxLayoutItem;
    LayoutControlGroup13: TdxLayoutGroup;
    LayoutControlGroup14: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    LayoutControlItem4: TdxLayoutItem;
    pnlBS: TPanel;
    LayoutControlItem8: TdxLayoutItem;
    LayoutControlGroup17: TdxLayoutGroup;
    LayoutControlGroup18: TdxLayoutGroup;
    LayoutControlGroup12: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem9: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    LayoutControlItem10: TdxLayoutItem;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    LayoutControlItem11: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cdsBondsDealTicket: TNClientDataset;
    cdsBondsDealTicketTRADEBOND_ID: TLargeintField;
    cdsBondsDealTicketTRADEBOND_NO: TStringField;
    cdsTmpInstrumentBonds: TNClientDataset;
    cdsTmpInstrumentBondsTRADEDATE: TDateTimeField;
    cdsTmpInstrumentBondsINSTRUMENT_ID: TLargeintField;
    cdsTmpInstrumentBondsINSTRUMENT_CODE: TStringField;
    cdsTmpInstrumentBondsTRADETYPE: TStringField;
    cdsTmpInstrumentBondsCCY: TStringField;
    cdsTmpInstrumentBondsFACEVALUE: TFloatField;
    cdsTmpInstrumentBondsINTERESTRATE: TFloatField;
    cdsTmpInstrumentBondsLASTCOUPONDATE: TDateTimeField;
    cdsTmpInstrumentBondsNEXTCOUPONDATE: TDateTimeField;
    cdsTmpInstrumentBondsPERIODECOUPON: TIntegerField;
    cdsTmpInstrumentBondsDUEDAYS: TIntegerField;
    cdsTmpInstrumentBondsACCRDAYS: TIntegerField;
    cdsTmpInstrumentBondsCOUPONDAY: TIntegerField;
    cdsTmpInstrumentBondsMARKETCODE: TStringField;
    cdsTmpInstrumentBondsHOLDPERIOD: TIntegerField;
    cdsTmpInstrumentBondsINTEREST_AMT: TFloatField;
    cdsTmpInstrumentBondsVALUEDATE: TDateTimeField;
    cdsTmpInstrumentBondsMATURITY_DATE: TDateTimeField;
    cdsTmpInstrumentBondsHOLDING_INTEREST: TFloatField;
    cdsTmpInstrumentBondsHOLDING_INTEREST_TAX: TFloatField;
    cdsTmpInstrumentBondsSHORTNAME: TStringField;
    cdsTmpInstrumentBondsBS: TStringField;
    cdsTmpInstrumentBondsTOTAL_FV: TFloatField;
    dsInstrumentBonds: TDataSource;
    txtBS: TcxLabel;
    cdsAquisitionBonds: TNClientDataset;
    cdsDetailInstrumentBonds: TNClientDataset;
    cdsDetailInstrumentBondsINSTRUMENT_ID: TLargeintField;
    cdsDetailInstrumentBondsINSTRUMENT_CODE: TStringField;
    cdsDetailInstrumentBondsSHORTNAME: TStringField;
    cdsDetailInstrumentBondsMATURITYDATE: TDateTimeField;
    cdsDetailInstrumentBondsCCY: TStringField;
    cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsCOUNTINGDAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsDAYSOFYEAR: TIntegerField;
    cdsDetailInstrumentBondsCOUPON_IN_YEAR: TIntegerField;
    cdsDetailInstrumentBondsMARKETCODE: TStringField;
    cdsDetailInstrumentBondsLASTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsNEXTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsINTERESTRATE: TFloatField;
    cdsDetailInstrumentBondsLOCALCODE: TStringField;
    cdsCalcFactor: TNClientDataset;
    cdsCalcFactorACCRUED_FACTOR: TFloatField;
    cdsCalcFactorCOUPON_DAYS: TFloatField;
    cdsCalcFactorACCRUED_DAYS: TFloatField;
    cdsCalcFactorHOLDING_DAYS: TFloatField;
    cdsCalcFactorHOLDING_FACTOR: TFloatField;
    cdsTmpInstrumentBondsISINCODE: TStringField;
    cdsDetailInstrumentBondsISINCODE: TStringField;
    cdsMarket: TNClientDataset;
    cdsMarketMARKETCODE: TStringField;
    cdsMarketMARKETDESC: TStringField;
    cdsMarketINITCODE: TStringField;
    cdsMarketCCY: TStringField;
    cdsMarketCCYTRANS: TStringField;
    cdsMarketCCYSETTLE: TStringField;
    cdsMarketHOLDTAX: TFloatField;
    cdsMarketCAPGAINTAX: TFloatField;
    cdsMarketBONDSWHT: TFloatField;
    cdsHouseAccount_BSTAx: TNClientDataset;
    cdsHouseAccount_BSTAxins_busstype: TStringField;
    cdsHouseAccount_BSTAxBTAX: TFloatField;
    cdsHouseAccount_BSTAxSTAX: TFloatField;
    cdsTmpInstrumentBondsBACCID: TLargeintField;
    cdsTmpInstrumentBondsBPRICE: TFloatField;
    cdsTmpInstrumentBondsSACCID: TLargeintField;
    cdsTmpInstrumentBondsSPRICE: TFloatField;
    cdsTmpInstrumentBondsSACCCODE: TStringField;
    cdsTmpInstrumentBondsBACCCODE: TStringField;
    cdsTmpInstrumentBondsSACCNAME: TStringField;
    cdsTmpInstrumentBondsBACCNAME: TStringField;
    cdsTmpInstrumentBondsWHTPCT: TFloatField;
    cdsTmpInstrumentBondsRVSDDATE: TDateField;
    cdsTmpInstrumentBondsRVSD_DTID: TLargeintField;
    cdsTmpInstrumentBondsSSALES: TLargeintField;
    cdsTmpInstrumentBondsBSALES: TLargeintField;
    cdsTmpInstrumentBondsDUEBUYSTOCK: TIntegerField;
    cdsTmpInstrumentBondsDUESELLSTOCK: TIntegerField;
    cdsTmpInstrumentBondsDUEBUYCASH: TIntegerField;
    cdsTmpInstrumentBondsDUESELLCASH: TIntegerField;
    cdsTmpInstrumentBondsSPROCEED: TFloatField;
    cdsTmpInstrumentBondsSNETPROCEED: TFloatField;
    cdsTmpInstrumentBondsBPROCEED: TFloatField;
    cdsTmpInstrumentBondsBNETPROCEED: TFloatField;
    cdsTmpInstrumentBondsSCAPGAIN: TFloatField;
    cdsTmpInstrumentBondsBCAPGAIN: TFloatField;
    cdsTmpInstrumentBondsSCAPGAINTAX: TFloatField;
    cdsTmpInstrumentBondsBCAPGAINTAX: TFloatField;
    cdsTmpInstrumentBondsSCOST_PRICE: TFloatField;
    cdsTmpInstrumentBondsSCOST_AMT: TFloatField;
    cdsTmpInstrumentBondsBCOST_PRICE: TFloatField;
    cdsTmpInstrumentBondsBCOST_AMT: TFloatField;
    cdsTmpInstrumentBondsSUM_SCAPGAIN: TFloatField;
    cdsTmpInstrumentBondsSUM_BCAPGAIN: TFloatField;
    cdsTmpInstrumentBondsWHT_TAX: TFloatField;
    cdsTmpInstrumentBondsCTPREFF: TStringField;
    cdsTmpInstrumentBondsMATCH_BUY: TStringField;
    cdsTmpInstrumentBondsMATCH_SELL: TStringField;
    cdsTmpInstrumentBondsCONTRACT: TStringField;
    cdsTmpInstrumentBondsBCTPREFF: TStringField;
    cdsTmpInstrumentBondsSCTPREFF: TStringField;
    cdsTmpInstrumentBondsHOLD_TAX: TFloatField;
    cdsTmpInstrumentBondsSTAX: TFloatField;
    cdsTmpInstrumentBondsBTAX: TFloatField;
    cdsTmpInstrumentBondsSACCTYPE: TStringField;
    cdsTmpInstrumentBondsBACCTYPE: TStringField;
    cdsTmpInstrumentBondsBCOSTDATE: TDateField;
    cdsTmpInstrumentBondsSCOSTDATE: TDateField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    LayoutControlItem1: TdxLayoutItem;
    LayoutControlGroup8: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem12: TdxLayoutItem;
    loSACC: TdxLayoutGroup;
    LayoutControlGroup16: TdxLayoutGroup;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    LayoutControlItem13: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    LayoutControlItem14: TdxLayoutItem;
    LayoutControlGroup19: TdxLayoutGroup;
    loBACC: TdxLayoutGroup;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    LayoutControlItem15: TdxLayoutItem;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    LayoutControlItem16: TdxLayoutItem;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    LayoutControlItem17: TdxLayoutItem;
    LayoutControlGroup23: TdxLayoutGroup;
    LayoutControlGroup24: TdxLayoutGroup;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    LayoutControlItem18: TdxLayoutItem;
    LayoutControlGroup22: TdxLayoutGroup;
    LayoutControlGroup25: TdxLayoutGroup;
    cdsHouseAccount_BSTAxACCID: TIntegerField;
    cdsHouseAccount_BSTAxACCCODE: TStringField;
    cdsHouseAccount_BSTAxACCNAME: TStringField;
    cdsHouseAccount_BSTAxACCINIT: TStringField;
    cdsHouseAccount_BSTAxACCTYPE: TStringField;
    cdsHouseAccount_BSTAxBUSSTYPE: TLargeintField;
    cdsHouseAccount_BSTAxPRDCODE: TStringField;
    cdsBondsDealTicketTRADEDATE: TDateTimeField;
    cdsBondsDealTicketINSTRUMENT_ID: TLargeintField;
    cdsBondsDealTicketINSTRUMENT_CODE: TStringField;
    cdsBondsDealTicketTRADETYPE: TStringField;
    cdsBondsDealTicketCCY: TStringField;
    cdsBondsDealTicketFACEVALUE: TFloatField;
    cdsBondsDealTicketINTERESTRATE: TFloatField;
    cdsBondsDealTicketLASTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketNEXTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketPERIODECOUPON: TIntegerField;
    cdsBondsDealTicketDUEDAYS: TIntegerField;
    cdsBondsDealTicketACCRDAYS: TIntegerField;
    cdsBondsDealTicketCOUPONDAY: TIntegerField;
    cdsBondsDealTicketMARKETCODE: TStringField;
    cdsBondsDealTicketHOLDPERIOD: TIntegerField;
    cdsBondsDealTicketINTEREST_AMT: TFloatField;
    cdsBondsDealTicketVALUEDATE: TDateTimeField;
    cdsBondsDealTicketMATURITY_DATE: TDateTimeField;
    cdsBondsDealTicketHOLDING_INTEREST: TFloatField;
    cdsBondsDealTicketHOLDING_INTEREST_TAX: TFloatField;
    cdsBondsDealTicketSHORTNAME: TStringField;
    cdsBondsDealTicketBS: TStringField;
    cdsBondsDealTicketTOTAL_FV: TFloatField;
    cdsBondsDealTicketBACCID: TLargeintField;
    cdsBondsDealTicketBPRICE: TFloatField;
    cdsBondsDealTicketSACCID: TLargeintField;
    cdsBondsDealTicketSPRICE: TFloatField;
    cdsBondsDealTicketSACCCODE: TStringField;
    cdsBondsDealTicketBACCCODE: TStringField;
    cdsBondsDealTicketSACCNAME: TStringField;
    cdsBondsDealTicketBACCNAME: TStringField;
    cdsBondsDealTicketWHTPCT: TFloatField;
    cdsBondsDealTicketRVSDDATE: TDateField;
    cdsBondsDealTicketRVSD_DTID: TLargeintField;
    cdsBondsDealTicketSSALES: TLargeintField;
    cdsBondsDealTicketBSALES: TLargeintField;
    cdsBondsDealTicketDUEBUYSTOCK: TIntegerField;
    cdsBondsDealTicketDUESELLSTOCK: TIntegerField;
    cdsBondsDealTicketDUEBUYCASH: TIntegerField;
    cdsBondsDealTicketDUESELLCASH: TIntegerField;
    cdsBondsDealTicketSPROCEED: TFloatField;
    cdsBondsDealTicketSNETPROCEED: TFloatField;
    cdsBondsDealTicketBPROCEED: TFloatField;
    cdsBondsDealTicketBNETPROCEED: TFloatField;
    cdsBondsDealTicketSCAPGAIN: TFloatField;
    cdsBondsDealTicketBCAPGAIN: TFloatField;
    cdsBondsDealTicketSCAPGAINTAX: TFloatField;
    cdsBondsDealTicketBCAPGAINTAX: TFloatField;
    cdsBondsDealTicketSCOST_PRICE: TFloatField;
    cdsBondsDealTicketSCOST_AMT: TFloatField;
    cdsBondsDealTicketBCOST_PRICE: TFloatField;
    cdsBondsDealTicketBCOST_AMT: TFloatField;
    cdsBondsDealTicketSUM_SCAPGAIN: TFloatField;
    cdsBondsDealTicketSUM_BCAPGAIN: TFloatField;
    cdsBondsDealTicketWHT_TAX: TFloatField;
    cdsBondsDealTicketCTPREFF: TStringField;
    cdsBondsDealTicketMATCH_BUY: TStringField;
    cdsBondsDealTicketMATCH_SELL: TStringField;
    cdsBondsDealTicketCONTRACT: TStringField;
    cdsBondsDealTicketBCTPREFF: TStringField;
    cdsBondsDealTicketSCTPREFF: TStringField;
    cdsBondsDealTicketHOLD_TAX: TFloatField;
    cdsBondsDealTicketSTAX: TFloatField;
    cdsBondsDealTicketBTAX: TFloatField;
    cdsBondsDealTicketSACCTYPE: TStringField;
    cdsBondsDealTicketBACCTYPE: TStringField;
    cdsBondsDealTicketBCOSTDATE: TDateField;
    cdsBondsDealTicketSCOSTDATE: TDateField;
    cdsBondsDealTicketSTAT: TStringField;
    cdsTmpInstrumentBondsSTAT: TStringField;
    PopupMenu1: TPopupMenu;
    AddHistoricalCostPrice1: TMenuItem;
    cdsTmpAquicitionBonds: TNClientDataset;
    cdsAcq_Hist: TNClientDataset;
    cdsBondsDealTicketISINCODE: TStringField;
    cdsTmpAquicitionBondsACQDATE: TDateField;
    cdsTmpAquicitionBondsACCID: TLargeintField;
    cdsTmpAquicitionBondsACQPRICE: TFloatField;
    cdsTmpAquicitionBondsAVAIL: TFloatField;
    cdsTmpAquicitionBondsProceed: TFloatField;
    cdsTmpAquicitionBondsPERIOD: TFloatField;
    cdsTmpAquicitionBondsINTEREST: TFloatField;
    cdsTmpAquicitionBondsINTEREST_TAX: TFloatField;
    gvwAquisitionBondsACQDATE: TcxGridDBBandedColumn;
    gvwAquisitionBondsACCID: TcxGridDBBandedColumn;
    gvwAquisitionBondsBONDID: TcxGridDBBandedColumn;
    gvwAquisitionBondsACQPRICE: TcxGridDBBandedColumn;
    gvwAquisitionBondsProceed: TcxGridDBBandedColumn;
    gvwAquisitionBondsPERIOD: TcxGridDBBandedColumn;
    gvwAquisitionBondsINTEREST: TcxGridDBBandedColumn;
    gvwAquisitionBondsINTEREST_TAX: TcxGridDBBandedColumn;
    cdsBondsDealTicketSETTLE_INSTR: TStringField;
    cdsBondsDealTicketBCAPGAIN_TAX: TFloatField;
    cdsBondsDealTicketSCAPGAIN_TAX: TFloatField;
    cdsTmpInstrumentBondsBONDCONID: TLargeintField;
    cdsTmpInstrumentBondsSETTLE_INSTR: TStringField;
    cdsTmpInstrumentBondsBCAPGAIN_TAX: TFloatField;
    cdsTmpInstrumentBondsSCAPGAIN_TAX: TFloatField;
    cdsBondsDealTicketBONDCONID: TLargeintField;
    cxDBImageComboBox2: TcxDBImageComboBox;
    LayoutControlItem5: TdxLayoutItem;
    gvwAquisitionBondsAVAIL: TcxGridDBBandedColumn;
    cdsTmpAquicitionBondsBONDID: TLargeintField;
    cdsAquisitionBondsACQDATE: TDateField;
    cdsAquisitionBondsACCID: TLargeintField;
    cdsAquisitionBondsBONDID: TLargeintField;
    cdsAquisitionBondsACQPRICE: TFloatField;
    cdsAquisitionBondsAVAIL: TFloatField;
    cdsAquisitionBondsPROCEED: TFloatField;
    cdsAquisitionBondsPERIOD: TFloatField;
    cdsAquisitionBondsINTEREST: TFloatField;
    cdsAquisitionBondsINTEREST_TAX: TFloatField;
    cdsAquisitionBondsACQ_HISTID: TLargeintField;
    cdsTmpAquicitionBondsACQ_HISTID: TLargeintField;
    cdsAcq_HistACQ_HISID: TLargeintField;
    cdsAcq_HistTRADEDATE: TDateField;
    cdsAcq_HistBS: TStringField;
    cdsAcq_HistACCID: TLargeintField;
    cdsAcq_HistBONDID: TLargeintField;
    cdsAcq_HistACQDATE: TDateField;
    cdsAcq_HistACQ_PRICE: TFloatField;
    cdsAcq_HistFACEVALUE: TFloatField;
    cdsAcq_HistPROCEED: TFloatField;
    cdsAcq_HistCAP_GAIN: TFloatField;
    cdsAcq_HistACC_INTEREST: TFloatField;
    cdsAcq_HistHOLD_PERIOD: TIntegerField;
    cdsAcq_HistHOLD_INTEREST: TFloatField;
    cdsAcq_HistHOLD_TAX: TFloatField;
    cdsAcq_HistHOLD_INTERESTTAX: TFloatField;
    cdsAcq_HistNET_PROCEED: TFloatField;
    cdsAcq_HistSELL_VAL: TFloatField;
    cdsAcq_HistLINKID: TLargeintField;
    cdsAcq_HistPOSTED: TStringField;
    cdsBondsDealTicketBACR_INTEREST_TAX: TFloatField;
    cdsBondsDealTicketSACR_INTEREST_TAX: TFloatField;
    cdsTmpInstrumentBondsBACR_INTEREST_TAX: TFloatField;
    cdsTmpInstrumentBondsSACR_INTEREST_TAX: TFloatField;
    cdsBondPos: TNClientDataset;
    cdsBondPosVALUEDATE: TDateField;
    cdsBondPosACCID: TLargeintField;
    cdsBondPosBONDID: TIntegerField;
    cdsBondPosACQDATE: TDateField;
    cdsBondPosACQPRICE: TFloatField;
    cdsBondPosONHAND_VALUE: TFloatField;
    cdsBondPosONHOLD_VALUE: TFloatField;
    cdsBondPosDELIVER_VALUE: TFloatField;
    cdsBondPosRECEIVE_VALUE: TFloatField;
    cdsBondPosOUTS_VALUE: TFloatField;
    cdsBondPosBUY_VALUE: TFloatField;
    cdsBondPosSELL_VALUE: TFloatField;
    cdsAquisitionBondsHOLDING: TIntegerField;
    cdsTmpAquicitionBondsHOLDING: TIntegerField;
    cdsAquisitionBondsHOLD_INTEREST: TFloatField;
    cdsAquisitionBondsHOLD_INTEREST_TAX: TFloatField;
    cdsTmpAquicitionBondsHOLD_INTEREST: TFloatField;
    cdsTmpAquicitionBondsHOLD_INTEREST_TAX: TFloatField;
    cdsAqcHistPos: TNClientDataset;
    cdsAqcHistPosACQ_HISID: TLargeintField;
    cdsAqcHistPosTRADEDATE: TDateField;
    cdsAqcHistPosBS: TStringField;
    cdsAqcHistPosACCID: TLargeintField;
    cdsAqcHistPosBONDID: TLargeintField;
    cdsAqcHistPosACQDATE: TDateField;
    cdsAqcHistPosACQ_PRICE: TFloatField;
    cdsAqcHistPosFACEVALUE: TFloatField;
    cdsAqcHistPosPROCEED: TFloatField;
    cdsAqcHistPosCAP_GAIN: TFloatField;
    cdsAqcHistPosACC_INTEREST: TFloatField;
    cdsAqcHistPosHOLD_PERIOD: TIntegerField;
    cdsAqcHistPosHOLD_INTEREST: TFloatField;
    cdsAqcHistPosHOLD_TAX: TFloatField;
    cdsAqcHistPosHOLD_INTERESTTAX: TFloatField;
    cdsAqcHistPosNET_PROCEED: TFloatField;
    cdsAqcHistPosSELL_VAL: TFloatField;
    cdsAqcHistPosLINKID: TLargeintField;
    cdsAqcHistPosPOSTED: TStringField;
    DeleteCostPrice1: TMenuItem;
    Edit1: TMenuItem;
    cdsAcq_HistCAP_GAIN_TAX: TFloatField;
    cdsTmpAquicitionBondsCAP_GAIN_TAX: TFloatField;
    cdsTmpAquicitionBondsCAP_GAIN: TFloatField;
    cdsAquisitionBondsCAP_GAIN_TAX: TFloatField;
    cdsAquisitionBondsCAP_GAIN: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsTmpInstrumentBondsBSChange(Sender: TField);
    procedure cdsTmpInstrumentBondsINSTRUMENT_IDChange(Sender: TField);
    procedure cdsTmpInstrumentBondsFACEVALUEChange(Sender: TField);
    procedure cdsTmpInstrumentBondsDUEDAYSChange(Sender: TField);
    procedure cdsTmpInstrumentBondsSPRICEChange(Sender: TField);
    procedure cdsAquisitionBondsCalcFields(DataSet: TDataSet);
    procedure cdsTmpInstrumentBondsBACCIDChange(Sender: TField);
    procedure cdsTmpInstrumentBondsSACCIDChange(Sender: TField);
    procedure btnOKClick(Sender: TObject);
    procedure cdsTmpAquicitionBondsCalcFields(DataSet: TDataSet);
    procedure AddHistoricalCostPrice1Click(Sender: TObject);
    procedure cdsTmpInstrumentBondsBPRICEChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DeleteCostPrice1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure cdsAqcHistPosACQ_PRICEChange(Sender: TField);
  private
    FBuySell: string;
    FTransDate, FDueDate: TDate;
    FBasis, FTax: Double;
    dSumAcqBonds,
    dTmpSumAcqBonds,
    FSumInterest,
    FSumInterestTax,
    fSumCostAmt, FProceed: Double;
    FAcrInterest: Double;
    FTmpAqcHistIDList: TStringList;

    procedure GetValueDate;
    procedure GetBuySellColour;
    procedure GetAqcBonds;
    procedure CalculatePeriod;
    procedure ReCalculateAqcBonds;
  public
    property BuySell: string read FBuySell write FBuySell;
  end;

var
  frmBondsMultiDealTicket: TfrmBondsMultiDealTicket;

implementation

{$R *.dfm}

uses DataGlobal, FormBondsDealTicketList, DataLookup, FormAddAqcPrice,
  FormEditAqcPrice;

procedure TfrmBondsMultiDealTicket.AddHistoricalCostPrice1Click(
  Sender: TObject);
var
  oForm: TfrmAddHistoricalAcqPrice;
  bCon: Boolean;
  iSAccID: Integer;
begin
  inherited;
  bCon    := True;
  iSAccID := StrToIntDef(cdsTmpInstrumentBondsSACCID.AsString, 0);

  if (iSAccID = 0) and (cdsTmpInstrumentBondsBS.AsString = 'S') then
    bCon := False;

  if bCon then
  begin
    oForm := TfrmAddHistoricalAcqPrice.Create(nil);

    TfrmAddHistoricalAcqPrice(oForm).ACCID     := cdsTmpInstrumentBondsSACCID.AsInteger;
    TfrmAddHistoricalAcqPrice(oForm).STOCKID   := cdsTmpInstrumentBondsINSTRUMENT_ID.AsInteger;
    TfrmAddHistoricalAcqPrice(oForm).STOCKCODE := cdsTmpInstrumentBondsINSTRUMENT_CODE.AsString;

    if oForm.ShowModal = mrOk then
    begin
      FTmpAqcHistIDList := TStringList.Create;
      TfrmAddHistoricalAcqPrice(oForm).cdsTmpStockPos.First;
      while not TfrmAddHistoricalAcqPrice(oForm).cdsTmpStockPos.Eof do
      begin
        FTmpAqcHistIDList.Add(TfrmAddHistoricalAcqPrice(oForm).cdsTmpStockPosACQ_HISID.AsString);
        TfrmAddHistoricalAcqPrice(oForm).cdsTmpStockPos.Next;
      end;
    end;
    FreeAndNil(oForm);

    GetAqcBonds;
    ReCalculateAqcBonds;
//    CalculatePeriod;
  end
  else
    MessageDlg('Insert buyer account before add history', mtError, [mbOk], 0);
end;

procedure TfrmBondsMultiDealTicket.btnOKClick(Sender: TObject);
var
  iMonth, iTradeID: integer;
  sTradeNo: string;
  i, j: Integer;
  iAccID: Integer;
  fNetPeoceed: Double;
begin
  if (cdsTmpInstrumentBondsFACEVALUE.AsFloat <> dTmpSumAcqBonds) and (cdsTmpAquicitionBonds.RecordCount > 0) then
    MessageDlg('Order value must same with summary value !', mtError, [mbOk], 0)
  else
  begin
    fNetPeoceed := 0;

    cdsTmpInstrumentBondsSCAPGAIN.AsFloat     := (cdsTmpInstrumentBondsSPROCEED.AsFloat - FProceed);
    cdsTmpInstrumentBondsSCAPGAIN_TAX.AsFloat := cdsTmpInstrumentBondsSCAPGAIN.AsFloat * (cdsMarketCAPGAINTAX.AsFloat / 100);
    cdsTmpInstrumentBondsSNETPROCEED.AsFloat  := (cdsTmpInstrumentBondsSPROCEED.AsFloat + cdsTmpInstrumentBondsINTEREST_AMT.AsFloat)
                                                 - cdsTmpInstrumentBondsSCAPGAIN_TAX.AsFloat
                                                 - cdsTmpInstrumentBondsSACR_INTEREST_TAX.AsFloat;

    cdsTmpInstrumentBondsBCAPGAIN.AsFloat     := (cdsTmpInstrumentBondsBPROCEED.AsFloat - FProceed);
    cdsTmpInstrumentBondsBCAPGAIN_TAX.AsFloat := cdsTmpInstrumentBondsBCAPGAIN.AsFloat * (cdsMarketCAPGAINTAX.AsFloat / 100);
    cdsTmpInstrumentBondsBNETPROCEED.AsFloat  := (cdsTmpInstrumentBondsBPROCEED.AsFloat + cdsTmpInstrumentBondsINTEREST_AMT.AsFloat)
                                                 - cdsTmpInstrumentBondsBCAPGAIN_TAX.AsFloat
                                                 - cdsTmpInstrumentBondsBACR_INTEREST_TAX.AsFloat;

    if cdsTmpInstrumentBondsBCAPGAIN_TAX.AsFloat < 0 then
    begin
      if (cdsTmpInstrumentBondsBCAPGAIN_TAX.AsFloat + cdsTmpInstrumentBondsBACR_INTEREST_TAX.AsFloat) < 0 then
      begin
        cdsTmpInstrumentBondsBACR_INTEREST_TAX.AsFloat := 0;
        cdsTmpInstrumentBondsBCAPGAIN_TAX.AsFloat      := 0;

        cdsTmpInstrumentBondsSACR_INTEREST_TAX.AsFloat := 0;
        cdsTmpInstrumentBondsSCAPGAIN_TAX.AsFloat      := 0;

        cdsTmpInstrumentBondsSNETPROCEED.AsFloat := (cdsTmpInstrumentBondsSPROCEED.AsFloat + cdsTmpInstrumentBondsINTEREST_AMT.AsFloat);
        cdsTmpInstrumentBondsBNETPROCEED.AsFloat := (cdsTmpInstrumentBondsBPROCEED.AsFloat + cdsTmpInstrumentBondsINTEREST_AMT.AsFloat);
      end;
    end;


    cdsTmpInstrumentBonds.Post;

    cdsBondsDealTicket.Close;
    cdsBondsDealTicket.Params[0].AsInteger := 0;
    cdsBondsDealTicket.Open;

    iMonth   := StrToIntDef(FormatDateTime('MM', dmGlobal.RemoteServer.GetTransDate), 0);
    iTradeID := dmGlobal.RemoteServer.GetSeq('main.B_BONDSDEALTICKET');
    sTradeNo := 'TB-'+dmGlobal.DecToRoman(iMonth)+'-'+ FormatDateTime('YYYY', dmGlobal.RemoteServer.GetTransDate)+'-'+
                FormatFloat('00000000', iTradeID);

    if cdsTmpInstrumentBondsBS.AsString = 'B' then
      iAccID := cdsTmpInstrumentBondsBACCID.AsInteger
    else
      iAccID := cdsTmpInstrumentBondsSACCID.AsInteger;

    cdsBondsDealTicket.Append;
    cdsBondsDealTicketTRADEBOND_ID.AsInteger := iTradeID;
    cdsBondsDealTicketTRADEBOND_NO.AsString  := sTradeNo;
    for i := 0 to cdsTmpInstrumentBonds.FieldCount -1 do
      cdsBondsDealTicket.Fields[i+2].AsVariant := cdsTmpInstrumentBonds.Fields[i].AsVariant;
    cdsBondsDealTicket.Post;

    cdsAcq_Hist.Close;
    cdsAcq_Hist.Params[0].AsInteger := -1;
    cdsAcq_Hist.Params[1].AsInteger := 0;
    cdsAcq_Hist.Open;

    cdsTmpAquicitionBonds.First;
    while not cdsTmpAquicitionBonds.Eof do
    begin
      cdsAcq_Hist.Close;
      cdsAcq_Hist.Params[0].AsInteger := -1;
      cdsAcq_Hist.Params[1].AsInteger := cdsTmpAquicitionBondsACQ_HISTID.AsInteger;
      cdsAcq_Hist.Open;

      if not cdsAcq_Hist.IsEmpty then
      begin
        cdsAcq_Hist.Edit;
        cdsAcq_HistSELL_VAL.AsFloat := cdsAcq_HistSELL_VAL.AsFloat + cdsTmpAquicitionBondsAVAIL.AsFloat;
        cdsAcq_Hist.Post;

        cdsAcq_Hist.ApplyUpdates(-1);
      end
      else
      begin
        cdsBondPos.Close;
        cdsBondPos.Params[0].AsInteger := cdsTmpInstrumentBondsSACCID.AsInteger;
        cdsBondPos.Params[1].AsInteger := cdsTmpInstrumentBondsINSTRUMENT_ID.AsInteger;
        cdsBondPos.Params[2].AsDate    := cdsTmpAquicitionBondsACQDATE.AsDateTime;
        cdsBondPos.Open;

        if not cdsBondPos.IsEmpty then
        begin
          cdsBondPos.Edit;
          cdsBondPosSELL_VALUE.AsFloat := cdsBondPosSELL_VALUE.AsFloat + cdsTmpAquicitionBondsAVAIL.AsFloat;
          cdsBondPos.Post;

          cdsBondPos.ApplyUpdates(-1);
        end;
      end;

      cdsAcq_Hist.Append;
      cdsAcq_HistACQ_HISID.AsInteger      := dmGlobal.RemoteServer.GetSeq('main.B_ACQ_HIS');
      cdsAcq_HistACCID.AsInteger          := cdsTmpInstrumentBondsSACCID.AsInteger;
      cdsAcq_HistBS.AsString              := 'S';
      cdsAcq_HistBONDID.AsInteger         := cdsTmpInstrumentBondsINSTRUMENT_ID.AsInteger;
      cdsAcq_HistLINKID.AsInteger         := iTradeID;
      cdsAcq_HistTRADEDATE.AsDateTime     := cdsTmpInstrumentBondsTRADEDATE.AsDateTime;
      cdsAcq_HistACQDATE.AsDateTime       := cdsTmpAquicitionBondsACQDATE.AsDateTime;
      cdsAcq_HistACQ_PRICE.AsFloat        := cdsTmpAquicitionBondsACQPRICE.AsFloat;
      cdsAcq_HistFACEVALUE.AsFloat        := cdsTmpAquicitionBondsAVAIL.AsFloat;
      cdsAcq_HistPROCEED.AsFloat          := dmGlobal.RoundFloatNumber(cdsAcq_HistACQ_PRICE.AsFloat / 100 * cdsAcq_HistFACEVALUE.AsFloat, 2);
      cdsAcq_HistHOLD_TAX.AsFloat         := FTax;
      cdsAcq_HistACC_INTEREST.AsFloat     := cdsTmpAquicitionBondsINTEREST.AsFloat;
      cdsAcq_HistHOLD_PERIOD.AsInteger    := cdsTmpAquicitionBondsHOLDING.AsInteger;
      cdsAcq_HistHOLD_INTEREST.AsFloat    := cdsTmpAquicitionBondsHOLD_INTEREST.AsFloat;
      cdsAcq_HistHOLD_INTERESTTAX.AsFloat := cdsTmpAquicitionBondsHOLD_INTEREST_TAX.AsFloat;
      cdsAcq_HistCAP_GAIN_TAX.AsFloat     := cdsTmpAquicitionBondsCAP_GAIN_TAX.AsFloat;
      cdsAcq_HistCAP_GAIN.AsFloat         := cdsTmpAquicitionBondsCAP_GAIN.AsFloat;
      cdsAcq_HistNET_PROCEED.AsFloat      := cdsAcq_HistPROCEED.AsFloat + cdsTmpAquicitionBondsINTEREST.AsFloat - cdsTmpAquicitionBondsHOLD_INTEREST_TAX.AsFloat - cdsAcq_HistCAP_GAIN_TAX.AsFloat;
      fNetPeoceed                         := fNetPeoceed + cdsAcq_HistNET_PROCEED.AsFloat;
      cdsAcq_Hist.Post;

      cdsAcq_Hist.ApplyUpdates(-1);
      cdsTmpAquicitionBonds.Next;
    end;

    cdsAcq_Hist.Append;
    cdsAcq_HistACQ_HISID.AsInteger      := dmGlobal.RemoteServer.GetSeq('main.B_ACQ_HIS');
    cdsAcq_HistACCID.AsInteger          := cdsTmpInstrumentBondsBACCID.AsInteger;
    cdsAcq_HistBS.AsString              := 'B';
    cdsAcq_HistBONDID.AsInteger         := cdsTmpInstrumentBondsINSTRUMENT_ID.AsInteger;
    cdsAcq_HistLINKID.AsInteger         := iTradeID;
    cdsAcq_HistTRADEDATE.AsDateTime     := cdsTmpInstrumentBondsTRADEDATE.AsDateTime;
    cdsAcq_HistACQDATE.AsDateTime       := cdsTmpInstrumentBondsVALUEDATE.AsDateTime;
    cdsAcq_HistACQ_PRICE.AsFloat        := cdsTmpInstrumentBondsBPRICE.AsFloat;
    cdsAcq_HistFACEVALUE.AsFloat        := cdsTmpInstrumentBondsFACEVALUE.AsFloat;
    cdsAcq_HistPROCEED.AsFloat          := cdsTmpInstrumentBondsBPROCEED.AsFloat;
    cdsAcq_HistCAP_GAIN.AsFloat         := cdsTmpInstrumentBondsBCAPGAIN.AsFloat;
    cdsAcq_HistCAP_GAIN_TAX.AsFloat     := cdsTmpInstrumentBondsBCAPGAIN.AsFloat * (cdsTmpInstrumentBondsBCAPGAINTAX.AsFloat / 100);
    cdsAcq_HistACC_INTEREST.AsFloat     := FAcrInterest;
    cdsAcq_HistHOLD_PERIOD.AsFloat      := cdsTmpInstrumentBondsHOLDPERIOD.AsFloat;
    cdsAcq_HistHOLD_INTEREST.AsFloat    := dmGlobal.RoundFloatNumber(cdsTmpInstrumentBondsHOLDING_INTEREST.AsFloat, 2);
    cdsAcq_HistHOLD_TAX.AsFloat         := FTax;
    cdsAcq_HistHOLD_INTERESTTAX.AsFloat := dmGlobal.RoundFloatNumber(cdsAcq_HistHOLD_INTEREST.AsFloat * cdsAcq_HistHOLD_TAX.AsFloat  / 100, 2);
    cdsAcq_HistNET_PROCEED.AsFloat      := fNetPeoceed;
    cdsAcq_Hist.Post;
    cdsAcq_Hist.ApplyUpdates(-1);


    cdsBondsDealTicket.ApplyUpdates(-1);
    ModalResult := mrOk;
    inherited;
  end;
end;

procedure TfrmBondsMultiDealTicket.CalculatePeriod;
var
  i: Integer;
  fInterest: Double;
  fSumInterest,
  fSumInterestTax: Double;
begin
  if cdsTmpInstrumentBondsBS.AsString = 'B' then
    FTax := cdsTmpInstrumentBondsSTAX.AsFloat
  else
    FTax := cdsTmpInstrumentBondsBTAX.AsFloat;

  if cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD.AsInteger = 0 then
    FBasis := 360
  else
    FBasis := 365;

  FSumInterest    := 0;
  FSumInterestTax := 0;

  cdsTmpAquicitionBonds.DisableControls;
  cdsTmpAquicitionBonds.First;
  while not cdsTmpAquicitionBonds.Eof do
  begin
    cdsCalcFactor.Close;
    cdsCalcFactor.Params[0].AsDate    := cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime;
    cdsCalcFactor.Params[1].AsDate    := cdsTmpInstrumentBondsNEXTCOUPONDATE.AsDateTime;
    cdsCalcFactor.Params[2].AsDate    := cdsTmpInstrumentBondsVALUEDATE.AsDateTime;
    cdsCalcFactor.Params[3].AsDate    := cdsAquisitionBondsACQDATE.AsDateTime;
    cdsCalcFactor.Params[4].AsInteger := cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD.AsInteger;
    cdsCalcFactor.Params[5].AsInteger := cdsDetailInstrumentBondsCOUPON_IN_YEAR.AsInteger;
    cdsCalcFactor.Open;

//    fInterest := cdsTmpAquicitionBondsHOLDING.AsFloat / FBasis * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) *
//                 cdsTmpAquicitionBondsAVAIL.AsFloat;

//    cdsTmpAquicitionBonds.Edit;
//    cdsTmpAquicitionBondsHOLD_INTEREST.AsFloat     := dmGlobal.RoundFloatNumber(fInterest, 2);
//    cdsTmpAquicitionBondsHOLD_INTEREST_TAX.AsFloat := dmGlobal.RoundFloatNumber(fInterest * FTax / 100, 2);
//    cdsTmpAquicitionBonds.Post;

    if cdsTmpAquicitionBondsACQDATE.AsDateTime > cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime then
      fInterest := cdsCalcFactorHOLDING_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpAquicitionBondsAVAIL.AsFloat
    else
      fInterest := cdsCalcFactorACCRUED_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpAquicitionBondsAVAIL.AsFloat;

    cdsTmpAquicitionBonds.Edit;
    cdsTmpAquicitionBondsHOLD_INTEREST.AsFloat     := dmGlobal.RoundFloatNumber(fInterest, 2);
    cdsTmpAquicitionBondsHOLD_INTEREST_TAX.AsFloat := dmGlobal.RoundFloatNumber(fInterest * FTax / 100, 2);
    cdsTmpAquicitionBonds.Post;

    fSumInterest    := fSumInterest + cdsTmpAquicitionBondsHOLD_INTEREST.AsFloat;
    fSumInterestTax := fSumInterestTax + cdsTmpAquicitionBondsHOLD_INTEREST_TAX.AsFloat;

    cdsTmpAquicitionBonds.Next;
  end;

  cdsTmpInstrumentBondsHOLD_TAX.AsFloat             := FTax;
  cdsTmpInstrumentBondsHOLDING_INTEREST.AsFloat     := fSumInterest;
  cdsTmpInstrumentBondsHOLDING_INTEREST_TAX.AsFloat := fSumInterestTax;
  cdsTmpAquicitionBonds.EnableControls;
end;

procedure TfrmBondsMultiDealTicket.cdsAqcHistPosACQ_PRICEChange(Sender: TField);
begin
  inherited;
  if cdsAqcHistPos.State in [dsEdit] then
    cdsAqcHistPosPROCEED.AsFloat := cdsAqcHistPosFACEVALUE.AsFloat * (cdsAqcHistPosACQ_PRICE.AsFloat / 100);
end;

procedure TfrmBondsMultiDealTicket.cdsAquisitionBondsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsAquisitionBondsProceed.AsFloat := dmGlobal.RoundFloatNumber(cdsAquisitionBondsACQPRICE.AsFloat / 100 * cdsAquisitionBondsAVAIL.AsFloat, 2);
  cdsAquisitionBondsPERIOD.AsFloat  := cdsTmpInstrumentBondsVALUEDATE.AsFloat + 1 - cdsAquisitionBondsACQDATE.AsDateTime;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpAquicitionBondsCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsTmpAquicitionBondsProceed.AsFloat := dmGlobal.RoundFloatNumber(cdsTmpAquicitionBondsACQPRICE.AsFloat / 100 * cdsTmpAquicitionBondsAVAIL.AsFloat, 2);
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsBACCIDChange(
  Sender: TField);
begin
  inherited;
  if cdsTmpInstrumentBondsBS.AsString = 'B' then
  begin
    if dmGlobal.IntDataLookup.cdsLuCustomerBonds.Locate('ACCID', cdsTmpInstrumentBondsBACCID.AsInteger, []) then
    begin
      cdsTmpInstrumentBondsBACCCODE.AsString := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCCODE.AsString;
      cdsTmpInstrumentBondsBACCNAME.AsString := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCNAME.AsString;
      cdsTmpInstrumentBondsBACCTYPE.AsString := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCTYPE.AsString;
      if dmGlobal.IntDataLookup.cdsLuCustomerBondsBTAX.AsFloat = 0 then
        cdsTmpInstrumentBondsBTAX.AsFloat    := 15
      else
        cdsTmpInstrumentBondsBTAX.AsFloat    := dmGlobal.IntDataLookup.cdsLuCustomerBondsBTAX.AsFloat;
    end;

     GetAqcBonds;
    ReCalculateAqcBonds;
  end;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsBPRICEChange(
  Sender: TField);
begin
  inherited;
  if cdsTmpInstrumentBondsBS.AsString = 'B' then
  begin
    cdsTmpInstrumentBondsBPROCEED.AsFloat     := dmGlobal.RoundFloatNumber(cdsTmpInstrumentBondsBPRICE.AsFloat / 100 *  cdsTmpInstrumentBondsFACEVALUE.AsFloat, 2);
    cdsTmpInstrumentBondsSPRICE.AsFloat       := cdsTmpInstrumentBondsBPRICE.AsFloat;
    cdsTmpInstrumentBondsSPROCEED.AsFloat     := cdsTmpInstrumentBondsBPROCEED.AsFloat;
  end;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsBSChange(
  Sender: TField);
begin
  inherited;
  if cdsTmpInstrumentBondsBS.AsString = 'B' then
  begin
    cdsTmpInstrumentBondsSACCID.AsInteger  := cdsHouseAccount_BSTAxACCID.AsInteger;
    cdsTmpInstrumentBondsSACCCODE.AsString := cdsHouseAccount_BSTAxACCCODE.AsString;
    cdsTmpInstrumentBondsSACCNAME.AsString := cdsHouseAccount_BSTAxACCNAME.AsString;
    cdsTmpInstrumentBondsSACCTYPE.AsString := cdsHouseAccount_BSTAxACCTYPE.AsString;
    cdsTmpInstrumentBondsSTAX.AsFloat      := cdsHouseAccount_BSTAxSTAX.AsFloat;

    cdsTmpInstrumentBondsBACCID.AsInteger  := 0;
    cdsTmpInstrumentBondsBACCCODE.AsString := '';
    cdsTmpInstrumentBondsBACCNAME.AsString := '';
    cdsTmpInstrumentBondsBACCTYPE.AsString := '';
    cdsTmpInstrumentBondsBTAX.AsFloat      := 0;
  end
  else
  begin
    cdsTmpInstrumentBondsBACCID.AsInteger  := cdsHouseAccount_BSTAxACCID.AsInteger;
    cdsTmpInstrumentBondsBACCCODE.AsString := cdsHouseAccount_BSTAxACCCODE.AsString;
    cdsTmpInstrumentBondsBACCNAME.AsString := cdsHouseAccount_BSTAxACCNAME.AsString;
    cdsTmpInstrumentBondsBACCTYPE.AsString := cdsHouseAccount_BSTAxACCTYPE.AsString;
    cdsTmpInstrumentBondsBTAX.AsFloat      := cdsHouseAccount_BSTAxBTAX.AsFloat;

    cdsTmpInstrumentBondsSACCID.AsInteger  := 0;
    cdsTmpInstrumentBondsSACCCODE.AsString := '';
    cdsTmpInstrumentBondsSACCNAME.AsString := '';
    cdsTmpInstrumentBondsSACCTYPE.AsString := '';
    cdsTmpInstrumentBondsSTAX.AsFloat      := 0;
  end;

  GetBuySellColour;
  GetAqcBonds;
  ReCalculateAqcBonds;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsDUEDAYSChange(
  Sender: TField);
begin
  inherited;
  GetValueDate;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsFACEVALUEChange(
  Sender: TField);
begin
  inherited;
//  if cdsTmpAquicitionBondsACQDATE.AsDateTime > cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime then
//    cdsTmpInstrumentBondsINTEREST_AMT.AsFloat := dmGlobal.RoundFloatNumber(cdsCalcFactorHOLDING_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpInstrumentBondsFACEVALUE.AsFloat, 2)
//  else
    cdsTmpInstrumentBondsINTEREST_AMT.AsFloat := dmGlobal.RoundFloatNumber(cdsCalcFactorACCRUED_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpInstrumentBondsFACEVALUE.AsFloat, 2);

  ReCalculateAqcBonds;
//  CalculatePeriod;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsINSTRUMENT_IDChange(
  Sender: TField);
begin
  inherited;
  cdsDetailInstrumentBonds.Close;
  cdsDetailInstrumentBonds.Params[0].AsInteger := cdsTmpInstrumentBondsINSTRUMENT_ID.AsInteger;
  cdsDetailInstrumentBonds.Params[1].AsDate    := cdsTmpInstrumentBondsVALUEDATE.AsDateTime;
  cdsDetailInstrumentBonds.Open;

  cdsMarket.Close;
  cdsMarket.Params[0].AsString := cdsDetailInstrumentBondsMARKETCODE.AsString;
  cdsMarket.Open;

  cdsTmpInstrumentBondsMATURITY_DATE.AsDateTime  := cdsDetailInstrumentBondsMATURITYDATE.AsDateTime;
  cdsTmpInstrumentBondsINSTRUMENT_CODE.AsString  := cdsDetailInstrumentBondsLOCALCODE.AsString;
  cdsTmpInstrumentBondsCCY.AsString              := cdsDetailInstrumentBondsCCY.AsString;
  cdsTmpInstrumentBondsSHORTNAME.AsString        := cdsDetailInstrumentBondsSHORTNAME.AsString;
  cdsTmpInstrumentBondsMARKETCODE.AsString       := cdsDetailInstrumentBondsMARKETCODE.AsString;
  cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime := cdsDetailInstrumentBondsLASTCOUPONDATE.AsDateTime;
  cdsTmpInstrumentBondsNEXTCOUPONDATE.AsDateTime := cdsDetailInstrumentBondsNEXTCOUPONDATE.AsDateTime;
  cdsTmpInstrumentBondsISINCODE.AsString         := cdsDetailInstrumentBondsISINCODE.AsString;
  cdsTmpInstrumentBondsINTERESTRATE.AsFloat      := cdsDetailInstrumentBondsINTERESTRATE.AsFloat;
  cdsTmpInstrumentBondsBCAPGAINTAX.AsFloat       := cdsMarketCAPGAINTAX.AsFloat;
  cdsTmpInstrumentBondsSCAPGAINTAX.AsFloat       := cdsMarketCAPGAINTAX.AsFloat;

  cdsCalcFactor.Close;
  cdsCalcFactor.Params[0].AsDate    := cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime;
  cdsCalcFactor.Params[1].AsDate    := cdsTmpInstrumentBondsNEXTCOUPONDATE.AsDateTime;
  cdsCalcFactor.Params[2].AsDate    := cdsTmpInstrumentBondsVALUEDATE.AsDateTime;
  cdsCalcFactor.Params[3].AsDate    := cdsAquisitionBondsACQDATE.AsDateTime;
  cdsCalcFactor.Params[4].AsInteger := cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD.AsInteger;
  cdsCalcFactor.Params[5].AsInteger := cdsDetailInstrumentBondsCOUPON_IN_YEAR.AsInteger;
  cdsCalcFactor.Open;

  cdsTmpInstrumentBondsACCRDAYS.AsInteger        := cdsCalcFactorACCRUED_DAYS.AsInteger;
  cdsTmpInstrumentBondsPERIODECOUPON.AsInteger   := cdsCalcFactorCOUPON_DAYS.AsInteger;


  GetAqcBonds;

  cdsCalcFactor.Close;
  cdsCalcFactor.Params[0].AsDate    := cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime;
  cdsCalcFactor.Params[1].AsDate    := cdsTmpInstrumentBondsNEXTCOUPONDATE.AsDateTime;
  cdsCalcFactor.Params[2].AsDate    := cdsTmpInstrumentBondsVALUEDATE.AsDateTime;
  cdsCalcFactor.Params[3].AsDate    := cdsAquisitionBondsACQDATE.AsDateTime;
  cdsCalcFactor.Params[4].AsInteger := cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD.AsInteger;
  cdsCalcFactor.Params[5].AsInteger := cdsDetailInstrumentBondsCOUPON_IN_YEAR.AsInteger;
  cdsCalcFactor.Open;

  cdsTmpInstrumentBondsINTEREST_AMT.AsFloat := dmGlobal.RoundFloatNumber(cdsCalcFactorACCRUED_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpInstrumentBondsFACEVALUE.AsFloat, 2);

  ReCalculateAqcBonds;
//  CalculatePeriod;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsSACCIDChange(
  Sender: TField);
begin
  inherited;
  if cdsTmpInstrumentBondsBS.AsString = 'S' then
  begin
    if dmGlobal.IntDataLookup.cdsLuCustomerBonds.Locate('ACCID', cdsTmpInstrumentBondsSACCID.AsInteger, []) then
    begin
      cdsTmpInstrumentBondsSACCCODE.AsString := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCCODE.AsString;
      cdsTmpInstrumentBondsSACCNAME.AsString := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCNAME.AsString;
      cdsTmpInstrumentBondsSACCTYPE.AsString := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCTYPE.AsString;
      if dmGlobal.IntDataLookup.cdsLuCustomerBondsSTAX.AsFloat = 0 then
        cdsTmpInstrumentBondsSTAX.AsFloat    := 15
      else
        cdsTmpInstrumentBondsSTAX.AsFloat    := dmGlobal.IntDataLookup.cdsLuCustomerBondsSTAX.AsFloat;
    end;

    GetAqcBonds;
    ReCalculateAqcBonds;
  end;
end;

procedure TfrmBondsMultiDealTicket.cdsTmpInstrumentBondsSPRICEChange(
  Sender: TField);
begin
  inherited;
  if cdsTmpInstrumentBondsBS.AsString = 'S' then
  begin
    cdsTmpInstrumentBondsSPROCEED.AsFloat := dmGlobal.RoundFloatNumber(cdsTmpInstrumentBondsSPRICE.AsFloat / 100 *  cdsTmpInstrumentBondsFACEVALUE.AsFloat, 2);
    cdsTmpInstrumentBondsBPRICE.AsFloat   := cdsTmpInstrumentBondsSPRICE.AsFloat;
    cdsTmpInstrumentBondsBPROCEED.AsFloat := cdsTmpInstrumentBondsSPROCEED.AsFloat;
  end;

  GetAqcBonds;
  ReCalculateAqcBonds;
//  CalculatePeriod;
end;

procedure TfrmBondsMultiDealTicket.DeleteCostPrice1Click(Sender: TObject);
var
  iRes: Integer;
begin
  inherited;
  if MessageDlg('Delete Aquicition Bods ?', mtConfirmation, [mbYes, mbNo], 0) =  mrYes then
  begin
    cdsAqcHistPos.Close;
    cdsAqcHistPos.Params[0].AsInteger := 0;
    cdsAqcHistPos.Params[1].AsInteger := cdsTmpAquicitionBondsACQ_HISTID.AsInteger;
    cdsAqcHistPos.Open;

    if cdsAqcHistPos.IsEmpty then
      MessageDlg('Can not delete Real Bond Position !', mtInformation, [mbOk], 0)
    else
    begin
      iRes := FTmpAqcHistIDList.IndexOf(cdsTmpAquicitionBondsACQ_HISTID.AsString);
      if iRes <> -1 then
        FTmpAqcHistIDList.Delete(iRes);

      cdsAqcHistPos.Delete;
      cdsAqcHistPos.ApplyUpdates(-1);

      GetAqcBonds;
      ReCalculateAqcBonds;
//      CalculatePeriod;
    end;
  end;
end;

procedure TfrmBondsMultiDealTicket.Edit1Click(Sender: TObject);
var
  oForm: TfrmEditAqcPrice;
begin
  inherited;
  cdsAqcHistPos.Close;
  cdsAqcHistPos.Params[0].AsInteger := 0;
  cdsAqcHistPos.Params[1].AsInteger := cdsTmpAquicitionBondsACQ_HISTID.AsInteger;
  cdsAqcHistPos.Open;

  if cdsAqcHistPos.IsEmpty then
    MessageDlg('Can not edit Real Bond Position !', mtInformation, [mbOk], 0)
  else
  begin
    oForm := TfrmEditAqcPrice.Create(nil);
    if oForm.ShowModal = mrOk then
    begin
      cdsAqcHistPos.Edit;
      cdsAqcHistPos.Post;
      cdsAqcHistPos.ApplyUpdates(-1);

      GetAqcBonds;
      ReCalculateAqcBonds;
//      CalculatePeriod;
    end;
    FreeAndNil(oForm);
  end;
end;

procedure TfrmBondsMultiDealTicket.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
begin
  if Assigned(FTmpAqcHistIDList) then
  begin
    if FTmpAqcHistIDList.Count > 0 then
    begin
      for i := 0 to FTmpAqcHistIDList.Count -1 do
      begin
        cdsAcq_Hist.Close;
        cdsAcq_Hist.Params[0].AsInteger := -1;
        cdsAcq_Hist.Params[1].AsInteger := StrToInt(FTmpAqcHistIDList.Strings[i]);
        cdsAcq_Hist.Open;

        cdsAcq_Hist.Delete;
        cdsAcq_Hist.ApplyUpdates(-1);
      end;
    end;

    FreeAndNil(FTmpAqcHistIDList);
  end;
  inherited;
end;

procedure TfrmBondsMultiDealTicket.FormCreate(Sender: TObject);
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    luCCYOn;
    luInstrumentBondsOn(FTransDate);
    luMarketOn;

    cdsLuCustomerBonds.Close;
    cdsLuCustomerBonds.Open;
  end;

  cdsHouseAccount_BSTAx.Close;
  cdsHouseAccount_BSTAx.Open;
end;

procedure TfrmBondsMultiDealTicket.FormShow(Sender: TObject);
begin
  inherited;
  cdsTmpInstrumentBonds.Close;
  cdsTmpInstrumentBonds.CreateDataSet;

  cdsTmpAquicitionBonds.Close;
  cdsTmpAquicitionBonds.CreateDataSet;

  cdsTmpInstrumentBonds.Append;
  cdsTmpInstrumentBondsBS.AsString           := FBuySell;
  cdsTmpInstrumentBondsTRADEDATE.AsDateTime  := FTransDate;
  cdsTmpInstrumentBondsDUEDAYS.AsInteger     := 2;
  cdsTmpInstrumentBondsVALUEDATE.AsDateTime  := FTransDate + 2;
  cdsTmpInstrumentBondsSTAT.AsString         := 'O';
  cdsTmpInstrumentBondsSETTLE_INSTR.AsString := 'VP';
  cdsTmpInstrumentBondsMARKETCODE.AsString   := 'IDX';


  GetBuySellColour;
end;

procedure TfrmBondsMultiDealTicket.GetAqcBonds;
var
  i: Integer;
  dInterestAmt: Double;
  iAccID: integer;
begin
  if cdsTmpInstrumentBondsBS.AsString = 'S' then
    iAccID := StrToIntDef(cdsTmpInstrumentBondsSACCID.AsString, 0)
  else
    iAccID := StrToIntDef(cdsTmpInstrumentBondsBACCID.AsString, 0);

  cdsAquisitionBonds.Close;
  cdsAquisitionBonds.Params[0].AsInteger := iAccID;
  cdsAquisitionBonds.Params[1].AsInteger := StrToIntDef(cdsTmpInstrumentBondsINSTRUMENT_ID.AsString, 0);
  cdsAquisitionBonds.Params[2].AsDate    := cdsTmpInstrumentBondsTRADEDATE.AsDateTime;
  cdsAquisitionBonds.Open;

  dSumAcqBonds    := 0;
  dTmpSumAcqBonds := 0;
  dInterestAmt    := 0;

  cdsTmpAquicitionBonds.EmptyDataSet;
  cdsAquisitionBonds.First;
  while not cdsAquisitionBonds.Eof do
  begin
    dSumAcqBonds := dSumAcqBonds + cdsAquisitionBondsAVAIL.AsFloat;

    cdsTmpAquicitionBonds.Append;
    for i := 0 to cdsAquisitionBonds.FieldCount -2 do
      cdsTmpAquicitionBonds.Fields[i].AsVariant := cdsAquisitionBonds.Fields[i].AsVariant;
    cdsTmpAquicitionBonds.Post;

    cdsAquisitionBonds.Next;
  end;
end;

procedure TfrmBondsMultiDealTicket.GetBuySellColour;
begin
  if cdsTmpInstrumentBondsBS.AsString = 'B' then
  begin
    loBACC.Visible := True;
    loSACC.Visible := False;
    txtBS.Caption  := 'BUY';
    pnlBS.Color    := clRed;
  end
  else
  begin
    loSACC.Visible := True;
    loBACC.Visible := False;
    txtBS.Caption  := 'SELL';
    pnlBS.Color    := clLime;
  end;
end;

procedure TfrmBondsMultiDealTicket.GetValueDate;
begin
  if (not VarIsNullDate(cdsTmpInstrumentBondsTRADEDATE.AsDateTime)) and
     (not VarIsNull(cdsTmpInstrumentBondsDUEDAYS.AsInteger)) then
  begin
    cdsTmpInstrumentBondsVALUEDATE.AsDateTime := cdsTmpInstrumentBondsTRADEDATE.AsDateTime + cdsTmpInstrumentBondsDUEDAYS.AsInteger;
  end;
end;

procedure TfrmBondsMultiDealTicket.ReCalculateAqcBonds;
var
  dSum, dSum1,
  fCapGain: Double;
  dInterestAmt,
  dInterestTaxAmt: Double;
  i: Integer;
  dHoldInterestTax: Double;
  dAcrInterest, dAcrInterestTax: Double;
  bRepeat: Boolean;
begin
  cdsAquisitionBonds.First;

  dSum             := 0;
  FProceed         := 0;
  dInterestAmt     := 0;
  dInterestTaxAmt  := 0;
  dHoldInterestTax := 0;
  dAcrInterestTax  := 0;
  dAcrInterest     := 0;
  bRepeat          := False;

  if cdsTmpInstrumentBondsBS.AsString = 'B' then
    FTax := cdsTmpInstrumentBondsSTAX.AsFloat
  else
    FTax := cdsTmpInstrumentBondsBTAX.AsFloat;

  if cdsTmpAquicitionBonds.RecordCount > 0 then
  begin
    cdsTmpAquicitionBonds.EmptyDataSet;
    if cdsTmpInstrumentBondsFACEVALUE.AsFloat > 0 then
    begin
      repeat
        if (cdsTmpInstrumentBondsFACEVALUE.AsFloat > (dSum + cdsAquisitionBondsAVAIL.AsFloat)) or
           (cdsTmpInstrumentBondsFACEVALUE.AsFloat = (dSum + cdsAquisitionBondsAVAIL.AsFloat)) then
        begin
          dSum := dSum + cdsAquisitionBondsAVAIL.AsFloat;

          cdsTmpAquicitionBonds.Append;
          for i := 0 to cdsAquisitionBonds.FieldCount -1 do
            cdsTmpAquicitionBonds.Fields[i].AsVariant := cdsAquisitionBonds.Fields[i].AsVariant;
        end
        else if cdsTmpInstrumentBondsFACEVALUE.AsFloat < (dSum + cdsAquisitionBondsAVAIL.AsFloat) then
        begin
          dSum1 := (cdsAquisitionBondsAVAIL.AsFloat - (cdsTmpInstrumentBondsFACEVALUE.AsFloat - dSum));
          dSum  := dSum + (cdsAquisitionBondsAVAIL.AsFloat - dSum1);

          cdsTmpAquicitionBonds.Append;
          for i := 0 to cdsAquisitionBonds.FieldCount -1 do
            cdsTmpAquicitionBonds.Fields[i].AsVariant := cdsAquisitionBonds.Fields[i].AsVariant;
          cdsTmpAquicitionBondsAVAIL.AsFloat := (cdsAquisitionBondsAVAIL.AsFloat - dSum1);
        end;
        FProceed := FProceed + cdsTmpAquicitionBondsProceed.AsFloat;

        cdsCalcFactor.Close;
        cdsCalcFactor.Params[0].AsDate    := cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime;
        cdsCalcFactor.Params[1].AsDate    := cdsTmpInstrumentBondsNEXTCOUPONDATE.AsDateTime;
        cdsCalcFactor.Params[2].AsDate    := cdsTmpInstrumentBondsVALUEDATE.AsDateTime;
        cdsCalcFactor.Params[3].AsDate    := cdsAquisitionBondsACQDATE.AsDateTime;
        cdsCalcFactor.Params[4].AsInteger := cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD.AsInteger;
        cdsCalcFactor.Params[5].AsInteger := cdsDetailInstrumentBondsCOUPON_IN_YEAR.AsInteger;
        cdsCalcFactor.Open;

        cdsTmpAquicitionBondsHOLDING.AsInteger := cdsCalcFactorHOLDING_DAYS.AsInteger;

        if cdsTmpAquicitionBondsACQDATE.AsDateTime > cdsTmpInstrumentBondsLASTCOUPONDATE.AsDateTime then
          dInterestAmt   := dmGlobal.RoundFloatNumber(cdsCalcFactorHOLDING_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpAquicitionBondsAVAIL.AsFloat, 2)
        else
          dInterestAmt   := dmGlobal.RoundFloatNumber(cdsCalcFactorACCRUED_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpAquicitionBondsAVAIL.AsFloat, 2);

        dHoldInterestTax := dHoldInterestTax + dInterestAmt;
        dInterestTaxAmt  := dmGlobal.RoundFloatNumber(dInterestAmt * (FTax / 100), 2);

        dAcrInterest     := dmGlobal.RoundFloatNumber(cdsCalcFactorACCRUED_FACTOR.AsFloat * (cdsTmpInstrumentBondsINTERESTRATE.AsFloat / 100) * cdsTmpAquicitionBondsAVAIL.AsFloat, 2);
        dAcrInterestTax  := dAcrInterestTax + dAcrInterest;

        cdsTmpAquicitionBondsHOLD_INTEREST.AsFloat     := dInterestAmt;
        cdsTmpAquicitionBondsHOLD_INTEREST_TAX.AsFloat := dInterestTaxAmt;

        cdsTmpAquicitionBondsINTEREST.AsFloat     := dAcrInterest;
        cdsTmpAquicitionBondsINTEREST_TAX.AsFloat := dmGlobal.RoundFloatNumber(cdsTmpAquicitionBondsINTEREST.AsFloat * (cdsHouseAccount_BSTAxBTAX.AsFloat / 100), 2);

        cdsTmpAquicitionBondsCAP_GAIN.AsFloat     := ((cdsTmpInstrumentBondsBPRICE.AsFloat - cdsTmpAquicitionBondsACQPRICE.AsFloat) / 100) * cdsTmpAquicitionBondsAVAIL.AsFloat;
        cdsTmpAquicitionBondsCAP_GAIN_TAX.AsFloat := dmGlobal.RoundFloatNumber(cdsTmpAquicitionBondsCAP_GAIN.AsFloat, 2) * (cdsTmpInstrumentBondsBCAPGAINTAX.AsFloat / 100);

        cdsTmpAquicitionBonds.Post;
        cdsAquisitionBonds.Next;

        if not cdsAquisitionBonds.Eof then
          bRepeat := dSum = cdsTmpInstrumentBondsFACEVALUE.AsFloat
        else
          bRepeat := True;
      until bRepeat;

      cdsTmpInstrumentBondsHOLD_TAX.AsFloat             := FTax;
      cdsTmpInstrumentBondsHOLDING_INTEREST.AsFloat     := dHoldInterestTax;
      cdsTmpInstrumentBondsHOLDING_INTEREST_TAX.AsFloat := dmGlobal.RoundFloatNumber(dHoldInterestTax * (FTax / 100), 2);;

      FAcrInterest := dmGlobal.RoundFloatNumber(dAcrInterestTax, 2);
      cdsTmpInstrumentBondsBACR_INTEREST_TAX.AsFloat := dmGlobal.RoundFloatNumber(dHoldInterestTax * (cdsHouseAccount_BSTAxBTAX.AsFloat / 100), 2);
      cdsTmpInstrumentBondsSACR_INTEREST_TAX.AsFloat := dmGlobal.RoundFloatNumber(dHoldInterestTax * (cdsHouseAccount_BSTAxSTAX.AsFloat / 100), 2);

      dTmpSumAcqBonds := dSum;
    end
    else
      GetAqcBonds;
  end;

end;

end.
