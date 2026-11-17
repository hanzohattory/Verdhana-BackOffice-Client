unit FormOpeningAccountIns;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxPCdxBarPopupMenu, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxButtonEdit, cxBlobEdit, cxGridDBTableView, cxCheckGroup,
  cxDBCheckGroup, cxGroupBox, cxRadioGroup, cxDBEdit, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxImageComboBox, cxPC, Datasnap.DBClient, NClientDataset,
  Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, ClassClientConst, cxCheckBox, cxLabel, cxSpinEdit,
  dxBarBuiltInMenu, cxGridViewLayoutContainer, dxLayoutLookAndFeels,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmOpeningAccountIns = class(TfrmEditorData)
    cdsOA: TNClientDataset;
    cdsOAOAID: TIntegerField;
    cdsOAOACODE: TStringField;
    cdsOACUST_TYPE: TIntegerField;
    cdsOABRANCHID: TLargeintField;
    cdsOASALESID: TLargeintField;
    cdsOAENTNAME: TStringField;
    cdsOAFIRSTNAME: TStringField;
    cdsOAMIDDLENAME: TStringField;
    cdsOALASTNAME: TStringField;
    cdsOAENTDESC: TStringField;
    cdsOACREATEDATE: TDateTimeField;
    cdsOAENTSTATUS: TStringField;
    cdsOABUSSTYPEID: TLargeintField;
    cdsOAENTTYPE: TStringField;
    cdsOAINVESTORCAT: TStringField;
    cdsOAENTACCTYPE: TStringField;
    cdsOAAFFIL: TBooleanField;
    cdsOAKTP: TStringField;
    cdsOAKTP_EXPDATE: TDateField;
    cdsOANPWP: TStringField;
    cdsOANPWP_REGDATE: TDateField;
    cdsOAPASSPORT: TStringField;
    cdsOAPASSPORT_EXPDATE: TDateField;
    cdsOAKITAS: TStringField;
    cdsOAKITAS_EXPDATE: TDateField;
    cdsOARET_OCCUPATION: TStringField;
    cdsOARET_JOBTITTLE: TStringField;
    cdsOARET_COMPANYNAME: TStringField;
    cdsOARET_BIRTDATE: TDateField;
    cdsOARET_BIRTHPLACE: TStringField;
    cdsOARET_GENDER: TStringField;
    cdsOARET_MARITALSTATUS: TStringField;
    cdsOARET_SPOUSENAME: TStringField;
    cdsOARET_HEIRNAME: TStringField;
    cdsOARET_HEIRRELATION: TStringField;
    cdsOARET_EDUBACKGROUND: TStringField;
    cdsOASOURCEFUND: TStringField;
    cdsOASOURCEFUNDKSEI: TStringField;
    cdsOASOURCEFUNDOTHERS: TStringField;
    cdsOAINVESTOBJECTIVE: TStringField;
    cdsOAINVESTOBJECTIVEKSEI: TStringField;
    cdsOAINVESTEXP: TStringField;
    cdsOAANUALINCOME: TStringField;
    cdsOAESTDAILYTRADE: TStringField;
    cdsOAINS_DATEOFESTABLIZED: TDateField;
    cdsOAINS_DATEOFGAZETTE: TDateField;
    cdsOAINS_NOOFGAZETTE: TStringField;
    cdsOAINS_COMPTYPE: TStringField;
    cdsOAINS_TOTALASET: TStringField;
    cdsOACNTREST: TStringField;
    cdsOACNTCITIZEN: TStringField;
    cdsOACNTINVESTMENT: TStringField;
    cdsOASIDNO: TStringField;
    cdsOATAXID: TStringField;
    cdsOAINS_BUSSTYPE: TStringField;
    cdsOAINVS_TYPE: TStringField;
    cdsOAENTINIT: TStringField;
    cdsOACUSTODYCODE: TStringField;
    cdsOAHOBBIES: TStringField;
    cdsOAANNUAL_NET_PROFIT: TIntegerField;
    cdsOATOTAL_ASSET: TIntegerField;
    cdsOAINVS_OBJ: TIntegerField;
    cdsOAINVS_OBJ_OTHER: TStringField;
    cdsOAOCCUPATION: TIntegerField;
    cdsOAOCCUPATION_OTHER: TStringField;
    cdsOACOMPANY: TStringField;
    cdsOAFIELD_WORK: TStringField;
    cdsOAFIELD_WORK_DESC: TStringField;
    cdsOAPOSITION: TStringField;
    cdsOAJOB_DIVISION: TStringField;
    cdsOAYOS_MONTH: TStringField;
    cdsOAYOS_YEAR: TStringField;
    cdsOACOMPANY_PHONE: TStringField;
    cdsOACOMPANY_PHONE_EXT: TStringField;
    cdsOACOMPANY_ADDRESS: TStringField;
    cdsOAANNUAL_INCOME: TIntegerField;
    cdsOAANNUAL_INCOME_SOURCE: TLargeintField;
    cdsOAANNUAL_INCOME_SOURCE_OTHER: TStringField;
    cdsOAADD_INCOME: TIntegerField;
    cdsOAADD_INCOME_SOURCE: TIntegerField;
    cdsOAADD_INCOME_SOURCE_OTHER: TStringField;
    cdsOANAT_BUSINESS_ENTREPRENEUR: TStringField;
    cdsOAMOTHER_NAME: TStringField;
    cdsOARELIGION: TStringField;
    cdsOATAXPAYER_STATUS: TIntegerField;
    cdsOARISK: TStringField;
    cdsOAGU_NAME: TStringField;
    cdsOAGU_HUB: TIntegerField;
    cdsOAGU_ID_NO: TStringField;
    cdsOAGU_ID_EXP: TDateTimeField;
    cdsOAGU_TAXPAYER_NO: TStringField;
    cdsOAGU_NATIONALITY: TStringField;
    cdsOAGU_POB: TStringField;
    cdsOAGU_DOB: TDateTimeField;
    cdsOAGU_MATIAL_STATUS: TIntegerField;
    cdsOAGU_EMAIL: TStringField;
    cdsOAGU_HANDPHONE: TStringField;
    cdsOAGU_FAX: TStringField;
    cdsOAGU_ADDRESS: TStringField;
    cdsOAGU_CITY: TStringField;
    cdsOAGU_POSTALCODE: TStringField;
    cdsOAGU_PROVINCE: TStringField;
    cdsOAGU_COUNTRY: TStringField;
    cdsOAGU_PHONE: TStringField;
    cdsOAGU_ADDRESS2: TStringField;
    cdsOAGU_CITY2: TStringField;
    cdsOAGU_POSTALCODE2: TStringField;
    cdsOAGU_PROVICE2: TStringField;
    cdsOAGU_COUNTRY2: TStringField;
    cdsOAGU_PHONE2: TStringField;
    cdsOAGU_JOBS: TStringField;
    cdsOAGU_LAST_POSITION: TStringField;
    cdsOAGU_JOBS_COMPANY: TStringField;
    cdsOAGU_JOBS_COMPANY_TYPE: TStringField;
    cdsOAGU_JOBS_ADDRESS: TStringField;
    cdsOAGU_JOBS_CITY: TStringField;
    cdsOAGU_JOBS_POSTALCODE: TStringField;
    cdsOAGU_JOBS_PHONE: TStringField;
    cdsOAGU_JOBS_FAX: TStringField;
    cdsOAGU_JOBS_FUND_SOURCE: TStringField;
    cdsOAGU_JOBS_FUND_SOURCE_OT: TStringField;
    cdsOAGU_JOBS_ANNUAL_SALARY: TIntegerField;
    cdsOAGU_JOBS_MARITAL_STATUS: TIntegerField;
    cdsOAGU_CELLPHONE: TStringField;
    cdsOAGU_MAIDEN_MOTHER: TStringField;
    cdsOACHKGUCURRADR: TStringField;
    cdsOACLIENT_STATUS: TIntegerField;
    cdsOASIUP_NO: TStringField;
    cdsOATDP_NO: TStringField;
    cdsOATDP_REG_DATE: TStringField;
    cdsOATDP_INVALID_DATE: TDateTimeField;
    cdsOAAPPROVER_HAM_MINISTRI: TStringField;
    cdsOAANNOUNC_STATE_GAZELLE: TStringField;
    cdsOATAX_REG_CHK: TIntegerField;
    cdsOATAS_REG_DATE: TDateTimeField;
    cdsOABUSINESS_ENTITY_CHK: TIntegerField;
    cdsOABUSINESS_ENTITY_OTHER: TStringField;
    cdsOABUSINESS_LINE_CHK: TIntegerField;
    cdsOABUSINESS_LINE_OTHER: TStringField;
    cdsOACOMPANY_CHARACTER_CHK: TIntegerField;
    cdsOACOMPANY_CHARACTER_OTHER: TStringField;
    cdsOAOFFC_ADDR_ASSKDP: TStringField;
    cdsOAOFFC_CITY: TStringField;
    cdsOAOFFC_ZIPCODE: TStringField;
    cdsOAOFFC_COUNTRY: TStringField;
    cdsOACORESP_ADDR: TStringField;
    cdsOACORESP_CITY: TStringField;
    cdsOACORESP_ZIPCODE: TStringField;
    cdsOACORESP_COUNTRY: TStringField;
    cdsOAOFFC_BUILD_STATUS: TIntegerField;
    cdsOAOFFC_LENGTH_COREPON: TIntegerField;
    cdsOAOFFC_PHONE_NO: TStringField;
    cdsOAOFFC_FAX_NO: TStringField;
    cdsOAEMAIL_CHK: TIntegerField;
    cdsOAEMAIL_ADDR: TStringField;
    cdsOAOFCC_FAX_CHK: TIntegerField;
    cdsOAOFFC_FAX_NO_OTHER: TStringField;
    cdsOASWIFTCODE: TStringField;
    cdsOAACC_TYPE_SEC: TIntegerField;
    cdsOACOMP_ESTABLISH_DATE: TDateTimeField;
    cdsOACOMP_ESTABLISH_PLACE: TStringField;
    cdsOADEED_ESTABLISH_DATE: TDateTimeField;
    cdsOADEED_ESTABLISH_PLACE: TStringField;
    cdsOANOTARY: TStringField;
    cdsOATAXPAYER_REG: TStringField;
    cdsOAEDU_BACKGOUND_OTHER: TStringField;
    cdsOABUS_CAT_ID: TLargeintField;
    cdsOAGU_LEGALRELATION: TStringField;
    cdsOAMODDA: TDateTimeField;
    cdsOAMODUI: TStringField;
    cdsOAAPPDA: TDateTimeField;
    cdsOAAPPUI: TStringField;
    cdsOAUNDER4Y: TIntegerField;
    cdsOAUNDER4YDA: TDateTimeField;
    cdsOANOTES4Y: TStringField;
    cdsOAISDEL: TIntegerField;
    cdsOAID: TLargeintField;
    cdsOAINVESTOR_ASSET_1: TStringField;
    cdsOAINVESTOR_ASSET_2: TStringField;
    cdsOAINVESTOR_ASSET_3: TStringField;
    cdsOAINVESTOR_OPERATING_PROFIT_1: TStringField;
    cdsOAINVESTOR_OPERATING_PROFIT_2: TStringField;
    cdsOAINVESTOR_OPERATING_PROFIT_3: TStringField;
    cdsOAFATCA_A1: TStringField;
    cdsOAFATCA_A1_DESC: TStringField;
    cdsOAFATCA_A2: TStringField;
    cdsOAFATCA_A2_DESC: TStringField;
    cdsOAFATCA_A3: TStringField;
    cdsOAFATCA_A3_DESC: TStringField;
    cdsOAFATCA_B1: TStringField;
    cdsOAFATCA_B2: TStringField;
    cdsOAFATCA_B3: TStringField;
    cdsOAFATCA_B4: TStringField;
    cdsOAFATCA_B5: TStringField;
    cdsOAFATCA_B6: TStringField;
    cdsOAFATCA_B2_DESC: TStringField;
    cdsOAARTICLE_ASSOCIATION: TStringField;
    cdsOAASSET_OWNER: TStringField;
    cdsOASUPPLEMENTARY_DOCTYPE: TStringField;
    cdsOASUPPLEMENTARY_DOCEXP: TDateField;
    cdsOAPRDCODE: TStringField;
    cdsOAACCID: TIntegerField;
    cdsOAEXISTING_CLIENT: TStringField;
    cdsOAPARENT_ACCID: TIntegerField;
    cdsOAqryOACustody: TDataSetField;
    cdsOAqryOABank: TDataSetField;
    cdsOAqryOAAuth: TDataSetField;
    cdsOAqryOATrackInfo: TDataSetField;
    cdsOAqryOASHL: TDataSetField;
    cdsOAqryOADOC: TDataSetField;
    cdsOAqryOABOD: TDataSetField;
    cdsOAqryOAAddress: TDataSetField;
    dsAddress: TDataSource;
    dsDocument: TDataSource;
    cdsOAAddress: TNClientDataset;
    cdsOAAddressOAID: TIntegerField;
    cdsOAAddressADDRTYPE: TStringField;
    cdsOAAddressCOUNTCODE: TStringField;
    cdsOAAddressPROVCODE: TStringField;
    cdsOAAddressCITY: TStringField;
    cdsOAAddressADDRESS1: TStringField;
    cdsOAAddressADDRESS2: TStringField;
    cdsOAAddressADDRESS3: TStringField;
    cdsOAAddressZIPCODE: TStringField;
    cdsOAAddressPHONE: TStringField;
    cdsOAAddressMOBILEPHONE: TStringField;
    cdsOAAddressEMAIL: TStringField;
    cdsOAAddressFAX: TStringField;
    cdsOAAddressMODDA: TDateTimeField;
    cdsOAAddressMODUI: TStringField;
    cdsOAAddressAPPDA: TDateTimeField;
    cdsOAAddressAPPUI: TStringField;
    cdsOAAddressUNDER4Y: TIntegerField;
    cdsOAAddressUNDER4YDA: TDateTimeField;
    cdsOAAddressNOTES4Y: TStringField;
    cdsOAAddressISDEL: TIntegerField;
    cdsOAAddressID: TLargeintField;
    cdsOADOC: TNClientDataset;
    cdsOADOCOAID: TIntegerField;
    cdsOADOCSEQNO: TIntegerField;
    cdsOADOCDOCTYPE: TStringField;
    cdsOADOCDOCDESC: TStringField;
    cdsOADOCISEXPIRE: TStringField;
    cdsOADOCEXPIREDATE: TDateField;
    cdsOADOCDOCOBJECT: TBlobField;
    cdsOADOCDOCFILENAME: TStringField;
    cdsOADOCMODDA: TDateTimeField;
    cdsOADOCMODUI: TStringField;
    cdsOADOCAPPDA: TDateTimeField;
    cdsOADOCAPPUI: TStringField;
    cdsOADOCUNDER4Y: TIntegerField;
    cdsOADOCUNDER4YDA: TDateTimeField;
    cdsOADOCNOTES4Y: TStringField;
    cdsOADOCISDEL: TIntegerField;
    cdsOADOCID: TLargeintField;
    cdsOADOCNOTES: TStringField;
    cdsOADOCTOKEN: TStringField;
    cdsOADOCUPLOADEDON: TDateTimeField;
    cdsOADOCUPLOADEDBY: TStringField;
    dsTrackInfo: TDataSource;
    dsBank: TDataSource;
    dsCustody: TDataSource;
    cdsOACustody: TNClientDataset;
    cdsOACustodyOAID: TIntegerField;
    cdsOACustodySEQID: TIntegerField;
    cdsOACustodyCUSTODYCODE: TStringField;
    cdsOACustodyCUSTODYACCNO: TStringField;
    cdsOACustodyCUSTODYACCNAME: TStringField;
    cdsOACustodyCUSTODYBRANCH: TStringField;
    cdsOACustodyMODDA: TDateTimeField;
    cdsOACustodyMODUI: TStringField;
    cdsOACustodyAPPDA: TDateTimeField;
    cdsOACustodyAPPUI: TStringField;
    cdsOACustodyUNDER4Y: TIntegerField;
    cdsOACustodyUNDER4YDA: TDateTimeField;
    cdsOACustodyNOTES4Y: TStringField;
    cdsOACustodyISDEL: TIntegerField;
    cdsOACustodyID: TLargeintField;
    cdsOABank: TNClientDataset;
    cdsOABankOAID: TIntegerField;
    cdsOABankSEQID: TIntegerField;
    cdsOABankCCYCODE: TStringField;
    cdsOABankBANKCODE: TStringField;
    cdsOABankBANKACCNO: TStringField;
    cdsOABankBANKACCNAME: TStringField;
    cdsOABankBANKBRANCH: TStringField;
    cdsOABankMODDA: TDateTimeField;
    cdsOABankMODUI: TStringField;
    cdsOABankAPPDA: TDateTimeField;
    cdsOABankAPPUI: TStringField;
    cdsOABankUNDER4Y: TIntegerField;
    cdsOABankUNDER4YDA: TDateTimeField;
    cdsOABankNOTES4Y: TStringField;
    cdsOABankISDEL: TIntegerField;
    cdsOABankID: TLargeintField;
    cdsOATrackInfo: TNClientDataset;
    cdsOATrackInfoOAID: TIntegerField;
    cdsOATrackInfoSEQNO: TIntegerField;
    cdsOATrackInfoINFODATE: TDateTimeField;
    cdsOATrackInfoINFOTYPE: TStringField;
    cdsOATrackInfoINFOLEVEL: TStringField;
    cdsOATrackInfoNOTES: TStringField;
    cdsOATrackInfoMODDA: TDateTimeField;
    cdsOATrackInfoMODUI: TStringField;
    cdsOATrackInfoAPPDA: TDateTimeField;
    cdsOATrackInfoAPPUI: TStringField;
    cdsOATrackInfoUNDER4Y: TIntegerField;
    cdsOATrackInfoUNDER4YDA: TDateTimeField;
    cdsOATrackInfoNOTES4Y: TStringField;
    cdsOATrackInfoISDEL: TIntegerField;
    cdsOATrackInfoID: TLargeintField;
    odDocs: TOpenDialog;
    dsSHL: TDataSource;
    dsBOD: TDataSource;
    dsAuth: TDataSource;
    cdsOAAuth: TNClientDataset;
    cdsOABOD: TNClientDataset;
    cdsOASHL: TNClientDataset;
    cdsOAAuthOAID: TIntegerField;
    cdsOAAuthAUTH_PERSON_FIRSTNAME: TStringField;
    cdsOAAuthAUTH_PERSON_MIDDLENAME: TStringField;
    cdsOAAuthAUTH_PERSON_LASTNAME: TStringField;
    cdsOAAuthAUTH_PERSON_POSITION: TStringField;
    cdsOAAuthAUTH_PERSON_KTP: TStringField;
    cdsOAAuthAUTH_PERSON_KTP_EXPDATE: TDateField;
    cdsOAAuthAUTH_PERSON_NPWP: TStringField;
    cdsOAAuthAUTH_PERSON_NPWP_REGDATE: TDateField;
    cdsOAAuthAUTH_PERSON_PASSPORT: TStringField;
    cdsOAAuthAUTH_PERSON_PASSPORT_EXPDATE: TDateField;
    cdsOAAuthAUTH_PERSON_KITAS: TStringField;
    cdsOAAuthAUTH_PERSON_KITAS_EXPDATE: TDateField;
    cdsOAAuthAUTH_SEX: TStringField;
    cdsOAAuthAUTH_PAYCOLL: TBooleanField;
    cdsOAAuthAUTH_STOCKCOLL: TBooleanField;
    cdsOAAuthAUTH_PLACEORDER: TBooleanField;
    cdsOAAuthAUTH_NOTES: TStringField;
    cdsOAAuthMODDA: TDateTimeField;
    cdsOAAuthMODUI: TStringField;
    cdsOAAuthAPPDA: TDateTimeField;
    cdsOAAuthAPPUI: TStringField;
    cdsOAAuthUNDER4Y: TIntegerField;
    cdsOAAuthUNDER4YDA: TDateTimeField;
    cdsOAAuthNOTES4Y: TStringField;
    cdsOAAuthISDEL: TIntegerField;
    cdsOAAuthID: TLargeintField;
    cdsOABODOAID: TIntegerField;
    cdsOABODSEQNO: TIntegerField;
    cdsOABODBODNAME: TStringField;
    cdsOABODIDCARDTYPE: TStringField;
    cdsOABODIDCARDNUM: TStringField;
    cdsOABODMODDA: TDateTimeField;
    cdsOABODMODUI: TStringField;
    cdsOABODAPPDA: TDateTimeField;
    cdsOABODAPPUI: TStringField;
    cdsOABODUNDER4Y: TIntegerField;
    cdsOABODUNDER4YDA: TDateTimeField;
    cdsOABODNOTES4Y: TStringField;
    cdsOABODISDEL: TIntegerField;
    cdsOABODID: TLargeintField;
    cdsOABODBOD_POSITION: TStringField;
    cdsOABODBOD_CELLPHONE: TStringField;
    cdsOABODBOD_EMAIL: TStringField;
    cdsOABODBOD_NATIONALITY: TStringField;
    cdsOABODBOD_ID_NO: TStringField;
    cdsOABODBOD_VALID_ID: TDateTimeField;
    cdsOASHLOAID: TIntegerField;
    cdsOASHLSEQNO: TIntegerField;
    cdsOASHLSHLNAME: TStringField;
    cdsOASHLSHLPERCENT: TFloatField;
    cdsOASHLMODDA: TDateTimeField;
    cdsOASHLMODUI: TStringField;
    cdsOASHLAPPDA: TDateTimeField;
    cdsOASHLAPPUI: TStringField;
    cdsOASHLUNDER4Y: TIntegerField;
    cdsOASHLUNDER4YDA: TDateTimeField;
    cdsOASHLNOTES4Y: TStringField;
    cdsOASHLISDEL: TIntegerField;
    cdsOASHLID: TLargeintField;
    pageEntity: TcxPageControl;
    tabGeneral: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBImageComboBox12: TcxDBImageComboBox;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Item16: TdxLayoutItem;
    dxLayoutControl3Group12: TdxLayoutGroup;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Item13: TdxLayoutItem;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Item26: TdxLayoutItem;
    dxLayoutControl3Item25: TdxLayoutItem;
    dxLayoutControl3Item27: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item17: TdxLayoutItem;
    tabBOD: TcxTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    cxGrid4: TcxGrid;
    gvwBOD: TcxGridDBBandedTableView;
    gvwBODBODNAME: TcxGridDBBandedColumn;
    gvwBODIDCARDTYPE: TcxGridDBBandedColumn;
    gvwBODIDCARDNUM: TcxGridDBBandedColumn;
    gvwBODBOD_POSITION: TcxGridDBBandedColumn;
    gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn;
    gvwBODBOD_EMAIL: TcxGridDBBandedColumn;
    gvwBODBOD_NATIONALITY: TcxGridDBBandedColumn;
    gvwBODBOD_VALID_ID: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid3: TcxGrid;
    gvwSHL: TcxGridDBBandedTableView;
    gvwSHLSHLNAME: TcxGridDBBandedColumn;
    gvwSHLSHLPERCENT: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl5Item2: TdxLayoutItem;
    tabAuthPerson: TcxTabSheet;
    grdAuth: TcxGrid;
    gvwAuth: TcxGridDBBandedTableView;
    gvwAuthAUTH_PERSON_FIRSTNAME: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_MIDDLENAME: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_LASTNAME: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_POSITION: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_KTP: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_KTP_EXPDATE: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_NPWP: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_NPWP_REGDATE: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_PASSPORT: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_PASSPORT_EXPDATE: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_KITAS: TcxGridDBBandedColumn;
    gvwAuthAUTH_PERSON_KITAS_EXPDATE: TcxGridDBBandedColumn;
    gvwAuthAUTH_SEX: TcxGridDBBandedColumn;
    gvwAuthAUTH_PAYCOLL: TcxGridDBBandedColumn;
    gvwAuthAUTH_STOCKCOLL: TcxGridDBBandedColumn;
    gvwAuthAUTH_PLACEORDER: TcxGridDBBandedColumn;
    gvwAuthAUTH_NOTES: TcxGridDBBandedColumn;
    glvAuth: TcxGridDBLayoutView;
    glvAuthAUTH_PERSON_FIRSTNAME: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_MIDDLENAME: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_LASTNAME: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_POSITION: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_KTP: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_KTP_EXPDATE: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_NPWP: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_NPWP_REGDATE: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_PASSPORT: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_PASSPORT_EXPDATE: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_KITAS: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PERSON_KITAS_EXPDATE: TcxGridDBLayoutViewItem;
    glvAuthAUTH_SEX: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PAYCOLL: TcxGridDBLayoutViewItem;
    glvAuthAUTH_STOCKCOLL: TcxGridDBLayoutViewItem;
    glvAuthAUTH_PLACEORDER: TcxGridDBLayoutViewItem;
    glvAuthAUTH_NOTES: TcxGridDBLayoutViewItem;
    glvAuthMODDA: TcxGridDBLayoutViewItem;
    glvAuthMODUI: TcxGridDBLayoutViewItem;
    glvAuthAPPDA: TcxGridDBLayoutViewItem;
    glvAuthAPPUI: TcxGridDBLayoutViewItem;
    glvAuthUNDER4Y: TcxGridDBLayoutViewItem;
    glvAuthUNDER4YDA: TcxGridDBLayoutViewItem;
    glvAuthNOTES4Y: TcxGridDBLayoutViewItem;
    glvAuthISDEL: TcxGridDBLayoutViewItem;
    glvAuthID: TcxGridDBLayoutViewItem;
    dxLayoutGroup7: TdxLayoutGroup;
    glvAuthLayoutItem3: TcxGridLayoutItem;
    glvAuthLayoutItem4: TcxGridLayoutItem;
    glvAuthLayoutItem5: TcxGridLayoutItem;
    glvAuthLayoutItem6: TcxGridLayoutItem;
    glvAuthLayoutItem7: TcxGridLayoutItem;
    glvAuthLayoutItem8: TcxGridLayoutItem;
    glvAuthLayoutItem9: TcxGridLayoutItem;
    glvAuthLayoutItem10: TcxGridLayoutItem;
    glvAuthLayoutItem11: TcxGridLayoutItem;
    glvAuthLayoutItem12: TcxGridLayoutItem;
    glvAuthLayoutItem13: TcxGridLayoutItem;
    glvAuthLayoutItem14: TcxGridLayoutItem;
    glvAuthLayoutItem15: TcxGridLayoutItem;
    glvAuthLayoutItem16: TcxGridLayoutItem;
    glvAuthLayoutItem17: TcxGridLayoutItem;
    glvAuthLayoutItem18: TcxGridLayoutItem;
    glvAuthLayoutItem19: TcxGridLayoutItem;
    glvAuthLayoutItem20: TcxGridLayoutItem;
    glvAuthLayoutItem21: TcxGridLayoutItem;
    glvAuthLayoutItem22: TcxGridLayoutItem;
    glvAuthLayoutItem23: TcxGridLayoutItem;
    glvAuthLayoutItem24: TcxGridLayoutItem;
    glvAuthLayoutItem25: TcxGridLayoutItem;
    glvAuthLayoutItem26: TcxGridLayoutItem;
    glvAuthLayoutItem27: TcxGridLayoutItem;
    glvAuthLayoutItem28: TcxGridLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    glvAuthGroup2: TdxLayoutGroup;
    glvAuthGroup3: TdxLayoutGroup;
    glvAuthGroup4: TdxLayoutGroup;
    glvAuthGroup5: TdxLayoutGroup;
    grdAuthLevel1: TcxGridLevel;
    tabInvestInfo: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBCheckGroup1: TcxDBCheckGroup;
    cxDBCheckGroup2: TcxDBCheckGroup;
    edSourceFundOther: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBImageComboBox6: TcxDBImageComboBox;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBImageComboBox9: TcxDBImageComboBox;
    cxDBImageComboBox10: TcxDBImageComboBox;
    cxDBImageComboBox11: TcxDBImageComboBox;
    cxDBImageComboBox13: TcxDBImageComboBox;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    lcSourceFundOther: TdxLayoutGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutControl4Item11: TdxLayoutItem;
    dxLayoutControl4Item12: TdxLayoutItem;
    dxLayoutControl4Item13: TdxLayoutItem;
    dxLayoutControl4Item14: TdxLayoutItem;
    dxLayoutControl4Item15: TdxLayoutItem;
    tabAddress: TcxTabSheet;
    grdAddress: TcxGrid;
    gvwAddress: TcxGridDBTableView;
    gvwAddressADDRTYPE: TcxGridDBColumn;
    gvwAddressADDRESS1: TcxGridDBColumn;
    gvwAddressADDRESS2: TcxGridDBColumn;
    gvwAddressADDRESS3: TcxGridDBColumn;
    gvwAddressCOUNTCODE: TcxGridDBColumn;
    gvwAddressPROVCODE: TcxGridDBColumn;
    gvwAddressCITY: TcxGridDBColumn;
    gvwAddressZIPCODE: TcxGridDBColumn;
    gvwAddressPHONE: TcxGridDBColumn;
    gvwAddressMOBILEPHONE: TcxGridDBColumn;
    gvwAddressEMAIL: TcxGridDBColumn;
    gvwAddressFAX: TcxGridDBColumn;
    glvAddress: TcxGridDBLayoutView;
    glvAddressCOUNTCODE: TcxGridDBLayoutViewItem;
    glvAddressPROVCODE: TcxGridDBLayoutViewItem;
    glvAddressADDRTYPE: TcxGridDBLayoutViewItem;
    glvAddressADDRESS1: TcxGridDBLayoutViewItem;
    glvAddressADDRESS2: TcxGridDBLayoutViewItem;
    glvAddressADDRESS3: TcxGridDBLayoutViewItem;
    glvAddressCITY: TcxGridDBLayoutViewItem;
    glvAddressZIPCODE: TcxGridDBLayoutViewItem;
    glvAddressPHONE: TcxGridDBLayoutViewItem;
    glvAddressMOBILEPHONE: TcxGridDBLayoutViewItem;
    glvAddressEMAIL: TcxGridDBLayoutViewItem;
    glvAddressFAX: TcxGridDBLayoutViewItem;
    glvAddressMODDA: TcxGridDBLayoutViewItem;
    glvAddressMODUI: TcxGridDBLayoutViewItem;
    glvAddressAPPDA: TcxGridDBLayoutViewItem;
    glvAddressAPPUI: TcxGridDBLayoutViewItem;
    glvAddressUNDER4Y: TcxGridDBLayoutViewItem;
    glvAddressUNDER4YDA: TcxGridDBLayoutViewItem;
    glvAddressNOTES4Y: TcxGridDBLayoutViewItem;
    glvAddressISDEL: TcxGridDBLayoutViewItem;
    glvAddressID: TcxGridDBLayoutViewItem;
    dxLayoutGroup11: TdxLayoutGroup;
    glvAddressLayoutItem3: TcxGridLayoutItem;
    glvAddressLayoutItem4: TcxGridLayoutItem;
    glvAddressLayoutItem5: TcxGridLayoutItem;
    glvAddressLayoutItem6: TcxGridLayoutItem;
    glvAddressLayoutItem7: TcxGridLayoutItem;
    glvAddressLayoutItem8: TcxGridLayoutItem;
    glvAddressLayoutItem9: TcxGridLayoutItem;
    glvAddressLayoutItem10: TcxGridLayoutItem;
    glvAddressLayoutItem11: TcxGridLayoutItem;
    glvAddressLayoutItem12: TcxGridLayoutItem;
    glvAddressLayoutItem13: TcxGridLayoutItem;
    glvAddressLayoutItem14: TcxGridLayoutItem;
    glvAddressLayoutItem15: TcxGridLayoutItem;
    glvAddressLayoutItem16: TcxGridLayoutItem;
    glvAddressLayoutItem17: TcxGridLayoutItem;
    glvAddressLayoutItem18: TcxGridLayoutItem;
    glvAddressLayoutItem19: TcxGridLayoutItem;
    glvAddressLayoutItem20: TcxGridLayoutItem;
    glvAddressLayoutItem21: TcxGridLayoutItem;
    glvAddressLayoutItem22: TcxGridLayoutItem;
    glvAddressLayoutItem23: TcxGridLayoutItem;
    glvAddressGroup3: TdxLayoutGroup;
    grdAddressLevel1: TcxGridLevel;
    tabDocument: TcxTabSheet;
    cxGrid2: TcxGrid;
    gvwDocument: TcxGridDBTableView;
    gvwDocumentDOCTYPE: TcxGridDBColumn;
    gvwDocumentDOCDESC: TcxGridDBColumn;
    gvwDocumentISEXPIRE: TcxGridDBColumn;
    gvwDocumentEXPIREDATE: TcxGridDBColumn;
    gvwDocumentDOCFILENAME: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    tabTrackingInfo: TcxTabSheet;
    cxGrid6: TcxGrid;
    gvwTracking: TcxGridDBTableView;
    gvwTrackingINFODATE: TcxGridDBColumn;
    gvwTrackingINFOTYPE: TcxGridDBColumn;
    gvwTrackingINFOLEVEL: TcxGridDBColumn;
    gvwTrackingNOTES: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl3Item18: TdxLayoutItem;
    cxDBDateEdit8: TcxDBDateEdit;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item19: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl3Item20: TdxLayoutItem;
    cbBranch: TcxDBLookupComboBox;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Item21: TdxLayoutItem;
    cbSales: TcxDBLookupComboBox;
    dxLayoutControl3Item22: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    glvAuthLayoutItem1: TcxGridLayoutItem;
    glvAuthOAID: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem1: TcxGridLayoutItem;
    glvAddressOAID: TcxGridDBLayoutViewItem;
    dxLayoutControl3Item23: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl3Item24: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    cdsOADIRECTSID: TStringField;
    cdsOAKSEI_CLIENT_CODE: TStringField;
    cdsOABICCODE: TStringField;
    cdsOAREQUEST_SUBREK: TStringField;
    cdsOAqryOARDN: TDataSetField;
    cdsOAqryOAKSEI: TDataSetField;
    dsKSEI: TDataSource;
    cdsOAKSEI: TNClientDataset;
    cdsOAKSEIOAID: TIntegerField;
    cdsOAKSEIKSEI_ACC_TYPE: TStringField;
    cdsOAKSEIKSEI_MEMBER_CODE: TStringField;
    cdsOAKSEIKSEI_CLIENT_CODE: TStringField;
    cdsOAKSEIKSEI_LAST_CODE: TStringField;
    cdsOAKSEIKSEI_ACC_NO: TStringField;
    cdsOAKSEISID: TStringField;
    cdsOAKSEIDONEDATE: TDateTimeField;
    cdsOAKSEIMODDA: TDateTimeField;
    cdsOAKSEIMODUI: TStringField;
    cdsOAKSEIAPPDA: TDateTimeField;
    cdsOAKSEIAPPUI: TStringField;
    cdsOAKSEIUNDER4Y: TIntegerField;
    cdsOAKSEIUNDER4YDA: TDateTimeField;
    cdsOAKSEINOTES4Y: TStringField;
    cdsOAKSEIISDEL: TIntegerField;
    cdsOAKSEIID: TLargeintField;
    cdsOARDN: TNClientDataset;
    cdsOARDNOAID: TIntegerField;
    cdsOARDNSEQNO: TIntegerField;
    cdsOARDNCCYCODE: TStringField;
    cdsOARDNBANKCODE: TStringField;
    cdsOARDNBANKACCNO: TStringField;
    cdsOARDNBANKACCNAME: TStringField;
    cdsOARDNBANKBRANCH: TStringField;
    cdsOARDNMODDA: TDateTimeField;
    cdsOARDNMODUI: TStringField;
    cdsOARDNAPPDA: TDateTimeField;
    cdsOARDNAPPUI: TStringField;
    cdsOARDNUNDER4Y: TIntegerField;
    cdsOARDNUNDER4YDA: TDateTimeField;
    cdsOARDNNOTES4Y: TStringField;
    cdsOARDNISDEL: TIntegerField;
    cdsOARDNID: TLargeintField;
    dsRDN: TDataSource;
    tabBankCustody: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwBank: TcxGridDBTableView;
    gvwBankOAID: TcxGridDBColumn;
    gvwBankSEQID: TcxGridDBColumn;
    gvwBankBANKCODE: TcxGridDBColumn;
    gvwBankBANKACCNO: TcxGridDBColumn;
    gvwBankBANKACCNAME: TcxGridDBColumn;
    gvwBankCCYCODE: TcxGridDBColumn;
    gvwBankBANKBRANCH: TcxGridDBColumn;
    gvwBankMODDA: TcxGridDBColumn;
    gvwBankMODUI: TcxGridDBColumn;
    gvwBankAPPDA: TcxGridDBColumn;
    gvwBankAPPUI: TcxGridDBColumn;
    gvwBankUNDER4Y: TcxGridDBColumn;
    gvwBankUNDER4YDA: TcxGridDBColumn;
    gvwBankNOTES4Y: TcxGridDBColumn;
    gvwBankISDEL: TcxGridDBColumn;
    gvwBankID: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    gvwCustody: TcxGridDBTableView;
    gvwCustodyOAID: TcxGridDBColumn;
    gvwCustodySEQID: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH: TcxGridDBColumn;
    gvwCustodyMODDA: TcxGridDBColumn;
    gvwCustodyMODUI: TcxGridDBColumn;
    gvwCustodyAPPDA: TcxGridDBColumn;
    gvwCustodyAPPUI: TcxGridDBColumn;
    gvwCustodyUNDER4Y: TcxGridDBColumn;
    gvwCustodyUNDER4YDA: TcxGridDBColumn;
    gvwCustodyNOTES4Y: TcxGridDBColumn;
    gvwCustodyISDEL: TcxGridDBColumn;
    gvwCustodyID: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    dxLayoutControl6: TdxLayoutControl;
    cxDBCheckBox1: TcxDBCheckBox;
    cxGrid7: TcxGrid;
    gvwRDNRequest: TcxGridDBBandedTableView;
    gvwRDNRequestOAID: TcxGridDBBandedColumn;
    gvwRDNRequestSEQNO: TcxGridDBBandedColumn;
    gvwRDNRequestCCYCODE: TcxGridDBBandedColumn;
    gvwRDNRequestBANKCODE: TcxGridDBBandedColumn;
    gvwRDNRequestBANKACCNO: TcxGridDBBandedColumn;
    gvwRDNRequestBANKACCNAME: TcxGridDBBandedColumn;
    gvwRDNRequestBANKBRANCH: TcxGridDBBandedColumn;
    gvwRDNRequestMODDA: TcxGridDBBandedColumn;
    gvwRDNRequestMODUI: TcxGridDBBandedColumn;
    gvwRDNRequestAPPDA: TcxGridDBBandedColumn;
    gvwRDNRequestAPPUI: TcxGridDBBandedColumn;
    gvwRDNRequestUNDER4Y: TcxGridDBBandedColumn;
    gvwRDNRequestUNDER4YDA: TcxGridDBBandedColumn;
    gvwRDNRequestNOTES4Y: TcxGridDBBandedColumn;
    gvwRDNRequestISDEL: TcxGridDBBandedColumn;
    gvwRDNRequestID: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxGrid8: TcxGrid;
    gvwKSEIRequest: TcxGridDBBandedTableView;
    gvwKSEIRequestOAID: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_ACC_TYPE: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_MEMBER_CODE: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_CLIENT_CODE: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_LAST_CODE: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_ACC_NO: TcxGridDBBandedColumn;
    gvwKSEIRequestSID: TcxGridDBBandedColumn;
    gvwKSEIRequestDONEDATE: TcxGridDBBandedColumn;
    gvwKSEIRequestMODDA: TcxGridDBBandedColumn;
    gvwKSEIRequestMODUI: TcxGridDBBandedColumn;
    gvwKSEIRequestAPPDA: TcxGridDBBandedColumn;
    gvwKSEIRequestAPPUI: TcxGridDBBandedColumn;
    gvwKSEIRequestUNDER4Y: TcxGridDBBandedColumn;
    gvwKSEIRequestUNDER4YDA: TcxGridDBBandedColumn;
    gvwKSEIRequestNOTES4Y: TcxGridDBBandedColumn;
    gvwKSEIRequestISDEL: TcxGridDBBandedColumn;
    gvwKSEIRequestID: TcxGridDBBandedColumn;
    cxGridLevel8: TcxGridLevel;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl5Item3: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl3Item28: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    lcAccNo: TdxLayoutItem;
    dxLayoutControl3Group8: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    lcAccName: TdxLayoutItem;
    cdsOAPARENT_ACCCODE: TStringField;
    cdsOAPARENT_ACCNAME: TStringField;
    dxLayoutControl3Item31: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl6Item1: TdxLayoutItem;
    dxLayoutControl6Group1: TdxLayoutGroup;
    cdsEntity: TNClientDataset;
    cdsEntityENTTID: TIntegerField;
    cdsEntityENTTCODE: TStringField;
    cdsEntityCUST_TYPE: TIntegerField;
    cdsEntityBRANCHID: TLargeintField;
    cdsEntitySALESID: TLargeintField;
    cdsEntityENTNAME: TStringField;
    cdsEntityFIRSTNAME: TStringField;
    cdsEntityMIDDLENAME: TStringField;
    cdsEntityLASTNAME: TStringField;
    cdsEntityENTDESC: TStringField;
    cdsEntityCREATEDATE: TDateTimeField;
    cdsEntityENTSTATUS: TStringField;
    cdsEntityBUSSTYPEID: TLargeintField;
    cdsEntityENTTYPE: TStringField;
    cdsEntityINVESTORCAT: TStringField;
    cdsEntityENTACCTYPE: TStringField;
    cdsEntityAFFIL: TBooleanField;
    cdsEntityKTP: TStringField;
    cdsEntityKTP_EXPDATE: TDateField;
    cdsEntityNPWP: TStringField;
    cdsEntityNPWP_REGDATE: TDateField;
    cdsEntityPASSPORT: TStringField;
    cdsEntityPASSPORT_EXPDATE: TDateField;
    cdsEntityKITAS: TStringField;
    cdsEntityKITAS_EXPDATE: TDateField;
    cdsEntityRET_OCCUPATION: TStringField;
    cdsEntityRET_JOBTITTLE: TStringField;
    cdsEntityRET_COMPANYNAME: TStringField;
    cdsEntityRET_BIRTDATE: TDateField;
    cdsEntityRET_BIRTHPLACE: TStringField;
    cdsEntityRET_GENDER: TStringField;
    cdsEntityRET_MARITALSTATUS: TStringField;
    cdsEntityRET_SPOUSENAME: TStringField;
    cdsEntityRET_HEIRNAME: TStringField;
    cdsEntityRET_HEIRRELATION: TStringField;
    cdsEntityRET_EDUBACKGROUND: TStringField;
    cdsEntitySOURCEFUND: TStringField;
    cdsEntitySOURCEFUNDKSEI: TStringField;
    cdsEntitySOURCEFUNDOTHERS: TStringField;
    cdsEntityINVESTOBJECTIVE: TStringField;
    cdsEntityINVESTOBJECTIVEKSEI: TStringField;
    cdsEntityINVESTEXP: TStringField;
    cdsEntityANUALINCOME: TStringField;
    cdsEntityESTDAILYTRADE: TStringField;
    cdsEntityINS_DATEOFESTABLIZED: TDateField;
    cdsEntityINS_DATEOFGAZETTE: TDateField;
    cdsEntityINS_NOOFGAZETTE: TStringField;
    cdsEntityINS_COMPTYPE: TStringField;
    cdsEntityINS_TOTALASET: TStringField;
    cdsEntityCNTREST: TStringField;
    cdsEntityCNTCITIZEN: TStringField;
    cdsEntityCNTINVESTMENT: TStringField;
    cdsEntitySIDNO: TStringField;
    cdsEntityTAXID: TStringField;
    cdsEntityINS_BUSSTYPE: TStringField;
    cdsEntityINVS_TYPE: TStringField;
    cdsEntityENTINIT: TStringField;
    cdsEntityCUSTODYCODE: TStringField;
    cdsEntityHOBBIES: TStringField;
    cdsEntityANNUAL_NET_PROFIT: TIntegerField;
    cdsEntityTOTAL_ASSET: TIntegerField;
    cdsEntityINVS_OBJ: TIntegerField;
    cdsEntityINVS_OBJ_OTHER: TStringField;
    cdsEntityOCCUPATION: TIntegerField;
    cdsEntityOCCUPATION_OTHER: TStringField;
    cdsEntityCOMPANY: TStringField;
    cdsEntityFIELD_WORK: TStringField;
    cdsEntityFIELD_WORK_DESC: TStringField;
    cdsEntityPOSITION: TStringField;
    cdsEntityJOB_DIVISION: TStringField;
    cdsEntityYOS_MONTH: TStringField;
    cdsEntityYOS_YEAR: TStringField;
    cdsEntityCOMPANY_PHONE: TStringField;
    cdsEntityCOMPANY_PHONE_EXT: TStringField;
    cdsEntityCOMPANY_ADDRESS: TStringField;
    cdsEntityANNUAL_INCOME: TIntegerField;
    cdsEntityANNUAL_INCOME_SOURCE: TLargeintField;
    cdsEntityANNUAL_INCOME_SOURCE_OTHER: TStringField;
    cdsEntityADD_INCOME: TIntegerField;
    cdsEntityADD_INCOME_SOURCE: TIntegerField;
    cdsEntityADD_INCOME_SOURCE_OTHER: TStringField;
    cdsEntityNAT_BUSINESS_ENTREPRENEUR: TStringField;
    cdsEntityMOTHER_NAME: TStringField;
    cdsEntityRELIGION: TStringField;
    cdsEntityTAXPAYER_STATUS: TIntegerField;
    cdsEntityRISK: TStringField;
    cdsEntityGU_NAME: TStringField;
    cdsEntityGU_HUB: TIntegerField;
    cdsEntityGU_ID_NO: TStringField;
    cdsEntityGU_TAXPAYER_NO: TStringField;
    cdsEntityGU_NATIONALITY: TStringField;
    cdsEntityGU_POB: TStringField;
    cdsEntityGU_MATIAL_STATUS: TIntegerField;
    cdsEntityGU_EMAIL: TStringField;
    cdsEntityGU_HANDPHONE: TStringField;
    cdsEntityGU_FAX: TStringField;
    cdsEntityGU_ADDRESS: TStringField;
    cdsEntityGU_CITY: TStringField;
    cdsEntityGU_POSTALCODE: TStringField;
    cdsEntityGU_PROVINCE: TStringField;
    cdsEntityGU_COUNTRY: TStringField;
    cdsEntityGU_PHONE: TStringField;
    cdsEntityGU_ADDRESS2: TStringField;
    cdsEntityGU_CITY2: TStringField;
    cdsEntityGU_POSTALCODE2: TStringField;
    cdsEntityGU_PROVICE2: TStringField;
    cdsEntityGU_COUNTRY2: TStringField;
    cdsEntityGU_PHONE2: TStringField;
    cdsEntityGU_JOBS: TStringField;
    cdsEntityGU_LAST_POSITION: TStringField;
    cdsEntityGU_JOBS_COMPANY: TStringField;
    cdsEntityGU_JOBS_COMPANY_TYPE: TStringField;
    cdsEntityGU_JOBS_ADDRESS: TStringField;
    cdsEntityGU_JOBS_CITY: TStringField;
    cdsEntityGU_JOBS_POSTALCODE: TStringField;
    cdsEntityGU_JOBS_PHONE: TStringField;
    cdsEntityGU_JOBS_FAX: TStringField;
    cdsEntityGU_JOBS_FUND_SOURCE: TStringField;
    cdsEntityGU_JOBS_FUND_SOURCE_OT: TStringField;
    cdsEntityGU_JOBS_ANNUAL_SALARY: TIntegerField;
    cdsEntityGU_JOBS_MARITAL_STATUS: TIntegerField;
    cdsEntityGU_CELLPHONE: TStringField;
    cdsEntityGU_MAIDEN_MOTHER: TStringField;
    cdsEntityCHKGUCURRADR: TStringField;
    cdsEntityCLIENT_STATUS: TIntegerField;
    cdsEntitySIUP_NO: TStringField;
    cdsEntityTDP_NO: TStringField;
    cdsEntityTDP_REG_DATE: TStringField;
    cdsEntityTDP_INVALID_DATE: TDateTimeField;
    cdsEntityAPPROVER_HAM_MINISTRI: TStringField;
    cdsEntityANNOUNC_STATE_GAZELLE: TStringField;
    cdsEntityTAX_REG_CHK: TIntegerField;
    cdsEntityTAS_REG_DATE: TDateTimeField;
    cdsEntityBUSINESS_ENTITY_CHK: TIntegerField;
    cdsEntityBUSINESS_ENTITY_OTHER: TStringField;
    cdsEntityBUSINESS_LINE_CHK: TIntegerField;
    cdsEntityBUSINESS_LINE_OTHER: TStringField;
    cdsEntityCOMPANY_CHARACTER_CHK: TIntegerField;
    cdsEntityCOMPANY_CHARACTER_OTHER: TStringField;
    cdsEntityOFFC_ADDR_ASSKDP: TStringField;
    cdsEntityOFFC_CITY: TStringField;
    cdsEntityOFFC_ZIPCODE: TStringField;
    cdsEntityOFFC_COUNTRY: TStringField;
    cdsEntityCORESP_ADDR: TStringField;
    cdsEntityCORESP_CITY: TStringField;
    cdsEntityCORESP_ZIPCODE: TStringField;
    cdsEntityCORESP_COUNTRY: TStringField;
    cdsEntityOFFC_BUILD_STATUS: TIntegerField;
    cdsEntityOFFC_LENGTH_COREPON: TIntegerField;
    cdsEntityOFFC_PHONE_NO: TStringField;
    cdsEntityOFFC_FAX_NO: TStringField;
    cdsEntityEMAIL_CHK: TIntegerField;
    cdsEntityEMAIL_ADDR: TStringField;
    cdsEntityOFCC_FAX_CHK: TIntegerField;
    cdsEntityOFFC_FAX_NO_OTHER: TStringField;
    cdsEntitySWIFTCODE: TStringField;
    cdsEntityACC_TYPE_SEC: TIntegerField;
    cdsEntityCOMP_ESTABLISH_DATE: TDateTimeField;
    cdsEntityCOMP_ESTABLISH_PLACE: TStringField;
    cdsEntityDEED_ESTABLISH_DATE: TDateTimeField;
    cdsEntityDEED_ESTABLISH_PLACE: TStringField;
    cdsEntityNOTARY: TStringField;
    cdsEntityTAXPAYER_REG: TStringField;
    cdsEntityEDU_BACKGOUND_OTHER: TStringField;
    cdsEntityBUS_CAT_ID: TLargeintField;
    cdsEntityGU_LEGALRELATION: TStringField;
    cdsEntityMODDA: TDateTimeField;
    cdsEntityMODUI: TStringField;
    cdsEntityAPPDA: TDateTimeField;
    cdsEntityAPPUI: TStringField;
    cdsEntityUNDER4Y: TIntegerField;
    cdsEntityUNDER4YDA: TDateTimeField;
    cdsEntityNOTES4Y: TStringField;
    cdsEntityISDEL: TIntegerField;
    cdsEntityID: TLargeintField;
    cdsEntityINVESTOR_ASSET_1: TStringField;
    cdsEntityINVESTOR_ASSET_2: TStringField;
    cdsEntityINVESTOR_ASSET_3: TStringField;
    cdsEntityINVESTOR_OPERATING_PROFIT_1: TStringField;
    cdsEntityINVESTOR_OPERATING_PROFIT_2: TStringField;
    cdsEntityINVESTOR_OPERATING_PROFIT_3: TStringField;
    cdsEntityFATCA_A1: TStringField;
    cdsEntityFATCA_A1_DESC: TStringField;
    cdsEntityFATCA_A2: TStringField;
    cdsEntityFATCA_A2_DESC: TStringField;
    cdsEntityFATCA_A3: TStringField;
    cdsEntityFATCA_A3_DESC: TStringField;
    cdsEntityFATCA_B1: TStringField;
    cdsEntityFATCA_B2: TStringField;
    cdsEntityFATCA_B3: TStringField;
    cdsEntityFATCA_B4: TStringField;
    cdsEntityFATCA_B5: TStringField;
    cdsEntityFATCA_B6: TStringField;
    cdsEntityFATCA_B2_DESC: TStringField;
    cdsEntityARTICLE_ASSOCIATION: TStringField;
    cdsEntityASSET_OWNER: TStringField;
    cdsEntitySUPPLEMENTARY_DOCTYPE: TStringField;
    cdsEntitySUPPLEMENTARY_DOCEXP: TDateField;
    cdsEntityqryEntAuth: TDataSetField;
    cdsEntityqryEntTrackInfo: TDataSetField;
    cdsEntityqryEntSHL: TDataSetField;
    cdsEntityqryEntDOC: TDataSetField;
    cdsEntityqryEntBOD: TDataSetField;
    cdsEntityqryEntAddress: TDataSetField;
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
    cdsAccountISUSEWHT: TStringField;
    cdsAccountISUSEOTC: TStringField;
    cdsAccountISOWNCONTACT: TStringField;
    cdsAccountISTRDACCOUNT: TStringField;
    cdsAccountAUTO_SETTLE: TStringField;
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
    cdsAccountTRF_PRVT_BANK: TStringField;
    cdsAccountTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccountCCCLS_ID: TLargeintField;
    cdsAccountCC_TYPE: TStringField;
    cdsAccountCR_VAL: TFloatField;
    cdsAccountBUY_LIMIT: TFloatField;
    cdsAccountSELL_LIMIT: TFloatField;
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
    cdsAccountACCPASSWORD: TStringField;
    cdsAccountCPID: TIntegerField;
    cdsAccountBUS_CAT: TLargeintField;
    cdsAccountINIT_DEPOSIT_FUND: TFloatField;
    cdsAccountINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccountALLOC_TYPE: TStringField;
    cdsAccountTC_BASE: TStringField;
    cdsAccountAUTO_ALLOC: TStringField;
    cdsAccountDT_AUTOAVGPRICE: TStringField;
    cdsAccountSETTLE_MODE: TStringField;
    cdsAccountNET_SETTLE: TStringField;
    cdsAccountSETTLE_TYPE: TStringField;
    cdsAccountDIVIDEN_TAX: TFloatField;
    cdsAccountDORMANT: TStringField;
    cdsAccountRISK: TStringField;
    cdsAccountEXCELL_CLASS: TIntegerField;
    cdsAccountMODDA: TDateTimeField;
    cdsAccountMODUI: TStringField;
    cdsAccountAPPDA: TDateTimeField;
    cdsAccountAPPUI: TStringField;
    cdsAccountUNDER4Y: TIntegerField;
    cdsAccountUNDER4YDA: TDateTimeField;
    cdsAccountNOTES4Y: TStringField;
    cdsAccountISDEL: TIntegerField;
    cdsAccountID: TLargeintField;
    cdsAccountqryAccountInterest: TDataSetField;
    cdsAccountqryAccountContact: TDataSetField;
    cdsAccountqryAccountExtRef: TDataSetField;
    cdsAccountqryAccountCharge: TDataSetField;
    cdsAccountqryAccountComm: TDataSetField;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl6Item2: TdxLayoutItem;
    cdsOAAuthSEQNO: TIntegerField;
    glvAuthLayoutItem2: TcxGridLayoutItem;
    glvAuthSEQNO: TcxGridDBLayoutViewItem;
    cdsOAAddressADDR_REF: TStringField;
    cdsOAAddressADDRTYPE_REF: TStringField;
    glvAddressLayoutItem2: TcxGridLayoutItem;
    glvAddressADDR_REF: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem24: TcxGridLayoutItem;
    glvAddressADDRTYPE_REF: TcxGridDBLayoutViewItem;
    glvAddressGroup1: TdxLayoutGroup;
    tabKYC: TcxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    Label1: TLabel;
    KYC21: TcxDBTextEdit;
    KYC1: TcxDBImageComboBox;
    KYC11: TcxDBTextEdit;
    KYC2: TcxDBImageComboBox;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBImageComboBox14: TcxDBImageComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBImageComboBox15: TcxDBImageComboBox;
    cxDBImageComboBox16: TcxDBImageComboBox;
    cxDBImageComboBox17: TcxDBImageComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutControl4Item20: TdxLayoutItem;
    dxLayoutControl4Item31: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutControl4Item16: TdxLayoutItem;
    dxLayoutControl4Group15: TdxLayoutGroup;
    dxLayoutControl4Group8: TdxLayoutGroup;
    dxLayoutControl6Group2: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutControl6Group4: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutControl6Item4: TdxLayoutItem;
    dxLayoutControl6Item5: TdxLayoutItem;
    dxLayoutControl6Item6: TdxLayoutItem;
    dxLayoutControl6Group5: TdxLayoutGroup;
    dxLayoutControl6Item7: TdxLayoutItem;
    dxLayoutControl6Item8: TdxLayoutItem;
    dxLayoutControl6Item11: TdxLayoutItem;
    dxLayoutControl6Item12: TdxLayoutItem;
    dxLayoutControl6Item13: TdxLayoutItem;
    dxLayoutControl6Group6: TdxLayoutGroup;
    dxLayoutControl6Group7: TdxLayoutGroup;
    dxLayoutControl6Group8: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutControl6Group3: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    cdsEntityDIRECTSID: TStringField;
    cdsEntityqryEntContact: TDataSetField;
    cdsOAqryOAContact: TDataSetField;
    cdsOAContact: TNClientDataset;
    cdsOAContactOAID: TIntegerField;
    cdsOAContactSEQNO: TIntegerField;
    cdsOAContactCONTNAME: TStringField;
    cdsOAContactADDR_REF: TStringField;
    cdsOAContactADDRTYPE_REF: TStringField;
    cdsOAContactCOUNTCODE: TStringField;
    cdsOAContactPROVCODE: TStringField;
    cdsOAContactCITY: TStringField;
    cdsOAContactADDRESS1: TStringField;
    cdsOAContactADDRESS2: TStringField;
    cdsOAContactADDRESS3: TStringField;
    cdsOAContactZIPCODE: TStringField;
    cdsOAContactPHONE: TStringField;
    cdsOAContactMOBILEPHONE: TStringField;
    cdsOAContactEMAIL: TStringField;
    cdsOAContactFAX: TStringField;
    cdsOAContactIDCARDTYPE: TStringField;
    cdsOAContactIDCARDNO: TStringField;
    cdsOAContactIDCARDEXPIRE: TDateField;
    cdsOAContactSENDBYEMAIL: TStringField;
    cdsOAContactSENDBYFAX: TStringField;
    cdsOAContactSENDBYSMS: TStringField;
    cdsOAContactSENDBYPOSTMAIL: TStringField;
    cdsOAContactNOTIF_TC: TStringField;
    cdsOAContactNOTIF_SOA: TStringField;
    cdsOAContactNOTIF_CORPACT: TStringField;
    cdsOAContactNOTIF_IDENTITY: TStringField;
    cdsOAContactMODDA: TDateTimeField;
    cdsOAContactMODUI: TStringField;
    cdsOAContactAPPDA: TDateTimeField;
    cdsOAContactAPPUI: TStringField;
    cdsOAContactUNDER4Y: TIntegerField;
    cdsOAContactUNDER4YDA: TDateTimeField;
    cdsOAContactNOTES4Y: TStringField;
    cdsOAContactISDEL: TIntegerField;
    cdsOAContactID: TLargeintField;
    dsContact: TDataSource;
    tabContact: TcxTabSheet;
    cxGrid9: TcxGrid;
    glvContact: TcxGridDBLayoutView;
    glvContactSEQNO: TcxGridDBLayoutViewItem;
    glvContactCONTNAME: TcxGridDBLayoutViewItem;
    glvContactADDR_REF: TcxGridDBLayoutViewItem;
    glvContactADDRTYPE_REF: TcxGridDBLayoutViewItem;
    glvContactCOUNTCODE: TcxGridDBLayoutViewItem;
    glvContactPROVCODE: TcxGridDBLayoutViewItem;
    glvContactCITY: TcxGridDBLayoutViewItem;
    glvContactADDRESS1: TcxGridDBLayoutViewItem;
    glvContactADDRESS2: TcxGridDBLayoutViewItem;
    glvContactADDRESS3: TcxGridDBLayoutViewItem;
    glvContactZIPCODE: TcxGridDBLayoutViewItem;
    glvContactPHONE: TcxGridDBLayoutViewItem;
    glvContactMOBILEPHONE: TcxGridDBLayoutViewItem;
    glvContactEMAIL: TcxGridDBLayoutViewItem;
    glvContactFAX: TcxGridDBLayoutViewItem;
    glvContactIDCARDTYPE: TcxGridDBLayoutViewItem;
    glvContactIDCARDNO: TcxGridDBLayoutViewItem;
    glvContactIDCARDEXPIRE: TcxGridDBLayoutViewItem;
    glvContactSENDBYEMAIL: TcxGridDBLayoutViewItem;
    glvContactSENDBYFAX: TcxGridDBLayoutViewItem;
    glvContactSENDBYSMS: TcxGridDBLayoutViewItem;
    glvContactSENDBYPOSTMAIL: TcxGridDBLayoutViewItem;
    glvContactNOTIF_TC: TcxGridDBLayoutViewItem;
    glvContactNOTIF_SOA: TcxGridDBLayoutViewItem;
    glvContactNOTIF_CORPACT: TcxGridDBLayoutViewItem;
    glvContactNOTIF_IDENTITY: TcxGridDBLayoutViewItem;
    glvContactMODDA: TcxGridDBLayoutViewItem;
    glvContactMODUI: TcxGridDBLayoutViewItem;
    glvContactAPPDA: TcxGridDBLayoutViewItem;
    glvContactAPPUI: TcxGridDBLayoutViewItem;
    glvContactUNDER4Y: TcxGridDBLayoutViewItem;
    glvContactUNDER4YDA: TcxGridDBLayoutViewItem;
    glvContactNOTES4Y: TcxGridDBLayoutViewItem;
    glvContactISDEL: TcxGridDBLayoutViewItem;
    glvContactID: TcxGridDBLayoutViewItem;
    dxLayoutGroup14: TdxLayoutGroup;
    glvContactLayoutItem2: TcxGridLayoutItem;
    glvContactLayoutItem3: TcxGridLayoutItem;
    glvContactLayoutItem4: TcxGridLayoutItem;
    glvContactLayoutItem5: TcxGridLayoutItem;
    glvContactLayoutItem6: TcxGridLayoutItem;
    glvContactLayoutItem7: TcxGridLayoutItem;
    glvContactLayoutItem8: TcxGridLayoutItem;
    glvContactLayoutItem9: TcxGridLayoutItem;
    glvContactLayoutItem10: TcxGridLayoutItem;
    glvContactLayoutItem11: TcxGridLayoutItem;
    glvContactLayoutItem12: TcxGridLayoutItem;
    glvContactLayoutItem13: TcxGridLayoutItem;
    glvContactLayoutItem14: TcxGridLayoutItem;
    glvContactLayoutItem15: TcxGridLayoutItem;
    glvContactLayoutItem16: TcxGridLayoutItem;
    glvContactLayoutItem17: TcxGridLayoutItem;
    glvContactLayoutItem18: TcxGridLayoutItem;
    glvContactLayoutItem19: TcxGridLayoutItem;
    glvContactLayoutItem20: TcxGridLayoutItem;
    glvContactLayoutItem21: TcxGridLayoutItem;
    glvContactLayoutItem22: TcxGridLayoutItem;
    glvContactLayoutItem23: TcxGridLayoutItem;
    glvContactLayoutItem24: TcxGridLayoutItem;
    glvContactLayoutItem25: TcxGridLayoutItem;
    glvContactLayoutItem26: TcxGridLayoutItem;
    glvContactLayoutItem27: TcxGridLayoutItem;
    glvContactLayoutItem28: TcxGridLayoutItem;
    glvContactLayoutItem29: TcxGridLayoutItem;
    glvContactLayoutItem30: TcxGridLayoutItem;
    glvContactLayoutItem31: TcxGridLayoutItem;
    glvContactLayoutItem32: TcxGridLayoutItem;
    glvContactLayoutItem33: TcxGridLayoutItem;
    glvContactLayoutItem34: TcxGridLayoutItem;
    glvContactLayoutItem35: TcxGridLayoutItem;
    glvContactLayoutItem36: TcxGridLayoutItem;
    glvContactGroup2: TdxLayoutGroup;
    glvContactGroup3: TdxLayoutGroup;
    glvContactGroup4: TdxLayoutGroup;
    glvContactGroup5: TdxLayoutGroup;
    glvContactGroup6: TdxLayoutGroup;
    glvContactGroup7: TdxLayoutGroup;
    glvContactGroup8: TdxLayoutGroup;
    glvContactGroup10: TdxLayoutGroup;
    cxGridLevel9: TcxGridLevel;
    glvContactLayoutItem1: TcxGridLayoutItem;
    glvContactOAID: TcxGridDBLayoutViewItem;
    cxLabel2: TcxLabel;
    dxLayoutControl7Item1: TdxLayoutItem;
    edKYC2: TcxLabel;
    dxLayoutControl7Item2: TdxLayoutItem;
    dxLayoutControl7Group1: TdxLayoutGroup;
    cxLabel8: TcxLabel;
    dxLayoutControl7Item3: TdxLayoutItem;
    cxLabel9: TcxLabel;
    dxLayoutControl7Item4: TdxLayoutItem;
    cxLabel10: TcxLabel;
    dxLayoutControl7Item5: TdxLayoutItem;
    edKYC6: TcxLabel;
    dxLayoutControl7Item6: TdxLayoutItem;
    cxLabel12: TcxLabel;
    dxLayoutControl7Item7: TdxLayoutItem;
    edKYC8: TcxLabel;
    dxLayoutControl7Item8: TdxLayoutItem;
    edKYC9: TcxLabel;
    dxLayoutControl7Item9: TdxLayoutItem;
    edKYC10: TcxLabel;
    dxLayoutControl7Item10: TdxLayoutItem;
    cxLabel16: TcxLabel;
    dxLayoutControl7Item11: TdxLayoutItem;
    cxLabel17: TcxLabel;
    dxLayoutControl7Item12: TdxLayoutItem;
    cxLabel18: TcxLabel;
    dxLayoutControl7Item13: TdxLayoutItem;
    dxLayoutControl7Item14: TdxLayoutItem;
    cmb: TcxDBImageComboBox;
    dxLayoutControl7Item15: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl7Item16: TdxLayoutItem;
    cxDBImageComboBox5: TcxDBImageComboBox;
    dxLayoutControl7Item17: TdxLayoutItem;
    cxDBImageComboBox18: TcxDBImageComboBox;
    dxLayoutControl7Item18: TdxLayoutItem;
    cxDBImageComboBox19: TcxDBImageComboBox;
    dxLayoutControl7Item19: TdxLayoutItem;
    cxDBImageComboBox20: TcxDBImageComboBox;
    dxLayoutControl7Item20: TdxLayoutItem;
    cxDBImageComboBox21: TcxDBImageComboBox;
    dxLayoutControl7Item21: TdxLayoutItem;
    cxDBImageComboBox22: TcxDBImageComboBox;
    dxLayoutControl7Item22: TdxLayoutItem;
    cxDBImageComboBox23: TcxDBImageComboBox;
    dxLayoutControl7Item23: TdxLayoutItem;
    cxDBImageComboBox24: TcxDBImageComboBox;
    dxLayoutControl7Item24: TdxLayoutItem;
    cxDBImageComboBox25: TcxDBImageComboBox;
    dxLayoutControl7Item25: TdxLayoutItem;
    cxDBImageComboBox26: TcxDBImageComboBox;
    dxLayoutControl7Item26: TdxLayoutItem;
    cxDBImageComboBox27: TcxDBImageComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl7Item27: TdxLayoutItem;
    dxLayoutControl7Group2: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl7Item28: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl7Item29: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl7Item30: TdxLayoutItem;
    dxLayoutControl7Group4: TdxLayoutGroup;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl7Item31: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl7Item32: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl7Item33: TdxLayoutItem;
    dxLayoutControl7Group5: TdxLayoutGroup;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl7Item34: TdxLayoutItem;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl7Item35: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutControl7Item36: TdxLayoutItem;
    dxLayoutControl7Group6: TdxLayoutGroup;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutControl7Item37: TdxLayoutItem;
    cxDBTextEdit24: TcxDBTextEdit;
    dxLayoutControl7Item38: TdxLayoutItem;
    cxDBTextEdit25: TcxDBTextEdit;
    dxLayoutControl7Item39: TdxLayoutItem;
    dxLayoutControl7Group7: TdxLayoutGroup;
    cxDBTextEdit26: TcxDBTextEdit;
    dxLayoutControl7Item40: TdxLayoutItem;
    dxLayoutControl7Group8: TdxLayoutGroup;
    cxDBTextEdit27: TcxDBTextEdit;
    dxLayoutControl7Item41: TdxLayoutItem;
    cxDBTextEdit28: TcxDBTextEdit;
    dxLayoutControl7Item42: TdxLayoutItem;
    cxDBTextEdit29: TcxDBTextEdit;
    dxLayoutControl7Item43: TdxLayoutItem;
    dxLayoutControl7Group9: TdxLayoutGroup;
    cxDBTextEdit30: TcxDBTextEdit;
    dxLayoutControl7Item44: TdxLayoutItem;
    cxDBTextEdit31: TcxDBTextEdit;
    dxLayoutControl7Item45: TdxLayoutItem;
    dxLayoutControl7Group10: TdxLayoutGroup;
    cxDBTextEdit32: TcxDBTextEdit;
    dxLayoutControl7Item46: TdxLayoutItem;
    cxDBTextEdit33: TcxDBTextEdit;
    dxLayoutControl7Item47: TdxLayoutItem;
    cxDBTextEdit34: TcxDBTextEdit;
    dxLayoutControl7Item48: TdxLayoutItem;
    dxLayoutControl7Group11: TdxLayoutGroup;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutControl7Item49: TdxLayoutItem;
    cxDBTextEdit35: TcxDBTextEdit;
    dxLayoutControl7Item50: TdxLayoutItem;
    cxDBTextEdit36: TcxDBTextEdit;
    dxLayoutControl7Item51: TdxLayoutItem;
    dxLayoutControl7Group12: TdxLayoutGroup;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutControl7Item52: TdxLayoutItem;
    cxDBTextEdit37: TcxDBTextEdit;
    dxLayoutControl7Item53: TdxLayoutItem;
    cxDBTextEdit38: TcxDBTextEdit;
    dxLayoutControl7Item54: TdxLayoutItem;
    dxLayoutControl7Group13: TdxLayoutGroup;
    cdsOAINFO_01: TStringField;
    cdsOAINFO_01_NAME: TStringField;
    cdsOAINFO_01_DESC1: TStringField;
    cdsOAINFO_01_DESC2: TStringField;
    cdsOAINFO_02: TStringField;
    cdsOAINFO_02_NAME: TStringField;
    cdsOAINFO_02_DESC1: TStringField;
    cdsOAINFO_02_DESC2: TStringField;
    cdsOAINFO_03: TStringField;
    cdsOAINFO_03_NAME: TStringField;
    cdsOAINFO_03_DESC1: TStringField;
    cdsOAINFO_03_DESC2: TStringField;
    cdsOAINFO_04: TStringField;
    cdsOAINFO_04_NAME: TStringField;
    cdsOAINFO_04_DESC1: TStringField;
    cdsOAINFO_04_DESC2: TStringField;
    cdsOAINFO_05: TStringField;
    cdsOAINFO_05_NAME: TStringField;
    cdsOAINFO_05_DESC1: TStringField;
    cdsOAINFO_05_DESC2: TStringField;
    cdsOAINFO_06: TStringField;
    cdsOAINFO_06_NAME: TStringField;
    cdsOAINFO_06_DESC1: TStringField;
    cdsOAINFO_06_DESC2: TStringField;
    cdsOAINFO_07: TStringField;
    cdsOAINFO_07_NAME: TStringField;
    cdsOAINFO_07_DESC1: TStringField;
    cdsOAINFO_07_DESC2: TStringField;
    cdsOAINFO_08: TStringField;
    cdsOAINFO_08_NAME: TStringField;
    cdsOAINFO_08_DESC1: TStringField;
    cdsOAINFO_08_DESC2: TStringField;
    cdsOAINFO_09: TStringField;
    cdsOAINFO_09_NAME: TStringField;
    cdsOAINFO_09_DESC1: TStringField;
    cdsOAINFO_09_DESC2: TStringField;
    cdsOAINFO_10: TStringField;
    cdsOAINFO_10_NAME: TStringField;
    cdsOAINFO_10_DESC1: TStringField;
    cdsOAINFO_10_DESC2: TStringField;
    cdsOAINFO_11: TStringField;
    cdsOAINFO_11_NAME: TStringField;
    cdsOAINFO_11_DESC1: TStringField;
    cdsOAINFO_11_DESC2: TStringField;
    cdsOAINFO_12: TStringField;
    cdsOAINFO_12_NAME: TStringField;
    cdsOAINFO_12_DESC1: TStringField;
    cdsOAINFO_12_DESC2: TStringField;
    cdsOAINFO_12_DESC3: TStringField;
    cdsOAINFO_13: TStringField;
    cdsOAINFO_13_NAME: TStringField;
    cdsEntityINFO_01: TStringField;
    cdsEntityINFO_01_NAME: TStringField;
    cdsEntityINFO_01_DESC1: TStringField;
    cdsEntityINFO_01_DESC2: TStringField;
    cdsEntityINFO_02: TStringField;
    cdsEntityINFO_02_NAME: TStringField;
    cdsEntityINFO_02_DESC1: TStringField;
    cdsEntityINFO_02_DESC2: TStringField;
    cdsEntityINFO_03: TStringField;
    cdsEntityINFO_03_NAME: TStringField;
    cdsEntityINFO_03_DESC1: TStringField;
    cdsEntityINFO_03_DESC2: TStringField;
    cdsEntityINFO_04: TStringField;
    cdsEntityINFO_04_NAME: TStringField;
    cdsEntityINFO_04_DESC1: TStringField;
    cdsEntityINFO_04_DESC2: TStringField;
    cdsEntityINFO_05: TStringField;
    cdsEntityINFO_05_NAME: TStringField;
    cdsEntityINFO_05_DESC1: TStringField;
    cdsEntityINFO_05_DESC2: TStringField;
    cdsEntityINFO_06: TStringField;
    cdsEntityINFO_06_NAME: TStringField;
    cdsEntityINFO_06_DESC1: TStringField;
    cdsEntityINFO_06_DESC2: TStringField;
    cdsEntityINFO_07: TStringField;
    cdsEntityINFO_07_NAME: TStringField;
    cdsEntityINFO_07_DESC1: TStringField;
    cdsEntityINFO_07_DESC2: TStringField;
    cdsEntityINFO_08: TStringField;
    cdsEntityINFO_08_NAME: TStringField;
    cdsEntityINFO_08_DESC1: TStringField;
    cdsEntityINFO_08_DESC2: TStringField;
    cdsEntityINFO_09: TStringField;
    cdsEntityINFO_09_NAME: TStringField;
    cdsEntityINFO_09_DESC1: TStringField;
    cdsEntityINFO_09_DESC2: TStringField;
    cdsEntityINFO_10: TStringField;
    cdsEntityINFO_10_NAME: TStringField;
    cdsEntityINFO_10_DESC1: TStringField;
    cdsEntityINFO_10_DESC2: TStringField;
    cdsEntityINFO_11: TStringField;
    cdsEntityINFO_11_NAME: TStringField;
    cdsEntityINFO_11_DESC1: TStringField;
    cdsEntityINFO_11_DESC2: TStringField;
    cdsEntityINFO_12: TStringField;
    cdsEntityINFO_12_NAME: TStringField;
    cdsEntityINFO_12_DESC1: TStringField;
    cdsEntityINFO_12_DESC2: TStringField;
    cdsEntityINFO_12_DESC3: TStringField;
    cdsEntityINFO_13: TStringField;
    cdsEntityINFO_13_NAME: TStringField;
    cdsOAKTP_LIFETIME: TStringField;
    cxDBTextEdit39: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group9: TdxLayoutGroup;
    dxLayoutControl3Item7: TdxLayoutItem;
    cmbRisk: TcxDBImageComboBox;
    cxDBCheckGroup3: TcxDBCheckGroup;
    dxLayoutControl4Item1: TdxLayoutItem;
    cdsOASUBMIT: TStringField;
    cdsOAAddressRTRW: TStringField;
    cdsOAAddressRESIDENCETYPE: TStringField;
    cdsOAAddressOWNERSHIPSTATUS: TStringField;
    cdsOAAddressRESIDENCETYPE_OTHER: TStringField;
    cdsOAAddressOWNERSHIPSTATUS_OTHER: TStringField;
    glvAddressLayoutItem25: TcxGridLayoutItem;
    glvAddressRTRW: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem26: TcxGridLayoutItem;
    glvAddressRESIDENCETYPE: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem27: TcxGridLayoutItem;
    glvAddressOWNERSHIPSTATUS: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem28: TcxGridLayoutItem;
    glvAddressRESIDENCETYPE_OTHER: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem29: TcxGridLayoutItem;
    glvAddressOWNERSHIPSTATUS_OTHER: TcxGridDBLayoutViewItem;
    glvAddressGroup2: TdxLayoutAutoCreatedGroup;
    glvAddressGroup5: TdxLayoutAutoCreatedGroup;
    PopupMenu1: TPopupMenu;
    View1: TMenuItem;
    cdsOAGU_PROVINCE2: TStringField;
    cdsOAUSERID: TStringField;
    cdsOARET_SIBLINGSNAME: TStringField;
    cdsOARET_SIBLINGRELATION: TStringField;
    cdsOAPREFFERED_CONTACT: TStringField;
    cdsOAPREFFERED_DAY: TStringField;
    cdsOAPREFFERED_TIME_FROM: TStringField;
    cdsOAPREFFERED_TIME_TO: TStringField;
    cdsOAGU_BIRTHPLACE: TStringField;
    cdsOAGU_BIRTHDATE: TDateField;
    cdsOAPREFFERED_BANK_RDN: TStringField;
    cdsOAFEEDBACK: TStringField;
    cdsOALAST_STATUS: TStringField;
    cdsOARET_HEIRPHONE: TStringField;
    cdsOARET_SIBLINGPHONE: TStringField;
    cdsOARET_HEIRIDCARD: TStringField;
    cdsOARET_SIBLING_ADDRESS: TStringField;
    cdsOAGU_PROVICE: TStringField;
    cdsOAINVESTEXP_OTHER: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cdsAddrReff: TNClientDataset;
    cdsAddrReffOAID: TIntegerField;
    cdsAddrReffADDRTYPE: TStringField;
    cdsAddrReffADDR_REF: TStringField;
    cdsAddrReffADDRTYPE_REF: TStringField;
    cdsAddrReffCOUNTCODE: TStringField;
    cdsAddrReffPROVCODE: TStringField;
    cdsAddrReffCITY: TStringField;
    cdsAddrReffADDRESS1: TStringField;
    cdsAddrReffADDRESS2: TStringField;
    cdsAddrReffADDRESS3: TStringField;
    cdsAddrReffZIPCODE: TStringField;
    cdsAddrReffPHONE: TStringField;
    cdsAddrReffMOBILEPHONE: TStringField;
    cdsAddrReffEMAIL: TStringField;
    cdsAddrReffFAX: TStringField;
    cdsAddrReffMODDA: TDateTimeField;
    cdsAddrReffMODUI: TStringField;
    cdsAddrReffAPPDA: TDateTimeField;
    cdsAddrReffAPPUI: TStringField;
    cdsAddrReffUNDER4Y: TIntegerField;
    cdsAddrReffUNDER4YDA: TDateTimeField;
    cdsAddrReffNOTES4Y: TStringField;
    cdsAddrReffISDEL: TIntegerField;
    cdsAddrReffID: TLargeintField;
    cdsAddrReffRTRW: TStringField;
    cdsAddrReffRESIDENCETYPE: TStringField;
    cdsAddrReffOWNERSHIPSTATUS: TStringField;
    cdsAddrReffRESIDENCETYPE_OTHER: TStringField;
    cdsAddrReffOWNERSHIPSTATUS_OTHER: TStringField;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cdsOAINITIAL: TStringField;
    cdsOAEVENTID: TLargeintField;
    edInitial: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    cdsOAPAYMENT_BANK: TStringField;
    cdsOABankDEFAULT_BANK: TStringField;
    gvwBankDEFAULT_BANK: TcxGridDBColumn;
    cdsOABankPAYMENT_BANK: TStringField;
    gvwBankPAYMENT_BANK: TcxGridDBColumn;
    cdsOAGU_GENDER: TStringField;
    cdsOAREFERRAL_ID_INT: TIntegerField;
    cdsOAREFERRAL_ID_EXT: TIntegerField;
    cxDBTextEdit41: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cdsEntityGU_ID_EXP: TDateTimeField;
    cdsEntityGU_GENDER: TIntegerField;
    cdsEntityGU_DOB: TDateTimeField;
    glvAddressGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    edBussTypeOther: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    edCompTypeOther: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cdsOAINS_BUSSTYPE_OT: TStringField;
    cdsOAINS_COMPTYPE_OT: TStringField;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxDBImageComboBox28: TcxDBImageComboBox;
    dxLayoutItem18: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    cxGrid10Level1: TcxGridLevel;
    cxGrid10: TcxGrid;
    cdsBeneficiallOwner: TNClientDataset;
    dsBeneficiallOwner: TDataSource;
    gvwBeneficialOwnerGroup_Root: TdxLayoutGroup;
    gvwBeneficialOwner: TcxGridDBLayoutView;
    cdsOAqryOABeneficialOwner: TDataSetField;
    procedure cdsOANewRecord(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsOABankNewRecord(DataSet: TDataSet);
    procedure cdsOACustodyNewRecord(DataSet: TDataSet);
    procedure cdsOAINVESTOBJECTIVEChange(Sender: TField);
    procedure cdsOASOURCEFUNDChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure gvwDocumentDOCFILENAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure glvAddressInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure FormShow(Sender: TObject);
    procedure cdsOAENTNAMEChange(Sender: TField);
    procedure cdsOACNTRESTChange(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsOAAddressADDR_REFChange(Sender: TField);
    procedure glvAddressEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsOAAddressBeforePost(DataSet: TDataSet);
    procedure cdsOAAddressCOUNTCODEChange(Sender: TField);
    procedure cdsOAAddressPROVCODEChange(Sender: TField);
    procedure cdsOAAddressNewRecord(DataSet: TDataSet);
    procedure cdsOAKSEINewRecord(DataSet: TDataSet);
    procedure glvContactEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsOAPARENT_ACCIDChange(Sender: TField);
    procedure cdsOAEXISTING_CLIENTChange(Sender: TField);
    procedure cdsOAAfterOpen(DataSet: TDataSet);
    procedure cbSalesEnter(Sender: TObject);
    procedure cbSalesExit(Sender: TObject);
    procedure glvContactInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure View1Click(Sender: TObject);
    procedure cdsOAAddressPHONEChange(Sender: TField);
    procedure cdsOAAddressMOBILEPHONEChange(Sender: TField);
    procedure cdsOAContactPHONEChange(Sender: TField);
    procedure cdsOAContactMOBILEPHONEChange(Sender: TField);
    procedure cdsOAAddressRESIDENCETYPEChange(Sender: TField);
    procedure cdsOAAddressOWNERSHIPSTATUSChange(Sender: TField);
    procedure cdsOAINFO_01Change(Sender: TField);
    procedure cdsOAINFO_02Change(Sender: TField);
    procedure cdsOAINFO_03Change(Sender: TField);
    procedure cdsOAINFO_06Change(Sender: TField);
    procedure cdsOAINFO_07Change(Sender: TField);
    procedure cdsOAINFO_08Change(Sender: TField);
    procedure cdsOAINFO_09Change(Sender: TField);
    procedure cdsOAINFO_10Change(Sender: TField);
    procedure cdsOAINFO_11Change(Sender: TField);
    procedure cdsOAINFO_12Change(Sender: TField);
    procedure cdsOAINFO_13Change(Sender: TField);
    procedure cdsOAFATCA_A1Change(Sender: TField);
    procedure cdsOAFATCA_A2Change(Sender: TField);
    procedure cdsOAFATCA_B2Change(Sender: TField);
    procedure cdsOAAddressADDRTYPE_REFChange(Sender: TField);
    procedure cdsOAOCCUPATIONChange(Sender: TField);
    procedure cdsOABeforePost(DataSet: TDataSet);
    procedure cdsOAINS_BUSSTYPEChange(Sender: TField);
    procedure cdsOAINS_COMPTYPEChange(Sender: TField);
  private
    { Private declarations }
    procedure UploadDocs(AFileName: string);
    procedure CopyDataFromAccount(ACCID: Integer);
  public
    { Public declarations }
  end;

var
  frmOpeningAccountIns: TfrmOpeningAccountIns;

implementation

{$R *.dfm}

uses DataGlobal, cxLookupDBGrid, DataLookup, FormLuAccount,
  FormLuAccountExisting;

procedure TfrmOpeningAccountIns.btnOKClick(Sender: TObject);
begin
  inherited;

  if State = pkCreate then
  begin
    if cdsOAOACODE.AsString = '<AUTO>' then
    begin
      if not (cdsOA.State in dsEditModes) then
        cdsOA.Edit;
      cdsOAOACODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsOACREATEDATE.AsDateTime, 'OA', 'TBL_B_OA');
//      if (cdsOAREQUEST_SUBREK.AsString = '1') then
//      begin
//        if (cdsOAKSEI_CLIENT_CODE.IsNull) or (Trim(cdsOAKSEI_CLIENT_CODE.AsString) = '') then
//          cdsOAKSEI_CLIENT_CODE.AsString := dmGlobal.RemoteServer.GetNewKSEIClientCode;
//      end;
    end;
  end
  else if State = pkUpdate then
  begin
    if not (cdsOA.State in dsEditModes) then
      cdsOA.Edit;

//    if (cdsOAREQUEST_SUBREK.AsString = '1') then
//    begin
//      if (cdsOAKSEI_CLIENT_CODE.IsNull) or (Trim(cdsOAKSEI_CLIENT_CODE.AsString) = '') then
//        cdsOAKSEI_CLIENT_CODE.AsString := dmGlobal.RemoteServer.GetNewKSEIClientCode;
//    end;
  end;

end;

procedure TfrmOpeningAccountIns.cbSalesEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbSales.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.AddItem(LGrid.Columns[2], foEqual, cbBranch.EditValue, VarToStr(cbBranch.EditValue));
    Active := True;
  end;
end;

procedure TfrmOpeningAccountIns.cbSalesExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbSales.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.Clear;
    Active := False;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressADDRTYPE_REFChange(Sender: TField);
var
  i: Integer;
begin
  inherited;
  if cdsOAAddressADDR_REF.AsString = '1' then
  begin
    if cdsOAAddressADDRTYPE_REF.AsString <> '' then
    begin
      cdsAddrReff.Filtered := False;
      cdsAddrReff.Filter   := 'ADDRTYPE = ' + QuotedStr(cdsOAAddressADDRTYPE_REF.AsString);
      cdsAddrReff.Filtered := True;

      if not cdsAddrReff.IsEmpty then
      begin
        for i := 4 to cdsOAAddress.FieldCount -1 do
          cdsOAAddress.Fields[i].Value := cdsAddrReff.Fields[i].Value;

//        cdsOAAddressCOUNTCODE.AsString             := cdsAddrReffCOUNTCODE.AsString;
//        cdsOAAddressPROVCODE.AsString              := cdsAddrReffPROVCODE.AsString;
//        cdsOAAddressCITY.AsString                  := cdsAddrReffCITY.AsString;
//        cdsOAAddressADDRESS1.AsString              := cdsAddrReffADDRESS1.AsString;
//        cdsOAAddressADDRESS2.AsString              := cdsAddrReffADDRESS2.AsString;
//        cdsOAAddressADDRESS3.AsString              := cdsAddrReffADDRESS3.AsString;
//        cdsOAAddressZIPCODE.AsString               := cdsAddrReffZIPCODE.AsString;
//        cdsOAAddressPHONE.AsString                 := cdsAddrReffPHONE.AsString;
//        cdsOAAddressMOBILEPHONE.AsString           := cdsAddrReffMOBILEPHONE.AsString;
//        cdsOAAddressEMAIL.AsString                 := cdsAddrReffEMAIL.AsString;
//        cdsOAAddressFAX.AsString                   := cdsAddrReffFAX.AsString;
//        cdsOAAddressRTRW.AsString                  := cdsAddrReffRTRW.AsString;
//        cdsOAAddressRESIDENCETYPE.AsString         := cdsAddrReffRESIDENCETYPE.AsString;
//        cdsOAAddressOWNERSHIPSTATUS.AsString       := cdsAddrReffOWNERSHIPSTATUS.AsString;
//        cdsOAAddressRESIDENCETYPE_OTHER.AsString   := cdsAddrReffRESIDENCETYPE_OTHER.AsString;
//        cdsOAAddressOWNERSHIPSTATUS_OTHER.AsString := cdsAddrReffOWNERSHIPSTATUS_OTHER.AsString;
      end;

    end;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressADDR_REFChange(Sender: TField);
begin
  inherited;
  if cdsOAAddressADDR_REF.AsString = '1' then
  begin
    cdsOAAddressCOUNTCODE.Clear;
    cdsOAAddressPROVCODE.Clear;
    cdsOAAddressCITY.Clear;
    cdsOAAddressADDRESS1.Clear;
    cdsOAAddressADDRESS2.Clear;
    cdsOAAddressADDRESS3.Clear;
    cdsOAAddressZIPCODE.Clear;
    cdsOAAddressPHONE.Clear;
    cdsOAAddressMOBILEPHONE.Clear;
    cdsOAAddressEMAIL.Clear;
    cdsOAAddressFAX.Clear;
  end
  else
    cdsOAAddressADDRTYPE_REF.Clear;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressBeforePost(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  if (cdsOAAddressADDR_REF.AsString = '1') then
  begin
    if ((cdsOAAddressADDRTYPE_REF.IsNull) or (cdsOAAddressADDRTYPE_REF.AsString = cdsOAAddressADDRTYPE.AsString)) then
    begin
      dmGlobal.ErrorMessage('Please fill refer other address type');
      Abort;
    end;
  end
  else
  begin
    if (cdsOAAddressADDRESS1.IsNull) or (Trim(cdsOAAddressADDRESS1.AsString) = '') then
    begin
      dmGlobal.ErrorMessage('Please fill address line 1 data!');
      Abort;
    end;

    if (cdsOAAddressCOUNTCODE.IsNull) or (Trim(cdsOAAddressCOUNTCODE.AsString) = '') then
    begin
      dmGlobal.ErrorMessage('Please fill country data!');
      Abort;
    end;

    if cdsOAAddressCOUNTCODE.AsString = dmGlobal.RemoteServer.GetDefaultCountry then
    begin
      if (cdsOAAddressPROVCODE.IsNull) or (Trim(cdsOAAddressPROVCODE.AsString) = '') then
      begin
        dmGlobal.ErrorMessage('Please fill province data!');
        Abort;
      end;

      if (cdsOAAddressCITY.IsNull) or (Trim(cdsOAAddressCITY.AsString) = '') then
      begin
        dmGlobal.ErrorMessage('Please fill city data!');
        Abort;
      end;
    end;
  end;

  cdsAddrReff.Append;
  for i := 0 to cdsOAAddress.FieldCount -1 do
    cdsAddrReff.Fields[i].Value := cdsOAAddress.Fields[i].Value;
  cdsAddrReff.Post;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressCOUNTCODEChange(Sender: TField);
begin
  inherited;
  cdsOAAddressPROVCODE.Clear;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressMOBILEPHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOAAddress.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsOAAddressCOUNTCODE.AsString, cdsOAAddressMOBILEPHONE.AsString);
    if cdsOAAddressMOBILEPHONE.AsString <> sPhoneNo then
      cdsOAAddressMOBILEPHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOAAddressADDR_REF.AsString := '0';
  cdsOAAddressEMAIL.AsString    := cdsOAEMAIL_ADDR.AsString;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressOWNERSHIPSTATUSChange(
  Sender: TField);
begin
  inherited;
  if cdsOAAddressOWNERSHIPSTATUS.AsString = '5' then
  begin
    glvAddressOWNERSHIPSTATUS_OTHER.Options.Editing := True;
  end
  else
  begin
    glvAddressOWNERSHIPSTATUS_OTHER.Options.Editing := False;
    cdsOAAddressOWNERSHIPSTATUS_OTHER.AsString      := '';
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressPHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOAAddress.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsOAAddressCOUNTCODE.AsString, cdsOAAddressPHONE.AsString);
    if cdsOAAddressPHONE.AsString <> sPhoneNo then
      cdsOAAddressPHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressPROVCODEChange(Sender: TField);
begin
  inherited;
  cdsOAAddressCITY.Clear;
end;

procedure TfrmOpeningAccountIns.cdsOAAddressRESIDENCETYPEChange(Sender: TField);
begin
  inherited;
  if cdsOAAddressRESIDENCETYPE.AsString = '4' then
  begin
    glvAddressRESIDENCETYPE_OTHER.Options.Editing := True;
  end
  else
  begin
    glvAddressRESIDENCETYPE_OTHER.Options.Editing := False;
    cdsOAAddressRESIDENCETYPE_OTHER.AsString      := '';
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  lcAccNo.Visible := cdsOAEXISTING_CLIENT.AsString = '1';
  lcAccName.Visible := lcAccNo.Visible;

  cdsAddrReff.Close;
  cdsAddrReff.CreateDataSet;

  if not cdsOAAddress.IsEmpty then
  begin
    cdsOAAddress.First;
    while not cdsOAAddress.Eof do
    begin
      cdsAddrReff.Append;
      for i := 0 to cdsAddrReff.FieldCount -1 do
        cdsAddrReff.Fields[i].Value := cdsOAAddress.fields[i].Value;
      cdsAddrReff.Post;

      cdsOAAddress.Next;
    end;
  end;

//  with dmGlobal.IntDataLookup do
//  begin
//    cdsLuBankPayment.Close;
//    cdsLuBankPayment.Open;
//  end;

  KYC11.ParentColor         := cdsOAFATCA_A1.AsString = '0';
  KYC11.Properties.ReadOnly := cdsOAFATCA_A1.AsString = '0';

  KYC21.ParentColor         := cdsOAFATCA_A2.AsString = '0';
  KYC21.Properties.ReadOnly := cdsOAFATCA_A2.AsString = '0';

  cxDBTextEdit5.ParentColor         := cdsOAFATCA_B2.AsString = '0';
  cxDBTextEdit5.Properties.ReadOnly := cdsOAFATCA_B2.AsString = '0';

  cxDBTextEdit7.ParentColor          := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit7.Properties.ReadOnly  := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit9.ParentColor          := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit9.Properties.ReadOnly  := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit10.ParentColor         := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit10.Properties.ReadOnly := cdsOAINFO_01.AsString = '0';

  cxDBTextEdit16.ParentColor         := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit16.Properties.ReadOnly := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit17.ParentColor         := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit17.Properties.ReadOnly := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit18.ParentColor         := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit18.Properties.ReadOnly := cdsOAINFO_02.AsString = '0';

  cxDBTextEdit20.ParentColor         := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit20.Properties.ReadOnly := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit21.ParentColor         := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit21.Properties.ReadOnly := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit19.ParentColor         := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit19.Properties.ReadOnly := cdsOAINFO_03.AsString = '0';

  cxDBTextEdit22.ParentColor         := cdsOAINFO_06.AsString = '0';
  cxDBTextEdit22.Properties.ReadOnly := cdsOAINFO_06.AsString = '0';
  cxDBTextEdit23.ParentColor         := cdsOAINFO_06.AsString = '0';
  cxDBTextEdit23.Properties.ReadOnly := cdsOAINFO_06.AsString = '0';
  cxDBTextEdit24.ParentColor         := cdsOAINFO_06.AsString = '0';
  cxDBTextEdit24.Properties.ReadOnly := cdsOAINFO_06.AsString = '0';

  cxDBTextEdit25.ParentColor         := cdsOAINFO_07.AsString = '0';
  cxDBTextEdit25.Properties.ReadOnly := cdsOAINFO_07.AsString = '0';

  cxDBTextEdit26.ParentColor         := cdsOAINFO_08.AsString = '0';
  cxDBTextEdit26.Properties.ReadOnly := cdsOAINFO_08.AsString = '0';
  cxDBTextEdit27.ParentColor         := cdsOAINFO_08.AsString = '0';
  cxDBTextEdit27.Properties.ReadOnly := cdsOAINFO_08.AsString = '0';
  cxDBTextEdit28.ParentColor         := cdsOAINFO_08.AsString = '0';
  cxDBTextEdit28.Properties.ReadOnly := cdsOAINFO_08.AsString = '0';

  cxDBTextEdit29.ParentColor         := cdsOAINFO_09.AsString = '0';
  cxDBTextEdit29.Properties.ReadOnly := cdsOAINFO_09.AsString = '0';
  cxDBTextEdit30.ParentColor         := cdsOAINFO_09.AsString = '0';
  cxDBTextEdit30.Properties.ReadOnly := cdsOAINFO_09.AsString = '0';

  cxDBTextEdit31.ParentColor         := cdsOAINFO_10.AsString = '0';
  cxDBTextEdit31.Properties.ReadOnly := cdsOAINFO_10.AsString = '0';
  cxDBTextEdit32.ParentColor         := cdsOAINFO_10.AsString = '0';
  cxDBTextEdit32.Properties.ReadOnly := cdsOAINFO_10.AsString = '0';
  cxDBTextEdit33.ParentColor         := cdsOAINFO_10.AsString = '0';
  cxDBTextEdit33.Properties.ReadOnly := cdsOAINFO_10.AsString = '0';

  cxDBTextEdit34.ParentColor         := cdsOAINFO_11.AsString = '0';
  cxDBTextEdit34.Properties.ReadOnly := cdsOAINFO_11.AsString = '0';
  cxDBTextEdit35.ParentColor         := cdsOAINFO_11.AsString = '0';
  cxDBTextEdit35.Properties.ReadOnly := cdsOAINFO_11.AsString = '0';
  cxDBSpinEdit1.ParentColor          := cdsOAINFO_11.AsString = '0';
  cxDBSpinEdit1.Properties.ReadOnly  := cdsOAINFO_11.AsString = '0';

  cxDBTextEdit36.ParentColor         := cdsOAINFO_12.AsString = '0';
  cxDBTextEdit36.Properties.ReadOnly := cdsOAINFO_12.AsString = '0';
  cxDBTextEdit37.ParentColor         := cdsOAINFO_12.AsString = '0';
  cxDBTextEdit37.Properties.ReadOnly := cdsOAINFO_12.AsString = '0';
  cxDBSpinEdit2.ParentColor          := cdsOAINFO_12.AsString = '0';
  cxDBSpinEdit2.Properties.ReadOnly  := cdsOAINFO_12.AsString = '0';

  cxDBTextEdit38.ParentColor         := cdsOAINFO_13.AsString = '0';
  cxDBTextEdit38.Properties.ReadOnly := cdsOAINFO_13.AsString = '0';
end;

procedure TfrmOpeningAccountIns.cdsOABankNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOABankBANKACCNAME.AsString := cdsOAENTNAME.AsString;
end;

procedure TfrmOpeningAccountIns.cdsOABeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsOA.State in [dsInsert] then
    cdsOAINITIAL.AsString := FormatFloat('0000000', dmGlobal.RemoteServer.GetSeq('TBL_OA_INIT'))
end;

procedure TfrmOpeningAccountIns.cdsOACNTRESTChange(Sender: TField);
begin
  inherited;
  if cdsOACNTREST.AsString = 'ID' then
    cdsOAENTACCTYPE.AsString := 'L'
  else
    cdsOAENTACCTYPE.AsString := 'F';

  if cdsOARISK.AsString <> 'H' then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuCounNation.Locate('CODE', cdsOACNTREST.AsString, []) then
      begin
        cdsOARISK.AsString := cdsLuCounNationRISK.AsString;
      end;
    end;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAContactMOBILEPHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOAContact.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsOAContactCOUNTCODE.AsString, cdsOAContactMOBILEPHONE.AsString);
    if cdsOAContactMOBILEPHONE.AsString <> sPhoneNo then
      cdsOAContactMOBILEPHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAContactPHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOAContact.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsOAContactCOUNTCODE.AsString, cdsOAContactPHONE.AsString);
    if cdsOAContactPHONE.AsString <> sPhoneNo then
      cdsOAContactPHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOACustodyNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOACustodyCUSTODYACCNAME.AsString := cdsOAENTNAME.AsString;
end;

procedure TfrmOpeningAccountIns.cdsOAENTNAMEChange(Sender: TField);
begin
  inherited;
  cdsOAFIRSTNAME.AsString := cdsOAENTNAME.AsString;
end;

procedure TfrmOpeningAccountIns.cdsOAEXISTING_CLIENTChange(Sender: TField);
begin
  inherited;
  lcAccNo.Visible := cdsOAEXISTING_CLIENT.AsString = '1';
  lcAccName.Visible := lcAccNo.Visible;
end;

procedure TfrmOpeningAccountIns.cdsOAFATCA_A1Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAFATCA_A1.AsString = '0';

  KYC11.ParentColor         := sBol;
  KYC11.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAFATCA_A2Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAFATCA_A2.AsString = '0';

  KYC21.ParentColor         := sBol;
  KYC21.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAFATCA_B2Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAFATCA_B2.AsString = '0';

  cxDBTextEdit5.ParentColor         := sBol;
  cxDBTextEdit5.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_01Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_01.AsString = '0';

  cxDBTextEdit7.ParentColor         := sBol;
  cxDBTextEdit7.Properties.ReadOnly := sBol;

  cxDBTextEdit9.ParentColor         := sBol;
  cxDBTextEdit9.Properties.ReadOnly := sBol;

  cxDBTextEdit10.ParentColor         := sBol;
  cxDBTextEdit10.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_02Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_02.AsString = '0';

  cxDBTextEdit16.ParentColor         := sBol;
  cxDBTextEdit16.Properties.ReadOnly := sBol;

  cxDBTextEdit17.ParentColor         := sBol;
  cxDBTextEdit17.Properties.ReadOnly := sBol;

  cxDBTextEdit18.ParentColor         := sBol;
  cxDBTextEdit18.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_03Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_03.AsString = '0';

  cxDBTextEdit20.ParentColor         := sBol;
  cxDBTextEdit20.Properties.ReadOnly := sBol;

  cxDBTextEdit21.ParentColor         := sBol;
  cxDBTextEdit21.Properties.ReadOnly := sBol;

  cxDBTextEdit19.ParentColor         := sBol;
  cxDBTextEdit19.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_06Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_06.AsString = '0';

  cxDBTextEdit22.ParentColor         := sBol;
  cxDBTextEdit22.Properties.ReadOnly := sBol;

  cxDBTextEdit23.ParentColor         := sBol;
  cxDBTextEdit23.Properties.ReadOnly := sBol;

  cxDBTextEdit24.ParentColor         := sBol;
  cxDBTextEdit24.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_07Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_07.AsString = '0';

  cxDBTextEdit25.ParentColor         := sBol;
  cxDBTextEdit25.Properties.ReadOnly := sBol;

end;

procedure TfrmOpeningAccountIns.cdsOAINFO_08Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_08.AsString = '0';

  cxDBTextEdit26.ParentColor         := sBol;
  cxDBTextEdit26.Properties.ReadOnly := sBol;

  cxDBTextEdit27.ParentColor         := sBol;
  cxDBTextEdit27.Properties.ReadOnly := sBol;

  cxDBTextEdit28.ParentColor         := sBol;
  cxDBTextEdit28.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_09Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_09.AsString = '0';

  cxDBTextEdit29.ParentColor         := sBol;
  cxDBTextEdit29.Properties.ReadOnly := sBol;

  cxDBTextEdit30.ParentColor         := sBol;
  cxDBTextEdit30.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_10Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_10.AsString = '0';

  cxDBTextEdit31.ParentColor         := sBol;
  cxDBTextEdit31.Properties.ReadOnly := sBol;

  cxDBTextEdit32.ParentColor         := sBol;
  cxDBTextEdit32.Properties.ReadOnly := sBol;

  cxDBTextEdit33.ParentColor         := sBol;
  cxDBTextEdit33.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_11Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_11.AsString = '0';

  cxDBTextEdit34.ParentColor         := sBol;
  cxDBTextEdit34.Properties.ReadOnly := sBol;

  cxDBTextEdit35.ParentColor         := sBol;
  cxDBTextEdit35.Properties.ReadOnly := sBol;

  cxDBSpinEdit1.ParentColor         := sBol;
  cxDBSpinEdit1.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_12Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_12.AsString = '0';

  cxDBTextEdit36.ParentColor         := sBol;
  cxDBTextEdit36.Properties.ReadOnly := sBol;

  cxDBTextEdit37.ParentColor         := sBol;
  cxDBTextEdit37.Properties.ReadOnly := sBol;

  cxDBSpinEdit2.ParentColor         := sBol;
  cxDBSpinEdit2.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINFO_13Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_13.AsString = '0';

  cxDBTextEdit38.ParentColor         := sBol;
  cxDBTextEdit38.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountIns.cdsOAINS_BUSSTYPEChange(Sender: TField);
begin
  inherited;
  edBussTypeOther.Visible := cdsOAINS_BUSSTYPE.AsString = '1';
end;

procedure TfrmOpeningAccountIns.cdsOAINS_COMPTYPEChange(Sender: TField);
begin
  inherited;
  edCompTypeOther.Visible := cdsOAINS_COMPTYPE.AsString = '1';
end;

procedure TfrmOpeningAccountIns.cdsOAINVESTOBJECTIVEChange(Sender: TField);
var
  sValue, sKSEI: String;
  i: Integer;
begin
  inherited;
  sKSEI := '';
  sValue := cdsOAINVESTOBJECTIVE.AsString;
  for i := 1 to Length(sValue) do
  begin
    if sValue[i] = '1' then
    begin
      if sKSEI <> '' then
        sKSEI := sKSEI + ',';

      sKSEI := sKSEI + IntToStr(i);
    end;
  end;

  cdsOAINVESTOBJECTIVEKSEI.AsString := sKSEI;
end;

procedure TfrmOpeningAccountIns.cdsOAKSEINewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOAKSEIKSEI_MEMBER_CODE.AsString := dmGlobal.RemoteServer.GetGlobalParamString('009');//KSEI Member Code
  cdsOAKSEIKSEI_CLIENT_CODE.AsString := cdsOAKSEI_CLIENT_CODE.AsString;
end;

procedure TfrmOpeningAccountIns.cdsOANewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOAOAID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_OA');
  cdsOAOACODE.AsString := '<AUTO>';
  cdsOACUST_TYPE.AsInteger := 2;
  cdsOAAFFIL.AsBoolean := False;
  cdsOACREATEDATE.AsDateTime := dmGlobal.RemoteServer.GetServerTimeStamp;
  cdsOAINVESTORCAT.AsString := 'D';
  cdsOACNTREST.AsString := dmGlobal.RemoteServer.GetDefaultCountry;
  cdsOAEXISTING_CLIENT.AsString := '0';
  cdsOAREQUEST_SUBREK.AsString := '1';
  cdsOASUBMIT.AsString         := '1';

//  cdsOAINITIAL.AsString := FormatFloat('0000000', dmGlobal.RemoteServer.GetSeq('TBL_OA_INIT'));
end;

procedure TfrmOpeningAccountIns.cdsOAOCCUPATIONChange(Sender: TField);
begin
  inherited;
  if cdsOARISK.AsString <> 'H' then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuOccupation.Locate('OC_CODE', cdsOACNTREST.AsString, []) then
      begin
        cdsOARISK.AsString := cdsLuOccupationRISK.AsString;
      end;
    end;
  end;
end;

procedure TfrmOpeningAccountIns.cdsOAPARENT_ACCIDChange(Sender: TField);
begin
  inherited;
  CopyDataFromAccount(cdsOAPARENT_ACCID.AsInteger);
end;

procedure TfrmOpeningAccountIns.cdsOASOURCEFUNDChange(Sender: TField);
var
  sValue, sKSEI: String;
  i: Integer;
begin
  inherited;
  sKSEI := '';
  sValue := cdsOASOURCEFUND.AsString;
  for i := 1 to Length(sValue) do
  begin
    if sValue[i] = '1' then
    begin
      if sKSEI <> '' then
        sKSEI := sKSEI + ',';

      sKSEI := sKSEI + IntToStr(i);
    end;
  end;

  cdsOASOURCEFUNDKSEI.AsString := sKSEI;
  lcSourceFundOther.Visible := sValue[1] = '1';
end;

procedure TfrmOpeningAccountIns.CopyDataFromAccount(ACCID: Integer);
var
  i: Integer;
  oSourceField, oTargetField: TField;

  procedure CopyDataSet(ASourceDataSet, ATargetDataSet: TDataSet);
  var
    i: Integer;
    oSourceField, oTargetField: TField;
  begin
    while not ATargetDataSet.IsEmpty do
    begin
      ATargetDataSet.Delete;
    end;

    ASourceDataSet.First;
    while not ASourceDataSet.Eof do
    begin
      ATargetDataSet.Append;
      for i := 0 to ASourceDataSet.FieldCount - 1 do
      begin
        oSourceField := ASourceDataSet.Fields[i];
        if (not (oSourceField.DataType in [ftDataSet]))
          and (oSourceField.FieldKind = fkData) then
        begin
          oTargetField := ATargetDataSet.FindField(oSourceField.FieldName);
          if (oTargetField <> Nil) then
          begin
            oTargetField.Value := oSourceField.Value;
          end;
        end;
      end;
      //Exception karena beda nama field
      if ATargetDataSet = cdsOABank then
      begin
        ATargetDataSet.FieldByName('BANKCODE').AsString := ASourceDataSet.FieldByName('BNCODE').AsString;
      end;
      ATargetDataSet.Post;

      ASourceDataSet.Next;
    end;

  end;
begin
  cdsAccount.Close;
  cdsAccount.Params[0].AsInteger := ACCID;
  cdsAccount.Open;

  cdsEntity.Close;
  cdsEntity.Params[0].AsInteger := cdsAccountENTTID.AsInteger;
  cdsEntity.Open;

  if cdsEntityCUST_TYPE.AsInteger <> cdsOACUST_TYPE.AsInteger then
    Exit;

  if not (cdsOA.State in dsEditModes) then
    cdsOA.Edit;

  // Copy Entity Data
  for i := 0 to cdsEntity.FieldCount - 1 do
  begin
    oSourceField := cdsEntity.Fields[i];

    if (not (oSourceField.DataType in [ftDataSet]))
      and (oSourceField.FieldKind = fkData) then
    begin
      oTargetField := cdsOA.FindField(oSourceField.FieldName);

      if oTargetField = cdsOACREATEDATE then
        Continue;

      if (oTargetField <> Nil) then
      begin
        oTargetField.Value := oSourceField.Value;
      end;
    end;
  end;

  cdsOABRANCHID.AsLargeInt := cdsAccountBRANCHID.AsLargeInt;
  cdsOASALESID.AsLargeInt := cdsAccountSALESID.AsLargeInt;

  for i := 0 to cdsOA.FieldCount - 1 do
  begin
    oTargetField := cdsOA.Fields[i];

    if (oTargetField.Required) then
    begin
      if (oTargetField.IsNull) or (Trim(oTargetField.AsString) = '') then
        oTargetField.Value := '0';
    end;
  end;

  //Copy Address Data
  CopyDataSet(cdsEntityqryEntAddress.NestedDataSet, cdsOAAddress);
  //Copy Document Data
  CopyDataSet(cdsEntityqryEntDOC.NestedDataSet, cdsOADOC);
  //Copy Tracking Info Data
  CopyDataSet(cdsEntityqryEntTrackInfo.NestedDataSet, cdsOATrackInfo);
  //Copy Board Of Director Data
  CopyDataSet(cdsEntityqryEntBOD.NestedDataSet, cdsOABOD);
//  //Copy Bank Data
//  CopyDataSet(cdsAccountqryAccountBank.NestedDataSet, cdsOABank);
//  //Copy Custody Data
//  CopyDataSet(cdsAccountqryAccountCustody.NestedDataSet, cdsOACustody);

end;

procedure TfrmOpeningAccountIns.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  iAccID: Integer;
begin
  inherited;
  if (cdsOA.ReadOnly) or (cdsOAEXISTING_CLIENT.AsString <> '1') then
    Exit;

  with dmGlobal.IntDataLookup do
  begin
    iAccID := cdsOAPARENT_ACCID.AsInteger;

    if frmLuAccountExisting.Run(iAccID) = mrOK then
    begin
      if not (cdsOA.State in dsEditModes) then
        cdsOA.Edit;

      cdsOAPARENT_ACCID.AsInteger := cdsLuOpeningAccountFilterACCID.AsInteger;
    end;
  end;
end;

procedure TfrmOpeningAccountIns.FormCreate(Sender: TObject);
begin
  inherited;

  pageEntity.ActivePage := tabGeneral;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBranch.Active then
      cdsLuBranch.Open;

    if not cdsLuSales.Active then
      cdsLuSales.Open;

    if not cdsLuBusinessType.Active then
      cdsLuBusinessType.Open;

    if not cdsLuBank.Active then
      cdsLuBank.Open;

    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open;

    if not cdsLuProvince.Active then
      cdsLuProvince.Open;

    if not cdsLuCity.Active then
      cdsLuCity.Open;

    if not cdsLuTaxID.Active then
      cdsLuTaxID.Open;

    if not cdsLuAddressType.Active then
      cdsLuAddressType.Open;

    if not cdsLuBank.Active then
      cdsLuBank.Open;

    if not cdsLuCustody.Active then
      cdsLuCustody.Open;

    if not cdsLuProduct.Active then
      cdsLuProduct.Open;

    if not cdsLuBankRDN.Active then
      cdsLuBankRDN.Open;

    if not cdsLuAccount.Active then
      cdsLuAccount.Open;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open;
  end;

end;

procedure TfrmOpeningAccountIns.FormShow(Sender: TObject);
begin
  inherited;
  edBussTypeOther.Visible := False;
  edCompTypeOther.Visible := False;

  if (not dsSubject.DataSet.FieldByName('SOURCEFUND').IsNull)
    and (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString <> '') then
  begin
    lcSourceFundOther.Visible := (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString[1] = '1');
  end
  else
    lcSourceFundOther.Visible := False;

  tabContact.TabVisible := False;
  tabTrackingInfo.TabVisible := False;
//  tabKYC.TabVisible := (dmGlobal.RemoteServer.GetBrokerCode = 'YU');
  if tabKYC.TabVisible then
  begin
    edKYC2.EditValue  := StringReplace(edKYC2.EditValue, '[SECURITIES]', dmGlobal.RemoteServer.GetBrokerName, [rfReplaceAll, rfIgnoreCase]);
    edKYC6.EditValue  := StringReplace(edKYC6.EditValue, '[SECURITIES]', dmGlobal.RemoteServer.GetBrokerName, [rfReplaceAll, rfIgnoreCase]);
    edKYC8.EditValue  := StringReplace(edKYC8.EditValue, '[SECURITIES]', dmGlobal.RemoteServer.GetBrokerName, [rfReplaceAll, rfIgnoreCase]);
    edKYC9.EditValue  := StringReplace(edKYC9.EditValue, '[SECURITIES]', dmGlobal.RemoteServer.GetBrokerName, [rfReplaceAll, rfIgnoreCase]);
    edKYC10.EditValue := StringReplace(edKYC10.EditValue, '[SECURITIES]', dmGlobal.RemoteServer.GetBrokerName, [rfReplaceAll, rfIgnoreCase]);
  end;


  if cdsOA.State in [dsInsert] then
  begin
    cdsOAINITIAL.AsString         := '<AUTO>';
    edInitial.Properties.ReadOnly := True;
    edInitial.ParentColor         := True;
  end
  else
  begin
    edInitial.Properties.ReadOnly := False;
    edInitial.ParentColor         := False;
  end;
end;

procedure TfrmOpeningAccountIns.glvAddressEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  AAllow := True;
  if (AItem = glvAddressADDRESS1)
    or (AItem = glvAddressADDRESS2)
    or (AItem = glvAddressADDRESS3)
    or (AItem = glvAddressZIPCODE)
    or (AItem = glvAddressCOUNTCODE)
    or (AItem = glvAddressPROVCODE)
    or (AItem = glvAddressCITY)
    or (AItem = glvAddressPHONE)
    or (AItem = glvAddressFAX)
    or (AItem = glvAddressMOBILEPHONE)
    or (AItem = glvAddressEMAIL) then
  begin
    AAllow := VarToStr(glvAddressADDR_REF.EditValue) <> '1';
  end
  else if (AItem = glvAddressADDRTYPE_REF) then
  begin
    AAllow := VarToStr(glvAddressADDR_REF.EditValue) = '1';
  end;
end;

procedure TfrmOpeningAccountIns.glvAddressInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  if AItem = glvAddressPROVCODE then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, glvAddressCOUNTCODE.EditValue, VarToStr(glvAddressCOUNTCODE.EditValue));
      Active := True;
    end;
  end
  else if AItem = glvAddressCITY then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, glvAddressPROVCODE.EditValue, VarToStr(glvAddressPROVCODE.EditValue));
      Active := True;
    end;
  end
  else if AItem = glvAddressADDRTYPE_REF then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[1], foNotEqual, glvAddressADDRTYPE.EditValue, VarToStr(glvAddressADDRTYPE.EditValue));
      Active := True;
    end;
  end;
end;

procedure TfrmOpeningAccountIns.glvContactEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  AAllow := True;
  if (AItem = glvContactADDRESS1)
    or (AItem = glvContactADDRESS2)
    or (AItem = glvContactADDRESS3)
    or (AItem = glvContactZIPCODE)
    or (AItem = glvContactCOUNTCODE)
    or (AItem = glvContactPROVCODE)
    or (AItem = glvContactCITY) then
  begin
    AAllow := VarToStr(glvContactADDR_REF.EditValue) <> '1';
  end
  else if (AItem = glvContactADDRTYPE_REF) then
  begin
    AAllow := VarToStr(glvContactADDR_REF.EditValue) = '1';
  end;
end;

procedure TfrmOpeningAccountIns.glvContactInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  if AItem = glvContactPROVCODE then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, glvContactCOUNTCODE.EditValue, VarToStr(glvContactCOUNTCODE.EditValue));
      Active := True;
    end;
  end
  else if AItem = glvContactCITY then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[2], foEqual, glvContactPROVCODE.EditValue, VarToStr(glvContactPROVCODE.EditValue));
      Active := True;
    end;
  end;
end;

procedure TfrmOpeningAccountIns.gvwDocumentDOCFILENAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if odDocs.Execute then
  begin
    if FileExists(odDocs.FileName) then
      UploadDocs(odDocs.FileName);
  end;
end;

procedure TfrmOpeningAccountIns.UploadDocs(AFileName: string);
var
  oFileStream: TFileStream;
  oDataSet: TDataSet;
begin
  oDataSet    := dsDocument.DataSet;
  oFileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    oFileStream.Seek(0, soFromBeginning);
    TblobField(oDataSet.FieldByName('DOCOBJECT')).LoadFromStream(oFileStream);
    oDataSet.FieldByName('DOCFILENAME').Value := ExtractFileName(AFileName);
  finally
    oFileStream.Free;
  end;
end;

procedure TfrmOpeningAccountIns.View1Click(Sender: TObject);
var
 blob : TStream;
 sFileName: string;
// ms:TMemoryStream;
begin
  sFileName := GetCurrentDir+'\Temp';

  if not DirectoryExists(sFileName) then
    CreateDir(sFileName);

  blob := cdsOADOC.CreateBlobStream(cdsOADOC.FieldByName('DOCOBJECT'), bmRead);
  try
    blob.Seek(0, soFromBeginning);

    sFileName := sFileName+'\'+cdsOADOCDOCFILENAME.AsString;
    with TFileStream.Create(sFileName, fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
  finally
    blob.Free;
    dmGlobal.OpenFile(sFileName);
  end;
end;

Initialization
  RegisterClass(TfrmOpeningAccountIns);

end.
