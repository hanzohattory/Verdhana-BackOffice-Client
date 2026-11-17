unit FormChargeTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmChargeTable = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    grdChargeTableD: TcxGrid;
    gvwChargeTableD: TcxGridDBTableView;
    grdChargeTableDLevel1: TcxGridLevel;
    dsChargeTableD: TDataSource;
    gvwChargeTableDSTART_VALUE: TcxGridDBColumn;
    gvwChargeTableDEND_VALUE: TcxGridDBColumn;
    gvwChargeTableDBASIS: TcxGridDBColumn;
    gvwChargeTableDRATE: TcxGridDBColumn;
    gvwChargeTableDAMOUNT: TcxGridDBColumn;
    cdsChargeTableH: TNClientDataset;
    cdsChargeTableHCHARGE_TABLE_ID: TLargeintField;
    cdsChargeTableHCHARGE_TABLE_CODE: TStringField;
    cdsChargeTableHMARKETCODE: TStringField;
    cdsChargeTableHDESCRIPTION: TStringField;
    cdsChargeTableHMODDA: TDateTimeField;
    cdsChargeTableHMODUI: TStringField;
    cdsChargeTableHAPPDA: TDateTimeField;
    cdsChargeTableHAPPUI: TStringField;
    cdsChargeTableHISDEL: TIntegerField;
    cdsChargeTableHID: TLargeintField;
    cdsChargeTableHqryChargeTableD: TDataSetField;
    cdsChargeTableHUNDER4Y: TIntegerField;
    cdsChargeTableHUNDER4YDA: TDateTimeField;
    cdsChargeTableHNOTES4Y: TStringField;
    cdsChargeTableD: TNClientDataset;
    cdsChargeTableDCHARGE_TABLE_ID: TLargeintField;
    cdsChargeTableDSEQID: TIntegerField;
    cdsChargeTableDSTART_VALUE: TFloatField;
    cdsChargeTableDEND_VALUE: TFloatField;
    cdsChargeTableDBASIS: TStringField;
    cdsChargeTableDRATE: TFloatField;
    cdsChargeTableDAMOUNT: TFloatField;
    cdsChargeTableDMODDA: TDateTimeField;
    cdsChargeTableDMODUI: TStringField;
    cdsChargeTableDAPPDA: TDateTimeField;
    cdsChargeTableDAPPUI: TStringField;
    cdsChargeTableDISDEL: TIntegerField;
    cdsChargeTableDID: TLargeintField;
    procedure cdsChargeTableHNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChargeTable: TfrmChargeTable;

implementation

{$R *.dfm}

uses FormChargeTables, DataGlobal;

procedure TfrmChargeTable.cdsChargeTableHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsChargeTableHCHARGE_TABLE_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CHARGE_TABLE');
end;

Initialization
  RegisterClass(TfrmChargeTable);

end.
