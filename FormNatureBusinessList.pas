unit FormNatureBusinessList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset;

type
  TfrmNatureBusinessLine = class(TfrmBrowseData)
    cdsNatBusiness: TNClientDataset;
    cdsNatBusinessNAT_ID: TLargeintField;
    cdsNatBusinessNAT_CODE: TStringField;
    cdsNatBusinessNAT_NAME: TStringField;
    cdsNatBusinessNAT_RISK: TStringField;
    cdsNatBusinessMODDA: TDateTimeField;
    cdsNatBusinessMODUI: TStringField;
    cdsNatBusinessAPPDA: TDateTimeField;
    cdsNatBusinessAPPUI: TStringField;
    cdsNatBusinessUNDER4Y: TIntegerField;
    cdsNatBusinessUNDER4YDA: TDateTimeField;
    cdsNatBusinessNOTES4Y: TStringField;
    cdsNatBusinessISDEL: TIntegerField;
    cdsNatBusinessID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNatureBusinessLine: TfrmNatureBusinessLine;

implementation

{$R *.dfm}

uses DataGlobal;

end.
