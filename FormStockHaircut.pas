unit FormStockHaircut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit,
  cxImageComboBox, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxFilter, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxLayoutLookAndFeels, cxClasses;

type
  TfrmStockHaircut = class(TfrmEditorData)
    cdsHaircut: TNClientDataset;
    cdsHaircutINSTRUMENT_ID: TLargeintField;
    cdsHaircutINSTRUMENT_CODE: TStringField;
    cdsHaircutLOCALCODE: TStringField;
    cdsHaircutMARKETCODE: TStringField;
    cdsHaircutINSTRUMENT_TYPE_CODE: TStringField;
    cdsHaircutHCUTDATE: TDateTimeField;
    cdsHaircutHCUTTYPE: TStringField;
    cdsHaircutHCUTPRICE: TFloatField;
    cdsHaircutMODDA: TDateTimeField;
    cdsHaircutMODUI: TStringField;
    cdsHaircutAPPDA: TDateTimeField;
    cdsHaircutAPPUI: TStringField;
    cdsHaircutISDEL: TIntegerField;
    cdsHaircutID: TLargeintField;
    cbMarket: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cbStock: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure cbStockEnter(Sender: TObject);
    procedure cbStockExit(Sender: TObject);
    procedure cdsHaircutINSTRUMENT_IDChange(Sender: TField);
    procedure cdsHaircutNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockHaircut: TfrmStockHaircut;

implementation

{$R *.dfm}

uses DataGlobal, cxLookupDBGrid;

procedure TfrmStockHaircut.cbStockEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbStock.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.AddItem(LGrid.Columns[1], foEqual, cbMarket.EditValue, VarToStr(cbMarket.EditValue));
    Active := True;
  end;
end;

procedure TfrmStockHaircut.cbStockExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbStock.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.Clear;
    Active := False;
  end;
end;

procedure TfrmStockHaircut.cdsHaircutINSTRUMENT_IDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrument.Locate('INSTRUMENT_ID', Sender.Value, []) then
    begin
      cdsHaircutINSTRUMENT_CODE.AsString := cdsLuInstrumentINSTRUMENT_CODE.AsString;
      cdsHaircutLOCALCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsHaircutINSTRUMENT_TYPE_CODE.AsString := cdsLuInstrumentINSTRUMENT_TYPE_CODE.AsString;;
    end;
  end;
end;

procedure TfrmStockHaircut.cdsHaircutNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsHaircutHCUTDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmStockHaircut);

end.
