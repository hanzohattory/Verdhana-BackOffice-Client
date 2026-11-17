unit FormContactUsageList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportRPC, NReportClient;

type
  TfrmContactUsageList = class(TfrmBrowseData)
    cdsContactUsage: TNClientDataset;
    cdsContactUsageCUSGID: TIntegerField;
    cdsContactUsageCUSDESC: TStringField;
    cdsContactUsageMODDA: TDateTimeField;
    cdsContactUsageMODUI: TStringField;
    cdsContactUsageAPPDA: TDateTimeField;
    cdsContactUsageAPPUI: TStringField;
    cdsContactUsageUNDER4Y: TIntegerField;
    cdsContactUsageUNDER4YDA: TDateTimeField;
    cdsContactUsageNOTES4Y: TStringField;
    cdsContactUsageISDEL: TIntegerField;
    cdsContactUsageID: TLargeintField;
    gvwMasterCUSDESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    cdsContactUsageList: TNClientDataset;
    cdsContactUsageListCUSGID: TIntegerField;
    cdsContactUsageListCUSDESC: TStringField;
    cdsContactUsageListMODDA: TDateTimeField;
    cdsContactUsageListMODUI: TStringField;
    cdsContactUsageListAPPDA: TDateTimeField;
    cdsContactUsageListAPPUI: TStringField;
    cdsContactUsageListUNDER4Y: TIntegerField;
    cdsContactUsageListUNDER4YDA: TDateTimeField;
    cdsContactUsageListNOTES4Y: TStringField;
    cdsContactUsageListISDEL: TIntegerField;
    cdsContactUsageListID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContactUsageList: TfrmContactUsageList;

implementation

{$R *.dfm}

uses DataGlobal, FormContactUsage;

procedure TfrmContactUsageList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmContactUsage;
end;

procedure TfrmContactUsageList.FormShow(Sender: TObject);
begin
  inherited;
  cdsContactUsageList.Close;
  cdsContactUsageList.Open;
end;

initialization
RegisterClass(TfrmContactUsageList);

end.
