unit FormACS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxDBEdit, cxTextEdit, cxGroupBox, cxRadioGroup,
  cxCurrencyEdit, Datasnap.DBClient, NClientDataset, cxClasses,
  dxLayoutLookAndFeels;

type
  TfrmACS = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    txtCPAccName: TcxTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    cdsACSBoard: TNClientDataset;
    cdsACSBoardBOARDID: TLargeintField;
    cdsACSBoardBOARDCODE: TStringField;
    cdsACSBoardMARKETCODE: TStringField;
    cdsACSBoardBOARDDESC: TStringField;
    cdsACSBoardGLCD: TStringField;
    cdsACSBoardMARKET: TStringField;
    cdsACSBoardCPTYPE: TStringField;
    cdsACSBoardDUEBUYSTOCK: TIntegerField;
    cdsACSBoardDUESELLSTOCK: TIntegerField;
    cdsACSBoardDUEBUYCASH: TIntegerField;
    cdsACSBoardDUESELLCASH: TIntegerField;
    cdsACSBoardMODDA: TDateTimeField;
    cdsACSBoardMODUI: TStringField;
    cdsACSBoardAPPDA: TDateTimeField;
    cdsACSBoardAPPUI: TStringField;
    cdsACSBoardISDEL: TIntegerField;
    LargeintField1: TLargeintField;
    cdsACSBoardCPVALUE: TIntegerField;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxDBCurrencyEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox4Exit(Sender: TObject);
    procedure cxDBLookupComboBox8Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Counting;
    procedure GetStockCode;
    procedure GetAccCode;
  public
    { Public declarations }
  end;

var
  frmACS: TfrmACS;

implementation

{$R *.dfm}

uses DataGlobal, FormACSList, DataLookup;

procedure TfrmACS.Counting;
begin
  try
    dsSubject.DataSet.FieldByName('VALUE').AsFloat      := dsSubject.DataSet.FieldByName('PRICE').AsFloat * dsSubject.DataSet.FieldByName('QTY').AsFloat;
    dsSubject.DataSet.FieldByName('FEE_AMOUNT').AsFloat := dsSubject.DataSet.FieldByName('VALUE').AsFloat * dsSubject.DataSet.FieldByName('FEE_PERCENT').AsFloat / 100;
    dsSubject.DataSet.FieldByName('TOTAL_AMT').AsFloat  := dsSubject.DataSet.FieldByName('VALUE').AsFloat + dsSubject.DataSet.FieldByName('FEE_AMOUNT').AsFloat;
  except

  end;
end;

procedure TfrmACS.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
  inherited;
  Counting;
end;

procedure TfrmACS.cxDBCurrencyEdit2Exit(Sender: TObject);
begin
  inherited;
  Counting;
end;

procedure TfrmACS.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  GetAccCode;
end;

procedure TfrmACS.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  GetAccCode;
end;

procedure TfrmACS.cxDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
  GetStockCode;
end;

procedure TfrmACS.cxDBLookupComboBox4Exit(Sender: TObject);
begin
  inherited;
  GetStockCode;
end;

procedure TfrmACS.cxDBLookupComboBox8Exit(Sender: TObject);
begin
  inherited;
  cdsACSBoard.Close;
  cdsACSBoard.Params[0].AsString := dsSubject.DataSet.FieldByName('MARKETCODE').AsString;
  cdsACSBoard.Open;

  dsSubject.DataSet.FieldByName('CPACCID').AsInteger := cdsACSBoardCPVALUE.AsInteger;
  if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', dsSubject.DataSet.FieldByName('CPACCID').AsInteger, []) then
    txtCPAccName.Text := dmGlobal.IntDataLookup.cdsLuAccountACCNAME.AsString
  else
    txtCPAccName.Text := '';
end;

procedure TfrmACS.FormShow(Sender: TObject);
var
  sMarketCode: string;
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', dsSubject.DataSet.FieldByName('CPACCID').AsInteger, []) then
     txtCPAccName.Text := dmGlobal.IntDataLookup.cdsLuAccountACCNAME.AsString;
end;

procedure TfrmACS.GetAccCode;
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', dsSubject.DataSet.FieldByName('ACCID').AsInteger, []) then
      dsSubject.DataSet.FieldByName('ACCNO').AsString := dmGlobal.IntDataLookup.cdsLuAccountACCCODE.AsString;
  end;
end;

procedure TfrmACS.GetStockCode;
var
  sLocalCode: string;
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('INSTRUMENT_ID', dsSubject.DataSet.FieldByName('STOCKID').AsInteger, []) then
    begin
      dsSubject.DataSet.FieldByName('STOCKCODE').AsString := dmGlobal.IntDataLookup.cdsLuInstrumentAllINSTRUMENT_CODE.AsString;
      dsSubject.DataSet.FieldByName('CCYCODE').AsString   := dmGlobal.IntDataLookup.cdsLuInstrumentAllCCY.AsString;

      sLocalCode := dmGlobal.IntDataLookup.cdsLuInstrumentAllLOCALCODE.AsString;
    end;
  end;

  dsSubject.DataSet.FieldByName('PRICE').AsFloat := dmGlobal.RemoteServer.GetMaxClosePrice(dsSubject.DataSet.FieldByName('ACS_DATE').AsDateTime, 3, sLocalCode);
  Counting;
end;

end.
