unit FormCashPayment;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, Datasnap.DBClient, NClientDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxTextEdit, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox, cxCurrencyEdit,
  StrUtils, Vcl.Grids, Vcl.DBGrids, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCashPayment = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsSICashOutstanding: TDataSource;
    cdsSICashOutstanding: TNClientDataset;
    cdsSICashOutstandingSIID: TLargeintField;
    cdsSICashOutstandingSINO: TStringField;
    cdsSICashOutstandingENTRYDATE: TDateField;
    cdsSICashOutstandingVALUEDATE: TDateField;
    cdsSICashOutstandingSITYPE: TStringField;
    cdsSICashOutstandingCASH_STOCK: TStringField;
    cdsSICashOutstandingSETTLE_SIDE: TStringField;
    cdsSICashOutstandingINSTRUCTION_TYPE: TStringField;
    cdsSICashOutstandingNETTYPE: TStringField;
    cdsSICashOutstandingACCOUNT_SID: TStringField;
    cdsSICashOutstandingACCID: TLargeintField;
    cdsSICashOutstandingACCNO: TStringField;
    cdsSICashOutstandingACCNAME: TStringField;
    cdsSICashOutstandingTRANSFER_MODE: TStringField;
    cdsSICashOutstandingBASE_CCYCODE: TStringField;
    cdsSICashOutstandingBASE_NETAMT: TFloatField;
    cdsSICashOutstandingBANK_CHARGES: TFloatField;
    cdsSICashOutstandingSETTLE_CCYCODE: TStringField;
    cdsSICashOutstandingSETTLE_EXRATE: TFloatField;
    cdsSICashOutstandingSETTLE_NETAMT: TFloatField;
    cdsSICashOutstandingSETTLED_AMT: TFloatField;
    cdsSICashOutstandingSTOCKID: TIntegerField;
    cdsSICashOutstandingSTOCKCODE: TStringField;
    cdsSICashOutstandingQTY: TFloatField;
    cdsSICashOutstandingTRDDATE: TDateField;
    cdsSICashOutstandingDUEDATE: TDateField;
    cdsSICashOutstandingSETTLEDDATE: TDateField;
    cdsSICashOutstandingSI_DESC: TStringField;
    cdsSICashOutstandingSTAT: TStringField;
    cdsSICashOutstandingOLD_SIID: TLargeintField;
    cdsSICashOutstandingVOUCHERAMT: TFloatField;
    cdsSICashOutstandingVOUCHERQTY: TFloatField;
    cdsSICashOutstandingNO_INTRC: TStringField;
    cdsSICashOutstandingKSEI_RECON: TStringField;
    cdsSICashOutstandingSETTLED_QTY: TFloatField;
    cdsSICashOutstandingTRF_PRVT_BANK: TStringField;
    cdsSICashOutstandingACCSOPID: TLargeintField;
    cdsSICashOutstandingUSE_ACS: TStringField;
    cdsSICashOutstandingCP_ACCBANKID: TIntegerField;
    cdsSICashOutstandingCP_BANKCODE: TStringField;
    cdsSICashOutstandingCP_BANKACCNO: TStringField;
    cdsSICashOutstandingSOURCE_ACCBANKID: TLargeintField;
    cdsSICashOutstandingSOURCE_ACCBANKCODE: TStringField;
    cdsSICashOutstandingSOURCE_ACCBANKNO: TStringField;
    cdsSICashOutstandingSOURCE_ACCBANKNAME: TStringField;
    cdsSICashOutstandingTARGET_ACCBANKID: TLargeintField;
    cdsSICashOutstandingTARGET_ACCBANKCODE: TStringField;
    cdsSICashOutstandingTARGET_ACCBANKNO: TStringField;
    cdsSICashOutstandingTARGET_ACCBANKNAME: TStringField;
    cdsSICashOutstandingCONFIRM_BY: TStringField;
    cdsSICashOutstandingCREATE_FILE: TStringField;
    cdsSICashOutstandingCOUNT_CREATE_FILE: TIntegerField;
    cdsSICashOutstandingCBEST_UPLOAD: TStringField;
    cdsSICashOutstandingPURPOSE: TStringField;
    cdsSICashOutstandingTRADE_REF: TStringField;
    cdsSICashOutstandingSETTLE_REASON: TStringField;
    cdsSICashOutstandingREMARKS: TStringField;
    cdsSICashOutstandingSIID_NEW: TLargeintField;
    cdsSICashOutstandingMODDA: TDateTimeField;
    cdsSICashOutstandingMODUI: TStringField;
    cdsSICashOutstandingAPPDA: TDateTimeField;
    cdsSICashOutstandingAPPUI: TStringField;
    cdsSICashOutstandingUNDER4Y: TIntegerField;
    cdsSICashOutstandingUNDER4YDA: TDateTimeField;
    cdsSICashOutstandingNOTES4Y: TStringField;
    cdsSICashOutstandingISDEL: TIntegerField;
    cdsSICashOutstandingID: TLargeintField;
    cdsSICashOutstandingBANKACCBRANCH: TStringField;
    cdsSICashOutstandingACCBANKID: TIntegerField;
    cdsSICashOutstandingCP_BANKACCNAME: TStringField;
    cdsSICashOutstandingBANKCODE: TStringField;
    cdsSICashOutstandingBANKACCNO: TStringField;
    cdsSICashOutstandingBANKACCNAME: TStringField;
    cdsSICashOutstandingCP_BANKACCBRANCH: TStringField;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterSITYPE: TcxGridDBBandedColumn;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwMasterNETTYPE: TcxGridDBBandedColumn;
    gvwMasterACCOUNT_SID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterBANK_CHARGES: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_AMT: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLEDDATE: TcxGridDBBandedColumn;
    gvwMasterSI_DESC: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterOLD_SIID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERAMT: TcxGridDBBandedColumn;
    gvwMasterVOUCHERQTY: TcxGridDBBandedColumn;
    gvwMasterNO_INTRC: TcxGridDBBandedColumn;
    gvwMasterKSEI_RECON: TcxGridDBBandedColumn;
    gvwMasterSETTLED_QTY: TcxGridDBBandedColumn;
    gvwMasterTRF_PRVT_BANK: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterUSE_ACS: TcxGridDBBandedColumn;
    gvwMasterCP_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterCP_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterCP_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNAME: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNAME: TcxGridDBBandedColumn;
    gvwMasterCONFIRM_BY: TcxGridDBBandedColumn;
    gvwMasterCREATE_FILE: TcxGridDBBandedColumn;
    gvwMasterCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwMasterCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwMasterPURPOSE: TcxGridDBBandedColumn;
    gvwMasterTRADE_REF: TcxGridDBBandedColumn;
    gvwMasterSETTLE_REASON: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    gvwMasterSIID_NEW: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterBANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterCP_BANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBANKCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterCP_BANKACCBRANCH: TcxGridDBBandedColumn;
    cdsSICashOutstandingCHECKED: TBooleanField;
    gvwMasterCHECKED: TcxGridDBBandedColumn;
    cdsSICashOutstandingPROCESSAMT: TFloatField;
    gvwMasterPROCESSAMT: TcxGridDBBandedColumn;
    cdsCashVoucherH: TNClientDataset;
    cdsCashVoucherHVOUCHERID: TLargeintField;
    cdsCashVoucherHVOUCHERNO: TStringField;
    cdsCashVoucherHVOUCHERTYPE: TStringField;
    cdsCashVoucherHENTRYDATE: TDateField;
    cdsCashVoucherHVOUCHERDATE: TDateField;
    cdsCashVoucherHACCID: TLargeintField;
    cdsCashVoucherHACCNO: TStringField;
    cdsCashVoucherHACCNAME: TStringField;
    cdsCashVoucherHBROKER_BANKID: TIntegerField;
    cdsCashVoucherHBROKER_BANKCODE: TStringField;
    cdsCashVoucherHBROKER_BANKACCNO: TStringField;
    cdsCashVoucherHBROKER_BANKACCNAME: TStringField;
    cdsCashVoucherHBROKER_BANKACCBRANCH: TStringField;
    cdsCashVoucherHBROKER_BANKPAYMENTID: TLargeintField;
    cdsCashVoucherHCUST_BANKID: TIntegerField;
    cdsCashVoucherHCUST_BANKCODE: TStringField;
    cdsCashVoucherHCUST_BANKACCNO: TStringField;
    cdsCashVoucherHCUST_BANKACCNAME: TStringField;
    cdsCashVoucherHCUST_BANKACCBRANCH: TStringField;
    cdsCashVoucherHVOUCHER_DESC: TStringField;
    cdsCashVoucherHCCYCODE: TStringField;
    cdsCashVoucherHEXRATE: TFloatField;
    cdsCashVoucherHTRANSFERMODE: TStringField;
    cdsCashVoucherHCHARGESAMT: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT: TFloatField;
    cdsCashVoucherHSTAT: TStringField;
    cdsCashVoucherHPOSTED: TStringField;
    cdsCashVoucherHJRNID: TLargeintField;
    cdsCashVoucherHMODDA: TDateTimeField;
    cdsCashVoucherHMODUI: TStringField;
    cdsCashVoucherHAPPDA: TDateTimeField;
    cdsCashVoucherHAPPUI: TStringField;
    cdsCashVoucherHUNDER4Y: TIntegerField;
    cdsCashVoucherHUNDER4YDA: TDateTimeField;
    cdsCashVoucherHNOTES4Y: TStringField;
    cdsCashVoucherHISDEL: TIntegerField;
    cdsCashVoucherHID: TLargeintField;
    cdsCashVoucherHqryCashVoucher_D: TDataSetField;
    cdsCashVoucherD: TNClientDataset;
    cdsCashVoucherDVOUCHERID: TLargeintField;
    cdsCashVoucherDSEQID: TLargeintField;
    cdsCashVoucherDTRANS_TYPE: TStringField;
    cdsCashVoucherDLINKTYPE: TStringField;
    cdsCashVoucherDLINKID: TLargeintField;
    cdsCashVoucherDLINKNO: TStringField;
    cdsCashVoucherDACCID: TLargeintField;
    cdsCashVoucherDACCNO: TStringField;
    cdsCashVoucherDACCNAME: TStringField;
    cdsCashVoucherDTRDDATE: TDateField;
    cdsCashVoucherDDUEDATE: TDateField;
    cdsCashVoucherDCASH_DESC: TStringField;
    cdsCashVoucherDTRANS_AMT: TFloatField;
    cdsCashVoucherDNETTYPE: TStringField;
    cdsCashVoucherDAMOUNT: TFloatField;
    cdsCashVoucherDMODDA: TDateTimeField;
    cdsCashVoucherDMODUI: TStringField;
    cdsCashVoucherDAPPDA: TDateTimeField;
    cdsCashVoucherDAPPUI: TStringField;
    cdsCashVoucherDUNDER4Y: TIntegerField;
    cdsCashVoucherDUNDER4YDA: TDateTimeField;
    cdsCashVoucherDNOTES4Y: TStringField;
    cdsCashVoucherDISDEL: TIntegerField;
    cdsCashVoucherDID: TLargeintField;
    cdsCashVoucherDOVERDUE: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    rgVoucherType: TcxDBRadioGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dtVoucherDate: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cbBrokerBank: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    lgBrokerBank: TdxLayoutGroup;
    cbCustBank: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    lgCustBank: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cbAll: TcxCheckBox;
    dxLayoutControl1Item23: TdxLayoutItem;
    dtDueDate: TcxDateEdit;
    lcDueDate: TdxLayoutItem;
    lgDueDate: TdxLayoutGroup;
    cdsLuBrokerBank: TNClientDataset;
    cdsLuCustBank: TNClientDataset;
    cdsLuBrokerBankACCBANKID: TIntegerField;
    cdsLuBrokerBankACCID: TIntegerField;
    cdsLuBrokerBankBNCODE: TStringField;
    cdsLuBrokerBankBANKACCNO: TStringField;
    cdsLuBrokerBankBANKACCNAME: TStringField;
    cdsLuBrokerBankBANKBRANCH: TStringField;
    cdsLuBrokerBankACTLED_SEQID: TIntegerField;
    cdsLuBrokerBankISRDN: TStringField;
    cdsLuCustBankACCBANKID: TIntegerField;
    cdsLuCustBankACCID: TIntegerField;
    cdsLuCustBankBNCODE: TStringField;
    cdsLuCustBankBANKACCNO: TStringField;
    cdsLuCustBankBANKACCNAME: TStringField;
    cdsLuCustBankBANKBRANCH: TStringField;
    cdsLuCustBankACTLED_SEQID: TIntegerField;
    cdsLuCustBankISRDN: TStringField;
    dsLuBrokerBank: TDataSource;
    dsLuCustBank: TDataSource;
    cdsAccCashPos: TNClientDataset;
    cdsAccCreatedVoucher: TNClientDataset;
    cdsAccCashPosACCID: TLargeintField;
    cdsAccCashPosCCY: TStringField;
    cdsAccCashPosCashOnHand: TFloatField;
    cdsAccCashPosCashOnHold: TFloatField;
    cdsAccCashPosCashOuts: TFloatField;
    cdsAccCashPosNetCashAmount: TFloatField;
    cdsAccCreatedVoucherACCID: TLargeintField;
    cdsAccCreatedVoucherCREATED_VOUCHER: TFloatField;
    cdsCashVoucherHCASH_ONHAND: TFloatField;
    cdsCashVoucherHCREATED_VOUCHER: TFloatField;
    cdsLuBrokerBankACCBANKCODE: TStringField;
    cdsLuCustBankACCBANKCODE: TStringField;
    cdsBankCharges: TNClientDataset;
    cdsBankChargesBNCODE: TStringField;
    cdsBankChargesBNCHGTYPE: TStringField;
    cdsBankChargesCCYCODE: TStringField;
    cdsBankChargesCHARGE_AMT: TFloatField;
    cdsBankChargesCHARGE_MINTRANS: TFloatField;
    cdsBankChargesCHARGE_MAXTRANS: TFloatField;
    cdsBankChargesMODDA: TDateTimeField;
    cdsBankChargesMODUI: TStringField;
    cdsBankChargesAPPDA: TDateTimeField;
    cdsBankChargesAPPUI: TStringField;
    cdsBankChargesISDEL: TIntegerField;
    cdsBankChargesID: TLargeintField;
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
    cdsAllotmentBAEAmount: TNClientDataset;
    cdsPoolingBAEAmount: TNClientDataset;
    cdsAllotmentBAEAmountAMOUNT: TFloatField;
    cdsPoolingBAEAmountAMOUNT: TFloatField;
    cdsIPOALLOTMENT_VOUCHER: TStringField;
    cdsIPOALLOTMENT_AMOUNT: TFloatField;
    cdsIPOALLOTMENT_SIID: TLargeintField;
    cdsIPOPOOLING_VOUCHER: TStringField;
    cdsIPOPOOLING_AMOUNT: TFloatField;
    cdsIPOPOOLING_SIID: TLargeintField;
    cdsCashVoucherHCCYCODE_FX: TStringField;
    cdsCashVoucherHCHARGESAMT_FX: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX: TFloatField;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    lcExRate: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutControl1Group19: TdxLayoutGroup;
    cdsExRateValue: TNClientDataset;
    cdsExRateValueCCY_CODE_FROM: TStringField;
    cdsExRateValueCCY_CODE_TO: TStringField;
    cdsExRateValueEFFECTIVE_DATE: TDateField;
    cdsExRateValueCONVERSION_VALUE: TFloatField;
    cdsExRateValueINVERSE_CONVERSION_VALUE: TFloatField;
    cdsExRateValueMODDA: TDateTimeField;
    cdsExRateValueMODUI: TStringField;
    cdsExRateValueAPPDA: TDateTimeField;
    cdsExRateValueAPPUI: TStringField;
    cdsExRateValueUNDER4Y: TIntegerField;
    cdsExRateValueUNDER4YDA: TDateTimeField;
    cdsExRateValueNOTES4Y: TStringField;
    cdsExRateValueISDEL: TIntegerField;
    cdsExRateValueID: TLargeintField;
    cdsLuBrokerBankCCYCODE: TStringField;
    cdsLuCustBankCCYCODE: TStringField;
    cdsCashVoucherHBROKER_BANKCCY: TStringField;
    cdsCashVoucherHCUST_BANKCCY: TStringField;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF: TFloatField;
    chkSelectAll: TcxCheckBox;
    dxLayoutControl1Item28: TdxLayoutItem;
    btnCashOnHand: TcxButton;
    dxLayoutControl1Item29: TdxLayoutItem;
    lcAll: TdxLayoutGroup;
    dxLayoutControl1Group22: TdxLayoutGroup;
    cdsluCustBankNoParam: TNClientDataset;
    cdsluCustBankNoParamACCBANKID: TIntegerField;
    cdsluCustBankNoParamACCBANKCODE: TStringField;
    cdsluCustBankNoParamCCYCODE: TStringField;
    cdsluCustBankNoParamACCID: TIntegerField;
    cdsluCustBankNoParamBNCODE: TStringField;
    cdsluCustBankNoParamBANKACCNO: TStringField;
    cdsluCustBankNoParamBANKACCNAME: TStringField;
    cdsluCustBankNoParamBANKBRANCH: TStringField;
    cdsluCustBankNoParamISRDN: TStringField;
    cdsluCustBankNoParamBANKTYPE: TStringField;
    cdsluCustBankNoParamBN_CHGMODE: TStringField;
    cdsluCustBankNoParamBNCHGSTYPE: TStringField;
    cdsluCustBankNoParamACTLED_SEQID: TIntegerField;
    cdsluCustBankNoParamCBEST_CODE: TStringField;
    cdsluCustBankNoParamBANK_DEFAULT: TStringField;
    cdsluCustBankNoParamMODDA: TDateTimeField;
    cdsluCustBankNoParamMODUI: TStringField;
    cdsluCustBankNoParamAPPDA: TDateTimeField;
    cdsluCustBankNoParamAPPUI: TStringField;
    cdsluCustBankNoParamUNDER4Y: TIntegerField;
    cdsluCustBankNoParamUNDER4YDA: TDateTimeField;
    cdsluCustBankNoParamNOTES4Y: TStringField;
    cdsluCustBankNoParamISDEL: TIntegerField;
    cdsluCustBankNoParamID: TLargeintField;
    cdsCashVoucherSelectAll: TNClientDataset;
    cdsCashVoucherSelectAllPROCESSAMT: TFloatField;
    cdsCashVoucherHACCSOPID: TLargeintField;
    cdsCashVoucherHBANK_REFERENCE: TStringField;
    cdsCashVoucherHBANK_INSTRUCTION: TStringField;
    cdsBank: TNClientDataset;
    cdsBankBNCODE: TStringField;
    cdsBankBNNAME: TStringField;
    cdsBankINITIAL_NAME: TStringField;
    cdsBankBICODE: TStringField;
    cdsBankSWIFT_CODE: TStringField;
    cdsBankISRDN: TStringField;
    cdsBankMODDA: TDateTimeField;
    cdsBankMODUI: TStringField;
    cdsBankAPPDA: TDateTimeField;
    cdsBankAPPUI: TStringField;
    cdsBankISDEL: TIntegerField;
    cdsBankID: TLargeintField;
    cdsSICashOutstandingSIDE_ACC: TStringField;
    cdsSICashOutstandingCLIENT_ACCSIDE: TLargeintField;
    cdsSICashOutstandingPRICE: TFloatField;
    cdsSICashOutstandingMOVEDUEDATE: TDateField;
    cdsSICashOutstandingCMOVE_SETTLE: TStringField;
    cdsSICashOutstandingSMOVE_SETTLE: TStringField;
    cdsSICashOutstandingCUSTODY_INSTR: TLargeintField;
    cdsSICashOutstandingLINKID: TLargeintField;
    cdsSICashOutstandingLINKSEQID: TIntegerField;
    cdsSICashOutstandingLINKNO: TStringField;
    cdsSICashOutstandingLINKTYPE: TStringField;
    cdsSICashOutstandingVOUCHERDATE: TDateField;
    cdsSICashOutstandingX: TFloatField;
    cdsCashVoucherHTRANSTYPE: TStringField;
    cdsCashVoucherHTRANSFER_AMT: TFloatField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item32: TdxLayoutItem;
    cdsCashVoucherDCCYCODE: TStringField;
    cdsCashVoucherDDC: TStringField;
    cdsCashVoucherDEXRATE: TFloatField;
    cdsCashVoucherDFXAMOUNT: TFloatField;
    cdsCashVoucherHCASH_QQ: TFloatField;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item33: TdxLayoutItem;
    cdsRDNBankAccount: TNClientDataset;
    cdsRDNBankAccountACCBANKID: TIntegerField;
    cdsRDNBankAccountACCBANKCODE: TStringField;
    cdsRDNBankAccountCCYCODE: TStringField;
    cdsRDNBankAccountACCID: TIntegerField;
    cdsRDNBankAccountBNCODE: TStringField;
    cdsRDNBankAccountBANKACCNO: TStringField;
    cdsRDNBankAccountBANKACCNAME: TStringField;
    cdsRDNBankAccountBANKBRANCH: TStringField;
    cdsRDNBankAccountISRDN: TStringField;
    cdsRDNBankAccountBANKTYPE: TStringField;
    cdsRDNBankAccountBNCHGSTYPE: TStringField;
    cdsRDNBankAccountACTLED_SEQID: TIntegerField;
    cdsRDNBankAccountCBEST_CODE: TStringField;
    cdsRDNBankAccountBANK_DEFAULT: TStringField;
    cdsSICashOutstandingIPO: TNClientDataset;
    cdsSICashOutstandingIPOSIID: TLargeintField;
    cdsSICashOutstandingIPOSINO: TStringField;
    cdsSICashOutstandingIPOENTRYDATE: TDateField;
    cdsSICashOutstandingIPOVALUEDATE: TDateField;
    cdsSICashOutstandingIPOSITYPE: TStringField;
    cdsSICashOutstandingIPOSIDE_ACC: TStringField;
    cdsSICashOutstandingIPOCLIENT_ACCSIDE: TLargeintField;
    cdsSICashOutstandingIPOCASH_STOCK: TStringField;
    cdsSICashOutstandingIPOSETTLE_SIDE: TStringField;
    cdsSICashOutstandingIPOINSTRUCTION_TYPE: TStringField;
    cdsSICashOutstandingIPONETTYPE: TStringField;
    cdsSICashOutstandingIPOACCOUNT_SID: TStringField;
    cdsSICashOutstandingIPOACCID: TLargeintField;
    cdsSICashOutstandingIPOACCNO: TStringField;
    cdsSICashOutstandingIPOACCNAME: TStringField;
    cdsSICashOutstandingIPOTRANSFER_MODE: TStringField;
    cdsSICashOutstandingIPOBASE_CCYCODE: TStringField;
    cdsSICashOutstandingIPOBASE_NETAMT: TFloatField;
    cdsSICashOutstandingIPOBANK_CHARGES: TFloatField;
    cdsSICashOutstandingIPOSETTLE_CCYCODE: TStringField;
    cdsSICashOutstandingIPOSETTLE_EXRATE: TFloatField;
    cdsSICashOutstandingIPOSETTLE_NETAMT: TFloatField;
    cdsSICashOutstandingIPOSETTLED_AMT: TFloatField;
    cdsSICashOutstandingIPOSTOCKID: TIntegerField;
    cdsSICashOutstandingIPOSTOCKCODE: TStringField;
    cdsSICashOutstandingIPOPRICE: TFloatField;
    cdsSICashOutstandingIPOQTY: TFloatField;
    cdsSICashOutstandingIPOTRDDATE: TDateField;
    cdsSICashOutstandingIPODUEDATE: TDateField;
    cdsSICashOutstandingIPOSETTLEDDATE: TDateField;
    cdsSICashOutstandingIPOMOVEDUEDATE: TDateField;
    cdsSICashOutstandingIPOSI_DESC: TStringField;
    cdsSICashOutstandingIPOSTAT: TStringField;
    cdsSICashOutstandingIPOOLD_SIID: TLargeintField;
    cdsSICashOutstandingIPOVOUCHERAMT: TFloatField;
    cdsSICashOutstandingIPOVOUCHERQTY: TFloatField;
    cdsSICashOutstandingIPONO_INTRC: TStringField;
    cdsSICashOutstandingIPOKSEI_RECON: TStringField;
    cdsSICashOutstandingIPOSETTLED_QTY: TFloatField;
    cdsSICashOutstandingIPOTRF_PRVT_BANK: TStringField;
    cdsSICashOutstandingIPOACCSOPID: TLargeintField;
    cdsSICashOutstandingIPOUSE_ACS: TStringField;
    cdsSICashOutstandingIPOCP_ACCBANKID: TIntegerField;
    cdsSICashOutstandingIPOCP_BANKCODE: TStringField;
    cdsSICashOutstandingIPOCP_BANKACCNO: TStringField;
    cdsSICashOutstandingIPOSOURCE_ACCBANKID: TLargeintField;
    cdsSICashOutstandingIPOSOURCE_ACCBANKCODE: TStringField;
    cdsSICashOutstandingIPOSOURCE_ACCBANKNO: TStringField;
    cdsSICashOutstandingIPOSOURCE_ACCBANKNAME: TStringField;
    cdsSICashOutstandingIPOTARGET_ACCBANKID: TLargeintField;
    cdsSICashOutstandingIPOTARGET_ACCBANKCODE: TStringField;
    cdsSICashOutstandingIPOTARGET_ACCBANKNO: TStringField;
    cdsSICashOutstandingIPOTARGET_ACCBANKNAME: TStringField;
    cdsSICashOutstandingIPOCONFIRM_BY: TStringField;
    cdsSICashOutstandingIPOCREATE_FILE: TStringField;
    cdsSICashOutstandingIPOCOUNT_CREATE_FILE: TIntegerField;
    cdsSICashOutstandingIPOCBEST_UPLOAD: TStringField;
    cdsSICashOutstandingIPOPURPOSE: TStringField;
    cdsSICashOutstandingIPOTRADE_REF: TStringField;
    cdsSICashOutstandingIPOSETTLE_REASON: TStringField;
    cdsSICashOutstandingIPOREMARKS: TStringField;
    cdsSICashOutstandingIPOSIID_NEW: TLargeintField;
    cdsSICashOutstandingIPOBANKACCBRANCH: TStringField;
    cdsSICashOutstandingIPOACCBANKID: TIntegerField;
    cdsSICashOutstandingIPOCP_BANKACCNAME: TStringField;
    cdsSICashOutstandingIPOBANKCODE: TStringField;
    cdsSICashOutstandingIPOBANKACCNO: TStringField;
    cdsSICashOutstandingIPOBANKACCNAME: TStringField;
    cdsSICashOutstandingIPOCP_BANKACCBRANCH: TStringField;
    cdsSICashOutstandingIPOCMOVE_SETTLE: TStringField;
    cdsSICashOutstandingIPOSMOVE_SETTLE: TStringField;
    cdsSICashOutstandingIPOCUSTODY_INSTR: TLargeintField;
    cdsSICashOutstandingIPOCASH_SIID: TLargeintField;
    cdsSICashOutstandingIPOLINKID: TLargeintField;
    cdsSICashOutstandingIPOLINKSEQID: TIntegerField;
    cdsSICashOutstandingIPOLINKNO: TStringField;
    cdsSICashOutstandingIPOLINKTYPE: TStringField;
    cdsSICashOutstandingIPOMODDA: TDateTimeField;
    cdsSICashOutstandingIPOMODUI: TStringField;
    cdsSICashOutstandingIPOAPPDA: TDateTimeField;
    cdsSICashOutstandingIPOAPPUI: TStringField;
    cdsSICashOutstandingIPOUNDER4Y: TIntegerField;
    cdsSICashOutstandingIPOUNDER4YDA: TDateTimeField;
    cdsSICashOutstandingIPONOTES4Y: TStringField;
    cdsSICashOutstandingIPOISDEL: TIntegerField;
    cdsSICashOutstandingIPOID: TLargeintField;
    cdsSICashOutstandingIPOVOUCHERDATE: TDateField;
    cdsSICashOutstandingIPOPROCESSAMT: TFloatField;
    cdsSICashOutstandingIPOCHECKED: TBooleanField;
    dxLayoutControl1Group18: TdxLayoutGroup;
    chkFullFlowReq: TcxCheckBox;
    dxLayoutControl1Item22: TdxLayoutItem;
    cdsAccountTrfPrvtBank: TNClientDataset;
    cdsAccountTrfPrvtBankACCID: TIntegerField;
    cdsAccountTrfPrvtBankACCCODE: TStringField;
    cdsAccountTrfPrvtBankTRF_PRVT_BANK: TStringField;
    dsAccountTrfPrvtBank: TDataSource;
    cdsCashVoucherHDEAL_EXRATE: TFloatField;
    cdsCashVoucherHMANUAL_VOUCHER: TStringField;
    cdsCashVoucherHReqFF: TIntegerField;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
    cdsAccPrivateBank: TNClientDataset;
    cdsAccPrivateBankACCID: TIntegerField;
    cdsAccPrivateBankCCYCODE: TStringField;
    cdsAccPrivateBankPRIVATEBANK_DEFAULT: TIntegerField;
    cdsAccPrivateBankRDNBANK_DEFAULT: TIntegerField;
    cdsAccFullFlow: TNClientDataset;
    cdsAccFullFlowACCID: TIntegerField;
    cdsAccFullFlowACCCODE: TStringField;
    cdsAccFullFlowACCNAME: TStringField;
    cdsAccFullFlowCASHKEEP: TStringField;
    cdsAccFullFlowSTOCKKEEP: TStringField;
    cdsAccFullFlowACCTYPE: TStringField;
    cdsAccFullFlowCCYCODE: TStringField;
    cdsAccFullFlowRDNBANK_DEFAULT: TIntegerField;
    cdsAccFullFlowPRIVATEBANK_DEFAULT: TIntegerField;
    cdsAccFullFlowTRF_PRVT_BANK: TStringField;
    cdsAccFullFlowPRDCODE: TStringField;
    cdsAccFullFlowSETTLE_TYPE: TStringField;
    cdsAccFullFlowRDNBNCODE: TStringField;
    cdsAccFullFlowRDNBANKACCNO: TStringField;
    cdsAccFullFlowRDNBANKACCNAME: TStringField;
    cdsAccFullFlowRDNBANKBRANCH: TStringField;
    cdsAccFullFlowPRVTBNCODE: TStringField;
    cdsAccFullFlowPRVTBANKACCNO: TStringField;
    cdsAccFullFlowPRVTBANKACCNAME: TStringField;
    cdsAccFullFlowPRVTBANKBRANCH: TStringField;
    cdsAccFullFlowCUSTODYID1: TIntegerField;
    cdsAccFullFlowCUSTODYCODE1: TIntegerField;
    cdsAccFullFlowCUSTODYNO1: TIntegerField;
    cdsAccFullFlowCUSTODYID4: TIntegerField;
    cdsAccFullFlowCUSTODYCODE4: TIntegerField;
    cdsAccFullFlowCUSTODYNO4: TIntegerField;
    cdsAccFullFlowCUSTODYBANKID: TIntegerField;
    cdsAccFullFlowCUSTODYBANKCODE: TIntegerField;
    cdsAccFullFlowCUSTODYBANKNO: TIntegerField;
    cdsAccFullFlowSETTLE_MODE: TStringField;
    cdsAccFullFlowENTTID: TIntegerField;
    cdsAccFullFlowCUSTODY: TIntegerField;
    cdsAccFullFlowRDN: TIntegerField;
    cdsAccFullFlowCBEST01: TIntegerField;
    cdsAccFullFlowASBROKER: TIntegerField;
    cdsAccFullFlowASKPEI: TIntegerField;
    cdsAccFullFlowASCLIENT: TIntegerField;
    cdsAccFullFlowASHOUSE: TIntegerField;
    cdsAccFullFlowISLOAN: TIntegerField;
    btnCreateBankReceive: TcxButton;
    dxLayoutControl1Item31: TdxLayoutItem;
    btnCashQQ: TcxButton;
    dxLayoutControl1Item34: TdxLayoutItem;
    dxLayoutControl1Group24: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group21: TdxLayoutGroup;
    dxLayoutControl1Group23: TdxLayoutGroup;
    cdsCashVoucher_H: TNClientDataset;
    cdsCashVoucher_HVOUCHERID: TLargeintField;
    cdsCashVoucher_HVOUCHERNO: TStringField;
    cdsCashVoucher_HVOUCHERTYPE: TStringField;
    cdsCashVoucher_HENTRYDATE: TDateField;
    cdsCashVoucher_HVOUCHERDATE: TDateField;
    cdsCashVoucher_HACCSOPID: TLargeintField;
    cdsCashVoucher_HACCID: TLargeintField;
    cdsCashVoucher_HACCNO: TStringField;
    cdsCashVoucher_HACCNAME: TStringField;
    cdsCashVoucher_HBROKER_BANKID: TIntegerField;
    cdsCashVoucher_HBROKER_BANKCODE: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNO: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNAME: TStringField;
    cdsCashVoucher_HBROKER_BANKACCBRANCH: TStringField;
    cdsCashVoucher_HBROKER_BANKPAYMENTID: TLargeintField;
    cdsCashVoucher_HCUST_BANKID: TIntegerField;
    cdsCashVoucher_HCUST_BANKCODE: TStringField;
    cdsCashVoucher_HCUST_BANKACCNO: TStringField;
    cdsCashVoucher_HCUST_BANKACCNAME: TStringField;
    cdsCashVoucher_HCUST_BANKACCBRANCH: TStringField;
    cdsCashVoucher_HVOUCHER_DESC: TStringField;
    cdsCashVoucher_HCCYCODE: TStringField;
    cdsCashVoucher_HEXRATE: TFloatField;
    cdsCashVoucher_HTRANSFERMODE: TStringField;
    cdsCashVoucher_HCHARGESAMT: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT: TFloatField;
    cdsCashVoucher_HSTAT: TStringField;
    cdsCashVoucher_HPOSTED: TStringField;
    cdsCashVoucher_HBANK_REFERENCE: TStringField;
    cdsCashVoucher_HBANK_INSTRUCTION: TStringField;
    cdsCashVoucher_HJRNID: TLargeintField;
    cdsCashVoucher_HMODDA: TDateTimeField;
    cdsCashVoucher_HMODUI: TStringField;
    cdsCashVoucher_HAPPDA: TDateTimeField;
    cdsCashVoucher_HAPPUI: TStringField;
    cdsCashVoucher_HUNDER4Y: TIntegerField;
    cdsCashVoucher_HUNDER4YDA: TDateTimeField;
    cdsCashVoucher_HNOTES4Y: TStringField;
    cdsCashVoucher_HISDEL: TIntegerField;
    cdsCashVoucher_HID: TLargeintField;
    cdsCashVoucher_HCCYCODE_FX: TStringField;
    cdsCashVoucher_HCHARGESAMT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsCashVoucher_HDEAL_EXRATE: TFloatField;
    cdsCashVoucher_HTRANSTYPE: TStringField;
    cdsCashVoucher_HTRANSFER_AMT: TFloatField;
    cdsCashVoucher_HqryCashVoucher_D: TDataSetField;
    cdsCashVoucher_HMANUAL_VOUCHER: TStringField;
    procedure cbAllPropertiesChange(Sender: TObject);
    procedure cdsCashVoucherHACCIDChange(Sender: TField);
    procedure cdsCashVoucherHBROKER_BANKIDChange(Sender: TField);
    procedure cdsCashVoucherHCUST_BANKIDChange(Sender: TField);
    procedure gvwMasterCHECKEDPropertiesChange(Sender: TObject);
    procedure cdsCashVoucherHBeforePost(DataSet: TDataSet);
    procedure cdsCashVoucherHCCYCODE_FXChange(Sender: TField);
    procedure cdsCashVoucherHEXRATEChange(Sender: TField);
    procedure cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGEDChange(Sender: TField);
    procedure chkSelectAllClick(Sender: TObject);
    procedure btnCashOnHandClick(Sender: TObject);
    procedure cdsSICashOutstandingAfterPost(DataSet: TDataSet);
    procedure cdsSICashOutstandingAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure cdsCashVoucherHCHARGESAMTChange(Sender: TField);
    procedure cdsCashVoucherHCHARGESAMT_FXChange(Sender: TField);
    procedure gvwMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure chkFullFlowReqClick(Sender: TObject);
    procedure btnCreateBankReceiveClick(Sender: TObject);
    procedure btnCashQQClick(Sender: TObject);
    procedure cdsCashVoucherHVOUCHERTYPEChange(Sender: TField);
  private
    { Private declarations }

    procedure OnCheckedChanged;
    procedure OnCheckedSelectedAll;
  public
    { Public declarations }
    FSumNetAmount: Double;
    AccountID: Integer;
    FFromDate, FToDate: TDate;
    FNetAmount: Double;
    FBankDefaultDesc: string;
    FDueDate: TDateTime;
    FSaveKeep: string;
    FCashVoucherType: string;
    FInverseExRate: Boolean;
    FSettleType: string;
    FTransType: string;

    function Run(ACCID, ABrokerBankID: Integer; ACCY: string; ACashOnHand, ACreateVoucher, ACashQQ: Double;
      ADueDate: TDateTime; ASaveKeep: string; ASettleType: string; ATransType: string): TModalResult;
    function IPOPaymentToBAE(IPOID, ABrokerBankID: Integer; AIPOType: String): TModalResult;

    procedure NetAmount;
    procedure GenerateBankFile;
    procedure ClearBank(ABrokerBankID: Integer);

    function GetExRate: Double;
  end;

var
  frmCashPayment: TfrmCashPayment;

implementation

{$R *.dfm}

uses DataGlobal, FormCashPaymentBeneficiary, FormBankRefference,
  FormCreateCashRecPay;

{ TfrmCashPayment }

procedure TfrmCashPayment.btnCreateBankReceiveClick(Sender: TObject);
var
  oForm: TfrmCreateCashRecPay;
  sMsg: string;
begin
  if cdsCashVoucherHTRANSFER_AMT.AsFloat = 0 then
    MessageDlg('Transfer Amount must have value', mtWarning, [mbOk], 0)
  else
  begin
    oForm := TfrmCreateCashRecPay.Create(nil);
    with TfrmCreateCashRecPay(oForm) do
    begin
      VoucherID  := -1;
      Caption    := 'Create Cash Receive';
      CreateCash := 'R';

      Amount     := - cdsCashVoucherHTRANSFER_AMT.AsFloat;
      AccID      := cdsCashVoucherHACCID.AsInteger;
      AccCode    := cdsCashVoucherHACCNO.AsString;
      AccName    := cdsCashVoucherHACCNAME.AsString;
      ACCY       := cdsCashVoucherHCCYCODE.AsString;
      ChangeAcc  := False;

      oForm.ShowModal;
    end;

    if not (cdsCashVoucherH.State in dsEditModes) then
      cdsCashVoucherH.Edit;
    cdsCashVoucherHCASH_QQ.AsFloat         := cdsCashVoucherHCASH_QQ.AsFloat + TfrmCreateCashRecPay(oForm).cdsCashVoucher_HTOTAL_AMOUNT.AsFloat;
    cdsCashVoucherHBROKER_BANKID.AsInteger := TfrmCreateCashRecPay(oForm).cdsCashVoucher_HBROKER_BANKID.AsInteger;

    FreeAndNil(oForm);

    cdsSICashOutstanding.Close;
    cdsSICashOutstanding.Params[0].AsInteger := AccountID;
    if cbAll.Checked then
      cdsSICashOutstanding.Params[1].AsInteger := 1
    else
      cdsSICashOutstanding.Params[1].AsInteger := 0;
    cdsSICashOutstanding.Params[2].AsDate := dtDueDate.Date;
    cdsSICashOutstanding.Open;

    if not (cdsCashVoucherH.State in dsEditModes) then
      cdsCashVoucherH.Edit;
    cdsCashVoucherHTOTAL_AMOUNT.AsFloat := 0;
  end;
end;

procedure TfrmCashPayment.btnOKClick(Sender: TObject);
begin
  if btnOk.ModalResult = mrNone then
  begin
    if messagedlg('Are you sure to create this voucher?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if cdsCashVoucherHBROKER_BANKID.AsInteger = 0 then
        MessageDlg('Broker bank can not be emptied!', mtError, [mbOk], 0)
      else
      begin
        btnOK.ModalResult := mrOK;
        btnOk.Click;
      end;
    end;
  end;
end;

procedure TfrmCashPayment.cbAllPropertiesChange(Sender: TObject);
begin
  lcDueDate.Visible := not cbAll.Checked;

  cdsSICashOutstanding.Close;
  cdsSICashOutstanding.Params[0].AsInteger := AccountID;
  if cbAll.Checked then
    cdsSICashOutstanding.Params[1].AsInteger := 1
  else
    cdsSICashOutstanding.Params[1].AsInteger := 0;
  cdsSICashOutstanding.Params[2].AsDate := dtDueDate.Date;
  cdsSICashOutstanding.Open;

  NetAmount;
  if FNetAmount < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - FNetAmount)
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', FNetAmount);

//  gvwMaster.ApplyBestFit();
end;

procedure TfrmCashPayment.cdsCashVoucherHACCIDChange(Sender: TField);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
    begin
      cdsLuAccount.Close;
      cdsLuAccount.Open;
    end;

    if cdsLuAccount.Locate('ACCID', cdsCashVoucherHACCID.AsInteger, []) then
    begin
      cdsCashVoucherHACCNO.AsString := cdsLuAccountACCCODE.AsString;
      cdsCashVoucherHACCNAME.AsString := cdsLuAccountACCNAME.AsString;
    end;
  end;
end;

procedure TfrmCashPayment.cdsCashVoucherHBeforePost(DataSet: TDataSet);
begin
  if (not cdsCashVoucherHBROKER_BANKCODE.IsNull) and
    (not cdsCashVoucherHCUST_BANKCODE.IsNull) and
    (not cdsCashVoucherHCCYCODE.IsNull) then
  begin
    if (cdsCashVoucherHBROKER_BANKCODE.AsString = cdsCashVoucherHCUST_BANKCODE.AsString) then
    begin
      cdsCashVoucherHCHARGESAMT.AsFloat := 0;
      cdsCashVoucherHTRANSFERMODE.AsString := 'OB';
    end
    else
    begin
      cdsBankCharges.Close;
      cdsBankCharges.Params[0].AsString := cdsCashVoucherHBROKER_BANKCODE.AsString;
      cdsBankCharges.Params[1].AsString := cdsCashVoucherHCCYCODE.AsString;
      if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
        cdsBankCharges.Params[2].AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1
      else
        cdsBankCharges.Params[2].AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
      cdsBankCharges.Open;

      if not cdsBankCharges.IsEmpty then
      begin
        cdsBankCharges.First;
        cdsCashVoucherHCHARGESAMT.AsFloat := cdsBankChargesCHARGE_AMT.AsFloat;
        cdsCashVoucherHTRANSFERMODE.AsString := cdsBankChargesBNCHGTYPE.AsString;
      end;
    end;
  end;
end;

procedure TfrmCashPayment.cdsCashVoucherHBROKER_BANKIDChange(Sender: TField);
begin
  if cdsLuBrokerBank.Locate('ACCBANKID', cdsCashVoucherHBROKER_BANKID.AsInteger, []) then
  begin
    cdsCashVoucherHBROKER_BANKCODE.AsString := cdsLuBrokerBankBNCODE.AsString;
    cdsCashVoucherHBROKER_BANKACCNO.AsString := cdsLuBrokerBankBANKACCNO.AsString;
    cdsCashVoucherHBROKER_BANKACCNAME.AsString := cdsLuBrokerBankBANKACCNAME.AsString;
    cdsCashVoucherHBROKER_BANKACCBRANCH.AsString := cdsLuBrokerBankBANKBRANCH.AsString;
  end;

  if cdsCashVoucherHCCYCODE.IsNull then
    cdsCashVoucherHCCYCODE.AsString := cdsCashVoucherHBROKER_BANKCCY.AsString;

  if cdsCashVoucherHCCYCODE_FX.IsNull then
    cdsCashVoucherHCCYCODE_FX.AsString := cdsCashVoucherHBROKER_BANKCCY.AsString;
end;

procedure TfrmCashPayment.cdsCashVoucherHCCYCODE_FXChange(Sender: TField);
begin
  if (not cdsCashVoucherHCCYCODE.IsNull) and (not cdsCashVoucherHCCYCODE_FX.IsNull) and (not cdsCashVoucherHENTRYDATE.IsNull) then
  begin
    if (cdsCashVoucherHCCYCODE_FX.AsString = cdsCashVoucherHCCYCODE.AsString) then
    begin
      cdsCashVoucherHEXRATE.AsFloat := 1;
    end
    else
    begin
//      cdsExRateValue.Close;
//      cdsExRateValue.Params[0].AsString := cdsCashVoucherHCCYCODE.AsString;
//      cdsExRateValue.Params[1].AsString := cdsCashVoucherHCCYCODE_FX.AsString;
//      cdsExRateValue.Params[2].AsDate := cdsCashVoucherHENTRYDATE.AsDateTime;
//      cdsExRateValue.Open;
//
//      if (not cdsExRateValue.IsEmpty) then
//      begin
//        cdsCashVoucherHEXRATE.AsFloat := cdsExRateValueINVERSE_CONVERSION_VALUE.AsFloat;
//      end;

      cdsCashVoucherHEXRATE.AsFloat := GetExRate;
    end;

    if FInverseExRate then
    begin
      cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
      cdsCashVoucherHCHARGESAMT_FX.AsFloat           := cdsCashVoucherHCHARGESAMT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
    end
    else
    begin
      cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
      cdsCashVoucherHCHARGESAMT_FX.AsFloat           := cdsCashVoucherHCHARGESAMT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
    end;

  end;

  lcExRate.Enabled := (cdsCashVoucherHCCYCODE_FX.AsString <> cdsCashVoucherHCCYCODE.AsString);
end;

procedure TfrmCashPayment.cdsCashVoucherHCHARGESAMTChange(Sender: TField);
begin
  cdsCashVoucherHTRANSFER_AMT.AsFloat  := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsCashVoucherHCHARGESAMT.AsFloat;
  cdsCashVoucherHCHARGESAMT_FX.AsFloat := cdsCashVoucherHCHARGESAMT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
//  if FInverseExRate then
//    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat / cdsCashVoucherHEXRATE.AsFloat
//  else
//    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
end;

procedure TfrmCashPayment.cdsCashVoucherHCHARGESAMT_FXChange(Sender: TField);
begin
  cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat + cdsCashVoucherHCHARGESAMT_FX.AsFloat;
end;

procedure TfrmCashPayment.cdsCashVoucherHCUST_BANKIDChange(Sender: TField);
begin
  if cdsLuCustBank.Locate('ACCBANKID', cdsCashVoucherHCUST_BANKID.AsInteger, []) then
  begin
    cdsCashVoucherHCUST_BANKCODE.AsString := cdsLuCustBankBNCODE.AsString;
    cdsCashVoucherHCUST_BANKACCNO.AsString := cdsLuCustBankBANKACCNO.AsString;
    cdsCashVoucherHCUST_BANKACCNAME.AsString := cdsLuCustBankBANKACCNAME.AsString;
    cdsCashVoucherHCUST_BANKACCBRANCH.AsString := cdsLuCustBankBANKBRANCH.AsString;
  end;
end;

procedure TfrmCashPayment.cdsCashVoucherHEXRATEChange(Sender: TField);
begin
  cdsCashVoucherHTRANSFER_AMT.AsFloat  := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
  cdsCashVoucherHCHARGESAMT_FX.AsFloat := cdsCashVoucherHCHARGESAMT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;

  if (cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat = cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat) then
  begin
    if FInverseExRate then
    begin
      cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
      cdsCashVoucherHCHARGESAMT_FX.AsFloat   := cdsCashVoucherHCHARGESAMT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
    end
    else
    begin
      cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
      cdsCashVoucherHCHARGESAMT_FX.AsFloat   := cdsCashVoucherHCHARGESAMT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
    end;
    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat + cdsCashVoucherHCHARGESAMT_FX.AsFloat;
  end
  else
  begin
    if FInverseExRate then
    begin
      cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
      cdsCashVoucherHCHARGESAMT_FX.AsFloat   := cdsCashVoucherHCHARGESAMT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
    end
    else
    begin
      cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
      cdsCashVoucherHCHARGESAMT_FX.AsFloat   := cdsCashVoucherHCHARGESAMT.AsFloat * cdsCashVoucherHEXRATE.AsFloat;
    end;
  end;
end;

procedure TfrmCashPayment.cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGEDChange(
  Sender: TField);
begin
  cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF.AsFloat := cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat - cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat;
end;

procedure TfrmCashPayment.cdsCashVoucherHVOUCHERTYPEChange(Sender: TField);
begin
  btnCreateBankReceive.Visible := ((FTransType = 'C') or (FTransType = 'E')) and (cdsCashVoucherHVOUCHERTYPE.AsString = 'R');
//  btnCashQQ.Visible            := ((FTransType = 'C') or (FTransType = 'E')) and (cdsCashVoucherHVOUCHERTYPE.AsString = 'R');
  btnCashOnHand.Visible        := ((FTransType = 'R') or (FTransType = 'F')) and (cdsCashVoucherHVOUCHERTYPE.AsString = 'P');
end;

procedure TfrmCashPayment.cdsSICashOutstandingAfterOpen(DataSet: TDataSet);
begin
  FSumNetAmount := 0;

  cdsSICashOutstanding.DisableControls;
  cdsSICashOutstanding.First;
  while not cdsSICashOutstanding.Eof do
  begin
    if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
      FSumNetAmount := FSumNetAmount - cdsSICashOutstandingSETTLE_NETAMT.AsFloat
    else
      FSumNetAmount := FSumNetAmount + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
    cdsSICashOutstanding.Next;
  end;
  cdsSICashOutstanding.EnableControls;
end;

procedure TfrmCashPayment.cdsSICashOutstandingAfterPost(DataSet: TDataSet);
begin
  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
end;

procedure TfrmCashPayment.ClearBank(ABrokerBankID: Integer);
begin
 if cdsLuBrokerBank.Locate('ACCBANKID', ABrokerBankID, []) then
  begin
    cdsCashVoucherHBROKER_BANKID.AsInteger := cdsLuBrokerBankACCBANKID.AsInteger;
    cdsCashVoucherHBROKER_BANKCODE.AsString := cdsLuBrokerBankBNCODE.AsString;
    cdsCashVoucherHBROKER_BANKACCNO.AsString := cdsLuBrokerBankBANKACCNO.AsString;
    cdsCashVoucherHBROKER_BANKACCNAME.AsString := cdsLuBrokerBankBANKACCNAME.AsString;
    cdsCashVoucherHBROKER_BANKACCBRANCH.AsString := cdsLuBrokerBankBANKBRANCH.AsString;
  end;


//  cdsCashVoucherHBROKER_BANKID.Clear;
//  cdsCashVoucherHBROKER_BANKCODE.AsString      := '';
//  cdsCashVoucherHBROKER_BANKACCNO.AsString     := '';
//  cdsCashVoucherHBROKER_BANKACCNAME.AsString   := '';
//  cdsCashVoucherHBROKER_BANKACCBRANCH.AsString := '';

//  cdsCashVoucherHCUST_BANKID.Clear;
//  cdsCashVoucherHCUST_BANKCODE.AsString      := '';
//  cdsCashVoucherHCUST_BANKACCNO.AsString     := '';
//  cdsCashVoucherHCUST_BANKACCNAME.AsString   := '';
//  cdsCashVoucherHCUST_BANKACCBRANCH.AsString := '';

//  lgBrokerBank.Enabled := False;
//  lgCustBank.Enabled   := False;
end;

procedure TfrmCashPayment.chkFullFlowReqClick(Sender: TObject);
begin
  if chkFullFlowReq.Checked then
  begin
    if VarIsNull(cdsAccFullFlowPRIVATEBANK_DEFAULT.AsInteger) or VarIsEmpty(cdsAccFullFlowPRIVATEBANK_DEFAULT.AsInteger) then
    begin
      MessageDlg('Client has not had a private bank, can not continue as full flow', mtError, [mbOk], 0);
      chkFullFlowReq.Checked := False;
    end;
  end;
end;

procedure TfrmCashPayment.chkSelectAllClick(Sender: TObject);
begin
  OnCheckedSelectedAll;
end;

procedure TfrmCashPayment.btnCashOnHandClick(Sender: TObject);
var
  dTempCashOnHand: Double;
  sContinue: Boolean;
  dFrom, dTo: TDateTime;
  sPenalty: string;
  dTotalAmount: double;
begin
  sPenalty := '';

  if VarIsNull(dsSubject.DataSet.FieldByName('CASH_ONHAND').AsFloat) or (dsSubject.DataSet.FieldByName('CASH_ONHAND').AsFloat = 0) then
  begin
    MessageDlg('Cash onhand must not be empty', mtError, [mbOk], 0);
    exit;
  end;

  cdsSICashOutstanding.First;
  while not cdsSICashOutstanding.Eof do
  begin
    cdsSICashOutstanding.Edit;
    cdsSICashOutstandingCHECKED.AsBoolean  := False;
    cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
    cdsSICashOutstanding.Post;

    cdsSICashOutstanding.Next;
  end;
  cdsCashVoucherHTOTAL_AMOUNT.AsFloat := 0;

  if FSaveKeep = '0' then
    dTempCashOnHand := dsSubject.DataSet.FieldByName('CASH_QQ').AsFloat + (dsSubject.DataSet.FieldByName('CASH_ONHAND').AsFloat - dsSubject.DataSet.FieldByName('CREATED_VOUCHER').AsFloat)
  else
    dTempCashOnHand := dsSubject.DataSet.FieldByName('CASH_ONHAND').AsFloat - dsSubject.DataSet.FieldByName('CREATED_VOUCHER').AsFloat;

  if dTempCashOnHand > 0 then
  begin
    cdsSICashOutstanding.DisableControls;

    cdsSICashOutstanding.Filter   := 'SETTLE_SIDE = '+QuotedStr('P');
    cdsSICashOutstanding.Filtered := True;

    cdsSICashOutstanding.First;
    while not cdsSICashOutstanding.Eof do
    begin
      if cdsCashVoucherHVOUCHERDATE.AsDateTime >= cdsSICashOutstandingDUEDATE.AsDateTime then
      begin
        if not (cdsSICashOutstanding.State in dsEditModes) then
          cdsSICashOutstanding.Edit;

        if not (cdsCashVoucherH.State in dsEditModes) then
          cdsCashVoucherH.Edit;

        if cdsCashVoucherHCCYCODE.IsNull then
          cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;

        cdsSICashOutstandingCHECKED.Value      := True;
        cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
        if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
          cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
        dTempCashOnHand := dTempCashOnHand + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;

        cdsSICashOutstanding.Post;
      end;

      cdsSICashOutstanding.Next;
    end;

    cdsSICashOutstanding.Filter   := 'SETTLE_SIDE = '+QuotedStr('R');
    cdsSICashOutstanding.Filtered := True;
    dFrom := cdsSICashOutstandingTRDDATE.AsDateTime;
    dTo   := cdsSICashOutstandingTRDDATE.AsDateTime;
    while not cdsSICashOutstanding.Eof do
    begin
      if cdsCashVoucherHVOUCHERDATE.AsDateTime >= cdsSICashOutstandingDUEDATE.AsDateTime then
      begin
        if (dTo < cdsSICashOutstandingTRDDATE.AsDateTime) and (cdsSICashOutstandingSITYPE.AsString = 'ET') then
          dTo := cdsSICashOutstandingTRDDATE.AsDateTime;

        if cdsSICashOutstandingSITYPE.AsString = 'PY' then
          sPenalty := '+Penalty';

        if dTempCashOnHand > 0 then sContinue := True else sContinue := False;
        if sContinue then
        begin
          if not (cdsSICashOutstanding.State in dsEditModes) then
            cdsSICashOutstanding.Edit;

          if not (cdsCashVoucherH.State in dsEditModes) then
            cdsCashVoucherH.Edit;

          if cdsCashVoucherHCCYCODE.IsNull then
            cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;

          if (dTempCashOnHand - cdsSICashOutstandingSETTLE_NETAMT.AsFloat) >= 0 then
          begin
            cdsSICashOutstandingCHECKED.Value      := True;
            cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
            if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
              cdsCashVoucherHTOTAL_AMOUNT.AsFloat  := cdsCashVoucherHTOTAL_AMOUNT.AsFloat - cdsSICashOutstandingPROCESSAMT.AsFloat;
            dTempCashOnHand                        := dTempCashOnHand - cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
          end
          else
          begin
            cdsSICashOutstandingCHECKED.Value      := True;
            cdsSICashOutstandingPROCESSAMT.AsFloat := Trunc(dTempCashOnHand);
            if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
              cdsCashVoucherHTOTAL_AMOUNT.AsFloat  := cdsCashVoucherHTOTAL_AMOUNT.AsFloat - cdsSICashOutstandingPROCESSAMT.AsFloat;
            dTempCashOnHand := 0;
          end;

          cdsSICashOutstanding.Post;
        end;
      end;
      cdsSICashOutstanding.Next;
    end;

    if cdsCashVoucherHTOTAL_AMOUNT.AsFloat > 0 then
      FCashVoucherType := 'P'
    else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
      FCashVoucherType := 'R'
    else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat = 0 then
    FCashVoucherType := 'N';

    cdsCashVoucherHVOUCHERTYPE.AsString := FCashVoucherType;
    btnCreateBankReceive.Visible := False; //(FCashVoucherType = 'R') and (cdsCashVoucherHTOTAL_AMOUNT.AsFloat > cdsCashVoucherHCASH_QQ.AsFloat);

    if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
      dTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1
    else
      dTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;

    if dTotalAmount < FNetAmount then
    begin
      if dFrom = dTo then
        cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'P/O TD_'+FormatDateTime('dd/mm/yyyy', dFrom)+' Rp '+FloatToStr(FNetAmount)+sPenalty
      else
        cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'P/O TD_'+FormatDateTime('dd/mm/yyyy', dFrom)+' - '+FormatDateTime('dd/mm/yyyy', dTo)+' Rp '+FloatToStr(FNetAmount)+sPenalty;
    end
    else
    begin
      if dFrom = dTo then
        cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD '+FormatDateTime('dd/mm/yyyy', dFrom)+sPenalty
      else
        cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD_'+FormatDateTime('dd/mm/yyyy', dFrom)+' - '+FormatDateTime('dd/mm/yyyy', dTo)+sPenalty;
    end;

    cdsSICashOutstanding.Filtered := False;
    cdsSICashOutstanding.EnableControls;
  end;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - trunc(cdsCashVoucherHTOTAL_AMOUNT.AsFloat))
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', trunc(cdsCashVoucherHTOTAL_AMOUNT.AsFloat));

  if FNetAmount < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - trunc(FNetAmount))
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', trunc(FNetAmount));

end;

procedure TfrmCashPayment.btnCashQQClick(Sender: TObject);
var
  dTempCashOnHand, dTRes, dTotalAmount: Double;
  bNext: Boolean;
begin
  dTempCashOnHand := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
  cdsSICashOutstanding.DisableControls;
  cdsSICashOutstanding.Filter   := 'SITYPE = '+QuotedStr('SK');
  cdsSICashOutstanding.Filtered := True;
  bNext := True;

  if dTempCashOnHand = 0 then
    MessageDlg('Total Receive must have value', mtWarning, [mbOk], 0)
  else
  begin
    cdsSICashOutstanding.First;
    while (not cdsSICashOutstanding.Eof) and (bNext) do
    begin
      if dTempCashOnHand >= 0 then bNext := False;

      if not (cdsSICashOutstanding.State in dsEditModes) then
        cdsSICashOutstanding.Edit;

      if not (cdsCashVoucherH.State in dsEditModes) then
        cdsCashVoucherH.Edit;

      if cdsCashVoucherHCCYCODE.IsNull then
        cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;

      if dTempCashOnHand < 0 then
      begin
        if cdsSICashOutstandingSETTLE_NETAMT.AsFloat <> cdsSICashOutstandingPROCESSAMT.AsFloat then
        begin
          if (dTempCashOnHand + cdsSICashOutstandingSETTLE_NETAMT.AsFloat) < 0 then
          begin
            cdsSICashOutstandingCHECKED.Value      := True;
            cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
            if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
              cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
            dTempCashOnHand := dTempCashOnHand + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
          end
          else
          begin
            cdsSICashOutstandingCHECKED.Value      := True;
            cdsSICashOutstandingPROCESSAMT.AsFloat := - dTempCashOnHand;
            if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
              cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
            dTempCashOnHand := 0;
          end;
        end;
      end;

      cdsSICashOutstanding.Post;
      cdsSICashOutstanding.Next;
    end;
  end;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat > 0 then
    FCashVoucherType := 'P'
  else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    FCashVoucherType := 'R'
  else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat = 0 then
  FCashVoucherType := 'N';

  cdsCashVoucherHVOUCHERTYPE.AsString := FCashVoucherType;
  btnCreateBankReceive.Visible := False; //(FCashVoucherType = 'R') and (cdsCashVoucherHTOTAL_AMOUNT.AsFloat > cdsCashVoucherHCASH_QQ.AsFloat);

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    dTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1
  else
    dTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;

  cdsSICashOutstanding.Filtered := False;
  cdsSICashOutstanding.EnableControls;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - trunc(cdsCashVoucherHTOTAL_AMOUNT.AsFloat))
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', trunc(cdsCashVoucherHTOTAL_AMOUNT.AsFloat));

  if FNetAmount < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - trunc(FNetAmount))
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', trunc(FNetAmount));

end;

function TfrmCashPayment.GetExRate: Double;
begin
  cdsExRateValue.Close;
  cdsExRateValue.Params[0].AsString := cdsCashVoucherHCCYCODE.AsString;
  cdsExRateValue.Params[1].AsString := cdsCashVoucherHCCYCODE_FX.AsString;
  cdsExRateValue.Params[2].AsDate := cdsCashVoucherHENTRYDATE.AsDateTime;
  cdsExRateValue.Open;

  if cdsExRateValueINVERSE_CONVERSION_VALUE.AsFloat < 1 then
    Result := cdsExRateValueCONVERSION_VALUE.AsFloat
  else
    Result := cdsExRateValueINVERSE_CONVERSION_VALUE.AsFloat;

  FInverseExRate := cdsExRateValueINVERSE_CONVERSION_VALUE.AsFloat >= 1;
end;

procedure TfrmCashPayment.FormShow(Sender: TObject);
begin
  dtDueDate.Date := FDueDate;
  FNetAmount     := 0;
  NetAmount;

  if FNetAmount < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - trunc(FNetAmount))
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', trunc(FNetAmount));
end;

procedure TfrmCashPayment.GenerateBankFile;
var
  sBankCode, sBankInstruction, sBICode, sFileDir, sFileName, sMsg: String;
  oBankList: TStringList;

  sTransferType: string;
  s1, s2, s3, s4, s5, s6, s7,
  s8, s9, s10, s11, s12, s13,
  s14, s15, s16 : string;
begin
  //Request By Irvan 20160123 start
  cdsBank.Close;
  cdsBank.Params[0].AsString := cdsCashVoucherHCUST_BANKCODE.AsString;
  cdsBank.Open;
  sBICode := cdsBankBICODE.AsString;

  oBankList := TStringList.Create;
  Try
    sBankCode := cdsCashVoucherHBROKER_BANKCODE.AsString;

    if cdsCashVoucherHVOUCHERTYPE.AsString = 'P' then//Payment
    begin
      if sBankCode = 'BBCA' then
      begin
        sTransferType := cdsCashVoucherHTRANSFERMODE.AsString;
        if sTransferType = 'RTGS' then
          sTransferType := 'RTG'
        else if sTransferType = 'LOCAL' then
          sTransferType := 'BCA';

        s1  := '0|FT|';
        s3  := cdsCashVoucherHVOUCHERID.AsString+'|';
        s4  := '|';
        s5  := cdsCashVoucherHVOUCHERTYPE.AsString+'|';
        s6  := FormatDateTime('YYYYMMDD', cdsCashVoucherHVOUCHERDATE.AsDateTime)+'|';
        s7  := leftStr(dmGlobal.RemoteServer.GetGlobalParamString('754'), 10)+'|';
        s8  := FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)+'|';
        s9  := IntToStr(cdsCashVoucherH.RecordCount)+'|';
        s10 := sTransferType+'|';
        s11 := cdsCashVoucherHCCYCODE.AsString+'|';

        sBankInstruction := s1+s3+s4+s5+s6+s7+s8+s9+s10+s11;
        oBankList.Add(sBankInstruction);

        s1  := '1|';
        s2  := '1|';
        s3  := cdsCashVoucherHVOUCHERNO.AsString+'|';
        s4  := cdsCashVoucherHBROKER_BANKACCNO.AsString+'|';
        s5  := cdsCashVoucherHCUST_BANKACCNO.AsString+'|';
        s6  := FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)+'|';
        s7  := '|';
        s8  := '|';
        s9  := sBICode + '|';
        s10 := cdsCashVoucherHCUST_BANKACCNAME.AsString+'|';
        s11 := cdsCashVoucherHCUST_BANKACCBRANCH.AsString+'|';
        s12 := cdsCashVoucherHACCNAME.AsString+'|';
        s13 := '||||';

        sBankInstruction := s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13;
      end
      else if sBankCode = 'BMRI' then
        sBankInstruction := cdsCashVoucherHCUST_BANKACCNO.AsString + ','
          + cdsCashVoucherHCUST_BANKACCNAME.AsString + ',,,,IDR' + ','
          + FormatFloat('#', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
          + ',[' + LeftStr(cdsCashVoucherHBANK_REFERENCE.AsString, 17) + '],'
          + sBICode + ',IBU,,Mandiri,,,,,N,Email,,,,,,,,,,,,,,,,,,,,,,,' + sBICode
      else if sBankCode = 'BNLI' then
        sBankInstruction := 'PermataBank,0,Jakarta,013,'
          + cdsCashVoucherHCUST_BANKACCNAME.AsString + ','+ cdsCashVoucherHCUST_BANKACCNO.AsString
          + ',IDR,' + FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
          + ',['+cdsCashVoucherHBANK_REFERENCE.AsString+']' + ',0,,ovb,1,1,Bursa Efek Indonesia,'
          + sBICode + ',0,' + FormatDateTime('yyyymmdd', cdsCashVoucherHVOUCHERDATE.AsDateTime)
      else if sBankCode = 'BNGA' then
        sBankInstruction := cdsCashVoucherHCUST_BANKACCNO.AsString + ','
          + cdsCashVoucherHCUST_BANKACCNAME.AsString + ',IDR,'
          + FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
          + ',['+cdsCashVoucherHBANK_REFERENCE.AsString+']' + ',' +'bsfinance@bahana.co.id'
      else if sBankCode = 'BBNI' then
        sBankInstruction := cdsCashVoucherHCUST_BANKACCNO.AsString + ',"'
          + cdsCashVoucherHCUST_BANKACCNAME.AsString + '",'
          + FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat) + ',['
          + cdsCashVoucherHBANK_REFERENCE.AsString + '],,,,,,,,,,,,,Y,bsfinance@bahana.co.id,,N';

      oBankList.Add(sBankInstruction);

      if sBankCode = 'BBNI' then
      begin
        oBankList.Add('0, '+ FormatDateTime('dd/mm/yyyy hh:nn:ss', Now) + ',1,Payment,,,,,,,,,,,,,,,,,');
        oBankList.Add('1, P,' + FormatDateTime('yyyymmdd', cdsCashVoucherHVOUCHERDATE.AsDateTime) + ','
          + cdsCashVoucherHCUST_BANKACCNO.AsString + ',1,' + FormatFloat('#', cdsCashVoucherHTOTAL_AMOUNT.AsFloat) +',,,,,,,,,,,,,,,');
      end;
    end
    else //Receive
    begin
      if sBankCode = 'BBCA' then
      begin
        sTransferType := cdsCashVoucherHTRANSFERMODE.AsString;
        if sTransferType = 'RTGS' then
          sTransferType := 'RTG'
        else if sTransferType = 'LOCAL' then
          sTransferType := 'BCA';

        s1  := '0|FT|';
        s3  := cdsCashVoucherHVOUCHERID.AsString+'|';
        s4  := '|';
        s5  := cdsCashVoucherHVOUCHERTYPE.AsString+'|';
        s6  := FormatDateTime('YYYYMMDD', cdsCashVoucherHVOUCHERDATE.AsDateTime)+'|';
        s7  := leftStr(dmGlobal.RemoteServer.GetGlobalParamString('754'), 10)+'|';
        s8  := FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)+'|';
        s9  := IntToStr(cdsCashVoucherH.RecordCount)+'|';
        s10 := sTransferType+'|';
        s11 := cdsCashVoucherHCCYCODE.AsString+'|';

        sBankInstruction := s1+s3+s4+s5+s6+s7+s8+s9+s10+s11;
        oBankList.Add(sBankInstruction);

        s1  := '1|';
        s2  := '1|';
        s3  := cdsCashVoucherHVOUCHERNO.AsString+'|';
        s4  := cdsCashVoucherHBROKER_BANKACCNO.AsString+'|';
        s5  := cdsCashVoucherHCUST_BANKACCNO.AsString+'|';
        s6  := FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)+'|';
        s7  := '|';
        s8  := '|';
        s9  := sBICODE+'|';
        s10 := cdsCashVoucherHCUST_BANKACCNAME.AsString+'|';
        s11 := cdsCashVoucherHCUST_BANKACCBRANCH.AsString+'|';
        s12 := cdsCashVoucherHACCNAME.AsString+'|';
        s13 := '||||';

        sBankInstruction := s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13;
      end
      else if sBankCode = 'BMRI' then
        sBankInstruction := cdsCashVoucherHCUST_BANKACCNO.AsString + ','
          + cdsCashVoucherHCUST_BANKACCNAME.AsString + ',' + FormatFloat('#', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
          + ',['+ LeftStr(cdsCashVoucherHBANK_REFERENCE.AsString, 17) + '],' + sBICODE + ',,N,Email'
      else if sBankCode = 'BNLI' then
        sBankInstruction :=  'PermataBank,0,Jakarta,013,' + dmGlobal.RemoteServer.GetGlobalParamString('001')
          + ',' + cdsCashVoucherHBROKER_BANKACCNO.AsString + ',IDR,' + FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
          + ',[' + cdsCashVoucherHBANK_REFERENCE.AsString + ']' + ',0,,ovb,1,1,Bursa Efek Indonesia,'
          + sBICODE + ',0,' + FormatDateTime('yyyymmdd', cdsCashVoucherHVOUCHERDATE.AsDateTime) + ','
          + cdsCashVoucherHCUST_BANKACCNAME.AsString + ',' + cdsCashVoucherHCUST_BANKACCNO.AsString + ',IDR'
      else if sBankCode = 'BNGA' then
        sBankInstruction := cdsCashVoucherHCUST_BANKACCNO.AsString + ',' + cdsCashVoucherHCUST_BANKACCNAME.AsString
          + ',IDR,' + FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat) + ',['
          + cdsCashVoucherHBANK_REFERENCE.AsString +']' + ',' +'bsfinance@bahana.co.id'
      else if sBankCode = 'BBNI' then
        sBankInstruction := 'MT100,,'+ FormatDateTime('YYYYMMDD', cdsCashVoucherHVOUCHERDATE.AsDateTime)
          + ',IDR' + FormatFloat('#.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat) + ','
          + cdsCashVoucherHCUST_BANKACCNO.AsString + ',' + cdsCashVoucherHCUST_BANKACCNAME.AsString + ',,,,,,,BNINIDJA,BNI,JAKARTA,,'
          + cdsCashVoucherHBROKER_BANKCODE.AsString + ',' + cdsCashVoucherHBROKER_BANKACCNAME.AsString +',['
          + cdsCashVoucherHBANK_REFERENCE.AsString + '],,OUR,bsfinance@bahana.co.id,';

      oBankList.Add(sBankInstruction);

      if sBankCode = 'BNGA' then
      begin
        oBankList.Add(cdsCashVoucherHBROKER_BANKACCNO.AsString + ',' + cdsCashVoucherHCUST_BANKACCNAME.AsString
          + ',' + 'IDR' + ',' + FormatFloat('#', cdsCashVoucherHTOTAL_AMOUNT.AsFloat) + ','
          + cdsCashVoucherHBROKER_BANKACCBRANCH.AsString + ',' + IntToStr(cdsCashVoucherH.RecordCount)
          + ',' + FormatDateTime('YYYYMMDD', cdsCashVoucherHVOUCHERDATE.AsDateTime) + ',bsfinance@bahana.co.id');
      end;

    end;

    sFileDir := dmGlobal.FITSBankInterfaceDir + sBankCode;
    if not DirectoryExists(sFileDir) then
      CreateDir(sFileDir);
    if sBankCode = 'BBCA' then
    begin
      if cdsCashVoucherHVOUCHERTYPE.AsString = 'P' then
        sFileName := sFileDir+'\Payment_BCA_'+FormatDateTime('YYYYMMDDHHNNSSZZZ', Now)+'.txt'
      else
        sFileName := sFileDir+'\Receive_BCA_'+FormatDateTime('YYYYMMDDHHNNSSZZZ', Now)+'.txt';
    end
    else
      if cdsCashVoucherHVOUCHERTYPE.AsString = 'P' then
        sFileName := sFileDir + '\Payment_' + sBankCode + '_' + cdsCashVoucherHCUST_BANKACCNO.AsString + '_'
          + FormatDateTime('YYYYMMDDHHNNSSZZZ', Now) + '.csv'
      else
        sFileName := sFileDir + '\Receive_' + sBankCode + '_' + cdsCashVoucherHCUST_BANKACCNO.AsString + '_'
          + FormatDateTime('YYYYMMDDHHNNSSZZZ', Now) + '.csv';

    oBankList.SaveToFile(sFileName);
  Finally
    FreeAndNil(oBankList);
  End;

  sMsg := 'Bank Instruction File Created Successfully with Bank Refference '
    + cdsCashVoucherHBANK_REFERENCE.AsString + #13#10
    + 'File at ' + QuotedStr(sFileName);

  ShowMessage(sMsg);
  //Request By Irvan 20160123 end

end;

procedure TfrmCashPayment.gvwMasterCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  gvwMasterCHECKED.Focused := True;
end;

procedure TfrmCashPayment.gvwMasterCHECKEDPropertiesChange(Sender: TObject);
begin
  OnCheckedChanged;
end;

procedure TfrmCashPayment.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat = 0 then
    cdsCashVoucherHVOUCHER_DESC.AsString := '';
end;

function TfrmCashPayment.IPOPaymentToBAE(IPOID, ABrokerBankID: Integer;
  AIPOType: String): TModalResult;
var
  oForm: TfrmCashPayment;
  dtTransDate, dtProcess: TDateTime;
  sUser: String;
  VoucherAmt: Double;
  SIID: Int64;
  sDesc, sSIType: String;
label
  Selesai;
begin
  Result := mrNone;

  oForm := TfrmCashPayment.Create(nil);
  Try
    with oForm do
    begin
      cdsIPO.Close;
      cdsIPO.Params[0].AsInteger := IPOID;
      cdsIPO.Open;

      if cdsIPO.IsEmpty then
      begin
        Goto Selesai;
      end
      else
      begin
        if ((AIPOType = 'AL') and (cdsIPOALLOTMENT_VOUCHER.AsString = '1'))
          or ((AIPOType = 'PO') and (cdsIPOPOOLING_VOUCHER.AsString = '1')) then
          Goto Selesai;
      end;

      AccountID := dmGlobal.RemoteServer.GetBrokerAccount;
      dtTransDate := dmGlobal.RemoteServer.GetTransDate;
      dtDueDate.Date := dtTransDate;

      cdsLuBrokerBank.Close;
      cdsLuBrokerBank.Params[0].AsInteger := AccountID;
      cdsLuBrokerBank.Open;

      cdsLuCustBank.Close;
      cdsLuCustBank.Params[0].AsInteger := AccountID;
      cdsLuCustBank.Open;

      cdsAccCashPos.Close;
      cdsAccCashPos.Params[0].AsDate := dtTransDate;
      cdsAccCashPos.Params[1].AsInteger := AccountID;
      cdsAccCashPos.Open;

      cdsAccCreatedVoucher.Close;
      cdsAccCreatedVoucher.Params[0].AsInteger := AccountID;
      cdsAccCreatedVoucher.Open;

      cdsCashVoucherH.Close;
      cdsCashVoucherH.Params[0].AsInteger := 0;
      cdsCashVoucherH.Open;
{
      cdsSICashOutstanding.Close;
      cdsSICashOutstanding.Params[0].AsInteger := AccountID;
      cdsSICashOutstanding.Params[1].AsInteger := 0;
      cdsSICashOutstanding.Params[2].AsDate := dtDueDate.Date;
      cdsSICashOutstanding.Open;
 }
      if AIPOType = 'AL' then
      begin
{        cdsAllotmentBAEAmount.Close;
        cdsAllotmentBAEAmount.Params[0].AsInteger := IPOID;
        cdsAllotmentBAEAmount.Open;

        if not cdsAllotmentBAEAmount.IsEmpty then
          VoucherAmt := cdsAllotmentBAEAmountAMOUNT.AsFloat
        else
          VoucherAmt := 0;
 }
        sSIType := 'IA';
        sDesc := 'Allotment ';
      end
      else if AIPOType = 'PO' then
      begin
{        cdsPoolingBAEAmount.Close;
        cdsPoolingBAEAmount.Params[0].AsInteger := IPOID;
        cdsPoolingBAEAmount.Open;

        if not cdsPoolingBAEAmount.IsEmpty then
          VoucherAmt := cdsPoolingBAEAmountAMOUNT.AsFloat
        else
          VoucherAmt := 0;
 }
        sSIType := 'IP';
        sDesc := 'Pooling ';
      end;

      cdsSICashOutstandingIPO.Close;
      cdsSICashOutstandingIPO.Params[0].AsInteger := AccountID;
      cdsSICashOutstandingIPO.Params[1].AsString := sSIType;
      cdsSICashOutstandingIPO.Params[2].AsInteger := IPOID;
      cdsSICashOutstandingIPO.Open;

      VoucherAmt := 0;
      if not cdsSICashOutstandingIPO.IsEmpty then
      begin
        cdsSICashOutstandingIPO.First;
        while not cdsSICashOutstandingIPO.Eof do
        begin
          cdsSICashOutstandingIPO.Edit;
          if cdsSICashOutstandingIPOSETTLE_NETAMT.AsFloat > cdsSICashOutstandingIPOVOUCHERAMT.AsFloat then
          begin
            cdsSICashOutstandingIPOPROCESSAMT.AsFloat := cdsSICashOutstandingIPOSETTLE_NETAMT.AsFloat - cdsSICashOutstandingIPOVOUCHERAMT.AsFloat;
            cdsSICashOutstandingIPOCHECKED.AsBoolean := True;
          end
          else
          begin
            cdsSICashOutstandingIPOPROCESSAMT.AsFloat := 0;
            cdsSICashOutstandingIPOCHECKED.AsBoolean := False;
          end;
          VoucherAmt := VoucherAmt + cdsSICashOutstandingIPOPROCESSAMT.AsFloat;
          cdsSICashOutstandingIPO.Post;

          cdsSICashOutstandingIPO.Next;
        end;
      end;

      if VoucherAmt = 0 then
        Goto Selesai;
{
      SIID := dmGlobal.RemoteServer.GetSeq('TBL_B_SETTLE_INSTR');
      cdsSICashOutstanding.Append;
      cdsSICashOutstandingSIID.AsLargeInt := SIID;
      cdsSICashOutstandingSINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(dtTransDate, 'SI', 'TBL_B_SETTLE_INSTR');
      cdsSICashOutstandingENTRYDATE.AsDateTime := dtTransDate;
      cdsSICashOutstandingVALUEDATE.AsDateTime := cdsIPODUEDATE.AsDateTime;
      cdsSICashOutstandingSITYPE.AsString := 'IP';
      cdsSICashOutstandingCASH_STOCK.AsString := 'C';
      cdsSICashOutstandingSETTLE_SIDE.AsString := 'P';
      cdsSICashOutstandingNETTYPE.AsString := 'S';
      cdsSICashOutstandingTRDDATE.AsDateTime := dtTransDate;
      cdsSICashOutstandingDUEDATE.AsDateTime := cdsIPODUEDATE.AsDateTime;
      cdsSICashOutstandingSTAT.AsString := 'O';
      cdsSICashOutstandingSI_DESC.AsString := 'BAE Payment for IPO ' + sDesc + cdsIPOIPOCODE.AsString +' ('+ cdsIPOSCRIPNAME.AsString +')';
      cdsSICashOutstandingACCID.AsInteger := AccountID;
      cdsSICashOutstandingSETTLE_CCYCODE.AsString := cdsIPOCCY.AsString;
      cdsSICashOutstandingSETTLE_EXRATE.AsFloat := 1;
      cdsSICashOutstandingPROCESSAMT.AsFloat := VoucherAmt;
      cdsSICashOutstandingSETTLE_NETAMT.AsFloat := VoucherAmt;
      cdsSICashOutstandingISDEL.AsInteger := 0;
      cdsSICashOutstandingID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('MAIN.B_SETTLE_INSTR');
      cdsSICashOutstandingCHECKED.AsBoolean := True;
      cdsSICashOutstanding.Post;
 }
      cdsCashVoucherH.Append;
      cdsCashVoucherHVOUCHERNO.AsString := '<AUTO>';
      cdsCashVoucherHVOUCHERTYPE.AsString := 'P';
      cdsCashVoucherHENTRYDATE.AsDateTime := dtTransDate;
      cdsCashVoucherHVOUCHERDATE.AsDateTime := dtTransDate;
      cdsCashVoucherHVOUCHER_DESC.AsString := 'BAE Payment for IPO ' + sDesc + cdsIPOIPOCODE.AsString +' ('+ cdsIPOSCRIPNAME.AsString +')';
      cdsCashVoucherHACCID.AsInteger := AccountID;
      cdsCashVoucherHBROKER_BANKID.AsInteger := ABrokerBankID;
      cdsCashVoucherHPOSTED.AsString := '0';
      cdsCashVoucherHCCYCODE.AsString := cdsIPOCCY.AsString;
      cdsCashVoucherHCCYCODE_FX.AsString := cdsIPOCCY.AsString;
      cdsCashVoucherHTOTAL_AMOUNT.AsFloat := VoucherAmt;

      Height := Height - grdMaster.Height;
      grdMaster.Visible := False;
      lgDueDate.Visible := False;
      lcAll.Visible := False;
      lgBrokerBank.CaptionOptions.Text := 'Source Bank';
      lgCustBank.CaptionOptions.Text := 'Target Bank';
      rgVoucherType.Properties.Items[0].Caption := 'Payment to BAE';
      rgVoucherType.Properties.Items[1].Caption := 'Receive from BAE';

      if oForm.ShowModal = mrOk then
      begin
        if (cdsSICashOutstanding.State in dsEditModes) then
          cdsSICashOutstanding.Post;

        dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
        sUser := dmGlobal.UserID;

        cdsCashVoucherHVOUCHERID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_VOUCHER_H');
        cdsCashVoucherHVOUCHERNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucherHVOUCHERDATE.AsDateTime, 'CV', 'TBL_CASH_VOUCHER_H');
        cdsCashVoucherHSTAT.AsString := 'O';
        cdsCashVoucherHMODDA.AsDateTime := dtProcess;
        cdsCashVoucherHMODUI.AsString := sUser;
        cdsCashVoucherHISDEL.AsInteger := 0;
        cdsCashVoucherHID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CASH_VOUCHER_H');
        if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
          cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1;

        cdsSICashOutstandingIPO.First;
        while not cdsSICashOutstandingIPO.Eof do
        begin
          if cdsSICashOutstandingIPOCHECKED.AsBoolean then
          begin
            if (cdsSICashOutstandingIPOPROCESSAMT.AsFloat > 0) then
            begin
              cdsCashVoucherD.Append;
              cdsCashVoucherDLINKTYPE.AsString := 'SIID';
              cdsCashVoucherDTRANS_TYPE.AsString := cdsSICashOutstandingIPOSITYPE.AsString;
              cdsCashVoucherDLINKID.AsLargeInt   := cdsSICashOutstandingIPOSIID.AsLargeInt;
              cdsCashVoucherDLINKNO.AsString     := cdsSICashOutstandingIPOSINO.AsString;
              cdsCashVoucherDTRDDATE.AsDateTime := cdsSICashOutstandingIPOTRDDATE.AsDateTime;
              cdsCashVoucherDDUEDATE.AsDateTime := cdsSICashOutstandingIPODUEDATE.AsDateTime;
              cdsCashVoucherDCASH_DESC.AsString := cdsSICashOutstandingIPOSI_DESC.AsString;
              cdsCashVoucherDNETTYPE.AsString := cdsSICashOutstandingIPONETTYPE.AsString;
              cdsCashVoucherDTRANS_AMT.AsFloat := cdsSICashOutstandingIPOPROCESSAMT.AsFloat;
              cdsCashVoucherDAMOUNT.AsFloat := cdsSICashOutstandingIPOPROCESSAMT.AsFloat;
              cdsCashVoucherDMODDA.AsDateTime := dtProcess;
              cdsCashVoucherDMODUI.AsString := sUser;
              cdsCashVoucherDISDEL.AsInteger := 0;
              cdsCashVoucherDCCYCODE.AsString := cdsSICashOutstandingIPOSETTLE_CCYCODE.AsString;
              if cdsSICashOutstandingIPOSETTLE_SIDE.AsString = 'P' then
                cdsCashVoucherDDC.AsString    := 'D'
              else if cdsSICashOutstandingIPOSETTLE_SIDE.AsString = 'R' then
                cdsCashVoucherDDC.AsString    := 'C';
              cdsCashVoucherDEXRATE.AsFloat   := dmGlobal.RemoteServer.GetCCYRate(cdsSICashOutstandingIPOTRDDATE.AsDateTime, cdsSICashOutstandingIPOSETTLE_CCYCODE.AsString);
              cdsCashVoucherDFXAMOUNT.AsFloat := cdsCashVoucherDEXRATE.AsFloat * cdsCashVoucherDAMOUNT.AsFloat;
              cdsCashVoucherDACCID.AsInteger  := cdsSICashOutstandingIPOACCID.AsInteger;
              cdsCashVoucherDACCNO.AsString   := cdsSICashOutstandingIPOACCNO.AsString;
              cdsCashVoucherDACCNAME.AsString := cdsSICashOutstandingIPOACCNAME.AsString;
              cdsCashVoucherD.Post;

              cdsSICashOutstandingIPO.Edit;
              cdsSICashOutstandingIPOVOUCHERAMT.AsFloat := cdsSICashOutstandingIPOVOUCHERAMT.AsFloat + cdsSICashOutstandingIPOPROCESSAMT.AsFloat;
              cdsSICashOutstandingIPOVOUCHERDATE.AsDateTime := dtTransDate;
              cdsSICashOutstandingIPOMODDA.AsDateTime := dtProcess;
              cdsSICashOutstandingIPOMODUI.AsString := sUser;
              cdsSICashOutstandingIPO.Post;
            end;
          end;

          cdsSICashOutstandingIPO.Next;
        end;

        if not cdsCashVoucherD.IsEmpty then
        begin
          if cdsCashVoucherH.ApplyUpdates(0) = 0 then
          begin
            cdsIPO.Edit;
            if AIPOType = 'AL' then
            begin
              cdsIPOALLOTMENT_VOUCHER.AsString := '1';
              cdsIPOALLOTMENT_AMOUNT.AsFloat := VoucherAmt;
//              cdsIPOALLOTMENT_SIID.AsLargeInt := SIID;
            end
            else if AIPOType = 'PO' then
            begin
              cdsIPOPOOLING_VOUCHER.AsString := '1';
              cdsIPOPOOLING_AMOUNT.AsFloat := VoucherAmt;
//              cdsIPOPOOLING_SIID.AsLargeInt := SIID;
            end;
            cdsIPO.Post;
            cdsIPO.ApplyUpdates(-1);

            cdsSICashOutstandingIPO.ApplyUpdates(-1);
            Result := mrOk;
          end;
        end;

      end;

    end;

    Selesai :

  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmCashPayment.NetAmount;
var
  dProcessAmount: Double;
begin
  FNetAmount := 0;

  cdsSICashOutstanding.First;
  while not cdsSICashOutstanding.Eof do
  begin
    if cdsSICashOutstandingCHECKED.AsBoolean then
    begin
      dProcessAmount := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
      if dProcessAmount > 0 then
      begin
        if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
          FNetAmount := FNetAmount + cdsSICashOutstandingSETTLE_NETAMT.AsFloat
        else
          FNetAmount := FNetAmount - cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
      end;
    end
    else
    begin
      if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
        FNetAmount := FNetAmount - cdsSICashOutstandingSETTLE_NETAMT.AsFloat
      else
        FNetAmount := FNetAmount + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
    end;

    cdsSICashOutstanding.Next;
  end;
end;

procedure TfrmCashPayment.OnCheckedChanged;
var
  dTotalAmount: Double;
  sPenalty: string;
begin
  sPenalty := '';
  if StrToInt(FormatDateTime('yyyy', FFromDate)) < 1990 then
  begin
    FFromDate := cdsSICashOutstandingTRDDATE.AsDateTime;
    FToDate   := cdsSICashOutstandingTRDDATE.AsDateTime;
  end
  else
    FToDate   := cdsSICashOutstandingTRDDATE.AsDateTime;

  if not (cdsSICashOutstanding.State in dsEditModes) then
    cdsSICashOutstanding.Edit;

  if not (cdsCashVoucherH.State in dsEditModes) then
    cdsCashVoucherH.Edit;

  if cdsCashVoucherHCCYCODE.IsNull then
    cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;

  if cdsSICashOutstandingCHECKED.AsBoolean then
  begin
    cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
    if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
    begin
      if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
        cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat
      else
        cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat - cdsSICashOutstandingPROCESSAMT.AsFloat;
    end;
  end
  else
  begin
    if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
    begin
      if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
        cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat - cdsSICashOutstandingPROCESSAMT.AsFloat
      else
        cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
    end;
    cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
  end;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat > 0 then
    FCashVoucherType := 'P'
  else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    FCashVoucherType := 'R'
  else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat = 0 then
    FCashVoucherType := 'N';
  cdsCashVoucherHVOUCHERTYPE.AsString := FCashVoucherType;

  if gvwMaster.DataController.Summary.FooterSummaryValues[1] > 0 then
    dTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1
  else
    dTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;

  if FFromDate = FToDate then
    cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD_'+FormatDateTime('dd/mm/yyyy', FFromDate)
  else
    cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD_'+FormatDateTime('dd/mm/yyyy', FFromDate)+' - '+FormatDateTime('ddmmyyyy', FToDate);

  if (dTotalAmount < FNetAmount) or (dTotalAmount > FNetAmount) then
    cdsCashVoucherHVOUCHER_DESC.AsString := cdsCashVoucherHVOUCHER_DESC.AsString+' P/O : '+FloatToStr(FNetAmount)
  else if dTotalAmount = FNetAmount then
  begin
    if FFromDate = FToDate then
      cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD_'+FormatDateTime('dd/mm/yyyy', FFromDate)
    else
      cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD_'+FormatDateTime('dd/mm/yyyy', FFromDate)+' - '+FormatDateTime('ddmmyyyy', FToDate);
  end;

  cdsSICashOutstanding.Post;

  if FNetAmount < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - FNetAmount)
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', FNetAmount);

end;

procedure TfrmCashPayment.OnCheckedSelectedAll;
var
  dFromDate, dToDate: TDate;
  sPenalty: string;
begin
  cdsSICashOutstanding.DisableControls;
  sPenalty := '';

  cdsCashVoucherSelectAll.Close;
  cdsCashVoucherSelectAll.Params[0].AsInteger := AccountID;
  cdsCashVoucherSelectAll.Params[1].AsDate    := dtVoucherDate.Date;
  if cbAll.Checked then
    cdsCashVoucherSelectAll.Params[2].AsInteger := 1
  else
    cdsCashVoucherSelectAll.Params[2].AsInteger := 0;
  cdsCashVoucherSelectAll.Open;

  cdsSICashOutstanding.First;
  dFromDate := cdsSICashOutstandingTRDDATE.AsDateTime;
  dToDate   := cdsSICashOutstandingTRDDATE.AsDateTime;
  while not cdsSICashOutstanding.Eof do
  begin
    cdsSICashOutstanding.Edit;

    if chkSelectAll.Checked then
    begin
      if cdsCashVoucherHVOUCHERDATE.AsDateTime >= cdsSICashOutstandingDUEDATE.AsDateTime then
      begin
        cdsSICashOutstandingCHECKED.AsBoolean  := true;
        cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
      end;
    end
    else
    begin
      cdsSICashOutstandingCHECKED.AsBoolean  := False;
      cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
    end;
    cdsSICashOutstanding.Post;
    if (dFromDate < cdsSICashOutstandingTRDDATE.AsDateTime) and (cdsSICashOutstandingSITYPE.AsString = 'ET') then
      dToDate := cdsSICashOutstandingTRDDATE.AsDateTime;

    if cdsSICashOutstandingSITYPE.AsString = 'PY' then
      sPenalty := '+Penalty';

    cdsSICashOutstanding.Next;
  end;

  cdsCashVoucherH.Edit;
  if chkSelectAll.Checked then
    cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherSelectAllPROCESSAMT.AsFloat
  else
    cdsCashVoucherHTOTAL_AMOUNT.AsFloat := 0;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat > 0 then
    FCashVoucherType := 'P'
  else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    FCashVoucherType := 'R'
  else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat = 0 then
    FCashVoucherType := 'N';
  cdsCashVoucherHVOUCHERTYPE.AsString := FCashVoucherType;

  if dFromDate = dToDate then
    cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+sPenalty
  else
    cdsCashVoucherHVOUCHER_DESC.AsString := FBankDefaultDesc +'TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+' - '+FormatDateTime('dd/mm/yyyy', dToDate)+sPenalty;

  cdsSICashOutstanding.EnableControls;
  gvwMaster.DataController.Summary.Recalculate;

  if not chkSelectAll.Checked then
     cdsCashVoucherHVOUCHER_DESC.AsString := '';

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);

  if FNetAmount < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - FNetAmount)
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', FNetAmount);
end;

function TfrmCashPayment.Run(ACCID, ABrokerBankID: Integer; ACCY: string; ACashOnHand, ACreateVoucher, ACashQQ: Double;
  ADueDate: TDateTime; ASaveKeep: string; ASettleType, ATransType: string): TModalResult;
var
  oForm: TfrmCashPayment;
  dtTransDate, dtProcess: TDateTime;
  sUser: String;
  dAmount: Double;
  dCashOnHand, dTotalAmount, dCashQQ: Double;
  bContinue: Boolean;
  sMsg: string;
  dTempCashOnHand: Double;
  bNext: Boolean;
  xCreateCash: string;
  xAmount: Double;
  xAccID: Integer;
  xAccCode, xAccName, xACCY: string;
  xChangeAcc: Boolean;
  xBuySell, xDC, xTransType: string;
begin
  Result      := mrNone;
  bContinue   := True;
  bNext       := True;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;

  oForm := TfrmCashPayment.Create(nil);
  Try
    with oForm do
    begin
      FSumNetAmount    := 0;
      AccountID        := ACCID;
      FDueDate         := ADueDate;
      FBankDefaultDesc := dmGlobal.RemoteServer.GetGlobalParamString('771');
      FSaveKeep        := ASaveKeep;
      FSettleType      := ASettleType;

      cdsAccFullFlow.Close;
      cdsAccFullFlow.Params[0].AsInteger := ACCID;
      cdsAccFullFlow.Open;
      FTransType       := cdsAccFullFlowSETTLE_TYPE.AsString;

      cdsLuBrokerBank.Close;
      cdsLuBrokerBank.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
      cdsLuBrokerBank.Open;

      cdsCashVoucherH.Close;
      cdsCashVoucherH.Params[0].AsInteger := 0;
      cdsCashVoucherH.Open;

      dmGlobal.IntDataLookup.cdsLuBank.Close;
      dmGlobal.IntDataLookup.cdsLuBank.Open;

      cdsRDNBankAccount.Close;
      cdsRDNBankAccount.Params[0].AsInteger := ACCID;
      cdsRDNBankAccount.Open;

      cdsCashVoucherH.Append;
      cdsCashVoucherHVOUCHERNO.AsString := '<AUTO>';
      cdsCashVoucherHVOUCHERTYPE.AsString := 'P';
      cdsCashVoucherHENTRYDATE.AsDateTime := dtTransDate;
      cdsCashVoucherHVOUCHERDATE.AsDateTime := ADueDate;
      cdsCashVoucherHACCID.AsInteger := ACCID;
      cdsCashVoucherHPOSTED.AsString := '0';
      cdsCashVoucherHCCYCODE.AsString := ACCY;
      cdsCashVoucherHCCYCODE_FX.AsString := 'IDR'; //cdsCashVoucherHCCYCODE.AsString;
      cdsCashVoucherHCASH_ONHAND.AsFloat := ACashOnHand;
      cdsCashVoucherHCASH_QQ.AsFloat := ACashQQ;

      btnCreateBankReceive.Visible := ((FTransType = 'C') or (FTransType = 'E')) and (cdsCashVoucherHVOUCHERTYPE.AsString = 'R');
//      btnCashQQ.Visible            := ((FTransType = 'C') or (FTransType = 'E')) and (cdsCashVoucherHVOUCHERTYPE.AsString = 'R');
      btnCashOnHand.Visible        := ((FTransType = 'R') or (FTransType = 'F')) and (cdsCashVoucherHVOUCHERTYPE.AsString = 'P');

      if not cdsRDNBankAccount.IsEmpty then
      begin
        cdsCashVoucherHCUST_BANKID.AsInteger       := cdsRDNBankAccountACCBANKID.AsInteger;
        cdsCashVoucherHCUST_BANKCODE.AsString      := cdsRDNBankAccountBNCODE.AsString;
        cdsCashVoucherHCUST_BANKACCNO.AsString     := cdsRDNBankAccountBANKACCNO.AsString;
        cdsCashVoucherHCUST_BANKACCNAME.AsString   := cdsRDNBankAccountBANKACCNAME.AsString;
        cdsCashVoucherHCUST_BANKACCBRANCH.AsString := cdsRDNBankAccountBANKBRANCH.AsString;
      end;

//      with dmGlobal.IntDataLookup do
//      begin
//        cdsLuBankRDNByAccount.Close;
//        cdsLuBankRDNByAccount.Params[0].AsInteger := ACCID;
//        cdsLuBankRDNByAccount.Params[1].AsInteger := 0;
//        cdsLuBankRDNByAccount.Open;
//
//        if not cdsLuBankRDNByAccount.IsEmpty then
//        begin
//          cdsCashVoucherHCUST_BANKID.AsInteger       := cdsLuBankRDNByAccountACCBANKID.AsInteger;
//          cdsCashVoucherHCUST_BANKCODE.AsString      := cdsLuBankRDNByAccountBNCODE.AsString;
//          cdsCashVoucherHCUST_BANKACCNO.AsString     := cdsLuBankRDNByAccountBANKACCNO.AsString;
//          cdsCashVoucherHCUST_BANKACCNAME.AsString   := cdsLuBankRDNByAccountBANKACCNAME.AsString;
//          cdsCashVoucherHCUST_BANKACCBRANCH.AsString := cdsLuBankRDNByAccountBANKBRANCH.AsString;
//        end;
//      end;

//      if FSaveKeep = '0' then
        ClearBank(ABrokerBankID);

      cdsLuCustBank.Close;
      cdsLuCustBank.Params[0].AsInteger := ACCID;
      cdsLuCustBank.Open;

      cdsAccCashPos.Close;
      cdsAccCashPos.Params[0].AsDate := dtTransDate;
      cdsAccCashPos.Params[1].AsInteger := ACCID;
      cdsAccCashPos.Open;

      cdsAccCreatedVoucher.Close;
      cdsAccCreatedVoucher.Params[0].AsInteger := ACCID;
      cdsAccCreatedVoucher.Open;

      cdsSICashOutstanding.Close;
      cdsSICashOutstanding.Params[0].AsInteger := ACCID;
      if cbAll.Checked then
        cdsSICashOutstanding.Params[1].AsInteger := 1
      else
        cdsSICashOutstanding.Params[1].AsInteger := 0;
      cdsSICashOutstanding.Params[2].AsDate := ADueDate;
      cdsSICashOutstanding.Open;

      cdsAccountTrfPrvtBank.Close;
      cdsAccountTrfPrvtBank.Params[0].AsInteger := ACCID;
      cdsAccountTrfPrvtBank.Open;

//      if (rgVoucherType.ItemIndex = 0)  then
//      begin
        chkFullFlowReq.Enabled := True;
        if (FTransType = 'F') then
          chkFullFlowReq.State := cbsChecked
        else
          chkFullFlowReq.State := cbsUnChecked;
//      end
//      else
//        chkFullFlowReq.Enabled := False;

      if oForm.ShowModal = mrOk then
      begin
        if dsSubject.DataSet.FieldByName('VOUCHERTYPE').AsString = 'R' then
        begin
          if dsSubject.DataSet.FieldByName('VOUCHERDATE').AsDateTime >= dtTransDate then
          begin
            dCashOnHand  := Round(dsSubject.DataSet.FieldByName('CASH_ONHAND').AsFloat);
            dCashQQ      := Round(dsSubject.DataSet.FieldByName('CASH_QQ').AsFloat);
            dTotalAmount := Round(dsSubject.DataSet.FieldByName('TOTAL_AMOUNT').AsFloat) * -1;

            if (FTransType = 'R') or (FTransType = 'F') then
            begin
              if (dCashOnHand <= dTotalAmount) or (dCashOnHand < 0) then
              begin
                MessageDlg('Not enough cash on hand for create voucher', mtError, [mbOk], 0);
                bContinue := False;
              end;
            end
            else if (FTransType = 'C') or (FTransType = 'E') then
            begin
              if (dCashQQ < dTotalAmount) or (dCashQQ < 0) then
              begin
                MessageDlg('Not enough cash qq for create voucher', mtError, [mbOk], 0);
                bContinue := False;
              end
              else if dTotalAmount <> 0 then
              begin
                dTempCashOnHand := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
                cdsSICashOutstanding.DisableControls;
                cdsSICashOutstanding.Filter   := 'SITYPE = '+QuotedStr('SK');
                cdsSICashOutstanding.Filtered := True;
                bNext := True;

                if dTempCashOnHand = 0 then
                  MessageDlg('Total Receive must have value', mtWarning, [mbOk], 0)
                else
                begin
                  cdsSICashOutstanding.First;
                  while (not cdsSICashOutstanding.Eof) and (bNext) do
                  begin
                    if dTempCashOnHand >= 0 then bNext := False;

                    if not (cdsSICashOutstanding.State in dsEditModes) then
                      cdsSICashOutstanding.Edit;

                    if not (cdsCashVoucherH.State in dsEditModes) then
                      cdsCashVoucherH.Edit;

                    if cdsCashVoucherHCCYCODE.IsNull then
                      cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;

                    if dTempCashOnHand < 0 then
                    begin
                      if cdsSICashOutstandingSETTLE_NETAMT.AsFloat <> cdsSICashOutstandingPROCESSAMT.AsFloat then
                      begin
                        if (dTempCashOnHand + cdsSICashOutstandingSETTLE_NETAMT.AsFloat) < 0 then
                        begin
                          cdsSICashOutstandingCHECKED.Value      := True;
                          cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
                          if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
                            cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
                          dTempCashOnHand := dTempCashOnHand + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
                        end
                        else
                        begin
                          cdsSICashOutstandingCHECKED.Value      := True;
                          cdsSICashOutstandingPROCESSAMT.AsFloat := - dTempCashOnHand;
                          if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
                            cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
                          dTempCashOnHand := 0;
                        end;
                      end;
                    end;

                    cdsSICashOutstanding.Post;
                    cdsSICashOutstanding.Next;
                  end;
                end;

                cdsSICashOutstanding.Filtered := False;
                cdsSICashOutstanding.EnableControls;
              end;
            end;
          end
          else
          begin
            cdsSICashOutstanding.Filter   := 'SITYPE <> '+QuotedStr('SK');
            cdsSICashOutstanding.Filtered := True;

            MessageDlg('Can not create back dated cash voucher', mtError, [mbOk], 0);
            bContinue := False;
          end;
        end;
//        else if dsSubject.DataSet.FieldByName('VOUCHERTYPE').AsString = 'P' then
//        begin
//          xCreateCash := 'P';
//
//          xAmount     := cdsCashVoucherHTRANSFER_AMT.AsFloat;
//          xAccID      := cdsCashVoucherHACCID.AsInteger;
//          xAccCode    := cdsCashVoucherHACCNO.AsString;
//          xAccName    := cdsCashVoucherHACCNAME.AsString;
//          xACCY       := cdsCashVoucherHCCYCODE.AsString;
//          xChangeAcc  := False;
//
//          cdsCashVoucher_H.Close;
//          cdsCashVoucher_H.Params[0].AsInteger := -1;
//          cdsCashVoucher_H.Open;
//
//          xBuySell   := 'S';
//          xDC        := 'D';
//          xTransType := 'SK';
//
//          cdsCashVoucher_H.Append;
//          cdsCashVoucher_HACCID.AsInteger      := xAccID;
//          cdsCashVoucher_HACCNO.AsString       := xAccCode;
//          cdsCashVoucher_HACCNAME.AsString     := xAccName;
//          cdsCashVoucher_HCCYCODE.AsString     := xACCY;
//          cdsCashVoucher_HTOTAL_AMOUNT.AsFloat := xAmount;
//
//          cdsCashVoucher_HCCYCODE_FX.AsString     := dmGlobal.RemoteServer.GetLocalCCY;
//          cdsCashVoucher_HMODDA.AsDateTime        := cdsCashVoucherHVOUCHERDATE.AsDateTime;
//          cdsCashVoucher_HMODUI.AsString          := dmGlobal.UserID;
//          cdsCashVoucher_HISDEL.AsInteger         := 0;
//          cdsCashVoucher_HID.AsLargeInt           := dmGlobal.RemoteServer.GetSeq('main.B_CASH_VOUCHER_H');
//          cdsCashVoucher_HTRANSFER_AMT.AsFloat    := xAmount;
//          cdsCashVoucher_HMANUAL_VOUCHER.AsString := '1';
//          cdsCashVoucher_HVOUCHER_DESC.AsString   := '';
//
//          dmGlobal.RemoteServer.CreateBankPaymentReceive(cdsCashVoucher_HVOUCHERDATE.AsDateTime, 'P',
//            '0', cdsCashVoucher_HACCID.AsLargeInt, cdsCashVoucherHBROKER_BANKID.AsLargeInt, cdsCashVoucherHCUST_BANKID.AsLargeInt,
//            cdsCashVoucher_HVOUCHER_DESC.AsString, cdsCashVoucher_HCCYCODE.AsString, cdsCashVoucher_HEXRATE.AsFloat, cdsCashVoucher_HTOTAL_AMOUNT.AsFloat, sMsg)
//        end;

        if bContinue then
        begin
          if (cdsSICashOutstanding.State in dsEditModes) then
            cdsSICashOutstanding.Post;

          dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
          sUser     := dmGlobal.UserID;

          cdsCashVoucherHVOUCHERID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_VOUCHER_H');
          cdsCashVoucherHVOUCHERNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucherHVOUCHERDATE.AsDateTime, 'CV', 'TBL_CASH_VOUCHER_H');
          cdsCashVoucherHSTAT.AsString := 'O';
          cdsCashVoucherHMODDA.AsDateTime := dtProcess;
          cdsCashVoucherHMODUI.AsString := sUser;
          cdsCashVoucherHISDEL.AsInteger := 0;
          cdsCashVoucherHID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CASH_VOUCHER_H');

          if(chkFullFlowReq.State = cbsChecked) then
            cdsCashVoucherHReqFF.AsInteger := 1
          else
            cdsCashVoucherHReqFF.AsInteger := 0;

          if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
            cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1;

          cdsSICashOutstanding.DisableControls;
          cdsCashVoucherD.DisableControls;
          cdsSICashOutstanding.First;
          while not cdsSICashOutstanding.Eof do
          begin
            if cdsSICashOutstandingCHECKED.AsBoolean then
            begin
              if (cdsSICashOutstandingPROCESSAMT.AsFloat > 0) then
              begin
                cdsCashVoucherD.Append;
                cdsCashVoucherDLINKTYPE.AsString := 'SIID';
                cdsCashVoucherDTRANS_TYPE.AsString := cdsSICashOutstandingSITYPE.AsString;
                cdsCashVoucherDLINKID.AsLargeInt   := cdsSICashOutstandingSIID.AsLargeInt;
                cdsCashVoucherDLINKNO.AsString     := cdsSICashOutstandingSINO.AsString;
                cdsCashVoucherDTRDDATE.AsDateTime := cdsSICashOutstandingTRDDATE.AsDateTime;
                cdsCashVoucherDDUEDATE.AsDateTime := cdsSICashOutstandingDUEDATE.AsDateTime;
                cdsCashVoucherDCASH_DESC.AsString := cdsSICashOutstandingSI_DESC.AsString;
                cdsCashVoucherDNETTYPE.AsString := cdsSICashOutstandingNETTYPE.AsString;
                cdsCashVoucherDTRANS_AMT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat;
                cdsCashVoucherDAMOUNT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat;
                cdsCashVoucherDMODDA.AsDateTime := dtProcess;
                cdsCashVoucherDMODUI.AsString := sUser;
                cdsCashVoucherDISDEL.AsInteger := 0;
                cdsCashVoucherDCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;
                if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
                  cdsCashVoucherDDC.AsString    := 'D'
                else if cdsSICashOutstandingSETTLE_SIDE.AsString = 'R' then
                  cdsCashVoucherDDC.AsString    := 'C';
                cdsCashVoucherDEXRATE.AsFloat   := cdsSICashOutstandingSETTLE_EXRATE.AsFloat;
                cdsCashVoucherDFXAMOUNT.AsFloat := cdsCashVoucherDEXRATE.AsFloat * cdsCashVoucherDAMOUNT.AsFloat;
                cdsCashVoucherDACCID.AsInteger  := cdsSICashOutstandingACCID.AsInteger;
                cdsCashVoucherDACCNO.AsString   := cdsSICashOutstandingACCNO.AsString;
                cdsCashVoucherDACCNAME.AsString := cdsSICashOutstandingACCNAME.AsString;
                cdsCashVoucherD.Post;

                dAmount := cdsSICashOutstandingVOUCHERAMT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
                cdsSICashOutstanding.Edit;
                cdsSICashOutstandingVOUCHERAMT.AsFloat := dAmount;
                cdsSICashOutstandingVOUCHERDATE.AsDateTime := dtTransDate;
                cdsSICashOutstandingMODDA.AsDateTime := dtProcess;
                cdsSICashOutstandingMODUI.AsString := sUser;
                cdsSICashOutstanding.Post;
              end;
            end;

            cdsSICashOutstanding.Next;
          end;
          cdsSICashOutstanding.EnableControls;
          cdsCashVoucherD.EnableControls;

          if not cdsCashVoucherD.IsEmpty then
          begin
            cdsCashVoucherH.Edit;
            cdsCashVoucherHBANK_REFERENCE.AsString := cdsCashVoucherHACCNO.AsString + cdsCashVoucherHBROKER_BANKCODE.AsString;
            cdsCashVoucherHBANK_INSTRUCTION.AsString := '1';
            cdsCashVoucherH.Post;

            if cdsCashVoucherH.ApplyUpdates(0) = 0 then
            begin
              cdsSICashOutstanding.ApplyUpdates(-1);
              if (FCashVoucherType = 'R') OR (FCashVoucherType = 'N') then
              begin
                if cdsCashVoucherHVOUCHERDATE.AsDateTime = dtTransDate then
                begin
                  dmGlobal.RemoteServer.CashVoucher_Posting('2', cdsCashVoucherHVOUCHERID.AsLargeInt, cdsCashVoucherHVOUCHERDATE.AsDateTime,
                    FSaveKeep, cdsCashVoucherHVOUCHERTYPE.AsString, sMsg);
                  MessageDlg(sMsg, mtInformation, [mbOk], 0);
                end;
              end;

              if chkFullFlowReq.State = cbsChecked then
                dmGlobal.RemoteServer.FullFlowProcess(cdsCashVoucherHACCID.AsLargeInt,cdsCashVoucherHVOUCHERID.AsLargeInt, sMsg);

              cdsSICashOutstanding.Filter   := 'SITYPE <> '+QuotedStr('SK');
              cdsSICashOutstanding.Filtered := True;
              Result := mrOk;
            end;
          end;
        end;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
