unit FormRepoChangeCollateralEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls, ClassClientConst,
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
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Data.DB, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxPCdxBarPopupMenu, cxDropDownEdit,
  cxImageComboBox, cxCalendar, cxPC, cxLabel, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Datasnap.DBClient, NClientDataset, dxBarBuiltInMenu, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TfrmRepoChangeCollateralEditor = class(TfrmEditorData)
    cdsChangeCollateral: TNClientDataset;
    cdsChangeCollateralCONRID: TLargeintField;
    cdsChangeCollateralCONTRACT_NO: TStringField;
    cdsChangeCollateralENTTID: TIntegerField;
    cdsChangeCollateralENTTCODE: TStringField;
    cdsChangeCollateralENTTNAME: TStringField;
    cdsChangeCollateralTRXDATE: TDateTimeField;
    cdsChangeCollateralTRXTYPE: TStringField;
    cdsChangeCollateralACCID: TIntegerField;
    cdsChangeCollateralACCCODE: TStringField;
    cdsChangeCollateralACCNAME: TStringField;
    cdsChangeCollateralRACCID: TIntegerField;
    cdsChangeCollateralRACCCODE: TStringField;
    cdsChangeCollateralRACCNAME: TStringField;
    cdsChangeCollateralSETTDATE: TDateTimeField;
    cdsChangeCollateralSETTDAY: TIntegerField;
    cdsChangeCollateralMATURDATE: TDateTimeField;
    cdsChangeCollateralCCY: TStringField;
    cdsChangeCollateralLOAN_AMT: TFloatField;
    cdsChangeCollateralDUE_AMT: TFloatField;
    cdsChangeCollateralINTERESTCODE: TStringField;
    cdsChangeCollateralINTERESTDESC: TStringField;
    cdsChangeCollateralINTERESTRATE: TFloatField;
    cdsChangeCollateralINTERESTTABLE: TStringField;
    cdsChangeCollateralINTERESTDAY: TIntegerField;
    cdsChangeCollateralCALCMETHOD: TStringField;
    cdsChangeCollateralCALCBASIS: TStringField;
    cdsChangeCollateralAPR_COLL: TFloatField;
    cdsChangeCollateralFORCESELL: TFloatField;
    cdsChangeCollateralCOLL_CALL: TFloatField;
    cdsChangeCollateralISACCRUE: TSmallintField;
    cdsChangeCollateralISMONTHBASIS: TSmallintField;
    cdsChangeCollateralMODDA: TDateTimeField;
    cdsChangeCollateralMODUI: TStringField;
    cdsChangeCollateralAPPDA: TDateTimeField;
    cdsChangeCollateralAPPUI: TStringField;
    cdsChangeCollateralUNDER4Y: TIntegerField;
    cdsChangeCollateralUNDER4YDA: TDateTimeField;
    cdsChangeCollateralNOTES4Y: TStringField;
    cdsChangeCollateralISDEL: TIntegerField;
    cdsChangeCollateralID: TLargeintField;
    cdsChangeCollateralCON_DATE: TDateTimeField;
    cdsChangeCollateralTOPUP: TFloatField;
    cdsChangeCollateralDUE_DATE: TDateTimeField;
    cdsChangeCollateralORG_AMT: TFloatField;
    cdsChangeCollateralINTEREST_AMT: TFloatField;
    cdsChangeCollateralREPO_AMT: TFloatField;
    cdsChangeCollateralCOLL_AMT: TFloatField;
    cdsChangeCollateralDISCOUNT: TSmallintField;
    cdsChangeCollateralCORPACT: TSmallintField;

    cdsSTOCKONHAND: TNClientDataset;
    cdsSTOCKONHANDENTTID: TIntegerField;
    cdsSTOCKONHANDENTTCODE: TStringField;
    cdsSTOCKONHANDACCCODE: TStringField;
    cdsSTOCKONHANDACCNAME: TStringField;
    cdsSTOCKONHANDSTOCKCODE: TStringField;
    cdsSTOCKONHANDQTY_ONHAND: TFloatField;
    cdsSTOCKONHANDSTOCKID: TIntegerField;
    dsSTOCKONHAND: TDataSource;
    dsRepoCollateral: TDataSource;


    cdsCOLLATERAL: TNClientDataset;
    cdsCOLLATERALCONRID: TLargeintField;
    cdsCOLLATERALSTOCKID: TIntegerField;
    cdsCOLLATERALSTOCKCODE: TStringField;
    cdsCOLLATERALSTOCKNAME: TStringField;
    cdsCOLLATERALSHARES: TFloatField;
    cdsCOLLATERALTODAY_VAL: TFloatField;
    cdsCOLLATERALINSERT_DATE: TDateField;
    cdsCOLLATERALMODDA: TDateTimeField;
    cdsCOLLATERALMODUI: TStringField;
    cdsCOLLATERALAPPDA: TDateTimeField;
    cdsCOLLATERALAPPUI: TStringField;
    cdsCOLLATERALUNDER4Y: TIntegerField;
    cdsCOLLATERALUNDER4YDA: TDateTimeField;
    cdsCOLLATERALNOTES4Y: TStringField;
    cdsCOLLATERALISDEL: TIntegerField;
    cdsCOLLATERALID: TLargeintField;
    cdsCOLLATERALQTY: TLargeintField;
    cdsCOLLATERALCLS_PRICE: TFloatField;
    cdsCOLLATERALSEQNO: TIntegerField;
    cdsCOLLATERALACCID: TLargeintField;

    cdsSTOCK_POS: TNClientDataset;
    cdsSTOCK_POSACCID: TLargeintField;
    cdsSTOCK_POSACCNO: TStringField;
    cdsSTOCK_POSSTOCKID: TIntegerField;
    cdsSTOCK_POSSTOCKCODE: TStringField;
    cdsSTOCK_POSQTY_ONHAND: TFloatField;
    cdsSTOCK_POSQTY_ONHOLD: TFloatField;

    cdsSTOCKONHAND_Edit: TNClientDataset;
    cdsSTOCKONHAND_EditENTTID: TIntegerField;
    cdsSTOCKONHAND_EditENTTCODE: TStringField;
    cdsSTOCKONHAND_EditACCCODE: TStringField;
    cdsSTOCKONHAND_EditACCNAME: TStringField;
    cdsSTOCKONHAND_EditSTOCKCODE: TStringField;
    cdsSTOCKONHAND_EditQTY_ONHAND: TFloatField;
    cdsSTOCKONHAND_EditACCID: TIntegerField;
    cdsSTOCKONHAND_EditSTOCKID: TIntegerField;
    cdsSTOCKONHAND_EditEDIT: TStringField;

    cdsLuInstrument: TNClientDataset;
    cdsLuInstrumentINSTRUMENT_ID: TLargeintField;
    cdsLuInstrumentINSTRUMENT_CODE: TStringField;
    cdsLuInstrumentLOCALCODE: TStringField;
    cdsLuInstrumentMARKETCODE: TStringField;
    cdsLuInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsLuInstrumentSHORTNAME: TStringField;
    cdsLuInstrumentISINCODE: TStringField;
    cdsLuInstrumentLASTCLSPRICE: TFloatField;
    cdsCOLLATERALACCCODE: TStringField;
    cdsCOLLATERALCOLL_AMT: TFloatField;

    cdsLuCIF: TNClientDataset;
    cdsLuCIFENTTID: TIntegerField;
    cdsLuCIFENTTCODE: TStringField;
    cdsLuCIFENTNAME: TStringField;
    cdsLuCIFSIDNO: TStringField;
    cdsLuCIFCOMPANY: TStringField;
    cdsLuCIFCOMPANY_ADDRESS: TStringField;
    cdsLuCIFANNUAL_INCOME_SOURCE: TLargeintField;
    cdsLuCIFKTP: TStringField;
    cdsLuCIFKTP_EXPDATE: TDateField;

    cdsLuAccount: TNClientDataset;
    cdsLuAccountENTTID: TIntegerField;
    cdsLuAccountACCID: TIntegerField;
    cdsLuAccountACCCODE: TStringField;
    cdsLuAccountACCNAME: TStringField;
    cdsLuAccountACCINIT: TStringField;
    cdsLuCIFBRANCHID: TLargeintField;
    cdsLuCIFCREATEDATE: TDateTimeField;
    cdsLuCIFENTSTATUS: TStringField;
    cdsLuCIFENTTYPE: TStringField;
    cdsLuCIFAFFIL: TBooleanField;
    cdsLuCIFSOURCEFUND: TStringField;
    cdsLuCIFINVESTOBJECTIVE: TStringField;
    cdsLuCIFSIDNO_1: TStringField;
    cdsLuCIFTAXID: TStringField;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cdsCOLLATERALHCUT: TFloatField;
    cdsLuInstrumentHAIRCUT: TFloatField;
    cdsSTOCKONHAND_EditREMQTY: TFloatField;
    cdsSTOCKONHAND_EditMOVEPLAN: TFloatField;
    cdsSTOCKONHANDVALUEDATE: TDateField;
    cdsSTOCKONHANDACQDATE: TDateField;
    cdsSTOCKONHANDACCSOPID: TLargeintField;
    cdsSTOCKONHANDACCNO: TStringField;
    cdsSTOCKONHANDAVGPRICE: TFloatField;
    cdsSTOCKONHANDQTY_CORPACT: TFloatField;
    cdsSTOCKONHANDQTY_OUTS: TFloatField;
    cdsSTOCKONHANDQTY_ONHOLD: TFloatField;
    cdsSTOCKONHANDQTY_BAL: TFloatField;
    cdsSTOCKONHANDQTY_OVERDUE: TFloatField;
    cdsSTOCKONHANDQTY_DLV: TFloatField;
    cdsSTOCKONHANDQTY_RCV: TFloatField;
    cdsSTOCKONHANDPROFIT_LOSS: TFloatField;
    cdsSTOCKONHANDBUY_VAL: TFloatField;
    cdsSTOCKONHANDSELL_VAL: TFloatField;
    cdsSTOCKONHANDQTY_WARKAT: TFloatField;
    cdsSTOCKONHANDSTK_WDR: TFloatField;
    cdsSTOCKONHAND_EditQTY_OUTS: TFloatField;
    cdsSTOCKONHAND_EditQTY_DLV: TFloatField;
    cdsSTOCKONHAND_EditQTY_RCV: TFloatField;
    cdsSTOCKONHAND_EditBUY_VAL: TFloatField;
    cdsSTOCKONHAND_EditSELL_VAL: TFloatField;
    gvwStockAvailable: TcxGridDBBandedTableView;
    gvwStockAvailableACCCODE: TcxGridDBBandedColumn;
    gvwStockAvailableSTOCKCODE: TcxGridDBBandedColumn;
    gvwStockAvailableQTY_ONHAND: TcxGridDBBandedColumn;
    gvwStockAvailableREMQTY: TcxGridDBBandedColumn;
    gvwStockAvailableMOVEPLAN: TcxGridDBBandedColumn;
    gvwStockAvailableQTY_OUTS: TcxGridDBBandedColumn;
    gvwStockAvailableQTY_DLV: TcxGridDBBandedColumn;
    gvwStockAvailableQTY_RCV: TcxGridDBBandedColumn;
    gvwStockAvailableBUY_VAL: TcxGridDBBandedColumn;
    gvwStockAvailableSELL_VAL: TcxGridDBBandedColumn;
    cdsSTOCKONHAND_EditREALAVAIL: TFloatField;
    gvwStockAvailableREALAVAIL: TcxGridDBBandedColumn;
    cdsSTOCKONHANDHAIRCUT: TFloatField;
    cdsSTOCKONHANDLASTCLSPRICE: TFloatField;
    cdsSTOCKONHAND_EditHAIRCUT: TFloatField;
    cdsSTOCKONHAND_EditLASTCLSPRICE: TFloatField;
    gvwStockAvailableHAIRCUT: TcxGridDBBandedColumn;
    gvwStockAvailableLASTCLSPRICE: TcxGridDBBandedColumn;
    cdsSTOCKONHAND_EditCOL_AMT: TFloatField;
    gvwStockAvailableCOL_AMT: TcxGridDBBandedColumn;
    cdsSum: TClientDataSet;
    cdsSumCOL_AMT: TFloatField;
    cdsSumRATIO: TFloatField;
    cdsSumCHECKAPPR: TFloatField;
    dsSum: TDataSource;
    cdsSTOCKONHAND_EditORG_REPO_QTY: TFloatField;
    cdsSTOCKONHANDLASTCPPRICEDATE: TDateField;
    cdsSTOCKONHANDQTY: TLargeintField;
    cdsSTOCKONHAND_EditLASTCPPRICEDATE: TDateField;
    cdsSTOCKONHAND_EditQTY: TLargeintField;
    cdsSTOCKONHANDACCID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group21: TdxLayoutGroup;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutControl1Group19: TdxLayoutGroup;
    cxDBButtonEdit3: TcxDBButtonEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group18: TdxLayoutGroup;
    cdsChangeCollateralREPO_STATUS: TStringField;
    cdsChangeCollateralqryCONTRACT_REPO_D: TDataSetField;
    cdsCRActiveList: TNClientDataset;
    cdsCRActiveListCONRID: TLargeintField;
    cdsCRActiveListCONTRACT_NO: TStringField;
    cdsCRActiveListENTTID: TIntegerField;
    cdsCRActiveListENTTCODE: TStringField;
    cdsCRActiveListENTTNAME: TStringField;
    cdsCRActiveListTRXDATE: TDateTimeField;
    cdsCRActiveListTRXTYPE: TStringField;
    cdsCRActiveListACCID: TIntegerField;
    cdsCRActiveListACCCODE: TStringField;
    cdsCRActiveListACCNAME: TStringField;
    cdsCRActiveListRACCID: TIntegerField;
    cdsCRActiveListRACCCODE: TStringField;
    cdsCRActiveListRACCNAME: TStringField;
    cdsCRActiveListSETTDATE: TDateTimeField;
    cdsCRActiveListSETTDAY: TIntegerField;
    cdsCRActiveListMATURDATE: TDateTimeField;
    cdsCRActiveListCCY: TStringField;
    cdsCRActiveListLOAN_AMT: TFloatField;
    cdsCRActiveListDUE_AMT: TFloatField;
    cdsCRActiveListDISCOUNT: TSmallintField;
    cdsCRActiveListINTERESTCODE: TStringField;
    cdsCRActiveListINTERESTDESC: TStringField;
    cdsCRActiveListINTERESTRATE: TFloatField;
    cdsCRActiveListINTERESTTABLE: TStringField;
    cdsCRActiveListINTERESTDAY: TIntegerField;
    cdsCRActiveListCALCMETHOD: TStringField;
    cdsCRActiveListCALCBASIS: TStringField;
    cdsCRActiveListAPR_COLL: TFloatField;
    cdsCRActiveListFORCESELL: TFloatField;
    cdsCRActiveListCOLL_CALL: TFloatField;
    cdsCRActiveListINTEREST_AMT: TFloatField;
    cdsCRActiveListORG_AMT: TFloatField;
    cdsCRActiveListREPO_AMT: TFloatField;
    cdsCRActiveListCOLL_AMT: TFloatField;
    cdsCRActiveListCORPACT: TSmallintField;
    cdsCRActiveListISACCRUE: TSmallintField;
    cdsCRActiveListISMONTHBASIS: TSmallintField;
    cdsCRActiveListMODDA: TDateTimeField;
    cdsCRActiveListMODUI: TStringField;
    cdsCRActiveListAPPDA: TDateTimeField;
    cdsCRActiveListAPPUI: TStringField;
    cdsCRActiveListUNDER4Y: TIntegerField;
    cdsCRActiveListUNDER4YDA: TDateTimeField;
    cdsCRActiveListNOTES4Y: TStringField;
    cdsCRActiveListISDEL: TIntegerField;
    cdsCRActiveListID: TLargeintField;
    cdsCRActiveListCON_DATE: TDateTimeField;
    cdsCRActiveListTOPUP: TFloatField;
    cdsCRActiveListDUE_DATE: TDateTimeField;
    cdsCRActiveListREPO_STATUS: TStringField;


    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure cdsChangeCollateralSETTDAYChange(Sender: TField);
    procedure cdsChangeCollateralINTERESTCODEChange(Sender: TField);
    procedure cdsCOLLATERALBeforeEdit(DataSet: TDataSet);
    procedure cdsChangeCollateralNewRecord(DataSet: TDataSet);
    procedure cdsCOLLATERALBeforePost(DataSet: TDataSet);

    procedure cxGrid2Exit(Sender: TObject);
    procedure cxGrid2DBTableView1QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsCOLLATERALQTYChange(Sender: TField);
    procedure cdsChangeCollateralBeforeEdit(DataSet: TDataSet);
    procedure cdsCOLLATERALNewRecord(DataSet: TDataSet);
    procedure cdsSTOCKONHAND_EditMOVEPLANChange(Sender: TField);
    procedure gvwStockAvailableMOVEPLANPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsSTOCKONHAND_EditBeforePost(DataSet: TDataSet);
    procedure cdsChangeCollateralREPO_AMTChange(Sender: TField);
    procedure cdsSTOCKONHAND_EditBeforeEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsChangeCollateralAfterOpen(DataSet: TDataSet);

    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }
    collQTY_BE : Integer;
    collQTY_AE : Integer;
    collAMT_BE : Double;
    collAMT_AE : Double;
    stckPOS_BE : Integer;
    stckPOS_AE : Integer;
    clsPRICE : Double;
    Interest : Double;
    FCollBefore: Double;
    FQtyBeforeD: Double;
  public
    { Public declarations }
  end;

var
  frmRepoChangeCollateralEditor: TfrmRepoChangeCollateralEditor;

implementation

{$R *.dfm}
uses DataGlobal, DataLookup, cxLookupDBGrid, DateUtils, FormRepoContractList;

procedure TfrmRepoChangeCollateralEditor.Button4Click(Sender: TObject);
begin
    //if dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID',cdsSTOCKONHANDSTOCKID.AsInteger,[]) then
    if cdsLuInstrument.Locate('INSTRUMENT_ID',cdsSTOCKONHAND_EditSTOCKID.AsInteger,[]) then
    begin
      clsPRICE := cdsLuInstrumentLASTCLSPRICE.AsFloat;
      cdsCOLLATERAL.Append;
        cdsCOLLATERALCONRID.AsLargeInt := cdsChangeCollateralCONRID.AsLargeInt;
        cdsCOLLATERALSTOCKID.AsLargeInt := cdsSTOCKONHAND_EditSTOCKID.AsLargeInt;
        cdsCOLLATERALSTOCKCODE.AsString := cdsSTOCKONHAND_EditSTOCKCODE.AsString;
        cdsCOLLATERALCLS_PRICE.AsFloat := clsPRICE;
        cdsCOLLATERALACCID.AsLargeInt := cdsSTOCKONHAND_EditACCID.AsLargeInt;
        cdsCOLLATERALACCCODE.AsString := cdsSTOCKONHAND_EditACCCODE.AsString;
        cdsCOLLATERALHCUT.AsFloat := cdsLuInstrumentHAIRCUT.AsFloat;
        cdsCOLLATERALQTY.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger;
      cdsCOLLATERAL.Post;
    end
    else
    begin
        dmGlobal.ErrorMessage('Stock invalid, please check table instrument!');
        Abort;
    end;

end;

procedure TfrmRepoChangeCollateralEditor.Button5Click(Sender: TObject);
begin
  inherited;
  cdsSTOCKONHAND_Edit.Locate('STOCKID',cdsCOLLATERALSTOCKID.AsLargeInt,[]);
  cdsSTOCKONHAND_Edit.Edit;
    cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger + cdsCOLLATERALQTY.AsInteger;
  cdsSTOCKONHAND_Edit.Post;

  cdsChangeCollateral.Edit;
  cdsChangeCollateralCOLL_AMT.AsFloat := cdsChangeCollateralCOLL_AMT.AsFloat - (cdsCOLLATERALQTY.AsInteger * cdsCOLLATERALCLS_PRICE.AsFloat);
  cdsChangeCollateral.Post;

  cdsCOLLATERAL.Delete;
end;

procedure TfrmRepoChangeCollateralEditor.cdsCOLLATERALBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  collQTY_BE := cdsCOLLATERALQTY.AsInteger;
  FQtyBeforeD := cdsCOLLATERALQTY.AsFloat;
end;

procedure TfrmRepoChangeCollateralEditor.cdsCOLLATERALBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //jangan lupa!!! - Pastikan Total Nilai Collateral Amount harus diupdate setiap EOD
  //pada table master Contract Repo
end;

procedure TfrmRepoChangeCollateralEditor.cdsCOLLATERALNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  FQtyBeforeD := 0;
end;

procedure TfrmRepoChangeCollateralEditor.cdsCOLLATERALQTYChange(Sender: TField);
begin
  inherited;
  if cdsCOLLATERAL.State in [dsEdit, dsInsert] then
  begin
    cdsCOLLATERALTODAY_VAL.AsFloat := (cdsCOLLATERALQTY.AsInteger * cdsCOLLATERALCLS_PRICE.AsFloat) * (cdsLuInstrumentHAIRCUT.AsFloat/100);
    cdsCOLLATERALCOLL_AMT.AsFloat := (cdsCOLLATERALQTY.AsInteger * cdsCOLLATERALCLS_PRICE.AsFloat) * (cdsLuInstrumentHAIRCUT.AsFloat/100);
  end;

end;

procedure TfrmRepoChangeCollateralEditor.cdsChangeCollateralAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSum.Close;
  cdsSum.CreateDataSet;

  if not cdsChangeCollateral.IsEmpty then
  begin
    cdsSTOCKONHAND.Close;
    cdsSTOCKONHAND.Params[0].Value := cdsChangeCollateralENTTID.AsInteger;
    cdsSTOCKONHAND.Open;

    cdsSTOCKONHAND_Edit.Close;
    cdsSTOCKONHAND_Edit.CreateDataSet;

    while not cdsSTOCKONHAND.Eof do
    begin
      cdsSTOCKONHAND_Edit.Append;
      cdsSTOCKONHAND_EditENTTID.AsLargeInt := cdsSTOCKONHANDENTTID.AsLargeInt;
      cdsSTOCKONHAND_EditACCID.AsInteger := cdsSTOCKONHANDACCID.AsInteger;
      cdsSTOCKONHAND_EditACCCODE.AsString := cdsSTOCKONHANDACCCODE.AsString;
      cdsSTOCKONHAND_EditSTOCKID.AsLargeInt := cdsSTOCKONHANDSTOCKID.AsLargeInt;
      cdsSTOCKONHAND_EditSTOCKCODE.AsString := cdsSTOCKONHANDSTOCKCODE.AsString;
      cdsSTOCKONHAND_EditQTY_ONHAND.AsLargeInt := cdsSTOCKONHANDQTY_ONHAND.AsLargeInt;
      cdsSTOCKONHAND_EditLASTCLSPRICE.AsFloat := cdsSTOCKONHANDLASTCLSPRICE.AsFloat;
      cdsSTOCKONHAND_EditEDIT.AsString := '0';
      cdsSTOCKONHAND_EditHAIRCUT.AsFloat := cdsSTOCKONHANDHAIRCUT.AsFloat;
      cdsSTOCKONHAND_EditQTY_OUTS.AsFloat := cdsSTOCKONHANDQTY_OUTS.AsFloat;
      cdsSTOCKONHAND_EditQTY_DLV.AsFloat := cdsSTOCKONHANDQTY_DLV.AsFloat;
      cdsSTOCKONHAND_EditQTY_RCV.AsFloat := cdsSTOCKONHANDQTY_RCV.AsFloat;
      cdsSTOCKONHAND_EditBUY_VAL.AsFloat := cdsSTOCKONHANDBUY_VAL.AsFloat;
      cdsSTOCKONHAND_EditSELL_VAL.AsFloat := cdsSTOCKONHANDSELL_VAL.AsFloat;
      cdsSTOCKONHAND_EditREALAVAIL.AsFloat := cdsSTOCKONHANDQTY_BAL.AsFloat;
      cdsSTOCKONHAND_EditQTY.AsLargeInt := cdsSTOCKONHANDQTY.AsLargeInt;
      cdsSTOCKONHAND_EditMOVEPLAN.AsFloat := cdsSTOCKONHANDQTY.AsLargeInt;
      cdsSTOCKONHAND_Edit.Post;

      cdsSTOCKONHAND.Next;
    end;
  end;

  if (State = pkCreate) or (State = pkUpdate) then
  begin
    gvwStockAvailable.OptionsData.Editing := True;
  end
  else
  begin
    gvwStockAvailable.OptionsData.Editing := False;
  end;


end;

procedure TfrmRepoChangeCollateralEditor.cdsChangeCollateralBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  FCollBefore := cdsChangeCollateralCOLL_AMT.AsFloat;
end;

procedure TfrmRepoChangeCollateralEditor.cdsChangeCollateralINTERESTCODEChange(
  Sender: TField);
begin
  inherited;
  if (cdsChangeCollateral.State in [dsInsert, dsEdit]) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuInterest.Locate('INTERESTCODE', VarArrayOf([cdsChangeCollateralINTERESTCODE.AsString]), []) then
      begin
        cdsChangeCollateralINTERESTRATE.AsFloat := cdsLuInterestINTERESTRATE.AsFloat;
        cdsChangeCollateralINTERESTDESC.AsString := cdsLuInterestINTERESTDESC.AsString;
        cdsChangeCollateralINTERESTDAY.AsFloat := cdsLuInterestINTERESTDAY.AsFloat;

        if ((cdsChangeCollateralREPO_AMT.Value > 0) and (cdsChangeCollateralSETTDAY.Value > 0)) then
        begin
          cdsChangeCollateralINTEREST_AMT.AsFloat := (cdsChangeCollateralREPO_AMT.AsFloat * (cdsChangeCollateralINTERESTRATE.AsFloat/100) *  (cdsChangeCollateralSETTDAY.AsFloat/cdsChangeCollateralINTERESTDAY.AsFloat));
          cdsChangeCollateralDUE_AMT.AsFloat := cdsChangeCollateralINTEREST_AMT.AsFloat + cdsChangeCollateralREPO_AMT.AsFloat;
        end;
      end;
    end;
  end;
end;

procedure TfrmRepoChangeCollateralEditor.cdsChangeCollateralNewRecord(DataSet: TDataSet);
begin
  inherited;
  FCollBefore := 0;
end;

procedure TfrmRepoChangeCollateralEditor.cdsChangeCollateralREPO_AMTChange(Sender: TField);
begin
  inherited;
  if (cdsChangeCollateral.State in dsEditModes) then
  begin
  //    if not cdsChangeCollateralINTERESTRATE.IsNull then
    if ((cdsChangeCollateralREPO_AMT.Value > 0) and (cdsChangeCollateralSETTDAY.Value > 0)) then
    begin
      cdsChangeCollateralINTEREST_AMT.AsFloat := (cdsChangeCollateralREPO_AMT.AsFloat * (cdsChangeCollateralINTERESTRATE.AsFloat/100) *  (cdsChangeCollateralSETTDAY.AsFloat/cdsChangeCollateralINTERESTDAY.AsFloat));
      cdsChangeCollateralDUE_AMT.AsFloat := cdsChangeCollateralINTEREST_AMT.AsFloat + cdsChangeCollateralREPO_AMT.AsFloat;
    end;

    if not cdsSum.IsEmpty then
    begin

      if cdsChangeCollateralREPO_AMT.AsFloat > 0 then
      begin
        if not (cdsSum.State in [dsInsert, dsEdit]) then cdsSum.Edit;
        cdsSumRATIO.AsFloat := cdsSumCOL_AMT.AsFloat/ cdsChangeCollateralREPO_AMT.AsFloat;
      end;
    end;
  end;

end;

procedure TfrmRepoChangeCollateralEditor.cdsChangeCollateralSETTDAYChange(Sender: TField);
begin
  inherited;
  cdsChangeCollateralMATURDATE.AsDateTime := IncDay(cdsChangeCollateralSETTDATE.AsDateTime,cdsChangeCollateralSETTDAY.AsInteger);
end;


procedure TfrmRepoChangeCollateralEditor.cdsSTOCKONHAND_EditBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  FCollBefore := cdsSTOCKONHAND_EditCOL_AMT.AsFloat;

end;

procedure TfrmRepoChangeCollateralEditor.cdsSTOCKONHAND_EditBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsSum.IsEmpty then cdsSum.Append
  else
  begin
    if not (cdsSum.State in [dsInsert, dsEdit]) then cdsSum.Edit;
  end;
  cdsSumCOL_AMT.AsFloat := cdsSumCOL_AMT.AsFloat + (cdsSTOCKONHAND_EditCOL_AMT.AsFloat - FCollBefore);

  if cdsChangeCollateralREPO_AMT.AsFloat > 0 then
  begin
    cdsSumRATIO.AsFloat := cdsSumCOL_AMT.AsFloat/ cdsChangeCollateralREPO_AMT.AsFloat;
  end;

end;

procedure TfrmRepoChangeCollateralEditor.cdsSTOCKONHAND_EditMOVEPLANChange(
  Sender: TField);
begin
  inherited;
  if cdsSTOCKONHAND_Edit.State in [dsEdit, dsInsert] then
  begin
    cdsSTOCKONHAND_EditCOL_AMT.AsFloat := (cdsSTOCKONHAND_EditMOVEPLAN.AsLargeInt * cdsSTOCKONHAND_EditLASTCLSPRICE.AsFloat) *
      (cdsSTOCKONHAND_EditHAIRCUT.AsFloat/100);
    cdsSTOCKONHAND_EditREMQTY.AsFloat := (cdsSTOCKONHAND_EditQTY_ONHAND.AsLargeInt - cdsSTOCKONHAND_EditQTY_RCV.AsFloat -
      cdsSTOCKONHAND_EditQTY_OUTS.AsFloat - cdsSTOCKONHAND_EditSELL_VAL.AsFloat) - cdsSTOCKONHAND_EditMOVEPLAN.AsLargeInt;
  end;

end;

procedure TfrmRepoChangeCollateralEditor.gvwStockAvailableMOVEPLANPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if DisplayValue > (cdsSTOCKONHAND_EditQTY_ONHAND.AsLargeInt - cdsSTOCKONHAND_EditQTY_RCV.AsFloat -
      cdsSTOCKONHAND_EditQTY_OUTS.AsFloat - cdsSTOCKONHAND_EditSELL_VAL.AsFloat) then
  begin
    ErrorText := 'Qty REPO cannot greather than available qty';
    Error := True;
  end
  else Error := False;

end;

procedure TfrmRepoChangeCollateralEditor.cxDBButtonEdit3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  oForm : TfrmRepoContractList;
begin
  inherited;
  oForm := TfrmRepoContractList.Create(Nil);
  oForm.dsSubject.DataSet := cdsCRActiveList;
  if oForm.ShowModal = mrOK then
  begin
      cdsChangeCollateral.Close;
      cdsChangeCollateral.Params[0].AsLargeInt := cdsCRActiveListCONRID.AsLargeInt;
      cdsChangeCollateral.Open;
      if not (cdsChangeCollateral.State in dsEditModes) then
        cdsChangeCollateral.Edit;

      cdsSTOCKONHAND.Close;
      cdsSTOCKONHAND.Params[0].Value := cdsChangeCollateralENTTID.AsInteger;
      cdsSTOCKONHAND.Open;

      cdsSTOCKONHAND_Edit.Close;
      cdsSTOCKONHAND_Edit.CreateDataSet;

      while not cdsSTOCKONHAND.Eof do
      begin
        cdsSTOCKONHAND_Edit.Append;
        cdsSTOCKONHAND_EditENTTID.AsLargeInt := cdsSTOCKONHANDENTTID.AsLargeInt;
        cdsSTOCKONHAND_EditACCID.AsInteger := cdsSTOCKONHANDACCID.AsInteger;
        cdsSTOCKONHAND_EditACCCODE.AsString := cdsSTOCKONHANDACCCODE.AsString;
        cdsSTOCKONHAND_EditSTOCKID.AsLargeInt := cdsSTOCKONHANDSTOCKID.AsLargeInt;
        cdsSTOCKONHAND_EditSTOCKCODE.AsString := cdsSTOCKONHANDSTOCKCODE.AsString;
        cdsSTOCKONHAND_EditQTY_ONHAND.AsLargeInt := cdsSTOCKONHANDQTY_ONHAND.AsLargeInt;
        cdsSTOCKONHAND_EditEDIT.AsString := '0';
        cdsSTOCKONHAND_EditREMQTY.AsFloat := cdsSTOCKONHANDQTY_ONHAND.AsLargeInt - cdsSTOCKONHANDQTY_RCV.AsFloat -
          cdsSTOCKONHANDQTY_OUTS.AsFloat - cdsSTOCKONHANDSELL_VAL.AsFloat;
        cdsSTOCKONHAND_EditMOVEPLAN.AsFloat := 0;
        cdsSTOCKONHAND_EditQTY_OUTS.AsFloat := cdsSTOCKONHANDQTY_OUTS.AsFloat;
        cdsSTOCKONHAND_EditQTY_DLV.AsFloat := cdsSTOCKONHANDQTY_DLV.AsFloat;
        cdsSTOCKONHAND_EditQTY_RCV.AsFloat := cdsSTOCKONHANDQTY_RCV.AsFloat;
        cdsSTOCKONHAND_EditBUY_VAL.AsFloat := cdsSTOCKONHANDBUY_VAL.AsFloat;
        cdsSTOCKONHAND_EditSELL_VAL.AsFloat := cdsSTOCKONHANDSELL_VAL.AsFloat;
        cdsSTOCKONHAND_EditREALAVAIL.AsFloat := cdsSTOCKONHANDQTY_BAL.AsFloat;
        cdsSTOCKONHAND_EditHAIRCUT.AsFloat := cdsSTOCKONHANDHAIRCUT.AsFloat;
        cdsSTOCKONHAND_EditLASTCLSPRICE.AsFloat := cdsSTOCKONHANDLASTCLSPRICE.AsFloat;
        cdsSTOCKONHAND_EditQTY.AsLargeInt := cdsSTOCKONHANDQTY.AsLargeInt;
        cdsSTOCKONHAND_Edit.Post;

        cdsSTOCKONHAND.Next;
      end;
  end;

  //oform.Free;
  FreeAndNil(oForm);
end;

procedure TfrmRepoChangeCollateralEditor.cxGrid2DBTableView1QTYPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
//  if cxGrid2DBTableView1.DataController.DataSource.DataSet.State in dsEditModes then
//    cxGrid2DBTableView1.DataController.DataSource.DataSet.Post;

end;

procedure TfrmRepoChangeCollateralEditor.cxGrid2Exit(Sender: TObject);
begin
  inherited;
//  if cxGrid2DBTableView1.DataController.DataSource.DataSet.State in dsEditModes then
//    cxGrid2DBTableView1.DataController.DataSource.DataSet.Post;
end;

procedure TfrmRepoChangeCollateralEditor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (self.State = pkUpdate ) then
    begin
      cdsSTOCKONHAND_Edit.DisableControls;
      cdsSTOCKONHAND_Edit.First;
      while not cdsSTOCKONHAND_Edit.Eof do
      begin
        if cdsSTOCKONHAND_EditMOVEPLAN.AsLargeInt > 0 then
        begin
          if cdsCOLLATERAL.Locate('STOCKID;ACCID', VarArrayOf([cdsSTOCKONHAND_EditSTOCKID.Value, cdsSTOCKONHAND_EditACCID.Value]), []) then
          begin
            cdsCOLLATERAL.Edit;
            cdsCOLLATERALQTY.AsLargeInt := cdsSTOCKONHAND_EditMOVEPLAN.AsLargeInt;
            cdsCOLLATERALCLS_PRICE.AsFloat := cdsSTOCKONHAND_EditLASTCLSPRICE.AsLargeInt;
            cdsCOLLATERALHCUT.AsLargeInt := cdsSTOCKONHAND_EditHAIRCUT.AsLargeInt;
            cdsCOLLATERALCOLL_AMT.AsFloat := cdsSTOCKONHAND_EditCOL_AMT.AsFloat;
            cdsCOLLATERAL.Post;
          end
          else
          begin
            cdsCOLLATERAL.Append;
            cdsCOLLATERALSTOCKID.AsLargeInt := cdsSTOCKONHAND_EditSTOCKID.AsLargeInt;
            cdsCOLLATERALSTOCKCODE.AsString := cdsSTOCKONHAND_EditSTOCKCODE.AsString;
            cdsCOLLATERALQTY.AsLargeInt := cdsSTOCKONHAND_EditMOVEPLAN.AsLargeInt;
            cdsCOLLATERALCLS_PRICE.AsFloat := cdsSTOCKONHAND_EditLASTCLSPRICE.AsLargeInt;
            cdsCOLLATERALHCUT.AsLargeInt := cdsSTOCKONHAND_EditHAIRCUT.AsLargeInt;
            cdsCOLLATERALCOLL_AMT.AsFloat := cdsSTOCKONHAND_EditCOL_AMT.AsFloat;
            cdsCOLLATERALACCID.AsInteger := cdsSTOCKONHAND_EditACCID.AsInteger;
            cdsCOLLATERALACCCODE.AsString := cdsSTOCKONHAND_EditACCCODE.AsString;
            cdsCOLLATERAL.Post;
          end;
        end;

        cdsSTOCKONHAND_Edit.Next;
      end;
      cdsSTOCKONHAND_Edit.EnableControls;
    end;

end;

procedure TfrmRepoChangeCollateralEditor.FormCreate(Sender: TObject);
begin
  inherited;
  cdsChangeCollateral.Close;

  cdsSTOCK_POS.Close;
  cdsSTOCK_POS.Open;

  cdsLuInstrument.Close;
  cdsLuInstrument.Open;

  cdsCRActiveList.Close;
  cdsCRActiveList.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuInterest.Close;
    cdsLuInterest.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;
  end;

end;

Initialization
  RegisterClass(TfrmRepoChangeCollateralEditor);

end.
