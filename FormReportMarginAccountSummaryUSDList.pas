unit FormReportMarginAccountSummaryUSDList;

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
  NClientDataset, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl;

type
  TfrmReportMarginAccountSummaryOnUSDList = class(TfrmBrowseData)
    cdsMarginAccountSummaryUSD: TNClientDataset;
    cdsMarginAccountSummaryUSDSALESCODE: TStringField;
    cdsMarginAccountSummaryUSDACCNAME: TStringField;
    cdsMarginAccountSummaryUSDACCCODE: TStringField;
    cdsMarginAccountSummaryUSDCurrentMOF: TFloatField;
    cdsMarginAccountSummaryUSDCREDIT_LIMIT: TFloatField;
    cdsMarginAccountSummaryUSDAvailable: TFloatField;
    cdsMarginAccountSummaryUSDCASHOUTS: TFloatField;
    cdsMarginAccountSummaryUSDINTEREST: TFloatField;
    cdsMarginAccountSummaryUSDTOTALLOAN: TFloatField;
    cdsMarginAccountSummaryUSDSHAREPORTO: TFloatField;
    cdsMarginAccountSummaryUSDFORCESELL: TFloatField;
    cdsMarginAccountSummaryUSDCUREX: TFloatField;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterCurrentMOF: TcxGridDBBandedColumn;
    gvwMasterCREDIT_LIMIT: TcxGridDBBandedColumn;
    gvwMasterAvailable: TcxGridDBBandedColumn;
    gvwMasterCASHOUTS: TcxGridDBBandedColumn;
    gvwMasterINTEREST: TcxGridDBBandedColumn;
    gvwMasterTOTALLOAN: TcxGridDBBandedColumn;
    gvwMasterSHAREPORTO: TcxGridDBBandedColumn;
    gvwMasterFORCESELL: TcxGridDBBandedColumn;
    gvwMasterCUREX: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMarginAccountSummaryOnUSDList: TfrmReportMarginAccountSummaryOnUSDList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMarginAccountSummaryOnUSDList.actPrintExecute(
  Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := dtReportDate.Date;
  inherited;
end;

procedure TfrmReportMarginAccountSummaryOnUSDList.actRefreshExecute(
  Sender: TObject);
begin
  inherited;
  cdsMarginAccountSummaryUSD.Close;
  cdsMarginAccountSummaryUSD.Params[0].AsDate := dtReportDate.Date;
  cdsMarginAccountSummaryUSD.Open;
end;

procedure TfrmReportMarginAccountSummaryOnUSDList.FormShow(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
