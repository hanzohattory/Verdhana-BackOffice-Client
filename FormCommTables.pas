unit FormCommTables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormMDBrowse, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NDatasetContainer, cxClasses,
  cxPropertiesStore, dxPSCore, dxPScxCommon, Vcl.Menus, Vcl.ImgList, dxBar,
  NDatasetAction, Vcl.ActnList, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, MemDS, VirtualTable, NVirtualTable;

type
  TfrmCommTables = class(TfrmMDBrowse)
    cdsBrowseMasterCOMM_TABLE_CODE: TStringField;
    cdsBrowseMasterMARKETID: TStringField;
    cdsBrowseMasterDESCRIPTION: TStringField;
    cdsBrowseMasterMODDA: TDateTimeField;
    cdsBrowseMasterMODUI: TStringField;
    cdsBrowseMasterAPPDA: TDateTimeField;
    cdsBrowseMasterAPPUI: TStringField;
    cdsBrowseMasterISDEL: TIntegerField;
    cdsBrowseMasterID: TLargeintField;
    gvwMasterCOMM_TABLE_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETID: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    cdsCommTableH: TNClientDataset;
    cdsCommTableHCOMM_TABLE_CODE: TStringField;
    cdsCommTableHMARKETID: TStringField;
    cdsCommTableHDESCRIPTION: TStringField;
    cdsCommTableHMODDA: TDateTimeField;
    cdsCommTableHMODUI: TStringField;
    cdsCommTableHAPPDA: TDateTimeField;
    cdsCommTableHAPPUI: TStringField;
    cdsCommTableHISDEL: TIntegerField;
    cdsCommTableHID: TLargeintField;
    cdsCommTableHqryCommTableD: TDataSetField;
    cdsCommTableD: TNClientDataset;
    cdsCommTableDCOMM_TABLE_CODE: TStringField;
    cdsCommTableDSEQNO: TIntegerField;
    cdsCommTableDSTART_VALUE: TFloatField;
    cdsCommTableDEND_VALUE: TFloatField;
    cdsCommTableDCOMM_RATE: TFloatField;
    cdsCommTableDNET_RATE: TFloatField;
    cdsCommTableDMODDA: TDateTimeField;
    cdsCommTableDMODUI: TStringField;
    cdsCommTableDAPPDA: TDateTimeField;
    cdsCommTableDAPPUI: TStringField;
    cdsCommTableDISDEL: TIntegerField;
    cdsCommTableDID: TLargeintField;
    cdsCommTableHEdit: TNClientDataset;
    cdsCommTableDEdit: TNClientDataset;
    cdsCommTableHEditCOMM_TABLE_CODE: TStringField;
    cdsCommTableHEditMARKETID: TStringField;
    cdsCommTableHEditDESCRIPTION: TStringField;
    cdsCommTableHEditMODDA: TDateTimeField;
    cdsCommTableHEditMODUI: TStringField;
    cdsCommTableHEditAPPDA: TDateTimeField;
    cdsCommTableHEditAPPUI: TStringField;
    cdsCommTableHEditISDEL: TIntegerField;
    cdsCommTableHEditID: TLargeintField;
    cdsCommTableDEditCOMM_TABLE_CODE: TStringField;
    cdsCommTableDEditSEQNO: TIntegerField;
    cdsCommTableDEditSTART_VALUE: TFloatField;
    cdsCommTableDEditEND_VALUE: TFloatField;
    cdsCommTableDEditCOMM_RATE: TFloatField;
    cdsCommTableDEditNET_RATE: TFloatField;
    cdsCommTableDEditMODDA: TDateTimeField;
    cdsCommTableDEditMODUI: TStringField;
    cdsCommTableDEditAPPDA: TDateTimeField;
    cdsCommTableDEditAPPUI: TStringField;
    cdsCommTableDEditISDEL: TIntegerField;
    cdsCommTableDEditID: TLargeintField;
    vtCommTableH: TVirtualTable;
    vtCommTableHCOMM_TABLE_CODE: TStringField;
    vtCommTableHMARKETID: TStringField;
    vtCommTableHDESCRIPTION: TStringField;
    vtCommTableHMODDA: TDateTimeField;
    vtCommTableHMODUI: TStringField;
    vtCommTableHAPPDA: TDateTimeField;
    vtCommTableHAPPUI: TStringField;
    vtCommTableHISDEL: TIntegerField;
    vtCommTableHID: TLargeintField;
    vtCommTableD: TVirtualTable;
    vtCommTableDCOMM_TABLE_CODE: TStringField;
    vtCommTableDSEQNO: TIntegerField;
    vtCommTableDSTART_VALUE: TFloatField;
    vtCommTableDEND_VALUE: TFloatField;
    vtCommTableDCOMM_RATE: TFloatField;
    vtCommTableDNET_RATE: TFloatField;
    vtCommTableDMODDA: TDateTimeField;
    vtCommTableDMODUI: TStringField;
    vtCommTableDAPPDA: TDateTimeField;
    vtCommTableDAPPUI: TStringField;
    vtCommTableDISDEL: TIntegerField;
    vtCommTableDID: TLargeintField;
    dsCommTableH: TDataSource;
    NvtCommTableH: TNVirtualTable;
    NdsCommTableH: TDataSource;
    NvtCommTableD: TNVirtualTable;
    procedure FormCreate(Sender: TObject);
    procedure MasterDetailContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsCommTableDEditBeforePost(DataSet: TDataSet);
    procedure MasterDetailContainerAfterCreateEditorForm(AForm: TForm);
    procedure vtCommTableDBeforePost(DataSet: TDataSet);
    procedure vtCommTableDBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCommTables: TfrmCommTables;

implementation

{$R *.dfm}

uses DataGlobal, FormCommTable;

procedure TfrmCommTables.cdsCommTableDEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsCommTableDEditCOMM_TABLE_CODE.AsString := cdsCommTableHEditCOMM_TABLE_CODE.AsString;
end;

procedure TfrmCommTables.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBrowseMaster.Close;
  cdsBrowseMaster.Open;

  if MasterDetailContainer.Control4Eyes then
  begin
    cdsBrowseApproval.Close;
    cdsBrowseApproval.Open;
  end;
end;

procedure TfrmCommTables.MasterDetailContainerAfterCreateEditorForm(
  AForm: TForm);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuMarket.Close;
    cdsLuMarket.Open;
  end;
end;

procedure TfrmCommTables.MasterDetailContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCommTable;
end;

procedure TfrmCommTables.vtCommTableDBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if vtCommTableH.State in [dsInsert, dsEdit] then vtCommTableH.Post;
end;

procedure TfrmCommTables.vtCommTableDBeforePost(DataSet: TDataSet);
begin
  inherited;
  vtCommTableDSEQNO.AsInteger := Random(1000000);
end;

Initialization
  RegisterClass(TfrmCommTables);

end.
