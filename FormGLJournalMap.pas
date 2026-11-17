unit FormGLJournalMap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmGLJournalMap = class(TfrmBrowseData)
    cdsGLJournalMapList: TNClientDataset;
    GLJournalMap_H: TNClientDataset;
    GLJournalMap_D: TNClientDataset;
    GLJournalMap_HJOUMAPID: TIntegerField;
    GLJournalMap_HJOUMAPCODE: TStringField;
    GLJournalMap_HCASH_STOCK: TStringField;
    GLJournalMap_HJOUMAPDESC: TStringField;
    GLJournalMap_HMODDA: TDateTimeField;
    GLJournalMap_HMODUI: TStringField;
    GLJournalMap_HAPPDA: TDateTimeField;
    GLJournalMap_HAPPUI: TStringField;
    GLJournalMap_HUNDER4Y: TIntegerField;
    GLJournalMap_HUNDER4YDA: TDateTimeField;
    GLJournalMap_HNOTES4Y: TStringField;
    GLJournalMap_HISDEL: TIntegerField;
    GLJournalMap_HID: TLargeintField;
    cdsGLJournalMapListJOUMAPID: TIntegerField;
    cdsGLJournalMapListJOUMAPCODE: TStringField;
    cdsGLJournalMapListCASH_STOCK: TStringField;
    cdsGLJournalMapListJOUMAPDESC: TStringField;
    cdsGLJournalMapListMODDA: TDateTimeField;
    cdsGLJournalMapListMODUI: TStringField;
    cdsGLJournalMapListAPPDA: TDateTimeField;
    cdsGLJournalMapListAPPUI: TStringField;
    cdsGLJournalMapListUNDER4Y: TIntegerField;
    cdsGLJournalMapListUNDER4YDA: TDateTimeField;
    cdsGLJournalMapListNOTES4Y: TStringField;
    cdsGLJournalMapListISDEL: TIntegerField;
    cdsGLJournalMapListID: TLargeintField;
    GLJournalMap_DJOUMAPID: TIntegerField;
    GLJournalMap_DJMSEQID: TIntegerField;
    GLJournalMap_DCCYCODE: TStringField;
    GLJournalMap_DGLACCOUNTID: TIntegerField;
    GLJournalMap_DMODDA: TDateTimeField;
    GLJournalMap_DMODUI: TStringField;
    GLJournalMap_DAPPDA: TDateTimeField;
    GLJournalMap_DAPPUI: TStringField;
    GLJournalMap_DUNDER4Y: TIntegerField;
    GLJournalMap_DUNDER4YDA: TDateTimeField;
    GLJournalMap_DNOTES4Y: TStringField;
    GLJournalMap_DISDEL: TIntegerField;
    GLJournalMap_DID: TLargeintField;
    gvwMasterJOUMAPID: TcxGridDBBandedColumn;
    gvwMasterJOUMAPCODE: TcxGridDBBandedColumn;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterJOUMAPDESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    GLJournalMap_HMARKETCODE: TStringField;
    GLJournalMap_HqryJournalMap_D: TDataSetField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLJournalMap: TfrmGLJournalMap;

implementation

{$R *.dfm}

uses DataGlobal, FormGLJournalMaps;

procedure TfrmGLJournalMap.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmGLJournalMaps;
end;

procedure TfrmGLJournalMap.FormCreate(Sender: TObject);
begin
  inherited;
  cdsGLJournalMapList.Close;
  cdsGLJournalMapList.Open;
end;

Initialization
  RegisterClass(TfrmGLJournalMap);

end.
