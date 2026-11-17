unit FormSplitOTCInstr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxCurrencyEdit,
  cxDBEdit, dxLayoutControl, Vcl.StdCtrls, Data.DB, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, cxImageComboBox, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  cxClasses;

type
  TfrmSplitOTCInstr = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnOk: TButton;
    Button2: TButton;
    dsOTCSplit: TDataSource;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cmbInstructionType: TcxDBComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    chkMultiCCY: TcxDBCheckBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    txtCCY: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    txtExRate: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    txtAmount: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cmbInstructionTypeExit(Sender: TObject);
    procedure txtExRateExit(Sender: TObject);
    procedure chkMultiCCYClick(Sender: TObject);
    procedure cxDBCurrencyEdit2Exit(Sender: TObject);
    procedure txtCCYPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    FOriginalQty,
    FOriginalAmt,
    FQty,
    FAmt,
    FSettleAmt,
    FSettleQty,
    FSisa: Double;
  public
    { Public declarations }
    property SettleAmt: Double read FSettleAmt write FSettleAmt;
    property SettleQty: Double read FSettleQty write FSettleQty;
    property OriginalQTy: Double read FOriginalQty write FOriginalQty;
    property OriginalAmt: Double read FOriginalAmt write FOriginalAmt;
  end;

var
  frmSplitOTCInstr: TfrmSplitOTCInstr;

implementation

{$R *.dfm}

uses FormOTCInstructionSplit, DataLookup, DataGlobal;

procedure TfrmSplitOTCInstr.cmbInstructionTypeExit(Sender: TObject);
var
  sInstructionType: string;
begin
  sInstructionType := dsOTCSplit.DataSet.FieldByName('INSTRUCTION_TYPE').AsString;

  if (sInstructionType = 'DFOP') or (sInstructionType = 'RFOP') then
    dsOTCSplit.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat := 0;
end;

procedure TfrmSplitOTCInstr.chkMultiCCYClick(Sender: TObject);
begin
  if chkMultiCCY.Checked then
  begin
    txtCCY.Enabled    := True;
    txtExRate.Enabled := True;
    txtAmount.Enabled := True;

    if dsOTCSplit.DataSet.FieldByName('SETTLE_SIDE').AsString = 'D' then
      cmbInstructionType.EditValue := 'DFOP'
    else if dsOTCSplit.DataSet.FieldByName('SETTLE_SIDE').AsString = 'R' then
      cmbInstructionType.EditValue := 'RFOP';

  end
  else
  begin
    txtCCY.Enabled    := False;
    txtExRate.Enabled := False;
    txtAmount.Enabled := False;

    if dsOTCSplit.DataSet.FieldByName('SETTLE_SIDE').AsString = 'D' then
      cmbInstructionType.EditValue := 'DVP'
    else if dsOTCSplit.DataSet.FieldByName('SETTLE_SIDE').AsString = 'R' then
      cmbInstructionType.EditValue := 'RVP';

    dsOTCSplit.DataSet.FieldByName('FOREIGN_CCYCODE').AsString   := '';
    dsOTCSplit.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat     := 0;
    dsOTCSplit.DataSet.FieldByName('FOREIGN_SETTTLEAMT').AsFloat := 0;
  end;
end;

procedure TfrmSplitOTCInstr.cxDBCurrencyEdit1Exit(Sender: TObject);
var
  sResult, dRound : Double;
begin
  sResult := FOriginalQty - dsOTCSplit.DataSet.FieldByName('QTY').AsFloat;
  if sResult < 0 then
  begin
    MessageDlg('Split quantity must be less than original qty', mtError, [mbOk], 0);
    btnOk.Enabled := false;
  end
  else
  begin
    dRound     := dsOTCSplit.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat * (dsOTCSplit.DataSet.FieldByName('QTY').AsFloat / FQty);
    FSettleAmt := Round(dRound);

    dsOTCSplit.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat := FSettleAmt;
    btnOk.Enabled := True;
  end;
end;

procedure TfrmSplitOTCInstr.cxDBCurrencyEdit2Exit(Sender: TObject);
begin
  if FSettleAmt <> dsOTCSplit.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat then
  begin
    dsOTCSplit.DataSet.FieldByName('SALDO').AsFloat       := FSettleAmt - dsOTCSplit.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat;
    dsOTCSplit.DataSet.FieldByName('SALDO_TYPE').AsString := 'R';
  end;
end;

procedure TfrmSplitOTCInstr.txtCCYPropertiesCloseUp(Sender: TObject);
begin
  dsOTCSplit.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat     := dmGlobal.RemoteServer.GetCCYRate(dsOTCSplit.DataSet.FieldByName('TRDDATE').AsDateTime, txtCCY.Text);
  dsOTCSplit.DataSet.FieldByName('FOREIGN_SETTTLEAMT').AsFloat := Round(dsOTCSplit.DataSet.FieldByName('ORIGINAL_AMT').AsFloat / dsOTCSplit.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat);
end;

procedure TfrmSplitOTCInstr.txtExRateExit(Sender: TObject);
begin
   dsOTCSplit.DataSet.FieldByName('FOREIGN_SETTTLEAMT').AsFloat := Round(dsOTCSplit.DataSet.FieldByName('ORIGINAL_AMT').AsFloat / dsOTCSplit.DataSet.FieldByName('FOREIGN_EXRATE').AsFloat);
end;

procedure TfrmSplitOTCInstr.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if dmGlobal.IntDataLookup.cdsLuCustody.Locate('CUSTODYCODE', dsOTCSplit.DataSet.FieldByName('COUNTER_CODE').AsString, []) then
    dsOTCSplit.DataSet.FieldByName('COUNTER_ACC').AsString := dmGlobal.IntDataLookup.cdsLuCustodyCUSTODYNAME.AsString;
end;

procedure TfrmSplitOTCInstr.FormShow(Sender: TObject);
var
  dTmpQTy, dTmpAmt: Double;
begin
  txtCCY.Enabled    := False;
  txtExRate.Enabled := False;
  txtAmount.Enabled := False;

  FQty := dsOTCSplit.DataSet.FieldByName('QTY').AsFloat;
  FAmt := dsOTCSplit.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat;
  FSettleAmt := dsOTCSplit.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat;

  if FQty <= 0 then
  begin
    MessageDlg('There is no quantity can be split', mtError, [mbOk], 0);
    btnOk.Enabled := false;
  end
  else
    btnOk.Enabled := True;

  cmbInstructionType.Properties.Items.Clear;
  if dsOTCSplit.DataSet.FieldByName('SETTLE_SIDE').AsString = 'D' then
  begin
    cmbInstructionType.Properties.Items.Add('DVP');
    cmbInstructionType.Properties.Items.Add('DFOP');
  end else if dsOTCSplit.DataSet.FieldByName('SETTLE_SIDE').AsString = 'R' then
  begin
    cmbInstructionType.Properties.Items.Add('RVP');
    cmbInstructionType.Properties.Items.Add('RFOP');
  end;

end;

end.
