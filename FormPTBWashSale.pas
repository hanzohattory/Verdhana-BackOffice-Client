unit FormPTBWashSale;

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
  TfrmPtbWashSale = class(TfrmBrowseData)
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    cdsBrowseMaster: TNClientDataset;
    cdsBrowseMastertradeDate: TDateField;
    cdsBrowseMasteridxTradeID: TStringField;
    cdsBrowseMastermtime: TDateTimeField;
    cdsBrowseMasterstockCode: TStringField;
    cdsBrowseMastermQTy: TIntegerField;
    cdsBrowseMastermPrice: TFloatField;
    cdsBrowseMastermValue: TFloatField;
    cdsBrowseMasteridxOrderID_1: TStringField;
    cdsBrowseMasterAccNo_1: TStringField;
    cdsBrowseMasterAccName_1: TStringField;
    cdsBrowseMasteridxOrderID_2: TStringField;
    cdsBrowseMasterAccNo_2: TStringField;
    cdsBrowseMasterAccName_2: TStringField;
    cdsBrowseMasterindicateWashSale: TStringField;
    gvwMastertradeDate: TcxGridDBBandedColumn;
    gvwMasteridxTradeID: TcxGridDBBandedColumn;
    gvwMastermtime: TcxGridDBBandedColumn;
    gvwMasterstockCode: TcxGridDBBandedColumn;
    gvwMastermQTy: TcxGridDBBandedColumn;
    gvwMastermPrice: TcxGridDBBandedColumn;
    gvwMastermValue: TcxGridDBBandedColumn;
    gvwMasteridxOrderID_1: TcxGridDBBandedColumn;
    gvwMasterAccNo_1: TcxGridDBBandedColumn;
    gvwMasterAccName_1: TcxGridDBBandedColumn;
    gvwMasteridxOrderID_2: TcxGridDBBandedColumn;
    gvwMasterAccNo_2: TcxGridDBBandedColumn;
    gvwMasterAccName_2: TcxGridDBBandedColumn;
    gvwMasterindicateWashSale: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPtbWashSale: TfrmPtbWashSale;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmPtbWashSale.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  ReportContainer.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);

  inherited;
end;

procedure TfrmPtbWashSale.actRefreshExecute(Sender: TObject);
begin
  cdsBrowseMaster.Close;
  cdsBrowseMaster.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsBrowseMaster.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsBrowseMaster.Open;

  inherited;
end;

procedure TfrmPtbWashSale.FormCreate(Sender: TObject);
var
  dtSystem : TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;
end;

end.
