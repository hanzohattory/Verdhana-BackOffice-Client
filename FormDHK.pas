unit FormDHK;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxButtonEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, Vcl.ActnList, NDatasetAction,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, NActionPermission, XLSSheetData5,
  XLSReadWriteII5, DBXJSON, Data.DBXJSONCommon, Vcl.ExtCtrls, cxSplitter, System.StrUtils,
  Vcl.recerror, System.JSON, dxBarBuiltInMenu, System.Actions, ComObj,
  dxDateRanges;

type
  TfrmDHK = class(TfrmBasic)
    aclDHK: TActionList;
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    actViewData: TNAction;
    actUploadDHK: TNAction;
    cxPageControl1: TcxPageControl;
    tabDHK: TcxTabSheet;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl2: TdxLayoutControl;
    cxButton2: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    edDHKFile: TcxButtonEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cdsDHK: TNClientDataset;
    OpenDialog: TOpenDialog;
    dsDHK: TDataSource;
    gvwMasterDAY: TcxGridDBBandedColumn;
    gvwMasterCS_PAYMENT_TOTAL_OBL: TcxGridDBBandedColumn;
    gvwMasterCS_PAYMENT_TOTAL_RIGHT: TcxGridDBBandedColumn;
    gvwMasterCF_PAYMENT_TOTAL: TcxGridDBBandedColumn;
    gvwMasterCF_PAYMENT_TOTAL_OBL: TcxGridDBBandedColumn;
    gvwMasterMEMBER_NAME: TcxGridDBBandedColumn;
    gvwMasterMEMBER_ID: TcxGridDBBandedColumn;
    gvwMasterID_ACCT: TcxGridDBBandedColumn;
    gvwMasterSID_CODE: TcxGridDBBandedColumn;
    gvwMasterCF_ACCT_4: TcxGridDBBandedColumn;
    gvwMasterCF_ACCT_1: TcxGridDBBandedColumn;
    gvwMasterSORT_ORDER: TcxGridDBBandedColumn;
    gvwMasterSECURITY_CODE: TcxGridDBBandedColumn;
    gvwMasterSECURITY_ID: TcxGridDBBandedColumn;
    gvwMasterRIGHTS: TcxGridDBBandedColumn;
    gvwMasterOBLIGATION: TcxGridDBBandedColumn;
    gvwMasterSECURITY: TcxGridDBBandedColumn;
    gvwMasterOBLIGATION_CASH: TcxGridDBBandedColumn;
    gvwMasterRIGHT_CASH: TcxGridDBBandedColumn;
    gvwMasterCF_IDR_VALUE: TcxGridDBBandedColumn;
    gvwMasterCF_OBLIGATION_CASH: TcxGridDBBandedColumn;
    gvwMasterCF_OBLIGATION: TcxGridDBBandedColumn;
    TabStockCompare: TcxTabSheet;
    cdsDHKStockCompare: TNClientDataset;
    dsDHKStockCompare: TDataSource;
    cdsDHKStock: TNClientDataset;
    dsDHKInstructionUnMatch: TDataSource;
    Panel4: TPanel;
    grdDHKStockCompare: TcxGrid;
    gvwDHKStockCompare: TcxGridDBBandedTableView;
    grdDHKStockCompareLevel1: TcxGridLevel;
    grdDHKStockLevel1: TcxGridLevel;
    grdDHKStock: TcxGrid;
    gvwDHKStock: TcxGridDBBandedTableView;
    cdsSettleInstrBySIID: TNClientDataset;
    cdsSettleInstrBySIIDSIID: TLargeintField;
    cdsSettleInstrBySIIDKSEI_RECON: TStringField;
    actCreateSelectStockVoucher: TNAction;
    actCreateSelectCashVoucher: TNAction;
    cxSplitter2: TcxSplitter;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwDHKStockCompared: TcxGridDBBandedTableView;
    dsDHKInstructionMatch: TDataSource;
    actReconcileData: TNAction;
    cdsDHKStockVoucher: TNClientDataset;
    cdsDHKStockVoucherVOUCHERID: TLargeintField;
    cdsDHKStockVoucherCASH_STOCK: TStringField;
    cdsDHKStockVoucherVOUCHERNO: TStringField;
    cdsDHKStockVoucherTRDDATE: TDateField;
    cdsDHKStockVoucherSETTLEDATE: TDateField;
    cdsDHKStockVoucherVALUEDATE: TDateField;
    cdsDHKStockVoucherACCID: TLargeintField;
    cdsDHKStockVoucherACCNO: TStringField;
    cdsDHKStockVoucherACCNAME: TStringField;
    cdsDHKStockVoucherCUSTODYID_SOURCE: TLargeintField;
    cdsDHKStockVoucherCUSTODYCODE_SOURCE: TStringField;
    cdsDHKStockVoucherCUSTODYACCNO_SOURCE: TStringField;
    cdsDHKStockVoucherCUSTODYACCNAME_SOURCE: TStringField;
    cdsDHKStockVoucherCUSTODYACCBRANCH_SOURCE: TStringField;
    cdsDHKStockVoucherCUSTODYID_TARGET: TLargeintField;
    cdsDHKStockVoucherCUSTODYCODE_TARGET: TStringField;
    cdsDHKStockVoucherCUSTODYACCNO_TARGET: TStringField;
    cdsDHKStockVoucherCUSTODYACCNAME_TARGET: TStringField;
    cdsDHKStockVoucherCUSTODYACCBRANCH_TARGET: TStringField;
    cdsDHKStockVoucherTRANSFERMODE: TStringField;
    cdsDHKStockVoucherREMARKS: TStringField;
    cdsDHKStockVoucherSTOCKCODE: TStringField;
    cdsDHKStockVoucherQTY: TFloatField;
    cdsDHKStockVoucherCCYCODE: TStringField;
    cdsDHKStockVoucherAMT: TFloatField;
    cdsDHKStockVoucherSTAT: TStringField;
    cdsDHKStockVoucherREFNO: TStringField;
    cdsSettleInstr: TNClientDataset;
    cdsSettleInstrSIID: TLargeintField;
    cdsSettleInstrSINO: TStringField;
    cdsSettleInstrENTRYDATE: TDateField;
    cdsSettleInstrVALUEDATE: TDateField;
    cdsSettleInstrSITYPE: TStringField;
    cdsSettleInstrCASH_STOCK: TStringField;
    cdsSettleInstrSETTLE_SIDE: TStringField;
    cdsSettleInstrINSTRUCTION_TYPE: TStringField;
    cdsSettleInstrNETTYPE: TStringField;
    cdsSettleInstrACCOUNT_SID: TStringField;
    cdsSettleInstrACCID: TLargeintField;
    cdsSettleInstrACCNO: TStringField;
    cdsSettleInstrACCNAME: TStringField;
    cdsSettleInstrTRANSFER_MODE: TStringField;
    cdsSettleInstrBASE_CCYCODE: TStringField;
    cdsSettleInstrBASE_NETAMT: TFloatField;
    cdsSettleInstrBANK_CHARGES: TFloatField;
    cdsSettleInstrSETTLE_CCYCODE: TStringField;
    cdsSettleInstrSETTLE_EXRATE: TFloatField;
    cdsSettleInstrSETTLE_NETAMT: TFloatField;
    cdsSettleInstrSETTLED_AMT: TFloatField;
    cdsSettleInstrSTOCKID: TIntegerField;
    cdsSettleInstrSTOCKCODE: TStringField;
    cdsSettleInstrQTY: TFloatField;
    cdsSettleInstrTRDDATE: TDateField;
    cdsSettleInstrDUEDATE: TDateField;
    cdsSettleInstrSETTLEDDATE: TDateField;
    cdsSettleInstrSI_DESC: TStringField;
    cdsSettleInstrSTAT: TStringField;
    cdsSettleInstrOLD_SIID: TLargeintField;
    cdsSettleInstrVOUCHERAMT: TFloatField;
    cdsSettleInstrVOUCHERQTY: TFloatField;
    cdsSettleInstrNO_INTRC: TStringField;
    cdsSettleInstrKSEI_RECON: TStringField;
    cdsSettleInstrSETTLED_QTY: TFloatField;
    cdsSettleInstrTRF_PRVT_BANK: TStringField;
    cdsSettleInstrACCSOPID: TLargeintField;
    cdsSettleInstrUSE_ACS: TStringField;
    cdsSettleInstrCP_ACCBANKID: TIntegerField;
    cdsSettleInstrCP_BANKCODE: TStringField;
    cdsSettleInstrCP_BANKACCNO: TStringField;
    cdsSettleInstrSOURCE_ACCBANKID: TLargeintField;
    cdsSettleInstrSOURCE_ACCBANKCODE: TStringField;
    cdsSettleInstrSOURCE_ACCBANKNO: TStringField;
    cdsSettleInstrSOURCE_ACCBANKNAME: TStringField;
    cdsSettleInstrTARGET_ACCBANKID: TLargeintField;
    cdsSettleInstrTARGET_ACCBANKCODE: TStringField;
    cdsSettleInstrTARGET_ACCBANKNO: TStringField;
    cdsSettleInstrTARGET_ACCBANKNAME: TStringField;
    cdsSettleInstrCONFIRM_BY: TStringField;
    cdsSettleInstrCREATE_FILE: TStringField;
    cdsSettleInstrCOUNT_CREATE_FILE: TIntegerField;
    cdsSettleInstrCBEST_UPLOAD: TStringField;
    cdsSettleInstrREMARKS: TStringField;
    cdsSettleInstrMODDA: TDateTimeField;
    cdsSettleInstrMODUI: TStringField;
    cdsSettleInstrAPPDA: TDateTimeField;
    cdsSettleInstrAPPUI: TStringField;
    cdsSettleInstrUNDER4Y: TIntegerField;
    cdsSettleInstrUNDER4YDA: TDateTimeField;
    cdsSettleInstrNOTES4Y: TStringField;
    cdsSettleInstrISDEL: TIntegerField;
    cdsSettleInstrID: TLargeintField;
    cdsSettleInstrBANKACCBRANCH: TStringField;
    cdsSettleInstrACCBANKID: TIntegerField;
    cdsSettleInstrCP_BANKACCNAME: TStringField;
    cdsSettleInstrBANKCODE: TStringField;
    cdsSettleInstrBANKACCNO: TStringField;
    cdsSettleInstrBANKACCNAME: TStringField;
    cdsSettleInstrCP_BANKACCBRANCH: TStringField;
    actEdit: TNAction;
    cdsDHKStockSETTLESIDE: TStringField;
    cdsDHKStockSID_CODE: TStringField;
    cdsDHKStockCBEST_ACC_01: TStringField;
    cdsDHKStockCBEST_ACC_04: TStringField;
    cdsDHKStockSTOCKCODE: TStringField;
    cdsDHKStockVALUE: TFloatField;
    actManualMatch: TNAction;
    ManualMatch1: TMenuItem;
    Edit1: TMenuItem;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    cdsDHKStockCompareCUSTODY_INSTRID: TLargeintField;
    cdsDHKStockCompareACCOUNT_SID: TStringField;
    cdsDHKStockCompareACCID: TLargeintField;
    cdsDHKStockCompareACCNAME: TStringField;
    cdsDHKStockCompareSI_DESC: TStringField;
    cdsDHKStockCompareSETTLE_SIDE: TStringField;
    cdsDHKStockCompareCBEST_ACC_01: TStringField;
    cdsDHKStockCompareBEST_ACC_04: TStringField;
    cdsDHKStockCompareCCYCODE: TStringField;
    cdsDHKStockCompareQTY: TFloatField;
    cdsDHKStockCompareKSEI_RECON: TStringField;
    PopupMenu1: TPopupMenu;
    actSettle: TNAction;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsDHKUpload: TNClientDataset;
    cdsDHKUploadDAY: TDateField;
    cdsDHKUploadCS_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKUploadCS_PAYMENT_TOTAL_RIGHT: TFloatField;
    cdsDHKUploadCF_PAYMENT_TOTAL: TFloatField;
    cdsDHKUploadCF_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKUploadMEMBER_NAME: TStringField;
    cdsDHKUploadMEMBER_ID: TStringField;
    cdsDHKUploadID_ACCT: TStringField;
    cdsDHKUploadSID_CODE: TStringField;
    cdsDHKUploadCF_ACCT_4: TStringField;
    cdsDHKUploadCF_ACCT_1: TStringField;
    cdsDHKUploadSORT_ORDER: TStringField;
    cdsDHKUploadSECURITY_CODE: TStringField;
    cdsDHKUploadSECURITY_ID: TStringField;
    cdsDHKUploadRIGHTS: TFloatField;
    cdsDHKUploadOBLIGATION: TFloatField;
    cdsDHKUploadSECURITY: TStringField;
    cdsDHKUploadOBLIGATION_CASH: TFloatField;
    cdsDHKUploadRIGHT_CASH: TFloatField;
    cdsDHKUploadCF_IDR_VALUE: TFloatField;
    cdsDHKUploadCF_OBLIGATION_CASH: TFloatField;
    cdsDHKUploadCF_OBLIGATION: TFloatField;
    cdsDHKUploadSTAT: TStringField;
    cdsDHKInstruction: TNClientDataset;
    cdsDHKInstructionCBEST_STATUS: TStringField;
    cdsDHKInstructionCREATE_FILE: TStringField;
    cdsDHKInstructionCOUNT_CREATE_FILE: TIntegerField;
    cdsDHKInstructionCBEST_UPLOAD: TStringField;
    cdsDHKInstructionCUSTODY_INSTRID: TLargeintField;
    cdsDHKInstructionCUSTODY_EXTREF: TStringField;
    cdsDHKInstructionTRDDATE: TDateField;
    cdsDHKInstructionSETTLEMENTDATE: TDateField;
    cdsDHKInstructionSETTLE_SIDE: TStringField;
    cdsDHKInstructionINSTRUCTION: TStringField;
    cdsDHKInstructionACCID: TLargeintField;
    cdsDHKInstructionACCNO: TStringField;
    cdsDHKInstructionACCNAME: TStringField;
    cdsDHKInstructionACCINIT: TStringField;
    cdsDHKInstructionPARTY_CODE: TStringField;
    cdsDHKInstructionCBEST_01: TStringField;
    cdsDHKInstructionCBEST_04: TStringField;
    cdsDHKInstructionCCYCODE: TStringField;
    cdsDHKInstructionSECURITIY_CODE: TStringField;
    cdsDHKInstructionQTY: TFloatField;
    cdsDHKInstructionCUSTODY_DESC: TStringField;
    cdsDHKInstructionREMARKS: TStringField;
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
    cxButton4: TcxButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    cdsDHKUploadDHKID: TLargeintField;
    cdsDHKUploadDHKNO: TStringField;
    gvwMasterDHKID: TcxGridDBBandedColumn;
    gvwMasterDHKNO: TcxGridDBBandedColumn;
    cdsDHKInstructionBS: TStringField;
    actGenerateDHKInstruction: TNAction;
    pnlLoadingData: TPanel;
    cdsDHKInstructionUnMatch: TNClientDataset;
    cdsDHKInstructionUnMatchDHK_INSTRID: TLargeintField;
    cdsDHKInstructionUnMatchDHK_EXTREF: TStringField;
    cdsDHKInstructionUnMatchBS: TStringField;
    cdsDHKInstructionUnMatchACCID: TLargeintField;
    cdsDHKInstructionUnMatchACCNO: TStringField;
    cdsDHKInstructionUnMatchACCNAME: TStringField;
    cdsDHKInstructionUnMatchTRDDATE: TDateField;
    cdsDHKInstructionUnMatchSETTLEDATE: TDateField;
    cdsDHKInstructionUnMatchSETTLE_SIDE: TStringField;
    cdsDHKInstructionUnMatchINSTRUCTION_TYPE: TStringField;
    cdsDHKInstructionUnMatchMEMBER_ID: TStringField;
    cdsDHKInstructionUnMatchCBEST01_ACC: TStringField;
    cdsDHKInstructionUnMatchCBEST04_ACC: TStringField;
    cdsDHKInstructionUnMatchSECURITYCODE_TYPE: TStringField;
    cdsDHKInstructionUnMatchSTOCKID: TLargeintField;
    cdsDHKInstructionUnMatchSTOCKCODE: TStringField;
    cdsDHKInstructionUnMatchQTY: TFloatField;
    cdsDHKInstructionUnMatchREMARKS: TStringField;
    cdsDHKInstructionUnMatchDHKID: TLargeintField;
    cdsDHKInstructionUnMatchCUSTODY_INSTRID: TLargeintField;
    cdsDHKInstructionUnMatchMATCH: TStringField;
    cdsDHKInstructionUnMatchSETTLE: TStringField;
    cdsDHKInstructionUnMatchMODDA: TDateTimeField;
    cdsDHKInstructionUnMatchMODUI: TStringField;
    cdsDHKInstructionUnMatchAPPDA: TDateTimeField;
    cdsDHKInstructionUnMatchAPPUI: TStringField;
    cdsDHKInstructionUnMatchUNDER4Y: TIntegerField;
    cdsDHKInstructionUnMatchUNDER4YDA: TDateTimeField;
    cdsDHKInstructionUnMatchNOTES4Y: TStringField;
    cdsDHKInstructionUnMatchISDEL: TIntegerField;
    cdsDHKInstructionUnMatchID: TLargeintField;
    gvwDHKStockDHK_INSTRID: TcxGridDBBandedColumn;
    gvwDHKStockDHK_EXTREF: TcxGridDBBandedColumn;
    gvwDHKStockBS: TcxGridDBBandedColumn;
    gvwDHKStockACCID: TcxGridDBBandedColumn;
    gvwDHKStockACCNO: TcxGridDBBandedColumn;
    gvwDHKStockACCNAME: TcxGridDBBandedColumn;
    gvwDHKStockTRDDATE: TcxGridDBBandedColumn;
    gvwDHKStockSETTLEDATE: TcxGridDBBandedColumn;
    gvwDHKStockSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwDHKStockINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwDHKStockMEMBER_ID: TcxGridDBBandedColumn;
    gvwDHKStockCBEST01_ACC: TcxGridDBBandedColumn;
    gvwDHKStockCBEST04_ACC: TcxGridDBBandedColumn;
    gvwDHKStockSECURITYCODE_TYPE: TcxGridDBBandedColumn;
    gvwDHKStockSTOCKID: TcxGridDBBandedColumn;
    gvwDHKStockSTOCKCODE: TcxGridDBBandedColumn;
    gvwDHKStockQTY: TcxGridDBBandedColumn;
    gvwDHKStockREMARKS: TcxGridDBBandedColumn;
    gvwDHKStockDHKID: TcxGridDBBandedColumn;
    gvwDHKStockCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwDHKStockMATCH: TcxGridDBBandedColumn;
    gvwDHKStockSETTLE: TcxGridDBBandedColumn;
    gvwDHKStockMODDA: TcxGridDBBandedColumn;
    gvwDHKStockMODUI: TcxGridDBBandedColumn;
    gvwDHKStockAPPDA: TcxGridDBBandedColumn;
    gvwDHKStockAPPUI: TcxGridDBBandedColumn;
    gvwDHKStockUNDER4Y: TcxGridDBBandedColumn;
    gvwDHKStockUNDER4YDA: TcxGridDBBandedColumn;
    gvwDHKStockNOTES4Y: TcxGridDBBandedColumn;
    gvwDHKStockISDEL: TcxGridDBBandedColumn;
    gvwDHKStockID: TcxGridDBBandedColumn;
    cdsDHKInstructionMatch: TNClientDataset;
    SaveDialog: TSaveDialog;
    cdsDHKInstructionMatchDHK_INSTRID: TLargeintField;
    cdsDHKInstructionMatchDHK_EXTREF: TStringField;
    cdsDHKInstructionMatchBS: TStringField;
    cdsDHKInstructionMatchACCID: TLargeintField;
    cdsDHKInstructionMatchACCNO: TStringField;
    cdsDHKInstructionMatchACCNAME: TStringField;
    cdsDHKInstructionMatchTRDDATE: TDateField;
    cdsDHKInstructionMatchSETTLEDATE: TDateField;
    cdsDHKInstructionMatchSETTLE_SIDE: TStringField;
    cdsDHKInstructionMatchINSTRUCTION_TYPE: TStringField;
    cdsDHKInstructionMatchMEMBER_ID: TStringField;
    cdsDHKInstructionMatchCBEST01_ACC: TStringField;
    cdsDHKInstructionMatchCBEST04_ACC: TStringField;
    cdsDHKInstructionMatchSECURITYCODE_TYPE: TStringField;
    cdsDHKInstructionMatchSTOCKID: TLargeintField;
    cdsDHKInstructionMatchSTOCKCODE: TStringField;
    cdsDHKInstructionMatchQTY: TFloatField;
    cdsDHKInstructionMatchREMARKS: TStringField;
    cdsDHKInstructionMatchDHKID: TLargeintField;
    cdsDHKInstructionMatchCUSTODY_INSTRID: TLargeintField;
    cdsDHKInstructionMatchMATCH: TStringField;
    cdsDHKInstructionMatchSETTLE: TStringField;
    cdsDHKInstructionMatchMODDA: TDateTimeField;
    cdsDHKInstructionMatchMODUI: TStringField;
    cdsDHKInstructionMatchAPPDA: TDateTimeField;
    cdsDHKInstructionMatchAPPUI: TStringField;
    cdsDHKInstructionMatchUNDER4Y: TIntegerField;
    cdsDHKInstructionMatchUNDER4YDA: TDateTimeField;
    cdsDHKInstructionMatchNOTES4Y: TStringField;
    cdsDHKInstructionMatchISDEL: TIntegerField;
    cdsDHKInstructionMatchID: TLargeintField;
    gvwDHKStockComparedDHK_INSTRID: TcxGridDBBandedColumn;
    gvwDHKStockComparedDHK_EXTREF: TcxGridDBBandedColumn;
    gvwDHKStockComparedBS: TcxGridDBBandedColumn;
    gvwDHKStockComparedACCID: TcxGridDBBandedColumn;
    gvwDHKStockComparedACCNO: TcxGridDBBandedColumn;
    gvwDHKStockComparedACCNAME: TcxGridDBBandedColumn;
    gvwDHKStockComparedTRDDATE: TcxGridDBBandedColumn;
    gvwDHKStockComparedSETTLEDATE: TcxGridDBBandedColumn;
    gvwDHKStockComparedSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwDHKStockComparedINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwDHKStockComparedMEMBER_ID: TcxGridDBBandedColumn;
    gvwDHKStockComparedCBEST01_ACC: TcxGridDBBandedColumn;
    gvwDHKStockComparedCBEST04_ACC: TcxGridDBBandedColumn;
    gvwDHKStockComparedSECURITYCODE_TYPE: TcxGridDBBandedColumn;
    gvwDHKStockComparedSTOCKID: TcxGridDBBandedColumn;
    gvwDHKStockComparedSTOCKCODE: TcxGridDBBandedColumn;
    gvwDHKStockComparedQTY: TcxGridDBBandedColumn;
    gvwDHKStockComparedREMARKS: TcxGridDBBandedColumn;
    gvwDHKStockComparedDHKID: TcxGridDBBandedColumn;
    gvwDHKStockComparedCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwDHKStockComparedMATCH: TcxGridDBBandedColumn;
    gvwDHKStockComparedSETTLE: TcxGridDBBandedColumn;
    gvwDHKStockComparedMODDA: TcxGridDBBandedColumn;
    gvwDHKStockComparedMODUI: TcxGridDBBandedColumn;
    gvwDHKStockComparedAPPDA: TcxGridDBBandedColumn;
    gvwDHKStockComparedAPPUI: TcxGridDBBandedColumn;
    gvwDHKStockComparedUNDER4Y: TcxGridDBBandedColumn;
    gvwDHKStockComparedUNDER4YDA: TcxGridDBBandedColumn;
    gvwDHKStockComparedNOTES4Y: TcxGridDBBandedColumn;
    gvwDHKStockComparedISDEL: TcxGridDBBandedColumn;
    gvwDHKStockComparedID: TcxGridDBBandedColumn;
    GenerateCOLW1: TMenuItem;
    gvwDHKStockCompareCBEST_STATUS: TcxGridDBBandedColumn;
    gvwDHKStockCompareCREATE_FILE: TcxGridDBBandedColumn;
    gvwDHKStockCompareCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwDHKStockCompareCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwDHKStockCompareCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwDHKStockCompareCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwDHKStockCompareTRDDATE: TcxGridDBBandedColumn;
    gvwDHKStockCompareSETTLEMENTDATE: TcxGridDBBandedColumn;
    gvwDHKStockCompareSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwDHKStockCompareINSTRUCTION: TcxGridDBBandedColumn;
    gvwDHKStockCompareACCID: TcxGridDBBandedColumn;
    gvwDHKStockCompareACCNO: TcxGridDBBandedColumn;
    gvwDHKStockCompareACCNAME: TcxGridDBBandedColumn;
    gvwDHKStockCompareACCINIT: TcxGridDBBandedColumn;
    gvwDHKStockComparePARTY_CODE: TcxGridDBBandedColumn;
    gvwDHKStockCompareCBEST_01: TcxGridDBBandedColumn;
    gvwDHKStockCompareCBEST_04: TcxGridDBBandedColumn;
    gvwDHKStockCompareCCYCODE: TcxGridDBBandedColumn;
    gvwDHKStockCompareSECURITIY_CODE: TcxGridDBBandedColumn;
    gvwDHKStockCompareQTY: TcxGridDBBandedColumn;
    gvwDHKStockCompareCUSTODY_DESC: TcxGridDBBandedColumn;
    gvwDHKStockCompareREMARKS: TcxGridDBBandedColumn;
    gvwDHKStockCompareBS: TcxGridDBBandedColumn;
    cdsBoard: TNClientDataset;
    cdsBoardBOARDID: TLargeintField;
    cdsBoardBOARDCODE: TStringField;
    cdsBoardMARKETCODE: TStringField;
    cdsBoardBOARDDESC: TStringField;
    cdsBoardGLCD: TStringField;
    cdsBoardMARKET: TStringField;
    cdsBoardCPTYPE: TStringField;
    cdsBoardDUEBUYSTOCK: TIntegerField;
    cdsBoardDUESELLSTOCK: TIntegerField;
    cdsBoardDUEBUYCASH: TIntegerField;
    cdsBoardDUESELLCASH: TIntegerField;
    Generate1: TMenuItem;
    actGenerateCOLW: TNAction;
    actGenerateCOLDS: TNAction;
    cdsDHKUploadCheck: TNClientDataset;
    cdsDHKDHKNO: TStringField;
    cdsDHKDAY: TDateField;
    cdsDHKCS_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKCS_PAYMENT_TOTAL_RIGHT: TFloatField;
    cdsDHKCF_PAYMENT_TOTAL: TFloatField;
    cdsDHKCF_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKMEMBER_NAME: TStringField;
    cdsDHKMEMBER_ID: TStringField;
    cdsDHKID_ACCT: TStringField;
    cdsDHKSID_CODE: TStringField;
    cdsDHKCF_ACCT_4: TStringField;
    cdsDHKCF_ACCT_1: TStringField;
    cdsDHKSORT_ORDER: TStringField;
    cdsDHKSECURITY_CODE: TStringField;
    cdsDHKSECURITY_ID: TStringField;
    cdsDHKRIGHTS: TFloatField;
    cdsDHKOBLIGATION: TFloatField;
    cdsDHKSECURITY: TStringField;
    cdsDHKOBLIGATION_CASH: TFloatField;
    cdsDHKRIGHT_CASH: TFloatField;
    cdsDHKCF_IDR_VALUE: TFloatField;
    cdsDHKCF_OBLIGATION_CASH: TFloatField;
    cdsDHKCF_OBLIGATION: TFloatField;
    cdsDHKSTAT: TStringField;
    cdsDHKMODDA: TDateTimeField;
    cdsDHKMODUI: TStringField;
    cdsDHKAPPDA: TDateTimeField;
    cdsDHKAPPUI: TStringField;
    cdsDHKUNDER4Y: TIntegerField;
    cdsDHKUNDER4YDA: TDateTimeField;
    cdsDHKNOTES4Y: TStringField;
    cdsDHKISDEL: TIntegerField;
    cdsDHKID: TLargeintField;
    cdsDHKWTNO: TStringField;
    cdsDHKUploadCheckDHKID: TLargeintField;
    cdsDHKUploadCheckDHKNO: TStringField;
    cdsDHKUploadCheckDAY: TDateField;
    cdsDHKUploadCheckCS_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKUploadCheckCS_PAYMENT_TOTAL_RIGHT: TFloatField;
    cdsDHKUploadCheckCF_PAYMENT_TOTAL: TFloatField;
    cdsDHKUploadCheckCF_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKUploadCheckMEMBER_NAME: TStringField;
    cdsDHKUploadCheckMEMBER_ID: TStringField;
    cdsDHKUploadCheckID_ACCT: TStringField;
    cdsDHKUploadCheckSID_CODE: TStringField;
    cdsDHKUploadCheckCF_ACCT_4: TStringField;
    cdsDHKUploadCheckCF_ACCT_1: TStringField;
    cdsDHKUploadCheckSORT_ORDER: TStringField;
    cdsDHKUploadCheckSECURITY_CODE: TStringField;
    cdsDHKUploadCheckSECURITY_ID: TStringField;
    cdsDHKUploadCheckRIGHTS: TFloatField;
    cdsDHKUploadCheckOBLIGATION: TFloatField;
    cdsDHKUploadCheckSECURITY: TStringField;
    cdsDHKUploadCheckOBLIGATION_CASH: TFloatField;
    cdsDHKUploadCheckRIGHT_CASH: TFloatField;
    cdsDHKUploadCheckCF_IDR_VALUE: TFloatField;
    cdsDHKUploadCheckCF_OBLIGATION_CASH: TFloatField;
    cdsDHKUploadCheckCF_OBLIGATION: TFloatField;
    cdsDHKUploadCheckSTAT: TStringField;
    cdsDHKUploadCheckMODDA: TDateTimeField;
    cdsDHKUploadCheckMODUI: TStringField;
    cdsDHKUploadCheckAPPDA: TDateTimeField;
    cdsDHKUploadCheckAPPUI: TStringField;
    cdsDHKUploadCheckUNDER4Y: TIntegerField;
    cdsDHKUploadCheckUNDER4YDA: TDateTimeField;
    cdsDHKUploadCheckNOTES4Y: TStringField;
    cdsDHKUploadCheckISDEL: TIntegerField;
    cdsDHKUploadCheckID: TLargeintField;
    cdsDHKUploadCheckWTNO: TStringField;
    cdsDHKDHKID: TLargeintField;
    procedure actViewDataExecute(Sender: TObject);
    procedure edDHKFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actUploadDHKExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actCreateSelectStockVoucherExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actReconcileDataUpdate(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actCreateSelectCashVoucherUpdate(Sender: TObject);
    procedure actCreateSelectStockVoucherUpdate(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actSettleExecute(Sender: TObject);
    procedure cdsDHKReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure actReconsUpdate(Sender: TObject);
    procedure actReconcileDataExecute(Sender: TObject);
    procedure actGenerateDHKInstructionExecute(Sender: TObject);
    procedure actGenerateCOLDSExecute(Sender: TObject);
    procedure actGenerateCOLWUpdate(Sender: TObject);
    procedure actGenerateCOLWExecute(Sender: TObject);
  private
    { Private declarations }
    FSIID: Integer;

    procedure RefreshGrid;
    procedure GenerateDHKInstruction;
    procedure GenerateCOLWCOLDS(ACOLDS: Boolean);
    function IsValidDateCheck(const AValue: String; out AResult: TDate): Boolean;

    procedure UploadDHKFile(AFileName: string);
  public
    { Public declarations }
  end;

var
  frmDHK: TfrmDHK;

implementation

{$R *.dfm}

uses DataGlobal, DataCBest, FormDHKs, FormProgressBar;

procedure TfrmDHK.actCreateSelectCashVoucherUpdate(Sender: TObject);
begin
  inherited;
  actCreateSelectCashVoucher.Visible := cxPageControl1.ActivePage.TabIndex = 1;
end;

procedure TfrmDHK.actCreateSelectStockVoucherExecute(Sender: TObject);
var
  sSID, sKSEI: string;
  iSID: Int64;
  i : Integer;
begin
  inherited;
//  if MessageDlg('Create stock voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
//  begin
//    for i := 0 to gvwDHKStockCompare.Controller.SelectedRowCount -1 do
//    begin
//      iSID  := StrToInt64(gvwDHKStockCompare.DataController.Controller.SelectedRecords[i].Values[gvwDHKStockCompareCUSTODY_INSTRID.Index]);
//      sKSEI := gvwDHKStockCompare.DataController.Controller.SelectedRecords[i].Values[gvwDHKStockCompareKSEI_RECON.Index];
//
//      if sKSEI = '1' then
//        dmGlobal.RemoteServer.CreateStockVoucherBySI(iSID, dtDueDate.Date, gvwDHKStockCompare.DataController.Controller.SelectedRecords[i].Values[gvwDHKStockCompareSETTLE_SIDE.Index]);
//    end;
//    MessageDlg('Create stock voucher has done...', mtInformation, [mbOk], 0);
//  end;
end;

procedure TfrmDHK.actCreateSelectStockVoucherUpdate(Sender: TObject);
begin
  inherited;
  actCreateSelectStockVoucher.Visible := cxPageControl1.ActivePage.TabIndex = 2;
end;

procedure TfrmDHK.actEditExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  oForm := TfrmDHKs.Create(nil);

  TfrmDHKs(oForm).dsSubject.DataSet       := cdsDHKStockCompare;
  TfrmDHKs(oForm).CashStock               := 'Stock';
  TfrmDHKs(oForm).cmbCBestAcc01.EditValue := cdsDHKStockCompareCBEST_ACC_01.AsString;
  TfrmDHKs(oForm).cmbCBestAcc04.EditValue := cdsDHKStockCompareBEST_ACC_04.AsString;

  cdsSettleInstr.Close;
  cdsSettleInstr.Params[0].AsInteger := FSIID;
  cdsSettleInstr.Open;

  cdsSettleInstr.Edit;
  if oForm.ShowModal = mrOk then
  begin
    if cdsSettleInstrSETTLE_SIDE.AsString = 'R' then
    begin
      cdsSettleInstrTARGET_ACCBANKNO.AsString := TfrmDHKs(oForm).cmbCBestAcc01.EditValue;
      cdsSettleInstrSOURCE_ACCBANKNO.AsString := TfrmDHKs(oForm).cmbCBestAcc04.EditValue;
    end
    else
    begin
      cdsSettleInstrTARGET_ACCBANKNO.AsString := TfrmDHKs(oForm).cmbCBestAcc04.EditValue;
      cdsSettleInstrSOURCE_ACCBANKNO.AsString := TfrmDHKs(oForm).cmbCBestAcc01.EditValue;
    end;

    cdsSettleInstr.Post;
    cdsSettleInstr.ApplyUpdates(-1);
    RefreshGrid;
  end
  else
    cdsSettleInstr.Cancel;

  oForm.Free;
end;

procedure TfrmDHK.actEditUpdate(Sender: TObject);
begin
  inherited;
  FSIID := cdsDHKStockCompareCUSTODY_INSTRID.Value;
end;

procedure TfrmDHK.actGenerateCOLDSExecute(Sender: TObject);
begin
  inherited;
  GenerateCOLWCOLDS(True);
end;

procedure TfrmDHK.actGenerateCOLWExecute(Sender: TObject);
begin
  inherited;
  GenerateCOLWCOLDS(False);
end;

procedure TfrmDHK.actGenerateCOLWUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsDHKInstructionUnMatch.IsEmpty and cdsDHKStockCompare.IsEmpty;
end;

procedure TfrmDHK.actGenerateDHKInstructionExecute(Sender: TObject);
var
  iRes, sMsg: string;
begin
  inherited;
  if MessageDlg('Generate DHK Instruction ?', mtConfirmation, [mbYes, mbNo], 0) =  mrYes then
  begin
    pnlLoadingData.Caption := 'Generate DHK Instruction...';
    pnlLoadingData.Visible := True;
    Application.ProcessMessages;

    iRes := dmGlobal.RemoteServer.GenerateDHKInstruction(dtDueDate.Date, sMsg);
    pnlLoadingData.Visible := False;
    MessageDlg(sMsg, mtInformation, [mbOk], 0);

    cdsDHKInstructionMatch.Refresh;
    cdsDHKInstructionUnMatch.Refresh;
    cdsDHKInstruction.Refresh;
  end;
end;

procedure TfrmDHK.actReconcileDataExecute(Sender: TObject);
var
  iRes, AMsg: string;
begin
  inherited;
  if MessageDlg('Reconcile Data DHK ?', mtConfirmation, [mbYes, mbNo], 0) =  mrYes then
  begin
    pnlLoadingData.Caption := 'Reconcile data DHK...';
    pnlLoadingData.Visible := True;
    Application.ProcessMessages;
    iRes := dmGlobal.RemoteServer.DHKReconciliation(dtDueDate.Date, AMsg);
    pnlLoadingData.Visible := False;
    MessageDlg(AMsg, mtInformation, [mbOk], 0);

    cdsDHKInstructionMatch.Refresh;
    cdsDHKInstructionUnMatch.Refresh;
    cdsDHKInstruction.Refresh;
  end;
end;

procedure TfrmDHK.actReconcileDataUpdate(Sender: TObject);
begin
  inherited;
  actReconcileData.Enabled := not cdsDHK.IsEmpty;
end;

procedure TfrmDHK.actReconsUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := not cdsDHK.IsEmpty;
end;

procedure TfrmDHK.actUploadDHKExecute(Sender: TObject);
var
  sFileName: String;
  oFileStream: TFileStream;
  oFileArray: TJSONArray;
  sFileExt: string;
  oAllDataList, oDataList: TStringList;
  sTemp: string;
  RecNo, n: Integer;
  i, j, iID: Integer;
  TrdDateFile: Integer;
  oProgress: TfrmProgressBar;
  dtResult: TDate;
begin
  inherited;
  if MessageDlg('Update data DHK ?', mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  Cursor := crHourGlass;

  try
    TrdDateFile := DateTimeToFileDate(dtDueDate.Date);

//    cdsDHKUpload.Close;
//    cdsDHKUpload.Params[0].AsDate := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsBoardDUESELLSTOCK.AsInteger);
//    cdsDHKUpload.Open;

    sFileName := edDHKFile.Text;
    if FileExists(sFileName) then
    begin
      pnlLoadingData.Caption := 'Uploading Data...';
      pnlLoadingData.Visible := True;
      Application.ProcessMessages;

      sFileExt := ExtractFileExt(sFileName);
      if LowerCase(sFileExt) = '.txt' then
      begin

        Application.ProcessMessages;

        oAllDataList := TStringList.Create;
        cdsDHK.DisableControls;
        oProgress := TfrmProgressBar.Create(Nil);
        Try
          oAllDataList.LoadFromFile(sFileName);
          oProgress.Show;
          n := oAllDataList.Count;
          for i := 0 to oAllDataList.Count-1 do
          begin
            oDataList := TStringList.Create;

            sTemp := StringReplace(oAllDataList.Strings[i], #9, '|', [rfReplaceAll]);
            dmGlobal.ParseDelimited(oDataList, sTemp, '|');

            if(IsValidDateCheck(oDataList.Strings[0], dtResult) = False) then
            begin
              Continue;
              oProgress.ChangeBar(trunc(i / n-1 * 100), 'Processing DHK Upload');
            end
            else
            begin
              oProgress.ChangeBar(trunc((i / (n-1)) * 100), 'Processing DHK: '
                + QuotedStr(oDataList.Strings[0])
                + ', ' + QuotedStr(oDataList.Strings[6])
                + ', ' + QuotedStr(oDataList.Strings[8])
                + ', ' + QuotedStr(oDataList.Strings[7])
                + ', ' + QuotedStr(oDataList.Strings[12]));

              cdsDHKUploadCheck.Close;
              cdsDHKUploadCheck.Params[0].AsDateTime := dtResult;
              cdsDHKUploadCheck.Params[1].AsString := oDataList.Strings[6];
              cdsDHKUploadCheck.Params[2].AsString := oDataList.Strings[8];
              cdsDHKUploadCheck.Params[3].AsString := oDataList.Strings[7];
              cdsDHKUploadCheck.Params[4].AsString := oDataList.Strings[12];
              cdsDHKUploadCheck.Open;

              if cdsDHKUploadCheck.IsEmpty then
              begin
                cdsDHKUploadCheck.Append;
//                cdsDHKUploadCheckDHKID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DHK');
                cdsDHKUploadCheckDAY.AsDateTime := dtResult;
                cdsDHKUploadCheckMEMBER_ID.AsString := oDataList.Strings[6];
                cdsDHKUploadCheckID_ACCT.AsString := oDataList.Strings[7];
                cdsDHKUploadCheckSID_CODE.AsString := oDataList.Strings[8];
                cdsDHKUploadCheckSECURITY_CODE.AsString := oDataList.Strings[12];
                cdsDHKUploadCheckSTAT.AsString :=  '0';
                cdsDHKUploadCheckDHKNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsDHKUploadCheckDAY.AsDateTime, 'DH', 'TBL_B_DHK');
              end
              else
              begin
                cdsDHKUploadCheck.Edit;
              end;

              cdsDHKUploadCheckCS_PAYMENT_TOTAL_OBL.AsFloat := StrToFloat(oDataList.Strings[1]);
              cdsDHKUploadCheckCS_PAYMENT_TOTAL_RIGHT.AsFloat := StrToFloat(oDataList.Strings[2]);
              cdsDHKUploadCheckCF_PAYMENT_TOTAL.AsFloat := StrToFloat(oDataList.Strings[3]);
              cdsDHKUploadCheckCF_PAYMENT_TOTAL_OBL.AsFloat := StrToFloat(oDataList.Strings[4]);
              cdsDHKUploadCheckMEMBER_NAME.AsString := StringReplace(oDataList.Strings[5], '"', '', [rfReplaceAll]);
              cdsDHKUploadCheckCF_ACCT_4.AsString := oDataList.Strings[9];
              cdsDHKUploadCheckCF_ACCT_1.AsString := oDataList.Strings[10];
              cdsDHKUploadCheckSORT_ORDER.AsString := oDataList.Strings[11];
              cdsDHKUploadCheckSECURITY_ID.AsString := oDataList.Strings[13];
              cdsDHKUploadCheckRIGHTS.AsFloat := StrToFloat(oDataList.Strings[14]);
              cdsDHKUploadCheckOBLIGATION.AsFloat := StrToFloat(oDataList.Strings[15]);
              cdsDHKUploadCheckSECURITY.AsString := oDataList.Strings[16];
              cdsDHKUploadCheckOBLIGATION_CASH.AsFloat := StrToFloat(oDataList.Strings[17]);
              cdsDHKUploadCheckRIGHT_CASH.AsFloat := StrToFloat(oDataList.Strings[18]);
              cdsDHKUploadCheckCF_IDR_VALUE.AsFloat := StrToFloat(oDataList.Strings[19]);
              cdsDHKUploadCheckCF_OBLIGATION_CASH.AsFloat := StrToFloat(oDataList.Strings[20]);
              cdsDHKUploadCheckCF_OBLIGATION.AsFloat := StrToFloat(oDataList.Strings[2]);
              cdsDHKUploadCheck.Post;

              cdsDHKUploadCheck.ApplyUpdates(-1);
            end;
          end;


        cdsDHK.Close;
        cdsDHK.Params[0].AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsBoardDUESELLSTOCK.AsInteger);
        cdsDHK.Open;


        Finally
          FreeAndNil(oProgress);
          cdsDHK.EnableControls;
          FreeAndNil(oAllDataList);
          FreeAndNil(oDataList);
        End;
      end
      else if LowerCase(sFileExt) = '.xls' then
      begin
        oFileStream := TFileStream.Create(sFileName, fmOpenRead);
        oFileArray := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
        Screen.Cursor := crSQLWait;
        try
          if dmGlobal.RemoteServer.UploadDHK(oFileArray, ExtractFileName(sFileName)) then
          begin
            Screen.Cursor := crDefault;
          end;
        finally
          Screen.Cursor := crDefault;

          RefreshGrid;

          FreeAndNil(oFileStream);
        end;
      end;
      pnlLoadingData.Visible := False;
    end;

    GenerateDHKInstruction;
  except
    on E: Exception do
    begin
      MessageDlg('Error : '+e.Message, mtError, [mbOk], 0);
      pnlLoadingData.Visible := False;
    end;
  end;

  Cursor := crDefault;
end;

procedure TfrmDHK.actViewDataExecute(Sender: TObject);
begin
  inherited;
  RefreshGrid;
  gvwMaster.ApplyBestFit();
  gvwDHKStockCompare.ApplyBestFit();
  gvwDHKStock.ApplyBestFit();
//  gvwDHKStockCompared.ApplyBestFit();
end;

procedure TfrmDHK.cdsDHKReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  Action := HandleReconcileError(Dataset, UpdateKind, E);
end;

procedure TfrmDHK.edDHKFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: String;
begin
  inherited;
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;
    if FileExists(sFileName) then
    begin
      edDHKFile.Text := sFileName;
    end;
  end;
end;

procedure TfrmDHK.FormCreate(Sender: TObject);
begin
  inherited;
  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCBestAcc01.Close;
    cdsLuCBestAcc01.open;

    cdsLuCBestAcc04.Close;
    cdsLuCBestAcc04.open;
  end;
end;

procedure TfrmDHK.FormResize(Sender: TObject);
begin
  inherited;
  grdDHKStock.Width := Round(tabDHK.Width / 2);
end;

procedure TfrmDHK.FormShow(Sender: TObject);
begin
  inherited;
  grdDHKStock.Width := Round(tabDHK.Width / 2);

  cdsBoard.Close;
  cdsBoard.Open;
end;

procedure TfrmDHK.GenerateCOLWCOLDS(ACOLDS: Boolean);
var
  sFileName, sFolderName,
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9: string;
  oCBestList: TStringList;
  iCreateFile: Integer;
  i : Integer;
begin
  inherited;
  cursor := crHourGlass;
  pnlLoadingData.Caption := 'Generating COLW/COLDS file';
  pnlLoadingData.Visible := True;
  Application.ProcessMessages;

  if ACOLDS then
    SaveDialog.FileName := 'COLDS_'+FormatDateTime('YYYYMMDD', dtDueDate.Date)
  else
    SaveDialog.FileName := 'COLW_'+FormatDateTime('YYYYMMDD', dtDueDate.Date);

  if SaveDialog.Execute(Handle) then
    sFileName := SaveDialog.FileName
  else
    sFileName := '';

  if sFileName <> '' then
  begin
    oCBestList := TStringList.Create;
    s0         := IntToStr(cdsDHKInstructionMatch.RecordCount);

    cdsDHKInstructionMatch.DisableControls;

    if ACOLDS then
      cdsDHKInstructionMatch.Filter   := 'SETTLE_SIDE = '+QuotedStr('D')
    else
      cdsDHKInstructionMatch.Filter   := 'SETTLE_SIDE = '+QuotedStr('R');
    cdsDHKInstructionMatch.Filtered := True;

    cdsDHKInstructionMatch.First;
    while not cdsDHKInstructionMatch.Eof do
    begin
      s0 := cdsDHKInstructionMatchDHK_EXTREF.AsString;
      s1 := dmGlobal.RemoteServer.GetGlobalParamString('009');
      if ACOLDS then
      begin
        s2 := cdsDHKInstructionMatchCBEST01_ACC.AsString;
        s3 := cdsDHKInstructionMatchCBEST04_ACC.AsString;
      end
      else
      begin
        s2 := cdsDHKInstructionMatchCBEST04_ACC.AsString;
        s3 := cdsDHKInstructionMatchCBEST01_ACC.AsString;
      end;
      s4 := '';
      s5 := 'LOCAL';
      s6 := cdsDHKInstructionMatchSTOCKCODE.AsString;
      s7 := cdsDHKInstructionMatchQTY.AsString;
      s8 := FormatDateTime('YYYYMMDD', cdsDHKInstructionMatchSETTLEDATE.AsDateTime);
      s9 := cdsDHKInstructionMatchREMARKS.AsString;

      oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+s8+'|'+s9);

      cdsSettleInstr.Close;
      cdsSettleInstr.Params[0].AsInteger := cdsDHKInstructionMatchCUSTODY_INSTRID.AsInteger;
      cdsSettleInstr.Open;

      cdsDHKInstructionMatch.Next;
    end;

    oCBestList.SaveToFile(sFileName+'.txt');
    dmGlobal.IntDataCBest.GenerateCOL(sFileName+'.xls', oCBestList, 'COLW/COLDS', ACOLDS);

    cdsDHKInstructionMatch.Filtered := False;
    cdsDHKInstructionMatch.EnableControls;
    cdsDHKInstructionMatch.Refresh;

    pnlLoadingData.Visible := False;
    ShowMessage('Generate file has done');
    FreeAndNil(oCBestList);
  end;
end;

procedure TfrmDHK.GenerateDHKInstruction;
var
  iRes, sMsg: string;
begin
  iRes := dmGlobal.RemoteServer.GenerateDHKInstruction(dtDueDate.Date, sMsg);
  if iRes <> '1' then
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

function TfrmDHK.IsValidDateCheck(const AValue: String; out AResult: TDate): Boolean;
var
  dtTemp: TDateTime;
  dtDate : String;
  iYear, iMonth, iDay: Word;
  slDate: TStringList;
  sValue: String;
begin
  Result := False;
  AResult := MinDateTime;

  slDate := TStringList.Create;
  Try
    sValue := Trim(AValue);
    dmGlobal.ParseDelimited(slDate, sValue, '-');

    if slDate.Count = 3 then
    begin
      iDay := StrToIntDef(slDate.Strings[0], -1);

      if slDate.Strings[1] = 'Jan' then iMonth := 1
      else if slDate.Strings[1] = 'Feb' then iMonth := 2
      else if slDate.Strings[1] = 'Mar' then iMonth := 3
      else if slDate.Strings[1] = 'Apr' then iMonth := 4
      else if slDate.Strings[1] = 'May' then iMonth := 5
      else if slDate.Strings[1] = 'Jun' then iMonth := 6
      else if slDate.Strings[1] = 'Jul' then iMonth := 7
      else if slDate.Strings[1] = 'Aug' then iMonth := 8
      else if slDate.Strings[1] = 'Sep' then iMonth := 9
      else if slDate.Strings[1] = 'Oct' then iMonth := 10
      else if slDate.Strings[1] = 'Nov' then iMonth := 11
      else if slDate.Strings[1] = 'Dec' then iMonth := 12;

      iYear := StrToIntDef(slDate.Strings[2], -1);
      if (iYear < 100) And (iYear >= 0) then
        iYear := iYear + 2000;

      AResult := EncodeDate(iYear, iMonth, iDay);
      Result := True;
    end;
  Finally
    FreeAndNil(slDate);
  End;
end;

procedure TfrmDHK.actSettleExecute(Sender: TObject);
var
  sCustodyIstrID, sMessage: string;
  i: Integer;
begin
  inherited;
  sCustodyIstrID := '';

//  for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
//    sCustodyIstrID := sCustodyIstrID + gvwMaster.Controller.SelectedRows[i].Values[gvwDHKStockComparedCUSTODY_INSTRID.Index]+';';
//
//  sMessage := dmGlobal.RemoteServer.SettleOTCInstruction(sCustodyIstrID);
//  MessageDlg(sMessage, mtInformation, [mbOk], 0);
end;

procedure TfrmDHK.RefreshGrid;
var
  i: integer;
  TrdDateFile: Integer;
begin
  TrdDateFile := DateTimeToFileDate(dtDueDate.Date);

  pnlLoadingData.Caption := 'Loading Data...';
  pnlLoadingData.Visible := True;
  Cursor                 := crHourGlass;
  Application.ProcessMessages;

  cdsDHK.Close;
  cdsDHK.Params[0].AsDate := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsBoardDUESELLSTOCK.AsInteger);
  cdsDHK.Open;

  cdsDHKInstruction.Close;
  cdsDHKInstruction.Params[0].AsDate   := dtDueDate.Date;
  cdsDHKInstruction.Params[1].AsString := 'T';
  cdsDHKInstruction.Params[2].AsString := '0';
  cdsDHKInstruction.Open;

  cdsDHKInstructionUnMatch.Close;
  cdsDHKInstructionUnMatch.Params[0].AsDate := dtDueDate.Date;
  cdsDHKInstructionUnMatch.Open;

  cdsDHKInstructionMatch.Close;
  cdsDHKInstructionMatch.Params[0].AsDate := dtDueDate.Date;
  cdsDHKInstructionMatch.Open;


  pnlLoadingData.Visible := False;
  Cursor                 := crDefault;
end;

procedure TfrmDHK.UploadDHKFile(AFileName: string);
var
  oExcel, oSheet: OleVariant;
  iRows, iCols: Integer;
  oProgress: TfrmProgressBar;
  dtDHK, dtDue: TDate;
  i: Integer;
  sQry: string;
begin
//  try
//    oExcel := CreateOleObject('Excel.Application');
//    oExcel.DisplayAlerts := False;
//    oExcel.WorkBooks.Open(AFileName);
//
//    oSheet := oExcel.WorkBooks[1].WorkSheet[1];
//    iRows  := oSheet.UsedRange.Rows.Count;
//    iCols  := oSheet.UserRange.Cols.Count;
//
//    dtDHK := oSheet.Cells[2, 1].Value;
//    dtDue := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtDHK), 2);
//
//    sQry := 'delete from main.B_DHK Where [DAY] = :DAY';
//
//    oProgress := TfrmProgressBar.Create(nil);
//    oProgress.Show;
//
//    for i := 2 to iRows -1 do
//    begin
//      oProgress.ChangeBar(trunc(i / (iRows +2) * 100), 'Processing DHK Upload');
//
//    end;
//
//  finally
//    oExcel.Quit;
//
//    oExcel.Unassigned;
//    oSheet.Unassigned;
//
//    FreeAndNil(oProgress);
//  end;
end;

Initialization
  RegisterClass(TfrmDHK);

end.
