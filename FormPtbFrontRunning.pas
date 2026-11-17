unit FormPtbFrontRunning;

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
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxBarEditItem, Datasnap.DBClient, NClientDataset;

type
  TfrmPtbFrontRunning = class(TfrmBrowseData)
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    cdsBrowseMaster: TNClientDataset;
    cdsBrowseMasterrowNo: TIntegerField;
    cdsBrowseMasterorderDate: TDateField;
    cdsBrowseMasterorderTime: TTimeField;
    cdsBrowseMasterrelID: TStringField;
    cdsBrowseMasteridxOrderID: TStringField;
    cdsBrowseMastersidNo: TStringField;
    cdsBrowseMasteraccID: TIntegerField;
    cdsBrowseMasteraccNo: TStringField;
    cdsBrowseMasteraccName: TStringField;
    cdsBrowseMasterstockCode: TStringField;
    cdsBrowseMasterbs: TStringField;
    cdsBrowseMasteroQty: TIntegerField;
    cdsBrowseMasteroPrice: TFloatField;
    cdsBrowseMasteroStatus: TStringField;
    cdsBrowseMasterlotSize: TIntegerField;
    cdsBrowseMasteraffil: TBooleanField;
    cdsBrowseMastersalesCode: TStringField;
    cdsBrowseMastersalesName: TStringField;
    cdsBrowseMasterseparator: TIntegerField;
    gvwMasterrowNo: TcxGridDBBandedColumn;
    gvwMasterorderDate: TcxGridDBBandedColumn;
    gvwMasterorderTime: TcxGridDBBandedColumn;
    gvwMasterrelID: TcxGridDBBandedColumn;
    gvwMasteridxOrderID: TcxGridDBBandedColumn;
    gvwMastersidNo: TcxGridDBBandedColumn;
    gvwMasteraccID: TcxGridDBBandedColumn;
    gvwMasteraccNo: TcxGridDBBandedColumn;
    gvwMasteraccName: TcxGridDBBandedColumn;
    gvwMasterstockCode: TcxGridDBBandedColumn;
    gvwMasterbs: TcxGridDBBandedColumn;
    gvwMasteroQty: TcxGridDBBandedColumn;
    gvwMasteroPrice: TcxGridDBBandedColumn;
    gvwMasteroStatus: TcxGridDBBandedColumn;
    gvwMasterlotSize: TcxGridDBBandedColumn;
    gvwMasteraffil: TcxGridDBBandedColumn;
    gvwMastersalesCode: TcxGridDBBandedColumn;
    gvwMastersalesName: TcxGridDBBandedColumn;
    gvwMasterseparator: TcxGridDBBandedColumn;
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPtbFrontRunning: TfrmPtbFrontRunning;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmPtbFrontRunning.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  ReportContainer.Params[1].AsDate := VarToDateTime(dtend.EditValue);

  inherited;
end;

procedure TfrmPtbFrontRunning.actRefreshExecute(Sender: TObject);
begin
  cdsBrowseMaster.Close;
  cdsbrowseMaster.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsBrowseMaster.Params[1].asDate := VarToDateTime(dtend.EditValue);
  cdsBrowseMaster.Open;

  inherited;
end;

procedure TfrmPtbFrontRunning.FormCreate(Sender: TObject);
var
  dtSystem : TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;
end;

procedure TfrmPtbFrontRunning.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwMasterseparator.Index] = 1 then
  begin
    ACanvas.Font.Color := clBlue;
    aCanvas.Font.Style := [TFontStyle.fsItalic];
  end;
end;

end.
