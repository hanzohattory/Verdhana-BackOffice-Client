unit FormAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxImageComboBox, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxRadioGroup, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxBlobEdit, cxLabel,
  dxSkinsCore, Vcl.ExtCtrls, Vcl.DBCtrls, cxDBEditRepository,
  cxEditRepositoryItems, Datasnap.DBClient, NClientDataset, cxCurrencyEdit,
  cxButtonEdit, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView,
  cxCalendar, dxLayoutLookAndFeels, dxBarBuiltInMenu, cxGridViewLayoutContainer,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges, dxScrollbarAnnotations;

const
  CCTYPE_CASH = 'CS';
  CCTYPE_REG = 'RV';
  CCTYPE_RATIO = 'TV';
  CCTYPE_APPRLIMIT = 'AL';

type
  TfrmAccount = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cbBusType: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    pageAccount: TcxPageControl;
    tabGeneral: TcxTabSheet;
    tabCommission: TcxTabSheet;
    tabCharges: TcxTabSheet;
    dsCharge: TDataSource;
    dsComm: TDataSource;
    grdComm: TcxGrid;
    gvwComm: TcxGridDBTableView;
    gvwCommCHANNELCODE: TcxGridDBColumn;
    gvwCommMARKETCODE: TcxGridDBColumn;
    gvwCommCOMM_ID: TcxGridDBColumn;
    gvwCommDESCRIPTION: TcxGridDBColumn;
    gvwCommCALC_METHOD: TcxGridDBColumn;
    gvwCommUSE_MINCOMM: TcxGridDBColumn;
    gvwCommWITH_SELLTAX: TcxGridDBColumn;
    grdCommLevel1: TcxGridLevel;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    chkWAPU: TcxDBCheckBox;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutGroup;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Group3: TdxLayoutGroup;
    tabBank: TcxTabSheet;
    dsBank: TDataSource;
    cxGrid1: TcxGrid;
    gvwBank: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    gvwBankBNCODE: TcxGridDBColumn;
    gvwBankBANKACCNO: TcxGridDBColumn;
    gvwBankBANKACCNAME: TcxGridDBColumn;
    gvwBankBANKBRANCH: TcxGridDBColumn;
    gvwBankISRDN: TcxGridDBColumn;
    gvwBankBNCHGSTYPE: TcxGridDBColumn;
    btnGetSetting: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    tabLedgerAcc: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    dsLedgerAcc: TDataSource;
    cxDBCheckBox16: TcxDBCheckBox;
    dxLayoutControl5Item16: TdxLayoutItem;
    cxDBImageComboBox5: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cbSales: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    tabExtRef: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    dsExtRef: TDataSource;
    cxGridDBTableView2EXTSYS_ID: TcxGridDBColumn;
    cxGridDBTableView2EXTREF_CODE: TcxGridDBColumn;
    tabContact: TcxTabSheet;
    dsContact: TDataSource;
    cxGrid5: TcxGrid;
    cxGridLevel5: TcxGridLevel;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cbBranch: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl3Item2: TdxLayoutItem;
    lcAvgDec: TdxLayoutGroup;
    gvwBankACTLED_SEQID: TcxGridDBColumn;
    cxGrid6: TcxGrid;
    gvwCustody: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    dsCustody: TDataSource;
    gvwCustodyACCCUSTODYID: TcxGridDBColumn;
    gvwCustodyACCID: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH: TcxGridDBColumn;
    gvwCustodyACTLED_SEQID: TcxGridDBColumn;
    gvwCustodyMODDA: TcxGridDBColumn;
    gvwCustodyMODUI: TcxGridDBColumn;
    gvwCustodyAPPDA: TcxGridDBColumn;
    gvwCustodyAPPUI: TcxGridDBColumn;
    gvwCustodyUNDER4Y: TcxGridDBColumn;
    gvwCustodyUNDER4YDA: TcxGridDBColumn;
    gvwCustodyNOTES4Y: TcxGridDBColumn;
    gvwCustodyISDEL: TcxGridDBColumn;
    gvwCustodyID: TcxGridDBColumn;
    gvwCustodyCUSTODYTYPE: TcxGridDBColumn;
    Repository: TcxEditRepository;
    luCashInstr: TcxEditRepositoryImageComboBoxItem;
    luStockDelInstr: TcxEditRepositoryImageComboBoxItem;
    luStockRecInstr: TcxEditRepositoryImageComboBoxItem;
    luCustBank: TcxEditRepositoryLookupComboBoxItem;
    luCustCustody: TcxEditRepositoryLookupComboBoxItem;
    cdsLuCustBank: TNClientDataset;
    cdsLuCustBankACCBANKID: TIntegerField;
    cdsLuCustBankACCID: TIntegerField;
    cdsLuCustBankBNCODE: TStringField;
    cdsLuCustBankBANKACCNO: TStringField;
    cdsLuCustBankBANKACCNAME: TStringField;
    cdsLuCustBankBANKBRANCH: TStringField;
    cdsLuCustCustody: TNClientDataset;
    cdsLuCustCustodyACCCUSTODYID: TIntegerField;
    cdsLuCustCustodyACCID: TIntegerField;
    cdsLuCustCustodyCUSTODYCODE: TStringField;
    cdsLuCustCustodyCUSTODYACCNO: TStringField;
    cdsLuCustCustodyCUSTODYACCNAME: TStringField;
    cdsLuCustCustodyCUSTODYBRANCH: TStringField;
    dsLuCustBank: TDataSource;
    dsLuCustCustody: TDataSource;
    gvwBankCCYCODE: TcxGridDBColumn;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cxDBCheckBox7: TcxDBCheckBox;
    dxLayoutControl5Item5: TdxLayoutItem;
    cxDBCheckBox11: TcxDBCheckBox;
    dxLayoutControl5Item11: TdxLayoutItem;
    dxLayoutControl5Group5: TdxLayoutGroup;
    cxDBLookupComboBox22: TcxDBLookupComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    tabSettle: TcxTabSheet;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcSettleMode: TdxLayoutItem;
    tabInterest: TcxTabSheet;
    cxGrid9: TcxGrid;
    gvwInterest: TcxGridDBBandedTableView;
    cxGridLevel9: TcxGridLevel;
    dsInterest: TDataSource;
    dxLayoutControl6Item2: TdxLayoutItem;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    dxLayoutControl5Item13: TdxLayoutItem;
    cxDBCheckBox18: TcxDBCheckBox;
    dxLayoutControl5Item17: TdxLayoutItem;
    gvwCommCCYCODE: TcxGridDBColumn;
    cbSettleType: TcxDBImageComboBox;
    dxLayoutControl6Item5: TdxLayoutItem;
    cdsDefaultAccountContact: TNClientDataset;
    cdsDefaultAccountContactACCID: TIntegerField;
    cdsDefaultAccountContactCOUNTCODE: TStringField;
    cdsDefaultAccountContactENTNAME: TStringField;
    cdsDefaultAccountContactRET_HOMEPHONE: TStringField;
    cdsDefaultAccountContactRET_MOBILE: TStringField;
    cdsDefaultAccountContactADDRESS: TStringField;
    cdsDefaultAccountContactRET_EMAIL: TStringField;
    cdsDefaultAccountContactRET_HOMEFAX: TStringField;
    cdsDefaultAccountContactRET_IDCARDTYPE: TStringField;
    cdsDefaultAccountContactRET_IDCARDNO: TStringField;
    cdsDefaultAccountContactRET_IDCARDEXPIRE: TDateField;
    gvwCustodyCBEST_ACCBANKID: TcxGridDBColumn;
    gvwCustodyCUSTODY_DEFAULT: TcxGridDBColumn;
    gvwCustodySTAT: TcxGridDBColumn;
    cdsAccount: TNClientDataset;
    cdsAccountComm: TNClientDataset;
    cdsAccountCommACCID: TIntegerField;
    cdsAccountCommMARKETCODE: TStringField;
    cdsAccountCommCHANNELCODE: TStringField;
    cdsAccountCommCOMM_ID: TLargeintField;
    cdsAccountCommCALC_METHOD: TStringField;
    cdsAccountCommUSE_DAYTRADE: TStringField;
    cdsAccountCommUSE_MINCOMM: TStringField;
    cdsAccountCommWITH_SELLTAX: TStringField;
    cdsAccountCommMODDA: TDateTimeField;
    cdsAccountCommMODUI: TStringField;
    cdsAccountCommAPPDA: TDateTimeField;
    cdsAccountCommAPPUI: TStringField;
    cdsAccountCommUNDER4Y: TIntegerField;
    cdsAccountCommUNDER4YDA: TDateTimeField;
    cdsAccountCommNOTES4Y: TStringField;
    cdsAccountCommISDEL: TIntegerField;
    cdsAccountCommID: TLargeintField;
    cdsAccountCommDESCRIPTION: TStringField;
    cdsAccountCommCCYCODE: TStringField;
    cdsAccountCommNET_COMMID: TLargeintField;
    cdsAccountCharge: TNClientDataset;
    cdsAccountChargeACCID: TIntegerField;
    cdsAccountChargeMARKETCODE: TStringField;
    cdsAccountChargeCHARGE_ID: TLargeintField;
    cdsAccountChargeISUSED: TStringField;
    cdsAccountChargeMODDA: TDateTimeField;
    cdsAccountChargeMODUI: TStringField;
    cdsAccountChargeAPPDA: TDateTimeField;
    cdsAccountChargeAPPUI: TStringField;
    cdsAccountChargeUNDER4Y: TIntegerField;
    cdsAccountChargeUNDER4YDA: TDateTimeField;
    cdsAccountChargeNOTES4Y: TStringField;
    cdsAccountChargeISDEL: TIntegerField;
    cdsAccountChargeID: TLargeintField;
    cdsAccountChargeDESCRIPTION: TStringField;
    cdsAccountBank: TNClientDataset;
    cdsAccountBankACCBANKID: TIntegerField;
    cdsAccountBankACCID: TIntegerField;
    cdsAccountBankBNCODE: TStringField;
    cdsAccountBankBANKACCNO: TStringField;
    cdsAccountBankBANKACCNAME: TStringField;
    cdsAccountBankBANKBRANCH: TStringField;
    cdsAccountBankISRDN: TStringField;
    cdsAccountBankBNCHGSTYPE: TStringField;
    cdsAccountBankACTLED_SEQID: TIntegerField;
    cdsAccountBankMODDA: TDateTimeField;
    cdsAccountBankMODUI: TStringField;
    cdsAccountBankAPPDA: TDateTimeField;
    cdsAccountBankAPPUI: TStringField;
    cdsAccountBankUNDER4Y: TIntegerField;
    cdsAccountBankUNDER4YDA: TDateTimeField;
    cdsAccountBankNOTES4Y: TStringField;
    cdsAccountBankISDEL: TIntegerField;
    cdsAccountBankID: TLargeintField;
    cdsAccountBankCCYCODE: TStringField;
    cdsAccountBankACCBANKCODE: TStringField;
    cdsAccountBankBANKTYPE: TStringField;
    cdsAccountBankCBEST_CODE: TStringField;
    cdsAccountBankBANK_DEFAULT: TStringField;
    cdsAccountExtRef: TNClientDataset;
    cdsAccountExtRefACCID: TIntegerField;
    cdsAccountExtRefEXTSYS_ID: TIntegerField;
    cdsAccountExtRefEXTREF_CODE: TStringField;
    cdsAccountExtRefMODDA: TDateTimeField;
    cdsAccountExtRefMODUI: TStringField;
    cdsAccountExtRefAPPDA: TDateTimeField;
    cdsAccountExtRefAPPUI: TStringField;
    cdsAccountExtRefUNDER4Y: TIntegerField;
    cdsAccountExtRefUNDER4YDA: TDateTimeField;
    cdsAccountExtRefNOTES4Y: TStringField;
    cdsAccountExtRefISDEL: TIntegerField;
    cdsAccountExtRefID: TLargeintField;
    cdsAccountContact: TNClientDataset;
    cdsAccountCustody: TNClientDataset;
    cdsAccountCustodyACCCUSTODYID: TIntegerField;
    cdsAccountCustodyACCID: TIntegerField;
    cdsAccountCustodyCUSTODYCODE: TStringField;
    cdsAccountCustodyCUSTODYACCNO: TStringField;
    cdsAccountCustodyCUSTODYACCNAME: TStringField;
    cdsAccountCustodyCUSTODYBRANCH: TStringField;
    cdsAccountCustodyACTLED_SEQID: TIntegerField;
    cdsAccountCustodyMODDA: TDateTimeField;
    cdsAccountCustodyMODUI: TStringField;
    cdsAccountCustodyAPPDA: TDateTimeField;
    cdsAccountCustodyAPPUI: TStringField;
    cdsAccountCustodyUNDER4Y: TIntegerField;
    cdsAccountCustodyUNDER4YDA: TDateTimeField;
    cdsAccountCustodyNOTES4Y: TStringField;
    cdsAccountCustodyISDEL: TIntegerField;
    cdsAccountCustodyID: TLargeintField;
    cdsAccountCustodyCUSTODYTYPE: TStringField;
    cdsAccountCustodyCBEST_ACCBANKID: TLargeintField;
    cdsAccountCustodyCUSTODY_DEFAULT: TStringField;
    cdsAccountCustodySTAT: TStringField;
    cdsAccountInterest: TNClientDataset;
    cdsAccountLedger: TNClientDataset;
    cdsAccountLedgerACCID: TIntegerField;
    cdsAccountLedgerSEQID: TIntegerField;
    cdsAccountLedgerALTYPE: TStringField;
    cdsAccountLedgerALCODE: TStringField;
    cdsAccountLedgerBANKCODE: TStringField;
    cdsAccountLedgerBANKACCNO: TStringField;
    cdsAccountLedgerBANKACCNAME: TStringField;
    cdsAccountLedgerBANKBRANCH: TStringField;
    cdsAccountLedgerCALCINTEREST: TStringField;
    cdsAccountLedgerINTERESTCODE: TStringField;
    cdsAccountLedgerMODDA: TDateTimeField;
    cdsAccountLedgerMODUI: TStringField;
    cdsAccountLedgerAPPDA: TDateTimeField;
    cdsAccountLedgerAPPUI: TStringField;
    cdsAccountLedgerUNDER4Y: TIntegerField;
    cdsAccountLedgerUNDER4YDA: TDateTimeField;
    cdsAccountLedgerNOTES4Y: TStringField;
    cdsAccountLedgerISDEL: TIntegerField;
    cdsAccountLedgerID: TLargeintField;
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
    cdsAccountISUSEWHT: TStringField;
    cdsAccountISUSEOTC: TStringField;
    cdsAccountISOWNCONTACT: TStringField;
    cdsAccountISTRDACCOUNT: TStringField;
    cdsAccountAUTO_SETTLE: TStringField;
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
    cdsAccountTRF_PRVT_BANK: TStringField;
    cdsAccountTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccountCCCLS_ID: TLargeintField;
    cdsAccountCC_TYPE: TStringField;
    cdsAccountCR_VAL: TFloatField;
    cdsAccountBUY_LIMIT: TFloatField;
    cdsAccountSELL_LIMIT: TFloatField;
    cdsAccountIS_IDX_TRX: TStringField;
    cdsAccountTLCLASSID: TIntegerField;
    cdsAccountDEFTRDPARAM: TStringField;
    cdsAccountKSEI_SID: TStringField;
    cdsAccountRATIO_MRGCALL: TFloatField;
    cdsAccountRATIO_MRGWARING: TFloatField;
    cdsAccountRATIO_FORCESELL: TFloatField;
    cdsAccountFORCESELL_DAY: TIntegerField;
    cdsAccountTL_CASHVALUATE: TFloatField;
    cdsAccountTL_STOCKVALUATE: TFloatField;
    cdsAccountACCPASSWORD: TStringField;
    cdsAccountCPID: TIntegerField;
    cdsAccountBUS_CAT: TLargeintField;
    cdsAccountINIT_DEPOSIT_FUND: TFloatField;
    cdsAccountINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccountALLOC_TYPE: TStringField;
    cdsAccountTC_BASE: TStringField;
    cdsAccountAUTO_ALLOC: TStringField;
    cdsAccountDT_AUTOAVGPRICE: TStringField;
    cdsAccountSETTLE_MODE: TStringField;
    cdsAccountNET_SETTLE: TStringField;
    cdsAccountSETTLE_TYPE: TStringField;
    cdsAccountDIVIDEN_TAX: TFloatField;
    cdsAccountDORMANT: TStringField;
    cdsAccountMODDA: TDateTimeField;
    cdsAccountMODUI: TStringField;
    cdsAccountAPPDA: TDateTimeField;
    cdsAccountAPPUI: TStringField;
    cdsAccountUNDER4Y: TIntegerField;
    cdsAccountUNDER4YDA: TDateTimeField;
    cdsAccountNOTES4Y: TStringField;
    cdsAccountISDEL: TIntegerField;
    cdsAccountID: TLargeintField;
    cdsAccountqryAccountInterest: TDataSetField;
    cdsAccountqryAccountContact: TDataSetField;
    cdsAccountqryAccountExtRef: TDataSetField;
    cdsAccountqryAccountCharge: TDataSetField;
    cdsAccountqryAccountComm: TDataSetField;
    cdsAccountInterestACCID: TIntegerField;
    cdsAccountInterestCCY: TStringField;
    cdsAccountInterestINTERESTCODE: TStringField;
    cdsAccountInterestMODDA: TDateTimeField;
    cdsAccountInterestMODUI: TStringField;
    cdsAccountInterestAPPDA: TDateTimeField;
    cdsAccountInterestAPPUI: TStringField;
    cdsAccountInterestUNDER4Y: TIntegerField;
    cdsAccountInterestUNDER4YDA: TDateTimeField;
    cdsAccountInterestNOTES4Y: TStringField;
    cdsAccountInterestISDEL: TIntegerField;
    cdsAccountInterestID: TLargeintField;
    gvwInterestACCID: TcxGridDBBandedColumn;
    gvwInterestCCY: TcxGridDBBandedColumn;
    gvwInterestINTERESTCODE: TcxGridDBBandedColumn;
    gvwInterestMODDA: TcxGridDBBandedColumn;
    gvwInterestMODUI: TcxGridDBBandedColumn;
    gvwInterestAPPDA: TcxGridDBBandedColumn;
    gvwInterestAPPUI: TcxGridDBBandedColumn;
    gvwInterestUNDER4Y: TcxGridDBBandedColumn;
    gvwInterestUNDER4YDA: TcxGridDBBandedColumn;
    gvwInterestNOTES4Y: TcxGridDBBandedColumn;
    gvwInterestISDEL: TcxGridDBBandedColumn;
    gvwInterestID: TcxGridDBBandedColumn;
    cdsBusType: TNClientDataset;
    cdsBusTypeBUSTYPEID: TLargeintField;
    cdsBusTypeBUSTYPECODE: TStringField;
    cdsBusTypeBUSTYPEDESC: TStringField;
    cdsBusTypeTC_MODEL: TStringField;
    cdsBusTypeA_CLS_ORDER: TStringField;
    cdsBusTypeAVGPRICEDEC: TSmallintField;
    cdsBusTypeOMNIBUSTRADE: TStringField;
    cdsBusTypeCASHKEEP: TStringField;
    cdsBusTypeSTOCKKEEP: TStringField;
    cdsBusTypeISWAPU: TStringField;
    cdsBusTypeISUSEWHT: TStringField;
    cdsBusTypeISUSEOTC: TStringField;
    cdsBusTypeISOWNCONTACT: TStringField;
    cdsBusTypeISTRDACCOUNT: TStringField;
    cdsBusTypeAUTO_SETTLE: TStringField;
    cdsBusTypeOMGUSE: TStringField;
    cdsBusTypeOMGEXREFFCODE: TStringField;
    cdsBusTypeOMGALERT: TStringField;
    cdsBusTypeOMGSENDSSI: TStringField;
    cdsBusTypeOMGSENDFEEINBLOCK: TStringField;
    cdsBusTypeSI_SPLIT: TStringField;
    cdsBusTypeALCID: TIntegerField;
    cdsBusTypeTALCID: TIntegerField;
    cdsBusTypeCCCLS_ID: TLargeintField;
    cdsBusTypeCC_TYPE: TStringField;
    cdsBusTypeCR_VAL: TFloatField;
    cdsBusTypeBUY_LIMIT: TFloatField;
    cdsBusTypeSELL_LIMIT: TFloatField;
    cdsBusTypeIS_IDX_TRX: TStringField;
    cdsBusTypeTLCLASSID: TIntegerField;
    cdsBusTypeDEFTRDPARAM: TStringField;
    cdsBusTypeRATIO_MRGCALL: TFloatField;
    cdsBusTypeRATIO_MRGWARING: TFloatField;
    cdsBusTypeRATIO_FORCESELL: TFloatField;
    cdsBusTypeFORCESELL_DAY: TIntegerField;
    cdsBusTypeTL_CASHVALUATE: TFloatField;
    cdsBusTypeTL_STOCKVALUATE: TFloatField;
    cdsBusTypeACCPASSWORD: TStringField;
    cdsBusTypeCPID: TIntegerField;
    cdsBusTypeBUS_CAT: TLargeintField;
    cdsBusTypeALLOC_TYPE: TStringField;
    cdsBusTypeTC_BASE: TStringField;
    cdsBusTypeAUTO_ALLOC: TStringField;
    cdsBusTypeDT_AUTOAVGPRICE: TStringField;
    cdsBusTypeSETTLE_MODE: TStringField;
    cdsBusTypeNET_SETTLE: TStringField;
    cdsBusTypeSETTLE_TYPE: TStringField;
    cdsBusTypeDIVIDEN_TAX: TFloatField;
    cdsBusTypeMODDA: TDateTimeField;
    cdsBusTypeMODUI: TStringField;
    cdsBusTypeAPPDA: TDateTimeField;
    cdsBusTypeAPPUI: TStringField;
    cdsBusTypeUNDER4Y: TIntegerField;
    cdsBusTypeUNDER4YDA: TDateTimeField;
    cdsBusTypeNOTES4Y: TStringField;
    cdsBusTypeISDEL: TIntegerField;
    cdsBusTypeID: TLargeintField;
    cdsBusTypeqryBusTypeInterest: TDataSetField;
    cdsBusTypeqryBusTypeComm: TDataSetField;
    cdsBusTypeqryBusTypeCharge: TDataSetField;
    cdsBusTypeCharge: TNClientDataset;
    cdsBusTypeChargeBUSTYPEID: TLargeintField;
    cdsBusTypeChargeMARKETCODE: TStringField;
    cdsBusTypeChargeCHARGE_ID: TLargeintField;
    cdsBusTypeChargeISUSED: TStringField;
    cdsBusTypeChargeMODDA: TDateTimeField;
    cdsBusTypeChargeMODUI: TStringField;
    cdsBusTypeChargeAPPDA: TDateTimeField;
    cdsBusTypeChargeAPPUI: TStringField;
    cdsBusTypeChargeUNDER4Y: TIntegerField;
    cdsBusTypeChargeUNDER4YDA: TDateTimeField;
    cdsBusTypeChargeNOTES4Y: TStringField;
    cdsBusTypeChargeISDEL: TIntegerField;
    cdsBusTypeChargeID: TLargeintField;
    cdsBusTypeComm: TNClientDataset;
    cdsBusTypeCommBUSTYPEID: TLargeintField;
    cdsBusTypeCommMARKETCODE: TStringField;
    cdsBusTypeCommCHANNELCODE: TStringField;
    cdsBusTypeCommCOMM_ID: TLargeintField;
    cdsBusTypeCommNET_COMMID: TLargeintField;
    cdsBusTypeCommCALC_METHOD: TStringField;
    cdsBusTypeCommUSE_DAYTRADE: TStringField;
    cdsBusTypeCommUSE_MINCOMM: TStringField;
    cdsBusTypeCommWITH_SELLTAX: TStringField;
    cdsBusTypeCommMODDA: TDateTimeField;
    cdsBusTypeCommMODUI: TStringField;
    cdsBusTypeCommAPPDA: TDateTimeField;
    cdsBusTypeCommAPPUI: TStringField;
    cdsBusTypeCommUNDER4Y: TIntegerField;
    cdsBusTypeCommUNDER4YDA: TDateTimeField;
    cdsBusTypeCommNOTES4Y: TStringField;
    cdsBusTypeCommISDEL: TIntegerField;
    cdsBusTypeCommID: TLargeintField;
    cdsBusTypeInterest: TNClientDataset;
    cdsBusTypeInterestBUSTYPEID: TLargeintField;
    cdsBusTypeInterestCCY: TStringField;
    cdsBusTypeInterestINTERESTCODE: TStringField;
    cdsBusTypeInterestMODDA: TDateTimeField;
    cdsBusTypeInterestMODUI: TStringField;
    cdsBusTypeInterestAPPDA: TDateTimeField;
    cdsBusTypeInterestAPPUI: TStringField;
    cdsBusTypeInterestUNDER4Y: TIntegerField;
    cdsBusTypeInterestUNDER4YDA: TDateTimeField;
    cdsBusTypeInterestNOTES4Y: TStringField;
    cdsBusTypeInterestISDEL: TIntegerField;
    cdsBusTypeInterestID: TLargeintField;
    cdsAccountContactACCID: TIntegerField;
    cdsAccountContactSEQNO: TIntegerField;
    cdsAccountContactCONTNAME: TStringField;
    cdsAccountContactADDR_REF: TStringField;
    cdsAccountContactADDRTYPE_REF: TStringField;
    cdsAccountContactCOUNTCODE: TStringField;
    cdsAccountContactPROVCODE: TStringField;
    cdsAccountContactCITY: TStringField;
    cdsAccountContactADDRESS1: TStringField;
    cdsAccountContactADDRESS2: TStringField;
    cdsAccountContactADDRESS3: TStringField;
    cdsAccountContactZIPCODE: TStringField;
    cdsAccountContactPHONE: TStringField;
    cdsAccountContactMOBILEPHONE: TStringField;
    cdsAccountContactEMAIL: TStringField;
    cdsAccountContactFAX: TStringField;
    cdsAccountContactIDCARDTYPE: TStringField;
    cdsAccountContactIDCARDNO: TStringField;
    cdsAccountContactIDCARDEXPIRE: TDateField;
    cdsAccountContactSENDBYEMAIL: TStringField;
    cdsAccountContactSENDBYFAX: TStringField;
    cdsAccountContactSENDBYSMS: TStringField;
    cdsAccountContactSENDBYPOSTMAIL: TStringField;
    cdsAccountContactNOTIF_TC: TStringField;
    cdsAccountContactNOTIF_SOA: TStringField;
    cdsAccountContactNOTIF_CORPACT: TStringField;
    cdsAccountContactNOTIF_IDENTITY: TStringField;
    cdsAccountContactMODDA: TDateTimeField;
    cdsAccountContactMODUI: TStringField;
    cdsAccountContactAPPDA: TDateTimeField;
    cdsAccountContactAPPUI: TStringField;
    cdsAccountContactUNDER4Y: TIntegerField;
    cdsAccountContactUNDER4YDA: TDateTimeField;
    cdsAccountContactNOTES4Y: TStringField;
    cdsAccountContactISDEL: TIntegerField;
    cdsAccountContactID: TLargeintField;
    glvContactGroup_Root: TdxLayoutGroup;
    glvContact: TcxGridDBLayoutView;
    glvContactLayoutItem1: TcxGridLayoutItem;
    glvContactACCID: TcxGridDBLayoutViewItem;
    glvContactLayoutItem2: TcxGridLayoutItem;
    glvContactSEQNO: TcxGridDBLayoutViewItem;
    glvContactLayoutItem3: TcxGridLayoutItem;
    glvContactCONTNAME: TcxGridDBLayoutViewItem;
    glvContactLayoutItem4: TcxGridLayoutItem;
    glvContactADDR_REF: TcxGridDBLayoutViewItem;
    glvContactLayoutItem5: TcxGridLayoutItem;
    glvContactADDRTYPE_REF: TcxGridDBLayoutViewItem;
    glvContactLayoutItem6: TcxGridLayoutItem;
    glvContactCOUNTCODE: TcxGridDBLayoutViewItem;
    glvContactLayoutItem7: TcxGridLayoutItem;
    glvContactPROVCODE: TcxGridDBLayoutViewItem;
    glvContactLayoutItem8: TcxGridLayoutItem;
    glvContactCITY: TcxGridDBLayoutViewItem;
    glvContactLayoutItem9: TcxGridLayoutItem;
    glvContactADDRESS1: TcxGridDBLayoutViewItem;
    glvContactLayoutItem10: TcxGridLayoutItem;
    glvContactADDRESS2: TcxGridDBLayoutViewItem;
    glvContactLayoutItem11: TcxGridLayoutItem;
    glvContactADDRESS3: TcxGridDBLayoutViewItem;
    glvContactLayoutItem12: TcxGridLayoutItem;
    glvContactZIPCODE: TcxGridDBLayoutViewItem;
    glvContactLayoutItem13: TcxGridLayoutItem;
    glvContactPHONE: TcxGridDBLayoutViewItem;
    glvContactLayoutItem14: TcxGridLayoutItem;
    glvContactMOBILEPHONE: TcxGridDBLayoutViewItem;
    glvContactLayoutItem15: TcxGridLayoutItem;
    glvContactEMAIL: TcxGridDBLayoutViewItem;
    glvContactLayoutItem16: TcxGridLayoutItem;
    glvContactFAX: TcxGridDBLayoutViewItem;
    glvContactLayoutItem17: TcxGridLayoutItem;
    glvContactIDCARDTYPE: TcxGridDBLayoutViewItem;
    glvContactLayoutItem18: TcxGridLayoutItem;
    glvContactIDCARDNO: TcxGridDBLayoutViewItem;
    glvContactLayoutItem19: TcxGridLayoutItem;
    glvContactIDCARDEXPIRE: TcxGridDBLayoutViewItem;
    glvContactLayoutItem20: TcxGridLayoutItem;
    glvContactSENDBYEMAIL: TcxGridDBLayoutViewItem;
    glvContactLayoutItem21: TcxGridLayoutItem;
    glvContactSENDBYFAX: TcxGridDBLayoutViewItem;
    glvContactLayoutItem22: TcxGridLayoutItem;
    glvContactSENDBYSMS: TcxGridDBLayoutViewItem;
    glvContactLayoutItem23: TcxGridLayoutItem;
    glvContactSENDBYPOSTMAIL: TcxGridDBLayoutViewItem;
    glvContactLayoutItem24: TcxGridLayoutItem;
    glvContactNOTIF_TC: TcxGridDBLayoutViewItem;
    glvContactLayoutItem25: TcxGridLayoutItem;
    glvContactNOTIF_SOA: TcxGridDBLayoutViewItem;
    glvContactLayoutItem26: TcxGridLayoutItem;
    glvContactNOTIF_CORPACT: TcxGridDBLayoutViewItem;
    glvContactLayoutItem27: TcxGridLayoutItem;
    glvContactNOTIF_IDENTITY: TcxGridDBLayoutViewItem;
    glvContactLayoutItem28: TcxGridLayoutItem;
    glvContactMODDA: TcxGridDBLayoutViewItem;
    glvContactLayoutItem29: TcxGridLayoutItem;
    glvContactMODUI: TcxGridDBLayoutViewItem;
    glvContactLayoutItem30: TcxGridLayoutItem;
    glvContactAPPDA: TcxGridDBLayoutViewItem;
    glvContactLayoutItem31: TcxGridLayoutItem;
    glvContactAPPUI: TcxGridDBLayoutViewItem;
    glvContactLayoutItem32: TcxGridLayoutItem;
    glvContactUNDER4Y: TcxGridDBLayoutViewItem;
    glvContactLayoutItem33: TcxGridLayoutItem;
    glvContactUNDER4YDA: TcxGridDBLayoutViewItem;
    glvContactLayoutItem34: TcxGridLayoutItem;
    glvContactNOTES4Y: TcxGridDBLayoutViewItem;
    glvContactLayoutItem35: TcxGridLayoutItem;
    glvContactISDEL: TcxGridDBLayoutViewItem;
    glvContactLayoutItem36: TcxGridLayoutItem;
    glvContactID: TcxGridDBLayoutViewItem;
    glvContactGroup1: TdxLayoutGroup;
    glvContactGroup2: TdxLayoutGroup;
    glvContactGroup3: TdxLayoutGroup;
    glvContactGroup4: TdxLayoutGroup;
    glvContactGroup5: TdxLayoutGroup;
    glvContactGroup6: TdxLayoutGroup;
    glvContactGroup7: TdxLayoutGroup;
    glvContactGroup8: TdxLayoutGroup;
    glvContactGroup10: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl5Item7: TdxLayoutItem;
    gvwLedgerAcc: TcxGridDBBandedTableView;
    gvwLedgerAccACCID: TcxGridDBBandedColumn;
    gvwLedgerAccSEQID: TcxGridDBBandedColumn;
    gvwLedgerAccALTYPE: TcxGridDBBandedColumn;
    gvwLedgerAccALCODE: TcxGridDBBandedColumn;
    gvwLedgerAccBANKCODE: TcxGridDBBandedColumn;
    gvwLedgerAccBANKACCNO: TcxGridDBBandedColumn;
    gvwLedgerAccBANKACCNAME: TcxGridDBBandedColumn;
    gvwLedgerAccBANKBRANCH: TcxGridDBBandedColumn;
    gvwLedgerAccCALCINTEREST: TcxGridDBBandedColumn;
    gvwLedgerAccINTERESTCODE: TcxGridDBBandedColumn;
    gvwLedgerAccMODDA: TcxGridDBBandedColumn;
    gvwLedgerAccMODUI: TcxGridDBBandedColumn;
    gvwLedgerAccAPPDA: TcxGridDBBandedColumn;
    gvwLedgerAccAPPUI: TcxGridDBBandedColumn;
    gvwLedgerAccUNDER4Y: TcxGridDBBandedColumn;
    gvwLedgerAccUNDER4YDA: TcxGridDBBandedColumn;
    gvwLedgerAccNOTES4Y: TcxGridDBBandedColumn;
    gvwLedgerAccISDEL: TcxGridDBBandedColumn;
    gvwLedgerAccID: TcxGridDBBandedColumn;
    cdsAccountChargeCHARGE_DESC: TStringField;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cdsAccountqryAccountDataOwner: TDataSetField;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    cdsAccountREFERRAL_ID_INT: TIntegerField;
    cdsAccountREFERRAL_ID_EXT: TIntegerField;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cdsAccountCREATED_DATE: TDateField;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl3Item7: TdxLayoutItem;
    tabCreditLimit: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    CreditLimitClass: TcxDBLookupComboBox;
    btnSetCreditLimit: TButton;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    PC: TcxPageControl;
    ctDefault: TcxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutGroup8: TdxLayoutGroup;
    ctCash: TcxTabSheet;
    dxLayoutControl8: TdxLayoutControl;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup6: TcxDBRadioGroup;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxDBRadioGroup9: TcxDBRadioGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    x: TdxLayoutGroup;
    LayoutControlItem23: TdxLayoutItem;
    LayoutControlItem24: TdxLayoutItem;
    LayoutControlItem7: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlItem27: TdxLayoutItem;
    LayoutControlItem12: TdxLayoutItem;
    LayoutControlItem18: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    ctReg: TcxTabSheet;
    dxLayoutControl9: TdxLayoutControl;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup11: TcxDBRadioGroup;
    cxDBRadioGroup13: TcxDBRadioGroup;
    cxDBRadioGroup14: TcxDBRadioGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    LayoutControlItem13: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    ctRatio: TcxTabSheet;
    dxLayoutControl10: TdxLayoutControl;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBRadioGroup10: TcxDBRadioGroup;
    cxDBRadioGroup12: TcxDBRadioGroup;
    cxDBRadioGroup15: TcxDBRadioGroup;
    cxDBRadioGroup16: TcxDBRadioGroup;
    cxDBRadioGroup17: TcxDBRadioGroup;
    cxDBRadioGroup18: TcxDBRadioGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutControl5Group6: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutControl5Group8: TdxLayoutGroup;
    dxLayoutControl5Group9: TdxLayoutGroup;
    dxLayoutControl5Group7: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    ctApprLimit: TcxTabSheet;
    dxLayoutControl11: TdxLayoutControl;
    cxDBRadioGroup19: TcxDBRadioGroup;
    cxDBRadioGroup20: TcxDBRadioGroup;
    cxDBRadioGroup21: TcxDBRadioGroup;
    cxDBRadioGroup22: TcxDBRadioGroup;
    cxDBRadioGroup23: TcxDBRadioGroup;
    cxDBRadioGroup24: TcxDBRadioGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    cdsAccCreditLimit: TNClientDataset;
    dsAccCreditLimit: TDataSource;
    cdsAccountqryAccountCreditLimit: TDataSetField;
    cdsAccCreditLimitACCID: TLargeintField;
    cdsAccCreditLimitCCCLS_ID: TLargeintField;
    cdsAccCreditLimitCCLSSNAME: TStringField;
    cdsAccCreditLimitCC_TYPE: TStringField;
    cdsAccCreditLimitTL_CASHVALUATE: TFloatField;
    cdsAccCreditLimitTL_STOCKVALUATE: TFloatField;
    cdsAccCreditLimitTLB_OVERLIMIT: TStringField;
    cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField;
    cdsAccCreditLimitTLB_OVERDUE: TStringField;
    cdsAccCreditLimitTLS_SHORTSELL: TStringField;
    cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLS_OVERDUE: TStringField;
    cdsAccCreditLimitRATIO_MRGCALL: TFloatField;
    cdsAccCreditLimitRATIO_MRGWARING: TFloatField;
    cdsAccCreditLimitRATIO_FORCESELL: TFloatField;
    cdsAccCreditLimitFORCESELL_DAY: TIntegerField;
    cdsAccCreditLimitCR_VAL: TFloatField;
    cdsAccCreditLimitBUY_LIMIT: TFloatField;
    cdsAccCreditLimitSELL_LIMIT: TFloatField;
    cdsAccCreditLimitCREDIT_LIMIT: TFloatField;
    cdsAccCreditLimitMODDA: TDateTimeField;
    cdsAccCreditLimitMODUI: TStringField;
    cdsAccCreditLimitAPPDA: TDateTimeField;
    cdsAccCreditLimitAPPUI: TStringField;
    cdsAccCreditLimitUNDER4Y: TIntegerField;
    cdsAccCreditLimitUNDER4YDA: TDateTimeField;
    cdsAccCreditLimitNOTES4Y: TStringField;
    cdsAccCreditLimitISDEL: TIntegerField;
    cdsAccCreditLimitID: TLargeintField;
    cdsAccCreditLimitBUYAPPROVEMETHODE: TIntegerField;
    cdsAccCreditLimitSELLAPPROVEMETHODE: TIntegerField;
    cdsAccCreditLimitMCALLDAY: TIntegerField;
    cdsAccCreditLimitEMAILID: TLargeintField;
    cdsAccCreditLimitSENDID: TLargeintField;
    cdsAccCreditLimitLASTSENDMAIL: TDateField;
    cdsAccCreditLimitSTATUS: TStringField;
    cdsChargeByBusType: TClientDataSet;
    cdsChargeByBusTypeMARKETCODE: TStringField;
    cdsChargeByBusTypeCHARGE_CODE: TStringField;
    cdsChargeByBusTypeCHARGE_DESC: TStringField;
    dsChargeByBusType: TDataSource;
    Panel1: TPanel;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBBandedTableView;
    grdChargeLevel1: TcxGridLevel;
    grdChargeByBussType: TcxGrid;
    gvwChargeByBussType: TcxGridDBBandedTableView;
    gvwChargeByBussTypeMARKETCODE: TcxGridDBBandedColumn;
    gvwChargeByBussTypeCHARGE_CODE: TcxGridDBBandedColumn;
    gvwChargeByBussTypeCHARGE_DESC: TcxGridDBBandedColumn;
    grdChargeByBussTypeLevel1: TcxGridLevel;
    gvwChargeACCID: TcxGridDBBandedColumn;
    gvwChargeMARKETCODE: TcxGridDBBandedColumn;
    gvwChargeCHARGE_ID: TcxGridDBBandedColumn;
    gvwChargeISUSED: TcxGridDBBandedColumn;
    gvwChargeMODDA: TcxGridDBBandedColumn;
    gvwChargeMODUI: TcxGridDBBandedColumn;
    gvwChargeAPPDA: TcxGridDBBandedColumn;
    gvwChargeAPPUI: TcxGridDBBandedColumn;
    gvwChargeUNDER4Y: TcxGridDBBandedColumn;
    gvwChargeUNDER4YDA: TcxGridDBBandedColumn;
    gvwChargeNOTES4Y: TcxGridDBBandedColumn;
    gvwChargeISDEL: TcxGridDBBandedColumn;
    gvwChargeID: TcxGridDBBandedColumn;
    gvwChargeDESCRIPTION: TcxGridDBBandedColumn;
    gvwChargeCHARGE_DESC: TcxGridDBBandedColumn;
    cdsCrdConClassByParam: TNClientDataset;
    cdsCrdConClassByParamCCCLS_ID: TLargeintField;
    cdsCrdConClassByParamCCLSSNAME: TStringField;
    cdsCrdConClassByParamCC_TYPE: TStringField;
    cdsCrdConClassByParamTL_CASHVALUATE: TFloatField;
    cdsCrdConClassByParamTL_STOCKVALUATE: TFloatField;
    cdsCrdConClassByParamTLB_OVERLIMIT: TStringField;
    cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField;
    cdsCrdConClassByParamTLB_OVERDUE: TStringField;
    cdsCrdConClassByParamTLS_SHORTSELL: TStringField;
    cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLS_OVERDUE: TStringField;
    cdsCrdConClassByParamRATIO_MRGCALL: TFloatField;
    cdsCrdConClassByParamRATIO_MRGWARING: TFloatField;
    cdsCrdConClassByParamRATIO_FORCESELL: TFloatField;
    cdsCrdConClassByParamFORCESELL_DAY: TIntegerField;
    cdsCrdConClassByParamCR_VAL: TFloatField;
    cdsCrdConClassByParamBUY_LIMIT: TFloatField;
    cdsCrdConClassByParamSELL_LIMIT: TFloatField;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutItem34: TdxLayoutItem;
    cdsAccountRISK: TStringField;
    cdsAccountEXCELL_CLASS: TIntegerField;
    cdsAccountSPRESID: TLargeintField;
    cdsAccountMCALLDAY: TIntegerField;
    cdsAccountAFFIL: TBooleanField;
    cdsAccountTRANSFER_STATUS: TStringField;
    cdsAccountSYNC: TStringField;
    cdsAccountYNC: TStringField;
    cdsAccountCHKDUEDAYEXP: TStringField;
    cdsAccountDUEBUYSTOCK: TIntegerField;
    cdsAccountDUESELLSTOCK: TIntegerField;
    cdsAccountDUEBUYCASH: TIntegerField;
    cdsAccountDUESELLCASH: TIntegerField;
    cdsAccountSINVUSE: TStringField;
    cdsAccountWAPU_VALUE: TFloatField;
    cdsAccountWAPU_TYPE: TIntegerField;
    edWapuVal: TcxDBCurrencyEdit;
    dxLayoutItem35: TdxLayoutItem;
    edWapuType: TcxDBImageComboBox;
    dxLayoutItem36: TdxLayoutItem;
    cdsAccountInterestPRINCIPLE_METHOD: TIntegerField;
    gvwInterestPRINCIPLE_METHOD: TcxGridDBBandedColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cdsAccountISOLT: TStringField;
    cdsAccountREFERRAL_INT_DESC: TStringField;
    cdsAccountREFERRAL_EXT_DESC: TStringField;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cdsAccountEMATERAI_PAID: TStringField;
    cdsAccountLEVY_VAT_SEPERATE: TStringField;
    chkEmaterai: TcxDBCheckBox;
    dxLayoutItem39: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem40: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutItem41: TdxLayoutItem;
    cdsAccountEMATERAI_STAMP: TStringField;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutItem42: TdxLayoutItem;
    cdsAccountTCSUM_BYBOARD: TStringField;
    cdsAccountAUTO_SPLIT: TStringField;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutItem43: TdxLayoutItem;
    cdsAccountREPORTID: TIntegerField;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutItem44: TdxLayoutItem;
    cdsAccountROUND_TYPE: TStringField;
    cdsAccountSINVEST_AUTOSPLIT: TStringField;
    cdsAccountDT_AUTOMERGE: TStringField;
    cxDBCheckBox8: TcxDBCheckBox;
    dxLayoutItem45: TdxLayoutItem;
    edMainAccount: TcxDBLookupComboBox;
    lyMainAccount: TdxLayoutItem;
    cdsAccountMAIN_ACCID: TIntegerField;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutItem46: TdxLayoutItem;
    cdsAccountTRADINGID: TStringField;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    procedure btnGetSettingClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSettleTypePropertiesChange(Sender: TObject);
    procedure cdsAccountBankBeforePost(DataSet: TDataSet);
    procedure cdsAccountLedgerBeforePost(DataSet: TDataSet);
    procedure cdsAccountCustodyBeforePost(DataSet: TDataSet);
    procedure cdsAccountTransLedgerBROKER_ACCIDChange(Sender: TField);
    procedure cdsAccountInterestINTERESTCODEChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure gvwChargeInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure cdsAccountLedgerAfterOpen(DataSet: TDataSet);
    procedure cdsAccountNewRecord(DataSet: TDataSet);
    procedure cdsAccountACCCODEChange(Sender: TField);
    procedure cdsAccountLedgerALTYPEChange(Sender: TField);
    procedure cdsAccountPRDCODEChange(Sender: TField);
    procedure pageAccountDrawTab(AControl: TcxCustomTabControl; ATab: TcxTab;
      var DefaultDraw: Boolean);
    procedure cbSalesExit(Sender: TObject);
    procedure cbSalesEnter(Sender: TObject);
    procedure glvContactEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure glvContactInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure cdsAccountAfterOpen(DataSet: TDataSet);
    procedure cdsAccountChargeNewRecord(DataSet: TDataSet);
    procedure cbRefExtEnter(Sender: TObject);
    procedure cbRefExtExit(Sender: TObject);
    procedure cbRefIntExit(Sender: TObject);
    procedure cbRefIntEnter(Sender: TObject);
    procedure gvwCommInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure btnSetCreditLimitClick(Sender: TObject);
    procedure cdsAccountBeforePost(DataSet: TDataSet);
    procedure cdsAccountISWAPUChange(Sender: TField);
    procedure chkWAPUPropertiesChange(Sender: TObject);
    procedure tabCreditLimitShow(Sender: TObject);
    procedure cdsAccountACCSUBTYPEChange(Sender: TField);
  private
    { Private declarations }
    procedure PrepareLookupData;
    procedure PrepareLookupBank;
    procedure PrepareLookupCustody;
    procedure ViewCorrectTab(Atype: String);
  public
    { Public declarations }
  end;

var
  frmAccount: TfrmAccount;

implementation

{$R *.dfm}

uses DataGlobal, FormAccountList, FormLuAccBankGroupByEntity,
  FormLuAccCustodyGroupByEntity, FormLuInterestTable, DataLookup, cxLookupDBGrid;

procedure TfrmAccount.btnGetSettingClick(Sender: TObject);
var
  sKey: String;
  vFind: Variant;
  oDataset: TDataset;
begin
  inherited;
  with frmAccountList do
  begin
    cdsBusType.Close;
    cdsBusType.Params[0].AsInteger := cbBusType.DataBinding.Field.AsInteger;
    cdsBusType.Open;

    if not cdsBusType.IsEmpty then
    begin
      //Set account charge based on business type
      if not cdsBusTypeCharge.IsEmpty then
      begin
        oDataset := dsCharge.DataSet;

        if not oDataset.IsEmpty then
        begin
          sKey := 'MARKETCODE;CHARGE_ID';
          vFind := VarArrayCreate([0, 1], varVariant);

          cdsBusTypeCharge.First;
          while not cdsBusTypeCharge.Eof do
          begin
            vFind[0] := cdsBusTypeChargeMARKETCODE.Value;
            vFind[1] := cdsBusTypeChargeCHARGE_ID.Value;

            if oDataset.Locate(sKey, vFind, []) then
              oDataset.Edit
            else
              oDataset.Append;

            oDataset.FieldByName('MARKETCODE').AsString := cdsBusTypeChargeMARKETCODE.AsString;
            oDataset.FieldByName('CHARGE_ID').AsLargeInt := cdsBusTypeChargeCHARGE_ID.AsLargeInt;
            oDataset.FieldByName('ISUSED').AsString := cdsBusTypeChargeISUSED.AsString;
            oDataset.Post;

            cdsBusTypeCharge.Next;
          end;

        end
        else
        begin
          cdsBusTypeCharge.First;
          while not cdsBusTypeCharge.Eof do
          begin
            oDataset.Append;
            oDataset.FieldByName('MARKETCODE').AsString := cdsBusTypeChargeMARKETCODE.AsString;
            oDataset.FieldByName('CHARGE_ID').AsLargeInt := cdsBusTypeChargeCHARGE_ID.AsLargeInt;
            oDataset.FieldByName('ISUSED').AsString := cdsBusTypeChargeISUSED.AsString;
            oDataset.Post;
            cdsBusTypeCharge.Next;
          end;
        end;

      end;

      //Set account commission based on business type
      if not cdsBusTypeComm.IsEmpty then
      begin
        oDataset := dsComm.DataSet;

        if not oDataset.IsEmpty then
        begin
          sKey := 'MARKETCODE;CHANNELCODE';
          vFind := VarArrayCreate([0, 1], varVariant);

          cdsBusTypeComm.First;
          while not cdsBusTypeComm.Eof do
          begin
            vFind[0] := cdsBusTypeCommMARKETCODE.Value;
            vFind[1] := cdsBusTypeCommCHANNELCODE.Value;

            if oDataset.Locate(sKey, vFind, []) then
              oDataset.Edit
            else
              oDataset.Append;

            if oDataset.FieldByName('CCYCODE').IsNull then
              oDataset.FieldByName('CCYCODE').AsString := dmGlobal.RemoteServer.GetLocalCCY;

            oDataset.FieldByName('MARKETCODE').AsString := cdsBusTypeCommMARKETCODE.AsString;
            oDataset.FieldByName('CHANNELCODE').AsString := cdsBusTypeCommCHANNELCODE.AsString;
            oDataset.FieldByName('COMM_ID').AsLargeInt := cdsBusTypeCommCOMM_ID.AsLargeInt;
            oDataset.FieldByName('NET_COMMID').AsLargeInt := cdsBusTypeCommNET_COMMID.AsLargeInt;
            oDataset.FieldByName('CALC_METHOD').AsString := cdsBusTypeCommCALC_METHOD.AsString;
            oDataset.FieldByName('USE_DAYTRADE').AsString := cdsBusTypeCommUSE_DAYTRADE.AsString;
            oDataset.FieldByName('USE_MINCOMM').AsString := cdsBusTypeCommUSE_MINCOMM.AsString;
            oDataset.FieldByName('WITH_SELLTAX').AsString := cdsBusTypeCommWITH_SELLTAX.AsString;
            oDataset.Post;

            cdsBusTypeComm.Next;
          end;
        end
        else
        begin
          cdsBusTypeComm.First;
          while not cdsBusTypeComm.Eof do
          begin
            oDataset.Append;
            oDataset.FieldByName('CCYCODE').AsString := dmGlobal.RemoteServer.GetLocalCCY;
            oDataset.FieldByName('MARKETCODE').AsString := cdsBusTypeCommMARKETCODE.AsString;
            oDataset.FieldByName('CHANNELCODE').AsString := cdsBusTypeCommCHANNELCODE.AsString;
            oDataset.FieldByName('COMM_ID').AsLargeInt := cdsBusTypeCommCOMM_ID.AsLargeInt;
            oDataset.FieldByName('NET_COMMID').AsLargeInt := cdsBusTypeCommNET_COMMID.AsLargeInt;
            oDataset.FieldByName('CALC_METHOD').AsString := cdsBusTypeCommCALC_METHOD.AsString;
            oDataset.FieldByName('USE_DAYTRADE').AsString := cdsBusTypeCommUSE_DAYTRADE.AsString;
            oDataset.FieldByName('USE_MINCOMM').AsString := cdsBusTypeCommUSE_MINCOMM.AsString;
            oDataset.FieldByName('WITH_SELLTAX').AsString := cdsBusTypeCommWITH_SELLTAX.AsString;
            oDataset.Post;
            cdsBusTypeComm.Next;
          end;
        end;

      end;

    end;

  end;
end;

procedure TfrmAccount.btnSetCreditLimitClick(Sender: TObject);
begin
  inherited;
  if (not TClientDataset(dsAccCreditLimit.DataSet).ReadOnly) then // And (not cdsAccCreditLimitCCCLS_ID.IsNull) then
  begin
    cdsCrdConClassByParam.Close;
    cdsCrdConClassByParam.Params[0].AsInteger := CreditLimitClass.EditValue;
    cdsCrdConClassByParam.Open;

    if not cdsCrdConClassByParam.IsEmpty then
    begin
      cdsAccountCCCLS_ID.AsInteger := cdsCrdConClassByParamCCCLS_ID.AsInteger;
      cdsAccountCC_TYPE.AsString   := cdsCrdConClassByParamCCLSSNAME.AsString;

      if cdsAccCreditLimitCCCLS_ID.IsNull then
      begin
        dsAccCreditLimit.DataSet.Append;
        dsAccCreditLimit.DataSet.FieldByName('CCCLS_ID').AsInteger := cdsCrdConClassByParamCCCLS_ID.AsInteger;
      end
      else
        dsAccCreditLimit.DataSet.Edit;

      dsAccCreditLimit.DataSet.FieldByName('CCLSSNAME').AsString := cdsCrdConClassByParamCCLSSNAME.AsString;
      dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString := cdsCrdConClassByParamCC_TYPE.AsString;
      dsAccCreditLimit.DataSet.FieldByName('RATIO_MRGCALL').Value := cdsCrdConClassByParamRATIO_MRGCALL.Value;
      dsAccCreditLimit.DataSet.FieldByName('RATIO_MRGWARING').Value := cdsCrdConClassByParamRATIO_MRGWARING.Value;
      dsAccCreditLimit.DataSet.FieldByName('RATIO_FORCESELL').Value := cdsCrdConClassByParamRATIO_FORCESELL.Value;
      dsAccCreditLimit.DataSet.FieldByName('FORCESELL_DAY').Value := cdsCrdConClassByParamFORCESELL_DAY.Value;
      dsAccCreditLimit.DataSet.FieldByName('TL_CASHVALUATE').Value := cdsCrdConClassByParamTL_CASHVALUATE.Value;
      dsAccCreditLimit.DataSet.FieldByName('TL_STOCKVALUATE').Value := cdsCrdConClassByParamTL_STOCKVALUATE.Value;
      dsAccCreditLimit.DataSet.FieldByName('CR_VAL').Value := cdsCrdConClassByParamCR_VAL.Value;
      dsAccCreditLimit.DataSet.FieldByName('BUY_LIMIT').Value := cdsCrdConClassByParamBUY_LIMIT.Value;
      dsAccCreditLimit.DataSet.FieldByName('SELL_LIMIT').Value := cdsCrdConClassByParamSELL_LIMIT.Value;
      dsAccCreditLimit.DataSet.FieldByName('TLB_OVERLIMIT').AsString := cdsCrdConClassByParamTLB_OVERLIMIT.AsString;
      dsAccCreditLimit.DataSet.FieldByName('TLB_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLB_NOTVALIDSTATUS.AsString;
      dsAccCreditLimit.DataSet.FieldByName('TLB_MRG_NONVALSTOCK').AsString := cdsCrdConClassByParamTLB_MRG_NONVALSTOCK.AsString;
      dsAccCreditLimit.DataSet.FieldByName('TLB_OVERDUE').AsString := cdsCrdConClassByParamTLB_OVERDUE.AsString;
      dsAccCreditLimit.DataSet.FieldByName('TLS_SHORTSELL').AsString := cdsCrdConClassByParamTLS_SHORTSELL.AsString;
      dsAccCreditLimit.DataSet.FieldByName('TLS_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLS_NOTVALIDSTATUS.AsString;
      dsAccCreditLimit.DataSet.FieldByName('TLS_OVERDUE').AsString := cdsCrdConClassByParamTLS_OVERDUE.AsString;

      ViewCorrectTab(dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString);
      dsAccCreditLimit.DataSet.Post;
    end;
  end;
end;

procedure TfrmAccount.ViewCorrectTab(Atype: String);
begin
  if Atype = CCTYPE_CASH then PC.ActivePage := ctCash
  else if Atype = CCTYPE_REG then PC.ActivePage := ctReg
  else if Atype = CCTYPE_RATIO then PC.ActivePage := ctRatio
  else if Atype = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
  else PC.ActivePage := ctDefault;

end;

procedure TfrmAccount.cbRefExtEnter(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefExt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.AddItem(LGrid.Columns[2], foEqual, 'E', 'E');
//    Active := True;
//  end;
end;

procedure TfrmAccount.cbRefExtExit(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefExt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.Clear;
//    Active := False;
//  end;
end;

procedure TfrmAccount.cbRefIntEnter(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefInt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.AddItem(LGrid.Columns[2], foEqual, 'I', 'I');
//    Active := True;
//  end;
end;

procedure TfrmAccount.cbRefIntExit(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefInt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.Clear;
//    Active := False;
//  end;
end;

procedure TfrmAccount.cbSalesEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbSales.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.AddItem(LGrid.Columns[2], foEqual, cbBranch.EditValue, VarToStr(cbBranch.EditValue));
    Active := True;
  end;
end;

procedure TfrmAccount.cbSalesExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbSales.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.Clear;
    Active := False;
  end;
end;

procedure TfrmAccount.cbSettleTypePropertiesChange(Sender: TObject);
begin
  inherited;
  lcSettleMode.Visible := cbSettleType.EditValue = 'OTC';
end;

procedure TfrmAccount.cdsAccountACCCODEChange(Sender: TField);
begin
  inherited;
  if not cdsAccountLedger.IsEmpty then
  begin
    cdsAccountLedger.First;
    while not cdsAccountLedger.Eof do
    begin
      cdsAccountLedger.Edit;
      cdsAccountLedgerALCODE.AsString := cdsAccountLedgerALTYPE.AsString + '-'
        + cdsAccountACCCODE.AsString + '-' + Format('%.5d', [cdsAccountLedgerSEQID.AsInteger]);
      cdsAccountLedger.Post;

      cdsAccountLedger.Next;
    end;
  end;
end;

procedure TfrmAccount.cdsAccountACCSUBTYPEChange(Sender: TField);
begin
  inherited;
  if cdsAccountACCSUBTYPE.AsString = 'M' then
  begin
    cdsAccountMAIN_ACCID.AsLargeInt   := 0;
    edMainAccount.Properties.ReadOnly := true;
    edMainAccount.ParentColor         := True;
    edMainAccount.TabStop             := False;
  end
  else
  begin
    edMainAccount.Properties.ReadOnly := False;
    edMainAccount.ParentColor         := False;
    edMainAccount.TabStop             := True;
  end;
end;

procedure TfrmAccount.cdsAccountAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsAccount.IsEmpty then
  begin
    if cdsAccountACCTYPE.AsString = 'N' then
    begin
      glvContactADDRTYPE_REF.RepositoryItem := dmGlobal.luAddressTypeIndividual;
    end
    else
    begin
      glvContactADDRTYPE_REF.RepositoryItem := dmGlobal.luAddressTypeInstitution;
    end;

    cdsChargeByBusType.Close;
    cdsChargeByBusType.Params[0].AsInteger := cdsAccountBUSSTYPE.AsInteger;
    cdsChargeByBusType.Open;
  end;
end;

procedure TfrmAccount.cdsAccountBankBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccountBankACCBANKID.IsNull then
    cdsAccountBankACCBANKID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTBANK_ID');
end;

procedure TfrmAccount.cdsAccountBeforePost(DataSet: TDataSet);
var
  sSubAccCode: string;
  sSubAccName: string;
begin
  inherited;
  if cdsAccountACCID.AsInteger = -1 then
  begin
    if dmGlobal.NewAccountTag = 5 then
    begin
      sSubAccCode := '-M';
      sSubAccName := ' - Margin Account';
    end
    else
    begin
      sSubAccCode := '';
      sSubAccName := '';
    end;

    cdsAccountACCID.AsInteger  := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNT');
    cdsAccountACCCODE.AsString := cdsAccountACCINIT.AsString + sSubAccCode;
    cdsAccountACCNAME.AsString := cdsAccountACCNAME.AsString + sSubAccName;
  end;
end;

procedure TfrmAccount.cdsAccountChargeNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccountChargeISUSED.AsString := '1';
end;

procedure TfrmAccount.cdsAccountCustodyBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccountCustodyACCCUSTODYID.IsNull then
    cdsAccountCustodyACCCUSTODYID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTCUSTODY_ID');
end;

procedure TfrmAccount.cdsAccountInterestINTERESTCODEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInterest.Locate('INTERESTCODE', cdsAccountInterestINTERESTCODE.AsString, []) then
    begin
      cdsAccountInterestCCY.AsString := cdsLuInterestCCY.AsString;
    end;
  end;
end;

procedure TfrmAccount.cdsAccountISWAPUChange(Sender: TField);
begin
  inherited;
  edWapuVal.Enabled  := cdsAccountISWAPU.AsString = '1';
  edWapuType.Enabled := cdsAccountISWAPU.AsString = '1';
end;

procedure TfrmAccount.cdsAccountLedgerAfterOpen(DataSet: TDataSet);
begin
  inherited;
  gvwLedgerAcc.Controller.FocusedRowIndex := 0;
end;

procedure TfrmAccount.cdsAccountLedgerALTYPEChange(Sender: TField);
begin
  inherited;
  if (not cdsAccountLedgerSEQID.IsNull) and (not cdsAccountLedgerALTYPE.IsNull) then
  begin
    cdsAccountLedgerALCODE.AsString := cdsAccountLedgerALTYPE.AsString + '-'
      + cdsAccountACCCODE.AsString + '-' + Format('%.5d', [cdsAccountLedgerSEQID.AsInteger]);
  end;
end;

procedure TfrmAccount.cdsAccountLedgerBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccountLedgerALCODE.IsNull then
    cdsAccountLedgerALCODE.AsString := cdsAccountLedgerACCID.AsString + '-' +
      cdsAccountLedgerALTYPE.AsString + '-' + cdsAccountLedgerSEQID.AsString;
end;

procedure TfrmAccount.cdsAccountNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccountACCID.AsInteger        := -1;
  cdsAccountACCCODE.AsString       := '<AUTO>';
  cdsAccountDORMANT.AsString       := '0';
  cdsAccountACC_STS.AsString       := 'A';
  cdsAccountTCSUM_BYBOARD.AsString := '1';

  if dmGlobal.NewAccountTag = 1 then
  begin
    cdsAccountACCSUBTYPE.AsString := 'A';
  end
  else if dmGlobal.NewAccountTag = 2 then
  begin
    cdsAccountACCTYPE.AsString := 'U';
    cdsAccountACCSUBTYPE.AsString := 'M';
    cdsAccountACCINIT.Clear;
    cdsAccountACCNAME.AsString := 'Underwriter Name';
    cdsAccountACCTYPE.Tag := -1;
    cdsAccountACCINIT.Tag := -1;
    cdsAccountACCNAME.Tag := -1;
  end
  else if dmGlobal.NewAccountTag = 3 then
  begin
    cdsAccountACCSUBTYPE.AsString := 'M';
    cdsAccountPRDCODE.AsString := 'RP';
    cdsAccountACCINIT.Tag := -1;
    cdsAccountPRDCODE.Tag := -1;
  end
  else if dmGlobal.NewAccountTag = 4 then
  begin
    cdsAccountACCTYPE.AsString := 'P';
    cdsAccountACCSUBTYPE.AsString := 'M';
    cdsAccountACCINIT.Clear;
    cdsAccountACCNAME.AsString := 'Portfolio Name';
    cdsAccountACCTYPE.Tag := -1;
    cdsAccountACCINIT.Tag := -1;
    cdsAccountACCNAME.Tag := -1;
  end
  else if dmGlobal.NewAccountTag = 5 then
  begin
    cdsAccountACCSUBTYPE.AsString := 'M';
    cdsAccountPRDCODE.AsString := 'MG';
    cdsAccountBUSSTYPE.AsInteger := 8;
    cdsAccountPRDCODE.Tag   := -1;
    cdsAccountBUSSTYPE.Tag  := -1
  end
  else if dmGlobal.NewAccountTag = 6 then
  begin
    cdsAccountACCTYPE.AsString := 'K';
    cdsAccountACCSUBTYPE.AsString := 'M';
    cdsAccountACCINIT.Clear;
    cdsAccountACCNAME.AsString := 'Clearing House Name';
    cdsAccountACCTYPE.Tag := -1;
    cdsAccountACCINIT.Tag := -1;
    cdsAccountACCNAME.Tag := -1;
  end
  else if dmGlobal.NewAccountTag = 7 then
  begin
    cdsAccountACCTYPE.AsString := 'B';
    cdsAccountACCSUBTYPE.AsString := 'M';
    cdsAccountACCINIT.Clear;
    cdsAccountACCNAME.AsString := 'Broker Name';
    cdsAccountACCTYPE.Tag := -1;
    cdsAccountACCINIT.Tag := -1;
    cdsAccountACCNAME.Tag := -1;
  end
  else if dmGlobal.NewAccountTag = 8 then
  begin
    cdsAccountACCTYPE.AsString := 'W';//Walk In Client
    cdsAccountACCSUBTYPE.AsString := 'A';
    cdsAccountACCTYPE.Tag := -1;
    cdsAccountACCSUBTYPE.Tag := -1;
  end
  else
    cdsAccountACCTYPE.Tag := 0;
end;

procedure TfrmAccount.cdsAccountPRDCODEChange(Sender: TField);
var
  i: Integer;
begin
  inherited;
  if (cdsAccountACCCODE.AsString = '<AUTO>') or (cdsAccountACCCODE.IsNull) then
  begin
    i := dmGlobal.RemoteServer.GetSeq('ACCNO-' + cdsAccountPRDCODE.AsString);
    cdsAccountACCCODE.AsString := cdsAccountPRDCODE.AsString + Format('%.7d', [i]);
  end;
end;

procedure TfrmAccount.cdsAccountTransLedgerBROKER_ACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (not cdsLuLedgerAccByAccount.Active) or (cdsLuLedgerAccByAccount.Params[0].AsInteger <> Sender.AsInteger) then
    begin
      cdsLuLedgerAccByAccount.Close;
      cdsLuLedgerAccByAccount.Params[0].AsInteger := Sender.AsInteger;
      cdsLuLedgerAccByAccount.Open;
    end;
  end;
end;

procedure TfrmAccount.chkWAPUPropertiesChange(Sender: TObject);
begin
  inherited;
  if cdsAccount.State in dsEditModes then
  begin
    edWapuVal.Enabled  := chkWAPU.Checked;
    edWapuType.Enabled := chkWAPU.Checked;

    cdsAccountWAPU_VALUE.AsFloat  := 0;
    cdsAccountWAPU_TYPE.AsInteger := 0;
  end;
end;

procedure TfrmAccount.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;

    if not cdsLuReportTC.Active then
      cdsLuReportTC.Open;
  end;

  pageAccount.ActivePage := tabGeneral;
end;

procedure TfrmAccount.FormShow(Sender: TObject);
begin
  inherited;
//  PrepareLookupData;
  lcSettleMode.Visible := cbSettleType.DataBinding.Field.AsString = 'OTC';
  edWapuVal.Enabled    := chkWAPU.Checked;
  edWapuType.Enabled   := chkWAPU.Checked;

//  if not (cdsAccount.State in dsEditModes) then
  if dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString <> '' then
    ViewCorrectTab(dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString);
end;

procedure TfrmAccount.glvContactEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  AAllow := True;
  if (AItem = glvContactADDRESS1)
    or (AItem = glvContactADDRESS2)
    or (AItem = glvContactADDRESS3)
    or (AItem = glvContactZIPCODE)
    or (AItem = glvContactCOUNTCODE)
    or (AItem = glvContactPROVCODE)
    or (AItem = glvContactCITY) then
  begin
    AAllow := VarToStr(glvContactADDR_REF.EditValue) <> '1';
  end
  else if (AItem = glvContactADDRTYPE_REF) then
  begin
    AAllow := VarToStr(glvContactADDR_REF.EditValue) = '1';
  end;
end;

procedure TfrmAccount.glvContactInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  if AItem = glvContactPROVCODE then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, glvContactCOUNTCODE.EditValue, VarToStr(glvContactCOUNTCODE.EditValue));
      Active := True;
    end;
  end
  else if AItem = glvContactCITY then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, glvContactPROVCODE.EditValue, VarToStr(glvContactPROVCODE.EditValue));
      Active := True;
    end;
  end;
end;

procedure TfrmAccount.gvwChargeInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  if AItem = gvwChargeCHARGE_ID then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, gvwChargeMARKETCODE.EditValue, VarToStr(gvwChargeMARKETCODE.EditValue));
      Active := True;
    end;
  end;
end;

procedure TfrmAccount.gvwCommInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  if AItem = gvwCommCOMM_ID then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[3], foEqual, gvwCommMARKETCODE.EditValue, VarToStr(gvwCommMARKETCODE.EditValue));
      Active := True;
    end;
  end;
end;

procedure TfrmAccount.pageAccountDrawTab(AControl: TcxCustomTabControl;
  ATab: TcxTab; var DefaultDraw: Boolean);
var
  ARect: TRect;
  AColor, AFontColor, ABorderColor: TColor;
begin
//Just Prepared For Colouring TabSheet in New FrameWork
//Don''t forget to set tcxPageControl OwnerDraw property to True
  Inherited;
  if ATab.VisibleIndex mod 2 = 0 then
    begin
      ARect := ATab.FullRect;
      AColor := clAqua;
      AFontColor := clRed;
    end
  else
    begin
      ARect := ATab.VisibleRect;
      AColor := clWindow;
      AFontColor := clBlack;
    end;
  ABorderColor := AControl.LookAndFeel.Painter.DefaultSchedulerBorderColor;
  with AControl.Canvas do
  begin
    FillRect(ARect, AColor);
    DrawComplexFrame(ARect, ABorderColor, ABorderColor, cxBordersAll - [bBottom], 1);
    Brush.Style := bsClear;
    Font.Color := AFontColor;
    DrawTexT(ATab.Caption, ARect,taCenter, vaCenter, false, true);
  end;
  DefaultDraw := false;
end;

procedure TfrmAccount.PrepareLookupBank;
var
  BrokerAccID: Integer;
begin
  cdsLuCustBank.Close;
  cdsLuCustBank.CreateDataSet;

  with dsBank.DataSet do
  begin
    First;
    while not Eof do
    begin
      cdsLuCustBank.Append;
      cdsLuCustBankACCBANKID.AsInteger := FieldByName('ACCBANKID').AsInteger;
      cdsLuCustBankACCID.AsInteger := FieldByName('ACCID').AsInteger;
      cdsLuCustBankBNCODE.AsString := FieldByName('BNCODE').AsString;
      cdsLuCustBankBANKACCNO.AsString := FieldByName('BANKACCNO').AsString;
      cdsLuCustBankBANKACCNAME.AsString := FieldByName('BANKACCNAME').AsString;
      cdsLuCustBankBANKBRANCH.AsString := FieldByName('BANKBRANCH').AsString;
      cdsLuCustBank.Post;

      Next;
    end;
  end;

  with dmGlobal.IntDataLookup.cdsLuBankAccount do
  begin
    BrokerAccID := dmGlobal.RemoteServer.GetBrokerAccount;

    Close;
    Params[0].AsInteger := BrokerAccID;
    Open;

    First;
    while not Eof do
    begin
      cdsLuCustBank.Append;
      cdsLuCustBankACCBANKID.AsInteger := FieldByName('ACCBANKID').AsInteger;
      cdsLuCustBankACCID.AsInteger := BrokerAccID;
      cdsLuCustBankBNCODE.AsString := FieldByName('BNCODE').AsString;
      cdsLuCustBankBANKACCNO.AsString := FieldByName('BANKACCNO').AsString;
      cdsLuCustBankBANKACCNAME.AsString := FieldByName('BANKACCNAME').AsString;
      cdsLuCustBankBANKBRANCH.AsString := FieldByName('BANKBRANCH').AsString;
      cdsLuCustBank.Post;

      Next;
    end;
  end;
end;

procedure TfrmAccount.PrepareLookupCustody;
var
  BrokerAccID: Integer;
begin
  cdsLuCustCustody.Close;
  cdsLuCustCustody.CreateDataSet;

  with dsCustody.DataSet do
  begin
    First;
    while not Eof do
    begin
      cdsLuCustCustody.Append;
      cdsLuCustCustodyACCCUSTODYID.AsInteger := FieldByName('ACCCUSTODYID').AsInteger;
      cdsLuCustCustodyACCID.AsInteger := FieldByName('ACCID').AsInteger;
      cdsLuCustCustodyCUSTODYCODE.AsString := FieldByName('CUSTODYCODE').AsString;
      cdsLuCustCustodyCUSTODYACCNO.AsString := FieldByName('CUSTODYACCNO').AsString;
      cdsLuCustCustodyCUSTODYACCNAME.AsString := FieldByName('CUSTODYACCNAME').AsString;
      cdsLuCustCustodyCUSTODYBRANCH.AsString := FieldByName('CUSTODYBRANCH').AsString;
      cdsLuCustCustody.Post;

      Next;
    end;
  end;

  with dmGlobal.IntDataLookup.cdsLuCustodyAccount do
  begin
    BrokerAccID := dmGlobal.RemoteServer.GetBrokerAccount;

    Close;
    Params[0].AsInteger := BrokerAccID;
    Open;

    First;
    while not Eof do
    begin
      cdsLuCustCustody.Append;
      cdsLuCustCustodyACCCUSTODYID.AsInteger := FieldByName('ACCCUSTODYID').AsInteger;
      cdsLuCustCustodyACCID.AsInteger := FieldByName('ACCID').AsInteger;
      cdsLuCustCustodyCUSTODYCODE.AsString := FieldByName('CUSTODYCODE').AsString;
      cdsLuCustCustodyCUSTODYACCNO.AsString := FieldByName('CUSTODYACCNO').AsString;
      cdsLuCustCustodyCUSTODYACCNAME.AsString := FieldByName('CUSTODYACCNAME').AsString;
      cdsLuCustCustodyCUSTODYBRANCH.AsString := FieldByName('CUSTODYBRANCH').AsString;
      cdsLuCustCustody.Post;

      Next;
    end;
  end;
end;

procedure TfrmAccount.PrepareLookupData;
begin
  PrepareLookupBank;
  PrepareLookupCustody;
end;

procedure TfrmAccount.tabCreditLimitShow(Sender: TObject);
begin
  inherited;
//  ViewCorrectTab(dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString);
end;

Initialization
  RegisterClass(TfrmAccount);

end.
