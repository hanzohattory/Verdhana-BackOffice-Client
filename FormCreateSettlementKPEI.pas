unit FormCreateSettlementKPEI;

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
  StrUtils;

type
  TfrmCreateSettlementKPEI = class(TForm)
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
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    lcBankCharges: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
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
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    lcExRate: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group21: TdxLayoutGroup;
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
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    chkSelectAll: TcxCheckBox;
    dxLayoutControl1Item28: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item29: TdxLayoutItem;
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
    txtCreatePayment: TcxCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
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
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group18: TdxLayoutGroup;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
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
    cdsCashVoucherHCASH_ONHAND: TFloatField;
    cdsCashVoucherHCREATED_VOUCHER: TFloatField;
    cdsCashVoucherHCCYCODE_FX: TStringField;
    cdsCashVoucherHCHARGESAMT_FX: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucherHBROKER_BANKCCY: TStringField;
    cdsCashVoucherHCUST_BANKCCY: TStringField;
    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsCashVoucherHACCSOPID: TLargeintField;
    cdsCashVoucherHBANK_REFERENCE: TStringField;
    cdsCashVoucherHBANK_INSTRUCTION: TStringField;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group22: TdxLayoutGroup;
    chkSaldo: TcxRadioButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    chkRounding: TcxRadioButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group23: TdxLayoutGroup;
    cdsSICashOutstandingVOUCHERDATE: TDateField;
    cdsSICashOutstandingTmpVOUCHERDATE: TDateField;
    dxLayoutControl1Group24: TdxLayoutGroup;
    dxLayoutControl1Group25: TdxLayoutGroup;
    cdsSICashOutstandingX: TFloatField;
    gvwMasterVOUCHERDATE: TcxGridDBBandedColumn;
    gvwMasterX: TcxGridDBBandedColumn;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Group27: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
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
    procedure cxButton1Click(Sender: TObject);
    procedure cdsSICashOutstandingAfterPost(DataSet: TDataSet);
    procedure cdsSICashOutstandingAfterOpen(DataSet: TDataSet);
    procedure gvwMasterCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure chkSaldoClick(Sender: TObject);
    procedure chkRoundingClick(Sender: TObject);
    procedure cdsSICashOutstandingCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnCheckedChanged;
    procedure OnCheckedSelectedAll;
  public
    { Public declarations }
    FSumNetAmount: Double;
    FCashOnHand: Double;
    AccountID: Integer;
    FAppend: boolean;
    FCreatePayment: Double;
    FFromDate, FToDate: TDateTime;

    function Run(ACCID, ABrokerBankID, AACCMSOPID: Integer; ACCY: string): TModalResult;
    function IPOPaymentToBAE(IPOID, ABrokerBankID: Integer; AIPOType: String): TModalResult;

    procedure GenerateBankFile;
  end;

var
  frmCreateSettlementKPEI: TfrmCreateSettlementKPEI;

implementation

{$R *.dfm}

uses DataGlobal, FormCashPaymentBeneficiary, FormBankRefference;

{ TfrmCashPayment }

procedure TfrmCreateSettlementKPEI.btnOKClick(Sender: TObject);
begin
  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat <> txtCreatePayment.EditValue then
  begin
    MessageDlg('Settle Amount must have same as Create Payment Amount', mtError, [mbOk], 0);
    ModalResult := mrNone;
  end
  else
  begin
    cdsSICashOutstanding.ApplyUpdates(-1);
    ModalResult := mrOk;
  end;
end;

procedure TfrmCreateSettlementKPEI.Button1Click(Sender: TObject);
var
  oForm: TForm;
begin
  oForm := TfrmCashPaymentBeneficiary.Create(nil);

  cdsluCustBankNoParam.Close;
  cdsluCustBankNoParam.Open;

  cdsluCustBankNoParam.Append;
  cdsluCustBankNoParamACCID.AsInteger      := cdsCashVoucherHACCID.AsInteger;
  cdsluCustBankNoParamBANKACCNAME.AsString := cdsCashVoucherHACCNAME.AsString;

  if oForm.ShowModal = mrOk then
  begin
    cdsluCustBankNoParam.Post;
    cdsluCustBankNoParam.ApplyUpdates(-1);
  end
  else
    cdsluCustBankNoParam.Cancel;
  oForm.Free;

  cdsLuCustBank.Close;
  cdsLuCustBank.Params[0].AsInteger := cdsCashVoucherHACCID.AsInteger;
  cdsLuCustBank.Open;

  if cdsLuCustBank.Locate('ACCBANKID', cdsCashVoucherHCUST_BANKID.AsInteger, []) then
  begin
    cdsCashVoucherHCUST_BANKCODE.AsString := cdsLuCustBankBNCODE.AsString;
    cdsCashVoucherHCUST_BANKACCNO.AsString := cdsLuCustBankBANKACCNO.AsString;
    cdsCashVoucherHCUST_BANKACCNAME.AsString := cdsLuCustBankBANKACCNAME.AsString;
    cdsCashVoucherHCUST_BANKACCBRANCH.AsString := cdsLuCustBankBANKBRANCH.AsString;
  end;
end;

procedure TfrmCreateSettlementKPEI.cbAllPropertiesChange(Sender: TObject);
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

  gvwMaster.ApplyBestFit();
end;

procedure TfrmCreateSettlementKPEI.cdsCashVoucherHACCIDChange(Sender: TField);
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

procedure TfrmCreateSettlementKPEI.cdsCashVoucherHBeforePost(DataSet: TDataSet);
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

procedure TfrmCreateSettlementKPEI.cdsCashVoucherHBROKER_BANKIDChange(Sender: TField);
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

procedure TfrmCreateSettlementKPEI.cdsCashVoucherHCCYCODE_FXChange(Sender: TField);
begin
  if (not cdsCashVoucherHCCYCODE.IsNull)
    and (not cdsCashVoucherHCCYCODE_FX.IsNull)
    and (not cdsCashVoucherHENTRYDATE.IsNull) then
  begin
    if (cdsCashVoucherHCCYCODE_FX.AsString = cdsCashVoucherHCCYCODE.AsString) then
    begin
      cdsCashVoucherHEXRATE.AsFloat := 1;
    end
    else
    begin
      cdsExRateValue.Close;
      cdsExRateValue.Params[0].AsString := cdsCashVoucherHCCYCODE.AsString;
      cdsExRateValue.Params[1].AsString := cdsCashVoucherHCCYCODE_FX.AsString;
      cdsExRateValue.Params[2].AsDate := cdsCashVoucherHENTRYDATE.AsDateTime;
      cdsExRateValue.Open;

      if (not cdsExRateValue.IsEmpty) then
      begin
        cdsCashVoucherHEXRATE.AsFloat := cdsExRateValueINVERSE_CONVERSION_VALUE.AsFloat;
      end;
    end;

    cdsLuBrokerBank.Filter := 'CCYCODE = ' + QuotedStr(cdsCashVoucherHCCYCODE_FX.AsString);
    cdsLuBrokerBank.Filtered := True;

    cdsLuCustBank.Filter := 'CCYCODE = ' + QuotedStr(cdsCashVoucherHCCYCODE_FX.AsString);
    cdsLuCustBank.Filtered := True;

    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;

  end;

  lcExRate.Enabled := (cdsCashVoucherHCCYCODE_FX.AsString <> cdsCashVoucherHCCYCODE.AsString);
end;

procedure TfrmCreateSettlementKPEI.cdsCashVoucherHCUST_BANKIDChange(Sender: TField);
begin
  if cdsLuCustBank.Locate('ACCBANKID', cdsCashVoucherHCUST_BANKID.AsInteger, []) then
  begin
    cdsCashVoucherHCUST_BANKCODE.AsString := cdsLuCustBankBNCODE.AsString;
    cdsCashVoucherHCUST_BANKACCNO.AsString := cdsLuCustBankBANKACCNO.AsString;
    cdsCashVoucherHCUST_BANKACCNAME.AsString := cdsLuCustBankBANKACCNAME.AsString;
    cdsCashVoucherHCUST_BANKACCBRANCH.AsString := cdsLuCustBankBANKBRANCH.AsString;
  end;
end;

procedure TfrmCreateSettlementKPEI.cdsCashVoucherHEXRATEChange(Sender: TField);
begin
  if (cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat = cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat) then
  begin
    cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
    cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat := cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat;
  end
  else
  begin
    cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
  end;

  cdsCashVoucherHCHARGESAMT_FX.AsFloat := cdsCashVoucherHCHARGESAMT.AsFloat / cdsCashVoucherHEXRATE.AsFloat;
end;

procedure TfrmCreateSettlementKPEI.cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGEDChange(
  Sender: TField);
begin
  cdsCashVoucherHTOTAL_AMOUNT_FX_DIFF.AsFloat := cdsCashVoucherHTOTAL_AMOUNT_FX_CHANGED.AsFloat - cdsCashVoucherHTOTAL_AMOUNT_FX.AsFloat;
end;

procedure TfrmCreateSettlementKPEI.cdsSICashOutstandingAfterOpen(DataSet: TDataSet);
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

procedure TfrmCreateSettlementKPEI.cdsSICashOutstandingAfterPost(DataSet: TDataSet);
begin
  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat)
  else
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
end;

procedure TfrmCreateSettlementKPEI.cdsSICashOutstandingCalcFields(
  DataSet: TDataSet);
begin
  if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
    cdsSICashOutstandingX.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat * (-1)
  else
    cdsSICashOutstandingX.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
end;

procedure TfrmCreateSettlementKPEI.chkRoundingClick(Sender: TObject);
var
  i: Integer;
  fAmount: Double;
begin
  if txtCreatePayment.EditValue <>dsSubject.DataSet.FieldByName('TOTAL_AMOUNT').NewValue then
  begin
    if not cdsSICashOutstandingTmp.Active then
    begin
      cdsSICashOutstandingTmp.Close;
      cdsSICashOutstandingTmp.CreateDataSet;
      cdsSICashOutstandingTmp.Append;
    end
    else
      cdsSICashOutstandingTmp.Edit;

    for i := 0 to cdsSICashOutstanding.FieldCount -1 do
      cdsSICashOutstandingTmp.Fields[i].Value := cdsSICashOutstanding.Fields[i].Value;
    cdsSICashOutstandingTmp.Post;

    fAmount := dsSubject.DataSet.FieldByName('TOTAL_AMOUNT').NewValue - FCreatePayment;
    if fAmount < 0 then fAmount := fAmount * -1;

    if FAppend then
    begin
      cdsSICashOutstanding.Last;
      cdsSICashOutstanding.Delete;
    end;

    cdsSICashOutstanding.Append;
    for i := 0 to cdsSICashOutstanding.FieldCount -1 do
      cdsSICashOutstanding.Fields[i].Value := cdsSICashOutstandingTmp.Fields[i].Value;
    cdsSICashOutstandingCHECKED.AsBoolean     := True;
    cdsSICashOutstandingPROCESSAMT.AsFloat    := fAmount;
    cdsSICashOutstandingSETTLE_NETAMT.AsFloat := fAmount;
    cdsSICashOutstandingSITYPE.AsString       := 'RN';
    cdsSICashOutstandingSI_DESC.AsString      := 'Rounding';
    cdsSICashOutstanding.Post;

    txtCreatePayment.EditValue := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
    FAppend := True;
  end;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
  end
  else
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
  end;
end;

procedure TfrmCreateSettlementKPEI.chkSaldoClick(Sender: TObject);
var
  i: Integer;
  fAmount: Double;
begin
  if txtCreatePayment.EditValue <> dsSubject.DataSet.FieldByName('TOTAL_AMOUNT').NewValue then
  begin
    if not cdsSICashOutstandingTmp.Active then
    begin
      cdsSICashOutstandingTmp.Close;
      cdsSICashOutstandingTmp.CreateDataSet;
      cdsSICashOutstandingTmp.Append;
    end
    else
      cdsSICashOutstandingTmp.Edit;

    for i := 0 to cdsSICashOutstanding.FieldCount -1 do
      cdsSICashOutstandingTmp.Fields[i].Value := cdsSICashOutstanding.Fields[i].Value;
    cdsSICashOutstandingTmp.Post;

    fAmount := dsSubject.DataSet.FieldByName('TOTAL_AMOUNT').NewValue - FCreatePayment;
    if fAmount < 0 then fAmount := fAmount * -1;

    if FAppend then
    begin
      cdsSICashOutstanding.Last;
      cdsSICashOutstanding.Delete;
    end;

    cdsSICashOutstanding.Append;
    for i := 0 to cdsSICashOutstanding.FieldCount -1 do
      cdsSICashOutstanding.Fields[i].Value := cdsSICashOutstandingTmp.Fields[i].Value;
    cdsSICashOutstandingCHECKED.AsBoolean     := True;
    cdsSICashOutstandingPROCESSAMT.AsFloat    := fAmount;
    cdsSICashOutstandingSETTLE_NETAMT.AsFloat := fAmount;
    cdsSICashOutstandingSITYPE.AsString       := 'RB';
    cdsSICashOutstandingSI_DESC.AsString      := 'Rebate Amount';
    cdsSICashOutstanding.Post;

    txtCreatePayment.EditValue := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
    FAppend := True;
  end;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
  end
  else
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
  end;
end;

procedure TfrmCreateSettlementKPEI.chkSelectAllClick(Sender: TObject);
begin
  OnCheckedSelectedAll;
end;

procedure TfrmCreateSettlementKPEI.cxButton1Click(Sender: TObject);
var
  dTempCashOnHand: Double;
  sContinue: Boolean;
  i: Integer;
begin
  if VarIsNull(dsSubject.DataSet.FieldByName('TOTAL_AMOUNT').AsFloat) then
  begin
    MessageDlg('Cash onhand must not be empty', mtError, [mbOk], 0);
    exit;
  end;

  if VarIsNull(txtCreatePayment.EditValue) then txtCreatePayment.EditValue := 0;


  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat > txtCreatePayment.EditValue then
  begin
    dTempCashOnHand := cdsCashVoucherHTOTAL_AMOUNT.AsFloat - txtCreatePayment.EditValue;

    cdsSICashOutstandingTmp.Close;
    cdsSICashOutstandingTmp.CreateDataSet;
    cdsSICashOutstandingTmp.Append;

    cdsSICashOutstanding.First;
    for i := 0 to cdsSICashOutstanding.FieldCount -1 do
      cdsSICashOutstandingTmp.Fields[i].Value    := cdsSICashOutstanding.Fields[i].Value;
    cdsSICashOutstandingTmpSIID.AsLargeInt       := dmGlobal.RemoteServer.GetSeq('TBL_B_SETTLE_INSTR');
    cdsSICashOutstandingTmpPROCESSAMT.AsFloat    := dTempCashOnHand;
    cdsSICashOutstandingTmpSETTLE_NETAMT.AsFloat := dTempCashOnHand;
    cdsSICashOutstandingTmpSETTLE_SIDE.AsString  := 'P';
    cdsSICashOutstandingTmp.Post;

    cdsSICashOutstanding.Append;
    for i := 0 to cdsSICashOutstandingTmp.FieldCount -1 do
      cdsSICashOutstanding.Fields[i].Value := cdsSICashOutstandingTmp.Fields[i].Value;
    cdsSICashOutstandingSITYPE.AsString    := 'ET';
    cdsSICashOutstandingSI_DESC.AsString   := 'Deposit Amount';
    cdsSICashOutstanding.Post;
  end;
  OnCheckedSelectedAll;


//  cdsSICashOutstanding.First;
//  while not cdsSICashOutstanding.Eof do
//  begin
//    cdsSICashOutstanding.Edit;
//    cdsSICashOutstandingCHECKED.AsBoolean  := False;
//    cdsSICashOutstandingPROCESSAMT.AsFloat := 0;
//    cdsSICashOutstanding.Post;
//
//    cdsSICashOutstanding.Next;
//  end;
//  cdsCashVoucherHTOTAL_AMOUNT.AsFloat := 0;
//
//  dTempCashOnHand := dsSubject.DataSet.FieldByName('CASH_ONHAND').AsFloat;
//  if dTempCashOnHand > 0 then
//  begin
//    cdsSICashOutstanding.DisableControls;
//
//    cdsSICashOutstanding.Filter   := 'SETTLE_SIDE = '+QuotedStr('P');
//    cdsSICashOutstanding.Filtered := True;
//
//    cdsSICashOutstanding.First;
//    while not cdsSICashOutstanding.Eof do
//    begin
//      if not (cdsSICashOutstanding.State in dsEditModes) then
//        cdsSICashOutstanding.Edit;
//
//      if not (cdsCashVoucherH.State in dsEditModes) then
//        cdsCashVoucherH.Edit;
//
//      if cdsCashVoucherHCCYCODE.IsNull then
//        cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;
//
//      cdsSICashOutstandingCHECKED.Value      := True;
//      cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
//      if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
//        cdsCashVoucherHTOTAL_AMOUNT.AsFloat  := cdsCashVoucherHTOTAL_AMOUNT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
//      dTempCashOnHand := dTempCashOnHand + cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
//
//      cdsSICashOutstanding.Post;
//      cdsSICashOutstanding.Next;
//    end;
//
//    cdsSICashOutstanding.Filter   := 'SETTLE_SIDE = '+QuotedStr('R');
//    cdsSICashOutstanding.Filtered := True;
//    while not cdsSICashOutstanding.Eof do
//    begin
//      if dTempCashOnHand > 0 then sContinue := True else sContinue := False;
//
//      if sContinue then
//      begin
//        if not (cdsSICashOutstanding.State in dsEditModes) then
//          cdsSICashOutstanding.Edit;
//
//        if not (cdsCashVoucherH.State in dsEditModes) then
//          cdsCashVoucherH.Edit;
//
//        if cdsCashVoucherHCCYCODE.IsNull then
//          cdsCashVoucherHCCYCODE.AsString := cdsSICashOutstandingSETTLE_CCYCODE.AsString;
//
//        if (dTempCashOnHand - cdsSICashOutstandingSETTLE_NETAMT.AsFloat) >= 0 then
//        begin
//          cdsSICashOutstandingCHECKED.Value      := True;
//          cdsSICashOutstandingPROCESSAMT.AsFloat := cdsSICashOutstandingSETTLE_NETAMT.AsFloat - cdsSICashOutstandingVOUCHERAMT.AsFloat;
//          if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
//            cdsCashVoucherHTOTAL_AMOUNT.AsFloat  := cdsCashVoucherHTOTAL_AMOUNT.AsFloat - cdsSICashOutstandingPROCESSAMT.AsFloat;
//          dTempCashOnHand                        := dTempCashOnHand - cdsSICashOutstandingSETTLE_NETAMT.AsFloat;
//        end
//        else
//        begin
//          cdsSICashOutstandingCHECKED.Value      := True;
//          cdsSICashOutstandingPROCESSAMT.AsFloat := dTempCashOnHand;
//          if cdsSICashOutstandingPROCESSAMT.AsFloat > 0 then
//            cdsCashVoucherHTOTAL_AMOUNT.AsFloat  := cdsCashVoucherHTOTAL_AMOUNT.AsFloat - cdsSICashOutstandingPROCESSAMT.AsFloat;
//          dTempCashOnHand := 0;
//        end;
//
//        cdsSICashOutstanding.Post;
//      end;
//      cdsSICashOutstanding.Next;
//    end;
//
//    if cdsCashVoucherHTOTAL_AMOUNT.AsFloat > 0 then
//      cdsCashVoucherHVOUCHERTYPE.AsString := 'P'
//    else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
//      cdsCashVoucherHVOUCHERTYPE.AsString := 'R';
//
//    cdsSICashOutstanding.Filtered := False;
//    cdsSICashOutstanding.EnableControls;
//  end;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
  end
  else
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashVoucherHTOTAL_AMOUNT.AsFloat);
  end;
end;

procedure TfrmCreateSettlementKPEI.GenerateBankFile;
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

procedure TfrmCreateSettlementKPEI.gvwMasterCHECKEDPropertiesChange(Sender: TObject);
begin
  OnCheckedChanged;
end;

procedure TfrmCreateSettlementKPEI.gvwMasterCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat = 0 then cdsCashVoucherHVOUCHER_DESC.AsString := '';
end;

function TfrmCreateSettlementKPEI.IPOPaymentToBAE(IPOID, ABrokerBankID: Integer;
  AIPOType: String): TModalResult;
var
  oForm: TfrmCreateSettlementKPEI;
  dtTransDate, dtProcess: TDateTime;
  sUser: String;
  VoucherAmt: Double;
  SIID: Int64;
label
  Selesai;
begin
  Result := mrNone;

  oForm := TfrmCreateSettlementKPEI.Create(nil);
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

      cdsSICashOutstanding.Close;
      cdsSICashOutstanding.Params[0].AsInteger := AccountID;
      cdsSICashOutstanding.Params[1].AsInteger := 0;
      cdsSICashOutstanding.Params[2].AsDate := dtDueDate.Date;
      cdsSICashOutstanding.Open;

      if AIPOType = 'AL' then
      begin
        cdsAllotmentBAEAmount.Close;
        cdsAllotmentBAEAmount.Params[0].AsInteger := IPOID;
        cdsAllotmentBAEAmount.Open;

        if not cdsAllotmentBAEAmount.IsEmpty then
          VoucherAmt := cdsAllotmentBAEAmountAMOUNT.AsFloat
        else
          VoucherAmt := 0;
      end
      else if AIPOType = 'PO' then
      begin
        cdsPoolingBAEAmount.Close;
        cdsPoolingBAEAmount.Params[0].AsInteger := IPOID;
        cdsPoolingBAEAmount.Open;

        if not cdsPoolingBAEAmount.IsEmpty then
          VoucherAmt := cdsPoolingBAEAmountAMOUNT.AsFloat
        else
          VoucherAmt := 0;
      end;

      if VoucherAmt = 0 then
        Goto Selesai;

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
      cdsSICashOutstandingSI_DESC.AsString := 'BAE Payment for IPO '
        + cdsIPOIPOCODE.AsString + ' (' + cdsIPOSCRIPNAME.AsString + ')';
      cdsSICashOutstandingACCID.AsInteger := AccountID;
      cdsSICashOutstandingSETTLE_CCYCODE.AsString := cdsIPOCCY.AsString;
      cdsSICashOutstandingSETTLE_EXRATE.AsFloat := 1;
      cdsSICashOutstandingPROCESSAMT.AsFloat := VoucherAmt;
      cdsSICashOutstandingSETTLE_NETAMT.AsFloat := VoucherAmt;
      cdsSICashOutstandingISDEL.AsInteger := 0;
      cdsSICashOutstandingID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('MAIN.B_SETTLE_INSTR');
      cdsSICashOutstandingCHECKED.AsBoolean := True;
      cdsSICashOutstanding.Post;

      cdsCashVoucherH.Append;
      cdsCashVoucherHVOUCHERNO.AsString := '<AUTO>';
      cdsCashVoucherHVOUCHERTYPE.AsString := 'P';
      cdsCashVoucherHENTRYDATE.AsDateTime := dtTransDate;
      cdsCashVoucherHVOUCHERDATE.AsDateTime := dtTransDate;
      cdsCashVoucherHACCID.AsInteger := AccountID;
      cdsCashVoucherHBROKER_BANKID.AsInteger := ABrokerBankID;
      cdsCashVoucherHPOSTED.AsString := '0';
      cdsCashVoucherHCCYCODE.AsString := cdsIPOCCY.AsString;
      cdsCashVoucherHCCYCODE_FX.AsString := cdsIPOCCY.AsString;
      cdsCashVoucherHTOTAL_AMOUNT.AsFloat := VoucherAmt;

      Height := Height - grdMaster.Height;
      grdMaster.Visible := False;
      lgDueDate.Visible := False;
//      lcAll.Visible := False;
      lgBrokerBank.CaptionOptions.Text := 'Source Bank';
//      lgCustBank.CaptionOptions.Text := 'Target Bank';
      rgVoucherType.Properties.Items[0].Caption := 'Payment to BAE';
      rgVoucherType.Properties.Items[1].Caption := 'Receive from BAE';

      if oForm.ShowModal = mrOk then
      begin
        if (cdsSICashOutstanding.State in dsEditModes) then
          cdsSICashOutstanding.Post;

        dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
        sUser := dmGlobal.UserID;

        cdsCashVoucherHVOUCHERID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_VOUCHER_H');
        cdsCashVoucherHVOUCHERNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucherHVOUCHERDATE.AsDateTime, 'CV', 'CASH VOUCHER');
        cdsCashVoucherHSTAT.AsString := 'O';
//        cdsCashVoucherHMODDA.AsDateTime := dtProcess;
//        cdsCashVoucherHMODUI.AsString := sUser;
//        cdsCashVoucherHISDEL.AsInteger := 0;
//        cdsCashVoucherHID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CASH_VOUCHER_H');
        if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
          cdsCashVoucherHTOTAL_AMOUNT.AsFloat := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1;

        cdsSICashOutstanding.First;
        while not cdsSICashOutstanding.Eof do
        begin
          if cdsSICashOutstandingCHECKED.AsBoolean then
          begin
            if (cdsSICashOutstandingPROCESSAMT.AsFloat > 0) then
            begin
              cdsCashVoucherD.Append;
              cdsCashVoucherDTRANS_TYPE.AsString := cdsSICashOutstandingSITYPE.AsString;
              cdsCashVoucherDLINKTYPE.AsString := 'SIID';
              cdsCashVoucherDLINKID.AsLargeInt := cdsSICashOutstandingSIID.AsLargeInt;
              cdsCashVoucherDLINKNO.AsString := cdsSICashOutstandingSINO.AsString;
              cdsCashVoucherDTRDDATE.AsDateTime := cdsSICashOutstandingTRDDATE.AsDateTime;
              cdsCashVoucherDDUEDATE.AsDateTime := cdsSICashOutstandingDUEDATE.AsDateTime;
              cdsCashVoucherDCASH_DESC.AsString := cdsSICashOutstandingSI_DESC.AsString;
              cdsCashVoucherDNETTYPE.AsString := cdsSICashOutstandingNETTYPE.AsString;
              cdsCashVoucherDTRANS_AMT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat;
              cdsCashVoucherDAMOUNT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat;
              cdsCashVoucherDMODDA.AsDateTime := dtProcess;
              cdsCashVoucherDMODUI.AsString := sUser;
              cdsCashVoucherDISDEL.AsInteger := 0;
              cdsCashVoucherD.Post;

              cdsSICashOutstanding.Edit;
              cdsSICashOutstandingVOUCHERAMT.AsFloat := cdsSICashOutstandingVOUCHERAMT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
              cdsSICashOutstandingMODDA.AsDateTime := dtProcess;
              cdsSICashOutstandingMODUI.AsString := sUser;
              cdsSICashOutstanding.Post;
            end;
          end;

          cdsSICashOutstanding.Next;
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
              cdsIPOALLOTMENT_SIID.AsLargeInt := SIID;
            end
            else if AIPOType = 'PO' then
            begin
              cdsIPOPOOLING_VOUCHER.AsString := '1';
              cdsIPOPOOLING_AMOUNT.AsFloat := VoucherAmt;
              cdsIPOPOOLING_SIID.AsLargeInt := SIID;
            end;
            cdsIPO.Post;
            cdsIPO.ApplyUpdates(-1);

            cdsSICashOutstanding.ApplyUpdates(-1);
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

procedure TfrmCreateSettlementKPEI.OnCheckedChanged;
begin
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
  txtCreatePayment.EditValue := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
  FCreatePayment             := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat > 0 then
    cdsCashVoucherHVOUCHERTYPE.AsString := 'P'
  else if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then
    cdsCashVoucherHVOUCHERTYPE.AsString := 'R';

  if FFromDate = FToDate then
    cdsCashVoucherHVOUCHER_DESC.AsString := 'TD_'+FormatDateTime('dd/mm/yyyy', FFromDate)
  else
    cdsCashVoucherHVOUCHER_DESC.AsString := 'TD_'+FormatDateTime('dd/mm/yyyy', FFromDate)+' - '+FormatDateTime('ddmmyyyy', FToDate);

  cdsSICashOutstandingMODDA.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsSICashOutstanding.Post;
end;

procedure TfrmCreateSettlementKPEI.OnCheckedSelectedAll;
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
        if cdsSICashOutstandingSETTLE_SIDE.AsString = 'P' then
          dSummary := dSummary + cdsSICashOutstandingPROCESSAMT.AsFloat
        else
          dSummary := dSummary - cdsSICashOutstandingPROCESSAMT.AsFloat;
      end;
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

    cdsSICashOutstandingMODDA.AsDateTime := dtTransDate;
    cdsSICashOutstanding.Post;

    cdsSICashOutstanding.Next;
  end;

  if dSummary > 0 then
    cdsCashVoucherHVOUCHERTYPE.AsString := 'P'
  else if dSummary < 0 then
    cdsCashVoucherHVOUCHERTYPE.AsString := 'R';

  cdsCashVoucherH.Edit;
  if chkSelectAll.Checked then
    cdsCashVoucherHTOTAL_AMOUNT.AsFloat := dSummary
  else
    cdsCashVoucherHTOTAL_AMOUNT.AsFloat := 0;
  txtCreatePayment.EditValue := dSummary;
  FCreatePayment             := dSummary;

  if cdsCashVoucherHTOTAL_AMOUNT.AsFloat < 0 then fTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat * -1 else fTotalAmount := cdsCashVoucherHTOTAL_AMOUNT.AsFloat;
  if fTotalAmount < FSumNetAmount then
  begin
    if dFromDate = dToDate then
      cdsCashVoucherHVOUCHER_DESC.AsString := 'P/O TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+' Rp '+FloatToStr(FSumNetAmount)+sPenalty
    else
      cdsCashVoucherHVOUCHER_DESC.AsString := 'P/O TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+' - '+FormatDateTime('dd/mm/yyyy', dToDate)+' Rp '+FloatToStr(FSumNetAmount)+sPenalty;
  end
  else
  begin
    if dFromDate = dToDate then
      cdsCashVoucherHVOUCHER_DESC.AsString := 'TD '+FormatDateTime('dd/mm/yyyy', dFromDate)+sPenalty
    else
      cdsCashVoucherHVOUCHER_DESC.AsString := 'TD_'+FormatDateTime('dd/mm/yyyy', dFromDate)+' - '+FormatDateTime('dd/mm/yyyy', dToDate)+sPenalty;
  end;

  cdsSICashOutstanding.EnableControls;
  gvwMaster.DataController.Summary.Recalculate;

  if dSummary > 0 then
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', dSummary);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', dSummary);
  end
  else
  begin
//    gvwMaster.DataController.Summary.FooterSummaryValues[0] := FormatFloat('#,##0.00;(#,##0.00);0.00', - dSummary);
    gvwMaster.DataController.Summary.FooterSummaryValues[1] := FormatFloat('#,##0.00;(#,##0.00);0.00', - dSummary);
  end;

  gvwMaster.ApplyBestFit();
end;

function TfrmCreateSettlementKPEI.Run(ACCID, ABrokerBankID, AACCMSOPID: Integer; ACCY: string): TModalResult;
var
  oForm: TfrmCreateSettlementKPEI;
  dtTransDate, dtProcess: TDateTime;
  sUser: String;
  iVoucher: Int64;
  dAmount: Double;
begin
  Result  := mrNone;

  oForm := TfrmCreateSettlementKPEI.Create(nil);
  Try
    with oForm do
    begin
      FAppend       := False;
      AccountID     := ACCID;
      FSumNetAmount := 0;

      dtTransDate := dmGlobal.RemoteServer.GetTransDate;
      dtDueDate.Date := dtTransDate;

      cdsLuBrokerBank.Close;
      cdsLuBrokerBank.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
      cdsLuBrokerBank.Open;

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

      cdsCashVoucherH.Close;
      cdsCashVoucherH.Params[0].AsInteger := 0;
      cdsCashVoucherH.Open;

      cdsCashVoucherH.Append;
      cdsCashVoucherHVOUCHERNO.AsString := '<AUTO>';
      cdsCashVoucherHVOUCHERTYPE.AsString := 'P';
      cdsCashVoucherHENTRYDATE.AsDateTime := dtTransDate;
      cdsCashVoucherHVOUCHERDATE.AsDateTime := dtTransDate;
      cdsCashVoucherHACCID.AsInteger := ACCID;
      cdsCashVoucherHBROKER_BANKID.AsInteger := ABrokerBankID;
      cdsCashVoucherHPOSTED.AsString := '0';
      cdsCashVoucherHCCYCODE.AsString := ACCY;
      cdsCashVoucherHCCYCODE_FX.AsString := cdsCashVoucherHCCYCODE.AsString;

      dmGlobal.IntDataLookup.cdsLuBank.Close;
      dmGlobal.IntDataLookup.cdsLuBank.Open;

      dmGlobal.IntDataLookup.cdsLuAccBankSOP.Close;
      dmGlobal.IntDataLookup.cdsLuAccBankSOP.Params[0].AsInteger := 0;
      dmGlobal.IntDataLookup.cdsLuAccBankSOP.Open;

      if not cdsLuCustBank.IsEmpty then
      begin
        cdsLuCustBank.Locate('ISRDN', '1', []);
        cdsCashVoucherHCUST_BANKID.AsInteger := cdsLuCustBankACCBANKID.AsInteger;
      end;

      if oForm.ShowModal = mrOk then
      begin
        if (cdsSICashOutstanding.State in dsEditModes) then
          cdsSICashOutstanding.Post;

        dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
        sUser := dmGlobal.UserID;

        iVoucher := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_VOUCHER_H');
        cdsCashVoucherHVOUCHERID.AsLargeInt := iVoucher;
        cdsCashVoucherHVOUCHERNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucherHVOUCHERDATE.AsDateTime, 'CV', 'CASH VOUCHER');
        cdsCashVoucherHSTAT.AsString := 'O';
        cdsCashVoucherHMODDA.AsDateTime := dtProcess;
        cdsCashVoucherHMODUI.AsString := sUser;
        cdsCashVoucherHISDEL.AsInteger := 0;
        cdsCashVoucherHID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CASH_VOUCHER_H');
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
              cdsCashVoucherDTRANS_TYPE.AsString := cdsSICashOutstandingSITYPE.AsString;
              cdsCashVoucherDLINKTYPE.AsString := 'SIID';
              cdsCashVoucherDLINKID.AsLargeInt := cdsSICashOutstandingSIID.AsLargeInt;
              cdsCashVoucherDLINKNO.AsString := cdsSICashOutstandingSINO.AsString;
              cdsCashVoucherDTRDDATE.AsDateTime := cdsSICashOutstandingTRDDATE.AsDateTime;
              cdsCashVoucherDDUEDATE.AsDateTime := cdsSICashOutstandingDUEDATE.AsDateTime;
              cdsCashVoucherDCASH_DESC.AsString := cdsSICashOutstandingSI_DESC.AsString;
              cdsCashVoucherDNETTYPE.AsString := cdsSICashOutstandingNETTYPE.AsString;
              cdsCashVoucherDTRANS_AMT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat;
              cdsCashVoucherDAMOUNT.AsFloat := cdsSICashOutstandingPROCESSAMT.AsFloat;
              cdsCashVoucherDMODDA.AsDateTime := dtProcess;
              cdsCashVoucherDMODUI.AsString := sUser;
              cdsCashVoucherDISDEL.AsInteger := 0;
              cdsCashVoucherD.Post;

              cdsSICashOutstanding.Edit;
              cdsSICashOutstandingVOUCHERAMT.AsFloat := cdsSICashOutstandingVOUCHERAMT.AsFloat + cdsSICashOutstandingPROCESSAMT.AsFloat;
              cdsSICashOutstandingMODDA.AsDateTime := dtProcess;
              cdsSICashOutstandingVOUCHERDATE.AsDateTime := dtTransDate;
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
          //Request By Irvan 20160123
          cdsCashVoucherH.Edit;
          cdsCashVoucherHBANK_REFERENCE.AsString := cdsCashVoucherHACCNO.AsString
            + cdsCashVoucherHBROKER_BANKCODE.AsString;
          cdsCashVoucherHBANK_INSTRUCTION.AsString := '1';
          cdsCashVoucherH.Post;
          cdsCashVoucherH.ApplyUpdates(-1);
//          if cdsCashVoucherH.ApplyUpdates(0) = 0 then
//          begin
            cdsSICashOutstanding.ApplyUpdates(-1);
//            GenerateBankFile;//Request By Irvan 20160123

//            dmGlobal.RemoteServer.PostCashVoucher(iVoucher);
            Result := mrOk;
//          end;
        end;

      end;

    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
