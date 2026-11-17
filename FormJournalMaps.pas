unit FormJournalMaps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, Datasnap.DBClient, NClientDataset, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxTextEdit, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxLookupEdit,
  cxDBLookupEdit;

type
  TfrmJournalMaps = class(TfrmEditorData)
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dsJouMaps_D: TDataSource;
    cxGrid1: TcxGrid;
    gvwJoulMaps_D: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsJournalMap_H: TNClientDataset;
    cdsJournalMap_D: TNClientDataset;
    cdsJournalMap_HJOURNALID: TLargeintField;
    cdsJournalMap_HJOURNALCODE: TStringField;
    cdsJournalMap_HMARKETCODE: TStringField;
    cdsJournalMap_HJOURNAL_DESC: TStringField;
    cdsJournalMap_HCASH_STOCK: TStringField;
    cdsJournalMap_HJOURNAL_TYPE: TStringField;
    cdsJournalMap_HGL_JOURNAL_TYPE: TStringField;
    cdsJournalMap_HTRTYPE: TStringField;
    cdsJournalMap_HMODDA: TDateTimeField;
    cdsJournalMap_HMODUI: TStringField;
    cdsJournalMap_HAPPDA: TDateTimeField;
    cdsJournalMap_HAPPUI: TStringField;
    cdsJournalMap_HUNDER4Y: TIntegerField;
    cdsJournalMap_HUNDER4YDA: TDateTimeField;
    cdsJournalMap_HNOTES4Y: TStringField;
    cdsJournalMap_HISDEL: TIntegerField;
    cdsJournalMap_HID: TLargeintField;
    cdsJournalMap_HqryJournalMap_D: TDataSetField;
    cdsJournalMap_DJOURNALID: TLargeintField;
    cdsJournalMap_DSEQNO: TIntegerField;
    cdsJournalMap_DJOURNALSIDE: TStringField;
    cdsJournalMap_DISMULTICCY: TStringField;
    cdsJournalMap_DFOREXCCY: TStringField;
    cdsJournalMap_DALTYPE: TStringField;
    cdsJournalMap_DALTYPE_DESC: TStringField;
    cdsJournalMap_DDC: TStringField;
    cdsJournalMap_DACCSIDE: TStringField;
    cdsJournalMap_DBAL_DEFAULT: TStringField;
    cdsJournalMap_DSET_VALUE: TStringField;
    cdsJournalMap_DSET_FXVALUE: TStringField;
    cdsJournalMap_DMODDA: TDateTimeField;
    cdsJournalMap_DMODUI: TStringField;
    cdsJournalMap_DAPPDA: TDateTimeField;
    cdsJournalMap_DAPPUI: TStringField;
    cdsJournalMap_DUNDER4Y: TIntegerField;
    cdsJournalMap_DUNDER4YDA: TDateTimeField;
    cdsJournalMap_DNOTES4Y: TStringField;
    cdsJournalMap_DISDEL: TIntegerField;
    cdsJournalMap_DID: TLargeintField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gvwJoulMaps_DJOURNALID: TcxGridDBBandedColumn;
    gvwJoulMaps_DSEQNO: TcxGridDBBandedColumn;
    gvwJoulMaps_DJOURNALSIDE: TcxGridDBBandedColumn;
    gvwJoulMaps_DISMULTICCY: TcxGridDBBandedColumn;
    gvwJoulMaps_DFOREXCCY: TcxGridDBBandedColumn;
    gvwJoulMaps_DALTYPE: TcxGridDBBandedColumn;
    gvwJoulMaps_DALTYPE_DESC: TcxGridDBBandedColumn;
    gvwJoulMaps_DDC: TcxGridDBBandedColumn;
    gvwJoulMaps_DACCSIDE: TcxGridDBBandedColumn;
    gvwJoulMaps_DBAL_DEFAULT: TcxGridDBBandedColumn;
    gvwJoulMaps_DSET_VALUE: TcxGridDBBandedColumn;
    gvwJoulMaps_DSET_FXVALUE: TcxGridDBBandedColumn;
    gvwJoulMaps_DMODDA: TcxGridDBBandedColumn;
    gvwJoulMaps_DMODUI: TcxGridDBBandedColumn;
    gvwJoulMaps_DAPPDA: TcxGridDBBandedColumn;
    gvwJoulMaps_DAPPUI: TcxGridDBBandedColumn;
    gvwJoulMaps_DUNDER4Y: TcxGridDBBandedColumn;
    gvwJoulMaps_DUNDER4YDA: TcxGridDBBandedColumn;
    gvwJoulMaps_DNOTES4Y: TcxGridDBBandedColumn;
    gvwJoulMaps_DISDEL: TcxGridDBBandedColumn;
    gvwJoulMaps_DID: TcxGridDBBandedColumn;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure cdsJournalMap_HNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJournalMaps: TfrmJournalMaps;

implementation

{$R *.dfm}

uses DataGlobal, FormJournalMap, DataLookup;

procedure TfrmJournalMaps.cdsJournalMap_HNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJournalMap_HJOURNALID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_JOURNAL_PARAM_H');
end;

procedure TfrmJournalMaps.FormCreate(Sender: TObject);
begin
  inherited;
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

    if not cdsLuCcy.Active then
      cdsLuCcy.Open
    else
      cdsLuCcy.Refresh;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open
    else
      cdsLuGLAccount.Refresh;

    if not cdsLuMarket.Active then
      cdsLuMarket.Open
    else
      cdsLuMarket.Refresh;
  end;
end;

Initialization
  RegisterClass(TfrmJournalMaps);

end.
