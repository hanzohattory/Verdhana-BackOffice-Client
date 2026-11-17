unit FormTodoList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Datasnap.DBClient,
  NClientDataset, cxPropertiesStore, dxBar, cxClasses, dxPSCore, dxPScxCommon,
  NDatasetContainer, NDatasetAction, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, NActionPermission, Vcl.Menus, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmTodoList = class(TfrmBrowseSingle)
    cdsTodoList: TNClientDataset;
    cdsTodoListTransactionTypeCode: TStringField;
    cdsTodoListTransactionTypeName: TStringField;
    cdsTodoListOpenStatus: TIntegerField;
    cdsTodoListClosedStatus: TIntegerField;
    cdsTodoListCanceledStatus: TIntegerField;
    cdsTodoListReversedStatus: TIntegerField;
    cdsTodoListActionForm: TStringField;
    gvwBrowseTransactionTypeCode: TcxGridDBBandedColumn;
    gvwBrowseTransactionTypeName: TcxGridDBBandedColumn;
    gvwBrowseOpenStatus: TcxGridDBBandedColumn;
    gvwBrowseClosedStatus: TcxGridDBBandedColumn;
    gvwBrowseCanceledStatus: TcxGridDBBandedColumn;
    gvwBrowseReversedStatus: TcxGridDBBandedColumn;
    gvwBrowseActionForm: TcxGridDBBandedColumn;
    actRefrez: TNAction;
    dxBarButton1: TdxBarButton;
    BarMBrowseBar2: TdxBar;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gvwBrowseOpenStatusCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwBrowseClosedStatusCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gvwBrowseCanceledStatusCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gvwBrowseReversedStatusCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTodoList: TfrmTodoList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmTodoList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsTodoList.Close;
  cdsTodoList.Open;

end;

procedure TfrmTodoList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  cdsTodoList.Close;
  cdsTodoList.Open;
end;

procedure TfrmTodoList.FormCreate(Sender: TObject);
begin
//  inherited;
  cdsTodoList.Close;
  cdsTodoList.Open;

  actRefresh.Enabled := True;
end;

procedure TfrmTodoList.gvwBrowseCanceledStatusCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwBrowseCanceledStatus.Index] > 0 then
    ACanvas.Font.Color := clRed;
end;

procedure TfrmTodoList.gvwBrowseClosedStatusCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwBrowseClosedStatus.Index] > 0 then
    ACanvas.Font.Color := clRed;
end;

procedure TfrmTodoList.gvwBrowseOpenStatusCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwBrowseOpenStatus.Index] > 0 then
    ACanvas.Font.Color := clRed;
end;

procedure TfrmTodoList.gvwBrowseReversedStatusCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwBrowseReversedStatus.Index] > 0 then
    ACanvas.Font.Color := clRed;
end;

end.
