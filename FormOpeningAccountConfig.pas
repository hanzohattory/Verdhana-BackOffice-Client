unit FormOpeningAccountConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxPCdxBarPopupMenu, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridDBTableView, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxLabel, cxTextEdit,
  cxCheckBox, cxGroupBox, cxPC, Datasnap.DBClient, NClientDataset, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxRadioGroup, dxBarBuiltInMenu,
  dxLayoutLookAndFeels, dxDateRanges, dxScrollbarAnnotations, DataLookup;

const
  CCTYPE_CASH = 'CS';
  CCTYPE_REG = 'RV';
  CCTYPE_RATIO = 'TV';
  CCTYPE_APPRLIMIT = 'AL';

type
  TfrmOpeningAccountConfig = class(TfrmEditorData)
    cdsOAAccount: TNClientDataset;
    cdsOAAccountOAID: TIntegerField;
    cdsOAAccountACCNAME: TStringField;
    cdsOAAccountACCINIT: TStringField;
    cdsOAAccountACCTYPE: TStringField;
    cdsOAAccountACCSUBTYPE: TStringField;
    cdsOAAccountBRANCHID: TLargeintField;
    cdsOAAccountINVTYPE: TStringField;
    cdsOAAccountBUSSTYPE: TLargeintField;
    cdsOAAccountTC_MODEL: TStringField;
    cdsOAAccountPRDCODE: TStringField;
    cdsOAAccountA_CLS_ORDER: TStringField;
    cdsOAAccountAVGPRICEDEC: TSmallintField;
    cdsOAAccountOMNIBUSTRADE: TStringField;
    cdsOAAccountCASHKEEP: TStringField;
    cdsOAAccountSTOCKKEEP: TStringField;
    cdsOAAccountISWAPU: TStringField;
    cdsOAAccountISUSEWHT: TStringField;
    cdsOAAccountISUSEOTC: TStringField;
    cdsOAAccountISOWNCONTACT: TStringField;
    cdsOAAccountISTRDACCOUNT: TStringField;
    cdsOAAccountAUTO_SETTLE: TStringField;
    cdsOAAccountSALESID: TLargeintField;
    cdsOAAccountACC_STS: TStringField;
    cdsOAAccountOMGUSE: TStringField;
    cdsOAAccountOMGEXREFFCODE: TStringField;
    cdsOAAccountOMGALERT: TStringField;
    cdsOAAccountOMGSENDSSI: TStringField;
    cdsOAAccountOMGSENDFEEINBLOCK: TStringField;
    cdsOAAccountSI_SPLIT: TStringField;
    cdsOAAccountALCID: TIntegerField;
    cdsOAAccountTALCID: TIntegerField;
    cdsOAAccountLASTTR_DATE: TDateTimeField;
    cdsOAAccountTRF_PRVT_BANK: TStringField;
    cdsOAAccountTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsOAAccountCCCLS_ID: TLargeintField;
    cdsOAAccountCC_TYPE: TStringField;
    cdsOAAccountCR_VAL: TFloatField;
    cdsOAAccountBUY_LIMIT: TFloatField;
    cdsOAAccountSELL_LIMIT: TFloatField;
    cdsOAAccountIS_IDX_TRX: TStringField;
    cdsOAAccountTLCLASSID: TIntegerField;
    cdsOAAccountDEFTRDPARAM: TStringField;
    cdsOAAccountKSEI_SID: TStringField;
    cdsOAAccountRATIO_MRGCALL: TFloatField;
    cdsOAAccountRATIO_MRGWARING: TFloatField;
    cdsOAAccountRATIO_FORCESELL: TFloatField;
    cdsOAAccountFORCESELL_DAY: TIntegerField;
    cdsOAAccountTL_CASHVALUATE: TFloatField;
    cdsOAAccountTL_STOCKVALUATE: TFloatField;
    cdsOAAccountACCPASSWORD: TStringField;
    cdsOAAccountCPID: TIntegerField;
    cdsOAAccountBUS_CAT: TLargeintField;
    cdsOAAccountINIT_DEPOSIT_FUND: TFloatField;
    cdsOAAccountINIT_DEPOSIT_SHARES: TFloatField;
    cdsOAAccountALLOC_TYPE: TStringField;
    cdsOAAccountTC_BASE: TStringField;
    cdsOAAccountAUTO_ALLOC: TStringField;
    cdsOAAccountDT_AUTOAVGPRICE: TStringField;
    cdsOAAccountSETTLE_MODE: TStringField;
    cdsOAAccountNET_SETTLE: TStringField;
    cdsOAAccountSETTLE_TYPE: TStringField;
    cdsOAAccountDIVIDEN_TAX: TFloatField;
    cdsOAAccountDORMANT: TStringField;
    cdsOAAccountRISK: TStringField;
    cdsOAAccountEXCELL_CLASS: TIntegerField;
    cdsOAAccountMODDA: TDateTimeField;
    cdsOAAccountMODUI: TStringField;
    cdsOAAccountAPPDA: TDateTimeField;
    cdsOAAccountAPPUI: TStringField;
    cdsOAAccountUNDER4Y: TIntegerField;
    cdsOAAccountUNDER4YDA: TDateTimeField;
    cdsOAAccountNOTES4Y: TStringField;
    cdsOAAccountISDEL: TIntegerField;
    cdsOAAccountID: TLargeintField;
    cdsOAAccountqryOAAccountInterest: TDataSetField;
    cdsOAAccountqryOAAccountExtReff: TDataSetField;
    cdsOAAccountqryOAAccountCharge: TDataSetField;
    cdsOAAccountqryOAAccountComm: TDataSetField;
    dsComm: TDataSource;
    dsCharge: TDataSource;
    dsExtRef: TDataSource;
    dsInterest: TDataSource;
    cdsOAAccountComm: TNClientDataset;
    cdsOAAccountCharge: TNClientDataset;
    cdsOAAccountInterest: TNClientDataset;
    cdsOAAccountExtReff: TNClientDataset;
    cdsOAAccountCommOAID: TIntegerField;
    cdsOAAccountCommMARKETCODE: TStringField;
    cdsOAAccountCommCHANNELCODE: TStringField;
    cdsOAAccountCommCOMM_ID: TLargeintField;
    cdsOAAccountCommCALC_METHOD: TStringField;
    cdsOAAccountCommUSE_DAYTRADE: TStringField;
    cdsOAAccountCommUSE_MINCOMM: TStringField;
    cdsOAAccountCommWITH_SELLTAX: TStringField;
    cdsOAAccountCommMODDA: TDateTimeField;
    cdsOAAccountCommMODUI: TStringField;
    cdsOAAccountCommAPPDA: TDateTimeField;
    cdsOAAccountCommAPPUI: TStringField;
    cdsOAAccountCommUNDER4Y: TIntegerField;
    cdsOAAccountCommUNDER4YDA: TDateTimeField;
    cdsOAAccountCommNOTES4Y: TStringField;
    cdsOAAccountCommISDEL: TIntegerField;
    cdsOAAccountCommID: TLargeintField;
    cdsOAAccountChargeOAID: TIntegerField;
    cdsOAAccountChargeMARKETCODE: TStringField;
    cdsOAAccountChargeCHARGE_ID: TLargeintField;
    cdsOAAccountChargeISUSED: TStringField;
    cdsOAAccountChargeMODDA: TDateTimeField;
    cdsOAAccountChargeMODUI: TStringField;
    cdsOAAccountChargeAPPDA: TDateTimeField;
    cdsOAAccountChargeAPPUI: TStringField;
    cdsOAAccountChargeUNDER4Y: TIntegerField;
    cdsOAAccountChargeUNDER4YDA: TDateTimeField;
    cdsOAAccountChargeNOTES4Y: TStringField;
    cdsOAAccountChargeISDEL: TIntegerField;
    cdsOAAccountChargeID: TLargeintField;
    cdsOAAccountInterestOAID: TIntegerField;
    cdsOAAccountInterestCCY: TStringField;
    cdsOAAccountInterestINTERESTCODE: TStringField;
    cdsOAAccountInterestMODDA: TDateTimeField;
    cdsOAAccountInterestMODUI: TStringField;
    cdsOAAccountInterestAPPDA: TDateTimeField;
    cdsOAAccountInterestAPPUI: TStringField;
    cdsOAAccountInterestUNDER4Y: TIntegerField;
    cdsOAAccountInterestUNDER4YDA: TDateTimeField;
    cdsOAAccountInterestNOTES4Y: TStringField;
    cdsOAAccountInterestISDEL: TIntegerField;
    cdsOAAccountInterestID: TLargeintField;
    cdsOAAccountExtReffOAID: TIntegerField;
    cdsOAAccountExtReffEXTSYS_ID: TIntegerField;
    cdsOAAccountExtReffEXTREF_CODE: TStringField;
    cdsOAAccountExtReffMODDA: TDateTimeField;
    cdsOAAccountExtReffMODUI: TStringField;
    cdsOAAccountExtReffAPPDA: TDateTimeField;
    cdsOAAccountExtReffAPPUI: TStringField;
    cdsOAAccountExtReffUNDER4Y: TIntegerField;
    cdsOAAccountExtReffUNDER4YDA: TDateTimeField;
    cdsOAAccountExtReffNOTES4Y: TStringField;
    cdsOAAccountExtReffISDEL: TIntegerField;
    cdsOAAccountExtReffID: TLargeintField;
    pageAccount: TcxPageControl;
    tabGeneral: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl5: TdxLayoutControl;
    chkWAPU: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Group3: TdxLayoutGroup;
    dxLayoutControl5Item16: TdxLayoutItem;
    dxLayoutControl5Item5: TdxLayoutItem;
    dxLayoutControl5Item11: TdxLayoutItem;
    dxLayoutControl5Group5: TdxLayoutGroup;
    lcAvgDec: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl5Item13: TdxLayoutItem;
    dxLayoutControl5Item17: TdxLayoutItem;
    cbTCModel: TcxDBImageComboBox;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl4Item1: TdxLayoutItem;
    tabSettle: TcxTabSheet;
    dxLayoutControl6: TdxLayoutControl;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cbSettleType: TcxDBImageComboBox;
    dxLayoutGroup7: TdxLayoutGroup;
    lcSettleMode: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutControl6Item5: TdxLayoutItem;
    tabInterest: TcxTabSheet;
    cxGrid9: TcxGrid;
    gvwInterest: TcxGridDBBandedTableView;
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
    cxGridLevel9: TcxGridLevel;
    tabCommission: TcxTabSheet;
    grdComm: TcxGrid;
    gvwComm: TcxGridDBTableView;
    gvwCommCHANNELCODE: TcxGridDBColumn;
    gvwCommMARKETCODE: TcxGridDBColumn;
    gvwCommCCYCODE: TcxGridDBColumn;
    gvwCommCOMM_ID: TcxGridDBColumn;
    gvwCommDESCRIPTION: TcxGridDBColumn;
    gvwCommCALC_METHOD: TcxGridDBColumn;
    gvwCommUSE_MINCOMM: TcxGridDBColumn;
    gvwCommWITH_SELLTAX: TcxGridDBColumn;
    grdCommLevel1: TcxGridLevel;
    tabCharges: TcxTabSheet;
    tabExtRef: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2EXTSYS_ID: TcxGridDBColumn;
    cxGridDBTableView2EXTREF_CODE: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBImageComboBox5: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLookupComboBox22: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cbBusType: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    btnGetSetting: TcxButton;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsBusType: TNClientDataset;
    cdsBusTypeCharge: TNClientDataset;
    cdsBusTypeComm: TNClientDataset;
    cdsBusTypeInterest: TNClientDataset;
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
    cdsOAAccountCommDESCRIPTION: TStringField;
    cdsOAAccountChargeDESCRIPTION: TStringField;
    cdsOAAccountChargeCHARGE_DESC: TStringField;
    tabCreditLimit: TcxTabSheet;
    PC: TcxPageControl;
    ctDefault: TcxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutGroup9: TdxLayoutGroup;
    ctCash: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
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
    dxLayoutGroup10: TdxLayoutGroup;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlItem27: TdxLayoutItem;
    LayoutControlItem12: TdxLayoutItem;
    LayoutControlItem18: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    ctReg: TcxTabSheet;
    dxLayoutControl8: TdxLayoutControl;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup11: TcxDBRadioGroup;
    cxDBRadioGroup13: TcxDBRadioGroup;
    cxDBRadioGroup14: TcxDBRadioGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    LayoutControlItem13: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    ctRatio: TcxTabSheet;
    dxLayoutControl9: TdxLayoutControl;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBRadioGroup10: TcxDBRadioGroup;
    cxDBRadioGroup12: TcxDBRadioGroup;
    cxDBRadioGroup15: TcxDBRadioGroup;
    cxDBRadioGroup16: TcxDBRadioGroup;
    cxDBRadioGroup17: TcxDBRadioGroup;
    cxDBRadioGroup18: TcxDBRadioGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutControl5Group4: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutControl5Group6: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutControl5Group8: TdxLayoutGroup;
    dxLayoutControl5Group9: TdxLayoutGroup;
    dxLayoutControl5Group7: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    ctApprLimit: TcxTabSheet;
    dxLayoutControl10: TdxLayoutControl;
    cxDBRadioGroup19: TcxDBRadioGroup;
    cxDBRadioGroup20: TcxDBRadioGroup;
    cxDBRadioGroup21: TcxDBRadioGroup;
    cxDBRadioGroup22: TcxDBRadioGroup;
    cxDBRadioGroup23: TcxDBRadioGroup;
    cxDBRadioGroup24: TcxDBRadioGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutControl11: TdxLayoutControl;
    CreditLimitClass: TcxDBLookupComboBox;
    btnSetCreditLimit: TButton;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    cdsOAAccountqryOAAccountCreditLimit: TDataSetField;
    dsCreditLimit: TDataSource;
    cdsOAAccountCreditLimit: TNClientDataset;
    cdsOAAccountCreditLimitOAID: TIntegerField;
    cdsOAAccountCreditLimitCCCLS_ID: TLargeintField;
    cdsOAAccountCreditLimitCCLSSNAME: TStringField;
    cdsOAAccountCreditLimitCC_TYPE: TStringField;
    cdsOAAccountCreditLimitTL_CASHVALUATE: TFloatField;
    cdsOAAccountCreditLimitTL_STOCKVALUATE: TFloatField;
    cdsOAAccountCreditLimitTLB_OVERLIMIT: TStringField;
    cdsOAAccountCreditLimitTLB_NOTVALIDSTATUS: TStringField;
    cdsOAAccountCreditLimitTLB_MRG_NONVALSTOCK: TStringField;
    cdsOAAccountCreditLimitTLB_OVERDUE: TStringField;
    cdsOAAccountCreditLimitTLS_SHORTSELL: TStringField;
    cdsOAAccountCreditLimitTLS_NOTVALIDSTATUS: TStringField;
    cdsOAAccountCreditLimitTLS_OVERDUE: TStringField;
    cdsOAAccountCreditLimitRATIO_MRGCALL: TFloatField;
    cdsOAAccountCreditLimitRATIO_MRGWARING: TFloatField;
    cdsOAAccountCreditLimitRATIO_FORCESELL: TFloatField;
    cdsOAAccountCreditLimitFORCESELL_DAY: TIntegerField;
    cdsOAAccountCreditLimitCR_VAL: TFloatField;
    cdsOAAccountCreditLimitBUY_LIMIT: TFloatField;
    cdsOAAccountCreditLimitSELL_LIMIT: TFloatField;
    cdsOAAccountCreditLimitCREDIT_LIMIT: TFloatField;
    cdsOAAccountCreditLimitMODDA: TDateTimeField;
    cdsOAAccountCreditLimitMODUI: TStringField;
    cdsOAAccountCreditLimitAPPDA: TDateTimeField;
    cdsOAAccountCreditLimitAPPUI: TStringField;
    cdsOAAccountCreditLimitUNDER4Y: TIntegerField;
    cdsOAAccountCreditLimitUNDER4YDA: TDateTimeField;
    cdsOAAccountCreditLimitNOTES4Y: TStringField;
    cdsOAAccountCreditLimitISDEL: TIntegerField;
    cdsOAAccountCreditLimitID: TLargeintField;
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
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem33: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem30: TdxLayoutItem;
    Panel1: TPanel;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBBandedTableView;
    gvwChargeOAID: TcxGridDBBandedColumn;
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
    grdChargeLevel1: TcxGridLevel;
    grdChargeByBussTypeLevel1: TcxGridLevel;
    grdChargeByBussType: TcxGrid;
    cdsChargeByBusType: TClientDataSet;
    dsChargeByBusType: TDataSource;
    cdsChargeByBusTypeMARKETCODE: TStringField;
    cdsChargeByBusTypeCHARGE_CODE: TStringField;
    cdsChargeByBusTypeCHARGE_DESC: TStringField;
    gvwChargeByBussType: TcxGridDBBandedTableView;
    gvwChargeByBussTypeMARKETCODE: TcxGridDBBandedColumn;
    gvwChargeByBussTypeCHARGE_CODE: TcxGridDBBandedColumn;
    gvwChargeByBussTypeCHARGE_DESC: TcxGridDBBandedColumn;
    cdsOAAccountREFERRAL_ID_INT: TIntegerField;
    cdsOAAccountREFERRAL_ID_EXT: TIntegerField;
    cdsOAAccountSINVUSE: TStringField;
    cdsOAAccountWAPU_VALUE: TFloatField;
    cdsOAAccountWAPU_TYPE: TIntegerField;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem31: TdxLayoutItem;
    edWapuVal: TcxDBCurrencyEdit;
    dxLayoutItem32: TdxLayoutItem;
    edWapuType: TcxDBImageComboBox;
    dxLayoutItem34: TdxLayoutItem;
    cdsAccount: TNClientDataset;
    dxLayoutItem37: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cdsOAAccountREPORTID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnGetSettingClick(Sender: TObject);
    procedure gvwChargeInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure btnSetCreditLimitClick(Sender: TObject);
    procedure luCCTypePropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsOAAccountChargeNewRecord(DataSet: TDataSet);
    procedure cdsOAAccountAfterOpen(DataSet: TDataSet);
    procedure cxDBCheckBox2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ViewCorrectTab(Atype: String);
  end;

var
  frmOpeningAccountConfig: TfrmOpeningAccountConfig;

implementation

{$R *.dfm}

uses DataGlobal, cxLookupDBGrid;

procedure TfrmOpeningAccountConfig.btnGetSettingClick(Sender: TObject);
var
  oSourceField, oTargetField: TField;
  i: Integer;
begin
  inherited;
  if (cdsOAAccount.ReadOnly) or (cdsOAAccountBUSSTYPE.IsNull) then
    Exit;

  cdsBusType.Close;
  cdsBusType.Params[0].AsInteger := cdsOAAccountBUSSTYPE.AsInteger;
  cdsBusType.Open;

  if not cdsBusType.IsEmpty then
  begin
    if not (cdsOAAccount.State in dsEditModes) then
      cdsOAAccount.Edit;

    for i := 0 to cdsBusType.FieldCount - 1 do
    begin
      oSourceField := cdsBusType.Fields[i];
      oTargetField := cdsOAAccount.FindField(oSourceField.FieldName);
      if (oTargetField <> Nil) and (oTargetField.FieldKind = fkData)
        and (oTargetField.DataType <> ftDataSet) then
      begin
        oTargetField.Value := oSourceField.Value;
      end;
    end;

    //Interest
    while not cdsOAAccountInterest.IsEmpty do
    begin
      cdsOAAccountInterest.Delete;
    end;

    cdsBusTypeInterest.First;
    while not cdsBusTypeInterest.Eof do
    begin
      cdsOAAccountInterest.Append;
      cdsOAAccountInterestCCY.AsString := cdsBusTypeInterestCCY.AsString;
      cdsOAAccountInterestINTERESTCODE.AsString := cdsBusTypeInterestINTERESTCODE.AsString;
      cdsOAAccountInterest.Post;

      cdsBusTypeInterest.Next;
    end;

    //Commission
    while not cdsOAAccountComm.IsEmpty do
    begin
      cdsOAAccountComm.Delete;
    end;

    cdsBusTypeComm.First;
    while not cdsBusTypeComm.Eof do
    begin
      cdsOAAccountComm.Append;
      cdsOAAccountCommMARKETCODE.AsString := cdsBusTypeCommMARKETCODE.AsString;
      cdsOAAccountCommCHANNELCODE.AsString := cdsBusTypeCommCHANNELCODE.AsString;
      cdsOAAccountCommCOMM_ID.AsLargeInt := cdsBusTypeCommCOMM_ID.AsLargeInt;
      cdsOAAccountCommCALC_METHOD.AsString := cdsBusTypeCommCALC_METHOD.AsString;
      cdsOAAccountCommUSE_DAYTRADE.AsString := cdsBusTypeCommUSE_DAYTRADE.AsString;
      cdsOAAccountCommUSE_MINCOMM.AsString := cdsBusTypeCommUSE_MINCOMM.AsString;
      cdsOAAccountCommWITH_SELLTAX.AsString := cdsBusTypeCommWITH_SELLTAX.AsString;
      cdsOAAccountComm.Post;

      cdsBusTypeComm.Next;
    end;

    //Charges
    while not cdsOAAccountCharge.IsEmpty do
    begin
      cdsOAAccountCharge.Delete;
    end;

    cdsBusTypeCharge.First;
    while not cdsBusTypeCharge.Eof do
    begin
      cdsOAAccountCharge.Append;
      cdsOAAccountChargeMARKETCODE.AsString := cdsBusTypeChargeMARKETCODE.AsString;
      cdsOAAccountChargeCHARGE_ID.AsLargeInt := cdsBusTypeChargeCHARGE_ID.AsLargeInt;
      cdsOAAccountChargeISUSED.AsString := cdsBusTypeChargeISUSED.AsString;
      cdsOAAccountCharge.Post;

      cdsBusTypeCharge.Next;
    end;
  end;
end;

procedure TfrmOpeningAccountConfig.btnSetCreditLimitClick(Sender: TObject);
begin
  inherited;
  if (not TClientDataset(dsCreditLimit.DataSet).ReadOnly) And (not cdsOAAccountCreditLimitCCCLS_ID.IsNull) then
  begin
    cdsCrdConClassByParam.Close;
    cdsCrdConClassByParam.Params[0].AsInteger := CreditLimitClass.EditValue;
    cdsCrdConClassByParam.Open;

    if not cdsCrdConClassByParam.IsEmpty then
    begin
      dsCreditLimit.DataSet.FieldByName('CCLSSNAME').AsString := cdsCrdConClassByParamCCLSSNAME.AsString;
      dsCreditLimit.DataSet.FieldByName('CC_TYPE').AsString := cdsCrdConClassByParamCC_TYPE.AsString;
      dsCreditLimit.DataSet.FieldByName('RATIO_MRGCALL').Value := cdsCrdConClassByParamRATIO_MRGCALL.Value;
      dsCreditLimit.DataSet.FieldByName('RATIO_MRGWARING').Value := cdsCrdConClassByParamRATIO_MRGWARING.Value;
      dsCreditLimit.DataSet.FieldByName('RATIO_FORCESELL').Value := cdsCrdConClassByParamRATIO_FORCESELL.Value;
      dsCreditLimit.DataSet.FieldByName('FORCESELL_DAY').Value := cdsCrdConClassByParamFORCESELL_DAY.Value;
      dsCreditLimit.DataSet.FieldByName('TL_CASHVALUATE').Value := cdsCrdConClassByParamTL_CASHVALUATE.Value;
      dsCreditLimit.DataSet.FieldByName('TL_STOCKVALUATE').Value := cdsCrdConClassByParamTL_STOCKVALUATE.Value;
      dsCreditLimit.DataSet.FieldByName('CR_VAL').Value := cdsCrdConClassByParamCR_VAL.Value;
      dsCreditLimit.DataSet.FieldByName('BUY_LIMIT').Value := cdsCrdConClassByParamBUY_LIMIT.Value;
      dsCreditLimit.DataSet.FieldByName('SELL_LIMIT').Value := cdsCrdConClassByParamSELL_LIMIT.Value;
      dsCreditLimit.DataSet.FieldByName('TLB_OVERLIMIT').AsString := cdsCrdConClassByParamTLB_OVERLIMIT.AsString;
      dsCreditLimit.DataSet.FieldByName('TLB_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLB_NOTVALIDSTATUS.AsString;
      dsCreditLimit.DataSet.FieldByName('TLB_MRG_NONVALSTOCK').AsString := cdsCrdConClassByParamTLB_MRG_NONVALSTOCK.AsString;
      dsCreditLimit.DataSet.FieldByName('TLB_OVERDUE').AsString := cdsCrdConClassByParamTLB_OVERDUE.AsString;
      dsCreditLimit.DataSet.FieldByName('TLS_SHORTSELL').AsString := cdsCrdConClassByParamTLS_SHORTSELL.AsString;
      dsCreditLimit.DataSet.FieldByName('TLS_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLS_NOTVALIDSTATUS.AsString;
      dsCreditLimit.DataSet.FieldByName('TLS_OVERDUE').AsString := cdsCrdConClassByParamTLS_OVERDUE.AsString;

      ViewCorrectTab(dsCreditLimit.DataSet.FieldByName('CC_TYPE').AsString);
    end;
  end;
end;

procedure TfrmOpeningAccountConfig.cdsOAAccountAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsChargeByBusType.Close;
  cdsChargeByBusType.Params[0].AsInteger := cdsOAAccountBUSSTYPE.AsInteger;
  cdsChargeByBusType.Open;
end;

procedure TfrmOpeningAccountConfig.cdsOAAccountChargeNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsOAAccountChargeISUSED.AsString := '0';
end;

procedure TfrmOpeningAccountConfig.cxDBCheckBox2PropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cdsOAAccount.State in dsEditModes then
  begin
    edWapuVal.Enabled  := chkWAPU.Checked;
    edWapuType.Enabled := chkWAPU.Checked;

    cdsOAAccountWAPU_VALUE.AsFloat  := 0;
    cdsOAAccountWAPU_TYPE.AsInteger := 0;
  end;
end;

procedure TfrmOpeningAccountConfig.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBusinessType.Active then
      cdsLuBusinessType.Open
    else
      cdsLuBusinessType.Refresh;

    if not cdsLuBussCat.Active then
      cdsLuBussCat.Open
    else
      cdsLuBussCat.Refresh;

    if not cdsLuCommission.Active then
      cdsLuCommission.Open
    else
      cdsLuCommission.Refresh;

    if not cdsLuCharge.Active then
      cdsLuCharge.Open
    else
      cdsLuCharge.Refresh;

    if not cdsLuChannel.Active then
      cdsLuChannel.Open
    else
      cdsLuChannel.Refresh;

    if not cdsLuMarket.Active then
      cdsLuMarket.Open
    else
      cdsLuMarket.Refresh;

    if not cdsLuTransType.Active then
      cdsLuTransType.Open
    else
      cdsLuTransType.Refresh;

    if not cdsLuExtSystem.Active then
      cdsLuExtSystem.Open
    else
      cdsLuExtSystem.Refresh;

    if not cdsLuSales.Active then
      cdsLuSales.Open
    else
      cdsLuSales.Refresh;

    if not cdsLuBranch.Active then
      cdsLuBranch.Open
    else
      cdsLuBranch.Refresh;

    if not cdsLuProduct.Active then
      cdsLuProduct.Open
    else
      cdsLuProduct.Refresh;

    if not cdsLuCustody.Active then
      cdsLuCustody.Open
    else
      cdsLuCustody.Refresh;

    if not cdsLuTradingLimitClass.Active then
      cdsLuTradingLimitClass.Open
    else
      cdsLuTradingLimitClass.Refresh;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open
    else
      cdsLuCcy.Refresh;

    if not cdsLuInterest.Active then
      cdsLuInterest.Open
    else
      cdsLuInterest.Refresh;

    if not cdsLuInterestType.Active then
      cdsLuInterestType.Open
    else
      cdsLuInterestType.Refresh;

    if not cdsLuCrdConClass.Active then
      cdsLuCrdConClass.Open
    else
      cdsLuCrdConClass.Refresh;

    if not cdsLuCCType.Active then
      cdsLuCCType.Open
    else
      cdsLuCCType.Refresh;

    if not cdsLuReportTC.Active then
      cdsLuReportTC.Open;

    //  dsAccount.DataSet := cdsAccount;
  end;

  pageAccount.ActivePage := tabGeneral;
end;

procedure TfrmOpeningAccountConfig.FormShow(Sender: TObject);
begin
  inherited;

  if dsCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_CASH then PC.ActivePage := ctCash
  else if dsCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_REG then PC.ActivePage := ctReg
  else if dsCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_RATIO then PC.ActivePage := ctRatio
  else if dsCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
  else PC.ActivePage := ctDefault;
end;

procedure TfrmOpeningAccountConfig.gvwChargeInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
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

procedure TfrmOpeningAccountConfig.luCCTypePropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  ViewCorrectTab(VarToStr(luCCType.EditValue));
end;

procedure TfrmOpeningAccountConfig.ViewCorrectTab(Atype: String);
begin
  if Atype = CCTYPE_CASH then PC.ActivePage := ctCash
  else if Atype = CCTYPE_REG then PC.ActivePage := ctReg
  else if Atype = CCTYPE_RATIO then PC.ActivePage := ctRatio
  else if Atype = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
  else PC.ActivePage := ctDefault;

end;

Initialization
  RegisterClass(TfrmOpeningAccountConfig);

end.
