unit FormAccountInterestList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  System.Actions, System.ImageList;

type
  TfrmAccountInterestList = class(TfrmBrowseData)
    cdsAccountList: TNClientDataset;
    cdsAccountListACCID: TIntegerField;
    cdsAccountListENTTID: TIntegerField;
    cdsAccountListACCCODE: TStringField;
    cdsAccountListACCNAME: TStringField;
    cdsAccountListACCINIT: TStringField;
    cdsAccountListACCTYPE: TStringField;
    cdsAccountListACCSUBTYPE: TStringField;
    cdsAccountListBRANCHID: TLargeintField;
    cdsAccountListINVTYPE: TStringField;
    cdsAccountListBUSSTYPE: TLargeintField;
    cdsAccountListTC_MODEL: TStringField;
    cdsAccountListPRDCODE: TStringField;
    cdsAccountListA_CLS_ORDER: TStringField;
    cdsAccountListAVGPRICEDEC: TSmallintField;
    cdsAccountListOMNIBUSTRADE: TStringField;
    cdsAccountListCASHKEEP: TStringField;
    cdsAccountListSTOCKKEEP: TStringField;
    cdsAccountListISWAPU: TStringField;
    cdsAccountListWAPUVALUE: TFloatField;
    cdsAccountListISAVGPRICE: TStringField;
    cdsAccountListISDEBETINTEREST: TStringField;
    cdsAccountListISCREDITINTEREST: TStringField;
    cdsAccountListISPENALTY: TStringField;
    cdsAccountListISUSEWHT: TStringField;
    cdsAccountListISUSEOTC: TStringField;
    cdsAccountListISOWNCONTACT: TStringField;
    cdsAccountListSALESID: TLargeintField;
    cdsAccountListACC_STS: TStringField;
    cdsAccountListOMGUSE: TStringField;
    cdsAccountListOMGEXREFFCODE: TStringField;
    cdsAccountListOMGALERT: TStringField;
    cdsAccountListOMGSENDSSI: TStringField;
    cdsAccountListOMGSENDFEEINBLOCK: TStringField;
    cdsAccountListMODDA: TDateTimeField;
    cdsAccountListMODUI: TStringField;
    cdsAccountListAPPDA: TDateTimeField;
    cdsAccountListAPPUI: TStringField;
    cdsAccountListUNDER4Y: TIntegerField;
    cdsAccountListUNDER4YDA: TDateTimeField;
    cdsAccountListNOTES4Y: TStringField;
    cdsAccountListISDEL: TIntegerField;
    cdsAccountListID: TLargeintField;
    cdsAccountListENTTCODE: TStringField;
    cdsAccountListENTNAME: TStringField;
    cdsAccountListENTTDESC: TStringField;
    cdsAccountListISTRDACCOUNT: TStringField;
    cdsAccountListUpd: TNClientDataset;
    cdsAccountListUpdACCID: TIntegerField;
    cdsAccountListUpdENTTID: TIntegerField;
    cdsAccountListUpdACCCODE: TStringField;
    cdsAccountListUpdACCNAME: TStringField;
    cdsAccountListUpdACCINIT: TStringField;
    cdsAccountListUpdACCTYPE: TStringField;
    cdsAccountListUpdACCSUBTYPE: TStringField;
    cdsAccountListUpdBRANCHID: TLargeintField;
    cdsAccountListUpdINVTYPE: TStringField;
    cdsAccountListUpdBUSSTYPE: TLargeintField;
    cdsAccountListUpdTC_MODEL: TStringField;
    cdsAccountListUpdPRDCODE: TStringField;
    cdsAccountListUpdA_CLS_ORDER: TStringField;
    cdsAccountListUpdAVGPRICEDEC: TSmallintField;
    cdsAccountListUpdOMNIBUSTRADE: TStringField;
    cdsAccountListUpdCASHKEEP: TStringField;
    cdsAccountListUpdSTOCKKEEP: TStringField;
    cdsAccountListUpdISWAPU: TStringField;
    cdsAccountListUpdWAPUVALUE: TFloatField;
    cdsAccountListUpdISAVGPRICE: TStringField;
    cdsAccountListUpdISDEBETINTEREST: TStringField;
    cdsAccountListUpdISCREDITINTEREST: TStringField;
    cdsAccountListUpdISPENALTY: TStringField;
    cdsAccountListUpdISUSEWHT: TStringField;
    cdsAccountListUpdISUSEOTC: TStringField;
    cdsAccountListUpdISOWNCONTACT: TStringField;
    cdsAccountListUpdSALESID: TLargeintField;
    cdsAccountListUpdACC_STS: TStringField;
    cdsAccountListUpdOMGUSE: TStringField;
    cdsAccountListUpdOMGEXREFFCODE: TStringField;
    cdsAccountListUpdOMGALERT: TStringField;
    cdsAccountListUpdOMGSENDSSI: TStringField;
    cdsAccountListUpdOMGSENDFEEINBLOCK: TStringField;
    cdsAccountListUpdMODDA: TDateTimeField;
    cdsAccountListUpdMODUI: TStringField;
    cdsAccountListUpdAPPDA: TDateTimeField;
    cdsAccountListUpdAPPUI: TStringField;
    cdsAccountListUpdEDIT4YDA: TDateTimeField;
    cdsAccountListUpdEDIT4YUI: TStringField;
    cdsAccountListUpdUPDSTS: TStringField;
    cdsAccountListUpdFLOWSTS: TStringField;
    cdsAccountListUpdPROCESSNAME: TStringField;
    cdsAccountListUpdNOTES4Y: TStringField;
    cdsAccountListUpdNOTES4YAPP: TStringField;
    cdsAccountListUpdID: TLargeintField;
    cdsAccountListUpdUPDID: TLargeintField;
    cdsAccountListUpdENTTCODE: TStringField;
    cdsAccountListUpdENTNAME: TStringField;
    cdsAccountListUpdENTTDESC: TStringField;
    cdsAccountListUpdISTRDACCOUNT: TStringField;
    cdsAccountInterest: TNClientDataset;
    cdsAccountInterestACCID: TIntegerField;
    cdsAccountInterestINTERESTTYPE: TStringField;
    cdsAccountInterestINTERESTCODE: TStringField;
    cdsAccountInterestCCY: TStringField;
    cdsAccountInterestCALCMETHOD: TStringField;
    cdsAccountInterestINTERESTRATE: TFloatField;
    cdsAccountInterestINTERESTTABLE: TStringField;
    cdsAccountInterestCALCBASIS: TStringField;
    cdsAccountInterestINTERESTDAY: TIntegerField;
    cdsAccountInterestISACCRUE: TSmallintField;
    cdsAccountInterestMODDA: TDateTimeField;
    cdsAccountInterestMODUI: TStringField;
    cdsAccountInterestAPPDA: TDateTimeField;
    cdsAccountInterestAPPUI: TStringField;
    cdsAccountInterestUNDER4Y: TIntegerField;
    cdsAccountInterestUNDER4YDA: TDateTimeField;
    cdsAccountInterestNOTES4Y: TStringField;
    cdsAccountInterestISDEL: TIntegerField;
    cdsAccountInterestID: TLargeintField;
    cdsAccountInterestUpd: TNClientDataset;
    cdsAccountInterestUpdACCID: TIntegerField;
    cdsAccountInterestUpdINTERESTTYPE: TStringField;
    cdsAccountInterestUpdINTERESTCODE: TStringField;
    cdsAccountInterestUpdCCY: TStringField;
    cdsAccountInterestUpdCALCMETHOD: TStringField;
    cdsAccountInterestUpdINTERESTRATE: TFloatField;
    cdsAccountInterestUpdINTERESTTABLE: TStringField;
    cdsAccountInterestUpdCALCBASIS: TStringField;
    cdsAccountInterestUpdINTERESTDAY: TIntegerField;
    cdsAccountInterestUpdISACCRUE: TSmallintField;
    cdsAccountInterestUpdMODDA: TDateTimeField;
    cdsAccountInterestUpdMODUI: TStringField;
    cdsAccountInterestUpdAPPDA: TDateTimeField;
    cdsAccountInterestUpdAPPUI: TStringField;
    cdsAccountInterestUpdEDIT4YDA: TDateTimeField;
    cdsAccountInterestUpdEDIT4YUI: TStringField;
    cdsAccountInterestUpdUPDSTS: TStringField;
    cdsAccountInterestUpdFLOWSTS: TStringField;
    cdsAccountInterestUpdPROCESSNAME: TStringField;
    cdsAccountInterestUpdNOTES4Y: TStringField;
    cdsAccountInterestUpdNOTES4YAPP: TStringField;
    cdsAccountInterestUpdID: TLargeintField;
    cdsAccountInterestUpdUPDID: TLargeintField;
    cdsAccount: TNClientDataset;
    cdsAccountACCID: TIntegerField;
    cdsAccountENTTID: TIntegerField;
    cdsAccountACCCODE: TStringField;
    cdsAccountACCNAME: TStringField;
    cdsAccountACCINIT: TStringField;
    cdsAccountACCTYPE: TStringField;
    cdsAccountACCSUBTYPE: TStringField;
    cdsAccountBRANCHID: TLargeintField;
    cdsAccountINVTYPE: TStringField;
    cdsAccountBUSSTYPE: TLargeintField;
    cdsAccountTC_MODEL: TStringField;
    cdsAccountPRDCODE: TStringField;
    cdsAccountA_CLS_ORDER: TStringField;
    cdsAccountAVGPRICEDEC: TSmallintField;
    cdsAccountOMNIBUSTRADE: TStringField;
    cdsAccountCASHKEEP: TStringField;
    cdsAccountSTOCKKEEP: TStringField;
    cdsAccountISWAPU: TStringField;
    cdsAccountWAPUVALUE: TFloatField;
    cdsAccountISAVGPRICE: TStringField;
    cdsAccountISDEBETINTEREST: TStringField;
    cdsAccountISCREDITINTEREST: TStringField;
    cdsAccountISPENALTY: TStringField;
    cdsAccountISUSEWHT: TStringField;
    cdsAccountISUSEOTC: TStringField;
    cdsAccountISOWNCONTACT: TStringField;
    cdsAccountSALESID: TLargeintField;
    cdsAccountACC_STS: TStringField;
    cdsAccountOMGUSE: TStringField;
    cdsAccountOMGEXREFFCODE: TStringField;
    cdsAccountOMGALERT: TStringField;
    cdsAccountOMGSENDSSI: TStringField;
    cdsAccountOMGSENDFEEINBLOCK: TStringField;
    cdsAccountMODDA: TDateTimeField;
    cdsAccountMODUI: TStringField;
    cdsAccountAPPDA: TDateTimeField;
    cdsAccountAPPUI: TStringField;
    cdsAccountUNDER4Y: TIntegerField;
    cdsAccountUNDER4YDA: TDateTimeField;
    cdsAccountNOTES4Y: TStringField;
    cdsAccountISDEL: TIntegerField;
    cdsAccountID: TLargeintField;
    cdsAccountqryAccountContact: TDataSetField;
    cdsAccountqryAccountExtRef: TDataSetField;
    cdsAccountqryAccountTransLedger: TDataSetField;
    cdsAccountqryAccountBank: TDataSetField;
    cdsAccountqryAccountLedger: TDataSetField;
    cdsAccountqryAccountCharge: TDataSetField;
    cdsAccountqryAccountComm: TDataSetField;
    cdsAccountISTRDACCOUNT: TStringField;
    cdsAccountqryAccountCustody: TDataSetField;
    cdsAccountSI_SPLIT: TStringField;
    cdsAccountALCID: TIntegerField;
    cdsAccountTALCID: TIntegerField;
    cdsAccountLASTTR_DATE: TDateTimeField;
    cdsAccountIDX_CASHPAY_SOURCE: TIntegerField;
    cdsAccountIDX_CASHPAY_TARGET: TIntegerField;
    cdsAccountIDX_CASHRCV_SOURCE: TIntegerField;
    cdsAccountIDX_CASHRCV_TARGET: TIntegerField;
    cdsAccountIDX_CASHPAY_INSTR: TStringField;
    cdsAccountIDX_CASHRCV_INSTR: TStringField;
    cdsAccountCASHRCV_SOURCE: TIntegerField;
    cdsAccountCASHRCV_TARGET: TIntegerField;
    cdsAccountCASHPAY_SOURCE: TIntegerField;
    cdsAccountCASHPAY_TARGET: TIntegerField;
    cdsAccountTRF_PRVT_BANK: TStringField;
    cdsAccountCASHRCV_INSTR: TStringField;
    cdsAccountCASHPAY_INSTR: TStringField;
    cdsAccountTRF_PRVT_BANK_INSTR: TStringField;
    cdsAccountIDX_STKDLV_SOURCE: TIntegerField;
    cdsAccountIDX_STKDLV_TARGET: TIntegerField;
    cdsAccountIDX_STKRCV_SOURCE: TIntegerField;
    cdsAccountIDX_STKRCV_TARGET: TIntegerField;
    cdsAccountCUST_STKDLV_SOURCE: TIntegerField;
    cdsAccountCUST_STKDLV_TARGET: TIntegerField;
    cdsAccountCUST_STKRCV_SOURCE: TIntegerField;
    cdsAccountCUST_STKRCV_TARGET: TIntegerField;
    cdsAccountIDX_STKDLV_INSTR: TStringField;
    cdsAccountIDX_STKRCV_INSTR: TStringField;
    cdsAccountCUST_STKDLV_INSTR: TStringField;
    cdsAccountCUST_STKRCV_INSTR: TStringField;
    cdsAccountCCCLS_ID: TLargeintField;
    cdsAccountCC_TYPE: TStringField;
    cdsAccountCR_VAL: TFloatField;
    cdsAccountBUY_LIMIT: TFloatField;
    cdsAccountSELL_LIMIT: TFloatField;
    cdsAccountTRF_PRVT_BANK_SOURCE: TIntegerField;
    cdsAccountTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccountIS_IDX_TRX: TStringField;
    cdsAccountTLCLASSID: TIntegerField;
    cdsAccountDEFTRDPARAM: TStringField;
    cdsAccountKSEI_SID: TStringField;
    cdsAccountRATIO_MRGCALL: TFloatField;
    cdsAccountRATIO_MRGWARING: TFloatField;
    cdsAccountRATIO_FORCESELL: TFloatField;
    cdsAccountFORCESELL_DAY: TIntegerField;
    cdsAccountTL_CASHVALUATE: TFloatField;
    cdsAccountTL_STOCKVALUATE: TFloatField;
    cdsAccountINTERESTCODE: TStringField;
    cdsAccountACCPASSWORD: TStringField;
    cdsAccountCPID: TIntegerField;
    cdsAccountBUS_CAT: TLargeintField;
    cdsAccountINIT_DEPOSIT_FUND: TFloatField;
    cdsAccountINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccountALLOC_TYPE: TStringField;
    cdsAccountTC_BASE: TStringField;
    cdsAccountAUTO_ALLOC: TStringField;
    cdsAccountDT_AUTOAVGPRICE: TStringField;
    cdsAccountqryAccountStockSettle: TDataSetField;
    cdsAccountqryAccountCashSettle: TDataSetField;
    cdsAccountSETTLE_MODE: TStringField;
    cdsAccountNET_SETTLE: TStringField;
    cdsAccountqryAccountInterest: TDataSetField;
    cdsAccountSETTLE_TYPE: TStringField;
    cdsAccountUpd: TNClientDataset;
    cdsAccountUpdACCID: TIntegerField;
    cdsAccountUpdENTTID: TIntegerField;
    cdsAccountUpdACCCODE: TStringField;
    cdsAccountUpdACCNAME: TStringField;
    cdsAccountUpdACCINIT: TStringField;
    cdsAccountUpdACCTYPE: TStringField;
    cdsAccountUpdACCSUBTYPE: TStringField;
    cdsAccountUpdBRANCHID: TLargeintField;
    cdsAccountUpdINVTYPE: TStringField;
    cdsAccountUpdBUSSTYPE: TLargeintField;
    cdsAccountUpdTC_MODEL: TStringField;
    cdsAccountUpdPRDCODE: TStringField;
    cdsAccountUpdA_CLS_ORDER: TStringField;
    cdsAccountUpdAVGPRICEDEC: TSmallintField;
    cdsAccountUpdOMNIBUSTRADE: TStringField;
    cdsAccountUpdCASHKEEP: TStringField;
    cdsAccountUpdSTOCKKEEP: TStringField;
    cdsAccountUpdISWAPU: TStringField;
    cdsAccountUpdWAPUVALUE: TFloatField;
    cdsAccountUpdISAVGPRICE: TStringField;
    cdsAccountUpdISDEBETINTEREST: TStringField;
    cdsAccountUpdISCREDITINTEREST: TStringField;
    cdsAccountUpdISPENALTY: TStringField;
    cdsAccountUpdISUSEWHT: TStringField;
    cdsAccountUpdISUSEOTC: TStringField;
    cdsAccountUpdISOWNCONTACT: TStringField;
    cdsAccountUpdSALESID: TLargeintField;
    cdsAccountUpdACC_STS: TStringField;
    cdsAccountUpdOMGUSE: TStringField;
    cdsAccountUpdOMGEXREFFCODE: TStringField;
    cdsAccountUpdOMGALERT: TStringField;
    cdsAccountUpdOMGSENDSSI: TStringField;
    cdsAccountUpdOMGSENDFEEINBLOCK: TStringField;
    cdsAccountUpdMODDA: TDateTimeField;
    cdsAccountUpdMODUI: TStringField;
    cdsAccountUpdAPPDA: TDateTimeField;
    cdsAccountUpdAPPUI: TStringField;
    cdsAccountUpdEDIT4YDA: TDateTimeField;
    cdsAccountUpdEDIT4YUI: TStringField;
    cdsAccountUpdUPDSTS: TStringField;
    cdsAccountUpdFLOWSTS: TStringField;
    cdsAccountUpdPROCESSNAME: TStringField;
    cdsAccountUpdNOTES4Y: TStringField;
    cdsAccountUpdNOTES4YAPP: TStringField;
    cdsAccountUpdID: TLargeintField;
    cdsAccountUpdUPDID: TLargeintField;
    cdsAccountUpdqryAccountContactUpd: TDataSetField;
    cdsAccountUpdqryAccountExtRefUpd: TDataSetField;
    cdsAccountUpdqryAccountTransLedgerUpd: TDataSetField;
    cdsAccountUpdqryAccountLedgerUpd: TDataSetField;
    cdsAccountUpdqryAccountBankUpd: TDataSetField;
    cdsAccountUpdqryAccountChargeUpd: TDataSetField;
    cdsAccountUpdqryAccountCommUpd: TDataSetField;
    cdsAccountUpdISTRDACCOUNT: TStringField;
    cdsAccountUpdqryAccountCustodyUpd: TDataSetField;
    cdsAccountUpdSI_SPLIT: TStringField;
    cdsAccountUpdALCID: TIntegerField;
    cdsAccountUpdTALCID: TIntegerField;
    cdsAccountUpdLASTTR_DATE: TDateTimeField;
    cdsAccountUpdIDX_CASHPAY_SOURCE: TIntegerField;
    cdsAccountUpdIDX_CASHPAY_TARGET: TIntegerField;
    cdsAccountUpdIDX_CASHRCV_SOURCE: TIntegerField;
    cdsAccountUpdIDX_CASHRCV_TARGET: TIntegerField;
    cdsAccountUpdIDX_CASHPAY_INSTR: TStringField;
    cdsAccountUpdIDX_CASHRCV_INSTR: TStringField;
    cdsAccountUpdCASHRCV_SOURCE: TIntegerField;
    cdsAccountUpdCASHRCV_TARGET: TIntegerField;
    cdsAccountUpdCASHPAY_SOURCE: TIntegerField;
    cdsAccountUpdCASHPAY_TARGET: TIntegerField;
    cdsAccountUpdTRF_PRVT_BANK: TStringField;
    cdsAccountUpdCASHRCV_INSTR: TStringField;
    cdsAccountUpdCASHPAY_INSTR: TStringField;
    cdsAccountUpdTRF_PRVT_BANK_INSTR: TStringField;
    cdsAccountUpdIDX_STKDLV_SOURCE: TIntegerField;
    cdsAccountUpdIDX_STKDLV_TARGET: TIntegerField;
    cdsAccountUpdIDX_STKRCV_SOURCE: TIntegerField;
    cdsAccountUpdIDX_STKRCV_TARGET: TIntegerField;
    cdsAccountUpdCUST_STKDLV_SOURCE: TIntegerField;
    cdsAccountUpdCUST_STKDLV_TARGET: TIntegerField;
    cdsAccountUpdCUST_STKRCV_SOURCE: TIntegerField;
    cdsAccountUpdCUST_STKRCV_TARGET: TIntegerField;
    cdsAccountUpdIDX_STKDLV_INSTR: TStringField;
    cdsAccountUpdIDX_STKRCV_INSTR: TStringField;
    cdsAccountUpdCUST_STKDLV_INSTR: TStringField;
    cdsAccountUpdCUST_STKRCV_INSTR: TStringField;
    cdsAccountUpdCCCLS_ID: TLargeintField;
    cdsAccountUpdCC_TYPE: TStringField;
    cdsAccountUpdCR_VAL: TFloatField;
    cdsAccountUpdBUY_LIMIT: TFloatField;
    cdsAccountUpdSELL_LIMIT: TFloatField;
    cdsAccountUpdTRF_PRVT_BANK_SOURCE: TIntegerField;
    cdsAccountUpdTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccountUpdIS_IDX_TRX: TStringField;
    cdsAccountUpdTLCLASSID: TIntegerField;
    cdsAccountUpdDEFTRDPARAM: TStringField;
    cdsAccountUpdKSEI_SID: TStringField;
    cdsAccountUpdRATIO_MRGCALL: TFloatField;
    cdsAccountUpdRATIO_MRGWARING: TFloatField;
    cdsAccountUpdRATIO_FORCESELL: TFloatField;
    cdsAccountUpdFORCESELL_DAY: TIntegerField;
    cdsAccountUpdTL_CASHVALUATE: TFloatField;
    cdsAccountUpdTL_STOCKVALUATE: TFloatField;
    cdsAccountUpdINTERESTCODE: TStringField;
    cdsAccountUpdACCPASSWORD: TStringField;
    cdsAccountUpdCPID: TIntegerField;
    cdsAccountUpdBUS_CAT: TLargeintField;
    cdsAccountUpdINIT_DEPOSIT_FUND: TFloatField;
    cdsAccountUpdINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccountUpdALLOC_TYPE: TStringField;
    cdsAccountUpdTC_BASE: TStringField;
    cdsAccountUpdAUTO_ALLOC: TStringField;
    cdsAccountUpdDT_AUTOAVGPRICE: TStringField;
    cdsAccountUpdqryAccountStockSettleUpd: TDataSetField;
    cdsAccountUpdqryAccountCashSettleUpd: TDataSetField;
    cdsAccountUpdSETTLE_MODE: TStringField;
    cdsAccountUpdNET_SETTLE: TStringField;
    cdsAccountUpdqryAccountInterestUpd: TDataSetField;
    cdsAccountUpdSETTLE_TYPE: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterBUSSTYPE: TcxGridDBBandedColumn;
    gvwMasterTC_MODEL: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterA_CLS_ORDER: TcxGridDBBandedColumn;
    gvwMasterAVGPRICEDEC: TcxGridDBBandedColumn;
    gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterISWAPU: TcxGridDBBandedColumn;
    gvwMasterWAPUVALUE: TcxGridDBBandedColumn;
    gvwMasterISAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterISDEBETINTEREST: TcxGridDBBandedColumn;
    gvwMasterISCREDITINTEREST: TcxGridDBBandedColumn;
    gvwMasterISPENALTY: TcxGridDBBandedColumn;
    gvwMasterISUSEWHT: TcxGridDBBandedColumn;
    gvwMasterISUSEOTC: TcxGridDBBandedColumn;
    gvwMasterISOWNCONTACT: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterOMGUSE: TcxGridDBBandedColumn;
    gvwMasterOMGEXREFFCODE: TcxGridDBBandedColumn;
    gvwMasterOMGALERT: TcxGridDBBandedColumn;
    gvwMasterOMGSENDSSI: TcxGridDBBandedColumn;
    gvwMasterOMGSENDFEEINBLOCK: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTTDESC: TcxGridDBBandedColumn;
    gvwMasterISTRDACCOUNT: TcxGridDBBandedColumn;
    gvwApprovalACCID: TcxGridDBBandedColumn;
    gvwApprovalENTTID: TcxGridDBBandedColumn;
    gvwApprovalACCCODE: TcxGridDBBandedColumn;
    gvwApprovalACCNAME: TcxGridDBBandedColumn;
    gvwApprovalACCTYPE: TcxGridDBBandedColumn;
    gvwApprovalACCSUBTYPE: TcxGridDBBandedColumn;
    gvwApprovalBRANCHID: TcxGridDBBandedColumn;
    gvwApprovalINVTYPE: TcxGridDBBandedColumn;
    gvwApprovalBUSSTYPE: TcxGridDBBandedColumn;
    gvwApprovalTC_MODEL: TcxGridDBBandedColumn;
    gvwApprovalPRDCODE: TcxGridDBBandedColumn;
    gvwApprovalA_CLS_ORDER: TcxGridDBBandedColumn;
    gvwApprovalOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwApprovalSTOCKKEEP: TcxGridDBBandedColumn;
    gvwApprovalISWAPU: TcxGridDBBandedColumn;
    gvwApprovalWAPUVALUE: TcxGridDBBandedColumn;
    gvwApprovalISAVGPRICE: TcxGridDBBandedColumn;
    gvwApprovalISDEBETINTEREST: TcxGridDBBandedColumn;
    gvwApprovalISPENALTY: TcxGridDBBandedColumn;
    gvwApprovalISUSEWHT: TcxGridDBBandedColumn;
    gvwApprovalISUSEOTC: TcxGridDBBandedColumn;
    gvwApprovalISOWNCONTACT: TcxGridDBBandedColumn;
    gvwApprovalACC_STS: TcxGridDBBandedColumn;
    gvwApprovalOMGUSE: TcxGridDBBandedColumn;
    gvwApprovalOMGEXREFFCODE: TcxGridDBBandedColumn;
    gvwApprovalOMGALERT: TcxGridDBBandedColumn;
    gvwApprovalOMGSENDFEEINBLOCK: TcxGridDBBandedColumn;
    gvwApprovalMODDA: TcxGridDBBandedColumn;
    gvwApprovalMODUI: TcxGridDBBandedColumn;
    gvwApprovalAPPDA: TcxGridDBBandedColumn;
    gvwApprovalEDIT4YUI: TcxGridDBBandedColumn;
    gvwApprovalUPDSTS: TcxGridDBBandedColumn;
    gvwApprovalPROCESSNAME: TcxGridDBBandedColumn;
    gvwApprovalNOTES4Y: TcxGridDBBandedColumn;
    gvwApprovalNOTES4YAPP: TcxGridDBBandedColumn;
    gvwApprovalID: TcxGridDBBandedColumn;
    gvwApprovalUPDID: TcxGridDBBandedColumn;
    gvwApprovalENTTCODE: TcxGridDBBandedColumn;
    gvwApprovalENTNAME: TcxGridDBBandedColumn;
    gvwApprovalENTTDESC: TcxGridDBBandedColumn;
    gvwApprovalISTRDACCOUNT: TcxGridDBBandedColumn;
    cdsAccountInterestSAVE_INTERESTTAX: TFloatField;
    cdsAccountInterestSTARTDATE_CALC: TDateField;
    cdsAccountInterestUpdSAVE_INTERESTTAX: TFloatField;
    cdsAccountInterestUpdSTARTDATE_CALC: TDateField;
    cdsGetAccInterestTax: TClientDataSet;
    cdsGetAccInterestTaxINTEREST_TYPENAME: TStringField;
    cdsGetAccInterestTaxALTYPE: TStringField;
    cdsGetAccInterestTaxLOCAL_TAX: TFloatField;
    cdsGetAccInterestTaxFOREIGN_TAX: TFloatField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure cdsAccountInterestUpdINTERESTCODEChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountInterestList: TfrmAccountInterestList;

implementation

{$R *.dfm}

uses FormAccountInterest, DataGlobal, DataLookup;

procedure TfrmAccountInterestList.cdsAccountInterestUpdINTERESTCODEChange(
  Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInterest.Locate('INTERESTCODE', cdsAccountInterestUpdINTERESTCODE.AsString, []) then
    begin
      cdsAccountInterestUpdCCY.AsString := cdsLuInterestCCY.AsString;
      cdsAccountInterestUpdCALCMETHOD.AsString := cdsLuInterestCALCMETHOD.AsString;
      cdsAccountInterestUpdINTERESTRATE.AsFloat := cdsLuInterestINTERESTRATE.AsFloat;
      cdsAccountInterestUpdINTERESTTABLE.AsString := cdsLuInterestINTERESTTABLE.AsString;
      cdsAccountInterestUpdCALCBASIS.AsString := cdsLuInterestCALCBASIS.AsString;
      cdsAccountInterestUpdINTERESTDAY.AsInteger := cdsLuInterestINTERESTDAY.AsInteger;
    end;

    cdsGetAccInterestTax.Close;
    cdsGetAccInterestTax.Params[0].AsString := cdsAccountInterestUpdINTERESTTYPE.AsString;
    cdsGetAccInterestTax.Open;

    cdsAccountInterestUpdSTARTDATE_CALC.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    if cdsAccountListINVTYPE.AsString = 'L' then
      cdsAccountInterestUpdSAVE_INTERESTTAX.AsFloat  := cdsGetAccInterestTaxLOCAL_TAX.AsFloat
    else
      cdsAccountInterestUpdSAVE_INTERESTTAX.AsFloat  := cdsGetAccInterestTaxFOREIGN_TAX.AsFloat;
  end;
end;

procedure TfrmAccountInterestList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccountInterest;
end;

procedure TfrmAccountInterestList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsAccountList.Close;
  cdsAccountList.Params[0].AsSmallInt := 1;
  cdsAccountList.Params[1].AsInteger  := 0;
  cdsAccountList.Params[2].AsString   := dmGlobal.UserID;
  cdsAccountList.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuInterest.Close;
    cdsLuInterest.Open;

    cdsLuInterestType.Close;
    cdsLuInterestType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmAccountInterestList);

end.
