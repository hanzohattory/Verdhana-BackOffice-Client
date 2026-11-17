unit FormCreateSettlementCashDep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxCurrencyEdit, cxDBEdit;

type
  TfrmCreateSettlementCashDep = class(TfrmEditor)
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
    txtCharge: TcxDBCurrencyEdit;
    LayoutControlItem6: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    LayoutControlItem7: TdxLayoutItem;
    LayoutControlGroup5: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure txtCCYExit(Sender: TObject);
    procedure txtExRateExit(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure txtChargeExit(Sender: TObject);
  private
    FProcessAmount: Double;
  public
    property ProcessAmount: Double read FProcessAmount write FProcessAmount;
  end;

var
  frmCreateSettlementCashDep: TfrmCreateSettlementCashDep;

implementation

{$R *.dfm}

uses DataGlobal, FormCashSettlementList, FormCreateSettlement,
  FormCreateSettlementReceive;

procedure TfrmCreateSettlementCashDep.cxDBCurrencyEdit1Exit(
  Sender: TObject);
var
  dChargeAmtOri, dFxOri,
  dChargeAmtAmt, dFxAmount: Double;
begin
  inherited;
  dChargeAmtOri := dsSubject.DataSet.FieldByName('CHARGES').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dChargeAmtAmt := dsSubject.DataSet.FieldByName('CHARGES').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;

  dFxOri    := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dFxAmount := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;

  dsSubject.DataSet.FieldByName('NETAMOUNT').AsFloat := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat - dsSubject.DataSet.FieldByName('CHARGES').AsFloat;
  dsSubject.DataSet.FieldByName('FXORI').AsFloat     := dFxOri - dChargeAmtOri;
  dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat  := dFxAmount - dChargeAmtAmt;
end;

procedure TfrmCreateSettlementCashDep.FormShow(Sender: TObject);
begin
  inherited;
  cxDBCurrencyEdit1.SetFocus;

  txtExRate.ParentColor         := not (txtCCY.Text <> 'IDR');
  txtExRate.Properties.ReadOnly := not (txtCCY.Text <> 'IDR');
end;

procedure TfrmCreateSettlementCashDep.txtCCYExit(Sender: TObject);
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

procedure TfrmCreateSettlementCashDep.txtChargeExit(Sender: TObject);
var
  dChargeAmtOri, dFxOri,
  dChargeAmtAmt, dFxAmount: Double;
begin
  inherited;
  dChargeAmtOri := dsSubject.DataSet.FieldByName('CHARGES').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dChargeAmtAmt := dsSubject.DataSet.FieldByName('CHARGES').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;

  dFxOri    := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dFxAmount := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;

  dsSubject.DataSet.FieldByName('NETAMOUNT').AsFloat := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat - dsSubject.DataSet.FieldByName('CHARGES').AsFloat;
  dsSubject.DataSet.FieldByName('FXORI').AsFloat     := dFxOri - dChargeAmtOri;
  dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat  := dFxAmount - dChargeAmtAmt;
end;

procedure TfrmCreateSettlementCashDep.txtExRateExit(Sender: TObject);
var
  dChargeAmtOri, dFxOri,
  dChargeAmtAmt, dFxAmount: Double;
begin
  inherited;
  dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat := dmGlobal.RoundFloatNumber(ProcessAmount / dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat, 2);

  dChargeAmtOri := dsSubject.DataSet.FieldByName('CHARGES').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dChargeAmtAmt := dsSubject.DataSet.FieldByName('CHARGES').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;

  dFxOri    := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('DEALEXRATE').AsFloat;
  dFxAmount := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat * dsSubject.DataSet.FieldByName('EXRATE').AsFloat;

  dsSubject.DataSet.FieldByName('NETAMOUNT').AsFloat := dsSubject.DataSet.FieldByName('DEPOSITAMT').AsFloat - dsSubject.DataSet.FieldByName('CHARGES').AsFloat;
  dsSubject.DataSet.FieldByName('FXORI').AsFloat     := dFxOri - dChargeAmtOri;
  dsSubject.DataSet.FieldByName('FXAMOUNT').AsFloat  := dFxAmount - dChargeAmtAmt;
end;

end.
