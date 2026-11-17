unit FormIPOList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, Data.DB, NDatasetContainer, cxClasses, NDatasetAction, Vcl.ActnList,
  Vcl.Menus, cxSplitter, cxGridCustomTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxTL, cxDBTL,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxMaskEdit, cxImageComboBox,
  cxCalendar, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData,
  cxGridTableView, NReportClient, dxBar, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView, cxGrid,
  System.Actions, System.ImageList, dxDateRanges;

type
  TfrmIPOList = class(TfrmBrowseData)
    cdsIPOList: TNClientDataset;
    cdsIPO: TNClientDataset;
    cdsIPOListIPOID: TIntegerField;
    cdsIPOListIPOCODE: TStringField;
    cdsIPOListSCRIPCODE: TStringField;
    cdsIPOListSCRIPNAME: TStringField;
    cdsIPOListENTRYDATE: TDateField;
    cdsIPOListIPODATE: TDateField;
    cdsIPOListORDERFROMDATE: TDateField;
    cdsIPOListORDERTODATE: TDateField;
    cdsIPOListNETFEE: TFloatField;
    cdsIPOListVAT: TFloatField;
    cdsIPOListWHT: TFloatField;
    cdsIPOListCCY: TStringField;
    cdsIPOListBOTPRICE: TFloatField;
    cdsIPOListTOPPRICE: TFloatField;
    cdsIPOListFIXEDPRICE: TFloatField;
    cdsIPOListACCBANKID: TIntegerField;
    cdsIPOListGUARANTEETYPE: TStringField;
    cdsIPOListCONDATE: TDateField;
    cdsIPOListREMARK1: TStringField;
    cdsIPOListREMARK2: TStringField;
    cdsIPOListSTATUS: TStringField;
    cdsIPOListMODDA: TDateTimeField;
    cdsIPOListMODUI: TStringField;
    cdsIPOListAPPDA: TDateTimeField;
    cdsIPOListAPPUI: TStringField;
    cdsIPOListUNDER4Y: TIntegerField;
    cdsIPOListUNDER4YDA: TDateTimeField;
    cdsIPOListNOTES4Y: TStringField;
    cdsIPOListISDEL: TIntegerField;
    cdsIPOListID: TLargeintField;
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
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterIPOCODE: TcxGridDBBandedColumn;
    gvwMasterSCRIPCODE: TcxGridDBBandedColumn;
    gvwMasterSCRIPNAME: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterIPODATE: TcxGridDBBandedColumn;
    gvwMasterORDERFROMDATE: TcxGridDBBandedColumn;
    gvwMasterORDERTODATE: TcxGridDBBandedColumn;
    gvwMasterNETFEE: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterBOTPRICE: TcxGridDBBandedColumn;
    gvwMasterTOPPRICE: TcxGridDBBandedColumn;
    gvwMasterFIXEDPRICE: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterGUARANTEETYPE: TcxGridDBBandedColumn;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterREMARK1: TcxGridDBBandedColumn;
    gvwMasterREMARK2: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsIPOBookByIPO: TNClientDataset;
    actBookIPO: TNAction;
    actViewAllIPOBook: TNAction;
    cdsIPOBookByIPOBOOKID: TIntegerField;
    cdsIPOBookByIPOBOOKCODE: TStringField;
    cdsIPOBookByIPOBOOKDATE: TDateField;
    cdsIPOBookByIPOBOOKDESC: TStringField;
    cdsIPOBookByIPOBOOKTYPE: TStringField;
    cdsIPOBookByIPOIPOID: TIntegerField;
    cdsIPOBookByIPOCUST_NAME: TStringField;
    cdsIPOBookByIPOCUST_IDCARDTYPE: TStringField;
    cdsIPOBookByIPOCUST_IDCARDNO: TStringField;
    cdsIPOBookByIPOCUST_IDCARDEXPIRE: TDateField;
    cdsIPOBookByIPOCUST_ADDRESS: TStringField;
    cdsIPOBookByIPOCUST_PHONE: TStringField;
    cdsIPOBookByIPOCUST_FAX: TStringField;
    cdsIPOBookByIPOCUST_MAIL: TStringField;
    cdsIPOBookByIPOORDERTYPE: TStringField;
    cdsIPOBookByIPOORDERCCY: TStringField;
    cdsIPOBookByIPOORDERMAXPRICE: TFloatField;
    cdsIPOBookByIPOORDERVALUE: TFloatField;
    cdsIPOBookByIPOSTATUS: TStringField;
    cdsIPOBookByIPOMODDA: TDateTimeField;
    cdsIPOBookByIPOMODUI: TStringField;
    cdsIPOBookByIPOAPPDA: TDateTimeField;
    cdsIPOBookByIPOAPPUI: TStringField;
    cdsIPOBookByIPOUNDER4Y: TIntegerField;
    cdsIPOBookByIPOUNDER4YDA: TDateTimeField;
    cdsIPOBookByIPONOTES4Y: TStringField;
    cdsIPOBookByIPOISDEL: TIntegerField;
    cdsIPOBookByIPOID: TLargeintField;
    cdsIPOListCOMMITMENTAMT: TFloatField;
    cdsIPOListABSORBAMT: TFloatField;
    cdsIPOListBGAMT: TFloatField;
    cdsIPOListHAIRCUT: TIntegerField;
    cdsIPOCOMMITMENTAMT: TFloatField;
    cdsIPOABSORBAMT: TFloatField;
    cdsIPOBGAMT: TFloatField;
    cdsIPOHAIRCUT: TIntegerField;
    cdsIPOAllotmentByIPO: TNClientDataset;
    cdsIPOAllotment: TNClientDataset;
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
    actAllotment: TNAction;
    cdsIPOBookByIPOACCID: TIntegerField;
    cdsIPOAllotmentACCNAME: TStringField;
    cdsIPOBookByIPODIST_TYPE: TStringField;
    actIPOPooling: TNAction;
    cdsIPOPoolingByIPO: TNClientDataset;
    cdsIPOPooling: TNClientDataset;
    cdsIPOPoolingByIPOPOOLINGID: TIntegerField;
    cdsIPOPoolingByIPOPOOLINGCODE: TStringField;
    cdsIPOPoolingByIPOPOOLINGDATE: TDateField;
    cdsIPOPoolingByIPOPOOLINGDESC: TStringField;
    cdsIPOPoolingByIPOPOOLINGTYPE: TStringField;
    cdsIPOPoolingByIPOIPOID: TIntegerField;
    cdsIPOPoolingByIPOACCID: TIntegerField;
    cdsIPOPoolingByIPOCUST_NAME: TStringField;
    cdsIPOPoolingByIPOCUST_IDCARDTYPE: TStringField;
    cdsIPOPoolingByIPOCUST_IDCARDNO: TStringField;
    cdsIPOPoolingByIPOCUST_IDCARDEXPIRE: TDateField;
    cdsIPOPoolingByIPOCUST_ADDRESS: TStringField;
    cdsIPOPoolingByIPOCUST_PHONE: TStringField;
    cdsIPOPoolingByIPOCUST_FAX: TStringField;
    cdsIPOPoolingByIPOCUST_MAIL: TStringField;
    cdsIPOPoolingByIPOORDERCCY: TStringField;
    cdsIPOPoolingByIPOORDERQTY: TFloatField;
    cdsIPOPoolingByIPOORDERAMT: TFloatField;
    cdsIPOPoolingByIPOSTATUS: TStringField;
    cdsIPOPoolingByIPOMODDA: TDateTimeField;
    cdsIPOPoolingByIPOMODUI: TStringField;
    cdsIPOPoolingByIPOAPPDA: TDateTimeField;
    cdsIPOPoolingByIPOAPPUI: TStringField;
    cdsIPOPoolingByIPOUNDER4Y: TIntegerField;
    cdsIPOPoolingByIPOUNDER4YDA: TDateTimeField;
    cdsIPOPoolingByIPONOTES4Y: TStringField;
    cdsIPOPoolingByIPOISDEL: TIntegerField;
    cdsIPOPoolingByIPOID: TLargeintField;
    cdsIPOPoolingPOOLINGID: TIntegerField;
    cdsIPOPoolingPOOLINGCODE: TStringField;
    cdsIPOPoolingPOOLINGDATE: TDateField;
    cdsIPOPoolingPOOLINGDESC: TStringField;
    cdsIPOPoolingPOOLINGTYPE: TStringField;
    cdsIPOPoolingIPOID: TIntegerField;
    cdsIPOPoolingACCID: TIntegerField;
    cdsIPOPoolingCUST_NAME: TStringField;
    cdsIPOPoolingCUST_IDCARDTYPE: TStringField;
    cdsIPOPoolingCUST_IDCARDNO: TStringField;
    cdsIPOPoolingCUST_IDCARDEXPIRE: TDateField;
    cdsIPOPoolingCUST_ADDRESS: TStringField;
    cdsIPOPoolingCUST_PHONE: TStringField;
    cdsIPOPoolingCUST_FAX: TStringField;
    cdsIPOPoolingCUST_MAIL: TStringField;
    cdsIPOPoolingORDERCCY: TStringField;
    cdsIPOPoolingORDERQTY: TFloatField;
    cdsIPOPoolingORDERAMT: TFloatField;
    cdsIPOPoolingSTATUS: TStringField;
    cdsIPOPoolingMODDA: TDateTimeField;
    cdsIPOPoolingMODUI: TStringField;
    cdsIPOPoolingAPPDA: TDateTimeField;
    cdsIPOPoolingAPPUI: TStringField;
    cdsIPOPoolingUNDER4Y: TIntegerField;
    cdsIPOPoolingUNDER4YDA: TDateTimeField;
    cdsIPOPoolingNOTES4Y: TStringField;
    cdsIPOPoolingISDEL: TIntegerField;
    cdsIPOPoolingID: TLargeintField;
    cdsIPOPoolingSCRIPNAME: TStringField;
    cdsIPOPoolingFIXEDPRICE: TFloatField;
    cdsIPOBookByIPOORDERBASED: TStringField;
    cdsIPOListBAEID: TIntegerField;
    cdsIPOBAEID: TIntegerField;
    cdsIPOPoolingByIPOPROCESSQTY: TFloatField;
    cdsIPOPoolingByIPOPROCESSAMT: TFloatField;
    cdsIPOPoolingByIPORETURNAMT: TFloatField;
    cdsIPOPoolingPROCESSQTY: TFloatField;
    cdsIPOPoolingPROCESSAMT: TFloatField;
    cdsIPOPoolingRETURNAMT: TFloatField;
    cxSplitter1: TcxSplitter;
    cdsIPOFlow: TNClientDataset;
    dsIPOFlow: TDataSource;
    cdsIPOFlowIPOID: TIntegerField;
    cdsIPOFlowACTIVITY_ID: TIntegerField;
    cdsIPOFlowACTIVITY_CODE: TStringField;
    cdsIPOFlowACTIVITY_DESC: TStringField;
    cdsIPOFlowACTIVITY_NEXT: TIntegerField;
    cdsIPOFlowSTATUS: TStringField;
    cdsIPOFlowHANDLE_DATE: TDateTimeField;
    cdsIPOFlowHANDLE_BY: TStringField;
    cdsIPOFlowCOMPLETE_DATE: TDateTimeField;
    cdsIPOFlowCOMPLETE_BY: TStringField;
    actStartAck: TNAction;
    actModify: TNAction;
    actDone: TNAction;
    actViewAck: TNAction;
    popFlow: TPopupMenu;
    Acknowledge1: TMenuItem;
    ModifyData1: TMenuItem;
    Complete1: TMenuItem;
    N5: TMenuItem;
    View2: TMenuItem;
    cdsIPOBookOutstanding: TNClientDataset;
    cdsIPOBookOutstandingBOOKID: TIntegerField;
    cdsIPOBookOutstandingBOOKCODE: TStringField;
    cdsIPOBookOutstandingBOOKDATE: TDateField;
    cdsIPOBookOutstandingBOOKDESC: TStringField;
    cdsIPOBookOutstandingBOOKTYPE: TStringField;
    cdsIPOBookOutstandingIPOID: TIntegerField;
    cdsIPOBookOutstandingACCID: TIntegerField;
    cdsIPOBookOutstandingDIST_TYPE: TStringField;
    cdsIPOBookOutstandingCUST_NAME: TStringField;
    cdsIPOBookOutstandingCUST_IDCARDTYPE: TStringField;
    cdsIPOBookOutstandingCUST_IDCARDNO: TStringField;
    cdsIPOBookOutstandingCUST_IDCARDEXPIRE: TDateField;
    cdsIPOBookOutstandingCUST_ADDRESS: TStringField;
    cdsIPOBookOutstandingCUST_PHONE: TStringField;
    cdsIPOBookOutstandingCUST_FAX: TStringField;
    cdsIPOBookOutstandingCUST_MAIL: TStringField;
    cdsIPOBookOutstandingORDERBASED: TStringField;
    cdsIPOBookOutstandingORDERTYPE: TStringField;
    cdsIPOBookOutstandingORDERCCY: TStringField;
    cdsIPOBookOutstandingORDERMAXPRICE: TFloatField;
    cdsIPOBookOutstandingORDERVALUE: TFloatField;
    cdsIPOBookOutstandingSTATUS: TStringField;
    cdsIPOBookOutstandingMODDA: TDateTimeField;
    cdsIPOBookOutstandingMODUI: TStringField;
    cdsIPOBookOutstandingAPPDA: TDateTimeField;
    cdsIPOBookOutstandingAPPUI: TStringField;
    cdsIPOBookOutstandingUNDER4Y: TIntegerField;
    cdsIPOBookOutstandingUNDER4YDA: TDateTimeField;
    cdsIPOBookOutstandingNOTES4Y: TStringField;
    cdsIPOBookOutstandingISDEL: TIntegerField;
    cdsIPOBookOutstandingID: TLargeintField;
    cdsIPOFlowACTIVITY_PARENT: TIntegerField;
    tlActivities: TcxDBTreeList;
    cxDBTreeList1IPOID: TcxDBTreeListColumn;
    cxDBTreeList1ACTIVITY_ID: TcxDBTreeListColumn;
    cxDBTreeList1ACTIVITY_CODE: TcxDBTreeListColumn;
    cxDBTreeList1ACTIVITY_DESC: TcxDBTreeListColumn;
    cxDBTreeList1ACTIVITY_NEXT: TcxDBTreeListColumn;
    cxDBTreeList1ACTIVITY_PARENT: TcxDBTreeListColumn;
    cxDBTreeList1STATUS: TcxDBTreeListColumn;
    cxDBTreeList1HANDLE_DATE: TcxDBTreeListColumn;
    cxDBTreeList1HANDLE_BY: TcxDBTreeListColumn;
    cxDBTreeList1COMPLETE_DATE: TcxDBTreeListColumn;
    cxDBTreeList1COMPLETE_BY: TcxDBTreeListColumn;
    cdsIPODUEDATE: TDateField;
    cdsIPODISTRIBUTIONDATE: TDateField;
    cdsIPOLISTINGDATE: TDateField;
    cdsIPOREFUNDDATE: TDateField;
    cdsIPOAllotmentByIPOALLOTMENTDATE: TDateField;
    cdsIPOAllotmentByIPOSTATUS: TStringField;
    cdsIPOAllotmentByIPOCASH_VOUCHERID: TLargeintField;
    cdsIPOAllotmentByIPOSTOCK_VOUCHERID: TLargeintField;
    cdsIPOAllotmentByIPOSIID: TLargeintField;
    cdsIPOAllotmentByIPOACCCODE_1: TStringField;
    cdsIPOAllotmentByIPOACCNAME: TStringField;
    cdsIPOAllotmentByIPOACCINIT: TStringField;
    cdsIPOAllotmentALLOTMENTDATE: TDateField;
    cdsIPOAllotmentSTATUS: TStringField;
    cdsIPOAllotmentCASH_VOUCHERID: TLargeintField;
    cdsIPOAllotmentSTOCK_VOUCHERID: TLargeintField;
    cdsIPOAllotmentSIID: TLargeintField;
    cdsAllotmentFinanceCheck: TNClientDataset;
    cdsAllotmentFinanceCheckALLOTMENTID: TIntegerField;
    cdsAllotmentFinanceCheckIPOID: TIntegerField;
    cdsAllotmentFinanceCheckALLOTMENTCODE: TStringField;
    cdsAllotmentFinanceCheckALLOTMENTDATE: TDateField;
    cdsAllotmentFinanceCheckACCID: TIntegerField;
    cdsAllotmentFinanceCheckACCCODE: TStringField;
    cdsAllotmentFinanceCheckQTY: TFloatField;
    cdsAllotmentFinanceCheckAMOUNT: TFloatField;
    cdsAllotmentFinanceCheckNETFEE_PCT: TFloatField;
    cdsAllotmentFinanceCheckVAT_PCT: TFloatField;
    cdsAllotmentFinanceCheckWHT_PCT: TFloatField;
    cdsAllotmentFinanceCheckBFEE: TFloatField;
    cdsAllotmentFinanceCheckVAT: TFloatField;
    cdsAllotmentFinanceCheckWHT: TFloatField;
    cdsAllotmentFinanceCheckNETAMOUNT: TFloatField;
    cdsAllotmentFinanceCheckCDBCRID: TStringField;
    cdsAllotmentFinanceCheckCOUTSTANDID: TStringField;
    cdsAllotmentFinanceCheckFPPS: TStringField;
    cdsAllotmentFinanceCheckDPPS: TStringField;
    cdsAllotmentFinanceCheckCOFSENT: TStringField;
    cdsAllotmentFinanceCheckCONFIRMED: TStringField;
    cdsAllotmentFinanceCheckCONFORIGIN: TStringField;
    cdsAllotmentFinanceCheckPOSTEDFINANCE: TStringField;
    cdsAllotmentFinanceCheckPOSTEDCUSTODY: TStringField;
    cdsAllotmentFinanceCheckIDCARD: TStringField;
    cdsAllotmentFinanceCheckQTYPROCESS: TFloatField;
    cdsAllotmentFinanceCheckPEID: TStringField;
    cdsAllotmentFinanceCheckREMARK: TStringField;
    cdsAllotmentFinanceCheckBOOKID: TIntegerField;
    cdsAllotmentFinanceCheckSTATUS: TStringField;
    cdsAllotmentFinanceCheckMODDA: TDateTimeField;
    cdsAllotmentFinanceCheckMODUI: TStringField;
    cdsAllotmentFinanceCheckAPPDA: TDateTimeField;
    cdsAllotmentFinanceCheckAPPUI: TStringField;
    cdsAllotmentFinanceCheckUNDER4Y: TIntegerField;
    cdsAllotmentFinanceCheckUNDER4YDA: TDateTimeField;
    cdsAllotmentFinanceCheckNOTES4Y: TStringField;
    cdsAllotmentFinanceCheckISDEL: TIntegerField;
    cdsAllotmentFinanceCheckID: TLargeintField;
    cdsAllotmentFinanceCheckCASH_VOUCHERID: TLargeintField;
    cdsAllotmentFinanceCheckSTOCK_VOUCHERID: TLargeintField;
    cdsAllotmentFinanceCheckSIID: TLargeintField;
    cdsAllotmentFinanceCheckACCCODE_1: TStringField;
    cdsAllotmentFinanceCheckACCNAME: TStringField;
    cdsAllotmentFinanceCheckACCINIT: TStringField;
    cdsAllotmentFinanceCheckCASH_ONHAND: TFloatField;
    cdsAllotmentFinanceCheckARAMT: TFloatField;
    cdsAllotmentFinanceCheckAPAMT: TFloatField;
    cdsAllotmentFinanceCheckCASH_OUTS: TFloatField;
    cdsAllotmentFinanceCheckCASH_POS: TFloatField;
    cdsIPOISINCODE: TStringField;
    cdsIPOISINDATE: TDateTimeField;
    cdsIPOIS_CURRENT_INSTRUMENT: TStringField;
    cdsIPOINSTRUMENT_ID: TLargeintField;
    cdsIPOAllotmentVOUCHERCREATED: TStringField;
    cdsAllotmentFinanceCheckVOUCHERCREATED: TStringField;
    cdsIPOAllotmentByIPOVOUCHERCREATED: TStringField;
    cdsPoolingFinanceCheck: TNClientDataset;
    cdsPoolingFinanceCheckPOOLINGID: TIntegerField;
    cdsPoolingFinanceCheckPOOLINGCODE: TStringField;
    cdsPoolingFinanceCheckPOOLINGDATE: TDateField;
    cdsPoolingFinanceCheckPOOLINGDESC: TStringField;
    cdsPoolingFinanceCheckPOOLINGTYPE: TStringField;
    cdsPoolingFinanceCheckIPOID: TIntegerField;
    cdsPoolingFinanceCheckACCID: TIntegerField;
    cdsPoolingFinanceCheckCUST_NAME: TStringField;
    cdsPoolingFinanceCheckCUST_IDCARDTYPE: TStringField;
    cdsPoolingFinanceCheckCUST_IDCARDNO: TStringField;
    cdsPoolingFinanceCheckCUST_IDCARDEXPIRE: TDateField;
    cdsPoolingFinanceCheckCUST_ADDRESS: TStringField;
    cdsPoolingFinanceCheckCUST_PHONE: TStringField;
    cdsPoolingFinanceCheckCUST_FAX: TStringField;
    cdsPoolingFinanceCheckCUST_MAIL: TStringField;
    cdsPoolingFinanceCheckORDERCCY: TStringField;
    cdsPoolingFinanceCheckORDERQTY: TFloatField;
    cdsPoolingFinanceCheckORDERAMT: TFloatField;
    cdsPoolingFinanceCheckPROCESSQTY: TFloatField;
    cdsPoolingFinanceCheckPROCESSAMT: TFloatField;
    cdsPoolingFinanceCheckRETURNAMT: TFloatField;
    cdsPoolingFinanceCheckCONFIRMED: TStringField;
    cdsPoolingFinanceCheckPOSTEDFINANCE: TStringField;
    cdsPoolingFinanceCheckVOUCHERCREATED: TStringField;
    cdsPoolingFinanceCheckCASH_VOUCHERID: TLargeintField;
    cdsPoolingFinanceCheckSTOCK_VOUCHERID: TLargeintField;
    cdsPoolingFinanceCheckSIID: TLargeintField;
    cdsPoolingFinanceCheckSTATUS: TStringField;
    cdsPoolingFinanceCheckMODDA: TDateTimeField;
    cdsPoolingFinanceCheckMODUI: TStringField;
    cdsPoolingFinanceCheckAPPDA: TDateTimeField;
    cdsPoolingFinanceCheckAPPUI: TStringField;
    cdsPoolingFinanceCheckUNDER4Y: TIntegerField;
    cdsPoolingFinanceCheckUNDER4YDA: TDateTimeField;
    cdsPoolingFinanceCheckNOTES4Y: TStringField;
    cdsPoolingFinanceCheckISDEL: TIntegerField;
    cdsPoolingFinanceCheckID: TLargeintField;
    cdsPoolingFinanceCheckACCCODE: TStringField;
    cdsPoolingFinanceCheckACCNAME: TStringField;
    cdsPoolingFinanceCheckACCINIT: TStringField;
    cdsPoolingFinanceCheckCASH_ONHAND: TFloatField;
    cdsPoolingFinanceCheckARAMT: TFloatField;
    cdsPoolingFinanceCheckAPAMT: TFloatField;
    cdsPoolingFinanceCheckCASH_OUTS: TFloatField;
    cdsPoolingFinanceCheckCASH_POS: TFloatField;
    cdsAllotmentBAE: TNClientDataset;
    cdsPoolingBAE: TNClientDataset;
    cdsAllotmentBAEALLOTMENTID: TIntegerField;
    cdsAllotmentBAEIPOID: TIntegerField;
    cdsAllotmentBAEALLOTMENTCODE: TStringField;
    cdsAllotmentBAEALLOTMENTDATE: TDateField;
    cdsAllotmentBAEACCID: TIntegerField;
    cdsAllotmentBAEACCCODE: TStringField;
    cdsAllotmentBAEQTY: TFloatField;
    cdsAllotmentBAEAMOUNT: TFloatField;
    cdsAllotmentBAENETFEE_PCT: TFloatField;
    cdsAllotmentBAEVAT_PCT: TFloatField;
    cdsAllotmentBAEWHT_PCT: TFloatField;
    cdsAllotmentBAEBFEE: TFloatField;
    cdsAllotmentBAEVAT: TFloatField;
    cdsAllotmentBAEWHT: TFloatField;
    cdsAllotmentBAENETAMOUNT: TFloatField;
    cdsAllotmentBAECDBCRID: TStringField;
    cdsAllotmentBAECOUTSTANDID: TStringField;
    cdsAllotmentBAEFPPS: TStringField;
    cdsAllotmentBAEDPPS: TStringField;
    cdsAllotmentBAECOFSENT: TStringField;
    cdsAllotmentBAECONFIRMED: TStringField;
    cdsAllotmentBAECONFORIGIN: TStringField;
    cdsAllotmentBAEPOSTEDFINANCE: TStringField;
    cdsAllotmentBAEVOUCHERCREATED: TStringField;
    cdsAllotmentBAEPOSTEDCUSTODY: TStringField;
    cdsAllotmentBAEIDCARD: TStringField;
    cdsAllotmentBAEQTYPROCESS: TFloatField;
    cdsAllotmentBAEPEID: TStringField;
    cdsAllotmentBAEREMARK: TStringField;
    cdsAllotmentBAEBOOKID: TIntegerField;
    cdsAllotmentBAESTATUS: TStringField;
    cdsAllotmentBAEMODDA: TDateTimeField;
    cdsAllotmentBAEMODUI: TStringField;
    cdsAllotmentBAEAPPDA: TDateTimeField;
    cdsAllotmentBAEAPPUI: TStringField;
    cdsAllotmentBAEUNDER4Y: TIntegerField;
    cdsAllotmentBAEUNDER4YDA: TDateTimeField;
    cdsAllotmentBAENOTES4Y: TStringField;
    cdsAllotmentBAEISDEL: TIntegerField;
    cdsAllotmentBAEID: TLargeintField;
    cdsAllotmentBAECASH_VOUCHERID: TLargeintField;
    cdsAllotmentBAESTOCK_VOUCHERID: TLargeintField;
    cdsAllotmentBAESIID: TLargeintField;
    cdsAllotmentBAEACCCODE_1: TStringField;
    cdsAllotmentBAEACCNAME: TStringField;
    cdsAllotmentBAEACCINIT: TStringField;
    cdsPoolingBAEPOOLINGID: TIntegerField;
    cdsPoolingBAEPOOLINGCODE: TStringField;
    cdsPoolingBAEPOOLINGDATE: TDateField;
    cdsPoolingBAEPOOLINGDESC: TStringField;
    cdsPoolingBAEPOOLINGTYPE: TStringField;
    cdsPoolingBAEIPOID: TIntegerField;
    cdsPoolingBAEACCID: TIntegerField;
    cdsPoolingBAECUST_NAME: TStringField;
    cdsPoolingBAECUST_IDCARDTYPE: TStringField;
    cdsPoolingBAECUST_IDCARDNO: TStringField;
    cdsPoolingBAECUST_IDCARDEXPIRE: TDateField;
    cdsPoolingBAECUST_ADDRESS: TStringField;
    cdsPoolingBAECUST_PHONE: TStringField;
    cdsPoolingBAECUST_FAX: TStringField;
    cdsPoolingBAECUST_MAIL: TStringField;
    cdsPoolingBAEORDERCCY: TStringField;
    cdsPoolingBAEORDERQTY: TFloatField;
    cdsPoolingBAEORDERAMT: TFloatField;
    cdsPoolingBAEPROCESSQTY: TFloatField;
    cdsPoolingBAEPROCESSAMT: TFloatField;
    cdsPoolingBAERETURNAMT: TFloatField;
    cdsPoolingBAECONFIRMED: TStringField;
    cdsPoolingBAEPOSTEDFINANCE: TStringField;
    cdsPoolingBAEVOUCHERCREATED: TStringField;
    cdsPoolingBAECASH_VOUCHERID: TLargeintField;
    cdsPoolingBAESTOCK_VOUCHERID: TLargeintField;
    cdsPoolingBAESIID: TLargeintField;
    cdsPoolingBAESTATUS: TStringField;
    cdsPoolingBAEMODDA: TDateTimeField;
    cdsPoolingBAEMODUI: TStringField;
    cdsPoolingBAEAPPDA: TDateTimeField;
    cdsPoolingBAEAPPUI: TStringField;
    cdsPoolingBAEUNDER4Y: TIntegerField;
    cdsPoolingBAEUNDER4YDA: TDateTimeField;
    cdsPoolingBAENOTES4Y: TStringField;
    cdsPoolingBAEISDEL: TIntegerField;
    cdsPoolingBAEID: TLargeintField;
    cdsPoolingBAEACCCODE: TStringField;
    cdsPoolingBAEACCNAME: TStringField;
    cdsPoolingBAEACCINIT: TStringField;
    cdsIPOPoolingByIPOCONFIRMED: TStringField;
    cdsIPOPoolingByIPOPOSTEDFINANCE: TStringField;
    cdsIPOPoolingByIPOVOUCHERCREATED: TStringField;
    cdsIPOPoolingByIPOCASH_VOUCHERID: TLargeintField;
    cdsIPOPoolingByIPOSTOCK_VOUCHERID: TLargeintField;
    cdsIPOPoolingByIPOSIID: TLargeintField;
    cdsIPOPoolingCONFIRMED: TStringField;
    cdsIPOPoolingPOSTEDFINANCE: TStringField;
    cdsIPOPoolingVOUCHERCREATED: TStringField;
    cdsIPOPoolingCASH_VOUCHERID: TLargeintField;
    cdsIPOPoolingSTOCK_VOUCHERID: TLargeintField;
    cdsIPOPoolingSIID: TLargeintField;
    cdsIPOALLOTMENT_VOUCHER: TStringField;
    cdsIPOALLOTMENT_AMOUNT: TFloatField;
    cdsIPOALLOTMENT_SIID: TLargeintField;
    cdsIPOPOOLING_VOUCHER: TStringField;
    cdsIPOPOOLING_AMOUNT: TFloatField;
    cdsIPOPOOLING_SIID: TLargeintField;
    cdsCountConfirm: TNClientDataset;
    cdsCountConfirmCOUNTING: TIntegerField;
    cdsIPOPoolingByIPOPROCESS_CONFIRM: TStringField;
    cdsIPOPoolingByIPODISTRIBUTION: TStringField;
    cdsIPOPoolingByIPOREFUND_RECEIVE: TStringField;
    cdsIPOPoolingByIPOREFUND_PAYMENT: TStringField;
    cdsIPOPoolingByIPOPOSTEDCUSTODY: TStringField;
    cdsIPOACCID: TIntegerField;
    cdsIPOACCCODE: TStringField;
    cdsIPOACCNAME: TStringField;
    actPostedIPOAlloct: TNAction;
    actPosedIPOPooling: TNAction;
    actCreateVoucherAllotment: TNAction;
    actCreateVoucherPooling: TNAction;
    actFixedAllotmentDistribution: TNAction;
    actFixedIPODistributionPooling: TNAction;
    IPOAllotment2: TMenuItem;
    IPOPooling2: TMenuItem;
    cdsIPOAllotmentByIPODISTRIBUTION: TStringField;
    PostingAllotment1: TMenuItem;
    PostingPooling1: TMenuItem;
    CreateVoucherIPOAllotment1: TMenuItem;
    CreateVoucherIPOPooling1: TMenuItem;
    AllotmentDistribution1: TMenuItem;
    PoolingDistribution1: TMenuItem;
    cdsIPOPoolingACCCODE: TStringField;
    actPostingIPO: TNAction;
    PostingIPO1: TMenuItem;
    cdsIPOPoolingByIPOACCCODE: TStringField;
    cdsIPOACCNO: TStringField;
    cdsIPOIPO_TYPE: TStringField;
    cdsIPOIPO_PRODUCT: TStringField;
    cdsIPOCOUPON_RATE: TFloatField;
    cdsIPOMATURITYDATE: TDateField;
    cdsIPOCALCULATE_DAYS_METHOD: TIntegerField;
    cdsIPOCOUNTINGDAYS_METHOD: TIntegerField;
    cdsIPOISSUER_TYPE: TStringField;
    actInstrumentRegistration: TNAction;
    actPoolingAllocationDistribution: TNAction;
    InstrumentRegistration1: TMenuItem;
    cdsIPOListISINCODE: TStringField;
    cdsIPOListDUEDATE: TDateField;
    cdsIPOListDISTRIBUTIONDATE: TDateField;
    cdsIPOListLISTINGDATE: TDateField;
    cdsIPOListREFUNDDATE: TDateField;
    cdsIPOListISINDATE: TDateTimeField;
    cdsIPOListIS_CURRENT_INSTRUMENT: TStringField;
    cdsIPOListINSTRUMENT_ID: TLargeintField;
    cdsIPOListALLOTMENT_VOUCHER: TStringField;
    cdsIPOListALLOTMENT_AMOUNT: TFloatField;
    cdsIPOListALLOTMENT_SIID: TLargeintField;
    cdsIPOListPOOLING_VOUCHER: TStringField;
    cdsIPOListPOOLING_AMOUNT: TFloatField;
    cdsIPOListPOOLING_SIID: TLargeintField;
    cdsIPOListACCID: TIntegerField;
    cdsIPOListACCNO: TStringField;
    cdsIPOListACCNAME: TStringField;
    cdsIPOListIPO_TYPE: TStringField;
    cdsIPOListIPO_PRODUCT: TStringField;
    cdsIPOListCOUPON_RATE: TFloatField;
    cdsIPOListMATURITYDATE: TDateField;
    cdsIPOListCALCULATE_DAYS_METHOD: TIntegerField;
    cdsIPOListCOUNTINGDAYS_METHOD: TIntegerField;
    cdsIPOListISSUER_TYPE: TStringField;
    gvwMasterCOMMITMENTAMT: TcxGridDBBandedColumn;
    gvwMasterABSORBAMT: TcxGridDBBandedColumn;
    gvwMasterBGAMT: TcxGridDBBandedColumn;
    gvwMasterHAIRCUT: TcxGridDBBandedColumn;
    gvwMasterBAEID: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterDISTRIBUTIONDATE: TcxGridDBBandedColumn;
    gvwMasterLISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterREFUNDDATE: TcxGridDBBandedColumn;
    gvwMasterISINDATE: TcxGridDBBandedColumn;
    gvwMasterIS_CURRENT_INSTRUMENT: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterALLOTMENT_VOUCHER: TcxGridDBBandedColumn;
    gvwMasterALLOTMENT_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterALLOTMENT_SIID: TcxGridDBBandedColumn;
    gvwMasterPOOLING_VOUCHER: TcxGridDBBandedColumn;
    gvwMasterPOOLING_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterPOOLING_SIID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCOMMITMENTQTY: TcxGridDBBandedColumn;
    gvwMasterABSORBQTY: TcxGridDBBandedColumn;
    gvwMasterIPO_TYPE: TcxGridDBBandedColumn;
    gvwMasterIPO_PRODUCT: TcxGridDBBandedColumn;
    gvwMasterCOUPON_RATE: TcxGridDBBandedColumn;
    gvwMasterMATURITYDATE: TcxGridDBBandedColumn;
    gvwMasterCALCULATE_DAYS_METHOD: TcxGridDBBandedColumn;
    gvwMasterCOUNTINGDAYS_METHOD: TcxGridDBBandedColumn;
    gvwMasterISSUER_TYPE: TcxGridDBBandedColumn;
    PoolingAllocationDistribution1: TMenuItem;
    cdsIPOAllotmentByIPOALLOTMENT_GROUPID: TLargeintField;
    cdsIPOPoolingByIPOPOOLING_GROUPID: TLargeintField;
    cdsIPOListUSEGROUP: TStringField;
    cdsIPOUSEGROUP: TStringField;
    cdsIPOGROUPID: TIntegerField;
    Cancel1: TMenuItem;
    cdsIPOMNGMT_FEE: TFloatField;
    cdsIPOUNDERWT_FEE: TFloatField;
    cdsIPOCOMMITMENTQTY: TLargeintField;
    cdsIPOABSORBQTY: TLargeintField;
    cdsIPOListCOMMITMENTQTY: TLargeintField;
    cdsIPOListABSORBQTY: TLargeintField;
    cdsIPOListMNGMT_FEE: TFloatField;
    cdsIPOListUNDERWT_FEE: TFloatField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure actBookIPOUpdate(Sender: TObject);
    procedure actViewAllIPOBookExecute(Sender: TObject);
    procedure actBookIPOExecute(Sender: TObject);
    procedure cdsIPONewRecord(DataSet: TDataSet);
    procedure actAllotmentExecute(Sender: TObject);
    procedure cdsIPOAllotmentACCIDChange(Sender: TField);
    procedure DataContainerAfterCreateEditorForm(AForm: TForm);
    procedure cdsIPOAllotmentQTYChange(Sender: TField);
    procedure actIPOPoolingExecute(Sender: TObject);
    procedure cdsIPOPoolingORDERQTYChange(Sender: TField);
    procedure cdsIPOPoolingACCIDChange(Sender: TField);
    procedure gvwMasterFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actStartAckExecute(Sender: TObject);
    procedure actModifyExecute(Sender: TObject);
    procedure actStartAckUpdate(Sender: TObject);
    procedure actModifyUpdate(Sender: TObject);
    procedure actDoneUpdate(Sender: TObject);
    procedure cdsIPOAllotmentNewRecord(DataSet: TDataSet);
    procedure actViewAckExecute(Sender: TObject);
    procedure DataContainerBeforeInsert(Sender: TNMasterDetailData; var AContinue: Boolean);
    procedure actDoneExecute(Sender: TObject);
    procedure cdsIPOAllotmentQTYPROCESSChange(Sender: TField);
    procedure cdsIPOBeforePost(DataSet: TDataSet);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure cdsIPOPoolingNewRecord(DataSet: TDataSet);
    procedure cdsIPOBookByIPONewRecord(DataSet: TDataSet);
    procedure cdsIPOBookOutstandingNewRecord(DataSet: TDataSet);
    procedure cdsIPOCOMMITMENTAMTChange(Sender: TField);
    procedure actFixedIPODistributionPoolingExecute(Sender: TObject);
    procedure actPostedIPOAlloctExecute(Sender: TObject);
    procedure actPosedIPOPoolingExecute(Sender: TObject);
    procedure actCreateVoucherAllotmentExecute(Sender: TObject);
    procedure actCreateVoucherPoolingExecute(Sender: TObject);
    procedure actFixedAllotmentDistributionExecute(Sender: TObject);
    procedure actPostingIPOExecute(Sender: TObject);
    procedure actPostingIPOUpdate(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actInstrumentRegistrationExecute(Sender: TObject);
    procedure actInstrumentRegistrationUpdate(Sender: TObject);
    procedure actPoolingAllocationDistributionExecute(Sender: TObject);
    procedure actIPOAllotmentGroupUpdate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure cdsIPOCOMMITMENTQTYChange(Sender: TField);
  private
    { Private declarations }
    FFlowAct: string;
    FSystemDate: TDateTime;
  public
    { Public declarations }
    property FlowAct: string read FFlowAct write FFlowAct;
    procedure CompleteFlow(ActivityID: Integer);
    procedure RefreshIPOFlow;
    procedure ViewBooking(ReadOnly: Boolean);
    procedure ViewAllotment(ReadOnly: Boolean; Distribution: Boolean);
    procedure ViewAllotmentFinance(ReadOnly: Boolean);
    procedure ViewPooling(ReadOnly: Boolean);
    procedure ViewPoolingFinance(ReadOnly: Boolean);
    procedure ViewPaymentBAE(ReadOnly: Boolean);
    procedure ViewDistributionFixAlotment(ReadOnly: Boolean);
    procedure ViewDistributionPooling(ReadOnly: Boolean);
    procedure ViewRefundPoolingOrder(ReadOnly: Boolean);
    procedure ViewPoolingDistribution(ADistribution: Boolean);
    procedure ViewAllotmentDistribution(ADistribution: Boolean);
  end;

var
  frmIPOList: TfrmIPOList;

implementation

{$R *.dfm}

uses
  DataGlobal, FormIPO, FormIPOBooks, FormIPOBook, FormIPOAllotments, DataLookup,
  FormIPOPoolings, FormIPOAllotmentFinance, FormIPOPoolingFinance,
  FormIPOPaymentBAE, FormIPOPoolingsDistribution, FormIPOAllotmentsDist,
  ClassRemoteServer, FormInstrument, FormInstrumentBond, FormEditorData,
  FormIPOAllotmentGroup, FormIPOAllotmentGroupList, FormIPOPoolingGroupList;

procedure TfrmIPOList.actAllotmentExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotments;
  oFormGroup: TfrmIPOAllotmentGroupList;
begin
  inherited;

//  cdsIPO.Close;
//  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
//  cdsIPO.Open;

  if cdsIPOUSEGROUP.AsString = '0' then
  begin
//    cdsIPOAllotmentByIPO.Close;
//    cdsIPOAllotmentByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
//    cdsIPOAllotmentByIPO.Open;

    oForm := TfrmIPOAllotments.Create(nil);
    TfrmIPOAllotments(oForm).IPOID   := cdsIPOListIPOID.AsInteger;
    TfrmIPOAllotments(oForm).GroupID := 0;

//    TfrmIPOAllotments(oForm).dsSubject.DataSet   := cdsIPO;
//    TfrmIPOAllotments(oForm).dsAllotment.DataSet := cdsIPOAllotmentByIPO;
    try
      oForm.FormBrowse := Self;
      oForm.ShowModal;
    finally
      FreeAndNil(oForm);
    end;
  end
  else
  begin
    oFormGroup := TfrmIPOAllotmentGroupList.Create(nil);
    try
      TfrmIPOAllotmentGroupList(oFormGroup).IPOID := cdsIPOListIPOID.AsInteger;
      oFormGroup.ShowModal;
    finally
      FreeAndNil(oFormGroup);
    end;
  end;
end;

procedure TfrmIPOList.actBookIPOExecute(Sender: TObject);
begin
  inherited;
  frmIPOBook.Run(-1, Self);
end;

procedure TfrmIPOList.actBookIPOUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not cdsIPOList.IsEmpty); // and (cdsIPOListCONDATE.AsDateTime = FSystemDate);
end;

procedure TfrmIPOList.actCancelExecute(Sender: TObject);
begin
//  inherited;
  if MessageQuestion('Cancel IPO Process') then
  begin
    cdsIPO.Close;
    cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
    cdsIPO.Open;

    cdsIPO.Edit;
    cdsIPOSTATUS.AsString := 'C';
    cdsIPO.Post;
    cdsIPO.ApplyUpdates(-1);

    cdsIPOList.Refresh;
  end;
end;

procedure TfrmIPOList.actCreateVoucherAllotmentExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to create voucher IPO Allotment?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
//    dmGlobal.RemoteServer.GeneratePaymentIPOAllotment(cdsIPOListIPOID.AsInteger, sMsg);
    dmGlobal.RemoteServer.GenerateVoucherIPOAllotment(cdsIPOListIPOID.AsInteger, sMsg);
    cdsIPOList.Refresh;
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOList.actCreateVoucherPoolingExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to create voucher IPO Pooling?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
//    dmGlobal.RemoteServer.GeneratePaymentIPOPolling(cdsIPOListIPOID.AsInteger, sMsg);
    dmGlobal.RemoteServer.GenerateVoucherIPOPooling(cdsIPOListIPOID.AsInteger, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOList.actDoneExecute(Sender: TObject);
var
  sActCode: string;
  bComplete: Boolean;
  sMsg: string;
begin
  inherited;

  sActCode := cdsIPOFlowACTIVITY_CODE.AsString;
  FlowAct := sActCode;

  if (sActCode = 'RG') or (sActCode = 'FP') or (sActCode = 'SR') or (sActCode = 'CS') then
  begin
    DataContainer.Open;
    bComplete := False;
    if DataContainer.ModalResult = mrOk then
    begin
      if (sActCode = 'SR') then
        bComplete := dmGlobal.RemoteServer.RegisterIPOStock(cdsIPOListIPOID.AsInteger, sMsg)
      else if (sActCode = 'CS') then
      begin
        cdsIPO.Close;
        cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
        cdsIPO.Open;

        if not cdsIPO.IsEmpty then
        begin
          cdsIPO.Edit;
          cdsIPOSTATUS.AsString := 'S';
          cdsIPO.Post;
          bComplete := cdsIPO.ApplyUpdates(0) = 0;
        end;
      end
      else
        bComplete := True;
    end;

    if bComplete then
      CompleteFlow(cdsIPOFlowACTIVITY_ID.AsInteger);
  end
  else
  begin
    CompleteFlow(cdsIPOFlowACTIVITY_ID.AsInteger);
  end;
end;

procedure TfrmIPOList.actDoneUpdate(Sender: TObject);
begin
  inherited;
  actDone.Enabled := (cdsIPOFlowSTATUS.AsString = '1') and (UpperCase(cdsIPOFlowHANDLE_BY.AsString)
    = UpperCase(dmGlobal.UserID)) and (not tlActivities.FocusedNode.HasChildren);
end;

procedure TfrmIPOList.actEditExecute(Sender: TObject);
begin
//  inherited;
  DataContainer.Edit;
end;

procedure TfrmIPOList.actEditUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsIPOListSTATUS.AsString = 'O';
end;

procedure TfrmIPOList.actFixedAllotmentDistributionExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to process allotment distribution?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.DistributionIPOFixAllotment(cdsIPOListIPOID.AsInteger, sMsg);
    cdsIPOList.Refresh;
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOList.actFixedIPODistributionPoolingExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to process pooling distribution?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.DistributionIPOPooling(cdsIPOListIPOID.AsInteger, sMsg);
    cdsIPOList.Refresh;
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOList.actInstrumentRegistrationExecute(Sender: TObject);
var
  oForm: TfrmEditorData;
  sCountingDaysMethod: Integer;
begin
  inherited;
  if UpperCase(cdsIPOListIPO_TYPE.AsString) = 'B' then
  begin
    oForm := TfrmInstrumentBond.Create(self);
    with TfrmInstrumentBond(oForm) do
    begin
      cdsInstrumentBond.Close;
      cdsInstrumentBond.Params[0].AsInteger := -1;
      cdsInstrumentBond.Open;

      if (cdsIPOListCALCULATE_DAYS_METHOD.AsInteger  = 0) or (cdsIPOListCALCULATE_DAYS_METHOD.AsInteger = 2) then
        sCountingDaysMethod := 1
      else
        sCountingDaysMethod := 2;

      cdsInstrumentBond.Append;
      cdsInstrumentBondMARKETCODE.AsString             := 'IDX'; //<- as default
      cdsInstrumentBondINSTRUMENT_TYPE_CODE.AsString   := cdsIPOListIPO_TYPE.AsString;
      cdsInstrumentBondISSUERNAME.AsString             := cdsIPOListACCNAME.AsString;
      cdsInstrumentBondSHORTNAME.AsString              := cdsIPOListSCRIPNAME.AsString;
      cdsInstrumentBondLONGNAME.AsString               := cdsIPOListSCRIPNAME.AsString;
      cdsInstrumentBondCCY.AsString                    := cdsIPOListCCY.AsString;
      cdsInstrumentBondISINCODE.AsString               := cdsIPOListISINCODE.AsString;
      cdsInstrumentBondISINDATE.AsDateTime             := cdsIPOListISINDATE.AsDateTime;
      cdsInstrumentBondDELISTINGDATE.AsDateTime        := cdsIPOListLISTINGDATE.AsDateTime;
      cdsInstrumentBondLISTINGDATE.AsDateTime          := cdsIPOListLISTINGDATE.AsDateTime;
      cdsInstrumentBondMATURITYDATE.AsDateTime         := cdsIPOListMATURITYDATE.AsDateTime;
      cdsInstrumentBondCALCULATE_DAYS_METHOD.AsInteger := cdsIPOListCALCULATE_DAYS_METHOD.AsInteger;
      cdsInstrumentBondCOUPON_IN_YEAR.AsInteger        := cdsIPOListCOUNTINGDAYS_METHOD.AsInteger;
      cdsInstrumentBondISSUEDATE.AsDateTime            := cdsIPOListENTRYDATE.AsDateTime;
      cdsInstrumentBondEFFECTIVEDATE.AsDateTime        := cdsIPOListIPODATE.AsDateTime;
      cdsInstrumentBondRATING.AsString                 := cdsIPOListCOUPON_RATE.AsString;
      cdsInstrumentBondOFFERING_PERIODBEG.AsDateTime   := cdsIPOListORDERFROMDATE.AsDateTime;
      cdsInstrumentBondOFFERING_PERIODEND.AsDateTime   := cdsIPOListORDERTODATE.AsDateTime;
      cdsInstrumentBondREGIONALBONDS.AsInteger         := 1; //<- as default <- 1 : Local, 2 : Foreign
      cdsInstrumentBondCOUNTINGDAYS_METHOD.AsInteger   := sCountingDaysMethod;
    end;
  end
  else
  begin
    oForm := TfrmInstrument.Create(self);
    with TfrmInstrument(oForm) do
    begin
      cdsInstrument.Close;
      cdsInstrument.Params[0].AsInteger := -1;
      cdsInstrument.Open;

      cdsInstrument.Append;
      cdsInstrumentMARKETCODE.AsString           := 'IDX';
      cdsInstrumentINSTRUMENT_TYPE_CODE.AsString := cdsIPOListIPO_TYPE.AsString;
      cdsInstrumentISSUERID.AsInteger            := cdsIPOListACCID.AsInteger;
      cdsInstrumentISSUERNAME.AsString           := cdsIPOListACCNAME.AsString;
      cdsInstrumentSHORTNAME.AsString            := cdsIPOListSCRIPNAME.AsString;
      cdsInstrumentLONGNAME.AsString             := cdsIPOListSCRIPNAME.AsString;
      cdsInstrumentCCY.AsString                  := cdsIPOListCCY.AsString;
      cdsInstrumentISINCODE.AsString             := cdsIPOListISINCODE.AsString;
      cdsInstrumentISINDATE.AsDateTime           := cdsIPOListISINDATE.AsDateTime;
      cdsInstrumentDELISTINGDATE.AsDateTime      := cdsIPOListLISTINGDATE.AsDateTime;
      cdsInstrumentLISTINGDATE.AsDateTime        := cdsIPOListLISTINGDATE.AsDateTime;
    end;
  end;

  if oForm.ShowModal = mrOk then
  begin
    cdsIPO.Close;
    cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
    cdsIPO.Open;

    cdsIPO.Edit;
    if UpperCase(cdsIPOListIPO_TYPE.AsString) = 'B' then
    begin
      cdsIPOINSTRUMENT_ID.AsInteger := TfrmInstrumentBond(oForm).cdsInstrumentBondINSTRUMENT_ID.AsInteger;

      TfrmInstrumentBond(oForm).cdsInstrumentBond.Post;
      TfrmInstrumentBond(oForm).cdsInstrumentBond.ApplyUpdates(-1);
    end
    else
    begin
      cdsIPOINSTRUMENT_ID.AsInteger := TfrmInstrument(oForm).cdsInstrumentINSTRUMENT_ID.AsInteger;

      TfrmInstrument(oForm).cdsInstrument.Post;
      TfrmInstrument(oForm).cdsInstrument.ApplyUpdates(-1);
    end;
    cdsIPO.Post;
    cdsIPO.ApplyUpdates(-1);
  end;

  FreeAndNil(oForm);
  cdsIPOList.Refresh;
end;

procedure TfrmIPOList.actInstrumentRegistrationUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsIPOListINSTRUMENT_ID.AsInteger = 0;
end;

procedure TfrmIPOList.actIPOAllotmentGroupUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not cdsIPOList.IsEmpty);
end;

procedure TfrmIPOList.actIPOPoolingExecute(Sender: TObject);
var
  oForm: TfrmIPOPoolings;
  oFormGroup: TfrmIPOPoolingGroupList;
begin
  inherited;

  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

//  if cdsIPOABSORBQTY.AsFloat >= cdsIPOCOMMITMENTQTY.AsFloat then
//  begin
  if cdsIPOUSEGROUP.AsString = '0' then
  begin
    cdsIPOPoolingByIPO.Close;
    cdsIPOPoolingByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
    cdsIPOPoolingByIPO.Open;

    oForm := TfrmIPOPoolings.Create(nil);
    TfrmIPOPoolings(oForm).IPOID   := cdsIPOListIPOID.AsInteger;
    TfrmIPOPoolings(oForm).GroupID := 0;
    try
      oForm.FormBrowse := Self;
      oForm.ShowModal;
    finally
      FreeAndNil(oForm);
    end;
  end
  else
  begin
    oFormGroup := TfrmIPOPoolingGroupList.Create(nil);
    try
      TfrmIPOPoolingGroupList(oFormGroup).IPOID := cdsIPOListIPOID.AsInteger;
      oFormGroup.ShowModal;
    finally
      FreeAndNil(oFormGroup);
    end;
  end;
//  end
//  else
//  begin
//    ShowMessage('You can input IPO Pooling if Over Subscribe IPO Allotment');
//  end;
end;

procedure TfrmIPOList.actModifyExecute(Sender: TObject);
var
  sActCode: string;
begin
  inherited;

  sActCode := cdsIPOFlowACTIVITY_CODE.AsString;
  FlowAct := sActCode;

  if sActCode = 'RG' then
    DataContainer.Edit
  else if sActCode = 'BB' then
    ViewBooking(False)
  else if sActCode = 'FP' then
    DataContainer.Edit
  else if sActCode = 'AL' then
    ViewAllotment(False, False)
  else if sActCode = 'AF' then
    ViewAllotmentFinance(False)
  else if sActCode = 'PO' then
    ViewPooling(False)
  else if sActCode = 'PF' then
    ViewPoolingFinance(False)
  else if sActCode = 'PB' then
    ViewPaymentBAE(False)
  else if sActCode = 'SR' then
    DataContainer.Edit
  else if sActCode = 'DF' then
    ViewAllotmentDistribution(True)
  else if sActCode = 'DP' then
    ViewPoolingDistribution(True)
  else if sActCode = 'RO' then
//    DataContainer.Open;

end;

procedure TfrmIPOList.actModifyUpdate(Sender: TObject);
begin
  inherited;
  actModify.Enabled := (cdsIPOFlowSTATUS.AsString = '1') and (UpperCase(cdsIPOFlowHANDLE_BY.AsString)
    = UpperCase(dmGlobal.UserID)) and (not tlActivities.FocusedNode.HasChildren);
end;

procedure TfrmIPOList.actNewExecute(Sender: TObject);
begin
//  inherited;
  DataContainer.Insert;
end;

procedure TfrmIPOList.actPoolingAllocationDistributionExecute(Sender: TObject);
var
  oForm: TfrmIPOPoolingsDist;
begin
  inherited;
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOPoolingByIPO.Close;
  cdsIPOPoolingByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOPoolingByIPO.Open;

  oForm := TfrmIPOPoolingsDist.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.actPosedIPOPoolingExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to posting this IPO Pooling?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if dmGlobal.RemoteServer.PostingIPOPolling(cdsIPOListIPOID.AsInteger, sMsg) then
    begin
      cdsIPOList.Refresh;
    end;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOList.actPostedIPOAlloctExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to posting this IPO Allotment?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if dmGlobal.RemoteServer.PostingIPOAllotment(cdsIPOListIPOID.AsInteger, sMsg) then
    begin
      cdsIPOList.Refresh;
    end;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOList.actPostingIPOExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to posting this IPO?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if dmGlobal.RemoteServer.PostingIPO(cdsIPOListIPOID.AsInteger, sMsg) then
    begin
      cdsIPOList.Refresh;
    end;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmIPOList.actPostingIPOUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsIPOListSTATUS.AsString = 'O';
end;

procedure TfrmIPOList.actStartAckExecute(Sender: TObject);
var
  dtProcess: TDateTime;
  bMark: TBookmark;
  iAct: Integer;
begin
  inherited;
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  cdsIPOFlow.Edit;
  cdsIPOFlowSTATUS.AsString := '1';
  cdsIPOFlowHANDLE_DATE.AsDateTime := dtProcess;
  cdsIPOFlowHANDLE_BY.AsString := dmGlobal.UserID;
  cdsIPOFlow.Post;

  if (cdsIPOFlowACTIVITY_NEXT.IsNull) and (not cdsIPOFlowACTIVITY_PARENT.IsNull) then
  begin
    iAct := cdsIPOFlowACTIVITY_PARENT.AsInteger;
    bMark := cdsIPOFlow.GetBookmark;
    if cdsIPOFlow.Locate('ACTIVITY_ID', iAct, []) then
    begin
      cdsIPOFlow.Edit;
      cdsIPOFlowSTATUS.AsString := '1';
      cdsIPOFlowHANDLE_DATE.AsDateTime := dtProcess;
      cdsIPOFlowHANDLE_BY.AsString := dmGlobal.UserID;
      cdsIPOFlow.Post;
    end;
    cdsIPOFlow.GotoBookmark(bMark);
  end;
end;

procedure TfrmIPOList.actStartAckUpdate(Sender: TObject);
begin
  inherited;
  actStartAck.Enabled := (cdsIPOFlowSTATUS.AsString = '0') and (not tlActivities.FocusedNode.HasChildren);
end;

procedure TfrmIPOList.actViewAckExecute(Sender: TObject);
var
  sActCode: string;
begin
  inherited;

  sActCode := cdsIPOFlowACTIVITY_CODE.AsString;
  FlowAct := sActCode;

  if sActCode = 'RG' then
    DataContainer.Open
  else if sActCode = 'BB' then
    ViewBooking(True)
  else if sActCode = 'FP' then
    DataContainer.Open
  else if sActCode = 'AL' then
    ViewAllotment(True, False)
  else if sActCode = 'AF' then
    ViewAllotmentFinance(True)
  else if sActCode = 'PO' then
    ViewPooling(True)
  else if sActCode = 'PF' then
    ViewPoolingFinance(True)
  else if sActCode = 'PB' then
    ViewPaymentBAE(True)
  else if sActCode = 'SR' then
    DataContainer.Open
  else if sActCode = 'CS' then
    DataContainer.Open
  else if sActCode = 'DF' then
    ViewAllotmentDistribution(False)
  else if sActCode = 'DP' then
    ViewPoolingDistribution(False)
  else if sActCode = 'RO' then
//    DataContainer.Open;

end;

procedure TfrmIPOList.actViewAllIPOBookExecute(Sender: TObject);
begin
  inherited;
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOBookByIPO.Close;
  cdsIPOBookByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOBookByIPO.Open;

//  if cdsIPOBookByIPO.IsEmpty then
//  begin
//    MessageDlg('This IPO doesn''t have book order!', mtInformation, [mbOK], 0);
//  end
//  else
  begin
    frmIPOBooks.Run(cdsIPOListSCRIPNAME.AsString, Self);
  end;
end;

procedure TfrmIPOList.cdsIPOAllotmentACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', Sender.Value, []) then
      cdsIPOAllotmentACCCODE.AsString := cdsLuAccountACCCODE.AsString;

//    if (cdsIPOAllotmentISUSEWHT.AsString = '1') then
//      cdsIPOAllotmentWHT_PCT.AsFloat := cdsIPOWHT.AsFloat
//    else
//      cdsIPOAllotmentWHT_PCT.AsFloat := 0;
  end;
end;

procedure TfrmIPOList.cdsIPOAllotmentNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsIPOAllotmentALLOTMENTDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsIPOAllotmentPOSTEDFINANCE.AsString := '0';
  cdsIPOAllotmentVOUCHERCREATED.AsString := '0';
  cdsIPOAllotmentCONFIRMED.AsString := '0';
end;

procedure TfrmIPOList.cdsIPOAllotmentQTYChange(Sender: TField);
begin
  inherited;
  cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
end;

procedure TfrmIPOList.cdsIPOAllotmentQTYPROCESSChange(Sender: TField);
var
  NetFee: Double;
begin
  inherited;
  cdsIPOAllotmentAMOUNT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOAllotmentQTYPROCESS.AsFloat;
  NetFee := cdsIPOAllotmentNETFEE_PCT.AsFloat * cdsIPOAllotmentAMOUNT.AsFloat / 100;
  cdsIPOAllotmentBFEE.AsFloat := dmGlobal.RoundFloatNumber(NetFee * 100 / (100 + cdsIPOAllotmentVAT_PCT.AsFloat), 2);
  cdsIPOAllotmentVAT.AsFloat := dmGlobal.RoundFloatNumber(cdsIPOAllotmentVAT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2);

  if (dmGlobal.RemoteServer.CheckAccountChargeUsed(cdsIPOAllotmentACCID.AsInteger, 'IDX', 'CHG9') = '1') then
    cdsIPOAllotmentWHT.AsFloat := dmGlobal.RoundFloatNumber(cdsIPOAllotmentWHT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2)
  else
    cdsIPOAllotmentWHT.AsFloat := 0;

  cdsIPOAllotmentNETAMOUNT.AsFloat := cdsIPOAllotmentAMOUNT.AsFloat +
    cdsIPOAllotmentBFEE.AsFloat + cdsIPOAllotmentVAT.AsFloat - cdsIPOAllotmentWHT.AsFloat;
end;

procedure TfrmIPOList.cdsIPOBeforePost(DataSet: TDataSet);
begin
  inherited;
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

procedure TfrmIPOList.cdsIPOBookByIPONewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsIPOBookByIPOBOOKDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmIPOList.cdsIPOBookOutstandingNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsIPOBookOutstandingBOOKDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmIPOList.cdsIPOCOMMITMENTAMTChange(Sender: TField);
begin
  inherited;
  cdsIPOBGAMT.AsFloat := cdsIPOCOMMITMENTAMT.AsFloat * 0.25;
end;

procedure TfrmIPOList.cdsIPOCOMMITMENTQTYChange(Sender: TField);
begin
  inherited;
  cdsIPOCOMMITMENTAMT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOCOMMITMENTQTY.AsLargeInt;
end;

procedure TfrmIPOList.cdsIPONewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsIPOIPOID.AsInteger := -1;
  cdsIPOIPOCODE.AsString := '<AUTO>';
  cdsIPOENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
//  cdsIPOIPODATE.AsDateTime := cdsIPOENTRYDATE.AsDateTime;
  cdsIPOSTATUS.AsString := 'O';
  cdsIPOIS_CURRENT_INSTRUMENT.AsString := '0';
  cdsIPONETFEE.AsFloat := 1;
  cdsIPOCOMMITMENTQTY.AsFloat := 0;
  cdsIPOABSORBQTY.AsFloat := 0;
  cdsIPOABSORBAMT.AsFloat := 0;
  cdsIPOVAT.AsFloat := 10;
  cdsIPOWHT.AsFloat := 2;
  cdsIPOIPO_TYPE.AsString := 'S';
  cdsIPOCCY.AsString      := 'IDR';
  cdsIPOUSEGROUP.AsString := '1';

  cdsIPOISSUER_TYPE.AsString := 'C';
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuMarket.Locate('MARKETCODE', dmGlobal.RemoteServer.GetDefaultMarket, []) then
    begin
      if (cdsLuMarketVATPCT.AsFloat <> 0) and (cdsLuMarketWHTPCT.AsFloat <> 0) then
      begin
        cdsIPOVAT.AsFloat := cdsLuMarketVATPCT.AsFloat;
        cdsIPOWHT.AsFloat := cdsLuMarketWHTPCT.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmIPOList.cdsIPOPoolingACCIDChange(Sender: TField);
var
  oDataset: TDataSet;
begin
  inherited;
  oDataset := dmGlobal.IntDataLookup.cdsLuCustAccount;

  if oDataset.Locate('ACCID', cdsIPOPoolingACCID.Value, []) then
  begin
    cdsIPOPoolingCUST_NAME.AsString := oDataset.FieldByName('CUST_NAME').AsString;
    cdsIPOPoolingCUST_IDCARDTYPE.AsString := oDataset.FieldByName('CUST_IDCARDTYPE').AsString;
    cdsIPOPoolingCUST_IDCARDNO.AsString := oDataset.FieldByName('CUST_IDCARDNO').AsString;
    cdsIPOPoolingCUST_IDCARDEXPIRE.AsDateTime := oDataset.FieldByName('CUST_IDCARDEXPIRE').AsDateTime;
    cdsIPOPoolingCUST_ADDRESS.AsString := oDataset.FieldByName('CUST_ADDRESS').AsString;
    cdsIPOPoolingCUST_PHONE.AsString := oDataset.FieldByName('CUST_PHONE').AsString;
    cdsIPOPoolingCUST_FAX.AsString := oDataset.FieldByName('CUST_FAX').AsString;
    cdsIPOPoolingCUST_MAIL.AsString := oDataset.FieldByName('CUST_MAIL').AsString;
  end;
end;

procedure TfrmIPOList.cdsIPOPoolingNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsIPOPoolingPOOLINGDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsIPOPoolingPOOLINGTYPE.AsString := 'C';
end;

procedure TfrmIPOList.cdsIPOPoolingORDERQTYChange(Sender: TField);
begin
  inherited;
  cdsIPOPoolingORDERAMT.AsFloat := cdsIPOPoolingORDERQTY.AsFloat * cdsIPOPoolingFIXEDPRICE.AsFloat;
end;

procedure TfrmIPOList.CompleteFlow(ActivityID: Integer);
var
  dtProcess: TDateTime;
  iAct, iNextAct, iParentAct: Integer;
  bComplete, bContinue: Boolean;
  sMsg: String;
begin
  dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  iNextAct := -1;
  cdsIPOFlow.DisableControls;

  try
    iAct := cdsIPOFlowACTIVITY_ID.AsInteger;

    bContinue := True;
    if cdsIPOFlowACTIVITY_CODE.AsString = 'DF' then
    begin
      dmGlobal.RemoteServer.DistributionIPOFixAllotment(cdsIPOFlowIPOID.AsLargeInt, sMsg);
      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end
    else if cdsIPOFlowACTIVITY_CODE.AsString = 'DP' then
    begin
      cdsCountConfirm.Close;
      cdsCountConfirm.Params[0].AsInteger := cdsIPOFlowIPOID.AsInteger;
      cdsCountConfirm.Open;

      if cdsCountConfirmCOUNTING.AsInteger = 0 then
      begin
        dmGlobal.RemoteServer.DistributionIPOPooling(cdsIPOFlowIPOID.AsInteger, sMsg);
        MessageDlg(sMsg, mtInformation, [mbOk], 0);
        bContinue := True;
      end
      else
        bContinue := False;

    end;

    if bContinue then
    begin
      cdsIPOFlow.Edit;
      cdsIPOFlowSTATUS.AsString := '2';
      cdsIPOFlowCOMPLETE_DATE.AsDateTime := dtProcess;
      cdsIPOFlowCOMPLETE_BY.AsString := dmGlobal.UserID;
      cdsIPOFlow.Post;

      if not cdsIPOFlowACTIVITY_PARENT.IsNull then
      begin
        iParentAct := cdsIPOFlowACTIVITY_PARENT.AsInteger;

        cdsIPOFlow.Filter := 'ACTIVITY_PARENT = ' + cdsIPOFlowACTIVITY_PARENT.AsString;
        cdsIPOFlow.Filtered := True;

        bComplete := True;
        cdsIPOFlow.First;
        while not cdsIPOFlow.Eof do
        begin
          if cdsIPOFlowSTATUS.AsString <> '2' then
            bComplete := False;

          cdsIPOFlow.Next;
        end;

        cdsIPOFlow.Filtered := False;
        cdsIPOFlow.Filter := '';

        if bComplete then
        begin
          if cdsIPOFlow.Locate('ACTIVITY_ID', iParentAct, []) then
          begin
            cdsIPOFlow.Edit;
            cdsIPOFlowSTATUS.AsString := '2';
            cdsIPOFlowCOMPLETE_DATE.AsDateTime := dtProcess;
            cdsIPOFlowCOMPLETE_BY.AsString := dmGlobal.UserID;
            cdsIPOFlow.Post;
          end;
        end
        else
        begin
          cdsIPOFlow.Locate('ACTIVITY_ID', iAct, []);
        end;
      end;

      if not cdsIPOFlowACTIVITY_NEXT.IsNull then
      begin
        iNextAct := cdsIPOFlowACTIVITY_NEXT.AsInteger;
        if cdsIPOFlow.Locate('ACTIVITY_ID', iNextAct, []) then
        begin
          cdsIPOFlow.Edit;
          cdsIPOFlowSTATUS.AsString := '0';
          cdsIPOFlow.Post;

          iParentAct := cdsIPOFlowACTIVITY_ID.AsInteger;

          cdsIPOFlow.Filter := 'ACTIVITY_PARENT = ' + cdsIPOFlowACTIVITY_ID.AsString;
          cdsIPOFlow.Filtered := True;

          cdsIPOFlow.First;
          while not cdsIPOFlow.Eof do
          begin
            cdsIPOFlow.Edit;
            cdsIPOFlowSTATUS.AsString := '0';
            cdsIPOFlow.Post;

            cdsIPOFlow.Next;
          end;

          cdsIPOFlow.Filtered := False;
          cdsIPOFlow.Filter := '';
        end;
      end;
    end
    else
      MessageDlg('Please confirm distribution status before distributed', mtInformation, [mbOk], 0);

  finally
    cdsIPOFlow.EnableControls;
    RefreshIPOFlow;
    if iNextAct <> -1 then
      cdsIPOFlow.Locate('ACTIVITY_ID', iNextAct, [])
    else
      cdsIPOFlow.Locate('ACTIVITY_ID', iAct, []);
  end;
end;

procedure TfrmIPOList.DataContainerAfterCreateEditorForm(AForm: TForm);
begin
  inherited;
  TfrmIPO(AForm).FlowAct := FlowAct;

  if DataContainer.State in [mddsInsert] then
  begin
    cdsIPOABSORBAMT.Clear;
    cdsIPOENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
//    cdsIPOIPODATE.AsDateTime := cdsIPOENTRYDATE.AsDateTime;
    cdsIPOSTATUS.AsString := 'O';
    cdsIPOIS_CURRENT_INSTRUMENT.AsString := '0';
    cdsIPOFIXEDPRICE.Clear;
    cdsIPOSCRIPCODE.Clear;
    cdsIPOISINCODE.Clear;
    cdsIPOISINDATE.Clear;
    cdsIPOINSTRUMENT_ID.Clear;
  end;
end;

procedure TfrmIPOList.DataContainerBeforeInsert(Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  FlowAct := 'RG';
end;

procedure TfrmIPOList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmIPO;
end;

procedure TfrmIPOList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
      cdsLuCcy.Open;

//    if not cdsLuCustAccount.Active then
//      cdsLuCustAccount.Open;

    if not cdsLuBAE.Active then
      cdsLuBAE.Open;

    if not cdsLuMarket.Active then
      cdsLuMarket.Open;

//    if not cdsLuAccount.Active then
//      cdsLuAccount.Open;

    if not cdsLuInstrumentAll.Active then
      cdsLuInstrumentAll.Open;

    if not cdsLuInstrumentType.Active then
      cdsLuInstrumentType.Open;
  end;

  cdsIPOList.Close;
  cdsIPOList.Open;

  FSystemDate := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmIPOList.gvwMasterFocusedRecordChanged(Sender:
  TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord:
  TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  RefreshIPOFlow;
end;

procedure TfrmIPOList.RefreshIPOFlow;
var
  iAct: Integer;
begin
  iAct := -1;

  if cdsIPOList.IsEmpty then
  begin
    cdsIPOFlow.Close;
  end
  else
  begin
    if cdsIPOFlow.Active then
      iAct := cdsIPOFlowACTIVITY_ID.AsInteger;

    cdsIPOFlow.Close;
    cdsIPOFlow.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
    cdsIPOFlow.Open;

    cdsIPOFlow.Locate('ACTIVITY_ID', iAct, []);
  end;

  tlActivities.ApplyBestFit;
  tlActivities.FullExpand;
end;

procedure TfrmIPOList.ViewAllotment(ReadOnly, Distribution: Boolean);
var
  oForm: TfrmIPOAllotments;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOAllotmentByIPO.Close;
  cdsIPOAllotmentByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOAllotmentByIPO.Open;

  oForm := TfrmIPOAllotments.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ReadOnly := ReadOnly;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewAllotmentDistribution(ADistribution: Boolean);
var
  oForm: TfrmIPOAllotmentsDistribution;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOAllotmentByIPO.Close;
  cdsIPOAllotmentByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOAllotmentByIPO.Open;

  oForm := TfrmIPOAllotmentsDistribution.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.Distribution := ADistribution;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewAllotmentFinance(ReadOnly: Boolean);
var
  oForm: TfrmIPOAllotmentFinance;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsAllotmentFinanceCheck.Close;
  cdsAllotmentFinanceCheck.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
  cdsAllotmentFinanceCheck.Params[1].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsAllotmentFinanceCheck.Open;

  oForm := TfrmIPOAllotmentFinance.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ReadOnly := ReadOnly;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewBooking(ReadOnly: Boolean);
var
  oForm: TfrmIPOBooks;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOBookByIPO.Close;
  cdsIPOBookByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOBookByIPO.Open;

  oForm := TfrmIPOBooks.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ReadOnly := ReadOnly;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewDistributionFixAlotment(ReadOnly: Boolean);
var
  oForm: TfrmIPOAllotments;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOAllotmentByIPO.Close;
  cdsIPOAllotmentByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOAllotmentByIPO.Open;

  oForm := TfrmIPOAllotments.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ReadOnly := ReadOnly;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewDistributionPooling(ReadOnly: Boolean);
begin

end;

procedure TfrmIPOList.ViewPaymentBAE(ReadOnly: Boolean);
var
  oForm: TfrmIPOPaymentBAE;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsAllotmentBAE.Close;
  cdsAllotmentBAE.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsAllotmentBAE.Open;

  cdsPoolingBAE.Close;
  cdsPoolingBAE.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsPoolingBAE.Open;

  oForm := TfrmIPOPaymentBAE.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ReadOnly := ReadOnly;
    oForm.gvwAllotment.ApplyBestFit;
    oForm.gvwPooling.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewPooling(ReadOnly: Boolean);
var
  oForm: TfrmIPOPoolings;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOPoolingByIPO.Close;
  cdsIPOPoolingByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOPoolingByIPO.Open;

  oForm := TfrmIPOPoolings.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ReadOnly := ReadOnly;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewPoolingDistribution(ADistribution: Boolean);
var
  oForm: TfrmIPOPoolingsDist;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsIPOPoolingByIPO.Close;
  cdsIPOPoolingByIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPOPoolingByIPO.Open;

  oForm := TfrmIPOPoolingsDist.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.Distribution := ADistribution;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewPoolingFinance(ReadOnly: Boolean);
var
  oForm: TfrmIPOPoolingFinance;
begin
  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsIPO.Open;

  cdsPoolingFinanceCheck.Close;
  cdsPoolingFinanceCheck.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
  cdsPoolingFinanceCheck.Params[1].AsInteger := cdsIPOListIPOID.AsInteger;
  cdsPoolingFinanceCheck.Open;

  oForm := TfrmIPOPoolingFinance.Create(nil);
  try
    oForm.FormBrowse := Self;
    oForm.ReadOnly := ReadOnly;
    oForm.gvwMaster.ApplyBestFit;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOList.ViewRefundPoolingOrder(ReadOnly: Boolean);
begin

end;

initialization
  RegisterClass(TfrmIPOList);

end.

