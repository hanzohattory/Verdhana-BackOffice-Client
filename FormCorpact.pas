unit FormCorpact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, cxImageComboBox, cxPCdxBarPopupMenu,
  cxCalendar, cxCurrencyEdit, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, NClientDataset,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ActnList, NDatasetAction, dxBarBuiltInMenu,
  dxDateRanges, dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels;

type
  TfrmCorpAct = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    pageAnnouncement: TcxPageControl;
    tsStockSplit: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    tsStockBonus: TcxTabSheet;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    tsCashDividen: TcxTabSheet;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    tsStockDividen: TcxTabSheet;
    tsStockReverse: TcxTabSheet;
    stGroup_Root: TdxLayoutGroup;
    st: TdxLayoutControl;
    stGroup1: TdxLayoutGroup;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    stItem2: TdxLayoutItem;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    stItem1: TdxLayoutItem;
    stGroup3: TdxLayoutGroup;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Group1: TdxLayoutGroup;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutControl5Item7: TdxLayoutItem;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutControl5Item8: TdxLayoutItem;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl6Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl6Group3: TdxLayoutGroup;
    cxDBDateEdit26: TcxDBDateEdit;
    dxLayoutControl6Item2: TdxLayoutItem;
    cxDBDateEdit28: TcxDBDateEdit;
    dxLayoutControl6Item4: TdxLayoutItem;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    dxLayoutControl6Item5: TdxLayoutItem;
    dxLayoutControl6Group4: TdxLayoutGroup;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    dxLayoutControl6Item6: TdxLayoutItem;
    dxLayoutControl6Group5: TdxLayoutGroup;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    dxLayoutControl6Item7: TdxLayoutItem;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    dxLayoutControl6Item8: TdxLayoutItem;
    cxDBDateEdit29: TcxDBDateEdit;
    dxLayoutControl6Item9: TdxLayoutItem;
    cxDBDateEdit30: TcxDBDateEdit;
    dxLayoutControl6Item10: TdxLayoutItem;
    tsHMETD: TcxTabSheet;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutControl7Group1: TdxLayoutGroup;
    dxLayoutControl7Group3: TdxLayoutGroup;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    dxLayoutControl7Item1: TdxLayoutItem;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    dxLayoutControl7Item2: TdxLayoutItem;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    dxLayoutControl7Item3: TdxLayoutItem;
    dxLayoutControl7Group5: TdxLayoutGroup;
    cxDBCurrencyEdit18: TcxDBCurrencyEdit;
    dxLayoutControl7Item4: TdxLayoutItem;
    dxLayoutControl7Group4: TdxLayoutGroup;
    cxDBCurrencyEdit19: TcxDBCurrencyEdit;
    dxLayoutControl7Item5: TdxLayoutItem;
    cxDBCurrencyEdit20: TcxDBCurrencyEdit;
    dxLayoutControl7Item6: TdxLayoutItem;
    cxDBCurrencyEdit21: TcxDBCurrencyEdit;
    dxLayoutControl7Item7: TdxLayoutItem;
    dxLayoutControl7Group7: TdxLayoutGroup;
    dxLayoutControl7Group8: TdxLayoutGroup;
    cxDBCurrencyEdit24: TcxDBCurrencyEdit;
    dxLayoutControl7Item10: TdxLayoutItem;
    cxDBDateEdit35: TcxDBDateEdit;
    dxLayoutControl7Item14: TdxLayoutItem;
    cxDBDateEdit36: TcxDBDateEdit;
    dxLayoutControl7Item15: TdxLayoutItem;
    cxDBDateEdit37: TcxDBDateEdit;
    dxLayoutControl7Item16: TdxLayoutItem;
    cxDBDateEdit38: TcxDBDateEdit;
    dxLayoutControl7Item17: TdxLayoutItem;
    cxDBDateEdit39: TcxDBDateEdit;
    dxLayoutControl7Item18: TdxLayoutItem;
    dxLayoutControl7Group14: TdxLayoutGroup;
    cxDBDateEdit40: TcxDBDateEdit;
    dxLayoutControl7Item19: TdxLayoutItem;
    dxLayoutControl7Group6: TdxLayoutGroup;
    dxLayoutControl7Group10: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl7Item20: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl7Item21: TdxLayoutItem;
    cxDBDateEdit41: TcxDBDateEdit;
    dxLayoutControl7Item22: TdxLayoutItem;
    cxDBDateEdit42: TcxDBDateEdit;
    dxLayoutControl7Item23: TdxLayoutItem;
    dxLayoutControl7Group18: TdxLayoutGroup;
    dxLayoutControl7Group11: TdxLayoutGroup;
    cxDBDateEdit44: TcxDBDateEdit;
    dxLayoutControl7Item11: TdxLayoutItem;
    cxDBDateEdit45: TcxDBDateEdit;
    dxLayoutControl7Item25: TdxLayoutItem;
    cxDBDateEdit46: TcxDBDateEdit;
    dxLayoutControl7Item26: TdxLayoutItem;
    cxDBCurrencyEdit22: TcxDBCurrencyEdit;
    dxLayoutControl7Item27: TdxLayoutItem;
    dxLayoutControl7Group17: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl7Item28: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl7Item29: TdxLayoutItem;
    cxDBDateEdit47: TcxDBDateEdit;
    dxLayoutControl7Item30: TdxLayoutItem;
    cxDBDateEdit48: TcxDBDateEdit;
    dxLayoutControl7Item31: TdxLayoutItem;
    cxDBDateEdit49: TcxDBDateEdit;
    dxLayoutControl7Item32: TdxLayoutItem;
    cxDBDateEdit50: TcxDBDateEdit;
    dxLayoutControl7Item33: TdxLayoutItem;
    cxDBDateEdit51: TcxDBDateEdit;
    dxLayoutControl7Item34: TdxLayoutItem;
    cxDBDateEdit52: TcxDBDateEdit;
    dxLayoutControl7Item35: TdxLayoutItem;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    cxDBCurrencyEdit23: TcxDBCurrencyEdit;
    dxLayoutControl7Item36: TdxLayoutItem;
    dxLayoutControl7Group19: TdxLayoutGroup;
    cxDBCurrencyEdit25: TcxDBCurrencyEdit;
    dxLayoutControl7Item37: TdxLayoutItem;
    dxLayoutControl7Group20: TdxLayoutGroup;
    dsLuInstrumentStock: TDataSource;
    tsDividenMix: TcxTabSheet;
    dsCorpActEnt: TDataSource;
    cxButton1: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    CorpActButton: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsInstrumentByParam: TNClientDataset;
    cdsInstrumentByParamINSTRUMENT_ID: TLargeintField;
    cdsInstrumentByParamINSTRUMENT_CODE: TStringField;
    cdsInstrumentByParamSHORTNAME: TStringField;
    cdsInstrumentByParamISINCODE: TStringField;
    stGroup6: TdxLayoutGroup;
    cxDBCurrencyEdit26: TcxDBCurrencyEdit;
    stItem9: TdxLayoutItem;
    cxDBCurrencyEdit27: TcxDBCurrencyEdit;
    stItem10: TdxLayoutItem;
    tsStockMerge: TcxTabSheet;
    tsEntitlement: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwEntetlement: TcxGridDBBandedTableView;
    gvwEntetlementCAID: TcxGridDBBandedColumn;
    gvwEntetlementACCID: TcxGridDBBandedColumn;
    gvwEntetlementACCNO: TcxGridDBBandedColumn;
    gvwEntetlementACCNAME: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYNO: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKID: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKCODE: TcxGridDBBandedColumn;
    gvwEntetlementACCTYPE: TcxGridDBBandedColumn;
    gvwEntetlementAV_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_AMT: TcxGridDBBandedColumn;
    gvwEntetlementTAXRATE: TcxGridDBBandedColumn;
    gvwEntetlementTAXAMT: TcxGridDBBandedColumn;
    gvwEntetlementCA_NETAMT: TcxGridDBBandedColumn;
    gvwEntetlementCDIV_PAYDATE: TcxGridDBBandedColumn;
    gvwEntetlementSTAT: TcxGridDBBandedColumn;
    gvwEntetlementDIV_PAID: TcxGridDBBandedColumn;
    gvwEntetlementMODDA: TcxGridDBBandedColumn;
    gvwEntetlementMODUI: TcxGridDBBandedColumn;
    gvwEntetlementAPPDA: TcxGridDBBandedColumn;
    gvwEntetlementAPPUI: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4Y: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn;
    gvwEntetlementNOTES4Y: TcxGridDBBandedColumn;
    gvwEntetlementISDEL: TcxGridDBBandedColumn;
    gvwEntetlementID: TcxGridDBBandedColumn;
    gvwEntetlementAVGPRICE: TcxGridDBBandedColumn;
    gvwEntetlementCA_PRICE: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl8Group_Root: TdxLayoutGroup;
    dxLayoutControl8: TdxLayoutControl;
    dxLayoutControl8Group1: TdxLayoutGroup;
    dxLayoutControl8Group3: TdxLayoutGroup;
    dxLayoutControl8Group4: TdxLayoutGroup;
    cxDBCurrencyEdit28: TcxDBCurrencyEdit;
    dxLayoutControl8Item1: TdxLayoutItem;
    cxDBCurrencyEdit29: TcxDBCurrencyEdit;
    dxLayoutControl8Item2: TdxLayoutItem;
    cxDBCurrencyEdit30: TcxDBCurrencyEdit;
    dxLayoutControl8Item3: TdxLayoutItem;
    cxDBDateEdit53: TcxDBDateEdit;
    dxLayoutControl8Item4: TdxLayoutItem;
    cxDBDateEdit54: TcxDBDateEdit;
    dxLayoutControl8Item5: TdxLayoutItem;
    cxDBDateEdit55: TcxDBDateEdit;
    dxLayoutControl8Item6: TdxLayoutItem;
    cxDBDateEdit56: TcxDBDateEdit;
    dxLayoutControl8Item7: TdxLayoutItem;
    cxDBDateEdit57: TcxDBDateEdit;
    dxLayoutControl8Item8: TdxLayoutItem;
    cxDBDateEdit58: TcxDBDateEdit;
    dxLayoutControl8Item9: TdxLayoutItem;
    cxDBCurrencyEdit31: TcxDBCurrencyEdit;
    dxLayoutControl8Item10: TdxLayoutItem;
    cxDBCurrencyEdit32: TcxDBCurrencyEdit;
    dxLayoutControl8Item11: TdxLayoutItem;
    cdsStockPos_ByCorpAct: TNClientDataset;
    cdsStockPos_ByCorpActBranchID: TIntegerField;
    cdsStockPos_ByCorpActBranchCode: TStringField;
    cdsStockPos_ByCorpActBranchName: TStringField;
    cdsStockPos_ByCorpActSalesID: TIntegerField;
    cdsStockPos_ByCorpActSalesCode: TStringField;
    cdsStockPos_ByCorpActSalesName: TStringField;
    cdsStockPos_ByCorpActAccID: TLargeintField;
    cdsStockPos_ByCorpActAccNo: TStringField;
    cdsStockPos_ByCorpActAccName: TStringField;
    cdsStockPos_ByCorpActStockID: TIntegerField;
    cdsStockPos_ByCorpActStockCode: TStringField;
    cdsStockPos_ByCorpActStockName: TStringField;
    cdsStockPos_ByCorpActAvgPrice: TFloatField;
    cdsStockPos_ByCorpActClosePrice: TFloatField;
    cdsStockPos_ByCorpActStockOnHand: TFloatField;
    cdsStockPos_ByCorpActStockOnHold: TFloatField;
    cdsStockPos_ByCorpActStockOuts: TFloatField;
    cdsStockPos_ByCorpActStockBalance: TFloatField;
    cdsStockPos_ByCorpActStockBal_Value: TFloatField;
    cdsStockPos_ByCorpActStockBal_MktValue: TFloatField;
    cdsStockPos_ByCorpActUnReal_LossProfit: TFloatField;
    cdsStockPos_ByCorpActLastCP: TDateField;
    cdsStockPos_ByCorpActInvType: TStringField;
    dxLayoutControl9Group_Root: TdxLayoutGroup;
    dxLayoutControl9: TdxLayoutControl;
    dxLayoutControl9Group1: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl9Item1: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl9Item2: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl9Item3: TdxLayoutItem;
    dxLayoutControl9Group3: TdxLayoutGroup;
    dxLayoutControl9Group2: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl9Item4: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl9Item5: TdxLayoutItem;
    cxDBCurrencyEdit33: TcxDBCurrencyEdit;
    dxLayoutControl9Item6: TdxLayoutItem;
    dxLayoutControl9Group5: TdxLayoutGroup;
    dxLayoutControl9Group6: TdxLayoutGroup;
    cxDBDateEdit59: TcxDBDateEdit;
    dxLayoutControl9Item7: TdxLayoutItem;
    cxDBDateEdit60: TcxDBDateEdit;
    dxLayoutControl9Item8: TdxLayoutItem;
    cxDBDateEdit61: TcxDBDateEdit;
    dxLayoutControl9Item9: TdxLayoutItem;
    cxDBDateEdit62: TcxDBDateEdit;
    dxLayoutControl9Item10: TdxLayoutItem;
    cxDBDateEdit63: TcxDBDateEdit;
    dxLayoutControl9Item11: TdxLayoutItem;
    dxLayoutControl9Group8: TdxLayoutGroup;
    cxDBDateEdit64: TcxDBDateEdit;
    dxLayoutControl9Item12: TdxLayoutItem;
    cxDBDateEdit65: TcxDBDateEdit;
    dxLayoutControl9Item13: TdxLayoutItem;
    cxDBDateEdit66: TcxDBDateEdit;
    dxLayoutControl9Item14: TdxLayoutItem;
    cxDBDateEdit67: TcxDBDateEdit;
    dxLayoutControl9Item15: TdxLayoutItem;
    dxLayoutControl9Group7: TdxLayoutGroup;
    tsExercise: TcxTabSheet;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl7Item38: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl7Item39: TdxLayoutItem;
    cdsInstrument: TNClientDataset;
    cdsInstrumentINSTRUMENT_ID: TLargeintField;
    cdsInstrumentINSTRUMENT_CODE: TStringField;
    cdsInstrumentLOCALCODE: TStringField;
    cdsInstrumentMARKETCODE: TStringField;
    cdsInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentSHORTNAME: TStringField;
    cdsInstrumentLONGNAME: TStringField;
    cdsInstrumentISSUERNAME: TStringField;
    cdsInstrumentCCY: TStringField;
    cdsInstrumentISINCODE: TStringField;
    cdsInstrumentISINDATE: TDateTimeField;
    cdsInstrumentMARGIN: TIntegerField;
    cdsInstrumentSTATUS: TStringField;
    cdsInstrumentDELISTINGDATE: TDateTimeField;
    cdsInstrumentLISTINGDATE: TDateTimeField;
    cdsInstrumentLASTCLSPRICE: TFloatField;
    cdsInstrumentLASTCPPRICEDATE: TDateField;
    cdsInstrumentSECTOR: TStringField;
    cdsInstrumentMODDA: TDateTimeField;
    cdsInstrumentMODUI: TStringField;
    cdsInstrumentAPPDA: TDateTimeField;
    cdsInstrumentAPPUI: TStringField;
    cdsInstrumentISDEL: TIntegerField;
    cdsInstrumentID: TLargeintField;
    cdsInstrumentByParamMARKETCODE: TStringField;
    cdsInstrumentByParamCCY: TStringField;
    dsCorpActExer: TDataSource;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwCorpActExer: TcxGridDBBandedTableView;
    gvwCorpActExerCAID: TcxGridDBBandedColumn;
    gvwCorpActExerEXERTYPE: TcxGridDBBandedColumn;
    gvwCorpActExerACCID: TcxGridDBBandedColumn;
    gvwCorpActExerACCNO: TcxGridDBBandedColumn;
    gvwCorpActExerACCNAME: TcxGridDBBandedColumn;
    gvwCorpActExerCA_QTY: TcxGridDBBandedColumn;
    gvwCorpActExerCA_AMT: TcxGridDBBandedColumn;
    gvwCorpActExerEXERQTY: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_AMT: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_PAID: TcxGridDBBandedColumn;
    gvwCorpActExerMODDA: TcxGridDBBandedColumn;
    gvwCorpActExerMODUI: TcxGridDBBandedColumn;
    gvwCorpActExerAPPDA: TcxGridDBBandedColumn;
    gvwCorpActExerAPPUI: TcxGridDBBandedColumn;
    gvwCorpActExerUNDER4Y: TcxGridDBBandedColumn;
    gvwCorpActExerUNDER4YDA: TcxGridDBBandedColumn;
    gvwCorpActExerNOTES4Y: TcxGridDBBandedColumn;
    gvwCorpActExerISDEL: TcxGridDBBandedColumn;
    gvwCorpActExerID: TcxGridDBBandedColumn;
    tsCouponPayment: TcxTabSheet;
    dxLayoutControl10Group_Root: TdxLayoutGroup;
    dxLayoutControl10: TdxLayoutControl;
    dxLayoutControl10Group1: TdxLayoutGroup;
    cxDBDateEdit69: TcxDBDateEdit;
    dxLayoutControl10Item2: TdxLayoutItem;
    cxDBDateEdit70: TcxDBDateEdit;
    dxLayoutControl10Item3: TdxLayoutItem;
    txtCAType: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    actModify: TNAction;
    actRecalculate: TNAction;
    Modify1: TMenuItem;
    Recalculate1: TMenuItem;
    actProcess: TNAction;
    actChangeTax: TNAction;
    actCTSendWT: TNAction;
    ChangeTaxPercentage1: TMenuItem;
    Process1: TMenuItem;
    CTSendWT1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    gvwEntetlementPAID: TcxGridDBBandedColumn;
    gvwEntetlementPAID_DATE: TcxGridDBBandedColumn;
    gvwEntetlementCCYCODE: TcxGridDBBandedColumn;
    actSubAccAlloc: TNAction;
    SubAccountAllocation1: TMenuItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    stItem11: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl8Item12: TdxLayoutItem;
    dxLayoutControl8Group9: TdxLayoutGroup;
    cxDBCurrencyEdit34: TcxDBCurrencyEdit;
    dxLayoutControl8Item13: TdxLayoutItem;
    dxLayoutControl8Group7: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl7Group12: TdxLayoutGroup;
    dxLayoutControl7Group2: TdxLayoutGroup;
    dxLayoutControl7Group22: TdxLayoutGroup;
    dxLayoutControl7Group15: TdxLayoutGroup;
    dxLayoutControl7Group13: TdxLayoutGroup;
    dxLayoutControl7Group9: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure cmbCATypePropertiesCloseUp(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBDateEdit69PropertiesCloseUp(Sender: TObject);
    procedure actSubAccAllocExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure HideAllPageControl;
    procedure ShowActivePage(APage: string);
  end;

var
  frmCorpAct: TfrmCorpAct;

implementation

{$R *.dfm}

uses FormCorpactList, DataGlobal, DataLookup, FormCorpactEntList;

procedure TfrmCorpAct.actSubAccAllocExecute(Sender: TObject);
var
  iAccID: LargeInt;
begin
  inherited;
  iAccID := gvwEntetlement.DataController.Controller.SelectedRecords[0].Values[0];

  dmGlobal.RemoteServer.CorpactAlloc(dsSubject.DataSet.FieldByName('CAID').AsLargeInt, iAccID);
end;

procedure TfrmCorpAct.btnOKClick(Sender: TObject);
var
  iSeq: Integer;
begin
  if dsSubject.DataSet.State in [dsInsert] then
  begin
    if dsSubject.DataSet.FieldByName('RIGHTCODE').AsString <> '' then
    begin
      iSeq := dmGlobal.RemoteServer.GetSeq('TBL_B_INSTRUMENT');
      dsSubject.DataSet.FieldByName('RIGHTID').AsInteger := iSeq;
    end;

    if dsSubject.DataSet.FieldByName('WAARANTCODE').AsString <> '' then
    begin
      iSeq := dmGlobal.RemoteServer.GetSeq('TBL_B_INSTRUMENT');
      dsSubject.DataSet.FieldByName('WARRANTID').AsInteger := iSeq;
    end;

    dsSubject.DataSet.FieldByName('VOUCHERDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  end;

  inherited;
end;

procedure TfrmCorpAct.cmbCATypePropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := False;
//  if txtCAType.EditValue = '9' then
//    dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filter := 'INSTRUMENT_TYPE_CODE = '+QuotedStr('B')
//  else
//    dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filter := 'INSTRUMENT_TYPE_CODE <> '+QuotedStr('B');
//  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := True;

  ShowActivePage(txtCAType.EditValue);
end;

procedure TfrmCorpAct.cxButton1Click(Sender: TObject);
var
  sMsg : string;
begin
  inherited;
  dmGlobal.RemoteServer.CorpactEnt(dsSubject.DataSet.FieldByName('CAID').AsLargeInt, sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
  dsCorpActEnt.DataSet.Refresh;
end;

procedure TfrmCorpAct.cxDBDateEdit69PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  dsSubject.DataSet.FieldByName('PAYDATE').AsDateTime := cxDBDateEdit69.EditValue;
end;

procedure TfrmCorpAct.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  cdsInstrumentByParam.Close;
  cdsInstrumentByParam.Params[0].AsInteger := dsSubject.DataSet.FieldByName('NEW_STOCKID').AsInteger;
  cdsInstrumentByParam.Open;

  dsSubject.DataSet.FieldByName('NEW_STOCKCODE').AsString := cdsInstrumentByParamINSTRUMENT_CODE.AsString;
  dsSubject.DataSet.FieldByName('NEW_STOCKNAME').AsString := cdsInstrumentByParamSHORTNAME.AsString;
  dsSubject.DataSet.FieldByName('NEW_ISINCODE').AsString  := cdsInstrumentByParamISINCODE.AsString;
end;

procedure TfrmCorpAct.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  cdsInstrumentByParam.Close;
  cdsInstrumentByParam.Params[0].AsInteger := dsSubject.DataSet.FieldByName('STOCKID').AsInteger;
  cdsInstrumentByParam.Open;

  dsSubject.DataSet.FieldByName('STOCKCODE').AsString := cdsInstrumentByParamINSTRUMENT_CODE.AsString;
  dsSubject.DataSet.FieldByName('STOCKNAME').AsString := cdsInstrumentByParamSHORTNAME.AsString;
  dsSubject.DataSet.FieldByName('ISINCODE').AsString  := cdsInstrumentByParamISINCODE.AsString;
end;

procedure TfrmCorpAct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := False;
end;

procedure TfrmCorpAct.FormShow(Sender: TObject);
var
  iCAType,
  i, j: integer;
begin
  inherited;
  Self.Caption := 'Corporate Action -> '+txtCAType.Text+' Announcement';
  if dsSubject.DataSet.FieldByName('CATYPE').AsString <> '' then
  begin
    ShowActivePage(dsSubject.DataSet.FieldByName('CATYPE').AsString);

    iCAType := StrToInt(dsSubject.DataSet.FieldByName('CATYPE').AsString);
    case iCAType of
      0 : txtCAType.Text := 'All';
      1 : txtCAType.Text := 'HMETD';
      2 : txtCAType.Text := 'Cash Dividen';
      3 : txtCAType.Text := 'Stock Dividen';
      4 : txtCAType.Text := 'Stock Mix';
      5 : txtCAType.Text := 'Stock Bonus';
      6 : txtCAType.Text := 'Stock Split';
      7 : txtCAType.Text := 'Stock Reverse';
      8 : txtCAType.Text := 'Stock Merge';
      9 : txtCAType.Text := 'Coupon Payment';
    end;
  end
  else
    HideAllPageControl;

  if dsSubject.DataSet.State in [dsEdit, dsBrowse] then
  begin
    pageAnnouncement.Pages[9].TabVisible := True;
    CorpActButton.Visible                := True;

    if dsSubject.DataSet.FieldByName('CATYPE').AsString = '1' then
      pageAnnouncement.Pages[10].TabVisible := True
    else
      pageAnnouncement.Pages[10].TabVisible := False;
  end
  else if dsSubject.DataSet.State in [dsInsert] then
  begin
    pageAnnouncement.Pages[9].TabVisible  := False;
    pageAnnouncement.Pages[10].TabVisible := False;
    CorpActButton.Visible                 := False;

    dsSubject.DataSet.FieldByName('BROKER_ACCBANKID').AsInteger := dmGlobal.RemoteServer.GetGlobalParamInteger('211');
    dsSubject.DataSet.FieldByName('LOCAL_TAX').AsFloat          := dmGlobal.RemoteServer.GetGlobalParamFloat('212');
    dsSubject.DataSet.FieldByName('FOR_TAX').AsFloat            := dmGlobal.RemoteServer.GetGlobalParamFloat('213');
  end;
end;

procedure TfrmCorpAct.HideAllPageControl;
var
  i : integer;
begin
  for i := 0 to pageAnnouncement.PageCount -1 do
    pageAnnouncement.Pages[i].TabVisible := False;
end;

procedure TfrmCorpAct.ShowActivePage(APage: string);
var
  iTabIndex: Integer;
begin
  HideAllPageControl;

  iTabIndex := StrToInt(APage)-1;
  pageAnnouncement.Pages[iTabIndex].TabVisible := True;
  pageAnnouncement.ActivePageIndex             := iTabIndex;
end;

end.
