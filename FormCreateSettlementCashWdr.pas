unit FormCreateSettlementCashWdr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxCurrencyEdit, cxDBEdit, cxImageComboBox,
  Datasnap.DBClient, NClientDataset;

type
  TfrmCreateSettlementCashWdr = class(TfrmEditor)
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    LayoutControlItem1: TdxLayoutItem;
    txtCCY: TcxDBLookupComboBox;
    LayoutControlItem2: TdxLayoutItem;
    txtExRate: TcxDBCurrencyEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    LayoutControlItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    lgBrokerBank: TdxLayoutGroup;
    LayoutControlGroup1: TdxLayoutGroup;
    LayoutControlGroup3: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    LayoutControlItem5: TdxLayoutItem;
    dsLuBrokerBank: TDataSource;
    dsCashVoucherH: TDataSource;
    dsLuCustBank: TDataSource;
    LayoutControlGroup2: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    LayoutControlItem6: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem7: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem8: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem9: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    LayoutControlItem10: TdxLayoutItem;
    LayoutControlGroup6: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    LayoutControlItem11: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    LayoutControlItem12: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    LayoutControlItem13: TdxLayoutItem;
    LayoutControlGroup7: TdxLayoutGroup;
    cdsBankCharges: TNClientDataset;
    cdsBankChargesBNCODE: TStringField;
    cdsBankChargesBNCHGTYPE: TStringField;
    cdsBankChargesCCYCODE: TStringField;
    cdsBankChargesCHARGE_AMT: TFloatField;
    cdsBankChargesCHARGE_MINTRANS: TFloatField;
    cdsBankChargesCHARGE_MAXTRANS: TFloatField;
    cdsBankChargesMODDA: TDateTimeField;
    cdsBankChargesMODUI: TStringField;
    cdsBankChargesAPPDA: TDateTimeField;
    cdsBankChargesAPPUI: TStringField;
    cdsBankChargesISDEL: TIntegerField;
    cdsBankChargesID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure txtCCYExit(Sender: TObject);
    procedure txtExRateExit(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
  private
    FProcessAmount: Double;

    procedure CheckBankCharge;
  public
    property ProcessAmount: Double read FProcessAmount write FProcessAmount;
  end;

var
  frmCreateSettlementCashWdr: TfrmCreateSettlementCashWdr;

implementation

{$R *.dfm}

uses DataGlobal, FormCashSettlementList, FormCreateSettlement,
  FormCreateSettlementPayment;

procedure TfrmCreateSettlementCashWdr.CheckBankCharge;
begin
  if (not dsCashVoucherH.DataSet.FieldByName('BROKER_BANKCODE').IsNull) and
     (not dsCashVoucherH.DataSet.FieldByName('CUST_BANKCODE').IsNull) and
     (not dsCashVoucherH.DataSet.FieldByName('CCYCODE').IsNull) then
  begin
    if (dsCashVoucherH.DataSet.FieldByName('BROKER_BANKCODE').AsString = dsCashVoucherH.DataSet.FieldByName('CUST_BANKCODE').AsString) then
    begin
      dsSubject.DataSet.FieldByName('CHARGESAMT').AsFloat    := 0;
      dsSubject.DataSet.FieldByName('TRANSFERMODE').AsString := 'OB';
      dsSubject.DataSet.FieldByName('TRANSTYPE').AsString    := 'B';
    end
    else
    begin
      cdsBankCharges.Close;
      cdsBankCharges.Params[0].AsString := dsCashVoucherH.DataSet.FieldByName('BROKER_BANKCODE').AsString;
      cdsBankCharges.Params[1].AsString := dsCashVoucherH.DataSet.FieldByName('CCYCODE').AsString;

      if dsCashVoucherH.DataSet.FieldByName('TRANSFER_AMT').AsFloat < 0 then
        cdsBankCharges.Params[2].AsFloat := dsCashVoucherH.DataSet.FieldByName('TRANSFER_AMT').AsFloat * -1
      else
        cdsBankCharges.Params[2].AsFloat := dsCashVoucherH.DataSet.FieldByName('TRANSFER_AMT').AsFloat;
      cdsBankCharges.Open;

      if not cdsBankCharges.IsEmpty then
      begin
        cdsBankCharges.First;
        dsSubject.DataSet.FieldByName('CHARGESAMT').AsFloat    := cdsBankChargesCHARGE_AMT.AsFloat;
        dsSubject.DataSet.FieldByName('TRANSFERMODE').AsString := cdsBankChargesBNCHGTYPE.AsString;
        dsSubject.DataSet.FieldByName('TRANSTYPE').AsString    := 'R';
      end;
    end;
  end;
end;

procedure TfrmCreateSettlementCashWdr.cxDBCurrencyEdit1Exit(
  Sender: TObject);
begin
  inherited;
  dsSubject.DataSet.FieldByName('FXORI').AsFloat    := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dsSubject.DataSet.FieldByName('FXORI').AsFloat    := dsSubject.DataSet.FieldByName('FXORI').AsFloat + dsSubject.DataSet.FieldByName('CHARGESAMT').AsFloat;
  dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;
  dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat := dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat + dsSubject.DataSet.FieldByName('CHARGESAMT').AsFloat;
end;

procedure TfrmCreateSettlementCashWdr.cxDBLookupComboBox1Exit(
  Sender: TObject);
begin
  inherited;
  CheckBankCharge;
end;

procedure TfrmCreateSettlementCashWdr.cxDBLookupComboBox2Exit(
  Sender: TObject);
begin
  inherited;
  CheckBankCharge;
end;

procedure TfrmCreateSettlementCashWdr.FormShow(Sender: TObject);
begin
  inherited;
  cxDBCurrencyEdit1.SetFocus;

  txtExRate.ParentColor         := not (txtCCY.Text <> 'IDR');
  txtExRate.Properties.ReadOnly := not (txtCCY.Text <> 'IDR');
end;

procedure TfrmCreateSettlementCashWdr.txtCCYExit(Sender: TObject);
begin
  inherited;
  txtExRate.ParentColor         := not (txtCCY.Text <> 'IDR');
  txtExRate.Properties.ReadOnly := not (txtCCY.Text <> 'IDR');

  dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat :=  dmGlobal.RoundFloatNumber(dsSubject.DataSet.FieldByName('FXORI').AsFloat / dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat, 2);
  dsSubject.DataSet.FieldByName('FXORI').AsFloat      := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat   := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;

  dsLuBrokerBank.DataSet.Filter   := 'CCYCODE = '+QuotedStr(txtCCY.Text);
  dsLuBrokerBank.DataSet.Filtered := True;

  if not dsLuBrokerBank.DataSet.IsEmpty then
  begin
    if not dsLuBrokerBank.DataSet.Locate('ACCBANKID', dsCashVoucherH.DataSet.FieldByName('BROKER_BANKID').AsInteger, []) then
    begin
      if not (dsCashVoucherH.DataSet.State in dsEditModes) then
        dsCashVoucherH.DataSet.Edit;
      dsCashVoucherH.DataSet.FieldByName('BROKER_BANKID').AsInteger := dsLuBrokerBank.DataSet.FieldByName('ACCBANKID').AsInteger;
    end;
  end;
end;

procedure TfrmCreateSettlementCashWdr.txtExRateExit(Sender: TObject);
begin
  inherited;
  dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat := dmGlobal.RoundFloatNumber(ProcessAmount / dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat, 2);
  dsSubject.DataSet.FieldByName('FXORI').AsFloat      := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat   := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;
end;

end.
