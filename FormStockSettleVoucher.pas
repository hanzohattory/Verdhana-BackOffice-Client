unit FormStockSettleVoucher;

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
  cxCheckBox, cxCurrencyEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxImageComboBox,
  System.DateUtils, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmStockSettleVoucher = class(TfrmEditorData)
    cdsStockSettlementH: TNClientDataset;
    cdsStockSettlementD: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
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
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSITYPE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterVOUCHERQTY: TcxGridDBBandedColumn;
    gvwMasterSI_DESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterCHECKED: TcxGridDBBandedColumn;
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
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    chkAllOutstand: TcxCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dtDueDate: TcxDateEdit;
    lcDueDate: TdxLayoutItem;
    Filtered: TcxButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    gvwMasterPROCESSQTY: TcxGridDBBandedColumn;
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
    dxLayoutControl1Group11: TdxLayoutGroup;
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
    gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_QTY: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDQTY: TcxGridDBBandedColumn;
    gvwMasterPROCESSQTY_X: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDQTY_X: TcxGridDBBandedColumn;
    cdsStockSettlementHAMOUNT: TFloatField;
    cdsStockSettlementHINSTRUCTION_TYPE: TStringField;
    cdsStockSettlementHCL_ACCID: TLargeintField;
    cdsStockSettlementHORIG_AMOUNT: TFloatField;
    lcInsType1: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcInsType2: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
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
    lcCustodyNo: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    lcAmount: TdxLayoutItem;
    edAmount: TcxDBCurrencyEdit;
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
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cdsStockOutstandingBOARDID: TIntegerField;
    gvwMasterBOARDID: TcxGridDBBandedColumn;
    procedure cdsStockOutstandingCHECKEDChange(Sender: TField);
    procedure gvwMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gvwMasterCHECKEDPropertiesChange(Sender: TObject);
    procedure gvwMasterSETTLED_QTYPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure chkAllOutstandPropertiesChange(Sender: TObject);
    procedure cdsStockOutstandingFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dtDueDatePropertiesChange(Sender: TObject);
    procedure FilteredClick(Sender: TObject);
    procedure cdsStockOutstandingBeforePost(DataSet: TDataSet);
    procedure cdsStockOutstandingCalcFields(DataSet: TDataSet);
    procedure cdsStockOutstandingBeforeEdit(DataSet: TDataSet);
    procedure cdsStockSettlementHReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsStockSettlementHQTYChange(Sender: TField);
    procedure gvwMasterEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsStockSettlementHINSTRUCTION_TYPEChange(Sender: TField);
    procedure cdsStockSettlementHORIG_AMOUNTChange(Sender: TField);
    procedure cdsStockSettlementHCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FilterByDate: Boolean;
    FOldProcessQty: Double;

    procedure ResetChecked;
  public
    function CreateVoucher(AAccID: Integer; AStockID: Integer; AClAccID: Integer; AInstrType : String;ASideAcc : string;ADueDate : TDateTime): Boolean;
  end;

var
  frmStockSettleVoucher: TfrmStockSettleVoucher;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

{ TfrmStockSettleVoucher }

procedure TfrmStockSettleVoucher.cdsStockOutstandingBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  FOldProcessQty := cdsStockOutstandingPROCESSQTY.AsFloat;
end;

procedure TfrmStockSettleVoucher.cdsStockOutstandingBeforePost(
  DataSet: TDataSet);
var
  fQty, fHQty: Double;
begin
  inherited;
  if cdsStockOutstanding.Tag <> -1 then
  begin
    if cdsStockOutstandingCHECKED.AsBoolean then
      fQty := cdsStockOutstandingQTY.AsFloat
    else
      fQty := - cdsStockOutstandingQTY.AsFloat;

    fHQty := cdsStockSettlementHQTY.AsFloat;
    if cdsStockOutstandingSETTLE_SIDE.AsString = 'D' then
    begin
      cdsStockSettlementHQTY.AsFloat := cdsStockSettlementHQTY.AsFloat - cdsStockOutstandingPROCESSQTY.AsFloat + FOldProcessQty;
      if cdsStockSettlementHQTY.AsFloat <> fHQty then
        cdsStockSettlementHORIG_AMOUNT.AsFloat := cdsStockSettlementHORIG_AMOUNT.AsFloat
          - ((cdsStockOutstandingPROCESSQTY.AsFloat + FOldProcessQty) / fQty * cdsStockOutstandingSETTLE_NETAMT.AsFloat);
    end
    else
    begin
      cdsStockSettlementHQTY.AsFloat := cdsStockSettlementHQTY.AsFloat + cdsStockOutstandingPROCESSQTY.AsFloat - FOldProcessQty;
      if cdsStockSettlementHQTY.AsFloat <> fHQty then
        cdsStockSettlementHORIG_AMOUNT.AsFloat := cdsStockSettlementHORIG_AMOUNT.AsFloat
          + ((cdsStockOutstandingPROCESSQTY.AsFloat - FOldProcessQty) / fQty * cdsStockOutstandingSETTLE_NETAMT.AsFloat);
    end;
  end
  else//Request Habib
  begin
    cdsStockSettlementHQTY.AsFloat := Abs(cdsStockSettlementHQTY.AsFloat);
    cdsStockSettlementHORIG_AMOUNT.AsFloat := Abs(cdsStockSettlementHORIG_AMOUNT.AsFloat);
    cdsStockSettlementHAMOUNT.AsFloat := Abs(cdsStockSettlementHAMOUNT.AsFloat);
  end;
end;

procedure TfrmStockSettleVoucher.cdsStockOutstandingCalcFields(
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
end;

procedure TfrmStockSettleVoucher.cdsStockOutstandingCHECKEDChange(
  Sender: TField);
begin
  inherited;
  if cdsStockOutstandingCHECKED.AsBoolean then
    cdsStockOutstandingPROCESSQTY.AsFloat := cdsStockOutstandingOUTSTANDQTY.AsFloat
  else
    cdsStockOutstandingPROCESSQTY.AsFloat := 0;
end;

procedure TfrmStockSettleVoucher.cdsStockOutstandingFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if FilterByDate then
  begin
    Accept := (DataSet.FieldByName('QTY').AsFloat - DataSet.FieldByName('SETTLED_QTY').AsFloat - DataSet.FieldByName('VOUCHERQTY').AsFloat <> 0)
      And (DateOf(DataSet.FieldByName('DUEDATE').AsDateTime) = DateOf(dtDueDate.Date));
  end
  else
  begin
    Accept := (DataSet.FieldByName('QTY').AsFloat - DataSet.FieldByName('SETTLED_QTY').AsFloat - DataSet.FieldByName('VOUCHERQTY').AsFloat <> 0);
  end;
end;

procedure TfrmStockSettleVoucher.cdsStockSettlementHCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockSettlementHDIFF_AMOUNT.AsFloat := Abs(cdsStockSettlementHAMOUNT.AsFloat)
    - Abs(cdsStockSettlementHORIG_AMOUNT.AsFloat);
end;

procedure TfrmStockSettleVoucher.cdsStockSettlementHINSTRUCTION_TYPEChange(
  Sender: TField);
begin
  inherited;
  cdsStockSettlementHAMOUNT.AsFloat := 0;
  if cdsStockSettlementHINSTRUCTION_TYPE.AsString = 'VP' then
  begin
    cdsStockSettlementHAMOUNT.AsFloat := cdsStockSettlementHORIG_AMOUNT.AsFloat;
    edAmount.Properties.ReadOnly := false;
    edAmount.ParentColor := false;
  end
  else
  begin
    edAmount.Properties.ReadOnly := true;
    edAmount.ParentColor := true;
  end;
end;

procedure TfrmStockSettleVoucher.cdsStockSettlementHORIG_AMOUNTChange(
  Sender: TField);
begin
  inherited;
  if cdsStockOutstanding.Tag <> -1 then
  begin
    cdsStockSettlementHAMOUNT.AsFloat := cdsStockSettlementHORIG_AMOUNT.AsFloat;

    if cdsStockSettlementHINSTRUCTION_TYPE.AsString <> 'VP' then
    begin
      cdsStockSettlementHAMOUNT.AsFloat := 0;
    end;
  end;
end;

procedure TfrmStockSettleVoucher.cdsStockSettlementHQTYChange(Sender: TField);
begin
  inherited;
  if cdsStockOutstanding.Tag <> -1 then
  begin
    if cdsStockSettlementHQTY.AsFloat < 0 then
    begin
      cdsStockSettlementHSETTLE_TYPE.AsString := 'D';
    end
    else
    begin
      cdsStockSettlementHSETTLE_TYPE.AsString := 'R';
    end;
  end;
end;

procedure TfrmStockSettleVoucher.cdsStockSettlementHReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmStockSettleVoucher.chkAllOutstandPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cdsStockOutstanding.Filtered := False;
  ResetChecked;
  FilterByDate := not chkAllOutstand.Checked;
  lcDueDate.Visible := FilterByDate;
  cdsStockOutstanding.Filtered := True;
end;

function TfrmStockSettleVoucher.CreateVoucher(AAccID: Integer; AStockID: Integer; AClAccID: Integer; AInstrType : String;ASideAcc : string;ADueDate : TDateTime): Boolean;
var
  bError: Boolean;
  iSSID: Int64;
  sMsg: string;

label Restart;

begin
  Result := False;

  frmStockSettleVoucher := TfrmStockSettleVoucher.Create(nil);
  try
    with frmStockSettleVoucher do
    begin
      FilterByDate := True;

      cdsAccountCustody.Close;
      cdsAccountCustody.Params[0].AsInteger := AClAccid;
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

      if not dmGlobal.IntDataLookup.cdsLuInstrumentAll.Active then
        dmGlobal.IntDataLookup.cdsLuInstrumentAll.Open;

      if not dmGlobal.IntDataLookup.cdsLuAccount.Active then
        dmGlobal.IntDataLookup.cdsLuAccount.Open;

      iSSID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCK_SETTLEMENT_H');

      cdsStockSettlementH.Append;
      cdsStockSettlementHSSID.AsLargeInt      := iSSID;
      cdsStockSettlementHSSNO.AsString        := '<AUTO>';
      cdsStockSettlementHSETTLE_TYPE.AsString := '';
      cdsStockSettlementHENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
      cdsStockSettlementHVALUEDATE.AsDateTime := ADueDate;
      cdsStockSettlementHACCID.AsLargeInt     := AAccID;
      cdsStockSettlementHSTOCKID.AsLargeInt   := AStockID;
      cdsStockSettlementHQTY.AsFloat          := 0;
      cdsStockSettlementHSTAT.AsString        := 'O';
      cdsStockSettlementHSSDESC.AsString      := 'Manual Stock Settlement Voucher';
      cdsStockSettlementHACCCUSTODYID.AsInteger := 0;
      cdsStockSettlementHCL_ACCID.AsInteger := AClAccID;

      if (AInstrType <> 'REGULAR') then
        cdsStockSettlementHINSTRUCTION_TYPE.AsString := 'VP'
      else
        cdsStockSettlementHINSTRUCTION_TYPE.AsString := AInstrType;

      if ASideAcc = 'B' then
      begin
        lcInsType1.Visible := True;
        lcInsType2.Visible := False;
        lcCustodyNo.Visible := False;
        cdsStockSettlementHINSTRUCTION_TYPE.ReadOnly := True;
        if AInstrType = 'REGULAR' then
        begin
          lcAmount.Visible := False;
        end;
        edAmount.Properties.ReadOnly := True;
      end
      else
      begin
        cdsAccountCustody.First;
        cdsStockSettlementHACCCUSTODYID.AsLargeInt := cdsAccountCustodyACCCUSTODYID.AsInteger;
      end;

      dtDueDate.Date := ADueDate;

      Restart :
      bError := False;

      if not (cdsStockSettlementH.State in dsEditModes) then
        cdsStockSettlementH.Edit;

      cdsStockOutstanding.Filtered := True;
      if ShowModal = mrOk then
      begin
        //Empty Detail
        while not cdsStockSettlementD.IsEmpty do
          cdsStockSettlementD.Delete;

        cdsStockOutstanding.Tag := -1;
        cdsStockOutstanding.Filtered := False;
        cdsStockOutstanding.First;
        while not cdsStockOutstanding.Eof do
        begin
          if cdsStockOutstandingCHECKED.AsBoolean then
          begin
            cdsStockSettlementD.Append;
            cdsStockSettlementDSIID.AsInteger := cdsStockOutstandingSIID.AsInteger;
            cdsStockSettlementDQTY.AsFloat    := cdsStockOutstandingPROCESSQTY.AsFloat;
            cdsStockSettlementD.Post;

            cdsStockOutstanding.Edit;
            cdsStockOutstandingVOUCHERQTY.AsFloat := cdsStockOutstandingVOUCHERQTY.AsFloat + cdsStockOutstandingPROCESSQTY.AsFloat;
            cdsStockOutstanding.Post;
          end;

          cdsStockOutstanding.Next;
        end;
        cdsStockOutstanding.Tag := 0;

        if not cdsStockSettlementD.IsEmpty then
        begin
          if cdsStockSettlementHSSNO.AsString = '<AUTO>' then
          begin
            if not (cdsStockSettlementH.State in dsEditModes) then
              cdsStockSettlementH.Edit;

            cdsStockSettlementHSSNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsStockSettlementHENTRYDATE.AsDateTime, 'SS', 'TBL_B_STOCK_SETTLEMENT_H');
          end;
        end
        else
        begin
          MessageDlg('No Data to Process!', mtError, [mbOk], 0);
          Goto Restart;
        end;

        if (cdsStockSettlementH.State in dsEditModes) then
          cdsStockSettlementH.Post;

        dmGlobal.RemoteServer.StartTransaction;
        Try
          if not bError then
            bError := cdsStockSettlementH.ApplyUpdates(0) > 0;

          if not bError then
            bError := cdsStockOutstanding.ApplyUpdates(0) > 0;

          if not bError then
          begin
            dmGlobal.RemoteServer.CommitTransaction;
            dmGlobal.RemoteServer.GenerateCustodyInstruction(iSSID, 'SSID', sMsg);
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
    FreeAndNil(frmStockSettleVoucher);
  end;
end;

procedure TfrmStockSettleVoucher.gvwMasterCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if ACellViewInfo.Item <> gvwMasterPROCESSQTY then
    gvwMasterCHECKED.Focused := True;
end;

procedure TfrmStockSettleVoucher.gvwMasterCHECKEDPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cdsStockOutstanding.State in dsEditModes then
    cdsStockOutstanding.Post;
end;

procedure TfrmStockSettleVoucher.gvwMasterEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  AAllow := (AItem = gvwMasterCHECKED) or ((AItem = gvwMasterPROCESSQTY) And (cdsStockOutstandingCHECKED.AsBoolean));

  if (AItem = gvwMasterPROCESSQTY) then
  begin
    TcxCurrencyEditProperties(gvwMasterPROCESSQTY.Properties).MaxValue := cdsStockOutstandingOUTSTANDQTY.AsFloat;
  end;
end;

procedure TfrmStockSettleVoucher.gvwMasterSETTLED_QTYPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if cdsStockOutstanding.State in dsEditModes then
    cdsStockOutstanding.Post;
end;

procedure TfrmStockSettleVoucher.ResetChecked;
begin
  cdsStockOutstanding.First;
  while not cdsStockOutstanding.Eof do
  begin
    cdsStockOutstanding.Edit;
    cdsStockOutstandingCHECKED.AsBoolean := False;
    cdsStockOutstanding.Post;

    cdsStockOutstanding.Next;
  end;
end;

procedure TfrmStockSettleVoucher.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsStockOutstanding.DisableControls;
  cdsStockOutstanding.First;
  while not cdsStockOutstanding.Eof do
  begin
    cdsStockOutstanding.Edit;
    cdsStockOutstandingCHECKED.AsBoolean := True;
    cdsStockOutstanding.Post;

    cdsStockOutstanding.Next;
  end;
  cdsStockOutstanding.EnableControls;
end;

procedure TfrmStockSettleVoucher.cxButton2Click(Sender: TObject);
begin
  inherited;
  ResetChecked;
end;

procedure TfrmStockSettleVoucher.dtDueDatePropertiesChange(Sender: TObject);
begin
  inherited;
  cdsStockOutstanding.Filtered := False;
  ResetChecked;
  cdsStockOutstanding.Filtered := True;
end;

procedure TfrmStockSettleVoucher.FilteredClick(Sender: TObject);
var
  i, RecIdx: Integer;
begin
  inherited;
  ResetChecked;

  for i := 0 to gvwMaster.DataController.FilteredRecordCount - 1 do
  begin
    RecIdx := gvwMaster.DataController.FilteredRecordIndex[i];
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsStockOutstanding.Edit;
    cdsStockOutstandingCHECKED.AsBoolean := True;
    cdsStockOutstanding.Post;
  end;
end;

procedure TfrmStockSettleVoucher.FormShow(Sender: TObject);
begin
  inherited;
  with dmglobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.Open;
  end;
end;

Initialization
  RegisterClass(TfrmStockSettleVoucher);

end.
