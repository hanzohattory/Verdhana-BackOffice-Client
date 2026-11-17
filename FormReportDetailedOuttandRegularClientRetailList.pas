unit FormReportDetailedOuttandRegularClientRetailList;

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
  cxGridDBBandedTableView, cxGrid, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl;

type
  TfrmReportDetailedOuttandRegularClientRetail = class(TfrmBrowseData)
    cdsDetailOutstandRegularClientRetail: TNClientDataset;
    cdsDetailOutstandRegularClientRetailMARKETCODE: TStringField;
    cdsDetailOutstandRegularClientRetailBRANCHNAME: TStringField;
    cdsDetailOutstandRegularClientRetailACCTYPEDESC: TStringField;
    cdsDetailOutstandRegularClientRetailENTSTATUS: TStringField;
    cdsDetailOutstandRegularClientRetailACCCODE: TStringField;
    cdsDetailOutstandRegularClientRetailACCNAME: TStringField;
    cdsDetailOutstandRegularClientRetailDEALTICKETDATE: TDateField;
    cdsDetailOutstandRegularClientRetailps: TStringField;
    cdsDetailOutstandRegularClientRetailshare: TStringField;
    cdsDetailOutstandRegularClientRetailprice: TFloatField;
    cdsDetailOutstandRegularClientRetailqty_p: TLargeintField;
    cdsDetailOutstandRegularClientRetailar: TFloatField;
    cdsDetailOutstandRegularClientRetailqty_s: TLargeintField;
    cdsDetailOutstandRegularClientRetailap: TFloatField;
    cdsDetailOutstandRegularClientRetailSTK_CLOS: TFloatField;
    cdsDetailOutstandRegularClientRetailAMT: TFloatField;
    cdsDetailOutstandRegularClientRetailUnreal: TFloatField;
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FReportDate: TDate;
  public
    { Public declarations }
  end;

var
  frmReportDetailedOuttandRegularClientRetail: TfrmReportDetailedOuttandRegularClientRetail;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportDetailedOuttandRegularClientRetail.actRefreshExecute(
  Sender: TObject);
begin
  inherited;
  cdsDetailOutstandRegularClientRetail.Close;
  cdsDetailOutstandRegularClientRetail.Params[0].AsDate := FReportDate;
  cdsDetailOutstandRegularClientRetail.Open;
end;

procedure TfrmReportDetailedOuttandRegularClientRetail.FormShow(
  Sender: TObject);
begin
  inherited;
  FReportDate := dmGlobal.RemoteServer.GetTransDate;
end;

end.
