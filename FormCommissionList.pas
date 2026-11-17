unit FormCommissionList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, Datasnap.DBClient,
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, NReportRPC, cxImageComboBox, cxLabel,
  cxBarEditItem, NReportClient;

type
  TfrmCommissionList = class(TfrmBrowseData)
    cdsCommissionList: TNClientDataset;
    cdsCommissionListCOMM_ID: TLargeintField;
    cdsCommissionListCOMM_CODE: TStringField;
    cdsCommissionListMARKETCODE: TStringField;
    cdsCommissionListCOMM_DESC: TStringField;
    cdsCommissionListMIN_COMM: TFloatField;
    cdsCommissionListCALC_METHOD: TStringField;
    cdsCommissionListCOMM_RATE: TFloatField;
    cdsCommissionListNET_RATE: TFloatField;
    cdsCommissionListCOMM_TABLE: TStringField;
    cdsCommissionListNEW_COMM_RATE: TFloatField;
    cdsCommissionListNEW_NET_RATE: TFloatField;
    cdsCommissionListNEW_COMM_TABLE: TStringField;
    cdsCommissionListNEW_COMM_EFFECTIVE_DATE: TDateField;
    cdsCommissionListMODDA: TDateTimeField;
    cdsCommissionListMODUI: TStringField;
    cdsCommissionListAPPDA: TDateTimeField;
    cdsCommissionListAPPUI: TStringField;
    cdsCommissionListUNDER4Y: TIntegerField;
    cdsCommissionListUNDER4YDA: TDateTimeField;
    cdsCommissionListNOTES4Y: TStringField;
    cdsCommissionListISDEL: TIntegerField;
    cdsCommissionListID: TLargeintField;
    dxLayoutControl1: TdxLayoutControl;
    cbMarket: TcxLookupComboBox;
    btnView: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    gvwMasterCOMM_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCOMM_DESC: TcxGridDBBandedColumn;
    gvwMasterMIN_COMM: TcxGridDBBandedColumn;
    gvwMasterCALC_METHOD: TcxGridDBBandedColumn;
    gvwMasterCOMM_RATE: TcxGridDBBandedColumn;
    gvwMasterNET_RATE: TcxGridDBBandedColumn;
    gvwMasterCOMM_TABLE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    cdsCommissionListCCYCODE: TStringField;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    procedure btnViewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCommissionList: TfrmCommissionList;

implementation

{$R *.dfm}

uses DataGlobal, FormCommission, DataLookup;

procedure TfrmCommissionList.btnViewClick(Sender: TObject);
begin
  inherited;

  if cbMarket.EditValue <> Null then
  begin
    cdsCommissionList.Close;
    cdsCommissionList.Params[0].AsString := cbMarket.EditValue;
    cdsCommissionList.Open;
  end;
end;

procedure TfrmCommissionList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCommission;
end;

procedure TfrmCommissionList.FormCreate(Sender: TObject);
begin
  inherited;
  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  KeyField := cdsCommissionListCOMM_ID;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    if not cdsLuMarket.IsEmpty then
    begin
      btnView.Click;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmCommissionList);

end.
