unit FormChargeTables;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, NReportRPC,
  cxImageComboBox, cxLabel, cxBarEditItem, NReportClient;

type
  TfrmChargeTables = class(TfrmBrowseData)
    cdsChargeTableList: TNClientDataset;
    cdsChargeTableListCHARGE_TABLE_ID: TLargeintField;
    cdsChargeTableListCHARGE_TABLE_CODE: TStringField;
    cdsChargeTableListMARKETCODE: TStringField;
    cdsChargeTableListDESCRIPTION: TStringField;
    cdsChargeTableListMODDA: TDateTimeField;
    cdsChargeTableListMODUI: TStringField;
    cdsChargeTableListAPPDA: TDateTimeField;
    cdsChargeTableListAPPUI: TStringField;
    cdsChargeTableListISDEL: TIntegerField;
    cdsChargeTableListID: TLargeintField;
    gvwMasterCHARGE_TABLE_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    cdsChargeTableListUNDER4Y: TIntegerField;
    cdsChargeTableListUNDER4YDA: TDateTimeField;
    cdsChargeTableListNOTES4Y: TStringField;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    dxLayoutControl1: TdxLayoutControl;
    cbMarket: TcxLookupComboBox;
    btnView: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure btnViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChargeTables: TfrmChargeTables;

implementation

{$R *.dfm}

uses DataGlobal, FormChargeTable;

procedure TfrmChargeTables.btnViewClick(Sender: TObject);
begin
  inherited;
  if cbMarket.EditValue <> Null then
  begin
    cdsChargeTableList.Close;
    cdsChargeTableList.Params[0].AsString := cbMarket.EditValue;
    cdsChargeTableList.Open;
  end;
end;

procedure TfrmChargeTables.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmChargeTable;
end;

procedure TfrmChargeTables.FormCreate(Sender: TObject);
begin
  inherited;
  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  KeyField := cdsChargeTableListCHARGE_TABLE_ID;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuMarket.Active then
      cdsLuMarket.Open
    else
      cdsLuMarket.Refresh;

    if not cdsLuMarket.IsEmpty then
    begin
      btnView.Click;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmChargeTables);

end.
