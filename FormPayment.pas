unit FormPayment;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  Datasnap.DBClient, NClientDataset;

type
  TfrmPayment = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    edBankAccNo: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dsCashVoucherD: TDataSource;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwCashVoucherD: TcxGridDBBandedTableView;
    gvwCashVoucherDVOUCHERID: TcxGridDBBandedColumn;
    gvwCashVoucherDSEQID: TcxGridDBBandedColumn;
    gvwCashVoucherDTRANS_TYPE: TcxGridDBBandedColumn;
    gvwCashVoucherDLINKTYPE: TcxGridDBBandedColumn;
    gvwCashVoucherDLINKID: TcxGridDBBandedColumn;
    gvwCashVoucherDLINKNO: TcxGridDBBandedColumn;
    gvwCashVoucherDACCID: TcxGridDBBandedColumn;
    gvwCashVoucherDACCNO: TcxGridDBBandedColumn;
    gvwCashVoucherDACCNAME: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKID: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKACCNAME: TcxGridDBBandedColumn;
    gvwCashVoucherDCUST_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwCashVoucherDTRDDATE: TcxGridDBBandedColumn;
    gvwCashVoucherDDUEDATE: TcxGridDBBandedColumn;
    gvwCashVoucherDCASH_DESC: TcxGridDBBandedColumn;
    gvwCashVoucherDTRANS_AMT: TcxGridDBBandedColumn;
    gvwCashVoucherDCHARGESAMT: TcxGridDBBandedColumn;
    gvwCashVoucherDNETTYPE: TcxGridDBBandedColumn;
    gvwCashVoucherDAMOUNT: TcxGridDBBandedColumn;
    gvwCashVoucherDMODDA: TcxGridDBBandedColumn;
    gvwCashVoucherDMODUI: TcxGridDBBandedColumn;
    gvwCashVoucherDAPPDA: TcxGridDBBandedColumn;
    gvwCashVoucherDAPPUI: TcxGridDBBandedColumn;
    gvwCashVoucherDUNDER4Y: TcxGridDBBandedColumn;
    gvwCashVoucherDUNDER4YDA: TcxGridDBBandedColumn;
    gvwCashVoucherDNOTES4Y: TcxGridDBBandedColumn;
    gvwCashVoucherDISDEL: TcxGridDBBandedColumn;
    gvwCashVoucherDID: TcxGridDBBandedColumn;
    gvwCashVoucherDOVERDUE: TcxGridDBBandedColumn;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cdsCashVoucher_H: TNClientDataset;
    cdsCashVoucher_HVOUCHERID: TLargeintField;
    cdsCashVoucher_HVOUCHERNO: TStringField;
    cdsCashVoucher_HVOUCHERTYPE: TStringField;
    cdsCashVoucher_HENTRYDATE: TDateField;
    cdsCashVoucher_HVOUCHERDATE: TDateField;
    cdsCashVoucher_HACCID: TLargeintField;
    cdsCashVoucher_HACCNO: TStringField;
    cdsCashVoucher_HACCNAME: TStringField;
    cdsCashVoucher_HBROKER_BANKID: TIntegerField;
    cdsCashVoucher_HBROKER_BANKCODE: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNO: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNAME: TStringField;
    cdsCashVoucher_HBROKER_BANKACCBRANCH: TStringField;
    cdsCashVoucher_HBROKER_BANKPAYMENTID: TLargeintField;
    cdsCashVoucher_HCUST_BANKID: TIntegerField;
    cdsCashVoucher_HCUST_BANKCODE: TStringField;
    cdsCashVoucher_HCUST_BANKACCNO: TStringField;
    cdsCashVoucher_HCUST_BANKACCNAME: TStringField;
    cdsCashVoucher_HCUST_BANKACCBRANCH: TStringField;
    cdsCashVoucher_HVOUCHER_DESC: TStringField;
    cdsCashVoucher_HCCYCODE: TStringField;
    cdsCashVoucher_HEXRATE: TFloatField;
    cdsCashVoucher_HTRANSFERMODE: TStringField;
    cdsCashVoucher_HCHARGESAMT: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT: TFloatField;
    cdsCashVoucher_HSTAT: TStringField;
    cdsCashVoucher_HPOSTED: TStringField;
    cdsCashVoucher_HJRNID: TLargeintField;
    cdsCashVoucher_HMODDA: TDateTimeField;
    cdsCashVoucher_HMODUI: TStringField;
    cdsCashVoucher_HAPPDA: TDateTimeField;
    cdsCashVoucher_HAPPUI: TStringField;
    cdsCashVoucher_HUNDER4Y: TIntegerField;
    cdsCashVoucher_HUNDER4YDA: TDateTimeField;
    cdsCashVoucher_HNOTES4Y: TStringField;
    cdsCashVoucher_HISDEL: TIntegerField;
    cdsCashVoucher_HID: TLargeintField;
    cdsCashVoucher_HqryCashVoucher_D: TDataSetField;
    cdsCashVoucher_HBANK_REFERENCE: TStringField;
    cdsCashVoucher_HBANK_INSTRUCTION: TStringField;
    cdsCashVoucher_HCCYCODE_FX: TStringField;
    cdsCashVoucher_HCHARGESAMT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsCashVoucher_D: TNClientDataset;
    cdsCashVoucher_DVOUCHERID: TLargeintField;
    cdsCashVoucher_DSEQID: TLargeintField;
    cdsCashVoucher_DTRANS_TYPE: TStringField;
    cdsCashVoucher_DLINKTYPE: TStringField;
    cdsCashVoucher_DLINKID: TLargeintField;
    cdsCashVoucher_DLINKNO: TStringField;
    cdsCashVoucher_DACCID: TLargeintField;
    cdsCashVoucher_DACCNO: TStringField;
    cdsCashVoucher_DACCNAME: TStringField;
    cdsCashVoucher_DTRDDATE: TDateField;
    cdsCashVoucher_DDUEDATE: TDateField;
    cdsCashVoucher_DCASH_DESC: TStringField;
    cdsCashVoucher_DTRANS_AMT: TFloatField;
    cdsCashVoucher_DNETTYPE: TStringField;
    cdsCashVoucher_DAMOUNT: TFloatField;
    cdsCashVoucher_DMODDA: TDateTimeField;
    cdsCashVoucher_DMODUI: TStringField;
    cdsCashVoucher_DAPPDA: TDateTimeField;
    cdsCashVoucher_DAPPUI: TStringField;
    cdsCashVoucher_DUNDER4Y: TIntegerField;
    cdsCashVoucher_DUNDER4YDA: TDateTimeField;
    cdsCashVoucher_DNOTES4Y: TStringField;
    cdsCashVoucher_DISDEL: TIntegerField;
    cdsCashVoucher_DID: TLargeintField;
    cdsCashVoucher_DOVERDUE: TStringField;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FNetAmount: Double;
  public
    { Public declarations }
  end;

var
  frmPayment: TfrmPayment;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormPaymentList, FormReceiptList,
  FormBankPaymentList;

procedure TfrmPayment.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankAccount.Locate('ACCBANKID', dsSubject.DataSet.FieldByName('BROKER_BANKID').AsInteger, []) then
      dsSubject.DataSet.FieldByName('CCYCODE').AsString := cdsLuBankAccountCCYCODE.AsString;
  end;
end;

procedure TfrmPayment.FormShow(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankAccount.Locate('ACCBANKID', dsSubject.DataSet.FieldByName('BROKER_BANKID').AsInteger, []) then
      if dsSubject.DataSet.State in [dsEdit, dsInsert] then
        dsSubject.DataSet.FieldByName('CCYCODE').AsString := cdsLuBankAccountCCYCODE.AsString;
  end;

  FNetAmount := 0;
  dsCashVoucherD.DataSet.DisableControls;
  dsCashVoucherD.DataSet.First;
  while not dsCashVoucherD.DataSet.Eof do
  begin
    if dsCashVoucherD.DataSet.FieldByName('NETTYPE').AsString = 'B' then
      FNetAmount := FNetAmount + dsCashVoucherD.DataSet.FieldByName('AMOUNT').AsFloat
    else if dsCashVoucherD.DataSet.FieldByName('NETTYPE').AsString = 'S' then
      FNetAmount := FNetAmount - dsCashVoucherD.DataSet.FieldByName('AMOUNT').AsFloat;
    dsCashVoucherD.DataSet.Next;
  end;
  dsCashVoucherD.DataSet.First;
  dsCashVoucherD.DataSet.EnableControls;

  gvwCashVoucherD.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0;(#,##0);0', FNetAmount);
end;

end.
