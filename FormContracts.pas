unit FormContracts;

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
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, frxClass, frxDBSet,
  NReportRPC, WinAPI.ShellAPI, Vcl.ExtCtrls, cxImageComboBox, cxLabel,
  cxBarEditItem, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  NReportClient, dxSkinsCore, frxServerClient, XLSSheetData5, XLSReadWriteII5,
  cxGridChartView, cxGridDBChartView, StrUtils, DateUtils, System.Actions,
  System.ImageList, ComObj, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter,Clipbrd, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmContracts = class(TfrmBrowseData)
    cdsContractList: TNClientDataset;
    cdsContractListCONID: TLargeintField;
    cdsContractListCONCODE: TStringField;
    cdsContractListCONDATE: TDateField;
    cdsContractListCASHSETTLEDATE: TDateField;
    cdsContractListSTOCKSETTLEDATE: TDateField;
    cdsContractListAGCTYPE: TStringField;
    cdsContractListACCID: TLargeintField;
    cdsContractListACCNO: TStringField;
    cdsContractListACCNAME: TStringField;
    cdsContractListCON_ADDR: TStringField;
    cdsContractListCITY: TStringField;
    cdsContractListZIPCODE: TStringField;
    cdsContractListSTOCKID: TLargeintField;
    cdsContractListSTOCKCODE: TStringField;
    cdsContractListSTOCKNAME: TStringField;
    cdsContractListTC_MODEL: TStringField;
    cdsContractListTC_SENDBY: TStringField;
    cdsContractListSALESID: TLargeintField;
    cdsContractListDEALERID: TLargeintField;
    cdsContractListCCYCODE: TStringField;
    cdsContractListNETTYPE: TStringField;
    cdsContractListNETVALUE: TFloatField;
    cdsContractListCOMMAMT: TFloatField;
    cdsContractListNETAMT: TFloatField;
    cdsContractListCUSTODYCODE: TStringField;
    cdsContractListSIDNO: TStringField;
    cdsContractListBNCODE: TStringField;
    cdsContractListBANKACCNO: TStringField;
    cdsContractListBANKACCNAME: TStringField;
    cdsContractListSETT_CLEARACC: TStringField;
    cdsContractListSETT_CLEARSUBACC: TStringField;
    cdsContractListFINALSTS: TStringField;
    cdsContractListCONSTS: TStringField;
    actViewDataList: TNAction;
    gvwMasterCONCODE: TcxGridDBBandedColumn;
    gvwMasterCASHSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterSTOCKSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterTC_MODEL: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterNETTYPE: TcxGridDBBandedColumn;
    gvwMasterCOMMAMT: TcxGridDBBandedColumn;
    gvwMasterNETAMT: TcxGridDBBandedColumn;
    cdsContractListMARKETCODE: TStringField;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    cdsContractListMODDA: TDateTimeField;
    cdsContractListMODUI: TStringField;
    cdsContractListAPPDA: TDateTimeField;
    cdsContractListAPPUI: TStringField;
    cdsContractListUNDER4Y: TIntegerField;
    cdsContractListUNDER4YDA: TDateTimeField;
    cdsContractListNOTES4Y: TStringField;
    cdsContractListISDEL: TIntegerField;
    cdsContractListID: TLargeintField;
    cdsTransLegCash: TNClientDataset;
    cdsTransLegStock: TNClientDataset;
    actViewTransLeg: TNAction;
    actNewGenContract: TNDataActionInsert;
    actEditGenContract: TNDataActionEdit;
    actGenerateContractFile: TNAction;
    actViewContractFile: TNAction;
    cdsContractListISOMG: TStringField;
    cdsContractListOTC: TFloatField;
    actCloseContract: TNAction;
    cdsTransLegCashCTLID: TLargeintField;
    cdsTransLegCashCONID: TLargeintField;
    cdsTransLegCashCONCODE: TStringField;
    cdsTransLegCashTRDDATE: TDateField;
    cdsTransLegCashBS: TStringField;
    cdsTransLegCashLEG: TStringField;
    cdsTransLegCashACCID: TIntegerField;
    cdsTransLegCashACCCODE: TStringField;
    cdsTransLegCashALTYPE: TStringField;
    cdsTransLegCashCSLACCCODE: TStringField;
    cdsTransLegCashCDUE: TDateField;
    cdsTransLegCashDC: TStringField;
    cdsTransLegCashCCYCODE: TStringField;
    cdsTransLegCashEXRATE: TFloatField;
    cdsTransLegCashAMT: TFloatField;
    cdsTransLegCashISCLOSE: TStringField;
    cdsTransLegCashRVSD: TStringField;
    cdsTransLegCashRSVDTLID: TStringField;
    cdsTransLegCashRVSDDATE: TDateField;
    cdsTransLegCashSTLKEY: TStringField;
    cdsTransLegCashSPLIT: TStringField;
    cdsTransLegCashSPLITLINK: TLargeintField;
    cdsTransLegCashC2SLINK: TLargeintField;
    cdsTransLegCashCUSTBANK: TStringField;
    cdsTransLegCashRDNCODE: TStringField;
    cdsTransLegCashRDNACC: TStringField;
    cdsTransLegCashCBEST01: TStringField;
    cdsTransLegCashCBEST04: TStringField;
    cdsTransLegCashSTLD: TStringField;
    cdsTransLegCashAMTSTLD: TFloatField;
    cdsTransLegCashTAMTSTLD: TFloatField;
    cdsTransLegCashORIGINALAMT: TFloatField;
    cdsTransLegCashMODDA: TDateTimeField;
    cdsTransLegCashMODUI: TStringField;
    cdsTransLegCashAPPDA: TDateTimeField;
    cdsTransLegCashAPPUI: TStringField;
    cdsTransLegCashUNDER4Y: TIntegerField;
    cdsTransLegCashUNDER4YDA: TDateTimeField;
    cdsTransLegCashNOTES4Y: TStringField;
    cdsTransLegCashISDEL: TIntegerField;
    cdsTransLegCashID: TLargeintField;
    cdsTransLegStockCTLID: TLargeintField;
    cdsTransLegStockCONID: TLargeintField;
    cdsTransLegStockCONCODE: TStringField;
    cdsTransLegStockTRDDATE: TDateField;
    cdsTransLegStockBS: TStringField;
    cdsTransLegStockLEG: TStringField;
    cdsTransLegStockACCID: TIntegerField;
    cdsTransLegStockACCCODE: TStringField;
    cdsTransLegStockALTYPE: TStringField;
    cdsTransLegStockSSLACCCODE: TStringField;
    cdsTransLegStockSDUE: TDateField;
    cdsTransLegStockDR: TStringField;
    cdsTransLegStockBOARD: TLargeintField;
    cdsTransLegStockSTOCKID: TLargeintField;
    cdsTransLegStockSTOCKCODE: TStringField;
    cdsTransLegStockQTY: TFloatField;
    cdsTransLegStockAVGPRICE: TFloatField;
    cdsTransLegStockISCLOSE: TStringField;
    cdsTransLegStockRVSD: TStringField;
    cdsTransLegStockRSVDTLID: TStringField;
    cdsTransLegStockRVSDDATE: TDateField;
    cdsTransLegStockSTLKEY: TStringField;
    cdsTransLegStockSPLIT: TStringField;
    cdsTransLegStockSPLITLINK: TLargeintField;
    cdsTransLegStockS2CLINK: TLargeintField;
    cdsTransLegStockCUSTBANK: TStringField;
    cdsTransLegStockCBEST01: TStringField;
    cdsTransLegStockCBEST04: TStringField;
    cdsTransLegStockSTLD: TStringField;
    cdsTransLegStockAMTSTLD: TFloatField;
    cdsTransLegStockTAMTSTLD: TFloatField;
    cdsTransLegStockORIGINALAMT: TFloatField;
    cdsTransLegStockMODDA: TDateTimeField;
    cdsTransLegStockMODUI: TStringField;
    cdsTransLegStockAPPDA: TDateTimeField;
    cdsTransLegStockAPPUI: TStringField;
    cdsTransLegStockUNDER4Y: TIntegerField;
    cdsTransLegStockUNDER4YDA: TDateTimeField;
    cdsTransLegStockNOTES4Y: TStringField;
    cdsTransLegStockISDEL: TIntegerField;
    cdsTransLegStockID: TLargeintField;
    cdsGenConFile: TNClientDataset;
    cdsGenConFileCONID: TLargeintField;
    cdsGenConFileACCID: TIntegerField;
    cdsGenConFileACCCODE: TStringField;
    cdsGenConFilePROCESS_NAME: TStringField;
    cdsGenConFileMAIL_SUBJECT: TStringField;
    cdsGenConFileMAIL_TO: TStringField;
    cdsGenConFileMAIL_MESSAGE: TMemoField;
    cdsGenConFileMAIL_OBJECT_FILENAME: TStringField;
    cdsGenConFileMAIL_OBJECT_FILE: TBlobField;
    cdsGenConFileMAIL_STATUS: TStringField;
    cdsGenConFileNOTES: TMemoField;
    cdsGenConFileMODDA: TDateTimeField;
    cdsGenConFileMODUI: TStringField;
    cdsGenConFileAPPDA: TDateTimeField;
    cdsGenConFileAPPUI: TStringField;
    cdsGenConFileUNDER4Y: TIntegerField;
    cdsGenConFileUNDER4YDA: TDateTimeField;
    cdsGenConFileNOTES4Y: TStringField;
    cdsGenConFileISDEL: TIntegerField;
    cdsGenConFileID: TLargeintField;
    GenerateContractFile2: TMenuItem;
    ViewContractFile2: TMenuItem;
    N5: TMenuItem;
    actCancelContract: TNAction;
    actReverseContract: TNAction;
    CancelContract1: TMenuItem;
    ReverseContract1: TMenuItem;
    gvwMasterCONSTS: TcxGridDBBandedColumn;
    cdsContractListVALUEAMT: TFloatField;
    cdsContractListCHARGEAMT: TFloatField;
    cdsContractListS_STS: TStringField;
    cdsContractListC_STS: TStringField;
    cdsContractListISMULTICCY: TStringField;
    cdsContractListFOREIGN_CCYCODE: TStringField;
    cdsContractListFOREIGN_EXRATE: TFloatField;
    cdsContractListFOREIGN_NETAMT: TFloatField;
    cdsContractListC_SETTLEMODE: TStringField;
    cdsContractListS_SETTLEMODE: TStringField;
    cdsContractListCASHKEEP: TStringField;
    cdsContractListSTOCKKEEP: TStringField;
    cdsContractListAVGPRICE: TFloatField;
    cdsContractListEXRATE: TFloatField;
    cdsContractListSALES_BRANCHID: TLargeintField;
    cdsContractListENTTID: TIntegerField;
    cdsContractListENTTCODE: TStringField;
    cdsContractListENTNAME: TStringField;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    actPrintPerAlloc: TNAction;
    ReportPerAlloc: TNClientReportContainer;
    ReportClientTCPerAlloc: TfrxReportClient;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    actSplitSI: TNAction;
    cdsConSI: TNClientDataset;
    cdsConSISIID: TLargeintField;
    cdsConSISINO: TStringField;
    cdsConSIENTRYDATE: TDateField;
    cdsConSIVALUEDATE: TDateField;
    cdsConSISITYPE: TStringField;
    cdsConSICASH_STOCK: TStringField;
    cdsConSISETTLE_SIDE: TStringField;
    cdsConSIINSTRUCTION_TYPE: TStringField;
    cdsConSINETTYPE: TStringField;
    cdsConSIACCID: TLargeintField;
    cdsConSIACCNO: TStringField;
    cdsConSIACCNAME: TStringField;
    cdsConSITRANSFER_MODE: TStringField;
    cdsConSIBASE_CCYCODE: TStringField;
    cdsConSIBASE_NETAMT: TFloatField;
    cdsConSIBANK_CHARGES: TFloatField;
    cdsConSISETTLE_CCYCODE: TStringField;
    cdsConSISETTLE_EXRATE: TFloatField;
    cdsConSISETTLE_NETAMT: TFloatField;
    cdsConSISETTLED_AMT: TFloatField;
    cdsConSISTOCKID: TIntegerField;
    cdsConSISTOCKCODE: TStringField;
    cdsConSIQTY: TFloatField;
    cdsConSITRDDATE: TDateField;
    cdsConSIDUEDATE: TDateField;
    cdsConSISETTLEDDATE: TDateField;
    cdsConSISI_DESC: TStringField;
    cdsConSISTAT: TStringField;
    cdsConSIOLD_SIID: TLargeintField;
    cdsConSIVOUCHERAMT: TFloatField;
    cdsConSIVOUCHERQTY: TFloatField;
    cdsConSINO_INTRC: TStringField;
    cdsConSIMODDA: TDateTimeField;
    cdsConSIMODUI: TStringField;
    cdsConSIAPPDA: TDateTimeField;
    cdsConSIAPPUI: TStringField;
    cdsConSIUNDER4Y: TIntegerField;
    cdsConSIUNDER4YDA: TDateTimeField;
    cdsConSINOTES4Y: TStringField;
    cdsConSIISDEL: TIntegerField;
    cdsConSIID: TLargeintField;
    cdsConSISETTLED_QTY: TFloatField;
    cdsConSITRF_PRVT_BANK: TStringField;
    cdsConSIBANKACCBRANCH: TStringField;
    cdsConSICP_BANKACCBRANCH: TStringField;
    cdsConSIACCSOPID: TLargeintField;
    cdsConSIUSE_ACS: TStringField;
    cdsConSISOURCE_ACCBANKID: TLargeintField;
    cdsConSISOURCE_ACCBANKCODE: TStringField;
    cdsConSISOURCE_ACCBANKNO: TStringField;
    cdsConSISOURCE_ACCBANKNAME: TStringField;
    cdsConSITARGET_ACCBANKID: TLargeintField;
    cdsConSITARGET_ACCBANKCODE: TStringField;
    cdsConSITARGET_ACCBANKNO: TStringField;
    cdsConSITARGET_ACCBANKNAME: TStringField;
    SplitSettlementInstruction1: TMenuItem;
    actExcelExport: TNAction;
    cdsContractExcel: TNClientDataset;
    cdsContractExcelCONID: TLargeintField;
    cdsContractExcelSEQID: TIntegerField;
    cdsContractExcelACCID: TIntegerField;
    cdsContractExcelACCNO: TStringField;
    cdsContractExcelACCNAME: TStringField;
    cdsContractExcelBS: TStringField;
    cdsContractExcelSTOCKID: TLargeintField;
    cdsContractExcelSTOCKCODE: TStringField;
    cdsContractExcelSTOCKNAME: TStringField;
    cdsContractExcelCOMM_ID: TLargeintField;
    cdsContractExcelCALC_METHOD: TStringField;
    cdsContractExcelVALID_CALC_METHOD: TStringField;
    cdsContractExcelCOMM_RATE: TFloatField;
    cdsContractExcelVALID_COMM_RATE: TFloatField;
    cdsContractExcelAPRICE: TFloatField;
    cdsContractExcelAQTY: TFloatField;
    cdsContractExcelAVALUE: TFloatField;
    cdsContractExcelCHARGES: TFloatField;
    cdsContractExcelBROKERFEE: TFloatField;
    cdsContractExcelVAT: TFloatField;
    cdsContractExcelWHT: TFloatField;
    cdsContractExcelSELLTAX: TFloatField;
    cdsContractExcelTOTAL_CHARGES: TFloatField;
    cdsContractExcelCCYCODE: TStringField;
    cdsContractExcelALLOCAMT: TFloatField;
    cdsContractExcelISMULTICCY: TStringField;
    cdsContractExcelFOREIGN_CCYCODE: TStringField;
    cdsContractExcelFOREIGN_EXRATE: TFloatField;
    cdsContractExcelFOREIGN_ALLOCAMT: TFloatField;
    cdsContractExcelC_SETTLEMODE: TStringField;
    cdsContractExcelS_SETTLEMODE: TStringField;
    cdsContractExcelCASHKEEP: TStringField;
    cdsContractExcelSTOCKKEEP: TStringField;
    cdsContractExcelDUECASH: TDateField;
    cdsContractExcelDUESTOCK: TDateField;
    cdsContractExcelDEALTICKETID: TLargeintField;
    cdsContractExcelDA_SEQID: TLargeintField;
    cdsContractExcelDX_SEQID: TLargeintField;
    cdsContractExcelMODDA: TDateTimeField;
    cdsContractExcelMODUI: TStringField;
    cdsContractExcelAPPDA: TDateTimeField;
    cdsContractExcelAPPUI: TStringField;
    cdsContractExcelUNDER4Y: TIntegerField;
    cdsContractExcelUNDER4YDA: TDateTimeField;
    cdsContractExcelNOTES4Y: TStringField;
    cdsContractExcelISDEL: TIntegerField;
    cdsContractExcelID: TLargeintField;
    cdsContractExcelCONCODE: TStringField;
    cdsContractExcelCONDATE: TDateField;
    cdsContractExcelCASHSETTLEDATE: TDateField;
    cdsContractExcelSTOCKSETTLEDATE: TDateField;
    cdsContractExcelMARKETCODE: TStringField;
    cdsContractExcelISINCODE: TStringField;
    cdsContractExcelACCINIT: TStringField;
    SaveDialog: TSaveDialog;
    cdsContractExcelSEDOL: TStringField;
    cdsContractExcelNPWP: TStringField;
    cdsContractExcelCONTNAME: TStringField;
    cdsContractExcelCONTPHONE: TStringField;
    cdsContractExcelCONTFAX: TStringField;
    cdsContractExcelCONTEMAIL: TStringField;
    actExcelExportSend: TNAction;
    cdsContractListQTY: TFloatField;
    cdsContractListROUND_AMT: TFloatField;
    cdsContractListFOREIGN_CURREXRATE: TFloatField;
    cdsContractListPOSTED: TStringField;
    cdsContractListJRNID: TLargeintField;
    cdsContractListSETTLE_CASH: TStringField;
    cdsContractListSETTLE_STOCK: TStringField;
    gvwMasterAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    cdsContractListACCSOPID: TLargeintField;
    cdsContractListACCINIT: TStringField;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_EXRATE: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_NETAMT: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_CURREXRATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CASH: TcxGridDBBandedColumn;
    gvwMasterSETTLE_STOCK: TcxGridDBBandedColumn;
    cdsContractListEXCELL_CLASS: TIntegerField;
    gvwMasterEXCELL_CLASS: TcxGridDBBandedColumn;
    gvwMasterISMULTICCY: TcxGridDBBandedColumn;
    actSendMail: TNAction;
    actViewSendMail: TNAction;
    cdsContractListCASHMOVEDATE: TDateField;
    cdsContractListSTOCKMOVEDATE: TDateField;
    cdsContractListEMAILID: TLargeintField;
    cdsContractListSENDID: TLargeintField;
    cdsContractListMOVE_CSET: TStringField;
    cdsContractListEMAILSTATUS: TStringField;
    SendContractByEmail1: TMenuItem;
    ViewSendMailContract1: TMenuItem;
    gvwMasterEMAILSTATUS: TcxGridDBBandedColumn;
    actCloseContractAll: TNAction;
    actChangeSettleCcy: TNAction;
    cdsConAlloc: TNClientDataset;
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
    cdsConAllocVALID_COMM_RATE: TFloatField;
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
    cdsConAllocqryConAllocExec: TDataSetField;
    cdsConAllocNETAMT: TFloatField;
    cdsConAllocFOREIGN_NETAMT: TFloatField;
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
    cdsContractENTRYDATE: TDateField;
    cdsContractCASHMOVEDATE: TDateField;
    cdsContractSTOCKMOVEDATE: TDateField;
    cdsContractACCSOPID: TLargeintField;
    cdsContractEMAILID: TLargeintField;
    cdsContractMOVE_CSET: TStringField;
    cdsContractSENDID: TLargeintField;
    cdsContractqryConChargeSum: TDataSetField;
    cdsContractqryConAlloc: TDataSetField;
    cdsContractFOREIGN_EXRATE_MODE: TStringField;
    cdsContractqryConAllocExec: TDataSetField;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    ReportClientSide: TNClientReportContainer;
    ReportBrokerSide: TNClientReportContainer;
    ReportClientTCClientSide: TfrxReportClient;
    ReportClientTCBrokerSide: TfrxReportClient;
    actPrintClientSide: TNAction;
    actPrintBrokerSide: TNAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    PrintClientSide1: TMenuItem;
    actCancelAllContract: TNAction;
    actSettlementInstruction: TNAction;
    actGenerateTDTXT: TNAction;
    actGenerateTDCSV: TNAction;
    GenerateSInvest1: TMenuItem;
    GenerateSInvestTradeDetailTextFile1: TMenuItem;
    GenerateSInvestTradeDetailCSVFile1: TMenuItem;
    actGenerateTCCSV: TNAction;
    actGenerateTCTXT: TNAction;
    GenerateSInvestTradeConfirmation1: TMenuItem;
    FormatTextFile1: TMenuItem;
    FormatCSVFile1: TMenuItem;
    cdsContractListISSINV: TStringField;
    gvwMasterISSINV: TcxGridDBBandedColumn;
    cdsContractListENTRYDATE: TDateField;
    cdsContractListFOREIGN_EXRATE_MODE: TStringField;
    cdsContractListSALDO: TFloatField;
    cdsContractListISWAPU: TStringField;
    actCopyCell: TNAction;
    CopyCell1: TMenuItem;
    dtTransDateStart: TcxBarEditItem;
    cbMarket: TcxBarEditItem;
    chkAllMarket: TcxBarEditItem;
    chkOpen: TcxBarEditItem;
    chkPosted: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    chkReversed: TcxBarEditItem;
    actViewLedgerDetail: TNAction;
    actSendClosedContractByMail: TNAction;
    SendAllClosedContractByMail1: TMenuItem;
    actCloseContractByDate: TNAction;
    CloseContractByDate1: TMenuItem;
    actReCalculateMinFee: TNAction;
    ReCalculateMinimumFee1: TMenuItem;
    N1: TMenuItem;
    cdsContractListADDITIONAL_FEE: TFloatField;
    gvwMasterADDITIONAL_FEE: TcxGridDBBandedColumn;
    cdsContractListEMATERAI: TFloatField;
    cdsContractListNETVALUE_1: TFloatField;
    cdsContractListFOREIGN_NETVALUE: TFloatField;
    gvwMasterNETVALUE_1: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_NETVALUE: TcxGridDBBandedColumn;
    Selected1: TMenuItem;
    actGenerateSelectedContractFile: TNAction;
    actSendTCForStamping: TNAction;
    SendTCforStamping1: TMenuItem;
    gvwMasterFileReportGenerate: TcxGridDBBandedColumn;
    gvwMastereMateraiStatus: TcxGridDBBandedColumn;
    cdsContractListACCCODE: TStringField;
    cdsContractListACC_NAME: TStringField;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACC_NAME: TcxGridDBBandedColumn;
    cdsContractListFileReportGenerate: TLargeintField;
    cdsContractListeMateraiStatus: TStringField;
    cdsGenerateContractToExcel: TNClientDataset;
    actGenerateContactToExcel: TNAction;
    GenerateSelectedContractToExcel1: TMenuItem;
    actSInvestReconTCSelected: TNAction;
    GenerateFile1: TMenuItem;
    SendEmail1: TMenuItem;
    Close1: TMenuItem;
    Print1: TMenuItem;
    cdsContractListReportID: TIntegerField;
    actReportTCByReportID: TNAction;
    PrintByReportType1: TMenuItem;
    actGenerateContractFileByDefault: TNAction;
    GenerateContactFileByDefault1: TMenuItem;
    gvwMasterCONID: TcxGridDBBandedColumn;
    gvwMasterReportID: TcxGridDBBandedColumn;
    cdsReportParameter: TNClientDataset;
    cdsReportParameterDATAKEY: TStringField;
    cdsReportParameterDATAVALUE: TMemoField;
    cdsContractListREPORT_CAPTION: TStringField;
    gvwMasterREPORT_CAPTION: TcxGridDBBandedColumn;
    actViewTransaction: TNAction;
    N6: TMenuItem;
    ViewTransaction2: TMenuItem;
    cdsContractListSTOCKTRANSID: TLargeintField;
    cdsContractListLEDGERTRANSID: TLargeintField;
    cdsContractListfinalFilePatch: TWideStringField;
    cdsContractListfinalFileName: TWideStringField;
    cdsCheckFinalStamping: TNClientDataset;
    cdsCheckFinalStampingCONID: TLargeintField;
    cdsCheckFinalStampingCONCODE: TStringField;
    cdsCheckFinalStampingENTRYDATE: TDateField;
    cdsCheckFinalStampingCONDATE: TDateField;
    cdsCheckFinalStampingCASHSETTLEDATE: TDateField;
    cdsCheckFinalStampingSTOCKSETTLEDATE: TDateField;
    cdsCheckFinalStampingCASHMOVEDATE: TDateField;
    cdsCheckFinalStampingSTOCKMOVEDATE: TDateField;
    cdsCheckFinalStampingMARKETCODE: TStringField;
    cdsCheckFinalStampingAGCTYPE: TStringField;
    cdsCheckFinalStampingACCID: TLargeintField;
    cdsCheckFinalStampingACCNO: TStringField;
    cdsCheckFinalStampingACCNAME: TStringField;
    cdsCheckFinalStampingACCSOPID: TLargeintField;
    cdsCheckFinalStampingCON_ADDR: TStringField;
    cdsCheckFinalStampingCITY: TStringField;
    cdsCheckFinalStampingZIPCODE: TStringField;
    cdsCheckFinalStampingSTOCKID: TLargeintField;
    cdsCheckFinalStampingSTOCKCODE: TStringField;
    cdsCheckFinalStampingSTOCKNAME: TStringField;
    cdsCheckFinalStampingAVGPRICE: TFloatField;
    cdsCheckFinalStampingQTY: TFloatField;
    cdsCheckFinalStampingTC_MODEL: TStringField;
    cdsCheckFinalStampingTC_SENDBY: TStringField;
    cdsCheckFinalStampingSALESID: TLargeintField;
    cdsCheckFinalStampingDEALERID: TLargeintField;
    cdsCheckFinalStampingCCYCODE: TStringField;
    cdsCheckFinalStampingNETTYPE: TStringField;
    cdsCheckFinalStampingVALUEAMT: TFloatField;
    cdsCheckFinalStampingNETVALUE: TFloatField;
    cdsCheckFinalStampingCHARGEAMT: TFloatField;
    cdsCheckFinalStampingCOMMAMT: TFloatField;
    cdsCheckFinalStampingOTC: TFloatField;
    cdsCheckFinalStampingROUND_AMT: TFloatField;
    cdsCheckFinalStampingNETAMT: TFloatField;
    cdsCheckFinalStampingCUSTODYCODE: TStringField;
    cdsCheckFinalStampingSIDNO: TStringField;
    cdsCheckFinalStampingBNCODE: TStringField;
    cdsCheckFinalStampingBANKACCNO: TStringField;
    cdsCheckFinalStampingBANKACCNAME: TStringField;
    cdsCheckFinalStampingSETT_CLEARACC: TStringField;
    cdsCheckFinalStampingSETT_CLEARSUBACC: TStringField;
    cdsCheckFinalStampingFINALSTS: TStringField;
    cdsCheckFinalStampingCONSTS: TStringField;
    cdsCheckFinalStampingISOMG: TStringField;
    cdsCheckFinalStampingISMULTICCY: TStringField;
    cdsCheckFinalStampingFOREIGN_CCYCODE: TStringField;
    cdsCheckFinalStampingFOREIGN_CURREXRATE: TFloatField;
    cdsCheckFinalStampingFOREIGN_EXRATE: TFloatField;
    cdsCheckFinalStampingFOREIGN_NETAMT: TFloatField;
    cdsCheckFinalStampingC_SETTLEMODE: TStringField;
    cdsCheckFinalStampingS_SETTLEMODE: TStringField;
    cdsCheckFinalStampingCASHKEEP: TStringField;
    cdsCheckFinalStampingSTOCKKEEP: TStringField;
    cdsCheckFinalStampingEXRATE: TFloatField;
    cdsCheckFinalStampingSALES_BRANCHID: TLargeintField;
    cdsCheckFinalStampingPOSTED: TStringField;
    cdsCheckFinalStampingJRNID: TLargeintField;
    cdsCheckFinalStampingSETTLE_CASH: TStringField;
    cdsCheckFinalStampingSETTLE_STOCK: TStringField;
    cdsCheckFinalStampingSTOCKTRANSID: TLargeintField;
    cdsCheckFinalStampingSTOCKTRANSID_REVERSED: TLargeintField;
    cdsCheckFinalStampingLEDGERTRANSID: TLargeintField;
    cdsCheckFinalStampingLEDGERTRANSID_REVERSED: TLargeintField;
    cdsCheckFinalStampingS_STS: TStringField;
    cdsCheckFinalStampingC_STS: TStringField;
    cdsCheckFinalStampingEMAILID: TLargeintField;
    cdsCheckFinalStampingMOVE_CSET: TStringField;
    cdsCheckFinalStampingSENDID: TLargeintField;
    cdsCheckFinalStampingFOREIGN_EXRATE_MODE: TStringField;
    cdsCheckFinalStampingSALDO: TFloatField;
    cdsCheckFinalStampingISSINV: TStringField;
    cdsCheckFinalStampingADDMINFEE_BRKFEE: TFloatField;
    cdsCheckFinalStampingADDMINFEE_VAT: TFloatField;
    cdsCheckFinalStampingADDITIONAL_FEE: TFloatField;
    cdsCheckFinalStampingMIN_COMM: TFloatField;
    cdsCheckFinalStampingTOTAL_FEE: TFloatField;
    cdsCheckFinalStampingSTOCK_SETTLE_MODE: TStringField;
    cdsCheckFinalStampingACS_PRICE: TFloatField;
    cdsCheckFinalStampingACS_PERCENT: TFloatField;
    cdsCheckFinalStampingTOTAL_BUY: TFloatField;
    cdsCheckFinalStampingTOTAL_SELL: TFloatField;
    cdsCheckFinalStampingEMATERAI: TFloatField;
    cdsCheckFinalStampingEMATERAI_ID: TLargeintField;
    cdsCheckFinalStampingCOMM_ID: TLargeintField;
    cdsCheckFinalStampingCANCELED_DATE: TDateTimeField;
    cdsCheckFinalStampingCANCELED_SYSDATE: TDateTimeField;
    cdsCheckFinalStampingCANCELED_UI: TStringField;
    cdsCheckFinalStampingINSERT_DATE: TDateTimeField;
    cdsCheckFinalStampingINSERT_SYSTEMDATE: TDateTimeField;
    cdsCheckFinalStampingINSERT_UI: TStringField;
    cdsCheckFinalStampingCLOSED_DATE: TDateTimeField;
    cdsCheckFinalStampingCLOSED_SYSDATE: TDateTimeField;
    cdsCheckFinalStampingCLOSED_UI: TStringField;
    cdsCheckFinalStampingREVERSED: TStringField;
    cdsCheckFinalStampingREVERSED_DATE: TDateTimeField;
    cdsCheckFinalStampingREVERSED_SYSDATE: TDateTimeField;
    cdsCheckFinalStampingREVERSED_UI: TStringField;
    cdsCheckFinalStampingREVERSED_POST: TStringField;
    cdsCheckFinalStampingREVERSED_POST_DATE: TDateTimeField;
    cdsCheckFinalStampingREVERSED_POST_UI: TStringField;
    cdsCheckFinalStampingMODDA: TDateTimeField;
    cdsCheckFinalStampingMODUI: TStringField;
    cdsCheckFinalStampingAPPDA: TDateTimeField;
    cdsCheckFinalStampingAPPUI: TStringField;
    cdsCheckFinalStampingUNDER4Y: TIntegerField;
    cdsCheckFinalStampingUNDER4YDA: TDateTimeField;
    cdsCheckFinalStampingNOTES4Y: TStringField;
    cdsCheckFinalStampingISDEL: TIntegerField;
    cdsCheckFinalStampingID: TLargeintField;
    cdsCheckFinalStampingeMateraiStatus: TStringField;
    cdsCheckFinalStampingfinalFilePatch: TWideStringField;
    cdsCheckFinalStampingfinalFileName: TWideStringField;
    cdsContractListMAIN_ACCOUNTCODE: TStringField;
    cdsContractListMAIN_ACCOUNTNAME: TStringField;
    cdsContractListTRADINGID: TStringField;
    gvwMasterAGCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterCON_ADDR: TcxGridDBBandedColumn;
    gvwMasterCITY: TcxGridDBBandedColumn;
    gvwMasterZIPCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterTC_SENDBY: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterDEALERID: TcxGridDBBandedColumn;
    gvwMasterNETVALUE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYCODE: TcxGridDBBandedColumn;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterSETT_CLEARACC: TcxGridDBBandedColumn;
    gvwMasterSETT_CLEARSUBACC: TcxGridDBBandedColumn;
    gvwMasterFINALSTS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterISOMG: TcxGridDBBandedColumn;
    gvwMasterOTC: TcxGridDBBandedColumn;
    gvwMasterVALUEAMT: TcxGridDBBandedColumn;
    gvwMasterCHARGEAMT: TcxGridDBBandedColumn;
    gvwMasterS_STS: TcxGridDBBandedColumn;
    gvwMasterC_STS: TcxGridDBBandedColumn;
    gvwMasterC_SETTLEMODE: TcxGridDBBandedColumn;
    gvwMasterS_SETTLEMODE: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterSALES_BRANCHID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterROUND_AMT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    gvwMasterCASHMOVEDATE: TcxGridDBBandedColumn;
    gvwMasterSTOCKMOVEDATE: TcxGridDBBandedColumn;
    gvwMasterEMAILID: TcxGridDBBandedColumn;
    gvwMasterSENDID: TcxGridDBBandedColumn;
    gvwMasterMOVE_CSET: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_EXRATE_MODE: TcxGridDBBandedColumn;
    gvwMasterSALDO: TcxGridDBBandedColumn;
    gvwMasterISWAPU: TcxGridDBBandedColumn;
    gvwMasterEMATERAI: TcxGridDBBandedColumn;
    gvwMasterSTOCKTRANSID: TcxGridDBBandedColumn;
    gvwMasterLEDGERTRANSID: TcxGridDBBandedColumn;
    gvwMasterfinalFilePatch: TcxGridDBBandedColumn;
    gvwMasterfinalFileName: TcxGridDBBandedColumn;
    cdsGenConFilestampedFile: TBlobField;
    cdsContractListstampedFile: TBlobField;
    cdsGenConFilestampedFileName: TStringField;
    cdsContractListMAIL_OBJECT_FILE: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actViewTransLegExecute(Sender: TObject);
    procedure actViewTransLegUpdate(Sender: TObject);
    procedure gvwMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actGenerateContractFileExecute(Sender: TObject);
    procedure actGenerateContractFileUpdate(Sender: TObject);
    procedure actViewContractFileUpdate(Sender: TObject);
    procedure actViewContractFileExecute(Sender: TObject);
    procedure actCloseContractExecute(Sender: TObject);
    procedure actCancelContractExecute(Sender: TObject);
    procedure actReverseContractExecute(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actEditUpdate(Sender: TObject);
    procedure actReverseContractUpdate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintPerAllocUpdate(Sender: TObject);
    procedure actPrintPerAllocExecute(Sender: TObject);
    procedure actSplitSIUpdate(Sender: TObject);
    procedure actSplitSIExecute(Sender: TObject);
    procedure actExcelExportExecute(Sender: TObject);
    procedure actExcelExportSendExecute(Sender: TObject);
    procedure actSendMailExecute(Sender: TObject);
    procedure actViewSendMailExecute(Sender: TObject);
    procedure actViewSendMailUpdate(Sender: TObject);
    procedure luMarketPropertiesCloseUp(Sender: TObject);
    procedure actCloseContractAllExecute(Sender: TObject);
    procedure actChangeSettleCcyExecute(Sender: TObject);
    procedure cdsContractFOREIGN_EXRATEChange(Sender: TField);
    procedure actPrintClientSideExecute(Sender: TObject);
    procedure actPrintBrokerSideExecute(Sender: TObject);
    procedure actCancelAllContractExecute(Sender: TObject);
    procedure actCloseContractAllUpdate(Sender: TObject);
    procedure actSettlementInstructionUpdate(Sender: TObject);
    procedure actSettlementInstructionExecute(Sender: TObject);
    procedure actGenerateTDTXTExecute(Sender: TObject);
    procedure actGenerateTDCSVExecute(Sender: TObject);
    procedure actGenerateTCCSVExecute(Sender: TObject);
    procedure actGenerateTCTXTExecute(Sender: TObject);
    procedure actCopyCellExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actViewLedgerDetailExecute(Sender: TObject);
    procedure actSendClosedContractByMailExecute(Sender: TObject);
    procedure actCloseContractByDateExecute(Sender: TObject);
    procedure actGenerateSelectedContractFileExecute(Sender: TObject);
    procedure actGenerateSelectedContractFileUpdate(Sender: TObject);
    procedure actReCalculateMinFeeExecute(Sender: TObject);
    procedure actSendTCForStampingExecute(Sender: TObject);
    procedure cdsContractListFileReportGenerateGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsContractListeMateraiStatusGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure actGenerateContactToExcelExecute(Sender: TObject);
    procedure actReportTCByReportIDExecute(Sender: TObject);
    procedure actGenerateContractFileByDefaultExecute(Sender: TObject);
    procedure actCloseContractByDateUpdate(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
    tempPath: String;
    FOldConOrdersUpdValue: Double;
    FOldConOrdersUpdTOTAL_CHARGES: Double;
    FOldConOrdersUpdTOTAL_AMOUNT: Double;
    FOldConAllocUpdTOTAL_CHARGES: Double;
    FOldConAllocUpdALLOCAMT: Double;

    FSystemDate: TDate;

    function GetReportParameter(AKey: string): string;
    procedure CheckFinalStamping;
  public
    { Public declarations }
    procedure ExportStd1(AFileName: String; ASheet: OleVariant);
    procedure ExportStd2(AFileName: String; ASheet: OleVariant);
    procedure ExportCitigroup(AFileName: String; ASheet: OleVariant);
    procedure ExportDaiwa(AFileName: String; ASheet: OleVariant);
    procedure ExportDBS(AFileName: String; ASheet: OleVariant);
    procedure ExportSchroders(AFileName: String; ASheet: OleVariant);
    procedure ExportOCBC(AFileName: String; ASheet: OleVariant);
    procedure ExportBPJS(AFileName: String; ASheet: OleVariant);
    procedure ExportMerylinch(AFileName: String; ASheet: OleVariant);
  end;

var
  frmContracts: TfrmContracts;

implementation

{$R *.dfm}

uses DataGlobal, FormContract, FormTransLegView, FormGenContractItem,
  FormEditorData, FormGenContractFile, FormConSI, FormSendEmail, FormSendMail,
  FormChangeSettleCcy, FormContractSettlementInstruction, FormLedgerDetail,
  FormReportTCContract, FormViewTransaction, FormPDFViewer;

procedure TfrmContracts.actCancelAllContractExecute(Sender: TObject);
var
  i, RecIdx, iSuccess, iReject: Integer;
  sMessage: String;
begin
  inherited;
end;

procedure TfrmContracts.actCancelContractExecute(Sender: TObject);
var
  i, RecIdx, iSuccess, iReject: Integer;
  sMessage: String;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to cancel multiple Contract?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      iSuccess := 0;
      iReject := 0;

      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (cdsContractListCONSTS.IsNull) or (cdsContractListCONSTS.AsString = 'O') then
        begin
          if dmGlobal.RemoteServer.CancelContract(cdsContractListCONID.AsLargeInt, sMessage) then
            iSuccess := iSuccess + 1
          else
            iReject := iReject + 1;
        end;
      end;

      actRefresh.Execute;
      sMessage := 'Contract Cancelled Success = ' + IntToStr(iSuccess) + ' , Reject = ' + IntToStr(iReject);
      ShowMessage(sMessage);
    end;
  end
  else
  begin
    if MessageDlg('Are you sure to cancel contract ' +
      QuotedStr(cdsContractListCONCODE.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      dmGlobal.RemoteServer.CancelContract(cdsContractListCONID.AsLargeInt,sMessage);
      actRefresh.Execute;
      ShowMessage(sMessage);
    end;
  end;

end;

procedure TfrmContracts.actChangeSettleCcyExecute(Sender: TObject);
//var
//  sCcy: String;
//  fRate: Double;
//  i, RecIdx: Integer;
begin
  inherited;
//  if frmChangeSettleCcy.ChangeSettlementCurrency(sCcy, fRate) = mrOK then
//  begin
//
//    for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
//    begin
//      RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
//      gvwMaster.DataController.FocusedRecordIndex := RecIdx;
//
//      if (cdsContractListCONSTS.IsNull) or (cdsContractListCONSTS.AsString = 'O') then
//      begin
//        cdsContract.Close;
//        cdsContract.Params[0].AsInteger := cdsContractListCONID.AsInteger;
//        cdsContract.Open;
//
//        if (not cdsContract.IsEmpty) And (cdsContractListCONSTS.AsString = 'O') then
//        begin
//          cdsContract.Edit;
//          cdsContractFOREIGN_CCYCODE.AsString := sCcy;
//          cdsContractFOREIGN_EXRATE.AsFloat := fRate;
//          cdsContract.Post;
//
//          cdsContract.ApplyUpdates(0);
//        end;
//      end;
//    end;
//
//    actViewDataList.Execute;
//  end;
end;

procedure TfrmContracts.actCloseContractAllExecute(Sender: TObject);
var
  iSuccess, iReject: integer;
  sMessage, sMsg: string;
begin
  inherited;
//  dmGlobal.RemoteServer.CloseContractAll(VarToDateTime(dtTransDateStart.EditValue), iSuccess, iReject, sMsg);
//  sMessage := '';
//  sMessage := 'Contract Closed Success = ' + IntToStr(iSuccess) + ' , Reject = ' + IntToStr(iReject);
//  sMessage:= sMessage +#13+ sMsg;
//  MessageDlg(sMessage, mtInformation, [mbOk], 0);

//  sMsg := dmGlobal.RemoteServer.PararelCloseContractByDate(VarToDateTime(dtTransDateStart.EditValue));
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  actRefresh.Execute;
end;

procedure TfrmContracts.actCloseContractAllUpdate(Sender: TObject);
begin
  inherited;
  actReverseContract.Enabled := (cdsContractListCONSTS.AsString = 'O');
end;

procedure TfrmContracts.actCloseContractByDateExecute(Sender: TObject);
var
  iSuccess, iReject: integer;
  sMessage, sMsg: string;
  bCon: boolean;
  tmStart, tmEnd: TTime;
begin
  inherited;
  bCon := True;

  if MessageQuestion('Close All Contract By Date ?') then
  begin
    if VarToDateTime(dtTransDateStart.EditValue) <> FSystemDate then
      bCon := MessageQuestion('Contract date is not same as System Date, Continue ?');

    if bCon then
    begin
      tmStart := Now;
      dmGlobal.RemoteServer.CloseContractByDate(VarToDateTime(dtTransDateStart.EditValue), sMsg);
      tmEnd := Now;
      MessageDlg(sMsg +#13+ 'Process Time : '+ FormatDateTime('hh:nn:ss.zzz', tmStart - tmEnd), mtInformation, [mbOk], 0);;

      actRefresh.Execute;
    end;

  end;
end;

procedure TfrmContracts.actCloseContractByDateUpdate(Sender: TObject);
begin
  inherited;
  if cdsContractList.Active then
    actCloseContractByDate.Enabled := (cdsContractList.RecordCount > 0) and (cdsContractListCONSTS.AsString = 'O')
  else
    actCloseContractByDate.Enabled := False;
end;

procedure TfrmContracts.actCloseContractExecute(Sender: TObject);
var
  i, RecIdx, iSuccess, iReject: Integer;
  sMessage: String;
  sVoucherNo: WideString;
  bCon: Boolean;
  tmStart, tmEnd: TTime;
begin
  inherited;
  bCon := True;

  if VarToDateTime(dtTransDateStart.EditValue) <> FSystemDate then
    bCon := MessageQuestion('Contract date is not same as System Date, Continue ?');

  if bCon then
  begin
    if gvwMaster.Controller.SelectedRecordCount > 1 then
    begin
      if MessageDlg('Are you sure to close multiple Contract?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        iSuccess := 0;
        iReject := 0;
        sVoucherNo := '';

        for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          if sVoucherNo <> '' then
            sVoucherNo := sVoucherNo + ';';

          sVoucherNo := sVoucherNo + cdsContractListCONID.AsString;
        end;

        if Length(sVoucherNo) > 0 then
        begin
          tmStart := Now;

          dmGlobal.RemoteServer.CloseContractSelected(sVoucherNo, iSuccess, iReject);
          sMessage := 'Contract Closed Success = ' + IntToStr(iSuccess) + ' , Reject = ' + IntToStr(iReject);
          actRefresh.Execute;

          tmEnd := Now;
          MessageDlg(sMessage +#13+ 'Process Time : '+ FormatDateTime('hh:nn:ss.zzz', tmStart - tmEnd), mtInformation, [mbOk], 0);
        end;

      end;
    end
    else
    begin
      if MessageDlg('Are you sure to close contract ' +
        QuotedStr(cdsContractListCONCODE.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        tmStart := Now;

        dmGlobal.RemoteServer.CloseContract(cdsContractListCONID.AsLargeInt,sMessage);
        actRefresh.Execute;

        tmEnd := Now;
        MessageDlg(sMessage +#13+ 'Process Time : '+ FormatDateTime('hh:nn:ss.zzz', tmStart - tmEnd), mtInformation, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TfrmContracts.actCopyCellExecute(Sender: TObject);
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

procedure TfrmContracts.actEditUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := cdsContractListCONSTS.AsString = 'O';
  end;
end;

procedure TfrmContracts.actExcelExportExecute(Sender: TObject);
var
  sFileName,
  sFilterText,
  sExcelFormat: String;
  iExcelFormat, i: Integer;
  oExcel, oSheet: OleVariant;
begin
  inherited;
  sFilterText := gvwMaster.DataController.Filter.FilterText;

  if (sFilterText <> '') and (gvwMaster.DataController.FilteredRecordCount > 0) then
  begin
    sExcelFormat := dmGlobal.GetStringDelimiter(sFilterText, '(EXCELL_CLASS = ''');
    if sFilterText <> '' then
    begin
      iExcelFormat := StrToInt(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterEXCELL_CLASS.Index]);
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if VarIsNull(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterEXCELL_CLASS.Index]) then
        begin
          MessageError('There still Excel Class not setting');
          Exit;
        end
        else if iExcelFormat <> StrToInt(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterEXCELL_CLASS.Index]) then
        begin
          MessageError('Can not generate excel with different format');
          Exit;
        end;
      end;
    end;
  end;

  if SaveDialog.Execute then
  begin
    sFileName := SaveDialog.FileName;
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.Workbooks.Add;

      oSheet := oExcel.Workbooks[1].WorkSheets[1];
      case iExcelFormat of
        1: ExportStd1(sFileName, oSheet);
        2: ExportStd2(sFileName, oSheet);
        3: ExportCitigroup(sFileName, oSheet);
        4: ExportDaiwa(sFileName, oSheet);
        5: ExportDBS(sFileName, oSheet);
        6: ExportSchroders(sFileName, oSheet);
        7: ExportOCBC(sFileName, oSheet);
        8: ExportBPJS(sFileName, oSheet);
        10: ExportMerylinch(sFileName, oSheet);
      end;

    finally
      oExcel.Workbooks[1].SaveAs(sFileName);

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;

      if FileExists(sFileName) then
      begin
        ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL) ;
      end;
    end;
  end;
end;

procedure TfrmContracts.actExcelExportSendExecute(Sender: TObject);
var
  sFileName: String;
  sCSVFileName: String;
  sFilterText: String;
  iExcelFormat: Integer;
  sExcelFormat: string;
  oExcel, oSheet: OleVariant;
begin
  inherited;
  sFileName := dmGlobal.AppPath + 'Temp\TradeConfirmation.xls';

  if (sFilterText <> '') and (gvwMaster.DataController.FilteredRecordCount > 0) then
  begin
    sExcelFormat := dmGlobal.GetStringDelimiter(sFilterText, 'EXCEL_CLASS = "');
    if sFilterText <> '' then
    begin
      try
        oExcel := CreateOleObject('Excel.Application');
        oExcel.DisplayAlerts := False;
        oExcel.Workbooks.Add;

        oSheet       := oExcel.Workbooks[1].WorkSheets[1];
        iExcelFormat := StrToInt(dmGlobal.GetStringDelimiter(sFilterText, '")'));
        case iExcelFormat of
          1: ExportStd1(sFileName, oSheet);
          2: ExportStd2(sFileName, oSheet);
          3: ExportCitigroup(sFileName, oSheet);
          4: ExportDaiwa(sFileName, oSheet);
          5: ExportDBS(sFileName, oSheet);
          6: ExportSchroders(sFileName, oSheet);
          7: ExportOCBC(sFileName, oSheet);
          8: ExportBPJS(sFileName, oSheet);
          10: ExportMerylinch(sFileName, oSheet);
        end;
      finally
        oExcel.

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;
      end;

      if iExcelFormat = 10 then
      begin
        sCSVFileName := ChangeFileExt(sFileName, '.csv');
        frmSendEmail.NewEmail(cdsContractListACCID.AsInteger, 'TC', sFileName, sCSVFileName);
      end
      else
      begin
        frmSendEmail.NewEmail(cdsContractListACCID.AsInteger, 'TC', sFileName);
      end;
    end;
  end;
end;

procedure TfrmContracts.actGenerateContactToExcelExecute(Sender: TObject);
var
  iRecInd, i, j, iDone, iFail: Integer;
  sFileName: string;
  sMsg, sConID: string;
  bCon: Boolean;
  sBookingName: string;
  oXLS : TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  iRec: integer;
begin
  inherited;
  bCon   := False;
  iDone  := 0;
  iFail  := 0;
  sConID := '';
  iRec   := 0;

  if gvwMaster.Controller.SelectedRowCount > 1 then
    bCon := MessageQuestion('Generate Selected Contract To Excel File ?')
  else
    bCon := MessageQuestion('Generate Contract To Excel File ?');

  sBookingName := '';
  if bCOn then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
    begin
      iRecInd := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := iRecInd;
      sConID  := sConID + cdsContractListCONID.AsString + ';';
    end;

    oXLS := TXLSReadWriteII5.Create(Self);

    cdsGenerateContractToExcel.Close;
    cdsGenerateContractToExcel.Params[0].AsString := sConID;
    cdsGenerateContractToExcel.Open;

    if not cdsGenerateContractToExcel.IsEmpty then
    begin
      try
        cdsGenerateContractToExcel.First;
        while not cdsGenerateContractToExcel.Eof do
        begin
          if not DirectoryExists(dmGlobal.DailyReportFolder) then
            CreateDir(dmGlobal.DailyReportFolder);

          if cdsGenerateContractToExcel.Fields[1].AsString <> sBookingName then
          begin
            if iRec > 0 then
            begin
              oXLS.Write;
              iRec := 0;
            end;

            sBookingName := cdsGenerateContractToExcel.Fields[1].AsString;
            //Free Fist before Create New oXls
            FreeAndNil(oXLS);

            //Create New Excel File
            oXLS          := TXLSReadWriteII5.Create(Self);
            oXLS.Filename := dmGlobal.DailyReportFolder + FormatDateTime('yyyymmdd', dtTransDateStart.EditValue) +'_'+ cdsGenerateContractToExcel.Fields[1].AsString +'_RG.xlsx';
            oXLS.Version  := oXLS.Version;
            oSheet        := oXLS.Sheets[0];
            oSheet.Clear;

            if iRec = 0 then
            begin
              for j := 0 to cdsGenerateContractToExcel.FieldCount -1 do
              begin
                oSheet.AsString[j, 0] := cdsGenerateContractToExcel.Fields[j].FieldName;
              end;
            end;

            iRec := iRec + 1;
            for j := 0 to cdsGenerateContractToExcel.FieldCount -1 do
            begin
              oSheet.AsString[j, iRec] := cdsGenerateContractToExcel.Fields[j].AsString;
            end;

          end
          else
          begin
            iRec := iRec + 1;
            for j := 0 to cdsGenerateContractToExcel.FieldCount -1 do
            begin
              oSheet.AsString[j, iRec] := cdsGenerateContractToExcel.Fields[j].AsString;
            end;
          end;

          cdsGenerateContractToExcel.Next;
        end;
      finally
        oXLS.Write;
        FreeAndNil(oXLS);

        MessageDlg('Generate Contract to Excel has been done !', TMsgDlgType.mtInformation, [mbOk], 0);
      end;
    end
    else
      MessageDlg('There is no data can be generated !', TMsgDlgType.mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmContracts.actGenerateContractFileByDefaultExecute(
  Sender: TObject);
var
  sMsg, sTempMsg: string;
  i, RecIdx, iDone, iFail, iFailed: Integer;
  sReportName: string;
  oForm: TfrmReportTCContract;
  iConID, iReportID: Int64;
begin
  inherited;
  iDone   := 0;
  iFail   := 0;
  iFailed := 0;

  if MessageDlg('Are you sure to generate selected contract by default ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iReportID   := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterReportID.Index];
      sReportName := dmGlobal.IntDataLookup.GetReportTC(iReportID);
      if sReportName = '' then
        Inc(iFailed)
      else
      begin
        if (cdsContractListeMateraiStatus.AsString = '0') then
        begin
          iConID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index];
          dmGlobal.RemoteServer.GenerateContractByType(sReportName, iConID, iReportID, sTempMsg);
          Inc(iDone);
        end
        else
          Inc(iFail);
      end;
    end;

    sMsg := IntToStr(iDone) +' Data(s) has been generate ';
    if iFailed > 0 then
      sMsg := sMsg +#10#13+ IntToStr(iFail) +' Data(s) failed to generate, Error : ''There is no default Report Type TC !''';

    if iFail > 0 then
      sMsg := sMsg +#10#13+ IntToStr(iFail) +' Data(s) failed to generate, Error : ''Can not re-generate contract file !''';

    MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
    cdsContractList.Refresh;
  end;
end;

procedure TfrmContracts.actGenerateContractFileExecute(Sender: TObject);
var
  TrdDateFile: Integer;
  sResult: String;
begin
  inherited;
  TrdDateFile := DateTimeToFileDate(cdsContractList.Params[0].AsDate);
  sResult := dmGlobal.RemoteServer.GenerateContractFile(TrdDateFile);
  ShowMessage(sResult);
end;

procedure TfrmContracts.actGenerateContractFileUpdate(Sender: TObject);
begin
  inherited;
  actGenerateContractFile.Enabled := (cdsContractList.Active) and (not cdsContractList.IsEmpty);
end;

procedure TfrmContracts.actGenerateSelectedContractFileExecute(Sender: TObject);
var
  sMsg, sTempMsg: string;
  i, RecIdx, iDone, iFail: Integer;
  sReportName: string;
  oForm: TfrmReportTCContract;
  iConID, iReportID: Int64;
begin
  inherited;
  iDone := 0;
  iFail := 0;

  if MessageDlg('Are you sure to generate selected contract by type ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    try
      oForm := TfrmReportTCContract.Create(nil);

      TfrmReportTCContract(oForm).edReportID.EditValue := cdsContractListReportID.AsInteger;
      if oForm.ShowModal = mrOk then
      begin
        iReportID   := TfrmReportTCContract(oForm).edReportID.EditValue;
        sReportName := dmGlobal.IntDataLookup.GetReportTC(iReportID);
      end
      else
        exit;

      if sReportName = '' then
      begin
        MessageError('There is no selected Report Type TC');
        exit;
      end;

    finally
      FreeAndNil(oForm);
    end;

    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      if (cdsContractListeMateraiStatus.AsString = '0') then
      begin
        iConID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index];
        dmGlobal.RemoteServer.GenerateContractByType(sReportName, iConID, iReportID, sTempMsg);
        Inc(iDone);
      end
      else
        Inc(iFail);
    end;

    sMsg := IntToStr(iDone) +' Data(s) has been generate ';
    if iFail > 0 then
      sMsg := sMsg +#10#13+ IntToStr(iFail) +' Data(s) failed to generate, Error : ''Can not re-generate contract file !''';

    MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
    cdsContractList.Refresh;
  end;
end;

procedure TfrmContracts.actGenerateSelectedContractFileUpdate(Sender: TObject);
begin
  inherited;
  actGenerateSelectedContractFile.Enabled := (cdsContractList.Active) and (cdsContractListCONSTS.AsString <> 'C');
end;

procedure TfrmContracts.actGenerateTCCSVExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.IntDataSInvest.GenerateTradeConfirmationEquityUpload(VarToDateTime(dtTransDateStart.EditValue), 'csv', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmContracts.actGenerateTCTXTExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.IntDataSInvest.GenerateTradeConfirmationEquityUpload(VarToDateTime(dtTransDateStart.EditValue), 'txt', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmContracts.actGenerateTDCSVExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.IntDataSInvest.GenerateTradeDetailEquityUpload(VarToDateTime(dtTransDateStart.EditValue), 'csv', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmContracts.actGenerateTDTXTExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.IntDataSInvest.GenerateTradeDetailEquityUpload(VarToDateTime(dtTransDateStart.EditValue), 'txt', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmContracts.actPrintBrokerSideExecute(Sender: TObject);
begin
  inherited;
  ReportBrokerSide.Params[0].AsInteger := cdsContractListCONID.AsInteger;
  ReportBrokerSide.PreviewReport;
end;

procedure TfrmContracts.actPrintClientSideExecute(Sender: TObject);
var
  sReportName: string;
  sConID: string;
  i, iReportID, iLastReportID: Integer;
  iDiff: integer;
begin
//  inherited;
//  if cdsContractListISWAPU.AsString = '1' then
//    ReportClientSide.ReportName := 'Middle Office\TradeConfirmation_Client_Wapu.fr3'
//  else
//    ReportClientSide.ReportName := 'Middle Office\TradeConfirmation_Client.fr3';

  iReportID     := 0;
  iLastReportID := 0;

  iDiff  := 0;
  sConID := '';
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    if sConID <> '' then
      sConID := sConID + ',';
    sConID := sConID + IntToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index]);

    iReportID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterReportID.Index];
    if (iLastReportID = 0) or (iReportID = iLastReportID) then
    begin
      sReportName := dmGlobal.IntDataLookup.GetReportTC(cdsContractListReportID.AsInteger);
      if sReportName = '' then
      begin
        MessageError('There is no default Report TC for Account : '+ cdsContractListACCNO.AsString +' - '+ cdsContractListACCNAME.AsString);
        exit;
      end;
    end
    else
      iDiff := iDiff + 1;

    iLastReportID := iReportID;
  end;

  if iDiff = 0 then
  begin
    ReportClientSide.ReportName         := sReportName;
    ReportClientSide.Params[0].AsString := GetReportParameter(sConID);
    ReportClientSide.Params[1].AsString := dmGlobal.UserID;
    ReportClientSide.PreviewReport;
  end
  else
    MessageError('There are different default report type !');
end;

procedure TfrmContracts.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsInteger := cdsContractListCONID.AsInteger;
  inherited;
end;

procedure TfrmContracts.actPrintPerAllocExecute(Sender: TObject);
begin
  inherited;
  if cdsContractListISWAPU.AsString = '1' then
    ReportPerAlloc.ReportName := 'Middle Office\TradeConfirmationPerAlloc_Wapu.fr3'
  else
    ReportPerAlloc.ReportName := 'Middle Office\TradeConfirmationPerAlloc.fr3';
  ReportPerAlloc.Params[0].AsInteger := cdsContractListCONID.AsInteger;
  ReportPerAlloc.PreviewReport;
end;

procedure TfrmContracts.actPrintPerAllocUpdate(Sender: TObject);
begin
  inherited;
  //actPrintPerAlloc.Enabled := cdsContractListTC_MODEL.AsString = 'PO';
end;

procedure TfrmContracts.actReCalculateMinFeeExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageQuestion('ReCalculate Minimum Fee ?') then
  begin
    dmGlobal.RemoteServer.ReCalculateMinimumFee(VarToDateTime(dtTransDateStart.EditValue), sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmContracts.actRefreshExecute(Sender: TObject);
begin
  inherited;
  CheckFinalStamping;

  cdsContractList.Close;
  cdsContractList.Params[0].AsString := chkOpen.EditValue+','+chkPosted.EditValue+','+
                                        chkReversed.EditValue+','+chkCanceled.EditValue;
  cdsContractList.Params[1].AsDate    := VarToDateTime(dtTransDateStart.EditValue);
  cdsContractList.Params[2].AsDate    := VarToDateTime(dtTransDateStart.EditValue);
  cdsContractList.Params[3].AsString  := VarToStr(chkAllMarket.EditValue);
  cdsContractList.Params[4].AsString  := VarToStr(cbMarket.EditValue);
  cdsContractList.Params[5].AsString  := dmGlobal.UserID;
  cdsContractList.Open;
end;

procedure TfrmContracts.actReportTCByReportIDExecute(Sender: TObject);
var
  sReportName: string;
  oForm: TfrmReportTCContract;
  sConID: string;
  i: integer;
begin
  inherited;
  try
    oForm := TfrmReportTCContract.Create(nil);

    TfrmReportTCContract(oForm).edReportID.EditValue := cdsContractListReportID.AsInteger;
    if oForm.ShowModal = mrOk then
      sReportName := dmGlobal.IntDataLookup.GetReportTC(TfrmReportTCContract(oForm).edReportID.EditValue)
    else
      exit;
  finally
    FreeAndNil(oForm);
  end;

  if sReportName = '' then
  begin
    MessageError('There is no Report TC for this type');
    exit;
  end;

  sConID := '';
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    if sConID <> '' then
      sConID := sConID + ',';
    sConID := sConID + IntToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index]);
  end;

  ReportClientSide.ReportName          := sReportName;
  ReportClientSide.Params[0].AsString  := GetReportParameter(sConID);
  ReportClientSide.Params[1].AsString  := dmGlobal.UserID;
  ReportClientSide.PreviewReport;
end;

procedure TfrmContracts.actReverseContractExecute(Sender: TObject);
var
  i, RecIdx, iSuccess, iReject: Integer;
  sMessage: String;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to reverse multiple Contract?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      iSuccess := 0;
      iReject := 0;

      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if dmGlobal.RemoteServer.ReverseContract(cdsContractListCONID.AsLargeInt, sMessage) then
          iSuccess := iSuccess + 1
        else
          iReject := iReject + 1;
      end;

      actRefresh.Execute;
      sMessage := 'Contract Cancelled Success = ' + IntToStr(iSuccess) + ' , Reject = ' + IntToStr(iReject);
      ShowMessage(sMessage);
    end;
  end
  else
  begin
    if MessageDlg('Are you sure to reverse contract ' +
      QuotedStr(cdsContractListCONCODE.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      dmGlobal.RemoteServer.ReverseContract(cdsContractListCONID.AsLargeInt, sMessage);
      actRefresh.Execute;
      ShowMessage(sMessage);
    end;
  end;
end;

procedure TfrmContracts.actReverseContractUpdate(Sender: TObject);
begin
  inherited;
  actReverseContract.Enabled := (cdsContractListCONSTS.AsString = 'S');// and (cdsContractListSETTLE_CASH.AsString = '1') and (cdsContractListSETTLE_STOCK.AsString = '1');
end;

procedure TfrmContracts.actSendClosedContractByMailExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  sMsg := dmGlobal.RemoteServer.SendClosedContractByMail;

  ShowMessage(sMsg);
end;

procedure TfrmContracts.actSendMailExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sMsg: String;
  sReportName: string;
  iSucc, iFail: integer;
  iReportId, iContractId: Largeint;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    iSucc := 0;
    iFail := 0;

    if MessageDlg('Are you sure to send multiple Contract By Email?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;

        iReportId   := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterReportID.Index];
        iContractId := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index];

        if cdsContractListFileReportGenerate.AsInteger <> 0 then
        begin
          sReportName := dmGlobal.IntDataLookup.GetReportTC(iReportId);
          if sReportName <> '' then
            dmGlobal.RemoteServer.SendContractByMail(iContractId, sReportName);
          iSucc := iSucc + 1;
        end
        else
          iFail := iFail + 1;
      end;

//      actViewDataList.Execute;
      if iFail > 0 then
        ShowMessage(FormatFloat('#,##0', iFail) +' data has failed to send email, please generate file first');

      if iSucc > 0 then
        ShowMessage('Proses send contract is on progress in Server.');
    end;
  end
  else
  begin
    if MessageDlg('Are you sure to send contract ' +
      QuotedStr(cdsContractListCONCODE.AsString) + ' By Email?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      sReportName := dmGlobal.IntDataLookup.GetReportTC(cdsContractListReportID.AsInteger);
      if cdsContractListFileReportGenerate.AsInteger <> 0 then
      begin
        dmGlobal.RemoteServer.SendContractByMail(cdsContractListCONID.AsLargeInt, sReportName);
  //      actViewDataList.Execute;
        ShowMessage('Proses send contract is on progress in Server.');
      end
      else
      begin
        sMsg := FormatFloat('#,##0', iFail) +' data has failed to send email, please generate file first';
        ShowMessage(sMsg);
      end;
    end;
  end;
end;

procedure TfrmContracts.actSendTCForStampingExecute(Sender: TObject);
var
  iConID: Integer;
  i, iAccID, RecIdx: Integer;
  sMsg, sMessage: string;
  iDone, iFail: integer;
  bRes: Boolean;
begin
  inherited;
  if not MessageQuestion('Send Trade Confirmation for stamping ?') then
    exit;

  iDone := 0;
  iFail := 0;
  sMsg  := '';

  for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    if cdsContractListeMateraiStatus.AsString = '0' then
    begin
      bRes := dmGlobal.RemoteServer.GenerateStamping(cdsContractListCONID.AsLargeInt, sMsg);
      if bRes then
        Inc(iDone)
      else
      begin
        Inc(iFail);
      end;
    end
    else
      Inc(iFail);
  end;

  sMessage := FormatFloat('#,##0', iDone) +' file(s) has been sent for stamping and '+
    FormatFloat('#,##0', iFail) +' has failed to sent for stamping';

  if sMsg <> '' then
    sMessage := sMessage + #13#10 + sMsg;

  MessageDlg(sMessage, mtInformation, [mbOk], 0);
  cdsContractList.Refresh;
end;

procedure TfrmContracts.actSettlementInstructionExecute(Sender: TObject);
var
  oForm: TfrmContractSettlementInstruction;
begin
  inherited;
  oForm := TfrmContractSettlementInstruction.Create(nil);
  begin
    try
      with oForm do
      begin
        cdsContractAllocH.Close;
        cdsContractAllocH.Params[0].AsInteger := cdsContractListCONID.AsInteger;
        cdsContractAllocH.Open;

        cdsContractAllocD.Close;
        cdsContractAllocD.Params[0].AsInteger := cdsContractListCONID.AsInteger;
        cdsContractAllocD.Open;

        cdsContract.Close;
        cdsContract.Params[0].AsInteger := cdsContractListCONID.AsInteger;
        cdsContract.Open;
      end;

      oForm.ShowModal;
    finally
      FreeAndNil(oForm);
    end;
  end;
end;

procedure TfrmContracts.actSettlementInstructionUpdate(Sender: TObject);
begin
  inherited;
  actSettlementInstruction.Enabled := (cdsContractListTC_MODEL.AsString = 'PO')
    and (cdsContractListSETTLE_STOCK.AsString = '0')
    and (cdsContractListSTOCKKEEP.AsString <> '1')
    and (cdsContractListSETTLE_CASH.AsString <> '1');
end;

procedure TfrmContracts.actSplitSIExecute(Sender: TObject);
var
  oForm: TfrmConSI;
begin
  inherited;
//  cdsConSI.Close;
//  cdsConSI.Params[0].AsInteger := cdsContractListCONID.AsInteger;
//  cdsConSI.Open;
//
//  if not cdsConSI.IsEmpty then
//  begin
//    oForm := TfrmConSI.Create(nil);
//    Try
//      with oForm do
//      begin
//        cdsConSettleLink.Close;
//        cdsConSettleLink.Params[0].AsInteger := cdsContractListCONID.AsInteger;
//        cdsConSettleLink.Open;
//      end;
//      oForm.ShowModal;
//    Finally
//      FreeAndNil(oForm);
//    End;
//
//  end;

end;

procedure TfrmContracts.actSplitSIUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := cdsContractListCONSTS.AsString = 'S';
  end;
end;

procedure TfrmContracts.actViewContractFileExecute(Sender: TObject);
var
  BlobStream: TStream;
  FileName : string;
  wFileName : array [0..255] of WideChar;

  oStream: TMemoryStream;
  sFileName: string;
  sMsg: string;
  bView: boolean;
begin
  inherited;
  bView := True;

  try
    oStream := TMemoryStream.Create;

    if cdsContractListstampedFile.IsNull then
    begin
      if cdsContractListMAIL_OBJECT_FILE.IsNull then
      begin
        ShowMessage('This contract file not generated. Please generate this contract file again!');
        bView := False;
      end
      else
      begin
        if (cdsContractListeMateraiStatus.AsString = '0') or (cdsContractListeMateraiStatus.AsString = '1') then
          TBlobField(cdsContractListMAIL_OBJECT_FILE).SaveToStream(oStream)
        else
        begin
          if dmGlobal.RemoteServer.GetStampedContrac(cdsContractListCONID.AsInteger, sMsg) then
          begin
            cdsContractList.Refresh;
            TBlobField(cdsContractListstampedFile).SaveToStream(oStream);
          end;
        end;
      end;
    end
    else
      TBlobField(cdsContractListstampedFile).SaveToStream(oStream);

    if bView then
      frmPDFViewer.Run(oStream);
  finally
    FreeAndNil(oStream);
  end;
end;

procedure TfrmContracts.actViewContractFileUpdate(Sender: TObject);
begin
  inherited;
  actViewContractFile.Enabled := (cdsContractList.Active) and (not cdsContractList.IsEmpty);
end;

procedure TfrmContracts.actViewLedgerDetailExecute(Sender: TObject);
var
  iLinkID: Int64;
  sLinkType: string;
  sCCY : string;
  iCPID : Integer;
  dExrate : double;
begin
  inherited;
//  sLinkType := gvwBrowse.Controller.SelectedRecords[0].Values[gvwBrowseLINKTYPE.Index];
//  iLinkID   := gvwBrowse.Controller.SelectedRecords[0].Values[gvwBrowseLINKID.Index];
  sLinkType := 'CONID';
  iLinkID   := cdsContractListCONID.AsInteger;
  sCCY      := cdsContractListCCYCODE.AsString;
  iCPID     := 0;
  dExrate   := cdsContractListEXRATE.AsFloat;

  frmLedgerDetail.Run(sLinkType, sCCY, iLinkID,iCPID,dExrate);
end;

procedure TfrmContracts.actViewSendMailExecute(Sender: TObject);
begin
  inherited;
  if not cdsContractListSENDID.IsNull then
  begin
    frmSendMail.ViewSendMail(cdsContractListSENDID.AsInteger);
  end;
end;

procedure TfrmContracts.actViewSendMailUpdate(Sender: TObject);
begin
  inherited;
  actViewSendMail.Enabled := not cdsContractListSENDID.IsNull;
end;

procedure TfrmContracts.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsContractListCONDATE.AsDateTime;
    iLedgerTransID := cdsContractListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := cdsContractListSTOCKTRANSID.AsLargeInt;
    iFundTransID   := -1;

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

procedure TfrmContracts.actViewTransLegExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  cdsTransLegCash.Close;
  cdsTransLegCash.Params[0].AsInteger := cdsContractListCONID.AsInteger;
  cdsTransLegCash.Open;

  cdsTransLegStock.Close;
  cdsTransLegStock.Params[0].AsInteger := cdsContractListCONID.AsInteger;
  cdsTransLegStock.Open;

  oForm := TfrmTransLegView.Create(nil);
  Try
    oForm.ShowModal;
  Finally
    oForm.Free;
  End;
end;

procedure TfrmContracts.actViewTransLegUpdate(Sender: TObject);
begin
  inherited;
  actViewTransLeg.Enabled := (cdsContractList.Active) and (not cdsContractList.IsEmpty);
end;

procedure TfrmContracts.cdsContractFOREIGN_EXRATEChange(Sender: TField);
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

procedure TfrmContracts.cdsContractListeMateraiStatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '0' then Text := 'None'
  else if Sender.AsString = '1' then Text := 'Stamping'
  else Text := 'Stamped';  
end;

procedure TfrmContracts.cdsContractListFileReportGenerateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger = 0 then Text := 'Not Generate File' else Text := 'Generated File';
end;

procedure TfrmContracts.CheckFinalStamping;
var
  sTmpMsg, sMsg: string;
begin
  try
    sTmpMsg := '';
    sMsg    := '';

    cdsCheckFinalStamping.Close;
    cdsCheckFinalStamping.Open;

    if not cdsCheckFinalStamping.IsEmpty then
    begin
      cdsCheckFinalStamping.First;
      while not cdsCheckFinalStamping.Eof do
      begin
        if not dmGlobal.RemoteServer.GenerateCheckReportEMaterai(cdsCheckFinalStampingCONID.aslargeInt, sTmpMsg) then
          sMsg := sMsg + #13#10 + sTmpMsg;

        cdsCheckFinalStamping.Next;
      end;
    end;
  finally
    cdsContractList.Refresh;
  end;
end;

procedure TfrmContracts.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmContract;
end;

procedure TfrmContracts.ExportBPJS(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[1, 1]  := 'KODE BROKER';
  ASheet.Cells[1, 2]  := 'NPWP';
  ASheet.Cells[1, 3]  := 'PHONE';
  ASheet.Cells[1, 4]  := 'FAX';
  ASheet.Cells[1, 5]  := 'EMAIL';
  ASheet.Cells[1, 6]  := 'CURRENCY';
  ASheet.Cells[1, 7]  := 'ORDER';
  ASheet.Cells[1, 8]  := 'STOCK';
  ASheet.Cells[1, 9]  := 'TGL TRANSAKSI';
  ASheet.Cells[1, 10] := 'TGL SETTLEMENT';
  ASheet.Cells[1, 11] := 'QUANTITY';
  ASheet.Cells[1, 12] := 'PRICE';
  ASheet.Cells[1, 13] := 'AMOUNT';
  ASheet.Cells[1, 14] := 'COMMISION';
  ASheet.Cells[1, 15] := 'VAT';
  ASheet.Cells[1, 16] := 'LEVY';
  ASheet.Cells[1, 17] := 'SALES TAX';
  ASheet.Cells[1, 18] := 'PPH23';
  ASheet.Cells[1, 19] := 'NET AMOUNT';

  LastRow := 2;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 1] := 'BR158';
        ASheet.Cells[LastRow, 2] := cdsContractExcelNPWP.AsString;
        ASheet.Cells[LastRow, 3] := cdsContractExcelCONTPHONE.AsString;
        ASheet.Cells[LastRow, 4] := cdsContractExcelCONTFAX.AsString;
        ASheet.Cells[LastRow, 5] := cdsContractExcelCONTEMAIL.AsString;
        ASheet.Cells[LastRow, 6] := cdsContractExcelCCYCODE.AsString;
        if cdsContractExcelBS.AsString = 'B' then
          ASheet.Cells[LastRow, 7] := 'BUY'
        else if cdsContractExcelBS.AsString = 'S' then
          ASheet.Cells[LastRow, 7] := 'SELL';
        ASheet.Cells[LastRow, 8] := cdsContractExcelSTOCKCODE.AsString;
        ASheet.Cells[LastRow, 9] := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 10] := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 11] := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 12] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelVAT.AsFloat;
        ASheet.Cells[LastRow, 16] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 17] := cdsContractExcelSELLTAX.AsFloat;
        ASheet.Cells[LastRow, 18] := cdsContractExcelWHT.AsFloat;
        ASheet.Cells[LastRow, 19] := cdsContractExcelALLOCAMT.AsFloat;

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;

end;

procedure TfrmContracts.ExportCitigroup(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[1, 1] := 'Kode';
  ASheet.Cells[1, 2] := 'Cust Accnt IMS';
  ASheet.Cells[1, 3] := 'Our A/C Ref';
  ASheet.Cells[1, 4] := 'Shares';
  ASheet.Cells[1, 5] := 'ISIN Code';
  ASheet.Cells[1, 6] := 'Security Desc';
  ASheet.Cells[1, 7] := 'B/S';
  ASheet.Cells[1, 8] := 'Trade Dt';
  ASheet.Cells[1, 9] := 'Stlmnt Dt';
  ASheet.Cells[1, 10] := 'Quantity';
  ASheet.Cells[1, 11] := 'Price';
  ASheet.Cells[1, 12] := 'Net Money';
  ASheet.Cells[1, 13] := 'Principal Amnt';
  ASheet.Cells[1, 14] := 'Comm Amnt';
  ASheet.Cells[1, 15] := 'Levy';
  ASheet.Cells[1, 16] := 'Sales Tax';

  LastRow := 2;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 0]  := cdsContractExcelACCNO.AsString;
        ASheet.Cells[LastRow, 1]  := cdsContractExcelACCNAME.AsString;
        ASheet.Cells[LastRow, 2]  := 'BAHANAL';
        ASheet.Cells[LastRow, 3]  := cdsContractExcelSTOCKCODE.AsString;
        ASheet.Cells[LastRow, 4]  := cdsContractExcelISINCODE.AsString;
        ASheet.Cells[LastRow, 5]  := cdsContractExcelSTOCKNAME.AsString;
        ASheet.Cells[LastRow, 6]  := cdsContractExcelBS.AsString;
        ASheet.Cells[LastRow, 7]  := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 8]  := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 9]  := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 10] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 11] := cdsContractExcelALLOCAMT.AsFloat;
        ASheet.Cells[LastRow, 12] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelSELLTAX.AsFloat;

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;
end;

procedure TfrmContracts.ExportDaiwa(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[1, 1] := 'From: BAHANA SECURITIES';
  ASheet.Cells[2, 2] := 'Account name: Daiwa Capital Markets (Hong Kong) Ltd';

  ASheet.Cells[3, 1]  := 'Broker ID';
  ASheet.Cells[3, 2]  := 'Trade Date';
  ASheet.Cells[3, 3]  := 'Value Date';
  ASheet.Cells[3, 4]  := 'B/S';
  ASheet.Cells[3, 5]  := 'ISIN';
  ASheet.Cells[3, 6]  := 'Instrument Name';
  ASheet.Cells[3, 7]  := 'Currency';
  ASheet.Cells[3, 8]  := 'Price';
  ASheet.Cells[3, 9]  := 'Quantity';
  ASheet.Cells[3, 10] := 'Commission';
  ASheet.Cells[3, 11] := 'Consideration';
  ASheet.Cells[3, 12] := 'Net Consideration';
  ASheet.Cells[3, 13] := 'VAT';
  ASheet.Cells[3, 14] := 'Transaction Levy';
  ASheet.Cells[3, 15] := 'Sales Tax';
  ASheet.Cells[3, 16] := 'Local Stock Code';

  LastRow := 4;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 1] := '980912434';
        ASheet.Cells[LastRow, 2] := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 3] := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 4] := cdsContractExcelBS.AsString;
        ASheet.Cells[LastRow, 5] := cdsContractExcelISINCODE.AsString;
        ASheet.Cells[LastRow, 6] := cdsContractExcelSTOCKNAME.AsString;
        ASheet.Cells[LastRow, 7] := cdsContractExcelCCYCODE.AsString;
        ASheet.Cells[LastRow, 8] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 9] := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 10] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 11] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 12] := cdsContractExcelALLOCAMT.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelVAT.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelSELLTAX.AsFloat;
        ASheet.Cells[LastRow, 16] := cdsContractExcelSTOCKCODE.AsString;

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;

end;

procedure TfrmContracts.ExportDBS(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[1, 1] := 'Contract No.';
  ASheet.Cells[1, 2] := 'Account No.';
  ASheet.Cells[1, 3] := 'Memo';
  ASheet.Cells[1, 4] := 'Booking Name';
  ASheet.Cells[1, 5] := 'Shares';
  ASheet.Cells[1, 6] := 'ISIN Code';
  ASheet.Cells[1, 7] := 'SEDOL';
  ASheet.Cells[1, 8] := 'Security Desc';
  ASheet.Cells[1, 9] := 'B/S';
  ASheet.Cells[1, 10] := 'Trade Dt';
  ASheet.Cells[1, 11] := 'Stlmnt Dt';
  ASheet.Cells[1, 12] := 'Quantity';
  ASheet.Cells[1, 13] := 'Price';
  ASheet.Cells[1, 14] := 'Principal Amount';
  ASheet.Cells[1, 15] := 'Commission';
  ASheet.Cells[1, 16] := 'VAT';
  ASheet.Cells[1, 17] := 'Levy';
  ASheet.Cells[1, 18] := 'Sales Tax';
  ASheet.Cells[1, 19] := 'WH Tax';
  ASheet.Cells[1, 20] := 'Net Amount (IDR)';
  ASheet.Cells[1, 21] := 'Ccy';
  ASheet.Cells[1, 22] := 'Ex Rate';
  ASheet.Cells[1, 23] := 'Net Amount FX';

  LastRow := 2;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 1]  := cdsContractExcelCONCODE.AsString;
        ASheet.Cells[LastRow, 2]  := cdsContractExcelACCNO.AsString;
        ASheet.Cells[LastRow, 3]  := RightStr(cdsContractExcelACCINIT.AsString, 7);
        ASheet.Cells[LastRow, 4]  := cdsContractExcelACCNAME.AsString;
        ASheet.Cells[LastRow, 5]  := cdsContractExcelSTOCKCODE.AsString;
        ASheet.Cells[LastRow, 6]  := cdsContractExcelISINCODE.AsString;
        ASheet.Cells[LastRow, 7]  := cdsContractExcelSEDOL.AsString;
        ASheet.Cells[LastRow, 8]  := cdsContractExcelSTOCKNAME.AsString;
        ASheet.Cells[LastRow, 9]  := cdsContractExcelBS.AsString;
        ASheet.Cells[LastRow, 10] := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 11] := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 12] := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 16] := cdsContractExcelVAT.AsFloat;
        ASheet.Cells[LastRow, 17] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 18] := cdsContractExcelSELLTAX.AsFloat;
        ASheet.Cells[LastRow, 19] := cdsContractExcelWHT.AsFloat;
        ASheet.Cells[LastRow, 20] := cdsContractExcelALLOCAMT.AsFloat;
        if cdsContractExcelISMULTICCY.AsString = '0' then
        begin
          ASheet.Cells[LastRow, 21] := cdsContractExcelCCYCODE.AsString;
          ASheet.Cells[LastRow, 22] := 1;
          ASheet.Cells[LastRow, 23] := cdsContractExcelALLOCAMT.AsFloat;
        end
        else
        begin
          ASheet.Cells[LastRow, 21] := cdsContractExcelFOREIGN_CCYCODE.AsString;
          ASheet.Cells[LastRow, 22] := cdsContractExcelFOREIGN_EXRATE.AsFloat;
          ASheet.Cells[LastRow, 23] := cdsContractExcelFOREIGN_ALLOCAMT.AsFloat;
        end;

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;

end;

procedure TfrmContracts.ExportMerylinch(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
  slCSV: TStringList;
  sCSVFileName: String;
begin
  //Set Excel Header
  ASheet.Cells[1, 1] := 'Contract No.';
  ASheet.Cells[1, 2] := 'Account No.';
  ASheet.Cells[1, 3] := 'Memo';
  ASheet.Cells[1, 4] := 'Booking Name';
  ASheet.Cells[1, 5] := 'Shares';
  ASheet.Cells[1, 6] := 'ISIN Code';
  ASheet.Cells[1, 7] := 'Security Desc';
  ASheet.Cells[1, 8] := 'B/S';
  ASheet.Cells[1, 9] := 'Trade Dt';
  ASheet.Cells[1, 10] := 'Stlmnt Dt';
  ASheet.Cells[1, 11] := 'Quantity';
  ASheet.Cells[1, 12] := 'Price';
  ASheet.Cells[1, 13] := 'Principal Amount';
  ASheet.Cells[1, 14] := 'Commission';
  ASheet.Cells[1, 15] := 'VAT';
  ASheet.Cells[1, 16] := 'Levy';
  ASheet.Cells[1, 17] := 'Sales Tax';
  ASheet.Cells[1, 18] := 'WH Tax';
  ASheet.Cells[1, 19] := 'Net Amount (IDR)';
  ASheet.Cells[1, 20] := 'Ccy';
  ASheet.Cells[1, 21] := 'Ex Rate';
  ASheet.Cells[1, 22] := 'Net Amount FX';

  LastRow := 2;

  sCSVFileName := ChangeFileExt(AFileName, '.csv');
  slCSV := TStringList.Create;

  Try
    for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
    begin
      RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := RecIdx;

      cdsContractExcel.Close;
      cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
      cdsContractExcel.Open;

      if not cdsContractExcel.IsEmpty then
      begin
        cdsContractExcel.First;
        while not cdsContractExcel.Eof do
        begin
          ASheet.Cells[LastRow, 1]  := cdsContractExcelCONCODE.AsString;
          ASheet.Cells[LastRow, 2]  := cdsContractExcelACCNO.AsString;
          ASheet.Cells[LastRow, 3]  := 'Memo';
          ASheet.Cells[LastRow, 4]  := cdsContractExcelACCNAME.AsString;
          ASheet.Cells[LastRow, 5]  := cdsContractExcelSTOCKCODE.AsString;
          ASheet.Cells[LastRow, 6]  := cdsContractExcelISINCODE.AsString;
          ASheet.Cells[LastRow, 7]  := cdsContractExcelSTOCKNAME.AsString;
          ASheet.Cells[LastRow, 8]  := cdsContractExcelBS.AsString;
          ASheet.Cells[LastRow, 9]  := cdsContractExcelCONDATE.AsDateTime;
          ASheet.Cells[LastRow, 10] := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
          ASheet.Cells[LastRow, 11] := cdsContractExcelAQTY.AsFloat;
          ASheet.Cells[LastRow, 12] := cdsContractExcelAPRICE.AsFloat;
          ASheet.Cells[LastRow, 13] := cdsContractExcelAVALUE.AsFloat;
          ASheet.Cells[LastRow, 14] := cdsContractExcelBROKERFEE.AsFloat;
          ASheet.Cells[LastRow, 15] := cdsContractExcelVAT.AsFloat;
          ASheet.Cells[LastRow, 16] := cdsContractExcelCHARGES.AsFloat;
          ASheet.Cells[LastRow, 17] := cdsContractExcelSELLTAX.AsFloat;
          ASheet.Cells[LastRow, 18] := cdsContractExcelWHT.AsFloat;
          ASheet.Cells[LastRow, 19] := cdsContractExcelALLOCAMT.AsFloat;
          if cdsContractExcelISMULTICCY.AsString = '0' then
          begin
            ASheet.Cells[LastRow, 20] := cdsContractExcelCCYCODE.AsString;
            ASheet.Cells[LastRow, 21] := 1;
            ASheet.Cells[LastRow, 22] := cdsContractExcelALLOCAMT.AsFloat;
          end
          else
          begin
            ASheet.Cells[LastRow, 20] := cdsContractExcelFOREIGN_CCYCODE.AsString;
            ASheet.Cells[LastRow, 21] := cdsContractExcelFOREIGN_EXRATE.AsFloat;
            ASheet.Cells[LastRow, 22] := cdsContractExcelFOREIGN_ALLOCAMT.AsFloat;
          end;

          slCSV.Add(ASheet.Cells[LastRow, 1] + ';' +
            ASheet.Cells[LastRow, 2] + ';' +
            ASheet.Cells[LastRow, 3] + ';' +
            ASheet.Cells[LastRow, 4] + ';' +
            ASheet.Cells[LastRow, 5] + ';' +
            ASheet.Cells[LastRow, 6] + ';' +
            ASheet.Cells[LastRow, 7] + ';' +
            ASheet.Cells[LastRow, 8] + ';' +
            ASheet.Cells[LastRow, 9] + ';' +
            ASheet.Cells[LastRow, 10] + ';' +
            ASheet.Cells[LastRow, 11] + ';' +
            ASheet.Cells[LastRow, 12] + ';' +
            ASheet.Cells[LastRow, 13] + ';' +
            ASheet.Cells[LastRow, 14] + ';' +
            ASheet.Cells[LastRow, 15] + ';' +
            ASheet.Cells[LastRow, 16] + ';' +
            ASheet.Cells[LastRow, 17] + ';' +
            ASheet.Cells[LastRow, 18] + ';' +
            ASheet.Cells[LastRow, 19] + ';' +
            ASheet.Cells[LastRow, 20] + ';' +
            ASheet.Cells[LastRow, 21] + ';' +
            ASheet.Cells[LastRow, 22] );

          Inc(LastRow);
          cdsContractExcel.Next;
        end;
      end;
    end;

    slCSV.SaveToFile(sCSVFileName);
  Finally
    FreeAndNil(slCSV);
  End;

//  XLS.Write;

end;

procedure TfrmContracts.ExportOCBC(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[5, 1]  := 'Contract No.';
  ASheet.Cells[5, 2]  := 'Account No.';
  ASheet.Cells[5, 3]  := 'Memo';
  ASheet.Cells[5, 4]  := 'Booking Name';
  ASheet.Cells[5, 5]  := 'Shares';
  ASheet.Cells[5, 6]  := 'ISIN Code';
  ASheet.Cells[5, 7]  := 'Security Desc';
  ASheet.Cells[5, 8]  := 'B/S';
  ASheet.Cells[5, 9]  := 'Trade Dt';
  ASheet.Cells[5, 10] := 'Stlmnt Dt';
  ASheet.Cells[5, 11] := 'Quantity';
  ASheet.Cells[5, 12] := 'Price';
  ASheet.Cells[5, 13] := 'Principal Amount';
  ASheet.Cells[5, 14] := 'Commission';
  ASheet.Cells[5, 15] := 'VAT';
  ASheet.Cells[5, 16] := 'Levy';
  ASheet.Cells[5, 17] := 'Sales Tax';
  ASheet.Cells[5, 18] := 'WH Tax';
  ASheet.Cells[5, 19] := 'Net Amount (IDR)';
  ASheet.Cells[5, 20] := 'Ccy';
  ASheet.Cells[5, 21] := 'Ex Rate';
  ASheet.Cells[5, 22] := 'Net Amount FX';

  LastRow := 6;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 1]  := cdsContractExcelCONCODE.AsString;
        ASheet.Cells[LastRow, 2]  := cdsContractExcelACCNO.AsString;
//        ASheet.Cells[2, LastRow] := cdsContractExcelACCINIT.AsString + '-' + cdsContractExcelACCID.AsString;
        ASheet.Cells[LastRow, 3]  := cdsContractExcelACCINIT.AsString;//Request By Irvan 20160216
        ASheet.Cells[LastRow, 4]  := cdsContractExcelACCNAME.AsString;
        ASheet.Cells[LastRow, 5]  := cdsContractExcelSTOCKCODE.AsString;
        ASheet.Cells[LastRow, 6]  := cdsContractExcelISINCODE.AsString;
        ASheet.Cells[LastRow, 7]  := cdsContractExcelSTOCKNAME.AsString;
        ASheet.Cells[LastRow, 8]  := cdsContractExcelBS.AsString;
        ASheet.Cells[LastRow, 9]  := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 10] := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 11] := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 12] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelVAT.AsFloat;
        ASheet.Cells[LastRow, 16] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 17] := cdsContractExcelSELLTAX.AsFloat;
        ASheet.Cells[LastRow, 18] := cdsContractExcelWHT.AsFloat;
        ASheet.Cells[LastRow, 19] := cdsContractExcelALLOCAMT.AsFloat;
        if cdsContractExcelISMULTICCY.AsString = '0' then
        begin
          ASheet.Cells[LastRow, 20] := cdsContractExcelCCYCODE.AsString;
          ASheet.Cells[LastRow, 21] := 1;
          ASheet.Cells[LastRow, 22] := cdsContractExcelALLOCAMT.AsFloat;
        end
        else
        begin
          ASheet.Cells[LastRow, 20] := cdsContractExcelFOREIGN_CCYCODE.AsString;
          ASheet.Cells[LastRow, 21] := cdsContractExcelFOREIGN_EXRATE.AsFloat;
          ASheet.Cells[LastRow, 22] := cdsContractExcelFOREIGN_ALLOCAMT.AsFloat;
        end;

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;

end;

procedure TfrmContracts.ExportSchroders(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[1, 1]  := 'Portfolio';
  ASheet.Cells[1, 2]  := 'Portfolio ID';
  ASheet.Cells[1, 3]  := 'Trans No.';
  ASheet.Cells[1, 4]  := 'B/S';
  ASheet.Cells[1, 5]  := 'Trade Date';
  ASheet.Cells[1, 6]  := 'Settle Date';
  ASheet.Cells[1, 7]  := 'Security';
  ASheet.Cells[1, 8]  := 'ISIN';
  ASheet.Cells[1, 9]  := 'QC';
  ASheet.Cells[1, 10] := 'Quantity';
  ASheet.Cells[1, 10] := 'Price';
  ASheet.Cells[1, 11] := 'Gross Amount';
  ASheet.Cells[1, 12] := 'Commission';
  ASheet.Cells[1, 13] := 'Trans Levy';
  ASheet.Cells[1, 14] := 'VAT';
  ASheet.Cells[1, 15] := 'Sales Tax';
  ASheet.Cells[1, 16] := 'Other Charges';
  ASheet.Cells[1, 17] := 'Total';
  ASheet.Cells[1, 18] := 'WHT on';
  ASheet.Cells[2, 19] := 'VAT2';
  ASheet.Cells[2, 20] := 'Net Settlement Amo';
  ASheet.Cells[2, 21] := 'Broker ID';
  ASheet.Cells[2, 22] := 'Broker';
  ASheet.Cells[2, 23] := 'Type Of Transaction';
  ASheet.Cells[2, 24] := 'Settlement Location';
  ASheet.Cells[2, 25] := 'Custodian';

  LastRow := 3;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 1]  := cdsContractExcelACCNAME.AsString;
        ASheet.Cells[LastRow, 2]  := cdsContractExcelACCID.AsInteger;
        ASheet.Cells[LastRow, 3]  := cdsContractExcelCONCODE.AsString;
        ASheet.Cells[LastRow, 4]  := cdsContractExcelBS.AsString;
        ASheet.Cells[LastRow, 5]  := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 6]  := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 7]  := cdsContractExcelSTOCKCODE.AsString;
        ASheet.Cells[LastRow, 8]  := cdsContractExcelISINCODE.AsString;
        ASheet.Cells[LastRow, 9]  := cdsContractExcelCCYCODE.AsString;
        ASheet.Cells[LastRow, 10] := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 12] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 16] := cdsContractExcelVAT.AsFloat;
        ASheet.Cells[LastRow, 17] := cdsContractExcelSELLTAX.AsFloat;
        ASheet.Cells[LastRow, 18] := 0;
        ASheet.Cells[LastRow, 19] := cdsContractExcelALLOCAMT.AsFloat;
        ASheet.Cells[LastRow, 20] := cdsContractExcelWHT.AsFloat;
        ASheet.Cells[LastRow, 21] := 0;
        ASheet.Cells[LastRow, 22] := cdsContractExcelALLOCAMT.AsFloat;
        ASheet.Cells[LastRow, 23] := 'PTB002';
        ASheet.Cells[LastRow, 24] := 'PT. BAHANA SECURITIES';
        ASheet.Cells[LastRow, 25] := 'Against';
        ASheet.Cells[LastRow, 26] := 'IJ';
        ASheet.Cells[LastRow, 27] := '';

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;

end;

procedure TfrmContracts.ExportStd1(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[5, 1] := 'Contract No.';
  ASheet.Cells[5, 2] := 'Account No.';
  ASheet.Cells[5, 3] := 'Booking Name';
  ASheet.Cells[5, 4] := 'Shares';
  ASheet.Cells[5, 5] := 'ISIN Code';
  ASheet.Cells[5, 6] := 'Security Desc';
  ASheet.Cells[5, 7] := 'B/S';
  ASheet.Cells[5, 8] := 'Trade Dt';
  ASheet.Cells[5, 9] := 'Stlmnt Dt';
  ASheet.Cells[5, 10] := 'Quantity';
  ASheet.Cells[5, 11] := 'Price';
  ASheet.Cells[5, 12] := 'Principal Amount';
  ASheet.Cells[5, 13] := 'Commission';
  ASheet.Cells[5, 14] := 'VAT';
  ASheet.Cells[5, 15] := 'Levy';
  ASheet.Cells[5, 16] := 'Sales Tax';
  ASheet.Cells[5, 17] := 'WH Tax';
  ASheet.Cells[5, 18] := 'Net Amount (IDR)';
  ASheet.Cells[5, 19] := 'Ccy';
  ASheet.Cells[5, 20] := 'Ex Rate';
  ASheet.Cells[5, 21] := 'Net Amount FX';
  ASheet.Cells[5, 22] := 'ExReff';
  ASheet.Cells[5, 23] := 'Initial';

  LastRow := 6;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 1] := cdsContractExcelCONCODE.AsString;
        ASheet.Cells[LastRow, 2] := cdsContractExcelACCNO.AsString;
        ASheet.Cells[LastRow, 3] := cdsContractExcelACCNAME.AsString;
        ASheet.Cells[LastRow, 4] := cdsContractExcelSTOCKCODE.AsString;
        ASheet.Cells[LastRow, 5] := cdsContractExcelISINCODE.AsString;
        ASheet.Cells[LastRow, 6] := cdsContractExcelSTOCKNAME.AsString;
        ASheet.Cells[LastRow, 7] := cdsContractExcelBS.AsString;
        ASheet.Cells[LastRow, 8] := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 9] := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 10] := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 11] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 12] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelVAT.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 16] := cdsContractExcelSELLTAX.AsFloat;
        ASheet.Cells[LastRow, 17] := cdsContractExcelWHT.AsFloat;
        ASheet.Cells[LastRow, 18] := cdsContractExcelALLOCAMT.AsFloat;
        if cdsContractExcelISMULTICCY.AsString = '0' then
        begin
          ASheet.Cells[LastRow, 19] := cdsContractExcelCCYCODE.AsString;
          ASheet.Cells[LastRow, 20] := 1;
          ASheet.Cells[LastRow, 21] := cdsContractExcelALLOCAMT.AsFloat;
        end
        else
        begin
          ASheet.Cells[LastRow, 19] := cdsContractExcelFOREIGN_CCYCODE.AsString;
          ASheet.Cells[LastRow, 10] := cdsContractExcelFOREIGN_EXRATE.AsFloat;
          ASheet.Cells[LastRow, 21] := cdsContractExcelFOREIGN_ALLOCAMT.AsFloat;
        end;
        ASheet.Cells[LastRow, 22] := 'ExReff';
        ASheet.Cells[LastRow, 23] := cdsContractExcelACCINIT.AsString;

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;

end;

procedure TfrmContracts.ExportStd2(AFileName: String; ASheet: OleVariant);
var
  i, RecIdx, LastRow: Integer;
begin
  //Set Excel Header
  ASheet.Cells[1, 1] := 'PT. Bahana Securities';

  ASheet.Cells[3, 1] := 'Contract No.';
  ASheet.Cells[3, 2] := 'BrokerID';
  ASheet.Cells[3, 3] := 'Our A/C Reff';
  ASheet.Cells[3, 4] := 'Acc No.';
  ASheet.Cells[3, 5] := 'Booking Name';
  ASheet.Cells[3, 6] := 'Share';
  ASheet.Cells[3, 7] := 'ISIN Code';
  ASheet.Cells[3, 8] := 'Security Desc';
  ASheet.Cells[3, 9] := 'B/S';
  ASheet.Cells[3, 10] := 'Trade Date';
  ASheet.Cells[3, 11] := 'Settlement Date';
  ASheet.Cells[3, 12] := 'Qty';
  ASheet.Cells[3, 13] := 'Price';
  ASheet.Cells[3, 14] := 'Principal Amount';
  ASheet.Cells[3, 15] := 'Commission';
  ASheet.Cells[3, 16] := 'VAT';
  ASheet.Cells[3, 17] := 'Levy';
  ASheet.Cells[3, 18] := 'Sales TAX';
  ASheet.Cells[3, 19] := 'WH Tax';
  ASheet.Cells[3, 20] := 'Net Amount (IDR)';
  ASheet.Cells[3, 21] := 'CCY';
  ASheet.Cells[3, 22] := 'Ex Rate';
  ASheet.Cells[3, 23] := 'Net Amount FX';
  ASheet.Cells[3, 24] := 'Memo';

  LastRow := 4;

  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsContractExcel.Close;
    cdsContractExcel.Params[0].AsInteger := cdsContractListCONID.AsInteger;
    cdsContractExcel.Open;

    if not cdsContractExcel.IsEmpty then
    begin
      cdsContractExcel.First;
      while not cdsContractExcel.Eof do
      begin
        ASheet.Cells[LastRow, 1] := cdsContractExcelCONCODE.AsString;
        ASheet.Cells[LastRow, 2] := '';
        ASheet.Cells[LastRow, 3] := '';
        ASheet.Cells[LastRow, 4] := cdsContractExcelACCNO.AsString;
        ASheet.Cells[LastRow, 5] := cdsContractExcelACCNAME.AsString;
        ASheet.Cells[LastRow, 6] := cdsContractExcelSTOCKCODE.AsString;
        ASheet.Cells[LastRow, 7] := cdsContractExcelISINCODE.AsString;
        ASheet.Cells[LastRow, 8] := cdsContractExcelSTOCKNAME.AsString;
        ASheet.Cells[LastRow, 9] := cdsContractExcelBS.AsString;
        ASheet.Cells[LastRow, 10] := cdsContractExcelCONDATE.AsDateTime;
        ASheet.Cells[LastRow, 11] := cdsContractExcelSTOCKSETTLEDATE.AsDateTime;
        ASheet.Cells[LastRow, 12] := cdsContractExcelAQTY.AsFloat;
        ASheet.Cells[LastRow, 13] := cdsContractExcelAPRICE.AsFloat;
        ASheet.Cells[LastRow, 14] := cdsContractExcelAVALUE.AsFloat;
        ASheet.Cells[LastRow, 15] := cdsContractExcelBROKERFEE.AsFloat;
        ASheet.Cells[LastRow, 16] := cdsContractExcelVAT.AsFloat;
        ASheet.Cells[LastRow, 17] := cdsContractExcelCHARGES.AsFloat;
        ASheet.Cells[LastRow, 18] := cdsContractExcelSELLTAX.AsFloat;
        ASheet.Cells[LastRow, 19] := cdsContractExcelWHT.AsFloat;
        ASheet.Cells[LastRow, 20] := cdsContractExcelALLOCAMT.AsFloat;
        if cdsContractExcelISMULTICCY.AsString = '0' then
        begin
          ASheet.Cells[LastRow, 21] := cdsContractExcelCCYCODE.AsString;
          ASheet.Cells[LastRow, 22] := 1;
          ASheet.Cells[LastRow, 23] := cdsContractExcelALLOCAMT.AsFloat;
        end
        else
        begin
          ASheet.Cells[LastRow, 21] := cdsContractExcelFOREIGN_CCYCODE.AsString;
          ASheet.Cells[LastRow, 22] := cdsContractExcelFOREIGN_EXRATE.AsFloat;
          ASheet.Cells[LastRow, 23] := cdsContractExcelFOREIGN_ALLOCAMT.AsFloat;
        end;
        ASheet.Cells[LastRow, 24] := '';

        Inc(LastRow);
        cdsContractExcel.Next;
      end;
    end;
  end;

end;

procedure TfrmContracts.FormCreate(Sender: TObject);
begin
  inherited;
  tempPath    := ExtractFilePath(Application.ExeName)+'temp\';
  FSystemDate := dmGlobal.RemoteServer.GetTransDate;

  if not DirectoryExists(tempPath) then CreateDir(tempPath);

  KeyField := cdsContractListCONID;

  dtTransDateStart.EditValue  := FSystemDate;
  chkAllMarket.EditValue      := '0';
  cbMarket.EditValue          := dmGlobal.RemoteServer.GetGlobalParamString('049');

  chkOpen.EditValue := 'O';
  chkPosted.EditValue := '-';
  chkCanceled.EditValue := '-';
  chkReversed.EditValue := '-';

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuReportTC.Active then
      cdsLuReportTC.Open;

//    if not cdsLuEntity.Active then
//      cdsLuEntity.Open;
//
//    if not cdsLuMarket.Active then
//      cdsLuMarket.Open;
//
//    if not cdsLuCcy.Active then
//      cdsLuCcy.Open;
//
//    if not cdsLuChannel.Active then
//      cdsLuChannel.Open;
//
//    if not cdsLuCommission.Active then
//      cdsLuCommission.Open
//    else
//      cdsLuCommission.Refresh;
//
//    if not cdsLuAccount.Active then
//      cdsLuAccount.Open;
//
//    if not cdsLuBoard.Active then
//      cdsLuBoard.Open;
//
//    if not cdsLuInstrument.Active then
//      cdsLuInstrument.Open;
//
//    if not cdsLuBank.Active then
//      cdsLuBank.Open;
  end;

//  actRefresh.Execute;
//  cbExcelFormat.ItemIndex := 0;
end;

function TfrmContracts.GetReportParameter(AKey: string): string;
var
  sKey: string;
begin
  sKey := dmGlobal.GetGUID;

  if not cdsReportParameter.Active then
    cdsReportParameter.Open;

  cdsReportParameter.Append;
  cdsReportParameterDATAKEY.AsString   := sKey;
  cdsReportParameterDATAVALUE.AsString := AKey;
  cdsReportParameter.Post;

  cdsReportParameter.ApplyUpdates(-1);
  Result := sKey;
end;

procedure TfrmContracts.gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
//  if (AViewInfo.GridRecord.Values[gvwMasterCONSTS.Index] = 'C') then
//  begin
//    ACanvas.Font.Color := clRed;
//  end
//  else if (AViewInfo.GridRecord.Values[gvwMasterCONSTS.Index] = 'O') then
//  begin
//    ACanvas.Font.Color := clBlack;
//  end
//  else if (AViewInfo.GridRecord.Values[gvwMasterCONSTS.Index] = 'S') then
//  begin
//    ACanvas.Font.Color := clBlue;
//  end
//  else if (AViewInfo.GridRecord.Values[gvwMasterCONSTS.Index] = 'R') then
//  begin
//    ACanvas.Font.Color := clGreen;
//  end;
  inherited;
end;

procedure TfrmContracts.gvwMasterFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
//  if cdsContractListTC_MODEL.AsString = 'PO' then
//    ReportContainer.ReportFile := 'Report\NTradeConfirmationByOrder.fr3'
//  else
//    ReportContainer.ReportFile := 'Report\NTradeConfirmation.fr3';
end;

procedure TfrmContracts.luMarketPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  actView.Execute;
end;

Initialization
  RegisterClass(TfrmContracts);

end.
