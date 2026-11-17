unit FormProductTypeList;

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
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient;

type
  TfrmProductTypeList = class(TfrmBrowseData)
    cdsProductTypeList: TNClientDataset;
    cdsProductType: TNClientDataset;
    cdsProductTypeListPRDTYPE: TStringField;
    cdsProductTypeListPRDTYPEDESC: TStringField;
    cdsProductTypeListMODDA: TDateTimeField;
    cdsProductTypeListMODUI: TStringField;
    cdsProductTypeListAPPDA: TDateTimeField;
    cdsProductTypeListAPPUI: TStringField;
    cdsProductTypeListUNDER4Y: TIntegerField;
    cdsProductTypeListUNDER4YDA: TDateTimeField;
    cdsProductTypeListNOTES4Y: TStringField;
    cdsProductTypeListISDEL: TIntegerField;
    cdsProductTypeListID: TLargeintField;
    gvwMasterPRDTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    cdsProductTypePRDTYPE: TStringField;
    cdsProductTypePRDTYPEDESC: TStringField;
    cdsProductTypeMODDA: TDateTimeField;
    cdsProductTypeMODUI: TStringField;
    cdsProductTypeAPPDA: TDateTimeField;
    cdsProductTypeAPPUI: TStringField;
    cdsProductTypeUNDER4Y: TIntegerField;
    cdsProductTypeUNDER4YDA: TDateTimeField;
    cdsProductTypeNOTES4Y: TStringField;
    cdsProductTypeISDEL: TIntegerField;
    cdsProductTypeID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductTypeList: TfrmProductTypeList;

implementation

{$R *.dfm}

uses DataGlobal, FormProductType;

procedure TfrmProductTypeList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmProductType;
end;

procedure TfrmProductTypeList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsProductTypeList.Close;
  cdsProductTypeList.Open;
end;

Initialization
  RegisterClass(TfrmProductTypeList);

end.
