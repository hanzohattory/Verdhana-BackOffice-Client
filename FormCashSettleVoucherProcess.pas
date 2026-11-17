unit FormCashSettleVoucherProcess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxDBEdit, cxTextEdit, Datasnap.DBClient, NClientDataset, Vcl.Tabs,
  dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxCurrencyEdit,
  Vcl.ActnList, NDatasetAction, cxImageComboBox, dxLayoutLookAndFeels,
  System.Actions, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCashSettleVoucherProcess = class(TfrmEditorData)
    btnSettleVoucher: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    btnReverseVoucher: TcxButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    btnCancelVoucher: TcxButton;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsCashSettleHProcess: TNClientDataset;
    cdsCashSettleHProcessCSID: TLargeintField;
    cdsCashSettleHProcessCSNO: TStringField;
    cdsCashSettleHProcessCSDESC: TStringField;
    cdsCashSettleHProcessSETTLE_TYPE: TStringField;
    cdsCashSettleHProcessENTRYDATE: TDateField;
    cdsCashSettleHProcessVALUEDATE: TDateField;
    cdsCashSettleHProcessACCID: TIntegerField;
    cdsCashSettleHProcessCCY: TStringField;
    cdsCashSettleHProcessAMOUNT: TFloatField;
    cdsCashSettleHProcessFX_CCY: TStringField;
    cdsCashSettleHProcessFX_EXRATE: TFloatField;
    cdsCashSettleHProcessFX_AMOUNT: TFloatField;
    cdsCashSettleHProcessSTAT: TStringField;
    cdsCashSettleHProcessFULLFLOW: TStringField;
    cdsCashSettleHProcessACCBANKID: TIntegerField;
    cdsCashSettleHProcessMODDA: TDateTimeField;
    cdsCashSettleHProcessMODUI: TStringField;
    cdsCashSettleHProcessAPPDA: TDateTimeField;
    cdsCashSettleHProcessAPPUI: TStringField;
    cdsCashSettleHProcessUNDER4Y: TIntegerField;
    cdsCashSettleHProcessUNDER4YDA: TDateTimeField;
    cdsCashSettleHProcessNOTES4Y: TStringField;
    cdsCashSettleHProcessISDEL: TIntegerField;
    cdsCashSettleHProcessID: TLargeintField;
    cdsCashSettleHProcessACCCODE: TStringField;
    cdsCashSettleHProcessACCNAME: TStringField;
    cdsCashSettleHProcessBNCODE: TStringField;
    cdsCashSettleHProcessBNNAME: TStringField;
    cdsCashSettleHProcessBANKACCNO: TStringField;
    cdsCashSettleHProcessBANKACCNAME: TStringField;
    cdsCashSettleHProcessBANKBRANCH: TStringField;
    cdsCashSettleHProcessISRDN: TStringField;
    cdsCashSettleHProcessqryBankInstructionProcess: TDataSetField;
    cdsCashSettleHProcessqryCashSettleDProcess: TDataSetField;
    cdsCashSettleDProcess: TNClientDataset;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dsCashSettleD: TDataSource;
    cdsBankInstructionProcess: TNClientDataset;
    dsBankInstruction: TDataSource;
    grdMasterLevel2: TcxGridLevel;
    gvwBankInstruction: TcxGridDBBandedTableView;
    cdsBankInstructionProcessBIID: TLargeintField;
    cdsBankInstructionProcessBINO: TStringField;
    cdsBankInstructionProcessBITYPE: TStringField;
    cdsBankInstructionProcessENTRYDATE: TDateField;
    cdsBankInstructionProcessVALUEDATE: TDateField;
    cdsBankInstructionProcessBIDESC: TStringField;
    cdsBankInstructionProcessBANK_REF: TStringField;
    cdsBankInstructionProcessTRANS_TYPE: TStringField;
    cdsBankInstructionProcessLINKID: TLargeintField;
    cdsBankInstructionProcessLINKNO: TStringField;
    cdsBankInstructionProcessSTAT: TStringField;
    cdsBankInstructionProcessACCID: TIntegerField;
    cdsBankInstructionProcessACCBANKID_SOURCE: TIntegerField;
    cdsBankInstructionProcessBNCODE_SOURCE: TStringField;
    cdsBankInstructionProcessBNACCNO_SOURCE: TStringField;
    cdsBankInstructionProcessBNACCNAME_SOURCE: TStringField;
    cdsBankInstructionProcessBNBRANCH_SOURCE: TStringField;
    cdsBankInstructionProcessACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionProcessBNCODE_TARGET: TStringField;
    cdsBankInstructionProcessBNACCNO_TARGET: TStringField;
    cdsBankInstructionProcessBNACCNAME_TARGET: TStringField;
    cdsBankInstructionProcessBNBRANCH_TARGET: TStringField;
    cdsBankInstructionProcessTRANFER_TYPE: TStringField;
    cdsBankInstructionProcessCCY: TStringField;
    cdsBankInstructionProcessAMOUNT: TFloatField;
    cdsBankInstructionProcessCHARGES: TFloatField;
    cdsBankInstructionProcessNETAMOUNT: TFloatField;
    cdsBankInstructionProcessMODDA: TDateTimeField;
    cdsBankInstructionProcessMODUI: TStringField;
    cdsBankInstructionProcessAPPDA: TDateTimeField;
    cdsBankInstructionProcessAPPUI: TStringField;
    cdsBankInstructionProcessUNDER4Y: TIntegerField;
    cdsBankInstructionProcessUNDER4YDA: TDateTimeField;
    cdsBankInstructionProcessNOTES4Y: TStringField;
    cdsBankInstructionProcessISDEL: TIntegerField;
    cdsBankInstructionProcessID: TLargeintField;
    gvwBankInstructionBIID: TcxGridDBBandedColumn;
    gvwBankInstructionBINO: TcxGridDBBandedColumn;
    gvwBankInstructionBITYPE: TcxGridDBBandedColumn;
    gvwBankInstructionENTRYDATE: TcxGridDBBandedColumn;
    gvwBankInstructionVALUEDATE: TcxGridDBBandedColumn;
    gvwBankInstructionBIDESC: TcxGridDBBandedColumn;
    gvwBankInstructionBANK_REF: TcxGridDBBandedColumn;
    gvwBankInstructionTRANS_TYPE: TcxGridDBBandedColumn;
    gvwBankInstructionLINKID: TcxGridDBBandedColumn;
    gvwBankInstructionLINKNO: TcxGridDBBandedColumn;
    gvwBankInstructionSTAT: TcxGridDBBandedColumn;
    gvwBankInstructionACCID: TcxGridDBBandedColumn;
    gvwBankInstructionACCBANKID_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNCODE_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNO_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNAME_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNBRANCH_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionACCBANKID_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNCODE_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNO_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNAME_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNBRANCH_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionTRANFER_TYPE: TcxGridDBBandedColumn;
    gvwBankInstructionCCY: TcxGridDBBandedColumn;
    gvwBankInstructionAMOUNT: TcxGridDBBandedColumn;
    gvwBankInstructionCHARGES: TcxGridDBBandedColumn;
    gvwBankInstructionNETAMOUNT: TcxGridDBBandedColumn;
    gvwBankInstructionMODDA: TcxGridDBBandedColumn;
    gvwBankInstructionMODUI: TcxGridDBBandedColumn;
    gvwBankInstructionAPPDA: TcxGridDBBandedColumn;
    gvwBankInstructionAPPUI: TcxGridDBBandedColumn;
    gvwBankInstructionUNDER4Y: TcxGridDBBandedColumn;
    gvwBankInstructionUNDER4YDA: TcxGridDBBandedColumn;
    gvwBankInstructionNOTES4Y: TcxGridDBBandedColumn;
    gvwBankInstructionISDEL: TcxGridDBBandedColumn;
    gvwBankInstructionID: TcxGridDBBandedColumn;
    aclCashSettle: TActionList;
    actSettle: TNAction;
    actReverse: TNAction;
    actCancel: TNAction;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    lcCompanyBank: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    lcBankInfo: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cdsCashSettleHProcessFX_EXRATE_MODE: TStringField;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cdsCashSettleHProcessBANK_CCY: TStringField;
    cdsCashSettleHProcessBANK_EXRATE_MODE: TStringField;
    cdsCashSettleHProcessBANK_EXRATE: TFloatField;
    cdsCashSettleHProcessBANK_AMOUNT: TFloatField;
    cdsCashSettleHProcessBANKID: TIntegerField;
    cdsCashSettleHProcessBNCODE_BROKER: TStringField;
    cdsCashSettleHProcessBNNAME_BROKER: TStringField;
    cdsCashSettleHProcessBANKACCNO_BROKER: TStringField;
    cdsCashSettleHProcessBANKACCNAME_BROKER: TStringField;
    cdsCashSettleHProcessBANKBRANCH_BROKER: TStringField;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    lcInfo: TdxLayoutGroup;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxLayoutControl1Item31: TdxLayoutItem;
    cbCashBook: TcxDBLookupComboBox;
    dxLayoutControl1Item32: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    lcCashBook: TdxLayoutGroup;
    dxLayoutControl1Item33: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    cdsCashSettleHProcessCBDESC: TStringField;
    dxLayoutControl1Item34: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cdsCashSettleHProcessKEEP_TYPE: TStringField;
    cdsCashSettleHProcessACCBANKID_KEEP: TIntegerField;
    cdsCashSettleHProcessBANKID_FULLFLOW: TIntegerField;
    cdsCashSettleDProcessCSID: TLargeintField;
    cdsCashSettleDProcessCOID: TLargeintField;
    cdsCashSettleDProcessAMOUNT: TFloatField;
    cdsCashSettleDProcessCOCODE: TStringField;
    cdsCashSettleDProcessCODESC: TStringField;
    cdsCashSettleDProcessENTRYDATE: TDateField;
    cdsCashSettleDProcessTRDATE: TDateField;
    cdsCashSettleDProcessDUEDATE: TDateField;
    cdsCashSettleDProcessSIDE: TStringField;
    cdsCashSettleDProcessCCY: TStringField;
    cdsCashSettleDProcessCASH_OUTS_AMOUNT: TFloatField;
    cdsCashSettleDProcessSETTLED_AMOUNT: TFloatField;
    cdsCashSettleDProcessVOUCHER_AMOUNT: TFloatField;
    gvwMasterCSID: TcxGridDBBandedColumn;
    gvwMasterCOID: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCOCODE: TcxGridDBBandedColumn;
    gvwMasterCODESC: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterTRDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSIDE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCASH_OUTS_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterVOUCHER_AMOUNT: TcxGridDBBandedColumn;
    procedure actSettleExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsCashSettleHProcessAfterOpen(DataSet: TDataSet);
    procedure cdsCashSettleHProcessAfterScroll(DataSet: TDataSet);
    procedure actSettleUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCashSettleDProcessSIDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    FChanged: Boolean;
  public
    { Public declarations }
    property Changed: Boolean read FChanged;

    Function ProcessVoucher(ASingle: Boolean; ACCID: Integer; ACSID: Int64): Boolean;
  end;

var
  frmCashSettleVoucherProcess: TfrmCashSettleVoucherProcess;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmCashSettleVoucherProcess.actCancelExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to cancel this voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FCHanged := FChanged or dmGlobal.RemoteServer.CancelCashVoucher(cdsCashSettleHProcessCSID.AsLargeInt, sMsg);
    cdsCashSettleHProcess.Refresh;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmCashSettleVoucherProcess.actReverseExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to reverse this voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FCHanged := FChanged or dmGlobal.RemoteServer.ReverseCashVoucher(cdsCashSettleHProcessCSID.AsLargeInt, sMsg);
    cdsCashSettleHProcess.Refresh;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmCashSettleVoucherProcess.actReverseUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsCashSettleHProcessSTAT.AsString = '2';
end;

procedure TfrmCashSettleVoucherProcess.actSettleExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to settle this voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FCHanged := FChanged or dmGlobal.RemoteServer.SettleCashVoucher(cdsCashSettleHProcessCSID.AsLargeInt, sMsg);
    cdsCashSettleHProcess.Refresh;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmCashSettleVoucherProcess.actSettleUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsCashSettleHProcessSTAT.AsString = '1';
end;

procedure TfrmCashSettleVoucherProcess.cdsCashSettleDProcessSIDEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'P' then
    Text := 'Payment'
  else if Sender.AsString = 'R' then
    Text := 'Receive'
  else
    Text := Sender.AsString;
end;

procedure TfrmCashSettleVoucherProcess.cdsCashSettleHProcessAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if cdsCashSettleHProcessSETTLE_TYPE.AsString = 'P' then
    lcInfo.CaptionOptions.Text := 'Payment to Customer'
  else
    lcInfo.CaptionOptions.Text := 'Receive from Customer';

  lcCompanyBank.Visible := cdsCashSettleHProcessKEEP_TYPE.AsString = '3';
  lcCashBook.Visible := cdsCashSettleHProcessKEEP_TYPE.AsString = '4';
  lcBankInfo.Visible := cdsCashSettleHProcessFULLFLOW.AsString = '1';
end;

procedure TfrmCashSettleVoucherProcess.cdsCashSettleHProcessAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if cdsCashSettleHProcessSETTLE_TYPE.AsString = 'P' then
    lcInfo.CaptionOptions.Text := 'Payment to Customer'
  else
    lcInfo.CaptionOptions.Text := 'Receive from Customer';

  lcCompanyBank.Visible := cdsCashSettleHProcessKEEP_TYPE.AsString = '3';
  lcCashBook.Visible := cdsCashSettleHProcessKEEP_TYPE.AsString = '4';
  lcBankInfo.Visible := cdsCashSettleHProcessFULLFLOW.AsString = '1';
end;

procedure TfrmCashSettleVoucherProcess.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
      cdsLuCcy.Open;

    if not cdsLuCashBook.Active then
      cdsLuCashBook.Open
    else
      cdsLuCashBook.Refresh;
  end;
end;

procedure TfrmCashSettleVoucherProcess.FormShow(Sender: TObject);
begin
  inherited;
  with dmglobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.Open;
  end;
end;

function TfrmCashSettleVoucherProcess.ProcessVoucher(ASingle: Boolean;
  ACCID: Integer; ACSID: Int64): Boolean;
var
  oForm: TfrmCashSettleVoucherProcess;
begin
  Result := False;

  oForm := TfrmCashSettleVoucherProcess.Create(Nil);
  Try
    with oForm do
    begin
      cdsCashSettleHProcess.Close;
      cdsCashSettleHProcess.Params[0].AsBoolean := ASingle;
      cdsCashSettleHProcess.Params[1].AsInteger := ACCID;
      cdsCashSettleHProcess.Params[2].AsInteger := ACSID;
      cdsCashSettleHProcess.Open;

      if not cdsCashSettleHProcess.IsEmpty then
      begin
        lcNavLog.Visible := cdsCashSettleHProcess.RecordCount > 1;
        ShowModal;
        Result := Changed;
      end
      Else
      Begin
        ShowMessage('No Voucher Created For This Account!');
      End;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

Initialization
  RegisterClass(TfrmCashSettleVoucherProcess);

end.
