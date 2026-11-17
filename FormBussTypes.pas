unit FormBussTypes;

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
  dxSkinsdxRibbonPainter, NReportClient, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmBussTypes = class(TfrmBrowseData)
    cdsBussCatList: TNClientDataset;
    cdsBussCatListBUS_CAT_ID: TLargeintField;
    cdsBussCatListBUS_CAT_CODE: TStringField;
    cdsBussCatListBUS_CAT_DESC: TStringField;
    cdsBussCatListMODDA: TDateTimeField;
    cdsBussCatListMODUI: TStringField;
    cdsBussCatListAPPDA: TDateTimeField;
    cdsBussCatListAPPUI: TStringField;
    cdsBussCatListUNDER4Y: TIntegerField;
    cdsBussCatListUNDER4YDA: TDateTimeField;
    cdsBussCatListNOTES4Y: TStringField;
    cdsBussCatListISDEL: TIntegerField;
    cdsBussCatListID: TLargeintField;
    gvwMasterBUS_CAT_ID: TcxGridDBBandedColumn;
    gvwMasterBUS_CAT_CODE: TcxGridDBBandedColumn;
    gvwMasterBUS_CAT_DESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBussTypes: TfrmBussTypes;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormBussType;

procedure TfrmBussTypes.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBussType;
end;

procedure TfrmBussTypes.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBussCatListBUS_CAT_ID;
  cdsBussCatList.Close;
  cdsBussCatList.Open;
end;

Initialization
  RegisterClass(TfrmBussTypes);


end.
