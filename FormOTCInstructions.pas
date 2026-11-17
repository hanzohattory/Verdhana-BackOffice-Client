unit FormOTCInstructions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxDropDownEdit, cxImageComboBox, cxDBEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxCurrencyEdit, cxCheckBox, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxLayoutLookAndFeels, cxClasses;

type
  TfrmOTCInstructions = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cbSettleSide: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item8: TdxLayoutItem;
    cbInstr: TcxDBImageComboBox;
    cmbInstructionDeliver: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcSettleAmount: TdxLayoutItem;
    cmbPurpose: TcxDBLookupComboBox;
    txtPurposes: TdxLayoutItem;
    txtTradeReff: TcxDBTextEdit;
    txtTradeReffs: TdxLayoutItem;
    cmbSettleReason: TcxDBLookupComboBox;
    txtSettleReasons: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    txtConfirmWiths: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    txtForeignCCY: TcxDBLookupComboBox;
    dxLayoutControl1Item22: TdxLayoutItem;
    txtForeignExrate: TcxDBCurrencyEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    txtForeignAmount: TcxDBCurrencyEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    chkMultiCCY: TcxDBCheckBox;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cbInstrExit(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxDBLookupComboBox5PropertiesCloseUp(Sender: TObject);
    procedure cxDBCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOTCInstructions: TfrmOTCInstructions;

implementation

{$R *.dfm}

uses FormOTCInstruction, DataGlobal, DataLookup;

procedure TfrmOTCInstructions.btnOKClick(Sender: TObject);
var
  bContinue: Boolean;
  bSettleAmount,
  bSaldo_Type,
  bBankCust: Boolean;
  sMessage: string;
  oSubject: TDataSet;
begin
  bContinue := False;
  if (dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString = 'DVP') and (dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat = 0) then
    MessageDlg('Amount must have value', mtError, [mbOk], 0)
  else
  begin
    bSettleAmount := (dsSubject.DataSet.FieldByName('SALDO').AsFloat <> 0);
    bSaldo_Type   := (dsSubject.DataSet.FieldByName('SALDO_TYPE').AsString <> '');
    bBankCust     := (dsSubject.DataSet.FieldByName('COUNTER_CODE').AsString <> '');

    if bSettleAmount then
    begin
      if bSaldo_Type then
      begin
        if bBankCust then
          bContinue := True
        else
          MessageDlg('Bank Custody must not empty', mtError, [mbOK], 0);
      end
      else
        MessageDlg('Saldo Type must not empty', mtError, [mbOK], 0);
    end
    else
      bContinue := True;
  end;

  if bContinue then
  begin
    oSubject := dsSubject.DataSet;
    sMessage := dmGlobal.RemoteServer.OTCForUpdate(oSubject.FieldByName('CUSTODY_INSTRID').AsLargeInt, oSubject.FieldByName('QTY').AsFloat,
                oSubject.FieldByName('ORIGINAL_AMT').AsFloat, oSubject.FieldByName('CCY').AsString, oSubject.FieldByName('SETTLE_AMOUNT').AsFloat,
                Round(oSubject.FieldByName('SALDO').AsFloat), oSubject.FieldByName('SALDO_TYPE').AsString, oSubject.FieldByName('ISMULTICCY').AsString,
                oSubject.FieldByName('FOREIGN_CCYCODE').AsString, oSubject.FieldByName('FOREIGN_EXRATE').AsFloat, oSubject.FieldByName('FOREIGN_SETTTLEAMT').AsFloat,
                oSubject.FieldByName('INSTRUCTION_TYPE').AsString, oSubject.FieldByName('COUNTER_CODE').AsString);

    inherited;
  end;

end;

procedure TfrmOTCInstructions.cbInstrExit(Sender: TObject);
var
  sInstructionType: string;
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    sInstructionType := dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString;
    if (sInstructionType = 'DFOP') or (sInstructionType = 'RFOP') then
    begin
      cmbPurpose.Enabled      := True;
      cmbSettleReason.Enabled := True;
      txtTradeReff.Enabled    := True;

//      dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat := 0;
//      dsSubject.DataSet.FieldByName('SALDO').AsFloat := 0;//Request By Irvan 20160818
    end
    //Request By Irvan 20160818
    else
    begin
//      dsSubject.DataSet.FieldByName('ISMULTICCY').AsString := '0';
      txtForeignCCY.Enabled    := False;
      txtForeignExRate.Enabled := False;
      txtForeignAmount.Enabled := False;

      cmbPurpose.Enabled      := False;
      cmbSettleReason.Enabled := False;
      txtTradeReff.Enabled    := False;


      dsSubject.DataSet.FieldByName('PURPOSE').AsString       := '';
      dsSubject.DataSet.FieldByName('TRADE_REF').AsString     := '';
      dsSubject.DataSet.FieldByName('SETTLE_REASON').AsString := '';


//      dsSubject.DataSet.FieldByName('FOREIGN_CCYCODE').AsString   := '';
//      dsSubject.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat     := 0;
//      dsSubject.DataSet.FieldByName('FOREIGN_SETTTLEAMT').AsFloat := 0;
//      dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat := dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat;
//      dsSubject.DataSet.FieldByName('SALDO').AsFloat := 0;
    end;

    //Request By Irvan 20160818
    lcSettleAmount.Enabled := not ((sInstructionType = 'DFOP') or (sInstructionType = 'RFOP'));
  end;
end;

procedure TfrmOTCInstructions.cxDBCheckBox1Click(Sender: TObject);
begin
  inherited;
  if chkMultiCCY.Checked then
  begin
    txtForeignCCY.Enabled    := True;
    txtForeignExrate.Enabled := True;
    txtForeignAmount.Enabled := True;

    if dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString = 'RVP' then
      dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString := 'RFOP'
    else if dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString = 'DVP' then
      dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString := 'DFOP';

    dsSubject.DataSet.FieldByName('SALDO').AsFloat := 0;

    //Request By Irvan 20160818
    dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat := 0;
    lcSettleAmount.Enabled := not ((dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString = 'DFOP')
      or (dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString = 'RFOP'));
  end
  else
  begin
    txtForeignCCY.Enabled    := False;
    txtForeignExRate.Enabled := False;
    txtForeignAmount.Enabled := False;

    dsSubject.DataSet.FieldByName('FOREIGN_CCYCODE').AsString   := '';
    dsSubject.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat     := 0;
    dsSubject.DataSet.FieldByName('FOREIGN_SETTTLEAMT').AsFloat := 0;

    if dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString = 'RFOP' then
      dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString := 'RVP'
    else if dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString = 'DFOP' then
      dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString := 'DVP';

    dsSubject.DataSet.FieldByName('SALDO').AsFloat := Round(dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat - dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat);
  end;
end;

procedure TfrmOTCInstructions.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if not chkMultiCCY.Checked then
      dsSubject.DataSet.FieldByName('SALDO').AsFloat := Round(dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat - dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat);
  end;
end;

procedure TfrmOTCInstructions.cxDBLookupComboBox1Exit(Sender: TObject);
var
  sDueDate: TDateTime;
  sCCY, sBaseCCY: string;
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    sDueDate := dsSubject.DataSet.FieldByName('VALUEDATE').AsDateTime;
//    sBaseCCY := dsSubject.DataSet.FieldByName('BASE_CCYCODE').AsString;
//    sCCY     := dsSubject.DataSet.FieldByName('SETTLE_CCYCODE').AsString;

//    dsSubject.DataSet.FieldByName('SETTLE_EXRATE').AsFloat := dmGlobal.RemoteServer.GetCCYRate(sDueDate, sBaseCCY, sCCY);

    if dsSubject.DataSet.FieldByName('CCY').AsString <> 'IDR' then
    begin
      dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat     := 0;
      dsSubject.DataSet.FieldByName('INSTRUCTION_TYPE').AsString := 'DFOP'
    end;
  end;
end;

procedure TfrmOTCInstructions.cxDBLookupComboBox5PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  dsSubject.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat := dmGlobal.RemoteServer.GetCCYRate(dsSubject.DataSet.FieldByName('TRDDATE').AsDateTime, txtForeignCCY.Text);
  dsSubject.DataSet.FieldByName('FOREIGN_SETTTLEAMT').AsFloat := Round(dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat / dsSubject.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat);
end;

procedure TfrmOTCInstructions.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('SETTLE_SIDE').AsString = 'D' then
  begin
    cbInstr.Properties.Items.Items[0].Description := 'DFOP';
    cbInstr.Properties.Items.Items[0].Value       := 'DFOP';
    cbInstr.Properties.Items.Items[1].Description := 'DVP';
    cbInstr.Properties.Items.Items[1].Value       := 'DVP';
  end
  else if dsSubject.DataSet.FieldByName('SETTLE_SIDE').AsString = 'R' then
  begin
    cbInstr.Properties.Items.Items[0].Description := 'RFOP';
    cbInstr.Properties.Items.Items[0].Value       := 'RFOP';
    cbInstr.Properties.Items.Items[1].Description := 'RVP';
    cbInstr.Properties.Items.Items[1].Value       := 'RVP';
  end;

  txtForeignCCY.Enabled    := dsSubject.DataSet.FieldByName('ISMULTICCY').AsString = '1';
  txtForeignExRate.Enabled := dsSubject.DataSet.FieldByName('ISMULTICCY').AsString = '1';
  txtForeignAmount.Enabled := dsSubject.DataSet.FieldByName('ISMULTICCY').AsString = '1';
end;

end.
