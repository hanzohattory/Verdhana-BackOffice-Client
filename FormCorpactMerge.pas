unit FormCorpactMerge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBEdit, dxLayoutcxEditAdapters, cxCalendar, cxCurrencyEdit, cxLabel,
  cxMemo, cxClasses, dxLayoutLookAndFeels;

type
  TfrmCorpActMerge = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    txtMergerStock: TcxTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBDateEdit8: TcxDBDateEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBDateEdit9: TcxDBDateEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBDateEdit10: TcxDBDateEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBDateEdit11: TcxDBDateEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item17: TdxLayoutItem;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpActMerge: TfrmCorpActMerge;

implementation

{$R *.dfm}

uses FormCorpactList, DataGlobal;

procedure TfrmCorpActMerge.btnOKClick(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsSubject.DataSet;
  if oDataSet.FieldByName('GENERATE_ENT').AsString = '1' then
    MessageDlg('Can Not Edit Entitled Corporate Action Announcement!', mtError, [mbOk], 0)
  else
    inherited;
end;

procedure TfrmCorpActMerge.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuInstrument.Locate('INSTRUMENT_ID', dsSubject.DataSet.FieldByName('STOCKID').AsInteger, []) then
      begin
        dsSubject.DataSet.FieldByName('STOCKCODE').AsString := cdsLuInstrumentINSTRUMENT_CODE.AsString;
        dsSubject.DataSet.FieldByName('STOCKNAME').AsString := cdsLuInstrumentSHORTNAME.AsString;
        dsSubject.DataSet.FieldByName('ISINCODE').AsString  := cdsLuInstrumentISINCODE.AsString;
      end;
    end;
  end;
end;

procedure TfrmCorpActMerge.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuInstrumentStock.Locate('INSTRUMENT_ID', dsSubject.DataSet.FieldByName('NEW_STOCKID').AsInteger, []) then
      begin
        dsSubject.DataSet.FieldByName('NEW_STOCKCODE').AsString := cdsLuInstrumentStockINSTRUMENT_CODE.AsString;
        txtMergerStock.Text                                     := cdsLuInstrumentStockSHORTNAME.AsString;
        dsSubject.DataSet.FieldByName('NEW_ISINCODE').AsString  := cdsLuInstrumentStockISINCODE.AsString;
      end;
    end;
  end
end;

end.
