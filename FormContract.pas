unit FormContract;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxDBEdit, cxTextEdit, NDatasetContainer, cxImageComboBox,
  cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutLookAndFeels,
  dxBarBuiltInMenu, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges, cxCurrencyEdit, dxScrollbarAnnotations;

type
  TfrmContract = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    tabAllocation: TcxTabSheet;
    grdAllocation: TcxGrid;
    gvwAllocation: TcxGridDBTableView;
    grdAllocationLevel1: TcxGridLevel;
    dsConAlloc: TDataSource;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    tabCharges: TcxTabSheet;
    cxGrid2: TcxGrid;
    gvwCharge: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsCharge: TDataSource;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cbSettleCcy: TcxDBLookupComboBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    popAlloc: TPopupMenu;
    ChangeCommission2: TMenuItem;
    cdsContract: TNClientDataset;
    cdsContractCONID: TLargeintField;
    cdsContractCONCODE: TStringField;
    cdsContractCONDATE: TDateField;
    cdsContractCASHSETTLEDATE: TDateField;
    cdsContractSTOCKSETTLEDATE: TDateField;
    cdsContractMARKETCODE: TStringField;
    cdsContractAGCTYPE: TStringField;
    cdsContractACCID: TLargeintField;
    cdsContractACCNO: TStringField;
    cdsContractACCNAME: TStringField;
    cdsContractCON_ADDR: TStringField;
    cdsContractCITY: TStringField;
    cdsContractZIPCODE: TStringField;
    cdsContractSTOCKID: TLargeintField;
    cdsContractSTOCKCODE: TStringField;
    cdsContractSTOCKNAME: TStringField;
    cdsContractTC_MODEL: TStringField;
    cdsContractTC_SENDBY: TStringField;
    cdsContractSALESID: TLargeintField;
    cdsContractDEALERID: TLargeintField;
    cdsContractCCYCODE: TStringField;
    cdsContractNETTYPE: TStringField;
    cdsContractNETVALUE: TFloatField;
    cdsContractCOMMAMT: TFloatField;
    cdsContractNETAMT: TFloatField;
    cdsContractCUSTODYCODE: TStringField;
    cdsContractSIDNO: TStringField;
    cdsContractBNCODE: TStringField;
    cdsContractBANKACCNO: TStringField;
    cdsContractBANKACCNAME: TStringField;
    cdsContractSETT_CLEARACC: TStringField;
    cdsContractSETT_CLEARSUBACC: TStringField;
    cdsContractFINALSTS: TStringField;
    cdsContractCONSTS: TStringField;
    cdsContractMODDA: TDateTimeField;
    cdsContractMODUI: TStringField;
    cdsContractAPPDA: TDateTimeField;
    cdsContractAPPUI: TStringField;
    cdsContractUNDER4Y: TIntegerField;
    cdsContractUNDER4YDA: TDateTimeField;
    cdsContractNOTES4Y: TStringField;
    cdsContractISDEL: TIntegerField;
    cdsContractID: TLargeintField;
    cdsContractISOMG: TStringField;
    cdsContractOTC: TFloatField;
    cdsContractVALUEAMT: TFloatField;
    cdsContractCHARGEAMT: TFloatField;
    cdsContractISMULTICCY: TStringField;
    cdsContractFOREIGN_CCYCODE: TStringField;
    cdsContractFOREIGN_EXRATE: TFloatField;
    cdsContractFOREIGN_NETAMT: TFloatField;
    cdsContractAVGPRICE: TFloatField;
    cdsContractQTY: TFloatField;
    cdsContractROUND_AMT: TFloatField;
    cdsContractFOREIGN_CURREXRATE: TFloatField;
    cdsContractC_SETTLEMODE: TStringField;
    cdsContractS_SETTLEMODE: TStringField;
    cdsContractCASHKEEP: TStringField;
    cdsContractSTOCKKEEP: TStringField;
    cdsContractEXRATE: TFloatField;
    cdsContractSALES_BRANCHID: TLargeintField;
    cdsContractPOSTED: TStringField;
    cdsContractJRNID: TLargeintField;
    cdsContractSETTLE_CASH: TStringField;
    cdsContractSETTLE_STOCK: TStringField;
    cdsContractS_STS: TStringField;
    cdsContractC_STS: TStringField;
    cdsConAlloc: TNClientDataset;
    cdsContractENTRYDATE: TDateField;
    cdsContractCASHMOVEDATE: TDateField;
    cdsContractSTOCKMOVEDATE: TDateField;
    cdsContractACCSOPID: TLargeintField;
    cdsContractEMAILID: TLargeintField;
    cdsContractMOVE_CSET: TStringField;
    cdsContractSENDID: TLargeintField;
    cdsContractqryConChargeSum: TDataSetField;
    cdsContractqryConAlloc: TDataSetField;
    cdsConAllocCONID: TLargeintField;
    cdsConAllocSEQID: TIntegerField;
    cdsConAllocACCID: TIntegerField;
    cdsConAllocACCNO: TStringField;
    cdsConAllocACCNAME: TStringField;
    cdsConAllocACCSOPID: TLargeintField;
    cdsConAllocBS: TStringField;
    cdsConAllocSTOCKID: TLargeintField;
    cdsConAllocSTOCKCODE: TStringField;
    cdsConAllocSTOCKNAME: TStringField;
    cdsConAllocCOMM_ID: TLargeintField;
    cdsConAllocCALC_METHOD: TStringField;
    cdsConAllocVALID_CALC_METHOD: TStringField;
    cdsConAllocCOMM_RATE: TFloatField;
    cdsConAllocAPRICE: TFloatField;
    cdsConAllocAQTY: TFloatField;
    cdsConAllocAVALUE: TFloatField;
    cdsConAllocREALPRICE: TFloatField;
    cdsConAllocREALVALUE: TFloatField;
    cdsConAllocPRICE_DIFF: TFloatField;
    cdsConAllocCHARGES_DIFF: TFloatField;
    cdsConAllocCHARGES: TFloatField;
    cdsConAllocBROKERFEE: TFloatField;
    cdsConAllocVAT: TFloatField;
    cdsConAllocWAPU: TFloatField;
    cdsConAllocWHT: TFloatField;
    cdsConAllocSELLTAX: TFloatField;
    cdsConAllocTOTAL_CHARGES: TFloatField;
    cdsConAllocROUND_AMT: TFloatField;
    cdsConAllocCCYCODE: TStringField;
    cdsConAllocALLOCAMT: TFloatField;
    cdsConAllocISMULTICCY: TStringField;
    cdsConAllocFOREIGN_CCYCODE: TStringField;
    cdsConAllocFOREIGN_EXRATE: TFloatField;
    cdsConAllocFOREIGN_ALLOCAMT: TFloatField;
    cdsConAllocFOREIGN_CURREXRATE: TFloatField;
    cdsConAllocC_SETTLEMODE: TStringField;
    cdsConAllocS_SETTLEMODE: TStringField;
    cdsConAllocCASHKEEP: TStringField;
    cdsConAllocSTOCKKEEP: TStringField;
    cdsConAllocDUECASH: TDateField;
    cdsConAllocDUESTOCK: TDateField;
    cdsConAllocMOVEDUESTOCK: TDateField;
    cdsConAllocMOVEDUECASH: TDateField;
    cdsConAllocDEALTICKETID: TLargeintField;
    cdsConAllocDA_SEQID: TLargeintField;
    cdsConAllocDX_SEQID: TLargeintField;
    cdsConAllocSI_STOCK: TStringField;
    cdsConAllocSI_CASH: TStringField;
    cdsConAllocCASH_SETTLED_STAT: TStringField;
    cdsConAllocCASH_SETTLED_AMT: TFloatField;
    cdsConAllocCASH_SETTLED_DATE: TDateField;
    cdsConAllocSTOCK_SETTLED_STAT: TStringField;
    cdsConAllocSTOCK_SETTLED_QTY: TFloatField;
    cdsConAllocSTOCCK_SETTLED_DATE: TDateField;
    cdsConAllocMODDA: TDateTimeField;
    cdsConAllocMODUI: TStringField;
    cdsConAllocAPPDA: TDateTimeField;
    cdsConAllocAPPUI: TStringField;
    cdsConAllocUNDER4Y: TIntegerField;
    cdsConAllocUNDER4YDA: TDateTimeField;
    cdsConAllocNOTES4Y: TStringField;
    cdsConAllocISDEL: TIntegerField;
    cdsConAllocID: TLargeintField;
    gvwAllocationBS: TcxGridDBColumn;
    gvwAllocationSTOCKCODE: TcxGridDBColumn;
    gvwAllocationSTOCKNAME: TcxGridDBColumn;
    gvwAllocationVALID_CALC_METHOD: TcxGridDBColumn;
    gvwAllocationVALID_COMM_RATE: TcxGridDBColumn;
    gvwAllocationAPRICE: TcxGridDBColumn;
    gvwAllocationAQTY: TcxGridDBColumn;
    gvwAllocationAVALUE: TcxGridDBColumn;
    gvwAllocationBROKERFEE: TcxGridDBColumn;
    gvwAllocationALLOCAMT: TcxGridDBColumn;
    cdsConChargeSum: TNClientDataset;
    cdsConAllocExec: TNClientDataset;
    cdsConAllocExecEXECID: TLargeintField;
    cdsConAllocExecCONID: TLargeintField;
    cdsConAllocExecSEQID: TIntegerField;
    cdsConAllocExecBOARDID: TLargeintField;
    cdsConAllocExecCPACCID: TIntegerField;
    cdsConAllocExecDUECASH: TDateField;
    cdsConAllocExecDUESTOCK: TDateField;
    cdsConAllocExecPRICE: TFloatField;
    cdsConAllocExecQTY: TFloatField;
    cdsConAllocExecVALUE: TFloatField;
    cdsConAllocExecCOMM_RATE: TFloatField;
    cdsConAllocExecBROKERFEE: TFloatField;
    cdsConAllocExecALLIN_RATE: TFloatField;
    cdsConAllocExecMODDA: TDateTimeField;
    cdsConAllocExecMODUI: TStringField;
    cdsConAllocExecAPPDA: TDateTimeField;
    cdsConAllocExecAPPUI: TStringField;
    cdsConAllocExecUNDER4Y: TIntegerField;
    cdsConAllocExecUNDER4YDA: TDateTimeField;
    cdsConAllocExecNOTES4Y: TStringField;
    cdsConAllocExecISDEL: TIntegerField;
    cdsConAllocExecID: TLargeintField;
    cdsConAllocExecqryConAllocCharge: TDataSetField;
    cdsConAllocCharge: TNClientDataset;
    cdsConAllocChargeEXECID: TLargeintField;
    cdsConAllocChargeCHARGE_ID: TLargeintField;
    cdsConAllocChargeALLIN: TStringField;
    cdsConAllocChargePOSITION: TStringField;
    cdsConAllocChargeBASIS: TStringField;
    cdsConAllocChargeRATE: TFloatField;
    cdsConAllocChargeRATE_SOURCE: TStringField;
    cdsConAllocChargeAMOUNT: TFloatField;
    cdsConAllocChargeCALC_BASIS: TStringField;
    cdsConAllocChargeCALC_RATE: TFloatField;
    cdsConAllocChargeCALC_RATE_SOURCE: TStringField;
    cdsConAllocChargeCALC_AMOUNT: TFloatField;
    cdsConAllocChargeCHARGE_VAL1: TFloatField;
    cdsConAllocChargeCHARGE_VAL2: TFloatField;
    cdsConAllocChargeCHARGE_DIFF: TFloatField;
    cdsConAllocChargeMODDA: TDateTimeField;
    cdsConAllocChargeMODUI: TStringField;
    cdsConAllocChargeAPPDA: TDateTimeField;
    cdsConAllocChargeAPPUI: TStringField;
    cdsConAllocChargeUNDER4Y: TIntegerField;
    cdsConAllocChargeUNDER4YDA: TDateTimeField;
    cdsConAllocChargeNOTES4Y: TStringField;
    cdsConAllocChargeISDEL: TIntegerField;
    cdsConAllocChargeID: TLargeintField;
    cdsConAllocNETAMT: TFloatField;
    cdsConAllocFOREIGN_NETAMT: TFloatField;
    gvwAllocationFOREIGN_ALLOCAMT: TcxGridDBColumn;
    gvwAllocationTOTAL_CHARGES: TcxGridDBColumn;
    cdsConChargeSumCONID: TLargeintField;
    cdsConChargeSumCHARGE_ID: TLargeintField;
    cdsConChargeSumCHARGE_CODE: TStringField;
    cdsConChargeSumCHARGE_DESC: TStringField;
    cdsConChargeSumCHARGE_VAL1: TFloatField;
    cdsConChargeSumCHARGE_VAL2: TFloatField;
    cdsConChargeSumCHARGE_DIFF: TFloatField;
    cdsChargeSummary: TNClientDataset;
    cdsChargeSummaryCONID: TLargeintField;
    cdsChargeSummaryCHARGE_ID: TLargeintField;
    cdsChargeSummaryCHARGE_CODE: TStringField;
    cdsChargeSummaryCHARGE_DESC: TStringField;
    cdsChargeSummaryCHARGE_VAL1: TFloatField;
    cdsChargeSummaryCHARGE_VAL2: TFloatField;
    cdsChargeSummaryCHARGE_DIFF: TFloatField;
    cdsConAllocExecCOMM_RATE_LEG2: TFloatField;
    cdsConAllocExecBROKERFEE_LEG2: TFloatField;
    cdsConAllocExecALLIN_RATE_LEG2: TFloatField;
    cdsConAllocExecVALID_CALC_METHOD_LEG2: TStringField;
    cdsConAllocExecVALID_COMM_RATE_LEG2: TFloatField;
    cdsConAllocExecqryConAllocChargeLeg2: TDataSetField;
    grdAllocationLevel2: TcxGridLevel;
    gvwExecution: TcxGridDBBandedTableView;
    dsConAllocExec: TDataSource;
    grdAllocationLevel3: TcxGridLevel;
    grdAllocationLevel4: TcxGridLevel;
    gvwChargeLeg1: TcxGridDBBandedTableView;
    gvwChargeLeg2: TcxGridDBBandedTableView;
    dsAllocCharge: TDataSource;
    cdsConAllocChargeLeg2: TNClientDataset;
    dsAllocChargeLeg2: TDataSource;
    cdsConAllocChargeLeg2CHARGE_ID: TLargeintField;
    cdsConAllocChargeLeg2EXECID: TLargeintField;
    cdsConAllocChargeLeg2LEG: TStringField;
    cdsConAllocChargeLeg2CHARGE_VAL1: TFloatField;
    cdsConAllocChargeLeg2CHARGE_VAL2: TFloatField;
    cdsConAllocChargeLeg2CHARGE_DIFF: TFloatField;
    cdsConAllocChargeLeg2RATE: TFloatField;
    cdsConAllocChargeLeg2RATE_SOURCE: TStringField;
    cdsConAllocChargeLeg2AMOUNT: TFloatField;
    cdsConAllocChargeLeg2CALC_RATE: TFloatField;
    cdsConAllocChargeLeg2CALC_RATE_SOURCE: TStringField;
    cdsConAllocChargeLeg2CALC_AMOUNT: TFloatField;
    cdsConAllocChargeLeg2ALLIN: TStringField;
    cdsConAllocChargeLeg2POSITION: TStringField;
    cdsConAllocChargeLeg2BASIS: TStringField;
    cdsConAllocChargeLeg2CALC_BASIS: TStringField;
    cdsConAllocChargeLeg2MODDA: TDateTimeField;
    cdsConAllocChargeLeg2MODUI: TStringField;
    cdsConAllocChargeLeg2APPDA: TDateTimeField;
    cdsConAllocChargeLeg2APPUI: TStringField;
    cdsConAllocChargeLeg2UNDER4Y: TIntegerField;
    cdsConAllocChargeLeg2UNDER4YDA: TDateTimeField;
    cdsConAllocChargeLeg2NOTES4Y: TStringField;
    cdsConAllocChargeLeg2ISDEL: TIntegerField;
    cdsConAllocChargeLeg2ID: TLargeintField;
    cdsConAllocChargeLEG: TStringField;
    gvwExecutionEXECID: TcxGridDBBandedColumn;
    gvwExecutionCONID: TcxGridDBBandedColumn;
    gvwExecutionSEQID: TcxGridDBBandedColumn;
    gvwExecutionBOARDID: TcxGridDBBandedColumn;
    gvwExecutionCPACCID: TcxGridDBBandedColumn;
    gvwExecutionDUECASH: TcxGridDBBandedColumn;
    gvwExecutionDUESTOCK: TcxGridDBBandedColumn;
    gvwExecutionPRICE: TcxGridDBBandedColumn;
    gvwExecutionQTY: TcxGridDBBandedColumn;
    gvwExecutionVALUE: TcxGridDBBandedColumn;
    gvwExecutionCOMM_RATE: TcxGridDBBandedColumn;
    gvwExecutionBROKERFEE: TcxGridDBBandedColumn;
    gvwExecutionALLIN_RATE: TcxGridDBBandedColumn;
    gvwExecutionMODDA: TcxGridDBBandedColumn;
    gvwExecutionMODUI: TcxGridDBBandedColumn;
    gvwExecutionAPPDA: TcxGridDBBandedColumn;
    gvwExecutionAPPUI: TcxGridDBBandedColumn;
    gvwExecutionUNDER4Y: TcxGridDBBandedColumn;
    gvwExecutionUNDER4YDA: TcxGridDBBandedColumn;
    gvwExecutionNOTES4Y: TcxGridDBBandedColumn;
    gvwExecutionISDEL: TcxGridDBBandedColumn;
    gvwExecutionID: TcxGridDBBandedColumn;
    gvwExecutionqryConAllocCharge: TcxGridDBBandedColumn;
    gvwExecutionCOMM_RATE_LEG2: TcxGridDBBandedColumn;
    gvwExecutionBROKERFEE_LEG2: TcxGridDBBandedColumn;
    gvwExecutionALLIN_RATE_LEG2: TcxGridDBBandedColumn;
    gvwExecutionVALID_CALC_METHOD_LEG2: TcxGridDBBandedColumn;
    gvwExecutionVALID_COMM_RATE_LEG2: TcxGridDBBandedColumn;
    gvwExecutionqryConAllocChargeLeg2: TcxGridDBBandedColumn;
    gvwChargeLeg1EXECID: TcxGridDBBandedColumn;
    gvwChargeLeg1CHARGE_ID: TcxGridDBBandedColumn;
    gvwChargeLeg1LEG: TcxGridDBBandedColumn;
    gvwChargeLeg1ALLIN: TcxGridDBBandedColumn;
    gvwChargeLeg1POSITION: TcxGridDBBandedColumn;
    gvwChargeLeg1BASIS: TcxGridDBBandedColumn;
    gvwChargeLeg1RATE: TcxGridDBBandedColumn;
    gvwChargeLeg1RATE_SOURCE: TcxGridDBBandedColumn;
    gvwChargeLeg1AMOUNT: TcxGridDBBandedColumn;
    gvwChargeLeg1CALC_BASIS: TcxGridDBBandedColumn;
    gvwChargeLeg1CALC_RATE: TcxGridDBBandedColumn;
    gvwChargeLeg1CALC_RATE_SOURCE: TcxGridDBBandedColumn;
    gvwChargeLeg1CALC_AMOUNT: TcxGridDBBandedColumn;
    gvwChargeLeg1CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwChargeLeg1CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwChargeLeg1CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwChargeLeg1MODDA: TcxGridDBBandedColumn;
    gvwChargeLeg1MODUI: TcxGridDBBandedColumn;
    gvwChargeLeg1APPDA: TcxGridDBBandedColumn;
    gvwChargeLeg1APPUI: TcxGridDBBandedColumn;
    gvwChargeLeg1UNDER4Y: TcxGridDBBandedColumn;
    gvwChargeLeg1UNDER4YDA: TcxGridDBBandedColumn;
    gvwChargeLeg1NOTES4Y: TcxGridDBBandedColumn;
    gvwChargeLeg1ISDEL: TcxGridDBBandedColumn;
    gvwChargeLeg1ID: TcxGridDBBandedColumn;
    cdsConAllocChargeDESCRIPTION: TStringField;
    cdsConAllocChargeCHARGE_DESC: TStringField;
    cdsConAllocChargeLeg2DESCRIPTION: TStringField;
    cdsConAllocChargeLeg2CHARGE_DESC: TStringField;
    gvwChargeLeg1DESCRIPTION: TcxGridDBBandedColumn;
    gvwChargeLeg1CHARGE_DESC: TcxGridDBBandedColumn;
    gvwChargeLeg2CHARGE_ID: TcxGridDBBandedColumn;
    gvwChargeLeg2EXECID: TcxGridDBBandedColumn;
    gvwChargeLeg2LEG: TcxGridDBBandedColumn;
    gvwChargeLeg2CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwChargeLeg2CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwChargeLeg2CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwChargeLeg2RATE: TcxGridDBBandedColumn;
    gvwChargeLeg2RATE_SOURCE: TcxGridDBBandedColumn;
    gvwChargeLeg2AMOUNT: TcxGridDBBandedColumn;
    gvwChargeLeg2CALC_RATE: TcxGridDBBandedColumn;
    gvwChargeLeg2CALC_RATE_SOURCE: TcxGridDBBandedColumn;
    gvwChargeLeg2CALC_AMOUNT: TcxGridDBBandedColumn;
    gvwChargeLeg2ALLIN: TcxGridDBBandedColumn;
    gvwChargeLeg2POSITION: TcxGridDBBandedColumn;
    gvwChargeLeg2BASIS: TcxGridDBBandedColumn;
    gvwChargeLeg2CALC_BASIS: TcxGridDBBandedColumn;
    gvwChargeLeg2MODDA: TcxGridDBBandedColumn;
    gvwChargeLeg2MODUI: TcxGridDBBandedColumn;
    gvwChargeLeg2APPDA: TcxGridDBBandedColumn;
    gvwChargeLeg2APPUI: TcxGridDBBandedColumn;
    gvwChargeLeg2UNDER4Y: TcxGridDBBandedColumn;
    gvwChargeLeg2UNDER4YDA: TcxGridDBBandedColumn;
    gvwChargeLeg2NOTES4Y: TcxGridDBBandedColumn;
    gvwChargeLeg2ISDEL: TcxGridDBBandedColumn;
    gvwChargeLeg2ID: TcxGridDBBandedColumn;
    gvwChargeLeg2DESCRIPTION: TcxGridDBBandedColumn;
    gvwChargeLeg2CHARGE_DESC: TcxGridDBBandedColumn;
    cdsContractqryConAllocExec: TDataSetField;
    popExec: TPopupMenu;
    ChangeCommission1: TMenuItem;
    N1: TMenuItem;
    FullExpand1: TMenuItem;
    FullCollapse1: TMenuItem;
    cdsConAllocExecCHARGES_LEG2: TFloatField;
    cdsConAllocExecNETAMOUNT_LEG2: TFloatField;
    gvwExecutionCHARGES_LEG2: TcxGridDBBandedColumn;
    gvwExecutionNETAMOUNT_LEG2: TcxGridDBBandedColumn;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cdsContractFOREIGN_EXRATE_MODE: TStringField;
    cdsConAllocExecFOREIGN_CCYCODE: TStringField;
    cdsConAllocExecFOREIGN_EXRATE_MODE: TStringField;
    cdsConAllocExecFOREIGN_EXRATE: TFloatField;
    cdsConAllocExecFOREIGN_NETAMT: TFloatField;
    gvwExecutionFOREIGN_CCYCODE: TcxGridDBBandedColumn;
    gvwExecutionFOREIGN_EXRATE_MODE: TcxGridDBBandedColumn;
    gvwExecutionFOREIGN_EXRATE: TcxGridDBBandedColumn;
    gvwExecutionFOREIGN_NETAMT: TcxGridDBBandedColumn;
    ChangeSettlementCurrencyBrokerSide1: TMenuItem;
    cdsConAllocBOARDID: TIntegerField;
    gvwAllocationBOARDID: TcxGridDBColumn;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cdsConAllocExecSETTLE_TYPE: TStringField;
    gvwExecutionSETTLE_TYPE: TcxGridDBBandedColumn;
    gvwAllocationWAPU: TcxGridDBColumn;
    ChangeSettleType1: TMenuItem;
    gvwChargeCONID: TcxGridDBColumn;
    gvwChargeCHARGE_ID: TcxGridDBColumn;
    gvwChargeCHARGE_CODE: TcxGridDBColumn;
    gvwChargeCHARGE_DESC: TcxGridDBColumn;
    gvwChargeCHARGE_VAL1: TcxGridDBColumn;
    gvwChargeCHARGE_VAL2: TcxGridDBColumn;
    gvwChargeCHARGE_DIFF: TcxGridDBColumn;
    cdsConAllocVALID_COMM_RATE: TFloatField;
    cdsContractADDITIONAL_FEE: TFloatField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cdsContractADDMINFEE_BRKFEE: TFloatField;
    cdsContractADDMINFEE_VAT: TFloatField;
    cdsContractMIN_COMM: TFloatField;
    cdsContractTOTAL_FEE: TFloatField;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cdsContractSTOCK_SETTLE_MODE: TStringField;
    cdsContractACS_PRICE: TFloatField;
    cdsContractACS_PERCENT: TFloatField;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cdsContractEMATERAI: TFloatField;
    cdsContractNETSETTLEAMOUNT: TFloatField;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    N2: TMenuItem;
    ChangeChargesAmount1: TMenuItem;
    cdsDataContract: TNClientDataset;
    cdsDataContractCONID: TLargeintField;
    cdsDataContractCONCODE: TStringField;
    cdsDataContractACCNO: TStringField;
    cdsDataContractACCNAME: TStringField;
    cdsDataContractCONDATE: TDateField;
    cdsDataContractCOMM_RATE: TFloatField;
    cdsDataContractBOARDCODE: TStringField;
    cdsDataContractBS: TStringField;
    cdsDataContractDEALTICKETID: TLargeintField;
    cdsDataContractDEALTICKETCODE: TStringField;
    cdsDataContractSTOCKCODE: TStringField;
    cdsDataContractQTY: TFloatField;
    cdsDataContractPRICE: TFloatField;
    cdsDataContractGROSSAMOUNT: TFloatField;
    cdsDataContractBROKERFEE: TFloatField;
    cdsDataContractVAT: TFloatField;
    cdsDataContractLEVY: TFloatField;
    cdsDataContractVAT_LEVY: TFloatField;
    cdsDataContractKPEI: TFloatField;
    cdsDataContractSALESTAX: TFloatField;
    cdsDataContractWHT: TFloatField;
    cdsDataContractWAPU: TFloatField;
    cdsDataContractNETAMOUNT: TFloatField;
    cdsDataContractSEQID: TIntegerField;
    N3: TMenuItem;
    ChangeNetProcedByPrice1: TMenuItem;
    cdsConAllocExecNET_AMOUNT_TMP: TFloatField;
    gvwExecutionNET_AMOUNT_TMP: TcxGridDBBandedColumn;
    cdsConAllocExecX: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure ChangeCommission2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cdsContractFOREIGN_EXRATEChange(Sender: TField);
    procedure cdsConAllocCalcFields(DataSet: TDataSet);
    procedure cxDBTextEdit8Editing(Sender: TObject; var CanEdit: Boolean);
    procedure cdsConAllocVALID_COMM_RATEChange(Sender: TField);
    procedure cdsConAllocExecCOMM_RATEChange(Sender: TField);
    procedure cdsConAllocChargeCALC_RATEChange(Sender: TField);
    procedure cdsConChargeSumAfterOpen(DataSet: TDataSet);
    procedure cdsConAllocChargeBeforeEdit(DataSet: TDataSet);
    procedure cdsConAllocChargeBeforePost(DataSet: TDataSet);
    procedure cdsConAllocExecBeforeEdit(DataSet: TDataSet);
    procedure cdsConAllocExecBeforePost(DataSet: TDataSet);
    procedure cdsConAllocBROKERFEEChange(Sender: TField);
    procedure cdsConAllocALLOCAMTChange(Sender: TField);
    procedure cdsContractNETAMTChange(Sender: TField);
    procedure cdsConAllocBeforeEdit(DataSet: TDataSet);
    procedure cdsConAllocBeforePost(DataSet: TDataSet);
    procedure cdsContractFOREIGN_CCYCODEChange(Sender: TField);
    procedure ChangeCommission1Click(Sender: TObject);
    procedure cdsConAllocExecVALID_COMM_RATE_LEG2Change(Sender: TField);
    procedure cdsConAllocExecCOMM_RATE_LEG2Change(Sender: TField);
    procedure cdsConAllocChargeLeg2CALC_RATEChange(Sender: TField);
    procedure FullExpand1Click(Sender: TObject);
    procedure FullCollapse1Click(Sender: TObject);
    procedure cdsConAllocChargeLeg2BeforeEdit(DataSet: TDataSet);
    procedure cdsConAllocChargeLeg2BeforePost(DataSet: TDataSet);
    procedure cdsConAllocExecBROKERFEE_LEG2Change(Sender: TField);
    procedure cdsContractNewRecord(DataSet: TDataSet);
    procedure cdsConAllocExecFOREIGN_CCYCODEChange(Sender: TField);
    procedure cdsConAllocExecFOREIGN_EXRATEChange(Sender: TField);
    procedure ChangeSettlementCurrencyBrokerSide1Click(Sender: TObject);
    procedure ChangeSettleType1Click(Sender: TObject);
    procedure cdsContractCalcFields(DataSet: TDataSet);
    procedure ChangeChargesAmount1Click(Sender: TObject);
    procedure ChangeNetProcedByPrice1Click(Sender: TObject);
    procedure cdsConAllocExecCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FOldAllocAmt: Double;
    FOldBrokerFee: Double;
    FOldChargeVal1: Double;
    FOldChargeVal2: Double;
    FOldChargeDiff: Double;
    FOldChargeVal1_Leg2: Double;

    FListExecID: TStringList;
  public
    { Public declarations }
    procedure GetSelectedItems;
    procedure GetSelectedItem(ARowIndex: Integer; ARowInfo: TcxRowInfo);
  end;

var
  frmContract: TfrmContract;

implementation

{$R *.dfm}

uses DataGlobal, FormContracts, FormChangeCommission, FormChangeSettleCcy,
  FormSettleType, FormUpdateContract, FormChangeNetAmount;

procedure TfrmContract.cdsConAllocALLOCAMTChange(Sender: TField);
begin
  inherited;
  if cdsContractFOREIGN_EXRATE_MODE.AsString = '/' then
    cdsConAllocFOREIGN_ALLOCAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsConAllocALLOCAMT.AsFloat / cdsContractFOREIGN_EXRATE.AsFloat, 2)
  else
    cdsConAllocFOREIGN_ALLOCAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsConAllocALLOCAMT.AsFloat * cdsContractFOREIGN_EXRATE.AsFloat, 2);
end;

procedure TfrmContract.cdsConAllocBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldAllocAmt := cdsConAllocALLOCAMT.AsFloat;
end;

procedure TfrmContract.cdsConAllocBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsConAllocBS.AsString = 'B' then
  begin
    cdsContractNETAMT.AsFloat := cdsContractNETAMT.AsFloat - FOldAllocAmt + cdsConAllocALLOCAMT.AsFloat + cdsContractEMATERAI.AsFloat;
  end
  else
  begin
    cdsContractNETAMT.AsFloat := cdsContractNETAMT.AsFloat + FOldAllocAmt - cdsConAllocALLOCAMT.AsFloat + cdsContractEMATERAI.AsFloat;
  end;
end;

procedure TfrmContract.cdsConAllocBROKERFEEChange(Sender: TField);
begin
  inherited;
  if cdsConAllocBS.AsString = 'B' then
  begin
    cdsConAllocALLOCAMT.AsFloat := cdsConAllocAVALUE.AsFloat + cdsConAllocBROKERFEE.AsFloat + cdsConAllocTOTAL_CHARGES.AsFloat;
  end
  else
  begin
    cdsConAllocALLOCAMT.AsFloat := cdsConAllocAVALUE.AsFloat - cdsConAllocBROKERFEE.AsFloat - cdsConAllocTOTAL_CHARGES.AsFloat;
  end;
end;

procedure TfrmContract.cdsConAllocCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsConAllocBS.AsString = 'B' then
  begin
    if cdsConAllocALLOCAMT.IsNull then
      cdsConAllocNETAMT.AsFloat := 0
    else
      cdsConAllocNETAMT.AsFloat := cdsConAllocALLOCAMT.AsFloat;

    if cdsConAllocFOREIGN_ALLOCAMT.IsNull then
      cdsConAllocFOREIGN_NETAMT.AsFloat := 0
    else
      cdsConAllocFOREIGN_NETAMT.AsFloat := cdsConAllocFOREIGN_ALLOCAMT.AsFloat;
  end
  else
  begin
    if cdsConAllocALLOCAMT.IsNull then
      cdsConAllocNETAMT.AsFloat := 0
    else
      cdsConAllocNETAMT.AsFloat := cdsConAllocALLOCAMT.AsFloat * -1;

    if cdsConAllocFOREIGN_ALLOCAMT.IsNull then
      cdsConAllocFOREIGN_NETAMT.AsFloat := 0
    else
      cdsConAllocFOREIGN_NETAMT.AsFloat := cdsConAllocFOREIGN_ALLOCAMT.AsFloat * -1;
  end;
end;

procedure TfrmContract.cdsConAllocChargeBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldChargeVal1 := cdsConAllocChargeCHARGE_VAL1.AsFloat;
  FOldChargeVal2 := cdsConAllocChargeCHARGE_VAL2.AsFloat;
  FOldChargeDiff := cdsConAllocChargeCHARGE_DIFF.AsFloat;
end;

procedure TfrmContract.cdsConAllocChargeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsChargeSummary.Locate('CHARGE_ID', cdsConAllocChargeCHARGE_ID.Value, []) then
  begin
    cdsChargeSummary.Edit;
    cdsChargeSummaryCHARGE_VAL1.AsFloat := cdsChargeSummaryCHARGE_VAL1.AsFloat - FOldChargeVal1 + cdsConAllocChargeCHARGE_VAL1.AsFloat;
    cdsChargeSummaryCHARGE_VAL2.AsFloat := cdsChargeSummaryCHARGE_VAL2.AsFloat - FOldChargeVal2 + cdsConAllocChargeCHARGE_VAL2.AsFloat;
    cdsChargeSummaryCHARGE_DIFF.AsFloat := cdsChargeSummaryCHARGE_DIFF.AsFloat - FOldChargeDiff + cdsConAllocChargeCHARGE_DIFF.AsFloat;
    cdsChargeSummary.Post;
  end;

  if cdsConAlloc.Locate('CONID;SEQID', VarArrayOf([cdsConAllocExecCONID.AsLargeInt, cdsConAllocExecSEQID.AsInteger]), []) then
  begin
    if Not (cdsConAlloc.State in dsEditModes) then
        cdsConAlloc.Edit;

    cdsConAllocTOTAL_CHARGES.AsFloat := cdsConAllocTOTAL_CHARGES.AsFloat - FOldChargeVal1 + cdsConAllocChargeCHARGE_VAL1.AsFloat;
  end;
end;

procedure TfrmContract.cdsConAllocChargeCALC_RATEChange(Sender: TField);
begin
  inherited;
  cdsConAllocChargeCHARGE_VAL1.AsFloat := Round(cdsConAllocChargeCALC_RATE.AsFloat * (cdsConAllocExecQTY.AsFloat * cdsConAllocAPRICE.AsFloat) / 100);
  cdsConAllocChargeCHARGE_VAL2.AsFloat := Round(cdsConAllocChargeCALC_RATE.AsFloat * cdsConAllocExecVALUE.AsFloat / 100);
  cdsConAllocChargeCHARGE_DIFF.AsFloat := Round(cdsConAllocChargeCHARGE_VAL2.AsFloat - cdsConAllocChargeCHARGE_VAL1.AsFloat);
end;

procedure TfrmContract.cdsConAllocChargeLeg2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldChargeVal1_Leg2 := cdsConAllocChargeLeg2CHARGE_VAL1.AsFloat;
end;

procedure TfrmContract.cdsConAllocChargeLeg2BeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsConAllocExecCHARGES_LEG2.AsFloat := cdsConAllocExecCHARGES_LEG2.AsFloat - FOldChargeVal1_Leg2 + cdsConAllocChargeLeg2CHARGE_VAL1.AsFloat;
end;

procedure TfrmContract.cdsConAllocChargeLeg2CALC_RATEChange(Sender: TField);
begin
  inherited;
  cdsConAllocChargeLeg2CHARGE_VAL1.AsFloat := Round(cdsConAllocChargeLeg2CALC_RATE.AsFloat * cdsConAllocExecVALUE.AsFloat / 100);
  cdsConAllocChargeLeg2CHARGE_VAL2.AsFloat := Round(cdsConAllocChargeLeg2CALC_RATE.AsFloat * cdsConAllocExecVALUE.AsFloat / 100);
  cdsConAllocChargeLeg2CHARGE_DIFF.AsFloat := Round(cdsConAllocChargeLeg2CHARGE_VAL2.AsFloat - cdsConAllocChargeLeg2CHARGE_VAL1.AsFloat);
end;

procedure TfrmContract.cdsConAllocExecBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldBrokerFee := cdsConAllocExecBROKERFEE.AsFloat;
end;

procedure TfrmContract.cdsConAllocExecBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsConAlloc.Locate('CONID;SEQID', VarArrayOf([cdsConAllocExecCONID.AsLargeInt, cdsConAllocExecSEQID.AsInteger]), []) then
  begin
    if Not (cdsConAlloc.State in dsEditModes) then
        cdsConAlloc.Edit;

    cdsConAllocBROKERFEE.AsFloat := cdsConAllocBROKERFEE.AsFloat - FOldBrokerFee + cdsConAllocExecBROKERFEE.AsFloat;
  end;
end;

procedure TfrmContract.cdsConAllocExecBROKERFEE_LEG2Change(Sender: TField);
begin
  inherited;
  if cdsConAlloc.Locate('CONID;SEQID', VarArrayOf([cdsConAllocExecCONID.AsLargeInt, cdsConAllocExecSEQID.AsInteger]), []) then
  begin
    if cdsConAllocBS.AsString = 'B' then
    begin
      cdsConAllocExecNETAMOUNT_LEG2.AsFloat := cdsConAllocExecVALUE.AsFloat + cdsConAllocExecBROKERFEE_LEG2.AsFloat + cdsConAllocExecCHARGES_LEG2.AsFloat;
    end
    else
    begin
      cdsConAllocExecNETAMOUNT_LEG2.AsFloat := cdsConAllocExecVALUE.AsFloat - cdsConAllocExecBROKERFEE_LEG2.AsFloat - cdsConAllocExecCHARGES_LEG2.AsFloat;
    end;
  end;
end;

procedure TfrmContract.cdsConAllocExecCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsConAllocExecX.AsFloat := cdsConAllocExecFOREIGN_NETAMT.AsFloat;

  if cdsConAllocExecNET_AMOUNT_TMP.AsFloat = 0 then
    cdsConAllocExecNET_AMOUNT_TMP.AsFloat := cdsConAllocExecX.AsFloat;
end;

procedure TfrmContract.cdsConAllocExecCOMM_RATEChange(Sender: TField);
begin
  inherited;
  cdsConAllocExecBROKERFEE.AsFloat := Round(cdsConAllocExecCOMM_RATE.AsFloat * (cdsConAllocAPRICE.AsFloat * cdsConAllocExecQTY.AsFloat) / 100);

  if not cdsConAllocCharge.IsEmpty then
  begin
    cdsConAllocCharge.Filter := 'BASIS = ''R'' And RATE_SOURCE = ''2''';
    Try
      cdsConAllocCharge.Filtered := True;
      cdsConAllocCharge.First;
      while not cdsConAllocCharge.Eof do
      begin
        cdsConAllocCharge.Edit;
        cdsConAllocChargeCALC_RATE.AsFloat := cdsConAllocChargeRATE.AsFloat * cdsConAllocExecCOMM_RATE.AsFloat / 100;
        cdsConAllocCharge.Post;

        cdsConAllocCharge.Next;
      end;
    Finally
      cdsConAllocCharge.Filtered := False;
    End;
  end;
end;

procedure TfrmContract.cdsConAllocExecCOMM_RATE_LEG2Change(Sender: TField);
begin
  inherited;
  cdsConAllocExecBROKERFEE_LEG2.AsFloat := Round(cdsConAllocExecCOMM_RATE_LEG2.AsFloat * cdsConAllocExecVALUE.AsFloat / 100);

  if not cdsConAllocChargeLeg2.IsEmpty then
  begin
    cdsConAllocChargeLeg2.Filter := 'BASIS = ''R'' And RATE_SOURCE = ''2''';
    Try
      cdsConAllocChargeLeg2.Filtered := True;
      cdsConAllocChargeLeg2.First;
      while not cdsConAllocChargeLeg2.Eof do
      begin
        cdsConAllocChargeLeg2.Edit;
        cdsConAllocChargeLeg2CALC_RATE.AsFloat := cdsConAllocChargeLeg2RATE.AsFloat * cdsConAllocExecCOMM_RATE_LEG2.AsFloat / 100;
        cdsConAllocChargeLeg2.Post;

        cdsConAllocChargeLeg2.Next;
      end;
    Finally
      cdsConAllocChargeLeg2.Filtered := False;
    End;
  end;
end;

procedure TfrmContract.cdsConAllocExecFOREIGN_CCYCODEChange(Sender: TField);
var
  fValue, fInverseValue: Double;
begin
  inherited;
  if cdsConAllocExecFOREIGN_CCYCODE.AsString = cdsContractCCYCODE.AsString then
  begin
    cdsConAllocExecFOREIGN_EXRATE.AsFloat := 1;
  end
  else
  begin
    fValue := 1;
    fInverseValue := 1;
    dmGlobal.RemoteServer.GetCurrentCcyRate(cdsConAllocExecFOREIGN_CCYCODE.AsString,
      cdsContractCCYCODE.AsString, fValue, fInverseValue);

    if cdsConAllocExecFOREIGN_EXRATE_MODE.AsString = '/' then
      cdsConAllocExecFOREIGN_EXRATE.AsFloat := fValue
    else
      cdsConAllocExecFOREIGN_EXRATE.AsFloat := fInverseValue;
  end;
end;

procedure TfrmContract.cdsConAllocExecFOREIGN_EXRATEChange(Sender: TField);
begin
  inherited;
  if cdsConAllocExecFOREIGN_EXRATE_MODE.AsString = '/' then
    cdsConAllocExecFOREIGN_NETAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsConAllocExecNETAMOUNT_LEG2.AsFloat / cdsConAllocExecFOREIGN_EXRATE.AsFloat, 2)
  else
    cdsConAllocExecFOREIGN_NETAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsConAllocExecNETAMOUNT_LEG2.AsFloat * cdsConAllocExecFOREIGN_EXRATE.AsFloat, 2);

  cdsConAllocExecNET_AMOUNT_TMP.AsFloat := cdsConAllocExecFOREIGN_NETAMT.AsFloat;
end;

procedure TfrmContract.cdsConAllocExecVALID_COMM_RATE_LEG2Change(
  Sender: TField);
var
  commRate: Double;
begin
  inherited;
  if cdsConAllocExecVALID_CALC_METHOD_LEG2.AsString = 'AI' then
  begin
    commRate := cdsConAllocExecVALID_COMM_RATE_LEG2.AsFloat;
    cdsConAllocChargeLeg2.First;
    while not cdsConAllocChargeLeg2.Eof do
    begin
      if cdsConAllocChargeLeg2ALLIN.AsString = '1' then
      begin
        if (cdsConAllocChargeLeg2BASIS.AsString = 'R') And (cdsConAllocChargeLeg2RATE_SOURCE.AsString <> '2') then
        begin
          commRate := commRate - cdsConAllocChargeLeg2CALC_RATE.AsFloat;
        end
        else if (cdsConAllocChargeLeg2CALC_BASIS.AsString = 'A') then
        begin
          commRate := commRate - (cdsConAllocChargeLeg2CALC_AMOUNT.AsFloat / cdsConAllocExecVALUE.AsFloat * 100);
        end;
      end;

      cdsConAllocChargeLeg2.Next;
    end;

    commRate := 100 / (100 + cdsConAllocExecALLIN_RATE.AsFloat) * commRate;
//    cdsConAllocExec.Edit;
    cdsConAllocExecCOMM_RATE_LEG2.AsFloat := commRate;
//    cdsConAllocExec.Post;

  end
  else
  begin
//    cdsConAllocExec.Edit;
    cdsConAllocExecCOMM_RATE_LEG2.AsFloat := cdsConAllocExecVALID_COMM_RATE_LEG2.AsFloat;
//    cdsConAllocExec.Post;
  end;
end;

procedure TfrmContract.cdsConAllocVALID_COMM_RATEChange(Sender: TField);
var
  commRate: Double;
begin
  inherited;
  cdsConAllocExec.Filter := 'CONID = ' + cdsConAllocCONID.AsString
    + ' And SEQID = ' + cdsConAllocSEQID.AsString;
  cdsConAllocExec.Filtered := True;
  Try
    if cdsConAllocVALID_CALC_METHOD.AsString = 'AI' then
    begin
      cdsConAllocExec.First;
      while not cdsConAllocExec.Eof do
      begin
        commRate := cdsConAllocVALID_COMM_RATE.AsFloat;
        cdsConAllocCharge.First;
        while not cdsConAllocCharge.Eof do
        begin
          if cdsConAllocChargeALLIN.AsString = '1' then
          begin
            if (cdsConAllocChargeBASIS.AsString = 'R') And (cdsConAllocChargeRATE_SOURCE.AsString <> '2') then
            begin
              commRate := commRate - cdsConAllocChargeCALC_RATE.AsFloat;
            end
            else if (cdsConAllocChargeCALC_BASIS.AsString = 'A') then
            begin
              commRate := commRate - (cdsConAllocChargeCALC_AMOUNT.AsFloat / cdsConAllocAVALUE.AsFloat * 100);
            end;
          end;

          cdsConAllocCharge.Next;
        end;

        commRate := 100 / (100 + cdsConAllocExecALLIN_RATE.AsFloat) * commRate;
        cdsConAllocExec.Edit;
        cdsConAllocExecCOMM_RATE.AsFloat := commRate;
        cdsConAllocExec.Post;

        cdsConAllocExec.Next
      end;
    end
    else
    begin
      cdsConAllocExec.First;
      while not cdsConAllocExec.Eof do
      begin
        cdsConAllocExec.Edit;
        cdsConAllocExecCOMM_RATE.AsFloat := cdsConAllocVALID_COMM_RATE.AsFloat;
        cdsConAllocExec.Post;

        cdsConAllocExec.Next
      end;
    end;
  Finally
    cdsConAllocExec.Filtered := False;
    cdsConAllocExec.Filter := '';
  End;
end;

procedure TfrmContract.cdsConChargeSumAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  cdsChargeSummary.Close;
  cdsChargeSummary.CreateDataSet;

//  cdsChargeSummary.Data := cdsConChargeSum.Data;

  cdsConChargeSum.First;
  while not cdsConChargeSum.Eof do
  begin
    cdsChargeSummary.Append;
    for i := 0 to cdsChargeSummary.FieldCount - 1 do
    begin
      cdsChargeSummary.Fields[i].Value := cdsConChargeSum.FieldByName(cdsChargeSummary.Fields[i].FieldName).Value;
    end;
    cdsChargeSummary.Post;

    cdsConChargeSum.Next;
  end;

end;

procedure TfrmContract.cdsContractCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsContractNETSETTLEAMOUNT.AsFloat := cdsContractFOREIGN_NETAMT.AsFloat;// + cdsContractEMATERAI.AsFloat;
end;

procedure TfrmContract.cdsContractFOREIGN_CCYCODEChange(Sender: TField);
var
  fValue, fInverseValue: Double;
begin
  inherited;
  if cdsContractFOREIGN_CCYCODE.AsString = cdsContractCCYCODE.AsString then
  begin
    cdsContractFOREIGN_EXRATE.AsFloat := 1;
  end
  else
  begin
    fValue := 1;
    fInverseValue := 1;
    dmGlobal.RemoteServer.GetCurrentCcyRate(cdsContractFOREIGN_CCYCODE.AsString,
      cdsContractCCYCODE.AsString, fValue, fInverseValue);

    if cdsContractFOREIGN_EXRATE_MODE.AsString = '/' then
      cdsContractFOREIGN_EXRATE.AsFloat := fValue
    else
      cdsContractFOREIGN_EXRATE.AsFloat := fInverseValue;
  end;
end;

procedure TfrmContract.cdsContractFOREIGN_EXRATEChange(Sender: TField);
begin
  inherited;
  if cdsContractFOREIGN_EXRATE_MODE.AsString = '/' then
    cdsContractFOREIGN_NETAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsContractNETAMT.AsFloat / cdsContractFOREIGN_EXRATE.AsFloat, 2)
  else
    cdsContractFOREIGN_NETAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsContractNETAMT.AsFloat * cdsContractFOREIGN_EXRATE.AsFloat, 2);

  cdsConAlloc.First;
  while not cdsConAlloc.Eof do
  begin
    cdsConAlloc.Edit;
    cdsConAllocFOREIGN_CCYCODE.AsString := cdsContractFOREIGN_CCYCODE.AsString;
    cdsConAllocFOREIGN_EXRATE.AsFloat := cdsContractFOREIGN_EXRATE.AsFloat;
    if cdsContractFOREIGN_EXRATE_MODE.AsString = '/' then
      cdsConAllocFOREIGN_ALLOCAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsConAllocALLOCAMT.AsFloat / cdsContractFOREIGN_EXRATE.AsFloat, 2)
    else
      cdsConAllocFOREIGN_ALLOCAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsConAllocALLOCAMT.AsFloat * cdsContractFOREIGN_EXRATE.AsFloat, 2);
    cdsConAlloc.Post;

    cdsConAlloc.Next;
  end;
end;

procedure TfrmContract.cdsContractNETAMTChange(Sender: TField);
begin
  inherited;
  if cdsContractFOREIGN_EXRATE_MODE.AsString = '/' then
    cdsContractFOREIGN_NETAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsContractNETAMT.AsFloat / cdsContractFOREIGN_EXRATE.AsFloat, 2)
  else
    cdsContractFOREIGN_NETAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsContractNETAMT.AsFloat * cdsContractFOREIGN_EXRATE.AsFloat, 2);
end;

procedure TfrmContract.cdsContractNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsContractFOREIGN_EXRATE_MODE.AsString := '/';
end;

procedure TfrmContract.ChangeChargesAmount1Click(Sender: TObject);
var
  oForm: TfrmUpdateContract;
  sMsg: string;
begin
  inherited;
  if cdsContract.State in dsEditModes then
  begin
    try
      cdsDataContract.Close;
      cdsDataContract.Params[0].AsInteger := cdsConAllocCONID.AsInteger;
      cdsDataContract.Params[1].AsInteger := cdsConAllocSEQID.AsInteger;
      cdsDataContract.Open;

      oForm := TfrmUpdateContract.Create(nil);
      with oForm do
      begin
        edBrokerFee.EditValue := cdsDataContractBROKERFEE.AsFloat;
        edLevy.EditValue      := cdsDataContractLEVY.AsFloat;
        edVAT.EditValue       := cdsDataContractVAT.AsFloat;
        edVATLevy.EditValue   := cdsDataContractVAT_LEVY.AsFloat;
        edKPEI.EditValue      := cdsDataContractKPEI.AsFloat;
        edSalesTax.EditValue  := cdsDataContractSALESTAX.AsFloat;
        edWHT.EditValue       := cdsDataContractWHT.AsFloat;
        edWapu.EditValue      := cdsDataContractWAPU.AsFloat;
        edNetAmount.EditValue := cdsDataContractNETAMOUNT.AsFloat;

        BS := cdsDataContractBS.AsString;
        if BS = 'B' then
          edSalesTax.Enabled := False
        else
          edSalesTax.Enabled := True;

        if oForm.ShowModal = mrOk then
        begin
          dmGlobal.RemoteServer.ChangeChargesAmount(cdsDataContractCONID.AsInteger, cdsDataContractSEQID.AsInteger,
            edBrokerFee.EditValue, edVAT.EditValue, edLevy.EditValue, edVATLevy.EditValue, edKPEI.EditValue,
            edSalesTax.EditValue, edWHT.EditValue, edWapu.EditValue, sMsg);

          MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
        end;
      end;
    finally
      FreeAndNil(oForm);
    end;
  end
  else
    MessageDlg('Can not edit in view mode !', TMsgDlgType.mtInformation, [mbOk], 0);
end;

procedure TfrmContract.ChangeCommission1Click(Sender: TObject);
var
  CommRate: Double;
  i, RecIdx: Integer;
  oDataset: TDataSet;
begin
  inherited;
  if cdsConAllocExec.ReadOnly then
    Exit;

  oDataset := dsConAllocExec.DataSet;
  if (not oDataset.IsEmpty) and (tabEditorData.TabIndex = 0) then
  begin
    CommRate := frmChangeCommission.ChangeCommission(oDataSet.FieldByName('VALID_COMM_RATE_LEG2').AsFloat);

    GetSelectedItems;

    for i := 0 to FListExecID.Count - 1 do
    begin
      if cdsConAllocExec.Locate('EXECID', VarArrayOf([FListExecID[i]]), []) then
      begin
        cdsConAllocExec.Edit;
        cdsConAllocExecVALID_COMM_RATE_LEG2.AsFloat := CommRate;
        cdsConAllocExec.Post;
      end;
    end;

  end;
end;

procedure TfrmContract.ChangeCommission2Click(Sender: TObject);
var
  CommRate: Double;
  i, RecIdx: Integer;
  oDataset: TDataSet;
begin
  inherited;
  if cdsConAlloc.ReadOnly then
    Exit;

  oDataset := dsConAlloc.DataSet;
  if (not oDataset.IsEmpty) and (tabEditorData.TabIndex = 0) then
  begin
    CommRate := frmChangeCommission.ChangeCommission(oDataSet.FieldByName('VALID_COMM_RATE').AsFloat);

    for i := 0 to gvwAllocation.Controller.SelectedRecordCount - 1 do
    begin
      RecIdx := gvwAllocation.Controller.SelectedRecords[i].RecordIndex;
      gvwAllocation.DataController.FocusedRecordIndex := RecIdx;

      oDataset.Edit;
      oDataset.FieldByName('VALID_COMM_RATE').AsFloat := CommRate;
      oDataset.Post;
    end;

  end;
end;

procedure TfrmContract.ChangeNetProcedByPrice1Click(Sender: TObject);
var
  sMsg: string;
  iConID: Int64;
  iSeqID, iExecID: integer;
  dChangeAmt: Double;
  dNetAmount: Double;
  bRes: Boolean;
begin
  inherited;
  if cdsConAllocExec.ReadOnly then
    Exit;

  iConID     := cdsContractCONID.AsLargeInt;
  iSeqID     := cdsConAllocSEQID.AsInteger;
  iExecID    := cdsConAllocExecEXECID.AsInteger;
  dNetAmount := cdsConAllocExecNET_AMOUNT_TMP.AsFloat;
  dChangeAmt := frmChangeNetAmount.ChangeNetProc(dNetAmount);

  if dNetAmount <> dChangeAmt then
  begin
    bRes := dmGlobal.RemoteServer.ChangeNetProcedByPrice(iConID, iSeqID, iExecID, dChangeAmt, sMsg);
    if bRes then
    begin
      cdsConAllocExec.Edit;
      cdsConAllocExecNET_AMOUNT_TMP.AsFloat := dChangeAmt;
      cdsConAllocExec.Post;

      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
    end;
  end;
end;

procedure TfrmContract.ChangeSettlementCurrencyBrokerSide1Click(
  Sender: TObject);
var
  sFromCcy, sToCcy, sRateMode: String;
  fRate: Double;
  i, RecIdx: Integer;
  oDataset: TDataSet;
begin
  inherited;
  if cdsConAllocExec.ReadOnly then
    Exit;

  sFromCcy := cdsContractCCYCODE.AsString;
  sToCcy := cdsConAllocExecFOREIGN_CCYCODE.AsString;
  sRateMode := cdsConAllocExecFOREIGN_EXRATE_MODE.AsString;
  fRate := cdsConAllocExecFOREIGN_EXRATE.AsFloat;

  oDataset := dsConAllocExec.DataSet;
  if (not oDataset.IsEmpty) and (tabEditorData.TabIndex = 0) then
  begin
    if frmChangeSettleCcy.ChangeSettlementCurrency(sFromCcy, sToCcy, sRateMode, fRate) = mrOk then
    begin
      GetSelectedItems;

      for i := 0 to FListExecID.Count - 1 do
      begin
        if cdsConAllocExec.Locate('EXECID', VarArrayOf([FListExecID[i]]), []) then
        begin
          cdsConAllocExec.Edit;
          cdsConAllocExecFOREIGN_CCYCODE.AsString := sToCcy;
          cdsConAllocExecFOREIGN_EXRATE_MODE.AsString := sRateMode;
          cdsConAllocExecFOREIGN_EXRATE.AsFloat := fRate;
          cdsConAllocExec.Post;
        end;
      end;
    end;

  end;
end;

procedure TfrmContract.ChangeSettleType1Click(Sender: TObject);
var
  sSettleType: String;
  oDataset: TDataSet;
  i: Integer;
begin
  inherited;
  if cdsConAllocExec.ReadOnly then
    Exit;

  oDataset := dsConAllocExec.DataSet;
  if (not oDataset.IsEmpty) and (tabEditorData.TabIndex = 0) then
  begin
    sSettleType := cdsConAllocExecSETTLE_TYPE.AsString;
    if frmSettleType.ChagetSettleType(sSettleType) = mrOk then
    begin
      GetSelectedItems;
      for i := 0 to FListExecID.Count - 1 do
      begin
        if cdsConAllocExec.Locate('EXECID', VarArrayOf([FListExecID[i]]), []) then
        begin
          cdsConAllocExec.Edit;
          cdsConAllocExecSETTLE_TYPE.AsString := sSettleType;
          cdsConAllocExec.Post;
        end;
      end;

      cdsContract.Post;
      cdsContract.ApplyUpdates(-1);
    end;

  end;
end;

procedure TfrmContract.cxDBTextEdit8Editing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  CanEdit := cdsContractCCYCODE.AsString <> cdsContractFOREIGN_CCYCODE.AsString;
end;

procedure TfrmContract.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    ModalResult := mrCancel;
end;

procedure TfrmContract.FormShow(Sender: TObject);
begin
  inherited;
  gvwAllocation.ApplyBestFit();
  gvwCharge.ApplyBestFit();

  with dmglobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.Open;
  end;

  cdsChargeSummary.Close;
  cdsChargeSummary.Params[0].AsInteger := cdsContractCONID.AsInteger;
  cdsChargeSummary.Open;

end;

procedure TfrmContract.FullCollapse1Click(Sender: TObject);
begin
  inherited;
  gvwAllocation.ViewData.Collapse(True);
end;

procedure TfrmContract.FullExpand1Click(Sender: TObject);
begin
  inherited;
  gvwAllocation.ViewData.Expand(True);
end;

procedure TfrmContract.GetSelectedItem(ARowIndex: Integer;
  ARowInfo: TcxRowInfo);
var
  iExec: Int64;
begin
  iExec := StrToInt64Def(VarToStrDef(grdAllocation.FocusedView.DataController.Values[ARowInfo.RecordIndex, gvwExecutionEXECID.Index], '0'), 0);

  FListExecID.Add(IntToStr(iExec));
end;

procedure TfrmContract.GetSelectedItems;
var
  View: TCxCustomGridView;
begin
  if not Assigned(FListExecID) then
    FListExecID := TStringList.Create;

  FListExecID.Clear;

  View := grdAllocation.FocusedView;
  if View.IsDetail then
    View.DataController.ForEachRow(True, GetSelectedItem);
end;

Initialization
  RegisterClass(TfrmContract);

end.
