unit FormCommissionTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxImageComboBox,
  Vcl.Tabs, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset;

type
  TfrmCommissionTable = class(TfrmEditorData)
    grdCommTableD: TcxGrid;
    gvwCommTableD: TcxGridDBTableView;
    gvwCommTableDSTART_VALUE: TcxGridDBColumn;
    gvwCommTableDEND_VALUE: TcxGridDBColumn;
    gvwCommTableDCOMM_RATE: TcxGridDBColumn;
    gvwCommTableDNET_RATE: TcxGridDBColumn;
    grdCommTableDLevel1: TcxGridLevel;
    dsCommTableD: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsCommTableH: TNClientDataset;
    cdsCommTableHCOMM_TABLE_CODE: TStringField;
    cdsCommTableHDESCRIPTION: TStringField;
    cdsCommTableHMODDA: TDateTimeField;
    cdsCommTableHMODUI: TStringField;
    cdsCommTableHAPPDA: TDateTimeField;
    cdsCommTableHAPPUI: TStringField;
    cdsCommTableHISDEL: TIntegerField;
    cdsCommTableHID: TLargeintField;
    cdsCommTableHqryCommTableD: TDataSetField;
    cdsCommTableHUNDER4Y: TIntegerField;
    cdsCommTableHUNDER4YDA: TDateTimeField;
    cdsCommTableHNOTES4Y: TStringField;
    cdsCommTableHMARKETCODE: TStringField;
    cdsCommTableHCCYCODE: TStringField;
    cdsCommTableD: TNClientDataset;
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
    procedure cdsCommTableHNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCommissionTable: TfrmCommissionTable;

implementation

{$R *.dfm}

uses FormCommissionTables, DataGlobal;

procedure TfrmCommissionTable.cdsCommTableHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCommTableHMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
end;

Initialization
  RegisterClass(TfrmCommissionTable);

end.
