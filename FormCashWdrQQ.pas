unit FormCashWdrQQ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Datasnap.DBClient, NClientDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBEdit,
  cxImageComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtonEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, ClassClientConst,
  dxLayoutLookAndFeels, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter;

type
  TfrmCashWdrQQ = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cbBankSource: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cdsCashWdr: TNClientDataset;
    cdsCashWdrCWID: TLargeintField;
    cdsCashWdrCWCODE: TStringField;
    cdsCashWdrCWDATE: TDateField;
    cdsCashWdrCWDESC: TStringField;
    cdsCashWdrACCID: TIntegerField;
    cdsCashWdrACCNO: TStringField;
    cdsCashWdrACTLED_ACCID: TIntegerField;
    cdsCashWdrACTLED_SEQID: TIntegerField;
    cdsCashWdrTARGET_ACCBANKID: TIntegerField;
    cdsCashWdrSOURCE_ACCBANKID: TIntegerField;
    cdsCashWdrCCY: TStringField;
    cdsCashWdrCWAMT: TFloatField;
    cdsCashWdrBNCHARGES: TFloatField;
    cdsCashWdrBNCHARGESTYPE: TStringField;
    cdsCashWdrPOSTED: TStringField;
    cdsCashWdrMODDA: TDateTimeField;
    cdsCashWdrMODUI: TStringField;
    cdsCashWdrAPPDA: TDateTimeField;
    cdsCashWdrAPPUI: TStringField;
    cdsCashWdrUNDER4Y: TIntegerField;
    cdsCashWdrUNDER4YDA: TDateTimeField;
    cdsCashWdrNOTES4Y: TStringField;
    cdsCashWdrISDEL: TIntegerField;
    cdsCashWdrID: TLargeintField;
    cdsCashWdrACCNAME: TStringField;
    cdsCashWdrSOURCE_BNCODE: TStringField;
    cdsCashWdrSOURCE_BNACCNO: TStringField;
    cdsCashWdrSOURCE_BNACCNAME: TStringField;
    cdsCashWdrSOURCE_BNBRANCH: TStringField;
    cdsCashWdrTARGET_BNCODE: TStringField;
    cdsCashWdrTARGET_BNACCNO: TStringField;
    cdsCashWdrTARGET_BNACCNAME: TStringField;
    cdsCashWdrTARGET_BNBRANCH: TStringField;
    cdsCashWdrTRANSTYPE: TStringField;
    cdsCashWdrTRANSFER_AMT: TFloatField;
    cdsCashWdrACCSOPID: TLargeintField;
    cdsCashWdrLINKTYPE: TStringField;
    cdsCashWdrLINKID: TLargeintField;
    cdsCashWdrPOSTED_DATE: TDateField;
    cdsCashWdrPOSTED_UI: TStringField;
    cdsCashWdrLINKNO: TStringField;
    cdsCashWdrENTRYDATE: TDateField;
    cdsCashWdrWDR_TYPE: TStringField;
    cdsCashWdrUPLOAD_TIME: TDateTimeField;
    cdsCashWdrCANCEL: TStringField;
    cdsCashWdrCANCEL_DATE: TDateField;
    cdsCashWdrCANCEL_UI: TStringField;
    cdsCashWdrAPPROVED: TStringField;
    cdsCashWdrAPPROVED_DATE: TDateField;
    cdsCashWdrAPPROVED_UI: TStringField;
    cdsCashPosition: TNClientDataset;
    cdsCashPositionBranchID: TIntegerField;
    cdsCashPositionBranchCode: TStringField;
    cdsCashPositionBranchName: TStringField;
    cdsCashPositionSalesID: TIntegerField;
    cdsCashPositionSalesCode: TStringField;
    cdsCashPositionSalesName: TStringField;
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
    dsCashPosition: TDataSource;
    cdsBankCharges: TNClientDataset;
    cdsBankChargesBNCODE: TStringField;
    cdsBankChargesBNCHGTYPE: TStringField;
    cdsBankChargesCHARGE_AMT: TFloatField;
    cdsBankChargesCHARGE_MINTRANS: TFloatField;
    cdsBankChargesCHARGE_MAXTRANS: TFloatField;
    cdsBankChargesMODDA: TDateTimeField;
    cdsBankChargesMODUI: TStringField;
    cdsBankChargesAPPDA: TDateTimeField;
    cdsBankChargesAPPUI: TStringField;
    cdsBankChargesISDEL: TIntegerField;
    cdsBankChargesID: TLargeintField;
    cdsCashPositionCASH_QQ: TFloatField;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cdsCashWdrSOURCE_CCYCODE: TStringField;
    cdsCashWdrTARGET_CCYCODE: TStringField;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cdsBankInstruction: TNClientDataset;
    cdsBankInstructionBIID: TLargeintField;
    cdsBankInstructionBINO: TStringField;
    cdsBankInstructionBITYPE: TStringField;
    cdsBankInstructionENTRYDATE: TDateField;
    cdsBankInstructionVALUEDATE: TDateField;
    cdsBankInstructionBIDESC: TStringField;
    cdsBankInstructionBANK_REF: TStringField;
    cdsBankInstructionTRANS_TYPE: TStringField;
    cdsBankInstructionLINKID: TLargeintField;
    cdsBankInstructionLINKNO: TStringField;
    cdsBankInstructionSTAT: TStringField;
    cdsBankInstructionACCID: TIntegerField;
    cdsBankInstructionACCBANKID_SOURCE: TIntegerField;
    cdsBankInstructionBNCODE_SOURCE: TStringField;
    cdsBankInstructionBNACCNO_SOURCE: TStringField;
    cdsBankInstructionBNACCNAME_SOURCE: TStringField;
    cdsBankInstructionBNBRANCH_SOURCE: TStringField;
    cdsBankInstructionACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionBNCODE_TARGET: TStringField;
    cdsBankInstructionBNACCNO_TARGET: TStringField;
    cdsBankInstructionBNACCNAME_TARGET: TStringField;
    cdsBankInstructionBNBRANCH_TARGET: TStringField;
    cdsBankInstructionTRANFER_TYPE: TStringField;
    cdsBankInstructionCCY: TStringField;
    cdsBankInstructionAMOUNT: TFloatField;
    cdsBankInstructionCHARGES: TFloatField;
    cdsBankInstructionNETAMOUNT: TFloatField;
    cdsBankInstructionMODDA: TDateTimeField;
    cdsBankInstructionMODUI: TStringField;
    cdsBankInstructionAPPDA: TDateTimeField;
    cdsBankInstructionAPPUI: TStringField;
    cdsBankInstructionUNDER4Y: TIntegerField;
    cdsBankInstructionUNDER4YDA: TDateTimeField;
    cdsBankInstructionNOTES4Y: TStringField;
    cdsBankInstructionISDEL: TIntegerField;
    cdsBankInstructionID: TLargeintField;
    cdsBankInstructionBANKTYPE_SOURCE: TStringField;
    cdsBankInstructionCCYCODE_SOURCE: TStringField;
    cdsBankInstructionBANKTYPE_TARGET: TStringField;
    cdsBankInstructionCCYCODE_TARGET: TStringField;
    cdsCashPositionCASH_SUBACC: TFloatField;
    procedure cdsCashWdrNewRecord(DataSet: TDataSet);
    procedure cdsCashWdrACCIDChange(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsCashWdrCCYChange(Sender: TField);
    procedure cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox1Exit(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cdsCashWdrBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsCashWdrAfterOpen(DataSet: TDataSet);
    procedure cbBankSourceEnter(Sender: TObject);
    procedure cbBankSourceExit(Sender: TObject);
    procedure cdsCashWdrAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsCashWdrTARGET_ACCBANKIDChange(Sender: TField);
  private
    { Private declarations }
    procedure CalculateTransferAmount;
  public
    { Public declarations }
  end;

var
  frmCashWdrQQ: TfrmCashWdrQQ;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal, FormLuAccount, FormCashWdrList, cxLookupDBGrid;

procedure TfrmCashWdrQQ.btnOKClick(Sender: TObject);
var
  dAvailWithdraw,
  dWithdrawAmount: Double;
begin
  dAvailWithdraw  := cdsCashPositionCASH_QQ.AsFloat;
  dWithdrawAmount := dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat + dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat;

//  if (Self.DataContainer.State in [mddsInsert, mddsEdit, mddsApprove]) or ((dsSubject.DataSet.FieldByName('UPDSTS').AsString = 'N') or (dsSubject.DataSet.FieldByName('UPDSTS').AsString = 'U')) then
  if (Self.State in [pkCreate, pkUpdate, pkApprove]) then
  begin
    if (dsSubject.DataSet.FieldByName('CWAMT').AsFloat <> 0) then
    begin
      if dAvailWithdraw >= dWithdrawAmount then
        inherited
      else
        MessageDlg('Not enough cash position to be withdrawed...', mtError, [mbOK], 0);
    end
    else
      MessageDlg('Plase fill the amount for withdrawed...', mtError, [mbOK], 0);
  end
  else
    inherited;

  cdsBankInstruction.Close;
  cdsBankInstruction.Params[0].AsInteger := -1;
  cdsBankInstruction.Open;

  if (Self.State in [pkCreate]) and (cdsCashWdrTARGET_ACCBANKID.AsInteger <> 0) then
  begin
    if cdsCashWdr.State in dsEditModes then
      cdsCashWdr.Post;

    //Bank Type di Bank Instruction
    //1: Company Payment Bank
    //2: Company QQ Bank
    //3: Client RDN Bank
    //4: Client Private Bank

    cdsBankInstruction.Append;
    cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
    cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
      cdsCashWdrENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
    cdsBankInstructionBITYPE.AsString := 'P';
    cdsBankInstructionENTRYDATE.AsDateTime := cdsCashWdrENTRYDATE.AsDateTime;
    cdsBankInstructionVALUEDATE.AsDateTime := cdsCashWdrCWDATE.AsDateTime;
    cdsBankInstructionBIDESC.AsString := 'Cash Withdraw ' + cdsCashWdrCWCODE.AsString;
    cdsBankInstructionBANK_REF.AsString := '';
    cdsBankInstructionTRANS_TYPE.AsString := 'CW';
    cdsBankInstructionLINKID.AsLargeInt := cdsCashWdrCWID.AsLargeInt;
    cdsBankInstructionLINKNO.AsString := cdsCashWdrCWCODE.AsString;
    cdsBankInstructionSTAT.AsString := '1';
    cdsBankInstructionACCID.AsInteger := cdsCashWdrACCID.AsInteger;

    cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
    cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashWdrSOURCE_ACCBANKID.AsInteger;
    cdsBankInstructionBNCODE_SOURCE.AsString := cdsCashWdrSOURCE_BNCODE.AsString;
    cdsBankInstructionBNACCNO_SOURCE.AsString := cdsCashWdrSOURCE_BNACCNO.AsString;
    cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsCashWdrSOURCE_BNACCNAME.AsString;
    cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsCashWdrSOURCE_BNBRANCH.AsString;
    cdsBankInstructionCCYCODE_SOURCE.AsString := cdsCashWdrSOURCE_CCYCODE.AsString;

    cdsBankInstructionBANKTYPE_TARGET.AsString := '4';
    cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashWdrTARGET_ACCBANKID.AsInteger;
    cdsBankInstructionBNCODE_TARGET.AsString := cdsCashWdrTARGET_BNCODE.AsString;
    cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashWdrTARGET_BNACCNO.AsString;
    cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashWdrTARGET_BNACCNAME.AsString;
    cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashWdrTARGET_BNBRANCH.AsString;
    cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashWdrTARGET_CCYCODE.AsString;

    cdsBankInstructionTRANFER_TYPE.AsString := cdsCashWdrTRANSTYPE.AsString;//R: Remiter, B: Beneficiary
    cdsBankInstructionCCY.AsString := cdsCashWdrCCY.AsString;
    cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashWdrCWAMT.AsFloat);
    cdsBankInstructionCHARGES.AsFloat := Abs(cdsCashWdrBNCHARGES.AsFloat);
    cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashWdrTRANSFER_AMT.AsFloat);
    cdsBankInstruction.Post;
  end;
end;

procedure TfrmCashWdrQQ.CalculateTransferAmount;
begin
  if dsSubject.DataSet.FieldByName('TRANSTYPE').AsString = 'R' then
    dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat := dsSubject.DataSet.FieldByName('CWAMT').AsFloat
  else if dsSubject.DataSet.FieldByName('TRANSTYPE').AsString = 'B' then
    dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat := dsSubject.DataSet.FieldByName('CWAMT').AsFloat - dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat;
end;

procedure TfrmCashWdrQQ.cdsCashWdrACCIDChange(Sender: TField);
begin
  inherited;
  cdsCashPosition.Close;
  cdsCashPosition.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
  cdsCashPosition.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
  cdsCashPosition.Open;

  if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuPrivateBankAcc.Close;
      cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuPrivateBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Open;
    end;
  end;
end;

procedure TfrmCashWdrQQ.cdsCashWdrAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if cdsBankInstruction.Active then
    cdsBankInstruction.ApplyUpdates(-1);
end;

procedure TfrmCashWdrQQ.cdsCashWdrAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsCashWdr.IsEmpty then
  begin
    cdsCashPosition.Close;
    cdsCashPosition.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
    cdsCashPosition.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
    cdsCashPosition.Open;

    if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
    begin
      with dmGlobal.IntDataLookup do
      begin
        cdsLuPrivateBankAcc.Close;
        cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
        cdsLuPrivateBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
        cdsLuPrivateBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
        cdsLuPrivateBankAcc.Open;
      end;
    end;
  end;
end;

procedure TfrmCashWdrQQ.cdsCashWdrBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCashWdr.State in [dsInsert] then
  begin
    cdsCashWdrCWID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHWDR');
    cdsCashWdrPOSTED.AsString := '0';
    cdsCashWdrAPPROVED.AsString    := '0';
    cdsCashWdrCWCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCashWdrENTRYDATE.AsDateTime, 'CW', 'TBL_B_CASHWDR');
  end;
end;

procedure TfrmCashWdrQQ.cdsCashWdrCCYChange(Sender: TField);
begin
  inherited;
  if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuPrivateBankAcc.Close;
      cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuPrivateBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Open;
    end;
  end;
end;

procedure TfrmCashWdrQQ.cdsCashWdrNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCashWdrTRANSTYPE.AsString := 'R';
  cdsCashWdrACTLED_ACCID.AsInteger     := 0;
  cdsCashWdrACTLED_SEQID.AsInteger     := 0;
  cdsCashWdrTARGET_ACCBANKID.AsInteger := 0;
  cdsCashWdrENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCashWdrCWDATE.AsDateTime := cdsCashWdrENTRYDATE.AsDateTime;
  cdsCashWdrCWCODE.AsString := '<AUTO>';
  cdsCashWdrWDR_TYPE.AsString := 'Q';
  cdsCashWdrCCY.AsString := dmGlobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmCashWdrQQ.cdsCashWdrTARGET_ACCBANKIDChange(Sender: TField);
begin
  inherited;
  if cdsCashWdrTARGET_ACCBANKID.IsNull then
    cdsCashWdrTARGET_ACCBANKID.AsInteger := 0;
end;

procedure TfrmCashWdrQQ.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
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

procedure TfrmCashWdrQQ.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
  inherited;
  with frmCashWdrList do
  begin
    if (dsSubject.DataSet.FieldByName('SOURCE_BNCODE').AsString <> dsSubject.DataSet.FieldByName('TARGET_BNCODE').AsString) and
       (not VarIsNull(dsSubject.DataSet.FieldByName('CWAMT').AsFloat) or not VarIsEmpty(dsSubject.DataSet.FieldByName('CWAMT').AsFloat))
    then
    begin
      cdsBankCharges.Filtered := False;
      cdsBankCharges.Filter   := 'BNCODE = ' + QuotedStr(dsSubject.DataSet.FieldByName('SOURCE_BNCODE').AsString) +
                                 ' AND CHARGE_MINTRANS <= '+dsSubject.DataSet.FieldByName('CWAMT').AsString +
                                 ' AND CHARGE_MAXTRANS >= '+dsSubject.DataSet.FieldByName('CWAMT').AsString;
      cdsBankCharges.Filtered := True;

      dsSubject.DataSet.FieldByName('BNCHARGESTYPE').AsString := cdsBankChargesBNCHGTYPE.AsString;
      dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat      := cdsBankChargesCHARGE_AMT.AsFloat;
    end
    else
    begin
      dsSubject.DataSet.FieldByName('BNCHARGESTYPE').AsString := 'OB';
      dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat      := 0;
    end;
  end;

  CalculateTransferAmount;
end;

procedure TfrmCashWdrQQ.cxDBImageComboBox1Exit(Sender: TObject);
begin
  inherited;
  CalculateTransferAmount;
end;

procedure TfrmCashWdrQQ.cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  CalculateTransferAmount;
end;

procedure TfrmCashWdrQQ.cbBankSourceEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbBankSource.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.AddItem(LGrid.Columns[4], foEqual, cdsCashWdrCCY.AsString, cdsCashWdrCCY.AsString);
    Active := True;
  end;
end;

procedure TfrmCashWdrQQ.cbBankSourceExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbBankSource.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.Clear;
    Active := False;
  end;
end;

procedure TfrmCashWdrQQ.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
      cdsLuCcy.Open;

    if not cdsLuAccount.Active then
      cdsLuAccount.Open
    else
      cdsLuAccount.Refresh;

    if not cdsLuAccountBank.Active then
      cdsLuAccountBank.Open
    else
      cdsLuAccountBank.Refresh;

    if not cdsLuCompanyBanks.Active then
      cdsLuCompanyBanks.Open
    else
      cdsLuCompanyBanks.Refresh;

    cdsBankCharges.Close;
    cdsBankCharges.Open;
  end;
end;

end.
