unit FormAccParamClasses;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  System.ImageList;

type
  TfrmAccParamClasses = class(TfrmBrowseData)
    cdsBusTypeList: TNClientDataset;
    cdsBusTypeListBUSTYPEID: TLargeintField;
    cdsBusTypeListBUSTYPECODE: TStringField;
    cdsBusTypeListBUSTYPEDESC: TStringField;
    cdsBusTypeListMODDA: TDateTimeField;
    cdsBusTypeListMODUI: TStringField;
    cdsBusTypeListAPPDA: TDateTimeField;
    cdsBusTypeListAPPUI: TStringField;
    cdsBusTypeListUNDER4Y: TIntegerField;
    cdsBusTypeListUNDER4YDA: TDateTimeField;
    cdsBusTypeListNOTES4Y: TStringField;
    cdsBusTypeListISDEL: TIntegerField;
    cdsBusTypeListID: TLargeintField;
    gvwMasterBUSTYPECODE: TcxGridDBBandedColumn;
    gvwMasterBUSTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccParamClasses: TfrmAccParamClasses;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormAccParamClass;

procedure TfrmAccParamClasses.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccParamCLass;
end;

procedure TfrmAccParamClasses.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBusTypeListBUSTYPEID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuChannel.Close;
    cdsLuChannel.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuCommission.Close;
    cdsLuCommission.Open;

    cdsLuCharge.Close;
    cdsLuCharge.Open;

//    cdsLuAccLegClass.Close;
//    cdsLuAccLegClass.Open;
//
//    cdsLuActLedgerType.Close;
//    cdsLuActLedgerType.Open;
//
//    cdsLuTradingLimitClass.Close;
//    cdsLuTradingLimitClass.Open;

    cdsLuInterest.Close;
    cdsLuInterest.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

  cdsBusTypeList.Close;
  cdsBusTypeList.Open;
end;

Initialization
  RegisterClass(TfrmAccParamClasses);

end.
