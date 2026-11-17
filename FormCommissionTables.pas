unit FormCommissionTables;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NClientDataset,
  Datasnap.DBClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, NReportRPC,
  cxImageComboBox, cxLabel, cxBarEditItem, NReportClient;

type
  TfrmCommissionTables = class(TfrmBrowseData)
    cdsCommTableList: TClientDataSet;
    cdsCommTableD: TNClientDataset;
    cdsCommTableH: TNClientDataset;
    gvwMasterCOMM_TABLE_CODE: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    cdsCommTableListCOMM_TABLE_CODE: TStringField;
    cdsCommTableListDESCRIPTION: TStringField;
    cdsCommTableHCOMM_TABLE_CODE: TStringField;
    cdsCommTableHDESCRIPTION: TStringField;
    cdsCommTableHMODDA: TDateTimeField;
    cdsCommTableHMODUI: TStringField;
    cdsCommTableHAPPDA: TDateTimeField;
    cdsCommTableHAPPUI: TStringField;
    cdsCommTableHISDEL: TIntegerField;
    cdsCommTableHID: TLargeintField;
    cdsCommTableHqryCommTableD: TDataSetField;
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
    cdsCommTableHUNDER4Y: TIntegerField;
    cdsCommTableHUNDER4YDA: TDateTimeField;
    cdsCommTableHNOTES4Y: TStringField;
    cdsCommTableListUNDER4Y: TIntegerField;
    cdsCommTableListUNDER4YDA: TDateTimeField;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    dxLayoutControl1: TdxLayoutControl;
    cbMarket: TcxLookupComboBox;
    btnView: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsCommTableListMARKETCODE: TStringField;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    cdsCommTableHMARKETCODE: TStringField;
    cdsCommTableHCCYCODE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure DataContainerAfterCreateEditorForm(AForm: TForm);
    procedure DataContainerBeforeInsert(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure btnViewClick(Sender: TObject);
    procedure cdsCommTableHNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCommissionTables: TfrmCommissionTables;

implementation

{$R *.dfm}

uses DataGlobal, FormCommissionTable;

procedure TfrmCommissionTables.btnViewClick(Sender: TObject);
begin
  inherited;
  if cbMarket.EditValue <> Null then
  begin
    cdsCommTableList.Close;
    cdsCommTableList.Params[0].AsString := cbMarket.EditValue;
    cdsCommTableList.Open;
  end;
end;

procedure TfrmCommissionTables.cdsCommTableHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCommTableHMARKETCODE.AsString := cdsCommTableList.Params[0].AsString;
end;

procedure TfrmCommissionTables.DataContainerAfterCreateEditorForm(AForm: TForm);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuMarket.Close;
    cdsLuMarket.Open;
  end;
end;

procedure TfrmCommissionTables.DataContainerBeforeInsert(
  Sender: TNMasterDetailData; var AContinue: Boolean);
var
  i: Integer;
begin
  inherited;
  for i := 0 to DataContainer.AutoFields.Count - 1 do
  begin
    DataContainer.AutoFields.Items[i].Prefix := 'C';
  end;
end;

procedure TfrmCommissionTables.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCommissionTable;
end;

procedure TfrmCommissionTables.FormCreate(Sender: TObject);
begin
  inherited;
  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  KeyField := cdsCommTableListCOMM_TABLE_CODE;

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
  RegisterClass(TfrmCommissionTables);

end.
