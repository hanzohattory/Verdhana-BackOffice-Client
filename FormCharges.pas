unit FormCharges;

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
  cxGridCustomView, cxGrid, cxContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutControl, NReportRPC, cxImageComboBox, cxLabel,
  cxBarEditItem, NReportClient;

type
  TfrmCharges = class(TfrmBrowseData)
    cdsChargeList: TNClientDataset;
    cdsChargeListCHARGE_ID: TLargeintField;
    cdsChargeListCHARGE_CODE: TStringField;
    cdsChargeListMARKETCODE: TStringField;
    cdsChargeListCHARGE_TYPE: TStringField;
    cdsChargeListCHARGE_DESC: TStringField;
    cdsChargeListBASIS: TStringField;
    cdsChargeListRATE: TFloatField;
    cdsChargeListRATE_SOURCE: TStringField;
    cdsChargeListAMOUNT: TFloatField;
    cdsChargeListCHARGE_TABLE_ID: TLargeintField;
    cdsChargeListVALIDBUY: TIntegerField;
    cdsChargeListVALIDSELL: TIntegerField;
    cdsChargeListDC: TStringField;
    cdsChargeListGLCD: TStringField;
    cdsChargeListMODDA: TDateTimeField;
    cdsChargeListMODUI: TStringField;
    cdsChargeListAPPDA: TDateTimeField;
    cdsChargeListAPPUI: TStringField;
    cdsChargeListISDEL: TIntegerField;
    cdsChargeListID: TLargeintField;
    gvwMasterCHARGE_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCHARGE_TYPE: TcxGridDBBandedColumn;
    gvwMasterCHARGE_DESC: TcxGridDBBandedColumn;
    gvwMasterBASIS: TcxGridDBBandedColumn;
    gvwMasterRATE: TcxGridDBBandedColumn;
    gvwMasterRATE_SOURCE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterVALIDBUY: TcxGridDBBandedColumn;
    gvwMasterVALIDSELL: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterGLCD: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbMarket: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnView: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsChargeListUNDER4Y: TIntegerField;
    cdsChargeListUNDER4YDA: TDateTimeField;
    cdsChargeListNOTES4Y: TStringField;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    cdsChargeListCHARGE_TABLE_CODE: TStringField;
    gvwMasterCHARGE_TABLE_CODE: TcxGridDBBandedColumn;
    cdsChargeListACCID: TIntegerField;
    cdsChargeListALTYPE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure btnViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCharges: TfrmCharges;

implementation

{$R *.dfm}

uses DataGlobal, FormCharge, DataLookup;

procedure TfrmCharges.btnViewClick(Sender: TObject);
begin
  inherited;

  if cbMarket.EditValue <> Null then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuChargeTableH.Close;
      cdsLuChargeTableH.Params[0].AsString := cbMarket.EditValue;
      cdsLuChargeTableH.Open;
    end;

    cdsChargeList.Close;
    cdsChargeList.Params[0].AsString := cbMarket.EditValue;
    cdsChargeList.Open;
  end;
end;

procedure TfrmCharges.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCharge;
end;

procedure TfrmCharges.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsChargeListCHARGE_ID;

  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuMarket.Active then
      cdsLuMarket.Open
    else
      cdsLuMarket.Refresh;

    if not cdsLuAccount.Active then
      cdsLuAccount.Open
    else
      cdsLuAccount.Refresh;

    if not cdsLuActLedgerType.Active then
      cdsLuActLedgerType.Open
    else
      cdsLuActLedgerType.Refresh;

    if not cdsLuMarket.IsEmpty then
    begin
      btnView.Click;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmCharges);

end.
