unit FormCashWdrList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, NReportRPC,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter,
  cxGridLevel, cxGridCustomView, cxGrid, NReportClient, XLSSheetData5, XLSReadWriteII5, cxGridChartView,
  cxGridDBChartView, System.StrUtils, System.DateUtils, System.Actions,
  System.ImageList, ComObj, dxDateRanges, cxBarEditItem, cxCheckBox,System.Math,Clipbrd,
  dxScrollbarAnnotations, cxCheckGroup;

type
  TfrmCashWdrList = class(TfrmBrowseData)
    cdsCashWdrList: TNClientDataset;
    cdsCashWdr: TNClientDataset;
    actViewList: TNAction;
    cdsCashWdrACCNAME: TStringField;
    cdsCashWdrCWID: TLargeintField;
    cdsCashWdrCWCODE: TStringField;
    cdsCashWdrCWDATE: TDateField;
    cdsCashWdrACCNO: TStringField;
    cdsCashWdrCWDESC: TStringField;
    cdsCashWdrCCY: TStringField;
    cdsCashWdrCWAMT: TFloatField;
    cdsCashWdrPOSTED: TStringField;
    cdsCashWdrMODDA: TDateTimeField;
    cdsCashWdrMODUI: TStringField;
    cdsCashWdrAPPDA: TDateTimeField;
    cdsCashWdrAPPUI: TStringField;
    cdsCashWdrUNDER4Y: TIntegerField;
    cdsCashWdrUNDER4YDA: TDateTimeField;
    cdsCashWdrNOTES4Y: TStringField;
    cdsCashWdrISDEL: TIntegerField;
    cdsCashWdrID: TLargeintField;
    Posting1: TMenuItem;
    cdsCashWdrACTLED_ACCID: TIntegerField;
    cdsCashWdrACTLED_SEQID: TIntegerField;
    cdsCashWdrSOURCE_ACCBANKID: TIntegerField;
    cdsCashWdrTARGET_ACCBANKID: TIntegerField;
    cdsCashWdrBNCHARGES: TFloatField;
    cdsCashWdrBNCHARGESTYPE: TStringField;
    cdsCashWdrSOURCE_BNCODE: TStringField;
    cdsCashWdrSOURCE_BNACCNO: TStringField;
    cdsCashWdrSOURCE_BNACCNAME: TStringField;
    cdsCashWdrTARGET_BNCODE: TStringField;
    cdsCashWdrTARGET_BNACCNO: TStringField;
    cdsCashWdrTARGET_BNACCNAME: TStringField;
    cdsCashWdrSOURCE_BNBRANCH: TStringField;
    cdsCashWdrTARGET_BNBRANCH: TStringField;
    cdsCashWdrACCID: TIntegerField;
    cdsCashWdrTRANSTYPE: TStringField;
    cdsCashWdrTRANSFER_AMT: TFloatField;
    cdsCashWdrCCY_TMP: TStringField;
    cdsCashPosition: TNClientDataset;
    actUploadWdr: TNAction;
    opDialog: TOpenDialog;
    UploadDataWithdraw1: TMenuItem;
    cdsAccountsByAccNo: TNClientDataset;
    cdsAccountsByAccNoACCID: TIntegerField;
    cdsAccountsByAccNoACCNAME: TStringField;
    cdsAccountsByAccNoACCCODE: TStringField;
    cdsAccountsByAccNoACCBANKID: TIntegerField;
    cdsAccountsByAccNoACCBANKCODE: TStringField;
    actGenerateBankFile: TNAction;
    cdsCashVoucher_H: TNClientDataset;
    cdsCashVoucher_HVOUCHERID: TLargeintField;
    cdsCashVoucher_HVOUCHERNO: TStringField;
    cdsCashVoucher_HVOUCHERTYPE: TStringField;
    cdsCashVoucher_HENTRYDATE: TDateField;
    cdsCashVoucher_HVOUCHERDATE: TDateField;
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
    cdsCashVoucher_HqryCashVoucher_D: TDataSetField;
    cdsCashVoucher_HBANK_REFERENCE: TStringField;
    cdsCashVoucher_HBANK_INSTRUCTION: TStringField;
    cdsCashVoucher_HCCYCODE_FX: TStringField;
    cdsCashVoucher_HCHARGESAMT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsCashWdrBankInstr: TNClientDataset;
    cdsCashWdrBankInstrCWCODE: TStringField;
    cdsCashWdrBankInstrCWDATE: TDateField;
    cdsCashWdrBankInstrACCID: TLargeintField;
    cdsCashWdrBankInstrACCNO: TStringField;
    cdsCashWdrBankInstrACCNAME: TStringField;
    cdsCashWdrBankInstrSOURCE_BNCODE: TStringField;
    cdsCashWdrBankInstrSOURCE_BANKACCNO: TStringField;
    cdsCashWdrBankInstrSOURCE_BANKACCNAME: TStringField;
    cdsCashWdrBankInstrSOURCE_BICODE: TStringField;
    cdsCashWdrBankInstrSOURCE_SWIFT_CODE: TStringField;
    cdsCashWdrBankInstrTARGET_BNCODE: TStringField;
    cdsCashWdrBankInstrTARGET_BANKACCNO: TStringField;
    cdsCashWdrBankInstrTARGET_BANKACCNAME: TStringField;
    cdsCashWdrBankInstrTARGET_BICODE: TStringField;
    cdsCashWdrBankInstrTARGET_SWIFT_CODE: TStringField;
    cdsCashWdrBankInstrREMAKRS: TStringField;
    cdsCashWdrBankInstrBNCHARGES: TFloatField;
    cdsCashWdrBankInstrTRANSFER_AMT: TFloatField;
    cdsCashWdrBankInstrTRANSFERMODE: TStringField;
    cdsCashWdrBankInstrCCY: TStringField;
    SaveFile: TSaveDialog;
    GenerateBankFile1: TMenuItem;
    cdsCashWdrBankInstrFTSERVICE: TStringField;
    cdsCashWdrBankInstrBANKNAME: TStringField;
    N5: TMenuItem;
    ReverseWithdraw1: TMenuItem;
    cdsCashWdrACCSOPID: TLargeintField;
    cdsCashWdrLINKTYPE: TStringField;
    cdsCashWdrLINKID: TLargeintField;
    cdsCashWdrPOSTED_DATE: TDateField;
    cdsCashWdrPOSTED_UI: TStringField;
    cdsCashWdrLINKNO: TStringField;
    cdsCashWdrENTRYDATE: TDateField;
    cdsCashWdrWDR_TYPE: TStringField;
    cdsCashWdrUPLOAD_TIME: TDateTimeField;
    cdsCashWdrCANCEL: TStringField;
    cdsCashWdrCANCEL_DATE: TDateField;
    cdsCashWdrCANCEL_UI: TStringField;
    cdsCashWdrAPPROVED: TStringField;
    cdsCashWdrAPPROVED_DATE: TDateField;
    cdsCashWdrAPPROVED_UI: TStringField;
    Approve2: TMenuItem;
    CancelWithdraw1: TMenuItem;
    N6: TMenuItem;
    actGenerateBankInstructionFile: TNAction;
    cdsBankInstructionList: TNClientDataset;
    cdsBankInstructionListBIID: TLargeintField;
    cdsBankInstructionListBINO: TStringField;
    cdsBankInstructionListBITYPE: TStringField;
    cdsBankInstructionListENTRYDATE: TDateField;
    cdsBankInstructionListVALUEDATE: TDateField;
    cdsBankInstructionListBIDESC: TStringField;
    cdsBankInstructionListBANK_REF: TStringField;
    cdsBankInstructionListTRANS_TYPE: TStringField;
    cdsBankInstructionListLINKID: TLargeintField;
    cdsBankInstructionListLINKNO: TStringField;
    cdsBankInstructionListACCID: TIntegerField;
    cdsBankInstructionListACCCODE: TStringField;
    cdsBankInstructionListACCNAME: TStringField;
    cdsBankInstructionListACCINIT: TStringField;
    cdsBankInstructionListACCTYPE: TStringField;
    cdsBankInstructionListPRDCODE: TStringField;
    cdsBankInstructionListACCBANKID_SOURCE: TIntegerField;
    cdsBankInstructionListBNCODE_SOURCE: TStringField;
    cdsBankInstructionListBNACCNO_SOURCE: TStringField;
    cdsBankInstructionListBNACCNAME_SOURCE: TStringField;
    cdsBankInstructionListBNBRANCH_SOURCE: TStringField;
    cdsBankInstructionListACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionListBNCODE_TARGET: TStringField;
    cdsBankInstructionListBNACCNO_TARGET: TStringField;
    cdsBankInstructionListBNACCNAME_TARGET: TStringField;
    cdsBankInstructionListBNBRANCH_TARGET: TStringField;
    cdsBankInstructionListTRANFER_TYPE: TStringField;
    cdsBankInstructionListCCY: TStringField;
    cdsBankInstructionListAMOUNT: TFloatField;
    cdsBankInstructionListCHARGES: TFloatField;
    cdsBankInstructionListNETAMOUNT: TFloatField;
    cdsBankInstructionListBANK_SOURCE: TStringField;
    dsBankInstructionList: TDataSource;
    popBankInstruction: TPopupMenu;
    GenerateBankInstructionFile1: TMenuItem;
    cdsBankInstructionListBNNAME_SOURCE: TStringField;
    cdsBankInstructionListINITIAL_NAME_SOURCE: TStringField;
    cdsBankInstructionListBICODE_SOURCE: TStringField;
    cdsBankInstructionListBNNAME_TARGET: TStringField;
    cdsBankInstructionListINITIAL_NAME_TARGET: TStringField;
    cdsBankInstructionListBICODE_TARGET: TStringField;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cdsCashPosByAccCcy: TNClientDataset;
    cdsCashPosByAccCcyVALUEDATE: TDateField;
    cdsCashPosByAccCcyACCID: TLargeintField;
    cdsCashPosByAccCcyACCSOPID: TLargeintField;
    cdsCashPosByAccCcyCCY: TStringField;
    cdsCashPosByAccCcyACCNO: TStringField;
    cdsCashPosByAccCcyACCRUED_INTEREST: TFloatField;
    cdsCashPosByAccCcyCASH_ONHAND: TFloatField;
    cdsCashPosByAccCcyCASH_QQ: TFloatField;
    cdsCashPosByAccCcyCASH_SUBACC: TFloatField;
    cdsCashPosByAccCcyCASH_ONHOLD: TFloatField;
    cdsCashPosByAccCcyARAMT: TFloatField;
    cdsCashPosByAccCcyAPAMT: TFloatField;
    cdsCashPosByAccCcyCASH_OUTS: TFloatField;
    cdsCashPosByAccCcyBUY_AMT: TFloatField;
    cdsCashPosByAccCcySELL_AMT: TFloatField;
    cdsCashPosByAccCcyCASH_WDR: TFloatField;
    cdsCashPosByAccCcyMODDA: TDateTimeField;
    cdsCashPosByAccCcyMODUI: TStringField;
    cdsCashPosByAccCcyAPPDA: TDateTimeField;
    cdsCashPosByAccCcyAPPUI: TStringField;
    cdsCashPosByAccCcyUNDER4Y: TIntegerField;
    cdsCashPosByAccCcyUNDER4YDA: TDateTimeField;
    cdsCashPosByAccCcyNOTES4Y: TStringField;
    cdsCashPosByAccCcyISDEL: TIntegerField;
    cdsCashPosByAccCcyID: TLargeintField;
    cdsCashPosByAccCcyCASH_OTHERS: TFloatField;
    cdsLuCompanyBankByBank: TNClientDataset;
    cdsLuCompanyBankByBankBANKID: TIntegerField;
    cdsLuCompanyBankByBankCCYCODE: TStringField;
    cdsLuCompanyBankByBankBNCODE: TStringField;
    cdsLuCompanyBankByBankBANKACCNO: TStringField;
    cdsLuCompanyBankByBankBANKACCNAME: TStringField;
    cdsLuCompanyBankByBankBANKBRANCH: TStringField;
    cdsLuCompanyBankByBankBANKTYPE: TStringField;
    cdsLuCompanyBankByBankSTAT: TStringField;
    cdsLuCompanyBankByBankBNNAME: TStringField;
    cdsTargetBankAccountWdr: TNClientDataset;
    cdsTargetBankAccountWdrBNCODE: TStringField;
    cdsTargetBankAccountWdrACCBANKID: TIntegerField;
    cdsTargetBankAccountWdrACCBANKCODE: TStringField;
    cdsTargetBankAccountWdrBANKACCNAME: TStringField;
    cdsTargetBankAccountWdrBANKACCNO: TStringField;
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
    cdsBankInstructionBANKTYPE_SOURCE: TStringField;
    cdsBankInstructionCCYCODE_SOURCE: TStringField;
    cdsBankInstructionBANKTYPE_TARGET: TStringField;
    cdsBankInstructionCCYCODE_TARGET: TStringField;
    cdsBankInstructionByCWID: TNClientDataset;
    cdsBankInstructionByCWIDBIID: TLargeintField;
    cdsBankInstructionByCWIDBINO: TStringField;
    cdsBankInstructionByCWIDBITYPE: TStringField;
    cdsBankInstructionByCWIDENTRYDATE: TDateField;
    cdsBankInstructionByCWIDVALUEDATE: TDateField;
    cdsBankInstructionByCWIDBIDESC: TStringField;
    cdsBankInstructionByCWIDBANK_REF: TStringField;
    cdsBankInstructionByCWIDTRANS_TYPE: TStringField;
    cdsBankInstructionByCWIDLINKID: TLargeintField;
    cdsBankInstructionByCWIDLINKNO: TStringField;
    cdsBankInstructionByCWIDSTAT: TStringField;
    cdsBankInstructionByCWIDACCID: TIntegerField;
    cdsBankInstructionByCWIDBANKTYPE_SOURCE: TStringField;
    cdsBankInstructionByCWIDACCBANKID_SOURCE: TIntegerField;
    cdsBankInstructionByCWIDBNCODE_SOURCE: TStringField;
    cdsBankInstructionByCWIDBNACCNO_SOURCE: TStringField;
    cdsBankInstructionByCWIDBNACCNAME_SOURCE: TStringField;
    cdsBankInstructionByCWIDBNBRANCH_SOURCE: TStringField;
    cdsBankInstructionByCWIDCCYCODE_SOURCE: TStringField;
    cdsBankInstructionByCWIDBANKTYPE_TARGET: TStringField;
    cdsBankInstructionByCWIDACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionByCWIDBNCODE_TARGET: TStringField;
    cdsBankInstructionByCWIDBNACCNO_TARGET: TStringField;
    cdsBankInstructionByCWIDBNACCNAME_TARGET: TStringField;
    cdsBankInstructionByCWIDBNBRANCH_TARGET: TStringField;
    cdsBankInstructionByCWIDCCYCODE_TARGET: TStringField;
    cdsBankInstructionByCWIDTRANFER_TYPE: TStringField;
    cdsBankInstructionByCWIDCCY: TStringField;
    cdsBankInstructionByCWIDAMOUNT: TFloatField;
    cdsBankInstructionByCWIDCHARGES: TFloatField;
    cdsBankInstructionByCWIDNETAMOUNT: TFloatField;
    cdsBankInstructionByCWIDMODDA: TDateTimeField;
    cdsBankInstructionByCWIDMODUI: TStringField;
    cdsBankInstructionByCWIDAPPDA: TDateTimeField;
    cdsBankInstructionByCWIDAPPUI: TStringField;
    cdsBankInstructionByCWIDUNDER4Y: TIntegerField;
    cdsBankInstructionByCWIDUNDER4YDA: TDateTimeField;
    cdsBankInstructionByCWIDNOTES4Y: TStringField;
    cdsBankInstructionByCWIDISDEL: TIntegerField;
    cdsBankInstructionByCWIDID: TLargeintField;
    cdsBankInstructionByCWIDFILE_CREATED: TStringField;
    dtStart: TcxBarEditItem;
    cdsUploadCashWithdraw: TClientDataSet;
    cdsCashWdrOCW_ID: TLargeintField;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    cdsCashPositionBranchID: TIntegerField;
    cdsCashPositionBranchCode: TStringField;
    cdsCashPositionBranchName: TStringField;
    cdsCashPositionSalesID: TIntegerField;
    cdsCashPositionSalesCode: TStringField;
    cdsCashPositionSalesName: TStringField;
    cdsCashPositionACCID: TLargeintField;
    cdsCashPositionACCNO: TStringField;
    cdsCashPositionACCNAME: TStringField;
    cdsCashPositionAccInit: TStringField;
    cdsCashPositionCCY: TStringField;
    cdsCashPositionCashOnHand: TFloatField;
    cdsCashPositionCashOnHold: TFloatField;
    cdsCashPositionARAmt: TFloatField;
    cdsCashPositionApAmt: TFloatField;
    cdsCashPositionNetARAP: TFloatField;
    cdsCashPositionCashPosition: TFloatField;
    cdsCashPositionSAVEKEEP: TStringField;
    cdsCashPositionBuyAmount: TFloatField;
    cdsCashPositionAvCashAmount: TFloatField;
    cdsCashPositionCASHOUTS: TFloatField;
    cdsCashPositionCASH_QQ: TFloatField;
    cdsCashPositionCASH_SUBACC: TFloatField;
    cdsCashPositionACCRUED_INTEREST: TFloatField;
    cdsCashPositionBankCode: TStringField;
    cdsCashPositionBankName: TStringField;
    cdsCashPositionBankAccountNo: TStringField;
    cdsCashPositionBankAccountName: TStringField;
    dtEnd: TcxBarEditItem;
    cdsGetAccWdr: TNClientDataset;
    cdsGetAccWdrACCID: TLargeintField;
    cdsGetAccWdrACCNO: TStringField;
    cdsGetAccWdrCASHAVAIL: TFloatField;
    cdsGetAccWdrRDN_BNCODE: TStringField;
    cdsGetAccWdrRDN_ACCNO: TStringField;
    cdsGetAccWdrRDN_BNACCNAME: TStringField;
    cdsGetAccWdrPRV_BNCODE: TStringField;
    cdsGetAccWdrPRV_ACCNO: TStringField;
    cdsGetAccWdrPRV_BNACCNAME: TStringField;
    cdsGetAccWdrACCNAME: TStringField;
    cdsGetAccWdrRDN_BANKID: TIntegerField;
    cdsGetAccWdrPRV_BANKID: TIntegerField;
    cdsCashWdr_Tmp: TNClientDataset;
    cdsCashWdr_TmpCWID: TLargeintField;
    cdsCashWdr_TmpCWCODE: TStringField;
    cdsCashWdr_TmpCWDATE: TDateField;
    cdsCashWdr_TmpCWDESC: TStringField;
    cdsCashWdr_TmpACCSOPID: TLargeintField;
    cdsCashWdr_TmpACCID: TIntegerField;
    cdsCashWdr_TmpACCNO: TStringField;
    cdsCashWdr_TmpACTLED_ACCID: TIntegerField;
    cdsCashWdr_TmpACTLED_SEQID: TIntegerField;
    cdsCashWdr_TmpSOURCE_ACCBANKID: TIntegerField;
    cdsCashWdr_TmpTARGET_ACCBANKID: TIntegerField;
    cdsCashWdr_TmpCCY: TStringField;
    cdsCashWdr_TmpCWAMT: TFloatField;
    cdsCashWdr_TmpTRANSTYPE: TStringField;
    cdsCashWdr_TmpBNCHARGES: TFloatField;
    cdsCashWdr_TmpBNCHARGESTYPE: TStringField;
    cdsCashWdr_TmpTRANSFER_AMT: TFloatField;
    cdsCashWdr_TmpLINKTYPE: TStringField;
    cdsCashWdr_TmpLINKID: TLargeintField;
    cdsCashWdr_TmpPOSTED: TStringField;
    cdsCashWdr_TmpPOSTED_DATE: TDateField;
    cdsCashWdr_TmpPOSTED_UI: TStringField;
    cdsCashWdr_TmpLINKNO: TStringField;
    cdsCashWdr_TmpENTRYDATE: TDateField;
    cdsCashWdr_TmpWDR_TYPE: TStringField;
    cdsCashWdr_TmpUPLOAD_TIME: TDateTimeField;
    cdsCashWdr_TmpCANCEL: TStringField;
    cdsCashWdr_TmpCANCEL_DATE: TDateField;
    cdsCashWdr_TmpCANCEL_UI: TStringField;
    cdsCashWdr_TmpAPPROVED: TStringField;
    cdsCashWdr_TmpAPPROVED_DATE: TDateField;
    cdsCashWdr_TmpAPPROVED_UI: TStringField;
    cdsCashWdr_TmpMODDA: TDateTimeField;
    cdsCashWdr_TmpMODUI: TStringField;
    cdsCashWdr_TmpAPPDA: TDateTimeField;
    cdsCashWdr_TmpAPPUI: TStringField;
    cdsCashWdr_TmpUNDER4Y: TIntegerField;
    cdsCashWdr_TmpUNDER4YDA: TDateTimeField;
    cdsCashWdr_TmpNOTES4Y: TStringField;
    cdsCashWdr_TmpISDEL: TIntegerField;
    cdsCashWdr_TmpID: TLargeintField;
    cdsCashWdr_TmpFULLFLOW: TBooleanField;
    cdsCashWdr_TmpFFCVID: TLargeintField;
    cdsCashWdr_TmpOCW_ID: TLargeintField;
    cdsCashWdr_TmpREVERSED: TStringField;
    cdsCashWdr_TmpREVERSED_DATE: TDateTimeField;
    cdsCashWdr_TmpREVERSED_UI: TStringField;
    cdsCashWdr_TmpPOSTED_TIME: TDateTimeField;
    cdsCashWdr_TmpCANCEL_TIME: TDateTimeField;
    cdsCashWdr_TmpREVERSED_TIME: TDateTimeField;
    cdsGetAccWdrRDN_BANKBRANCH: TStringField;
    cdsGetAccWdrRDN_CCY: TStringField;
    cdsGetAccWdrPRV_BANKBRANCH: TStringField;
    cdsGetAccWdrPRV_CCY: TStringField;
    cdsUploadCashWithdrawROWNO: TIntegerField;
    cdsUploadCashWithdrawTRANS_DATE: TDateField;
    cdsUploadCashWithdrawACCNO: TStringField;
    cdsUploadCashWithdrawACCNAME: TStringField;
    cdsUploadCashWithdrawPRIV_BANK_ACCNO: TStringField;
    cdsUploadCashWithdrawAMOUNT: TFloatField;
    cdsUploadCashWithdrawBANK_CHARGE: TFloatField;
    cdsUploadCashWithdrawDESCRIPTION: TStringField;
    actUploadCashWdr: TNAction;
    chStatus: TcxBarEditItem;
    btnCheckAll: TdxBarButton;
    chUncheckAll: TdxBarButton;
    cdsCashWdrListCWID: TLargeintField;
    cdsCashWdrListCWCODE: TStringField;
    cdsCashWdrListCWDATE: TDateField;
    cdsCashWdrListCWDESC: TStringField;
    cdsCashWdrListACCID: TIntegerField;
    cdsCashWdrListACCCODE: TStringField;
    cdsCashWdrListACCNAME: TStringField;
    cdsCashWdrListSOURCE_ACCBANKID: TLargeintField;
    cdsCashWdrListsourceBankCode: TStringField;
    cdsCashWdrListsourceBankAccNo: TStringField;
    cdsCashWdrListsourceBankAccName: TStringField;
    cdsCashWdrListTARGET_ACCBANKID: TLargeintField;
    cdsCashWdrListtargetBankCode: TStringField;
    cdsCashWdrListtargetBankAccNo: TStringField;
    cdsCashWdrListtargetBankAccName: TStringField;
    cdsCashWdrListCCY: TStringField;
    cdsCashWdrListCWAMT: TFloatField;
    cdsCashWdrListwdrType: TStringField;
    cdsCashWdrListBNCHARGES: TFloatField;
    cdsCashWdrListBNCHARGESTYPE: TStringField;
    cdsCashWdrListTRANSFER_AMT: TFloatField;
    cdsCashWdrListENTRY_DATE: TDateTimeField;
    cdsCashWdrListENTRY_SYSDATE: TDateTimeField;
    cdsCashWdrListENTRY_UI: TStringField;
    cdsCashWdrListAPPROVED_DATE: TDateTimeField;
    cdsCashWdrListAPPROVED_SYSDATE: TDateTimeField;
    cdsCashWdrListAPPROVED_UI: TStringField;
    cdsCashWdrListPOSTED_DATE: TDateTimeField;
    cdsCashWdrListPOSTED_SYSDATE: TDateTimeField;
    cdsCashWdrListPOSTED_UI: TStringField;
    cdsCashWdrListREVERSED_DATE: TDateTimeField;
    cdsCashWdrListREVERSED_SYSDATE: TDateTimeField;
    cdsCashWdrListREVERSED_UI: TStringField;
    cdsCashWdrListCANCELED_DATE: TDateTimeField;
    cdsCashWdrListCANCELED_SYSDATE: TDateTimeField;
    cdsCashWdrListCANCELED_UI: TStringField;
    gvwMasterCWID: TcxGridDBBandedColumn;
    gvwMasterCWCODE: TcxGridDBBandedColumn;
    gvwMasterCWDATE: TcxGridDBBandedColumn;
    gvwMasterCWDESC: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKID: TcxGridDBBandedColumn;
    gvwMastersourceBankCode: TcxGridDBBandedColumn;
    gvwMastersourceBankAccNo: TcxGridDBBandedColumn;
    gvwMastersourceBankAccName: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKID: TcxGridDBBandedColumn;
    gvwMastertargetBankCode: TcxGridDBBandedColumn;
    gvwMastertargetBankAccNo: TcxGridDBBandedColumn;
    gvwMastertargetBankAccName: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCWAMT: TcxGridDBBandedColumn;
    gvwMasterwdrType: TcxGridDBBandedColumn;
    gvwMasterBNCHARGES: TcxGridDBBandedColumn;
    gvwMasterBNCHARGESTYPE: TcxGridDBBandedColumn;
    gvwMasterTRANSFER_AMT: TcxGridDBBandedColumn;
    gvwMasterENTRY_DATE: TcxGridDBBandedColumn;
    gvwMasterENTRY_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterENTRY_UI: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_UI: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELED_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_UI: TcxGridDBBandedColumn;
    actCashWithdrawApprove: TNAction;
    actCashWithdrawPost: TNAction;
    actCashWithdrawCancel: TNAction;
    actCashWithdrawReverse: TNAction;
    dxBarButton3: TdxBarButton;
    actCashWdrRDN: TNAction;
    actCashWdrQQ: TNAction;
    actCashWdrCBest: TNAction;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    CashWithdrawQQ1: TMenuItem;
    CashWithdrawSubRekCBest1: TMenuItem;
    dxBarButton6: TdxBarButton;
    CashWithdrawRDN1: TMenuItem;
    cdsCashWdrListSTAT: TStringField;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    cdsCashWdrListFUNDTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsCashWdrListLEDGERTRANSID: TLargeintField;
    procedure cdsCashWdrACCIDChange(Sender: TField);
    procedure cdsCashWdrSOURCE_ACCBANKIDChange(Sender: TField);
    procedure DataContainerBeforePost(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure DataContainerAfterOpenEditorDataset(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure actUploadWdrExecute(Sender: TObject);
    procedure actGenerateBankInstructionFileExecute(Sender: TObject);
    procedure gvwBankChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cdsCashWdrListAfterOpen(DataSet: TDataSet);
    procedure cdsCashWdrListAfterRefresh(DataSet: TDataSet);
    procedure cdsCashWdrBeforePost(DataSet: TDataSet);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
    procedure actUploadCashWdrExecute(Sender: TObject);
    procedure btnCheckAllClick(Sender: TObject);
    procedure chUncheckAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCashWithdrawApproveExecute(Sender: TObject);
    procedure actCashWithdrawPostExecute(Sender: TObject);
    procedure actCashWithdrawCancelExecute(Sender: TObject);
    procedure actCashWithdrawReverseExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actCashWdrRDNExecute(Sender: TObject);
    procedure actCashWdrQQExecute(Sender: TObject);
    procedure actCashWdrCBestExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    FTransDate: TDate;
    FBrokerAccount: Integer;

    procedure GenerateBankFile(ABankName: string);
    function GetValue(ARowIndex: integer; AValueIndex: Integer): string;
  public
    { Public declarations }
  end;

var
  frmCashWdrList: TfrmCashWdrList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormBankRefference, FormCashDepList,
  FormProgressBar, ClassGeneral, ClassClientConst, FormCashWithdraw,
  FormViewTransaction;

procedure TfrmCashWdrList.actCashWdrCBestExecute(Sender: TObject);
begin
  inherited;
  dmGlobal.CashWithdrawType := 'S';
  actNew.Execute;

  if not (cdsCashWdrList.Active) then
    actRefresh.Execute
  else
    cdsCashWdrList.Refresh;
end;

procedure TfrmCashWdrList.actCashWdrQQExecute(Sender: TObject);
begin
  inherited;
  dmGlobal.CashWithdrawType := 'Q';
  actNew.Execute;

  if not (cdsCashWdrList.Active) then
    actRefresh.Execute
  else
    cdsCashWdrList.Refresh;
end;

procedure TfrmCashWdrList.actCashWdrRDNExecute(Sender: TObject);
begin
  inherited;
  dmGlobal.CashWithdrawType := 'R';
  actNew.Execute;

  if not (cdsCashWdrList.Active) then
    actRefresh.Execute
  else
    cdsCashWdrList.Refresh;
end;

procedure TfrmCashWdrList.actCashWithdrawApproveExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCWID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash withdraw approve !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash withdraw approve ?') then
    begin
      dmGlobal.RemoteServer.CashWithdrawApproved(cdsCashWdrListCWID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash withdraw approve ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCWID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCWID.Index];

          if dmGlobal.RemoteServer.CashWithdrawApproved(iCWID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash withdraw approve has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully approved and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashWdrList.Refresh;
end;

procedure TfrmCashWdrList.actCashWithdrawCancelExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCWID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash withdraw cancel !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash withdraw cancel ?') then
    begin
      dmGlobal.RemoteServer.CashWithdrawCancel(cdsCashWdrListCWID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash withdraw cancel ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCWID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCWID.Index];

          if dmGlobal.RemoteServer.CashWithdrawCancel(iCWID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash withdraw cancel has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully canceled and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashWdrList.Refresh;
end;

procedure TfrmCashWdrList.actCashWithdrawPostExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCWID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash withdraw post !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash withdraw post ?') then
    begin
      dmGlobal.RemoteServer.CashWithdrawPosting(cdsCashWdrListCWID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash withdraw post ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCWID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCWID.Index];

          if dmGlobal.RemoteServer.CashWithdrawPosting(iCWID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash withdraw post has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully post and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashWdrList.Refresh;
end;

procedure TfrmCashWdrList.actCashWithdrawReverseExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCWID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash withdraw reverse !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash withdraw reverse ?') then
    begin
      dmGlobal.RemoteServer.CashWithdrawReverse(cdsCashWdrListCWID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash withdraw reverse ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCWID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCWID.Index];

          if dmGlobal.RemoteServer.CashWithdrawReverse(iCWID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash withdraw reverse has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully approved and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashWdrList.Refresh;
end;

procedure TfrmCashWdrList.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
begin
  inherited;
  LView := TcxGridDBBandedTableView(grdMaster.FocusedView);

  If Assigned(LView) Then
  begin
    Clipboard.Clear;
    sValues := '';

    if LView.OptionsSelection.CellMultiSelect then
    begin
      for iRow := 0 to Pred(LView.Controller.SelectedRecordCount) do
      begin
        for iCol := 0 to Pred(LView.Controller.SelectedColumnCount) do
        begin
          if iRow = 0 then
          begin
            if sHeader = '' then sHeader := LView.Controller.SelectedColumns[iCol].Caption + #9
            else sHeader := sHeader + LView.Controller.SelectedColumns[iCol].Caption + #9;
          end;

          if sValues = '' then
            sValues := VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) + #9
          else
            sValues := sValues + VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) +#9;
        end;
        sValues := sValues + sLineBreak ;
      end;
    end;
    Clipboard.AsText := sHeader + sLineBreak + sValues;
  end;

end;

procedure TfrmCashWdrList.actGenerateBankInstructionFileExecute(
  Sender: TObject);
var
  oProgress: TfrmProgressBar;
  i, j, n: Integer;
  oList: TStringList;
  oBankInstruction: TBankInstruction;
  sBank, sDir, sExt, sFolderName, sFileName, sTransferType, sBrokerCode, sFutureTransfer: String;
  dtValue, dtSystem: TDate;
begin
  inherited;
  if (cdsBankInstructionList.IsEmpty) or (not cdsBankInstructionList.Active) then
    Exit;

  oList := TStringList.Create;
  oProgress := TfrmProgressBar.Create(Nil);
  Try
    i := 0;
    n := cdsBankInstructionList.RecordCount;
    dtSystem := FTransDate;
    sBrokerCode := dmGlobal.RemoteServer.GetBrokerCode;

    oProgress.Show;
    oProgress.ChangeBar(0, 'Generate Bank Instruction File');

    cdsBankInstructionList.First;
    while not cdsBankInstructionList.Eof do
    begin
      oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Bank Instruction '
        + QuotedStr(cdsBankInstructionListBINO.AsString));

      if (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BNGA')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMRI')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BM')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'SCB') then
      begin
        //Ini khusus dibuat untuk kebutuhan CIMB Multi Source
        sBank := cdsBankInstructionListBNCODE_SOURCE.AsString + '_' + FormatDateTime('ddMMyyyy', dtSystem);
      end
      else
      begin
        sBank := cdsBankInstructionListBNCODE_SOURCE.AsString + cdsBankInstructionListBNACCNO_SOURCE.AsString;
      end;

      j := oList.IndexOf(sBank);
      if j = -1 then
      begin
        dtValue := cdsBankInstructionListVALUEDATE.AsDateTime;
        if dtValue < dtSystem then
          dtValue := dtSystem;

        oBankInstruction := TBankInstruction.Create;
        oBankInstruction.BankCode := cdsBankInstructionListBNCODE_SOURCE.AsString;
        oBankInstruction.BankAccNo := cdsBankInstructionListBNACCNO_SOURCE.AsString;
        oBankInstruction.BankAccName := cdsBankInstructionListBNACCNAME_SOURCE.AsString;
        oBankInstruction.Ccy := cdsBankInstructionListCCY.AsString;
        oBankInstruction.ValueDate := dtValue;

        oList.AddObject(sBank, oBankInstruction);
      end
      else
      begin
        oBankInstruction := TBankInstruction(oList.Objects[j]);
      end;

      oBankInstruction.Nominal := oBankInstruction.Nominal + cdsBankInstructionListNETAMOUNT.AsFloat;

      //Bank Mandiri
      if (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMRI')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BM') then
      begin
        //Ini Instruksi Untuk Single Source, biasa dipake oleh Bahana
        if sBrokerCode = 'DX' then
        begin
          oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_TARGET.AsString + ','
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ',,,,'
            + cdsBankInstructionListCCY.AsString + ','
            + cdsBankInstructionListNETAMOUNT.AsString + ','
            + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ','
            + cdsBankInstructionListBINO.AsString + ',IBU,,Mandiri,,,,,N,Email,,,,,,,,,,,,,,,,,,,,,,,'
            + cdsBankInstructionListBINO.AsString);
        end
        //Ini Instruksi Untuk Multi Source, biasa dipake CIMB
        else
        begin
          if cdsBankInstructionListVALUEDATE.AsDateTime > dtSystem then
            sFutureTransfer := '2'
          else
            sFutureTransfer := '1';

          oBankInstruction.Instruction.Add('M;' + sFutureTransfer + ';'
            + FormatDateTime('yyyyMMdd', cdsBankInstructionListVALUEDATE.AsDateTime)
            + ';1;;;;'
            + cdsBankInstructionListBNACCNO_SOURCE.AsString + ';'
            + cdsBankInstructionListBNACCNO_TARGET.AsString + ';'
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ';;;;'
            + cdsBankInstructionListCCY.AsString + ';'
            + cdsBankInstructionListNETAMOUNT.AsString + ';;N;;'
            + LeftStr(cdsBankInstructionListBIDESC.AsString, 20) + ';'
            + LeftStr(dmGlobal.BankDefDesc + cdsBankInstructionListBIID.AsString, 16)
            + ';IBU;;BANK MANDIRI;;;;INDONESIA;N;;;N;N;N;;;;;;;;;;;;;;;;;OUR;SPI;;;;;;;;;;;;;;;;;;;;;E;');
          oBankInstruction.Instruction.Add('');
          oBankInstruction.Instruction.Add(';');
        end;
      end
      //Bank CIMB Niaga
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BNGA' then
      begin
        //Ini Instruksi Untuk Single Source, biasa dipake oleh Bahana
        if sBrokerCode = 'DX' then
        begin
          oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_TARGET.AsString + ','
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
            + cdsBankInstructionListCCY.AsString + ','
            + cdsBankInstructionListNETAMOUNT.AsString + ','
            + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ','
            + 'finance@cimb.co.id');
        end
        //Ini Instruksi Untuk Multi Source, biasa dipake CIMB
        else
        begin
          oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_SOURCE.AsString + ','
            + cdsBankInstructionListBNACCNO_TARGET.AsString + ','
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
            + cdsBankInstructionListNETAMOUNT.AsString + ','
            + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ','
            + 'CIMB,BANK CIMB NIAGA');
        end;
      end
      //Bank BCA
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BCA' then
      begin
        oBankInstruction.Instruction.Add('1|' + IntToStr(oBankInstruction.Instruction.Count + 1) + '|'
          + cdsBankInstructionListBINO.AsString + '|'
          + cdsBankInstructionListBNACCNO_SOURCE.AsString + '|'
          + cdsBankInstructionListBNACCNO_TARGET.AsString + '|'
          + cdsBankInstructionListNETAMOUNT.AsString + '|||014||'
          + cdsBankInstructionListBNBRANCH_TARGET.AsString + '|'
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + '|||||');
      end
      //Bank Permata
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BNLI' then
      begin
        oBankInstruction.Instruction.Add('PermataBank,0,Jakarta,'
          + cdsBankInstructionListBICODE_TARGET.AsString + ','
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
          + cdsBankInstructionListBNACCNO_TARGET.AsString + ','
          + cdsBankInstructionListCCY.AsString + ','
          + FormatFloat('#.00', cdsBankInstructionListNETAMOUNT.AsFloat) + ','
          + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ',0,,ovb,1,1,Bursa Efek Indonesia,'
          + cdsBankInstructionListBINO.AsString + ',0,'
          + cdsBankInstructionListBNACCNO_SOURCE.AsString);
      end
      //Bank BNI
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BBNI' then
      begin
        oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_TARGET.AsString + ',"'
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + '",'
          + cdsBankInstructionListNETAMOUNT.AsString + ','
          + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString
          + ',,,,,,,,,,,,,Y,bsfinance@cimb.co.id,,N');
      end
      //Bank Standard Chartered
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'SCB' then
      begin
        oBankInstruction.Instruction.Add(IntToStr(oBankInstruction.Instruction.Count + 1) + ',P,'
          + cdsBankInstructionListBNACCNO_SOURCE.AsString + ','
          + cdsBankInstructionListBNACCNAME_SOURCE.AsString + ','
          + cdsBankInstructionListCCY.AsString + ',"'
          + cdsBankInstructionListNETAMOUNT.AsString + '",'
          + cdsBankInstructionListBIDESC.AsString + ',ACH,'
          + cdsBankInstructionListBINO.AsString + ','
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
          + cdsBankInstructionListBNACCNO_TARGET.AsString + ',ID,JKT,'
          + cdsBankInstructionListBICODE_TARGET.AsString);
      end;

      i := i + 1;
      cdsBankInstructionList.Next;
    end;

    //Save File to Bank Inteerface Directory
    oProgress.ChangeBarCaption('Saving Bank Instruction File');
    sDir := dmGlobal.FITSBankInterfaceDir;

    if DirectoryExists(sDir) then
    begin
      while oList.Count > 0 do
      begin
        oBankInstruction := TBankInstruction(oList.Objects[0]);

        sFolderName := sDir + oBankInstruction.BankCode + '\';
        if not DirectoryExists(sFolderName) then
          CreateDir(sFolderName);

        if (oBankInstruction.BankCode = 'BMRI') or (oBankInstruction.BankCode = 'BM') then
        begin
          sExt := '.txt';
          if sBrokerCode = 'DX' then
          begin
            oBankInstruction.Instruction.Insert(0, 'P,'
              + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + ','
              + oBankInstruction.BankAccNo + ','
              + IntToStr(oBankInstruction.Instruction.Count) + ','
              + FloatToStr(oBankInstruction.Nominal) + ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
          end;
        end
        else if (oBankInstruction.BankCode = 'BNGA') then
        begin
          sExt := '.csv';
          //Ini Instruksi Untuk Single Source, biasa dipake oleh Bahana
          if sBrokerCode = 'DX' then
          begin
            oBankInstruction.Instruction.Insert(0, oBankInstruction.BankAccNo + ','
              + oBankInstruction.BankAccName + ','
              + oBankInstruction.Ccy + ','
              + FloatToStr(oBankInstruction.Nominal) + ',CIMB 1,'
              + IntToStr(oBankInstruction.Instruction.Count) + ','
              + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + ',finance@cimb.co.id');
          end;
        end
        else if (oBankInstruction.BankCode = 'BCA') then
        begin
          sExt := '.txt';
          sTransferType := 'BCA';
          oBankInstruction.Instruction.Insert(0, '0|FT|'
            + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + '_'
            + IntToStr(oBankInstruction.Instruction.Count) + '||P|'
            + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + '||'
            + FormatCurr('#.00', oBankInstruction.Nominal) + '|'
            + IntToStr(oBankInstruction.Instruction.Count) + '|BCA|'
            + oBankInstruction.Ccy + '|');
        end
        else if (oBankInstruction.BankCode = 'BBNI') then
        begin
          sExt := '.csv';
          oBankInstruction.Instruction.Insert(0, FormatDateTime('dd/mm/yyyy hh:nn', oBankInstruction.ValueDate) + ','
            + IntToStr(oBankInstruction.Instruction.Count + 2) + ',Payment,,,,,,,,,,,,,,,,,');


          oBankInstruction.Instruction.Insert(1, 'P,' + FormatDateTime('yyyymmdd', oBankInstruction.ValueDate) + ','
            + oBankInstruction.BankAccNo + ','
            + IntToStr(oBankInstruction.Instruction.Count) + ','
            + FloatToStr(oBankInstruction.Nominal) + ',,,,,,,,,,,,,,,');
        end
        else if (oBankInstruction.BankCode = 'SCB') then
        begin
          sExt := '.csv';
          oBankInstruction.Instruction.Insert(0, 'No,TYPE,DEBIT AC,NAME,CCY,AMOUNT,DESCRIPTION,PAY-TYPE,REF NO,BENEFICIARY NAME,PAYEE A/C,COUNTRY,CITY,BANK CODE');
          oBankInstruction.Instruction.Add('TOTAL,,,,,"'
            + FloatToStr(oBankInstruction.Nominal) + '",,,,,,,,');
        end;

        if (oBankInstruction.BankCode = 'BNGA')
          or (oBankInstruction.BankCode = 'BM')
          or (oBankInstruction.BankCode = 'BMRI')
          or (oBankInstruction.BankCode = 'SCB') then
        begin
          //Ini khusus dibuat untuk kebutuhan CIMB
          sFileName := sFolderName + oBankInstruction.BankCode + '_' + FormatDateTime('YYYYMMDD', dtSystem) + sExt;
        end
        else
        begin
          sFileName := sFolderName + oBankInstruction.BankAccNo + '_' + FormatDateTime('YYYYMMDD', dtSystem) + sExt;
        end;

        oBankInstruction.Instruction.SaveToFile(sFileName);

        if oBankInstruction.BankCode = 'BCA' then
          dmGlobal.GenerateBCAChecksum(sFileName, sTransferType);

        //Free List Object
        oList.Delete(0);
        FreeAndNil(oBankInstruction);
      end;

    end
    else
      MessageDlg(sDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);

  Finally
    FreeAndNil(oProgress);
    FreeAndNil(oList);
  End;

  ShowMessage('Please Check Bank Instruction File in Directory ' + QuotedStr(sDir));
end;

procedure TfrmCashWdrList.actRefreshExecute(Sender: TObject);
var
  sTempStatus, sStatus: string;
begin
//  inherited;
  sTempStatus := chStatus.EditValue;
  sStatus     := '';

  // Status : Created
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '1';
  end;

  // Status : Approved
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '5';
  end;

  // Status : Posted
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '2';
  end;

  // Status : Reversed
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '3';
  end;

  // Status : Canceled
  if copy(sTempStatus, 5, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '4';
  end;

  cdsCashWdrList.Close;
  cdsCashWdrList.Params[0].AsDate   := VarToDateTime(dtStart.EditValue);
  cdsCashWdrList.Params[1].AsDate   := VarToDateTime(dtEnd.EditValue);
  cdsCashWdrList.Params[2].AsString := sStatus;
  cdsCashWdrList.Open;
end;

procedure TfrmCashWdrList.actUploadCashWdrExecute(Sender: TObject);
var
  sFileName, sAccNo: string;
  oExcel, oSheet: OleVariant;
  i, iRowNo: integer;
  iCols, iRows: Integer;
  oProgress: TfrmProgressBar;
  sMsg: string;
begin
  inherited;
  if opDialog.Execute then
    sFileName := opDialog.FileName;

  if sFileName = '' then
    Exit;

  try
    dmGlobal.RemoteServer.EmptyTable('upload.CashUpload', sMsg);

    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Open(sFileName);

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    iCols  := oSheet.Usedrange.Columns.Count;
    iRows  := oSheet.Usedrange.Rows.Count;

    oProgress := TfrmProgressBar.Create(Nil);
    iRowNo    := 0;

    cdsUploadCashWithdraw.Close;
    cdsUploadCashWithdraw.Open;

    oProgress.Show;
    oProgress.ChangeBarCaption('Uploading cash withdraw');
    for i := 2 to iRows do
    begin
      sAccNo := oSheet.Cells[i, 2].Value;
      iRowNo := iRowNo + 1;
      oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing cash withdraw ' + sAccNo);

      cdsUploadCashWithdraw.append;
      cdsUploadCashWithdrawROWNO.AsInteger          := iRowNo;
      cdsUploadCashWithdrawTRANS_DATE.AsDateTime    := oSheet.Cells[i, 1].Value;
      cdsUploadCashWithdrawACCNO.AsString           := sAccNo;
      cdsUploadCashWithdrawACCNAME.AsString         := oSheet.Cells[i, 3].Value;
      cdsUploadCashWithdrawPRIV_BANK_ACCNO.AsString := oSheet.Cells[i, 4].Value;
      cdsUploadCashWithdrawAMOUNT.AsFloat           := oSheet.Cells[i, 5].Value;
      cdsUploadCashWithdrawBANK_CHARGE.AsFloat      := oSheet.Cells[i, 6].Value;
      cdsUploadCashWithdrawDESCRIPTION.AsString     := oSheet.Cells[i, 7].Value;
      cdsUploadCashWithdraw.Post;
    end;
  finally
    oProgress.ChangeBarCaption('Saving data into database');
    cdsUploadCashWithdraw.ApplyUpdates(-1);

    dmGlobal.RemoteServer.CopyCashWdrFromUpload;
    FreeAndNil(oProgress);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    MessageDlg(IntToStr(iRowNo) + ' data successfully uploaded', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCashWdrList.actUploadWdrExecute(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName: string;
  i, sSeqID, sSeqNoID,
  iBankInsID, iBankInsNoID: Integer;
  iCols, iRows: Integer;
  iError, iSuccess: Integer;
  sMsg, sMessage,sAmount: string;
  oPros,oCheckDate : Boolean;
  oProgress: TfrmProgressBar;
  sBankInsNo: string;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;
  sMsg     := '';

  if opDialog.Execute(Application.Handle) then
    sFileName := opDialog.FileName;

  if sFileName <> '' then
  begin
    try
      oProgress := TfrmProgressBar.Create(Nil);

      cdsCashWdr_Tmp.Close;
      cdsCashWdr_Tmp.Params[0].AsInteger := 0;
      cdsCashWdr_Tmp.Open;

      cdsBankInstruction.Close;
      cdsBankInstruction.Params[0].AsInteger := -1;
      cdsBankInstruction.Open;

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iCols  := oSheet.Usedrange.Columns.Count;
      iRows  := oSheet.Usedrange.Rows.Count;

      sSeqID       := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHWDR');
      sSeqNoID     := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHWDR_'+ FormatDateTime('YYYYMM',FTransDate));
      iBankInsID   := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
      iBankInsNoID := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION_'+ FormatDateTime('YYYYMM',FTransDate));

      dmGlobal.RemoteServer.UpdateSeq('TBL_B_CASHWDR', sSeqID + (iRows));
      dmGlobal.RemoteServer.UpdateSeq('TBL_B_BANK_INSTRUCTION', iBankInsID + (iRows));
      dmGlobal.RemoteServer.UpdateSeq('TBL_B_CASHWDR_'+ FormatDateTime('YYYYMM',FTransDate), sSeqNoID + (iRows));
      dmGlobal.RemoteServer.UpdateSeq('TBL_B_BANK_INSTRUCTION_'+ FormatDateTime('YYYYMM',FTransDate), iBankInsNoID + (iRows));

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading cash withdraw');
      for i := 2 to iRows do
      begin
        Inc(sSeqID);
        Inc(sSeqNoID);
        Inc(iBankInsID);
        Inc(iBankInsNoID);

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing cash withdraw ' + QuotedStr(oSheet.Cells[i, 2].Value));

        cdsGetAccWdr.Close;
        cdsGetAccWdr.Params[0].AsString := oSheet.Cells[i, 2].Value;
        cdsGetAccWdr.Params[1].AsString := oSheet.Cells[i, 4].Value;
        cdsGetAccWdr.Open;

        if cdsGetAccWdr.IsEmpty then
        begin
          Inc(iError);
          sMsg := sMsg + 'Unregistered Private Bank Acc No ' + oSheet.Cells[i, 2].Value +#13;
        end
        else
        begin
          oPros := True;
          oCheckDate := Iszero(oSheet.Cells[i, 1].Value);

          if oCheckDate then
          begin
            inc(iError);
            sMsg := sMsg + 'Transaction Date Is Empty' +#13;
            oPros := False;
          end;

          if oPros then
          begin
            if oSheet.Cells[i, 5].Value > cdsGetAccWdrCASHAVAIL.AsFloat then
            begin
              inc(iError);
              sMsg := sMsg + cdsGetAccWdrACCNO.AsString +' - '+ cdsGetAccWdrACCNAME.AsString + ' is not enough cash to be withdrawed' +#13;
            end
            else
            begin
              try
                sAmount := oSheet.Cells[i, 5].Value;
                if sAmount <> '' then
                begin
                  cdsCashWdr_Tmp.Append;
                  cdsCashWdr_TmpCWID.AsInteger             := sSeqID;
                  cdsCashWdr_TmpCWCODE.AsString            := 'CW-'+FormatDateTime('YYYYMM',FTransDate)+'-'+FormatFloat('0000000000', sSeqNoID);
                  cdsCashWdr_TmpCWDATE.AsDateTime          := oSheet.Cells[i, 1].Value;
                  cdsCashWdr_TmpACCID.AsLargeInt           := cdsGetAccWdrACCID.AsLargeInt;
                  cdsCashWdr_TmpACCNO.AsString             := oSheet.Cells[i, 2].Value;
                  cdsCashWdr_TmpCCY.AsString               := 'IDR'; //oSheet.Cells[i, 14].Value;
                  cdsCashWdr_TmpCWAMT.AsFloat              := oSheet.Cells[i, 5].Value;
                  cdsCashWdr_TmpBNCHARGES.AsFloat          := oSheet.Cells[i, 6].Value;
                  cdsCashWdr_TmpTRANSFER_AMT.AsFloat       := cdsCashWdr_TmpCWAMT.AsFloat - cdsCashWdr_TmpBNCHARGES.AsFloat;
                  cdsCashWdr_TmpCWDESC.AsString            := oSheet.Cells[i, 7].Value;
                  cdsCashWdr_TmpSOURCE_ACCBANKID.AsInteger := cdsGetAccWdrRDN_BANKID.AsInteger;
                  cdsCashWdr_TmpTARGET_ACCBANKID.AsInteger := cdsGetAccWdrPRV_BANKID.AsInteger;
                  cdsCashWdr_TmpWDR_TYPE.AsString          := 'R';

                  cdsCashWdr_TmpTRANSTYPE.AsString         := 'R';
                  if cdsGetAccWdrRDN_ACCNO.AsString = cdsGetAccWdrPRV_BNCODE.AsString then
                    cdsCashWdr_TmpBNCHARGESTYPE.AsString   := 'OB'
                  else
                    cdsCashWdr_TmpBNCHARGESTYPE.AsString   := 'LLG';
                  cdsCashWdr_Tmp.Post;

                  cdsBankInstruction.Append;
                  cdsBankInstructionBIID.AsLargeInt := iBankInsID;
                  cdsBankInstructionBINO.AsString := 'BI-'+FormatDateTime('YYYYMM',FTransDate)+'-'+FormatFloat('0000000000', iBankInsNoID);
                  cdsBankInstructionBITYPE.AsString := 'P';
                  cdsBankInstructionENTRYDATE.AsDateTime := cdsCashWdr_TmpENTRYDATE.AsDateTime;
                  cdsBankInstructionVALUEDATE.AsDateTime := cdsCashWdr_TmpCWDATE.AsDateTime;
                  cdsBankInstructionBIDESC.AsString := 'Cash Withdraw ' + cdsCashWdr_TmpCWCODE.AsString;
                  cdsBankInstructionBANK_REF.AsString := '';
                  cdsBankInstructionTRANS_TYPE.AsString := 'CW';
                  cdsBankInstructionLINKID.AsLargeInt := cdsCashWdr_TmpCWID.AsLargeInt;
                  cdsBankInstructionLINKNO.AsString := cdsCashWdr_TmpCWCODE.AsString;
                  cdsBankInstructionSTAT.AsString := '1';
                  cdsBankInstructionACCID.AsInteger := cdsCashWdr_TmpACCID.AsInteger;

                  cdsBankInstructionBANKTYPE_SOURCE.AsString := '3';
                  cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsGetAccWdrRDN_BANKID.AsInteger;
                  cdsBankInstructionBNCODE_SOURCE.AsString := cdsGetAccWdrRDN_BNCODE.AsString;
                  cdsBankInstructionBNACCNO_SOURCE.AsString := cdsGetAccWdrRDN_ACCNO.AsString;
                  cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsGetAccWdrRDN_BNACCNAME.AsString;
                  cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsGetAccWdrRDN_BANKBRANCH.AsString;
                  cdsBankInstructionCCYCODE_SOURCE.AsString := cdsGetAccWdrRDN_CCY.AsString;

                  cdsBankInstructionBANKTYPE_TARGET.AsString := '4';
                  cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsGetAccWdrPRV_BANKID.AsInteger;
                  cdsBankInstructionBNCODE_TARGET.AsString := cdsGetAccWdrPRV_BNCODE.AsString;
                  cdsBankInstructionBNACCNO_TARGET.AsString := cdsGetAccWdrPRV_ACCNO.AsString;
                  cdsBankInstructionBNACCNAME_TARGET.AsString := cdsGetAccWdrPRV_BNACCNAME.AsString;
                  cdsBankInstructionBNBRANCH_TARGET.AsString := cdsGetAccWdrPRV_BANKBRANCH.AsString;
                  cdsBankInstructionCCYCODE_TARGET.AsString := cdsGetAccWdrPRV_CCY.AsString;

                  cdsBankInstructionTRANFER_TYPE.AsString := cdsCashWdr_TmpTRANSTYPE.AsString;//R: Remiter, B: Beneficiary
                  cdsBankInstructionCCY.AsString := cdsCashWdr_TmpCCY.AsString;
                  cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashWdr_TmpCWAMT.AsFloat);
                  cdsBankInstructionCHARGES.AsFloat := Abs(cdsCashWdr_TmpBNCHARGES.AsFloat);
                  cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashWdr_TmpTRANSFER_AMT.AsFloat);
                  cdsBankInstruction.Post;

                  Inc(iSuccess);
                end
                else
                begin
                  Inc(iError);
                  sMsg := sMsg + 'Unregistered Private Bank Acc No ' + oSheet.Cells[i, 2].Value +#13;
                end;
              except
                on e: exception do
                begin
                  inc(iError);
                  sMsg := sMsg + e.Message + #13;
                end;
              end;
            end;
          end;
        end;
      end;

    finally
      oProgress.ChangeBarCaption('Saving to database...');
      Application.ProcessMessages;
      cdsCashWdr_Tmp.ApplyUpdates(-1);
      cdsBankInstruction.ApplyUpdates(-1);

      oProgress.ChangeBarCaption('Updating Cash Position...');
      Application.ProcessMessages;
      cdsCashWdr_Tmp.First;
      while not cdsCashWdr_Tmp.Eof do
      begin
        cdsCashPosByAccCcy.Close;
        cdsCashPosByAccCcy.Params[0].AsDate    := cdsCashWdr_TmpCWDATE.AsDateTime;
        cdsCashPosByAccCcy.Params[1].AsInteger := cdsCashWdr_TmpACCID.AsInteger;
        cdsCashPosByAccCcy.Params[2].AsString  := cdsCashWdr_TmpCCY.AsString;
        cdsCashPosByAccCcy.Open;

        if not cdsCashPosByAccCcy.IsEmpty then
        begin
          cdsCashPosByAccCcy.Edit;
          cdsCashPosByAccCcyCASH_ONHOLD.AsFloat := cdsCashPosByAccCcyCASH_ONHOLD.AsFloat + cdsCashWdr_TmpCWAMT.NewValue;
          cdsCashPosByAccCcy.Post;

          cdsCashPosByAccCcy.ApplyUpdates(-1);
        end;

        cdsCashWdr_Tmp.Next;
      end;

      FreeAndNil(oProgress);
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      Application.ProcessMessages;
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);
//      cdsCashWdr.ApplyUpdates(-1);
//      cdsBankInstruction.ApplyUpdates(-1);

      if cdsCashWdrList.Active then
        cdsCashWdrList.Refresh;

      if cdsBankInstruction.active then
        cdsBankInstruction.Refresh;
    end;
  end;
end;

procedure TfrmCashWdrList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsCashWdrListCWDATE.AsDateTime;
    iLedgerTransID := cdsCashWdrListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := -1;
    iFundTransID   := cdsCashWdrListFUNDTRANSID.AsLargeInt;

    oForm := TfrmViewTransaction.Create(nil);

    TfrmViewTransaction(oForm).conDate       := dtConDate;
    TfrmViewTransaction(oForm).ledgerTransID := iLedgerTransID;
    TfrmViewTransaction(oForm).stockTransID  := iStockTransID;
    TfrmViewTransaction(oForm).fundTransID   := iFundTransID;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmCashWdrList.btnCheckAllClick(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '11111';
end;

procedure TfrmCashWdrList.cdsCashWdrACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuBankByAccount.Params[0].AsInteger <> cdsCashWdrACCID.AsInteger) or
      (not cdsLuBankByAccount.Active) then
    begin
      cdsLuBankByAccount.Close;
      cdsLuBankByAccount.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuBankByAccount.Open;

      cdsCashWdrTARGET_ACCBANKID.Clear;
    end;

    if (cdsLuBankRDNByAccount.Params[0].AsInteger <> cdsCashWdrACCID.AsInteger) or
      (not cdsLuBankRDNByAccount.Active) then
    begin
      cdsLuBankRDNByAccount.Close;
      cdsLuBankRDNByAccount.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuBankRDNByAccount.Params[1].AsInteger := FBrokerAccount;
      cdsLuBankRDNByAccount.Open;


      cdsCashWdrSOURCE_ACCBANKID.Clear;
      cdsCashWdrACTLED_ACCID.Clear;
      cdsCashWdrACTLED_SEQID.Clear;
    end;

    if cdsLuAccount.Locate('ACCID', cdsCashWdrACCID.Value, []) then
      cdsCashWdrACCNO.AsString := cdsLuAccountACCCODE.AsString;
//
  end;
end;

procedure TfrmCashWdrList.cdsCashWdrBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsCashPosByAccCcy.Close;
  cdsCashPosByAccCcy.Params[0].AsDate    := cdsCashWdrCWDATE.AsDateTime;
  cdsCashPosByAccCcy.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
  cdsCashPosByAccCcy.Params[2].AsString  := cdsCashWdrCCY.AsString;
  cdsCashPosByAccCcy.Open;

  if not cdsCashPosByAccCcy.IsEmpty then
  begin
    cdsCashPosByAccCcy.Edit;
    cdsCashPosByAccCcyCASH_ONHOLD.AsFloat := cdsCashPosByAccCcyCASH_ONHOLD.AsFloat - cdsCashWdrCWAMT.OldValue + cdsCashWdrCWAMT.NewValue;
    cdsCashPosByAccCcy.Post;

    cdsCashPosByAccCcy.ApplyUpdates(-1);
  end;
end;

procedure TfrmCashWdrList.cdsCashWdrListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  //Just for prepared in case need to show
//  cdsBankInstructionList.Close;
//  cdsBankInstructionList.Params[0].AsDate := cdsCashWdrList.Params[0].AsDate;
//  cdsBankInstructionList.Params[1].AsString := cdsCashWdrList.Params[1].AsString;
//  cdsBankInstructionList.Params[2].AsString := cdsCashWdrList.Params[2].AsString;
//  cdsBankInstructionList.Params[3].AsString := cdsCashWdrList.Params[3].AsString;
//  cdsBankInstructionList.Params[4].AsString := cdsCashWdrList.Params[4].AsString;
//  cdsBankInstructionList.Open;
end;

procedure TfrmCashWdrList.cdsCashWdrListAfterRefresh(DataSet: TDataSet);
begin
  inherited;
//  cdsBankInstructionList.Refresh;
end;

procedure TfrmCashWdrList.cdsCashWdrSOURCE_ACCBANKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankRDNByAccount.Locate('ACCBANKID', cdsCashWdrSOURCE_ACCBANKID.Value, []) then
    begin
      cdsCashWdrACTLED_ACCID.AsInteger := cdsLuBankRDNByAccountACCID.AsInteger;
      cdsCashWdrACTLED_SEQID.AsInteger := cdsLuBankRDNByAccountACTLED_SEQID.AsInteger;
    end;
  end;
end;

procedure TfrmCashWdrList.chUncheckAllClick(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '00000';
end;

procedure TfrmCashWdrList.DataContainerAfterOpenEditorDataset(
  Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  if (Sender.MasterDataset.FieldByName('POSTED').AsString = '1') and (Sender.State = mddsEdit) then
  begin
    AContinue := False;
    MessageDlg('This data was posted.' + #13 + 'You Can''t change this data.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmCashWdrList.DataContainerBeforePost(Sender: TNMasterDetailData;
  var AContinue: Boolean);
begin
  inherited;
  if Sender.State = mddsInsert then
  begin
    if Sender.Control4Eyes then
      Sender.MasterDatasetUpd.FieldByName('POSTED').Clear
    else
      Sender.MasterDataset.FieldByName('POSTED').Clear;
  end;
end;

procedure TfrmCashWdrList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCashWithdraw;
end;

procedure TfrmCashWdrList.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
begin
  inherited;
  KeyField := cdsCashWdrListCWID;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;

  chStatus.EditValue := '10000';
end;

procedure TfrmCashWdrList.GenerateBankFile(ABankName: string);
  function ConvertOrdinary(AValue: string): Integer;
  begin
    if LowerCase(AValue) = 'bmri' then Result := 1 else
    if LowerCase(AValue) = 'bnli' then Result := 2 else
    if LowerCase(AValue) = 'bnga' then Result := 3 else
    if LowerCase(AValue) = 'bbni' then Result := 4;
  end;
var
  oBankList: TStringList;
  sFileName, sMail,
  sList, sFolderName: string;
  i, iRecordCount: Integer;
  oForm: TForm;
  sRefference, sFileExt: string;
  dTotalAmount: Double;
begin
  inherited;
  oBankList := TStringList.Create;
  sMail     := dmGlobal.RemoteServer.GetGlobalParamString('610');

  oForm := TfrmBankRefference.Create(Self);
  TfrmBankRefference(oForm).txtRefference.Text := ''; //cdsCashWdrListSOURCE_BNCODE.AsString;
  if oForm.ShowModal = mrOk then
    sRefference := TfrmBankRefference(oForm).txtRefference.Text;

  if sRefference = '' then
  begin
    MessageDlg('Refference must have value', mtError, [mbOk], 0);
    exit;
  end;

  cdsCashWdrBankInstr.DisableControls;
  cdsCashWdrBankInstr.First;
  iRecordCount := cdsCashWdrBankInstr.RecordCount;
  while not cdsCashWdrBankInstr.eof do
  begin
    case ConvertOrdinary(ABankName) of
      1 : begin
            sList := 'M,1,'+FormatDateTime('YYYYMMDD',cdsCashWdrBankInstrCWDATE.AsDateTime)+',,,,,'+cdsCashWdrBankInstrSOURCE_BANKACCNO.AsString+','+cdsCashWdrBankInstrTARGET_BANKACCNO.AsString+','+cdsCashWdrBankInstrTARGET_BANKACCNAME.AsString+
                     ',,,,'+cdsCashWdrBankInstrCCY.AsString+','+FormatFloat('#.00', cdsCashWdrBankInstrTRANSFER_AMT.AsFloat)+',,,,'+dmGlobal.BankDefDesc+cdsCashWdrBankInstrREMAKRS.AsString+','+cdsCashWdrBankInstrACCNO.AsString+
                     ','+cdsCashWdrBankInstrFTSERVICE.AsString+','+cdsCashWdrBankInstrTARGET_BICODE.AsString+','+cdsCashWdrBankInstrBANKNAME.AsString+',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,E,';
            oBankList.Add(sList);
            sList := cdsCashWdrBankInstrSOURCE_SWIFT_CODE.AsString+cdsCashWdrBankInstrTRANSFERMODE.AsString;
            oBankList.Add(sList);
            sList := ',';
            oBankList.Add(sList);
          end;

      2 : begin
            sList := cdsCashWdrBankInstrBANKNAME.AsString+',,,'+cdsCashWdrBankInstrTARGET_BICODE.AsString+','+cdsCashWdrBankInstrTARGET_BANKACCNAME.AsString+
                     ','+cdsCashWdrBankInstrTARGET_BANKACCNO.AsString+','+cdsCashWdrBankInstrCCY.AsString+','+cdsCashWdrBankInstrTRANSFER_AMT.AsString+','+dmGlobal.BankDefDesc+cdsCashWdrBankInstrREMAKRS.AsString+
                     ',,'+sMail+','+cdsCashWdrBankInstrTRANSFERMODE.AsString+',0,1,,0,'+cdsCashWdrBankInstrACCNO.AsString+','+FormatDateTime('DDMMYYYY',cdsCashWdrBankInstrCWDATE.AsDateTime)+',,,'+
                     cdsCashWdrBankInstrSOURCE_BANKACCNAME.AsString+','+cdsCashWdrBankInstrSOURCE_BANKACCNO.AsString+','+cdsCashWdrBankInstrCCY.AsString;
            oBankList.Add(sList);
          end;

      3 : begin
            sList := cdsCashWdrBankInstrSOURCE_BANKACCNO.AsString+','+cdsCashWdrBankInstrTARGET_BANKACCNO.AsString+','+cdsCashWdrBankInstrTARGET_BANKACCNAME.AsString+','+FormatFloat('#.00', cdsCashWdrBankInstrTRANSFER_AMT.AsFloat)+
                     ','+dmGlobal.BankDefDesc+cdsCashWdrBankInstrREMAKRS.AsString+','+cdsCashWdrBankInstrREMAKRS.AsString+','+cdsCashWdrBankInstrBANKNAME.AsString+','+sMail+',Y';
            oBankList.Add(sList);
          end;

      4 : begin
            sList := 'MT100,,'+FormatDateTime('YYYYMMDD',cdsCashWdrBankInstrCWDATE.AsDateTime)+','+cdsCashWdrBankInstrCCY.AsString+','+cdsCashWdrBankInstrTRANSFER_AMT.AsString+','+cdsCashWdrBankInstrSOURCE_BANKACCNAME.AsString+','+
                     cdsCashWdrBankInstrSOURCE_BANKACCNO.AsString+',,,,,,,'+cdsCashWdrBankInstrTARGET_SWIFT_CODE.AsString+','+cdsCashWdrBankInstrBANKNAME.AsString+',,,'+
                     cdsCashWdrBankInstrTARGET_BANKACCNO.AsString+','+cdsCashWdrBankInstrTARGET_BANKACCNAME.AsString+','+dmGlobal.BankDefDesc+cdsCashWdrBankInstrREMAKRS.AsString+',,OUR,'+sMail+',';
            oBankList.Add(sList);
          end;
    end;
    cdsCashWdrBankInstr.Next;
  end;

  repeat
    sFileName         := sRefference+'_'+ABankName+'_'+FormatDateTime('DD_MM_YYYY', FTransDate)+'.csv';
    SaveFile.FileName := sFileName;
    if SaveFile.Execute(Handle) then
      sFileName := SaveFile.FileName;
  until sFileName <> '';
  oBankList.SaveToFile(sFileName);

  FreeAndNil(oBankList);
  cdsCashWdrBankInstr.EnableControls;

  MessageDlg('Generate '+ABankName+' Bank Interface has done...', mtInformation, [mbOk], 0);
end;

function TfrmCashWdrList.GetValue(ARowIndex, AValueIndex: Integer): string;
begin
  if gvwMaster.Controller.SelectedRows[ARowIndex].Values[AValueIndex] = null then Result := '' else
    Result := gvwMaster.Controller.SelectedRows[ARowIndex].Values[AValueIndex];
end;

procedure TfrmCashWdrList.gvwBankChartSeries1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var
  sValue: String;
  fValue: Currency;
begin
  inherited;
  sValue := VarToStr(AValue);
  fValue := StrToCurrDef(sValue, MinCurrency);

  if fValue <> MinCurrency then
  begin
    ADisplayText := FormatCurr('#,##0.00', fValue);
  end;
end;

Initialization
  RegisterClass(TfrmCashWdrList);

end.
