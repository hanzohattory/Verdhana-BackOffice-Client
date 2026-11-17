unit FormAccLedgerTempList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportClient;

type
  TfrmAccLedgerTempList = class(TfrmBrowseData)
    cdsAccLedgTempList: TNClientDataset;
    cdsAccLedgTempListACCTYPE: TStringField;
    cdsAccLedgTempListACCSUBTYPE: TStringField;
    cdsAccLedgTempListMODDA: TDateTimeField;
    cdsAccLedgTempListMODUI: TStringField;
    cdsAccLedgTempListAPPDA: TDateTimeField;
    cdsAccLedgTempListAPPUI: TStringField;
    cdsAccLedgTempListUNDER4Y: TIntegerField;
    cdsAccLedgTempListUNDER4YDA: TDateTimeField;
    cdsAccLedgTempListNOTES4Y: TStringField;
    cdsAccLedgTempListISDEL: TIntegerField;
    cdsAccLedgTempListID: TLargeintField;
    cdsAccLedgTempH: TNClientDataset;
    cdsAccLedgTempHACCTYPE: TStringField;
    cdsAccLedgTempHACCSUBTYPE: TStringField;
    cdsAccLedgTempHMODDA: TDateTimeField;
    cdsAccLedgTempHMODUI: TStringField;
    cdsAccLedgTempHAPPDA: TDateTimeField;
    cdsAccLedgTempHAPPUI: TStringField;
    cdsAccLedgTempHUNDER4Y: TIntegerField;
    cdsAccLedgTempHUNDER4YDA: TDateTimeField;
    cdsAccLedgTempHNOTES4Y: TStringField;
    cdsAccLedgTempHISDEL: TIntegerField;
    cdsAccLedgTempHID: TLargeintField;
    cdsAccLedgTempHqryAccLedgTempD: TDataSetField;
    cdsAccLedgTempD: TNClientDataset;
    cdsAccLedgTempDACCTYPE: TStringField;
    cdsAccLedgTempDACCSUBTYPE: TStringField;
    cdsAccLedgTempDALTYPE: TStringField;
    cdsAccLedgTempDCASH_STOCK: TStringField;
    cdsAccLedgTempDMODDA: TDateTimeField;
    cdsAccLedgTempDMODUI: TStringField;
    cdsAccLedgTempDAPPDA: TDateTimeField;
    cdsAccLedgTempDAPPUI: TStringField;
    cdsAccLedgTempDUNDER4Y: TIntegerField;
    cdsAccLedgTempDUNDER4YDA: TDateTimeField;
    cdsAccLedgTempDNOTES4Y: TStringField;
    cdsAccLedgTempDISDEL: TIntegerField;
    cdsAccLedgTempDID: TLargeintField;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure cdsAccLedgTempDALTYPEChange(Sender: TField);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccLedgerTempList: TfrmAccLedgerTempList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccLedgerTemp;

procedure TfrmAccLedgerTempList.cdsAccLedgTempDALTYPEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (Sender.DataSet.State in [dsInsert, dsEdit]) then
    begin
      if cdsLuActLedgerType.Locate('ALTYPE', cdsAccLedgTempDALTYPE.AsString , []) then
      begin
        cdsAccLedgTempDCASH_STOCK.AsString := cdsLuActLedgerTypeCASH_STOCK.AsString;
      end;
    end;
  end;

end;

procedure TfrmAccLedgerTempList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccLedgerTemp;
end;

procedure TfrmAccLedgerTempList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccType.Close;
    cdsLuAccType.Open;

    cdsLuActLedgerType.Close;
    cdsLuActLedgerType.Open;

  end;

  cdsAccLedgTempList.Close;
  cdsAccLedgTempList.Open;
end;

initialization
  RegisterClass(TfrmAccLedgerTempList);

end.
