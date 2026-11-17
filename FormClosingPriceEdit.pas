unit FormClosingPriceEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  Data.DB, Datasnap.DBClient, NClientDataset, cxClasses, dxLayoutLookAndFeels,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmClosingPriceEit = class(TfrmEditorData)
    cdsClosingPriceEdit: TNClientDataset;
    cdsClosingPriceEditSTK_DATE: TDateField;
    cdsClosingPriceEditMARKETCODE: TStringField;
    cdsClosingPriceEditSTK_CODE: TStringField;
    cdsClosingPriceEditSTK_NAME: TStringField;
    cdsClosingPriceEditSTK_PREV: TFloatField;
    cdsClosingPriceEditSTK_HIGH: TFloatField;
    cdsClosingPriceEditSTK_LOW: TFloatField;
    cdsClosingPriceEditSTK_CLOS: TFloatField;
    cdsClosingPriceEditSTK_VOLM: TFloatField;
    cdsClosingPriceEditSTK_AMNT: TFloatField;
    cdsClosingPriceEditSTK_INDX: TFloatField;
    cdsClosingPriceEditSTK_PIDX: TFloatField;
    cdsClosingPriceEditSTK_ASKP: TFloatField;
    cdsClosingPriceEditSTK_ASKV: TFloatField;
    cdsClosingPriceEditSTK_ASKF: TStringField;
    cdsClosingPriceEditSTK_BIDP: TFloatField;
    cdsClosingPriceEditSTK_BIDV: TFloatField;
    cdsClosingPriceEditSTK_BIDF: TStringField;
    cdsClosingPriceEditSTK_FHIG: TFloatField;
    cdsClosingPriceEditSTK_FLOW: TFloatField;
    cdsClosingPriceEditSTK_FCLO: TFloatField;
    cdsClosingPriceEditSTK_OPEN: TFloatField;
    cdsClosingPriceEditMODDA: TDateTimeField;
    cdsClosingPriceEditMODUI: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dsInstrumentNoStock: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cdsClosingPriceEditNewRecord(DataSet: TDataSet);
    procedure cdsClosingPriceEditSTK_CODEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClosingPriceEit: TfrmClosingPriceEit;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmClosingPriceEit.cdsClosingPriceEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsClosingPriceEditSTK_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsClosingPriceEditSTK_CLOS.AsFloat    := 0;
  cdsClosingPriceEditMARKETCODE.AsString := 'IDX';
end;

procedure TfrmClosingPriceEit.cdsClosingPriceEditSTK_CODEChange(Sender: TField);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuInstrumentNotStock.Locate('LOCALCODE', cdsClosingPriceEditSTK_CODE.AsString, []) then
    cdsClosingPriceEditSTK_NAME.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentNotStockSHORTNAME.AsString;
end;

procedure TfrmClosingPriceEit.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentNotStock.Close;
    cdsLuInstrumentNotStock.Open;
  end;
end;

end.
