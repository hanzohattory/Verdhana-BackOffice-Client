unit FormCreateSettlementReceive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  dxLayoutControl, cxCheckBox, Data.DB, Datasnap.DBClient, NClientDataset,
  cxCurrencyEdit, cxImageComboBox, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StrUtils,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TDealExrateList = class(TObject)
  private
    FDealExRate: Double;
  public
    property DealExRate: Double read FDealExRate write FDealExRate;
  end;

  TfrmCreateSettlementReceive = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    chkAllOutstand: TcxCheckBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dtDueDate: TcxDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
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
    cdsCashVoucherDCCYCODE: TStringField;
    cdsCashVoucherDDC: TStringField;
    cdsCashVoucherDEXRATE: TFloatField;
    cdsCashVoucherDFXAMOUNT: TFloatField;
    dsCashVoucherH: TDataSource;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cdsAccountSOP: TNClientDataset;
    cdsAccountSOPACCSOPID: TIntegerField;
    cdsAccountSOPNIK: TStringField;
    cdsAccountSOPNAME: TStringField;
    cdsAccountSOPBNCODE: TStringField;
    cdsAccountSOPBANKACCNO: TStringField;
    cdsAccountSOPBANKACCNAME: TStringField;
    cdsAccountSOPBANKBRANCH: TStringField;
    cdsAccountSOPMODDA: TDateTimeField;
    cdsAccountSOPMODUI: TStringField;
    cdsAccountSOPAPPDA: TDateTimeField;
    cdsAccountSOPAPPUI: TStringField;
    cdsAccountSOPUNDER4Y: TIntegerField;
    cdsAccountSOPUNDER4YDA: TDateTimeField;
    cdsAccountSOPNOTES4Y: TStringField;
    cdsAccountSOPISDEL: TIntegerField;
    cdsAccountSOPID: TLargeintField;
    cdsAccountSOPSOPID: TIntegerField;
    cdsAccountSOPACC_CUSTCODE: TStringField;
    cdsAccountSOPSEQ: TIntegerField;
    cdsAccountSOPBIRTH_PLACE: TStringField;
    cdsAccountSOPBIRTH_DATE: TDateTimeField;
    cdsAccountSOPIDNO: TStringField;
    cdsAccountSOPNPWPNO: TStringField;
    cdsAccountSOPDEPOSIT_QTY: TIntegerField;
    cdsAccountSOPREG_ACCID: TIntegerField;
    cdsAccountSOPCHECK_ADMIN: TStringField;
    cdsAccountSOPCHECK_DATE: TDateTimeField;
    cdsAccountSOPCHECK_UI: TStringField;
    cdsAccountSOPSETTLE: TStringField;
    cdsAccountSOPSETTLE_DATE: TDateTimeField;
    cdsAccountSOPSETTLE_UI: TStringField;
    cdsAccountSOPSMID: TLargeintField;
    dsAccountSOP: TDataSource;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsCashVoucherHACCSOPID: TLargeintField;
    cdsCashVoucherHTRANSTYPE: TStringField;
    cdsCashVoucherHTRANSFER_AMT: TFloatField;
    cdsCashVoucherHBANK_REFERENCE: TStringField;
    cdsCashVoucherHBANK_INSTRUCTION: TStringField;
    cdsCashVoucherHCCYCODE_FX: TStringField;
    cdsCashVoucherHCHARGESAMT_FX: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsLuCustBank: TNClientDataset;
    cdsLuCustBankACCBANKID: TIntegerField;
    cdsLuCustBankACCID: TIntegerField;
    cdsLuCustBankBNCODE: TStringField;
    cdsLuCustBankBANKACCNO: TStringField;
    cdsLuCustBankBANKACCNAME: TStringField;
    cdsLuCustBankBANKBRANCH: TStringField;
    cdsLuCustBankACTLED_SEQID: TIntegerField;
    cdsLuCustBankISRDN: TStringField;
    cdsLuCustBankACCBANKCODE: TStringField;
    cdsLuCustBankCCYCODE: TStringField;
    cdsLuBrokerBank: TNClientDataset;
    cdsLuBrokerBankACCBANKID: TIntegerField;
    cdsLuBrokerBankACCID: TIntegerField;
    cdsLuBrokerBankBNCODE: TStringField;
    cdsLuBrokerBankBANKACCNO: TStringField;
    cdsLuBrokerBankBANKACCNAME: TStringField;
    cdsLuBrokerBankBANKBRANCH: TStringField;
    cdsLuBrokerBankACTLED_SEQID: TIntegerField;
    cdsLuBrokerBankISRDN: TStringField;
    cdsLuBrokerBankACCBANKCODE: TStringField;
    cdsLuBrokerBankCCYCODE: TStringField;
    dsLuBrokerBank: TDataSource;
    dsLuCustBank: TDataSource;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cdsSICashOutstanding: TNClientDataset;
    cdsSICashOutstandingSIID: TLargeintField;
    cdsSICashOutstandingSINO: TStringField;
    cdsSICashOutstandingVALUEDATE: TDateField;
    cdsSICashOutstandingENTRYDATE: TDateField;
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
    cdsSICashOutstandingCHECKED: TBooleanField;
    cdsSICashOutstandingPROCESSAMT: TFloatField;
    cdsSICashOutstandingVOUCHERDATE: TDateField;
    cdsSICashOutstandingX: TFloatField;
    cdsSICashOutstandingDC: TStringField;
    cdsSICashOutstandingFXAmount: TFloatField;
    dsSICashOutstanding: TDataSource;
    cdsSICashOutstandingTmp: TNClientDataset;
    cdsSICashOutstandingTmpSIID: TLargeintField;
    cdsSICashOutstandingTmpSINO: TStringField;
    cdsSICashOutstandingTmpVALUEDATE: TDateField;
    cdsSICashOutstandingTmpENTRYDATE: TDateField;
    cdsSICashOutstandingTmpSITYPE: TStringField;
    cdsSICashOutstandingTmpCASH_STOCK: TStringField;
    cdsSICashOutstandingTmpSETTLE_SIDE: TStringField;
    cdsSICashOutstandingTmpINSTRUCTION_TYPE: TStringField;
    cdsSICashOutstandingTmpNETTYPE: TStringField;
    cdsSICashOutstandingTmpACCOUNT_SID: TStringField;
    cdsSICashOutstandingTmpACCID: TLargeintField;
    cdsSICashOutstandingTmpACCNO: TStringField;
    cdsSICashOutstandingTmpACCNAME: TStringField;
    cdsSICashOutstandingTmpTRANSFER_MODE: TStringField;
    cdsSICashOutstandingTmpBASE_CCYCODE: TStringField;
    cdsSICashOutstandingTmpBASE_NETAMT: TFloatField;
    cdsSICashOutstandingTmpBANK_CHARGES: TFloatField;
    cdsSICashOutstandingTmpSETTLE_CCYCODE: TStringField;
    cdsSICashOutstandingTmpSETTLE_EXRATE: TFloatField;
    cdsSICashOutstandingTmpSETTLE_NETAMT: TFloatField;
    cdsSICashOutstandingTmpSETTLED_AMT: TFloatField;
    cdsSICashOutstandingTmpSTOCKID: TIntegerField;
    cdsSICashOutstandingTmpSTOCKCODE: TStringField;
    cdsSICashOutstandingTmpQTY: TFloatField;
    cdsSICashOutstandingTmpTRDDATE: TDateField;
    cdsSICashOutstandingTmpDUEDATE: TDateField;
    cdsSICashOutstandingTmpSETTLEDDATE: TDateField;
    cdsSICashOutstandingTmpSI_DESC: TStringField;
    cdsSICashOutstandingTmpSTAT: TStringField;
    cdsSICashOutstandingTmpOLD_SIID: TLargeintField;
    cdsSICashOutstandingTmpVOUCHERAMT: TFloatField;
    cdsSICashOutstandingTmpVOUCHERQTY: TFloatField;
    cdsSICashOutstandingTmpNO_INTRC: TStringField;
    cdsSICashOutstandingTmpKSEI_RECON: TStringField;
    cdsSICashOutstandingTmpSETTLED_QTY: TFloatField;
    cdsSICashOutstandingTmpTRF_PRVT_BANK: TStringField;
    cdsSICashOutstandingTmpACCSOPID: TLargeintField;
    cdsSICashOutstandingTmpUSE_ACS: TStringField;
    cdsSICashOutstandingTmpCP_ACCBANKID: TIntegerField;
    cdsSICashOutstandingTmpCP_BANKCODE: TStringField;
    cdsSICashOutstandingTmpCP_BANKACCNO: TStringField;
    cdsSICashOutstandingTmpSOURCE_ACCBANKID: TLargeintField;
    cdsSICashOutstandingTmpSOURCE_ACCBANKCODE: TStringField;
    cdsSICashOutstandingTmpSOURCE_ACCBANKNO: TStringField;
    cdsSICashOutstandingTmpSOURCE_ACCBANKNAME: TStringField;
    cdsSICashOutstandingTmpTARGET_ACCBANKID: TLargeintField;
    cdsSICashOutstandingTmpTARGET_ACCBANKCODE: TStringField;
    cdsSICashOutstandingTmpTARGET_ACCBANKNO: TStringField;
    cdsSICashOutstandingTmpTARGET_ACCBANKNAME: TStringField;
    cdsSICashOutstandingTmpCONFIRM_BY: TStringField;
    cdsSICashOutstandingTmpCREATE_FILE: TStringField;
    cdsSICashOutstandingTmpCOUNT_CREATE_FILE: TIntegerField;
    cdsSICashOutstandingTmpCBEST_UPLOAD: TStringField;
    cdsSICashOutstandingTmpPURPOSE: TStringField;
    cdsSICashOutstandingTmpTRADE_REF: TStringField;
    cdsSICashOutstandingTmpSETTLE_REASON: TStringField;
    cdsSICashOutstandingTmpREMARKS: TStringField;
    cdsSICashOutstandingTmpSIID_NEW: TLargeintField;
    cdsSICashOutstandingTmpMODDA: TDateTimeField;
    cdsSICashOutstandingTmpMODUI: TStringField;
    cdsSICashOutstandingTmpAPPDA: TDateTimeField;
    cdsSICashOutstandingTmpAPPUI: TStringField;
    cdsSICashOutstandingTmpUNDER4Y: TIntegerField;
    cdsSICashOutstandingTmpUNDER4YDA: TDateTimeField;
    cdsSICashOutstandingTmpNOTES4Y: TStringField;
    cdsSICashOutstandingTmpISDEL: TIntegerField;
    cdsSICashOutstandingTmpID: TLargeintField;
    cdsSICashOutstandingTmpBANKACCBRANCH: TStringField;
    cdsSICashOutstandingTmpACCBANKID: TIntegerField;
    cdsSICashOutstandingTmpCP_BANKACCNAME: TStringField;
    cdsSICashOutstandingTmpBANKCODE: TStringField;
    cdsSICashOutstandingTmpBANKACCNO: TStringField;
    cdsSICashOutstandingTmpBANKACCNAME: TStringField;
    cdsSICashOutstandingTmpCP_BANKACCBRANCH: TStringField;
    cdsSICashOutstandingTmpCHECKED: TBooleanField;
    cdsSICashOutstandingTmpPROCESSAMT: TFloatField;
    cdsSICashOutstandingTmpVOUCHERDATE: TDateField;
    cdsSICashOutstandingTmpX: TFloatField;
    cdsSICashOutstandingTmpDC: TStringField;
    cdsSICashOutstandingTmpFXAmount: TFloatField;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
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
    gvwMasterCHECKED: TcxGridDBBandedColumn;
    gvwMasterPROCESSAMT: TcxGridDBBandedColumn;
    gvwMasterVOUCHERDATE: TcxGridDBBandedColumn;
    gvwMasterX: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterFXAmount: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    chkSelectAllData: TcxCheckBox;
    dxLayoutControl1Item26: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item29: TdxLayoutItem;
    cdsCashPosition: TClientDataSet;
    cdsCashPositionDEPOSITAMT: TFloatField;
    cdsCashPositionCCY: TStringField;
    cdsCashPositionEXRATE: TFloatField;
    cdsCashPositionFXAMOUNT: TFloatField;
    txtAccBankCode: TcxTextEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    cdsSICashOutstandingX_PROCESSAMT: TFloatField;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cdsSICashOutstandingTmpX_PROCESSAMT: TFloatField;
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
    txtCashPosition: TcxCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cdsSICashOutstandingX_FXAMT: TFloatField;
    cdsSICashOutstandingTmpX_FXAMT: TFloatField;
    cdsCashPositionDEALEXRATE: TFloatField;
    cdsCashPositionFXORI: TFloatField;
    cdsCashVoucherHDEAL_EXRATE: TFloatField;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cdsCashPositionCHARGES: TFloatField;
    cdsCashPositionNETAMOUNT: TFloatField;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCashVoucherHBROKER_BANKIDChange(Sender: TField);
    procedure cxButton2Click(Sender: TObject);
    procedure cdsSICashOutstandingCalcFields(DataSet: TDataSet);
    procedure chkSelectAllDataClick(Sender: TObject);
    procedure gvwMasterCHECKEDPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure chkAllOutstandPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cdsCashPositionCCYChange(Sender: TField);
  private
    FVoucherType: string;
    FAccID: Integer;
    FBrokerBankID: Integer;
    FCCYCode: string;
    FAccMSOPID: integer;
    FTransDate: TDateTime;
    FAccCode: string;
    FAccName: string;
    FCashQQ: double;
    FDealExRateList: TStringList;

    procedure GenerateBankFile;
  public
    property VoucherType: string read FVoucherType write FVoucherType;
    property AccID: Integer read FACCID write FACCID;
    property AccMSOPID: integer read FAccMSOPID write FAccMSOPID;
    property BrokerBankID: Integer read FBrokerBankID write FBrokerBankID;
    property CCYCode: string read FCCYCode write FCCYCode;
    property AccCode: string read FAccCode write FAccCode;
    property AccName: string read FAccName write FAccName;
    property CashQQ: double read FCashQQ write FCashQQ;
  end;

var
  frmCreateSettlementReceive: TfrmCreateSettlementReceive;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormCreateSettlementCashDep;

procedure TfrmCreateSettlementReceive.btnCancelClick(Sender: TObject);
begin 
  cdsSICashOutstanding.CancelUpdates;  
  cdsCashVoucherH.CancelUpdates;

  ModalResult := mrCancel;
end;

procedure TfrmCreateSettlementReceive.btnOKClick(Sender: TObject);
var
  iVoucher: Int64;
  dTotalDepositAmount: Double;
begin
  dTotalDepositAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsCashVoucherHCHARGESAMT.AsFloat;

  if cdsCashVoucherHTRANSFER_AMT.AsFloat <= 0 then
  begin
    MessageDlg('Transfer Amount can not less than 0 (zero)', mtError, [mbOK], 0);
    Exit;
  end;

  if cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat <= 0 then
  begin
    MessageDlg('Can not process with empty Amount', mtError, [mbOK], 0);
    Exit;
  end;

  if gvwMaster.DataController.Summary.FooterSummaryValues[1] <> dTotalDepositAmount then  //cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat then
  begin
    MessageDlg('Settle Amount must have same as summary process amount', mtError, [mbOk], 0);
    Exit;
  end;

  if (cdsSICashOutstanding.State in dsEditModes) then
    cdsSICashOutstanding.Post;
  cdsSICashOutstanding.ApplyUpdates(-1);

  iVoucher := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_VOUCHER_H');

  cdsCashVoucherHVOUCHERID.AsLargeInt := iVoucher;
  cdsCashVoucherHVOUCHERNO.AsString   := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucherHVOUCHERDATE.AsDateTime, 'CV', 'TBL_CASH_VOUCHER_H');
  cdsCashVoucherHSTAT.AsString        := 'O';   
  cdsCashVoucherHMODDA.AsDateTime     := dtDueDate.Date;
  cdsCashVoucherHMODUI.AsString       := dmGlobal.UserID;
  cdsCashVoucherHISDEL.AsInteger      := 0;
  cdsCashVoucherH.Post;

  cdsSICashOutstanding.DisableControls;
  cdsCashVoucherD.DisableControls;
  cdsSICashOutstanding.First;
  while not cdsSICashOutstanding.Eof do
  begin
    if cdsSICashOutstandingCHECKED.AsBoolean then
    begin
      if (cdsSICashOutstandingPROCESSAMT.AsFloat <> 0) then
      begin
        cdsCashVoucherD.Append;
        cdsCashVoucherDTRANS_TYPE.AsString  := cdsSICashOutstandingSITYPE.AsString;
        cdsCashVoucherDLINKTYPE.AsString    := 'SIID';
        cdsCashVoucherDLINKID.AsLargeInt    := cdsSICashOutstandingSIID.AsLargeInt;
        cdsCashVoucherDLINKNO.AsString      := cdsSICashOutstandingSINO.AsString;
        cdsCashVoucherDTRDDATE.AsDateTime   := cdsSICashOutstandingTRDDATE.AsDateTime;
        cdsCashVoucherDDUEDATE.AsDateTime   := cdsSICashOutstandingDUEDATE.AsDateTime;
        cdsCashVoucherDCASH_DESC.AsString   := cdsSICashOutstandingSI_DESC.AsString;
        cdsCashVoucherDNETTYPE.AsString     := cdsSICashOutstandingNETTYPE.AsString;
        cdsCashVoucherDTRANS_AMT.AsFloat    := cdsSICashOutstandingPROCESSAMT.AsFloat;
        cdsCashVoucherDAMOUNT.AsFloat       := cdsSICashOutstandingPROCESSAMT.AsFloat;
        cdsCashVoucherDMODDA.AsDateTime     := dtDueDate.Date;
        cdsCashVoucherDMODUI.AsString       := dmGlobal.UserID;
        cdsCashVoucherDISDEL.AsInteger      := 0;
        cdsCashVoucherDCCYCODE.AsString     := cdsSICashOutstandingSETTLE_CCYCODE.AsString;
        cdsCashVoucherDEXRATE.AsFloat       := cdsSICashOutstandingSETTLE_EXRATE.AsFloat;
        cdsCashVoucherDDC.AsString          := cdsSICashOutstandingDC.AsString;
        cdsCashVoucherDFXAMOUNT.AsFloat     := cdsSICashOutstandingFXAmount.AsFloat;
        cdsCashVoucherD.Post;

        cdsSICashOutstanding.Edit;
        cdsSICashOutstandingVOUCHERAMT.AsFloat     := cdsSICashOutstandingVOUCHERAMT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
        cdsSICashOutstandingMODDA.AsDateTime       := dtDueDate.Date;
        cdsSICashOutstandingVOUCHERDATE.AsDateTime := dtDueDate.Date;
        cdsSICashOutstandingMODUI.AsString         := dmGlobal.UserID;
        cdsSICashOutstanding.Post;
      end;
    end;

    cdsSICashOutstanding.Next;
  end;
  cdsSICashOutstanding.EnableControls;
  cdsCashVoucherD.EnableControls;

  if not cdsCashVoucherD.IsEmpty then
  begin
    //Request By Irvan 20160123
    cdsCashVoucherH.Edit;
    cdsCashVoucherHBANK_REFERENCE.AsString := cdsCashVoucherHACCNO.AsString
      + cdsCashVoucherHBROKER_BANKCODE.AsString;
    cdsCashVoucherHBANK_INSTRUCTION.AsString := '1';
    cdsCashVoucherH.Post;
    cdsCashVoucherH.ApplyUpdates(-1);
    if cdsCashVoucherH.ApplyUpdates(0) = 0 then
    begin
      cdsSICashOutstanding.ApplyUpdates(-1);
//      GenerateBankFile;//Request By Irvan 20160123
      dmGlobal.RemoteServer.PostCashVoucher(iVoucher);
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfrmCreateSettlementReceive.cdsCashPositionCCYChange(
  Sender: TField);
var
  iRes: Integer;
  oDealExrateList: TDealExrateList;
  dDealExRate: Double;
begin
  iRes := FDealExRateList.IndexOf(cdsCashPositionCCY.AsString);
  if iRes <> -1 then
  begin
    oDealExrateList := TDealExrateList(FDealExRateList.Objects[iRes]);
    dDealExRate     := oDealExrateList.DealExRate;
  end
  else
    dDealExRate     := dmGlobal.RemoteServer.GetCCYRate(dtDueDate.Date, cdsCashPositionCCY.AsString);

  cdsCashPositionDEALEXRATE.AsFloat := dDealExRate;
  cdsCashPositionEXRATE.AsFloat     := dmGlobal.RemoteServer.GetCCYRate(dtDueDate.Date, cdsCashPositionCCY.AsString);
end;

procedure TfrmCreateSettlementReceive.cdsCashVoucherHBROKER_BANKIDChange(
  Sender: TField);
begin
  if cdsLuBrokerBank.Locate('ACCBANKID', cdsCashVoucherHBROKER_BANKID.AsInteger, []) then
  begin
    txtAccBankCode.EditValue                      := cdsLuBrokerBankACCBANKCODE.AsString;
    cdsCashVoucherHBROKER_BANKCODE.AsString       := cdsLuBrokerBankBNCODE.AsString;
    cdsCashVoucherHBROKER_BANKACCNO.AsString      := cdsLuBrokerBankBANKACCNO.AsString;
    cdsCashVoucherHBROKER_BANKACCNAME.AsString    := cdsLuBrokerBankBANKACCNAME.AsString;
    cdsCashVoucherHBROKER_BANKACCBRANCH.AsString  := cdsLuBrokerBankBANKBRANCH.AsString;

    if cdsCashVoucherHCCYCODE.IsNull then
      cdsCashVoucherHCCYCODE.AsString := cdsLuBrokerBankCCYCODE.AsString;

    if cdsCashVoucherHCCYCODE_FX.IsNull then
      cdsCashVoucherHCCYCODE_FX.AsString := cdsLuBrokerBankCCYCODE.AsString;
  end;
end;

procedure TfrmCreateSettlementReceive.cdsSICashOutstandingCalcFields(
  DataSet: TDataSet);
var
  sSIType, sSettleSide: string;
begin
  if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
  begin
    cdsSICashOutstandingX.AsFloat            := cdsSICashOutstandingSETTLE_NETAMT.AsFloat * (-1);
    cdsSICashOutstandingX_PROCESSAMT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat * (-1);
  end
  else
  begin
    cdsSICashOutstandingX.AsFloat            := cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
    cdsSICashOutstandingX_PROCESSAMT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat;
  end;
  cdsSICashOutstandingX_FXAMT.AsFloat  := cdsSICashOutstandingSETTLE_EXRATE.AsFloat * cdsSICashOutstandingX_PROCESSAMT.AsFloat;
  cdsSICashOutstandingFXAmount.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat * cdsSICashOutstandingSETTLE_EXRATE.AsFloat;

  sSIType     := cdsSICashOutstandingSITYPE.AsString;
  sSettleSide := cdsSICashOutstandingSETTLE_SIDE.AsString;

  if (sSIType = 'ET') and (sSettleSide = 'R') then
    cdsSICashOutstandingDC.AsString := 'C'
  else if (sSIType = 'ET') and (sSettleSide = 'P') then
    cdsSICashOutstandingDC.AsString := 'D'
  else if (sSIType = 'SK') and (sSettleSide = 'P') then
    cdsSICashOutstandingDC.AsString := 'C'
  else if (sSIType = 'SD') and (sSettleSide = 'R') then
    cdsSICashOutstandingDC.AsString := 'D'
  else if (sSIType = 'RD') and (sSettleSide = 'P') then
    cdsSICashOutstandingDC.AsString := 'D'
  else if (sSIType = 'PY') and (sSettleSide = 'R') then
    cdsSICashOutstandingDC.AsString := 'C'
  else if (sSettleSide = 'R') then
    cdsSICashOutstandingDC.AsString := 'D'
  else if (sSettleSide = 'P') then
    cdsSICashOutstandingDC.AsString := 'C';
end;

procedure TfrmCreateSettlementReceive.chkAllOutstandPropertiesChange(
  Sender: TObject);
begin
  cdsSICashOutstanding.Close;
  cdsSICashOutstanding.Params[0].AsInteger := AccID;
  if chkAllOutstand.Checked then
    cdsSICashOutstanding.Params[1].AsInteger := 1
  else
    cdsSICashOutstanding.Params[1].AsInteger := 0;
  cdsSICashOutstanding.Params[2].AsDate := dtDueDate.Date;
  cdsSICashOutstanding.Open;
end;

procedure TfrmCreateSettlementReceive.chkSelectAllDataClick(
  Sender: TObject);
var
  dSummary: Double;
  dtTransDate: TDateTime;
  sPenalty: string;
  dFromDate, dToDate: TDateTime;
  fTotalAmount: Double;
begin
  cdsSICashOutstanding.DisableControls;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  dSummary := 0;

  cdsSICashOutstanding.Filter   := 'SITYPE = '+QuotedStr('SK');
  cdsSICashOutstanding.Filtered := True;
  if not cdsSICashOutstanding.IsEmpty then
  begin
    while not cdsSICashOutstanding.Eof do
    begin
      cdsSICashOutstanding.First;
      cdsSICashOutstanding.Delete;
    end;
  end;

  cdsSICashOutstanding.Filter   := 'SITYPE = '+QuotedStr('UR');
  cdsSICashOutstanding.Filtered := True;
  if not cdsSICashOutstanding.IsEmpty then
  begin
    while not cdsSICashOutstanding.Eof do
    begin
      cdsSICashOutstanding.First;
      cdsSICashOutstanding.Delete;
    end;
  end;
  cdsSICashOutstanding.Filtered := False;

  cdsSICashOutstanding.First;
  dFromDate := cdsSICashOutstandingTRDDATE.AsDateTime;
  dToDate   := cdsSICashOutstandingTRDDATE.AsDateTime;
  while not cdsSICashOutstanding.Eof do
  begin
    cdsSICashOutstanding.Edit;
    if chkSelectAllData.Checked then
    begin
        cdsSICashOutstandingCHECKED.AsBoolean  := true;
        cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
        if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
          dSummary := dSummary - cdsSICashOutstandingPROCESSAMT.AsFloat
        else
          dSummary := dSummary + cdsSICashOutstandingPROCESSAMT.AsFloat;
    end
    else
    begin
      cdsSICashOutstandingCHECKED.AsBoolean  := False;
      cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
    end;

    if (dToDate < cdsSICashOutstandingTRDDATE.AsDateTime) and (cdsSICashOutstandingSITYPE.AsString = 'ET') then
      dToDate := cdsSICashOutstandingTRDDATE.AsDateTime;

    if cdsSICashOutstandingSITYPE.AsString = 'PY' then
      sPenalty := '+Penalty';

    cdsCashVoucherHTRANSFER_AMT.AsFloat    := dSummary;

    cdsSICashOutstandingMODDA.AsDateTime := dtTransDate;
    cdsSICashOutstanding.Post;

    cdsSICashOutstanding.Next;
  end;

  fTotalAmount := cdsCashVoucherHTRANSFER_AMT.AsFloat;
  if gvwMaster.DataController.Summary.FooterSummaryValues[0] < gvwMaster.DataController.Summary.FooterSummaryValues[1] then
  begin
    if dFromDate = dToDate then
      cdsCashVoucherHVOUCHER_DESC.AsString := 'P/O TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+' Rp '+FloatToStr(gvwMaster.DataController.Summary.FooterSummaryValues[0])+sPenalty
    else
      cdsCashVoucherHVOUCHER_DESC.AsString := 'P/O TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+' - '+FormatDateTime('dd/mm/yyyy', dToDate)+' Rp '+FloatToStr(gvwMaster.DataController.Summary.FooterSummaryValues[0])+sPenalty;
  end
  else
  begin
    if dFromDate = dToDate then
      cdsCashVoucherHVOUCHER_DESC.AsString := 'TD '+FormatDateTime('dd/mm/yyyy', dFromDate)+sPenalty
    else
      cdsCashVoucherHVOUCHER_DESC.AsString := 'TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+' - '+FormatDateTime('dd/mm/yyyy', dToDate)+sPenalty;
  end;

  if not chkSelectAllData.Checked then
    cdsCashVoucherHVOUCHER_DESC.AsString := '';

  cdsSICashOutstanding.EnableControls;
  gvwMaster.DataController.Summary.Recalculate;
end;

procedure TfrmCreateSettlementReceive.cxButton1Click(Sender: TObject);
var
  dTempCashOnHand,
  dCashOnHand, dProcessAmt: Double;
  i, iIndex: Integer;
begin
  dTempCashOnHand := dmGlobal.RoundFloatNumber(cdsCashVoucherHTRANSFER_AMT.AsFloat, 2);

  cdsSICashOutstanding.DisableControls;
  cdsSICashOutstanding.Filter   := 'SITYPE = '+QuotedStr('SK');
  cdsSICashOutstanding.Filtered := True;
  if not cdsSICashOutstanding.IsEmpty then
  begin
    while not cdsSICashOutstanding.Eof do
    begin
      cdsSICashOutstanding.First;
      cdsSICashOutstanding.Delete;
    end;
  end;

  cdsSICashOutstanding.Filter   := 'SITYPE = '+QuotedStr('UR');
  cdsSICashOutstanding.Filtered := True;
  if not cdsSICashOutstanding.IsEmpty then
  begin
    while not cdsSICashOutstanding.Eof do
    begin
      cdsSICashOutstanding.First;
      cdsSICashOutstanding.Delete;
    end;
  end;

  cdsSICashOutstanding.Filtered := False;
  if not cdsSICashOutstanding.IsEmpty then
  begin
    cdsSICashOutstanding.Filter   := 'SETTLE_SIDE = '+QuotedStr('P');
    cdsSICashOutstanding.Filtered := True;
    cdsSICashOutstanding.First;
    while not cdsSICashOutstanding.Eof do
    begin
      if not (cdsSICashOutstanding.State in dsEditModes) then
        cdsSICashOutstanding.Edit;

      if not (cdsCashVoucherH.State in dsEditModes) then
        cdsCashVoucherH.Edit;

      if cdsSICashOutstandingCHECKED.AsBoolean = true then
      begin
        if cdsSICashOutstandingSETTLE_CCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
          cdsSICashOutstandingPROCESSAMT.AsFloat := Round(cdsSICashOutstandingSETTLE_NETAMT.AsFloat)
        else
          cdsSICashOutstandingPROCESSAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsSICashOutstandingSETTLE_NETAMT.AsFloat, 2);
        dTempCashOnHand := dTempCashOnHand + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
      end;
      cdsSICashOutstanding.Post;
      cdsSICashOutstanding.Next;
    end;

    cdsSICashOutstanding.Filter   := 'SETTLE_SIDE = '+QuotedStr('R');
    cdsSICashOutstanding.Filtered := True;
    cdsSICashOutstanding.First;
    while not cdsSICashOutstanding.Eof do
    begin
      if not (cdsSICashOutstanding.State in dsEditModes) then
        cdsSICashOutstanding.Edit;

      if not (cdsCashVoucherH.State in dsEditModes) then
        cdsCashVoucherH.Edit;

      if cdsSICashOutstandingCHECKED.AsBoolean = true then
      begin
        if dTempCashOnHand <> 0 then
        begin
          dProcessAmt := dTempCashOnHand - cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
          if dProcessAmt > 0 then
          begin
            if cdsSICashOutstandingSETTLE_CCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
              cdsSICashOutstandingPROCESSAMT.AsFloat := Round(cdsSICashOutstandingSETTLE_NETAMT.AsFloat)
            else
              cdsSICashOutstandingPROCESSAMT.AsFloat := dmGlobal.RoundFloatNumber(cdsSICashOutstandingSETTLE_NETAMT.AsFloat, 2);
            dTempCashOnHand := dProcessAmt;
          end
          else
          begin
            if cdsSICashOutstandingSETTLE_CCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
              cdsSICashOutstandingPROCESSAMT.AsFloat := Round(dTempCashOnHand)
            else
              cdsSICashOutstandingPROCESSAMT.AsFloat := dmGlobal.RoundFloatNumber(dTempCashOnHand, 2);
            dTempCashOnHand := 0;
          end;
        end
        else
        begin
          cdsSICashOutstandingCHECKED.AsBoolean  := False;
          cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
        end;
      end;
      cdsSICashOutstanding.Post;

      cdsSICashOutstanding.Next;
    end;

    cdsSICashOutstanding.Filtered := False;
    cdsSICashOutstanding.EnableControls;

    cdsSICashOutstanding.Last;
    if dTempCashOnHand > 0 then
    begin
      if cdsSICashOutstandingTmp.IsEmpty then
        cdsSICashOutstandingTmp.Append
      else
        cdsSICashOutstandingTmp.Edit;

      for i := 0 to cdsSICashOutstanding.FieldCount -1 do
          cdsSICashOutstandingTmp.Fields[i].Value := cdsSICashOutstanding.Fields[i].Value;
      cdsSICashOutstandingTmp.Post;

      cdsSICashOutstanding.Append;
      for i := 0 to cdsSICashOutstandingTmp.FieldCount -1 do
        cdsSICashOutstanding.Fields[i].Value := cdsSICashOutstandingTmp.Fields[i].Value;
      if cdsCashVoucherHCCYCODE.AsString = cdsCashVoucherHCCYCODE_FX.AsString then
      begin
        if cdsSICashOutstandingSETTLE_CCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
          cdsSICashOutstandingPROCESSAMT.AsFloat  := Round(dTempCashOnHand)
        else
          cdsSICashOutstandingPROCESSAMT.AsFloat  := dmGlobal.RoundFloatNumber(dTempCashOnHand, 2);
        cdsSICashOutstandingSETTLE_NETAMT.AsFloat := 0;
        cdsSICashOutstandingSETTLE_SIDE.AsString  := 'P';
        cdsSICashOutstandingCHECKED.AsBoolean     := True;
        cdsSICashOutstandingSITYPE.AsString       := 'SK';
        cdsSICashOutstandingSI_DESC.AsString      := 'Saldo Credit';
        cdsSICashOutstandingSETTLE_EXRATE.AsFloat := cdsCashVoucherHEXRATE.AsFloat;
      end
      else
      begin
        if cdsSICashOutstandingSETTLE_CCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
          cdsSICashOutstandingPROCESSAMT.AsFloat  := Round(dTempCashOnHand)
        else
          cdsSICashOutstandingPROCESSAMT.AsFloat  := dmGlobal.RoundFloatNumber(dTempCashOnHand, 2);
        cdsSICashOutstandingSETTLE_NETAMT.AsFloat := 0;
        cdsSICashOutstandingSETTLE_SIDE.AsString  := 'P';
        cdsSICashOutstandingCHECKED.AsBoolean     := True;
        cdsSICashOutstandingSITYPE.AsString       := 'UR';
        cdsSICashOutstandingSI_DESC.AsString      := 'UnRelize';
      end;
      cdsSICashOutstanding.Post;
    end;

//    cdsCashVoucherHTRANSFER_AMT.AsFloat := gvwMaster.DataController.Summary.FooterSummaryValues[1];
  end;
  if cdsSICashOutstanding.Filtered then
    cdsSICashOutstanding.Filtered := False;

  cdsSICashOutstanding.EnableControls;
end;

procedure TfrmCreateSettlementReceive.cxButton2Click(Sender: TObject);
var
  oForm: TfrmCreateSettlementCashDep;
  dDealExRate: Double;
  oDealExRateList: TDealExrateList;
  iRes: Integer;
  dTmepRate, dTempTransAmt: Double;
begin
  txtCashPosition.EditValue := CashQQ * dmGlobal.RemoteServer.GetCCYRate(dtDueDate.Date, CCYCode);
  FDealExRateList           := TStringList.Create;

  cdsSICashOutstanding.DisableControls;
  cdsSICashOutstanding.Filter   := 'CHECKED = True and SETTLE_CCYCODE <> '+QuotedStr('IDR');
  cdsSICashOutstanding.Filtered := True;

  if not cdsSICashOutstanding.IsEmpty then
  begin
    cdsSICashOutstanding.Last;
    while not cdsSICashOutstanding.Bof do
    begin
      iRes := FDealExRateList.IndexOf(cdsSICashOutstandingSETTLE_CCYCODE.AsString);
      if iRes = -1 then
      begin
        oDealExRateList := TDealExrateList.Create;
        oDealExRateList.DealExRate := cdsSICashOutstandingSETTLE_EXRATE.AsFloat;
        FDealExRateList.AddObject(cdsSICashOutstandingSETTLE_CCYCODE.AsString, oDealExRateList);
      end;
      cdsSICashOutstanding.Prior;
    end;

    dDealExRate := cdsSICashOutstandingSETTLE_EXRATE.AsFloat;
  end
  else
    dDealExRate := 1;
  cdsSICashOutstanding.Filtered := False;
  cdsSICashOutstanding.EnableControls;

  if not (cdsCashVoucherH.State in dsEditModes) then
    cdsCashVoucherH.Edit;

  if cdsCashPosition.IsEmpty then
    cdsCashPosition.Append
  else
    cdsCashPosition.Edit;

  cdsCashPositionDEPOSITAMT.AsFloat := cdsCashVoucherHTRANSFER_AMT.AsFloat;
  cdsCashPositionCCY.AsString       := cdsCashVoucherHCCYCODE.AsString;
  cdsCashPositionEXRATE.AsFloat     := dmGlobal.RemoteServer.GetCCYRate(dtDueDate.Date, cdsCashPositionCCY.AsString);
  cdsCashPositionFXAMOUNT.AsFloat   := cdsCashPositionDEPOSITAMT.AsFloat * cdsCashPositionEXRATE.AsFloat;
  cdsCashPositionDEALEXRATE.AsFloat := cdsCashPositionDEALEXRATE.AsFloat;
  cdsCashPositionFXORI.AsFloat      := dDealExRate * cdsCashPositionDEPOSITAMT.AsFloat;
  cdsCashPositionCHARGES.AsFloat    := 0;
  cdsCashPositionNETAMOUNT.AsFloat  := cdsCashVoucherHTRANSFER_AMT.AsFloat;

  cdsLuBrokerBank.Filter   := 'CCYCODE = '+QuotedStr(cdsCashVoucherHCCYCODE.AsString);
  cdsLuBrokerBank.Filtered := True;

  oForm := TfrmCreateSettlementCashDep.Create(nil);
  TfrmCreateSettlementCashDep(oForm).ProcessAmount := gvwMaster.DataController.Summary.FooterSummaryValues[2];
  if oForm.ShowModal = mrOk then
  begin
    cdsCashPosition.Post;
    cdsCashVoucherHTOTAL_AMOUNT.AsFloat            := cdsCashPositionNETAMOUNT.AsFloat; //cdsCashPositionDEPOSITAMT.AsFloat;
    cdsCashVoucherHCCYCODE_FX.AsString             := cdsCashPositionCCY.AsString;
    cdsCashVoucherHEXRATE.AsFloat                  := cdsCashPositionEXRATE.AsFloat;
    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashPositionFXORI.AsFloat;
    cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat         := cdsCashPositionFXAMOUNT.AsFloat;
    cdsCashVoucherHDEAL_EXRATE.AsFloat             := cdsCashPositionDEALEXRATE.AsFloat;
    cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF.AsFloat    := cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat - cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat;
    cdsCashVoucherHCHARGESAMT.AsFloat              := cdsCashPositionCHARGES.AsFloat;

    if cdsCashVoucherHCCYCODE.AsString = cdsCashPositionCCY.AsString then
      cdsCashVoucherHTRANSFER_AMT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat
    else
    begin
      if cdsCashVoucherHCCYCODE.AsString = dmGlobal.RemoteServer.GetLocalCCY then
        cdsCashVoucherHTRANSFER_AMT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat - cdsCashVoucherHCHARGESAMT.AsFloat
      else
      begin //first, change it into Local CCY Amount. Than change it into deal rate transaction
        dTmepRate     := dmGlobal.RemoteServer.GetCCYRate(dtDueDate.Date, cdsCashPositionCCY.AsString);
        dTempTransAmt := dTmepRate * cdsCashPositionDEPOSITAMT.AsFloat;

        iRes            := FDealExRateList.IndexOf(cdsCashVoucherHCCYCODE.AsString);
        if iRes <> -1 then
        begin
          oDealExRateList := TDealExrateList(FDealExRateList.Objects[iRes]);
          cdsCashVoucherHTRANSFER_AMT.AsFloat := (dTempTransAmt / oDealExRateList.DealExRate) - cdsCashVoucherHCHARGESAMT.AsFloat;
        end
        else
          cdsCashVoucherHTRANSFER_AMT.AsFloat := dTempTransAmt - cdsCashVoucherHCHARGESAMT.AsFloat;
      end;
    end;
    txtCashPosition.EditValue := txtCashPosition.EditValue + cdsCashPositionFXAMOUNT.AsFloat;
  end
  else
    cdsCashPosition.Cancel;

  cdsLuBrokerBank.Filtered := False;
  FreeAndNil(oForm);
  FreeAndNil(FDealExRateList);
end;

procedure TfrmCreateSettlementReceive.FormCreate(Sender: TObject);
begin
  cdsCashVoucherH.Close;
  cdsCashVoucherH.Params[0].AsInteger := -1;
  cdsCashVoucherH.Open;

  cdsLuBrokerBank.Close;
  cdsLuBrokerBank.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
  cdsLuBrokerBank.Open;

  cdsSICashOutstandingTmp.Close;
  cdsSICashOutstandingTmp.CreateDataSet;

  FTransDate      := dmGlobal.RemoteServer.GetTransDate;
  FDealExRateList := TStringList.Create;
end;

procedure TfrmCreateSettlementReceive.FormShow(Sender: TObject);
begin
  dtDueDate.Date := FTransDate;

  cdsAccountSOP.Close;
  cdsAccountSOP.Params[0].AsInteger := AccMSOPID;
  cdsAccountSOP.Open;

  cdsLuCustBank.Close;
  cdsLuCustBank.Params[0].AsInteger := ACCID;
  cdsLuCustBank.Open;

  cdsCashPosition.Close;
  cdsCashPosition.CreateDataSet;

  if not cdsLuCustBank.IsEmpty then
    cdsLuCustBank.Locate('ISRDN', '1', []);
  txtCashPosition.EditValue := CashQQ * dmGlobal.RemoteServer.GetCCYRate(dtDueDate.Date, CCYCode);

  cdsCashVoucherH.Append;
  cdsCashVoucherHVOUCHERNO.AsString      := '<AUTO>';
  cdsCashVoucherHVOUCHERTYPE.AsString    := VoucherType;
  cdsCashVoucherHENTRYDATE.AsDateTime    := FTransDate;
  cdsCashVoucherHVOUCHERDATE.AsDateTime  := FTransDate;
  cdsCashVoucherHACCID.AsInteger         := AccID;
  cdsCashVoucherHACCNO.AsString          := AccCode;
  cdsCashVoucherHACCNAME.AsString        := AccName;
  cdsCashVoucherHBROKER_BANKID.AsInteger := BrokerBankID;
  cdsCashVoucherHPOSTED.AsString         := '0';
  cdsCashVoucherHCCYCODE.AsString        := CCYCode;
  cdsCashVoucherHCCYCODE_FX.AsString     := CCYCode;
  cdsCashVoucherHTRANSTYPE.AsString      := 'R';
  cdsCashVoucherHCUST_BANKID.AsInteger   := cdsLuCustBankACCBANKID.AsInteger;

  cdsSICashOutstanding.Close;
  cdsSICashOutstanding.Params[0].AsInteger := AccID;
  if chkAllOutstand.Checked then
    cdsSICashOutstanding.Params[1].AsInteger := 1
  else
    cdsSICashOutstanding.Params[1].AsInteger := 0;
  cdsSICashOutstanding.Params[2].AsDate    := dtDueDate.Date;
  cdsSICashOutstanding.Params[3].AsInteger := AccMSOPID;
  cdsSICashOutstanding.Open;
end;

procedure TfrmCreateSettlementReceive.GenerateBankFile;
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
end;

procedure TfrmCreateSettlementReceive.gvwMasterCHECKEDPropertiesChange(
  Sender: TObject);
var
  sProcessAmtSum: Double;
begin
  sProcessAmtSum := gvwMaster.DataController.Summary.FooterSummaryValues[1];

  if not (cdsSICashOutstanding.State in dsEditModes) then
    cdsSICashOutstanding.Edit;

  if not (cdsCashVoucherH.State in dsEditModes) then
    cdsCashVoucherH.Edit;

  if cdsCashVoucherHCCYCODE.IsNull then
    cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;

  if cdsSICashOutstandingCHECKED.AsBoolean then
  begin
    cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
    if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
      sProcessAmtSum := sProcessAmtSum - cdsSICashOutstandingSETTLE_NETAMT.AsFloat
    else
      sProcessAmtSum := sProcessAmtSum + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;

    cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
  end
  else
  begin
    if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
      sProcessAmtSum := sProcessAmtSum + cdsSICashOutstandingSETTLE_NETAMT.AsFloat
    else
      sProcessAmtSum := sProcessAmtSum - cdsSICashOutstandingSETTLE_NETAMT.AsFloat;

    cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
  end;

  cdsSICashOutstanding.Post;
  cdsCashVoucherHTRANSFER_AMT.AsFloat := gvwMaster.DataController.Summary.FooterSummaryValues[1];
end;

end.
