unit FormPtbMarkingTheClose;

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
  TfrmPtbMarkingTheClose = class(TfrmBrowseData)
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    cdsBrowseMaster: TNClientDataset;
    cdsBrowseMasterorderDate: TDateField;
    cdsBrowseMasterorderTime: TDateTimeField;
    cdsBrowseMasteridxOrderID: TStringField;
    cdsBrowseMasterrelID: TStringField;
    cdsBrowseMasteridxTradeID: TStringField;
    cdsBrowseMastermatchTime: TDateTimeField;
    cdsBrowseMasteraccID: TIntegerField;
    cdsBrowseMasteraccNo: TStringField;
    cdsBrowseMasteraccName: TStringField;
    cdsBrowseMastersidNo: TStringField;
    cdsBrowseMasterstockCode: TStringField;
    cdsBrowseMasterboardCode: TStringField;
    cdsBrowseMasterbs: TStringField;
    cdsBrowseMasteroQty: TIntegerField;
    cdsBrowseMasteroPrice: TFloatField;
    cdsBrowseMastermQty: TIntegerField;
    cdsBrowseMastermPrice: TFloatField;
    cdsBrowseMastercpBrokerCode: TStringField;
    gvwMasterorderDate: TcxGridDBBandedColumn;
    gvwMasterorderTime: TcxGridDBBandedColumn;
    gvwMasteridxOrderID: TcxGridDBBandedColumn;
    gvwMasterrelID: TcxGridDBBandedColumn;
    gvwMasteridxTradeID: TcxGridDBBandedColumn;
    gvwMastermatchTime: TcxGridDBBandedColumn;
    gvwMasteraccID: TcxGridDBBandedColumn;
    gvwMasteraccNo: TcxGridDBBandedColumn;
    gvwMasteraccName: TcxGridDBBandedColumn;
    gvwMastersidNo: TcxGridDBBandedColumn;
    gvwMasterstockCode: TcxGridDBBandedColumn;
    gvwMasterboardCode: TcxGridDBBandedColumn;
    gvwMasterbs: TcxGridDBBandedColumn;
    gvwMasteroQty: TcxGridDBBandedColumn;
    gvwMasteroPrice: TcxGridDBBandedColumn;
    gvwMastermQty: TcxGridDBBandedColumn;
    gvwMastermPrice: TcxGridDBBandedColumn;
    gvwMastercpBrokerCode: TcxGridDBBandedColumn;
    cdsBrowseMastervalue: TFloatField;
    gvwMastervalue: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsBrowseMasterCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPtbMarkingTheClose: TfrmPtbMarkingTheClose;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmPtbMarkingTheClose.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  ReportContainer.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);

  inherited;
end;

procedure TfrmPtbMarkingTheClose.actRefreshExecute(Sender: TObject);
begin
  cdsBrowseMaster.close;
  cdsBrowseMaster.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsBrowseMaster.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsBrowseMaster.Open;

  inherited;
end;

procedure TfrmPtbMarkingTheClose.cdsBrowseMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
//  cdsBrowseMastervalue.AsFloat := cdsBrowseMasteroQty.AsInteger * cdsBrowseMasteroPrice.AsFloat;
end;

procedure TfrmPtbMarkingTheClose.FormCreate(Sender: TObject);
var
  dtSystem : TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;
end;

end.
