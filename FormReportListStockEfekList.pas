unit FormReportListStockEfekList;

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
  NClientDataset, cxContainer, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl;

type
  TfrmReportListStockEfekList = class(TfrmBrowseData)
    cdsListStockEfek: TNClientDataset;
    cdsListStockEfektypename: TStringField;
    cdsListStockEfekLOCALCODE: TStringField;
    cdsListStockEfekSHORTNAME: TStringField;
    cdsListStockEfekLASTCLSPRICE: TFloatField;
    cdsListStockEfekDATE: TDateTimeField;
    gvwMastertypename: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterLASTCLSPRICE: TcxGridDBBandedColumn;
    gvwMasterDATE: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cmbInstrumentType: TcxImageComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportListStockEfekList: TfrmReportListStockEfekList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportListStockEfekList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsString := cmbInstrumentType.EditValue;
  inherited;
end;

procedure TfrmReportListStockEfekList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsListStockEfek.Close;
  cdsListStockEfek.Params[0].AsString := cmbInstrumentType.EditValue;
  cdsListStockEfek.Open;
end;

end.
