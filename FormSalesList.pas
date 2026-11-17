unit FormSalesList;

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
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient;

type
  TfrmSalesList = class(TfrmBrowseData)
    cdsSalesList: TNClientDataset;
    cdsSalesListSALESID: TLargeintField;
    cdsSalesListSALESCODE: TStringField;
    cdsSalesListEMPID: TLargeintField;
    cdsSalesListAGENT_ID: TLargeintField;
    cdsSalesListSALESNAME: TStringField;
    cdsSalesListEXT: TStringField;
    cdsSalesListDEALERID: TLargeintField;
    cdsSalesListMODDA: TDateTimeField;
    cdsSalesListMODUI: TStringField;
    cdsSalesListAPPDA: TDateTimeField;
    cdsSalesListAPPUI: TStringField;
    cdsSalesListUNDER4Y: TIntegerField;
    cdsSalesListUNDER4YDA: TDateTimeField;
    cdsSalesListNOTES4Y: TStringField;
    cdsSalesListISDEL: TIntegerField;
    cdsSalesListID: TLargeintField;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterEMPID: TcxGridDBBandedColumn;
    gvwMasterAGENT_ID: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    cdsSalesListBRANCHID: TLargeintField;
    cdsSalesListADDRESS1: TStringField;
    cdsSalesListADDRESS2: TStringField;
    cdsSalesListADDRESS3: TStringField;
    cdsSalesListPHONE: TStringField;
    cdsSalesListMOBILEPHONE: TStringField;
    cdsSalesListFAX: TStringField;
    cdsSalesListIDNUMBER: TStringField;
    cdsSalesListIDTYPE: TStringField;
    cdsSalesListEMAIL: TStringField;
    cdsSalesListSHRCOMM: TFloatField;
    cdsSalesListSALESTYPE: TStringField;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterSALESTYPE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalesList: TfrmSalesList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormSales;

procedure TfrmSalesList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmSales;
end;

procedure TfrmSalesList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsSalesListSALESID;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBranch.Close;
    cdsLuBranch.Open;

    cdsLuSalesType.Close;
    cdsLuSalesType.Open;

    cdsLuUser.Close;
    cdsLuUser.Open;
  end;

  cdsSalesList.Close;
  cdsSalesList.Open;
end;

Initialization
  RegisterClass(TfrmSalesList);

end.
