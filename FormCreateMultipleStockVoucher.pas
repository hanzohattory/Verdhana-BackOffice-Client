unit FormCreateMultipleStockVoucher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Vcl.ComCtrls, dxCore, cxDateUtils, Datasnap.DBClient, NClientDataset,
  cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxImageComboBox, cxCalendar,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxMaskEdit, cxTextEdit, Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutLookAndFeels;

type
  TfrmCreateMultipleStockVoucher = class(TfrmEditorData)
    dxLayoutControl3: TdxLayoutControl;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    grdCashPos: TcxGrid;
    gvwCashPos: TcxGridDBBandedTableView;
    gvwCashPosSTOCKID: TcxGridDBBandedColumn;
    gvwCashPosMARKETCODE: TcxGridDBBandedColumn;
    gvwCashPosLOCALCODE: TcxGridDBBandedColumn;
    gvwCashPosISSUERNAME: TcxGridDBBandedColumn;
    gvwCashPosISINCODE: TcxGridDBBandedColumn;
    gvwCashPosISINDATE: TcxGridDBBandedColumn;
    gvwCashPosQTY_ONHAND: TcxGridDBBandedColumn;
    gvwCashPosQTY_OUTS: TcxGridDBBandedColumn;
    gvwCashPosQTY_ONHOLD: TcxGridDBBandedColumn;
    gvwCashPosQTY_BAL: TcxGridDBBandedColumn;
    gvwCashPosQTY_OVERDUE: TcxGridDBBandedColumn;
    gvwCashPosQTY_DLV: TcxGridDBBandedColumn;
    gvwCashPosQTY_RCV: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
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
    cdsStockSettlementH: TNClientDataset;
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
    cdsStockSettlementHACCNAME: TStringField;
    cdsStockSettlementHACCNO: TStringField;
    cdsStockSettlementHSTOCKCODE: TStringField;
    cdsStockSettlementHSTOCKNAME: TStringField;
    cdsStockSettlementHqryStockSettlement_D: TDataSetField;
    cdsStockSettlementD: TNClientDataset;
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
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cdsSelectSIStock: TNClientDataset;
    cdsSelectSIStockSIID: TLargeintField;
    cdsSelectSIStockSINO: TStringField;
    cdsSelectSIStockENTRYDATE: TDateField;
    cdsSelectSIStockVALUEDATE: TDateField;
    cdsSelectSIStockSITYPE: TStringField;
    cdsSelectSIStockSIDE_ACC: TStringField;
    cdsSelectSIStockCLIENT_ACCSIDE: TLargeintField;
    cdsSelectSIStockCASH_STOCK: TStringField;
    cdsSelectSIStockSETTLE_SIDE: TStringField;
    cdsSelectSIStockINSTRUCTION_TYPE: TStringField;
    cdsSelectSIStockNETTYPE: TStringField;
    cdsSelectSIStockACCOUNT_SID: TStringField;
    cdsSelectSIStockACCID: TLargeintField;
    cdsSelectSIStockACCNO: TStringField;
    cdsSelectSIStockACCNAME: TStringField;
    cdsSelectSIStockTRANSFER_MODE: TStringField;
    cdsSelectSIStockBASE_CCYCODE: TStringField;
    cdsSelectSIStockBASE_NETAMT: TFloatField;
    cdsSelectSIStockBANK_CHARGES: TFloatField;
    cdsSelectSIStockSETTLE_CCYCODE: TStringField;
    cdsSelectSIStockSETTLE_EXRATE: TFloatField;
    cdsSelectSIStockSETTLE_NETAMT: TFloatField;
    cdsSelectSIStockSETTLED_AMT: TFloatField;
    cdsSelectSIStockSTOCKID: TIntegerField;
    cdsSelectSIStockSTOCKCODE: TStringField;
    cdsSelectSIStockPRICE: TFloatField;
    cdsSelectSIStockQTY: TFloatField;
    cdsSelectSIStockTRDDATE: TDateField;
    cdsSelectSIStockDUEDATE: TDateField;
    cdsSelectSIStockSETTLEDDATE: TDateField;
    cdsSelectSIStockMOVEDUEDATE: TDateField;
    cdsSelectSIStockSI_DESC: TStringField;
    cdsSelectSIStockSTAT: TStringField;
    cdsSelectSIStockOLD_SIID: TLargeintField;
    cdsSelectSIStockVOUCHERAMT: TFloatField;
    cdsSelectSIStockVOUCHERQTY: TFloatField;
    cdsSelectSIStockNO_INTRC: TStringField;
    cdsSelectSIStockKSEI_RECON: TStringField;
    cdsSelectSIStockSETTLED_QTY: TFloatField;
    cdsSelectSIStockTRF_PRVT_BANK: TStringField;
    cdsSelectSIStockACCSOPID: TLargeintField;
    cdsSelectSIStockUSE_ACS: TStringField;
    cdsSelectSIStockCP_ACCBANKID: TIntegerField;
    cdsSelectSIStockCP_BANKCODE: TStringField;
    cdsSelectSIStockCP_BANKACCNO: TStringField;
    cdsSelectSIStockSOURCE_ACCBANKID: TLargeintField;
    cdsSelectSIStockSOURCE_ACCBANKCODE: TStringField;
    cdsSelectSIStockSOURCE_ACCBANKNO: TStringField;
    cdsSelectSIStockSOURCE_ACCBANKNAME: TStringField;
    cdsSelectSIStockTARGET_ACCBANKID: TLargeintField;
    cdsSelectSIStockTARGET_ACCBANKCODE: TStringField;
    cdsSelectSIStockTARGET_ACCBANKNO: TStringField;
    cdsSelectSIStockTARGET_ACCBANKNAME: TStringField;
    cdsSelectSIStockCONFIRM_BY: TStringField;
    cdsSelectSIStockCREATE_FILE: TStringField;
    cdsSelectSIStockCOUNT_CREATE_FILE: TIntegerField;
    cdsSelectSIStockCBEST_UPLOAD: TStringField;
    cdsSelectSIStockPURPOSE: TStringField;
    cdsSelectSIStockTRADE_REF: TStringField;
    cdsSelectSIStockSETTLE_REASON: TStringField;
    cdsSelectSIStockREMARKS: TStringField;
    cdsSelectSIStockSIID_NEW: TLargeintField;
    cdsSelectSIStockBANKACCBRANCH: TStringField;
    cdsSelectSIStockACCBANKID: TIntegerField;
    cdsSelectSIStockCP_BANKACCNAME: TStringField;
    cdsSelectSIStockBANKCODE: TStringField;
    cdsSelectSIStockBANKACCNO: TStringField;
    cdsSelectSIStockBANKACCNAME: TStringField;
    cdsSelectSIStockCP_BANKACCBRANCH: TStringField;
    cdsSelectSIStockCMOVE_SETTLE: TStringField;
    cdsSelectSIStockSMOVE_SETTLE: TStringField;
    cdsSelectSIStockCUSTODY_INSTR: TLargeintField;
    cdsSelectSIStockCASH_SIID: TLargeintField;
    cdsSelectSIStockLINKID: TLargeintField;
    cdsSelectSIStockLINKSEQID: TIntegerField;
    cdsSelectSIStockLINKNO: TStringField;
    cdsSelectSIStockLINKTYPE: TStringField;
    cdsSelectSIStockAUTO_WDR: TStringField;
    cdsSelectSIStockMODDA: TDateTimeField;
    cdsSelectSIStockMODUI: TStringField;
    cdsSelectSIStockAPPDA: TDateTimeField;
    cdsSelectSIStockAPPUI: TStringField;
    cdsSelectSIStockUNDER4Y: TIntegerField;
    cdsSelectSIStockUNDER4YDA: TDateTimeField;
    cdsSelectSIStockNOTES4Y: TStringField;
    cdsSelectSIStockISDEL: TIntegerField;
    cdsSelectSIStockID: TLargeintField;
    cdsSelectSIStockVOUCHERDATE: TDateField;
    gvwMasterSSID: TcxGridDBBandedColumn;
    gvwMasterSSNO: TcxGridDBBandedColumn;
    gvwMasterSSDESC: TcxGridDBBandedColumn;
    gvwMasterSETTLE_TYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterqryStockSettlement_D: TcxGridDBBandedColumn;
    cdsStockSettlementHACCCUSTODYID: TLargeintField;
    cdsStockSettlementHAMOUNT: TFloatField;
    gvwMasterACCCUSTODYID: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    cdsAccountCustodyList: TNClientDataset;
    cdsSelectSIStockSTOCKNAME: TStringField;
    cdsStockSettlementHINSTRUCTION_TYPE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cdsStockSettlementHNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FSIID : integer;
  public
    { Public declarations }
    property SIID: integer read FSIID write FSIID;
  end;

var
  frmCreateMultipleStockVoucher: TfrmCreateMultipleStockVoucher;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmCreateMultipleStockVoucher.cdsStockSettlementHNewRecord(
  DataSet: TDataSet);
begin
  inherited;
//  if True then

end;

procedure TfrmCreateMultipleStockVoucher.FormShow(Sender: TObject);
begin
  inherited;
  cdsSelectSIStock.Close;
  cdsSelectSIStock.Params[0].AsInteger := FSIID;
  cdsSelectSIStock.Open;

  cdsStockPosition.Close;
  cdsStockPosition.Params[0].AsDateTime := dmglobal.RemoteServer.GetTransDate;
  cdsStockPosition.Params[1].asInteger := cdsSelectSIStockACCID.AsInteger;
  cdsStockPosition.Open;
end;

end.
