unit FormBrokers;

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
  cxGridCustomView, cxGrid, NReportRPC, NReportClient;

type
  TfrmBrokers = class(TfrmBrowseData)
    cdsBrokerList: TNClientDataset;
    cdsBrokerListBROKERCODE: TStringField;
    cdsBrokerListBROKERNAME: TStringField;
    cdsBrokerListINTERFEE: TFloatField;
    cdsBrokerListMODDA: TDateTimeField;
    cdsBrokerListMODUI: TStringField;
    cdsBrokerListAPPDA: TDateTimeField;
    cdsBrokerListAPPUI: TStringField;
    cdsBrokerListISDEL: TIntegerField;
    cdsBrokerListID: TLargeintField;
    cdsBroker: TNClientDataset;
    cdsBrokerBROKERCODE: TStringField;
    cdsBrokerBROKERNAME: TStringField;
    cdsBrokerINTERFEE: TFloatField;
    cdsBrokerMODDA: TDateTimeField;
    cdsBrokerMODUI: TStringField;
    cdsBrokerAPPDA: TDateTimeField;
    cdsBrokerAPPUI: TStringField;
    cdsBrokerISDEL: TIntegerField;
    cdsBrokerID: TLargeintField;
    gvwMasterBROKERCODE: TcxGridDBBandedColumn;
    gvwMasterBROKERNAME: TcxGridDBBandedColumn;
    gvwMasterINTERFEE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBrokers: TfrmBrokers;

implementation

{$R *.dfm}

uses DataGlobal, FormBroker;

procedure TfrmBrokers.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBroker;
end;

procedure TfrmBrokers.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBrokerList.Close;
  cdsBrokerList.Open;
end;

Initialization
  RegisterClass(TfrmBrokers);

end.
