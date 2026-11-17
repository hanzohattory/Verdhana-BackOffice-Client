unit FormReportDetailedPortfolioClientList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid;

type
  TfrmReportDetailedPortfolioClientList = class(TfrmBrowseData)
    cdsDetailedPortofolioClient: TNClientDataset;
    cdsDetailedPortofolioClientACCCODE: TStringField;
    cdsDetailedPortofolioClientACCNAME: TStringField;
    cdsDetailedPortofolioClientSTOCKCODE: TStringField;
    cdsDetailedPortofolioClientLONGNAME: TStringField;
    cdsDetailedPortofolioClientSTOCKBAL: TFloatField;
    cdsDetailedPortofolioClientCLOSEPRICE: TFloatField;
    cdsDetailedPortofolioClientValue: TFloatField;
    cdsDetailedPortofolioClientHAIRCUT_VALUE: TFloatField;
    cdsDetailedPortofolioClientvalaftercapping: TFloatField;
    cdsDetailedPortofolioClientTotalLoan: TFloatField;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterLONGNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKBAL: TcxGridDBBandedColumn;
    gvwMasterCLOSEPRICE: TcxGridDBBandedColumn;
    gvwMasterValue: TcxGridDBBandedColumn;
    gvwMasterHAIRCUT_VALUE: TcxGridDBBandedColumn;
    gvwMastervalaftercapping: TcxGridDBBandedColumn;
    gvwMasterTotalLoan: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDetailedPortfolioClientList: TfrmReportDetailedPortfolioClientList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportDetailedPortfolioClientList.actRefreshExecute(
  Sender: TObject);
begin
  inherited;
  cdsDetailedPortofolioClient.Close;
  cdsDetailedPortofolioClient.Open;
end;

end.
