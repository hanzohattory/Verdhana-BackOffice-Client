unit FormReportExceptionalList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxDateRanges, dxScrollbarAnnotations,
  System.Actions, System.ImageList;

type
  TfrmReportExceptionalList = class(TfrmBrowseData)
    cdsExceptionalReport: TNClientDataset;
    cdsExceptionalReportAccName: TStringField;
    cdsExceptionalReportRATIO_MRGCALL: TFloatField;
    cdsExceptionalReportCurrentMOF: TFloatField;
    cdsExceptionalReportCREDIT_LIMIT: TFloatField;
    cdsExceptionalReportAvailable: TFloatField;
    cdsExceptionalReportTOTALLOAN: TFloatField;
    cdsExceptionalReportTOTALSHAREPORTO: TFloatField;
    gvwMasterAccName: TcxGridDBBandedColumn;
    gvwMasterRATIO_MRGCALL: TcxGridDBBandedColumn;
    gvwMasterCurrentMOF: TcxGridDBBandedColumn;
    gvwMasterCREDIT_LIMIT: TcxGridDBBandedColumn;
    gvwMasterAvailable: TcxGridDBBandedColumn;
    gvwMasterTOTALLOAN: TcxGridDBBandedColumn;
    gvwMasterTOTALSHAREPORTO: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportExceptionalList: TfrmReportExceptionalList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportExceptionalList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsExceptionalReport.Close;
  cdsExceptionalReport.Open;
end;

end.
