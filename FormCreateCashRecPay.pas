unit FormCreateCashRecPay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxMaskEdit, cxCalendar, cxTextEdit,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmCreateCashRecPay = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cdsCashVoucher_H: TNClientDataset;
    cdsCashVoucher_D: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtAccNo: TcxDBButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    lyBeneficiary: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dsSubject: TDataSource;
    dsCashVoucherD: TDataSource;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cdsAccountBankRDN: TNClientDataset;
    cdsAccountBankRDNACCBANKID: TIntegerField;
    cdsAccountBankRDNACCBANKCODE: TStringField;
    cdsAccountBankRDNCCYCODE: TStringField;
    cdsAccountBankRDNACCID: TIntegerField;
    cdsAccountBankRDNBNCODE: TStringField;
    cdsAccountBankRDNBANKACCNO: TStringField;
    cdsAccountBankRDNBANKACCNAME: TStringField;
    cdsAccountBankRDNBANKBRANCH: TStringField;
    cdsAccountBankRDNISRDN: TStringField;
    cdsAccountBankRDNBANKTYPE: TStringField;
    cdsAccountBankRDNBNCHGSTYPE: TStringField;
    cdsAccountBankRDNACTLED_SEQID: TIntegerField;
    cdsAccountBankRDNCBEST_CODE: TStringField;
    cdsAccountBankRDNBANK_DEFAULT: TStringField;
    cdsAccountBankRDNSTAT: TStringField;
    cdsLuBrokerBank: TNClientDataset;
    cdsLuBrokerBankACCBANKID: TIntegerField;
    cdsLuBrokerBankACCID: TIntegerField;
    cdsLuBrokerBankBNCODE: TStringField;
    cdsLuBrokerBankBANKACCNO: TStringField;
    cdsLuBrokerBankBANKACCNAME: TStringField;
    cdsLuBrokerBankBANKBRANCH: TStringField;
    cdsLuBrokerBankACTLED_SEQID: TIntegerField;
    cdsLuBrokerBankISRDN: TStringField;
    cdsLuBrokerBankACCBANKCODE: TStringField;
    cdsLuBrokerBankCCYCODE: TStringField;
    cdsLuCustBank: TNClientDataset;
    cdsLuCustBankACCBANKID: TIntegerField;
    cdsLuCustBankACCID: TIntegerField;
    cdsLuCustBankBNCODE: TStringField;
    cdsLuCustBankBANKACCNO: TStringField;
    cdsLuCustBankBANKACCNAME: TStringField;
    cdsLuCustBankBANKBRANCH: TStringField;
    cdsLuCustBankACTLED_SEQID: TIntegerField;
    cdsLuCustBankISRDN: TStringField;
    cdsLuCustBankACCBANKCODE: TStringField;
    cdsLuCustBankCCYCODE: TStringField;
    dsLuCustBank: TDataSource;
    dsLuBrokerBank: TDataSource;
    cdsCashVoucher_HVOUCHERID: TLargeintField;
    cdsCashVoucher_HVOUCHERNO: TStringField;
    cdsCashVoucher_HVOUCHERTYPE: TStringField;
    cdsCashVoucher_HENTRYDATE: TDateField;
    cdsCashVoucher_HVOUCHERDATE: TDateField;
    cdsCashVoucher_HACCSOPID: TLargeintField;
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
    cdsCashVoucher_HBANK_REFERENCE: TStringField;
    cdsCashVoucher_HBANK_INSTRUCTION: TStringField;
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
    cdsCashVoucher_HCCYCODE_FX: TStringField;
    cdsCashVoucher_HCHARGESAMT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsCashVoucher_HDEAL_EXRATE: TFloatField;
    cdsCashVoucher_HTRANSTYPE: TStringField;
    cdsCashVoucher_HTRANSFER_AMT: TFloatField;
    cdsCashVoucher_HqryCashVoucher_D: TDataSetField;
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
    cdsCashVoucher_DCCYCODE: TStringField;
    cdsCashVoucher_DDC: TStringField;
    cdsCashVoucher_DEXRATE: TFloatField;
    cdsCashVoucher_DFXAMOUNT: TFloatField;
    cdsCashVoucher_HMANUAL_VOUCHER: TStringField;
    cdsCashPosition: TNClientDataset;
    cdsCashPositionACCID: TLargeintField;
    cdsCashPositionACCNO: TStringField;
    cdsCashPositionACCNAME: TStringField;
    cdsCashPositionCCY: TStringField;
    cdsCashPositionCashOnHand: TFloatField;
    cdsCashPositionCashOnHold: TFloatField;
    cdsCashPositionARAmt: TFloatField;
    cdsCashPositionApAmt: TFloatField;
    cdsCashPositionNetARAP: TFloatField;
    cdsCashPositionCashPosition: TFloatField;
    cdsCashPositionSAVEKEEP: TStringField;
    cdsCashPositionBuyAmount: TFloatField;
    cdsCashPositionAvCashAmount: TFloatField;
    cdsCashPositionCASHOUTS: TFloatField;
    cdsCashPositionCASH_QQ: TFloatField;
    cdsCashPositionCASH_SUBACC: TFloatField;
    cdsCashPositionACCRUED_INTEREST: TFloatField;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cdsRDNBankAccount: TNClientDataset;
    cdsRDNBankAccountACCBANKID: TIntegerField;
    cdsRDNBankAccountACCBANKCODE: TStringField;
    cdsRDNBankAccountCCYCODE: TStringField;
    cdsRDNBankAccountACCID: TIntegerField;
    cdsRDNBankAccountBNCODE: TStringField;
    cdsRDNBankAccountBANKACCNO: TStringField;
    cdsRDNBankAccountBANKACCNAME: TStringField;
    cdsRDNBankAccountBANKBRANCH: TStringField;
    cdsRDNBankAccountISRDN: TStringField;
    cdsRDNBankAccountBANKTYPE: TStringField;
    cdsRDNBankAccountBNCHGSTYPE: TStringField;
    cdsRDNBankAccountACTLED_SEQID: TIntegerField;
    cdsRDNBankAccountCBEST_CODE: TStringField;
    cdsRDNBankAccountBANK_DEFAULT: TStringField;
    procedure cdsCashVoucher_HNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure cdsCashVoucher_HCCYCODEChange(Sender: TField);
    procedure cdsCashVoucher_HACCIDChange(Sender: TField);
    procedure cdsCashVoucher_HBROKER_BANKIDChange(Sender: TField);
    procedure cdsCashVoucher_HTOTAL_AMOUNTChange(Sender: TField);
    procedure cdsCashVoucher_HCUST_BANKIDChange(Sender: TField);
  private
    FVoucherID: Integer;
    FCreateCash: string;
    FBuySell: string;
    FTransType: string;
    FEdit: Boolean;
    FAccCode: string;
    FAccID: Integer;
    FAccName: string;
    FACCY: string;
    FAmount: Double;
    FChangeAcc: Boolean;
    FDC: string;
    FCashQQ: Double;
    { Private declarations }
  public
    property AccID : Integer read FAccID write FAccID;
    property AccName : string read FAccName write FAccName;
    property AccCode : string read FAccCode write FAccCode;
    property ACCY : string read FACCY write FACCY;
    property Amount : Double read FAmount write FAmount;

    property VoucherID: Integer read FVoucherID write FVoucherID;
    property CreateCash: string read FCreateCash write FCreateCash;
    property BuySell: string read FBuySell write FBuySell;
    property TransType: string read FTransType write FTransType;
    property ChangeAcc: Boolean read FChangeAcc write FChangeAcc;
    property DC: string read FDC write FDC;
    property CashQQ: Double read FCashQQ write FCashQQ;
  end;

var
  frmCreateCashRecPay: TfrmCreateCashRecPay;

implementation

{$R *.dfm}

uses DataGlobal, FormBankPaymentList, FormBankReceiveList, FormLuAccount;

procedure TfrmCreateCashRecPay.btnCancelClick(Sender: TObject);
begin
  cdsCashVoucher_H.Cancel;
end;

procedure TfrmCreateCashRecPay.btnOKClick(Sender: TObject);
var
  bCon : Boolean;
  sMsg : string;
begin
  if messagedlg('Are you sure posting this voucher?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if cdsCashVoucher_H.State in dsEditModes then
    begin
      bCon := True;

      if cdsCashVoucher_HTOTAL_AMOUNT.AsFloat < 0 then
      begin
        bCon := False;
        ShowMessage('Amount can not minus');
      end;

      cdsCashVoucher_HCCYCODE_FX.AsString     := dmGlobal.RemoteServer.GetLocalCCY;
      cdsCashVoucher_HMODDA.AsDateTime        := cdsCashVoucher_HVOUCHERDATE.AsDateTime;
      cdsCashVoucher_HMODUI.AsString          := dmGlobal.UserID;
      cdsCashVoucher_HISDEL.AsInteger         := 0;
      cdsCashVoucher_HID.AsLargeInt           := dmGlobal.RemoteServer.GetSeq('main.B_CASH_VOUCHER_H');
      cdsCashVoucher_HTRANSFER_AMT.AsFloat    := cdsCashVoucher_HTOTAL_AMOUNT.AsFloat;
      cdsCashVoucher_HMANUAL_VOUCHER.AsString := '1';
      if FCreateCash = 'P' then
        cdsCashVoucher_HVOUCHER_DESC.AsString   := dmGlobal.BankDefDesc + cdsCashVoucher_HVOUCHER_DESC.AsString;

      if FEdit then
      begin
        if MessageDlg('Save changes ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          bCon := False;
      end;

      if bCon then
      begin
        if FCreateCash = 'P' then
        begin
          if FCashQQ >= cdsCashVoucher_HTOTAL_AMOUNT.AsFloat then
            ModalResult := mrOk
          else
          begin
            MessageDlg('Insufficient cash qq', mtError, [mbOk], 0);
            ModalResult := mrNone;
          end;
        end
        else
          ModalResult := mrOk;
      end;
    end;

    if ModalResult = mrOk then
    begin
      if FCreateCash = 'P' then
        dmGlobal.RemoteServer.CreateBankPaymentReceive(cdsCashVoucher_HVOUCHERDATE.AsDateTime, cdsCashVoucher_HVOUCHERTYPE.AsString,
          '0', cdsCashVoucher_HACCID.AsLargeInt, cdsCashVoucher_HBROKER_BANKID.AsLargeInt, cdsCashVoucher_HCUST_BANKID.AsLargeInt,
          cdsCashVoucher_HVOUCHER_DESC.AsString, cdsCashVoucher_HCCYCODE.AsString, cdsCashVoucher_HEXRATE.AsFloat, cdsCashVoucher_HTOTAL_AMOUNT.AsFloat, sMsg)
      else
        dmGlobal.RemoteServer.CreateBankPaymentReceive(cdsCashVoucher_HVOUCHERDATE.AsDateTime, cdsCashVoucher_HVOUCHERTYPE.AsString,
          '1', cdsCashVoucher_HACCID.AsLargeInt, cdsCashVoucher_HBROKER_BANKID.AsLargeInt, cdsCashVoucher_HCUST_BANKID.AsLargeInt,
          cdsCashVoucher_HVOUCHER_DESC.AsString, cdsCashVoucher_HCCYCODE.AsString, cdsCashVoucher_HEXRATE.AsFloat, cdsCashVoucher_HTOTAL_AMOUNT.AsFloat, sMsg);
      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TfrmCreateCashRecPay.cdsCashVoucher_HACCIDChange(Sender: TField);
begin
 if cdsCashVoucher_H.State in dsEditModes then
  begin
    cdsAccountBankRDN.Close;
    cdsAccountBankRDN.Params[0].AsInteger := cdsCashVoucher_HACCID.AsInteger;
    cdsAccountBankRDN.Open;

    cdsLuBrokerBank.Close;
    cdsLuBrokerBank.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBrokerBank.Open;

    cdsLuCustBank.Close;
    cdsLuCustBank.Params[0].AsInteger := cdsCashVoucher_HACCID.AsInteger;
    cdsLuCustBank.Open;

    cdsRDNBankAccount.Close;
    cdsRDNBankAccount.Params[0].AsInteger := cdsCashVoucher_HACCID.AsInteger;
    cdsRDNBankAccount.Open;

    cdsCashVoucher_HCCYCODE.AsString              := '';
    cdsCashVoucher_HBROKER_BANKCODE.AsString      := '';
    cdsCashVoucher_HBROKER_BANKACCNO.AsString     := '';
    cdsCashVoucher_HBROKER_BANKACCNAME.AsString   := '';
    cdsCashVoucher_HBROKER_BANKACCBRANCH.AsString := '';

    cdsCashVoucher_HCUST_BANKCODE.AsString      := '';
    cdsCashVoucher_HCUST_BANKACCNO.AsString     := '';
    cdsCashVoucher_HCUST_BANKACCNAME.AsString   := '';
    cdsCashVoucher_HCUST_BANKACCBRANCH.AsString := '';

    cdsCashVoucher_HBROKER_BANKID.AsInteger       := cdsLuBrokerBankACCBANKID.AsInteger;
    cdsCashVoucher_HCCYCODE.AsString              := cdsLuBrokerBankCCYCODE.AsString;
    cdsCashVoucher_HBROKER_BANKCODE.AsString      := cdsLuBrokerBankBNCODE.AsString;
    cdsCashVoucher_HBROKER_BANKACCNO.AsString     := cdsLuBrokerBankBANKACCNO.AsString;
    cdsCashVoucher_HBROKER_BANKACCNAME.AsString   := cdsLuBrokerBankBANKACCNAME.AsString;
    cdsCashVoucher_HBROKER_BANKACCBRANCH.AsString := cdsLuBrokerBankBANKBRANCH.AsString;

    if not cdsRDNBankAccount.IsEmpty then
    begin
      cdsCashVoucher_HCUST_BANKID.AsInteger       := cdsRDNBankAccountACCBANKID.AsInteger;
      cdsCashVoucher_HCUST_BANKCODE.AsString      := cdsRDNBankAccountBNCODE.AsString;
      cdsCashVoucher_HCUST_BANKACCNO.AsString     := cdsRDNBankAccountBANKACCNO.AsString;
      cdsCashVoucher_HCUST_BANKACCNAME.AsString   := cdsRDNBankAccountBANKACCNAME.AsString;
      cdsCashVoucher_HCUST_BANKACCBRANCH.AsString := cdsRDNBankAccountBANKBRANCH.AsString;
    end;
  end;
end;

procedure TfrmCreateCashRecPay.cdsCashVoucher_HBROKER_BANKIDChange(
  Sender: TField);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBrokerBank.Locate('ACCBANKID', cdsCashVoucher_HBROKER_BANKID.AsInteger, []) then
    begin
      cdsCashVoucher_HBROKER_BANKCODE.AsString      := cdsLuBrokerBankBNCODE.AsString;
      cdsCashVoucher_HBROKER_BANKACCNO.AsString     := cdsLuBrokerBankBANKACCNO.AsString;
      cdsCashVoucher_HBROKER_BANKACCNAME.AsString   := cdsLuBrokerBankBANKACCNAME.AsString;
      cdsCashVoucher_HBROKER_BANKACCBRANCH.AsString := cdsLuBrokerBankBANKBRANCH.AsString;
    end;
  end;
end;

procedure TfrmCreateCashRecPay.cdsCashVoucher_HCCYCODEChange(
  Sender: TField);
begin
  if cdsCashVoucher_H.State in dsEditModes then
  begin
    cdsCashVoucher_HEXRATE.AsFloat          := dmGlobal.RemoteServer.GetCCYRate(cdsCashVoucher_HVOUCHERDATE.AsDateTime, cdsCashVoucher_HCCYCODE.AsString);
    cdsCashVoucher_HTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucher_HEXRATE.AsFloat * cdsCashVoucher_HTOTAL_AMOUNT.AsFloat;
  end;
end;

procedure TfrmCreateCashRecPay.cdsCashVoucher_HCUST_BANKIDChange(
  Sender: TField);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuCustBank.Locate('ACCBANKID', cdsCashVoucher_HCUST_BANKID.AsInteger, []) then
    begin
      cdsCashVoucher_HCUST_BANKCODE.AsString      := cdsLuCustBankBNCODE.AsString;
      cdsCashVoucher_HCUST_BANKACCNO.AsString     := cdsLuCustBankBANKACCNO.AsString;
      cdsCashVoucher_HCUST_BANKACCNAME.AsString   := cdsLuCustBankBANKACCNAME.AsString;
      cdsCashVoucher_HCUST_BANKACCBRANCH.AsString := cdsLuCustBankBANKBRANCH.AsString;
    end;
  end;
end;

procedure TfrmCreateCashRecPay.cdsCashVoucher_HNewRecord(
  DataSet: TDataSet);
begin
  cdsCashVoucher_HVOUCHERID.AsLargeInt    := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_VOUCHER_H');
  cdsCashVoucher_HVOUCHERTYPE.AsString    := FCreateCash;
  cdsCashVoucher_HVOUCHERDATE.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
  cdsCashVoucher_HENTRYDATE.AsDateTime    := cdsCashVoucher_HVOUCHERDATE.AsDateTime;
  cdsCashVoucher_HVOUCHERNO.AsString      := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucher_HVOUCHERDATE.AsDateTime, 'CV','TBL_CASH_VOUCHER_H');
  cdsCashVoucher_HSTAT.AsString           := 'O';
  cdsCashVoucher_HMANUAL_VOUCHER.AsString := '1';
end;

procedure TfrmCreateCashRecPay.cdsCashVoucher_HTOTAL_AMOUNTChange(
  Sender: TField);
begin
  if cdsCashVoucher_H.State in dsEditModes then
  begin
    cdsCashVoucher_HEXRATE.AsFloat          := dmGlobal.RemoteServer.GetCCYRate(cdsCashVoucher_HVOUCHERDATE.AsDateTime, cdsCashVoucher_HCCYCODE.AsString);
    cdsCashVoucher_HTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucher_HEXRATE.AsFloat * cdsCashVoucher_HTOTAL_AMOUNT.AsFloat;
  end;
end;

procedure TfrmCreateCashRecPay.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    if FChangeAcc then
    begin
      with dmGlobal.IntDataLookup do
      begin
        if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
        begin
          if not (dsSubject.DataSet.State in dsEditModes) then
            dsSubject.DataSet.Edit;

          dsSubject.DataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
          dsSubject.DataSet.FieldByName('ACCNO').AsString   := cdsLuAccountMultiFilterACCCODE.AsString;
          dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
        end;
      end;
    end;
  end;
end;

procedure TfrmCreateCashRecPay.FormShow(Sender: TObject);
begin
  cdsCashVoucher_H.Close;
  cdsCashVoucher_H.Params[0].AsInteger := FVoucherID;
  cdsCashVoucher_H.Open;

  if FCreateCash = 'R' then
  begin
    FBuySell   := 'B';
    FDC        := 'C';
    FTransType := 'SK';

    lyBeneficiary.Visible := True;
    cxDBLookupComboBox2.Properties.ReadOnly := true;
  end
  else
  begin
    FBuySell   := 'S';
    FDC        := 'D';
    FTransType := 'SK';

    lyBeneficiary.Visible := True;
    cxDBLookupComboBox2.Properties.ReadOnly := false;
  end;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

  txtAccNo.Properties.ReadOnly := Not FChangeAcc;
  txtAccNo.ParentColor := Not FChangeAcc;


  FEdit := False;
  if FVoucherID = -1 then
  begin
    cdsCashVoucher_H.Append;
    if not VarIsEmpty(FAccID) then
    begin
      cdsCashVoucher_HACCID.AsInteger      := FAccID;
      cdsCashVoucher_HACCNO.AsString       := FAccCode;
      cdsCashVoucher_HACCNAME.AsString     := FAccName;
      cdsCashVoucher_HCCYCODE.AsString     := FACCY;
      cdsCashVoucher_HTOTAL_AMOUNT.AsFloat := FAmount;
    end;
  end
  else
  begin
    FEdit := True;
    cdsCashVoucher_H.Edit;
  end;
end;

end.
