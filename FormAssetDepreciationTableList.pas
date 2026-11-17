unit FormAssetDepreciationTableList;

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
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient;

type
  TfrmAssetDepreciationTableList = class(TfrmBrowseData)
    cdsAssetDeprecTableList: TNClientDataset;
    cdsAssetDeprecTableListASSET_DEPRECIATION_TABLE_ID: TIntegerField;
    cdsAssetDeprecTableListASSET_DEPRECIATION_TABLE_DESC: TStringField;
    cdsAssetDeprecTableListECONOMIC_LIFE: TIntegerField;
    cdsAssetDeprecTableListIS_RECALC_ONJANUARY: TStringField;
    cdsAssetDeprecTableListIS_BASEDON_BOOKVALUE: TStringField;
    cdsAssetDeprecTableListIS_WRITEOFF_ENDVALUE: TStringField;
    cdsAssetDeprecTableListMODDA: TDateTimeField;
    cdsAssetDeprecTableListMODUI: TStringField;
    cdsAssetDeprecTableListAPPDA: TDateTimeField;
    cdsAssetDeprecTableListAPPUI: TStringField;
    cdsAssetDeprecTableListUNDER4Y: TIntegerField;
    cdsAssetDeprecTableListUNDER4YDA: TDateTimeField;
    cdsAssetDeprecTableListNOTES4Y: TStringField;
    cdsAssetDeprecTableListISDEL: TIntegerField;
    cdsAssetDeprecTableListID: TLargeintField;
    gvwMasterASSET_DEPRECIATION_TABLE_DESC: TcxGridDBBandedColumn;
    gvwMasterECONOMIC_LIFE: TcxGridDBBandedColumn;
    gvwMasterIS_RECALC_ONJANUARY: TcxGridDBBandedColumn;
    gvwMasterIS_BASEDON_BOOKVALUE: TcxGridDBBandedColumn;
    gvwMasterIS_WRITEOFF_ENDVALUE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAssetDepreciationTableList: TfrmAssetDepreciationTableList;

implementation

{$R *.dfm}

uses DataGlobal, FormAssetDepreciationTable;

procedure TfrmAssetDepreciationTableList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAssetDepreciationTable;
end;

procedure TfrmAssetDepreciationTableList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsAssetDeprecTableListASSET_DEPRECIATION_TABLE_ID;

  cdsAssetDeprecTableList.Close;
  cdsAssetDeprecTableList.Open;
end;

Initialization
  RegisterClass(TfrmAssetDepreciationTableList);

end.
