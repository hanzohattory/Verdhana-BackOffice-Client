unit FormViewCashVoucher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Datasnap.DBClient, NClientDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxTextEdit, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox, cxCurrencyEdit,
  StrUtils, Vcl.ActnList, NDatasetAction, cxImageComboBox, Vcl.DBCtrls,
  NReportClient;

type
  TfrmViewCashVoucher = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsCashVoucherD: TDataSource;
    cdsCashVoucherH: TNClientDataset;
    cdsCashVoucherD: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    rgVoucherType: TcxDBRadioGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dtVoucherDate: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cbBrokerBank: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    lgBrokerBank: TdxLayoutGroup;
    cbCustBank: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    lgCustBank: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    lcBankCharges: TdxLayoutItem;
    grpCurrency: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cdsLuBrokerBank: TNClientDataset;
    cdsLuCustBank: TNClientDataset;
    cdsLuBrokerBankACCBANKID: TIntegerField;
    cdsLuBrokerBankACCID: TIntegerField;
    cdsLuBrokerBankBNCODE: TStringField;
    cdsLuBrokerBankBANKACCNO: TStringField;
    cdsLuBrokerBankBANKACCNAME: TStringField;
    cdsLuBrokerBankBANKBRANCH: TStringField;
    cdsLuBrokerBankACTLED_SEQID: TIntegerField;
    cdsLuBrokerBankISRDN: TStringField;
    cdsLuCustBankACCBANKID: TIntegerField;
    cdsLuCustBankACCID: TIntegerField;
    cdsLuCustBankBNCODE: TStringField;
    cdsLuCustBankBANKACCNO: TStringField;
    cdsLuCustBankBANKACCNAME: TStringField;
    cdsLuCustBankBANKBRANCH: TStringField;
    cdsLuCustBankACTLED_SEQID: TIntegerField;
    cdsLuCustBankISRDN: TStringField;
    dsLuBrokerBank: TDataSource;
    dsLuCustBank: TDataSource;
    cdsLuBrokerBankACCBANKCODE: TStringField;
    cdsLuCustBankACCBANKCODE: TStringField;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    lcExRate: TdxLayoutItem;
    grpMultiCurrency: TdxLayoutGroup;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group20: TdxLayoutGroup;
    cdsLuBrokerBankCCYCODE: TStringField;
    cdsLuCustBankCCYCODE: TStringField;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group22: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cdsCashVoucherHVOUCHERID: TLargeintField;
    cdsCashVoucherHVOUCHERNO: TStringField;
    cdsCashVoucherHVOUCHERTYPE: TStringField;
    cdsCashVoucherHENTRYDATE: TDateField;
    cdsCashVoucherHVOUCHERDATE: TDateField;
    cdsCashVoucherHACCSOPID: TLargeintField;
    cdsCashVoucherHACCID: TLargeintField;
    cdsCashVoucherHACCNO: TStringField;
    cdsCashVoucherHACCNAME: TStringField;
    cdsCashVoucherHBROKER_BANKID: TIntegerField;
    cdsCashVoucherHBROKER_BANKCODE: TStringField;
    cdsCashVoucherHBROKER_BANKACCNO: TStringField;
    cdsCashVoucherHBROKER_BANKACCNAME: TStringField;
    cdsCashVoucherHBROKER_BANKACCBRANCH: TStringField;
    cdsCashVoucherHBROKER_BANKPAYMENTID: TLargeintField;
    cdsCashVoucherHCUST_BANKID: TIntegerField;
    cdsCashVoucherHCUST_BANKCODE: TStringField;
    cdsCashVoucherHCUST_BANKACCNO: TStringField;
    cdsCashVoucherHCUST_BANKACCNAME: TStringField;
    cdsCashVoucherHCUST_BANKACCBRANCH: TStringField;
    cdsCashVoucherHVOUCHER_DESC: TStringField;
    cdsCashVoucherHCCYCODE: TStringField;
    cdsCashVoucherHEXRATE: TFloatField;
    cdsCashVoucherHTRANSFERMODE: TStringField;
    cdsCashVoucherHCHARGESAMT: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT: TFloatField;
    cdsCashVoucherHSTAT: TStringField;
    cdsCashVoucherHPOSTED: TStringField;
    cdsCashVoucherHBANK_REFERENCE: TStringField;
    cdsCashVoucherHBANK_INSTRUCTION: TStringField;
    cdsCashVoucherHJRNID: TLargeintField;
    cdsCashVoucherHMODDA: TDateTimeField;
    cdsCashVoucherHMODUI: TStringField;
    cdsCashVoucherHAPPDA: TDateTimeField;
    cdsCashVoucherHAPPUI: TStringField;
    cdsCashVoucherHUNDER4Y: TIntegerField;
    cdsCashVoucherHUNDER4YDA: TDateTimeField;
    cdsCashVoucherHNOTES4Y: TStringField;
    cdsCashVoucherHISDEL: TIntegerField;
    cdsCashVoucherHID: TLargeintField;
    cdsCashVoucherHCCYCODE_FX: TStringField;
    cdsCashVoucherHCHARGESAMT_FX: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsCashVoucherDVOUCHERID: TLargeintField;
    cdsCashVoucherDSEQID: TLargeintField;
    cdsCashVoucherDTRANS_TYPE: TStringField;
    cdsCashVoucherDLINKTYPE: TStringField;
    cdsCashVoucherDLINKID: TLargeintField;
    cdsCashVoucherDLINKNO: TStringField;
    cdsCashVoucherDACCID: TLargeintField;
    cdsCashVoucherDACCNO: TStringField;
    cdsCashVoucherDACCNAME: TStringField;
    cdsCashVoucherDTRDDATE: TDateField;
    cdsCashVoucherDDUEDATE: TDateField;
    cdsCashVoucherDCASH_DESC: TStringField;
    cdsCashVoucherDTRANS_AMT: TFloatField;
    cdsCashVoucherDNETTYPE: TStringField;
    cdsCashVoucherDAMOUNT: TFloatField;
    cdsCashVoucherDMODDA: TDateTimeField;
    cdsCashVoucherDMODUI: TStringField;
    cdsCashVoucherDAPPDA: TDateTimeField;
    cdsCashVoucherDAPPUI: TStringField;
    cdsCashVoucherDUNDER4Y: TIntegerField;
    cdsCashVoucherDUNDER4YDA: TDateTimeField;
    cdsCashVoucherDNOTES4Y: TStringField;
    cdsCashVoucherDISDEL: TIntegerField;
    cdsCashVoucherDID: TLargeintField;
    cdsCashVoucherDOVERDUE: TStringField;
    gvwMasterVOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSEQID: TcxGridDBBandedColumn;
    gvwMasterTRANS_TYPE: TcxGridDBBandedColumn;
    gvwMasterLINKTYPE: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterLINKNO: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterCASH_DESC: TcxGridDBBandedColumn;
    gvwMasterTRANS_AMT: TcxGridDBBandedColumn;
    gvwMasterNETTYPE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterOVERDUE: TcxGridDBBandedColumn;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    btnNext: TcxButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    btnPrev: TcxButton;
    dxLayoutControl1Item22: TdxLayoutItem;
    btnSettle: TcxButton;
    dxLayoutControl1Item23: TdxLayoutItem;
    btnCancels: TcxButton;
    dxLayoutControl1Item28: TdxLayoutItem;
    btnReverse: TcxButton;
    dxLayoutControl1Item29: TdxLayoutItem;
    btnPrint: TcxButton;
    dxLayoutControl1Item30: TdxLayoutItem;
    ActionList1: TActionList;
    actNext: TNAction;
    actPrev: TNAction;
    actSettle: TNAction;
    actCancel: TNAction;
    actReverse: TNAction;
    actPrint: TNAction;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item31: TdxLayoutItem;
    DBCheckBox1: TDBCheckBox;
    dxLayoutControl1Item32: TdxLayoutItem;
    Report: TNClientReportContainer;
    cdsCashVoucherDX: TFloatField;
    gvwMasterX: TcxGridDBBandedColumn;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item33: TdxLayoutItem;
    cdsCashVoucherHTRANSTYPE: TStringField;
    cdsCashVoucherHTRANSFER_AMT: TFloatField;
    cdsCashVoucherDCCYCODE: TStringField;
    cdsCashVoucherDDC: TStringField;
    cdsCashVoucherDEXRATE: TFloatField;
    cdsCashVoucherDFXAMOUNT: TFloatField;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterFXAMOUNT: TcxGridDBBandedColumn;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item34: TdxLayoutItem;
    cdsCashVoucherHDEAL_EXRATE: TFloatField;
    cdsCashVoucherHMANUAL_VOUCHER: TStringField;
    cdsCashVoucherHReqFF: TIntegerField;
    procedure actNextUpdate(Sender: TObject);
    procedure actPrevUpdate(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actSettleExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actCancelUpdate(Sender: TObject);
    procedure actSettleUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsCashVoucherDCalcFields(DataSet: TDataSet);
    procedure cxDBImageComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FSumNetAmount: Double;
    AccountID: Integer;
    FTradeDate: TDate;
    FSettleType: string;

    function Run(ACCID, ABrokerBankID, AACCMSOPID: Integer; ACCY: string; ACashOnHand, ACreateVoucher: Double; ADate: TDateTime; ASettleType: string): TModalResult;
end;

var
  frmViewCashVoucher: TfrmViewCashVoucher;

implementation

{$R *.dfm}

uses DataGlobal, FormCashPaymentBeneficiary, FormBankRefference;

{ TfrmCashPayment }

procedure TfrmViewCashVoucher.actCancelExecute(Sender: TObject);
begin
  if messagedlg('Are you sure to cancel this voucher?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    dmGlobal.RemoteServer.CashVoucherCancel(cdsCashVoucherHVOUCHERID.AsLargeInt);
    MessageDlg('Process cancel has been done', mtInformation, [mbOk], 0);
    ModalResult := mrOk;
  end;
end;

procedure TfrmViewCashVoucher.actCancelUpdate(Sender: TObject);
begin
  TNAction(Sender).Enabled := cdsCashVoucherHSTAT.AsString = 'O';
end;

procedure TfrmViewCashVoucher.actNextExecute(Sender: TObject);
begin
  cdsCashVoucherH.Next;

  cdsCashVoucherD.Close;
  cdsCashVoucherD.Params[0].AsInteger := cdsCashVoucherHVOUCHERID.AsInteger;
  cdsCashVoucherD.Open;
end;

procedure TfrmViewCashVoucher.actNextUpdate(Sender: TObject);
begin
  TNAction(Sender).Enabled := (not cdsCashVoucherH.Eof) and (cdsCashVoucherH.RecordCount > 1);
end;

procedure TfrmViewCashVoucher.actPrevExecute(Sender: TObject);
begin
  cdsCashVoucherH.Prior;

  cdsCashVoucherD.Close;
  cdsCashVoucherD.Params[0].AsInteger := cdsCashVoucherHVOUCHERID.AsInteger;
  cdsCashVoucherD.Open;
end;

procedure TfrmViewCashVoucher.actPrevUpdate(Sender: TObject);
begin
  TNAction(Sender).Enabled := not cdsCashVoucherH.Bof;
end;

procedure TfrmViewCashVoucher.actPrintExecute(Sender: TObject);
begin
  Report.Params[0].AsDate    := cdsCashVoucherHVOUCHERDATE.AsDateTime;
  Report.Params[1].AsString  := cdsCashVoucherHVOUCHERTYPE.AsString;
  Report.Params[2].AsInteger := cdsCashVoucherHVOUCHERID.AsInteger;

  Report.PreviewReport;
end;

procedure TfrmViewCashVoucher.actReverseExecute(Sender: TObject);
var
  sMessage: string;
begin
  if messagedlg('Are you sure to cancel this voucher?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    dmGlobal.RemoteServer.CashVoucherReverse(cdsCashVoucherHVOUCHERID.AsLargeInt, sMessage);
    MessageDlg(sMessage, mtInformation, [mbOk], 0);
    ModalResult := mrOk;
  end;
end;

procedure TfrmViewCashVoucher.actReverseUpdate(Sender: TObject);
begin
  TNAction(Sender).Enabled := cdsCashVoucherHSTAT.AsString = 'S';
end;

procedure TfrmViewCashVoucher.actSettleExecute(Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
  sMsgs : String;
begin
  if messagedlg('Are you sure to settle this voucher?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    if FTradeDate = dsSubject.DataSet.FieldByName('VOUCHERDATE').AsDateTime then
    begin
      sMsgs := '';
      if(cdsCashVoucherHReqFF.AsInteger = 1) and (cdsCashVoucherHVOUCHERTYPE.AsString = 'P') then
      begin
        bResult := dmGlobal.RemoteServer.CashVoucher_Posting('2', cdsCashVoucherHVOUCHERID.AsLargeInt, cdsCashVoucherHVOUCHERDATE.AsDateTime,
          '', cdsCashVoucherHVOUCHERTYPE.AsString, sMsg);
        sMsgs := sMsg;
        MessageDlg(sMsgs, mtInformation, [mbOk], 0);
      end
      else
      begin
        bResult := dmGlobal.RemoteServer.CashVoucher_Posting('2', cdsCashVoucherHVOUCHERID.AsLargeInt, cdsCashVoucherHVOUCHERDATE.AsDateTime,
          '', cdsCashVoucherHVOUCHERTYPE.AsString, sMsg);
        MessageDlg(sMsg, mtInformation, [mbOk], 0);
      end;
      ModalResult := mrOk;
    end
    else
    begin
      MessageDlg('Can not process, invalid due date...', mtError, [mbOk], 0);
      ModalResult := mrNone;
    end;
end;

procedure TfrmViewCashVoucher.actSettleUpdate(Sender: TObject);
begin
  TNAction(Sender).Enabled := cdsCashVoucherHSTAT.AsString = 'O';
end;

procedure TfrmViewCashVoucher.cdsCashVoucherDCalcFields(DataSet: TDataSet);
begin
  if cdsCashVoucherDDC.AsString = 'C' then
    cdsCashVoucherDX.AsFloat := cdsCashVoucherDAMOUNT.AsFloat * (-1)
  else
    cdsCashVoucherDX.AsFloat := cdsCashVoucherDAMOUNT.AsFloat;
end;

procedure TfrmViewCashVoucher.cxDBImageComboBox1PropertiesChange(
  Sender: TObject);
begin
  lgBrokerBank.Enabled     := cdsCashVoucherHSTAT.AsString = 'O';
  lgCustBank.Enabled       := cdsCashVoucherHSTAT.AsString = 'O';
  grpCurrency.Enabled      := cdsCashVoucherHSTAT.AsString = 'O';
  grpMultiCurrency.Enabled := cdsCashVoucherHSTAT.AsString = 'O';
end;

function TfrmViewCashVoucher.Run(ACCID, ABrokerBankID, AACCMSOPID: Integer; ACCY: string; ACashOnHand, ACreateVoucher: Double;
  ADate: TDateTime; ASettleType: string): TModalResult;
var
  oForm: TfrmViewCashVoucher;
  dtTransDate, dtProcess: TDateTime;
  sUser: String;
  dAmount: Double;
  sKampret: string;
begin
//  oForm := TfrmViewCashVoucher.Create(nil);
//  Try
//    with oForm do
//    begin

      ModalResult   := mrCancel;
      AccountID     := ACCID;
      FSumNetAmount := 0;
      FSettleType   := ASettleType;

      dtTransDate := dmGlobal.RemoteServer.GetTransDate;
      FTradeDate  := dtTransDate;

      cdsLuBrokerBank.Close;
      cdsLuBrokerBank.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
      cdsLuBrokerBank.Open;

      cdsLuCustBank.Close;
      cdsLuCustBank.Params[0].AsInteger := ACCID;
      cdsLuCustBank.Open;

      cdsCashVoucherH.Close;
      cdsCashVoucherH.Params[0].AsDate    := ADate;
      cdsCashVoucherH.Params[1].AsInteger := ACCID;
      cdsCashVoucherH.Params[2].AsString  := ACCY;
      cdsCashVoucherH.Open;

      if not cdsCashVoucherH.IsEmpty then
      begin
        cdsCashVoucherD.Close;
        cdsCashVoucherD.Params[0].AsInteger := cdsCashVoucherHVOUCHERID.AsInteger;
        cdsCashVoucherD.Params[1].AsInteger := AACCMSOPID;
        cdsCashVoucherD.Open;
      end;

      if not cdsLuCustBank.IsEmpty then
        cdsLuCustBank.Locate('ISRDN', '1', []);

      dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
      sUser     := dmGlobal.UserID;

end;

end.
