unit FormReportListOfProductList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmReportListOfProductList = class(TfrmBrowseData)
    cdsProductList: TNClientDataset;
    cdsProductListMARKETCODE: TStringField;
    cdsProductListLOCALCODE: TStringField;
    cdsProductListSHORTNAME: TStringField;
    cdsProductListLISTINGDATE: TDateTimeField;
    cdsProductListDELISTINGDATE: TDateTimeField;
    cdsProductListISINCODE: TStringField;
    cdsProductListmargin_sts: TStringField;
    cdsProductListproduct_class: TStringField;
    cdsProductListSECTOR: TStringField;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterLISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterDELISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    gvwMastermargin_sts: TcxGridDBBandedColumn;
    gvwMasterproduct_class: TcxGridDBBandedColumn;
    gvwMasterSECTOR: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportListOfProductList: TfrmReportListOfProductList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportListOfProductList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsProductList.Close;
  cdsProductList.Open;
end;

end.
