unit FormBanks;

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
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, NReportRPC,
  NReportClient, dxDateRanges, System.Actions, System.ImageList,
  dxScrollbarAnnotations;

type
  TfrmBanks = class(TfrmBrowseData)
    cdsBankList: TNClientDataset;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNNAME: TcxGridDBBandedColumn;
    gvwMasterBICODE: TcxGridDBBandedColumn;
    cdsBankListBNCODE: TStringField;
    cdsBankListBNNAME: TStringField;
    cdsBankListBICODE: TStringField;
    cdsBankListSWIFT_CODE: TStringField;
    cdsBankListISRDN: TStringField;
    cdsBankListMODDA: TDateTimeField;
    cdsBankListMODUI: TStringField;
    cdsBankListAPPDA: TDateTimeField;
    cdsBankListAPPUI: TStringField;
    cdsBankListISDEL: TIntegerField;
    cdsBankListID: TLargeintField;
    gvwMasterISRDN: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBanks: TfrmBanks;

implementation

{$R *.dfm}

uses DataGlobal, FormBank;

procedure TfrmBanks.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBank;
end;

procedure TfrmBanks.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBankListBNCODE;
  cdsBankList.Close;
  cdsBankList.Open;
end;

Initialization
  RegisterClass(TfrmBanks);

end.
