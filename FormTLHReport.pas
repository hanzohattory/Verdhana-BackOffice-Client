unit FormTLHReport;

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
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmLTHReport = class(TfrmBrowseData)
    qryLTHReport: TNClientDataset;
    qryLTHReportTmp: TNClientDataset;
    qryLTHReportREMARK: TStringField;
    qryLTHReportTmpDESC: TStringField;
    qryLTHReportTmpBUY: TFloatField;
    qryLTHReportTmpSELL: TFloatField;
    qryLTHReportTmpTOTAL: TFloatField;
    gvwMasterDESC: TcxGridDBBandedColumn;
    gvwMasterBUY: TcxGridDBBandedColumn;
    gvwMasterSELL: TcxGridDBBandedColumn;
    gvwMasterTOTAL: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLTHReport: TfrmLTHReport;

implementation

{$R *.dfm}

uses DataGlobal;

end.
