unit FormRenewalRepoContractEditor;

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
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPC, cxDropDownEdit,
  cxImageComboBox, cxMaskEdit, cxCalendar, Datasnap.DBClient, NClientDataset,
  cxMemo;

type
  TfrmRenewalRepoContractEditor = class(TfrmEditorData)
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    Button1: TButton;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutControl4Item11: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Item13: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ACCCODE: TcxGridDBColumn;
    cxGrid1DBTableView1ACCNAME: TcxGridDBColumn;
    cxGrid1DBTableView1STOCKCODE: TcxGridDBColumn;
    cxGrid1DBTableView1QTY_ONHAND: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Button4: TButton;
    Button5: TButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1CONRID: TcxGridDBColumn;
    cxGrid2DBTableView1STOCKID: TcxGridDBColumn;
    cxGrid2DBTableView1STOCKCODE: TcxGridDBColumn;
    cxGrid2DBTableView1QTY: TcxGridDBColumn;
    cxGrid2DBTableView1CLS_PRICE: TcxGridDBColumn;
    cxGrid2DBTableView1TODAY_VAL: TcxGridDBColumn;
    cxGrid2DBTableView1COL_AMT: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cdsRCR: TNClientDataset;
    cdsRCRCONRID: TLargeintField;
    cdsRCRCONTRACT_NO: TStringField;
    cdsRCRENTTID: TIntegerField;
    cdsRCRENTTCODE: TStringField;
    cdsRCRENTTNAME: TStringField;
    cdsRCRTRXDATE: TDateTimeField;
    cdsRCRTRXTYPE: TStringField;
    cdsRCRACCID: TIntegerField;
    cdsRCRACCCODE: TStringField;
    cdsRCRACCNAME: TStringField;
    cdsRCRRACCID: TIntegerField;
    cdsRCRRACCCODE: TStringField;
    cdsRCRRACCNAME: TStringField;
    cdsRCRSETTDATE: TDateTimeField;
    cdsRCRSETTDAY: TIntegerField;
    cdsRCRMATURDATE: TDateTimeField;
    cdsRCRCCY: TStringField;
    cdsRCRLOAN_AMT: TFloatField;
    cdsRCRDUE_AMT: TFloatField;

    cdsRCRINTERESTCODE: TStringField;
    cdsRCRINTERESTDESC: TStringField;
    cdsRCRINTERESTRATE: TFloatField;
    cdsRCRINTERESTTABLE: TStringField;
    cdsRCRINTERESTDAY: TIntegerField;
    cdsRCRCALCMETHOD: TStringField;
    cdsRCRCALCBASIS: TStringField;
    cdsRCRAPR_COLL: TFloatField;
    cdsRCRFORCESELL: TFloatField;
    cdsRCRCOLL_CALL: TFloatField;
    cdsRCRISACCRUE: TSmallintField;
    cdsRCRISMONTHBASIS: TSmallintField;

    cdsRCRMODDA: TDateTimeField;
    cdsRCRMODUI: TStringField;
    cdsRCRAPPDA: TDateTimeField;
    cdsRCRAPPUI: TStringField;
    cdsRCRUNDER4Y: TIntegerField;
    cdsRCRUNDER4YDA: TDateTimeField;
    cdsRCRNOTES4Y: TStringField;
    cdsRCRISDEL: TIntegerField;
    cdsRCRID: TLargeintField;
    cdsRCRCON_DATE: TDateTimeField;
    cdsRCRTOPUP: TFloatField;
    cdsRCRDUE_DATE: TDateTimeField;
    cdsRCRORG_AMT: TFloatField;
    cdsRCRINTEREST_AMT: TFloatField;
    cdsRCRREPO_AMT: TFloatField;
    cdsRCRCOLL_AMT: TFloatField;
    cdsRCRCONTRACTNO_OLD: TStringField;
    cdsRCRNOTE: TStringField;
    cdsRCRqryRCR_D: TDataSetField;

    dsRepoCollateral: TDataSource;

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

    cdsSTOCK_POS: TNClientDataset;
    cdsSTOCK_POSACCID: TLargeintField;
    cdsSTOCK_POSACCNO: TStringField;
    cdsSTOCK_POSSTOCKID: TIntegerField;
    cdsSTOCK_POSSTOCKCODE: TStringField;
    cdsSTOCK_POSQTY_ONHAND: TFloatField;
    cdsSTOCK_POSQTY_ONHOLD: TFloatField;

    dsSTOCKONHAND: TDataSource;

    cdsLuInstrument: TNClientDataset;
    cdsLuInstrumentINSTRUMENT_ID: TLargeintField;
    cdsLuInstrumentINSTRUMENT_CODE: TStringField;
    cdsLuInstrumentLOCALCODE: TStringField;
    cdsLuInstrumentMARKETCODE: TStringField;
    cdsLuInstrumentINSTRUMENT_TYPE_CODE: TStringField;
    cdsLuInstrumentSHORTNAME: TStringField;
    cdsLuInstrumentISINCODE: TStringField;
    cdsLuInstrumentLASTCLSPRICE: TFloatField;

    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item14: TdxLayoutItem;

    cdsRepoContractList: TNClientDataset;
    cdsRepoContractListCONRID: TLargeintField;
    cdsRepoContractListCONTRACT_NO: TStringField;
    cdsRepoContractListENTTID: TIntegerField;
    cdsRepoContractListENTTCODE: TStringField;
    cdsRepoContractListENTTNAME: TStringField;
    cdsRepoContractListTRXDATE: TDateTimeField;
    cdsRepoContractListTRXTYPE: TStringField;
    cdsRepoContractListACCID: TIntegerField;
    cdsRepoContractListACCCODE: TStringField;
    cdsRepoContractListACCNAME: TStringField;
    cdsRepoContractListRACCID: TIntegerField;
    cdsRepoContractListRACCCODE: TStringField;
    cdsRepoContractListRACCNAME: TStringField;
    cdsRepoContractListSETTDATE: TDateTimeField;
    cdsRepoContractListSETTDAY: TIntegerField;
    cdsRepoContractListMATURDATE: TDateTimeField;
    cdsRepoContractListCCY: TStringField;
    cdsRepoContractListLOAN_AMT: TFloatField;
    cdsRepoContractListORG_AMT: TFloatField;
    cdsRepoContractListINTEREST_AMT: TFloatField;
    cdsRepoContractListREPO_AMT: TFloatField;
    cdsRepoContractListDUE_AMT: TFloatField;
    cdsRepoContractListINTERESTCODE: TStringField;
    cdsRepoContractListINTERESTDESC: TStringField;
    cdsRepoContractListINTERESTRATE: TFloatField;
    cdsRepoContractListINTERESTTABLE: TStringField;
    cdsRepoContractListINTERESTDAY: TIntegerField;
    cdsRepoContractListCALCMETHOD: TStringField;
    cdsRepoContractListCALCBASIS: TStringField;
    cdsRepoContractListAPR_COLL: TFloatField;
    cdsRepoContractListFORCESELL: TFloatField;
    cdsRepoContractListCOLL_CALL: TFloatField;
    cdsRepoContractListCOLL_AMT: TFloatField;
    cdsRepoContractListISACCRUE: TSmallintField;
    cdsRepoContractListISMONTHBASIS: TSmallintField;
    cdsRepoContractListMODDA: TDateTimeField;
    cdsRepoContractListMODUI: TStringField;
    cdsRepoContractListAPPDA: TDateTimeField;
    cdsRepoContractListAPPUI: TStringField;
    cdsRepoContractListUNDER4Y: TIntegerField;
    cdsRepoContractListUNDER4YDA: TDateTimeField;
    cdsRepoContractListNOTES4Y: TStringField;
    cdsRepoContractListISDEL: TIntegerField;
    cdsRepoContractListID: TLargeintField;
    cdsRepoContractListCON_DATE: TDateTimeField;
    cdsRepoContractListTOPUP: TFloatField;
    cdsRepoContractListDUE_DATE: TDateTimeField;

    cxGrid2DBTableView1SEQNO: TcxGridDBColumn;
    cxGrid2DBTableView1ACCID: TcxGridDBColumn;
    cxGrid2DBTableView1ACCCODE: TcxGridDBColumn;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Group8: TdxLayoutGroup;
    dxLayoutControl4Group9: TdxLayoutGroup;
    dxLayoutControl4Group10: TdxLayoutGroup;
    dxLayoutControl4Group11: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Group6: TdxLayoutGroup;



    cdsRCR_D: TNClientDataset;
    cdsRCR_DCONRID: TLargeintField;
    cdsRCR_DSEQNO: TIntegerField;
    cdsRCR_DSTOCKID: TIntegerField;
    cdsRCR_DSTOCKCODE: TStringField;
    cdsRCR_DSTOCKNAME: TStringField;
    cdsRCR_DSHARES: TFloatField;
    cdsRCR_DTODAY_VAL: TFloatField;
    cdsRCR_DINSERT_DATE: TDateField;
    cdsRCR_DMODDA: TDateTimeField;
    cdsRCR_DMODUI: TStringField;
    cdsRCR_DAPPDA: TDateTimeField;
    cdsRCR_DAPPUI: TStringField;
    cdsRCR_DUNDER4Y: TIntegerField;
    cdsRCR_DUNDER4YDA: TDateTimeField;
    cdsRCR_DNOTES4Y: TStringField;
    cdsRCR_DISDEL: TIntegerField;
    cdsRCR_DID: TLargeintField;
    cdsRCR_DQTY: TLargeintField;
    cdsRCR_DCLS_PRICE: TFloatField;
    cdsRCR_DACCID: TLargeintField;
    cdsRCR_DACCCODE: TStringField;

    cdsCollateral: TNClientDataset;
    cdsCollateralCONRID: TLargeintField;
    cdsCollateralSEQNO: TIntegerField;
    cdsCollateralSTOCKID: TIntegerField;
    cdsCollateralSTOCKCODE: TStringField;
    cdsCollateralSTOCKNAME: TStringField;
    cdsCollateralSHARES: TFloatField;
    cdsCollateralTODAY_VAL: TFloatField;
    cdsCollateralINSERT_DATE: TDateField;
    cdsCollateralMODDA: TDateTimeField;
    cdsCollateralMODUI: TStringField;
    cdsCollateralAPPDA: TDateTimeField;
    cdsCollateralAPPUI: TStringField;
    cdsCollateralUNDER4Y: TIntegerField;
    cdsCollateralUNDER4YDA: TDateTimeField;
    cdsCollateralNOTES4Y: TStringField;
    cdsCollateralISDEL: TIntegerField;
    cdsCollateralID: TLargeintField;
    cdsCollateralQTY: TLargeintField;
    cdsCollateralCLS_PRICE: TFloatField;
    cdsCollateralACCID: TLargeintField;
    cdsCollateralACCCODE: TStringField;
    cdsCollateralCOLL_AMT: TFloatField;

    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutGroup;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl6Group1: TdxLayoutGroup;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl4Group7: TdxLayoutGroup;
    cdsRepoContractListDISCOUNT: TSmallintField;
    cdsRepoContractListCORPACT: TSmallintField;
    cdsRCRDISCOUNT: TSmallintField;
    cdsRCRCORPACT: TSmallintField;
    cdsLuInterest: TNClientDataset;
    cdsLuInterestINTERESTCODE: TStringField;
    cdsLuInterestCCY: TStringField;
    cdsLuInterestINTERESTDESC: TStringField;
    cdsLuInterestINTERESTRATE: TFloatField;
    cdsLuInterestINTERESTDAY: TIntegerField;
    cdsLuInterestID: TLargeintField;
    cdsRCR_DCOLL_AMT: TFloatField;
    cdsSTOCKONHAND: TNClientDataset;
    cdsSTOCKONHANDENTTID: TIntegerField;
    cdsSTOCKONHANDENTTCODE: TStringField;
    cdsSTOCKONHANDACCCODE: TStringField;
    cdsSTOCKONHANDACCNAME: TStringField;
    cdsSTOCKONHANDSTOCKCODE: TStringField;
    cdsSTOCKONHANDQTY_ONHAND: TFloatField;
    cdsSTOCKONHANDSTOCKID: TIntegerField;
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
    cdsSTOCKONHANDHAIRCUT: TFloatField;
    cdsSTOCKONHANDLASTCLSPRICE: TFloatField;
    cdsSTOCKONHANDLASTCPPRICEDATE: TDateField;
    cdsSTOCKONHANDQTY: TLargeintField;
    cdsSTOCKONHANDACCID: TLargeintField;
    cdsSTOCKONHANDOLD_QTY: TLargeintField;

    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure cdsRCR_DBeforePost(DataSet: TDataSet);
    procedure cdsRCR_DBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsRCRNewRecord(DataSet: TDataSet);
    procedure cdsRCRINTERESTCODEChange(Sender: TField);
    procedure Button1Click(Sender: TObject);
    procedure cdsRCRORG_AMTChange(Sender: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    clsPRICE : Double;
    collQTY_BE : Integer;
    Interest : Double;

  public
    { Public declarations }
  end;

var
  frmRenewalRepoContractEditor: TfrmRenewalRepoContractEditor;

implementation

{$R *.dfm}
uses DataGlobal, DataLookup, FormRepoContractList, FormLuAccount, cxLookupDBGrid, DateUtils;

procedure TfrmRenewalRepoContractEditor.Button1Click(Sender: TObject);
var oForm : TfrmRepoContractList;
begin
  inherited;
  oForm := TfrmRepoContractList.Create(Nil);
  oForm.dsSubject.DataSet := cdsRepoContractList;
  if oForm.ShowModal = mrOK then
  begin
    cdsRCR.Edit;
    cdsRCRCONTRACTNO_OLD.AsString := cdsRepoContractListCONTRACT_NO.AsString;

    cdsRCRACCCODE.AsString := cdsRepoContractListACCCODE.AsString;
    cdsRCRACCNAME.AsString := cdsRepoContractListACCNAME.AsString;
    cdsRCRRACCCODE.AsString := cdsRepoContractListRACCCODE.AsString;
    cdsRCRRACCNAME.AsString := cdsRepoContractListRACCNAME.AsString;

    cdsRCRSETTDAY.AsInteger := cdsRepoContractListSETTDAY.AsInteger;
    cdsRCRMATURDATE.AsDateTime := IncDay(cdsRCRSETTDATE.AsDateTime,cdsRCRSETTDAY.AsInteger);

    cdsRCRCCY.AsString := cdsRepoContractListCCY.AsString;
    cdsRCRLOAN_AMT.AsFloat := cdsRepoContractListLOAN_AMT.AsFloat;
    cdsRCRORG_AMT.AsFloat := cdsRepoContractListORG_AMT.AsFloat;
    cdsRCRREPO_AMT.AsFloat := cdsRepoContractListREPO_AMT.AsFloat;
    cdsRCRINTEREST_AMT.AsFloat := cdsRepoContractListINTEREST_AMT.AsFloat;
    cdsRCRDUE_AMT.AsFloat := cdsRepoContractListDUE_AMT.AsFloat;
    cdsRCRCOLL_AMT.AsFloat := cdsRepoContractListCOLL_AMT.AsFloat;
    cdsRCRINTERESTRATE.AsFloat := cdsRepoContractListINTERESTRATE.AsFloat/100;

    cdsRCRENTTID.AsInteger := cdsRepoContractListENTTID.AsInteger;
    cdsRCRENTTCODE.AsString := cdsRepoContractListENTTCODE.AsString;
    cdsRCRENTTNAME.AsString := cdsRepoContractListENTTNAME.AsString;
    cdsRCRACCID.AsInteger := cdsRepoContractListACCID.AsInteger;
    cdsRCRRACCID.AsInteger := cdsRepoContractListRACCID.AsInteger;

    cdsRCRAPR_COLL.AsFloat := cdsRepoContractListAPR_COLL.AsFloat;
    cdsRCRFORCESELL.AsFloat := cdsRepoContractListFORCESELL.AsFloat;
    cdsRCRCOLL_CALL.AsFloat := cdsRepoContractListCOLL_CALL.AsFloat;
    cdsRCRINTERESTCODE.AsString := cdsRepoContractListINTERESTCODE.AsString;
    cdsRCRINTERESTDESC.AsString := cdsRepoContractListINTERESTDESC.AsString;
    cdsRCRINTERESTTABLE.AsString := cdsRepoContractListINTERESTTABLE.AsString;
    cdsRCRINTERESTDAY.AsInteger := cdsRepoContractListINTERESTDAY.AsInteger;
    cdsRCRCALCMETHOD.AsString := cdsRepoContractListCALCMETHOD.AsString;
    cdsRCRCALCBASIS.AsString := cdsRepoContractListCALCBASIS.AsString;

    cdsRCRDISCOUNT.AsString := '0';
    cdsRCRCORPACT.AsString := '0';
    cdsRCRISACCRUE.AsInteger := 1;
    cdsRCRISMONTHBASIS.AsInteger := 1;

    cdsRCR.Post;

    cdsSTOCKONHAND.Close;
    cdsSTOCKONHAND.Params[0].Value := cdsRCRENTTID.AsInteger;
    cdsSTOCKONHAND.Open;

    cdsSTOCKONHAND_Edit.Close;
    cdsSTOCKONHAND_Edit.CreateDataSet;

      while not cdsSTOCKONHAND.Eof do
      begin
        cdsSTOCKONHAND_Edit.Append;
        cdsSTOCKONHAND_EditENTTID.AsLargeInt := cdsSTOCKONHANDENTTID.AsLargeInt;
        cdsSTOCKONHAND_EditACCID.AsLargeInt := cdsSTOCKONHANDACCID.AsLargeInt;
        cdsSTOCKONHAND_EditACCCODE.AsString := cdsSTOCKONHANDACCCODE.AsString;
        cdsSTOCKONHAND_EditSTOCKID.AsLargeInt := cdsSTOCKONHANDSTOCKID.AsLargeInt;
        cdsSTOCKONHAND_EditSTOCKCODE.AsString := cdsSTOCKONHANDSTOCKCODE.AsString;
        cdsSTOCKONHAND_EditQTY_ONHAND.AsLargeInt := cdsSTOCKONHANDQTY_ONHAND.AsLargeInt;
        cdsSTOCKONHAND_EditEDIT.AsString := '0';
        cdsSTOCKONHAND_Edit.Post;

        cdsSTOCKONHAND.Next;
      end;

    cdsCollateral.Close;
    cdsCollateral.Params[0].Value := cdsRepoContractListCONRID.AsInteger;
    cdsCollateral.Open;

    cdsRCR_D.Close;
    cdsRCR_D.Open;

      while not cdsCollateral.Eof do
      begin
        cdsRCR_D.Append;
        cdsRCR_DCONRID.AsLargeInt := cdsRCRCONRID.AsLargeInt;
        cdsRCR_DSTOCKID.AsLargeInt := cdsCollateralSTOCKID.AsLargeInt;
        cdsRCR_DSTOCKCODE.AsString := cdsCollateralSTOCKCODE.AsString;
        cdsRCR_DQTY.AsInteger := cdsCollateralQTY.AsInteger;
        cdsRCR_DCLS_PRICE.AsFloat := cdsCollateralCLS_PRICE.AsFloat;
        cdsRCR_DACCID.AsLargeInt := cdsCollateralACCID.AsLargeInt;
        cdsRCR_DACCCODE.AsString := cdsCollateralACCCODE.AsString;
        cdsRCR_D.Post;

        cdsCollateral.Next;
      end;

    btnOK.Enabled := true;
    cdsRCR.Edit;
    cdsRCR_D.Edit;
  end;
end;


procedure TfrmRenewalRepoContractEditor.Button4Click(Sender: TObject);
begin
  inherited;
    //if dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID',cdsSTOCKONHANDSTOCKID.AsInteger,[]) then
    if cdsLuInstrument.Locate('INSTRUMENT_ID',cdsSTOCKONHAND_EditSTOCKID.AsInteger,[]) then
    begin
      clsPRICE := cdsLuInstrumentLASTCLSPRICE.AsFloat;
      cdsRCR_D.Append;
        cdsRCR_DCONRID.AsLargeInt := cdsRCRCONRID.AsLargeInt;
        cdsRCR_DSTOCKID.AsLargeInt := cdsSTOCKONHAND_EditSTOCKID.AsLargeInt;
        cdsRCR_DSTOCKCODE.AsString := cdsSTOCKONHAND_EditSTOCKCODE.AsString;
        cdsRCR_DQTY.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger;
        cdsRCR_DCLS_PRICE.AsFloat := clsPRICE;
        cdsRCR_DACCID.AsLargeInt := cdsSTOCKONHAND_EditACCID.AsLargeInt;
        cdsRCR_DACCCODE.AsLargeInt := cdsSTOCKONHAND_EditACCCODE.AsLargeInt;
      cdsRCR_D.Post;

//      cdsOCRCOLL_AMT.AsFloat := cdsOCRCOLL_AMT.AsFloat + (cdsRCR_DQTY.AsInteger * cdsRCR_DCLS_PRICE.AsFloat);

      cdsSTOCKONHAND_Edit.Edit;
      cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := 0;
      cdsSTOCKONHAND_Edit.Post;

      end
    else
      begin
        dmGlobal.ErrorMessage('Stock invalid, please check table instrument!');
        Abort;
      end;

end;

procedure TfrmRenewalRepoContractEditor.Button5Click(Sender: TObject);
begin
  inherited;
  cdsSTOCKONHAND_Edit.Locate('STOCKID',cdsRCR_DSTOCKID.AsLargeInt,[]);
  cdsSTOCKONHAND_Edit.Edit;
    cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger + cdsRCR_DQTY.AsInteger;
  cdsSTOCKONHAND_Edit.Post;
  cdsRCRCOLL_AMT.AsFloat := cdsRCRCOLL_AMT.AsFloat - (cdsRCR_DQTY.AsInteger * cdsRCR_DCLS_PRICE.AsFloat);
  cdsRCR_D.Delete;
end;

procedure TfrmRenewalRepoContractEditor.cdsRCR_DBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  collQTY_BE := cdsRCR_DQTY.AsInteger;
end;

procedure TfrmRenewalRepoContractEditor.cdsRCR_DBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsRCR_D.State in [dsEdit] then
  begin
     cdsRCRCOLL_AMT.AsFloat := cdsRCRCOLL_AMT.AsFloat + ((cdsRCR_DQTY.AsLargeInt - collQTY_BE) * cdsRCR_DCLS_PRICE.AsFloat);
  end;
end;

procedure TfrmRenewalRepoContractEditor.cdsRCRINTERESTCODEChange(
  Sender: TField);
begin
  inherited;
  cdsLuInterest.Close;
  cdsLuInterest.Params[0].AsString := cdsRCRINTERESTCODE.AsString;
  cdsLuInterest.Open;

  cdsRCRINTERESTRATE.AsFloat := cdsLuInterestINTERESTRATE.AsFloat;

  if ((cdsRCRORG_AMT.Value > 0) and (cdsRCRSETTDAY.Value > 0)) then
  begin
  //suku bunga dalam percent :
    Interest := cdsLuInterestINTERESTRATE.AsFloat/100;
  //suku bunga efektif jangka waktu hari per jumlah hari efektif dalam setahun
    Interest := Interest * (cdsRCRSETTDAY.AsFloat / cdsLuInterestINTERESTDAY.AsFloat);

    cdsRCRINTEREST_AMT.AsFloat := Interest * cdsRCRORG_AMT.AsFloat;
    cdsRCRDUE_AMT.AsFloat := cdsRCRINTEREST_AMT.AsFloat + cdsRCRORG_AMT.AsFloat;;
  end;
end;

procedure TfrmRenewalRepoContractEditor.cdsRCRNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsRCRCONRID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_RCR');
  cdsRCRTRXDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsRCRSETTDATE.AsDateTime := cdsRCRTRXDATE.AsDateTime;
  cdsRCRCONTRACT_NO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsRCRTRXDATE.AsDateTime,'RC','TBL_B_OCR');
end;

procedure TfrmRenewalRepoContractEditor.cdsRCRORG_AMTChange(Sender: TField);
begin
  inherited;
  if (cdsRCR.State in dsEditModes) then
  begin
    cdsRCRREPO_AMT.AsFloat := cdsRCRORG_AMT.AsFloat;
  //    if not cdsOCRINTERESTRATE.IsNull then
    if ((cdsRCRINTERESTRATE.Value > 0) and (cdsRCRSETTDAY.Value > 0)) then
    begin
    //suku bunga dalam percent :
      Interest := cdsLuInterestINTERESTRATE.AsFloat/100;
    //suku bunga efektif jangka waktu hari per jumlah hari efektif dalam setahun
      Interest := Interest * (cdsRCRSETTDAY.AsFloat / cdsLuInterestINTERESTDAY.AsFloat);

      cdsRCRINTEREST_AMT.AsFloat := Interest * cdsRCRORG_AMT.AsFloat;
      cdsRCRDUE_AMT.AsFloat := cdsRCRINTEREST_AMT.AsFloat + cdsRCRORG_AMT.AsFloat;
    end;
  end;
end;

procedure TfrmRenewalRepoContractEditor.FormCreate(Sender: TObject);
begin
  inherited;
  cdsRCR.Close;
  cdsRCR.Open;
  cdsRCR.Active := true;

  cdsSTOCKONHAND.Close;
  cdsSTOCKONHAND.Open;

  cdsRCR_D.Close;
  cdsRCR_D.Open;

  cdsSTOCK_POS.Close;
  cdsSTOCK_POS.Open;

  cdsLuInstrument.Close;
  cdsLuInstrument.Open;

  cdsRepoContractList.Close;
  cdsRepoContractList.Open;

  cdsLuInterest.Close;
  cdsLuInterest.Open;

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

procedure TfrmRenewalRepoContractEditor.FormShow(Sender: TObject);
begin
  inherited;
  if Not cdsRCRENTTID.IsNull then
  begin
      cdsSTOCKONHAND.Close;
      cdsSTOCKONHAND.Params[0].Value := cdsRCRENTTID.AsInteger;
      cdsSTOCKONHAND.Open;

      cdsSTOCKONHAND_Edit.Close;
      cdsSTOCKONHAND_Edit.CreateDataSet;

      while not cdsSTOCKONHAND.Eof do
      begin
        cdsSTOCKONHAND_Edit.Append;
        cdsSTOCKONHAND_EditENTTID.AsLargeInt := cdsSTOCKONHANDENTTID.AsLargeInt;
        cdsSTOCKONHAND_EditACCID.AsLargeInt := cdsSTOCKONHANDACCID.AsLargeInt;
        cdsSTOCKONHAND_EditACCCODE.AsString := cdsSTOCKONHANDACCCODE.AsString;
        cdsSTOCKONHAND_EditSTOCKID.AsLargeInt := cdsSTOCKONHANDSTOCKID.AsLargeInt;
        cdsSTOCKONHAND_EditSTOCKCODE.AsString := cdsSTOCKONHANDSTOCKCODE.AsString;
        cdsSTOCKONHAND_EditQTY_ONHAND.AsLargeInt := cdsSTOCKONHANDQTY_ONHAND.AsLargeInt;
        cdsSTOCKONHAND_EditEDIT.AsString := '0';
        cdsSTOCKONHAND_Edit.Post;

        cdsSTOCKONHAND.Next;
      end;
  end;
end;

Initialization
  RegisterClass(TfrmRenewalRepoContractEditor);

end.


