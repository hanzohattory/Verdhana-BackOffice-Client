unit FormProductList;

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
  cxGridCustomView, cxGrid, NReportClient;

type
  TfrmProductList = class(TfrmBrowseData)
    cdsProductList: TNClientDataset;
    cdsProduct: TNClientDataset;
    cdsProductListPRDCODE: TStringField;
    cdsProductListPRDDESC: TStringField;
    cdsProductListPRDTYPE: TStringField;
    cdsProductListMODDA: TDateTimeField;
    cdsProductListMODUI: TStringField;
    cdsProductListAPPDA: TDateTimeField;
    cdsProductListAPPUI: TStringField;
    cdsProductListUNDER4Y: TIntegerField;
    cdsProductListUNDER4YDA: TDateTimeField;
    cdsProductListNOTES4Y: TStringField;
    cdsProductListISDEL: TIntegerField;
    cdsProductListID: TLargeintField;
    cdsProductPRDCODE: TStringField;
    cdsProductPRDDESC: TStringField;
    cdsProductPRDTYPE: TStringField;
    cdsProductMODDA: TDateTimeField;
    cdsProductMODUI: TStringField;
    cdsProductAPPDA: TDateTimeField;
    cdsProductAPPUI: TStringField;
    cdsProductUNDER4Y: TIntegerField;
    cdsProductUNDER4YDA: TDateTimeField;
    cdsProductNOTES4Y: TStringField;
    cdsProductISDEL: TIntegerField;
    cdsProductID: TLargeintField;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterPRDDESC: TcxGridDBBandedColumn;
    gvwMasterPRDTYPE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductList: TfrmProductList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormProduct;

procedure TfrmProductList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmProduct;
end;

procedure TfrmProductList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuProductType.Close;
    cdsLuProductType.Open;
  end;

  cdsProductList.Close;
  cdsProductList.Open;
end;

Initialization
  RegisterClass(TfrmProductList);

end.
