unit FormActLedgerTypeList;

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
  TfrmActLedgerTypeList = class(TfrmBrowseData)
    cdsActLedgerTypeList: TNClientDataset;
    cdsActLedgerTypeListALTYPE: TStringField;
    cdsActLedgerTypeListALDESCRIPTION: TStringField;
    cdsActLedgerTypeListALSYSTEM: TStringField;
    cdsActLedgerTypeListGL_SUBGL: TStringField;
    cdsActLedgerTypeListCASH_STOCK: TStringField;
    cdsActLedgerTypeListMODDA: TDateTimeField;
    cdsActLedgerTypeListMODUI: TStringField;
    cdsActLedgerTypeListAPPDA: TDateTimeField;
    cdsActLedgerTypeListAPPUI: TStringField;
    cdsActLedgerTypeListUNDER4Y: TIntegerField;
    cdsActLedgerTypeListUNDER4YDA: TDateTimeField;
    cdsActLedgerTypeListNOTES4Y: TStringField;
    cdsActLedgerTypeListISDEL: TIntegerField;
    cdsActLedgerTypeListID: TLargeintField;
    gvwMasterALTYPE: TcxGridDBBandedColumn;
    gvwMasterALDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterALSYSTEM: TcxGridDBBandedColumn;
    gvwMasterGL_SUBGL: TcxGridDBBandedColumn;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActLedgerTypeList: TfrmActLedgerTypeList;

implementation

{$R *.dfm}

uses DataGlobal, FormActLedgerType;

procedure TfrmActLedgerTypeList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmActLedgerType;
end;

procedure TfrmActLedgerTypeList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsActLedgerTypeListALTYPE;

  cdsActLedgerTypeList.Close;
  cdsActLedgerTypeList.Open;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuActLedgerType.Active then
      cdsLuActLedgerType.Open
    else
      cdsLuActLedgerType.Refresh;
  end;
end;

Initialization
  RegisterClass(TfrmActLedgerTypeList);

end.
