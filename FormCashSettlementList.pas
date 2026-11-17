unit FormCashSettlementList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, Vcl.ActnList, Datasnap.DBClient,
  NClientDataset, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, NDatasetAction, cxGroupBox, cxRadioGroup, cxCheckBox,
  Vcl.ExtCtrls, ClassClientConst, System.DateUtils, System.Actions, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmCashSettlementList = class(TfrmBasic)
    aclCashSettle: TActionList;
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwCashSettle: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsCashSettlement: TNClientDataset;
    dsCashSettlement: TDataSource;
    actViewData: TNAction;
    popGrid: TPopupMenu;
    actCreateVoucher: TNAction;
    actProcessVoucher: TNAction;
    actUnProcessVoucher: TNAction;
    CreateVoucher1: TMenuItem;
    N1: TMenuItem;
    gvwCashSettleACCID: TcxGridDBBandedColumn;
    gvwCashSettleACCNO: TcxGridDBBandedColumn;
    gvwCashSettleACCNAME: TcxGridDBBandedColumn;
    gvwCashSettleCCYCODE: TcxGridDBBandedColumn;
    gvwCashSettleCOMPANY_BANKID: TcxGridDBBandedColumn;
    gvwCashSettleCOMPANY_BANKCODE: TcxGridDBBandedColumn;
    gvwCashSettleCOMPANY_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwCashSettleACC_BANKID: TcxGridDBBandedColumn;
    gvwCashSettleACC_BANKNO: TcxGridDBBandedColumn;
    gvwCashSettleCREATE_VOUCHER: TcxGridDBBandedColumn;
    gvwCashSettleCASH_ONHAND: TcxGridDBBandedColumn;
    gvwCashSettleNET_ARAPOD: TcxGridDBBandedColumn;
    gvwCashSettleNET_ARAPDUE0: TcxGridDBBandedColumn;
    gvwCashSettleNET_ARAPDUE1: TcxGridDBBandedColumn;
    gvwCashSettleNET_ARAPDUE2: TcxGridDBBandedColumn;
    gvwCashSettleNET_ARAPDUE21: TcxGridDBBandedColumn;
    gvwCashSettleNET_ARAP: TcxGridDBBandedColumn;
    gvwCashSettleDIVIDEN: TcxGridDBBandedColumn;
    gvwCashSettleINTEREST: TcxGridDBBandedColumn;
    gvwCashSettlePENALTY: TcxGridDBBandedColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
    N2: TMenuItem;
    actCashDCNote: TNAction;
    CashDebetCreditNote1: TMenuItem;
    rbSpecDate: TcxRadioGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    gvwCashSettleNETARAPDUE: TcxGridDBBandedColumn;
    gvwCashSettleARAMTDUE0: TcxGridDBBandedColumn;
    gvwCashSettleAPAMTDUE0: TcxGridDBBandedColumn;
    actCreateSettlement: TNAction;
    dxLayoutControl1Group5: TdxLayoutGroup;
    rbSettle: TcxRadioGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    actViewCashPayment: TNAction;
    ViewCashPayment1: TMenuItem;
    cdsCashVoucherAllPosting: TNClientDataset;
    gvwCashSettleSETTLE: TcxGridDBBandedColumn;
    gvwCashSettlePR: TcxGridDBBandedColumn;
    gvwCashSettleSETTLE_TYPE: TcxGridDBBandedColumn;
    gvwCashSettleACTLED_SEQID: TcxGridDBBandedColumn;
    gvwCashSettleCOMPANY_ACTLED_SEQID: TcxGridDBBandedColumn;
    gvwCashSettleCOMPANY_BANKACCNO: TcxGridDBBandedColumn;
    gvwCashSettleCOMPANY_BANKACCNAME: TcxGridDBBandedColumn;
    gvwCashSettleBANKACCNAME: TcxGridDBBandedColumn;
    gvwCashSettleBANKBRANCH: TcxGridDBBandedColumn;
    gvwCashSettleCOMPANY_BANKBRANCH: TcxGridDBBandedColumn;
    gvwCashSettleETTLE_SIDE: TcxGridDBBandedColumn;
    gvwCashSettleSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwCashSettleSETTLED_AMT: TcxGridDBBandedColumn;
    gvwCashSettleVOUCHERDATE: TcxGridDBBandedColumn;
    gvwCashSettleSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwCashSettleAUTO_SETTLE: TcxGridDBBandedColumn;
    gvwCashSettleMSOP_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwCashSettleMSOP_BANKCODE: TcxGridDBBandedColumn;
    gvwCashSettleMSOP_BANKACCNO: TcxGridDBBandedColumn;
    gvwCashSettleMSOP_BANKACCNAME: TcxGridDBBandedColumn;
    gvwCashSettleMSOP_BANKBRANCH: TcxGridDBBandedColumn;
    actCreateSettlementMSOP: TNAction;
    cxButton2: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    actCreateAllPaymentVoucher: TNAction;
    actAutoReceiveVoucher: TNAction;
    CreateAllPaymentVoucher1: TMenuItem;
    AutoReceiveVoucher1: TMenuItem;
    actSelectAllCashVoucherPosting: TNAction;
    actSelectedPostingCashVoucher: TNAction;
    CreateAllPaymentVoucher2: TMenuItem;
    actCreateDevidenAllVoucher: TNAction;
    CreateDividenAllVoucher1: TMenuItem;
    gvwCashSettleCASH_QQ: TcxGridDBBandedColumn;
    gvwCashSettleSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwCashSettleMSOP_NAME: TcxGridDBBandedColumn;
    gvwCashSettleACCSOPID: TcxGridDBBandedColumn;
    gvwCashSettleMSOP_BANKID: TcxGridDBBandedColumn;
    actCreateBankReceive: TNAction;
    CreateBankReceive1: TMenuItem;
    N3: TMenuItem;
    actRollOverProcess: TNAction;
    RolloverProcess1: TMenuItem;
    actCreateBankPayment: TNAction;
    CreateBankPayment1: TMenuItem;
    rbSettleType: TcxRadioGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    cbProduct: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsCashSettlementACCID: TLargeintField;
    cdsCashSettlementACCNO: TStringField;
    cdsCashSettlementACCNAME: TStringField;
    cdsCashSettlementCCYCODE: TStringField;
    cdsCashSettlementCOMPANY_BANKID: TLargeintField;
    cdsCashSettlementCOMPANY_BANKCODE: TStringField;
    cdsCashSettlementCOMPANY_ACCBANKCODE: TStringField;
    cdsCashSettlementACC_BANKID: TLargeintField;
    cdsCashSettlementACC_BANKNO: TStringField;
    cdsCashSettlementCREATE_VOUCHER: TFloatField;
    cdsCashSettlementCASH_ONHAND: TFloatField;
    cdsCashSettlementNET_ARAPOD: TFloatField;
    cdsCashSettlementNET_ARAPDUE0: TFloatField;
    cdsCashSettlementNET_ARAPDUE1: TFloatField;
    cdsCashSettlementNET_ARAPDUE2: TFloatField;
    cdsCashSettlementNET_ARAPDUE22: TFloatField;
    cdsCashSettlementNET_ARAP: TFloatField;
    cdsCashSettlementDIVIDEN: TFloatField;
    cdsCashSettlementINTEREST: TFloatField;
    cdsCashSettlementPENALTY: TFloatField;
    cdsCashSettlementCASH_QQ: TFloatField;
    cdsCashSettlementNETARAPDUE: TFloatField;
    cdsCashSettlementARAMTDUE0: TFloatField;
    cdsCashSettlementAPAMTDUE0: TFloatField;
    cdsCashSettlementSETTLE: TStringField;
    cdsCashSettlementPR: TStringField;
    cdsCashSettlementSETTLE_TYPE: TStringField;
    cdsCashSettlementACTLED_SEQID: TLargeintField;
    cdsCashSettlementCOMPANY_ACTLED_SEQID: TLargeintField;
    cdsCashSettlementCOMPANY_BANKACCNO: TStringField;
    cdsCashSettlementCOMPANY_BANKACCNAME: TStringField;
    cdsCashSettlementBANKACCNAME: TStringField;
    cdsCashSettlementBANKBRANCH: TStringField;
    cdsCashSettlementCOMPANY_BANKBRANCH: TStringField;
    cdsCashSettlementSETTLE_SIDE: TStringField;
    cdsCashSettlementSETTLE_NETAMT: TFloatField;
    cdsCashSettlementSETTLED_AMT: TFloatField;
    cdsCashSettlementVOUCHERDATE: TDateField;
    cdsCashSettlementSETTLE_CCYCODE: TStringField;
    cdsCashSettlementAUTO_SETTLE: TStringField;
    cdsCashSettlementACCSOPID: TLargeintField;
    cdsCashSettlementMSOP_NAME: TStringField;
    cdsCashSettlementMSOP_ACCBANKCODE: TStringField;
    cdsCashSettlementMSOP_BANKID: TLargeintField;
    cdsCashSettlementMSOP_BANKCODE: TStringField;
    cdsCashSettlementMSOP_BANKACCNO: TStringField;
    cdsCashSettlementMSOP_BANKACCNAME: TStringField;
    cdsCashSettlementMSOP_BANKBRANCH: TStringField;
    cdsCashSettlementBNCODE: TStringField;
    cdsCashSettlementACCTYPE: TStringField;
    cdsCashSettlementTRF_PRVT_BANK: TStringField;
    cdsCashSettlementTRF_PRVT_BANK_TARGET: TLargeintField;
    cdsCashSettlementCASHKEEP: TStringField;
    cdsCashSettlementRDNBANK_DEFAULT: TLargeintField;
    cdsCashSettlementPRDCODE: TStringField;
    ckSelectAll: TcxCheckBox;
    dxLayoutGroup10: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    pnlWait: TPanel;
    actAllPostingCashReceive: TNAction;
    PostingAllCashReceive1: TMenuItem;
    actSetoffSettlementMarginProcess: TNAction;
    ProcessSettlementProcess1: TMenuItem;
    actCreateVoucherNew: TNAction;
    CreateVoucherNew1: TMenuItem;
    actViewVoucherNew: TNAction;
    ViewVoucherNew1: TMenuItem;
    actCashDeposit: TNAction;
    CashDeposit1: TMenuItem;
    actCreateAllReceiveVoucher: TNAction;
    CreateAllReceiveVoucher1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actCreateVoucherExecute(Sender: TObject);
    procedure actCashDCNoteExecute(Sender: TObject);
    procedure actCashDCNoteUpdate(Sender: TObject);
    procedure dtDueDatePropertiesCloseUp(Sender: TObject);
    procedure cbBusTypePropertiesCloseUp(Sender: TObject);
    procedure rgSettleTypePropertiesChange(Sender: TObject);
    procedure rbSpecDatePropertiesChange(Sender: TObject);
    procedure actCreateSettlementExecute(Sender: TObject);
    procedure actCreateVoucherUpdate(Sender: TObject);
    procedure actCreateSettlementUpdate(Sender: TObject);
    procedure rbRPPropertiesChange(Sender: TObject);
    procedure actViewCashPaymentExecute(Sender: TObject);
    procedure actCreateSettlementMSOPExecute(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure actCreateAllPaymentVoucherExecute(Sender: TObject);
    procedure actAutoReceiveVoucherExecute(Sender: TObject);
    procedure actSelectAllCashVoucherPostingExecute(Sender: TObject);
    procedure actCreateDevidenAllVoucherExecute(Sender: TObject);
    procedure actCreateBankReceiveExecute(Sender: TObject);
    procedure actCreateBankReceiveUpdate(Sender: TObject);
    procedure actRollOverProcessExecute(Sender: TObject);
    procedure actCreateBankPaymentExecute(Sender: TObject);
    procedure rbSettleTypePropertiesChange(Sender: TObject);
    procedure ckSelectAllPropertiesChange(Sender: TObject);
    procedure actAllPostingCashReceiveExecute(Sender: TObject);
    procedure actSetoffSettlementMarginProcessExecute(Sender: TObject);
    procedure actCreateDevidenAllVoucherUpdate(Sender: TObject);
    procedure actSelectAllCashVoucherPostingUpdate(Sender: TObject);
    procedure actAutoReceiveVoucherUpdate(Sender: TObject);
    procedure actAllPostingCashReceiveUpdate(Sender: TObject);
    procedure actCreateBankPaymentUpdate(Sender: TObject);
    procedure actCreateVoucherNewExecute(Sender: TObject);
    procedure actViewVoucherNewExecute(Sender: TObject);
    procedure actCashDepositExecute(Sender: TObject);
    procedure actCreateAllReceiveVoucherExecute(Sender: TObject);
  private
    { Private declarations }
    FDueDate: TDate;

    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmCashSettlementList: TfrmCashSettlementList;

implementation

{$R *.dfm}

uses DataGlobal, FormCashPayment, FormCashDebetCreditNote,
  FormCreateSettlement, FormViewCashVoucher, FormCreateSettlementKPEI,
  FormCreateSettlementMSOP, FormCreateSettlementReceive,
  FormCreateSettlementPayment, FormCreateCashRecPay, DataLookup,
  FormCashSettleVoucher, FormCashSettleVoucherProcess, FormCashDep,
  FormProgressBar;

procedure TfrmCashSettlementList.actAllPostingCashReceiveExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.RemoteServer.AllPostingCashReceive(dtDueDate.Date, rbSettleType.EditValue, cbProduct.EditValue, sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmCashSettlementList.actAllPostingCashReceiveUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (rbSettleType.EditValue <> '%');
end;

procedure TfrmCashSettlementList.actAutoReceiveVoucherExecute(
  Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
  sAutoPosting: string;
  iResult: Integer;
  bCon: Boolean;
begin
  inherited;
  if MessageDlg('Auto receive process ?', mtConfirmation, [mbYes, mbNo, mbCancel], 0)= mrYes then
  begin
    pnlWait.Visible := True;
    Try
      Application.ProcessMessages;

      iResult := MessageDlg('Posting Auto cash receive ?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
      bCon    := True;
      if iResult = mrYes then
        sAutoPosting := '1'
      else if iResult = mrNo then
        sAutoPosting := '0'
      else bCon := False;

      if bCon then
      begin
        bResult := dmGlobal.RemoteServer.CreateAutoReceiveVoucher(dtDueDate.Date, sAutoPosting, rbSettleType.EditValue, cbProduct.EditValue, sMsg);

        MessageDlg(sMsg, mtInformation, [mbOk], 0);

        cdsCashSettlement.Refresh;
      end;
    Finally
      pnlWait.Visible := False;
    End;
  end;
end;

procedure TfrmCashSettlementList.actAutoReceiveVoucherUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (rbSettleType.EditValue <> '%');
end;

procedure TfrmCashSettlementList.actCashDCNoteExecute(Sender: TObject);
var
Result : boolean;
begin
  inherited;
  Result := frmCashCreditDebitNote.New(cdsCashSettlementACCID.AsInteger);
  if Result = True then
  messageDlg('Posting Done',mtInformation,[mbOK],0);
end;

procedure TfrmCashSettlementList.actCashDCNoteUpdate(Sender: TObject);
begin
  inherited;
  actCashDCNote.Enabled := (not cdsCashSettlement.IsEmpty) and (rbSettleType.EditValue <> '%');
end;

procedure TfrmCashSettlementList.actCashDepositExecute(Sender: TObject);
var
  sKey, sMsg: String;
  CDID: Int64;
begin
  inherited;
  //Request By Irvan 20170430 untuk cash deposit auto posting setelah data insert
  sKey := '';
  dmGlobal.DefaultAccountID := cdsCashSettlementACCID.AsInteger;
  dmGlobal.DefaultAmount := 0;
  if dmGlobal.ShowEditorForm(TfrmCashDep, sKey, pkCreate) = mrOk then
  Begin
    CDID := StrToInt64Def(sKey, Low(Int64));
    if CDID <> Low(Int64) then
    begin
      if dmGlobal.RemoteServer.PostCashDep(CDID, sMsg) then
      begin
        cdsCashSettlement.Refresh;
        ShowMessage(sMsg);
      end;
    end;
  End;
end;

procedure TfrmCashSettlementList.actCreateAllPaymentVoucherExecute(
  Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
  slMsg: TStringList;
  oProgress: TfrmProgressBar;
  i, n, iSuccess, iReject: Integer;
begin
  inherited;
  if (not cdsCashSettlement.Active) or (cdsCashSettlement.IsEmpty) then
    Exit;

  if MessageDlg('Are you sure to create all payment voucher?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    slMsg := TStringList.Create;
    oProgress := TfrmProgressBar.Create(Nil);
    Try
      iSuccess := 0;
      iReject := 0;
      i := 0;
      n := cdsCashSettlement.RecordCount;
      oProgress.Show;

      cdsCashSettlement.First;
      while not cdsCashSettlement.Eof do
      begin
        i := i + 1;

        oProgress.ChangeBar(trunc(i / n * 100), 'Processing Voucher for Account ' +
          QuotedStr(cdsCashSettlementACCNO.AsString));

        bResult := dmGlobal.RemoteServer.CreatePaymentVoucher(cdsCashSettlementACCID.AsInteger, cdsCashSettlementSETTLE_CCYCODE.AsString, dtDueDate.Date, sMsg);
        slMsg.Add('Account ' + cdsCashSettlementACCNO.AsString + ': ' + sMsg);
        if bResult then
          iSuccess := iSuccess + 1
        else
          iReject := iReject + 1;

        cdsCashSettlement.Next;
      end;

    Finally
      slMsg.Insert(0, 'Cash payment voucher created successfully for ' + IntToStr(iSuccess) + ' Accounts.');
      sMsg := slMsg.Text;
      FreeAndNil(oProgress);
      FreeAndNil(slMsg);
      ShowMessage(sMsg);
    End;

    cdsCashSettlement.Refresh;
  end;
end;

procedure TfrmCashSettlementList.actCreateAllReceiveVoucherExecute(
  Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
  slMsg: TStringList;
  oProgress: TfrmProgressBar;
  i, n, iSuccess, iReject: Integer;
begin
  inherited;
  if (not cdsCashSettlement.Active) or (cdsCashSettlement.IsEmpty) then
    Exit;

  if MessageDlg('Are you sure to create all receive voucher?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    slMsg := TStringList.Create;
    oProgress := TfrmProgressBar.Create(Nil);
    Try
      iSuccess := 0;
      iReject := 0;
      i := 0;
      n := cdsCashSettlement.RecordCount;
      oProgress.Show;

      cdsCashSettlement.First;
      while not cdsCashSettlement.Eof do
      begin
        i := i + 1;

        oProgress.ChangeBar(trunc(i / n * 100), 'Processing Voucher for Account ' +
          QuotedStr(cdsCashSettlementACCNO.AsString));

        bResult := dmGlobal.RemoteServer.CreateReceiveVoucher(cdsCashSettlementACCID.AsInteger, cdsCashSettlementSETTLE_CCYCODE.AsString, dtDueDate.Date, sMsg);
        slMsg.Add('Account ' + cdsCashSettlementACCNO.AsString + ': ' + sMsg);
        if bResult then
          iSuccess := iSuccess + 1
        else
          iReject := iReject + 1;

        cdsCashSettlement.Next;
      end;

    Finally
      slMsg.Insert(0, 'Cash recive voucher created successfully for ' + IntToStr(iSuccess) + ' Accounts.');
      sMsg := slMsg.Text;
      FreeAndNil(oProgress);
      FreeAndNil(slMsg);
      ShowMessage(sMsg);
    End;

    cdsCashSettlement.Refresh;
  end;
end;

procedure TfrmCashSettlementList.actCreateBankPaymentExecute(
  Sender: TObject);
var
  oForm: TfrmCreateCashRecPay;
  sMsg: string;
begin
  oForm := TfrmCreateCashRecPay.Create(nil);
  with TfrmCreateCashRecPay(oForm) do
  begin
    VoucherID  := -1;
    Caption    := 'Create Cash Payment';
    CreateCash := 'P';

    AccID     := cdsCashSettlementACCID.AsInteger;
    AccCode   := cdsCashSettlementACCNO.AsString;
    AccName   := cdsCashSettlementACCNAME.AsString;
    ACCY      := cdsCashSettlementCCYCODE.AsString;
    Amount    := cdsCashSettlementNETARAPDUE.AsFloat;
    ChangeAcc := False;
    CashQQ    := cdsCashSettlementCASH_QQ.AsFloat;

    if oForm.ShowModal = mrOk then
    begin
//      dmGlobal.RemoteServer.CashVoucher_Posting('2', cdsCashVoucher_HVOUCHERID.AsLargeInt, cdsCashVoucher_HVOUCHERDATE.AsDateTime,
//        '', cdsCashVoucher_HVOUCHERTYPE.AsString, sMsg);

//      dmGlobal.RemoteServer.CreateBankPaymentReceive(cdsCashVoucher_HVOUCHERDATE.AsDateTime, cdsCashVoucher_HVOUCHERTYPE.AsString,
//        '0', cdsCashVoucher_HACCID.AsLargeInt, cdsCashVoucher_HBROKER_BANKID.AsLargeInt, cdsCashVoucher_HCUST_BANKID.AsLargeInt,
//        cdsCashVoucher_HVOUCHER_DESC.AsString, cdsCashVoucher_HCCYCODE.AsString, cdsCashVoucher_HEXRATE.AsFloat, cdsCashVoucher_HTOTAL_AMOUNT_FX.AsFloat, sMsg);
//      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end;
  end;
  FreeAndNil(oForm);
  cdsCashSettlement.Refresh;
end;

procedure TfrmCashSettlementList.actCreateBankPaymentUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (rbSettleType.EditValue <> '%') and ((rbSettleType.EditValue = 'E') or (rbSettleType.EditValue = 'C'));
end;

procedure TfrmCashSettlementList.actCreateBankReceiveExecute(
  Sender: TObject);
var
  oForm: TfrmCreateCashRecPay;
  sMsg: string;
begin
  oForm := TfrmCreateCashRecPay.Create(nil);
  with TfrmCreateCashRecPay(oForm) do
  begin
    VoucherID  := -1;
    Caption    := 'Create Cash Receive';
    CreateCash := 'R';

    AccID     := cdsCashSettlementACCID.AsInteger;
    AccCode   := cdsCashSettlementACCNO.AsString;
    AccName   := cdsCashSettlementACCNAME.AsString;
    ACCY      := cdsCashSettlementCCYCODE.AsString;
    Amount    := cdsCashSettlementNETARAPDUE.AsFloat;
    ChangeAcc := False;

    if oForm.ShowModal = mrOk then
    begin
//      dmGlobal.RemoteServer.CashVoucher_Posting('2', cdsCashVoucher_HVOUCHERID.AsLargeInt, cdsCashVoucher_HVOUCHERDATE.AsDateTime,
//        '', cdsCashVoucher_HVOUCHERTYPE.AsString, sMsg);

//      dmGlobal.RemoteServer.CreateBankPaymentReceive(cdsCashVoucher_HVOUCHERDATE.AsDateTime, cdsCashVoucher_HVOUCHERTYPE.AsString,
//        '1', cdsCashVoucher_HACCID.AsLargeInt, cdsCashVoucher_HBROKER_BANKID.AsLargeInt, cdsCashVoucher_HCUST_BANKID.AsLargeInt,
//        cdsCashVoucher_HVOUCHER_DESC.AsString, cdsCashVoucher_HCCYCODE.AsString, cdsCashVoucher_HEXRATE.AsFloat, cdsCashVoucher_HTOTAL_AMOUNT_FX.AsFloat, sMsg);
//      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end;
  end;
  FreeAndNil(oForm);
  cdsCashSettlement.Refresh;
end;

procedure TfrmCashSettlementList.actCreateBankReceiveUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (rbSettleType.EditValue <> '%') and ((rbSettleType.EditValue = 'E') or (rbSettleType.EditValue = 'C'));
end;

procedure TfrmCashSettlementList.actCreateDevidenAllVoucherExecute(
  Sender: TObject);
var
  sMessage: string;
  sProduct: string;
begin
  inherited;
  if MessageDlg('Create all dividen cash voucher ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    pnlWait.Visible := True;
    Try
      Application.ProcessMessages;

      if ckSelectAll.State = cbsChecked then
        sProduct := cbProduct.EditValue
      else
        sProduct := '';

      dmGlobal.RemoteServer.CreateAllDevidenCashVoucher(dtDueDate.Date, sMessage);
    Finally
      pnlWait.Visible := False;
    End;

    MessageDlg(sMessage, mtInformation, [mbOk], 0);
    cdsCashSettlement.Refresh;
  end;
end;

procedure TfrmCashSettlementList.actCreateDevidenAllVoucherUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (rbSettleType.EditValue <> '%');
end;

procedure TfrmCashSettlementList.actCreateSettlementExecute(
  Sender: TObject);
var
  oForm : TForm;
  wYear, wMonth, wDay: Word;
  dDueDate: TDate;
  sPR: string;
begin
  inherited;
  sPR := gvwCashSettle.Controller.SelectedRecords[0].Values[gvwCashSettlePR.Index];
  if frmCreateSettlement.Run(cdsCashSettlementACCID.AsInteger, cdsCashSettlementCOMPANY_BANKID.AsInteger,
     cdsCashSettlementCCYCODE.AsString, cdsCashSettlementCASH_QQ.AsFloat, sPR) = mrOK then
  cdsCashSettlement.Refresh;
end;

procedure TfrmCashSettlementList.actCreateSettlementMSOPExecute(
  Sender: TObject);
begin
  inherited;
  if frmCreateSettlementMSOP.Run(cdsCashSettlementACCID.AsInteger, cdsCashSettlementCOMPANY_BANKID.AsInteger, cdsCashSettlementACCSOPID.AsInteger,
     cdsCashSettlementMSOP_BANKID.AsInteger, cdsCashSettlementCCYCODE.AsString, cdsCashSettlementCASH_QQ.AsFloat, dtDueDate.Date) = mrOK then
  cdsCashSettlement.Refresh;
end;

procedure TfrmCashSettlementList.actCreateSettlementUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Visible := False;
end;

procedure TfrmCashSettlementList.actCreateVoucherExecute(Sender: TObject);
begin
  inherited;
  if frmCashPayment.Run(cdsCashSettlementACCID.AsInteger, cdsCashSettlementCOMPANY_BANKID.AsInteger, cdsCashSettlementCCYCODE.AsString,
    cdsCashSettlementCASH_ONHAND.AsFloat, cdsCashSettlementCREATE_VOUCHER.AsFloat, cdsCashSettlementCASH_QQ.AsFloat, dtDueDate.Date,
    cdsCashSettlementCashKeep.AsString, cdsCashSettlementSETTLE_TYPE.AsString, rbSettleType.EditValue) = mrOK
  then
  begin
    cdsCashSettlement.Refresh;
  end;
end;

procedure TfrmCashSettlementList.actCreateVoucherNewExecute(Sender: TObject);
begin
  inherited;
  if frmCashSettleVoucher.CreateVoucher(cdsCashSettlementACCID.AsInteger, cdsCashSettlementCOMPANY_BANKID.AsInteger, cdsCashSettlementACCTYPE.AsString
    , cdsCashSettlementCCYCODE.AsString, 'IDR', dtDueDate.Date) then
  begin
    cdsCashSettlement.Refresh;
  end;
end;

procedure TfrmCashSettlementList.actCreateVoucherUpdate(Sender: TObject);
begin
  inherited;
  //TAction(Sender).Visible := (rgSaveKeep.EditingValue <> 'A');
  TAction(Sender).Enabled := (rbSettleType.EditValue <> '%');
end;

procedure TfrmCashSettlementList.actRollOverProcessExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Rollover Process ?', mtConfirmation, [mbYes, mbNo], 0)= mrYes then
  begin
    pnlWait.Visible := True;
    Try
      Application.ProcessMessages;

      dmGlobal.RemoteServer.RollOverProcess(dtDueDate.Date, rbSettleType.EditValue,cbProduct.EditValue, sMsg);
    Finally
      pnlWait.Visible := False;
    End;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
    cdsCashSettlement.Refresh
  end;
end;

procedure TfrmCashSettlementList.actSelectAllCashVoucherPostingExecute(
  Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
begin
  inherited;
  if MessageDlg('Posting All Payment Voucher ?', mtConfirmation, [mbYes, mbNo], 0)= mrYes then
  begin
    pnlWait.Visible := True;
    Try
      Application.ProcessMessages;

      bResult := dmGlobal.RemoteServer.AllPaymentPosting(dtDueDate.Date, rbSettleType.EditValue, cbProduct.EditValue, sMsg);
    Finally
      pnlWait.Visible := False;
    End;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
    cdsCashSettlement.Refresh
  end;
end;

procedure TfrmCashSettlementList.actSelectAllCashVoucherPostingUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (rbSettleType.EditValue <> '%');
end;

procedure TfrmCashSettlementList.actSetoffSettlementMarginProcessExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.RemoteServer.SetoffSettlementMarginProcess(dtDueDate.Date, rbSettleType.EditValue, cbProduct.EditValue, sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmCashSettlementList.actViewCashPaymentExecute(
  Sender: TObject);
var
  oForm : TfrmViewCashVoucher;
begin
  inherited;
  oForm := TfrmViewCashVoucher.Create(nil);

  TfrmViewCashVoucher(oForm).Run(cdsCashSettlementACCID.AsInteger, cdsCashSettlementCOMPANY_BANKID.AsInteger, cdsCashSettlementACCSOPID.AsInteger,
     cdsCashSettlementCCYCODE.AsString, cdsCashSettlementCASH_ONHAND.AsFloat, cdsCashSettlementCREATE_VOUCHER.AsFloat, dtDueDate.Date,
     cdsCashSettlementCASHKEEP.AsString);

  if oForm.ShowModal = mrOk then
    cdsCashSettlement.Refresh;
  FreeAndNil(oForm);

//  if frmViewCashVoucher.Run(cdsCashSettlementACCID.AsInteger, cdsCashSettlementCOMPANY_BANKID.AsInteger, cdsCashSettlementACCSOPID.AsInteger,
//     cdsCashSettlementCCYCODE.AsString, cdsCashSettlementCASH_ONHAND.AsFloat, cdsCashSettlementCREATE_VOUCHER.AsFloat, dtDueDate.Date, cdsCashSettlementCASHKEEP.AsString) = mrOk then
//  cdsCashSettlement.Refresh;
end;

procedure TfrmCashSettlementList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmCashSettlementList.actViewVoucherNewExecute(Sender: TObject);
begin
  inherited;
  if frmCashSettleVoucherProcess.ProcessVoucher(False, cdsCashSettlementACCID.AsInteger, -1) then
  begin
    cdsCashSettlement.Refresh;
  end;
end;

procedure TfrmCashSettlementList.cbBusTypePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmCashSettlementList.ckSelectAllPropertiesChange(Sender: TObject);
begin
  inherited;
  if ckSelectAll.Checked = true then
  begin
    cbProduct.EditValue := '';
    cbProduct.Enabled   := false;
  end
  else
    cbProduct.Enabled := true;
end;

procedure TfrmCashSettlementList.cxButton2Click(Sender: TObject);
var
  sMsg: string;
  bResult: Boolean;
begin
  inherited;
  bResult := dmGlobal.RemoteServer.CreateAllCashVoucher_KPEI(dtDueDate.Date, sMsg);
  MessageDlg('Create Settlement KPEI Receive : '+ sMsg, mtInformation, [mbOk], 0);
  cdsCashSettlement.Refresh;
end;

procedure TfrmCashSettlementList.dtDueDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmCashSettlementList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBussCat.Close;
    cdsLuBussCat.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsJrnType.Close;
    cdsJrnType.Open;

    cdsLuAccountBank.Close;
    cdsLuAccountBank.Open;

    cdsLuSIType.Close;
    cdsLuSIType.Open;

    cdsLuProduct.Close;
    cdsLuProduct.Open;
  end;

  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  cbProduct.ItemIndex := 0;
  cbProduct.Enabled := false;
  ckSelectAll.Checked := true;
  RefreshData;
end;

procedure TfrmCashSettlementList.rbRPPropertiesChange(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmCashSettlementList.rbSettleTypePropertiesChange(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmCashSettlementList.rbSpecDatePropertiesChange(
  Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmCashSettlementList.RefreshData;
var
  iDueDateFile: Integer;
  oBookMark: TBookmark;
  i: Integer;
  ABookMark: array of TBookmark;
  AFocusedRecord: TcxCustomGridRecord;
begin
  AFocusedRecord := gvwCashSettle.Controller.FocusedRecord;
  for i := 0 to gvwCashSettle.Controller.SelectedRecordCount -1 do
    gvwCashSettle.Controller.SelectedRecords[i].Focused := True;

  FDueDate     := DateOf(dtDueDate.Date);
  iDueDateFile := DateTimeToFileDate(dtDueDate.Date);

  cdsCashSettlement.Close;
  cdsCashSettlement.Params[0].AsDate    := FDueDate;
  cdsCashSettlement.Params[1].AsString  := rbSpecDate.EditValue;
  if rbSettle.EditValue = '%' then
    cdsCashSettlement.Params[2].AsInteger := 1
  else
    cdsCashSettlement.Params[2].AsInteger := 0;
  cdsCashSettlement.Params[3].AsString  := rbSettle.EditValue;
  cdsCashSettlement.Params[4].AsString := rbSettleType.EditValue;

  if ckSelectAll.Checked = True then
  begin
    cdsCashSettlement.Params[5].AsString  := '';
    cdsCashSettlement.Params[6].AsInteger  := 1;
  end
  else
  begin
    cdsCashSettlement.Params[5].AsString  := cbProduct.EditValue;
    cdsCashSettlement.Params[6].AsInteger  := 0;
  end;

  cdsCashSettlement.Open;

  //Request By Irvan 20170212 By Telegram, Caption band yang pertama semuanya "<"
//  if rbSpecDate.EditValue = 1 then
    gvwCashSettle.Bands[2].Caption := FormatDateTime('< dd mmm yyyy', dtDueDate.Date);
//  else
//    gvwCashSettle.Bands[2].Caption := FormatDateTime('<= dd mmm yyyy', dtDueDate.Date);
  gvwCashSettle.Bands[3].Caption := FormatDateTime('dd mmm yyyy', dtDueDate.Date);
  gvwCashSettle.Bands[4].Caption := FormatDateTime('dd mmm yyyy', dmGlobal.RemoteServer.DateAppend(iDueDateFile, 1));
  gvwCashSettle.Bands[5].Caption := FormatDateTime('dd mmm yyyy', dmGlobal.RemoteServer.DateAppend(iDueDateFile, 2));
  gvwCashSettle.Bands[6].Caption := FormatDateTime('> dd mmm yyyy', dmGlobal.RemoteServer.DateAppend(iDueDateFile, 2));
end;

procedure TfrmCashSettlementList.rgSettleTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  RefreshData;
end;

Initialization
  RegisterClass(TfrmCashSettlementList);

end.
