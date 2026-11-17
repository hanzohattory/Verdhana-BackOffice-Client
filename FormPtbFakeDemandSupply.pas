unit FormPtbFakeDemandSupply;

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
  dxPScxExtEditorProducers, Datasnap.DBClient, NClientDataset, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCalendar,
  cxBarEditItem, cxImageComboBox;

type
  TfrmPtbFakeDemand = class(TfrmBrowseData)
    cdsBrowseMaster: TNClientDataset;
    cdsBrowseMasterrowNo: TIntegerField;
    cdsBrowseMasteraccID: TLargeintField;
    cdsBrowseMasteraccNo: TStringField;
    cdsBrowseMasteraccName: TStringField;
    cdsBrowseMasterstockCode: TStringField;
    cdsBrowseMasterorderDate: TDateField;
    cdsBrowseMasterorderTime: TDateTimeField;
    cdsBrowseMasterbaseRelID: TStringField;
    cdsBrowseMasterrelID: TStringField;
    cdsBrowseMasterbs: TStringField;
    cdsBrowseMasteroQty: TIntegerField;
    cdsBrowseMasteroPrice: TFloatField;
    cdsBrowseMasteroStatus: TStringField;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    gvwMasterrowNo: TcxGridDBBandedColumn;
    gvwMasteraccID: TcxGridDBBandedColumn;
    gvwMasteraccNo: TcxGridDBBandedColumn;
    gvwMasteraccName: TcxGridDBBandedColumn;
    gvwMasterstockCode: TcxGridDBBandedColumn;
    gvwMasterorderDate: TcxGridDBBandedColumn;
    gvwMasterorderTime: TcxGridDBBandedColumn;
    gvwMasterbaseRelID: TcxGridDBBandedColumn;
    gvwMasterrelID: TcxGridDBBandedColumn;
    gvwMasterbs: TcxGridDBBandedColumn;
    gvwMasteroQty: TcxGridDBBandedColumn;
    gvwMasteroPrice: TcxGridDBBandedColumn;
    gvwMasteroStatus: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPtbFakeDemand: TfrmPtbFakeDemand;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmPtbFakeDemand.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := dtStart.EditValue;
  ReportContainer.Params[1].AsDate := dtEnd.EditValue;

  inherited;
end;

procedure TfrmPtbFakeDemand.actRefreshExecute(Sender: TObject);
begin
//  inherited;

  cdsBrowseMaster.Close;
  cdsBrowseMaster.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsBrowseMaster.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsBrowseMaster.Open;
end;

procedure TfrmPtbFakeDemand.FormCreate(Sender: TObject);
var
  dtSystem : TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;
end;

procedure TfrmPtbFakeDemand.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[gvwMasteroStatus.Index] = 'C') or
    (AViewInfo.GridRecord.Values[gvwMasteroStatus.Index] = 'M') or
    (AViewInfo.GridRecord.Values[gvwMasteroStatus.Index] = 'CM')
  then
  begin
    ACanvas.Font.Color := clBlue;
    aCanvas.Font.Style := [TFontStyle.fsItalic];
  end;
end;

end.
