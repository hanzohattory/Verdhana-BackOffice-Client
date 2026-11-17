unit FormChannels;

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
  TfrmChannels = class(TfrmBrowseData)
    cdsChannelList: TNClientDataset;
    cdsChannel: TNClientDataset;
    gvwMasterCHANNELDESC: TcxGridDBBandedColumn;
    cdsChannelListCHANNELCODE: TStringField;
    cdsChannelListCHANNELDESC: TStringField;
    cdsChannelCHANNELCODE: TStringField;
    cdsChannelCHANNELDESC: TStringField;
    cdsChannelMODDA: TDateTimeField;
    cdsChannelMODUI: TStringField;
    cdsChannelAPPDA: TDateTimeField;
    cdsChannelAPPUI: TStringField;
    cdsChannelISDEL: TIntegerField;
    cdsChannelID: TLargeintField;
    gvwMasterCHANNELCODE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChannels: TfrmChannels;

implementation

{$R *.dfm}

uses DataGlobal, FormChannel;

procedure TfrmChannels.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmChannel;
end;

procedure TfrmChannels.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsChannelListCHANNELCODE;
  cdsChannelList.Close;
  cdsChannelList.Open;
end;

Initialization
  RegisterClass(TfrmChannels);

end.
