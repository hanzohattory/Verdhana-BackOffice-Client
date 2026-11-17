unit FormJournalMap;

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
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxImageComboBox, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl;

type
  TfrmJournalMap = class(TfrmBrowseData)
    cdsJournalMapList: TNClientDataset;
    gvwJournalMapD: TcxGridDBBandedTableView;
    gvwJournalMapDJOUMAPID: TcxGridDBBandedColumn;
    gvwJournalMapDSEQID: TcxGridDBBandedColumn;
    gvwJournalMapDJOUTYPE: TcxGridDBBandedColumn;
    gvwJournalMapDGL_JRNTYPE: TcxGridDBBandedColumn;
    gvwJournalMapDTRANSTYPE_CODE: TcxGridDBBandedColumn;
    gvwJournalMapDACCTYPE: TcxGridDBBandedColumn;
    gvwJournalMapDPRDCODE: TcxGridDBBandedColumn;
    gvwJournalMapDSIDEACC: TcxGridDBBandedColumn;
    gvwJournalMapDALTYPE: TcxGridDBBandedColumn;
    gvwJournalMapDJOUMAPDESCDTL: TcxGridDBBandedColumn;
    gvwJournalMapDDC: TcxGridDBBandedColumn;
    gvwJournalMapDVALUE_SOURCE: TcxGridDBBandedColumn;
    gvwJournalMapDMODDA: TcxGridDBBandedColumn;
    gvwJournalMapDMODUI: TcxGridDBBandedColumn;
    gvwJournalMapDAPPDA: TcxGridDBBandedColumn;
    gvwJournalMapDAPPUI: TcxGridDBBandedColumn;
    gvwJournalMapDUNDER4Y: TcxGridDBBandedColumn;
    gvwJournalMapDUNDER4YDA: TcxGridDBBandedColumn;
    gvwJournalMapDNOTES4Y: TcxGridDBBandedColumn;
    gvwJournalMapDISDEL: TcxGridDBBandedColumn;
    gvwJournalMapDID: TcxGridDBBandedColumn;
    gvwJournalMapGL: TcxGridDBBandedTableView;
    gvwJournalMapGLJOUMAPID: TcxGridDBBandedColumn;
    gvwJournalMapGLJMSEQID: TcxGridDBBandedColumn;
    gvwJournalMapGLCCYCODE: TcxGridDBBandedColumn;
    gvwJournalMapGLGLACCOUNTID: TcxGridDBBandedColumn;
    gvwJournalMapGLMODDA: TcxGridDBBandedColumn;
    gvwJournalMapGLMODUI: TcxGridDBBandedColumn;
    gvwJournalMapGLAPPDA: TcxGridDBBandedColumn;
    gvwJournalMapGLAPPUI: TcxGridDBBandedColumn;
    gvwJournalMapGLUNDER4Y: TcxGridDBBandedColumn;
    gvwJournalMapGLUNDER4YDA: TcxGridDBBandedColumn;
    gvwJournalMapGLNOTES4Y: TcxGridDBBandedColumn;
    gvwJournalMapGLISDEL: TcxGridDBBandedColumn;
    gvwJournalMapGLID: TcxGridDBBandedColumn;
    LayConTop: TdxLayoutControl;
    luMarket: TcxLookupComboBox;
    cxButton1: TcxButton;
    LayConTopGroup_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    LayConTopItem2: TdxLayoutItem;
    cdsJournalMapListJOURNALID: TLargeintField;
    cdsJournalMapListJOURNALCODE: TStringField;
    cdsJournalMapListMARKETCODE: TStringField;
    cdsJournalMapListJOURNAL_DESC: TStringField;
    cdsJournalMapListCASH_STOCK: TStringField;
    cdsJournalMapListJOURNAL_TYPE: TStringField;
    cdsJournalMapListGL_JOURNAL_TYPE: TStringField;
    cdsJournalMapListMODDA: TDateTimeField;
    cdsJournalMapListMODUI: TStringField;
    cdsJournalMapListAPPDA: TDateTimeField;
    cdsJournalMapListAPPUI: TStringField;
    cdsJournalMapListUNDER4Y: TIntegerField;
    cdsJournalMapListUNDER4YDA: TDateTimeField;
    cdsJournalMapListNOTES4Y: TStringField;
    cdsJournalMapListISDEL: TIntegerField;
    cdsJournalMapListID: TLargeintField;
    gvwMasterJOURNALID: TcxGridDBBandedColumn;
    gvwMasterJOURNALCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterJOURNAL_DESC: TcxGridDBBandedColumn;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterJOURNAL_TYPE: TcxGridDBBandedColumn;
    gvwMasterGL_JOURNAL_TYPE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsJournalMapListTRTYPE: TStringField;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure popMasterPopup(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJournalMap: TfrmJournalMap;

implementation

{$R *.dfm}

uses DataGlobal, FormJournalMaps, DataLookup;

procedure TfrmJournalMap.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsJournalMapList.Close;
  cdsJournalMapList.Params[0].AsString := luMarket.EditValue;
  cdsJournalMapList.Open;
end;

procedure TfrmJournalMap.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmJournalMaps;
end;

procedure TfrmJournalMap.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsJournalMapListJOURNALID;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuTransType.Active then
      cdsLuTransType.Open
    else
      cdsLuTransType.Refresh;

    if not cdsLuProduct.Active then
      cdsLuProduct.Open
    else
      cdsLuProduct.Refresh;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open
    else
      cdsLuAccType.Refresh;

    if not cdsLuActLedgerType.Active then
      cdsLuActLedgerType.Open
    else
      cdsLuActLedgerType.Refresh;

    if not cdsLuJournalType.Active then
      cdsLuJournalType.Open
    else
      cdsLuJournalType.Refresh;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open
    else
      cdsLuGLAccount.Refresh;

    if not cdsLuSIType.Active then
      cdsLuSIType.Open
    else
      cdsLuSIType.Refresh;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open
    else
      cdsLuGLAccount.Refresh;

    if not cdsLuMarket.Active then
      cdsLuMarket.Open
    else
      cdsLuMarket.Refresh;

    luMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;

    cdsJournalMapList.Close;
    cdsJournalMapList.Params[0].AsString := luMarket.EditValue;
    cdsJournalMapList.Open;
  end;
end;

procedure TfrmJournalMap.popMasterPopup(Sender: TObject);
begin
  inherited;
  actEdit.Visible := False;

  if gvwMaster.Focused then
    actEdit.Visible := True;
end;

Initialization
  RegisterClass(TfrmJournalMap);

end.
