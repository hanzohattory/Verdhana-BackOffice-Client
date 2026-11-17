unit FormReportDetailedOutstandNasabahMarginList;

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
  TfrmReportDetailedOutstandNasabahMarginList = class(TfrmBrowseData)
    cdsDetailOutstandNasabahMargin: TNClientDataset;
    cdsDetailOutstandNasabahMarginMARKETCODE: TStringField;
    cdsDetailOutstandNasabahMarginBRANCHNAME: TStringField;
    cdsDetailOutstandNasabahMarginACCTYPEDESC: TStringField;
    cdsDetailOutstandNasabahMarginENTSTATUS: TStringField;
    cdsDetailOutstandNasabahMarginACCCODE: TStringField;
    cdsDetailOutstandNasabahMarginACCNAME: TStringField;
    cdsDetailOutstandNasabahMarginDEALTICKETDATE: TDateField;
    cdsDetailOutstandNasabahMarginps: TStringField;
    cdsDetailOutstandNasabahMarginshare: TStringField;
    cdsDetailOutstandNasabahMarginprice: TFloatField;
    cdsDetailOutstandNasabahMarginqty_p: TLargeintField;
    cdsDetailOutstandNasabahMarginar: TFloatField;
    cdsDetailOutstandNasabahMarginqty_s: TLargeintField;
    cdsDetailOutstandNasabahMarginap: TFloatField;
    cdsDetailOutstandNasabahMarginSTK_CLOS: TFloatField;
    cdsDetailOutstandNasabahMarginAMT: TFloatField;
    cdsDetailOutstandNasabahMarginUnreal: TFloatField;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterACCTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterENTSTATUS: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterps: TcxGridDBBandedColumn;
    gvwMastershare: TcxGridDBBandedColumn;
    gvwMasterprice: TcxGridDBBandedColumn;
    gvwMasterqty_p: TcxGridDBBandedColumn;
    gvwMasterar: TcxGridDBBandedColumn;
    gvwMasterqty_s: TcxGridDBBandedColumn;
    gvwMasterap: TcxGridDBBandedColumn;
    gvwMasterSTK_CLOS: TcxGridDBBandedColumn;
    gvwMasterAMT: TcxGridDBBandedColumn;
    gvwMasterUnreal: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDetailedOutstandNasabahMarginList: TfrmReportDetailedOutstandNasabahMarginList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportDetailedOutstandNasabahMarginList.actRefreshExecute(
  Sender: TObject);
begin
  inherited;
  cdsDetailOutstandNasabahMargin.Close;
  cdsDetailOutstandNasabahMargin.Open;
end;

end.
