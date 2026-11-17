unit FormCashSettleVoucher;

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
  ClassClientConst, dxLayoutLookAndFeels, cxImageComboBox, System.DateUtils,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCashSettleVoucher = class(TfrmEditorData)
    cdsCashSettlementH: TNClientDataset;
    cdsCashSettlementHCSID: TLargeintField;
    cdsCashSettlementHCSNO: TStringField;
    cdsCashSettlementHCSDESC: TStringField;
    cdsCashSettlementHSETTLE_TYPE: TStringField;
    cdsCashSettlementHENTRYDATE: TDateField;
    cdsCashSettlementHVALUEDATE: TDateField;
    cdsCashSettlementHACCID: TIntegerField;
    cdsCashSettlementHCCY: TStringField;
    cdsCashSettlementHAMOUNT: TFloatField;
    cdsCashSettlementHFX_CCY: TStringField;
    cdsCashSettlementHFX_EXRATE: TFloatField;
    cdsCashSettlementHFX_AMOUNT: TFloatField;
    cdsCashSettlementHSTAT: TStringField;
    cdsCashSettlementHFULLFLOW: TStringField;
    cdsCashSettlementHACCBANKID: TIntegerField;
    cdsCashSettlementHMODDA: TDateTimeField;
    cdsCashSettlementHMODUI: TStringField;
    cdsCashSettlementHAPPDA: TDateTimeField;
    cdsCashSettlementHAPPUI: TStringField;
    cdsCashSettlementHUNDER4Y: TIntegerField;
    cdsCashSettlementHUNDER4YDA: TDateTimeField;
    cdsCashSettlementHNOTES4Y: TStringField;
    cdsCashSettlementHISDEL: TIntegerField;
    cdsCashSettlementHqryCashSettlementD: TDataSetField;
    cdsCashSettlementD: TNClientDataset;
    cdsCashSettlementDCSID: TLargeintField;
    cdsCashSettlementDSIID: TLargeintField;
    cdsCashSettlementDAMOUNT: TFloatField;
    cdsCashSettlementDMODDA: TDateTimeField;
    cdsCashSettlementDMODUI: TStringField;
    cdsCashSettlementDAPPDA: TDateTimeField;
    cdsCashSettlementDAPPUI: TStringField;
    cdsCashSettlementDUNDER4Y: TIntegerField;
    cdsCashSettlementDUNDER4YDA: TDateTimeField;
    cdsCashSettlementDNOTES4Y: TStringField;
    cdsCashSettlementDISDEL: TIntegerField;
    cdsCashSettlementDID: TLargeintField;
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
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    lcCompanyBank: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1Item13: TdxLayoutItem;
    grdCashPos: TcxGrid;
    gvwCashPos: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cdsLastCashPosition: TNClientDataset;
    cdsLastCashPositionCCY: TStringField;
    cdsLastCashPositionCASH_ONHAND: TFloatField;
    cdsLastCashPositionCASH_QQ: TFloatField;
    cdsLastCashPositionCASH_OUTS: TFloatField;
    cdsLastCashPositionARAMT: TFloatField;
    cdsLastCashPositionAPAMT: TFloatField;
    dsLastCashPosition: TDataSource;
    gvwCashPosCCY: TcxGridDBBandedColumn;
    gvwCashPosCASH_ONHAND: TcxGridDBBandedColumn;
    gvwCashPosCASH_QQ: TcxGridDBBandedColumn;
    gvwCashPosCASH_OUTS: TcxGridDBBandedColumn;
    gvwCashPosARAMT: TcxGridDBBandedColumn;
    gvwCashPosAPAMT: TcxGridDBBandedColumn;
    cdsCashOutstanding: TNClientDataset;
    dsCashOutstanding: TDataSource;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cdsLuPrivateBankAcc: TNClientDataset;
    cdsLuPrivateBankAccACCBANKID: TIntegerField;
    cdsLuPrivateBankAccACCBANKCODE: TStringField;
    cdsLuPrivateBankAccACCID: TIntegerField;
    cdsLuPrivateBankAccBNCODE: TStringField;
    cdsLuPrivateBankAccBNNAME: TStringField;
    cdsLuPrivateBankAccBANKACCNO: TStringField;
    cdsLuPrivateBankAccBANKACCNAME: TStringField;
    cdsLuPrivateBankAccBANKBRANCH: TStringField;
    cdsLuPrivateBankAccISRDN: TStringField;
    cdsLuPrivateBankAccCCYCODE: TStringField;
    cdsCashSettlementHBNNAME: TStringField;
    cdsCashSettlementHBANKACCNO: TStringField;
    cdsCashSettlementHBANKACCNAME: TStringField;
    cdsCashSettlementHACCCODE: TStringField;
    cdsCashSettlementHACCNAME: TStringField;
    cdsCashSettlementHFULLFLOWACC: TStringField;
    chkAll: TcxCheckBox;
    dxLayoutControl1Item19: TdxLayoutItem;
    dtDue: TcxDateEdit;
    lcDueDate: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    btnFiltered: TcxButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    btnAll: TcxButton;
    dxLayoutControl1Item22: TdxLayoutItem;
    btnUnCheck: TcxButton;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dsLuPrivateBankAcc: TDataSource;
    edExRate: TcxDBCurrencyEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cdsCreateBankInstruction: TNClientDataset;
    cdsCreateBankInstructionACCID: TIntegerField;
    cdsCreateBankInstructionBITYPE: TStringField;
    cdsCreateBankInstructionACCBANKID_SOURCE: TIntegerField;
    cdsCreateBankInstructionBNCODE_SOURCE: TStringField;
    cdsCreateBankInstructionBNACCNO_SOURCE: TStringField;
    cdsCreateBankInstructionBNACCNAME_SOURCE: TStringField;
    cdsCreateBankInstructionBNBRANCH_SOURCE: TStringField;
    cdsCreateBankInstructionACCBANKID_TARGET: TIntegerField;
    cdsCreateBankInstructionBNCODE_TARGET: TStringField;
    cdsCreateBankInstructionBNACCNO_TARGET: TStringField;
    cdsCreateBankInstructionBNACCNAME_TARGET: TStringField;
    cdsCreateBankInstructionBNBRANCH_TARGET: TStringField;
    cdsCreateBankInstructionCCY: TStringField;
    cdsCreateBankInstructionAMOUNT: TFloatField;
    cdsCreateBankInstructionCHARGES: TFloatField;
    cdsCreateBankInstructionNETAMOUNT: TFloatField;
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
    cdsLastCashPositionCASH_ONHOLD: TFloatField;
    cdsLastCashPositionCASH_AVAILABLE: TFloatField;
    gvwCashPosCASH_ONHOLD: TcxGridDBBandedColumn;
    gvwCashPosCASH_AVAILABLE: TcxGridDBBandedColumn;
    cdsLuPrivateBankAccPRIVATEBANK_DEFAULT: TStringField;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    btnSmart: TcxButton;
    dxLayoutControl1Item24: TdxLayoutItem;
    cdsCashSettlementHFX_EXRATE_MODE: TStringField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item26: TdxLayoutItem;
    cdsCashSettlementHBANK_CCY: TStringField;
    cdsCashSettlementHBANK_EXRATE_MODE: TStringField;
    cdsCashSettlementHBANK_EXRATE: TFloatField;
    cdsCashSettlementHBANK_AMOUNT: TFloatField;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Group14: TdxLayoutGroup;
    edBankRate: TcxDBTextEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    cdsCashSettlementHBANKCCYCODE: TStringField;
    lcClientBank: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    cbCompanyBank: TcxDBLookupComboBox;
    dxLayoutControl1Item30: TdxLayoutItem;
    lcInfo: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item31: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item32: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item33: TdxLayoutItem;
    cdsCashSettlementHBANKID: TIntegerField;
    cdsCashSettlementHBNCODE_BROKER: TStringField;
    cdsCashSettlementHBNNAME_BROKER: TStringField;
    cdsCashSettlementHBANKACCNO_BROKER: TStringField;
    cdsCashSettlementHBANKACCNAME_BROKER: TStringField;
    cdsCashSettlementHBANKCCYCODE_BROKER: TStringField;
    cdsCashSettlementHKEEP_TYPE: TStringField;
    cdsCashSettlementHACCBANKID_KEEP: TIntegerField;
    cdsCashSettlementHBANKID_FULLFLOW: TIntegerField;
    cdsCashSettlementHBNCODE: TStringField;
    cdsLuBankCompanyDefaultByBank: TNClientDataset;
    cdsBankInstructionBANKTYPE_SOURCE: TStringField;
    cdsBankInstructionCCYCODE_SOURCE: TStringField;
    cdsBankInstructionBANKTYPE_TARGET: TStringField;
    cdsBankInstructionCCYCODE_TARGET: TStringField;
    cdsCashSettlementHBANKBRANCH: TStringField;
    cdsCashSettlementHBANKBRANCH_BROKER: TStringField;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl1Item35: TdxLayoutItem;
    cbCashBook: TcxDBLookupComboBox;
    dxLayoutControl1Item36: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item37: TdxLayoutItem;
    lcCashBook: TdxLayoutGroup;
    cdsCashSettlementHCBDESC: TStringField;
    cdsCashSettlementHCCYCODE_CASHBOOK: TStringField;
    lcSettleCcy: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cdsCashSettlementHID: TLargeintField;
    cdsCashOutstandingCOID: TLargeintField;
    cdsCashOutstandingCOCODE: TStringField;
    cdsCashOutstandingENTRYDATE: TDateField;
    cdsCashOutstandingTRDATE: TDateField;
    cdsCashOutstandingDUEDATE: TDateField;
    cdsCashOutstandingTRTYPE: TStringField;
    cdsCashOutstandingSIDE: TStringField;
    cdsCashOutstandingCCY: TStringField;
    cdsCashOutstandingEXRATE: TFloatField;
    cdsCashOutstandingAMOUNT: TFloatField;
    cdsCashOutstandingSETTLED_AMOUNT: TFloatField;
    cdsCashOutstandingVOUCHER_AMOUNT: TFloatField;
    cdsCashOutstandingSTAT: TStringField;
    gvwMasterCOID: TcxGridDBBandedColumn;
    gvwMasterCOCODE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterTRDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    gvwMasterSIDE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterVOUCHER_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    cdsCashOutstandingCHECKED: TBooleanField;
    gvwMasterCHECKED: TcxGridDBBandedColumn;
    cdsCashOutstandingPROCESSAMT: TFloatField;
    cdsCashOutstandingOUTSTANDAMT: TFloatField;
    cdsCashOutstandingOUTSTANDAMT_X: TFloatField;
    cdsCashOutstandingPROCESSAMT_X: TFloatField;
    gvwMasterPROCESSAMT: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDAMT: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDAMT_X: TcxGridDBBandedColumn;
    gvwMasterPROCESSAMT_X: TcxGridDBBandedColumn;
    cdsLuBankCompanyDefaultByBankBANKID: TIntegerField;
    cdsLuBankCompanyDefaultByBankBNCODE: TStringField;
    cdsLuBankCompanyDefaultByBankBANKACCOUNTNO: TStringField;
    cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME: TStringField;
    cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH: TStringField;
    cdsLuBankCompanyDefaultByBankCCYCODE: TStringField;
    cdsLuBankCompanyDefaultByBankSTAT: TStringField;
    cdsLuBankCompanyDefaultByBankAS_RDNBANK: TStringField;
    cdsLuBankCompanyDefaultByBankAS_PRIVATEBANK: TStringField;
    cdsLuBankCompanyDefaultByBankAS_PAYMENTBANK: TStringField;
    cdsLuBankCompanyDefaultByBankBNNAME: TStringField;
    cdsLuBankCompanyByBankID: TNClientDataset;
    cdsLuBankCompanyByBankIDBANKID: TIntegerField;
    cdsLuBankCompanyByBankIDBNCODE: TStringField;
    cdsLuBankCompanyByBankIDBANKACCOUNTNO: TStringField;
    cdsLuBankCompanyByBankIDBANKACCOUNTNAME: TStringField;
    cdsLuBankCompanyByBankIDBANKACCOUNTBRANCH: TStringField;
    cdsLuBankCompanyByBankIDCCYCODE: TStringField;
    cdsLuBankCompanyByBankIDSTAT: TStringField;
    cdsLuBankCompanyByBankIDAS_RDNBANK: TStringField;
    cdsLuBankCompanyByBankIDAS_PRIVATEBANK: TStringField;
    cdsLuBankCompanyByBankIDAS_PAYMENTBANK: TStringField;
    cdsLuBankCompanyByBankIDBNNAME: TStringField;
    cdsBankCompanyPayment: TNClientDataset;
    cdsBankCompanyPaymentCCYCODE: TStringField;
    cdsBankCompanyPaymentBANKID: TIntegerField;
    procedure cdsCashSettlementHFX_CCYChange(Sender: TField);
    procedure cdsCashSettlementHFX_EXRATEChange(Sender: TField);
    procedure cxDBTextEdit6Editing(Sender: TObject; var CanEdit: Boolean);
    procedure cdsCashSettlementHACCIDChange(Sender: TField);
    procedure cdsCashSettlementHFULLFLOWChange(Sender: TField);
    procedure cdsCashOutstandingFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkAllPropertiesChange(Sender: TObject);
    procedure dtDuePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsCashOutstandingCalcFields(DataSet: TDataSet);
    procedure cdsCashOutstandingCHECKEDChange(Sender: TField);
    procedure gvwMasterEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsCashSettlementHFX_AMOUNTChange(Sender: TField);
    procedure cdsCashOutstandingBeforeEdit(DataSet: TDataSet);
    procedure cdsCashOutstandingBeforePost(DataSet: TDataSet);
    procedure grdMasterExit(Sender: TObject);
    procedure cdsCashSettlementHCCYChange(Sender: TField);
    procedure btnAllClick(Sender: TObject);
    procedure btnUnCheckClick(Sender: TObject);
    procedure btnFilteredClick(Sender: TObject);
    procedure cdsLastCashPositionAfterOpen(DataSet: TDataSet);
    procedure edExRateEditing(Sender: TObject; var CanEdit: Boolean);
    procedure cxDBCheckBox1Editing(Sender: TObject; var CanEdit: Boolean);
    procedure cdsCashSettlementHReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsLastCashPositionCalcFields(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure gvwMasterPROCESSAMTPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnSmartClick(Sender: TObject);
    procedure cdsCashSettlementHNewRecord(DataSet: TDataSet);
    procedure cdsCashSettlementHACCBANKIDChange(Sender: TField);
    procedure cdsCashSettlementHBANK_CCYChange(Sender: TField);
    procedure cdsCashSettlementHBANK_EXRATEChange(Sender: TField);
    procedure edBankRateEditing(Sender: TObject; var CanEdit: Boolean);
    procedure cdsCashSettlementHBANKIDChange(Sender: TField);
    procedure btnOKClick(Sender: TObject);
    procedure cdsCashSettlementHKEEP_TYPEChange(Sender: TField);
    procedure cbCashBookEnter(Sender: TObject);
    procedure cbCashBookExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gvwMasterCHECKEDPropertiesChange(Sender: TObject);
    procedure cdsCashOutstandingSTATGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    FOldProcessAmt: Double;
    FTotalOutstanding: Double;
    FilterByDate: Boolean;
    fBankCode: string;
    procedure ResetCheckedOutstanding;
  public
    { Public declarations }
    Function CreateVoucher(ACCID, ABankID: Integer; AAccType, ACurrency, AisRDN: String; AValueDate: TDate): Boolean;
  end;

var
  frmCashSettleVoucher: TfrmCashSettleVoucher;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormCashDep, cxLookupDBGrid;

procedure TfrmCashSettleVoucher.btnAllClick(Sender: TObject);
begin
  inherited;
  cdsCashOutstanding.First;
  while not cdsCashOutstanding.Eof do
  begin
    if cdsCashOutstandingAMOUNT.AsFloat <> 0 then
    begin
      if cdsCashOutstandingCHECKED.AsBoolean = False then
      begin
        cdsCashOutstanding.Edit;
        cdsCashOutstandingCHECKED.AsBoolean := True;
        cdsCashOutstanding.Post;
      end;
    end;

    cdsCashOutstanding.Next;
  end;
end;

procedure TfrmCashSettleVoucher.btnFilteredClick(Sender: TObject);
var
  i, RecIdx: Integer;
begin
  inherited;
  ResetCheckedOutstanding;

  for i := 0 to gvwMaster.DataController.FilteredRecordCount - 1 do
  begin
    RecIdx := gvwMaster.DataController.FilteredRecordIndex[i];
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsCashOutstanding.Edit;
    cdsCashOutstandingCHECKED.AsBoolean := True;
    cdsCashOutstanding.Post;
  end;
end;

procedure TfrmCashSettleVoucher.btnOKClick(Sender: TObject);
begin
  if cdsCashSettlementHKEEP_TYPE.AsString = '2' then  //RDN Bank Default
  begin
    cdsLuBankCompanyDefaultByBank.Close;
    cdsLuBankCompanyDefaultByBank.Params[0].AsString := fBankCode;
    cdsLuBankCompanyDefaultByBank.Params[1].AsString := cdsCashSettlementHCCY.AsString;
    cdsLuBankCompanyDefaultByBank.Params[2].AsString := '1';
    cdsLuBankCompanyDefaultByBank.Params[3].AsString := '0';
    cdsLuBankCompanyDefaultByBank.Params[4].AsString := '0';
    cdsLuBankCompanyDefaultByBank.Open;

    if cdsLuBankCompanyDefaultByBank.IsEmpty then
    begin
      MessageDlg('Please Set RDN Bank Default !', mtError, [mbOK], 0);
      Abort;
    end
    else
      cdsCashSettlementHBANKID.AsInteger := cdsLuBankCompanyDefaultByBankBANKID.AsInteger;
  end;

  if cdsCashSettlementHFULLFLOW.AsString = '1' then
  begin
    cdsCashSettlementHBANKID_FULLFLOW.AsInteger := cdsCashSettlementHACCBANKID.AsInteger;
  end;

  inherited;
end;

procedure TfrmCashSettleVoucher.btnSmartClick(Sender: TObject);
var
  fCashAvailable, fProcessAmount, fProcessAvailable: Double;
begin
  inherited;
  ResetCheckedOutstanding;

  fCashAvailable := 0;
  if cdsLastCashPosition.Locate('CCY', cdsCashSettlementHFX_CCY.AsString, []) then
    fCashAvailable := cdsLastCashPositionCASH_ONHAND.AsFloat - cdsLastCashPositionCASH_ONHOLD.AsFloat;

  cdsCashOutstanding.First;
  while not cdsCashOutstanding.Eof do
  begin
    if cdsCashOutstandingOUTSTANDAMT.AsFloat <> 0 then
    begin
      if cdsCashOutstandingCHECKED.AsBoolean = False then
      begin
        if cdsCashOutstandingSIDE.AsString = 'P' then
        begin
          cdsCashOutstanding.Edit;
          cdsCashOutstandingCHECKED.AsBoolean := True;
          cdsCashOutstanding.Post;
        end
        else
        begin
          if cdsCashSettlementHFX_AMOUNT.AsFloat < fCashAvailable then
          begin
            fProcessAmount := cdsCashOutstandingOUTSTANDAMT.AsFloat;
            fProcessAvailable := (fCashAvailable - cdsCashSettlementHFX_AMOUNT.AsFloat) * cdsCashSettlementHFX_EXRATE.AsFloat;

            if fProcessAmount > fProcessAvailable then
              fProcessAmount := fProcessAvailable;

            cdsCashOutstanding.Edit;
            cdsCashOutstandingCHECKED.AsBoolean := True;
            cdsCashOutstandingPROCESSAMT.AsFloat := fProcessAmount;
            cdsCashOutstanding.Post;
          end
          else
            Exit;
        end;
      end;
    end;

    cdsCashOutstanding.Next;
  end;
end;

procedure TfrmCashSettleVoucher.btnUnCheckClick(Sender: TObject);
begin
  inherited;
  ResetCheckedOutstanding;
end;

procedure TfrmCashSettleVoucher.cdsCashOutstandingBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldProcessAmt := cdsCashOutstandingPROCESSAMT.AsFloat;
end;

procedure TfrmCashSettleVoucher.cdsCashOutstandingBeforePost(DataSet: TDataSet);
begin
  if cdsCashOutstandingSIDE.AsString = 'P' then
    cdsCashSettlementHAMOUNT.AsFloat := cdsCashSettlementHAMOUNT.AsFloat - cdsCashOutstandingPROCESSAMT.AsFloat + FOldProcessAmt
  else
    cdsCashSettlementHAMOUNT.AsFloat := cdsCashSettlementHAMOUNT.AsFloat + cdsCashOutstandingPROCESSAMT.AsFloat - FOldProcessAmt;
end;

procedure TfrmCashSettleVoucher.cdsCashOutstandingCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsCashOutstandingOUTSTANDAMT.AsFloat := cdsCashOutstandingAMOUNT.AsFloat
    - cdsCashOutstandingSETTLED_AMOUNT.AsFloat - cdsCashOutstandingVOUCHER_AMOUNT.AsFloat;

  if cdsCashOutstandingSIDE.AsString = 'P' then
  begin
    cdsCashOutstandingOUTSTANDAMT_X.AsFloat := cdsCashOutstandingOUTSTANDAMT.AsFloat * -1;
    cdsCashOutstandingPROCESSAMT_X.AsFloat := cdsCashOutstandingPROCESSAMT.AsFloat * -1;
  end
  else
  begin
    cdsCashOutstandingOUTSTANDAMT_X.AsFloat := cdsCashOutstandingOUTSTANDAMT.AsFloat;
    cdsCashOutstandingPROCESSAMT_X.AsFloat := cdsCashOutstandingPROCESSAMT.AsFloat;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashOutstandingCHECKEDChange(Sender: TField);
begin
  inherited;
  if cdsCashOutstandingCHECKED.AsBoolean then
  begin
    cdsCashOutstandingPROCESSAMT.AsFloat := cdsCashOutstandingAMOUNT.AsFloat - cdsCashOutstandingSETTLED_AMOUNT.AsFloat - cdsCashOutstandingVOUCHER_AMOUNT.AsFloat;
  end
  else
  begin
    cdsCashOutstandingPROCESSAMT.AsFloat := 0;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashOutstandingFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if FilterByDate then
  begin
    Accept := (DataSet.FieldByName('AMOUNT').AsFloat - DataSet.FieldByName('SETTLED_AMOUNT').AsFloat - DataSet.FieldByName('VOUCHER_AMOUNT').AsFloat <> 0)
      And (DateOf(DataSet.FieldByName('DUEDATE').AsDateTime) = DateOf(dtDue.Date));
  end
  Else
  Begin
    Accept := (DataSet.FieldByName('AMOUNT').AsFloat - DataSet.FieldByName('SETTLED_AMOUNT').AsFloat - DataSet.FieldByName('VOUCHER_AMOUNT').AsFloat <> 0);
  End;
end;

procedure TfrmCashSettleVoucher.cdsCashOutstandingSTATGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '1' then Text := 'Open'
  else if Sender.AsString = '2' then Text := 'Settle';
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHACCBANKIDChange(
  Sender: TField);
begin
  inherited;
  cdsCashSettlementHBANK_CCY.Value := cdsCashSettlementHBANKCCYCODE.Value;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHACCIDChange(Sender: TField);
begin
  inherited;
  if (not cdsLastCashPosition.Active)
    Or (cdsLastCashPosition.Params[0].AsInteger <> cdsCashSettlementHACCID.AsInteger) then
  begin
    cdsLastCashPosition.Close;
    cdsLastCashPosition.Params[0].AsInteger := cdsCashSettlementHACCID.AsInteger;
    cdsLastCashPosition.Open;
  end;

  if FTotalOutstanding > 0 then
    cdsCashSettlementHFULLFLOW.AsString := '0'
  Else
    cdsCashSettlementHFULLFLOW.AsString := cdsCashSettlementHFULLFLOWACC.AsString;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHBANKIDChange(Sender: TField);
begin
  inherited;
  if cdsCashSettlementHKEEP_TYPE.AsString = '3' then
    cdsCashSettlementHFX_CCY.AsString := cdsCashSettlementHBANKCCYCODE_BROKER.AsString
  else if cdsCashSettlementHKEEP_TYPE.AsString = '4' then
    cdsCashSettlementHFX_CCY.AsString := cdsCashSettlementHCCYCODE_CASHBOOK.AsString;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHBANK_CCYChange(
  Sender: TField);
var
  sBankCcy, sFxCcy: String;
  fValue, fInverseValue: Double;
begin
  inherited;
  if Not cdsCashSettlementHBANK_CCY.IsNull then
  begin
    sBankCcy := cdsCashSettlementHBANK_CCY.AsString;
    sFxCcy := cdsCashSettlementHFX_CCY.AsString;

    if sFxCcy = sBankCcy then
    begin
      cdsCashSettlementHBANK_EXRATE.AsFloat := 1;
    end
    else
    begin
      fValue := 1;
      fInverseValue := 1;
      dmGlobal.RemoteServer.GetCurrentCcyRate(sBankCcy, sFxCcy, fValue, fInverseValue);
      if cdsCashSettlementHBANK_EXRATE_MODE.AsString = '/' then
        cdsCashSettlementHBANK_EXRATE.AsFloat := fInverseValue
      else
        cdsCashSettlementHBANK_EXRATE.AsFloat := fValue;
    end;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHBANK_EXRATEChange(
  Sender: TField);
begin
  inherited;
  if cdsCashSettlementHBANK_CCY.AsString = cdsCashSettlementHCCY.AsString then
  begin
    if cdsCashSettlementHBANK_EXRATE_MODE.AsString = '/' then
      cdsCashSettlementHBANK_AMOUNT.AsFloat := cdsCashSettlementHAMOUNT.AsFloat / cdsCashSettlementHBANK_EXRATE.AsFloat
    else
      cdsCashSettlementHBANK_AMOUNT.AsFloat := cdsCashSettlementHAMOUNT.AsFloat * cdsCashSettlementHBANK_EXRATE.AsFloat;
  end
  else
  begin
    if cdsCashSettlementHBANK_EXRATE_MODE.AsString = '/' then
      cdsCashSettlementHBANK_AMOUNT.AsFloat := cdsCashSettlementHFX_AMOUNT.AsFloat / cdsCashSettlementHBANK_EXRATE.AsFloat
    else
      cdsCashSettlementHBANK_AMOUNT.AsFloat := cdsCashSettlementHFX_AMOUNT.AsFloat * cdsCashSettlementHBANK_EXRATE.AsFloat;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHCCYChange(Sender: TField);
var
  sCcy, sFxCcy: String;
  fValue, fInverseValue: Double;
begin
  inherited;
  if (not cdsCashSettlementHACCID.IsNull) And (not cdsCashSettlementHCCY.IsNull) then
  begin
    cdsCashOutstanding.Close;
    cdsCashOutstanding.Params[0].AsInteger := cdsCashSettlementHACCID.AsInteger;
    cdsCashOutstanding.Params[1].AsString := cdsCashSettlementHCCY.AsString;
    cdsCashOutstanding.Open;
  end;

  cdsCashSettlementHAMOUNT.AsFloat := 0;

  sCcy := cdsCashSettlementHCCY.AsString;
  sFxCcy := cdsCashSettlementHFX_CCY.AsString;

  if sFxCcy = sCcy then
  begin
    cdsCashSettlementHFX_EXRATE.AsFloat := 1;
  end
  else
  begin
    fValue := 1;
    fInverseValue := 1;
    dmGlobal.RemoteServer.GetCurrentCcyRate(sFxCcy, sCcy, fValue, fInverseValue);
    if cdsCashSettlementHFX_EXRATE_MODE.AsString = '/' then
      cdsCashSettlementHFX_EXRATE.AsFloat := fValue
    else
      cdsCashSettlementHFX_EXRATE.AsFloat := fInverseValue;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHFULLFLOWChange(
  Sender: TField);
begin
  inherited;
  lcClientBank.Visible := cdsCashSettlementHFULLFLOW.AsString = '1';

  if cdsCashSettlementHFULLFLOW.AsString = '1' then
  begin
    if (not cdsLuPrivateBankAcc.Active)
      or (cdsLuPrivateBankAcc.Params[0].AsInteger <> cdsCashSettlementHACCID.AsInteger)
      or (cdsLuPrivateBankAcc.Params[1].AsString <> cdsCashSettlementHFX_CCY.AsString)
      or (cdsLuPrivateBankAcc.Params[2].AsString <> cdsCashSettlementHCCY.AsString) then
    begin
      cdsLuPrivateBankAcc.Close;
      cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashSettlementHACCID.AsInteger;
      cdsLuPrivateBankAcc.Params[1].AsString := cdsCashSettlementHFX_CCY.AsString;
      cdsLuPrivateBankAcc.Params[2].AsString := cdsCashSettlementHCCY.AsString;
      cdsLuPrivateBankAcc.Open;
    end;

    if cdsLuPrivateBankAcc.IsEmpty then
    begin
      cdsCashSettlementHFULLFLOW.AsString := '0';
      cdsCashSettlementHACCBANKID.Clear;
    end
    else
    begin
      cdsLuPrivateBankAcc.Locate('PRIVATEBANK_DEFAULT', '1', []);
      cdsCashSettlementHACCBANKID.AsInteger := cdsLuPrivateBankAccACCBANKID.AsInteger;
    end;

  end
  else
  begin
    cdsCashSettlementHACCBANKID.Clear;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHFX_AMOUNTChange(
  Sender: TField);
begin
  inherited;
  if cdsCashOutstanding.Tag <> -1 then
  begin
    if cdsCashSettlementHFX_AMOUNT.AsFloat < 0 then
    begin
      lcInfo.CaptionOptions.Text := 'Payment to Customer';
      cdsCashSettlementHSETTLE_TYPE.AsString := 'P';

      if (FTotalOutstanding > 0) or ((cdsCashSettlementHKEEP_TYPE.AsString <> '2') and (cdsCashSettlementHKEEP_TYPE.AsString <> '3')) then
        cdsCashSettlementHFULLFLOW.AsString := '0'
      else
        cdsCashSettlementHFULLFLOW.AsString := cdsCashSettlementHFULLFLOWACC.AsString;
    end
    else
    begin
      lcInfo.CaptionOptions.Text := 'Receive from Customer';
      cdsCashSettlementHSETTLE_TYPE.AsString := 'R';
      cdsCashSettlementHFULLFLOW.AsString := '0';
    end;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHFX_CCYChange(Sender: TField);
var
  sCcy, sFxCcy: String;
  fValue, fInverseValue: Double;
begin
  inherited;
  sCcy := cdsCashSettlementHCCY.AsString;
  sFxCcy := cdsCashSettlementHFX_CCY.AsString;

  if sFxCcy = sCcy then
  begin
    cdsCashSettlementHFX_EXRATE.AsFloat := 1;
  end
  else
  begin
    fValue := 1;
    fInverseValue := 1;
    dmGlobal.RemoteServer.GetCurrentCcyRate(sFxCcy, sCcy, fValue, fInverseValue);
    if cdsCashSettlementHFX_EXRATE_MODE.AsString = '/' then
      cdsCashSettlementHFX_EXRATE.AsFloat := fValue
    else
      cdsCashSettlementHFX_EXRATE.AsFloat := fInverseValue;
  end;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHFX_EXRATEChange(
  Sender: TField);
begin
  inherited;
  if cdsCashSettlementHFX_EXRATE_MODE.AsString = '/' then
    cdsCashSettlementHFX_AMOUNT.AsFloat := cdsCashSettlementHAMOUNT.AsFloat / cdsCashSettlementHFX_EXRATE.AsFloat
  else
    cdsCashSettlementHFX_AMOUNT.AsFloat := cdsCashSettlementHAMOUNT.AsFloat * cdsCashSettlementHFX_EXRATE.AsFloat;
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHKEEP_TYPEChange(
  Sender: TField);
begin
  inherited;
  lcCompanyBank.Visible := cdsCashSettlementHKEEP_TYPE.AsString = '3';
  lcCashBook.Visible := cdsCashSettlementHKEEP_TYPE.AsString = '4';
  lcSettleCcy.Enabled := (cdsCashSettlementHKEEP_TYPE.AsString = '1') or (cdsCashSettlementHKEEP_TYPE.AsString = '2');
  if (cdsCashSettlementHKEEP_TYPE.AsString = '1') or (cdsCashSettlementHKEEP_TYPE.AsString = '2') then
  begin
    if (cdsLuBankCompanyDefaultByBank.Active) And (Not cdsLuBankCompanyDefaultByBankBANKID.IsNull) then
      cdsCashSettlementHFX_CCY.AsString := cdsLuBankCompanyDefaultByBankCCYCODE.AsString
    else
      cdsCashSettlementHFX_CCY.AsString := dmGlobal.RemoteServer.GetLocalCCY;
  end
  else if (cdsCashSettlementHKEEP_TYPE.AsString = '3') then
    cdsCashSettlementHFX_CCY.AsString := cdsCashSettlementHBANKCCYCODE_BROKER.AsString
  else if (cdsCashSettlementHKEEP_TYPE.AsString = '4') then
    cdsCashSettlementHFX_CCY.AsString := cdsCashSettlementHCCYCODE_CASHBOOK.AsString;

  if (FTotalOutstanding = 0) And (cdsCashSettlementHAMOUNT.AsFloat < 0)
    And ((cdsCashSettlementHKEEP_TYPE.AsString = '2') or (cdsCashSettlementHKEEP_TYPE.AsString = '3')) then
    cdsCashSettlementHFULLFLOW.AsString := cdsCashSettlementHFULLFLOWACC.AsString
  else
    cdsCashSettlementHFULLFLOW.AsString := '0';
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCashSettlementHFX_EXRATE_MODE.AsString := '/';
  cdsCashSettlementHBANK_EXRATE_MODE.AsString := '/';
end;

procedure TfrmCashSettleVoucher.cdsCashSettlementHReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmCashSettleVoucher.cdsLastCashPositionAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FTotalOutstanding := 0;
  if not cdsLastCashPosition.IsEmpty then
  begin
    cdsLastCashPosition.First;
    while not cdsLastCashPosition.Eof do
    begin
      FTotalOutstanding := FTotalOutstanding + cdsLastCashPositionCASH_OUTS.AsFloat;

      cdsLastCashPosition.Next;
    end;
  end;
end;

procedure TfrmCashSettleVoucher.cdsLastCashPositionCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsLastCashPositionCASH_AVAILABLE.AsFloat := cdsLastCashPositionCASH_ONHAND.AsFloat
    + cdsLastCashPositionCASH_QQ.AsFloat - cdsLastCashPositionCASH_ONHOLD.AsFloat;
end;

procedure TfrmCashSettleVoucher.chkAllPropertiesChange(Sender: TObject);
begin
  inherited;
  cdsCashOutstanding.Filtered := False;
  ResetCheckedOutstanding;
  FilterByDate := not chkAll.Checked;
  cdsCashOutstanding.Filtered := True;
  lcDueDate.Visible := FilterByDate;
end;

function TfrmCashSettleVoucher.CreateVoucher(ACCID, ABankID: Integer;
  AAccType, ACurrency, AisRDN: String; AValueDate: TDate): Boolean;
var
  bError: Boolean;
  sMsg: String;
label
  Restart;

begin
  Result := False;

  frmCashSettleVoucher := TfrmCashSettleVoucher.Create(Nil);
  Try
    with frmCashSettleVoucher do
    begin
      FilterByDate := True;

      cdsCashSettlementH.Close;
      cdsCashSettlementH.Params[0].AsInteger := -1;
      cdsCashSettlementH.Open;

      cdsLastCashPosition.Close;
      cdsLastCashPosition.Params[0].AsInteger := ACCID;
      cdsLastCashPosition.Open;

      cdsCashOutstanding.Close;
      cdsCashOutstanding.Params[0].AsInteger := ACCID;
      cdsCashOutstanding.Params[1].AsString := ACurrency;
      cdsCashOutstanding.Open;

      cdsLuBankCompanyByBankID.Close;
      cdsLuBankCompanyByBankID.Params[0].AsInteger := ABankID;
      cdsLuBankCompanyByBankID.Open;
      fBankCode := cdsLuBankCompanyByBankIDBNCODE.AsString;

      cdsCashSettlementH.Append;
      cdsCashSettlementHCSID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_SETTLEMENT_H');
      cdsCashSettlementHCSNO.AsString := '<AUTO>';
      cdsCashSettlementHCSDESC.AsString := 'Manual Cash Settlement Voucher';
      cdsCashSettlementHENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
      cdsCashSettlementHVALUEDATE.AsDateTime := AValueDate; //cdsCashSettlementHENTRYDATE.AsDateTime;
      cdsCashSettlementHSTAT.AsString := '1'; //1: Open, 2: Settle, 3: Reverse, 4: Cancel
      cdsCashSettlementHFULLFLOW.AsString := '0';
      cdsCashSettlementHCCY.AsString := ACurrency;
      cdsCashSettlementHAMOUNT.AsFloat := 0;
      cdsCashSettlementHACCID.AsInteger := ACCID;
      cdsCashSettlementHBANKID.AsInteger := ABankID;
      cdsCashSettlementHBNCODE.AsString := fBankCode;

      if AisRDN = '0' then
      begin
        cdsCashSettlementHKEEP_TYPE.AsString := '3';

        cdsBankCompanyPayment.Close;
        cdsBankCompanyPayment.Params[0].AsString := ACurrency;
        cdsBankCompanyPayment.Open;

        cdsCashSettlementHACCBANKID.AsInteger := cdsBankCompanyPaymentBANKID.AsInteger;

      end
      else
      if (Not cdsLuBankCompanyByBankID.IsEmpty) And (Not cdsLuBankCompanyByBankIDBANKID.IsNull) then
      begin
        cdsCashSettlementHKEEP_TYPE.AsString := '2';
      end
      else
      begin
        if cdsCashSettlementHFULLFLOWACC.AsString = '1' then
          cdsCashSettlementHKEEP_TYPE.AsString := '3'
        else
          cdsCashSettlementHKEEP_TYPE.AsString := '1';
      end;

      dtDue.Date := cdsCashSettlementHENTRYDATE.AsDateTime;

      Restart:

      bError := False;

      cdsCashOutstanding.Filtered := True;
      if ShowModal = mrOK then
      begin
        //Empty Cash Settlement Detail
        while not cdsCashSettlementD.IsEmpty do
        begin
          cdsCashSettlementD.Delete;
        end;

        if cdsCashOutstanding.State in dsEditModes then
          cdsCashOutstanding.Post;

        //Insert Into Cash Settlement Detail
        cdsCashOutstanding.Tag := -1;
        cdsCashOutstanding.Filtered := False;
        cdsCashOutstanding.First;
        while not cdsCashOutstanding.Eof do
        begin
          if cdsCashOutstandingCHECKED.AsBoolean then
          begin
            cdsCashSettlementD.Append;
            cdsCashSettlementDSIID.AsLargeInt := cdsCashOutstandingCOID.AsLargeInt;
            cdsCashSettlementDAMOUNT.AsFloat  := cdsCashOutstandingPROCESSAMT.AsFloat;
            cdsCashSettlementD.Post;

//            iSIID := cdsCashOutstandingSIID.AsLargeInt;
            cdsCashOutstanding.Edit;
            cdsCashOutstandingVOUCHER_AMOUNT.AsFloat := cdsCashOutstandingVOUCHER_AMOUNT.AsFloat + cdsCashOutstandingPROCESSAMT.AsFloat;
            cdsCashOutstanding.Post;
//            cdsCashOutstanding.Locate('SIID', iSIID, []);
          end;

          cdsCashOutstanding.Next;
        end;
        cdsCashOutstanding.Tag := 0;

        if not cdsCashSettlementD.IsEmpty then
        begin
          if cdsCashSettlementHCSNO.AsString = '<AUTO>' then
          begin
            if not (cdsCashSettlementH.State in dsEditModes) then
              cdsCashSettlementH.Edit;

            cdsCashSettlementHCSNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
              cdsCashSettlementHENTRYDATE.AsDateTime, 'CS', 'TBL_B_CASH_SETTLEMENT_H');
          end;

          if (cdsCashSettlementHAMOUNT.AsFloat <> 0) and (AAccType <> 'K') then
          begin
            cdsBankInstruction.Close;
            cdsBankInstruction.Params[0].AsInteger := -1;
            cdsBankInstruction.Open;

            //Bank Type di Bank Instruction
            //1: Company Payment Bank
            //2: Company QQ Bank
            //3: Client RDN Bank
            //4: Client Private Bank

            if cdsCashSettlementHFULLFLOW.AsString = '1' then
            begin
              if cdsCashSettlementHKEEP_TYPE.AsString = '3' then
              begin
                //Company Payment Bank to Client Private Bank
                cdsBankInstruction.Append;
                cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
                cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                  cdsCashSettlementHENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
                cdsBankInstructionBITYPE.AsString := 'P';
                cdsBankInstructionENTRYDATE.AsDateTime := cdsCashSettlementHENTRYDATE.AsDateTime;
                cdsBankInstructionVALUEDATE.AsDateTime := cdsCashSettlementHVALUEDATE.AsDateTime;
                cdsBankInstructionBIDESC.AsString := 'Payment Voucher ' + cdsCashSettlementHCSNO.AsString;
                cdsBankInstructionBANK_REF.AsString := '';
                cdsBankInstructionTRANS_TYPE.AsString := 'CS';
                cdsBankInstructionLINKID.AsLargeInt := cdsCashSettlementHCSID.AsLargeInt;
                cdsBankInstructionLINKNO.AsString := cdsCashSettlementHCSNO.AsString;
                cdsBankInstructionSTAT.AsString := '1';
                cdsBankInstructionACCID.AsInteger := cdsCashSettlementHACCID.AsInteger;

                cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
                cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHBANKID.AsInteger;
                cdsBankInstructionBNCODE_SOURCE.AsString := cdsCashSettlementHBNCODE_BROKER.AsString;
                cdsBankInstructionBNACCNO_SOURCE.AsString := cdsCashSettlementHBANKACCNO_BROKER.AsString;
                cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsCashSettlementHBANKACCNAME_BROKER.AsString;
                cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsCashSettlementHBANKBRANCH_BROKER.AsString;
                cdsBankInstructionCCYCODE_SOURCE.AsString := cdsCashSettlementHBANKCCYCODE_BROKER.AsString;

                cdsBankInstructionBANKTYPE_TARGET.AsString := '4';
                cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashSettlementHACCBANKID.AsInteger;
                cdsBankInstructionBNCODE_TARGET.AsString := fBankCode; //cdsCashSettlementHBNCODE.AsString;
                cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashSettlementHBANKACCNO.AsString;
                cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashSettlementHBANKACCNAME.AsString;
                cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashSettlementHBANKBRANCH.AsString;
                cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashSettlementHBANKCCYCODE.AsString;

                cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
                cdsBankInstructionCCY.AsString := cdsCashSettlementHFX_CCY.AsString;
                cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashSettlementHBANK_AMOUNT.AsFloat);
                cdsBankInstructionCHARGES.AsFloat := 0;
                cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashSettlementHBANK_AMOUNT.AsFloat);
                cdsBankInstruction.Post;
              end
              else
              begin
                //Company Payment Bank to Client RDN Bank
                cdsBankInstruction.Append;
                cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
                cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                  cdsCashSettlementHENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
                cdsBankInstructionBITYPE.AsString := 'P';
                cdsBankInstructionENTRYDATE.AsDateTime := cdsCashSettlementHENTRYDATE.AsDateTime;
                cdsBankInstructionVALUEDATE.AsDateTime := cdsCashSettlementHVALUEDATE.AsDateTime;
                cdsBankInstructionBIDESC.AsString := 'Payment Voucher ' + cdsCashSettlementHCSNO.AsString;
                cdsBankInstructionBANK_REF.AsString := '';
                cdsBankInstructionTRANS_TYPE.AsString := 'CS';
                cdsBankInstructionLINKID.AsLargeInt := cdsCashSettlementHCSID.AsLargeInt;
                cdsBankInstructionLINKNO.AsString := cdsCashSettlementHCSNO.AsString;
                cdsBankInstructionSTAT.AsString := '1';
                cdsBankInstructionACCID.AsInteger := cdsCashSettlementHACCID.AsInteger;

                cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
                cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHBANKID.AsInteger;
                cdsBankInstructionBNCODE_SOURCE.AsString := cdsCashSettlementHBNCODE_BROKER.AsString;
                cdsBankInstructionBNACCNO_SOURCE.AsString := cdsCashSettlementHBANKACCNO_BROKER.AsString;
                cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsCashSettlementHBANKACCNAME_BROKER.AsString;
                cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsCashSettlementHBANKBRANCH_BROKER.AsString;
                cdsBankInstructionCCYCODE_SOURCE.AsString := cdsCashSettlementHBANKCCYCODE_BROKER.AsString;

                cdsBankInstructionBANKTYPE_TARGET.AsString := '3';
                cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                cdsBankInstructionBNCODE_TARGET.AsString := cdsLuBankCompanyDefaultByBankBNCODE.AsString;
                cdsBankInstructionBNACCNO_TARGET.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNO.AsString;
                cdsBankInstructionBNACCNAME_TARGET.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME.AsString;
                cdsBankInstructionBNBRANCH_TARGET.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH.AsString;
                cdsBankInstructionCCYCODE_TARGET.AsString := cdsLuBankCompanyDefaultByBankCCYCODE.AsString;

                cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
                cdsBankInstructionCCY.AsString := cdsCashSettlementHFX_CCY.AsString;
                cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                cdsBankInstructionCHARGES.AsFloat := 0;
                cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                cdsBankInstruction.Post;

                if (cdsLuBankCompanyDefaultByBankBNCODE.AsString = cdsCashSettlementHBNCODE.AsString)
                  And (cdsLuBankCompanyDefaultByBankCCYCODE.AsString = cdsCashSettlementHBANK_CCY.AsString) then
                begin
                  //Client RDN Bank to Client Private Bank
                  cdsBankInstruction.Append;
                  cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
                  cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                    cdsCashSettlementHENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
                  cdsBankInstructionBITYPE.AsString := 'P';
                  cdsBankInstructionENTRYDATE.AsDateTime := cdsCashSettlementHENTRYDATE.AsDateTime;
                  cdsBankInstructionVALUEDATE.AsDateTime := cdsCashSettlementHVALUEDATE.AsDateTime;
                  cdsBankInstructionBIDESC.AsString := 'Payment Voucher ' + cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionBANK_REF.AsString := '';
                  cdsBankInstructionTRANS_TYPE.AsString := 'CS';
                  cdsBankInstructionLINKID.AsLargeInt := cdsCashSettlementHCSID.AsLargeInt;
                  cdsBankInstructionLINKNO.AsString := cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionSTAT.AsString := '1';
                  cdsBankInstructionACCID.AsInteger := cdsCashSettlementHACCID.AsInteger;

                  cdsBankInstructionBANKTYPE_SOURCE.AsString := '3';
                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                  cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBNCODE.AsString;
                  cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNO.AsString;
                  cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME.AsString;
                  cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH.AsString;
                  cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankCCYCODE.AsString;

                  cdsBankInstructionBANKTYPE_TARGET.AsString := '4';
                  cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashSettlementHACCBANKID.AsInteger;
                  cdsBankInstructionBNCODE_TARGET.AsString := fBankCode; //cdsCashSettlementHBNCODE.AsString;
                  cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashSettlementHBANKACCNO.AsString;
                  cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashSettlementHBANKACCNAME.AsString;
                  cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashSettlementHBANKBRANCH.AsString;
                  cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashSettlementHBANKCCYCODE.AsString;

                  cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
                  cdsBankInstructionCCY.AsString := cdsCashSettlementHFX_CCY.AsString;
                  cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                  cdsBankInstructionCHARGES.AsFloat := 0;
                  cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                  cdsBankInstruction.Post;
                end
                else
                begin
                  //Client RDN Bank to Company Payment Bank
                  cdsBankInstruction.Append;
                  cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
                  cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                    cdsCashSettlementHENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
                  cdsBankInstructionBITYPE.AsString := 'P';
                  cdsBankInstructionENTRYDATE.AsDateTime := cdsCashSettlementHENTRYDATE.AsDateTime;
                  cdsBankInstructionVALUEDATE.AsDateTime := cdsCashSettlementHVALUEDATE.AsDateTime;
                  cdsBankInstructionBIDESC.AsString := 'Payment Voucher ' + cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionBANK_REF.AsString := '';
                  cdsBankInstructionTRANS_TYPE.AsString := 'CS';
                  cdsBankInstructionLINKID.AsLargeInt := cdsCashSettlementHCSID.AsLargeInt;
                  cdsBankInstructionLINKNO.AsString := cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionSTAT.AsString := '1';
                  cdsBankInstructionACCID.AsInteger := cdsCashSettlementHACCID.AsInteger;

                  cdsBankInstructionBANKTYPE_SOURCE.AsString := '3';
                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                  cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBNCODE.AsString;
                  cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNO.AsString;
                  cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME.AsString;
                  cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH.AsString;
                  cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankCCYCODE.AsString;

                  cdsBankInstructionBANKTYPE_TARGET.AsString := '1';
                  cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashSettlementHBANKID.AsInteger;
                  cdsBankInstructionBNCODE_TARGET.AsString := cdsCashSettlementHBNCODE_BROKER.AsString;
                  cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashSettlementHBANKACCNO_BROKER.AsString;
                  cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashSettlementHBANKACCNAME_BROKER.AsString;
                  cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashSettlementHBANKBRANCH_BROKER.AsString;
                  cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashSettlementHBANKCCYCODE_BROKER.AsString;

                  cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
                  cdsBankInstructionCCY.AsString := cdsCashSettlementHFX_CCY.AsString;
                  cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                  cdsBankInstructionCHARGES.AsFloat := 0;
                  cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                  cdsBankInstruction.Post;

                  //Company Payment Bank to Client Private Bank
                  cdsBankInstruction.Append;
                  cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
                  cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                    cdsCashSettlementHENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
                  cdsBankInstructionBITYPE.AsString := 'P';
                  cdsBankInstructionENTRYDATE.AsDateTime := cdsCashSettlementHENTRYDATE.AsDateTime;
                  cdsBankInstructionVALUEDATE.AsDateTime := cdsCashSettlementHVALUEDATE.AsDateTime;
                  cdsBankInstructionBIDESC.AsString := 'Payment Voucher ' + cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionBANK_REF.AsString := '';
                  cdsBankInstructionTRANS_TYPE.AsString := 'CS';
                  cdsBankInstructionLINKID.AsLargeInt := cdsCashSettlementHCSID.AsLargeInt;
                  cdsBankInstructionLINKNO.AsString := cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionSTAT.AsString := '1';
                  cdsBankInstructionACCID.AsInteger := cdsCashSettlementHACCID.AsInteger;

                  cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHBANKID_FULLFLOW.AsInteger;

                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                  cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBNCODE.AsString;
                  cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNO.AsString;
                  cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME.AsString;
                  cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH.AsString;
                  cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankCCYCODE.AsString;

                  cdsBankInstructionBANKTYPE_TARGET.AsString := '4';
                  cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashSettlementHACCBANKID.AsInteger;
                  cdsBankInstructionBNCODE_TARGET.AsString := fBankCode; //cdsCashSettlementHBNCODE.AsString;
                  cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashSettlementHBANKACCNO.AsString;
                  cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashSettlementHBANKACCNAME.AsString;
                  cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashSettlementHBANKBRANCH.AsString;
                  cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashSettlementHBANKCCYCODE.AsString;

                  cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
                  cdsBankInstructionCCY.AsString := cdsCashSettlementHFX_CCY.AsString;
                  cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashSettlementHBANK_AMOUNT.AsFloat);
                  cdsBankInstructionCHARGES.AsFloat := 0;
                  cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashSettlementHBANK_AMOUNT.AsFloat);
                  cdsBankInstruction.Post;
                end;

              end;
            end
            else //Not Full Flow
            begin
              //Request By Irvan 20171009 Create Bank Instruksi Hanya Untuk ke RDN saja
              if cdsCashSettlementHKEEP_TYPE.AsString = '2' then
              begin
                cdsBankInstruction.Append;
                cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
                cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                  cdsCashSettlementHENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
                cdsBankInstructionENTRYDATE.AsDateTime := cdsCashSettlementHENTRYDATE.AsDateTime;
                cdsBankInstructionVALUEDATE.AsDateTime := cdsCashSettlementHVALUEDATE.AsDateTime;
                cdsBankInstructionBANK_REF.AsString := '';
                cdsBankInstructionTRANS_TYPE.AsString := 'CS';
                cdsBankInstructionLINKID.AsLargeInt := cdsCashSettlementHCSID.AsLargeInt;
                cdsBankInstructionLINKNO.AsString := cdsCashSettlementHCSNO.AsString;
                cdsBankInstructionSTAT.AsString := '1';
                cdsBankInstructionACCID.AsInteger := cdsCashSettlementHACCID.AsInteger;

                if cdsCashSettlementHSETTLE_TYPE.AsString = 'P' then
                begin
                  cdsBankInstructionBITYPE.AsString := 'P';
                  cdsBankInstructionBIDESC.AsString := 'Payment Voucher ' + cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHBANKID.AsInteger;
                  cdsBankInstructionBNCODE_SOURCE.AsString := cdsCashSettlementHBNCODE_BROKER.AsString;
                  cdsBankInstructionBNACCNO_SOURCE.AsString := cdsCashSettlementHBANKACCNO_BROKER.AsString;
                  cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsCashSettlementHBANKACCNAME_BROKER.AsString;
                  cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsCashSettlementHBANKBRANCH_BROKER.AsString;
                  cdsBankInstructionCCYCODE_SOURCE.AsString := cdsCashSettlementHBANKCCYCODE_BROKER.AsString;

                  cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                  if cdsCashSettlementHKEEP_TYPE.AsString = 'Q' then
                  begin
                    //Company Payment Bank to Company QQ Bank
                    cdsBankInstructionBANKTYPE_TARGET.AsString := '2';
                  end
                  else
                  begin
                    //Company Payment Bank to Client RDN Bank
                    cdsBankInstructionBANKTYPE_TARGET.AsString := '3';
                  end;

                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                  cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBNCODE.AsString;
                  cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNO.AsString;
                  cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME.AsString;
                  cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH.AsString;
                  cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankCCYCODE.AsString;
                end
                else
                begin
                  cdsBankInstructionBITYPE.AsString := 'R';
                  cdsBankInstructionBIDESC.AsString := 'Receive Voucher ' + cdsCashSettlementHCSNO.AsString;
                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                  if cdsCashSettlementHKEEP_TYPE.AsString = 'Q' then
                  begin
                    //Company QQ Bank to Company Payment Bank
                    cdsBankInstructionBANKTYPE_SOURCE.AsString := '2';
                  end
                  else
                  begin
                    //Client RDN Bank to Company Payment Bank
                    cdsBankInstructionBANKTYPE_SOURCE.AsString := '3';
                  end;

                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashSettlementHACCBANKID_KEEP.AsInteger;
                  cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBNCODE.AsString;
                  cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNO.AsString;
                  cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTNAME.AsString;
                  cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuBankCompanyDefaultByBankBANKACCOUNTBRANCH.AsString;
                  cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuBankCompanyDefaultByBankCCYCODE.AsString;

                  cdsBankInstructionBANKTYPE_TARGET.AsString := '1';
                  cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashSettlementHBANKID.AsInteger;
                  cdsBankInstructionBNCODE_TARGET.AsString := cdsCashSettlementHBNCODE_BROKER.AsString;
                  cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashSettlementHBANKACCNO_BROKER.AsString;
                  cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashSettlementHBANKACCNAME_BROKER.AsString;
                  cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashSettlementHBANKBRANCH_BROKER.AsString;
                  cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashSettlementHBANKCCYCODE_BROKER.AsString;
                end;

                cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
                cdsBankInstructionCCY.AsString := cdsCashSettlementHFX_CCY.AsString;
                cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                cdsBankInstructionCHARGES.AsFloat := 0;
                cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashSettlementHFX_AMOUNT.AsFloat);
                cdsBankInstruction.Post;
              end;
            end;
          end;

          dmGlobal.RemoteServer.StartTransaction;
          Try
            if (cdsCashSettlementHSETTLE_TYPE.AsString = 'R') And
              ((cdsCashSettlementHKEEP_TYPE.AsString = '1') or (cdsCashSettlementHKEEP_TYPE.AsString = '2')) then //Jika Receive Voucher Maka Harus Update CashOnHold Position
            begin
              bError := not dmGlobal.RemoteServer.UpdateCashOnHold(cdsCashSettlementHACCID.AsInteger,
                cdsCashSettlementHFX_CCY.AsString, cdsCashSettlementHFX_AMOUNT.AsFloat, sMsg);

              if bError then
              begin
                cdsCashOutstanding.CancelUpdates;

                if not (cdsCashSettlementH.State in dsEditModes) then
                  cdsCashSettlementH.Edit;

                cdsCashSettlementHAMOUNT.AsFloat := 0;

                ShowMessage(sMsg);
              end;
            end;

            if not bError then
              bError := cdsCashSettlementH.ApplyUpdates(0) > 0;

            if not bError then
              bError := cdsCashOutstanding.ApplyUpdates(0) > 0;

            if not bError then
            begin
              if not cdsBankInstruction.IsEmpty then
              begin
                bError := cdsBankInstruction.ApplyUpdates(0) > 0;
              end;
            end;

            if not bError then
            begin
              dmGlobal.RemoteServer.CommitTransaction;
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
        end
        else
        begin
          MessageDlg('No Data to Process!', mtError, [mbOk], 0);
          Goto Restart;
        end;
      end;

    end;
  Finally
    FreeAndNil(frmCashSettleVoucher);
  End;
end;

procedure TfrmCashSettleVoucher.cxButton1Click(Sender: TObject);
var
  sKey, sMsg: String;
  CDID: Int64;
begin
  inherited;
  //Request By Irvan 20170430 untuk cash deposit auto posting setelah data insert
  sKey := '';
  dmGlobal.DefaultAccountID := cdsCashSettlementHACCID.AsInteger;
  dmGlobal.DefaultCurrency  := cdsCashSettlementHFX_CCY.AsString;
  dmGlobal.DefaultAmount    := cdsCashSettlementHFX_AMOUNT.AsFloat;
  if dmGlobal.ShowEditorForm(TfrmCashDep, sKey, pkCreate) = mrOk then
  Begin
    CDID := StrToInt64Def(sKey, Low(Int64));
    if CDID <> Low(Int64) then
    begin
      if dmGlobal.RemoteServer.PostCashDep(CDID, sMsg) then
      begin
        cdsLastCashPosition.Refresh;
        ShowMessage(sMsg);
      end;
    end;
  End;
end;

procedure TfrmCashSettleVoucher.cxDBCheckBox1Editing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  CanEdit := (FTotalOutstanding = 0) And (cdsCashSettlementHAMOUNT.AsFloat < 0)
    And ((cdsCashSettlementHKEEP_TYPE.AsString = '2') or (cdsCashSettlementHKEEP_TYPE.AsString = '3'));
end;

procedure TfrmCashSettleVoucher.cbCashBookEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbCashBook.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.AddItem(LGrid.Columns[3], foEqual, '1', '1');
    Active := True;
  end;
end;

procedure TfrmCashSettleVoucher.cbCashBookExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbCashBook.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.Clear;
    Active := False;
  end;
end;

procedure TfrmCashSettleVoucher.cxDBTextEdit6Editing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  CanEdit := cdsCashSettlementHCCY.AsString <> cdsCashSettlementHFX_CCY.AsString;
end;

procedure TfrmCashSettleVoucher.dtDuePropertiesChange(Sender: TObject);
begin
  inherited;
  cdsCashOutstanding.Filtered := False;
  ResetCheckedOutstanding;
  cdsCashOutstanding.Filtered := True;
end;

procedure TfrmCashSettleVoucher.edBankRateEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  CanEdit := (cdsCashSettlementHBANK_CCY.AsString <> cdsCashSettlementHFX_CCY.AsString)
    And (cdsCashSettlementHBANK_CCY.AsString <> '');
end;

procedure TfrmCashSettleVoucher.edExRateEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  CanEdit := (cdsCashSettlementHCCY.AsString <> cdsCashSettlementHFX_CCY.AsString)
    And (cdsCashSettlementHFX_CCY.AsString <> '');
end;

procedure TfrmCashSettleVoucher.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
      cdsLuAccount.Open;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open;

    cdsluCashBook.Close;
    cdsLuCashBook.Open;

    cdsLuBankCompany.Close;
    cdsLuBankCompany.Open;
  end;
end;

procedure TfrmCashSettleVoucher.FormShow(Sender: TObject);
begin
  inherited;
  with dmglobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.Open;
  end;
end;

procedure TfrmCashSettleVoucher.grdMasterExit(Sender: TObject);
begin
  inherited;
  if cdsCashOutstanding.State in dsEditModes then
    cdsCashOutstanding.Post;
end;

procedure TfrmCashSettleVoucher.gvwMasterCHECKEDPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cdsCashOutstanding.State in dsEditModes then
    cdsCashOutstanding.Post;
end;

procedure TfrmCashSettleVoucher.gvwMasterEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  AAllow := (AItem = gvwMasterCHECKED) or ((AItem = gvwMasterPROCESSAMT) And (cdsCashOutstandingCHECKED.AsBoolean));
end;

procedure TfrmCashSettleVoucher.gvwMasterPROCESSAMTPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if cdsCashOutstanding.State in dsEditModes then
    cdsCashOutstanding.Post;
end;

procedure TfrmCashSettleVoucher.ResetCheckedOutstanding;
begin
  cdsCashOutstanding.First;
  while not cdsCashOutstanding.Eof do
  begin
    cdsCashOutstanding.Edit;
    cdsCashOutstandingCHECKED.AsBoolean := False;
    cdsCashOutstanding.Post;

    cdsCashOutstanding.Next;
  end;
end;

Initialization
  RegisterClass(TfrmCashSettleVoucher);

end.
