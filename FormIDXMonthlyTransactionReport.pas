unit FormIDXMonthlyTransactionReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxLayoutContainer, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView,
  cxGridCustomLayoutView, Datasnap.DBClient, NClientDataset, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxImageComboBox, cxSpinEdit, cxBarEditItem;

type
  TfrmIDXTransactionReport = class(TfrmBrowseData)
    cdsIDXMonthlyReport: TNClientDataset;
    cdsIDXMonthlyReportPeriod: TStringField;
    cdsIDXMonthlyReportCompanyName: TStringField;
    cdsIDXMonthlyReportReportNo: TStringField;
    cdsIDXMonthlyReportDirectorName: TStringField;
    cdsIDXMonthlyReportOccupation: TStringField;
    cdsIDXMonthlyReportRTBuy_Amount: TFloatField;
    cdsIDXMonthlyReportRTSell_Amount: TFloatField;
    cdsIDXMonthlyReportOTBuy_Amount: TFloatField;
    cdsIDXMonthlyReportOTSell_Amount: TFloatField;
    cdsIDXMonthlyReportDMABuy_Amount: TFloatField;
    cdsIDXMonthlyReportDMASell_Amount: TFloatField;
    cdsIDXMonthlyReportCreateDate: TDateTimeField;
    cdsIDXMonthlyReportCreateSysDate: TDateTimeField;
    cdsIDXMonthlyReportCreate_UI: TStringField;
    cdsIDXMonthlyReportModda: TDateTimeField;
    cdsIDXMonthlyReportModSysDate: TDateTimeField;
    cdsIDXMonthlyReportModui: TStringField;
    grdMasterDBLayoutView1Group_Root: TdxLayoutGroup;
    grdMasterDBLayoutView1: TcxGridDBLayoutView;
    grdMasterDBLayoutView1LayoutItem1: TcxGridLayoutItem;
    grdMasterDBLayoutView1Period: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem2: TcxGridLayoutItem;
    grdMasterDBLayoutView1CompanyName: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem3: TcxGridLayoutItem;
    grdMasterDBLayoutView1ReportNo: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem4: TcxGridLayoutItem;
    grdMasterDBLayoutView1DirectorName: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem5: TcxGridLayoutItem;
    grdMasterDBLayoutView1Occupation: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem6: TcxGridLayoutItem;
    grdMasterDBLayoutView1RTBuy_Amount: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem7: TcxGridLayoutItem;
    grdMasterDBLayoutView1RTSell_Amount: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem8: TcxGridLayoutItem;
    grdMasterDBLayoutView1OTBuy_Amount: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem9: TcxGridLayoutItem;
    grdMasterDBLayoutView1OTSell_Amount: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem10: TcxGridLayoutItem;
    grdMasterDBLayoutView1DMABuy_Amount: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem11: TcxGridLayoutItem;
    grdMasterDBLayoutView1DMASell_Amount: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem12: TcxGridLayoutItem;
    grdMasterDBLayoutView1CreateDate: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem13: TcxGridLayoutItem;
    grdMasterDBLayoutView1CreateSysDate: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem14: TcxGridLayoutItem;
    grdMasterDBLayoutView1Create_UI: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem15: TcxGridLayoutItem;
    grdMasterDBLayoutView1Modda: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem16: TcxGridLayoutItem;
    grdMasterDBLayoutView1ModSysDate: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem17: TcxGridLayoutItem;
    grdMasterDBLayoutView1Modui: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1Group1: TdxLayoutGroup;
    grdMasterDBLayoutView1AutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    grdMasterDBLayoutView1Group2: TdxLayoutGroup;
    grdMasterDBLayoutView1Group3: TdxLayoutGroup;
    grdMasterDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    grdMasterDBLayoutView1Group4: TdxLayoutGroup;
    grdMasterDBLayoutView1Group5: TdxLayoutGroup;
    grdMasterDBLayoutView1AutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    grdMasterDBLayoutView1Group6: TdxLayoutGroup;
    edMonth: TcxBarEditItem;
    edYear: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure edMonthPropertiesChange(Sender: TObject);
    procedure edYearPropertiesChange(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsIDXMonthlyReportReportNoChange(Sender: TField);
  private
    { Private declarations }
    procedure Reload;
  public
    { Public declarations }
  end;

var
  frmIDXTransactionReport: TfrmIDXTransactionReport;

implementation

{$R *.dfm}

uses DataGlobal, DataReport;

procedure TfrmIDXTransactionReport.actPrintExecute(Sender: TObject);
var
  sPeriod: string;
begin
  sPeriod := IntToStr(edYear.EditValue)+FormatFloat('00', edMonth.EditValue);
  ReportContainer.Params[0].AsString := sPeriod;

  inherited;
end;

procedure TfrmIDXTransactionReport.actRefreshExecute(Sender: TObject);
var
  sPeriod: string;
  sMsg: string;
begin
//  inherited;
  sPeriod :=  IntToStr(edYear.EditValue)+FormatFloat('00', edMonth.EditValue);

  dmGlobal.RemoteServer.GenerateIDXMonthlyTransReport(sPeriod, sMsg);
  MessageInformation(sMsg);

  Reload;
end;

procedure TfrmIDXTransactionReport.cdsIDXMonthlyReportReportNoChange(
  Sender: TField);
begin
  inherited;
  if MessageQuestion('Change Report No ?') then
  begin
    cdsIDXMonthlyReport.Post;

    cdsIDXMonthlyReport.ApplyUpdates(-1);
  end
  else
    cdsIDXMonthlyReport.Cancel;
end;

procedure TfrmIDXTransactionReport.edMonthPropertiesChange(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmIDXTransactionReport.edYearPropertiesChange(Sender: TObject);
begin
  inherited;
  Reload;
end;

procedure TfrmIDXTransactionReport.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
  iDate, iMonth, iYear: Word;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  DecodeDate(dtSystem, iYear, iMonth, iDate);

  edYear.EditValue  := iYear;
  edMonth.EditValue := iMonth;

  Reload;
end;

procedure TfrmIDXTransactionReport.Reload;
var
  sPeriod: string;
begin
  sPeriod := IntToStr(edYear.EditValue)+FormatFloat('00', edMonth.EditValue);

  cdsIDXMonthlyReport.Close;
  cdsIDXMonthlyReport.Params[0].AsString := sPeriod;
  cdsIDXMonthlyReport.Open;
end;

end.
