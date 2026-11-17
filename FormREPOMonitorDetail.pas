unit FormREPOMonitorDetail;

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
  cxGridDBBandedTableView, NReportClient;

type
  TfrmOpeningRepoContractEditor = class(TfrmEditorData)

    cdsOCR: TNClientDataset;
    cdsOCRCONRID: TLargeintField;
    cdsOCRCONTRACT_NO: TStringField;
    cdsOCRENTTID: TIntegerField;
    cdsOCRENTTCODE: TStringField;
    cdsOCRENTTNAME: TStringField;
    cdsOCRTRXDATE: TDateTimeField;
    cdsOCRTRXTYPE: TStringField;
    cdsOCRACCID: TIntegerField;
    cdsOCRACCCODE: TStringField;
    cdsOCRACCNAME: TStringField;
    cdsOCRRACCID: TIntegerField;
    cdsOCRRACCCODE: TStringField;
    cdsOCRRACCNAME: TStringField;
    cdsOCRSETTDATE: TDateTimeField;
    cdsOCRSETTDAY: TIntegerField;
    cdsOCRMATURDATE: TDateTimeField;
    cdsOCRCCY: TStringField;
    cdsOCRLOAN_AMT: TFloatField;
    cdsOCRDUE_AMT: TFloatField;
    cdsOCRINTERESTCODE: TStringField;
    cdsOCRINTERESTDESC: TStringField;
    cdsOCRINTERESTRATE: TFloatField;
    cdsOCRINTERESTTABLE: TStringField;
    cdsOCRINTERESTDAY: TIntegerField;
    cdsOCRCALCMETHOD: TStringField;
    cdsOCRCALCBASIS: TStringField;
    cdsOCRAPR_COLL: TFloatField;
    cdsOCRFORCESELL: TFloatField;
    cdsOCRCOLL_CALL: TFloatField;
    cdsOCRISACCRUE: TSmallintField;
    cdsOCRISMONTHBASIS: TSmallintField;
    cdsOCRMODDA: TDateTimeField;
    cdsOCRMODUI: TStringField;
    cdsOCRAPPDA: TDateTimeField;
    cdsOCRAPPUI: TStringField;
    cdsOCRUNDER4Y: TIntegerField;
    cdsOCRUNDER4YDA: TDateTimeField;
    cdsOCRNOTES4Y: TStringField;
    cdsOCRISDEL: TIntegerField;
    cdsOCRID: TLargeintField;
    cdsOCRCON_DATE: TDateTimeField;
    cdsOCRTOPUP: TFloatField;
    cdsOCRDUE_DATE: TDateTimeField;
    cdsOCRORG_AMT: TFloatField;
    cdsOCRINTEREST_AMT: TFloatField;
    cdsOCRREPO_AMT: TFloatField;
    cdsOCRCOLL_AMT: TFloatField;
    cdsOCRDISCOUNT: TSmallintField;
    cdsOCRCORPACT: TSmallintField;

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
    cdsOCRqryORC_D: TDataSetField;
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
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
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
    LocalRep: TcxStyleRepository;
    nclQtyREPO: TcxStyle;
    nclWarining: TcxStyle;
    cxDBButtonEdit3: TcxDBButtonEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item25: TdxLayoutItem;


    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsOCRSETTDAYChange(Sender: TField);
    procedure cdsOCRINTERESTCODEChange(Sender: TField);
    procedure cdsCOLLATERALBeforeEdit(DataSet: TDataSet);
    procedure cdsOCRNewRecord(DataSet: TDataSet);
    procedure cdsCOLLATERALBeforePost(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure gvwCollateralFocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2Exit(Sender: TObject);
    procedure cxGrid2DBTableView1QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsCOLLATERALQTYChange(Sender: TField);
    procedure cdsOCRBeforeEdit(DataSet: TDataSet);
    procedure cdsCOLLATERALNewRecord(DataSet: TDataSet);
    procedure cdsSTOCKONHAND_EditMOVEPLANChange(Sender: TField);
    procedure gvwStockAvailableMOVEPLANPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsSTOCKONHAND_EditBeforePost(DataSet: TDataSet);
    procedure cdsOCRREPO_AMTChange(Sender: TField);
    procedure cdsSTOCKONHAND_EditBeforeEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsOCRAfterOpen(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gvwStockAvailableStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsOCRSETTDATEChange(Sender: TField);
  private
    { Private declarations }
    FCollBefore: Double;
    FQtyBeforeD: Double;
    FBrowseForm: TForm;

  public
    { Public declarations }
    property BrowseForm: TForm read FBrowseForm;
  end;

var
  frmOpeningRepoContractEditor: TfrmOpeningRepoContractEditor;

implementation

{$R *.dfm}
uses DataGlobal, DataLookup, FormLookupCIF, FormLookupAccount, cxLookupDBGrid, DateUtils,
  FormLuAccount;

procedure TfrmOpeningRepoContractEditor.Button4Click(Sender: TObject);
begin
    //if dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID',cdsSTOCKONHANDSTOCKID.AsInteger,[]) then

end;

procedure TfrmOpeningRepoContractEditor.Button5Click(Sender: TObject);
begin
  inherited;
  cdsSTOCKONHAND_Edit.Locate('STOCKID',cdsCOLLATERALSTOCKID.AsLargeInt,[]);
  cdsSTOCKONHAND_Edit.Edit;
    cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger + cdsCOLLATERALQTY.AsInteger;
  cdsSTOCKONHAND_Edit.Post;

  cdsOCR.Edit;
  cdsOCRCOLL_AMT.AsFloat := cdsOCRCOLL_AMT.AsFloat - (cdsCOLLATERALQTY.AsInteger * cdsCOLLATERALCLS_PRICE.AsFloat);
  cdsOCR.Post;

  cdsCOLLATERAL.Delete;
end;

procedure TfrmOpeningRepoContractEditor.cdsCOLLATERALBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  FQtyBeforeD := cdsCOLLATERALQTY.AsFloat;
end;

procedure TfrmOpeningRepoContractEditor.cdsCOLLATERALBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  //jangan lupa!!! - Pastikan Total Nilai Collateral Amount harus diupdate setiap EOD
  //pada table master Contract Repo dan table OCR

//  if not (cdsOCR.State in [dsInsert, dsEdit]) then cdsOCR.Edit;
//  cdsOCRCOLL_AMT.AsFloat := FCollBefore + (cdsCOLLATERALCOLL_AMT.AsFloat);
////  cdsOCR.Post;
//
//  if cdsSTOCKONHAND_Edit.Locate('STOCKID', VarArrayOf([cdsCOLLATERALSTOCKID.AsInteger]), []) then
//  begin
//    cdsSTOCKONHAND_Edit.Edit;
//    cdsSTOCKONHAND_EditQTY_ONHAND.AsFloat := cdsSTOCKONHAND_EditQTY_ONHAND.AsFloat -
//      (cdsCOLLATERALQTY.AsFloat - FQtyBeforeD);
//    cdsSTOCKONHAND_Edit.Post;
//  end;

end;

procedure TfrmOpeningRepoContractEditor.cdsCOLLATERALNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  FQtyBeforeD := 0;
end;

procedure TfrmOpeningRepoContractEditor.cdsCOLLATERALQTYChange(Sender: TField);
begin
  inherited;
//     cdsSTOCKONHAND_Edit.Edit;
//     cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger := cdsSTOCKONHAND_EditQTY_ONHAND.AsInteger + (collQTY_BE - cdsCOLLATERALQTY.AsLargeInt);
//     cdsSTOCKONHAND_Edit.Post;
  if cdsCOLLATERAL.State in [dsEdit, dsInsert] then
  begin
    cdsCOLLATERALTODAY_VAL.AsFloat := (cdsCOLLATERALQTY.AsInteger * cdsCOLLATERALCLS_PRICE.AsFloat) * (cdsLuInstrumentHAIRCUT.AsFloat/100);
    cdsCOLLATERALCOLL_AMT.AsFloat := (cdsCOLLATERALQTY.AsInteger * cdsCOLLATERALCLS_PRICE.AsFloat) * (cdsLuInstrumentHAIRCUT.AsFloat/100);
  end;

end;

procedure TfrmOpeningRepoContractEditor.cdsOCRAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsSum.Close;
  cdsSum.CreateDataSet;

  if not cdsOCR.IsEmpty then
  begin
    cdsSTOCKONHAND.Close;
    cdsSTOCKONHAND.Params[0].Value := cdsOCRENTTID.AsInteger;
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

procedure TfrmOpeningRepoContractEditor.cdsOCRBeforeEdit(DataSet: TDataSet);
begin
  inherited;
//  FCollBefore := cdsOCRCOLL_AMT.AsFloat;
end;

procedure TfrmOpeningRepoContractEditor.cdsOCRINTERESTCODEChange(
  Sender: TField);
begin
  inherited;
  if (cdsOCR.State in [dsInsert, dsEdit]) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuInterest.Locate('INTERESTCODE', VarArrayOf([cdsOCRINTERESTCODE.AsString]), []) then
      begin
        cdsOCRINTERESTRATE.AsFloat := cdsLuInterestINTERESTRATE.AsFloat;
        cdsOCRINTERESTDESC.AsString := cdsLuInterestINTERESTDESC.AsString;
        cdsOCRINTERESTDAY.AsFloat := cdsLuInterestINTERESTDAY.AsFloat;

        if ((cdsOCRREPO_AMT.Value > 0) and (cdsOCRSETTDAY.Value > 0)) then
        begin
          cdsOCRINTEREST_AMT.AsFloat := (cdsOCRREPO_AMT.AsFloat * (cdsOCRINTERESTRATE.AsFloat/100) *  (cdsOCRSETTDAY.AsFloat/cdsOCRINTERESTDAY.AsFloat));
          cdsOCRDUE_AMT.AsFloat := cdsOCRINTEREST_AMT.AsFloat + cdsOCRREPO_AMT.AsFloat;
        end;
      end;
    end;
  end;
end;

procedure TfrmOpeningRepoContractEditor.cdsOCRNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOCRCONRID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_OCR');
  cdsOCRTRXDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsOCRCONTRACT_NO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsOCRTRXDATE.AsDateTime,'RC','TBL_B_OCR');
  cdsOCRENTTCODE.AsString := '';
  cdsOCRENTTNAME.AsString := '';
  cdsOCRACCCODE.AsString := '';
  cdsOCRACCNAME.AsString := '';
  cdsOCRRACCCODE.AsString := '';
  cdsOCRRACCNAME.AsString := '';
  cdsOCRINTERESTRATE.AsFloat := 0;
  cdsOCRINTEREST_AMT.AsFloat := 0;
  cdsOCRREPO_AMT.AsFloat := 0;
  cdsOCRDUE_AMT.AsFloat := 0;
  cdsOCRCOLL_AMT.AsFloat := 0;
  cdsOCRORG_AMT.AsFloat := 0;
  cdsOCRDISCOUNT.AsInteger := 0;
  cdsOCRCORPACT.AsInteger := 0;
  cdsOCRSETTDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  FCollBefore := 0;
end;

procedure TfrmOpeningRepoContractEditor.cdsOCRREPO_AMTChange(Sender: TField);
begin
  inherited;
  if (cdsOCR.State in dsEditModes) then
  begin
  //    if not cdsOCRINTERESTRATE.IsNull then
    if ((cdsOCRREPO_AMT.Value > 0) and (cdsOCRSETTDAY.Value > 0)) then
    begin
      cdsOCRINTEREST_AMT.AsFloat := (cdsOCRREPO_AMT.AsFloat * (cdsOCRINTERESTRATE.AsFloat/100) *  (cdsOCRSETTDAY.AsFloat/cdsOCRINTERESTDAY.AsFloat));
      cdsOCRDUE_AMT.AsFloat := cdsOCRINTEREST_AMT.AsFloat + cdsOCRREPO_AMT.AsFloat;
    end;

    if not cdsSum.IsEmpty then
    begin

      if cdsOCRREPO_AMT.AsFloat > 0 then
      begin
        if not (cdsSum.State in [dsInsert, dsEdit]) then cdsSum.Edit;
        cdsSumRATIO.AsFloat := cdsSumCOL_AMT.AsFloat/ cdsOCRREPO_AMT.AsFloat;
      end;
    end;
  end;

end;

procedure TfrmOpeningRepoContractEditor.cdsOCRSETTDATEChange(Sender: TField);
begin
  inherited;
  if (cdsOCR.State in [dsInsert, dsEdit]) then
  begin
    cdsOCRCON_DATE.AsDateTime := cdsOCRSETTDATE.AsDateTime;
  end;

end;

procedure TfrmOpeningRepoContractEditor.cdsOCRSETTDAYChange(Sender: TField);
begin
  inherited;
  cdsOCRMATURDATE.AsDateTime := IncDay(cdsOCRSETTDATE.AsDateTime,cdsOCRSETTDAY.AsInteger);
end;


procedure TfrmOpeningRepoContractEditor.cdsSTOCKONHAND_EditBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  FCollBefore := cdsSTOCKONHAND_EditCOL_AMT.AsFloat;

end;

procedure TfrmOpeningRepoContractEditor.cdsSTOCKONHAND_EditBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsSum.IsEmpty then cdsSum.Append
  else
  begin
    if not (cdsSum.State in [dsInsert, dsEdit]) then cdsSum.Edit;
  end;
  cdsSumCOL_AMT.AsFloat := cdsSumCOL_AMT.AsFloat + (cdsSTOCKONHAND_EditCOL_AMT.AsFloat - FCollBefore);

  if cdsOCRREPO_AMT.AsFloat > 0 then
  begin
    cdsSumRATIO.AsFloat := cdsSumCOL_AMT.AsFloat/ cdsOCRREPO_AMT.AsFloat;
  end;

end;

procedure TfrmOpeningRepoContractEditor.cdsSTOCKONHAND_EditMOVEPLANChange(
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

procedure TfrmOpeningRepoContractEditor.gvwCollateralFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
//  if APrevFocusedItem = cxGrid2DBTableView1QTY then
//  begin
//    if cxGrid2DBTableView1.DataController.DataSource.DataSet.State in dsEditModes then
//    begin
//      cxGrid2DBTableView1.DataController.DataSource.DataSet.Post;
//    end;
//
//  end;
end;

procedure TfrmOpeningRepoContractEditor.gvwStockAvailableMOVEPLANPropertiesValidate(
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

procedure TfrmOpeningRepoContractEditor.gvwStockAvailableStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if ARecord.Values[3] < 0 then
  begin
    AStyle := nclWarining;
  end
  else if AItem.Index = 4 then
  begin
    AStyle := nclQtyREPO;
  end;


end;

procedure TfrmOpeningRepoContractEditor.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  oForm : TfrmLookupCIF;
begin
  inherited;
  oForm := TfrmLookupCIF.Create(Nil);
  oForm.DataSource1.DataSet := cdsLuCIF;
  if oForm.ShowModal = mrOK then
  begin
      if not (cdsOCR.State in dsEditModes) then
        cdsOCR.Edit;

      cdsOCRENTTID.AsInteger := cdsLuCIFENTTID.AsInteger;
      cdsOCRENTTCODE.AsString := cdsLuCIFENTTCODE.AsString;
      cdsOCRENTTNAME.AsString := cdsLuCIFENTNAME.AsString;

//      cdsOCRRACCID.AsInteger := 1453;
//      cdsOCRRACCCODE.AsString := 'EQ0000799';
//      cdsOCRRACCNAME.AsString := 'CIMB SECURITIES LIMITED';

      cdsOCRCCY.AsString := 'IDR';

      cdsSTOCKONHAND.Close;
      cdsSTOCKONHAND.Params[0].Value := cdsOCRENTTID.AsInteger;
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

  oform.Free;
end;

procedure TfrmOpeningRepoContractEditor.cxDBButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  oForm : TfrmLookupAccount;
begin
  inherited;

  cdsLuAccount.Close;
  cdsLuAccount.Params[0].AsInteger := cdsLuCIFENTTID.AsInteger;
  cdsLuAccount.Params[1].AsString := 'RP';
  cdsLuAccount.Open;

  oForm := TfrmLookupAccount.Create(Nil);
  oForm.DataSource1.DataSet := cdsLuAccount;
  if oForm.ShowModal = mrOK then
  begin
      if not (cdsOCR.State in dsEditModes) then
        cdsOCR.Edit;

      cdsOCRRACCID.AsInteger := cdsLuAccountACCID.AsInteger;
      cdsOCRRACCCODE.AsString := cdsLuAccountACCCODE.AsString;
      cdsOCRRACCNAME.AsString := cdsLuAccountACCNAME.AsString;
  end;
  FreeAndNil(oForm);
end;

procedure TfrmOpeningRepoContractEditor.cxDBButtonEdit3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  oForm : TfrmLookupAccount;
begin
  inherited;
  cdsLuAccount.Close;
  cdsLuAccount.Params[0].AsInteger := cdsLuCIFENTTID.AsInteger;
  cdsLuAccount.Params[1].AsString := 'EQ';
  cdsLuAccount.Open;

  oForm := TfrmLookupAccount.Create(Nil);
  oForm.DataSource1.DataSet := cdsLuAccount;
  if oForm.ShowModal = mrOK then
  begin
      if not (cdsOCR.State in dsEditModes) then
        cdsOCR.Edit;

      cdsOCRACCID.AsInteger := cdsLuAccountACCID.AsInteger;
      cdsOCRACCCODE.AsString := cdsLuAccountACCCODE.AsString;
      cdsOCRACCNAME.AsString := cdsLuAccountACCNAME.AsString;
  end;
  FreeAndNil(oForm);

end;

procedure TfrmOpeningRepoContractEditor.cxGrid2DBTableView1QTYPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
//  if cxGrid2DBTableView1.DataController.DataSource.DataSet.State in dsEditModes then
//    cxGrid2DBTableView1.DataController.DataSource.DataSet.Post;

end;

procedure TfrmOpeningRepoContractEditor.cxGrid2Exit(Sender: TObject);
begin
  inherited;
//  if cxGrid2DBTableView1.DataController.DataSource.DataSet.State in dsEditModes then
//    cxGrid2DBTableView1.DataController.DataSource.DataSet.Post;
end;

procedure TfrmOpeningRepoContractEditor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (ModalResult = mrOk) then
  begin
    if (self.State = pkCreate) then
    begin
      cdsSTOCKONHAND_Edit.DisableControls;
      cdsSTOCKONHAND_Edit.First;

      while not cdsSTOCKONHAND_Edit.Eof do
      begin
        if cdsSTOCKONHAND_EditMOVEPLAN.AsLargeInt > 0 then
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

        cdsSTOCKONHAND_Edit.Next;
      end;
      cdsSTOCKONHAND_Edit.EnableControls;

    end
    else if (self.State = pkUpdate ) then
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
end;

procedure TfrmOpeningRepoContractEditor.FormCreate(Sender: TObject);
begin
  inherited;
  cdsOCR.Close;
  cdsOCR.Open;
//  cdsOCR.Active := true;

//  cdsSTOCKONHAND.Close;
//  cdsSTOCKONHAND.Open;

//  cdsCOLLATERAL.Close;
//  cdsCOLLATERAL.Open;

  cdsSTOCK_POS.Close;
  cdsSTOCK_POS.Open;

  cdsLuInstrument.Close;
  cdsLuInstrument.Open;

  cdsLuCIF.Close;
  cdsLuCIF.Open;

  cdsLuAccount.Close;
  cdsLuAccount.Open;


  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuInterest.Close;
    cdsLuInterest.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

end;

Initialization
  RegisterClass(TfrmOpeningRepoContractEditor);

end.
