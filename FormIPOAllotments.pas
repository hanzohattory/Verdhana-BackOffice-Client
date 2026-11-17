unit FormIPOAllotments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, Data.DB, cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ActnList, NDatasetAction, FormIPOList,
  cxImageComboBox, cxCurrencyEdit, NReportClient, XLSSheetData5, XLSReadWriteII5,
  Datasnap.DBClient, NClientDataset, XLSValidate5, dxDateRanges,
  dxScrollbarAnnotations, System.Actions;

type
  TfrmIPOAllotments = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    txtAbsorbAmount: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dsSubject: TDataSource;
    dxLayoutControl1Group7: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsAllotment: TDataSource;
    gvwMasterALLOTMENTID: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterALLOTMENTCODE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterNETFEE_PCT: TcxGridDBBandedColumn;
    gvwMasterVAT_PCT: TcxGridDBBandedColumn;
    gvwMasterWHT_PCT: TcxGridDBBandedColumn;
    gvwMasterBFEE: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    gvwMasterNETAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCDBCRID: TcxGridDBBandedColumn;
    gvwMasterCOUTSTANDID: TcxGridDBBandedColumn;
    gvwMasterFPPS: TcxGridDBBandedColumn;
    gvwMasterDPPS: TcxGridDBBandedColumn;
    gvwMasterCOFSENT: TcxGridDBBandedColumn;
    gvwMasterCONFIRMED: TcxGridDBBandedColumn;
    gvwMasterCONFORIGIN: TcxGridDBBandedColumn;
    gvwMasterPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwMasterPOSTEDCUSTODY: TcxGridDBBandedColumn;
    gvwMasterIDCARD: TcxGridDBBandedColumn;
    gvwMasterQTYPROCESS: TcxGridDBBandedColumn;
    gvwMasterPEID: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterBOOKID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    aclAllotments: TActionList;
    actImportFromBook: TNAction;
    actNew: TNAction;
    actEdit: TNAction;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    actDelete: TNAction;
    actReload: TNAction;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutControl1Item25: TdxLayoutItem;
    btnReload: TcxButton;
    dxLayoutControl1Item26: TdxLayoutItem;
    actSetQtyProcess: TNAction;
    actSetRemark: TNAction;
    actSetFPPS: TNAction;
    actSetDPPS: TNAction;
    actViewConf: TNAction;
    popMaster: TPopupMenu;
    SetQtyProcess1: TMenuItem;
    SetRemarks1: TMenuItem;
    SetFPPS1: TMenuItem;
    SetDPPS1: TMenuItem;
    cxButton6: TcxButton;
    dxLayoutControl1Item27: TdxLayoutItem;
    actSendMail: TNAction;
    cxButton7: TcxButton;
    dxLayoutControl1Item28: TdxLayoutItem;
    actConfirmed: TNAction;
    Confirmed1: TMenuItem;
    gvwMasterALLOTMENTDATE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSTOCK_VOUCHERID: TcxGridDBBandedColumn;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterACCCODE_1: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    actPosting: TNAction;
    actDistribution: TNAction;
    Posting1: TMenuItem;
    Distribution1: TMenuItem;
    gvwMasterVOUCHERCREATED: TcxGridDBBandedColumn;
    gvwMasterDISTRIBUTION: TcxGridDBBandedColumn;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group18: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item31: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item32: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item34: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item35: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item36: TdxLayoutItem;
    ReportContainer: TNClientReportContainer;
    cxButton5: TcxButton;
    dxLayoutControl1Item33: TdxLayoutItem;
    actBondsInstruction: TNAction;
    XLS: TXLSReadWriteII5;
    SaveDlg: TSaveDialog;
    cdsGenerateBondInstruction: TNClientDataset;
    cdsGenerateBondInstructionALLOTMENTID: TIntegerField;
    cdsGenerateBondInstructionIPOID: TIntegerField;
    cdsGenerateBondInstructionALLOTMENTCODE: TStringField;
    cdsGenerateBondInstructionALLOTMENTDATE: TDateField;
    cdsGenerateBondInstructionACCID: TIntegerField;
    cdsGenerateBondInstructionACCCODE: TStringField;
    cdsGenerateBondInstructionQTY: TFloatField;
    cdsGenerateBondInstructionAMOUNT: TFloatField;
    cdsGenerateBondInstructionNETFEE_PCT: TFloatField;
    cdsGenerateBondInstructionVAT_PCT: TFloatField;
    cdsGenerateBondInstructionWHT_PCT: TFloatField;
    cdsGenerateBondInstructionBFEE: TFloatField;
    cdsGenerateBondInstructionVAT: TFloatField;
    cdsGenerateBondInstructionWHT: TFloatField;
    cdsGenerateBondInstructionNETAMOUNT: TFloatField;
    cdsGenerateBondInstructionCDBCRID: TStringField;
    cdsGenerateBondInstructionCOUTSTANDID: TStringField;
    cdsGenerateBondInstructionFPPS: TStringField;
    cdsGenerateBondInstructionDPPS: TStringField;
    cdsGenerateBondInstructionCOFSENT: TStringField;
    cdsGenerateBondInstructionCONFIRMED: TStringField;
    cdsGenerateBondInstructionCONFORIGIN: TStringField;
    cdsGenerateBondInstructionPOSTEDFINANCE: TStringField;
    cdsGenerateBondInstructionVOUCHERCREATED: TStringField;
    cdsGenerateBondInstructionPOSTEDCUSTODY: TStringField;
    cdsGenerateBondInstructionIDCARD: TStringField;
    cdsGenerateBondInstructionQTYPROCESS: TFloatField;
    cdsGenerateBondInstructionPEID: TStringField;
    cdsGenerateBondInstructionREMARK: TStringField;
    cdsGenerateBondInstructionBOOKID: TIntegerField;
    cdsGenerateBondInstructionDISTRIBUTION: TStringField;
    cdsGenerateBondInstructionSTATUS: TStringField;
    cdsGenerateBondInstructionCASH_VOUCHERID: TLargeintField;
    cdsGenerateBondInstructionSTOCK_VOUCHERID: TLargeintField;
    cdsGenerateBondInstructionSIID: TLargeintField;
    cdsGenerateBondInstructionIPO_PRODUCT: TStringField;
    cdsGenerateBondInstructionSCRIPNAME: TStringField;
    cdsGenerateBondInstructionDISTRIBUTIONDATE: TDateField;
    cdsGenerateBondInstructionREMARK1: TStringField;
    cdsGenerateBondInstructionCUSTODYCODE: TStringField;
    cdsGenerateBondInstructionCUSTODYACCNO: TStringField;
    cdsGenerateBondInstructionNAMAPENJAMIN: TStringField;
    cdsGenerateBondInstructionNOREKPENJAMIN: TStringField;
    cdsGenerateBondInstructionACCNAME: TStringField;
    gvwMasterALLOTMENT_GROUPID: TcxGridDBBandedColumn;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item37: TdxLayoutItem;
    dxLayoutControl1Group14: TdxLayoutGroup;
    cdsIPO: TNClientDataset;
    cdsIPOIPOID: TIntegerField;
    cdsIPOIPOCODE: TStringField;
    cdsIPOSCRIPCODE: TStringField;
    cdsIPOSCRIPNAME: TStringField;
    cdsIPOENTRYDATE: TDateField;
    cdsIPOIPODATE: TDateField;
    cdsIPOORDERFROMDATE: TDateField;
    cdsIPOORDERTODATE: TDateField;
    cdsIPONETFEE: TFloatField;
    cdsIPOVAT: TFloatField;
    cdsIPOWHT: TFloatField;
    cdsIPOCCY: TStringField;
    cdsIPOBOTPRICE: TFloatField;
    cdsIPOTOPPRICE: TFloatField;
    cdsIPOFIXEDPRICE: TFloatField;
    cdsIPOACCBANKID: TIntegerField;
    cdsIPOGUARANTEETYPE: TStringField;
    cdsIPOCONDATE: TDateField;
    cdsIPOREMARK1: TStringField;
    cdsIPOREMARK2: TStringField;
    cdsIPOSTATUS: TStringField;
    cdsIPOMODDA: TDateTimeField;
    cdsIPOMODUI: TStringField;
    cdsIPOAPPDA: TDateTimeField;
    cdsIPOAPPUI: TStringField;
    cdsIPOUNDER4Y: TIntegerField;
    cdsIPOUNDER4YDA: TDateTimeField;
    cdsIPONOTES4Y: TStringField;
    cdsIPOISDEL: TIntegerField;
    cdsIPOID: TLargeintField;
    cdsIPOCOMMITMENTAMT: TFloatField;
    cdsIPOABSORBAMT: TFloatField;
    cdsIPOBGAMT: TFloatField;
    cdsIPOHAIRCUT: TIntegerField;
    cdsIPOBAEID: TIntegerField;
    cdsIPODUEDATE: TDateField;
    cdsIPODISTRIBUTIONDATE: TDateField;
    cdsIPOLISTINGDATE: TDateField;
    cdsIPOREFUNDDATE: TDateField;
    cdsIPOISINCODE: TStringField;
    cdsIPOISINDATE: TDateTimeField;
    cdsIPOIS_CURRENT_INSTRUMENT: TStringField;
    cdsIPOINSTRUMENT_ID: TLargeintField;
    cdsIPOALLOTMENT_VOUCHER: TStringField;
    cdsIPOALLOTMENT_AMOUNT: TFloatField;
    cdsIPOALLOTMENT_SIID: TLargeintField;
    cdsIPOPOOLING_VOUCHER: TStringField;
    cdsIPOPOOLING_AMOUNT: TFloatField;
    cdsIPOPOOLING_SIID: TLargeintField;
    cdsIPOACCID: TIntegerField;
    cdsIPOACCCODE: TStringField;
    cdsIPOACCNAME: TStringField;
    cdsIPOACCNO: TStringField;
    cdsIPOIPO_TYPE: TStringField;
    cdsIPOIPO_PRODUCT: TStringField;
    cdsIPOCOUPON_RATE: TFloatField;
    cdsIPOMATURITYDATE: TDateField;
    cdsIPOCALCULATE_DAYS_METHOD: TIntegerField;
    cdsIPOCOUNTINGDAYS_METHOD: TIntegerField;
    cdsIPOISSUER_TYPE: TStringField;
    cdsIPOUSEGROUP: TStringField;
    cdsIPOGROUPID: TIntegerField;
    cdsIPOAllotmentByIPO: TNClientDataset;
    cdsIPOAllotmentByIPOALLOTMENTID: TIntegerField;
    cdsIPOAllotmentByIPOIPOID: TIntegerField;
    cdsIPOAllotmentByIPOALLOTMENTCODE: TStringField;
    cdsIPOAllotmentByIPOACCID: TIntegerField;
    cdsIPOAllotmentByIPOACCCODE: TStringField;
    cdsIPOAllotmentByIPOQTY: TFloatField;
    cdsIPOAllotmentByIPOAMOUNT: TFloatField;
    cdsIPOAllotmentByIPONETFEE_PCT: TFloatField;
    cdsIPOAllotmentByIPOVAT_PCT: TFloatField;
    cdsIPOAllotmentByIPOWHT_PCT: TFloatField;
    cdsIPOAllotmentByIPOBFEE: TFloatField;
    cdsIPOAllotmentByIPOVAT: TFloatField;
    cdsIPOAllotmentByIPOWHT: TFloatField;
    cdsIPOAllotmentByIPONETAMOUNT: TFloatField;
    cdsIPOAllotmentByIPOCDBCRID: TStringField;
    cdsIPOAllotmentByIPOCOUTSTANDID: TStringField;
    cdsIPOAllotmentByIPOFPPS: TStringField;
    cdsIPOAllotmentByIPODPPS: TStringField;
    cdsIPOAllotmentByIPOCOFSENT: TStringField;
    cdsIPOAllotmentByIPOCONFIRMED: TStringField;
    cdsIPOAllotmentByIPOCONFORIGIN: TStringField;
    cdsIPOAllotmentByIPOPOSTEDFINANCE: TStringField;
    cdsIPOAllotmentByIPOPOSTEDCUSTODY: TStringField;
    cdsIPOAllotmentByIPOIDCARD: TStringField;
    cdsIPOAllotmentByIPOQTYPROCESS: TFloatField;
    cdsIPOAllotmentByIPOPEID: TStringField;
    cdsIPOAllotmentByIPOREMARK: TStringField;
    cdsIPOAllotmentByIPOBOOKID: TIntegerField;
    cdsIPOAllotmentByIPOMODDA: TDateTimeField;
    cdsIPOAllotmentByIPOMODUI: TStringField;
    cdsIPOAllotmentByIPOAPPDA: TDateTimeField;
    cdsIPOAllotmentByIPOAPPUI: TStringField;
    cdsIPOAllotmentByIPOUNDER4Y: TIntegerField;
    cdsIPOAllotmentByIPOUNDER4YDA: TDateTimeField;
    cdsIPOAllotmentByIPONOTES4Y: TStringField;
    cdsIPOAllotmentByIPOISDEL: TIntegerField;
    cdsIPOAllotmentByIPOID: TLargeintField;
    cdsIPOAllotmentByIPOALLOTMENTDATE: TDateField;
    cdsIPOAllotmentByIPOSTATUS: TStringField;
    cdsIPOAllotmentByIPOCASH_VOUCHERID: TLargeintField;
    cdsIPOAllotmentByIPOSTOCK_VOUCHERID: TLargeintField;
    cdsIPOAllotmentByIPOSIID: TLargeintField;
    cdsIPOAllotmentByIPOACCCODE_1: TStringField;
    cdsIPOAllotmentByIPOACCNAME: TStringField;
    cdsIPOAllotmentByIPOACCINIT: TStringField;
    cdsIPOAllotmentByIPOVOUCHERCREATED: TStringField;
    cdsIPOAllotmentByIPODISTRIBUTION: TStringField;
    cdsIPOAllotmentByIPOALLOTMENT_GROUPID: TLargeintField;
    cdsIPOAllotment: TNClientDataset;
    cdsIPOAllotmentALLOTMENTID: TIntegerField;
    cdsIPOAllotmentIPOID: TIntegerField;
    cdsIPOAllotmentALLOTMENTCODE: TStringField;
    cdsIPOAllotmentACCID: TIntegerField;
    cdsIPOAllotmentACCCODE: TStringField;
    cdsIPOAllotmentQTY: TFloatField;
    cdsIPOAllotmentAMOUNT: TFloatField;
    cdsIPOAllotmentNETFEE_PCT: TFloatField;
    cdsIPOAllotmentVAT_PCT: TFloatField;
    cdsIPOAllotmentWHT_PCT: TFloatField;
    cdsIPOAllotmentBFEE: TFloatField;
    cdsIPOAllotmentVAT: TFloatField;
    cdsIPOAllotmentWHT: TFloatField;
    cdsIPOAllotmentNETAMOUNT: TFloatField;
    cdsIPOAllotmentCDBCRID: TStringField;
    cdsIPOAllotmentCOUTSTANDID: TStringField;
    cdsIPOAllotmentFPPS: TStringField;
    cdsIPOAllotmentDPPS: TStringField;
    cdsIPOAllotmentCOFSENT: TStringField;
    cdsIPOAllotmentCONFIRMED: TStringField;
    cdsIPOAllotmentCONFORIGIN: TStringField;
    cdsIPOAllotmentPOSTEDFINANCE: TStringField;
    cdsIPOAllotmentPOSTEDCUSTODY: TStringField;
    cdsIPOAllotmentIDCARD: TStringField;
    cdsIPOAllotmentQTYPROCESS: TFloatField;
    cdsIPOAllotmentPEID: TStringField;
    cdsIPOAllotmentREMARK: TStringField;
    cdsIPOAllotmentBOOKID: TIntegerField;
    cdsIPOAllotmentMODDA: TDateTimeField;
    cdsIPOAllotmentMODUI: TStringField;
    cdsIPOAllotmentAPPDA: TDateTimeField;
    cdsIPOAllotmentAPPUI: TStringField;
    cdsIPOAllotmentUNDER4Y: TIntegerField;
    cdsIPOAllotmentUNDER4YDA: TDateTimeField;
    cdsIPOAllotmentNOTES4Y: TStringField;
    cdsIPOAllotmentISDEL: TIntegerField;
    cdsIPOAllotmentID: TLargeintField;
    cdsIPOAllotmentACCNAME: TStringField;
    cdsIPOAllotmentALLOTMENTDATE: TDateField;
    cdsIPOAllotmentSTATUS: TStringField;
    cdsIPOAllotmentCASH_VOUCHERID: TLargeintField;
    cdsIPOAllotmentSTOCK_VOUCHERID: TLargeintField;
    cdsIPOAllotmentSIID: TLargeintField;
    cdsIPOAllotmentVOUCHERCREATED: TStringField;
    cdsIPOAllotmentDISTRIBUTION: TStringField;
    cdsIPOAllotmentPAYMENT: TStringField;
    cdsIPOAllotmentPAYMENTAMT: TFloatField;
    cdsIPOAllotmentALLOTMENT_GROUPID: TLargeintField;
    cdsIPOTMPNETFEE: TFloatField;
    cdsIPOTMPVAT: TFloatField;
    cdsIPOTMPWHT: TFloatField;
    actCancelAllotment: TNAction;
    actAmendAllotment: TNAction;
    actReverseAllotment: TNAction;
    N1: TMenuItem;
    AmendAllotment1: TMenuItem;
    ReverseAllotment1: TMenuItem;
    CancelAllotment1: TMenuItem;
    cdsIPOAllotmentByIPOPAYMENT: TStringField;
    cdsIPOAllotmentByIPOPAYMENTAMT: TFloatField;
    gvwMasterPAYMENT: TcxGridDBBandedColumn;
    gvwMasterPAYMENTAMT: TcxGridDBBandedColumn;
    actUploadAllotment: TNAction;
    cxButton8: TcxButton;
    dxLayoutControl1Item38: TdxLayoutItem;
    cdsIPOAllotmentByIPOEXTERNAL_TRANS: TStringField;
    cdsIPOAllotmentByIPOCUSTODY_CODE: TStringField;
    cdsIPOAllotmentByIPOSUBREK: TStringField;
    gvwMasterEXTERNAL_TRANS: TcxGridDBBandedColumn;
    gvwMasterCUSTODY_CODE: TcxGridDBBandedColumn;
    gvwMasterSUBREK: TcxGridDBBandedColumn;
    actUseExternal: TNAction;
    UseExternal1: TMenuItem;
    cdsIPOAllotmentEXTERNAL_TRANS: TStringField;
    cdsIPOAllotmentCUSTODY_CODE: TStringField;
    cdsIPOAllotmentSUBREK: TStringField;
    cdsIPOCOMMITMENTQTY: TLargeintField;
    cdsIPOABSORBQTY: TLargeintField;
    cdsIPOMNGMT_FEE: TFloatField;
    cdsIPOUNDERWT_FEE: TFloatField;
    procedure actReloadExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actImportFromBookExecute(Sender: TObject);
    procedure actSetQtyProcessExecute(Sender: TObject);
    procedure actSetRemarkExecute(Sender: TObject);
    procedure actSetFPPSExecute(Sender: TObject);
    procedure actSetDPPSExecute(Sender: TObject);
    procedure actViewConfExecute(Sender: TObject);
    procedure actSendMailExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actConfirmedExecute(Sender: TObject);
    procedure actNewUpdate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actDistributionExecute(Sender: TObject);
    procedure actBondsInstructionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsIPONewRecord(DataSet: TDataSet);
    procedure cdsIPOBeforePost(DataSet: TDataSet);
    procedure cdsIPOAllotmentNewRecord(DataSet: TDataSet);
    procedure cdsIPOAllotmentQTYPROCESSChange(Sender: TField);
    procedure cdsIPOAllotmentACCIDChange(Sender: TField);
    procedure cdsIPOAllotmentQTYChange(Sender: TField);
    procedure cdsIPOAllotmentByIPOAfterOpen(DataSet: TDataSet);
    procedure cdsIPOCOMMITMENTAMTChange(Sender: TField);
    procedure cdsIPOCOMMITMENTQTYChange(Sender: TField);
    procedure actCancelAllotmentExecute(Sender: TObject);
    procedure actReverseAllotmentExecute(Sender: TObject);
    procedure actReverseAllotmentUpdate(Sender: TObject);
    procedure actPostingUpdate(Sender: TObject);
    procedure actCancelAllotmentUpdate(Sender: TObject);
    procedure actAmendAllotmentUpdate(Sender: TObject);
    procedure actAmendAllotmentExecute(Sender: TObject);
    procedure actUploadAllotmentExecute(Sender: TObject);
    procedure actUseExternalExecute(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FReadOnly: Boolean;
    FGroupID: Integer;
    FIPOID: Integer;
    FTransDate: TDateTime;
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;
    property ReadOnly: Boolean read FReadOnly write FReadOnly;
    property GroupID: Integer read FGroupID write FGroupID;
    property IPOID: Integer read FIPOID write FIPOID;
  end;

var
  frmIPOAllotments: TfrmIPOAllotments;

implementation

{$R *.dfm}

uses DataGlobal, FormIPOAllotment, FormIPOAllotmentFromBook,
  FormReportTradeConfIPO, FormIPOAllotmentGroup, DataLookup,
  FormIPOAllotmentUpload, FormIPOAllotmentCustody;

procedure TfrmIPOAllotments.actAmendAllotmentExecute(Sender: TObject);
var
  sMsg: string;
  oForm: TfrmIPOAllotment;
begin
  if MessageDlg('Amend Allotment ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cdsIPOAllotment.Close;
  cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
  cdsIPOAllotment.Open;
  cdsIPOAllotment.Edit;

  oForm := TfrmIPOAllotment.Create(nil);
  TfrmIPOAllotment(oForm).Amend := True;
  if oForm.ShowModal = mrOk then
  begin
    dmGlobal.RemoteServer.AllotmentAmend(cdsIPOAllotmentACCID.AsLargeInt, cdsIPOAllotmentByIPOALLOTMENTID.AsLargeInt, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);

  end;

  cdsIPOAllotment.Cancel;
  FreeAndNil(oForm);
  cdsIPOAllotmentByIPO.Refresh;
end;

procedure TfrmIPOAllotments.actAmendAllotmentUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (cdsIPOAllotmentByIPOPOSTEDFINANCE.AsString = '1');
end;

procedure TfrmIPOAllotments.actBondsInstructionExecute(Sender: TObject);
var
  i, RecIdx, LastRow: Integer;
  oSheet: TXLSWorkSheet;
  sFileName: string;
  iRow: Integer;
  fSumQty: Double;
  oValidation: TXLSDataValidation;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;

    if sFileName = '' then
      Exit;

    cdsGenerateBondInstruction.Close;
    cdsGenerateBondInstruction.Params[0].AsInteger := dsSubject.DataSet.FieldByName('IPOID').AsInteger;
    cdsGenerateBondInstruction.Open;

    XLS.Filename := sFileName;
    oSheet       := XLS.Sheets[0];
    oSheet.Clear;

    oSheet.AsString[1, 1] := 'Nama Efek';
    oSheet.AsString[3, 1] := ':'+ cdsGenerateBondInstructionSCRIPNAME.AsString;
    oSheet.AsString[1, 2] := 'Kode Efek';
    oSheet.AsString[3, 2] := ':'+ cdsGenerateBondInstructionIPO_PRODUCT.AsString;
    oSheet.AsString[1, 4] := 'Nama Penjamin Emisi';
    oSheet.AsString[3, 4] := ':'+ cdsGenerateBondInstructionNAMAPENJAMIN.AsString;
    oSheet.AsString[1, 5] := 'Nomer Rekening Efek Penjamin Emisi';
    oSheet.AsString[3, 5] := ':'+ cdsGenerateBondInstructionNOREKPENJAMIN.AsString;

    oSheet.AsString[1, 7] := 'External Reference';
    oSheet.AsString[2, 7] := 'Pacipant Code';
    oSheet.AsString[3, 7] := 'Parcipant Account';
    oSheet.AsString[4, 7] := 'Counterpart Code';
    oSheet.AsString[5, 7] := 'Security Code';
    oSheet.AsString[6, 7] := 'Number Of Securities';
    oSheet.AsString[7, 7] := 'Settlement date';
    oSheet.AsString[8, 7] := 'Description';

    iRow    := 7;
    fSumQty := 0;
    if not cdsGenerateBondInstruction.IsEmpty then
    begin
      while not cdsGenerateBondInstruction.Eof do
      begin
        Inc(iRow);

        oSheet.AsString[1, iRow] := cdsGenerateBondInstructionALLOTMENTCODE.AsString;
        oSheet.AsString[2, iRow] := cdsGenerateBondInstructionCUSTODYCODE.AsString;
        oSheet.AsString[3, iRow] := cdsGenerateBondInstructionCUSTODYACCNO.AsString;
        oSheet.AsString[4, iRow] := 'REG01';
        oSheet.AsString[5, iRow] := cdsGenerateBondInstructionSCRIPNAME.AsString;
        oSheet.AsFloat[6, iRow]  := cdsGenerateBondInstructionQTYPROCESS.AsFloat;
        oSheet.AsFloat[7, iRow]  := StrToFloat(FormatDateTime('yyyymmdd', cdsGenerateBondInstructionDISTRIBUTIONDATE.AsDateTime));
        oSheet.AsString[8, iRow] := cdsGenerateBondInstructionACCNAME.AsString;

        fSumQty := fSumQty + cdsGenerateBondInstructionQTYPROCESS.AsFloat;

        cdsGenerateBondInstruction.Next;
      end;
      oSheet.AsFloat[6, iRow+1] := fSumQty;
    end;

    XLS.Write;
    MessageDlg('File has been generate...', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOAllotments.actCancelAllotmentExecute(Sender: TObject);
var
  i: Integer;
  iAllotmentID: Integer;
begin
  if MessageDlg('Cancel Allotment ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    iAllotmentID := StrToInt(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterALLOTMENTID.Index]);

    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := iAllotmentID;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      cdsIPOAllotment.Edit;
      cdsIPOAllotmentSTATUS.AsString := 'C';
      cdsIPOAllotment.Post;

      cdsIPOAllotment.ApplyUpdates(-1);
    end;
  end;
end;

procedure TfrmIPOAllotments.actCancelAllotmentUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := cdsIPOAllotmentByIPOPOSTEDFINANCE.AsString <> '1';
end;

procedure TfrmIPOAllotments.actConfirmedExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to confirm multiple IPO Allotments?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (dsAllotment.DataSet.FieldByName('CONFIRMED').AsString <> '1') then
          dmGlobal.RemoteServer.ConfirmIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger);
      end;

      actReload.Execute;
      ShowMessage('Allotment comfirmed successfully');
    end;
  end
  else
  begin
    if dmGlobal.RemoteServer.ConfirmIPOAllotment(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger) then
    begin
      actReload.Execute;
      ShowMessage('Allotment comfirmed successfully');
    end;
  end;
end;

procedure TfrmIPOAllotments.actDeleteExecute(Sender: TObject);
var
  fDeleteAmount: Double;
  fDeleteQty: Double;
begin
  if MessageDlg('Are you sure to delete this record?', mtConfirmation, mbYesNo,
     0) = mrYes then
  begin
//    with FFormBrowse do
//    begin
      cdsIPOAllotment.Close;
      cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
      cdsIPOAllotment.Open;

      if not cdsIPOAllotment.IsEmpty then
      begin
        if (cdsIPOAllotmentCONFIRMED.AsString = '1') then
        begin
          MessageDlg('This allotment have been confirmed.' + #13#10
            + 'You can''t delete this data!', mtInformation, [mbOK], -1);
          Exit;
        end;

        fDeleteQty := cdsIPOAllotmentQTY.AsFloat;
        fDeleteAmount := cdsIPOAllotmentAMOUNT.AsFloat;

        cdsIPOAllotment.Delete;
        cdsIPOAllotment.ApplyUpdates(-1);

        cdsIPO.Close;
        cdsIPO.Open;

        cdsIPO.Edit;
        cdsIPOABSORBQTY.AsFloat := cdsIPOABSORBQTY.AsFloat - fDeleteQty;
        cdsIPOABSORBAMT.AsFloat := cdsIPOABSORBAMT.AsFloat - fDeleteAmount;
        cdsIPO.Post;
        cdsIPO.ApplyUpdates(-1);

        dsAllotment.DataSet.Refresh;
      end;
    end;
//  end;

end;

procedure TfrmIPOAllotments.actDistributionExecute(Sender: TObject);
var
  sMsg, sTemp: String;
  i, iFail: Integer;
  sResult: Boolean;
begin
  inherited;
  dsAllotment.DataSet.DisableControls;

  sMsg  := '';
  iFail := 0;
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    dmGlobal.RemoteServer.DistributionIPOFixAllotment(StrToInt64(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterALLOTMENTID.Index]), sTemp);
    sMsg := sMsg + sTemp + #13;
  end;

  MessageDlg(sMsg, mtInformation, [mbOk], 0);
  dsAllotment.DataSet.EnableControls;
end;

procedure TfrmIPOAllotments.actEditExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotment;
  OldAmount: Double;
  OldQty: Double;
begin
//  with FFormBrowse do
//  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

//    if (cdsIPOAllotmentCONFIRMED.AsString = '1') then
//    begin
//      MessageDlg('This allotment have been confirmed.' + #13#10
//        + 'You can''t change this data!', mtInformation, [mbOK], -1);
//      Exit;
//    end;

    oForm := TfrmIPOAllotment.Create(nil);
    Try
      OldQty := cdsIPOAllotmentQTY.AsFloat;
      OldAmount := cdsIPOAllotmentAMOUNT.AsFloat;
      cdsIPOAllotment.Edit;
      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOAllotment.State in dsEditModes then
        begin
          cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
          cdsIPOAllotment.Post;
        end;

        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
        begin
          cdsIPO.Close;
          cdsIPO.Open;

          cdsIPO.Edit;
          cdsIPOABSORBQTY.AsFloat := cdsIPOABSORBQTY.AsInteger - OldQty + cdsIPOAllotmentQTY.AsFloat;
          cdsIPOABSORBAMT.AsFloat := cdsIPOABSORBAMT.AsFloat - OldAmount + cdsIPOAllotmentAMOUNT.AsFloat;
          cdsIPO.Post;
          cdsIPO.ApplyUpdates(-1);

          cdsIPOAllotmentByIPO.Close;
          cdsIPOAllotmentByIPO.Open;
        end;

      end
      else
      begin
        cdsIPOAllotment.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

//  end;
end;

procedure TfrmIPOAllotments.actEditUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (not ReadOnly) //and (dsAllotment.DataSet.FieldByName('CONFIRMED').AsString <> '1');
end;

procedure TfrmIPOAllotments.actImportFromBookExecute(Sender: TObject);
begin
  if frmIPOAllotmentFromBook.Run(FFormBrowse.cdsIPOIPOID.AsInteger, FFormBrowse) = mrOk then
  begin
    btnReload.Click;
  end;
end;

procedure TfrmIPOAllotments.actNewExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotment;
  iID, iCode: Integer;
  sCodeSeq: String;
  bCon: Boolean;
begin
//  with FFormBrowse do
//  begin
    bCon := True;

    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := -1;
    cdsIPOAllotment.Open;

    oForm := TfrmIPOAllotment.Create(nil);
    Try
      iID := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO_ALLOTMENT');
      sCodeSeq := 'Allotment' + cdsIPOIPOCODE.AsString;
      iCode := dmGlobal.RemoteServer.GetSeq(sCodeSeq);

      cdsIPOAllotment.Append;
      cdsIPOAllotmentALLOTMENTID.AsInteger := iID;
      cdsIPOAllotmentALLOTMENTCODE.AsString := cdsIPOIPOCODE.AsString + '-F' + Format('%.5d', [iCode]);
      cdsIPOAllotmentIPOID.AsInteger    := cdsIPOIPOID.AsInteger;
      cdsIPOAllotmentQTY.AsFloat        := 0;
      cdsIPOAllotmentNETFEE_PCT.AsFloat := cdsIPOTMPNETFEE.AsFloat;
      cdsIPOAllotmentVAT_PCT.AsFloat    := cdsIPOTMPVAT.AsFloat;
      cdsIPOAllotmentWHT_PCT.AsFloat    := cdsIPOTMPWHT.AsFloat;
      cdsIPOAllotmentSTATUS.AsString    := 'O';

      oForm.FormBrowse := FFormBrowse;
      if oForm.ShowModal = mrOK then
      begin
        if cdsIPOAllotment.State in dsEditModes then
        begin
          cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
          cdsIPOAllotmentALLOTMENT_GROUPID.AsInteger := FGroupID;
          cdsIPOAllotment.Post;

          cdsIPO.Edit;
          cdsIPOABSORBQTY.AsFloat := cdsIPOABSORBQTY.AsFloat + cdsIPOAllotmentQTY.AsFloat;
          cdsIPOABSORBAMT.AsFloat := cdsIPOABSORBAMT.AsFloat + cdsIPOAllotmentAMOUNT.AsFloat;
          cdsIPO.Post;
          cdsIPO.ApplyUpdates(-1);

//          if cdsIPOABSORBAMT.AsFloat > cdsIPOCOMMITMENTAMT.AsFloat then
//          begin
//            MessageDlg('Absorb amount can not higher than commitment amount!', mtError, [mbOk], 0);
//            bCon := False;
//          end;
        end;

        if bCon then
        begin
          if cdsIPOAllotment.ApplyUpdates(0) = 0 then
          begin
//            cdsIPO.ApplyUpdates(-1);

            cdsIPOAllotmentByIPO.Close;
            cdsIPOAllotmentByIPO.Open;
          end;
        end
        else
        begin
          dmGlobal.RemoteServer.CancelSeq('TBL_B_IPO_ALLOTMENT', iID);
          dmGlobal.RemoteServer.CancelSeq(sCodeSeq, iCode);

          cdsIPOAllotment.CancelUpdates;
          cdsIPO.CancelUpdates;
        end;

      end
      else
      begin
        dmGlobal.RemoteServer.CancelSeq('TBL_B_IPO_ALLOTMENT', iID);
        dmGlobal.RemoteServer.CancelSeq(sCodeSeq, iCode);

        cdsIPOAllotment.CancelUpdates;
      end;

    Finally
      FreeAndNil(oForm);
    End;

    actReload.Execute;
//  end;
end;

procedure TfrmIPOAllotments.actNewUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not ReadOnly;
end;

procedure TfrmIPOAllotments.actPostingExecute(Sender: TObject);
var
  sMsg: String;
  i, iFail: Integer;
  sResult: Boolean;
  sFailMsg: string;
begin
  inherited;
  dsAllotment.DataSet.DisableControls;

  sFailMsg := '';
  iFail    := 0;
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    sResult := dmGlobal.RemoteServer.PostingIPOAllotment(StrToInt64(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterALLOTMENTID.Index]), sMsg);
    if not sResult then
    begin
      Inc(iFail);
      sFailMsg := sFailMsg + IntToStr(iFail) + '. '
        + gvwMaster.Controller.SelectedRows[i].Values[gvwMasterALLOTMENTCODE.Index]
        + ' : ' + sMsg + #13;
    end;
  end;

  actReload.Execute;

  if iFail > 0 then
    MessageDlg('There is ' + IntToStr(iFail) + ' data fail when process posting'
      + #13 + sFailMsg, mtInformation, [mbOk], 0)
  else
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  dsAllotment.DataSet.EnableControls;
end;

procedure TfrmIPOAllotments.actPostingUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := cdsIPOAllotmentByIPOPOSTEDFINANCE.AsString <> '1';
end;

procedure TfrmIPOAllotments.actReloadExecute(Sender: TObject);
var
  AllotmentID: Integer;
begin
  AllotmentID := -1;
  if dsAllotment.DataSet.Active then
    AllotmentID := dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger;

  cdsIPOAllotmentByIPO.Refresh;
  cdsIPO.Refresh;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuIPOAllotmentGroup.IsEmpty then
    begin
      cdsIPO.Edit;
      cdsIPOGROUPID.AsInteger := FGroupID;
      cdsIPOTMPNETFEE.AsFloat := cdsLuIPOAllotmentGroupNETFEE.AsFloat;
      cdsIPOTMPVAT.AsFloat    := cdsLuIPOAllotmentGroupVAT.AsFloat;
      cdsIPOTMPWHT.AsFloat    := cdsLuIPOAllotmentGroupWHT.AsFloat;
      cdsIPO.Post;
    end
    else
    begin
      cdsIPO.Edit;
      cdsIPOTMPNETFEE.AsFloat := cdsIPONETFEE.AsFloat;
      cdsIPOTMPVAT.AsFloat    := cdsIPOVAT.AsFloat;
      cdsIPOTMPWHT.AsFloat    := cdsIPOWHT.AsFloat;
      cdsIPO.Post;
    end;
  end;
end;

procedure TfrmIPOAllotments.actReverseAllotmentExecute(Sender: TObject);
var
  i: Integer;
  iAllotmentID: Int64;
  x, v: Integer;
  sMsg, sTmpMsg, sResMsg: string;
begin
  if MessageDlg('Reverse Allotment ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  x := 0;
  v := 0;

  sTmpMsg := '';
  sResMsg := '';

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    iAllotmentID := StrToInt64Def(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterALLOTMENTID.Index], 0);

    if dmGlobal.RemoteServer.AllotmentReverse(iAllotmentID, sMsg) then
      Inc(v)
    else
    begin
      Inc (x);

      if sMsg <> sResMsg then
      begin
        sTmpMsg := sMsg;
        sResMsg := sResMsg + sTmpMsg + #13
      end;
    end;
  end;

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    sMsg := IntToStr(v) + ' Allotment reversed and ' + IntToStr(x) + ' Cancel to reversed';

    if x <> 0 then
      sMsg := sMsg + #13 + 'Cancel Message : ' + #13 + sResMsg;
  end;

  cdsIPOAllotmentByIPO.Refresh;
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmIPOAllotments.actReverseAllotmentUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (cdsIPOAllotmentByIPOPOSTEDFINANCE.AsString = '1') and (cdsIPOORDERTODATE.AsDateTime >= FTransDate);
end;

procedure TfrmIPOAllotments.actSendMailExecute(Sender: TObject);
begin
  ShowMessage(dmGlobal.RemoteServer.SendIPOContractByMail(
     dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger));
end;

procedure TfrmIPOAllotments.actSetDPPSExecute(Sender: TObject);
var
  i, AllotmentID: Integer;
  sDPPS: String;
begin
  sDPPS := InputBox('Set DPPS', 'DPPS No ', '');

  if Trim(sDPPS) = '' then
    Exit;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    AllotmentID := StrToInt(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterALLOTMENTID.Index]);

//    with FFormBrowse do
//    begin
      cdsIPOAllotment.Close;
      cdsIPOAllotment.Params[0].AsInteger := AllotmentID;
      cdsIPOAllotment.Open;

      if not cdsIPOAllotment.IsEmpty then
      begin
        Try
          cdsIPOAllotment.Edit;
          cdsIPOAllotmentDPPS.AsString := sDPPS;
          cdsIPOAllotment.Post;

          cdsIPOAllotment.ApplyUpdates(-1);
        Except
          on E: Exception do
          begin
            MessageDlg(E.Message, mtError, [mbOK], 0);
          end;
        End;
      end;
//    end;

  end;

  cdsIPOAllotmentByIPO.Refresh;
end;

procedure TfrmIPOAllotments.actSetFPPSExecute(Sender: TObject);
begin
//  with FFormBrowse do
//  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      Try
        cdsIPOAllotment.Edit;
        cdsIPOAllotmentFPPS.AsString := InputBox('Set FPPS', 'FPPS No ', cdsIPOAllotmentFPPS.AsString);
        cdsIPOAllotment.Post;
        cdsIPOAllotment.ApplyUpdates(-1);

        cdsIPOAllotmentByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
//  end;
end;

procedure TfrmIPOAllotments.actSetQtyProcessExecute(Sender: TObject);
begin
  with FFormBrowse do
  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      Try
        cdsIPOAllotment.Edit;
        cdsIPOAllotmentQTYPROCESS.AsFloat := StrToFloat(InputBox('Set Qty ' +
           'Process', 'Qty Process', cdsIPOAllotmentQTYPROCESS.AsString));
        cdsIPOAllotment.Post;
        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
          cdsIPOAllotmentByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
  end;
end;

procedure TfrmIPOAllotments.actSetRemarkExecute(Sender: TObject);
begin
//  with FFormBrowse do
//  begin
    cdsIPOAllotment.Close;
    cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
    cdsIPOAllotment.Open;

    if not cdsIPOAllotment.IsEmpty then
    begin
      Try
        cdsIPOAllotment.Edit;
        cdsIPOAllotmentREMARK.AsString := InputBox('Set Remark', 'Remark ',
           cdsIPOAllotmentREMARK.AsString);
        cdsIPOAllotment.Post;
        if cdsIPOAllotment.ApplyUpdates(-1) = 0 then
          cdsIPOAllotmentByIPO.Refresh;
      Except
        on E: Exception do
        begin
          MessageDlg(E.Message, mtError, [mbOK], 0);
        end;
      End;
    end;
//  end;
end;

procedure TfrmIPOAllotments.actUploadAllotmentExecute(Sender: TObject);
var
  oForm : TfrmIPOAllotmentUpload;
begin
  try
    oForm := TfrmIPOAllotmentUpload.Create(nil);
    TfrmIPOAllotmentUpload(oForm).IPOID   := FIPOID;
    TfrmIPOAllotmentUpload(oForm).GroupID := FGroupID;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOAllotments.actUseExternalExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotmentCustody;
begin
  oForm := TfrmIPOAllotmentCustody.Create(nil);

  cdsIPOAllotment.Close;
  cdsIPOAllotment.Params[0].AsInteger := cdsIPOAllotmentByIPOALLOTMENTID.AsInteger;
  cdsIPOAllotment.Open;

  if not cdsIPOAllotment.IsEmpty then
  begin
    cdsIPOAllotment.Edit;
    if oForm.ShowModal = mrOk then
    begin
      if cdsIPOAllotmentEXTERNAL_TRANS.AsString <> '1' then
      begin
        cdsIPOAllotmentSUBREK.AsString       := '';
        cdsIPOAllotmentCUSTODY_CODE.AsString := '';
      end;

      cdsIPOAllotment.Post;
      cdsIPOAllotment.ApplyUpdates(-1);

      cdsIPOAllotmentByIPO.Refresh;
    end
    else
      cdsIPOAllotment.Cancel;
  end;

  FreeAndNil(oForm);
end;

procedure TfrmIPOAllotments.actViewConfExecute(Sender: TObject);
begin
  if dsSubject.DataSet.FieldByName('IPO_TYPE').AsString = 'B' then
  begin
    ReportContainer.Params[0].AsInteger := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterIPOID.Index], 0);
    ReportContainer.Params[1].AsInteger := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterALLOTMENTID.Index], 0);
    ReportContainer.PreviewReport;
  end
  else
    frmReportTradeConfIPO.Run(dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger);
end;

procedure TfrmIPOAllotments.cdsIPOAllotmentACCIDChange(Sender: TField);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', Sender.Value, []) then
      cdsIPOAllotmentACCCODE.AsString := cdsLuAccountACCCODE.AsString
  end;
end;

procedure TfrmIPOAllotments.cdsIPOAllotmentByIPOAfterOpen(DataSet: TDataSet);
begin
  cdsIPOAllotmentByIPO.Filter   := 'ALLOTMENT_GROUPID = '+ IntToStr(FGroupID);
  cdsIPOAllotmentByIPO.Filtered := True;
end;

procedure TfrmIPOAllotments.cdsIPOAllotmentNewRecord(DataSet: TDataSet);
begin
  cdsIPOAllotmentALLOTMENTDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsIPOAllotmentPOSTEDFINANCE.AsString := '0';
  cdsIPOAllotmentVOUCHERCREATED.AsString := '0';
  cdsIPOAllotmentCONFIRMED.AsString := '0';
end;

procedure TfrmIPOAllotments.cdsIPOAllotmentQTYChange(Sender: TField);
begin
  cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
end;

procedure TfrmIPOAllotments.cdsIPOAllotmentQTYPROCESSChange(Sender: TField);
var
  NetFee: Double;
begin
  inherited;
  cdsIPOAllotmentAMOUNT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOAllotmentQTYPROCESS.AsFloat;
  NetFee := cdsIPOAllotmentNETFEE_PCT.AsFloat * cdsIPOAllotmentAMOUNT.AsFloat / 100;
  cdsIPOAllotmentBFEE.AsFloat := dmGlobal.RoundFloatNumber(NetFee * 100 / (100 + cdsIPOAllotmentVAT_PCT.AsFloat), 2);
  cdsIPOAllotmentVAT.AsFloat  := dmGlobal.RoundFloatNumber(cdsIPOAllotmentVAT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2);

  if (dmGlobal.RemoteServer.CheckAccountChargeUsed(cdsIPOAllotmentACCID.AsInteger, 'IDX', 'CHG9') = '1') then
    cdsIPOAllotmentWHT.AsFloat := dmGlobal.RoundFloatNumber(cdsIPOAllotmentWHT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2)
  else
    cdsIPOAllotmentWHT.AsFloat := 0;

  cdsIPOAllotmentNETAMOUNT.AsFloat := cdsIPOAllotmentAMOUNT.AsFloat +
    cdsIPOAllotmentBFEE.AsFloat + cdsIPOAllotmentVAT.AsFloat - cdsIPOAllotmentWHT.AsFloat;
end;

procedure TfrmIPOAllotments.cdsIPOBeforePost(DataSet: TDataSet);
begin
  if cdsIPOIPOID.AsInteger = -1 then
  begin
    cdsIPOIPOID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO');
  end;

  if cdsIPOIPOCODE.AsString = '<AUTO>' then
  begin
    cdsIPOIPOCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsIPOENTRYDATE.AsDateTime,
      'PO', 'TBL_B_IPO');
  end;
end;

procedure TfrmIPOAllotments.cdsIPOCOMMITMENTAMTChange(Sender: TField);
begin
  cdsIPOBGAMT.AsFloat := cdsIPOCOMMITMENTAMT.AsFloat * 0.25;
end;

procedure TfrmIPOAllotments.cdsIPOCOMMITMENTQTYChange(Sender: TField);
begin
  cdsIPOCOMMITMENTAMT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOCOMMITMENTQTY.AsFloat;
end;

procedure TfrmIPOAllotments.cdsIPONewRecord(DataSet: TDataSet);
begin
  cdsIPOIPOID.AsInteger := -1;
  cdsIPOIPOCODE.AsString := '<AUTO>';
  cdsIPOENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsIPOIPODATE.AsDateTime := cdsIPOENTRYDATE.AsDateTime;
  cdsIPOSTATUS.AsString := 'O';
  cdsIPOIS_CURRENT_INSTRUMENT.AsString := '0';
  cdsIPONETFEE.AsFloat := 1;
  cdsIPOCOMMITMENTQTY.AsFloat := 0;
  cdsIPOABSORBQTY.AsFloat := 0;
  cdsIPOABSORBAMT.AsFloat := 0;
  cdsIPOVAT.AsFloat := 10;
  cdsIPOWHT.AsFloat := 2;

  cdsIPOISSUER_TYPE.AsString := 'C';
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuMarket.Locate('MARKETCODE', dmGlobal.RemoteServer.GetDefaultMarket, []) then
    begin
      cdsIPOVAT.AsFloat := cdsLuMarketVATPCT.AsFloat;
      cdsIPOWHT.AsFloat := cdsLuMarketWHTPCT.AsFloat;
    end;
  end;
end;

procedure TfrmIPOAllotments.FormShow(Sender: TObject);
begin
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := FIPOID;
  cdsIPO.Open;

  if cdsIPOIPO_TYPE.AsString = 'B' then
    txtAbsorbAmount.Properties.AssignedValues.ReadOnly := False
  else
    txtAbsorbAmount.Properties.AssignedValues.ReadOnly := True;

  cdsIPOAllotmentByIPO.Close;
  cdsIPOAllotmentByIPO.Params[0].AsInteger := FIPOID;
  cdsIPOAllotmentByIPO.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuIPOAllotmentGroup.Close;
    cdsLuIPOAllotmentGroup.Params[0].AsInteger := dsSubject.DataSet.FieldByName('IPOID').AsInteger;
    cdsLuIPOAllotmentGroup.Open;

    if not cdsLuIPOAllotmentGroup.IsEmpty then
    begin
      cdsLuIPOAllotmentGroup.Locate('ALLOTMENT_GROUPID', FGroupID, []);

      cdsIPO.Edit;
      cdsIPOTMPNETFEE.AsFloat := cdsLuIPOAllotmentGroupNETFEE.AsFloat;
      cdsIPOTMPVAT.AsFloat    := cdsLuIPOAllotmentGroupVAT.AsFloat;
      cdsIPOTMPWHT.AsFloat    := cdsLuIPOAllotmentGroupWHT.AsFloat;
      cdsIPO.Post;
    end
    else
    begin
      cdsIPO.Edit;
      cdsIPOTMPNETFEE.AsFloat := cdsIPONETFEE.AsFloat;
      cdsIPOTMPVAT.AsFloat    := cdsIPOVAT.AsFloat;
      cdsIPOTMPWHT.AsFloat    := cdsIPOWHT.AsFloat;
      cdsIPO.Post;
    end;

    dsSubject.DataSet.Edit;
    dsSubject.DataSet.FieldByName('GROUPID').AsInteger := FGroupID;
    dsSubject.DataSet.Post;
  end;
end;

end.
