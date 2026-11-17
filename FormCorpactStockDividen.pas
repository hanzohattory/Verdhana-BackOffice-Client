unit FormCorpactStockDividen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  Datasnap.DBClient, NClientDataset, cxImageComboBox, cxMemo, cxClasses,
  dxLayoutLookAndFeels;

type
  TfrmCorpActStockDividen = class(TfrmEditorData)
    cxLabel1: TcxLabel;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
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
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsStockClosingPrice: TNClientDataset;
    cdsStockClosingPriceSTK_DATE: TDateField;
    cdsStockClosingPriceSTK_CODE: TStringField;
    cdsStockClosingPriceSTK_NAME: TStringField;
    cdsStockClosingPriceSTK_PREV: TFloatField;
    cdsStockClosingPriceSTK_HIGH: TFloatField;
    cdsStockClosingPriceSTK_LOW: TFloatField;
    cdsStockClosingPriceSTK_CLOS: TFloatField;
    cdsStockClosingPriceSTK_VOLM: TFloatField;
    cdsStockClosingPriceSTK_AMNT: TFloatField;
    cdsStockClosingPriceSTK_INDX: TFloatField;
    cdsStockClosingPriceSTK_PIDX: TFloatField;
    cdsStockClosingPriceSTK_ASKP: TFloatField;
    cdsStockClosingPriceSTK_ASKV: TFloatField;
    cdsStockClosingPriceSTK_ASKF: TStringField;
    cdsStockClosingPriceSTK_BIDP: TFloatField;
    cdsStockClosingPriceSTK_BIDV: TFloatField;
    cdsStockClosingPriceSTK_BIDF: TStringField;
    cdsStockClosingPriceSTK_FHIG: TFloatField;
    cdsStockClosingPriceSTK_FLOW: TFloatField;
    cdsStockClosingPriceSTK_FCLO: TFloatField;
    cdsStockClosingPriceSTK_OPEN: TFloatField;
    cdsStockClosingPriceMODDA: TDateTimeField;
    cdsStockClosingPriceMODUI: TStringField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    function GetClosingPrice(ACumDate: TDate; AStockCode: string): Double;
  public
    { Public declarations }
  end;

var
  frmCorpActStockDividen: TfrmCorpActStockDividen;

implementation

{$R *.dfm}

uses FormCorpactList, DataGlobal;

procedure TfrmCorpActStockDividen.btnOKClick(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsSubject.DataSet;
  if oDataSet.FieldByName('GENERATE_ENT').AsString = '1' then
    MessageDlg('Can Not Edit Entitled Corporate Action Announcement!', mtError, [mbOk], 0)
  else
    inherited;
end;

procedure TfrmCorpActStockDividen.cxDBDateEdit1Exit(Sender: TObject);
begin
  inherited;
  GetClosingPrice(dsSubject.DataSet.FieldByName('NGRG_CUMDATE').AsDateTime, dsSubject.DataSet.FieldByName('STOCKCODE').AsString);
end;

procedure TfrmCorpActStockDividen.cxDBLookupComboBox1Exit(Sender: TObject);
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
        GetClosingPrice(dsSubject.DataSet.FieldByName('NGRG_CUMDATE').AsDateTime, dsSubject.DataSet.FieldByName('STOCKCODE').AsString);
      end;
      if cdsLuInstrumentStock.Locate('INSTRUMENT_ID',dsSubject.DataSet.FieldByName('STOCKID').AsInteger,[]) then
      begin
        dsSubject.DataSet.FieldByName('ISSUERID').AsInteger := cdsLuInstrumentStockISSUERID.AsInteger
      end;
    end;
  end;
end;

function TfrmCorpActStockDividen.GetClosingPrice(ACumDate: TDate;
  AStockCode: string): Double;
begin
  Result := 0;

  if (AStockCode <> '') and (not VarIsNullDate(ACumDate)) then
  begin
    cdsStockClosingPrice.Close;
    cdsStockClosingPrice.Params[0].AsDate := ACumDate;
    cdsStockClosingPrice.Params[1].AsString := AStockCode;
    cdsStockClosingPrice.Open;

    Result := cdsStockClosingPriceSTK_CLOS.AsFloat;
  end;
end;

end.
