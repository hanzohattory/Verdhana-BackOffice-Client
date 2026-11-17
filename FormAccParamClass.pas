unit FormAccParamClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxTextEdit, cxDBEdit, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxGroupBox, cxLabel, cxImageComboBox, Vcl.ExtCtrls, Vcl.DBCtrls,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, dxBarBuiltInMenu,
  cxCurrencyEdit, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAccParamCLass = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsCharge: TDataSource;
    dsComm: TDataSource;
    cdsBusType: TNClientDataset;
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
    cdsBusTypeChargeDESCRIPTION: TStringField;
    cdsBusTypeComm: TNClientDataset;
    cdsBusTypeCommBUSTYPEID: TLargeintField;
    cdsBusTypeCommMARKETCODE: TStringField;
    cdsBusTypeCommCHANNELCODE: TStringField;
    cdsBusTypeCommCOMM_ID: TLargeintField;
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
    cdsBusTypeCommDESCRIPTION: TStringField;
    cdsBusTypeCommNET_COMMID: TLargeintField;
    pageAccount: TcxPageControl;
    tabGeneral: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl5: TdxLayoutControl;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Group3: TdxLayoutGroup;
    dxLayoutControl5Item16: TdxLayoutItem;
    dxLayoutControl5Item2: TdxLayoutItem;
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
    tabInterest: TcxTabSheet;
    cxGrid9: TcxGrid;
    gvwInterest: TcxGridDBBandedTableView;
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
    gvwCommCOMM_ID: TcxGridDBColumn;
    gvwCommDESCRIPTION: TcxGridDBColumn;
    gvwCommCALC_METHOD: TcxGridDBColumn;
    gvwCommUSE_MINCOMM: TcxGridDBColumn;
    gvwCommWITH_SELLTAX: TcxGridDBColumn;
    grdCommLevel1: TcxGridLevel;
    tabCharges: TcxTabSheet;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBTableView;
    gvwChargeMARKETCODE: TcxGridDBColumn;
    gvwChargeCHARGE_ID: TcxGridDBColumn;
    gvwChargeDESCRIPTION: TcxGridDBColumn;
    gvwChargeISUSED: TcxGridDBColumn;
    grdChargeLevel1: TcxGridLevel;
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
    dsInterest: TDataSource;
    gvwInterestBUSTYPEID: TcxGridDBBandedColumn;
    cdsBusTypeChargeCHARGE_DESC: TStringField;
    gvwChargeCHARGE_DESC: TcxGridDBColumn;
    cdsBusTypeGLTYPE_ID: TIntegerField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cdsBusTypeLTYPE_ID: TIntegerField;
    cdsBusTypeWAPU_VALUE: TFloatField;
    cdsBusTypeWAPU_TYPE: TIntegerField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cdsBusTypeUSESINV: TStringField;
    cdsBusTypeInterestPRINCIPLE_METHOD: TIntegerField;
    gvwInterestPRINCIPLE_METHOD: TcxGridDBBandedColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    procedure cdsBusTypeNewRecord(DataSet: TDataSet);
    procedure gvwChargeInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccParamCLass: TfrmAccParamCLass;

implementation

{$R *.dfm}

uses DataGlobal, cxLookupDBGrid;

procedure TfrmAccParamCLass.cdsBusTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsBusTypeBUSTYPEID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BUS_TYPE');
end;

procedure TfrmAccParamCLass.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuGLType.Active then
      cdsLuGLType.Open
    else
      cdsLuGLType.Refresh;

    if not cdsLuCPCenter.Active then
      cdsLuCPCenter.Open;
  end;
end;

procedure TfrmAccParamCLass.gvwChargeInitEdit(Sender: TcxCustomGridTableView;
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

Initialization
  RegisterClass(TfrmAccParamCLass);

end.
