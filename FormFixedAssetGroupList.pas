unit FormFixedAssetGroupList;

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
  TfrmFixedAssetGroupList = class(TfrmBrowseData)
    cdsAssetGroupList: TNClientDataset;
    cdsAssetGroup: TNClientDataset;
    cdsAssetGroupListASSET_GROUP_ID: TIntegerField;
    cdsAssetGroupListASSET_GROUP_NAME: TStringField;
    cdsAssetGroupListASSET_GROUP_DESC: TStringField;
    cdsAssetGroupListDEPRECIATION_METHOD: TIntegerField;
    cdsAssetGroupListDEPRECIATION_TABLE: TIntegerField;
    cdsAssetGroupListECONOMIC_LIFE: TIntegerField;
    cdsAssetGroupListASSET_GLACC: TIntegerField;
    cdsAssetGroupListACCUM_DEPREC_GLACC: TIntegerField;
    cdsAssetGroupListDEPREC_GLACC: TIntegerField;
    cdsAssetGroupListMODDA: TDateTimeField;
    cdsAssetGroupListMODUI: TStringField;
    cdsAssetGroupListAPPDA: TDateTimeField;
    cdsAssetGroupListAPPUI: TStringField;
    cdsAssetGroupListUNDER4Y: TIntegerField;
    cdsAssetGroupListUNDER4YDA: TDateTimeField;
    cdsAssetGroupListNOTES4Y: TStringField;
    cdsAssetGroupListISDEL: TIntegerField;
    cdsAssetGroupListID: TLargeintField;
    cdsAssetGroupASSET_GROUP_ID: TIntegerField;
    cdsAssetGroupASSET_GROUP_NAME: TStringField;
    cdsAssetGroupASSET_GROUP_DESC: TStringField;
    cdsAssetGroupDEPRECIATION_METHOD: TIntegerField;
    cdsAssetGroupDEPRECIATION_TABLE: TIntegerField;
    cdsAssetGroupECONOMIC_LIFE: TIntegerField;
    cdsAssetGroupASSET_GLACC: TIntegerField;
    cdsAssetGroupACCUM_DEPREC_GLACC: TIntegerField;
    cdsAssetGroupDEPREC_GLACC: TIntegerField;
    cdsAssetGroupMODDA: TDateTimeField;
    cdsAssetGroupMODUI: TStringField;
    cdsAssetGroupAPPDA: TDateTimeField;
    cdsAssetGroupAPPUI: TStringField;
    cdsAssetGroupUNDER4Y: TIntegerField;
    cdsAssetGroupUNDER4YDA: TDateTimeField;
    cdsAssetGroupNOTES4Y: TStringField;
    cdsAssetGroupISDEL: TIntegerField;
    cdsAssetGroupID: TLargeintField;
    gvwMasterASSET_GROUP_NAME: TcxGridDBBandedColumn;
    gvwMasterASSET_GROUP_DESC: TcxGridDBBandedColumn;
    gvwMasterDEPRECIATION_METHOD: TcxGridDBBandedColumn;
    gvwMasterDEPRECIATION_TABLE: TcxGridDBBandedColumn;
    gvwMasterECONOMIC_LIFE: TcxGridDBBandedColumn;
    gvwMasterASSET_GLACC: TcxGridDBBandedColumn;
    gvwMasterACCUM_DEPREC_GLACC: TcxGridDBBandedColumn;
    gvwMasterDEPREC_GLACC: TcxGridDBBandedColumn;
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
  frmFixedAssetGroupList: TfrmFixedAssetGroupList;

implementation

{$R *.dfm}

uses DataGlobal, FormFixedAssetGroup;

procedure TfrmFixedAssetGroupList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmFixedAssetGroup;
end;

procedure TfrmFixedAssetGroupList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAssetDeprecTable.Close;
    cdsLuAssetDeprecTable.Open;

    cdsLuGLAccount.Close;
    cdsLuGLAccount.Open;
  end;

  cdsAssetGroupList.Close;
  cdsAssetGroupList.Open;
end;

Initialization
  RegisterClass(TfrmFixedAssetGroupList);

end.
