unit FormReportMarginAccountSummaryList;

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
  TfrmReportMarginAccountSummaryList = class(TfrmBrowseData)
    cdsMarginAccountSummary: TNClientDataset;
    cdsMarginAccountSummarySALESCODE: TStringField;
    cdsMarginAccountSummaryACCNAME: TStringField;
    cdsMarginAccountSummaryACCCODE: TStringField;
    cdsMarginAccountSummaryCURRENTMOF: TFloatField;
    cdsMarginAccountSummaryCREDIT_LIMIT: TFloatField;
    cdsMarginAccountSummaryTRADELIMIT: TFloatField;
    cdsMarginAccountSummaryCASHOUTS: TFloatField;
    cdsMarginAccountSummaryINTEREST: TFloatField;
    cdsMarginAccountSummaryTOTALLOAN: TFloatField;
    cdsMarginAccountSummarySHAREPORTO: TFloatField;
    cdsMarginAccountSummaryFORCESELL: TFloatField;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterCURRENTMOF: TcxGridDBBandedColumn;
    gvwMasterCREDIT_LIMIT: TcxGridDBBandedColumn;
    gvwMasterTRADELIMIT: TcxGridDBBandedColumn;
    gvwMasterCASHOUTS: TcxGridDBBandedColumn;
    gvwMasterINTEREST: TcxGridDBBandedColumn;
    gvwMasterTOTALLOAN: TcxGridDBBandedColumn;
    gvwMasterSHAREPORTO: TcxGridDBBandedColumn;
    gvwMasterFORCESELL: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMarginAccountSummaryList: TfrmReportMarginAccountSummaryList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMarginAccountSummaryList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := dtReportDate.Date;
  inherited;
end;

procedure TfrmReportMarginAccountSummaryList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsMarginAccountSummary.Close;
  cdsMarginAccountSummary.Params[0].AsDate := dtReportDate.Date;
  cdsMarginAccountSummary.Open;
end;

procedure TfrmReportMarginAccountSummaryList.FormShow(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
