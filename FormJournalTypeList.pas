unit FormJournalTypeList;

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
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmJrnTypeList = class(TfrmBrowseData)
    cdsJrnTypeList: TNClientDataset;
    cdsJrnTypeListJRNTYPE: TStringField;
    cdsJrnTypeListJRNTYPEDESC: TStringField;
    cdsJrnTypeListJRNMANUAL: TStringField;
    cdsJrnTypeListMODDA: TDateTimeField;
    cdsJrnTypeListMODUI: TStringField;
    cdsJrnTypeListAPPDA: TDateTimeField;
    cdsJrnTypeListAPPUI: TStringField;
    cdsJrnTypeListUNDER4Y: TIntegerField;
    cdsJrnTypeListUNDER4YDA: TDateTimeField;
    cdsJrnTypeListNOTES4Y: TStringField;
    cdsJrnTypeListISDEL: TIntegerField;
    cdsJrnTypeListID: TLargeintField;
    cdsJrnType: TNClientDataset;
    cdsJrnTypeJRNTYPE: TStringField;
    cdsJrnTypeJRNTYPEDESC: TStringField;
    cdsJrnTypeJRNMANUAL: TStringField;
    cdsJrnTypeMODDA: TDateTimeField;
    cdsJrnTypeMODUI: TStringField;
    cdsJrnTypeAPPDA: TDateTimeField;
    cdsJrnTypeAPPUI: TStringField;
    cdsJrnTypeUNDER4Y: TIntegerField;
    cdsJrnTypeUNDER4YDA: TDateTimeField;
    cdsJrnTypeNOTES4Y: TStringField;
    cdsJrnTypeISDEL: TIntegerField;
    cdsJrnTypeID: TLargeintField;
    gvwMasterJRNTYPE: TcxGridDBBandedColumn;
    gvwMasterJRNTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterJRNMANUAL: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJrnTypeList: TfrmJrnTypeList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

end.
