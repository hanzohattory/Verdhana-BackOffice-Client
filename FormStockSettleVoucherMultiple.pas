unit FormStockSettleVoucherMultiple;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, cxCurrencyEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxImageComboBox;

type
  TfrmStockSettleVoucherMultiple = class(TfrmEditorData)
    cdsStockSettlementH: TNClientDataset;
    cdsStockSettlementD: TNClientDataset;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dtValue: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsStockSettlementHSSID: TLargeintField;
    cdsStockSettlementHSSNO: TStringField;
    cdsStockSettlementHSSDESC: TStringField;
    cdsStockSettlementHSETTLE_TYPE: TStringField;
    cdsStockSettlementHENTRYDATE: TDateField;
    cdsStockSettlementHVALUEDATE: TDateField;
    cdsStockSettlementHACCID: TLargeintField;
    cdsStockSettlementHSTOCKID: TLargeintField;
    cdsStockSettlementHQTY: TFloatField;
    cdsStockSettlementHSTAT: TStringField;
    cdsStockSettlementHMODDA: TDateTimeField;
    cdsStockSettlementHMODUI: TStringField;
    cdsStockSettlementHAPPDA: TDateTimeField;
    cdsStockSettlementHAPPUI: TStringField;
    cdsStockSettlementHUNDER4Y: TIntegerField;
    cdsStockSettlementHUDER4YDA: TDateTimeField;
    cdsStockSettlementHNOTES4Y: TStringField;
    cdsStockSettlementHISDEL: TIntegerField;
    cdsStockSettlementHID: TLargeintField;
    cdsStockSettlementDSSID: TLargeintField;
    cdsStockSettlementDSIID: TLargeintField;
    cdsStockSettlementDQTY: TFloatField;
    cdsStockSettlementDMODDA: TDateTimeField;
    cdsStockSettlementDMODUI: TStringField;
    cdsStockSettlementDAPPDA: TDateTimeField;
    cdsStockSettlementDAPPUI: TStringField;
    cdsStockSettlementDUNDER4Y: TIntegerField;
    cdsStockSettlementDUNDER4YDA: TDateTimeField;
    cdsStockSettlementDNOTES4Y: TStringField;
    cdsStockSettlementDISDEL: TIntegerField;
    cdsStockSettlementDID: TLargeintField;
    dsStockSettlementH: TDataSource;
    cdsStockSettlementHACCNAME: TStringField;
    cdsStockSettlementHACCNO: TStringField;
    cdsStockSettlementHSTOCKCODE: TStringField;
    cdsStockSettlementHSTOCKNAME: TStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsStockOutstanding: TNClientDataset;
    cdsStockOutstandingSIID: TLargeintField;
    cdsStockOutstandingSINO: TStringField;
    cdsStockOutstandingENTRYDATE: TDateField;
    cdsStockOutstandingTRDDATE: TDateField;
    cdsStockOutstandingDUEDATE: TDateField;
    cdsStockOutstandingSITYPE: TStringField;
    cdsStockOutstandingSETTLE_SIDE: TStringField;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    cdsStockOutstandingPRICE: TFloatField;
    cdsStockOutstandingQTY: TFloatField;
    cdsStockOutstandingVOUCHERQTY: TFloatField;
    cdsStockOutstandingSI_DESC: TStringField;
    cdsStockOutstandingMODDA: TDateTimeField;
    cdsStockOutstandingMODUI: TStringField;
    cdsStockOutstandingSTAT: TStringField;
    cdsStockPosition: TNClientDataset;
    cdsStockPositionSTOCKID: TIntegerField;
    cdsStockPositionMARKETCODE: TStringField;
    cdsStockPositionLOCALCODE: TStringField;
    cdsStockPositionISSUERNAME: TStringField;
    cdsStockPositionISINCODE: TStringField;
    cdsStockPositionISINDATE: TDateTimeField;
    cdsStockPositionQTY_ONHAND: TFloatField;
    cdsStockPositionQTY_OUTS: TFloatField;
    cdsStockPositionQTY_ONHOLD: TFloatField;
    cdsStockPositionQTY_BAL: TFloatField;
    cdsStockPositionQTY_OVERDUE: TFloatField;
    cdsStockPositionQTY_DLV: TFloatField;
    cdsStockPositionQTY_RCV: TFloatField;
    dsStockPosition: TDataSource;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cdsStockSettlementHqryStockSettlement_D: TDataSetField;
    cdsCustodyInstruction: TNClientDataset;
    cdsCustodyInstructionCUSTODY_INSTRID: TLargeintField;
    cdsCustodyInstructionCUSTODY_EXTREF: TStringField;
    cdsCustodyInstructionEXCHANGE: TStringField;
    cdsCustodyInstructionACCID: TLargeintField;
    cdsCustodyInstructionACCNO: TStringField;
    cdsCustodyInstructionACCNAME: TStringField;
    cdsCustodyInstructionVALUEDATE: TDateField;
    cdsCustodyInstructionTRDDATE: TDateField;
    cdsCustodyInstructionSETTLEDATE: TDateField;
    cdsCustodyInstructionSETTLE_SIDE: TStringField;
    cdsCustodyInstructionINSTRUCTION_TYPE: TStringField;
    cdsCustodyInstructionPARTY_ID: TLargeintField;
    cdsCustodyInstructionPARTY_CODE: TStringField;
    cdsCustodyInstructionPARTY_ACC: TStringField;
    cdsCustodyInstructionCOUNTER_ID: TLargeintField;
    cdsCustodyInstructionCOUNTER_CODE: TStringField;
    cdsCustodyInstructionCOUNTER_ACC: TStringField;
    cdsCustodyInstructionSECURITYCODE_TYPE: TStringField;
    cdsCustodyInstructionSTOCKID: TLargeintField;
    cdsCustodyInstructionSTOCKCODE: TStringField;
    cdsCustodyInstructionQTY: TFloatField;
    cdsCustodyInstructionCCY: TStringField;
    cdsCustodyInstructionORIGINAL_AMT: TFloatField;
    cdsCustodyInstructionSETTLE_AMOUNT: TFloatField;
    cdsCustodyInstructionSALDO: TFloatField;
    cdsCustodyInstructionSALDO_TYPE: TStringField;
    cdsCustodyInstructionISMULTICCY: TStringField;
    cdsCustodyInstructionFOREIGN_CCYCODE: TStringField;
    cdsCustodyInstructionFOREIGN_EXRATE: TFloatField;
    cdsCustodyInstructionFOREIGN_SETTTLEAMT: TFloatField;
    cdsCustodyInstructionCUSTODY_DESC: TStringField;
    cdsCustodyInstructionREMARKS: TStringField;
    cdsCustodyInstructionPURPOSE: TStringField;
    cdsCustodyInstructionTRADE_REF: TStringField;
    cdsCustodyInstructionSETTLE_REASON: TStringField;
    cdsCustodyInstructionBENEFICIARYCODE: TStringField;
    cdsCustodyInstructionBENEFICIARYACC: TStringField;
    cdsCustodyInstructionCORPACT_TYPE: TStringField;
    cdsCustodyInstructionLINKTYPE: TStringField;
    cdsCustodyInstructionLINKID: TLargeintField;
    cdsCustodyInstructionCONFIRM_BY: TStringField;
    cdsCustodyInstructionCONFIRM_WITH: TStringField;
    cdsCustodyInstructionCREATE_FILE: TStringField;
    cdsCustodyInstructionCOUNT_CREATE_FILE: TIntegerField;
    cdsCustodyInstructionCBEST_UPLOAD: TStringField;
    cdsCustodyInstructionSID_NO: TStringField;
    cdsCustodyInstructionSTAT: TStringField;
    cdsCustodyInstructionMATCH: TStringField;
    cdsCustodyInstructionKSEI_RECON: TStringField;
    cdsCustodyInstructionCLIENT_ACCID: TLargeintField;
    cdsCustodyInstructionMODDA: TDateTimeField;
    cdsCustodyInstructionMODUI: TStringField;
    cdsCustodyInstructionAPPDA: TDateTimeField;
    cdsCustodyInstructionAPPUI: TStringField;
    cdsCustodyInstructionUNDER4Y: TIntegerField;
    cdsCustodyInstructionUNDER4YDA: TDateTimeField;
    cdsCustodyInstructionNOTES4Y: TStringField;
    cdsCustodyInstructionISDEL: TIntegerField;
    cdsCustodyInstructionID: TLargeintField;
    cdsCustodyInstructionBS: TStringField;
    cdsCustodyInstructionDHKID: TLargeintField;
    cdsCustodyInstructionNEW_CUSTODY_INSTRID: TLargeintField;
    cdsCustodyInstructionMERGE_ID: TIntegerField;
    cdsCustodyInstructionSPLIT_ID: TIntegerField;
    cdsCustodyInstructionIS_MERGE: TBooleanField;
    cdsCustodyInstructionIS_SPLIT: TBooleanField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cdsStockSettlementHACCCUSTODYID: TLargeintField;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cdsStockOutstandingBASE_CCYCODE: TStringField;
    cdsStockOutstandingBASE_NETAMT: TFloatField;
    cdsStockOutstandingSETTLE_CCYCODE: TStringField;
    cdsStockOutstandingSETTLE_NETAMT: TFloatField;
    cdsStockOutstandingCHECKED: TBooleanField;
    cdsStockOutstandingPROCESSQTY: TFloatField;
    cdsStockOutstandingOUTSTANDQTY: TFloatField;
    cdsStockOutstandingPROCESSQTY_X: TFloatField;
    cdsStockOutstandingOUTSTANDQTY_X: TFloatField;
    cdsStockOutstandingSETTLED_QTY: TFloatField;
    cdsStockSettlementHAMOUNT: TFloatField;
    cdsStockSettlementHINSTRUCTION_TYPE: TStringField;
    cdsStockSettlementHCL_ACCID: TLargeintField;
    cdsStockSettlementHORIG_AMOUNT: TFloatField;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    cdsAccountCustody: TNClientDataset;
    cdsAccountCustodyACCCUSTODYID: TIntegerField;
    cdsAccountCustodyACCID: TIntegerField;
    cdsAccountCustodyCUSTODYCODE: TStringField;
    cdsAccountCustodyCUSTODYACCNO: TStringField;
    cdsAccountCustodyCUSTODYACCNAME: TStringField;
    cdsAccountCustodyCUSTODYBRANCH: TStringField;
    cdsAccountCustodyCUSTODYTYPE: TStringField;
    dsAccountCustody: TDataSource;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cdsStockSettlementHDIFF_AMOUNT: TFloatField;
    cdsStockOutstandingLINKTYPE: TStringField;
    cdsStockOutstandingLINKID: TLargeintField;
    cdsStockOutstandingLINKSEQID: TIntegerField;
    cdsStockOutstandingLINKNO: TStringField;
    cbTrans: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cdsStockSplit: TNClientDataset;
    cdsStockSplitDACCCUSTODYID: TLargeintField;
    cdsStockSplitQTY: TFloatField;
    cdsStockSplitAMOUNT: TFloatField;
    cdsStockSplitINSTR_TYPE: TStringField;
    cdsStockSplitORIG_AMOUNT: TFloatField;
    cdsStockSplitDIFF_AMOUNT: TFloatField;
    cdsStockSplitSSID: TLargeintField;
    dsStockSplit: TDataSource;
    gvwMasterACCCUSTODYID: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterINSTR_TYPE: TcxGridDBBandedColumn;
    gvwMasterORIG_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterDIFF_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterSSID: TcxGridDBBandedColumn;
    cdsStockOutstandingOUTSTANDAMOUNT: TFloatField;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cdsStockSettlementHSETTLE_CCYCODE: TStringField;
    cdsStockSplitSETTLE_CCYCODE: TStringField;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    cdsExRate: TNClientDataset;
    cdsExRateCCYCODE: TStringField;
    cdsExRateCCYRATE: TFloatField;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterAMOUNTIDR: TcxGridDBBandedColumn;
    cdsStockSplitAMOUNTIDR: TFloatField;
    cdsStockSplitEXRATE: TFloatField;
    procedure cdsStockOutstandingCalcFields(DataSet: TDataSet);
    procedure cdsStockSettlementHReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure gvwMasterEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsStockSettlementHCalcFields(DataSet: TDataSet);
    procedure cbTransPropertiesChange(Sender: TObject);
    procedure cdsStockSplitCalcFields(DataSet: TDataSet);
    procedure cdsStockSplitQTYChange(Sender: TField);
    procedure cdsStockSplitNewRecord(DataSet: TDataSet);
    procedure cdsStockSplitINSTR_TYPEChange(Sender: TField);
    procedure btnOKClick(Sender: TObject);
    procedure cdsStockSplitAMOUNTChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsStockSplitSETTLE_CCYCODEChange(Sender: TField);
  private
    FQtyTotal : double;
    FQtyBefore : double;
    { Private declarations }
  public
    function CreateVoucher(AAccID: Integer; AStockID: Integer; AClAccID: Integer; AInstrType : String;ASideAcc : string;ADueDate : TDateTime): Boolean;
  end;

var
  frmStockSettleVoucherMultiple: TfrmStockSettleVoucherMultiple;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmStockSettleVoucherMultiple }

procedure TfrmStockSettleVoucherMultiple.btnOKClick(Sender: TObject);
var
  sTotalQty: Double;
begin
  if cdsStockSplit.State in dsEditModes then
    cdsStockSplit.Post;

  if cdsStockSplit.IsEmpty then
  begin
    dmGlobal.ErrorMessage('Please fill at least 1 stock split data!');
    Abort;
  end;

  sTotalQty := 0;
  cdsStockSplit.First;
  while not cdsStockSplit.Eof do
  begin
    sTotalQty := sTotalQty + cdsStockSplitQTY.AsFloat;
    cdsStockSplit.Next;
  end;

  if sTotalQty > cdsStockOutstandingOUTSTANDQTY.AsFloat then
  begin
    dmGlobal.ErrorMessage('Total split quantity must be less than outstanding quantity!');
    Abort;
  end;

  inherited;
end;

procedure TfrmStockSettleVoucherMultiple.cbTransPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cdsStockOutstanding.Locate('SIID', cbTrans.EditValue, []);

  if cdsStockSettlementH.State in dsEditModes then
    cdsStockSettlementHVALUEDATE.AsDateTime := cdsStockOutstandingDUEDATE.AsDateTime;

  if not cdsStockSplit.IsEmpty then
  begin
    cdsStockSplit.Close;
    cdsStockSplit.CreateDataSet;
  end;
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockOutstandingCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockOutstandingOUTSTANDQTY.AsFloat := cdsStockOutstandingQTY.AsFloat
    - cdsStockOutstandingSETTLED_QTY.AsFloat - cdsStockOutstandingVOUCHERQTY.AsFloat;

  if cdsStockOutstandingSETTLE_SIDE.AsString = 'D' then
  begin
    cdsStockOutstandingOUTSTANDQTY_X.AsFloat := cdsStockOutstandingOUTSTANDQTY.AsFloat * -1;
    cdsStockOutstandingPROCESSQTY_X.AsFloat := cdsStockOutstandingPROCESSQTY.AsFloat * -1;
  end
  else
  begin
    cdsStockOutstandingOUTSTANDQTY_X.AsFloat := cdsStockOutstandingOUTSTANDQTY.AsFloat;
    cdsStockOutstandingPROCESSQTY_X.AsFloat := cdsStockOutstandingPROCESSQTY.AsFloat;
  end;

  cdsStockOutstandingOUTSTANDAMOUNT.AsFloat := cdsStockOutstandingOUTSTANDQTY.AsFloat
    / cdsStockOutstandingQTY.AsFloat * cdsStockOutstandingSETTLE_NETAMT.AsFloat;
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSettlementHCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockSettlementHDIFF_AMOUNT.AsFloat := Abs(cdsStockSettlementHAMOUNT.AsFloat)
    - Abs(cdsStockSettlementHORIG_AMOUNT.AsFloat);
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSettlementHReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSplitAMOUNTChange(
  Sender: TField);
begin
  inherited;
  cdsStockSplitAMOUNTIDR.AsFloat := cdsStockSplitAMOUNT.AsFloat * cdsStockSplitEXRATE.AsFloat;
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSplitCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockSplitDIFF_AMOUNT.AsFloat := Abs(cdsStockSplitAMOUNTIDR.AsFloat)
    - Abs(cdsStockSplitORIG_AMOUNT.AsFloat);
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSplitINSTR_TYPEChange(
  Sender: TField);
begin
  inherited;
//  if cdsStockSplitINSTR_TYPE.AsString = 'FOP' then
//    cdsStockSplitAMOUNT.AsFloat := 0
//  else
    cdsStockSplitAMOUNT.AsFloat := cdsStockSplitORIG_AMOUNT.AsFloat;
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSplitNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockSplitINSTR_TYPE.AsString := 'VP';
  cdsStockSplitSETTLE_CCYCODE.AsString := cdsStockOutstandingSETTLE_CCYCODE.AsString;
  if cdsExRate.Locate('CCYCODE', cdsStockSplitSETTLE_CCYCODE.AsString, []) then
  begin
      cdsStockSplitEXRATE.AsFloat := cdsExRateCCYRATE.AsFloat;
      cdsStockSplitAMOUNTIDR.AsFloat := cdsStockSplitAMOUNT.AsFloat * cdsStockSplitEXRATE.AsFloat;
  end;
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSplitQTYChange(Sender: TField);
begin
  inherited;
  cdsStockSplitORIG_AMOUNT.AsFloat := cdsStockSplitQTY.AsFloat / cdsStockOutstandingQTY.AsFloat * cdsStockOutstandingSETTLE_NETAMT.AsFloat;

//  if cdsStockSplitINSTR_TYPE.AsString = 'FOP' then
//    cdsStockSplitAMOUNT.AsFloat := 0
//  else
  cdsStockSplitAMOUNT.AsFloat := cdsStockSplitORIG_AMOUNT.AsFloat;
end;

procedure TfrmStockSettleVoucherMultiple.cdsStockSplitSETTLE_CCYCODEChange(
  Sender: TField);
begin
  inherited;
  if cdsExRate.Locate('CCYCODE', cdsStockSplitSETTLE_CCYCODE.AsString, []) then
  begin
      cdsStockSplitEXRATE.AsFloat := cdsExRateCCYRATE.AsFloat;
      cdsStockSplitAMOUNTIDR.AsFloat := cdsStockSplitAMOUNT.AsFloat * cdsStockSplitEXRATE.AsFloat;
  end;

  if cdsStockSplitSETTLE_CCYCODE.AsString <> 'IDR' then
  begin
    cdsStockSplitINSTR_TYPE.AsString := 'FOP';
    cdsStockSplitINSTR_TYPE.ReadOnly := true;
  end
  else
    cdsStockSplitINSTR_TYPE.ReadOnly := false;

end;

function TfrmStockSettleVoucherMultiple.CreateVoucher(AAccID: Integer; AStockID: Integer; AClAccID: Integer; AInstrType : String;ASideAcc : string;ADueDate : TDateTime): Boolean;
var
  bError: Boolean;
  iSSID, iSIID: Int64;
  sMsg, sDesc, SSNo, sSettleType: string;
  dtSystem, dtValueDate: TDateTime;
  fTotalQty: Double;

label Restart;

begin
  Result := False;
  frmStockSettleVoucherMultiple := TfrmStockSettleVoucherMultiple.Create(nil);
  try
    with frmStockSettleVoucherMultiple do
    begin

      FQtyTotal := 0;

      cdsAccountCustody.Close;
      cdsAccountCustody.Params[0].AsInteger := AClAccID;
      cdsAccountCustody.Open;

      cdsStockSettlementH.Close;
      cdsStockSettlementH.Params[0].AsInteger := -1;
      cdsStockSettlementH.Open;

      cdsStockOutstanding.Close;
      cdsStockOutstanding.Params[0].AsInteger := AAccID;
      cdsStockOutstanding.Params[1].AsInteger := AStockID;
      cdsStockOutstanding.Params[2].AsInteger := AClAccID;
      cdsStockOutstanding.Open;

      cdsStockPosition.Close;
      cdsStockPosition.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
      cdsStockPosition.Params[1].AsInteger := AClAccID;
      cdsStockPosition.Params[2].AsInteger := AStockID;
      cdsStockPosition.Open;

      cdsStockSplit.Close;
      cdsStockSplit.CreateDataSet;

      if not dmGlobal.IntDataLookup.cdsLuInstrumentAll.Active then
        dmGlobal.IntDataLookup.cdsLuInstrumentAll.Open;

      if not dmGlobal.IntDataLookup.cdsLuAccount.Active then
        dmGlobal.IntDataLookup.cdsLuAccount.Open;

      dtSystem := dmGlobal.RemoteServer.GetTransDate;

      cdsStockSettlementH.Append;
      cdsStockSettlementHSSID.AsLargeInt        := -1;
      cdsStockSettlementHSSNO.AsString          := '<AUTO>';
      cdsStockSettlementHSETTLE_TYPE.AsString   := '';
      cdsStockSettlementHENTRYDATE.AsDateTime   := dtSystem;
      cdsStockSettlementHVALUEDATE.AsDateTime   := dtSystem;
      cdsStockSettlementHACCID.AsLargeInt       := AAccID;
      cdsStockSettlementHSTOCKID.AsLargeInt     := AStockID;
      cdsStockSettlementHQTY.AsFloat            := 0;
      cdsStockSettlementHSTAT.AsString          := 'O';
      cdsStockSettlementHSSDESC.AsString        := 'Multiple Stock Settlement Voucher';
      cdsStockSettlementHACCCUSTODYID.AsInteger := 0;
      cdsStockSettlementHCL_ACCID.AsInteger     := AClAccID;

      if (AInstrType <> 'REGULAR') then
        cdsStockSettlementHINSTRUCTION_TYPE.AsString := 'VP'
      else
        cdsStockSettlementHINSTRUCTION_TYPE.AsString := AInstrType;

      cdsStockOutstanding.Locate('DUEDATE', ADueDate, []);
      cbTrans.EditValue := cdsStockOutstandingSIID.AsLargeInt;

      Restart :
      bError := False;

      if not (cdsStockSettlementH.State in dsEditModes) then
        cdsStockSettlementH.Edit;

      if ShowModal = mrOk then
      begin
        dtValueDate := cdsStockSettlementHVALUEDATE.AsDateTime;
        sDesc       := cdsStockSettlementHSSDESC.AsString;
        sSettleType := cdsStockOutstandingSETTLE_SIDE.AsString;
        fTotalQty   := 0;
        iSIID       := cdsStockOutstandingSIID.AsLargeInt;

        //Empty Detail
        if cdsStockSettlementH.State in dsEditModes then
          cdsStockSettlementH.Cancel;

        while not cdsStockSettlementH.IsEmpty do
        begin
          while not cdsStockSettlementD.IsEmpty do
            cdsStockSettlementD.Delete;

          cdsStockSettlementH.Delete;
        end;

        cdsStockSplit.First;
        while not cdsStockSplit.Eof do
        begin
          iSSID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCK_SETTLEMENT_H');
          SSNo := dmGlobal.RemoteServer.GetVoucherNo(cdsStockSettlementHENTRYDATE.AsDateTime, 'SS', 'TBL_B_STOCK_SETTLEMENT_H');
          fTotalQty := fTotalQty + cdsStockSplitQTY.AsFloat;

          cdsStockSettlementH.Append;
          cdsStockSettlementHSSID.AsLargeInt            := iSSID;
          cdsStockSettlementHSSNO.AsString              := SSNo;
          cdsStockSettlementHSETTLE_TYPE.AsString       := sSettleType;
          cdsStockSettlementHENTRYDATE.AsDateTime       := dtSystem;
          cdsStockSettlementHVALUEDATE.AsDateTime       := dtValueDate;
          cdsStockSettlementHACCID.AsLargeInt           := AAccID;
          cdsStockSettlementHSTOCKID.AsLargeInt         := AStockID;
          cdsStockSettlementHQTY.AsFloat                := cdsStockSplitQTY.AsFloat;
          cdsStockSettlementHSTAT.AsString              := 'O';
          cdsStockSettlementHSSDESC.AsString            := sDesc;
          cdsStockSettlementHACCCUSTODYID.AsInteger     := cdsStockSplitDACCCUSTODYID.AsInteger;
          cdsStockSettlementHCL_ACCID.AsInteger         := AClAccID;
          cdsStockSettlementHORIG_AMOUNT.AsFloat        := cdsStockSplitORIG_AMOUNT.AsFloat;
          cdsStockSettlementHAMOUNT.AsFloat             := cdsStockSplitAMOUNT.AsFloat;
          cdsStockSettlementHSETTLE_CCYCODE.asString    := cdsStockSplitSETTLE_CCYCODE.asString;
          cdsStockSettlementHINSTRUCTION_TYPE.AsString  := cdsStockSplitINSTR_TYPE.AsString;
          cdsStockSettlementH.Post;

          cdsStockSettlementD.Append;
          cdsStockSettlementDSIID.AsLargeInt  := iSIID;
          cdsStockSettlementDQTY.AsFloat      := cdsStockSplitQTY.AsFloat;
          cdsStockSettlementD.Post;

          cdsStockSplit.Next;
        end;

        cdsStockOutstanding.Edit;
        cdsStockOutstandingVOUCHERQTY.AsFloat := cdsStockOutstandingVOUCHERQTY.AsFloat + fTotalQty;
        cdsStockOutstanding.Post;

        dmGlobal.RemoteServer.StartTransaction;
        Try
          if not bError then
            bError := cdsStockSettlementH.ApplyUpdates(0) > 0;

          if not bError then
            bError := cdsStockOutstanding.ApplyUpdates(0) > 0;

          if not bError then
          begin
            dmGlobal.RemoteServer.CommitTransaction;
            cdsStockSettlementH.First;
            while not cdsStockSettlementH.Eof do
            begin
              iSSID  := cdsStockSettlementHSSID.AsLargeInt;
              dmGlobal.RemoteServer.GenerateCustodyInstruction(iSSID, 'SSID', sMsg);

              cdsStockSettlementH.Next;
            end;
            Result := True;
          end
          else
            dmGlobal.RemoteServer.RollbackTransaction;
        Except
          on E: Exception do
          begin
            dmGlobal.RemoteServer.RollbackTransaction;
            ShowMessage(E.Message);
          end;
        End;

        if bError then
        begin
          Goto Restart;
        end;

        Result := True;
      end;
    end;
  finally
    FreeAndNil(frmStockSettleVoucherMultiple);
  end;
end;

procedure TfrmStockSettleVoucherMultiple.gvwMasterEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
//  AAllow := (AItem <> gvwMasterORIG_AMOUNT) And (AItem <> gvwMasterDIFF_AMOUNT);
//
//  if (AItem = gvwMasterAMOUNT) then
//  begin
//    AAllow := (VarToStr(gvwMasterINSTR_TYPE.EditValue) = 'VP');
//  end;
end;

procedure TfrmStockSettleVoucherMultiple.FormShow(Sender: TObject);
begin
  inherited;
  cdsExRate.Close;
  cdsExRate.Params[0].AsDateTime := dmglobal.RemoteServer.GetTransDate;
  cdsExRate.Open;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
    begin
      cdsLuCcy.Open;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmStockSettleVoucherMultiple);

end.
