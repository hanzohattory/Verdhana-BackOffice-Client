unit FormSettleInstr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, dxStatusBar, Data.DB, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo;

type
  TfrmSettleInstr = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dsSubject: TDataSource;
    StatusBar: TdxStatusBar;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    txtCCY: TcxDBLookupComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    txtInstType: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item19: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtCCYPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettleInstr: TfrmSettleInstr;

implementation

{$R *.dfm}

uses FormSettleInstrList, DataGlobal, DataLookup;

procedure TfrmSettleInstr.btnOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmSettleInstr.cxDBLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  dsSubject.DataSet.FieldByName('TRANSFER_MODE').AsString := txtInstType.EditValue;
end;

procedure TfrmSettleInstr.FormShow(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstructionTypes.Filtered := False;
    cdsLuInstructionTypes.Filter   := 'CASH_STOCK = '+QuotedStr(dsSubject.DataSet.FieldByName('CASH_STOCK').AsString);
    cdsLuInstructionTypes.Filtered := True;
  end;
end;

procedure TfrmSettleInstr.txtCCYPropertiesCloseUp(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuExchangeRate.Locate('CCYCODE', txtCCY.EditValue, []) then
    begin
      dsSubject.DataSet.FieldByName('SETTLE_EXRATE').AsFloat := cdsLuExchangeRateCCYRATE.AsFloat;

      dsSubject.DataSet.FieldByName('SETTLE_NETAMT').AsFloat :=
         dsSubject.DataSet.FieldByName('BASE_NETAMT').AsFloat /
         dsSubject.DataSet.FieldByName('SETTLE_EXRATE').AsFloat;
    end;
  end;
end;

end.
