unit FormCashWithdraw;

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
  dxSkinsdxStatusBarPainter, dxDateRanges, dxScrollbarAnnotations,
  Datasnap.Provider, cxGridBandedTableView, cxGridDBBandedTableView, cxLabel,
  cxDBLabel;

type
  TfrmCashWithdraw = class(TfrmEditorData)
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
    lcSourceBank: TdxLayoutGroup;
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
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
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
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cdsCashWdrCWID: TLargeintField;
    cdsCashWdrCWCODE: TStringField;
    cdsCashWdrENTRYDATE: TDateField;
    cdsCashWdrCWDATE: TDateField;
    cdsCashWdrCWDESC: TStringField;
    cdsCashWdrSOURCE_ACCBANKID: TLargeintField;
    cdsCashWdrTARGET_ACCBANKID: TLargeintField;
    cdsCashWdrACCID: TIntegerField;
    cdsCashWdrCCY: TStringField;
    cdsCashWdrCWAMT: TFloatField;
    cdsCashWdrWDR_TYPE: TStringField;
    cdsCashWdrSTAT: TStringField;
    cdsCashWdrTRANSTYPE: TStringField;
    cdsCashWdrBNCHARGES: TFloatField;
    cdsCashWdrBNCHARGESTYPE: TStringField;
    cdsCashWdrTRANSFER_AMT: TFloatField;
    cdsCashWdrFULLFLOW: TBooleanField;
    cdsCashWdrLEDGERTRANSID: TLargeintField;
    cdsCashWdrLEDGERTRANSID_REVERSED: TLargeintField;
    cdsCashWdrFUNDTRANSID: TLargeintField;
    cdsCashWdrFUNDTRANSID_REVERSED: TLargeintField;
    cdsCashWdrENTRY_DATE: TDateTimeField;
    cdsCashWdrENTRY_SYSDATE: TDateTimeField;
    cdsCashWdrENTRY_UI: TStringField;
    cdsCashWdrPOSTED_DATE: TDateTimeField;
    cdsCashWdrPOSTED_SYSDATE: TDateTimeField;
    cdsCashWdrPOSTED_UI: TStringField;
    cdsCashWdrREVERSED_DATE: TDateTimeField;
    cdsCashWdrREVERSED_SYSDATE: TDateTimeField;
    cdsCashWdrREVERSED_UI: TStringField;
    cdsCashWdrUPLOAD_TIME: TDateTimeField;
    cdsCashWdrCANCELED_DATE: TDateTimeField;
    cdsCashWdrCANCELED_SYSDATE: TDateTimeField;
    cdsCashWdrCANCELED_UI: TStringField;
    cdsCashWdrAPPROVED_DATE: TDateTimeField;
    cdsCashWdrAPPROVED_SYSDATE: TDateTimeField;
    cdsCashWdrAPPROVED_UI: TStringField;
    cdsCashWdrMODDA: TDateTimeField;
    cdsCashWdrMODUI: TStringField;
    cdsCashWdrAPPDA: TDateTimeField;
    cdsCashWdrAPPUI: TStringField;
    cdsCashWdrUNDER4Y: TIntegerField;
    cdsCashWdrUNDER4YDA: TDateTimeField;
    cdsCashWdrNOTES4Y: TStringField;
    cdsCashWdrISDEL: TIntegerField;
    cdsCashWdrID: TLargeintField;
    cdsCashWdrACCCODE: TStringField;
    cdsCashWdrACCNAME: TStringField;
    cdsCashWdrsourceAccBankCode: TStringField;
    cdsCashWdrsourceBankBranch: TStringField;
    cdsCashWdrsourceBankAccNo: TStringField;
    cdsCashWdrsourceBankAccName: TStringField;
    cdsCashWdrsourceCcyCode: TStringField;
    cdsCashWdrtargetAccBankCode: TStringField;
    cdsCashWdrtargetBankBranch: TStringField;
    cdsCashWdrtargetBankAccNo: TStringField;
    cdsCashWdrtargetBankAccName: TStringField;
    cdsCashWdrtargetCcyCode: TStringField;
    glvCashLastPos: TcxGridLevel;
    grdCashLastPos: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    gvwCashLastPos: TcxGridDBBandedTableView;
    cdsCashLastPos: TNClientDataset;
    cdsCashLastPosACCID: TLargeintField;
    cdsCashLastPosCCYCODE: TStringField;
    cdsCashLastPosACCRUED_INTEREST: TFloatField;
    cdsCashLastPosCASH_ONHAND: TFloatField;
    cdsCashLastPosCASH_QQ: TFloatField;
    cdsCashLastPosCASH_SUBACC: TFloatField;
    cdsCashLastPosCASH_ONHOLD: TFloatField;
    cdsCashLastPosARAMT: TFloatField;
    cdsCashLastPosAPAMT: TFloatField;
    cdsCashLastPosCASH_OUTS: TFloatField;
    cdsCashLastPosBUY_AMT: TFloatField;
    cdsCashLastPosSELL_AMT: TFloatField;
    cdsCashLastPosCASH_WDR: TFloatField;
    cdsCashLastPosCASH_OTHERS: TFloatField;
    cdsCashLastPosCASH_BAL: TFloatField;
    dsCashLastPos: TDataSource;
    gvwCashLastPosACCID: TcxGridDBBandedColumn;
    gvwCashLastPosCCYCODE: TcxGridDBBandedColumn;
    gvwCashLastPosACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_ONHAND: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_QQ: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_SUBACC: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_ONHOLD: TcxGridDBBandedColumn;
    gvwCashLastPosARAMT: TcxGridDBBandedColumn;
    gvwCashLastPosAPAMT: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_OUTS: TcxGridDBBandedColumn;
    gvwCashLastPosBUY_AMT: TcxGridDBBandedColumn;
    gvwCashLastPosSELL_AMT: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_WDR: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_OTHERS: TcxGridDBBandedColumn;
    gvwCashLastPosCASH_BAL: TcxGridDBBandedColumn;
    lbCashBal: TcxDBLabel;
    lbCashBalance: TdxLayoutItem;
    cdsCashLastPoscashAvailable: TFloatField;
    procedure cdsCashWdrNewRecord(DataSet: TDataSet);
    procedure cdsCashWdrACCIDChange(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsCashWdrCCYChange(Sender: TField);
    procedure cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cdsCashWdrBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsCashWdrAfterOpen(DataSet: TDataSet);
    procedure cbBankSourceEnter(Sender: TObject);
    procedure cbBankSourceExit(Sender: TObject);
    procedure cdsCashWdrAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsCashWdrTARGET_ACCBANKIDChange(Sender: TField);
    procedure cdsCashWdrSOURCE_ACCBANKIDChange(Sender: TField);
    procedure cdsCashWdrWDR_TYPEChange(Sender: TField);
    procedure cdsCashWdrTRANSTYPEChange(Sender: TField);
    procedure cdsCashWdrBNCHARGESChange(Sender: TField);
    procedure cdsCashWdrCWAMTChange(Sender: TField);
  private
    { Private declarations }
    fSystemDate: TDateTime;

    procedure CalculateTransferAmount;
  public
    { Public declarations }
  end;

var
  frmCashWithdraw: TfrmCashWithdraw;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal, FormLuAccount, FormCashWdrList, cxLookupDBGrid;

procedure TfrmCashWithdraw.btnOKClick(Sender: TObject);
var
  dAvailWithdraw,
  dWithdrawAmount: Double;
begin
  if cdsCashWdrWDR_TYPE.AsString = 'R' then
    dAvailWithdraw := cdsCashLastPosCASH_ONHAND.AsFloat
  else if cdsCashWdrWDR_TYPE.AsString = 'Q' then
    dAvailWithdraw := cdsCashLastPosCASH_QQ.asFloat
  else if cdsCashWdrWDR_TYPE.AsString = 'S' then
    dAvailWithdraw := cdsCashLastPosCASH_SUBACC.AsFloat;

//  dAvailWithdraw  := cdsCashPositionCASH_QQ.AsFloat;
  dWithdrawAmount := dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat + dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat;

//  if (Self.DataContainer.State in [mddsInsert, mddsEdit, mddsApprove]) or ((dsSubject.DataSet.FieldByName('UPDSTS').AsString = 'N') or (dsSubject.DataSet.FieldByName('UPDSTS').AsString = 'U')) then
  if (Self.State in [pkCreate, pkUpdate, pkApprove]) then
  begin
    if (dsSubject.DataSet.FieldByName('CWAMT').AsFloat <> 0) then
    begin
      if dAvailWithdraw < dWithdrawAmount then
      begin
        MessageDlg('Not enough cash position to be withdrawed...', mtError, [mbOK], 0);
        exit;
      end;
    end
    else
    begin
      MessageDlg('Plase fill the amount for withdrawed...', mtError, [mbOK], 0);
      exit;
    end;
  end;
  {
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
    cdsBankInstructionBIID.AsLargeInt       := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
    cdsBankInstructionBINO.AsString         := dmGlobal.RemoteServer.GetVoucherNo(cdsCashWdrENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
    cdsBankInstructionBITYPE.AsString       := 'P';
    cdsBankInstructionENTRYDATE.AsDateTime  := cdsCashWdrENTRYDATE.AsDateTime;
    cdsBankInstructionVALUEDATE.AsDateTime  := cdsCashWdrCWDATE.AsDateTime;
    cdsBankInstructionBIDESC.AsString       := 'Cash Withdraw ' + cdsCashWdrCWCODE.AsString;
    cdsBankInstructionBANK_REF.AsString     := '';
    cdsBankInstructionTRANS_TYPE.AsString   := 'CW';
    cdsBankInstructionLINKID.AsLargeInt     := cdsCashWdrCWID.AsLargeInt;
    cdsBankInstructionLINKNO.AsString       := cdsCashWdrCWCODE.AsString;
    cdsBankInstructionSTAT.AsString         := '1';
    cdsBankInstructionACCID.AsInteger       := cdsCashWdrACCID.AsInteger;

    cdsBankInstructionBANKTYPE_SOURCE.AsString    := '1';
    cdsBankInstructionACCBANKID_SOURCE.AsInteger  := cdsCashWdrSOURCE_ACCBANKID.AsInteger;
    cdsBankInstructionBNCODE_SOURCE.AsString      := cdsCashWdrsourceAccBankCode.AsString;
    cdsBankInstructionBNACCNO_SOURCE.AsString     := cdsCashWdrsourceBankAccNo.AsString;
    cdsBankInstructionBNACCNAME_SOURCE.AsString   := cdsCashWdrsourceBankAccName.AsString;
    cdsBankInstructionBNBRANCH_SOURCE.AsString    := cdsCashWdrsourceBankBranch.AsString;
    cdsBankInstructionCCYCODE_SOURCE.AsString     := cdsCashWdrsourceCcyCode.AsString;

    cdsBankInstructionBANKTYPE_TARGET.AsString    := '4';
    cdsBankInstructionACCBANKID_TARGET.AsInteger  := cdsCashWdrTARGET_ACCBANKID.AsInteger;
    cdsBankInstructionBNCODE_TARGET.AsString      := cdsCashWdrtargetAccBankCode.AsString;
    cdsBankInstructionBNACCNO_TARGET.AsString     := cdsCashWdrtargetBankAccNo.AsString;
    cdsBankInstructionBNACCNAME_TARGET.AsString   := cdsCashWdrtargetBankAccName.AsString;
    cdsBankInstructionBNBRANCH_TARGET.AsString    := cdsCashWdrtargetBankBranch.AsString;
    cdsBankInstructionCCYCODE_TARGET.AsString     := cdsCashWdrtargetCcyCode.AsString;

    cdsBankInstructionTRANFER_TYPE.AsString := cdsCashWdrTRANSTYPE.AsString; //R: Remiter, B: Beneficiary
    cdsBankInstructionCCY.AsString          := cdsCashWdrCCY.AsString;
    cdsBankInstructionAMOUNT.AsFloat        := Abs(cdsCashWdrCWAMT.AsFloat);
    cdsBankInstructionCHARGES.AsFloat       := Abs(cdsCashWdrBNCHARGES.AsFloat);
    cdsBankInstructionNETAMOUNT.AsFloat     := Abs(cdsCashWdrTRANSFER_AMT.AsFloat);
    cdsBankInstruction.Post;
  end;
  }
  inherited;
end;

procedure TfrmCashWithdraw.CalculateTransferAmount;
begin
  if dsSubject.DataSet.FieldByName('TRANSTYPE').AsString = 'R' then
    dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat := dsSubject.DataSet.FieldByName('CWAMT').AsFloat
  else if dsSubject.DataSet.FieldByName('TRANSTYPE').AsString = 'B' then
    dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat := dsSubject.DataSet.FieldByName('CWAMT').AsFloat - dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat;
end;

procedure TfrmCashWithdraw.cdsCashWdrACCIDChange(Sender: TField);
begin
  inherited;
  cdsCashPosition.Close;
  cdsCashPosition.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
  cdsCashPosition.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
  cdsCashPosition.Open;

  cdsCashLastPos.Close;
  cdsCashLastPos.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
  cdsCashLastPos.Open;

  if not cdsCashLastPos.IsEmpty then
  begin
    cdsCashLastPos.Edit;
    if cdsCashWdrWDR_TYPE.AsString = 'Q' then
      cdsCashLastPoscashAvailable.AsFloat := cdsCashLastPosCASH_QQ.AsFloat - cdsCashLastPosCASH_WDR.AsFloat
    else if cdsCashWdrWDR_TYPE.AsString = 'R' then
      cdsCashLastPoscashAvailable.AsFloat := cdsCashLastPosCASH_ONHAND.AsFloat - cdsCashLastPosCASH_WDR.AsFloat
    else if cdsCashWdrWDR_TYPE.AsString = 'S' then
      cdsCashLastPoscashAvailable.AsFloat := cdsCashLastPosCASH_SUBACC.AsFloat - cdsCashLastPosCASH_WDR.AsFloat;
    cdsCashLastPos.Post;
  end;

  if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuPrivateBankAcc.Close;
      cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuPrivateBankAcc.Params[1].AsString  := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Params[2].AsString  := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Open;

      if cdsCashWdrWDR_TYPE.AsString = 'R' then
      begin
        cdsLuRDNBankAcc.Close;
        cdsLuRDNBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
        cdsLuRDNBankAcc.Params[1].AsString  := cdsCashWdrCCY.AsString;
        cdsLuRDNBankAcc.Params[2].AsString  := cdsCashWdrCCY.AsString;
        cdsLuRDNBankAcc.Open;

        if cdsLuRDNBankAcc.Locate('RDNBANK_DEFAULT', '1', []) then
        begin
          cdsCashWdrSOURCE_ACCBANKID.AsInteger := cdsLuRDNBankAccACCBANKID.AsInteger;
        end;
      end;
    end;
  end;
end;

procedure TfrmCashWithdraw.cdsCashWdrAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if cdsBankInstruction.Active then
    cdsBankInstruction.ApplyUpdates(-1);
end;

procedure TfrmCashWithdraw.cdsCashWdrAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsCashWdr.IsEmpty then
  begin
    cdsCashPosition.Close;
    cdsCashPosition.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
    cdsCashPosition.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
    cdsCashPosition.Open;

    cdsCashLastPos.Close;
    cdsCashLastPos.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
    cdsCashLastPos.Open;

    with dmGlobal.IntDataLookup do
    begin
      lcSourceBank.Enabled := True;

      cdsCashLastPos.Edit;
      if cdsCashWdrWDR_TYPE.AsString = 'Q' then
      begin
        if not cdsLuCompanyPaymentBank.Active then
          cdsLuCompanyPaymentBank.Open;

        cbBankSource.RepositoryItem         := dmGlobal.luCompanyBank;
        cdsCashLastPoscashAvailable.AsFloat := cdsCashLastPosCASH_QQ.AsFloat - cdsCashLastPosCASH_WDR.AsFloat;
      end
      else if cdsCashWdrWDR_TYPE.AsString = 'R' then
      begin
        cbBankSource.RepositoryItem         := dmGlobal.luRDNBankAcc;
        cdsCashLastPoscashAvailable.AsFloat := cdsCashLastPosCASH_ONHAND.AsFloat - cdsCashLastPosCASH_WDR.AsFloat;
      end
      else if cdsCashWdrWDR_TYPE.AsString = 'S' then
      begin
        lcSourceBank.Enabled := False;

        cdsCashLastPoscashAvailable.AsFloat := cdsCashLastPosCASH_SUBACC.AsFloat - cdsCashLastPosCASH_WDR.AsFloat;
      end;
    end;

    if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
    begin
      with dmGlobal.IntDataLookup do
      begin
        cdsLuPrivateBankAcc.Close;
        cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
        cdsLuPrivateBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
        cdsLuPrivateBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
        cdsLuPrivateBankAcc.Open;

        if cdsCashWdrWDR_TYPE.AsString = 'R' then
        begin
          cdsLuRDNBankAcc.Close;
          cdsLuRDNBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
          cdsLuRDNBankAcc.Params[1].AsString  := cdsCashWdrCCY.AsString;
          cdsLuRDNBankAcc.Params[2].AsString  := cdsCashWdrCCY.AsString;
          cdsLuRDNBankAcc.Open;
        end;
      end;
    end;
  end;
end;

procedure TfrmCashWithdraw.cdsCashWdrBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCashWdrCWID.AsInteger = -1 then
  begin
    cdsCashWdrCWID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHWDR');
    cdsCashWdrCWCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCashWdrENTRYDATE.AsDateTime, 'CW', 'TBL_B_CASHWDR');
    cdsCashWdrSTAT.AsString   := '1';
  end;
end;

procedure TfrmCashWithdraw.cdsCashWdrBNCHARGESChange(Sender: TField);
begin
  inherited;
  CalculateTransferAmount;
end;

procedure TfrmCashWithdraw.cdsCashWdrCCYChange(Sender: TField);
begin
  inherited;
  if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuPrivateBankAcc.Close;
      cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuPrivateBankAcc.Params[1].AsString  := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Params[2].AsString  := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Open;
    end;
  end;
end;

procedure TfrmCashWithdraw.cdsCashWdrCWAMTChange(Sender: TField);
begin
  inherited;
  with frmCashWdrList do
  begin
    if (dsSubject.DataSet.FieldByName('sourceAccBankCode').AsString <> dsSubject.DataSet.FieldByName('targetAccBankCode').AsString) and
       (not VarIsNull(dsSubject.DataSet.FieldByName('CWAMT').AsFloat) or not VarIsEmpty(dsSubject.DataSet.FieldByName('CWAMT').AsFloat))
    then
    begin
      cdsBankCharges.Filtered := False;
      cdsBankCharges.Filter   := 'BNCODE = ' + QuotedStr(dsSubject.DataSet.FieldByName('sourceAccBankCode').AsString) +
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

procedure TfrmCashWithdraw.cdsCashWdrNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCashWdrCWID.AsInteger        := -1;
  cdsCashWdrENTRYDATE.AsDateTime  := fSystemDate;
  cdsCashWdrCWDATE.AsDateTime     := fSystemDate;
  cdsCashWdrCWCODE.AsString       := '<AUTO>';
  cdsCashWdrCCY.AsString          := dmGlobal.RemoteServer.GetLocalCCY;
  cdsCashWdrWDR_TYPE.AsString     := dmGlobal.CashWithdrawType;
end;

procedure TfrmCashWithdraw.cdsCashWdrSOURCE_ACCBANKIDChange(Sender: TField);
begin
  inherited;
  cdsCashWdrsourceAccBankCode.AsString  := '';
  cdsCashWdrsourceBankBranch.AsString   := '';
  cdsCashWdrsourceBankAccNo.AsString    := '';
  cdsCashWdrsourceBankAccName.AsString  := '';
  cdsCashWdrsourceCcyCode.AsString      := '';

  with dmGlobal.IntDataLookup do
  begin
    if cdsCashWdrWDR_TYPE.AsString = 'Q' then
    begin
      if cdsLuCompanyBanks.Locate('BANKID', cdsCashWdrSOURCE_ACCBANKID.AsInteger, []) then
      begin
        cdsCashWdrsourceAccBankCode.AsString  := cdsLuCompanyBanksBNCODE.AsString;
        cdsCashWdrsourceBankBranch.AsString   := cdsLuCompanyBanksBANKBRANCH.AsString;
        cdsCashWdrsourceBankAccNo.AsString    := cdsLuCompanyBanksBANKACCNO.AsString;
        cdsCashWdrsourceBankAccName.AsString  := cdsLuCompanyBanksBANKACCNAME.AsString;
        cdsCashWdrsourceCcyCode.AsString      := cdsLuCompanyBanksCCYCODE.AsString;
      end;
    end
    else if cdsCashWdrWDR_TYPE.AsString = 'R' then
    begin
      if cdsLuRDNBankAcc.Locate('ACCBANKID', cdsCashWdrSOURCE_ACCBANKID.AsInteger, []) then
      begin
        cdsCashWdrsourceAccBankCode.AsString  := cdsLuRDNBankAccACCBANKCODE.AsString;
        cdsCashWdrsourceBankBranch.AsString   := cdsLuRDNBankAccBANKBRANCH.AsString;
        cdsCashWdrsourceBankAccNo.AsString    := cdsLuRDNBankAccBANKACCNO.AsString;
        cdsCashWdrsourceBankAccName.AsString  := cdsLuRDNBankAccBANKACCNAME.AsString;
        cdsCashWdrsourceCcyCode.AsString      := cdsLuRDNBankAccCCYCODE.AsString;
      end;
    end;
  end;
end;

procedure TfrmCashWithdraw.cdsCashWdrTARGET_ACCBANKIDChange(Sender: TField);
begin
  inherited;
  cdsCashWdrtargetAccBankCode.AsString  := '';
  cdsCashWdrtargetBankBranch.AsString   := '';
  cdsCashWdrtargetBankAccNo.AsString    := '';
  cdsCashWdrtargetBankAccName.AsString  := '';
  cdsCashWdrtargetCcyCode.AsString      := '';

  if cdsCashWdrTARGET_ACCBANKID.IsNull then
    cdsCashWdrTARGET_ACCBANKID.AsInteger := 0
  else
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuPrivateBankAcc.Locate('ACCBANKID', cdsCashWdrTARGET_ACCBANKID.AsString, []) then
      begin
        cdsCashWdrtargetAccBankCode.AsString  := cdsLuPrivateBankAccACCBANKCODE.AsString;
        cdsCashWdrtargetBankBranch.AsString   := cdsLuPrivateBankAccBANKBRANCH.AsString;
        cdsCashWdrtargetBankAccNo.AsString    := cdsLuPrivateBankAccBANKACCNO.AsString;
        cdsCashWdrtargetBankAccName.AsString  := cdsLuPrivateBankAccBANKACCNAME.AsString;
        cdsCashWdrtargetCcyCode.AsString      := cdsLuPrivateBankAccCCYCODE.AsString;
      end;
    end;
  end;
end;

procedure TfrmCashWithdraw.cdsCashWdrTRANSTYPEChange(Sender: TField);
begin
  inherited;

  CalculateTransferAmount;
end;

procedure TfrmCashWithdraw.cdsCashWdrWDR_TYPEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    lcSourceBank.Enabled := True;

    if cdsCashWdrWDR_TYPE.AsString = 'Q' then
    begin
      if not cdsLuCompanyPaymentBank.Active then
        cdsLuCompanyPaymentBank.Open;

      cbBankSource.RepositoryItem := dmGlobal.luCompanyBank;
    end
    else if cdsCashWdrWDR_TYPE.AsString = 'R' then
    begin
      cbBankSource.RepositoryItem := dmGlobal.luRDNBankAcc;
    end
    else if cdsCashWdrWDR_TYPE.AsString = 'S' then
    begin
      lcSourceBank.Enabled := False;
    end;

  end;
end;

procedure TfrmCashWithdraw.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
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

        cdsCashWdrACCID.AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
        cdsCashWdrACCCODE.AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        cdsCashWdrACCNAME.AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmCashWithdraw.cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  CalculateTransferAmount;
end;

procedure TfrmCashWithdraw.cbBankSourceEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbBankSource.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.AddItem(LGrid.Columns[4], foEqual, cdsCashWdrCCY.AsString, cdsCashWdrCCY.AsString);
//    Active := True;
//  end;
end;

procedure TfrmCashWithdraw.cbBankSourceExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbBankSource.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.Clear;
//    Active := False;
//  end;
end;

procedure TfrmCashWithdraw.FormCreate(Sender: TObject);
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

  fSystemDate := dmGlobal.RemoteServer.GetTransDate;
end;

end.
