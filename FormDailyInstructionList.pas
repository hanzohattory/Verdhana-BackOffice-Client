unit FormDailyInstructionList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore, System.IOUtils,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCalendar, cxBarEditItem, System.Win.ComObj;

type
  TfrmDailyInstructionList = class(TfrmBrowseData)
    cdsDailyInstructionMTList: TNClientDataset;
    cdsDailyInstructionMTListInstructionID: TLargeintField;
    cdsDailyInstructionMTListexternalReference: TStringField;
    cdsDailyInstructionMTListinstructionType: TStringField;
    cdsDailyInstructionMTListtradeDate: TDateField;
    cdsDailyInstructionMTListsettlementDate: TDateField;
    cdsDailyInstructionMTListAccount_Code: TStringField;
    cdsDailyInstructionMTListAccount_Name: TStringField;
    cdsDailyInstructionMTListksei_sid: TStringField;
    cdsDailyInstructionMTListparticipantCode: TStringField;
    cdsDailyInstructionMTListparticipantAccount: TStringField;
    cdsDailyInstructionMTListsecurityCodeType: TStringField;
    cdsDailyInstructionMTListsecurityCode: TStringField;
    cdsDailyInstructionMTListnumberOfSecurities: TFloatField;
    cdsDailyInstructionMTListsettlementAmount: TFloatField;
    cdsDailyInstructionMTListdescription: TStringField;
    cdsDailyInstructionMTListpurpose: TStringField;
    cdsDailyInstructionMTListtradingReference: TStringField;
    cdsDailyInstructionMTListsettlementReason: TStringField;
    cdsDailyInstructionMTListStatus: TStringField;
    cdsDailyInstructionMTListTRANSNO: TStringField;
    cdsDailyInstructionMTListTRANSTYPE: TStringField;
    cdsDailyInstructionMTListTRANSTYPE_NAME: TStringField;
    cdsDailyInstructionMTListEXCHANGE: TStringField;
    cdsDailyInstructionMTListCREATED_DATE: TDateTimeField;
    cdsDailyInstructionMTListCREATED_SYSTEMDATE: TDateField;
    cdsDailyInstructionMTListCREATED_UI: TStringField;
    cdsDailyInstructionMTListDOWNLOAD_COUNT: TIntegerField;
    cdsDailyInstructionMTListDOWNLOAD_DATE: TDateTimeField;
    cdsDailyInstructionMTListDOWNLOAD_USER: TStringField;
    cdsDailyInstructionMTListCANCEL_DATE: TDateTimeField;
    cdsDailyInstructionMTListCANCEL_SYSTEMDATE: TDateField;
    cdsDailyInstructionMTListCANCEL_NOTES: TStringField;
    cdsDailyInstructionMTListCANCEL_UI: TStringField;
    cdsDailyInstructionMTListSETTLED_DATE: TDateTimeField;
    cdsDailyInstructionMTListSETTLED_SYSTEMDATE: TDateField;
    cdsDailyInstructionMTListSETTLED_UI: TStringField;
    gvwMasterInstructionID: TcxGridDBBandedColumn;
    gvwMasterexternalReference: TcxGridDBBandedColumn;
    gvwMasterinstructionType: TcxGridDBBandedColumn;
    gvwMastertradeDate: TcxGridDBBandedColumn;
    gvwMastersettlementDate: TcxGridDBBandedColumn;
    gvwMasterAccount_Code: TcxGridDBBandedColumn;
    gvwMasterAccount_Name: TcxGridDBBandedColumn;
    gvwMasterksei_sid: TcxGridDBBandedColumn;
    gvwMasterparticipantCode: TcxGridDBBandedColumn;
    gvwMasterparticipantAccount: TcxGridDBBandedColumn;
    gvwMastersecurityCodeType: TcxGridDBBandedColumn;
    gvwMastersecurityCode: TcxGridDBBandedColumn;
    gvwMasternumberOfSecurities: TcxGridDBBandedColumn;
    gvwMastersettlementAmount: TcxGridDBBandedColumn;
    gvwMasterdescription: TcxGridDBBandedColumn;
    gvwMasterpurpose: TcxGridDBBandedColumn;
    gvwMastertradingReference: TcxGridDBBandedColumn;
    gvwMastersettlementReason: TcxGridDBBandedColumn;
    gvwMasterStatus: TcxGridDBBandedColumn;
    gvwMasterTRANSNO: TcxGridDBBandedColumn;
    gvwMasterTRANSTYPE: TcxGridDBBandedColumn;
    gvwMasterTRANSTYPE_NAME: TcxGridDBBandedColumn;
    gvwMasterEXCHANGE: TcxGridDBBandedColumn;
    gvwMasterCREATED_DATE: TcxGridDBBandedColumn;
    gvwMasterCREATED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterCREATED_UI: TcxGridDBBandedColumn;
    gvwMasterDOWNLOAD_COUNT: TcxGridDBBandedColumn;
    gvwMasterDOWNLOAD_DATE: TcxGridDBBandedColumn;
    gvwMasterDOWNLOAD_USER: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_NOTES: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterSETTLED_DATE: TcxGridDBBandedColumn;
    gvwMasterSETTLED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLED_UI: TcxGridDBBandedColumn;
    dtSettled: TcxBarEditItem;
    actXmlOTCInstruction: TNAction;
    actGenerateXLS: TNAction;
    actCancelInstruction: TNAction;
    GenerateToExcelFile1: TMenuItem;
    GenerateToXMLFile1: TMenuItem;
    CancelInstruction1: TMenuItem;
    cdsDailyInstructionNMTList: TNClientDataset;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    DateTimeField1: TDateTimeField;
    DateField3: TDateField;
    StringField19: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField2: TDateTimeField;
    StringField20: TStringField;
    DateTimeField3: TDateTimeField;
    DateField4: TDateField;
    StringField21: TStringField;
    StringField22: TStringField;
    DateTimeField4: TDateTimeField;
    DateField5: TDateField;
    StringField23: TStringField;
    dsDailyInstructionNMTList: TDataSource;
    grdMasterLevel2: TcxGridLevel;
    gvwNonMarketTrans: TcxGridDBBandedTableView;
    gvwNonMarketTransInstructionID: TcxGridDBBandedColumn;
    gvwNonMarketTransexternalReference: TcxGridDBBandedColumn;
    gvwNonMarketTransinstructionType: TcxGridDBBandedColumn;
    gvwNonMarketTranstradeDate: TcxGridDBBandedColumn;
    gvwNonMarketTranssettlementDate: TcxGridDBBandedColumn;
    gvwNonMarketTransAccount_Code: TcxGridDBBandedColumn;
    gvwNonMarketTransAccount_Name: TcxGridDBBandedColumn;
    gvwNonMarketTransksei_sid: TcxGridDBBandedColumn;
    gvwNonMarketTransparticipantCode: TcxGridDBBandedColumn;
    gvwNonMarketTransparticipantAccount: TcxGridDBBandedColumn;
    gvwNonMarketTranssecurityCodeType: TcxGridDBBandedColumn;
    gvwNonMarketTranssecurityCode: TcxGridDBBandedColumn;
    gvwNonMarketTransnumberOfSecurities: TcxGridDBBandedColumn;
    gvwNonMarketTranssettlementAmount: TcxGridDBBandedColumn;
    gvwNonMarketTransdescription: TcxGridDBBandedColumn;
    gvwNonMarketTranspurpose: TcxGridDBBandedColumn;
    gvwNonMarketTranstradingReference: TcxGridDBBandedColumn;
    gvwNonMarketTranssettlementReason: TcxGridDBBandedColumn;
    gvwNonMarketTransStatus: TcxGridDBBandedColumn;
    gvwNonMarketTransTRANSNO: TcxGridDBBandedColumn;
    gvwNonMarketTransTRANSTYPE: TcxGridDBBandedColumn;
    gvwNonMarketTransTRANSTYPE_NAME: TcxGridDBBandedColumn;
    gvwNonMarketTransEXCHANGE: TcxGridDBBandedColumn;
    gvwNonMarketTransCREATED_DATE: TcxGridDBBandedColumn;
    gvwNonMarketTransCREATED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwNonMarketTransCREATED_UI: TcxGridDBBandedColumn;
    gvwNonMarketTransDOWNLOAD_COUNT: TcxGridDBBandedColumn;
    gvwNonMarketTransDOWNLOAD_DATE: TcxGridDBBandedColumn;
    gvwNonMarketTransDOWNLOAD_USER: TcxGridDBBandedColumn;
    gvwNonMarketTransCANCEL_DATE: TcxGridDBBandedColumn;
    gvwNonMarketTransCANCEL_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwNonMarketTransCANCEL_NOTES: TcxGridDBBandedColumn;
    gvwNonMarketTransCANCEL_UI: TcxGridDBBandedColumn;
    gvwNonMarketTransSETTLED_DATE: TcxGridDBBandedColumn;
    gvwNonMarketTransSETTLED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwNonMarketTransSETTLED_UI: TcxGridDBBandedColumn;
    cdsCreateOTCInsXml: TNClientDataset;
    cdsCreateOTCInsXls: TNClientDataset;
    cdsCreateOTCInsXmlxmlValues: TMemoField;
    cdsCreateOTCInsXmlextFile: TStringField;
    cdsCreatePTCInsXml: TNClientDataset;
    cdsCreateCOLWInsXml: TNClientDataset;
    cdsCreateCOLDSInsXml: TNClientDataset;
    cdsCreateSECTRSInsXmlt1: TNClientDataset;
    cdsCreateBTSInsXml: TNClientDataset;
    cdsCreateWTInsXml: TNClientDataset;
    cdsCreateVCAInsXml: TNClientDataset;
    cdsCreateOTCInsXlsexternalReference: TStringField;
    cdsCreateOTCInsXlsinstructionType: TStringField;
    cdsCreateOTCInsXlsparticipantCode: TStringField;
    cdsCreateOTCInsXlsparticipantAccount: TStringField;
    cdsCreateOTCInsXlsparticipantAccountCash: TStringField;
    cdsCreateOTCInsXlscounterpartCode: TStringField;
    cdsCreateOTCInsXlssecurityCodeType: TStringField;
    cdsCreateOTCInsXlssecurityCode: TStringField;
    cdsCreateOTCInsXlsnumberOfSecurities: TFloatField;
    cdsCreateOTCInsXlstradeDate: TStringField;
    cdsCreateOTCInsXlscurrencyCode: TStringField;
    cdsCreateOTCInsXlssettlementAmount: TFloatField;
    cdsCreateOTCInsXlssettlementDate: TStringField;
    cdsCreateOTCInsXlsdescription: TStringField;
    cdsCreateOTCInsXlspurpose: TStringField;
    cdsCreateOTCInsXlstradingReference: TStringField;
    cdsCreateOTCInsXlssettlementReason: TStringField;
    cdsCreateCOLWInsXls: TNClientDataset;
    cdsCreateCOLDSInsXls: TNClientDataset;
    cdsCreateSECTRSInsXls: TNClientDataset;
    cdsCreateBTSInsXls: TNClientDataset;
    cdsCreateWTInsXls: TNClientDataset;
    cdsCreateVCAInsXls: TNClientDataset;
    cdsCreateCOLWInsXlsexternalReference: TStringField;
    cdsCreateCOLWInsXlsparticipantCode: TStringField;
    cdsCreateCOLWInsXlssourceAccount: TStringField;
    cdsCreateCOLWInsXlstargetAccount: TStringField;
    cdsCreateCOLWInsXlscurrencyCode: TStringField;
    cdsCreateCOLWInsXlssecurityCodeType: TStringField;
    cdsCreateCOLWInsXlssecurityCode: TStringField;
    cdsCreateCOLWInsXlsinstrumentQuantity: TFloatField;
    cdsCreateCOLWInsXlssettlementDate: TStringField;
    cdsCreateCOLWInsXlsdescription: TStringField;
    cdsCreateCOLDSInsXlsexternalReference: TStringField;
    cdsCreateCOLDSInsXlsparticipantCode: TStringField;
    cdsCreateCOLDSInsXlssourceAccount: TStringField;
    cdsCreateCOLDSInsXlstargetAccount: TStringField;
    cdsCreateCOLDSInsXlscurrencyCode: TStringField;
    cdsCreateCOLDSInsXlssecurityCodeType: TStringField;
    cdsCreateCOLDSInsXlssecurityCode: TStringField;
    cdsCreateCOLDSInsXlsinstrumentQuantity: TFloatField;
    cdsCreateCOLDSInsXlssettlementDate: TStringField;
    cdsCreateCOLDSInsXlsdescription: TStringField;
    cdsCreateSECTRSInsXlsexternalReference: TStringField;
    cdsCreateSECTRSInsXlsparticipantCode: TStringField;
    cdsCreateSECTRSInsXlssourceAccount: TStringField;
    cdsCreateSECTRSInsXlstargetAccount: TStringField;
    cdsCreateSECTRSInsXlssecurityCodeType: TStringField;
    cdsCreateSECTRSInsXlssecurityCode: TStringField;
    cdsCreateSECTRSInsXlsnumberOfSecurities: TFloatField;
    cdsCreateSECTRSInsXlssettlementDate: TStringField;
    cdsCreateSECTRSInsXlsdescription: TStringField;
    cdsCreateBTSInsXlsexternalReference: TStringField;
    cdsCreateBTSInsXlsinstructionType: TStringField;
    cdsCreateBTSInsXlsparticipantCode: TStringField;
    cdsCreateBTSInsXlsparticipantAccount: TStringField;
    cdsCreateBTSInsXlscounterpartAccount: TStringField;
    cdsCreateBTSInsXlsvalueDate: TStringField;
    cdsCreateBTSInsXlscurrencyCode: TStringField;
    cdsCreateBTSInsXlscashAmount: TFloatField;
    cdsCreateBTSInsXlsdescription: TStringField;
    cdsCreateWTInsXlsexternalReference: TStringField;
    cdsCreateWTInsXlsinstructionType: TStringField;
    cdsCreateWTInsXlsparticipantCode: TStringField;
    cdsCreateWTInsXlsparticipantAccount: TStringField;
    cdsCreateWTInsXlsbeneficiaryAccount: TStringField;
    cdsCreateWTInsXlsbeneficiaryInstitution: TStringField;
    cdsCreateWTInsXlsvalueDate: TStringField;
    cdsCreateWTInsXlscurrencyCode: TStringField;
    cdsCreateWTInsXlscashAmount: TFloatField;
    cdsCreateWTInsXlsdescription: TStringField;
    cdsCreateVCAInsXlsexternalReference: TStringField;
    cdsCreateVCAInsXlscorporateActionType: TStringField;
    cdsCreateVCAInsXlseffectiveDate: TStringField;
    cdsCreateVCAInsXlssecurityCodeType: TStringField;
    cdsCreateVCAInsXlssecurityCode: TStringField;
    cdsCreateVCAInsXlsparticipantCode: TStringField;
    cdsCreateVCAInsXlsparticipantAccount: TStringField;
    cdsCreateVCAInsXlsoptionName: TStringField;
    cdsCreateVCAInsXlsoptionQuantity: TStringField;
    cdsCreateVCAInsXlsadditionalProceedRequest: TStringField;
    cdsCreateVCAInsXlsdescription: TStringField;
    actXmlPTCInstruction: TNAction;
    actXmlColwInstruction: TNAction;
    actXmlColdsInstruction: TNAction;
    actXmlSECTRSInstruction: TNAction;
    actXmlBTInstruction: TNAction;
    actXmlWTInstruction: TNAction;
    actXmlVCAInstruction: TNAction;
    cdsCreateCOLWInsXmlxmlValues: TMemoField;
    cdsCreateCOLWInsXmlextFile: TStringField;
    cdsCreatePTCInsXmlxmlValues: TMemoField;
    cdsCreatePTCInsXmlextFile: TStringField;
    cdsCreateCOLDSInsXmlxmlValues: TMemoField;
    cdsCreateCOLDSInsXmlextFile: TStringField;
    cdsCreateSECTRSInsXmlt1xmlValues: TMemoField;
    cdsCreateSECTRSInsXmlt1extFile: TStringField;
    cdsCreateBTSInsXmlxmlValues: TMemoField;
    cdsCreateBTSInsXmlextFile: TStringField;
    cdsCreateWTInsXmlxmlValues: TMemoField;
    cdsCreateWTInsXmlextFile: TStringField;
    cdsCreateVCAInsXmlxmlValues: TMemoField;
    cdsCreateVCAInsXmlextFile: TStringField;
    GenerateXMLFile1: TMenuItem;
    PTCInstruction1: TMenuItem;
    COLWInstruction1: TMenuItem;
    COLDSInstruction1: TMenuItem;
    SECTRSInstruction1: TMenuItem;
    BSInstruction1: TMenuItem;
    WTInstruction1: TMenuItem;
    VCAInstruction1: TMenuItem;
    actXlsOTCInstruction: TNAction;
    OTCInstruction1: TMenuItem;
    actXlsColwInstruction: TNAction;
    actXlsColdsInstruction: TNAction;
    actXlsSECTRSInstruction: TNAction;
    actXlsBTInstruction: TNAction;
    actXlsWTInstruction: TNAction;
    actXlsVCAInstruction: TNAction;
    COLWInstruction2: TMenuItem;
    COLDSInstruction2: TMenuItem;
    SECTRSInstruction2: TMenuItem;
    BTInstruction1: TMenuItem;
    WTInstruction2: TMenuItem;
    CopyFromSelectedData2: TMenuItem;
    grdMasterLevel3: TcxGridLevel;
    gvwCashSettlementDeposit: TcxGridDBBandedTableView;
    cdsCashSettlementDepositList: TNClientDataset;
    dsCashSettlementDepositList: TDataSource;
    cdsCashSettlementDepositListCashInstructionID: TLargeintField;
    cdsCashSettlementDepositListInstruction_Type: TStringField;
    cdsCashSettlementDepositListSettle_Side: TStringField;
    cdsCashSettlementDepositListexternalReference: TStringField;
    cdsCashSettlementDepositListparticipantCode: TStringField;
    cdsCashSettlementDepositListsourceAccount: TStringField;
    cdsCashSettlementDepositListtargetAccount: TStringField;
    cdsCashSettlementDepositListcurrencyCode: TStringField;
    cdsCashSettlementDepositListsecurityCodeType: TStringField;
    cdsCashSettlementDepositListsecurityCode: TStringField;
    cdsCashSettlementDepositListinstrumentQuantity: TFloatField;
    cdsCashSettlementDepositListsettlementDate: TStringField;
    cdsCashSettlementDepositListdescription: TStringField;
    cdsCashSettlementDepositListDownload_Count: TIntegerField;
    cdsCashSettlementDepositListDownload_Date: TDateTimeField;
    cdsCashSettlementDepositListDownload_UI: TStringField;
    cdsCashSettlementDepositListCreate_Date: TDateTimeField;
    cdsCashSettlementDepositListCreate_SystemDate: TDateTimeField;
    cdsCashSettlementDepositListCreate_UI: TStringField;
    gvwCashSettlementDepositCashInstructionID: TcxGridDBBandedColumn;
    gvwCashSettlementDepositInstruction_Type: TcxGridDBBandedColumn;
    gvwCashSettlementDepositSettle_Side: TcxGridDBBandedColumn;
    gvwCashSettlementDepositexternalReference: TcxGridDBBandedColumn;
    gvwCashSettlementDepositparticipantCode: TcxGridDBBandedColumn;
    gvwCashSettlementDepositsourceAccount: TcxGridDBBandedColumn;
    gvwCashSettlementDeposittargetAccount: TcxGridDBBandedColumn;
    gvwCashSettlementDepositcurrencyCode: TcxGridDBBandedColumn;
    gvwCashSettlementDepositsecurityCodeType: TcxGridDBBandedColumn;
    gvwCashSettlementDepositsecurityCode: TcxGridDBBandedColumn;
    gvwCashSettlementDepositinstrumentQuantity: TcxGridDBBandedColumn;
    gvwCashSettlementDepositsettlementDate: TcxGridDBBandedColumn;
    gvwCashSettlementDepositdescription: TcxGridDBBandedColumn;
    gvwCashSettlementDepositDownload_Count: TcxGridDBBandedColumn;
    gvwCashSettlementDepositDownload_Date: TcxGridDBBandedColumn;
    gvwCashSettlementDepositDownload_UI: TcxGridDBBandedColumn;
    gvwCashSettlementDepositCreate_Date: TcxGridDBBandedColumn;
    gvwCashSettlementDepositCreate_SystemDate: TcxGridDBBandedColumn;
    gvwCashSettlementDepositCreate_UI: TcxGridDBBandedColumn;
    actGenerateCashSettleDeposit: TNAction;
    N5: TMenuItem;
    PopupMenu: TPopupMenu;
    GenerateCashSettlementDeposit2: TMenuItem;
    actXlsSETDSInstruction: TNAction;
    cdsCreateOTCInsTxt: TNClientDataset;
    cdsCreateOTCInsTxtdataValues: TMemoField;
    cdsCreateOTCInsTxtextFile: TStringField;
    cdsCreatePTCInsTxt: TNClientDataset;
    cdsCreateCOLWInsTxt: TNClientDataset;
    cdsCreateCOLDSInsTxt: TNClientDataset;
    cdsCreateSECTRSInsTxt: TNClientDataset;
    cdsCreateVCAInsTxt: TNClientDataset;
    cdsCreateWTInsTxt: TNClientDataset;
    cdsCreateBTInsTxt: TNClientDataset;
    cdsCreateSETDSInsTxt: TNClientDataset;
    cdsCreateCOLWInsTxtdataValues: TMemoField;
    cdsCreateCOLWInsTxtextFile: TStringField;
    cdsCreateCOLDSInsTxtdataValues: TMemoField;
    cdsCreateCOLDSInsTxtextFile: TStringField;
    cdsCreateSECTRSInsTxtdataValues: TMemoField;
    cdsCreateSECTRSInsTxtextFile: TStringField;
    cdsCreateBTInsTxtdataValues: TMemoField;
    cdsCreateBTInsTxtextFile: TStringField;
    cdsCreateWTInsTxtdataValues: TMemoField;
    cdsCreateWTInsTxtextFile: TStringField;
    cdsCreateVCAInsTxtdataValues: TMemoField;
    cdsCreateVCAInsTxtextFile: TStringField;
    cdsCreateSETDSInsTxtdataValues: TMemoField;
    cdsCreateSETDSInsTxtextFile: TStringField;
    actTxtOTCInstruction: TNAction;
    actTxttPTCInstruction: TNAction;
    acttxtCOLWInstruction: TNAction;
    acttxtCOLDSInstruction: TNAction;
    acttxtSECTRSInstruction: TNAction;
    acttxtBTInstruction: TNAction;
    acttxtWTInstruction: TNAction;
    acttxtVCAInstruction: TNAction;
    actXmlSETDSInstruction: TNAction;
    acttxtSETDSInstruction: TNAction;
    cdsCreateSETDSInsXml: TNClientDataset;
    cdsCreateSETDSInsXmlxmlValues: TMemoField;
    cdsCreateSETDSInsXmlextFile: TStringField;
    cdsCreateSETDSInsXls: TNClientDataset;
    cdsCreateSETDSInsXlsexternalReference: TStringField;
    cdsCreateSETDSInsXlsparticipantCode: TStringField;
    cdsCreateSETDSInsXlssourceAccount: TStringField;
    cdsCreateSETDSInsXlstargetAccount: TStringField;
    cdsCreateSETDSInsXlssecurityCodeType: TStringField;
    cdsCreateSETDSInsXlssecurityCode: TStringField;
    cdsCreateSETDSInsXlsnumberOfSecurities: TFloatField;
    cdsCreateSETDSInsXlssettlementDate: TStringField;
    cdsCreateSETDSInsXlsdescription: TStringField;
    cdsCreatePTCInsTxtdataValues: TMemoField;
    cdsCreatePTCInsTxtextFile: TStringField;
    SETDSInstruction1: TMenuItem;
    SETDSInstruction2: TMenuItem;
    GenerateToTXTFile1: TMenuItem;
    N1: TMenuItem;
    GenerateXmlFile2: TMenuItem;
    GenerateXmlFile3: TMenuItem;
    GenerateToTextFile1: TMenuItem;
    OTCInstruction2: TMenuItem;
    COLWInstruction3: TMenuItem;
    COLDSInstruction3: TMenuItem;
    SECTRSInstruction3: TMenuItem;
    BTCInstruction1: TMenuItem;
    WTInstruction3: TMenuItem;
    VCAInstruction2: TMenuItem;
    SETDSInstruction6: TMenuItem;
    actGenerateToXLS: TNAction;
    actGenerateToXML: TNAction;
    actGenerateToTXT: TNAction;
    cdsCreateSDSCashSettleXLS: TNClientDataset;
    cdsCreateSDSCashSettleXML: TNClientDataset;
    cdsCreateSDSCashSettleTXT: TNClientDataset;
    cdsCreateSDSCashSettleXLSexternalReference: TStringField;
    cdsCreateSDSCashSettleXLSparticipantCode: TStringField;
    cdsCreateSDSCashSettleXLSsourceAccount: TStringField;
    cdsCreateSDSCashSettleXLStargetAccount: TStringField;
    cdsCreateSDSCashSettleXLScurrencyCode: TStringField;
    cdsCreateSDSCashSettleXLSsecurityCodeType: TStringField;
    cdsCreateSDSCashSettleXLSsecurityCode: TStringField;
    cdsCreateSDSCashSettleXLSinstrumentQuantity: TFloatField;
    cdsCreateSDSCashSettleXLSsettlementDate: TStringField;
    cdsCreateSDSCashSettleXLSdescription: TStringField;
    cdsCreateSDSCashSettleXMLxmlValues: TMemoField;
    cdsCreateSDSCashSettleXMLextFile: TStringField;
    cdsCreateSDSCashSettleTXTdataValues: TMemoField;
    cdsCreateSDSCashSettleTXTextFile: TStringField;
    actXlsPTCInstruction: TNAction;
    VCAInstruction3: TMenuItem;
    PTCInstruction2: TMenuItem;
    cdsCreatePTCInsXls: TNClientDataset;
    cdsCreatePTCInsXlsexternalReference: TStringField;
    cdsCreatePTCInsXlsparticipantCode: TStringField;
    cdsCreatePTCInsXlssourceAccount: TStringField;
    cdsCreatePTCInsXlstargetAccount: TStringField;
    cdsCreatePTCInsXlscurrencyCode: TStringField;
    cdsCreatePTCInsXlssecurityCodeType: TStringField;
    cdsCreatePTCInsXlssecurityCode: TStringField;
    cdsCreatePTCInsXlsinstrumentQuantity: TFloatField;
    cdsCreatePTCInsXlssettlementDate: TStringField;
    cdsCreatePTCInsXlsdescription: TStringField;
    cdsCreatePAR_PTCInsXml: TNClientDataset;
    cdsCreatePAR_PTCInsXmlxmlValues: TMemoField;
    cdsCreatePAR_PTCInsXmlextFile: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actXmlOTCInstructionExecute(Sender: TObject);
    procedure actXmlPTCInstructionExecute(Sender: TObject);
    procedure actXmlColwInstructionExecute(Sender: TObject);
    procedure actXmlColdsInstructionExecute(Sender: TObject);
    procedure actXmlSECTRSInstructionExecute(Sender: TObject);
    procedure actXmlBTInstructionExecute(Sender: TObject);
    procedure actXmlWTInstructionExecute(Sender: TObject);
    procedure actXmlVCAInstructionExecute(Sender: TObject);
    procedure actXlsOTCInstructionExecute(Sender: TObject);
    procedure actXlsColwInstructionExecute(Sender: TObject);
    procedure actXlsColdsInstructionExecute(Sender: TObject);
    procedure actXlsSECTRSInstructionExecute(Sender: TObject);
    procedure actXlsBTInstructionExecute(Sender: TObject);
    procedure actXlsWTInstructionExecute(Sender: TObject);
    procedure actXlsVCAInstructionExecute(Sender: TObject);
    procedure actGenerateCashSettleDepositExecute(Sender: TObject);
    procedure actXlsSETDSInstructionExecute(Sender: TObject);
    procedure actXmlSETDSInstructionExecute(Sender: TObject);
    procedure actTxtOTCInstructionExecute(Sender: TObject);
    procedure actTxttPTCInstructionExecute(Sender: TObject);
    procedure acttxtCOLWInstructionExecute(Sender: TObject);
    procedure acttxtCOLDSInstructionExecute(Sender: TObject);
    procedure acttxtSECTRSInstructionExecute(Sender: TObject);
    procedure acttxtBTInstructionExecute(Sender: TObject);
    procedure acttxtWTInstructionExecute(Sender: TObject);
    procedure acttxtVCAInstructionExecute(Sender: TObject);
    procedure acttxtSETDSInstructionExecute(Sender: TObject);
    procedure actGenerateToXLSExecute(Sender: TObject);
    procedure actGenerateToXMLExecute(Sender: TObject);
    procedure actGenerateToTXTExecute(Sender: TObject);
    procedure actXlsPTCInstructionExecute(Sender: TObject);
  private
    { Private declarations }

    procedure CreatePTCInXML(AInstructionID: string);
    procedure CreatePAR_PTCInXml(AInstructionID: string);
  public
    { Public declarations }
  end;

var
  frmDailyInstructionList: TfrmDailyInstructionList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmDailyInstructionList.actGenerateCashSettleDepositExecute(
  Sender: TObject);
var
  sMsg: string;
  dtSettle: TDateTime;
begin
  inherited;
  if MessageQuestion('Generate Cash Settlement Deposit ?') then
  begin
    dtSettle := VarToDateTime(dtSettled.EditValue);

    dmGlobal.RemoteServer.GenerateDailyCashInstruction(dtSettle, sMsg);
    MessageInformation('Generate Cash Settlement Deposit has been successfully generated');
  end;
end;

procedure TfrmDailyInstructionList.actGenerateToTXTExecute(Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    for i := 0 to gvwCashSettlementDeposit.Controller.SelectedRecordCount -1 do
    begin
      if sInstructionID <> '' then
        sInstructionID := sInstructionID + ',';
      sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
    end;

    cdsCreateSDSCashSettleTXT.Close;
    cdsCreateSDSCashSettleTXT.Params[0].AsString := sInstructionID;
    cdsCreateSDSCashSettleTXT.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSDSCashSettleTXT.Open;

    if cdsCreateSDSCashSettleTXT.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'COLW_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateSDSCashSettleTXT.first;
      while not cdsCreateSDSCashSettleTXT.Eof do
      begin
        slTxtValues.Add(cdsCreateSDSCashSettleTXTdataValues.AsString);
        cdsCreateSDSCashSettleTXT.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateSDSCashSettleTXTextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateSDSCashSettleTXTextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actGenerateToXLSExecute(Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    for i := 0 to gvwCashSettlementDeposit.Controller.SelectedRecordCount -1 do
    begin
      if sInstructionID <> '' then
        sInstructionID := sInstructionID + ',';
      sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
    end;

    cdsCreateSDSCashSettleXLS.Close;
    cdsCreateSDSCashSettleXLS.Params[0].asString := sInstructionID;
    cdsCreateSDSCashSettleXLS.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSDSCashSettleXLS.Open;

    if cdsCreateSDSCashSettleXLS.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'SDS_Cash_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateSDSCashSettleXLS.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateSDSCashSettleXLS.Fields[i].FieldName;

      cdsCreateSDSCashSettleXLS.DisableControls;
      cdsCreateSDSCashSettleXLS.First;
      while not cdsCreateSDSCashSettleXLS.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateSDSCashSettleXLS.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateSDSCashSettleXLS.Fields[i].AsString;
        end;

        cdsCreateSDSCashSettleXLS.Next;
      end;
    finally
      cdsCreateSDSCashSettleXLS.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actGenerateToXMLExecute(Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    for i := 0 to gvwCashSettlementDeposit.Controller.SelectedRecordCount -1 do
    begin
      if sInstructionID <> '' then
        sInstructionID := sInstructionID + ',';
      sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
    end;

    cdsCreateSDSCashSettleXML.Close;
    cdsCreateSDSCashSettleXML.Params[0].AsString := sInstructionID;
    cdsCreateSDSCashSettleXML.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSDSCashSettleXML.Open;

    if cdsCreateSDSCashSettleXML.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'SDS_Cash_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateSDSCashSettleXML.first;
      while not cdsCreateSDSCashSettleXML.Eof do
      begin
        slXmlValues.Add(cdsCreateSDSCashSettleXMLxmlValues.AsString);
        cdsCreateSDSCashSettleXML.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateSDSCashSettleXMLextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateSDSCashSettleXMLextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsDailyInstructionMTList.Close;
  cdsDailyInstructionMTList.Params[0].AsDate := VarToDateTime(dtSettled.EditValue);
  cdsDailyInstructionMTList.Open;

  cdsDailyInstructionNMTList.Close;
  cdsDailyInstructionNMTList.Params[0].AsDate := VarToDateTime(dtSettled.EditValue);
  cdsDailyInstructionNMTList.Open;

  cdsCashSettlementDepositList.Close;
  cdsCashSettlementDepositList.Params[0].AsDate := VarToDateTime(dtSettled.EditValue);
  cdsCashSettlementDepositList.Open;
end;

procedure TfrmDailyInstructionList.acttxtBTInstructionExecute(Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateBTInsTxt.Close;
    cdsCreateBTInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateBTInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateBTInsTxt.Open;

    if cdsCreateBTInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'BTS_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateBTInsTxt.first;
      while not cdsCreateBTInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateBTInsTxtdataValues.AsString);
        cdsCreateBTInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateBTInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateBTInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.acttxtCOLDSInstructionExecute(
  Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateCOLDSInsTxt.Close;
    cdsCreateCOLDSInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateCOLDSInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateCOLDSInsTxt.Open;

    if cdsCreateCOLDSInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'COLDS_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateCOLDSInsTxt.first;
      while not cdsCreateCOLDSInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateCOLDSInsTxtdataValues.AsString);
        cdsCreateCOLDSInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateCOLDSInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateCOLDSInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.acttxtCOLWInstructionExecute(
  Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateCOLWInsTxt.Close;
    cdsCreateCOLWInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateCOLWInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateCOLWInsTxt.Open;

    if cdsCreateCOLWInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'COLW_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateCOLWInsTxt.first;
      while not cdsCreateCOLWInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateCOLWInsTxtdataValues.AsString);
        cdsCreateCOLWInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateCOLWInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateCOLWInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actTxtOTCInstructionExecute(Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateOTCInsTxt.Close;
    cdsCreateOTCInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateOTCInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateOTCInsTxt.Open;

    if cdsCreateOTCInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateOTCInsTxt.first;
      while not cdsCreateOTCInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateOTCInsTxtdataValues.AsString);
        cdsCreateOTCInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateOTCInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateOTCInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.acttxtSECTRSInstructionExecute(
  Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateSECTRSInsTxt.Close;
    cdsCreateSECTRSInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateSECTRSInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSECTRSInsTxt.Open;

    if cdsCreateSECTRSInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'SECTR_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateSECTRSInsTxt.first;
      while not cdsCreateSECTRSInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateSECTRSInsTxtdataValues.AsString);
        cdsCreateSECTRSInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateSECTRSInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateSECTRSInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.acttxtSETDSInstructionExecute(
  Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateSETDSInsTxt.Close;
    cdsCreateSETDSInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateSETDSInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSETDSInsTxt.Open;

    if cdsCreatePTCInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'PTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateSETDSInsTxt.first;
      while not cdsCreateSETDSInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateSETDSInsTxtdataValues.AsString);
        cdsCreateSETDSInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateSETDSInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateSETDSInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actTxttPTCInstructionExecute(
  Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreatePTCInsTxt.Close;
    cdsCreatePTCInsTxt.Params[0].AsString := sInstructionID;
    cdsCreatePTCInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreatePTCInsTxt.Open;

    if cdsCreatePTCInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'PTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateOTCInsXml.first;
      while not cdsCreateOTCInsXml.Eof do
      begin
        slTxtValues.Add(cdsCreatePTCInsTxtdataValues.AsString);
        cdsCreatePTCInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreatePTCInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreatePTCInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.acttxtVCAInstructionExecute(Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateVCAInsTxt.Close;
    cdsCreateVCAInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateVCAInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateVCAInsTxt.Open;

    if cdsCreateWTInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'WT_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateVCAInsTxt.first;
      while not cdsCreateVCAInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateVCAInsTxtdataValues.AsString);
        cdsCreateVCAInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateVCAInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateVCAInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.acttxtWTInstructionExecute(Sender: TObject);
var
  slTxtValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate txt file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateWTInsTxt.Close;
    cdsCreateWTInsTxt.Params[0].AsString := sInstructionID;
    cdsCreateWTInsTxt.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateWTInsTxt.Open;

    if cdsCreateWTInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'WT_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slTxtValues := TStringList.Create;

      cdsCreateWTInsTxt.first;
      while not cdsCreateWTInsTxt.Eof do
      begin
        slTxtValues.Add(cdsCreateWTInsTxtdataValues.AsString);
        cdsCreateWTInsTxt.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateWTInsTxtextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateWTInsTxtextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slTxtValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slTxtValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlWTInstructionExecute(Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateWTInsXml.Close;
    cdsCreateWTInsXml.Params[0].AsString := sInstructionID;
    cdsCreateWTInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateWTInsXml.Open;

    if cdsCreateWTInsXml.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'WT_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateWTInsXml.first;
      while not cdsCreateWTInsXml.Eof do
      begin
        slXmlValues.Add(cdsCreateWTInsXmlxmlValues.AsString);
        cdsCreateWTInsXml.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateWTInsXmlextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateWTInsXmlextFile.AsString;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.CreatePAR_PTCInXml(AInstructionID: string);
var
  sXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  i: Integer;
begin
  cdsCreatePAR_PTCInsXml.Close;
  cdsCreatePAR_PTCInsXml.Params[0].AsString := AInstructionID;
  cdsCreatePAR_PTCInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
  cdsCreatePAR_PTCInsXml.Open;

  if cdsCreatePAR_PTCInsXml.IsEmpty then
  begin
    MessageError('There is no data can be generated!');
    Exit;
  end;

  sFileName := 'PTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
  try
    sXmlValues := TStringList.Create;

    cdsCreatePAR_PTCInsXml.first;
    while not cdsCreatePAR_PTCInsXml.Eof do
    begin
      sXmlValues.Add(cdsCreatePAR_PTCInsXmlxmlValues.AsString);
      cdsCreatePAR_PTCInsXml.Next;
    end;
  finally
    SaveDlg.FileName := sFileName +'.'+ cdsCreatePAR_PTCInsXmlextFile.AsString;
    if SaveDlg.Execute then
      sFileName := SaveDlg.FileName;

    if sFileName <> '' then
    begin
      i             := 0;
      sTempFileName := ChangeFileExt(sFileName, '');

      repeat
        if FileExists(sFileName) then
        begin
          Inc(i);
          sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreatePAR_PTCInsXmlextFile.AsString;;
        end;
      until (not FileExists(sFileName));

      sXmlValues.SaveToFile(sFileName);
    end;

    FreeAndNil(sXmlValues);
  end;

end;

procedure TfrmDailyInstructionList.CreatePTCInXML(AInstructionID: string);
var
  sXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  i: Integer;
begin
  cdsCreatePTCInsXml.Close;
  cdsCreatePTCInsXml.Params[0].AsString := AInstructionID;
  cdsCreatePTCInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
  cdsCreatePTCInsXml.Open;

  if cdsCreatePTCInsXml.IsEmpty then
  begin
    MessageError('There is no data can be generated!');
    Exit;
  end;

  sFileName := 'PTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
  try
    sXmlValues := TStringList.Create;

    cdsCreatePTCInsXml.first;
    while not cdsCreatePTCInsXml.Eof do
    begin
      sXmlValues.Add(cdsCreatePTCInsXmlxmlValues.AsString);
      cdsCreatePTCInsXml.Next;
    end;
  finally
    SaveDlg.FileName := sFileName +'.'+ cdsCreatePTCInsXmlextFile.AsString;
    if SaveDlg.Execute then
      sFileName := SaveDlg.FileName;

    if sFileName <> '' then
    begin
      i             := 0;
      sTempFileName := ChangeFileExt(sFileName, '');

      repeat
        if FileExists(sFileName) then
        begin
          Inc(i);
          sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreatePTCInsXmlextFile.AsString;;
        end;
      until (not FileExists(sFileName));

      sXmlValues.SaveToFile(sFileName);
    end;

    FreeAndNil(sXmlValues);
  end;
end;

procedure TfrmDailyInstructionList.actXlsBTInstructionExecute(Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateSECTRSInsXls.Close;
    cdsCreateSECTRSInsXls.Params[0].asString := sInstructionID;
    cdsCreateSECTRSInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSECTRSInsXls.Open;

    if cdsCreateSECTRSInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    sFileName := dmGlobal.DailyReportFolder + sFileName +'.xlsx';
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateBTSInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateBTSInsXls.Fields[i].FieldName;

      cdsCreateBTSInsXls.DisableControls;
      cdsCreateBTSInsXls.First;
      while not cdsCreateBTSInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateBTSInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateBTSInsXls.Fields[i].AsString;
        end;

        cdsCreateBTSInsXls.Next;
      end;
    finally
      cdsCreateBTSInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsColdsInstructionExecute(
  Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateCOLDSInsXls.Close;
    cdsCreateCOLDSInsXls.Params[0].asString := sInstructionID;
    cdsCreateCOLDSInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateCOLDSInsXls.Open;

    if cdsCreateCOLDSInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateCOLDSInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateCOLDSInsXls.Fields[i].FieldName;

      cdsCreateCOLDSInsXls.DisableControls;
      cdsCreateCOLDSInsXls.First;
      while not cdsCreateCOLDSInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateCOLDSInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateCOLDSInsXls.Fields[i].AsString;
        end;

        cdsCreateCOLDSInsXls.Next;
      end;
    finally
      cdsCreateCOLDSInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsColwInstructionExecute(
  Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateCOLWInsXls.Close;
    cdsCreateCOLWInsXls.Params[0].asString := sInstructionID;
    cdsCreateCOLWInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateCOLWInsXls.Open;

    if cdsCreateCOLWInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateCOLWInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateCOLWInsXls.Fields[i].FieldName;

      cdsCreateCOLWInsXls.DisableControls;
      cdsCreateCOLWInsXls.First;
      while not cdsCreateCOLWInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateCOLWInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateCOLWInsXls.Fields[i].AsString;
        end;

        cdsCreateCOLWInsXls.Next;
      end;
    finally
      cdsCreateCOLWInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsOTCInstructionExecute(Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateOTCInsXls.Close;
    cdsCreateOTCInsXls.Params[0].AsString := sInstructionID;
    cdsCreateOTCInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateOTCInsXls.Open;

    if cdsCreateOTCInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateOTCInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateOTCInsXls.Fields[i].FieldName;

      cdsCreateOTCInsXls.DisableControls;
      cdsCreateOTCInsXls.First;
      while not cdsCreateOTCInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateOTCInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateOTCInsXls.Fields[i].AsString;
        end;

        cdsCreateOTCInsXls.Next;
      end;
    finally
      cdsCreateOTCInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsPTCInstructionExecute(Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreatePTCInsXls.Close;
    cdsCreatePTCInsXls.Params[0].asString := sInstructionID;
    cdsCreatePTCInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreatePTCInsXls.Open;

    if cdsCreatePTCInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'PTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreatePTCInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreatePTCInsXls.Fields[i].FieldName;

      cdsCreatePTCInsXls.DisableControls;
      cdsCreatePTCInsXls.First;
      while not cdsCreatePTCInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreatePTCInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreatePTCInsXls.Fields[i].AsString;
        end;

        cdsCreatePTCInsXls.Next;
      end;
    finally
      cdsCreatePTCInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsSECTRSInstructionExecute(
  Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';
    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateSECTRSInsXls.Close;
    cdsCreateSECTRSInsXls.Params[0].asString := sInstructionID;
    cdsCreateSECTRSInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSECTRSInsXls.Open;

    if cdsCreateSECTRSInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateSECTRSInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateSECTRSInsXls.Fields[i].FieldName;

      cdsCreateSECTRSInsXls.DisableControls;
      cdsCreateSECTRSInsXls.First;
      while not cdsCreateSECTRSInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateSECTRSInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateSECTRSInsXls.Fields[i].AsString;
        end;

        cdsCreateSECTRSInsXls.Next;
      end;
    finally
      cdsCreateSECTRSInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsSETDSInstructionExecute(
  Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateSETDSInsXls.Close;
    cdsCreateSETDSInsXls.Params[0].asString := sInstructionID;
    cdsCreateSETDSInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSETDSInsXls.Open;

    if cdsCreateSETDSInsTxt.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'SETDS_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateSETDSInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateSETDSInsTxt.Fields[i].FieldName;

      cdsCreateSETDSInsXls.DisableControls;
      cdsCreateSETDSInsXls.First;
      while not cdsCreateSETDSInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateSETDSInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateSETDSInsXls.Fields[i].AsString;
        end;

        cdsCreateSETDSInsXls.Next;
      end;
    finally
      cdsCreateSETDSInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsVCAInstructionExecute(Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateVCAInsXls.Close;
    cdsCreateVCAInsXls.Params[0].asString := sInstructionID;
    cdsCreateVCAInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateVCAInsXls.Open;

    if cdsCreateVCAInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateVCAInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateVCAInsXls.Fields[i].FieldName;

      cdsCreateVCAInsXls.DisableControls;
      cdsCreateVCAInsXls.First;
      while not cdsCreateVCAInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateVCAInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateVCAInsXls.Fields[i].AsString;
        end;

        cdsCreateVCAInsXls.Next;
      end;
    finally
      cdsCreateVCAInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXlsWTInstructionExecute(Sender: TObject);
var
  sFileName, sTempFileName: string;
  sMsg: string;
  i, j, x: integer;
  sSheetName: string;
  oExcel, oSheet: OleVariant;
  sInstructionID: string;
begin
  inherited;
  if MessageQuestion('Generate xls file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateWTInsXls.Close;
    cdsCreateWTInsXls.Params[0].asString := sInstructionID;
    cdsCreateWTInsXls.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateWTInsXls.Open;

    if cdsCreateWTInsXls.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Add;

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      x      := 1;

      for i := 0 to cdsCreateWTInsXls.FieldCount -1 do
        oSheet.Cells[x, i+1] := cdsCreateWTInsXls.Fields[i].FieldName;

      cdsCreateWTInsXls.DisableControls;
      cdsCreateWTInsXls.First;
      while not cdsCreateWTInsXls.Eof do
      begin
        Inc(x);

        for i := 0 to cdsCreateWTInsXls.FieldCount -1 do
        begin
          oSheet.Cells[x, i+1] := cdsCreateWTInsXls.Fields[i].AsString;
        end;

        cdsCreateWTInsXls.Next;
      end;
    finally
      cdsCreateWTInsXls.EnableControls;

      SaveDlg.FileName := sFileName +'.xlsx';
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.xlsx';
          end;
        until (not FileExists(sFileName));

        oExcel.WorkBooks[1].SaveAs(sFileName);

        oExcel.Quit;
        oExcel := Unassigned;
        oSheet := Unassigned;

        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
        MessageInformation(sMsg);
      end;
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlBTInstructionExecute(Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateBTSInsXml.Close;
    cdsCreateBTSInsXml.Params[0].AsString := sInstructionID;
    cdsCreateBTSInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateBTSInsXml.Open;

    if cdsCreateBTSInsXml.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'BT_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateBTSInsXml.first;
      while not cdsCreateBTSInsXml.Eof do
      begin
        slXmlValues.Add(cdsCreateBTSInsXmlxmlValues.AsString);
        cdsCreateBTSInsXml.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateBTSInsXmlextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateBTSInsXmlextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlColdsInstructionExecute(
  Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateCOLDSInsXml.Close;
    cdsCreateCOLDSInsXml.Params[0].AsString := sInstructionID;
    cdsCreateCOLDSInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateCOLDSInsXml.Open;

    if cdsCreateCOLDSInsXml.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'COLDS_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateCOLDSInsXml.first;
      while not cdsCreateCOLDSInsXml.Eof do
      begin
        slXmlValues.Add(cdsCreateCOLDSInsXmlxmlValues.AsString);
        cdsCreateCOLDSInsXml.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateCOLDSInsXmlextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateCOLDSInsXmlextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlColwInstructionExecute(
  Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateCOLWInsXml.Close;
    cdsCreateCOLWInsXml.Params[0].AsString := sInstructionID;
    cdsCreateCOLWInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateCOLWInsXml.Open;

    if cdsCreateCOLWInsXml.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'COLW_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateCOLWInsXml.first;
      while not cdsCreateCOLWInsXml.Eof do
      begin
        slXmlValues.Add(cdsCreateCOLWInsXmlxmlValues.AsString);
        cdsCreateCOLWInsXml.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateCOLWInsXmlextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateCOLWInsXmlextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlOTCInstructionExecute(Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateOTCInsXml.Close;
    cdsCreateOTCInsXml.Params[0].AsString := sInstructionID;
    cdsCreateOTCInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateOTCInsXml.Open;

    if cdsCreateOTCInsXml.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'OTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateOTCInsXml.first;
      while not cdsCreateOTCInsXml.Eof do
      begin
        slXmlValues.Add(cdsCreateOTCInsXmlxmlValues.AsString);
        cdsCreateOTCInsXml.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateOTCInsXmlextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateOTCInsXmlextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlPTCInstructionExecute(Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    try
      CreatePTCInXML(sInstructionID);
      CreatePAR_PTCInXml(sInstructionID);
    finally
      dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      MessageInformation(sMsg);
    end;


//    cdsCreatePTCInsXml.Close;
//    cdsCreatePTCInsXml.Params[0].AsString := sInstructionID;
//    cdsCreatePTCInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
//    cdsCreatePTCInsXml.Open;
//
//    if cdsCreatePTCInsXml.IsEmpty then
//    begin
//      MessageError('There is no data can be generated!');
//      Exit;
//    end;
//
//    sFileName := 'PTC_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
//    try
//      slXmlValues := TStringList.Create;
//
//      cdsCreatePTCInsXml.first;
//      while not cdsCreatePTCInsXml.Eof do
//      begin
//        slXmlValues.Add(cdsCreatePTCInsXmlxmlValues.AsString);
//        cdsCreatePTCInsXml.Next;
//      end;
//    finally
//      SaveDlg.FileName := sFileName +'.'+ cdsCreatePTCInsXmlextFile.AsString;
//      if SaveDlg.Execute then
//        sFileName := SaveDlg.FileName;
//
//      if sFileName <> '' then
//      begin
//        i             := 0;
//        sTempFileName := ChangeFileExt(sFileName, '');
//
//        repeat
//          if FileExists(sFileName) then
//          begin
//            Inc(i);
//            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreatePTCInsXmlextFile.AsString;;
//          end;
//        until (not FileExists(sFileName));
//
//        slXmlValues.SaveToFile(sFileName);
//        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
//      end;
//
//      FreeAndNil(slXmlValues);
//      MessageInformation(sMsg);
//    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlSECTRSInstructionExecute(
  Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateSECTRSInsXmlt1.Close;
    cdsCreateSECTRSInsXmlt1.Params[0].AsString := sInstructionID;
    cdsCreateSECTRSInsXmlt1.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSECTRSInsXmlt1.Open;

    if cdsCreateSECTRSInsXmlt1.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'SECTRS_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateSECTRSInsXmlt1.first;
      while not cdsCreateSECTRSInsXmlt1.Eof do
      begin
        slXmlValues.Add(cdsCreateSECTRSInsXmlt1xmlValues.AsString);
        cdsCreateSECTRSInsXmlt1.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateSECTRSInsXmlt1extFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateSECTRSInsXmlt1extFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlSETDSInstructionExecute(
  Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateSETDSInsXml.Close;
    cdsCreateSETDSInsXml.Params[0].AsString := sInstructionID;
    cdsCreateSETDSInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateSETDSInsXml.Open;

    if cdsCreateSETDSInsXml.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'BT_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateSETDSInsXml.first;
      while not cdsCreateSETDSInsXml.Eof do
      begin
        slXmlValues.Add(cdsCreateSETDSInsXmlxmlValues.AsString);
        cdsCreateSETDSInsXml.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateSETDSInsXmlextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateSETDSInsXmlextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.actXmlVCAInstructionExecute(Sender: TObject);
var
  slXmlValues: TStringList;
  sFileName, sTempFileName: string;
  sMsg: string;
  sInstructionID: string;
  i: Integer;
begin
  inherited;
  if MessageQuestion('Generate xml file ?') then
  begin
    sInstructionID := '';

    if grdMasterLevel1.Active then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterInstructionID.Index]);
      end;
    end
    else if grdMasterLevel2.Active then
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwNonMarketTrans.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end
    else
    begin
      for i := 0 to gvwNonMarketTrans.Controller.SelectedRecordCount -1 do
      begin
        if sInstructionID <> '' then
          sInstructionID := sInstructionID + ',';
        sInstructionID := sInstructionID + VarToStr(gvwCashSettlementDeposit.Controller.SelectedRecords[i].Values[gvwNonMarketTransInstructionID.Index]);
      end;
    end;

    cdsCreateVCAInsXml.Close;
    cdsCreateVCAInsXml.Params[0].AsString := sInstructionID;
    cdsCreateVCAInsXml.Params[1].AsDate   := VarToDateTime(dtSettled.EditValue);
    cdsCreateVCAInsXml.Open;

    if cdsCreateVCAInsXml.IsEmpty then
    begin
      MessageError('There is no data can be generated!');
      Exit;
    end;

    sFileName := 'VCA_Instruction_'+ FormatDateTime('yyyymmdd', VarToDateTime(dtSettled.EditValue));
    try
      slXmlValues := TStringList.Create;

      cdsCreateVCAInsXml.first;
      while not cdsCreateWTInsXml.Eof do
      begin
        slXmlValues.Add(cdsCreateVCAInsXmlxmlValues.AsString);
        cdsCreateVCAInsXml.Next;
      end;
    finally
      SaveDlg.FileName := sFileName +'.'+ cdsCreateVCAInsXmlextFile.AsString;
      if SaveDlg.Execute then
        sFileName := SaveDlg.FileName;

      if sFileName <> '' then
      begin
        i             := 0;
        sTempFileName := ChangeFileExt(sFileName, '');

        repeat
          if FileExists(sFileName) then
          begin
            Inc(i);
            sFileName := sTempFileName +'_'+ IntToStr(i) +'.'+ cdsCreateVCAInsXmlextFile.AsString;;
          end;
        until (not FileExists(sFileName));

        slXmlValues.SaveToFile(sFileName);
        dmGlobal.RemoteServer.DailyInstructionUpdate(sInstructionID, sMsg);
      end;

      FreeAndNil(slXmlValues);
      MessageInformation(sMsg);
    end;
  end;
end;

procedure TfrmDailyInstructionList.FormCreate(Sender: TObject);
var
    dtSystem: TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtSettled.EditValue := dtSystem;
end;

end.
