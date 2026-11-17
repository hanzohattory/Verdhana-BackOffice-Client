unit FormClientOnBoardingList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseMD, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, cxPropertiesStore,
  dxBar, cxClasses, NDatasetContainer, dxPSCore, dxPScxCommon, Vcl.Menus,
  NDatasetAction, Vcl.ActnList, Vcl.ImgList, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxSplitter,
  cxImageComboBox, cxCalendar, cxDBLookupComboBox, Vcl.ExtCtrls, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, System.Actions, System.ImageList;

type
  TfrmClientOnBoardingList = class(TfrmBrowseMD)
    cdsClientOnBoardingList: TNClientDataset;
    cdsCOBActivity: TNClientDataset;
    cdsCOBActivityCUST_REG_NO: TStringField;
    cdsCOBActivityACTIVITY_ID: TIntegerField;
    cdsCOBActivityACTIVITY_SUBID: TIntegerField;
    cdsCOBActivitySTATUS_DATA: TIntegerField;
    cdsCOBActivitySTATUS_ACTIVITY: TIntegerField;
    cdsCOBActivityDATE_PROCESS: TDateTimeField;
    cdsCOBActivityHANDLE_BY: TStringField;
    cdsCOBActivityDATE_COMPLETE: TDateTimeField;
    cdsCOBActivityACTIVITY_DESC: TStringField;
    cdsCOBActivityREASON: TStringField;
    dsCOBActivity: TDataSource;
    cdsCOBDetails: TNClientDataset;
    actCustRetail: TAction;
    actCustInstitution: TAction;
    cxSplitter1: TcxSplitter;
    cdsActivity: TNClientDataset;
    cdsActivityACTIVITY_ID: TIntegerField;
    cdsActivityACTIVITY_SUBID: TIntegerField;
    cdsActivityACTIVITY_DESC: TStringField;
    cdsActivityACTIVITY_EMAIL_CLIENT: TIntegerField;
    cdsActivityACTIVITY_EMAIL_USERS: TIntegerField;
    cdsActivityACTIVITY_COLOR: TStringField;
    cdsActivityACTIVITY_NEXT: TStringField;
    popFlowAct: TPopupMenu;
    actStartAck: TNAction;
    actDone: TNAction;
    actReject: TNAction;
    actViewCOBDetails: TNAction;
    actUploadDocs: TNAction;
    actAssignSales: TNAction;
    actSettingParam: TNAction;
    actInsSID: TNAction;
    actInsSubRek: TNAction;
    actRDN: TNAction;
    actComCharges: TNAction;
    actOrdValidation: TNAction;
    actSettParam: TNAction;
    actIntrsSetting: TNAction;
    StartAck1: TMenuItem;
    N5: TMenuItem;
    Done1: TMenuItem;
    Reject1: TMenuItem;
    N6: TMenuItem;
    CustomerRetail1: TMenuItem;
    CustomerInstitution1: TMenuItem;
    cdsCOBActivityDONE_BY: TStringField;
    cdsCheckBeforeNext: TNClientDataset;
    cdsCheckBeforeNextHITUNG: TIntegerField;
    cdsCommission: TNClientDataset;
    cdsCharges: TNClientDataset;
    cdsAccount: TNClientDataset;
    cdsAccLimit: TNClientDataset;
    AddEditData1: TMenuItem;
    actAddEditData: TNAction;
    actNeedAck: TNAction;
    NeedToAcknowledge1: TMenuItem;
    cdsAccLimitACCID: TIntegerField;
    cdsAccLimitTL_TYPE: TWideStringField;
    cdsAccLimitTLB_CHECK: TWideStringField;
    cdsAccLimitTLB_CHK_MODEL: TWideStringField;
    cdsAccLimitTLB_VALUATE: TFloatField;
    cdsAccLimitTLB_CHK_STOCK: TWideStringField;
    cdsAccLimitTLB_CHK_OVERLIMIT: TWideStringField;
    cdsAccLimitTLB_CHK_OVERDUE: TWideStringField;
    cdsAccLimitTLB_CHK_NVSTATUS: TWideStringField;
    cdsAccLimitTLB_CHK_MNONMS: TWideStringField;
    cdsAccLimitTLS_CHECK: TWideStringField;
    cdsAccLimitTLS_CHK_MODEL: TWideStringField;
    cdsAccLimitTLS_SS: TWideStringField;
    cdsAccLimitTLS_SSNONSS: TWideStringField;
    cdsAccLimitTLS_NVSTATUS: TWideStringField;
    cdsAccLimitTLS_CHK_OVERDUE: TWideStringField;
    cdsAccLimitBUYCLIMIT: TFloatField;
    cdsAccLimitSELLCLIMIT: TFloatField;
    cdsAccLimitCREDITLIMIT: TCurrencyField;
    cdsAccLimitMRGCALLRATIO: TIntegerField;
    cdsAccLimitMRGWARNING: TIntegerField;
    cdsAccLimitMRGFORCESELL: TIntegerField;
    cdsAccLimitMODDA: TDateTimeField;
    cdsAccLimitMODUI: TWideStringField;
    cdsAccLimitAPPDA: TDateTimeField;
    cdsAccLimitAPPUI: TWideStringField;
    cdsAccLimitISDEL: TIntegerField;
    cdsAccBank: TNClientDataset;
    cdsClientOnBoardingListCUST_REG_NO: TStringField;
    cdsClientOnBoardingListPRD_CODE: TStringField;
    cdsClientOnBoardingListNAME: TStringField;
    cdsClientOnBoardingListGENDER: TIntegerField;
    cdsClientOnBoardingListBRCODE: TStringField;
    cdsClientOnBoardingListNATIONALITY: TStringField;
    cdsClientOnBoardingListTAXPAYER_REG: TStringField;
    cdsClientOnBoardingListID_TYPE: TIntegerField;
    cdsClientOnBoardingListID_NO: TStringField;
    cdsClientOnBoardingListID_VALID: TDateField;
    cdsClientOnBoardingListEMAIL: TStringField;
    cdsClientOnBoardingListCELL_PHONE: TStringField;
    cdsClientOnBoardingListHOME_PHONE: TStringField;
    cdsClientOnBoardingListACCID: TIntegerField;
    cdsClientOnBoardingListENTTID: TIntegerField;
    cdsClientOnBoardingListCLIENT_STATUS: TIntegerField;
    gvwBrowseCUST_REG_NO: TcxGridDBBandedColumn;
    gvwBrowsePRD_CODE: TcxGridDBBandedColumn;
    gvwBrowseNAME: TcxGridDBBandedColumn;
    gvwBrowseGENDER: TcxGridDBBandedColumn;
    gvwBrowseBRCODE: TcxGridDBBandedColumn;
    gvwBrowseNATIONALITY: TcxGridDBBandedColumn;
    gvwBrowseTAXPAYER_REG: TcxGridDBBandedColumn;
    gvwBrowseID_TYPE: TcxGridDBBandedColumn;
    gvwBrowseID_NO: TcxGridDBBandedColumn;
    gvwBrowseID_VALID: TcxGridDBBandedColumn;
    gvwBrowseEMAIL: TcxGridDBBandedColumn;
    gvwBrowseCELL_PHONE: TcxGridDBBandedColumn;
    gvwBrowseHOME_PHONE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseENTTID: TcxGridDBBandedColumn;
    gvwBrowseCLIENT_STATUS: TcxGridDBBandedColumn;
    cdsClientOnBoardingListCUST_TYPE: TIntegerField;
    cdsCOBDetailsNAME: TStringField;
    cdsCOBDetailsPOB: TStringField;
    cdsCOBDetailsDOB: TDateField;
    cdsCOBDetailsID_TYPE: TIntegerField;
    cdsCOBDetailsID_NO: TStringField;
    cdsCOBDetailsID_VALID: TDateField;
    cdsCOBDetailsGENDER: TIntegerField;
    cdsCOBDetailsNATIONALITY: TStringField;
    cdsCOBDetailsTAXPAYER_REG: TStringField;
    cdsCOBDetailsTAXPAYER_STATUS: TIntegerField;
    cdsCOBDetailsMARITAL_STATUS: TIntegerField;
    cdsCOBDetailsMOTHER_NAME: TStringField;
    cdsCOBDetailsRESIDENT_TYPE: TStringField;
    cdsCOBDetailsOWNERSHIP_STATUS: TStringField;
    cdsCOBDetailsSTREET: TStringField;
    cdsCOBDetailsRT_RW: TStringField;
    cdsCOBDetailsKELURAHAN: TStringField;
    cdsCOBDetailsKECAMATAN: TStringField;
    cdsCOBDetailsPROVINCE: TStringField;
    cdsCOBDetailsCOUNTRY: TStringField;
    cdsCOBDetailsZIP_CODE: TStringField;
    cdsCOBDetailsRESIDENT_TYPE2: TIntegerField;
    cdsCOBDetailsOWNERSHIP_STATUS2: TIntegerField;
    cdsCOBDetailsSTREET2: TStringField;
    cdsCOBDetailsRT_RW2: TStringField;
    cdsCOBDetailsKELURAHAN2: TStringField;
    cdsCOBDetailsKECAMATAN2: TStringField;
    cdsCOBDetailsPROVINCE2: TStringField;
    cdsCOBDetailsCOUNTRY2: TStringField;
    cdsCOBDetailsZIP_CODE2: TStringField;
    cdsCOBDetailsEMAIL: TStringField;
    cdsCOBDetailsHOME_PHONE: TStringField;
    cdsCOBDetailsCELL_PHONE: TStringField;
    cdsCOBDetailsFAX_NO: TStringField;
    cdsCOBDetailsCORRESPONDENT_ADDRESS: TIntegerField;
    cdsCOBDetailsOCCUPATION: TIntegerField;
    cdsCOBDetailsFIELD_WORK: TStringField;
    cdsCOBDetailsCOMPANY: TStringField;
    cdsCOBDetailsPOSITION: TStringField;
    cdsCOBDetailsJOB_DIVISION: TStringField;
    cdsCOBDetailsYOS_MONTH: TStringField;
    cdsCOBDetailsYOS_YEAR: TStringField;
    cdsCOBDetailsCOMPANY_PHONE: TStringField;
    cdsCOBDetailsCOMPANY_PHONE_EXT: TStringField;
    cdsCOBDetailsCOMPANY_ADDRESS: TStringField;
    cdsCOBDetailsFUND_SOURCE: TIntegerField;
    cdsCOBDetailsANNUAL_INCOME: TIntegerField;
    cdsCOBDetailsREL_FAMILY_NAME: TStringField;
    cdsCOBDetailsREL_FAMILY_PHONE: TStringField;
    cdsCOBDetailsBENEFICIARY_NAME: TStringField;
    cdsCOBDetailsBENEFICIARY_PHONE: TStringField;
    cdsCOBDetailsBENEFICIARY_RELATION: TStringField;
    cdsCOBDetailsBENEFICIARY_ID_NO: TStringField;
    cdsCOBDetailsINV_BANK: TStringField;
    cdsCOBDetailsINV_BANK_NAME: TStringField;
    cdsCOBDetailsINV_BANK_ACC_NAME: TStringField;
    cdsCOBDetailsINV_BANK_ACC_NO: TStringField;
    cdsCOBDetailsINV_BANK_BRANCH: TStringField;
    cdsCOBDetailsFAM_WORK_AT_BHN: TIntegerField;
    cdsCOBDetailsFAM_WORK_AT_BHN_NAME: TStringField;
    cdsCOBDetailsFAM_WORK_AT_BHN_DEPT: TStringField;
    cdsCOBDetailsFAM_WORK_AT_FIN: TIntegerField;
    cdsCOBDetailsFAM_WORK_AT_FIN_NAME: TStringField;
    cdsCOBDetailsFAM_WORK_AT_FIN_INST_NAME: TStringField;
    cdsCOBDetailsFAM_WORK_AS_DIR: TIntegerField;
    cdsCOBDetailsFAM_WORK_AS_DIR_NAME: TStringField;
    cdsCOBDetailsFAM_WORK_AS_DIR_INST_NAME: TStringField;
    cdsCOBDetailsFAM_WORK_AT_GOV: TIntegerField;
    cdsCOBDetailsFAM_WORK_AT_GOV_NAME: TStringField;
    cdsCOBDetailsFAM_WORK_AT_GOV_INST_NAME: TStringField;
    cdsCOBDetailsHOBBIES: TStringField;
    cdsCOBDetailsDATA_STATUS: TIntegerField;
    cdsCOBDetailsCREATEDBY: TStringField;
    cdsCOBDetailsCREATEDON: TDateTimeField;
    cdsCOBDetailsUPDATEDBY: TStringField;
    cdsCOBDetailsUPDATEDON: TDateTimeField;
    cdsCOBDetailsLIFETIME_ID: TIntegerField;
    cdsCOBDetailsSALES: TStringField;
    cdsCOBDetailsACCOUNT_NUMBER: TStringField;
    cdsCOBDetailsALT_CODE: TStringField;
    cdsCOBDetailsSUBREK001: TStringField;
    cdsCOBDetailsSUBREK004: TStringField;
    cdsCOBDetailsSID: TStringField;
    cdsCOBDetailsRDN: TStringField;
    cdsCOBDetailsREF_BANK: TStringField;
    cdsCOBDetailsGU_NAME: TStringField;
    cdsCOBDetailsGU_HUB: TIntegerField;
    cdsCOBDetailsGU_ID_NO: TStringField;
    cdsCOBDetailsGU_ID_EXP: TDateTimeField;
    cdsCOBDetailsGU_TAXPAYER_NO: TStringField;
    cdsCOBDetailsGU_NATIONALITY: TStringField;
    cdsCOBDetailsGU_GENDER: TIntegerField;
    cdsCOBDetailsGU_POB: TStringField;
    cdsCOBDetailsGU_DOB: TDateTimeField;
    cdsCOBDetailsGU_MATIAL_STATUS: TIntegerField;
    cdsCOBDetailsGU_EMAIL: TStringField;
    cdsCOBDetailsGU_HANDPHONE: TStringField;
    cdsCOBDetailsGU_FAX: TStringField;
    cdsCOBDetailsGU_ADDRESS: TStringField;
    cdsCOBDetailsGU_CITY: TStringField;
    cdsCOBDetailsGU_POSTALCODE: TStringField;
    cdsCOBDetailsGU_PROVINCE: TStringField;
    cdsCOBDetailsGU_COUNTRY: TStringField;
    cdsCOBDetailsGU_PHONE: TStringField;
    cdsCOBDetailsGU_ADDRESS2: TStringField;
    cdsCOBDetailsGU_CITY2: TStringField;
    cdsCOBDetailsGU_POSTALCODE2: TStringField;
    cdsCOBDetailsGU_PROVICE2: TStringField;
    cdsCOBDetailsGU_COUNTRY2: TStringField;
    cdsCOBDetailsGU_PHONE2: TStringField;
    cdsCOBDetailsGU_JOBS: TStringField;
    cdsCOBDetailsGU_LAST_POSITION: TStringField;
    cdsCOBDetailsGU_JOBS_COMPANY: TStringField;
    cdsCOBDetailsGU_JOBS_COMPANY_TYPE: TStringField;
    cdsCOBDetailsGU_JOBS_ADDRESS: TStringField;
    cdsCOBDetailsGU_JOBS_CITY: TStringField;
    cdsCOBDetailsGU_JOBS_POSTALCODE: TStringField;
    cdsCOBDetailsGU_JOBS_PHONE: TStringField;
    cdsCOBDetailsGU_JOBS_FAX: TStringField;
    cdsCOBDetailsGU_JOBS_FUND_SOURCE: TStringField;
    cdsCOBDetailsGU_JOBS_FUND_SOURCE_OT: TStringField;
    cdsCOBDetailsGU_JOBS_ANNUAL_SALARY: TIntegerField;
    cdsCOBDetailsGU_JOBS_MARITAL_STATUS: TIntegerField;
    cdsCOBDetailsGU_CELLPHONE: TStringField;
    cdsCOBDetailsGU_MAIDEN_MOTHER: TStringField;
    cdsCOBDetailsREL_FAMILY: TIntegerField;
    cdsCOBDetailsHOBBY: TStringField;
    cdsCOBDetailsACC_TYPE_SEC: TIntegerField;
    cdsCOBDetailsCLIENT_STATUS: TIntegerField;
    cdsCOBDetailsSIUP_NO: TStringField;
    cdsCOBDetailsTDP_NO: TStringField;
    cdsCOBDetailsTDP_REG_DATE: TStringField;
    cdsCOBDetailsTDP_INVALID_DATE: TDateTimeField;
    cdsCOBDetailsAPPROVER_HAM_MINISTRI: TStringField;
    cdsCOBDetailsANNOUNC_STATE_GAZELLE: TStringField;
    cdsCOBDetailsTAX_REG_CHK: TIntegerField;
    cdsCOBDetailsTAS_REG_DATE: TDateTimeField;
    cdsCOBDetailsBUSINESS_ENTITY_CHK: TIntegerField;
    cdsCOBDetailsBUSINESS_ENTITY_OTHER: TStringField;
    cdsCOBDetailsBUSINESS_LINE_CHK: TIntegerField;
    cdsCOBDetailsBUSINESS_LINE_OTHER: TStringField;
    cdsCOBDetailsCOMPANY_CHARACTER_CHK: TIntegerField;
    cdsCOBDetailsCOMPANY_CHARACTER_OTHER: TStringField;
    cdsCOBDetailsOFFC_ADDR_ASSKDP: TStringField;
    cdsCOBDetailsOFFC_CITY: TStringField;
    cdsCOBDetailsOFFC_ZIPCODE: TStringField;
    cdsCOBDetailsOFFC_COUNTRY: TStringField;
    cdsCOBDetailsCORESP_ADDR: TStringField;
    cdsCOBDetailsCORESP_CITY: TStringField;
    cdsCOBDetailsCORESP_ZIPCODE: TStringField;
    cdsCOBDetailsCORESP_COUNTRY: TStringField;
    cdsCOBDetailsOFFC_BUILD_STATUS: TIntegerField;
    cdsCOBDetailsOFFC_LENGTH_COREPON: TIntegerField;
    cdsCOBDetailsOFFC_PHONE_NO: TStringField;
    cdsCOBDetailsOFFC_FAX_NO: TStringField;
    cdsCOBDetailsEMAIL_CHK: TIntegerField;
    cdsCOBDetailsEMAIL_ADDR: TStringField;
    cdsCOBDetailsOFCC_FAX_CHK: TIntegerField;
    cdsCOBDetailsOFFC_FAX_NO_OTHER: TStringField;
    cdsCOBDetailsANNUAL_NET_PROFIT: TIntegerField;
    cdsCOBDetailsTOTAL_ASSET: TIntegerField;
    cdsCOBDetailsFUND_SEP_BANK_ACC_NO: TStringField;
    cdsCOBDetailsFUND_SEP_BANK_NAME: TStringField;
    cdsCOBDetailsFUND_SEP_BANK_BRANCH: TStringField;
    cdsCOBDetailsFUND_SEP_BANK_BENEFICIARY: TStringField;
    cdsCOBDetailsINIT_DEPOSIT_FUND: TFloatField;
    cdsCOBDetailsINIT_DEPOSIT_SHARES: TFloatField;
    cdsCOBDetailsRETAINED_EARNING_CHK: TIntegerField;
    cdsCOBDetailsRETAINED_EARNING_OTHER: TStringField;
    cdsCOBDetailsINFO_EXISTING_SEC_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_SEC_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_SEC_ACC_NO: TStringField;
    cdsCOBDetailsINFO_EXISTING_REL_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_AFF_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_AFF_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_AFF_RELATION: TStringField;
    cdsCOBDetailsINFO_EXISTING_AF_ACCNO: TStringField;
    cdsCOBDetailsINFO_EXISTING_CNTRL_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_CNTRL_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_CNTRL_ACCNO: TStringField;
    cdsCOBDetailsINFO_EXISTING_SHR_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_SHR_COMP_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_SHR_POSITION: TStringField;
    cdsCOBDetailsINFO_EXISTING_SHR_RELATION: TStringField;
    cdsCOBDetailsINFO_EXISTING_EMT_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_EMT_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_EMN_STOCK: TFloatField;
    cdsCOBDetailsINFO_EXISTING_EMN_TITLE: TStringField;
    cdsCOBDetailsINFO_EXISTING_PE_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_PE_COM_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_PE_TITLE: TStringField;
    cdsCOBDetailsINFO_EXISTING_PE_STOCK: TFloatField;
    cdsCOBDetailsINFO_EXISTING_DWN_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_DWN_COM_NAME: TStringField;
    cdsCOBDetailsINFO_EXISTING_PUB_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_PEP_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_MARKET_CHK: TIntegerField;
    cdsCOBDetailsINFO_EXISTING_MARKET_NAME: TStringField;
    cdsCOBDetailsSWIFTCODE: TStringField;
    cdsCOBDetailsCOMP_ESTABLISH_DATE: TDateTimeField;
    cdsCOBDetailsCOMP_ESTABLISH_PLACE: TStringField;
    cdsCOBDetailsDEED_ESTABLISH_DATE: TDateTimeField;
    cdsCOBDetailsDEED_ESTABLISH_PLACE: TStringField;
    cdsCOBDetailsNOTARY: TStringField;
    cdsCOBDetailsINVS_EXPERIENCE: TIntegerField;
    cdsCOBDetailsINVS_OBJ: TIntegerField;
    cdsCOBDetailsINVS_OBJ_OTHER: TStringField;
    cdsCOBDetailsCUST_TYPE: TIntegerField;
    cdsCOBDetailsPRD_CODE: TStringField;
    cdsCOBDetailsCLIENT_EXT: TIntegerField;
    cdsCOBDetailsACCID: TIntegerField;
    cdsCOBDetailsENTTID: TIntegerField;
    cdsCOBDetailsSPOUSE_NAME: TStringField;
    cdsCOBDetailsEDU_BACKGROUND: TIntegerField;
    cdsCOBDetailsEDU_BACKGOUND_OTHER: TStringField;
    cdsCOBDetailsSOURCE_FUND_OTHER: TStringField;
    cdsCOBDetailsOCCUPATION_OTHER: TStringField;
    cdsCOBDetailsNAT_BUSINESS_ENTREPRENEUR: TStringField;
    cdsCOBDetailsINVEST_OBJECTIVE: TIntegerField;
    cdsCOBDetailsINVEST_OBJECTIVE_OTHER: TStringField;
    cdsCOBDetailsINV_BANK_ACC_CCY: TStringField;
    cdsCOBDetailsTAX_REG_DATE: TDateField;
    cdsCOBDetailsEVENT_NAME: TStringField;
    cdsCOBDetailsLAST_STATUS: TStringField;
    cdsCOBDetailsBRCODE: TStringField;
    cdsCOBDetailsBNINVCODE: TStringField;
    cdsCOBDetailsBNINVACCNO: TStringField;
    cdsCOBDetailsBNINACCNAME: TStringField;
    cdsCOBBOD: TNClientDataset;
    cdsCOBBODCUST_REG_NO: TStringField;
    cdsCOBBODBOD_NAME: TStringField;
    cdsCOBBODBOD_POSITION: TStringField;
    cdsCOBBODBOD_CELLPHONE: TStringField;
    cdsCOBBODBOD_EMAIL: TStringField;
    cdsCOBBODBOD_NATIONALITY: TStringField;
    cdsCOBBankAcc: TNClientDataset;
    gvwBrowseCUST_TYPE: TcxGridDBBandedColumn;
    cdsCOBDetailsqryCOBBankAcc: TDataSetField;
    cdsCOBDetailsqryCOBBOD: TDataSetField;
    cdsCOBBankAccCUST_REG_NO: TStringField;
    cdsCOBBankAccACC_NO: TStringField;
    cdsCOBBankAccBANK_NAME: TStringField;
    cdsCOBBankAccBANK_BRANCH: TStringField;
    cdsCOBBankAccBENEFICIARY: TStringField;
    cdsCOBDetailsCHKCURRADR: TStringField;
    cdsCOBDetailsCHKGUCURRADR: TStringField;
    cdsCommissionDESCRIPTION: TStringField;
    cdsAccountACCID: TIntegerField;
    cdsAccountACCCODE: TStringField;
    cdsAccountENTTID: TIntegerField;
    cdsAccountBRANCHID: TLargeintField;
    cdsAccountACCINIT: TStringField;
    cdsAccountACCNAME: TStringField;
    cdsAccountINVTYPE: TStringField;
    cdsAccountBUSSTYPE: TLargeintField;
    cdsAccountACCTYPE: TStringField;
    cdsAccountACCSUBTYPE: TStringField;
    cdsAccountCASH_CBEST_DEP_ACC: TStringField;
    cdsAccountCASH_CBEST_COLL_ACC: TStringField;
    cdsAccountSEC_CBEST_DEP_ACC: TStringField;
    cdsAccountSEC_CBEST_COLL_ACC: TStringField;
    cdsAccountTC_MODEL: TStringField;
    cdsAccountTC_SENDBY: TStringField;
    cdsAccountTC_EMAIL: TStringField;
    cdsAccountPRDCODE: TStringField;
    cdsAccountA_CLS_ORDER: TStringField;
    cdsAccountCUSTODYCODE: TStringField;
    cdsAccountSETT_RECV: TStringField;
    cdsAccountSETT_DELV: TStringField;
    cdsAccountAVGPRICEDEC: TSmallintField;
    cdsAccountOMNIBUSTRADE: TStringField;
    cdsAccountBRKBANKPAY: TStringField;
    cdsAccountBRKBANKREV: TStringField;
    cdsAccountBNINVCODE: TStringField;
    cdsAccountBNINVACCNO: TStringField;
    cdsAccountBNINACCNAME: TStringField;
    cdsAccountC_SETTLE_BY: TStringField;
    cdsAccountS_SETTLE_BY: TStringField;
    cdsAccountCASHKEEP: TStringField;
    cdsAccountSTOCKKEEP: TStringField;
    cdsAccountISWAPU: TStringField;
    cdsAccountWAPUVALUE: TFloatField;
    cdsAccountISCROSS: TStringField;
    cdsAccountISTRDACCOUNT: TStringField;
    cdsAccountISAVGPRICE: TStringField;
    cdsAccountISSHORTSELL: TStringField;
    cdsAccountISMARGIN: TStringField;
    cdsAccountISDEBETINTEREST: TStringField;
    cdsAccountISCREDITINTEREST: TStringField;
    cdsAccountISPENALTY: TStringField;
    cdsAccountSALESID: TLargeintField;
    cdsAccountACC_STS: TStringField;
    cdsAccountISSUBACCALLOC: TStringField;
    cdsAccountISCONFIRMATIONMODEL: TStringField;
    cdsAccountCONFIRMATIONMODEL: TStringField;
    cdsAccountISEXTCONFSYSTEM: TStringField;
    cdsAccountEXTCONFCODE: TStringField;
    cdsAccountCCYCODE: TStringField;
    cdsAccountMODDA: TDateTimeField;
    cdsAccountMODUI: TStringField;
    cdsAccountAPPDA: TDateTimeField;
    cdsAccountAPPUI: TStringField;
    cdsAccountUNDER4Y: TIntegerField;
    cdsAccountUNDER4YDA: TDateTimeField;
    cdsAccountNOTES4Y: TStringField;
    cdsAccountISDEL: TIntegerField;
    cdsAccountID: TLargeintField;
    cdsAccountqryAccountBank: TDataSetField;
    cdsAccountqryAccountCharge: TDataSetField;
    cdsAccountqryAccountComm: TDataSetField;
    cdsCommissionACCID: TIntegerField;
    cdsCommissionMARKETCODE: TStringField;
    cdsCommissionCHANNELCODE: TStringField;
    cdsCommissionCOMM_ID: TLargeintField;
    cdsCommissionCALC_METHOD: TStringField;
    cdsCommissionUSE_DAYTRADE: TStringField;
    cdsCommissionUSE_MINCOMM: TStringField;
    cdsCommissionWITH_SELLTAX: TStringField;
    cdsCommissionMODDA: TDateTimeField;
    cdsCommissionMODUI: TStringField;
    cdsCommissionAPPDA: TDateTimeField;
    cdsCommissionAPPUI: TStringField;
    cdsCommissionUNDER4Y: TIntegerField;
    cdsCommissionUNDER4YDA: TDateTimeField;
    cdsCommissionNOTES4Y: TStringField;
    cdsCommissionISDEL: TIntegerField;
    cdsCommissionID: TLargeintField;
    cdsChargesACCID: TIntegerField;
    cdsChargesMARKETCODE: TStringField;
    cdsChargesCHARGE_ID: TLargeintField;
    cdsChargesISUSED: TStringField;
    cdsChargesMODDA: TDateTimeField;
    cdsChargesMODUI: TStringField;
    cdsChargesAPPDA: TDateTimeField;
    cdsChargesAPPUI: TStringField;
    cdsChargesUNDER4Y: TIntegerField;
    cdsChargesUNDER4YDA: TDateTimeField;
    cdsChargesNOTES4Y: TStringField;
    cdsChargesISDEL: TIntegerField;
    cdsChargesID: TLargeintField;
    cdsAccBankACCID: TIntegerField;
    cdsAccBankSEQNO: TIntegerField;
    cdsAccBankBNCODE: TStringField;
    cdsAccBankBANKACCNO: TStringField;
    cdsAccBankBANKACCNAME: TStringField;
    cdsAccBankBANKBRANCH: TStringField;
    cdsAccBankISRDN: TStringField;
    cdsAccBankBNCHGSTYPE: TStringField;
    cdsAccBankMODDA: TDateTimeField;
    cdsAccBankMODUI: TStringField;
    cdsAccBankAPPDA: TDateTimeField;
    cdsAccBankAPPUI: TStringField;
    cdsAccBankUNDER4Y: TIntegerField;
    cdsAccBankUNDER4YDA: TDateTimeField;
    cdsAccBankNOTES4Y: TStringField;
    cdsAccBankISDEL: TIntegerField;
    cdsAccBankID: TLargeintField;
    cdsAccountqryAccountLedger: TDataSetField;
    cdsCOBDetailsCUST_REG_NO: TStringField;
    cdsCOBDetailsRESIDENT_TYPE2_OTHERS: TStringField;
    cdsCOBDetailsOWNERSHIP_STATUS2_OTHERS: TStringField;
    cdsCOBDetailsONEVENT: TStringField;
    cdsCOBDetailsEVCODE: TStringField;
    cdsCOBDetailsOATYPE: TStringField;
    cdsActivityCOB_TYPE: TStringField;
    actAddNotes: TNAction;
    actEditNotes: TNAction;
    actDeleteNotes: TNAction;
    cdsCOBNotes: TNClientDataset;
    cdsCOBNotesCUST_REG_NO: TStringField;
    cdsCOBNotesNOTEBY: TStringField;
    cdsCOBNotesNOTEDATE: TDateTimeField;
    cdsCOBNotesNOTES: TStringField;
    cdsCOBNotesNOTESTATUS: TStringField;
    cdsCOBNotesSEQNO: TFloatField;
    PopupMenu2: TPopupMenu;
    AddNotes1: TMenuItem;
    EditNotes1: TMenuItem;
    dsCOBNotes: TDataSource;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    gvwCOBActivity: TcxGridDBBandedTableView;
    gvwCOBActivityCUST_REG_NO: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_ID: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_SUBID: TcxGridDBBandedColumn;
    gvwCOBActivitySTATUS_DATA: TcxGridDBBandedColumn;
    gvwCOBActivitySTATUS_ACTIVITY: TcxGridDBBandedColumn;
    gvwCOBActivityDATE_PROCESS: TcxGridDBBandedColumn;
    gvwCOBActivityHANDLE_BY: TcxGridDBBandedColumn;
    gvwCOBActivityDATE_COMPLETE: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_DESC: TcxGridDBBandedColumn;
    gvwCOBActivityREASON: TcxGridDBBandedColumn;
    gvwCOBActivityDONE_BY: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    cxGrid3: TcxGrid;
    gvwNotes: TcxGridDBBandedTableView;
    gvwNotesNOTEBY: TcxGridDBBandedColumn;
    gvwNotesNOTEDATE: TcxGridDBBandedColumn;
    gvwNotesNOTES: TcxGridDBBandedColumn;
    gvwNotesNOTESTATUS: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cdsCOBDetailsCID: TIntegerField;
    cdsCOBDetailsBRANCHID: TLargeintField;
    cdsCOBDetailsEVID: TLargeintField;
    procedure gvwBrowseCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actCustRetailExecute(Sender: TObject);
    procedure cdsCOBDetailsNewRecord(DataSet: TDataSet);
    procedure cdsCOBDetailsBeforePost(DataSet: TDataSet);
    procedure actViewCOBDetailsExecute(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure actDoneExecute(Sender: TObject);
    procedure actRejectExecute(Sender: TObject);
    procedure actUploadDocsExecute(Sender: TObject);
    procedure actStartAckExecute(Sender: TObject);
    procedure actInsSIDExecute(Sender: TObject);
    procedure actInsSubRekExecute(Sender: TObject);
    procedure actAssignSalesExecute(Sender: TObject);
    procedure actRDNExecute(Sender: TObject);
    procedure actComChargesExecute(Sender: TObject);
    procedure actOrdValidationExecute(Sender: TObject);
    procedure actSettingParamExecute(Sender: TObject);
    procedure cdsAccountAfterPost(DataSet: TDataSet);
    procedure actAddEditDataExecute(Sender: TObject);
    procedure actNeedAckExecute(Sender: TObject);
    procedure popFlowActPopup(Sender: TObject);
    procedure actCustInstitutionExecute(Sender: TObject);
    procedure cdsClientOnBoardingListAfterPost(DataSet: TDataSet);
    procedure actAddNotesExecute(Sender: TObject);
    procedure actEditNotesExecute(Sender: TObject);
    procedure cdsCOBNotesNewRecord(DataSet: TDataSet);
    procedure gvwBrowseFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    FCustRegNo: String;

    //for Checking Data before status turn into done
    function CustDataCheck: Boolean;
    function DocsCheck: Boolean;
    function SIDCheck: Boolean;
    function SubRekCheck: Boolean;
    function RDNCheck: Boolean;
    function SalesCheck: Boolean;
    function ApproveByManager: Boolean;
    function SettingParameter(ASubID: Integer): Boolean;
    function InsertRequest(ASubID: Integer): Boolean;
    function AccountActivation: Boolean;

    function GenerateEntityCode: string;
    function GenerateEntityID: Integer;

    function GenerateAccountCode: string;
    function GenerateAccountID: Integer;
  public
    { Public declarations }
    procedure ActivateCOBFlows(ACustRegNo: String);
    procedure ActivateCOBDetails(ACustRegNo: String);

  end;

var
  frmClientOnBoardingList: TfrmClientOnBoardingList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookUp, FormCOBDetailsRet, FormCOBUploadDocuments,
  FormCOBInsert, FormCOBCommCharges, FormCOBOrderValidation,
  FormSettlementParam, FormCOBAccountBank, FormCOBTradeSettingParam,
  FormCOBDetailsInst, FormCOBBusType, FormCOBNotesDetail;

function TfrmClientOnBoardingList.AccountActivation: Boolean;
var
  iAccID: Integer;
begin
  if MessageDlg('Activate Client On Boarding ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dsCOBActivity.DataSet.Locate('ACTIVITY_SUBID', 70, []) then
    begin
      dsCOBActivity.DataSet.Edit;
      dsCOBActivity.DataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      dsCOBActivity.DataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      dsCOBActivity.DataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      dsCOBActivity.DataSet.Post;

      iAccID := dsBrowse.DataSet.FieldByName('ACCID').AsInteger;
      cdsAccount.Close;
      cdsAccount.Params[0].AsInteger := 0;
      cdsAccount.Open;


      cdsAccount.Close;
      cdsAccount.Params[0].AsInteger := iAccID;
      cdsAccount.Open;

      cdsAccount.Edit;
      cdsAccount.FieldByName('ACC_STS').AsString := 'A';
      cdsAccount.Post;

      dsBrowse.Dataset.Edit;
      dsBrowse.DataSet.FieldByName('CLIENT_STATUS').AsInteger := 2;
      dsBrowse.DataSet.Post;

    end;
  end;

  Result := False;
end;

procedure TfrmClientOnBoardingList.actAddEditDataExecute(Sender: TObject);
var
  oBrowseDataSet,
  oActDataSet: TDataSet;
  iID,
  iSubID,
  iEntID,
  iAccID: Integer;
  sCustRegNo,
  sEntCode,
  sAccCode: String;
  oForm: TForm;
begin
  inherited;
  oBrowseDataSet := dsBrowse.DataSet;
  oActDataSet    := dsCOBActivity.DataSet;

  iID        := oActDataSet.FieldByName('ACTIVITY_ID').AsInteger;
  iSubID     := oActDataSet.FieldByName('ACTIVITY_SUBID').AsInteger;
  sCustRegNo := oActDataSet.FieldByName('CUST_REG_NO').AsString;

  case iID of
    1 : begin
          if iSubID = 10 then
          begin
            cdsCOBDetails.Close;
            cdsCOBDetails.Params[0].AsString := '';
            cdsCOBDetails.Open;

            if oBrowseDataSet.FieldByName('CUST_TYPE').AsInteger = 1 then
              EditorClass := TfrmCOBDetailsRet
            else
              EditorClass := TfrmCOBDetailsInst;

            actEdit.Execute;
          end
          else
          begin

          end;
        end;

    2 : begin
          if iSubID = 20 then
          begin
            oForm := TfrmCOBUploadDocuments.Create(nil);
            if oForm.ShowModal = mrOk then
              TfrmCOBUploadDocuments(oForm).cdsCOBUploadDocs.ApplyUpdates(-1);
            oForm.Free;
          end
          else
          begin

          end;
        end;

    3 : begin
          cdsCOBDetails.Close;
          cdsCOBDetails.Params[0].AsString := '';
          cdsCOBDetails.Open;

          cdsCOBDetails.Close;
          cdsCOBDetails.Params[0].AsString := sCustRegNo;
          cdsCOBDetails.Open;

          oForm := TfrmCOBInsert.Create(nil);
          if iSubID = 31 then
          begin
            TfrmCOBInsert(oForm).Caption          := 'Insert KSEI Sub Rek';
            TfrmCOBInsert(oForm).lySubRek.Visible := True;

          end
          else if iSubID = 32 then
          begin
            TfrmCOBInsert(oForm).Caption       := 'Insert SID';
            TfrmCOBInsert(oForm).lySID.Visible := True;

          end
          else if iSubID = 33 then
          begin
            TfrmCOBInsert(oForm).Caption       := 'Insert RDN';
            TfrmCOBInsert(oForm).lyRDN.Visible := True;

          end;

          cdsCOBDetails.Edit;
          if oForm.ShowModal = mrOk then
            cdsCOBDetails.Post else
            cdsCOBDetails.Cancel;

          oForm.Free;

        end;

    4 : begin
          if iSubID = 40 then
          begin
            cdsCOBDetails.Close;
            cdsCOBDetails.Params[0].AsString := '';
            cdsCOBDetails.Open;

            cdsCOBDetails.Close;
            cdsCOBDetails.Params[0].AsString := sCustRegNo;
            cdsCOBDetails.Open;

            oForm := TfrmCOBInsert.Create(nil);
            TfrmCOBInsert(oForm).Caption         := 'Assign Sales';
            TfrmCOBInsert(oForm).lySales.Visible := True;

            cdsCOBDetails.Edit;
            if oForm.ShowModal = mrOk then
              cdsCOBDetails.Post else cdsCOBDetails.Cancel;

            oForm.Free;
          end
          else
          begin

          end;
        end;

    5 : begin
          if MessageDlg('Approve By Manager ?', mtConfirmation, [mbNo, mbOk], 0) = mrOk then
          begin
//            sEntCode := GenerateEntityCode;
//            iEntId   := GenerateEntityID;
//
//            sAccCode := GenerateAccountCode;
//            iAccID   := GenerateAccountID;

            oActDataSet.Edit;
            oActDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
            oActDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
            oActDataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
            oActDataSet.Post;
//
//            cdsCOBDetails.Close;
//            cdsCOBDetails.Params[0].AsString := oActDataSet.FieldByName('CUST_REG_NO').AsString;
//            cdsCOBDetails.Open;

//            dmGlobal.RemoteServer.CopyDataEntity(sEntCode, iEntID, sAccCode, iAccID, cdsCOBDetailsCUST_REG_NO.AsString, cdsCOBDetailsCID.AsInteger);
            dmGlobal.RemoteServer.CopyDataEntity(cdsCOBDetailsCID.AsInteger);

            cdsCOBDetails.Edit;
            cdsCOBDetailsACCID.AsInteger  := iAccID;
            cdsCOBDetailsENTTID.AsInteger := iEntID;
            cdsCOBDetails.Post;
          end;
        end;

    6 : begin
          iAccID := oBrowseDataSet.FieldByName('ACCID').AsInteger;

          cdsAccount.Close;
          cdsAccount.Params[0].AsInteger := iAccID;
          cdsAccount.Open;

          if iSubID = 61 then
          begin
//            oForm := TfrmCOBCommCharges.Create(nil);
//            TfrmCOBCommCharges(oForm).CustRegNo := oBrowseDataSet.FieldByName('CUST_REG_NO').AsString;
            oForm := TfrmCOBBusType.Create(nil);
            TfrmCOBBusType(oForm).CustRegNo := oBrowseDataSet.FieldByName('CUST_REG_NO').AsString;
            cdsAccount.Edit;
          end
          else if iSubID = 62 then
          begin
            oForm := TfrmOrderValidation.Create(nil);
            TfrmOrderValidation(oForm).CustRegNo := oBrowseDataSet.FieldByName('CUST_REG_NO').AsString;
            TfrmOrderValidation(oForm).Name      := oBrowseDataSet.FieldByName('NAME').AsString;
            cdsAccount.Edit;
          end
          else if iSubID = 63 then
          begin
            oForm := TfrmCOBAccountBank.Create(nil);
            TfrmCOBAccountBank(oForm).CustRegNo := oBrowseDataSet.FieldByName('CUST_REG_NO').AsString;
            cdsAccount.Edit;
          end
          else if iSubID = 64 then
          begin
            oForm := TfrmCOBTradeSettingParam.Create(nil);
            TfrmCOBTradeSettingParam(oForm).CustRegNo := oBrowseDataSet.FieldByName('CUST_REG_NO').AsString;
            cdsAccount.Edit;
          end
          else if iSubID = 65 then
          begin

          end;

          if oForm.ShowModal = mrOk then
            cdsAccount.Post else cdsAccount.Cancel;
        end;

    7 : begin

        end;
  end;
end;

procedure TfrmClientOnBoardingList.actAddNotesExecute(Sender: TObject);
var
  oForm: TfrmCOBNoteDetail;
begin
  inherited;
  cdsCOBNotes.Append;
  oForm := TfrmCOBNoteDetail.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    cdsCOBNotes.Post;
  end
  else
  begin
    cdsCOBNotes.Cancel;
  end;

  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actAssignSalesExecute(Sender: TObject);
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
begin
  inherited;
  oDataSet := dsBrowse.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := '';
  cdsCOBDetails.Open;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption         := 'Assign Sales';
  TfrmCOBInsert(oForm).lySales.Visible := True;

  cdsCOBDetails.Edit;
  if oForm.ShowModal = mrOk then
    cdsCOBDetails.Post else cdsCOBDetails.Cancel;

  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actComChargesExecute(Sender: TObject);
var
  oForm: TForm;
  oDataSet: TDataSet;
  iAccId: Integer;
begin
  inherited;
  oDataSet := dsBrowse.DataSet;
  iAccID   := oDataSet.FieldByname('ACCID').AsInteger;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := 0;
  cdsAccount.open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := iAccID;
  cdsAccount.open;

  oForm := tfrmCOBCommCharges.Create(nil);
//  TfrmCOBCommCharges(oForm).ACCID     := iAccID;
//  TfrmCOBCommCharges(oForm).CustRegNo := oDataSet.FieldByname('CUST_REG_NO').AsString;
  oForm.ShowModal;
  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actCustInstitutionExecute(Sender: TObject);
begin
  inherited;
  EditorClass := TfrmCOBDetailsInst;
  actInsert.Execute;
end;

procedure TfrmClientOnBoardingList.actCustRetailExecute(Sender: TObject);
begin
  inherited;
  EditorClass := TfrmCOBDetailsRet;
  actInsert.Execute;
end;

procedure TfrmClientOnBoardingList.actDoneExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  iID, iSubID, i, j: Integer;
  oNextIDList: TStringList;
  bContinue, bNext: Boolean;
  sCustRegNo: String;
  iIDNext, iSubIDNext: Integer;
  bSub: Boolean;
begin
  inherited;
  oNextIDList := TStringList.Create;
  oDataSet    := dsCOBActivity.DataSet;

  iID        := oDataSet.FieldByname('ACTIVITY_ID').AsInteger;
  iSubID     := oDataSet.FieldByname('ACTIVITY_SUBID').AsInteger;
  sCustRegno := oDataSet.FieldByName('CUST_REG_NO').AsString;

  bContinue := False;

  if not cdsActivity.Active then
    cdsActivity.Open;

  if cdsActivity.Locate('ACTIVITY_ID;ACTIVITY_SUBID', VarArrayOf([iID, iSubID]), []) then
  begin
    oNextIDList.Delimiter := ';';
    oNextIDList.DelimitedText := cdsActivityACTIVITY_NEXT.AsString;

    cdsCheckBeforeNext.Close;
    cdsCheckBeforeNext.Params[0].AsString  := '';
    cdsCheckBeforeNext.Params[1].AsInteger := 0;
    cdsCheckBeforeNext.Open;

    cdsCheckBeforeNext.Close;
    cdsCheckBeforeNext.Params[0].AsString  := sCustRegNo;
    cdsCheckBeforeNext.Params[1].AsInteger := iID;
    cdsCheckBeforeNext.Open;

    if cdsCheckBeforeNext.Fields[0].AsInteger > 1 then
    begin
      if iID = 9 then
        MessageDlg('Complete the activities above before process next step...', mtWarning, [mbOk], 0)
      else
        if iID < 9 then bContinue := True;
    end
    else
      bContinue := True;
  end;

  if bContinue then
  begin
    oDataSet.DisableControls;
    bNext := False;

    case iID of
      1 : bNext := CustDataCheck;
      2 : bNext := DocsCheck;
      3 : bNext := InsertRequest(iSubID);
      4 : bNext := SalesCheck;
      5 : bNext := ApproveByManager;
      6 : bNext := SettingParameter(iSubID);
      7 : bNext := AccountActivation;
    end;

    if bNext then
    begin
      for i := 0 to oNextIDList.Count -1 do
      begin
        iIDNext := StrToInt(oNextIDList.Strings[i]);

        if oDataSet.Locate('ACTIVITY_SUBID', iIDNext, []) then
        begin
          oDataSet.Edit;
          oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 0;
          oDataSet.Post;
        end;

      end;
    end;

    oDataSet.EnableControls;
  end;
end;

procedure TfrmClientOnBoardingList.actEditNotesExecute(Sender: TObject);
var
  oForm: TfrmCOBNoteDetail;
begin
  inherited;
  cdsCOBNotes.Edit;
  oForm := TfrmCOBNoteDetail.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    cdsCOBNotes.Post;
  end
  else
  begin
    cdsCOBNotes.Cancel;
  end;

  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actInsSIDExecute(Sender: TObject);
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
begin
  inherited;
  oDataSet := dsBrowse.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := '';
  cdsCOBDetails.Open;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption       := 'Insert SID';
  TfrmCOBInsert(oForm).lySID.Visible := True;

  cdsCOBDetails.Edit;
  if oForm.ShowModal = mrOk then
    cdsCOBDetails.Post else cdsCOBDetails.Cancel;

  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actInsSubRekExecute(Sender: TObject);
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
begin
  inherited;
  oDataSet := dsBrowse.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := '';
  cdsCOBDetails.Open;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption          := 'Insert KSEI Sub Rek';
  TfrmCOBInsert(oForm).lySubRek.Visible := True;

  cdsCOBDetails.Edit;
  if oForm.ShowModal = mrOk then
    cdsCOBDetails.Post else cdsCOBDetails.Cancel;

  oForm.Free;
end;

procedure TfrmClientOnBoardingList.ActivateCOBDetails(ACustRegNo: String);
begin
  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := '';
  cdsCOBDetails.Open;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := ACustRegNo;
  cdsCOBDetails.Open;
end;

procedure TfrmClientOnBoardingList.ActivateCOBFlows(ACustRegNo: String);
begin
  cdsCOBActivity.Close;
  cdsCOBActivity.Params[0].AsString := '';
  cdsCOBActivity.Open;

  cdsCOBActivity.Close;
  cdsCOBActivity.Params[0].AsString := ACustRegNo;
  cdsCOBActivity.Open;
end;

procedure TfrmClientOnBoardingList.actNeedAckExecute(Sender: TObject);
var
  oActDataSet: TDataSet;
  iStatus: Integer;
begin
  inherited;
  oActDataSet := dsCOBActivity.DataSet;

  iStatus := oActDataSet.FieldByName('STATUS_ACTIVITY').AsInteger;

  if (iStatus <> 2) or (iStatus <> 4) then
  begin
    oActDataSet.Edit;
    oActDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 0;
    oActDataSet.FieldByName('HANDLE_BY').AsString        := '';
    oActDataSet.Post;
  end
  else
  begin
    if iStatus = 2 then MessageDlg('Status has been completed, can not be acknowledged...', mtError, [mbOk], 0) else
    if iStatus = 4 then MessageDlg('Status has been rejected, can not be acknowledged...', mtError, [mbOk], 0);
  end;
end;

procedure TfrmClientOnBoardingList.actOrdValidationExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := 0;
  cdsAccount.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := dsBrowse.DataSet.FieldByName('ACCID').AsInteger;
  cdsAccount.Open;

  oForm := TfrmOrderValidation.Create(nil);
  TfrmOrderValidation(oForm).CustRegNo := dsBrowse.DataSet.FieldByName('CUST_REG_NO').AsString;
  if oForm.ShowModal = mrOk then
    cdsAccLimit.Post;
  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actRDNExecute(Sender: TObject);
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
begin
  inherited;
  oDataSet := dsBrowse.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := '';
  cdsCOBDetails.Open;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption         := 'Insert RDN';
  TfrmCOBInsert(oForm).lyRDN.Visible := True;

  cdsCOBDetails.Edit;
  if oForm.ShowModal = mrOk then
    cdsCOBDetails.Post else cdsCOBDetails.Cancel;

  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actRejectExecute(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  inherited;
  oDataSet := dsCOBActivity.DataSet;
  oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 4;
  if (oDataSet.FieldByName('REASON').IsNull) or (Trim(oDataSet.FieldByName('REASON').AsString) = '') then
    oDataSet.FieldByName('REASON').AsString := '[Reject '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+']'+InputBox('Reason Not Complete', '', '');
end;

procedure TfrmClientOnBoardingList.actSettingParamExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  oForm: TForm;
begin
  inherited;
  oDataSet := dsBrowse.DataSet;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := 0;
  cdsAccount.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := oDataSet.FieldByName('ACCID').AsInteger;
  cdsAccount.Open;
  
  oForm := TfrmSettlementParam.Create(nil);
  oForm.ShowModal;
  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actStartAckExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  i,
  iID,
  iSubID: Integer;
  sRegNo: string;
  oNextList: TStringList;
  bNext: Boolean;
begin
  inherited;
  oDataSet := dsCOBActivity.DataSet;
  oDataSet.DisableControls;

  iID    := oDataSet.FieldByName('ACTIVITY_ID').AsInteger;
  iSubID := oDataSet.FieldByName('ACTIVITY_SUBID').AsInteger;
  sRegNo := oDataSet.FieldByName('CUST_REG_NO').AsString;

  if oDataSet.Locate('ACTIVITY_ID;ACTIVITY_SUBID', VarArrayOf([iID, iSubID]), []) then
  begin
    oDataSet.Edit;
    oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 1;
    oDataSet.FieldByName('HANDLE_BY').AsString        := dmGlobal.UserID;
    oDataSet.FieldByName('DATE_PROCESS').AsDateTime   := Now;
    oDataSet.Post;

    if iSubID = 30 then
    begin
      if not cdsActivity.Active then
        cdsActivity.Open;

      if cdsActivity.Locate('ACTIVITY_ID;ACTIVITY_SUBID', VarArrayOf([iID, iSubID]), []) then
      begin
        oNextList := TStringList.Create;
        oNextList.Delimiter     := ';';
        oNextList.DelimitedText := cdsActivity.FieldByName('ACTIVITY_NEXT').AsString;

        for i := 0 to oNextList.Count -1 do
        begin
          if oDataSet.Locate('ACTIVITY_SUBID', VarArrayOf([StrToInt(oNextList.Strings[i])]), []) then
          begin
            oDataSet.Edit;
            oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 0;
            oDataSet.Post;
          end;
        end;
      end;
    end
    else if iSubID = 60 then
    begin
      bNext := False;
      repeat
        inc(iSubID);
        bNext := oDataSet.Locate('ACTIVITY_SUBID', iSubID, []);
        if bNext then
        begin
          oDataSet.Edit;
          oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 0;
          oDataSet.Post;
        end;
      until bNext = False; ;
    end;
  end;

  oDataSet.EnableControls;
end;

procedure TfrmClientOnBoardingList.actUploadDocsExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  oForm := TfrmCOBUploadDocuments.Create(nil);
  if oForm.ShowModal = mrOk then
    TfrmCOBUploadDocuments(oForm).cdsCOBUploadDocs.ApplyUpdates(-1);
  oForm.Free;
end;

procedure TfrmClientOnBoardingList.actViewCOBDetailsExecute(Sender: TObject);
var
  oForm : TForm;
  SCustRegNo: string;
  iCustType: Integer;
begin
  inherited;

  sCustRegNo := dsBrowse.DataSet.FieldByName('CUST_REG_NO').AsString;
  iCustType  := dsBrowse.DataSet.FieldByName('CUST_TYPE').AsInteger;

  if iCustType = 1 then
    EditorClass := TfrmCOBDetailsRet
  else
    EditorClass := TfrmCOBDetailsInst;

  actEdit.Execute;
end;

procedure TfrmClientOnBoardingList.actViewExecute(Sender: TObject);
var
  SCustRegNo: string;
  iCustType: Integer;
begin

  sCustRegNo := dsBrowse.DataSet.FieldByName('CUST_REG_NO').AsString;
  iCustType  := dsBrowse.DataSet.FieldByName('CUST_TYPE').AsInteger;

  if iCustType = 1 then
    EditorClass := TfrmCOBDetailsRet
  else
    EditorClass := TfrmCOBDetailsInst;

  inherited;
end;

function TfrmClientOnBoardingList.ApproveByManager: Boolean;
var
  sEntCode: string;
  iEntId: Integer;
  sAccCode: string;
  iAccID: Integer;
  oDataSet: TDataSet;
begin
  try
    if MessageDlg('Approve By Manager ?', mtConfirmation, [mbNo, mbOk], 0) = mrOk then
    begin
      Result := False;
      try
        sEntCode := GenerateEntityCode;
        iEntId   := GenerateEntityID;

        sAccCode := GenerateAccountCode;
        iAccID   := GenerateAccountID;

        oDataSet := dsCOBActivity.DataSet;

        cdsCOBDetails.Close;
        cdsCOBDetails.Params[0].AsString := '';
        cdsCOBDetails.Open;

        cdsCOBDetails.Close;
        cdsCOBDetails.Params[0].AsString := oDataSet.FieldByName('CUST_REG_NO').AsString;
        cdsCOBDetails.Open;

//        dmGlobal.RemoteServer.CopyDataEntity(sEntCode, iEntID, sAccCode, iAccID, cdsCOBDetailsCUST_REG_NO.AsString, cdsCOBDetailsCID.AsInteger);
      finally

        oDataSet.Edit;
        oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
        oDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
        oDataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
        oDataSet.Post;

        cdsCOBDetails.Edit;
        cdsCOBDetailsACCID.AsInteger  := iAccID;
        cdsCOBDetailsENTTID.AsInteger := iEntID;
        cdsCOBDetails.Post;

        Result := True;
      end;
      
    end
    else
      Result := False;
  except
    Result := False;
  end;
end;

procedure TfrmClientOnBoardingList.cdsAccountAfterPost(DataSet: TDataSet);
begin
  inherited;
  dsBrowse.DataSet.Refresh;
end;

procedure TfrmClientOnBoardingList.cdsClientOnBoardingListAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  dsBrowse.DataSet.Refresh;
end;

procedure TfrmClientOnBoardingList.cdsCOBDetailsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCOBDetails.State in [dsInsert] then
  begin
    ActivateCOBFlows('');
//
//    cdsActivity.Close;
//    if cdsCOBDetailsCUST_TYPE.AsInteger = 1 then
//      cdsActivity.Params[0].AsString := '1'
//    else if cdsCOBDetailsCUST_TYPE.AsString = '2' then
//      cdsActivity.Params[0].AsString := '2';
//    cdsActivity.Open;
//
//    cdsActivity.First;
//
//    cdsCOBActivity.Append;
//    cdsCOBActivityCUST_REG_NO.AsString      := cdsCOBDetailsCUST_REG_NO.AsString;
//    cdsCOBActivityACTIVITY_ID.AsInteger     := cdsActivityACTIVITY_ID.AsInteger;
//    cdsCOBActivityACTIVITY_SUBID.AsInteger  := cdsActivityACTIVITY_SUBID.AsInteger;
//    cdsCOBActivitySTATUS_ACTIVITY.AsInteger := 1;
//    cdsCOBActivityDATE_PROCESS.AsDateTime   := Now;
//    cdsCOBActivityHANDLE_BY.AsString        := dmGlobal.UserID;
//    cdsCOBActivityACTIVITY_DESC.AsString    := cdsActivityACTIVITY_DESC.AsString;
//    cdsCOBActivity.Post;
//
//    cdsActivity.Next;
//    while not cdsActivity.EOF do
//    begin
//      cdsCOBActivity.Append;
//      cdsCOBActivityCUST_REG_NO.AsString      := cdsCOBDetailsCUST_REG_NO.AsString;
//      cdsCOBActivityACTIVITY_ID.AsInteger     := cdsActivityACTIVITY_ID.AsInteger;
//      cdsCOBActivityACTIVITY_SUBID.AsInteger  := cdsActivityACTIVITY_SUBID.AsInteger;
//      cdsCOBActivitySTATUS_ACTIVITY.AsInteger := 9;
//      cdsCOBActivityACTIVITY_DESC.AsString    := cdsActivityACTIVITY_DESC.AsString;
//      cdsCOBActivity.Post;
//
//      cdsActivity.Next;
//    end;
//
    ActivateCOBFlows('');
  end;
end;

procedure TfrmClientOnBoardingList.cdsCOBDetailsNewRecord(DataSet: TDataSet);
var
  iCustRegNo: Integer;
begin
  inherited;
  if cdsCOBDetails.State in [dsInsert] then
  begin
    iCustRegNo := dmGlobal.RemoteServer.GetSeq('COB.'+FormatDateTime('YYYY.MM', Now));

    cdsCOBDetailsCUST_REG_NO.AsString    := 'COB.'+FormatDateTime('YY.MM', Now)+'.'+FormatFloat('000', iCustRegNo);
    cdsCOBDetailsPRD_CODE.AsString       := 'EQS';
    cdsCOBDetailsBRCODE.AsString         := 'JKT';
    cdsCOBDetailsCLIENT_STATUS.AsInteger := 1;
    cdsCOBDetailsONEVENT.AsInteger := 0;

  end;
end;

procedure TfrmClientOnBoardingList.cdsCOBNotesNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCOBNotesCUST_REG_NO.AsString := cdsClientOnBoardingListCUST_REG_NO.AsString;
  cdsCOBNotesNOTEDATE.AsDateTime := now;
  cdsCOBNotesNOTEBY.AsString := dmGlobal.UserID;
end;

function TfrmClientOnBoardingList.CustDataCheck: Boolean;
var
  oForm: TForm;
  oDataSet, oXDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
begin
  inherited;
  Result := False;

  oForm := TfrmCOBDetailsRet.Create(nil);
  ActivateCOBDetails(FCustRegNo);
  TfrmCOBDetailsRet(oForm).Action := 1;

  cdsCOBDetails.ReadOnly := True;
  oDataSet  := dsCOBActivity.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin

    if oForm.ShowModal = mrOk then
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      oDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      oDataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      oDataSet.Post;

      bResult := True;
    end
    else
    begin
      sReasons := '[Not Complete '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+'] '+InputBox('Reason Not Complete', '', '');

      if LowerCase(oDataset.FieldByName('ACTIVITY_DESC').AsString) = LowerCase('--> Verification') then
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 9;
        oDataSet.Post;

        if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').AsInteger -1, []) then
        begin
          oDataSet.Edit;
          oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
          oDataSet.FieldByName('REASON').AsString           := sReasons;
          oDataSet.Post;
        end;
      end
      else
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
        oDataSet.FieldByName('REASON').AsString           := sReasons;
        oDataSet.Post;
      end;

      bResult := False;
    end;
//    cdsCOBActivity.ApplyUpdates(-1);
    cdsCOBDetails.ReadOnly := False;
    oForm.Free;

    Result := bResult;
  end;
end;

function TfrmClientOnBoardingList.DocsCheck: Boolean;
var
  oForm: TForm;
  oDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
begin
  inherited;
  Result := False;

  oForm := TfrmCOBUploadDocuments.Create(nil);
  TfrmCOBUploadDocuments(oForm).Action := 1;

  oDataSet := dsCOBActivity.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin

    if oForm.ShowModal = mrOk then
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      oDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      oDataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      oDataSet.Post;

      bResult := True;
    end
    else
    begin
      sReasons := '[Not Complete '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+'] '+InputBox('Reason Not Complete', '', '');

      if LowerCase(oDataset.FieldByName('ACTIVITY_DESC').AsString) = LowerCase('--> Verification') then
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 9;
        oDataSet.Post;

        if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').AsInteger -1, []) then
        begin
          oDataSet.Edit;
          oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
          oDataSet.FieldByName('REASON').AsString           := sReasons;
          oDataSet.Post;
        end;
      end
      else
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
        oDataSet.FieldByName('REASON').AsString           := sReasons;
        oDataSet.Post;
      end;

      bResult := False;
    end;
    oForm.Free;
  end;

  Result := bResult;
end;

procedure TfrmClientOnBoardingList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsClientOnBoardingList.Close;
  cdsClientOnBoardingList.Open;

  cdsActivity.Close;
  cdsActivity.Open;

  with dmGlobal.IntDataLookUp do
  begin
    luCounNationOn;
    luProvinceOn;
    luSalesOn;
    luBranchOn;
    luCCYOn;
    luBankOn;
    luSecAnnualIncomeOn;
    luMarketOn;
    luChanelOn;
    luCityOn;
    luExtConfSystemOn;
    luEventOn;

    cdsLuBusinessType.Close;
    cdsLuBusinessType.Open;

    cdsLuCommission.Close;
    cdsLuCommission.Open;

    cdsLuCharge.Close;
    cdsLuCharge.Open;
  end;

end;

function TfrmClientOnBoardingList.GenerateAccountCode: string;
var
  iSeq: Integer;
begin
  iSeq   := dmGlobal.RemoteServer.GetSeq('AccCode.'+FormatDateTime('yymm', now));
  Result := FormatDateTime('yymm', now) + FormatFloat('00', iSeq);
end;

function TfrmClientOnBoardingList.GenerateAccountID: Integer;
begin
  Result := dmGlobal.RemoteServer.GetSeq('AccId');
end;

function TfrmClientOnBoardingList.GenerateEntityCode: string;
var
  iSeq: Integer;
begin
  iSeq   := dmGlobal.RemoteServer.GetSeq('EntCode');
  Result := FormatDateTime('yymm', now) + FormatFloat('00', iSeq);
end;

function TfrmClientOnBoardingList.GenerateEntityID: Integer;
begin
  Result := dmGlobal.RemoteServer.GetSeq('EntId');
end;

procedure TfrmClientOnBoardingList.gvwBrowseCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  oDataController: TcxCustomDataController;
  oDataSet: TDataSet;
begin
  inherited;

  oDataSet := dsBrowse.DataSet;
  oDataController := gvwBrowse.DataController;

  FCustRegNo := oDataController.Values[oDataController.FocusedRecordIndex, gvwBrowse.Columns[oDataSet.FieldByName('CUST_REG_NO').Index].Index];
  ActivateCOBFlows(FCustRegNo);
end;

procedure TfrmClientOnBoardingList.gvwBrowseFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  cdsCOBNotes.Close;
  cdsCOBNotes.Params[0].Value := cdsClientOnBoardingListCUST_REG_NO.AsString;
  cdsCOBNotes.Open;

end;

function TfrmClientOnBoardingList.InsertRequest(ASubID: Integer): Boolean;
var
  iSubID: Integer;
  bNext, bDone: Boolean;
begin
  case ASubID of
    31 : begin
           Result := SubRekCheck;
         end;
    32 : begin
           Result := SIDCheck;
         end;
    33 : begin
           Result := RDNCheck;
         end;
  end;

  dsCOBActivity.DataSet.DisableControls;
  iSubID := 30;
  bNext  := False;
  repeat
    Inc(iSubID);
    bNext := dsCOBActivity.DataSet.Locate('ACTIVITY_SUBID', iSubID, []);
    if bNext then
    begin
      if dsCOBActivity.DataSet.FieldByName('STATUS_ACTIVITY').AsInteger = 2 then
        bDone := True
      else
      begin
        bNext := False;
        bDone := False;
      end;
    end;
  until bNext = False;
  dsCOBActivity.DataSet.EnableControls;

  if bDone then
  begin
    if dsCOBActivity.DataSet.Locate('ACTIVITY_SUBID', 30, []) then
    begin
      dsCOBActivity.DataSet.Edit;
      dsCOBActivity.DataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      dsCOBActivity.DataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      dsCOBActivity.DataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      dsCOBActivity.DataSet.Post;
    end;
  end;
end;

procedure TfrmClientOnBoardingList.popFlowActPopup(Sender: TObject);
  procedure DisAbleAction;
  begin
    actNeedAck.Enabled     := False;
    actStartAck.Enabled    := False;
    actDone.Enabled        := False;
    actReject.Enabled      := False;
    actAddEditData.Enabled := False;
  end;
var
  oActDataSet: TDataSet;
  iStatus,
  iID: Integer;
  sUserID,
  sDesc: string;
begin
  inherited;
  DisAbleAction;
  oActDataSet := dsCOBActivity.DataSet;

  iStatus := oActDataSet.FieldByName('STATUS_ACTIVITY').AsInteger;
  iID     := oActDataSet.FieldByName('ACTIVITY_ID').AsInteger;
  sUserID := oActDataSet.FieldByName('HANDLE_BY').AsString;
  sDesc   := oActDataSet.FieldByName('ACTIVITY_DESC').AsString;
  if (iStatus = 0) then
    actStartAck.Enabled := True
  else if (iStatus = 1) or (iStatus = 3) then
  begin
    if (LowerCase(sUserID) = LowerCase(dmGlobal.UserID)) then
    begin
      actNeedAck.Enabled     := True;
      actDone.Enabled        := True;
      actReject.Enabled      := True;
      if (sDesc <> '--> Verification') or (iID <> 5) or (iID <> 7) then
        actAddEditData.Enabled := True;
    end;
  end;
end;

function TfrmClientOnBoardingList.RDNCheck: Boolean;
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
  bResult: Boolean;
begin
  inherited;
  bResult := False;

  oDataSet := dsCOBActivity.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;
  cdsCOBDetails.ReadOnly := True;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption       := 'Checking RDN';
  TfrmCOBInsert(oForm).lyRDN.Visible := True;
  TfrmCOBInsert(oForm).Action        := 1;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin

    if oForm.ShowModal = mrOk then
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      oDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      oDataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      oDataSet.Post;

      bResult := True;
    end
    else
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
      oDataSet.FieldByName('REASON').AsString           := '[Not Complete '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+'] '+InputBox('Reason Not Complete', '', '');
      oDataSet.Post;

      bResult := False;
    end;

  end;

  oForm.Free;

  cdsCOBDetails.ReadOnly := False;
  Result := bResult;
end;

function TfrmClientOnBoardingList.SalesCheck: Boolean;
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
begin
  inherited;
  bResult := False;

  oDataSet := dsCOBActivity.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;
  cdsCOBDetails.ReadOnly := True;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption         := 'Checking Sales';
  TfrmCOBInsert(oForm).lySales.Visible := True;
  TfrmCOBInsert(oForm).Action          := 1;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin
    if oForm.ShowModal = mrOk then
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      oDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      oDataSet.FieldByName('DONE_BY').AsString := dmGlobal.UserID;
      oDataSet.Post;

      bResult := True;
    end
    else
    begin
      sReasons := '[Not Complete '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+'] '+InputBox('Reason Not Complete', '', '');

      if LowerCase(oDataset.FieldByName('ACTIVITY_DESC').AsString) = LowerCase('--> Verification') then
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 9;
        oDataSet.Post;

        if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').AsInteger -1, []) then
        begin
          oDataSet.Edit;
          oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
          oDataSet.FieldByName('REASON').AsString           := sReasons;
          oDataSet.Post;
        end;
      end
      else
      begin
        oDataSet.Edit;
        oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
        oDataSet.FieldByName('REASON').AsString           := sReasons;
        oDataSet.Post;
      end;

      bResult := False;
    end;

  end;

  oForm.Free;

  cdsCOBDetails.ReadOnly := False;
  Result := bResult;
end;

function TfrmClientOnBoardingList.SettingParameter(ASubID: Integer): Boolean;
var
  oForm: TForm;
  oDataSet: TDataSet;
  oDataSetFA: TDataSet;
  iSubID: Integer;
  bNext, bDone: Boolean;
begin
  oDataSet   := dsBrowse.DataSet;
  oDataSetFA := dsCOBActivity.DataSet;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := 0;
  cdsAccount.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := dsBrowse.DataSet.FieldByName('ACCID').AsInteger;
  cdsAccount.Open;

  case ASubID of
    61: begin
          oForm := tfrmCOBCommCharges.Create(nil);

//          tfrmCOBCommCharges(oForm).Caption   := 'Checking Commission && Charges';
//          tfrmCOBCommCharges(oForm).Action    := 1;
//          TfrmCOBCommCharges(oForm).ACCID     := oDataSet.FieldByname('ACCID').AsInteger;
//          TfrmCOBCommCharges(oForm).CustRegNo := oDataSet.FieldByname('CUST_REG_NO').AsString;
        end;

    62: begin
          oForm := TfrmOrderValidation.Create(nil);

          TfrmOrderValidation(oForm).Caption   := 'Checking Order Vaidation';
          TfrmOrderValidation(oForm).Action    := 1;
          TfrmOrderValidation(oForm).CustRegNo := dsBrowse.DataSet.FieldByName('CUST_REG_NO').AsString;
        end;

    63: begin
          oForm := TfrmCOBAccountBank.Create(nil);

          TfrmCOBAccountBank(oForm).Caption   := 'Checking Account Bank';
          TfrmCOBAccountBank(oForm).Action    := 1;
          TfrmCOBAccountBank(oForm).CustRegNo := dsBrowse.DataSet.FieldByName('CUST_REG_NO').AsString;
        end;

    64: begin
          oForm := TfrmCOBTradeSettingParam.Create(nil);

          TfrmCOBTradeSettingParam(oForm).Caption   := 'Checking Trading Setting Parameter';
          TfrmCOBTradeSettingParam(oForm).Action    := 1;
          TfrmCOBTradeSettingParam(oForm).CustRegNo := dsBrowse.DataSet.FieldByName('CUST_REG_NO').AsString;
        end
  end;

  if Assigned(oForm) then
  begin
    if oDataSetFA.Locate('ACTIVITY_SUBID', ASubID, []) then
    begin
      oDataSetFA.Edit;
      if oForm.ShowModal = mrOk then
      begin
        oDataSetFA.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
        oDataSetFA.FieldByName('DATE_COMPLETE').AsDateTime  := now;
        oDataSetFA.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;

        Result := True;
      end
      else
      begin
        oDataSetFA.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
        oDataSetFA.FieldByName('REASON').AsString           := '[Not Complete '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+'] '+InputBox('Reason Not Complete', '', '');

        Result := False;
      end;
      oDataSetFA.Post;
    end;
  
    oForm.Free;
  end;

  dsCOBActivity.DataSet.DisableControls;
  iSubID := 60;
  bNext  := False;
  repeat
    Inc(iSubID);
    bNext := dsCOBActivity.DataSet.Locate('ACTIVITY_SUBID', iSubID, []);
    if bNext then
    begin
      if dsCOBActivity.DataSet.FieldByName('STATUS_ACTIVITY').AsInteger = 2 then
        bDone := True
      else
      begin
        bNext := False;
        bDone := False;
      end;
    end;
  until bNext = False;
  dsCOBActivity.DataSet.EnableControls;

  if bDone then
  begin
    if dsCOBActivity.DataSet.Locate('ACTIVITY_SUBID', 60, []) then
    begin
      dsCOBActivity.DataSet.Edit;
      dsCOBActivity.DataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      dsCOBActivity.DataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      dsCOBActivity.DataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      dsCOBActivity.DataSet.Post;
    end;

    if dsCOBActivity.DataSet.Locate('ACTIVITY_SUBID', 70, []) then
    begin
      dsCOBActivity.DataSet.Edit;
      dsCOBActivity.DataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 0;
      dsCOBActivity.DataSet.Post;
    end;
  end;
end;

function TfrmClientOnBoardingList.SIDCheck: Boolean;
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
  bResult: Boolean;
begin
  inherited;
  bResult := False;

  oDataSet := dsCOBActivity.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;
  cdsCOBDetails.ReadOnly := True;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption       := 'Checking SID';
  TfrmCOBInsert(oForm).lySID.Visible := True;
  TfrmCOBInsert(oForm).Action        := 1;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin

    if oForm.ShowModal = mrOk then
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      oDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      oDataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      oDataSet.Post;

      bResult := True;
    end
    else
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
      oDataSet.FieldByName('REASON').AsString           := '[Not Complete '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+'] '+InputBox('Reason Not Complete', '', '');
      oDataSet.Post;

      bResult := False;
    end;
  end;

  oForm.Free;

  cdsCOBDetails.ReadOnly := False;
  Result := bResult;
end;

function TfrmClientOnBoardingList.SubRekCheck: Boolean;
var
  oForm: TForm;
  sRegNo: string;
  oDataSet: TDataSet;
  bResult: Boolean;
begin
  inherited;
  bResult := False;

  oDataSet := dsCOBActivity.DataSet;
  sRegNo   := oDataSet.FieldByName('CUST_REG_NO').AsString;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsString := sRegNo;
  cdsCOBDetails.Open;
  cdsCOBDetails.ReadOnly := True;

  oForm := TfrmCOBInsert.Create(nil);
  TfrmCOBInsert(oForm).Caption          := 'Checking KSEI Sub Rek';
  TfrmCOBInsert(oForm).lySubRek.Visible := True;
  TfrmCOBInsert(oForm).Action           := 1;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin

    if oForm.ShowModal = mrOk then
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 2;
      oDataSet.FieldByName('DATE_COMPLETE').AsDateTime  := now;
      oDataSet.FieldByName('DONE_BY').AsString          := dmGlobal.UserID;
      oDataSet.Post;

      bResult := True;
    end
    else
    begin
      oDataSet.Edit;
      oDataSet.FieldByName('STATUS_ACTIVITY').AsInteger := 3;
      oDataSet.FieldByName('REASON').AsString           := '[Not Complete '+FormatDateTime('DD/MM/YY HH:NN:SS',Now)+'] '+InputBox('Reason Not Complete', '', '');
      oDataSet.Post;

      bResult := False;
    end;

  end;

  oForm.Free;

  cdsCOBDetails.ReadOnly := False;
  Result := bResult;
end;

Initialization
  RegisterClass(TfrmClientOnBoardingList);

end.
