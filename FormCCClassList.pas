unit FormCCClassList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid;

const
  CCTYPE_CASH = 'CS';
  CCTYPE_REG = 'RV';
  CCTYPE_RATIO = 'TV';
  CCTYPE_APPRLIMIT = 'AL';

type
  TfrmCCClassList = class(TfrmBrowseData)
    cdsCCClassList: TNClientDataset;
    cdsCCClassListCCCLS_ID: TLargeintField;
    cdsCCClassListCCLSSNAME: TStringField;
    cdsCCClassListCC_TYPE: TStringField;
    cdsCCClassListTL_CASHVALUATE: TFloatField;
    cdsCCClassListTL_STOCKVALUATE: TFloatField;
    cdsCCClassListTLB_OVERLIMIT: TStringField;
    cdsCCClassListTLB_NOTVALIDSTATUS: TStringField;
    cdsCCClassListTLB_MRG_NONVALSTOCK: TStringField;
    cdsCCClassListTLB_OVERDUE: TStringField;
    cdsCCClassListTLS_SHORTSELL: TStringField;
    cdsCCClassListTLS_NOTVALIDSTATUS: TStringField;
    cdsCCClassListTLS_OVERDUE: TStringField;
    cdsCCClassListRATIO_MRGCALL: TFloatField;
    cdsCCClassListRATIO_MRGWARING: TFloatField;
    cdsCCClassListRATIO_FORCESELL: TFloatField;
    cdsCCClassListFORCESELL_DAY: TIntegerField;
    cdsCCClassListMODDA: TDateTimeField;
    cdsCCClassListMODUI: TStringField;
    cdsCCClassListAPPDA: TDateTimeField;
    cdsCCClassListAPPUI: TStringField;
    cdsCCClassListUNDER4Y: TIntegerField;
    cdsCCClassListUNDER4YDA: TDateTimeField;
    cdsCCClassListNOTES4Y: TStringField;
    cdsCCClassListISDEL: TIntegerField;
    cdsCCClassListID: TLargeintField;
    gvwMasterCCLSSNAME: TcxGridDBBandedColumn;
    gvwMasterCC_TYPE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    cdsCCClassListCR_VAL: TFloatField;
    cdsCCClassListBUY_LIMIT: TFloatField;
    cdsCCClassListSELL_LIMIT: TFloatField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCCClassList: TfrmCCClassList;

implementation

{$R *.dfm}

uses DataGlobal, FormCCClass;

procedure TfrmCCClassList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCCClass;
end;

procedure TfrmCCClassList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCCClassListCCCLS_ID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCCType.Close;
    cdsLuCCType.Open;

    cdsCCClassList.Close;
    cdsCCClassList.Open;

  end;
end;

Initialization
  RegisterClass(TfrmCCClassList);


end.
