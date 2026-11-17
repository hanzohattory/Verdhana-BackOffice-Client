unit FormReportSources;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmReportSources = class(TfrmBrowseData)
    cdsReportSource: TNClientDataset;
    cdsReportSourceRPTTYPE: TStringField;
    cdsReportSourceSRCCATEGORY: TStringField;
    cdsReportSourceSRCITEM: TStringField;
    cdsReportSourceSRCKEY: TStringField;
    cdsReportSourceSRCVAL: TStringField;
    cdsReportSourceSRCVAL_UPLD: TStringField;
    cdsReportSourceMODDA: TDateTimeField;
    cdsReportSourceMODUI: TStringField;
    gvwMasterRPTTYPE: TcxGridDBBandedColumn;
    gvwMasterSRCCATEGORY: TcxGridDBBandedColumn;
    gvwMasterSRCITEM: TcxGridDBBandedColumn;
    gvwMasterSRCKEY: TcxGridDBBandedColumn;
    gvwMasterSRCVAL: TcxGridDBBandedColumn;
    gvwMasterSRCVAL_UPLD: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSources: TfrmReportSources;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportSources.FormCreate(Sender: TObject);
begin
  inherited;
  cdsReportSource.Close;
  cdsReportSource.Open;
end;

Initialization
  RegisterClass(TfrmReportSources);

end.
