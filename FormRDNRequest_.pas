unit FormRDNRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  NActionPermission, Vcl.Menus, cxGridBandedTableView, cxGridDBBandedTableView,
  Vcl.ActnList, NDatasetAction, cxDBLookupComboBox, cxImageComboBox, cxCalendar,
  NReportRPC, frxClass, frxDBSet, frxExportPDF, NReportClient, cxCheckBox,
  System.Actions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles;

type
  TfrmRDNRequest = class(TfrmBasic)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsRDNRequest: TNClientDataset;
    dsRDNRequest: TDataSource;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    ActionList1: TActionList;
    actUpdateRDNAccount: TNAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    UpdateRDNAccount1: TMenuItem;
    cdsUpdateKSEI: TNClientDataset;
    rcRDN: TNReportContainer;
    actGenerateFile: TNAction;
    dbRDNRequest: TfrxDBDataset;
    GenerateToPDFFile1: TMenuItem;
    cdsGenerateRDNReport: TNClientDataset;
    rptPDF: TfrxReport;
    actViewReport: TNAction;
    frxPDFExport1: TfrxPDFExport;
    ViewReportCIMB1: TMenuItem;
    N1: TMenuItem;
    cxGrid1DBBandedTableView1RDNREQID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CUST_REG_NO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLIENTNAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BANKNAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CLIENTTYPE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BRANCH: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RDNACCNO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RDNSTATUS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RDNDATE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RDNNOTES: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RDNREQUESTDATE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1PDFFILEGENERATE: TcxGridDBBandedColumn;
    GenerateRDN: TNClientReportContainer;
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
    actRefresh: TNAction;
    N2: TMenuItem;
    Refresh1: TMenuItem;
    actUpdateFromKSEIData: TNAction;
    UpdateFromKSEIDataUpload1: TMenuItem;
    cdsKSEIRequestByCID: TNClientDataset;
    cdsKSEIRequestByCIDKSEIREQUESTID: TLargeintField;
    cdsKSEIRequestByCIDREQUESTDATE: TDateTimeField;
    cdsKSEIRequestByCIDCOBREQUESTCODE: TStringField;
    cdsKSEIRequestByCIDOATYPE: TStringField;
    cdsKSEIRequestByCIDCLIENTNAME: TStringField;
    cdsKSEIRequestByCIDCLEINTTYPE: TStringField;
    cdsKSEIRequestByCIDBRANCH: TStringField;
    cdsKSEIRequestByCIDSUBREK01: TStringField;
    cdsKSEIRequestByCIDSUBREK01STS: TStringField;
    cdsKSEIRequestByCIDSUBREK04: TStringField;
    cdsKSEIRequestByCIDSUBREK04STS: TStringField;
    cdsKSEIRequestByCIDSID: TStringField;
    cdsKSEIRequestByCIDSIDSTS: TStringField;
    cdsKSEIRequestByCIDSUBREK01DATE: TDateTimeField;
    cdsKSEIRequestByCIDSUBREK04DATE: TDateTimeField;
    cdsKSEIRequestByCIDSIDDATE: TDateTimeField;
    cdsKSEIRequestByCIDREQNOTES: TStringField;
    cdsKSEIRequestByCIDBRKCODE: TStringField;
    cdsKSEIRequestByCIDIDREFF: TStringField;
    cdsKSEIRequestByCIDRSTATUS: TStringField;
    cdsKSEIRequestByCIDCID: TLargeintField;
    cdsKSEIRequestByCIDMODDA: TDateTimeField;
    cdsKSEIRequestByCIDMODUI: TStringField;
    cdsKSEIRequestByCIDAPPDA: TDateTimeField;
    cdsKSEIRequestByCIDAPPUI: TStringField;
    cdsKSEIRequestByCIDUNDER4Y: TIntegerField;
    cdsKSEIRequestByCIDUNDER4YDA: TDateTimeField;
    cdsKSEIRequestByCIDNOTES4Y: TStringField;
    cdsKSEIRequestByCIDISDEL: TIntegerField;
    cdsKSEIRequestByCIDID: TLargeintField;
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
    cdsRDNRequestRDNREQID: TLargeintField;
    cdsRDNRequestCUST_REG_NO: TStringField;
    cdsRDNRequestCLIENTNAME: TStringField;
    cdsRDNRequestBANKNAME: TStringField;
    cdsRDNRequestCLIENTTYPE: TIntegerField;
    cdsRDNRequestBRANCH: TStringField;
    cdsRDNRequestRDNACCNO: TStringField;
    cdsRDNRequestRDNSTATUS: TStringField;
    cdsRDNRequestRDNDATE: TDateTimeField;
    cdsRDNRequestRDNNOTES: TStringField;
    cdsRDNRequestCID: TLargeintField;
    cdsRDNRequestRDNREQUESTDATE: TDateTimeField;
    cdsRDNRequestPDFFILEGENERATE: TBlobField;
    cdsRDNRequestMODDA: TDateTimeField;
    cdsRDNRequestMODUI: TStringField;
    cdsRDNRequestAPPDA: TDateTimeField;
    cdsRDNRequestAPPUI: TStringField;
    cdsRDNRequestUNDER4Y: TIntegerField;
    cdsRDNRequestUNDER4YDA: TDateTimeField;
    cdsRDNRequestNOTES4Y: TStringField;
    cdsRDNRequestISDEL: TIntegerField;
    cdsRDNRequestID: TLargeintField;
    actComplete: TNAction;
    Complete1: TMenuItem;
    cdsRDNRequestISCOMPLETE: TStringField;
    cxGrid1DBBandedTableView1ISCOMPLETE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actUpdateRDNAccountExecute(Sender: TObject);
    procedure actGenerateFileExecute(Sender: TObject);
    procedure rcRDNPrepareData(AFormParam: TForm);
    procedure actViewReportExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actRefreshExecute(Sender: TObject);
    procedure actUpdateFromKSEIDataExecute(Sender: TObject);
    procedure actCompleteExecute(Sender: TObject);
    procedure actUpdateRDNAccountUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRDNRequest: TfrmRDNRequest;

implementation

{$R *.dfm}

uses DataGlobal, FormRDNRequests;

procedure TfrmRDNRequest.actCompleteExecute(Sender: TObject);
var
  iCID: Integer;
begin
  inherited;
  if MessageDlg('Are you sure to complete this RDN Request?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if cdsRDNRequestRDNSTATUS.AsString = '1' then
    begin
      cdsRDNRequest.Edit;
      cdsRDNRequestISCOMPLETE.AsString := '1';
      cdsRDNRequest.Post;

      iCID := cdsRDNRequestCID.AsInteger;

      if cdsRDNRequestCLIENTTYPE.AsInteger = 1 then
      begin
        cdsUpdateKSEI.Close;
        cdsUpdateKSEI.Params[0].AsInteger  := iCID;
        cdsUpdateKSEI.Params[1].AsInteger  := 42;
        cdsUpdateKSEI.Params[2].AsDateTime := Now;
        cdsUpdateKSEI.Params[3].AsString   := dmGlobal.UserID;
        cdsUpdateKSEI.Execute;

//        dmGlobal.RemoteServer.UpdateAckActivity(43, iCID);
      end
      else if cdsRDNRequestCLIENTTYPE.AsInteger = 2 then
      begin
        cdsUpdateKSEI.Close;
        cdsUpdateKSEI.Params[0].AsInteger  := iCID;
        cdsUpdateKSEI.Params[1].AsInteger  := 4200;
        cdsUpdateKSEI.Params[2].AsDateTime := Now;
        cdsUpdateKSEI.Params[3].AsString   := dmGlobal.UserID;
        cdsUpdateKSEI.Execute;

//        dmGlobal.RemoteServer.UpdateAckActivity(4300, iCID);
      end;
    end;

  end;
end;

procedure TfrmRDNRequest.actGenerateFileExecute(Sender: TObject);
var
  sFileName: string;
begin
  inherited;
  sFileName := GetCurrentDir+'\Temp\RDN-'+dsRDNRequest.DataSet.FieldByName('BANKNAME').AsString+'-'+dsRDNRequest.DataSet.FieldByName('CLIENTNAME').AsString+'.pdf';

  if not FileExists(sFileName) then
  begin
    cdsGenerateRDNReport.Close;
    cdsGenerateRDNReport.Params[0].AsInteger := cdsRDNRequestCID.AsInteger;
    cdsGenerateRDNReport.Open;

    frxPDFExport1.FileName   := sFileName;
    frxPDFExport1.ShowDialog := False;

    rptPDF.LoadFromFile('Report\OA'+dsRDNRequest.DataSet.FieldByName('BANKNAME').AsString+'.fr3');
    rptPDF.PrepareReport(True);
    rptPDF.Export(frxPDFExport1);

    if FileExists(sFileName) then
    begin
      MessageDlg('File ' + QuotedStr(sFileName) + ' Generated Successfully.', mtInformation, [mbOk], 0);
    end;
  end
  else
  begin
    MessageDlg('File ' + QuotedStr(sFileName) + ' already exist...', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmRDNRequest.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsRDNRequest.Close;
  cdsRDNRequest.Open;
end;

procedure TfrmRDNRequest.actUpdateFromKSEIDataExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Do you want to update all data from KSEI Data Uploaded?', mtInformation, mbYesNo, 0) = mrYes then
  begin
    cdsKSEIRequestByCID.Close;
    cdsKSEIRequestByCID.Params[0].AsInteger := cdsRDNRequestCID.AsInteger;
    cdsKSEIRequestByCID.Open;

    cdsKSEIRDNCompare.Close;
    cdsKSEIRDNCompare.Params[0].AsString := cdsKSEIRequestByCIDIDREFF.AsString;
    cdsKSEIRDNCompare.Open;

    if cdsKSEIRDNCompare.IsEmpty then
    begin
      ShowMessage('This Opening Account Doesn''t exists in KSEI Data Uploaded!');
    end
    else
    begin
      cdsRDNRequest.Edit;
      cdsRDNRequestBANKNAME.AsString := cdsKSEIRDNCompareBANK.AsString;
      cdsRDNRequestRDNACCNO.AsString := cdsKSEIRDNCompareRDN.AsString;
      if (cdsRDNRequestRDNACCNO.IsNull) or (Trim(cdsRDNRequestRDNACCNO.AsString) = '') then
        cdsRDNRequestRDNSTATUS.AsString := '0'
      else
      begin
        cdsRDNRequestRDNSTATUS.AsString := '1';
        cdsRDNRequestRDNDATE.AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
      end;
      cdsRDNRequest.Post;

      ShowMessage('Data was updated based on KSEI Data Uploaded');
    end;
  end;
end;

procedure TfrmRDNRequest.actUpdateRDNAccountExecute(Sender: TObject);
var
  oForm: TForm;
  iCID: Integer;
begin
  inherited;
  oForm := TfrmRDNRequests.Create(nil);

  iCID := cdsRDNRequestCID.AsInteger;
  cdsRDNRequest.Edit;
  if oForm.ShowModal = mrOk then
  begin
    if (cdsRDNRequestRDNACCNO.IsNull) or (cdsRDNRequestRDNACCNO.AsString = '') then
      cdsRDNRequestRDNSTATUS.AsString := '0'
    else
    begin
      cdsRDNRequestRDNDATE.AsDateTime := Date;
      cdsRDNRequestRDNSTATUS.AsString := '1';
    end;
    cdsRDNRequest.Post;
  end
  else
    cdsRDNRequest.Cancel;

  oForm.Free;
end;

procedure TfrmRDNRequest.actUpdateRDNAccountUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsRDNRequestISCOMPLETE.AsString <> '1';
end;

procedure TfrmRDNRequest.actViewReportExecute(Sender: TObject);
var
  oDataSet: TDataSet;
  sBankCode: string;
  sReportFile: string;
begin
  inherited;
  oDataSet := dsRDNRequest.DataSet;

  cdsGenerateRDNReport.Close;
  cdsGenerateRDNReport.Params[0].AsInteger := oDataSet.FieldByName('CID').AsInteger;
  cdsGenerateRDNReport.Open;

  sBankCode := oDataSet.FieldByName('BANKNAME').AsString;

  rcRDN.ReportFile := 'Report\OA'+sBankCode+'.fr3';

  sReportFile := ExtractFilePath(Application.ExeName) +  rcRDN.ReportFile;
  if not FileExists(sReportFile) then
  begin
    Exit;
  end;

  rcRDN.ExecuteReport;
end;

procedure TfrmRDNRequest.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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

procedure TfrmRDNRequest.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBranch.Close;
    cdsLuBranch.Open;

    cdsLuBank.Close;
    cdsLuBank.Open;

    cdsLuBankRDN.Close;
    cdsLuBankRDN.Open;
  end;

  cdsRDNRequest.Close;
  cdsRDNRequest.Open;
end;

procedure TfrmRDNRequest.rcRDNPrepareData(AFormParam: TForm);
begin
  inherited;

  cdsGenerateRDNReport.Close;
  cdsGenerateRDNReport.Params[0].AsInteger := cdsRDNRequestCID.AsInteger;
  cdsGenerateRDNReport.Open;

end;

initialization
  RegisterClass(TfrmRDNRequest);

end.
