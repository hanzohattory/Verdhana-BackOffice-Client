unit FormDepositoBankList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset;

type
  TfrmDepositoBankList = class(TfrmBrowseData)
    cdsDepositoBank: TNClientDataset;
    cdsDepositoBankBNCODE: TStringField;
    cdsDepositoBankBNNAME: TStringField;
    cdsDepositoBankDESCRIPTION: TStringField;
    cdsDepositoBankCOACODE: TStringField;
    cdsDepositoBankMAX_LPS: TFloatField;
    cdsDepositoBankMODDA: TDateTimeField;
    cdsDepositoBankMODUI: TStringField;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNNAME: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterCOACODE: TcxGridDBBandedColumn;
    gvwMasterMAX_LPS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepositoBankList: TfrmDepositoBankList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormDepositoBank;

procedure TfrmDepositoBankList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmDepositoBank;
end;

procedure TfrmDepositoBankList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsDepositoBankBNCODE;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBank.Active then
      cdsLuBank.Open;
  end;
end;

procedure TfrmDepositoBankList.FormShow(Sender: TObject);
begin
  inherited;
  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmDepositoBankList);

end.
