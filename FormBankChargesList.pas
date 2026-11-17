unit FormBankChargesList;

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
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmBankChargesList = class(TfrmBrowseData)
    cdsBankChargesList: TNClientDataset;
    cdsBankChargesListBNCODE: TStringField;
    cdsBankChargesListBNCHGTYPE: TStringField;
    cdsBankChargesListCCYCODE: TStringField;
    cdsBankChargesListCHARGE_AMT: TFloatField;
    cdsBankChargesListCHARGE_MINTRANS: TFloatField;
    cdsBankChargesListCHARGE_MAXTRANS: TFloatField;
    cdsBankChargesListFTSERVICE: TStringField;
    cdsBankChargesListTRANSFER_MODE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankChargesList: TfrmBankChargesList;

implementation

{$R *.dfm}

uses DataGlobal;

end.
