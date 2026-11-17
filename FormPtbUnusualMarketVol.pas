unit FormPtbUnusualMarketVol;

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
  TfrmPtbUnusualMarketVol = class(TfrmBrowseData)
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    cdsBrowseMaster: TNClientDataset;
    cdsBrowseMasterrowNo: TIntegerField;
    cdsBrowseMasterorderDate: TDateField;
    cdsBrowseMasteraccID: TLargeintField;
    cdsBrowseMasteraccNo: TStringField;
    cdsBrowseMasteraccName: TStringField;
    cdsBrowseMastervolBuyTrans: TLargeintField;
    cdsBrowseMastervalBuyTrans: TFloatField;
    cdsBrowseMasterfreqBuyTrans: TIntegerField;
    cdsBrowseMastervolSellTrans: TLargeintField;
    cdsBrowseMastervalSellTrans: TFloatField;
    cdsBrowseMasterfreqSellTrans: TIntegerField;
    gvwMasterrowNo: TcxGridDBBandedColumn;
    gvwMasterorderDate: TcxGridDBBandedColumn;
    gvwMasteraccID: TcxGridDBBandedColumn;
    gvwMasteraccNo: TcxGridDBBandedColumn;
    gvwMasteraccName: TcxGridDBBandedColumn;
    gvwMastervolBuyTrans: TcxGridDBBandedColumn;
    gvwMastervalBuyTrans: TcxGridDBBandedColumn;
    gvwMasterfreqBuyTrans: TcxGridDBBandedColumn;
    gvwMastervolSellTrans: TcxGridDBBandedColumn;
    gvwMastervalSellTrans: TcxGridDBBandedColumn;
    gvwMasterfreqSellTrans: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure gvwMastervolBuyTransCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwMastervolSellTransCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
    fTranVol: Integer;
  public
    { Public declarations }
  end;

var
  frmPtbUnusualMarketVol: TfrmPtbUnusualMarketVol;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmPtbUnusualMarketVol.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  ReportContainer.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);

  inherited;
end;

procedure TfrmPtbUnusualMarketVol.actRefreshExecute(Sender: TObject);
begin
  cdsBrowseMaster.close;
  cdsBrowseMaster.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsBrowseMaster.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsBrowseMaster.Open;

  inherited;
end;

procedure TfrmPtbUnusualMarketVol.FormCreate(Sender: TObject);
var
  dtSystem : TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;

  fTranVol := dmGlobal.RemoteServer.GetGlobalParamInteger('316');
end;

procedure TfrmPtbUnusualMarketVol.gvwMastervolBuyTransCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwMastervolBuyTrans.Index] >= fTranVol then
    ACanvas.Font.Color := clRed;
end;

procedure TfrmPtbUnusualMarketVol.gvwMastervolSellTransCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwMastervolSellTrans.Index] >= fTranVol then
    ACanvas.Font.Color := clRed;
end;

end.
