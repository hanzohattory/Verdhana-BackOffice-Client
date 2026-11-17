unit FormAccLedgerTemp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxImageComboBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Datasnap.DBClient,
  NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmAccLedgerTemp = class(TfrmEditorData)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwLedgerTemp: TcxGridDBBandedTableView;
    dsLedgerTempD: TDataSource;
    gvwLedgerTempALTYPE: TcxGridDBBandedColumn;
    gvwLedgerTempCASH_STOCK: TcxGridDBBandedColumn;
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
    procedure cdsAccLedgTempDALTYPEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccLedgerTemp: TfrmAccLedgerTemp;

implementation

{$R *.dfm}

uses FormAccLedgerTempList, DataGlobal;

procedure TfrmAccLedgerTemp.cdsAccLedgTempDALTYPEChange(Sender: TField);
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

Initialization
  RegisterClass(TfrmAccLedgerTemp);

end.
