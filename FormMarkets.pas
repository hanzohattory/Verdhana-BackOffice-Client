unit FormMarkets;

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
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, System.ImageList;

type
  TfrmMarkets = class(TfrmBrowseData)
    cdsMarketList: TNClientDataset;
    gvwMasterMARKETDESC: TcxGridDBBandedColumn;
    gvwMasterINITCODE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCCYTRANS: TcxGridDBBandedColumn;
    gvwMasterCCYSETTLE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    cdsMarketListMARKETCODE: TStringField;
    cdsMarketListINITCODE: TStringField;
    cdsMarketListMARKETDESC: TStringField;
    cdsMarketListADDRESS1: TStringField;
    cdsMarketListADDRESS2: TStringField;
    cdsMarketListADDRESS3: TStringField;
    cdsMarketListPOSTCODE: TStringField;
    cdsMarketListCOUNTRYCODE: TStringField;
    cdsMarketListPHONE: TStringField;
    cdsMarketListFAX: TStringField;
    cdsMarketListCONTACTPERSON: TStringField;
    cdsMarketListCP_POSITION: TStringField;
    cdsMarketListCCY: TStringField;
    cdsMarketListCCYTRANS: TStringField;
    cdsMarketListCCYSETTLE: TStringField;
    cdsMarketListVATPCT: TFloatField;
    cdsMarketListWHTPCT: TFloatField;
    cdsMarketListOTCAMOUNT: TFloatField;
    cdsMarketListMODDA: TDateTimeField;
    cdsMarketListMODUI: TStringField;
    cdsMarketListAPPDA: TDateTimeField;
    cdsMarketListAPPUI: TStringField;
    cdsMarketListUNDER4Y: TIntegerField;
    cdsMarketListUNDER4YDA: TDateTimeField;
    cdsMarketListNOTES4Y: TStringField;
    cdsMarketListISDEL: TIntegerField;
    cdsMarketListID: TLargeintField;
    gvwMasterADDRESS1: TcxGridDBBandedColumn;
    gvwMasterADDRESS2: TcxGridDBBandedColumn;
    gvwMasterADDRESS3: TcxGridDBBandedColumn;
    gvwMasterPOSTCODE: TcxGridDBBandedColumn;
    gvwMasterCOUNTRYCODE: TcxGridDBBandedColumn;
    gvwMasterPHONE: TcxGridDBBandedColumn;
    gvwMasterFAX: TcxGridDBBandedColumn;
    gvwMasterCONTACTPERSON: TcxGridDBBandedColumn;
    gvwMasterCP_POSITION: TcxGridDBBandedColumn;
    gvwMasterVATPCT: TcxGridDBBandedColumn;
    gvwMasterWHTPCT: TcxGridDBBandedColumn;
    gvwMasterOTCAMOUNT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    cdsMarketListSELLTAX: TFloatField;
    cdsMarketListVAT_ACCID: TIntegerField;
    cdsMarketListVAT_ALTYPE: TStringField;
    cdsMarketListWHT_ACCID: TIntegerField;
    cdsMarketListWHT_ALTYPE: TStringField;
    cdsMarketListSELLTAX_ACCID: TIntegerField;
    cdsMarketListSELLTAX_ALTYPE: TStringField;
    cdsMarketListBUY_ALTYPE: TStringField;
    cdsMarketListSELL_ALTYPE: TStringField;
    cdsMarketListBFEE_ACCID: TIntegerField;
    cdsMarketListBFEE_ALTYPE: TStringField;
    cdsMarketListSREC_ALTYPE: TStringField;
    cdsMarketListSDEL_ALTYPE: TStringField;
    cdsMarketListFACILITATION_BOARD: TLargeintField;
    cdsMarketListWAREHOUSE_BOARD: TLargeintField;
    cdsMarketListCROSSTOM_BOARD: TLargeintField;
    cdsMarketListHOLDTAX: TFloatField;
    cdsMarketListCAPGAINTAX: TFloatField;
    cdsMarketListINV_BANK_ALTYPE: TStringField;
    cdsMarketListSTOCK_SETTLE_ALTYPE: TStringField;
    cdsMarketListCASH_SETTLE_ALTYPE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarkets: TfrmMarkets;

implementation

{$R *.dfm}

uses DataGlobal, FormMarket;

procedure TfrmMarkets.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmMarket;
end;

procedure TfrmMarkets.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
      cdsLuCcy.Open
    else
      cdsLuCcy.Refresh;

    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open
    else
      cdsLuCounNation.Refresh;

    if not cdsLuAccount.Active then
      cdsLuAccount.Open
    else
      cdsLuAccount.Refresh;

    if not cdsLuActLedgerType.Active then
      cdsLuActLedgerType.Open
    else
      cdsLuActLedgerType.Refresh;

    if not cdsLuBoard.Active then
      cdsLuBoard.Open
    else
      cdsLuBoard.Refresh;

    if not cdsLuSettleTransType.Active then
      cdsLuSettleTransType.Open
    else
      cdsLuSettleTransType.Refresh;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open
    else
      cdsLuAccType.Refresh;
  end;

  KeyField := cdsMarketListMARKETCODE;
  cdsMarketList.Close;
  cdsMarketList.Open;
end;

Initialization
  RegisterClass(TfrmMarkets);

end.
