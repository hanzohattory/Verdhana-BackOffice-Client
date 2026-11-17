unit FormCorpactHMETD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxLabel, cxCurrencyEdit, cxCalendar, cxMemo,
  Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, cxClasses;

type
  TfrmCorpActHMETD = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group15: TdxLayoutGroup;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    cxLabel5: TcxLabel;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group18: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBDateEdit8: TcxDBDateEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    cxDBDateEdit9: TcxDBDateEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    cxDBDateEdit10: TcxDBDateEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    cxDBDateEdit11: TcxDBDateEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    cxDBDateEdit12: TcxDBDateEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
    cxDBDateEdit13: TcxDBDateEdit;
    dxLayoutControl1Item31: TdxLayoutItem;
    cxDBDateEdit14: TcxDBDateEdit;
    dxLayoutControl1Item32: TdxLayoutItem;
    cxDBDateEdit15: TcxDBDateEdit;
    dxLayoutControl1Item33: TdxLayoutItem;
    cxDBDateEdit16: TcxDBDateEdit;
    dxLayoutControl1Item34: TdxLayoutItem;
    cxDBDateEdit17: TcxDBDateEdit;
    dxLayoutControl1Item35: TdxLayoutItem;
    dxLayoutControl1Group26: TdxLayoutGroup;
    dxLayoutControl1Group27: TdxLayoutGroup;
    cxDBDateEdit18: TcxDBDateEdit;
    dxLayoutControl1Item36: TdxLayoutItem;
    cxDBDateEdit19: TcxDBDateEdit;
    dxLayoutControl1Item37: TdxLayoutItem;
    cxDBDateEdit20: TcxDBDateEdit;
    dxLayoutControl1Item38: TdxLayoutItem;
    cxDBDateEdit21: TcxDBDateEdit;
    dxLayoutControl1Item39: TdxLayoutItem;
    cxDBDateEdit22: TcxDBDateEdit;
    dxLayoutControl1Item40: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item42: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item43: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item45: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item46: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group31: TdxLayoutGroup;
    dxLayoutControl1Group32: TdxLayoutGroup;
    dxLayoutControl1Group33: TdxLayoutGroup;
    dxLayoutControl1Group34: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item47: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item44: TdxLayoutItem;
    dxLayoutControl1Group30: TdxLayoutGroup;
    dxLayoutControl1Group22: TdxLayoutGroup;
    dxLayoutControl1Group25: TdxLayoutGroup;
    dxLayoutControl1Group24: TdxLayoutGroup;
    dxLayoutControl1Group37: TdxLayoutGroup;
    dxLayoutControl1Group38: TdxLayoutGroup;
    dxLayoutControl1Group39: TdxLayoutGroup;
    dxLayoutControl1Group28: TdxLayoutGroup;
    dxLayoutControl1Group40: TdxLayoutGroup;
    dxLayoutControl1Group41: TdxLayoutGroup;
    dxLayoutControl1Group19: TdxLayoutGroup;
    dxLayoutControl1Group42: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group43: TdxLayoutGroup;
    dxLayoutControl1Group23: TdxLayoutGroup;
    dxLayoutControl1Group35: TdxLayoutGroup;
    dxLayoutControl1Group21: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutControl1Group29: TdxLayoutGroup;
    dxLayoutControl1Group36: TdxLayoutGroup;
    dxLayoutControl1Group44: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpActHMETD: TfrmCorpActHMETD;

implementation

{$R *.dfm}

uses FormCorpactList, DataGlobal, DataLookup, FormCorpActInstrument;

procedure TfrmCorpActHMETD.btnOKClick(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsSubject.DataSet;
  if oDataSet.FieldByName('GENERATE_ENT').AsString = '1' then
    MessageDlg('Can Not Edit Entitled Corporate Action Announcement!', mtError, [mbOk], 0)
  else
    inherited;
end;

end.
