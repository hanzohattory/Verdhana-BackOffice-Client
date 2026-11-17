unit FormCorpactCashDividen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxCalendar, cxMemo, cxClasses,
  dxLayoutLookAndFeels;

type
  TfrmCorpActCashDividen = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cmbStockCode: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
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
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    lcLocalDividen: TdxLayoutGroup;
    lcForeignDividen: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpActCashDividen: TfrmCorpActCashDividen;

implementation

{$R *.dfm}

uses FormCorpactList, DataGlobal;

procedure TfrmCorpActCashDividen.btnOKClick(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  oDataSet := dsSubject.DataSet;
  if oDataSet.FieldByName('GENERATE_ENT').AsString = '1' then
    MessageDlg('Can Not Edit Entitled Corporate Action Announcement!', mtError, [mbOk], 0)
  else
    inherited;
end;

procedure TfrmCorpActCashDividen.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
  begin
    dsSubject.DataSet.FieldByName('BROKER_ACCBANKID').AsInteger := dmGlobal.RemoteServer.GetGlobalParamInteger('211');
    dsSubject.DataSet.FieldByName('LOCAL_TAX').AsFloat          := dmGlobal.RemoteServer.GetGlobalParamFloat('212');
    dsSubject.DataSet.FieldByName('FOR_TAX').AsFloat            := dmGlobal.RemoteServer.GetGlobalParamFloat('213');
  end
  else if dsSubject.DataSet.State in [dsEdit] then
    cmbStockCode.Enabled := False;
end;

end.
