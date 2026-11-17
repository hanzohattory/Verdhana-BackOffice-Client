unit FormCPCenterList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportRPC, NReportClient;

type
  TfrmCPCenterList = class(TfrmBrowseData)
    cdsCPCenterList: TNClientDataset;
    cdsCPCenterListCPID: TLargeintField;
    cdsCPCenterListCPCODE: TStringField;
    cdsCPCenterListCPDESC: TStringField;
    cdsCPCenterListMODDA: TDateTimeField;
    cdsCPCenterListMODUI: TStringField;
    cdsCPCenterListAPPDA: TDateTimeField;
    cdsCPCenterListAPPUI: TStringField;
    cdsCPCenterListUNDER4Y: TIntegerField;
    cdsCPCenterListUNDER4YDA: TDateTimeField;
    cdsCPCenterListNOTES4Y: TStringField;
    cdsCPCenterListISDEL: TIntegerField;
    cdsCPCenterListID: TLargeintField;
    gvwMasterCPID: TcxGridDBBandedColumn;
    gvwMasterCPCODE: TcxGridDBBandedColumn;
    gvwMasterCPDESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCPCenterList: TfrmCPCenterList;

implementation

{$R *.dfm}

uses DataGlobal, FormCPCenter;

procedure TfrmCPCenterList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCPCenter;
end;

procedure TfrmCPCenterList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCPCenterListCPID;

  cdsCPCenterList.Close;
  cdsCPCenterList.Open;
end;

Initialization
  RegisterClass(TfrmCPCenterList);


end.
