unit FormCOBList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxSplitter,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, NReportRPC, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxDBLookupComboBox, cxImageComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxCalendar,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxTextEdit,
  Vcl.Grids, Vcl.DBGrids, NReportClient, frxClass, frxExportPDF, frxDBSet,
  cxBlobEdit, cxCheckBox, StrUtils, Data.DBXJSON, Data.DBXJSONCommon, System.JSON,
  System.Actions, System.ImageList;


type
  TCOBShowType = (cobsRetail = 0, cobsInsti = 1);

  TfrmCOBList = class(TfrmBrowseNoGrid)
    pnlRigh: TPanel;
    cxSplitter1: TcxSplitter;
    cdsCOBDetailList: TNClientDataset;
    grdCOB: TcxGrid;
    gvwCOBList: TcxGridDBBandedTableView;
    grdCOBLevel1: TcxGridLevel;
    cdsCOBFlow: TNClientDataset;
    cdsCOBFlowCUST_REG_NO: TStringField;
    cdsCOBFlowACTIVITY_ID: TIntegerField;
    cdsCOBFlowACTIVITY_SUBID: TIntegerField;
    cdsCOBFlowSTATUS_DATA: TIntegerField;
    cdsCOBFlowSTATUS_ACTIVITY: TIntegerField;
    cdsCOBFlowDATE_PROCESS: TDateTimeField;
    cdsCOBFlowHANDLE_BY: TStringField;
    cdsCOBFlowDATE_COMPLETE: TDateTimeField;
    cdsCOBFlowACTIVITY_DESC: TStringField;
    cdsCOBFlowREASON: TStringField;
    cdsCOBFlowDONE_BY: TStringField;
    cdsCOBFlowCID: TLargeintField;
    cxGrid2: TcxGrid;
    gvwCOBActivity: TcxGridDBBandedTableView;
    gvwCOBActivityCUST_REG_NO: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_ID: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_SUBID: TcxGridDBBandedColumn;
    gvwCOBActivitySTATUS_ACTIVITY: TcxGridDBBandedColumn;
    gvwCOBActivityDATE_PROCESS: TcxGridDBBandedColumn;
    gvwCOBActivityHANDLE_BY: TcxGridDBBandedColumn;
    gvwCOBActivityDATE_COMPLETE: TcxGridDBBandedColumn;
    gvwCOBActivityACTIVITY_DESC: TcxGridDBBandedColumn;
    gvwCOBActivityREASON: TcxGridDBBandedColumn;
    gvwCOBActivityDONE_BY: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    dsCOBFlow: TDataSource;
    cdsCOBDetails: TNClientDataset;
    cdsCOBBOD: TNClientDataset;
    cdsCOBBODCUST_REG_NO: TStringField;
    cdsCOBBODBOD_NAME: TStringField;
    cdsCOBBODBOD_POSITION: TStringField;
    cdsCOBBODBOD_CELLPHONE: TStringField;
    cdsCOBBODBOD_EMAIL: TStringField;
    cdsCOBBODBOD_NATIONALITY: TStringField;
    cdsCOBBankAcc: TNClientDataset;
    cdsCOBBankAccCUST_REG_NO: TStringField;
    cdsCOBBankAccACC_NO: TStringField;
    cdsCOBBankAccBANK_NAME: TStringField;
    cdsCOBBankAccBANK_BRANCH: TStringField;
    cdsCOBBankAccBENEFICIARY: TStringField;
    cdsCOBNotes: TNClientDataset;
    cdsCheckBeforeNext: TNClientDataset;
    cdsCheckBeforeNextHITUNG: TIntegerField;
    cdsAccount: TNClientDataset;
    cdsCommission: TNClientDataset;
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
    cdsCharges: TNClientDataset;
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
    cdsChargesDESCRIPTION: TStringField;
    cdsAccBank: TNClientDataset;
    cdsAccBankACCID: TIntegerField;
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
    cdsAccLimit: TNClientDataset;
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
    actNewRetail: TNAction;
    gvwCOBListCUST_REG_NO: TcxGridDBBandedColumn;
    gvwCOBListPRD_CODE: TcxGridDBBandedColumn;
    gvwCOBListNAME: TcxGridDBBandedColumn;
    gvwCOBListNATIONALITY: TcxGridDBBandedColumn;
    gvwCOBListTAXPAYER_REG: TcxGridDBBandedColumn;
    gvwCOBListEMAIL: TcxGridDBBandedColumn;
    gvwCOBListCELL_PHONE: TcxGridDBBandedColumn;
    gvwCOBListHOME_PHONE: TcxGridDBBandedColumn;
    gvwCOBListACCID: TcxGridDBBandedColumn;
    gvwCOBListENTTID: TcxGridDBBandedColumn;
    gvwCOBListCLIENT_STATUS: TcxGridDBBandedColumn;
    gvwCOBListCUST_TYPE: TcxGridDBBandedColumn;
    gvwCOBListCID: TcxGridDBBandedColumn;
    NewRetailClient1: TMenuItem;
    cdsCOBDetailsCID: TIntegerField;
    cdsCOBDetailsCUST_REG_NO: TStringField;
    cdsCOBDetailsNAME: TStringField;
    cdsCOBDetailsPOB: TStringField;
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
    cdsCOBDetailsRESIDENT_TYPE2_OTHERS: TStringField;
    cdsCOBDetailsOWNERSHIP_STATUS2: TIntegerField;
    cdsCOBDetailsOWNERSHIP_STATUS2_OTHERS: TStringField;
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
    cdsCOBDetailsCHKCURRADR: TStringField;
    cdsCOBDetailsCHKGUCURRADR: TStringField;
    cdsCOBDetailsONEVENT: TStringField;
    cdsCOBDetailsEVCODE: TStringField;
    cdsCOBDetailsOATYPE: TStringField;
    cdsCOBDetailsBRANCHID: TLargeintField;
    cdsCOBDetailsEVID: TLargeintField;
    cdsCOBDetailsMODDA: TDateTimeField;
    cdsCOBDetailsMODUI: TStringField;
    cdsCOBDetailsAPPDA: TDateTimeField;
    cdsCOBDetailsAPPUI: TStringField;
    cdsCOBDetailsUNDER4Y: TIntegerField;
    cdsCOBDetailsUNDER4YDA: TDateTimeField;
    cdsCOBDetailsNOTES4Y: TStringField;
    cdsCOBDetailsISDEL: TIntegerField;
    cdsCOBDetailsID: TLargeintField;
    cdsCOBDetailsqryCOBBankAcc: TDataSetField;
    cdsCOBDetailsqryCOBBOD: TDataSetField;
    cdsCOBDetailListCUST_REG_NO: TStringField;
    cdsCOBDetailListPRD_CODE: TStringField;
    cdsCOBDetailListNAME: TStringField;
    cdsCOBDetailListGENDER: TIntegerField;
    cdsCOBDetailListNATIONALITY: TStringField;
    cdsCOBDetailListTAXPAYER_REG: TStringField;
    cdsCOBDetailListID_TYPE: TIntegerField;
    cdsCOBDetailListID_NO: TStringField;
    cdsCOBDetailListID_VALID: TDateField;
    cdsCOBDetailListEMAIL: TStringField;
    cdsCOBDetailListCELL_PHONE: TStringField;
    cdsCOBDetailListHOME_PHONE: TStringField;
    cdsCOBDetailListACCID: TIntegerField;
    cdsCOBDetailListENTTID: TIntegerField;
    cdsCOBDetailListCLIENT_STATUS: TIntegerField;
    cdsCOBDetailListCUST_TYPE: TIntegerField;
    cdsCOBDetailListCID: TIntegerField;
    cdsCOBFlowACTTYPE: TStringField;
    cdsCOBFlowACLEVEL: TStringField;
    actStartAck: TNAction;
    cdsCOBFlowChild: TNClientDataset;
    cdsCOBFlowACPROCESS: TStringField;
    cdsCOBFlowChildCUST_REG_NO: TStringField;
    cdsCOBFlowChildACTIVITY_ID: TIntegerField;
    cdsCOBFlowChildACTIVITY_SUBID: TIntegerField;
    cdsCOBFlowChildSTATUS_DATA: TIntegerField;
    cdsCOBFlowChildSTATUS_ACTIVITY: TIntegerField;
    cdsCOBFlowChildDATE_PROCESS: TDateTimeField;
    cdsCOBFlowChildHANDLE_BY: TStringField;
    cdsCOBFlowChildDATE_COMPLETE: TDateTimeField;
    cdsCOBFlowChildACTIVITY_DESC: TStringField;
    cdsCOBFlowChildREASON: TStringField;
    cdsCOBFlowChildDONE_BY: TStringField;
    cdsCOBFlowChildCID: TLargeintField;
    cdsCOBFlowChildACTTYPE: TStringField;
    cdsCOBFlowChildACLEVEL: TStringField;
    cdsCOBFlowChildACPROCESS: TStringField;
    actDone: TAction;
    cdsActivity: TNClientDataset;
    cdsActivityACTIVITY_ID: TIntegerField;
    cdsActivityACTIVITY_SUBID: TIntegerField;
    cdsActivityACTIVITY_DESC: TStringField;
    cdsActivityACTIVITY_EMAIL_CLIENT: TIntegerField;
    cdsActivityACTIVITY_EMAIL_USERS: TIntegerField;
    cdsActivityACTIVITY_COLOR: TStringField;
    cdsActivityACTIVITY_NEXT: TStringField;
    cdsActivityCOB_TYPE: TStringField;
    popFlowAct: TPopupMenu;
    StartAck1: TMenuItem;
    Done1: TMenuItem;
    actAddEdit: TNAction;
    N6: TMenuItem;
    AddEditData1: TMenuItem;
    cdsViewKSEISubrek: TNClientDataset;
    cdsViewRDN: TNClientDataset;
    cdsViewKSEISubrekCID: TIntegerField;
    cdsViewKSEISubrekNAME: TStringField;
    cdsViewKSEISubrekSUBREK01: TStringField;
    cdsViewKSEISubrekSUBREK01STS: TStringField;
    cdsViewKSEISubrekSUBREK04: TStringField;
    cdsViewKSEISubrekSUBREK04STS: TStringField;
    cdsViewKSEISubrekSID: TStringField;
    cdsViewKSEISubrekSIDSTS: TStringField;
    cdsViewRDNRDNREQID: TLargeintField;
    cdsViewRDNCUST_REG_NO: TStringField;
    cdsViewRDNCLIENTNAME: TStringField;
    cdsViewRDNBANKNAME: TStringField;
    cdsViewRDNCLIENTTYPE: TIntegerField;
    cdsViewRDNBRANCH: TStringField;
    cdsViewRDNRDNACCNO: TStringField;
    cdsViewRDNRDNSTATUS: TStringField;
    cdsViewRDNRDNDATE: TDateTimeField;
    cdsViewRDNRDNNOTES: TStringField;
    cdsViewRDNCID: TLargeintField;
    cdsViewRDNRDNREQUESTDATE: TDateTimeField;
    cdsViewRDNPDFFILEGENERATE: TBlobField;
    cdsAccountActivation: TNClientDataset;
    cxGrid3: TcxGrid;
    gvwNotes: TcxGridDBBandedTableView;
    gvwNotesNOTEBY: TcxGridDBBandedColumn;
    gvwNotesNOTEDATE: TcxGridDBBandedColumn;
    gvwNotesNOTES: TcxGridDBBandedColumn;
    gvwNotesNOTESTATUS: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    dsCOBNotes: TDataSource;
    cdsCOBDetailsPIN: TStringField;
    cdsCOBDetailsCITY: TStringField;
    cdsCOBDetailsCITY2: TStringField;
    cdsCOBDetailsRELIGION: TStringField;
    cdsCOBDetailsRELIGION2: TStringField;
    actNewInstitution: TNAction;
    NewInstitution1: TMenuItem;
    N7: TMenuItem;
    NewCustomer1: TMenuItem;
    actNewOnline: TNAction;
    cdsCOBBankAccACCID: TIntegerField;
    cdsCOBDetailListBRANCHID: TLargeintField;
    cdsCOBDetailsISPACC: TStringField;
    cdsCOBDetailsPACCID: TLargeintField;
    cdsCOBClientCustody: TNClientDataset;
    cdsCOBClientCustodyACCID: TIntegerField;
    cdsCOBClientCustodyCUSTODYCODE: TStringField;
    cdsCOBClientCustodyCUSTODYACCNO: TStringField;
    cdsCOBClientCustodyCUSTODYACCNAME: TStringField;
    cdsCOBClientCustodyCUSTODYBRANCH: TStringField;
    cdsCOBClientCustodyACTLED_SEQID: TIntegerField;
    cdsCOBClientCustodyMODDA: TDateTimeField;
    cdsCOBClientCustodyMODUI: TStringField;
    cdsCOBClientCustodyAPPDA: TDateTimeField;
    cdsCOBClientCustodyAPPUI: TStringField;
    cdsCOBClientCustodyUNDER4Y: TIntegerField;
    cdsCOBClientCustodyUNDER4YDA: TDateTimeField;
    cdsCOBClientCustodyNOTES4Y: TStringField;
    cdsCOBClientCustodyISDEL: TIntegerField;
    cdsCOBClientCustodyID: TLargeintField;
    cdsCOBDetailsqryCONBankCustody: TDataSetField;
    cdsCOBClientCustodyCID: TIntegerField;
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
    cdsAccountISTRDACCOUNT: TStringField;
    cdsAccountSALESID: TLargeintField;
    cdsAccountACC_STS: TStringField;
    cdsAccountOMGUSE: TStringField;
    cdsAccountOMGEXREFFCODE: TStringField;
    cdsAccountOMGALERT: TStringField;
    cdsAccountOMGSENDSSI: TStringField;
    cdsAccountOMGSENDFEEINBLOCK: TStringField;
    cdsAccountSI_SPLIT: TStringField;
    cdsAccountALCID: TIntegerField;
    cdsAccountTALCID: TIntegerField;
    cdsAccountLASTTR_DATE: TDateTimeField;
    cdsAccountMODDA: TDateTimeField;
    cdsAccountMODUI: TStringField;
    cdsAccountAPPDA: TDateTimeField;
    cdsAccountAPPUI: TStringField;
    cdsAccountUNDER4Y: TIntegerField;
    cdsAccountUNDER4YDA: TDateTimeField;
    cdsAccountNOTES4Y: TStringField;
    cdsAccountISDEL: TIntegerField;
    cdsAccountID: TLargeintField;
    cdsAccountCCCLS_ID: TLargeintField;
    cdsAccountCC_TYPE: TStringField;
    cdsAccountCR_VAL: TFloatField;
    cdsAccountBUY_LIMIT: TFloatField;
    cdsAccountSELL_LIMIT: TFloatField;
    cdsAccountqryAccountBank: TDataSetField;
    cdsAccountqryAccountLedger: TDataSetField;
    cdsAccountqryAccountCharge: TDataSetField;
    cdsAccountqryAccountComm: TDataSetField;
    cdsAccBankACTLED_SEQID: TIntegerField;
    cdsAccBankACCBANKID: TIntegerField;
    rc: TNClientReportContainer;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cdsCOBBODBOD_ID_NO: TStringField;
    cdsCOBBODBOD_VALID_ID: TDateTimeField;
    cdsCOBDetailsAUTHORIZED_CAP: TFloatField;
    cdsCOBDetailsPAID_CAP: TFloatField;
    cdsCOBDetailsCOMPANY_COUNTRY: TStringField;
    cdsCOBDetailsSEC_SETTLEMENT: TIntegerField;
    cdsCOBDetailsSEC_SETTLEMENT_TO: TStringField;
    cdsCOBDetailsCASH_SETTLEMENT: TIntegerField;
    cdsCOBDetailsCASH_SETTLEMENT_TO: TStringField;
    cdsCOBDetailsINVEST_EXPERIENCE: TIntegerField;
    cdsCOBDetailsINVEST_EXPERIENCE_OTHER: TStringField;
    cdsCOBDetailsESTIMATE_DAILY_TRADE: TIntegerField;
    cdsCOBDetailsGU_LEGALRELATION: TStringField;
    cdsCOBDetailsqryCOBAuthPerson: TDataSetField;
    cdsCOBDetailsqryCOBShareHolder: TDataSetField;
    cdsCOBShareHolder: TNClientDataset;
    cdsCOBShareHolderCID: TIntegerField;
    cdsCOBShareHolderSHAREID: TIntegerField;
    cdsCOBShareHolderNAME_SHAREHOLDER: TStringField;
    cdsCOBShareHolderSHARE_PERCENTAGE: TFloatField;
    cdsCOBShareHolderMODDA: TDateTimeField;
    cdsCOBShareHolderMODUI: TStringField;
    cdsCOBShareHolderAPPDA: TDateTimeField;
    cdsCOBShareHolderAPPUI: TStringField;
    cdsCOBShareHolderUNDER4Y: TIntegerField;
    cdsCOBShareHolderUNDER4YDA: TDateTimeField;
    cdsCOBShareHolderNOTES4Y: TStringField;
    cdsCOBShareHolderISDEL: TIntegerField;
    cdsCOBShareHolderID: TLargeintField;
    cdsCOBAuthPerson: TNClientDataset;
    cdsCOBAuthPersonCID: TIntegerField;
    cdsCOBAuthPersonAUTHID: TIntegerField;
    cdsCOBAuthPersonNAME_AUTHORIZED: TStringField;
    cdsCOBAuthPersonLEGAL_RELATION: TStringField;
    cdsCOBAuthPersonID_NO: TStringField;
    cdsCOBAuthPersonHOME_PHONE: TStringField;
    cdsCOBAuthPersonCELL_PHONE: TStringField;
    cdsCOBAuthPersonFAX_NO: TStringField;
    cdsCOBAuthPersonEMAIL: TStringField;
    cdsCOBAuthPersonADDRESS: TStringField;
    cdsCOBAuthPersonCITIZENSHIP: TIntegerField;
    cdsCOBAuthPersonMODDA: TDateTimeField;
    cdsCOBAuthPersonMODUI: TStringField;
    cdsCOBAuthPersonAPPDA: TDateTimeField;
    cdsCOBAuthPersonAPPUI: TStringField;
    cdsCOBAuthPersonUNDER4Y: TIntegerField;
    cdsCOBAuthPersonUNDER4YDA: TDateTimeField;
    cdsCOBAuthPersonNOTES4Y: TStringField;
    cdsCOBAuthPersonISDEL: TIntegerField;
    cdsCOBAuthPersonID: TLargeintField;
    cdsCOBBODBODID: TIntegerField;
    cdsCOBBODCID: TIntegerField;
    cdsCOBBODMODDA: TDateTimeField;
    cdsCOBBODMODUI: TStringField;
    cdsCOBBODAPPDA: TDateTimeField;
    cdsCOBBODAPPUI: TStringField;
    cdsCOBBODUNDER4Y: TIntegerField;
    cdsCOBBODUNDER4YDA: TDateTimeField;
    cdsCOBBODNOTES4Y: TStringField;
    cdsCOBBODISDEL: TIntegerField;
    cdsCOBBODID: TLargeintField;
    cdsCOBBankAccCID: TIntegerField;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    cdsDefaultParamSetting: TClientDataSet;
    cdsPermission: TNClientDataset;
    gvwCOBActivityACTION: TcxGridDBBandedColumn;
    cdsPermissionACTIVITY_ID: TIntegerField;
    cdsPermissionACTIVITY_SUBID: TIntegerField;
    cdsCOBFlowFLAGPERM: TIntegerField;
    gvwCOBActivityFLAGPERM: TcxGridDBBandedColumn;
    cdsAccountDEFTRDPARAM: TStringField;
    cdsCOBDetailsACC_PHOTO: TBlobField;
    cdsCOBDetailsACC_SIGN: TBlobField;
    cdsGenerateRDNReport: TNClientDataset;
    cdsGenerateRDNReportCID: TIntegerField;
    cdsGenerateRDNReportCUST_REG_NO: TStringField;
    cdsGenerateRDNReportNAME: TStringField;
    cdsGenerateRDNReportPOB: TStringField;
    cdsGenerateRDNReportDOB: TDateField;
    cdsGenerateRDNReportID_TYPE: TIntegerField;
    cdsGenerateRDNReportID_NO: TStringField;
    cdsGenerateRDNReportID_VALID: TDateField;
    cdsGenerateRDNReportGENDER: TIntegerField;
    cdsGenerateRDNReportNATIONALITY: TStringField;
    cdsGenerateRDNReportTAXPAYER_REG: TStringField;
    cdsGenerateRDNReportTAXPAYER_STATUS: TIntegerField;
    cdsGenerateRDNReportMARITAL_STATUS: TIntegerField;
    cdsGenerateRDNReportMOTHER_NAME: TStringField;
    cdsGenerateRDNReportRESIDENT_TYPE: TStringField;
    cdsGenerateRDNReportOWNERSHIP_STATUS: TStringField;
    cdsGenerateRDNReportSTREET: TStringField;
    cdsGenerateRDNReportRT_RW: TStringField;
    cdsGenerateRDNReportKELURAHAN: TStringField;
    cdsGenerateRDNReportKECAMATAN: TStringField;
    cdsGenerateRDNReportPROVINCE: TStringField;
    cdsGenerateRDNReportCOUNTRY: TStringField;
    cdsGenerateRDNReportZIP_CODE: TStringField;
    cdsGenerateRDNReportRESIDENT_TYPE2: TIntegerField;
    cdsGenerateRDNReportRESIDENT_TYPE2_OTHERS: TStringField;
    cdsGenerateRDNReportOWNERSHIP_STATUS2: TIntegerField;
    cdsGenerateRDNReportOWNERSHIP_STATUS2_OTHERS: TStringField;
    cdsGenerateRDNReportSTREET2: TStringField;
    cdsGenerateRDNReportRT_RW2: TStringField;
    cdsGenerateRDNReportKELURAHAN2: TStringField;
    cdsGenerateRDNReportKECAMATAN2: TStringField;
    cdsGenerateRDNReportPROVINCE2: TStringField;
    cdsGenerateRDNReportCOUNTRY2: TStringField;
    cdsGenerateRDNReportZIP_CODE2: TStringField;
    cdsGenerateRDNReportEMAIL: TStringField;
    cdsGenerateRDNReportHOME_PHONE: TStringField;
    cdsGenerateRDNReportCELL_PHONE: TStringField;
    cdsGenerateRDNReportFAX_NO: TStringField;
    cdsGenerateRDNReportCORRESPONDENT_ADDRESS: TIntegerField;
    cdsGenerateRDNReportOCCUPATION: TIntegerField;
    cdsGenerateRDNReportFIELD_WORK: TStringField;
    cdsGenerateRDNReportCOMPANY: TStringField;
    cdsGenerateRDNReportPOSITION: TStringField;
    cdsGenerateRDNReportJOB_DIVISION: TStringField;
    cdsGenerateRDNReportYOS_MONTH: TStringField;
    cdsGenerateRDNReportYOS_YEAR: TStringField;
    cdsGenerateRDNReportCOMPANY_PHONE: TStringField;
    cdsGenerateRDNReportCOMPANY_PHONE_EXT: TStringField;
    cdsGenerateRDNReportCOMPANY_ADDRESS: TStringField;
    cdsGenerateRDNReportFUND_SOURCE: TIntegerField;
    cdsGenerateRDNReportANNUAL_INCOME: TIntegerField;
    cdsGenerateRDNReportREL_FAMILY_NAME: TStringField;
    cdsGenerateRDNReportREL_FAMILY_PHONE: TStringField;
    cdsGenerateRDNReportBENEFICIARY_NAME: TStringField;
    cdsGenerateRDNReportBENEFICIARY_PHONE: TStringField;
    cdsGenerateRDNReportBENEFICIARY_RELATION: TStringField;
    cdsGenerateRDNReportBENEFICIARY_ID_NO: TStringField;
    cdsGenerateRDNReportINV_BANK: TStringField;
    cdsGenerateRDNReportINV_BANK_NAME: TStringField;
    cdsGenerateRDNReportINV_BANK_ACC_NAME: TStringField;
    cdsGenerateRDNReportINV_BANK_ACC_NO: TStringField;
    cdsGenerateRDNReportINV_BANK_BRANCH: TStringField;
    cdsGenerateRDNReportFAM_WORK_AT_BHN: TIntegerField;
    cdsGenerateRDNReportFAM_WORK_AT_BHN_NAME: TStringField;
    cdsGenerateRDNReportFAM_WORK_AT_BHN_DEPT: TStringField;
    cdsGenerateRDNReportFAM_WORK_AT_FIN: TIntegerField;
    cdsGenerateRDNReportFAM_WORK_AT_FIN_NAME: TStringField;
    cdsGenerateRDNReportFAM_WORK_AT_FIN_INST_NAME: TStringField;
    cdsGenerateRDNReportFAM_WORK_AS_DIR: TIntegerField;
    cdsGenerateRDNReportFAM_WORK_AS_DIR_NAME: TStringField;
    cdsGenerateRDNReportFAM_WORK_AS_DIR_INST_NAME: TStringField;
    cdsGenerateRDNReportFAM_WORK_AT_GOV: TIntegerField;
    cdsGenerateRDNReportFAM_WORK_AT_GOV_NAME: TStringField;
    cdsGenerateRDNReportFAM_WORK_AT_GOV_INST_NAME: TStringField;
    cdsGenerateRDNReportHOBBIES: TStringField;
    cdsGenerateRDNReportDATA_STATUS: TIntegerField;
    cdsGenerateRDNReportCREATEDBY: TStringField;
    cdsGenerateRDNReportCREATEDON: TDateTimeField;
    cdsGenerateRDNReportUPDATEDBY: TStringField;
    cdsGenerateRDNReportUPDATEDON: TDateTimeField;
    cdsGenerateRDNReportLIFETIME_ID: TIntegerField;
    cdsGenerateRDNReportSALES: TStringField;
    cdsGenerateRDNReportACCOUNT_NUMBER: TStringField;
    cdsGenerateRDNReportALT_CODE: TStringField;
    cdsGenerateRDNReportSUBREK001: TStringField;
    cdsGenerateRDNReportSUBREK004: TStringField;
    cdsGenerateRDNReportSID: TStringField;
    cdsGenerateRDNReportRDN: TStringField;
    cdsGenerateRDNReportREF_BANK: TStringField;
    cdsGenerateRDNReportGU_NAME: TStringField;
    cdsGenerateRDNReportGU_HUB: TIntegerField;
    cdsGenerateRDNReportGU_ID_NO: TStringField;
    cdsGenerateRDNReportGU_ID_EXP: TDateTimeField;
    cdsGenerateRDNReportGU_TAXPAYER_NO: TStringField;
    cdsGenerateRDNReportGU_NATIONALITY: TStringField;
    cdsGenerateRDNReportGU_GENDER: TIntegerField;
    cdsGenerateRDNReportGU_POB: TStringField;
    cdsGenerateRDNReportGU_DOB: TDateTimeField;
    cdsGenerateRDNReportGU_MATIAL_STATUS: TIntegerField;
    cdsGenerateRDNReportGU_EMAIL: TStringField;
    cdsGenerateRDNReportGU_HANDPHONE: TStringField;
    cdsGenerateRDNReportGU_FAX: TStringField;
    cdsGenerateRDNReportGU_ADDRESS: TStringField;
    cdsGenerateRDNReportGU_CITY: TStringField;
    cdsGenerateRDNReportGU_POSTALCODE: TStringField;
    cdsGenerateRDNReportGU_PROVINCE: TStringField;
    cdsGenerateRDNReportGU_COUNTRY: TStringField;
    cdsGenerateRDNReportGU_PHONE: TStringField;
    cdsGenerateRDNReportGU_ADDRESS2: TStringField;
    cdsGenerateRDNReportGU_CITY2: TStringField;
    cdsGenerateRDNReportGU_POSTALCODE2: TStringField;
    cdsGenerateRDNReportGU_PROVICE2: TStringField;
    cdsGenerateRDNReportGU_COUNTRY2: TStringField;
    cdsGenerateRDNReportGU_PHONE2: TStringField;
    cdsGenerateRDNReportGU_JOBS: TStringField;
    cdsGenerateRDNReportGU_LAST_POSITION: TStringField;
    cdsGenerateRDNReportGU_JOBS_COMPANY: TStringField;
    cdsGenerateRDNReportGU_JOBS_COMPANY_TYPE: TStringField;
    cdsGenerateRDNReportGU_JOBS_ADDRESS: TStringField;
    cdsGenerateRDNReportGU_JOBS_CITY: TStringField;
    cdsGenerateRDNReportGU_JOBS_POSTALCODE: TStringField;
    cdsGenerateRDNReportGU_JOBS_PHONE: TStringField;
    cdsGenerateRDNReportGU_JOBS_FAX: TStringField;
    cdsGenerateRDNReportGU_JOBS_FUND_SOURCE: TStringField;
    cdsGenerateRDNReportGU_JOBS_FUND_SOURCE_OT: TStringField;
    cdsGenerateRDNReportGU_JOBS_ANNUAL_SALARY: TIntegerField;
    cdsGenerateRDNReportGU_JOBS_MARITAL_STATUS: TIntegerField;
    cdsGenerateRDNReportGU_CELLPHONE: TStringField;
    cdsGenerateRDNReportGU_MAIDEN_MOTHER: TStringField;
    cdsGenerateRDNReportREL_FAMILY: TIntegerField;
    cdsGenerateRDNReportHOBBY: TStringField;
    cdsGenerateRDNReportACC_TYPE_SEC: TIntegerField;
    cdsGenerateRDNReportCLIENT_STATUS: TIntegerField;
    cdsGenerateRDNReportSIUP_NO: TStringField;
    cdsGenerateRDNReportTDP_NO: TStringField;
    cdsGenerateRDNReportTDP_REG_DATE: TStringField;
    cdsGenerateRDNReportTDP_INVALID_DATE: TDateTimeField;
    cdsGenerateRDNReportAPPROVER_HAM_MINISTRI: TStringField;
    cdsGenerateRDNReportANNOUNC_STATE_GAZELLE: TStringField;
    cdsGenerateRDNReportTAX_REG_CHK: TIntegerField;
    cdsGenerateRDNReportTAS_REG_DATE: TDateTimeField;
    cdsGenerateRDNReportBUSINESS_ENTITY_CHK: TIntegerField;
    cdsGenerateRDNReportBUSINESS_ENTITY_OTHER: TStringField;
    cdsGenerateRDNReportBUSINESS_LINE_CHK: TIntegerField;
    cdsGenerateRDNReportBUSINESS_LINE_OTHER: TStringField;
    cdsGenerateRDNReportCOMPANY_CHARACTER_CHK: TIntegerField;
    cdsGenerateRDNReportCOMPANY_CHARACTER_OTHER: TStringField;
    cdsGenerateRDNReportOFFC_ADDR_ASSKDP: TStringField;
    cdsGenerateRDNReportOFFC_CITY: TStringField;
    cdsGenerateRDNReportOFFC_ZIPCODE: TStringField;
    cdsGenerateRDNReportOFFC_COUNTRY: TStringField;
    cdsGenerateRDNReportCORESP_ADDR: TStringField;
    cdsGenerateRDNReportCORESP_CITY: TStringField;
    cdsGenerateRDNReportCORESP_ZIPCODE: TStringField;
    cdsGenerateRDNReportCORESP_COUNTRY: TStringField;
    cdsGenerateRDNReportOFFC_BUILD_STATUS: TIntegerField;
    cdsGenerateRDNReportOFFC_LENGTH_COREPON: TIntegerField;
    cdsGenerateRDNReportOFFC_PHONE_NO: TStringField;
    cdsGenerateRDNReportOFFC_FAX_NO: TStringField;
    cdsGenerateRDNReportEMAIL_CHK: TIntegerField;
    cdsGenerateRDNReportEMAIL_ADDR: TStringField;
    cdsGenerateRDNReportOFCC_FAX_CHK: TIntegerField;
    cdsGenerateRDNReportOFFC_FAX_NO_OTHER: TStringField;
    cdsGenerateRDNReportANNUAL_NET_PROFIT: TIntegerField;
    cdsGenerateRDNReportTOTAL_ASSET: TIntegerField;
    cdsGenerateRDNReportFUND_SEP_BANK_ACC_NO: TStringField;
    cdsGenerateRDNReportFUND_SEP_BANK_NAME: TStringField;
    cdsGenerateRDNReportFUND_SEP_BANK_BRANCH: TStringField;
    cdsGenerateRDNReportFUND_SEP_BANK_BENEFICIARY: TStringField;
    cdsGenerateRDNReportINIT_DEPOSIT_FUND: TFloatField;
    cdsGenerateRDNReportINIT_DEPOSIT_SHARES: TFloatField;
    cdsGenerateRDNReportRETAINED_EARNING_CHK: TIntegerField;
    cdsGenerateRDNReportRETAINED_EARNING_OTHER: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_SEC_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_SEC_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_SEC_ACC_NO: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_REL_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_AFF_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_AFF_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_AFF_RELATION: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_AF_ACCNO: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_CNTRL_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_CNTRL_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_CNTRL_ACCNO: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_SHR_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_SHR_COMP_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_SHR_POSITION: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_SHR_RELATION: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_EMT_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_EMT_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_EMN_STOCK: TFloatField;
    cdsGenerateRDNReportINFO_EXISTING_EMN_TITLE: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_PE_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_PE_COM_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_PE_TITLE: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_PE_STOCK: TFloatField;
    cdsGenerateRDNReportINFO_EXISTING_DWN_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_DWN_COM_NAME: TStringField;
    cdsGenerateRDNReportINFO_EXISTING_PUB_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_PEP_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_MARKET_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_MARKET_NAME: TStringField;
    cdsGenerateRDNReportSWIFTCODE: TStringField;
    cdsGenerateRDNReportCOMP_ESTABLISH_DATE: TDateTimeField;
    cdsGenerateRDNReportCOMP_ESTABLISH_PLACE: TStringField;
    cdsGenerateRDNReportDEED_ESTABLISH_DATE: TDateTimeField;
    cdsGenerateRDNReportDEED_ESTABLISH_PLACE: TStringField;
    cdsGenerateRDNReportNOTARY: TStringField;
    cdsGenerateRDNReportINVS_EXPERIENCE: TIntegerField;
    cdsGenerateRDNReportINVS_OBJ: TIntegerField;
    cdsGenerateRDNReportINVS_OBJ_OTHER: TStringField;
    cdsGenerateRDNReportCUST_TYPE: TIntegerField;
    cdsGenerateRDNReportPRD_CODE: TStringField;
    cdsGenerateRDNReportCLIENT_EXT: TIntegerField;
    cdsGenerateRDNReportACCID: TIntegerField;
    cdsGenerateRDNReportENTTID: TIntegerField;
    cdsGenerateRDNReportSPOUSE_NAME: TStringField;
    cdsGenerateRDNReportEDU_BACKGROUND: TIntegerField;
    cdsGenerateRDNReportEDU_BACKGOUND_OTHER: TStringField;
    cdsGenerateRDNReportSOURCE_FUND_OTHER: TStringField;
    cdsGenerateRDNReportOCCUPATION_OTHER: TStringField;
    cdsGenerateRDNReportNAT_BUSINESS_ENTREPRENEUR: TStringField;
    cdsGenerateRDNReportINVEST_OBJECTIVE: TIntegerField;
    cdsGenerateRDNReportINVEST_OBJECTIVE_OTHER: TStringField;
    cdsGenerateRDNReportINV_BANK_ACC_CCY: TStringField;
    cdsGenerateRDNReportTAX_REG_DATE: TDateField;
    cdsGenerateRDNReportEVENT_NAME: TStringField;
    cdsGenerateRDNReportLAST_STATUS: TStringField;
    cdsGenerateRDNReportBRCODE: TStringField;
    cdsGenerateRDNReportBNINVCODE: TStringField;
    cdsGenerateRDNReportBNINVACCNO: TStringField;
    cdsGenerateRDNReportBNINACCNAME: TStringField;
    cdsGenerateRDNReportCHKCURRADR: TStringField;
    cdsGenerateRDNReportCHKGUCURRADR: TStringField;
    cdsGenerateRDNReportONEVENT: TStringField;
    cdsGenerateRDNReportEVCODE: TStringField;
    cdsGenerateRDNReportOATYPE: TStringField;
    cdsGenerateRDNReportBRANCHID: TLargeintField;
    cdsGenerateRDNReportEVID: TLargeintField;
    cdsGenerateRDNReportMODDA: TDateTimeField;
    cdsGenerateRDNReportMODUI: TStringField;
    cdsGenerateRDNReportAPPDA: TDateTimeField;
    cdsGenerateRDNReportAPPUI: TStringField;
    cdsGenerateRDNReportUNDER4Y: TIntegerField;
    cdsGenerateRDNReportUNDER4YDA: TDateTimeField;
    cdsGenerateRDNReportNOTES4Y: TStringField;
    cdsGenerateRDNReportISDEL: TIntegerField;
    cdsGenerateRDNReportID: TLargeintField;
    cdsGenerateRDNReportPIN: TStringField;
    cdsGenerateRDNReportPROVNAME: TStringField;
    cdsGenerateRDNReportCOUNTNAME: TStringField;
    cdsGenerateRDNReportNATIONS: TStringField;
    cdsGenerateRDNReportSEC_INCDESC: TStringField;
    cdsGenerateRDNReportBRANCHNAME: TStringField;
    cdsGenerateRDNReportCITY: TStringField;
    cdsGenerateRDNReportCITY2: TStringField;
    cdsGenerateRDNReportRELIGION: TStringField;
    cdsGenerateRDNReportRELIGION2: TStringField;
    cdsGenerateRDNReportSUBREK01: TStringField;
    cdsGenerateRDNReportSUBREK04: TStringField;
    cdsGenerateRDNReportSIDNO: TStringField;
    cdsGenerateRDNReportCITY1: TStringField;
    cdsGenerateRDNReportGUCITY: TStringField;
    cdsGenerateRDNReportCOUNTNAME2: TStringField;
    cdsGenerateRDNReportCITYX2: TStringField;
    cdsGenerateRDNReportISPACC: TStringField;
    cdsGenerateRDNReportPACCID: TLargeintField;
    cdsGenerateRDNReportAUTHORIZED_CAP: TFloatField;
    cdsGenerateRDNReportPAID_CAP: TFloatField;
    cdsGenerateRDNReportCOMPANY_COUNTRY: TStringField;
    cdsGenerateRDNReportSEC_SETTLEMENT: TIntegerField;
    cdsGenerateRDNReportSEC_SETTLEMENT_TO: TStringField;
    cdsGenerateRDNReportCASH_SETTLEMENT: TIntegerField;
    cdsGenerateRDNReportCASH_SETTLEMENT_TO: TStringField;
    cdsGenerateRDNReportINVEST_EXPERIENCE: TIntegerField;
    cdsGenerateRDNReportINVEST_EXPERIENCE_OTHER: TStringField;
    cdsGenerateRDNReportESTIMATE_DAILY_TRADE: TIntegerField;
    cdsGenerateRDNReportGU_LEGALRELATION: TStringField;
    cdsGenerateRDNReportRELIGION_CUST: TStringField;
    cdsGenerateRDNReportPROVNAME2: TStringField;
    cdsGenerateRDNReportREL_FAMILY1: TStringField;
    cdsGenerateRDNReportBENEFICIARY_RELATION1: TStringField;
    cdsCOBBankAccMODDA: TDateTimeField;
    cdsCOBBankAccMODUI: TStringField;
    cdsCOBBankAccAPPDA: TDateTimeField;
    cdsCOBBankAccAPPUI: TStringField;
    cdsCOBBankAccUNDER4Y: TIntegerField;
    cdsCOBBankAccUNDER4YDA: TDateTimeField;
    cdsCOBBankAccNOTES4Y: TStringField;
    cdsCOBBankAccISDEL: TIntegerField;
    cdsCOBBankAccID: TLargeintField;
    cdsCOBBankAccBANK_TYPE: TStringField;
    cdsCOBDetailsSALESID: TIntegerField;
    actViewAction: TNAction;
    View2: TMenuItem;
    cdsAccountRATIO_MRGCALL: TFloatField;
    cdsAccountRATIO_MRGWARING: TFloatField;
    cdsAccountRATIO_FORCESELL: TFloatField;
    cdsAccountFORCESELL_DAY: TIntegerField;
    cdsAccountTL_CASHVALUATE: TFloatField;
    cdsAccountTL_STOCKVALUATE: TFloatField;
    cdsCOBDetailsCHANNELCODE: TStringField;
    cdsAccCreditLimit: TNClientDataset;
    actBackToPreviousProcess: TNAction;
    BackToPreviousProcess1: TMenuItem;
    cdsCOBDetailsRDNBANKCODE: TStringField;
    OpeningAccountDocument1: TMenuItem;
    actPrintRDNBank: TNAction;
    RDNBankAccount1: TMenuItem;
    cdsGenerateRDN: TNClientDataset;
    rcRDN: TNReportContainer;
    dbRDNRequest: TfrxDBDataset;
    rptPDF: TfrxReport;
    cdsGenerateRDNCID: TIntegerField;
    cdsGenerateRDNCUST_REG_NO: TStringField;
    cdsGenerateRDNNAME: TStringField;
    cdsGenerateRDNPOB: TStringField;
    cdsGenerateRDNDOB: TDateField;
    cdsGenerateRDNID_TYPE: TIntegerField;
    cdsGenerateRDNID_NO: TStringField;
    cdsGenerateRDNID_VALID: TDateField;
    cdsGenerateRDNGENDER: TIntegerField;
    cdsGenerateRDNNATIONALITY: TStringField;
    cdsGenerateRDNTAXPAYER_REG: TStringField;
    cdsGenerateRDNTAXPAYER_STATUS: TIntegerField;
    cdsGenerateRDNMARITAL_STATUS: TIntegerField;
    cdsGenerateRDNMOTHER_NAME: TStringField;
    cdsGenerateRDNRESIDENT_TYPE: TStringField;
    cdsGenerateRDNOWNERSHIP_STATUS: TStringField;
    cdsGenerateRDNSTREET: TStringField;
    cdsGenerateRDNRT_RW: TStringField;
    cdsGenerateRDNKELURAHAN: TStringField;
    cdsGenerateRDNKECAMATAN: TStringField;
    cdsGenerateRDNPROVINCE: TStringField;
    cdsGenerateRDNCOUNTRY: TStringField;
    cdsGenerateRDNZIP_CODE: TStringField;
    cdsGenerateRDNRESIDENT_TYPE2: TIntegerField;
    cdsGenerateRDNRESIDENT_TYPE2_OTHERS: TStringField;
    cdsGenerateRDNOWNERSHIP_STATUS2: TIntegerField;
    cdsGenerateRDNOWNERSHIP_STATUS2_OTHERS: TStringField;
    cdsGenerateRDNSTREET2: TStringField;
    cdsGenerateRDNRT_RW2: TStringField;
    cdsGenerateRDNKELURAHAN2: TStringField;
    cdsGenerateRDNKECAMATAN2: TStringField;
    cdsGenerateRDNPROVINCE2: TStringField;
    cdsGenerateRDNCOUNTRY2: TStringField;
    cdsGenerateRDNZIP_CODE2: TStringField;
    cdsGenerateRDNEMAIL: TStringField;
    cdsGenerateRDNHOME_PHONE: TStringField;
    cdsGenerateRDNCELL_PHONE: TStringField;
    cdsGenerateRDNFAX_NO: TStringField;
    cdsGenerateRDNCORRESPONDENT_ADDRESS: TIntegerField;
    cdsGenerateRDNOCCUPATION: TIntegerField;
    cdsGenerateRDNFIELD_WORK: TStringField;
    cdsGenerateRDNCOMPANY: TStringField;
    cdsGenerateRDNPOSITION: TStringField;
    cdsGenerateRDNJOB_DIVISION: TStringField;
    cdsGenerateRDNYOS_MONTH: TStringField;
    cdsGenerateRDNYOS_YEAR: TStringField;
    cdsGenerateRDNCOMPANY_PHONE: TStringField;
    cdsGenerateRDNCOMPANY_PHONE_EXT: TStringField;
    cdsGenerateRDNCOMPANY_ADDRESS: TStringField;
    cdsGenerateRDNFUND_SOURCE: TIntegerField;
    cdsGenerateRDNANNUAL_INCOME: TIntegerField;
    cdsGenerateRDNREL_FAMILY_NAME: TStringField;
    cdsGenerateRDNREL_FAMILY_PHONE: TStringField;
    cdsGenerateRDNBENEFICIARY_NAME: TStringField;
    cdsGenerateRDNBENEFICIARY_PHONE: TStringField;
    cdsGenerateRDNBENEFICIARY_RELATION: TStringField;
    cdsGenerateRDNBENEFICIARY_ID_NO: TStringField;
    cdsGenerateRDNINV_BANK: TStringField;
    cdsGenerateRDNINV_BANK_NAME: TStringField;
    cdsGenerateRDNINV_BANK_ACC_NAME: TStringField;
    cdsGenerateRDNINV_BANK_ACC_NO: TStringField;
    cdsGenerateRDNINV_BANK_BRANCH: TStringField;
    cdsGenerateRDNFAM_WORK_AT_BHN: TIntegerField;
    cdsGenerateRDNFAM_WORK_AT_BHN_NAME: TStringField;
    cdsGenerateRDNFAM_WORK_AT_BHN_DEPT: TStringField;
    cdsGenerateRDNFAM_WORK_AT_FIN: TIntegerField;
    cdsGenerateRDNFAM_WORK_AT_FIN_NAME: TStringField;
    cdsGenerateRDNFAM_WORK_AT_FIN_INST_NAME: TStringField;
    cdsGenerateRDNFAM_WORK_AS_DIR: TIntegerField;
    cdsGenerateRDNFAM_WORK_AS_DIR_NAME: TStringField;
    cdsGenerateRDNFAM_WORK_AS_DIR_INST_NAME: TStringField;
    cdsGenerateRDNFAM_WORK_AT_GOV: TIntegerField;
    cdsGenerateRDNFAM_WORK_AT_GOV_NAME: TStringField;
    cdsGenerateRDNFAM_WORK_AT_GOV_INST_NAME: TStringField;
    cdsGenerateRDNHOBBIES: TStringField;
    cdsGenerateRDNDATA_STATUS: TIntegerField;
    cdsGenerateRDNCREATEDBY: TStringField;
    cdsGenerateRDNCREATEDON: TDateTimeField;
    cdsGenerateRDNUPDATEDBY: TStringField;
    cdsGenerateRDNUPDATEDON: TDateTimeField;
    cdsGenerateRDNLIFETIME_ID: TIntegerField;
    cdsGenerateRDNSALES: TStringField;
    cdsGenerateRDNACCOUNT_NUMBER: TStringField;
    cdsGenerateRDNALT_CODE: TStringField;
    cdsGenerateRDNSUBREK001: TStringField;
    cdsGenerateRDNSUBREK004: TStringField;
    cdsGenerateRDNSID: TStringField;
    cdsGenerateRDNRDN: TStringField;
    cdsGenerateRDNREF_BANK: TStringField;
    cdsGenerateRDNGU_NAME: TStringField;
    cdsGenerateRDNGU_HUB: TIntegerField;
    cdsGenerateRDNGU_ID_NO: TStringField;
    cdsGenerateRDNGU_ID_EXP: TDateTimeField;
    cdsGenerateRDNGU_TAXPAYER_NO: TStringField;
    cdsGenerateRDNGU_NATIONALITY: TStringField;
    cdsGenerateRDNGU_GENDER: TIntegerField;
    cdsGenerateRDNGU_POB: TStringField;
    cdsGenerateRDNGU_DOB: TDateTimeField;
    cdsGenerateRDNGU_MATIAL_STATUS: TIntegerField;
    cdsGenerateRDNGU_EMAIL: TStringField;
    cdsGenerateRDNGU_HANDPHONE: TStringField;
    cdsGenerateRDNGU_FAX: TStringField;
    cdsGenerateRDNGU_ADDRESS: TStringField;
    cdsGenerateRDNGU_CITY: TStringField;
    cdsGenerateRDNGU_POSTALCODE: TStringField;
    cdsGenerateRDNGU_PROVINCE: TStringField;
    cdsGenerateRDNGU_COUNTRY: TStringField;
    cdsGenerateRDNGU_PHONE: TStringField;
    cdsGenerateRDNGU_ADDRESS2: TStringField;
    cdsGenerateRDNGU_CITY2: TStringField;
    cdsGenerateRDNGU_POSTALCODE2: TStringField;
    cdsGenerateRDNGU_PROVICE2: TStringField;
    cdsGenerateRDNGU_COUNTRY2: TStringField;
    cdsGenerateRDNGU_PHONE2: TStringField;
    cdsGenerateRDNGU_JOBS: TStringField;
    cdsGenerateRDNGU_LAST_POSITION: TStringField;
    cdsGenerateRDNGU_JOBS_COMPANY: TStringField;
    cdsGenerateRDNGU_JOBS_COMPANY_TYPE: TStringField;
    cdsGenerateRDNGU_JOBS_ADDRESS: TStringField;
    cdsGenerateRDNGU_JOBS_CITY: TStringField;
    cdsGenerateRDNGU_JOBS_POSTALCODE: TStringField;
    cdsGenerateRDNGU_JOBS_PHONE: TStringField;
    cdsGenerateRDNGU_JOBS_FAX: TStringField;
    cdsGenerateRDNGU_JOBS_FUND_SOURCE: TStringField;
    cdsGenerateRDNGU_JOBS_FUND_SOURCE_OT: TStringField;
    cdsGenerateRDNGU_JOBS_ANNUAL_SALARY: TIntegerField;
    cdsGenerateRDNGU_JOBS_MARITAL_STATUS: TIntegerField;
    cdsGenerateRDNGU_CELLPHONE: TStringField;
    cdsGenerateRDNGU_MAIDEN_MOTHER: TStringField;
    cdsGenerateRDNREL_FAMILY: TIntegerField;
    cdsGenerateRDNHOBBY: TStringField;
    cdsGenerateRDNACC_TYPE_SEC: TIntegerField;
    cdsGenerateRDNCLIENT_STATUS: TIntegerField;
    cdsGenerateRDNSIUP_NO: TStringField;
    cdsGenerateRDNTDP_NO: TStringField;
    cdsGenerateRDNTDP_REG_DATE: TStringField;
    cdsGenerateRDNTDP_INVALID_DATE: TDateTimeField;
    cdsGenerateRDNAPPROVER_HAM_MINISTRI: TStringField;
    cdsGenerateRDNANNOUNC_STATE_GAZELLE: TStringField;
    cdsGenerateRDNTAX_REG_CHK: TIntegerField;
    cdsGenerateRDNTAS_REG_DATE: TDateTimeField;
    cdsGenerateRDNBUSINESS_ENTITY_CHK: TIntegerField;
    cdsGenerateRDNBUSINESS_ENTITY_OTHER: TStringField;
    cdsGenerateRDNBUSINESS_LINE_CHK: TIntegerField;
    cdsGenerateRDNBUSINESS_LINE_OTHER: TStringField;
    cdsGenerateRDNCOMPANY_CHARACTER_CHK: TIntegerField;
    cdsGenerateRDNCOMPANY_CHARACTER_OTHER: TStringField;
    cdsGenerateRDNOFFC_ADDR_ASSKDP: TStringField;
    cdsGenerateRDNOFFC_CITY: TStringField;
    cdsGenerateRDNOFFC_ZIPCODE: TStringField;
    cdsGenerateRDNOFFC_COUNTRY: TStringField;
    cdsGenerateRDNCORESP_ADDR: TStringField;
    cdsGenerateRDNCORESP_CITY: TStringField;
    cdsGenerateRDNCORESP_ZIPCODE: TStringField;
    cdsGenerateRDNCORESP_COUNTRY: TStringField;
    cdsGenerateRDNOFFC_BUILD_STATUS: TIntegerField;
    cdsGenerateRDNOFFC_LENGTH_COREPON: TIntegerField;
    cdsGenerateRDNOFFC_PHONE_NO: TStringField;
    cdsGenerateRDNOFFC_FAX_NO: TStringField;
    cdsGenerateRDNEMAIL_CHK: TIntegerField;
    cdsGenerateRDNEMAIL_ADDR: TStringField;
    cdsGenerateRDNOFCC_FAX_CHK: TIntegerField;
    cdsGenerateRDNOFFC_FAX_NO_OTHER: TStringField;
    cdsGenerateRDNANNUAL_NET_PROFIT: TIntegerField;
    cdsGenerateRDNTOTAL_ASSET: TIntegerField;
    cdsGenerateRDNFUND_SEP_BANK_ACC_NO: TStringField;
    cdsGenerateRDNFUND_SEP_BANK_NAME: TStringField;
    cdsGenerateRDNFUND_SEP_BANK_BRANCH: TStringField;
    cdsGenerateRDNFUND_SEP_BANK_BENEFICIARY: TStringField;
    cdsGenerateRDNINIT_DEPOSIT_FUND: TFloatField;
    cdsGenerateRDNINIT_DEPOSIT_SHARES: TFloatField;
    cdsGenerateRDNRETAINED_EARNING_CHK: TIntegerField;
    cdsGenerateRDNRETAINED_EARNING_OTHER: TStringField;
    cdsGenerateRDNINFO_EXISTING_SEC_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_SEC_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_SEC_ACC_NO: TStringField;
    cdsGenerateRDNINFO_EXISTING_REL_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_AFF_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_AFF_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_AFF_RELATION: TStringField;
    cdsGenerateRDNINFO_EXISTING_AF_ACCNO: TStringField;
    cdsGenerateRDNINFO_EXISTING_CNTRL_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_CNTRL_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_CNTRL_ACCNO: TStringField;
    cdsGenerateRDNINFO_EXISTING_SHR_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_SHR_COMP_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_SHR_POSITION: TStringField;
    cdsGenerateRDNINFO_EXISTING_SHR_RELATION: TStringField;
    cdsGenerateRDNINFO_EXISTING_EMT_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_EMT_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_EMN_STOCK: TFloatField;
    cdsGenerateRDNINFO_EXISTING_EMN_TITLE: TStringField;
    cdsGenerateRDNINFO_EXISTING_PE_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_PE_COM_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_PE_TITLE: TStringField;
    cdsGenerateRDNINFO_EXISTING_PE_STOCK: TFloatField;
    cdsGenerateRDNINFO_EXISTING_DWN_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_DWN_COM_NAME: TStringField;
    cdsGenerateRDNINFO_EXISTING_PUB_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_PEP_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_MARKET_CHK: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_MARKET_NAME: TStringField;
    cdsGenerateRDNSWIFTCODE: TStringField;
    cdsGenerateRDNCOMP_ESTABLISH_DATE: TDateTimeField;
    cdsGenerateRDNCOMP_ESTABLISH_PLACE: TStringField;
    cdsGenerateRDNDEED_ESTABLISH_DATE: TDateTimeField;
    cdsGenerateRDNDEED_ESTABLISH_PLACE: TStringField;
    cdsGenerateRDNNOTARY: TStringField;
    cdsGenerateRDNINVS_EXPERIENCE: TIntegerField;
    cdsGenerateRDNINVS_OBJ: TIntegerField;
    cdsGenerateRDNINVS_OBJ_OTHER: TStringField;
    cdsGenerateRDNCUST_TYPE: TIntegerField;
    cdsGenerateRDNPRD_CODE: TStringField;
    cdsGenerateRDNCLIENT_EXT: TIntegerField;
    cdsGenerateRDNACCID: TIntegerField;
    cdsGenerateRDNENTTID: TIntegerField;
    cdsGenerateRDNSPOUSE_NAME: TStringField;
    cdsGenerateRDNEDU_BACKGROUND: TIntegerField;
    cdsGenerateRDNEDU_BACKGOUND_OTHER: TStringField;
    cdsGenerateRDNSOURCE_FUND_OTHER: TStringField;
    cdsGenerateRDNOCCUPATION_OTHER: TStringField;
    cdsGenerateRDNNAT_BUSINESS_ENTREPRENEUR: TStringField;
    cdsGenerateRDNINVEST_OBJECTIVE: TIntegerField;
    cdsGenerateRDNINVEST_OBJECTIVE_OTHER: TStringField;
    cdsGenerateRDNINV_BANK_ACC_CCY: TStringField;
    cdsGenerateRDNTAX_REG_DATE: TDateField;
    cdsGenerateRDNEVENT_NAME: TStringField;
    cdsGenerateRDNLAST_STATUS: TStringField;
    cdsGenerateRDNBRCODE: TStringField;
    cdsGenerateRDNBNINVCODE: TStringField;
    cdsGenerateRDNBNINVACCNO: TStringField;
    cdsGenerateRDNBNINACCNAME: TStringField;
    cdsGenerateRDNCHKCURRADR: TStringField;
    cdsGenerateRDNCHKGUCURRADR: TStringField;
    cdsGenerateRDNONEVENT: TStringField;
    cdsGenerateRDNEVCODE: TStringField;
    cdsGenerateRDNOATYPE: TStringField;
    cdsGenerateRDNBRANCHID: TLargeintField;
    cdsGenerateRDNEVID: TLargeintField;
    cdsGenerateRDNMODDA: TDateTimeField;
    cdsGenerateRDNMODUI: TStringField;
    cdsGenerateRDNAPPDA: TDateTimeField;
    cdsGenerateRDNAPPUI: TStringField;
    cdsGenerateRDNUNDER4Y: TIntegerField;
    cdsGenerateRDNUNDER4YDA: TDateTimeField;
    cdsGenerateRDNNOTES4Y: TStringField;
    cdsGenerateRDNISDEL: TIntegerField;
    cdsGenerateRDNID: TLargeintField;
    cdsGenerateRDNPIN: TStringField;
    cdsGenerateRDNCITY: TStringField;
    cdsGenerateRDNCITY2: TStringField;
    cdsGenerateRDNRELIGION: TStringField;
    cdsGenerateRDNRELIGION2: TStringField;
    cdsGenerateRDNISPACC: TStringField;
    cdsGenerateRDNPACCID: TLargeintField;
    cdsGenerateRDNAUTHORIZED_CAP: TFloatField;
    cdsGenerateRDNPAID_CAP: TFloatField;
    cdsGenerateRDNCOMPANY_COUNTRY: TStringField;
    cdsGenerateRDNSEC_SETTLEMENT: TIntegerField;
    cdsGenerateRDNSEC_SETTLEMENT_TO: TStringField;
    cdsGenerateRDNCASH_SETTLEMENT: TIntegerField;
    cdsGenerateRDNCASH_SETTLEMENT_TO: TStringField;
    cdsGenerateRDNINVEST_EXPERIENCE: TIntegerField;
    cdsGenerateRDNINVEST_EXPERIENCE_OTHER: TStringField;
    cdsGenerateRDNESTIMATE_DAILY_TRADE: TIntegerField;
    cdsGenerateRDNGU_LEGALRELATION: TStringField;
    cdsGenerateRDNACC_PHOTO: TBlobField;
    cdsGenerateRDNACC_SIGN: TBlobField;
    cdsGenerateRDNSALESID: TIntegerField;
    cdsGenerateRDNCHANNELCODE: TStringField;
    cdsGenerateRDNRDNBANKCODE: TStringField;
    cdsGenerateRDNPROVNAME: TStringField;
    cdsGenerateRDNCOUNTNAME: TStringField;
    cdsGenerateRDNNATIONS: TStringField;
    cdsGenerateRDNSEC_INCDESC: TStringField;
    cdsGenerateRDNBRANCHNAME: TStringField;
    cdsGenerateRDNSUBREK01: TStringField;
    cdsGenerateRDNSUBREK04: TStringField;
    cdsGenerateRDNSIDNO: TStringField;
    cdsGenerateRDNCITY1: TStringField;
    cdsGenerateRDNGUCITY: TStringField;
    cdsGenerateRDNCOUNTNAME2: TStringField;
    cdsGenerateRDNCITYX2: TStringField;
    cdsGenerateRDNRELIGION_CUST: TStringField;
    cdsGenerateRDNPROVNAME2: TStringField;
    cdsGenerateRDNREL_FAMILY1: TStringField;
    cdsGenerateRDNBENEFICIARY_RELATION1: TStringField;
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
    cdsAccountTRF_PRVT_BANK_SOURCE: TIntegerField;
    cdsAccountTRF_PRVT_BANK_TARGET: TIntegerField;
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
    cdsAccountIS_IDX_TRX: TStringField;
    cdsAccountTLCLASSID: TIntegerField;
    cdsAccountKSEI_SID: TStringField;
    cdsAccountqryAccountCustody: TDataSetField;
    cdsAccountqryAccountContact: TDataSetField;
    cdsAccountqryAccountExtRef: TDataSetField;
    cdsAccCustody: TNClientDataset;
    cdsAccCustodyACCCUSTODYID: TIntegerField;
    cdsAccCustodyACCID: TIntegerField;
    cdsAccCustodyCUSTODYCODE: TStringField;
    cdsAccCustodyCUSTODYACCNO: TStringField;
    cdsAccCustodyCUSTODYACCNAME: TStringField;
    cdsAccCustodyCUSTODYBRANCH: TStringField;
    cdsAccCustodyCUSTODYTYPE: TStringField;
    cdsAccCustodyACTLED_SEQID: TIntegerField;
    cdsAccCustodyMODDA: TDateTimeField;
    cdsAccCustodyMODUI: TStringField;
    cdsAccCustodyAPPDA: TDateTimeField;
    cdsAccCustodyAPPUI: TStringField;
    cdsAccCustodyUNDER4Y: TIntegerField;
    cdsAccCustodyUNDER4YDA: TDateTimeField;
    cdsAccCustodyNOTES4Y: TStringField;
    cdsAccCustodyISDEL: TIntegerField;
    cdsAccCustodyID: TLargeintField;
    cdsKSEIRDNCompare: TNClientDataset;
    cdsKSEIRDNCompareSID: TStringField;
    cdsKSEIRDNCompareNAME: TStringField;
    cdsKSEIRDNCompareSUBREK01: TStringField;
    cdsKSEIRDNCompareSUBREK04: TStringField;
    cdsKSEIRDNCompareRDN: TStringField;
    cdsKSEIRDNCompareBANK: TStringField;
    cdsKSEIRDNCompareMODDA: TDateTimeField;
    cdsKSEIRDNCompareMODUI: TStringField;
    cdsKSEIRDNCompareAPPDA: TDateTimeField;
    cdsKSEIRDNCompareAPPUI: TStringField;
    cdsKSEIRDNCompareUNDER4Y: TIntegerField;
    cdsKSEIRDNCompareUNDER4YDA: TDateTimeField;
    cdsKSEIRDNCompareNOTES4Y: TStringField;
    cdsKSEIRDNCompareISDEL: TIntegerField;
    cdsKSEIRDNCompareID: TLargeintField;
    cdsCOBDetailListID: TLargeintField;
    cdsCOBDetailListACC_ACTIVATED: TIntegerField;
    cdsCOBDetailsACC_ACTIVATED: TIntegerField;
    cdsViewKSEISubrekIDREFF: TStringField;
    cdsCOBFlowUPDATABLE: TStringField;
    cdsCOBNotesCID: TIntegerField;
    cdsCOBNotesNOTEDATE: TDateTimeField;
    cdsCOBNotesNOTEBY: TStringField;
    cdsCOBNotesNOTES: TMemoField;
    cdsCOBNotesNOTESTATUS: TStringField;
    cdsCOBNotesCLOSEDATE: TDateTimeField;
    cdsCOBNotesCLOSEBY: TStringField;
    gvwCOBListBRANCHID: TcxGridDBBandedColumn;
    actCloseNotes: TNAction;
    popNotes: TPopupMenu;
    CloseNotes1: TMenuItem;
    cdsCOBAccLedgerClass: TNClientDataset;
    cdsCOBAccLedgerClassALCID: TIntegerField;
    cdsCOBAccLedgerClassALTYPE: TStringField;
    cdsCOBAccLedgerClassMODDA: TDateTimeField;
    cdsCOBAccLedgerClassMODUI: TStringField;
    cdsCOBAccLedgerClassAPPDA: TDateTimeField;
    cdsCOBAccLedgerClassAPPUI: TStringField;
    cdsCOBAccLedgerClassUNDER4Y: TIntegerField;
    cdsCOBAccLedgerClassUNDER4YDA: TDateTimeField;
    cdsCOBAccLedgerClassNOTES4Y: TStringField;
    cdsCOBAccLedgerClassISDEL: TIntegerField;
    cdsCOBAccLedgerClassID: TLargeintField;
    cdsAccountLedger: TNClientDataset;
    cdsAccountLedgerACCID: TIntegerField;
    cdsAccountLedgerSEQID: TIntegerField;
    cdsAccountLedgerALTYPE: TStringField;
    cdsAccountLedgerALCODE: TStringField;
    cdsAccountLedgerALDESC: TStringField;
    cdsAccountLedgerUSE_CLIENTACC: TStringField;
    cdsAccountLedgerBANKCODE: TStringField;
    cdsAccountLedgerBANKACCNO: TStringField;
    cdsAccountLedgerBANKACCNAME: TStringField;
    cdsAccountLedgerBANKBRANCH: TStringField;
    cdsAccountLedgerCALCINTEREST: TStringField;
    cdsAccountLedgerINTERESTCODE: TStringField;
    cdsAccountLedgerGLACCOUNTID: TLargeintField;
    cdsAccountLedgerCCY: TStringField;
    cdsAccountLedgerMODDA: TDateTimeField;
    cdsAccountLedgerMODUI: TStringField;
    cdsAccountLedgerAPPDA: TDateTimeField;
    cdsAccountLedgerAPPUI: TStringField;
    cdsAccountLedgerUNDER4Y: TIntegerField;
    cdsAccountLedgerUNDER4YDA: TDateTimeField;
    cdsAccountLedgerNOTES4Y: TStringField;
    cdsAccountLedgerISDEL: TIntegerField;
    cdsAccountLedgerID: TLargeintField;
    cdsAccBankALTYPE: TStringField;
    cdsAccCustodyALTYPE: TStringField;
    cdsAccCreditLimitACCID: TLargeintField;
    cdsAccCreditLimitCCCLS_ID: TLargeintField;
    cdsAccCreditLimitCCLSSNAME: TStringField;
    cdsAccCreditLimitCC_TYPE: TStringField;
    cdsAccCreditLimitTL_CASHVALUATE: TFloatField;
    cdsAccCreditLimitTL_STOCKVALUATE: TFloatField;
    cdsAccCreditLimitTLB_OVERLIMIT: TStringField;
    cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField;
    cdsAccCreditLimitTLB_OVERDUE: TStringField;
    cdsAccCreditLimitTLS_SHORTSELL: TStringField;
    cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLS_OVERDUE: TStringField;
    cdsAccCreditLimitRATIO_MRGCALL: TFloatField;
    cdsAccCreditLimitRATIO_MRGWARING: TFloatField;
    cdsAccCreditLimitRATIO_FORCESELL: TFloatField;
    cdsAccCreditLimitFORCESELL_DAY: TIntegerField;
    cdsAccCreditLimitCR_VAL: TFloatField;
    cdsAccCreditLimitBUY_LIMIT: TFloatField;
    cdsAccCreditLimitSELL_LIMIT: TFloatField;
    cdsAccCreditLimitMODDA: TDateTimeField;
    cdsAccCreditLimitMODUI: TStringField;
    cdsAccCreditLimitAPPDA: TDateTimeField;
    cdsAccCreditLimitAPPUI: TStringField;
    cdsAccCreditLimitUNDER4Y: TIntegerField;
    cdsAccCreditLimitUNDER4YDA: TDateTimeField;
    cdsAccCreditLimitNOTES4Y: TStringField;
    cdsAccCreditLimitISDEL: TIntegerField;
    cdsAccCreditLimitID: TLargeintField;
    cdsCommissionDESCRIPTION: TStringField;
    cdsCOBDetailsIS_SYNC: TSmallintField;
    cdsCOBDetailsLAST_SYNC: TDateTimeField;
    cdsCOBDetailsLAST_ACTIVITY: TIntegerField;
    cdsCOBDetailListLAST_ACTIVITY: TIntegerField;
    cdsCOBDetailListACTTYPE: TStringField;
    cdsCOBDetailListACTIVITY_DESC: TStringField;
    cdsCOBDetailListACTIVITY_NAME: TStringField;
    gvwCOBListGENDER: TcxGridDBBandedColumn;
    gvwCOBListID_TYPE: TcxGridDBBandedColumn;
    gvwCOBListID_NO: TcxGridDBBandedColumn;
    gvwCOBListID_VALID: TcxGridDBBandedColumn;
    gvwCOBListID: TcxGridDBBandedColumn;
    gvwCOBListACC_ACTIVATED: TcxGridDBBandedColumn;
    gvwCOBListLAST_ACTIVITY: TcxGridDBBandedColumn;
    gvwCOBListACTTYPE: TcxGridDBBandedColumn;
    gvwCOBListACTIVITY_DESC: TcxGridDBBandedColumn;
    gvwCOBListACTIVITY_NAME: TcxGridDBBandedColumn;
    cdsCOBDetailsINFO_EXISTING_FAMILY_PUB_CHK: TIntegerField;
    cdsCOBDetailsINFO_ONLINE_TRADING: TIntegerField;
    cdsGenerateRDNReportINFO_EXISTING_FAMILY_PUB_CHK: TIntegerField;
    cdsGenerateRDNReportINFO_ONLINE_TRADING: TIntegerField;
    cdsGenerateRDNReportACC_PHOTO: TBlobField;
    cdsGenerateRDNReportACC_SIGN: TBlobField;
    cdsGenerateRDNReportSALESID: TIntegerField;
    cdsGenerateRDNReportCHANNELCODE: TStringField;
    cdsGenerateRDNReportRDNBANKCODE: TStringField;
    cdsGenerateRDNReportACC_ACTIVATED: TIntegerField;
    cdsGenerateRDNReportIS_SYNC: TSmallintField;
    cdsGenerateRDNReportLAST_SYNC: TDateTimeField;
    cdsGenerateRDNReportLAST_ACTIVITY: TIntegerField;
    cdsCOBDetailsqryCOBDoc: TDataSetField;
    cdsCOBDoc: TNClientDataset;
    cdsCOBDocDOC_TYPE: TStringField;
    cdsCOBDocNOTES: TStringField;
    cdsCOBDocTOKEN: TStringField;
    cdsCOBDocIMAGE_NAME: TStringField;
    cdsCOBDocUPLOADEDON: TDateTimeField;
    cdsCOBDocUPLOADEDBY: TStringField;
    cdsCOBDocCID: TIntegerField;
    cdsCOBDocDOC_ATTACH: TBlobField;
    cdsCOBDocCUST_REG_NO: TStringField;
    cdsCOBDocDOCEXPIRE: TStringField;
    cdsCOBDocDOCEXPIREDATE: TDateTimeField;
    cdsCOBDocDID: TLargeintField;
    cdsCOBDocMODDA: TDateTimeField;
    cdsCOBDocMODUI: TStringField;
    cdsCOBDocAPPDA: TDateTimeField;
    cdsCOBDocAPPUI: TStringField;
    cdsCOBDocUNDER4Y: TIntegerField;
    cdsCOBDocUNDER4YDA: TDateTimeField;
    cdsCOBDocNOTES4Y: TStringField;
    cdsCOBDocISDEL: TIntegerField;
    cdsCOBDocID: TLargeintField;
    cdsCOBDetailsFIELD_WORK_DESC: TStringField;
    cdsCOBDetailsCOMPANY_FAX: TStringField;
    cdsCOBDetailsANNUAL_INCOME_SOURCE: TIntegerField;
    cdsCOBDetailsANNUAL_INCOME_SOURCE_OTHER: TStringField;
    cdsCOBDetailsADD_INCOME: TIntegerField;
    cdsCOBDetailsADD_INCOME_SOURCE: TIntegerField;
    cdsCOBDetailsADD_INCOME_SOURCE_OTHER: TStringField;
    cdsGenerateRDNReportFIELD_WORK_DESC: TStringField;
    cdsGenerateRDNReportCOMPANY_FAX: TStringField;
    cdsGenerateRDNReportANNUAL_INCOME_SOURCE: TIntegerField;
    cdsGenerateRDNReportANNUAL_INCOME_SOURCE_OTHER: TStringField;
    cdsGenerateRDNReportADD_INCOME: TIntegerField;
    cdsGenerateRDNReportADD_INCOME_SOURCE: TIntegerField;
    cdsGenerateRDNReportADD_INCOME_SOURCE_OTHER: TStringField;
    cdsGenerateRDNFIELD_WORK_DESC: TStringField;
    cdsGenerateRDNCOMPANY_FAX: TStringField;
    cdsGenerateRDNANNUAL_INCOME_SOURCE: TIntegerField;
    cdsGenerateRDNANNUAL_INCOME_SOURCE_OTHER: TStringField;
    cdsGenerateRDNADD_INCOME: TIntegerField;
    cdsGenerateRDNADD_INCOME_SOURCE: TIntegerField;
    cdsGenerateRDNADD_INCOME_SOURCE_OTHER: TStringField;
    cdsGenerateRDNACC_ACTIVATED: TIntegerField;
    cdsGenerateRDNIS_SYNC: TSmallintField;
    cdsGenerateRDNLAST_SYNC: TDateTimeField;
    cdsGenerateRDNLAST_ACTIVITY: TIntegerField;
    cdsGenerateRDNINFO_EXISTING_FAMILY_PUB_CHK: TIntegerField;
    cdsGenerateRDNINFO_ONLINE_TRADING: TIntegerField;
    cdsCOBDetailsCPID: TLargeintField;
    cdsCOBDetailsRISK: TStringField;
    cdsCOBDetailsDOB: TDateField;
    cdsCOBDetailsBUS_CAT_ID: TLargeintField;
    cdsCOBDetailListRDNBANKCODE: TStringField;
    gvwCOBListRDNBANKCODE: TcxGridDBBandedColumn;
    cdsAccInternetBankInfo: TNClientDataset;
    cdsAccInternetBankInfoACCID: TIntegerField;
    cdsAccInternetBankInfoENTTID: TIntegerField;
    cdsAccInternetBankInfoACCCODE: TStringField;
    cdsAccInternetBankInfoACCNAME: TStringField;
    cdsAccInternetBankInfoACCINIT: TStringField;
    cdsAccInternetBankInfoSIDNO: TStringField;
    cdsAccInternetBankInfoBUS_CAT: TLargeintField;
    cdsAccInternetBankInfoBUS_CAT_CODE: TStringField;
    cdsAccInternetBankInfoBUS_CAT_DESC: TStringField;
    cdsAccInternetBankInfoSUBREK01: TStringField;
    cdsAccInternetBankInfoRDNBANKID: TIntegerField;
    cdsAccInternetBankInfoRDNBANKCODE: TStringField;
    cdsAccInternetBankInfoRDNBANKACCNO: TStringField;
    cdsAccInternetBankInfoRDNBANKACCNAME: TStringField;
    cdsCOBBankAccCCY: TStringField;
    cdsCOBFlowISNEW: TIntegerField;
    cdsCOBFlowISUPDATE: TIntegerField;
    cdsCOBFlowLAST_SYNC: TDateTimeField;
    cdsCommissionNET_COMMID: TLargeintField;
    cdsCommissionCCYCODE: TStringField;
    cdsCOBDetailsINV_TYPE: TStringField;
    cdsCOBRetailEntityCheck: TNClientDataset;
    cdsCOBRetailEntityCheckENTTID: TIntegerField;
    cdsCOBRetailEntityCheckENTTCODE: TStringField;
    cdsCOBRetailEntityCheckCUST_TYPE: TIntegerField;
    cdsCOBRetailEntityCheckSIDNO: TStringField;
    cdsCOBRetailEntityCheckENTNAME: TStringField;
    cdsCOBRetailEntityCheckBRANCHID: TLargeintField;
    cdsCOBRetailEntityCheckSALESID: TLargeintField;
    cdsCOBRetailEntityCheckRET_BIRTHPLACE: TStringField;
    cdsCOBRetailEntityCheckRET_BIRTDATE: TDateField;
    cdsCOBRetailEntityCheckRET_GENDER: TStringField;
    cdsCOBRetailEntityCheckRET_MARITALSTATUS: TStringField;
    cdsCOBRetailEntityCheckRET_IDCARDNO: TStringField;
    cdsCOBRetailEntityCheckRET_IDCARDEXPIRE: TDateField;
    cdsCOBRetailEntityCheckCNTREST: TStringField;
    cdsCOBRetailEntityCheckRET_HOMEPHONE: TStringField;
    cdsCOBRetailEntityCheckRET_HOMEFAX: TStringField;
    cdsCOBRetailEntityCheckRET_MOBILE: TStringField;
    cdsCOBRetailEntityCheckRET_EMAIL: TStringField;
    cdsCOBRetailEntityCheckTAXPAYER_STATUS: TIntegerField;
    cdsCOBRetailEntityCheckNPWP: TStringField;
    cdsCOBRetailEntityCheckNPWP_REGDATE: TDateField;
    cdsCOBRetailEntityCheckACCID: TIntegerField;
    cdsCOBRetailEntityCheckACCCODE: TStringField;
    cdsCOBRetailEntityCheckACCNAME: TStringField;
    cdsCOBRetailEntityCheckACCINIT: TStringField;
    cdsCOBRetailEntityCheckACC_STS: TStringField;
    cdsCOBRetailEntityCheckBUS_CAT: TLargeintField;
    cdsCOBRetailEntityCheckPRDCODE: TStringField;
    cdsCOBNotesISUPDATE: TIntegerField;
    cdsCOBNotesIS_SYNC: TIntegerField;
    cdsCOBNotesLAST_SYNC: TDateTimeField;
    OpenDialog: TOpenDialog;
    actUploadNewCOB: TNAction;
    UploadNewCOB1: TMenuItem;
    procedure cdsCOBDetailsNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actNewRetailExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure gvwCOBListFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure DataContainerAfterInsert(Sender: TNMasterDetailData);
    procedure actStartAckExecute(Sender: TObject);
    procedure actDoneExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DataContainerAfterEdit(Sender: TNMasterDetailData);
    procedure actAddEditExecute(Sender: TObject);
    procedure actAddEditUpdate(Sender: TObject);
    procedure cdsCOBNotesBeforePost(DataSet: TDataSet);
    procedure popFlowActPopup(Sender: TObject);
    procedure cdsAccLimitNewRecord(DataSet: TDataSet);
    procedure actNewInstitutionExecute(Sender: TObject);
    procedure cdsAccBankBeforePost(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsCOBShareHolderBeforePost(DataSet: TDataSet);
    procedure cdsCOBAuthPersonBeforePost(DataSet: TDataSet);
    procedure cdsCOBBODBeforePost(DataSet: TDataSet);
    procedure gvwCOBActivityCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actStartAckUpdate(Sender: TObject);
    procedure actDoneUpdate(Sender: TObject);
    procedure gvwCOBListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsAccountBeforeEdit(DataSet: TDataSet);
    procedure DataContainerAfterOpen(Sender: TNMasterDetailData);
    procedure actViewActionExecute(Sender: TObject);
    procedure actBackToPreviousProcessExecute(Sender: TObject);
    procedure actBackToPreviousProcessUpdate(Sender: TObject);
    procedure rcRDNPrepareData(AFormParam: TForm);
    procedure actPrintRDNBankExecute(Sender: TObject);
    procedure cdsCOBFlowAfterOpen(DataSet: TDataSet);
    procedure actCloseNotesExecute(Sender: TObject);
    procedure actCloseNotesUpdate(Sender: TObject);
    procedure cdsCOBDetailsBeforePost(DataSet: TDataSet);
    procedure cdsCOBDocNewRecord(DataSet: TDataSet);
    procedure actDeleteUpdate(Sender: TObject);
    procedure cdsCOBDetailsCOUNTRYChange(Sender: TField);
    procedure cdsCOBDetailsNAMEChange(Sender: TField);
    procedure cdsCOBBankAccNewRecord(DataSet: TDataSet);
    procedure cdsCOBClientCustodyNewRecord(DataSet: TDataSet);
    procedure actUploadNewCOBExecute(Sender: TObject);
  private
    { Private declarations }
    FCOBShowType: TCOBShowType;
    FUserAction: Integer;
    FMinBackProcess: Integer;

    FResultDone: Boolean;
    FInProcess: Boolean;
    FIsBahanaForm: Boolean;
    FCanBackProcess: Boolean;
    FCanCancelData: Boolean;

    FDefParam: string;

    function CustDataCheck: Boolean;
    procedure CustDataView;
    function DocsCheck: Boolean;
    procedure DocsView;
    function SIDCheck: Boolean;
    function SubRekCheck: Boolean;
    procedure SubRekView;
    function RDNCheck: Boolean;
    function SalesCheck: Boolean;
    procedure SalesView;
    function ApproveByManager: Boolean;
    function SettingParameter(ASubID: Integer): Boolean;
    procedure ParameterView(ASubID: Integer);
    function InsertRequest(ASubID: Integer): Boolean;
    function AccountActivation: Boolean;

    function GenerateEntityCode(ACustType: Integer): string;
    function GenerateEntityID: Integer;

    function GenerateAccountCode: string;
    function GenerateAccountID: Integer;

    procedure ActivateCOBDetails(ACID: Integer);

    procedure UploadDocuments;
    procedure AssignSales;
    procedure BusinessType;
    procedure ParameterSetting(AUpdate: Boolean);
    procedure DataOwnerSetting(AUpdate: Boolean);
    procedure COBLedgerClass(AUpdate: Boolean);
    procedure COBBankLink;
    procedure COBGeneral;
    procedure COBComissionCharges;
    procedure COBSettingDefaultParam;
    procedure COBSettlementConfig;

    procedure GetParameters;
  public
    { Public declarations }
    property UserAction: Integer read FUserAction;
    procedure AddNotes(ANotes: String);
  end;

var
  frmCOBList: TfrmCOBList;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal, DataReport, FormCOBRetail, ClassClientConst,
  FormCOBUploadDocuments, FormViewKSEISubRek, FormViewRDN, FormAssignSales,
  FormCOBBusType, FormCOBOrderValidation, FormCOBInstitution,
  FormCOBAccountLedger, FormCOBCreditLimit, FormBank, FormBankLink,
  FormCOBGeneral, FormCOBCommCharges, FormCOBInstitutionBahana,
  FormCOBBankLinkLedger, FormCOBDataOwner, FormCOBSettlementConfig,
  FormCompareRDNKSEI, FormCOBRetailDBS, FormInternetBankChecking,
  FormEntityCheck;

function TfrmCOBList.AccountActivation: Boolean;
begin
  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
  cdsAccount.Open;

  cdsAccount.Edit;
  cdsAccountACC_STS.AsString := 'A';
  cdsAccount.Post;

  cdsAccount.ApplyUpdates(0);

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsCOBDetails.Open;

  cdsCOBDetails.Edit;
  cdsCOBDetailsACC_ACTIVATED.AsInteger := 1;//This Client On Boarding Account was activated
  cdsCOBDetails.Post;

  cdsCOBDetails.ApplyUpdates(0);

  dmGlobal.RemoteServer.UpdateCompleteActivity(cdsCOBFlowACTIVITY_SUBID.AsInteger, cdsCOBDetailListCID.AsInteger);
  DataContainer.Refresh;

  if not cdsCOBDetailList.IsEmpty then
  begin
    cdsCOBFlow.Close;
    cdsCOBFlow.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsCOBFlow.Open;

    cdsCOBNotes.Close;
    cdsCOBNotes.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsCOBNotes.Open;

//    cdsAccount.Close;
//    cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
//    cdsAccount.Open;

    if not cdsPermission.Active then
    begin
      cdsPermission.Close;
      cdsPermission.Params[0].AsString := dmGlobal.UserID;
      cdsPermission.Open;
    end;

    GetParameters;
  end
  else
  begin
    cdsCOBFlow.Close;
    cdsCOBNotes.Close;
  end;

end;

procedure TfrmCOBList.actAddEditExecute(Sender: TObject);
var
  sAccType: string;
begin
  inherited;
  FUserAction := COB_FACT_NONE;
  sAccType    := cdsCOBFlowACTTYPE.AsString;

  if sAccType = COB_ACTTYPE_INPUT then
  begin
    if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 1 then
      FCOBShowType := cobsRetail
    else if (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 2) or (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 3) then
      FCOBShowType := cobsInsti;

    DataContainer.Edit;
  end
  else if sAccType = COB_ACTTYPE_UPLOAD then
    UploadDocuments
  else if sAccType = COB_ACTTYPE_ASSIGNSALES then
    AssignSales
  else if sAccType = COB_ACCTYPE_BUSSTYPE then
    BusinessType
  else if sAccType = COB_ACCTYPE_ORDVALIDATION then
    ParameterSetting(True)
  else if sAccType = COB_ACCTYPE_ACCLEDGER then
    COBLedgerClass(True)
  else if sAccType = COB_ACCTYPE_BANKLINK then
    COBBankLink
  else if sAccType = COB_ACCTYPE_GENERAL then
    COBGeneral
  else if sAccType = COB_ACCTYPE_COMISSION_CHARGE then
    COBComissionCharges
  else if sAccType = COB_ACCTYPE_DATA_OWNER then
    DataOwnerSetting(True)
  else if sAccType = COB_ACCTYPE_SETTLEMENT then
    COBSettlementConfig;


end;

procedure TfrmCOBList.actAddEditUpdate(Sender: TObject);
begin
  inherited;
  if cdsCOBFlow.IsEmpty then
    TAction(Sender).Enabled := False
  else
  begin
    TAction(Sender).Enabled := (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = COB_FSTS_INPROGRESS)
      AND (cdsCOBFlowUPDATABLE.AsString = '1')
      AND (UpperCase(cdsCOBFlowHANDLE_BY.AsString) = UpperCase(dmGlobal.UserID));
  end;
end;

procedure TfrmCOBList.actBackToPreviousProcessExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  sMsg := 'Are you sure to back process to ' + QuotedStr(cdsCOBFlowACTIVITY_DESC.AsString) + '?';
  if MessageDlg(sMsg, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.BackToPrevProcessCOB(cdsCOBFlowCID.AsInteger, cdsCOBFlowACTIVITY_ID.AsInteger, cdsCOBFlowACTIVITY_SUBID.AsInteger);
    cdsCOBFlow.Close;
    cdsCOBFlow.Open;
  end;
end;

procedure TfrmCOBList.actBackToPreviousProcessUpdate(Sender: TObject);
begin
  inherited;
  if FCanBackProcess then
    actBackToPreviousProcess.Enabled := (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = COB_FSTS_DONE)
  else
    actBackToPreviousProcess.Enabled := (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = COB_FSTS_DONE) and (cdsCOBFlowACTIVITY_SUBID.AsInteger > FMinBackProcess);
end;

procedure TfrmCOBList.actCloseNotesExecute(Sender: TObject);
begin
  inherited;
  cdsCOBNotes.Edit;
  cdsCOBNotesNOTESTATUS.AsString := 'C';
  cdsCOBNotesCLOSEDATE.AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
  cdsCOBNotesCLOSEBY.AsString := dmGlobal.UserID;
  cdsCOBNotesISUPDATE.AsInteger := 1;
  cdsCOBNotes.Post;
end;

procedure TfrmCOBList.actCloseNotesUpdate(Sender: TObject);
begin
  inherited;
  actCloseNotes.Enabled := (not cdsCOBNotes.IsEmpty) and (cdsCOBNotesNOTESTATUS.AsString = 'O');
end;

procedure TfrmCOBList.actDeleteUpdate(Sender: TObject);
begin
  inherited;
  actDelete.Enabled := FCanCancelData;
end;

procedure TfrmCOBList.actDoneExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  iID, iSubID, i, j: Integer;
  oNextIDList: TStringList;
  bContinue, bNext: Boolean;
  iIDNext, iSubIDNext: Integer;
  bSub: Boolean;
  bPos: TBookmark;
begin
  inherited;
  FInProcess  := True;
  oNextIDList := TStringList.Create;
  oDataSet    := dsCOBFlow.DataSet;

  iID     := oDataSet.FieldByname('ACTIVITY_ID').AsInteger;
  iSubID  := oDataSet.FieldByname('ACTIVITY_SUBID').AsInteger;

  bContinue := False;

  cdsActivity.Close;
  if dmGlobal.RemoteServer.GetBrokerCode = 'DX' then
    cdsActivity.Params[0].AsInteger := cdsCOBDetailListCUST_TYPE.AsInteger
  else
    cdsActivity.Params[0].AsInteger := cdsCOBDetailListCUST_TYPE.AsInteger *
       100;
  cdsActivity.Open;

  if cdsActivity.Locate('ACTIVITY_ID;ACTIVITY_SUBID', VarArrayOf([iID, iSubID]), []) then
  begin
    oNextIDList.Delimiter := ';';
    oNextIDList.DelimitedText := cdsActivityACTIVITY_NEXT.AsString;

    cdsCheckBeforeNext.Close;
    cdsCheckBeforeNext.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsCheckBeforeNext.Params[1].AsInteger := iSubID;
    cdsCheckBeforeNext.Open;

    if cdsCheckBeforeNext.Fields[0].AsInteger > 0 then
      MessageDlg('Complete the activities above before process next step...', mtWarning, [mbOk], 0)
    else
      bContinue := True;
  end;

  if bContinue then
  begin
    oDataSet.DisableControls;
    bNext := False;

    case iID of
      1, 100, 1000 : bNext := CustDataCheck;
      2, 200, 2000 : bNext := DocsCheck;
      3, 300, 3000 : bNext := SalesCheck;
      4, 400, 4000 : bNext := SubRekCheck;
//      5 : begin
//            bNext := True;
//            dmGlobal.RemoteServer.UpdateCompleteActivity(iSubID, cdsCOBDetailListCID.AsInteger);//InternetBankingChecking;
//          end;
      6, 600, 6000 : bNext := ApproveByManager;
      7, 700, 7000 : bNext := SettingParameter(iSubID);
      8, 800, 8000 : bNext := AccountActivation;

//      100 : bNext := CustDataCheck;
//      200 : bNext := DocsCheck;
//      300 : bNext := SubRekCheck;
//      400 : bNext := SalesCheck;
//      500 : bNext := ApproveByManager;
//      600 : bNext := SettingParameter(iSubID);
//      700 : bNext := AccountActivation;
//
//      1000 : bNext := CustDataCheck;
//      2000 : bNext := DocsCheck;
//      3000 : bNext := SubRekCheck;
//      5000 : bNext := ApproveByManager;
//      6000 : bNext := SettingParameter(iSubID);
//      7000 : bNext := AccountActivation;
    end;

    if bNext then
    begin
      for i := 0 to oNextIDList.Count -1 do
      begin
        iIDNext := StrToInt(oNextIDList.Strings[i]);

        dmGlobal.RemoteServer.UpdateAckActivity(iIDNext, cdsCOBDetailListCID.AsInteger);
      end;

      //Additional for update last activity status
      cdsCOBDetails.Close;
      cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
      cdsCOBDetails.Open;

      if not cdsCOBDetails.IsEmpty then
      begin
        cdsCOBDetails.Edit;
        cdsCOBDetailsLAST_ACTIVITY.AsInteger := iSubID;
        cdsCOBDetails.Post;
        cdsCOBDetails.ApplyUpdates(0);
      end;
    end;

    if cdsCOBFlow.IsEmpty then bPos := nil
    else bPos := cdsCOBFlow.GetBookmark;


    cdsCOBFlow.Close;
    cdsCOBFlow.Open;

    if bPos <> nil then cdsCOBFlow.GotoBookmark(bPos);


    oDataSet.EnableControls;
  end;
  FInProcess := False;

end;

procedure TfrmCOBList.actDoneUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = COB_FSTS_INPROGRESS) and (cdsCOBFlowACLEVEL.AsString <> 'N');
end;

procedure TfrmCOBList.actNewInstitutionExecute(Sender: TObject);
begin
  inherited;
  FUserAction := COB_FACT_NONE;
  FCOBShowType := cobsInsti;
  DataContainer.Insert;
end;

procedure TfrmCOBList.actNewRetailExecute(Sender: TObject);
begin
  inherited;
  FUserAction  := COB_FACT_NONE;
  FCOBShowType := cobsRetail;
  DataContainer.Insert;
end;

procedure TfrmCOBList.actPrintExecute(Sender: TObject);
var
  sFileName: string;
begin
  if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 1 then
  begin
    if dmGlobal.RemoteServer.GetBrokerCode = 'DP' then
      ReportContainer.ReportFile := 'Report\OADBSRetail.fr3'
    else
      ReportContainer.ReportFile := 'Report\OpeningAccount.fr3';
  end
  else if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 2 then
  begin
    if dmGlobal.RemoteServer.GetBrokerCode = 'DP' then
      ReportContainer.ReportFile := 'Report\OADBSInstitution.fr3'
    else
      ReportContainer.ReportFile := 'Report\COBInstitutionBahana.fr3';
  end;

  cdsGenerateRDNReport.Close;
  cdsGenerateRDNReport.Params[0].asInteger := dsBrowseMaster.DataSet.FieldByName('CID').AsInteger;
  cdsGenerateRDNReport.Open;

  inherited;
end;

procedure TfrmCOBList.actPrintRDNBankExecute(Sender: TObject);
var
  sBankCode: string;
  sReportFile: string;
begin
  inherited;

  cdsGenerateRDN.Close;
  cdsGenerateRDN.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsGenerateRDN.Open;

  sBankCode := cdsGenerateRDNRDNBANKCODE.AsString;

  rcRDN.ReportFile := 'Report\OA'+sBankCode+'.fr3';

  sReportFile := ExtractFilePath(Application.ExeName) +  rcRDN.ReportFile;
  if not FileExists(sReportFile) then
  begin
    Exit;
  end;

  rcRDN.ExecuteReport;
end;

procedure TfrmCOBList.actStartAckExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  i,
  iID,
  iSubID: Integer;
  sRegNo: string;
  oNextList: TStringList;
  bNext: Boolean;
  bPos: TBookmark;
begin
  inherited;
  oDataSet := dsCOBFlow.DataSet;
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
    oDataSet.FieldByName('ISUPDATE').AsInteger := 1;
    oDataSet.Post;


//    if cdsCOBFlowACPROCESS.AsString = COB_PRC_GROUP then
//    begin
//      cdsCOBFlowChild.close;
//      cdsCOBFlowChild.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
//      cdsCOBFlowChild.Params[1].AsInteger := iID;
//      cdsCOBFlowChild.Open;
//
//      while not cdsCOBFlowChild.Eof do
//      begin
//        cdsCOBFlowChild.Edit;
//        cdsCOBFlowChildSTATUS_ACTIVITY.AsInteger := COB_FSTS_WAIT_ACK;
//        cdsCOBFlowChild.Post;
//        cdsCOBFlowChild.Next;
//      end;
//
//      cdsCOBFlowChild.ApplyUpdates(-1);
//
//    end;

    if cdsCOBFlowACTTYPE.AsString = COB_AT_KSEI_REK then
    begin
      dmGlobal.RemoteServer.CreateCOBRequest_SID(cdsCOBDetailListCID.AsInteger);
    end;

    if cdsCOBFlowACTTYPE.AsString = COB_AT_RDN_REK then
    begin
      dmGlobal.RemoteServer.CreateCOBRequest_RDN(cdsCOBDetailListCID.AsInteger);
    end;


    bPos := oDataSet.GetBookmark;


    cdsCOBFlow.Close;
    cdsCOBFlow.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsCOBFlow.Open;

    cdsCOBFlow.GotoBookmark(bPos);

  end;

  oDataSet.EnableControls;
end;

procedure TfrmCOBList.actStartAckUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = COB_FSTS_WAIT_ACK);
end;

procedure TfrmCOBList.actUploadNewCOBExecute(Sender: TObject);
var
  sFileName: String;
  oFileStream: TFileStream;
  oFileArray: TJSONArray;
begin
  inherited;
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;

    if FileExists(sFileName) then
    begin
      oFileStream := TFileStream.Create(sFileName, fmOpenRead);
      oFileArray := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
      Screen.Cursor := crSQLWait;
      Try
        if dmGlobal.RemoteServer.UploadNewCOB(oFileArray, ExtractFileName(sFileName)) then
        begin
          actRefresh.Execute;
          ShowMessage('Process Upload Done.');

          Screen.Cursor := crDefault;
        end;
      Finally
        FreeAndNil(oFileStream);
        Screen.Cursor := crDefault;
      End;
    end;
  end;
end;

procedure TfrmCOBList.actViewActionExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  iID, iSubID: Integer;
begin
  inherited;
  oDataSet    := dsCOBFlow.DataSet;
  iID     := oDataSet.FieldByname('ACTIVITY_ID').AsInteger;
  iSubID  := oDataSet.FieldByname('ACTIVITY_SUBID').AsInteger;


  oDataSet.DisableControls;
  Try
    case iID of
      1, 100, 1000 : CustDataView;
      2, 200, 2000 : DocsView;
      3, 300, 3000 : SalesView;
      4, 400, 4000 : SubRekView;
      7, 700, 7000 : ParameterView(iSubID);
    end;

  Finally
    oDataSet.EnableControls;
  End;

  FInProcess := False;
end;

procedure TfrmCOBList.AddNotes(ANotes: String);
begin
  cdsCOBNotes.Append;
  cdsCOBNotesNOTES.AsString := ANotes;
  cdsCOBNotes.Post;
end;

function TfrmCOBList.ApproveByManager: Boolean;
var
  oDataSet: TDataSet;
  bResult: Boolean;
  iEntID,
  iAccID: Integer;
  sCustRegNo,
  sEntCode,
  sAccCode: String;
begin
  Result   := False;
  oDataSet := dsCOBFlow.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin
    if MessageDlg('This will copied data customer to data account, Approved ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
//      FUserAction := COB_FACT_DONE_INPUT;
//      if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 1 then
//        FCOBShowType := cobsRetail
//      else if (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 2) or (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 3) then
//        FCOBShowType := cobsInsti;
//      DataContainer.Edit;
//
//      sEntCode := GenerateEntityCode(cdsCOBDetailListCUST_TYPE.AsInteger);
//      iEntId   := GenerateEntityID;
//
//      sAccCode := GenerateAccountCode;
//      iAccID   := GenerateAccountID;
//
//      if not cdsCOBDetails.Active then
//      begin
//        cdsCOBDetails.Close;
//        cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
//        cdsCOBDetails.Open;
//      end;
//
//      cdsCOBDetails.Edit;
//      cdsCOBDetailsACCID.AsInteger := iAccID;
//      cdsCOBDetails.Post;
//      cdsCOBDetails.ApplyUpdates(-1);

//      dmGlobal.RemoteServer.CopyDataEntity(sEntCode, iEntID, sAccCode, iAccID, cdsCOBDetailListCUST_REG_NO.AsString, cdsCOBDetailListCID.AsInteger);
      dmGlobal.RemoteServer.CopyDataEntity(cdsCOBDetailListCID.AsInteger);
      dmGlobal.RemoteServer.UpdateCompleteActivity(cdsCOBFlowACTIVITY_SUBID.AsInteger, cdsCOBDetailListCID.AsInteger);
      DataContainer.Refresh;
      bResult := True;
    end
    else
    begin
      bResult := False;
    end;
  end;

  Result := bResult;
end;

procedure TfrmCOBList.AssignSales;
var
  oForm: TForm;
begin
  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsCOBDetails.Open;

  cdsCOBDetails.Edit;
  oForm := TfrmAssignSales.Create(nil);
  TfrmAssignSales(oForm).prepareData(True);
  if oForm.ShowModal = mrOk then
  begin
    cdsCOBDetails.post;
    cdsCOBDetails.ApplyUpdates(-1);
  end
  else
    cdsCOBDetails.Cancel;
  oForm.Free;
end;

procedure TfrmCOBList.BusinessType;
var
  oForm : TForm;
  oBrowseDataSet: TDataSet;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

  oForm := TfrmCOBBusType.Create(nil);
  TfrmCOBBusType(oForm).CustRegNo := oBrowseDataSet.FieldByName('CUST_REG_NO').AsString;
  cdsAccount.Edit;
  if oForm.ShowModal = mrOk then
  begin
    if cdsAccount.State in dsEditModes then
      cdsAccount.Post;

    cdsAccount.ApplyUpdates(0);
  end
  else
    cdsAccount.Cancel;

  oForm.Free;
end;

procedure TfrmCOBList.cdsAccBankBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccBankACCBANKID.IsNull then
    cdsAccBankACCBANKID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTBANK_ID');
end;

procedure TfrmCOBList.cdsAccLimitNewRecord(DataSet: TDataSet);
var
  oBrowseDataSet: TDataSet;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

  cdsAccLimitACCID.AsInteger := oBrowseDataSet.FieldByName('ACCID').AsInteger;
end;

procedure TfrmCOBList.cdsAccountBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FDefParam := cdsAccountDEFTRDPARAM.AsString;
end;

procedure TfrmCOBList.cdsCOBAuthPersonBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCOBAuthPersonAUTHID.IsNull then
    cdsCOBAuthPersonAUTHID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_COBAUTH_PERSON');
end;

procedure TfrmCOBList.cdsCOBBankAccNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCOBBankAccBENEFICIARY.AsString := cdsCOBDetailsNAME.AsString;
end;

procedure TfrmCOBList.cdsCOBBODBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCOBBODBODID.IsNull then
    cdsCOBBODBODID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_COBBOD');
end;

procedure TfrmCOBList.cdsCOBClientCustodyNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCOBClientCustodyCUSTODYACCNAME.AsString := cdsCOBDetailsNAME.AsString;
end;

procedure TfrmCOBList.cdsCOBDetailsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if LeftStr(cdsCOBDetailsCUST_REG_NO.AsString, 4) = 'COBW' then
    cdsCOBDetailsIS_SYNC.AsInteger := 0;

  if FCOBShowType = cobsRetail then
  begin
    cdsCOBDetailsCUST_TYPE.AsInteger := 1;
  end
  else if FCOBShowType = cobsInsti then
  begin
    if cdsCOBDetailsACC_TYPE_SEC.AsInteger = 0 then
      cdsCOBDetailsCUST_TYPE.AsInteger := 2
    else if cdsCOBDetailsACC_TYPE_SEC.AsInteger = 1 then
      cdsCOBDetailsCUST_TYPE.AsInteger := 3;
  end;
end;

procedure TfrmCOBList.cdsCOBDetailsCOUNTRYChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuCounNation.Locate('CODE', Sender.AsString, []) then
    begin
      cdsCOBDetailsRISK.AsString := cdsLuCounNationRISK.AsString;
    end;
  end;
end;

procedure TfrmCOBList.cdsCOBDetailsNAMEChange(Sender: TField);
var
  oForm: TfrmEntityCheck;
begin
  inherited;
  if (FCOBShowType = cobsRetail) and (FIsBahanaForm) then
  begin
    if ((not cdsCOBDetailsNAME.IsNull) and (not cdsCOBDetailsDOB.IsNull))
      or (not cdsCOBDetailsID_NO.IsNull)
      or (not cdsCOBDetailsTAXPAYER_REG.IsNull) then
    begin
      cdsCOBRetailEntityCheck.Close;

      if (cdsCOBDetailsNAME.IsNull) or (Trim(cdsCOBDetailsNAME.AsString) = '') then
        cdsCOBRetailEntityCheck.Params[0].Clear
      else
        cdsCOBRetailEntityCheck.Params[0].AsString := cdsCOBDetailsNAME.AsString;

      if cdsCOBDetailsDOB.IsNull then
        cdsCOBRetailEntityCheck.Params[1].Clear
      else
        cdsCOBRetailEntityCheck.Params[1].AsDate := cdsCOBDetailsDOB.AsDateTime;

      if (cdsCOBDetailsTAXPAYER_REG.IsNull) or (Trim(cdsCOBDetailsTAXPAYER_REG.AsString) = '') then
        cdsCOBRetailEntityCheck.Params[2].Clear
      else
        cdsCOBRetailEntityCheck.Params[2].AsString := cdsCOBDetailsTAXPAYER_REG.AsString;

      if (cdsCOBDetailsID_NO.IsNull) or (Trim(cdsCOBDetailsID_NO.AsString) = '') then
        cdsCOBRetailEntityCheck.Params[3].Clear
      else
        cdsCOBRetailEntityCheck.Params[3].AsString := cdsCOBDetailsID_NO.AsString;

      cdsCOBRetailEntityCheck.Open;

      if not cdsCOBRetailEntityCheck.IsEmpty then
      begin
        oForm := TfrmEntityCheck.Create(nil);
        Try
          oForm.dsSubject.DataSet := cdsCOBRetailEntityCheck;
          oForm.lblHeader.Caption := 'Your new account request maybe same with existing CIF (' +
            IntToStr(cdsCOBRetailEntityCheck.RecordCount) + ' records).';
          oForm.ShowModal;
        Finally
          FreeAndNil(oForm);
        End;
      end;

    end;
  end;
end;

procedure TfrmCOBList.cdsCOBDetailsNewRecord(DataSet: TDataSet);
var
  iCustRegNo: Integer;
begin
  inherited;
  if cdsCOBDetails.State in [dsInsert] then
  begin
    iCustRegNo := dmGlobal.RemoteServer.GetSeq('COB.'+FormatDateTime('YYYY.MM', Now));

    cdsCOBDetailsCUST_REG_NO.AsString    := 'COB.'+FormatDateTime('YY.MM', Now)+'.'+FormatFloat('000', iCustRegNo);
//    cdsCOBDetailsPRD_CODE.AsString       := 'EQR';
//    cdsCOBDetailsBRCODE.AsString         := 'JKT';
    cdsCOBDetailsCLIENT_STATUS.AsInteger := 1;
    cdsCOBDetailsONEVENT.AsInteger := 0;
    cdsCOBDetailsACC_TYPE_SEC.AsInteger := 0;
  end;

end;

procedure TfrmCOBList.cdsCOBDocNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCOBDocDID.AsInteger := dmGlobal.RemoteServer.GetSeq('DOCID');
end;

procedure TfrmCOBList.cdsCOBFlowAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if cdsCOBFlow.Locate('ACTTYPE', 'SR', []) then
  begin
    FCanCancelData := (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = 0) or
      (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = 9) or
      (cdsCOBFlowSTATUS_ACTIVITY.IsNull);
  end;

  if cdsCOBFlow.Locate('ACTTYPE', 'MA', []) then
  begin
    FCanBackProcess := cdsCOBFlowSTATUS_ACTIVITY.AsInteger <> 2;
    FMinBackProcess := cdsCOBFlowACTIVITY_SUBID.AsInteger;
  end;
//  FCanBackProcess := True;
end;

procedure TfrmCOBList.cdsCOBNotesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Dataset.State in [dsInsert] then
  begin
    cdsCOBNotesCID.AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsCOBNotesNOTEBY.AsString := dmGlobal.UserID;
    cdsCOBNotesNOTEDATE.AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
    cdsCOBNotesNOTESTATUS.AsString := 'O';
    cdsCOBNotesISUPDATE.AsInteger := 1;
  end;
end;

procedure TfrmCOBList.cdsCOBShareHolderBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCOBShareHolderSHAREID.IsNull then
    cdsCOBShareHolderSHAREID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_COBSHAREHOLDER');
end;

procedure TfrmCOBList.COBBankLink;
var
  oForm : TForm;
  oBrowseDataSet: TDataSet;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := oBrowseDataSet.FieldByName('CID').AsInteger;
  cdsCOBDetails.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := 0;
  cdsAccount.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailsACCID.AsInteger;
  cdsAccount.Open;

  oForm := TfrmCOBBankLinkLedger.Create(nil);

  TfrmCOBBankLinkLedger(oForm).PrepareData(cdsCOBDetailsACCID.AsInteger);

  oForm.ShowModal;
  oForm.Free;
end;

procedure TfrmCOBList.COBComissionCharges;
var
  oForm : TForm;
begin
  //Clean Data Cache Before
  if cdsAccount.Params[0].AsInteger = cdsCOBDetailListACCID.AsInteger then
  begin
    cdsAccount.Close;
    cdsAccount.Params[0].AsInteger := 0;
    cdsAccount.Open;
  end;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
  cdsAccount.Open;

  if cdsAccount.IsEmpty then
  begin
    Exit;
  end;

  cdsAccount.Edit;

  oForm := TfrmCOBCommCharges.Create(nil);

  if oForm.ShowModal = mrOk then
  begin
    if cdsAccount.State in dsEditModes then
      cdsAccount.Post;
    cdsAccount.ApplyUpdates(0);
  end
  else
    cdsAccount.Cancel;

  oForm.Free
end;

procedure TfrmCOBList.COBGeneral;
var
  oForm: TForm;
begin

  //Clean Data Cache Before
  if cdsAccount.Params[0].AsInteger = cdsCOBDetailListACCID.AsInteger then
  begin
    cdsAccount.Close;
    cdsAccount.Params[0].AsInteger := 0;
    cdsAccount.Open;
  end;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
  cdsAccount.Open;

  if cdsAccount.IsEmpty then
  begin
    Exit;
  end;

  oForm := TfrmCOBGeneral.Create(nil);
  TfrmCOBGeneral(oForm).PrepareData(Self);

  if oForm.ShowModal = mrOk then
  begin
    if cdsAccount.State in dsEditModes then cdsAccount.Post;
    cdsAccount.ApplyUpdates(-1);
  end
  else
    cdsAccount.Cancel;

  oForm.Free;
end;

procedure TfrmCOBList.COBLedgerClass(AUpdate: Boolean);
var
  oForm : TForm;
  oBrowseDataSet: TDataSet;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := oBrowseDataSet.FieldByName('CID').AsInteger;
  cdsCOBDetails.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := 0;
  cdsAccount.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailsACCID.AsInteger;
  cdsAccount.Open;

  oForm := TfrmCOBAccountLedger.Create(nil);
  TfrmCOBAccountLedger(oForm).PrepareData(AUpdate);
  TfrmCOBAccountLedger(oForm).RegNo    := oBrowseDataSet.FieldByName('CUST_REG_NO').AsString;
  TfrmCOBAccountLedger(oForm).CustName := oBrowseDataSet.FieldByName('NAME').AsString;
  TfrmCOBAccountLedger(oForm).AccID    := cdsCOBDetailsACCID.AsInteger;

  if oForm.ShowModal = mrOK then
  begin
    if AUpdate then
    begin
      if cdsAccount.State in dsEditModes then
        cdsAccount.Post;

      cdsAccount.ApplyUpdates(0);

      dmGlobal.RemoteServer.UpdateBankLinkToLedger(cdsCOBDetailsACCID.AsInteger);
    end;
  end;
  oForm.Free;

end;

procedure TfrmCOBList.COBSettingDefaultParam;
begin


end;

procedure TfrmCOBList.COBSettlementConfig;
var
  oForm : TForm;
begin
  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsCOBDetails.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailsACCID.AsInteger;
  cdsAccount.Open;

  oForm := TfrmCOBSettlementConfig.Create(nil);
  if oForm.ShowModal = mrOK then
  begin
    if cdsAccount.State in dsEditModes then
      cdsAccount.Post;
    cdsAccount.ApplyUpdates(0);
  end;
end;

function TfrmCOBList.CustDataCheck: Boolean;
var
  oForm: TForm;
  bResult: Boolean;
begin
  inherited;
  Result := False;

  FUserAction := COB_FACT_DONE_INPUT;
  if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 1 then
    FCOBShowType := cobsRetail
  else if (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 2) or (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 3) then
    FCOBShowType := cobsInsti;
  DataContainer.Open;

  Result := FResultDone;
end;

procedure TfrmCOBList.CustDataView;
var
  oForm: TForm;
  bResult: Boolean;
begin
  inherited;

  FUserAction := COB_FACT_VIEW_INPUT;
  if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 1 then
    FCOBShowType := cobsRetail
  else if (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 2) or (dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 3) then
    FCOBShowType := cobsInsti;
  DataContainer.Open;


end;

procedure TfrmCOBList.DataContainerAfterEdit(Sender: TNMasterDetailData);
var
  oForm: TForm;
  oDataSet, oXDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
begin
  inherited;
  oDataSet  := dsCOBFlow.DataSet;
  if FUserAction = COB_FACT_DONE_INPUT then
  begin
    if DataContainer.ModalResult = mrOk then
    begin
      dmGlobal.RemoteServer.UpdateCompleteActivity(cdsCOBFlowACTIVITY_SUBID.AsInteger, cdsCOBDetailListCID.AsInteger);
      FResultDone := True;
    end
    else
    begin
      FResultDone := False;
    end;
  end;
end;

procedure TfrmCOBList.DataContainerAfterInsert(Sender: TNMasterDetailData);
begin
  inherited;
  //Off By Rendi 1 April 2015 Cause Use Trigger in Database for Web OA
//  if Sender.ModalResult = mrOk then
//  begin
//    dmGlobal.RemoteServer.CreateCOBActivity(cdsCOBDetailsCID.AsInteger,
//      cdsCOBDetailsCUST_TYPE.AsInteger);
//  end;
end;

procedure TfrmCOBList.DataContainerAfterOpen(Sender: TNMasterDetailData);
var
  oForm: TForm;
  oDataSet, oXDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
begin
  inherited;
  oDataSet  := dsCOBFlow.DataSet;
  if FUserAction = COB_FACT_DONE_INPUT then
  begin
    if DataContainer.ModalResult = mrOk then
    begin
      dmGlobal.RemoteServer.UpdateCompleteActivity(cdsCOBFlowACTIVITY_SUBID.AsInteger, cdsCOBDetailListCID.AsInteger);
      FResultDone := True;
    end
    else
    begin
      FResultDone := False;
    end;
  end;

end;

procedure TfrmCOBList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  if cdsCOBDetails.State in [dsBrowse] then
  begin
    if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 1 then
      FCOBShowType := cobsRetail
    else if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 2 then
      FCOBShowType := cobsInsti
    else if dsBrowseMaster.DataSet.FieldByName('CUST_TYPE').AsInteger = 3 then
      FCOBShowType := cobsInsti;
  end;

  inherited;

  if FCOBShowType = cobsRetail then
  begin
    if FIsBahanaForm then
    begin
      if FUserAction = COB_FACT_NONE then AFormClass := TfrmCOBRetail
      else if FUserAction = COB_FACT_DONE_INPUT then AFormClass := TfrmCOBRetail
      else if FUserAction = COB_FACT_VIEW_INPUT then AFormClass := TfrmCOBRetail;
    end
    else
    begin
      AFormClass := TfrmCOBRetailDBS;
    end;
  end
  else if FCOBShowType = cobsInsti then
  begin
    if FIsBahanaForm then
    begin
      if FUserAction = COB_FACT_NONE then
        AFormClass := TfrmCOBInstitutionBahana
      else if FUserAction = COB_FACT_DONE_INPUT then
        AFormClass := TfrmCOBInstitutionBahana
      else if FUserAction = COB_FACT_VIEW_INPUT then
        AFormClass := TfrmCOBInstitutionBahana;
    end
    else
    begin
      if FUserAction = COB_FACT_NONE then
        AFormClass := TfrmCOBInstitution
      else if FUserAction = COB_FACT_DONE_INPUT then
        AFormClass := TfrmCOBInstitution
      else if FUserAction = COB_FACT_VIEW_INPUT then
        AFormClass := TfrmCOBInstitution;
    end;
  end;
end;

procedure TfrmCOBList.DataOwnerSetting(AUpdate: Boolean);
var
  oForm : TForm;
  oBrowseDataSet: TDataSet;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := oBrowseDataSet.FieldByName('CID').AsInteger;
  cdsCOBDetails.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailsACCID.AsInteger;
  cdsAccount.Open;

  cdsAccCreditLimit.Close;
  cdsAccCreditLimit.Params[0].AsInteger := cdsCOBDetailsACCID.AsInteger;
  cdsAccCreditLimit.Open;

  oForm := TfrmCOBDataOwner.Create(nil);
  TfrmCOBDataOwner(oForm).prepareData(cdsCOBDetailsACCID.AsInteger, AUpdate);

  if oForm.ShowModal = mrOk then
  begin
    if AUpdate then
      TfrmCOBDataOwner(oForm).cdsAccDataOwnSelect.ApplyUpdates(-1);
  end
  else
  begin

  end;

  oForm.Free;
end;

function TfrmCOBList.DocsCheck: Boolean;
var
  oForm: TForm;
  bResult: Boolean;
  sReasons: string;
begin
  inherited;
  Result := False;

  if cdsCOBFlowACTTYPE.AsString = COB_ACCTYPE_PRINT then
  begin
    dmGlobal.RemoteServer.UpdateCompleteActivity(cdsCOBFlowACTIVITY_SUBID.AsInteger, cdsCOBDetailListCID.AsInteger);
    bResult := True;
  end
  else
  begin

    oForm := TfrmCOBUploadDocuments.Create(nil);
    TfrmCOBUploadDocuments(oForm).Action := 1;
    TfrmCOBUploadDocuments(oForm).PrepareData(cdsCOBDetailListCID.AsInteger, '', '', False);

    if oForm.ShowModal = mrOk then
    begin
      dmGlobal.RemoteServer.UpdateCompleteActivity(cdsCOBFlowACTIVITY_SUBID.AsInteger, cdsCOBDetailListCID.AsInteger);
      bResult := True;
    end
    else
    begin
      bResult := False;
    end;
    oForm.Free;
  end;

  Result := bResult;
end;

procedure TfrmCOBList.DocsView;
var
  oForm: TForm;
  oDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
begin
  inherited;

  oForm := TfrmCOBUploadDocuments.Create(nil);
  TfrmCOBUploadDocuments(oForm).Action := 1;
  TfrmCOBUploadDocuments(oForm).PrepareData(cdsCOBDetailListCID.AsInteger, '', '', False);

  oDataSet := dsCOBFlow.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin

    if oForm.ShowModal = mrOk then
    begin

    end
    else
    begin

    end;
    oForm.Free;
  end;
end;

procedure TfrmCOBList.FormActivate(Sender: TObject);
begin
  inherited;
  pnlRigh.Width := Round(Self.Width * (40/100));

end;

procedure TfrmCOBList.FormCreate(Sender: TObject);
begin
  FIsBahanaForm := dmGlobal.RemoteServer.GetBrokerCode = 'DX';

  FInProcess := False;
  MasterData := gvwCOBList;
  inherited;

  cdsCOBDetailList.Close;
  cdsCOBDetailList.Open;

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

    cdsLuBankRDN.Close;
    cdsLuBankRDN.Open;

    cdsLuBusinessType.Close;
    cdsLuBusinessType.Open;

    cdsLuCommission.Close;
    cdsLuCommission.Open;

    cdsLuCharge.Close;
    cdsLuCharge.Open;

    cdsluActLedgerClass.Close;
    cdsluActLedgerClass.Open;

    cdsLuAccLegClass.Close;
    cdsLuAccLegClass.Open;

    cdsLuActLedgerType.Close;
    cdsLuActLedgerType.Open;

    cdsLuEntity.Close;
    cdsLuEntity.Open;

    cdsLuProduct.Close;
    cdsLuProduct.Open;

    cdsLuBankCustody.Close;
    cdsLuBankCustody.Open;

    cdsLuCrdConClass.Close;
    cdsLuCrdConClass.Open;

    cdsLuCCType.Close;
    cdsLuCCType.Open;

    cdsLuCharge.Close;
    cdsLuCharge.Open;

    cdsLuCrdConClass.Close;
    cdsLuCrdConClass.Open;

    cdsLuChannel.Close;
    cdsLuChannel.Open;

    cdsLuDefaultParamSetting.Close;
    cdsLuDefaultParamSetting.Open;

    cdsLuCPCenter.Close;
    cdsLuCPCenter.Open;

    cdsLuBussCat.Close;
    cdsLuBussCat.Open;

    cdsLuBusinessLine.Close;
    cdsLuBusinessLine.Open;

    cdsLuOccupation.Close;
    cdsLuOccupation.Open;
  end;

end;

function TfrmCOBList.GenerateAccountCode: string;
var
  iSeq: Integer;
  iBranchID: Integer;
begin
  iBranchID := dsBrowseMaster.DataSet.FieldByName('BRANCHID').AsInteger;

  iSeq   := dmGlobal.RemoteServer.GetSeq('AccCode.'+FormatDateTime('yymm', now)+IntToStr(iBranchID));
  Result := FormatDateTime('mmyyyy', now) + FormatFloat('00', iBranchID) +'-' + IntToStr(iSeq);
end;

function TfrmCOBList.GenerateAccountID: Integer;
begin
  Result := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNT');
end;

function TfrmCOBList.GenerateEntityCode(ACustType: Integer): string;
var
  iSeq: Integer;
begin
  iSeq   := dmGlobal.RemoteServer.GetSeq('EntCode');
//  if ACustType = 1 then
//    Result := '02-' + FormatFloat('000000', iSeq)
//  else if ACustType = 2 then
//    Result := '01-' + FormatFloat('000000', iSeq)
//  else
    Result := FormatFloat('000000', iSeq);
end;

function TfrmCOBList.GenerateEntityID: Integer;
begin
  Result := dmGlobal.RemoteServer.GetSeq('TBL_B_ENTITY');
end;

procedure TfrmCOBList.GetParameters;
var
  bPos: TBookmark;
begin
  cdsCOBFlow.DisableControls;

//  bPos := cdsCOBFlow.GetBookmark;

  cdsCOBFlow.First;

  while not cdsCOBFlow.Eof do
  begin
    if cdsPermission.Locate('ACTIVITY_ID;ACTIVITY_SUBID', VarArrayOf([cdsCOBFlowACTIVITY_ID.AsInteger, cdsCOBFlowACTIVITY_SUBID.AsInteger]), []) then
    begin
       cdsCOBFlow.Edit;
       cdsCOBFlowFLAGPERM.AsString := '1';
       cdsCOBFlow.Post;
    end
    else
    begin
       cdsCOBFlow.Edit;
       cdsCOBFlowFLAGPERM.AsString := '0';
       cdsCOBFlow.Post;
    end;

    cdsCOBFlow.Next;
  end;

  cdsCOBFlow.First;
//  cdsCOBFlow.GotoBookmark(bPos);

  cdsCOBFlow.EnableControls;
end;

procedure TfrmCOBList.gvwCOBActivityCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  oStringList: TStringList;
  sString: string;
  oView, oAck, oDone: Boolean;
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwCOBActivityFLAGPERM.Index] = '0' then
  begin
    ACanvas.FrameRect(AViewInfo.Bounds, dmGlobal.ncDisableCOB.Color);
    ACanvas.Font.Color := dmGlobal.ncDisableCOB.TextColor;
    ACanvas.Font.Style := [fsItalic];
  end
  else
  begin
    ACanvas.Font.Style := [];
    if AViewInfo.Selected then
    begin
      if AViewInfo.Item.Focused then
      begin
        ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
        ACanvas.Font.Color := clWhite;
      end;
    end;
  end;
end;

procedure TfrmCOBList.gvwCOBListCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmCOBList.gvwCOBListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if (not FInProcess) and (not cdsCOBDetailList.IsEmpty) then
  begin
    cdsCOBFlow.Close;
    cdsCOBFlow.Params[0].AsInteger := AFocusedRecord.Values[gvwCOBListCID.Index];
    cdsCOBFlow.Open;

    cdsCOBNotes.Close;
    cdsCOBNotes.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsCOBNotes.Open;

//    cdsAccount.Close;
//    cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
//    cdsAccount.Open;

    if not cdsPermission.Active then
    begin
      cdsPermission.Close;
      cdsPermission.Params[0].AsString := dmGlobal.UserID;
      cdsPermission.Open;
    end;

    GetParameters;
  end;
end;

function TfrmCOBList.InsertRequest(ASubID: Integer): Boolean;
begin

end;

procedure TfrmCOBList.ParameterSetting(AUpdate: Boolean);
var
  oForm : TForm;
  oBrowseDataSet: TDataSet;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := oBrowseDataSet.FieldByName('CID').AsInteger;
  cdsCOBDetails.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := 0;
  cdsAccount.Open;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailsACCID.AsInteger;
  cdsAccount.Open;

  cdsAccCreditLimit.Close;
  cdsAccCreditLimit.Params[0].AsInteger := cdsCOBDetailsACCID.AsInteger;
  cdsAccCreditLimit.Open;

  oForm := TfrmCOBCreditLimit.Create(nil);
  TfrmCOBCreditLimit(oForm).prepareData(AUpdate);

  if AUpdate then cdsAccount.Edit;
  if oForm.ShowModal = mrOk then
  begin
    if AUpdate then
    begin
      if cdsAccCreditLimitACCID.IsNull then
        cdsAccCreditLimitACCID.AsInteger := cdsAccCreditLimit.Params[0].AsInteger;

      if cdsAccCreditLimit.State in [dsInsert, dsEdit] then
        cdsAccCreditLimit.Post;
    end;
  end
  else
  begin
    if AUpdate then cdsAccCreditLimit.Cancel;
  end;

  oForm.Free;
end;

procedure TfrmCOBList.ParameterView(ASubID: Integer);
var
  oForm : TForm;
  oBrowseDataSet: TDataSet;
  b1, b2, b3: Boolean;
  sAccType: string;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

    sAccType    := cdsCOBFlowACTTYPE.AsString;

    if sAccType = COB_ACCTYPE_ACCLEDGER then
    begin
      COBLedgerClass(False);

    end
    else if sAccType = COB_ACCTYPE_ORDVALIDATION then
    begin
      ParameterSetting(False)
    end
    else if sAccType = COB_ACCTYPE_DATA_OWNER then
    begin
      DataOwnerSetting(False);
    end
    else if sAccType = COB_ACCTYPE_BANKLINK then
    begin
//      COBBankLink
//
//      cdsCOBDetails.Close;
//      cdsCOBDetails.Params[0].AsInteger := oBrowseDataSet.FieldByName('CID').AsInteger;
//      cdsCOBDetails.Open;

      cdsAccount.Close;
      cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
      cdsAccount.Open;

      oForm := TfrmCOBBankLinkLedger.Create(nil);
      Try
        TfrmCOBBankLinkLedger(oForm).PrepareData(cdsCOBDetailsACCID.AsInteger);
        oForm.ShowModal;
      Finally
        FreeAndNil(oForm);
      End;

    end
    else if sAccType = COB_ACCTYPE_GENERAL then
    begin
      COBGeneral;
//      oForm := TfrmCOBGeneral.Create(nil);
//
//      cdsAccount.Edit;
//      if oForm.ShowModal = mrOk then
//      begin
//        cdsAccount.Post;
//        dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
//        dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
//        Result := True;
//      end
//      else
//      begin
//        cdsAccount.Cancel;
//        Result := False;
//      end;
//
//      oForm.Free;

    end
    else if sAccType = COB_ACCTYPE_COMISSION_CHARGE then
    begin
//      COBComissionCharges;
      cdsAccount.Close;
      cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
      cdsAccount.Open;

      oForm := TfrmCOBCommCharges.Create(nil);
      Try
        oForm.ShowModal;
      Finally
        FreeAndNil(oForm);
      End;
    end

    else if sAccType = COB_ACTTYPE_INETBANKCHECK then
    begin
      cdsAccInternetBankInfo.Close;
      cdsAccInternetBankInfo.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
      cdsAccInternetBankInfo.Open;

      oForm := TfrmInternetBankChecking.Create(nil);
      Try
        oForm.ShowModal;
      Finally
        FreeAndNil(oForm);
      End;
    end

    else if sAccType = COB_ACCTYPE_SETTLEMENT then
    begin
      cdsAccount.ReadOnly := True;
      Try
        COBSettlementConfig;
      Finally
        cdsAccount.ReadOnly := False;
      End;
    end;

end;

procedure TfrmCOBList.popFlowActPopup(Sender: TObject);
//var
//  oStringList: TStringList;
//  oAck, oDone: boolean;
begin
  inherited;
//  oStringList := TStringList.Create;
//  oStringList.Delimiter := '|';
//  oStringList.DelimitedText := cdsCOBFlowACTION.AsString;
//
//  if oStringList.Strings[1] = '1' then oAck  := True else oAck  := False;
//  if oStringList.Strings[2] = '1' then oDone := True else oDone := False;
//
//
//  if (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = 2) or (cdsCOBFlowSTATUS_ACTIVITY.AsInteger = 9) then
//  begin
//    actDone.Enabled     := False;
//    actStartAck.Enabled := False;
//  end
//  else
//  begin
//    if cdsCOBFlowSTATUS_ACTIVITY.AsInteger = 0 then
//      actDone.Enabled := False
//    else
//      actDone.Enabled := oDone;
//
//
//    if cdsCOBFlowSTATUS_ACTIVITY.AsInteger = 1 then
//      actStartAck.Enabled := False
//    else
//      actStartAck.Enabled := oAck;
//  end;
  if cdsCOBFlowFLAGPERM.AsString = '0' then Abort;
end;

procedure TfrmCOBList.rcRDNPrepareData(AFormParam: TForm);
begin
  inherited;
  cdsGenerateRDN.Close;
  cdsGenerateRDN.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsGenerateRDN.Open;
end;

function TfrmCOBList.RDNCheck: Boolean;
begin
end;

function TfrmCOBList.SalesCheck: Boolean;
var
  oForm: TForm;
  oDataSet: TDataSet;
  bResult: Boolean;
begin
  Result := False;
  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsCOBDetails.Open;

  oForm := TfrmAssignSales.Create(nil);
  TfrmAssignSales(oForm).prepareData(False);

  oDataSet := dsCOBFlow.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin
    if oForm.ShowModal = mrOk then
    begin
      dmGlobal.RemoteServer.UpdateCompleteActivity(cdsCOBFlowACTIVITY_SUBID.AsInteger, cdsCOBDetailListCID.AsInteger);
      bResult := True;
    end
    else
    begin
      bResult := False;
    end;
    oForm.Free;
  end;

  Result := bResult;
end;

procedure TfrmCOBList.SalesView;
var
  oForm: TForm;
  oDataSet: TDataSet;
  bResult: Boolean;
begin
  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsCOBDetails.Open;

  oForm := TfrmAssignSales.Create(nil);
  TfrmAssignSales(oForm).prepareData(False);
  oDataSet := dsCOBFlow.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin
    if oForm.ShowModal = mrOk then
    begin
      bResult := True;
    end
    else
    begin
      bResult := False;
    end;
    oForm.Free;
  end;

end;

function TfrmCOBList.SettingParameter(ASubID: Integer): Boolean;
var
  oForm : TForm;
  oBrowseDataSet: TDataSet;
  b1, b2, b3: Boolean;
  sAccType: string;
begin
  oBrowseDataSet := dsBrowseMaster.DataSet;

  sAccType    := cdsCOBFlowACTTYPE.AsString;

  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
  cdsAccount.Open;

  if sAccType = COB_ACCTYPE_ACCLEDGER then
  begin
//      COBLedgerClass
    dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
    dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
    Result := True;
  end
  else if sAccType = COB_ACCTYPE_ORDVALIDATION then
  begin
//      COBLedgerClass
    dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
    dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
    Result := True;
  end
  else if sAccType = COB_ACCTYPE_BANKLINK then
  begin
//      COBBankLink

    cdsCOBDetails.Close;
    cdsCOBDetails.Params[0].AsInteger := oBrowseDataSet.FieldByName('CID').AsInteger;
    cdsCOBDetails.Open;

    oForm := TfrmCOBBankLinkLedger.Create(nil);
    TfrmCOBBankLinkLedger(oForm).PrepareData(cdsCOBDetailsACCID.AsInteger);

    if oForm.ShowModal = mrOk then
    begin
      dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
      dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
      Result := True;
    end
    else
    begin
      Result := False;
    end;

    oForm.Free;
  end
  else if sAccType = COB_ACCTYPE_GENERAL then
  begin
//      COBGeneral
    oForm := TfrmCOBGeneral.Create(nil);

    cdsAccount.Edit;
    if oForm.ShowModal = mrOk then
    begin
      cdsAccount.Post;
      dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
      dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
      Result := True;
    end
    else
    begin
      cdsAccount.Cancel;
      Result := False;
    end;

    oForm.Free;

  end
  else if sAccType = COB_ACCTYPE_COMISSION_CHARGE then
  begin
//      COBComissionCharges;
    oForm := TfrmCOBCommCharges.Create(nil);

    cdsAccount.Edit;
    if oForm.ShowModal = mrOk then
    begin
      cdsAccount.Post;
      cdsAccount.ApplyUpdates(0);
      dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
      dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
      Result := True;
    end
    else
    begin
      cdsAccount.Cancel;
      Result := False;
    end;

    oForm.Free
  end

  else if sAccType = COB_ACCTYPE_DATA_OWNER then
  begin
    dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
    dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
    Result := True;
  end

  else if sAccType = COB_ACCTYPE_SETTLEMENT then
  begin
    oForm := TfrmCOBSettlementConfig.Create(nil);
    cdsAccount.Edit;
    if oForm.ShowModal = mrOK then
    begin
      cdsAccount.Post;
      cdsAccount.ApplyUpdates(0);
      dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
      dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
      Result := True;
    end
    else
    begin
      cdsAccount.Cancel;
      Result := False;
    end;
  end

  else if sAccType = COB_ACTTYPE_INETBANKCHECK then
  begin
    cdsAccInternetBankInfo.Close;
    cdsAccInternetBankInfo.Params[0].AsInteger := cdsCOBDetailListACCID.AsInteger;
    cdsAccInternetBankInfo.Open;

    oForm := TfrmInternetBankChecking.Create(nil);
    if oForm.ShowModal = mrOK then
    begin
      dmGlobal.RemoteServer.UpdateCompleteActivity(ASubID, cdsCOBDetailListCID.AsInteger);
      dmGlobal.RemoteServer.UpdateCOBActParamSetting(cdsCOBDetailListCID.AsInteger);
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  end;

end;

function TfrmCOBList.SIDCheck: Boolean;
begin

end;

function TfrmCOBList.SubRekCheck: Boolean;
var
  oForm: TForm;
  oDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
  iSubID: Integer;
begin
  iSubID := cdsCOBFlowACTIVITY_SUBID.AsInteger;
  Result := False;

  if (cdsCOBFlowACTTYPE.AsString = COB_ACTTYPE_GROUPREQUEST) or (cdsCOBFlowACTTYPE.AsString = COB_ACTTYPE_SID) then
    Exit;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsCOBDetails.Open;

  if (iSubID = 41) or (iSubID = 4100) then
  begin
    oForm := TfrmViewKSEISubRek.Create(nil);

    cdsViewKSEISubrek.Close;
    cdsViewKSEISubrek.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsViewKSEISubrek.Open;

    cdsCOBDetails.Edit;
    cdsCOBDetailsSUBREK001.AsString := cdsViewKSEISubrekSUBREK01.AsString;
    cdsCOBDetailsSUBREK004.AsString := cdsViewKSEISubrekSUBREK04.AsString;
    cdsCOBDetailsSID.AsString       := cdsViewKSEISubrekSID.AsString;
    cdsCOBDetails.Post;
  end
  else if (iSubID = 43) or (iSubID = 4300) then
  begin
    oForm := TfrmViewRDN.Create(nil);

    cdsViewRDN.Close;
    cdsViewRDN.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsViewRDN.Open;
  end
  else if (iSubID = 44) or (iSubID = 4400) then
  begin
    oForm := TfrmCompareRDNKSEI.Create(nil);

    cdsViewKSEISubrek.Close;
    cdsViewKSEISubrek.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsViewKSEISubrek.Open;

    cdsViewRDN.Close;
    cdsViewRDN.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsViewRDN.Open;

    cdsKSEIRDNCompare.Close;
    cdsKSEIRDNCompare.Params[0].AsString := cdsViewKSEISubrekIDREFF.AsString;
    cdsKSEIRDNCompare.Open;
  end;

  oDataSet := dsCOBFlow.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin
    if oForm.ShowModal = mrOk then
    begin
      dmGlobal.RemoteServer.UpdateCompleteActivity(iSubID, cdsCOBDetailListCID.AsInteger);
      bResult := True;
    end
    else
    begin
      bResult := False;
    end;
    oForm.Free;
  end;

  Result := bResult;
end;


procedure TfrmCOBList.SubRekView;
var
  oForm: TForm;
  oDataSet: TDataSet;
  bResult: Boolean;
  sReasons: string;
  iSubID: Integer;
begin
  iSubID := cdsCOBFlowACTIVITY_SUBID.AsInteger;

  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
  cdsCOBDetails.Open;

  if (iSubID = 41) or (iSubID = 40) then
  begin
    oForm := TfrmViewKSEISubRek.Create(nil);

    cdsViewKSEISubrek.Close;
    cdsViewKSEISubrek.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsViewKSEISubrek.Open;

//    cdsCOBDetails.Edit;
//    cdsCOBDetailsSUBREK001.AsString := cdsViewKSEISubrekSUBREK01.AsString;
//    cdsCOBDetailsSUBREK004.AsString := cdsViewKSEISubrekSUBREK04.AsString;
//    cdsCOBDetailsSID.AsString       := cdsViewKSEISubrekSID.AsString;
//    cdsCOBDetails.Post;
  end
  else if (iSubID = 42) or (iSubID = 43) then
  begin
    oForm := TfrmViewRDN.Create(nil);

    cdsViewRDN.Close;
    cdsViewRDN.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
    cdsViewRDN.Open;
  end;

  oDataSet := dsCOBFlow.DataSet;

  if oDataSet.Locate('ACTIVITY_SUBID', oDataSet.FieldByName('ACTIVITY_SUBID').Value, []) then
  begin
    if oForm.ShowModal = mrOk then
    begin
//      dmGlobal.RemoteServer.UpdateCompleteActivity(iSubID, cdsCOBDetailListCID.AsInteger);
//      bResult := True;
    end
    else
    begin
//      bResult := False;
    end;
    oForm.Free;
  end;

end;

procedure TfrmCOBList.UploadDocuments;
var
  oForm : TForm;
begin
//  cdsCOBDetails.Close;
//  cdsCOBDetails.Params[0].AsInteger := cdsCOBDetailListCID.AsInteger;
//  cdsCOBDetails.Open;


  oForm := TfrmCOBUploadDocuments.Create(nil);
  TfrmCOBUploadDocuments(oForm).Action := 0;
  TfrmCOBUploadDocuments(oForm).PrepareData(cdsCOBDetailListCID.AsInteger, '', '', True);
  if oForm.ShowModal = mrOk then
  begin
//    cdsCOBDetails.Post;
//    cdsCOBDetails.ApplyUpdates(-1);
  end;
  oForm.Free;
end;

procedure TfrmCOBList.ActivateCOBDetails(ACID: Integer);
begin
  cdsCOBDetails.Close;
  cdsCOBDetails.Params[0].AsInteger := ACID;
  cdsCOBDetails.Open;

end;


initialization
RegisterClass(TfrmCOBList);

end.

