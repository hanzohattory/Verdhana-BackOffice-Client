unit FormEntityIns;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxPCdxBarPopupMenu, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxDBEdit, cxGroupBox,
  cxRadioGroup, cxPC, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxImageComboBox, cxCalendar,
  cxGridBandedTableView, cxGridDBBandedTableView, cxButtonEdit, cxMemo,
  cxBlobEdit, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient,
  NClientDataset, cxCheckGroup, cxDBCheckGroup, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxLabel, cxSpinEdit,
  dxLayoutLookAndFeels, dxBarBuiltInMenu, cxGridViewLayoutContainer,
  System.Actions, Vcl.ActnList, NDatasetAction, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmEntityIns = class(TfrmEditorData)
    pageEntity: TcxPageControl;
    tabInvestInfo: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    tabAddress: TcxTabSheet;
    tabDocument: TcxTabSheet;
    cxGrid2: TcxGrid;
    gvwDocument: TcxGridDBTableView;
    gvwDocumentDOCTYPE: TcxGridDBColumn;
    gvwDocumentDOCDESC: TcxGridDBColumn;
    gvwDocumentISEXPIRE: TcxGridDBColumn;
    gvwDocumentEXPIREDATE: TcxGridDBColumn;
    gvwDocumentDOCFILENAME: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    dsAuth: TDataSource;
    dsAddress: TDataSource;
    dsDocument: TDataSource;
    tabGeneral: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dsBOD: TDataSource;
    dsSHL: TDataSource;
    odDocs: TOpenDialog;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl3Item15: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl3Item16: TdxLayoutItem;
    tabTrackingInfo: TcxTabSheet;
    cxGrid6: TcxGrid;
    gvwTracking: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    dsTrackingInfo: TDataSource;
    gvwTrackingINFODATE: TcxGridDBColumn;
    gvwTrackingINFOTYPE: TcxGridDBColumn;
    gvwTrackingINFOLEVEL: TcxGridDBColumn;
    gvwTrackingNOTES: TcxGridDBColumn;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    tabBOD: TcxTabSheet;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxGrid4: TcxGrid;
    gvwBOD: TcxGridDBBandedTableView;
    gvwBODBODNAME: TcxGridDBBandedColumn;
    gvwBODIDCARDTYPE: TcxGridDBBandedColumn;
    gvwBODIDCARDNUM: TcxGridDBBandedColumn;
    cxGridLevel4: TcxGridLevel;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxGrid3: TcxGrid;
    gvwSHL: TcxGridDBBandedTableView;
    gvwSHLSHLNAME: TcxGridDBBandedColumn;
    gvwSHLSHLPERCENT: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    dxLayoutControl3Group12: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBImageComboBox5: TcxDBImageComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl3Item11: TdxLayoutItem;
    cdsEntity: TNClientDataset;
    cdsEntAddress: TNClientDataset;
    cdsEntDOC: TNClientDataset;
    cdsEntDOCENTTID: TIntegerField;
    cdsEntDOCSEQNO: TIntegerField;
    cdsEntDOCDOCTYPE: TStringField;
    cdsEntDOCDOCDESC: TStringField;
    cdsEntDOCISEXPIRE: TStringField;
    cdsEntDOCEXPIREDATE: TDateField;
    cdsEntDOCDOCOBJECT: TBlobField;
    cdsEntDOCDOCFILENAME: TStringField;
    cdsEntDOCMODDA: TDateTimeField;
    cdsEntDOCMODUI: TStringField;
    cdsEntDOCAPPDA: TDateTimeField;
    cdsEntDOCAPPUI: TStringField;
    cdsEntDOCUNDER4Y: TIntegerField;
    cdsEntDOCUNDER4YDA: TDateTimeField;
    cdsEntDOCNOTES4Y: TStringField;
    cdsEntDOCISDEL: TIntegerField;
    cdsEntDOCID: TLargeintField;
    cdsEntSHL: TNClientDataset;
    cdsEntSHLENTTID: TIntegerField;
    cdsEntSHLSEQNO: TIntegerField;
    cdsEntSHLSHLNAME: TStringField;
    cdsEntSHLSHLPERCENT: TFloatField;
    cdsEntSHLMODDA: TDateTimeField;
    cdsEntSHLMODUI: TStringField;
    cdsEntSHLAPPDA: TDateTimeField;
    cdsEntSHLAPPUI: TStringField;
    cdsEntSHLUNDER4Y: TIntegerField;
    cdsEntSHLUNDER4YDA: TDateTimeField;
    cdsEntSHLNOTES4Y: TStringField;
    cdsEntSHLISDEL: TIntegerField;
    cdsEntSHLID: TLargeintField;
    cdsEntBOD: TNClientDataset;
    cdsEntBODENTTID: TIntegerField;
    cdsEntBODSEQNO: TIntegerField;
    cdsEntBODBODNAME: TStringField;
    cdsEntBODIDCARDTYPE: TStringField;
    cdsEntBODIDCARDNUM: TStringField;
    cdsEntBODMODDA: TDateTimeField;
    cdsEntBODMODUI: TStringField;
    cdsEntBODAPPDA: TDateTimeField;
    cdsEntBODAPPUI: TStringField;
    cdsEntBODUNDER4Y: TIntegerField;
    cdsEntBODUNDER4YDA: TDateTimeField;
    cdsEntBODNOTES4Y: TStringField;
    cdsEntBODISDEL: TIntegerField;
    cdsEntBODID: TLargeintField;
    cdsEntBODBOD_POSITION: TStringField;
    cdsEntBODBOD_CELLPHONE: TStringField;
    cdsEntBODBOD_EMAIL: TStringField;
    cdsEntBODBOD_NATIONALITY: TStringField;
    cdsEntBODBOD_ID_NO: TStringField;
    cdsEntBODBOD_VALID_ID: TDateTimeField;
    cdsEntTrackInfo: TNClientDataset;
    cdsEntTrackInfoENTTID: TIntegerField;
    cdsEntTrackInfoSEQNO: TIntegerField;
    cdsEntTrackInfoINFODATE: TDateTimeField;
    cdsEntTrackInfoINFOTYPE: TStringField;
    cdsEntTrackInfoINFOLEVEL: TStringField;
    cdsEntTrackInfoNOTES: TStringField;
    cdsEntTrackInfoMODDA: TDateTimeField;
    cdsEntTrackInfoMODUI: TStringField;
    cdsEntTrackInfoAPPDA: TDateTimeField;
    cdsEntTrackInfoAPPUI: TStringField;
    cdsEntTrackInfoUNDER4Y: TIntegerField;
    cdsEntTrackInfoUNDER4YDA: TDateTimeField;
    cdsEntTrackInfoNOTES4Y: TStringField;
    cdsEntTrackInfoISDEL: TIntegerField;
    cdsEntTrackInfoID: TLargeintField;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBCheckGroup1: TcxDBCheckGroup;
    dxLayoutControl4Item6: TdxLayoutItem;
    cxDBCheckGroup2: TcxDBCheckGroup;
    dxLayoutControl4Item7: TdxLayoutItem;
    edSourceFundOther: TcxDBTextEdit;
    dxLayoutControl4Group1: TdxLayoutGroup;
    lcSourceFundOther: TdxLayoutGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxLayoutControl4Item8: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl4Group5: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl3Item12: TdxLayoutItem;
    cxDBImageComboBox6: TcxDBImageComboBox;
    dxLayoutControl4Item9: TdxLayoutItem;
    cxDBImageComboBox7: TcxDBImageComboBox;
    dxLayoutControl4Item10: TdxLayoutItem;
    cxDBImageComboBox8: TcxDBImageComboBox;
    dxLayoutControl4Item11: TdxLayoutItem;
    cxDBImageComboBox9: TcxDBImageComboBox;
    dxLayoutControl4Item12: TdxLayoutItem;
    cxDBImageComboBox10: TcxDBImageComboBox;
    dxLayoutControl4Item13: TdxLayoutItem;
    cxDBImageComboBox11: TcxDBImageComboBox;
    dxLayoutControl4Item14: TdxLayoutItem;
    tabAuthPerson: TcxTabSheet;
    grdAuth: TcxGrid;
    gvwAuth: TcxGridDBBandedTableView;
    grdAuthLevel1: TcxGridLevel;
    cdsEntAuth: TNClientDataset;
    cdsEntAuthENTTID: TIntegerField;
    cdsEntAuthAUTH_PERSON_FIRSTNAME: TStringField;
    cdsEntAuthAUTH_PERSON_MIDDLENAME: TStringField;
    cdsEntAuthAUTH_PERSON_LASTNAME: TStringField;
    cdsEntAuthAUTH_PERSON_POSITION: TStringField;
    cdsEntAuthAUTH_PERSON_KTP: TStringField;
    cdsEntAuthAUTH_PERSON_KTP_EXPDATE: TDateField;
    cdsEntAuthAUTH_PERSON_NPWP: TStringField;
    cdsEntAuthAUTH_PERSON_NPWP_REGDATE: TDateField;
    cdsEntAuthAUTH_PERSON_PASSPORT: TStringField;
    cdsEntAuthAUTH_PERSON_PASSPORT_EXPDATE: TDateField;
    cdsEntAuthAUTH_PERSON_KITAS: TStringField;
    cdsEntAuthAUTH_PERSON_KITAS_EXPDATE: TDateField;
    cdsEntAuthAUTH_SEX: TStringField;
    cdsEntAuthAUTH_PAYCOLL: TBooleanField;
    cdsEntAuthAUTH_STOCKCOLL: TBooleanField;
    cdsEntAuthAUTH_PLACEORDER: TBooleanField;
    cdsEntAuthAUTH_NOTES: TStringField;
    cdsEntAuthMODDA: TDateTimeField;
    cdsEntAuthMODUI: TStringField;
    cdsEntAuthAPPDA: TDateTimeField;
    cdsEntAuthAPPUI: TStringField;
    cdsEntAuthUNDER4Y: TIntegerField;
    cdsEntAuthUNDER4YDA: TDateTimeField;
    cdsEntAuthNOTES4Y: TStringField;
    cdsEntAuthISDEL: TIntegerField;
    cdsEntAuthID: TLargeintField;
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
    cdsEntityGU_ID_EXP: TDateTimeField;
    cdsEntityGU_TAXPAYER_NO: TStringField;
    cdsEntityGU_NATIONALITY: TStringField;
    cdsEntityGU_GENDER: TIntegerField;
    cdsEntityGU_POB: TStringField;
    cdsEntityGU_DOB: TDateTimeField;
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
    cdsEntityqryEntAuth: TDataSetField;
    cdsEntityqryEntTrackInfo: TDataSetField;
    cdsEntityqryEntSHL: TDataSetField;
    cdsEntityqryEntDOC: TDataSetField;
    cdsEntityqryEntBOD: TDataSetField;
    cdsEntityqryEntAddress: TDataSetField;
    glvAuthGroup_Root: TdxLayoutGroup;
    glvAuth: TcxGridDBLayoutView;
    glvAuthLayoutItem2: TcxGridLayoutItem;
    glvAuthENTTID: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem3: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_FIRSTNAME: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem4: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_MIDDLENAME: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem5: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_LASTNAME: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem6: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_POSITION: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem7: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_KTP: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem8: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_KTP_EXPDATE: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem9: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_NPWP: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem10: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_NPWP_REGDATE: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem11: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_PASSPORT: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem12: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_PASSPORT_EXPDATE: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem13: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_KITAS: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem14: TcxGridLayoutItem;
    glvAuthAUTH_PERSON_KITAS_EXPDATE: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem15: TcxGridLayoutItem;
    glvAuthAUTH_SEX: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem16: TcxGridLayoutItem;
    glvAuthAUTH_PAYCOLL: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem17: TcxGridLayoutItem;
    glvAuthAUTH_STOCKCOLL: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem18: TcxGridLayoutItem;
    glvAuthAUTH_PLACEORDER: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem19: TcxGridLayoutItem;
    glvAuthAUTH_NOTES: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem20: TcxGridLayoutItem;
    glvAuthMODDA: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem21: TcxGridLayoutItem;
    glvAuthMODUI: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem22: TcxGridLayoutItem;
    glvAuthAPPDA: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem23: TcxGridLayoutItem;
    glvAuthAPPUI: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem24: TcxGridLayoutItem;
    glvAuthUNDER4Y: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem25: TcxGridLayoutItem;
    glvAuthUNDER4YDA: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem26: TcxGridLayoutItem;
    glvAuthNOTES4Y: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem27: TcxGridLayoutItem;
    glvAuthISDEL: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem28: TcxGridLayoutItem;
    glvAuthID: TcxGridDBLayoutViewItem;
    glvAuthGroup1: TdxLayoutGroup;
    glvAuthGroup2: TdxLayoutGroup;
    glvAuthGroup3: TdxLayoutGroup;
    glvAuthGroup4: TdxLayoutGroup;
    glvAuthGroup5: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl3Item13: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Item26: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl3Item25: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsEntityINVESTORCAT: TStringField;
    cdsEntityARTICLE_ASSOCIATION: TStringField;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl3Item27: TdxLayoutItem;
    cdsEntityASSET_OWNER: TStringField;
    cdsEntitySUPPLEMENTARY_DOCTYPE: TStringField;
    cdsEntitySUPPLEMENTARY_DOCEXP: TDateField;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    cxDBImageComboBox12: TcxDBImageComboBox;
    dxLayoutControl3Item8: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl3Item17: TdxLayoutItem;
    dxLayoutControl3Group7: TdxLayoutGroup;
    cxDBImageComboBox13: TcxDBImageComboBox;
    dxLayoutControl4Item15: TdxLayoutItem;
    gvwBODBOD_POSITION: TcxGridDBBandedColumn;
    gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn;
    gvwBODBOD_EMAIL: TcxGridDBBandedColumn;
    gvwBODBOD_NATIONALITY: TcxGridDBBandedColumn;
    gvwBODBOD_VALID_ID: TcxGridDBBandedColumn;
    cdsEntAuthSEQNO: TIntegerField;
    glvAuthLayoutItem1: TcxGridLayoutItem;
    glvAuthSEQNO: TcxGridDBLayoutViewItem;
    cdsEntityDIRECTSID: TStringField;
    cdsEntityqryEntContact: TDataSetField;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cdsEntContact: TNClientDataset;
    cdsEntContactENTTID: TIntegerField;
    cdsEntContactSEQNO: TIntegerField;
    cdsEntContactCONTNAME: TStringField;
    cdsEntContactADDR_REF: TStringField;
    cdsEntContactADDRTYPE_REF: TStringField;
    cdsEntContactCOUNTCODE: TStringField;
    cdsEntContactPROVCODE: TStringField;
    cdsEntContactCITY: TStringField;
    cdsEntContactADDRESS1: TStringField;
    cdsEntContactADDRESS2: TStringField;
    cdsEntContactADDRESS3: TStringField;
    cdsEntContactZIPCODE: TStringField;
    cdsEntContactPHONE: TStringField;
    cdsEntContactMOBILEPHONE: TStringField;
    cdsEntContactEMAIL: TStringField;
    cdsEntContactFAX: TStringField;
    cdsEntContactIDCARDTYPE: TStringField;
    cdsEntContactIDCARDNO: TStringField;
    cdsEntContactIDCARDEXPIRE: TDateField;
    cdsEntContactSENDBYEMAIL: TStringField;
    cdsEntContactSENDBYFAX: TStringField;
    cdsEntContactSENDBYSMS: TStringField;
    cdsEntContactSENDBYPOSTMAIL: TStringField;
    cdsEntContactNOTIF_TC: TStringField;
    cdsEntContactNOTIF_SOA: TStringField;
    cdsEntContactNOTIF_CORPACT: TStringField;
    cdsEntContactNOTIF_IDENTITY: TStringField;
    cdsEntContactMODDA: TDateTimeField;
    cdsEntContactMODUI: TStringField;
    cdsEntContactAPPDA: TDateTimeField;
    cdsEntContactAPPUI: TStringField;
    cdsEntContactUNDER4Y: TIntegerField;
    cdsEntContactUNDER4YDA: TDateTimeField;
    cdsEntContactNOTES4Y: TStringField;
    cdsEntContactISDEL: TIntegerField;
    cdsEntContactID: TLargeintField;
    dsContact: TDataSource;
    tabContact: TcxTabSheet;
    cxGrid5: TcxGrid;
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
    dxLayoutGroup5: TdxLayoutGroup;
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
    dxLayoutGroup7: TdxLayoutGroup;
    glvContactGroup2: TdxLayoutGroup;
    glvContactGroup3: TdxLayoutGroup;
    glvContactGroup4: TdxLayoutGroup;
    glvContactGroup5: TdxLayoutGroup;
    glvContactGroup6: TdxLayoutGroup;
    glvContactGroup7: TdxLayoutGroup;
    glvContactGroup8: TdxLayoutGroup;
    glvContactGroup10: TdxLayoutGroup;
    cxGridLevel5: TcxGridLevel;
    glvContactLayoutItem1: TcxGridLayoutItem;
    glvContactENTTID: TcxGridDBLayoutViewItem;
    cdsEntAddressENTTID: TIntegerField;
    cdsEntAddressADDRTYPE: TStringField;
    cdsEntAddressADDR_REF: TStringField;
    cdsEntAddressADDRTYPE_REF: TStringField;
    cdsEntAddressCOUNTCODE: TStringField;
    cdsEntAddressPROVCODE: TStringField;
    cdsEntAddressCITY: TStringField;
    cdsEntAddressADDRESS1: TStringField;
    cdsEntAddressADDRESS2: TStringField;
    cdsEntAddressADDRESS3: TStringField;
    cdsEntAddressZIPCODE: TStringField;
    cdsEntAddressPHONE: TStringField;
    cdsEntAddressMOBILEPHONE: TStringField;
    cdsEntAddressEMAIL: TStringField;
    cdsEntAddressFAX: TStringField;
    cdsEntAddressMODDA: TDateTimeField;
    cdsEntAddressMODUI: TStringField;
    cdsEntAddressAPPDA: TDateTimeField;
    cdsEntAddressAPPUI: TStringField;
    cdsEntAddressUNDER4Y: TIntegerField;
    cdsEntAddressUNDER4YDA: TDateTimeField;
    cdsEntAddressNOTES4Y: TStringField;
    cdsEntAddressISDEL: TIntegerField;
    cdsEntAddressID: TLargeintField;
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
    glvAddressENTTID: TcxGridDBLayoutViewItem;
    glvAddressADDRTYPE: TcxGridDBLayoutViewItem;
    glvAddressADDR_REF: TcxGridDBLayoutViewItem;
    glvAddressADDRTYPE_REF: TcxGridDBLayoutViewItem;
    glvAddressCOUNTCODE: TcxGridDBLayoutViewItem;
    glvAddressPROVCODE: TcxGridDBLayoutViewItem;
    glvAddressCITY: TcxGridDBLayoutViewItem;
    glvAddressADDRESS1: TcxGridDBLayoutViewItem;
    glvAddressADDRESS2: TcxGridDBLayoutViewItem;
    glvAddressADDRESS3: TcxGridDBLayoutViewItem;
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
    dxLayoutGroup8: TdxLayoutGroup;
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
    glvAddressGroup4: TdxLayoutGroup;
    glvAddressLayoutItem2: TcxGridLayoutItem;
    glvAddressLayoutItem24: TcxGridLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    cxGridLayoutItem1: TcxGridLayoutItem;
    grdAddressLevel1: TcxGridLevel;
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
    cxLabel2: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cmb: TcxDBImageComboBox;
    cxDBImageComboBox18: TcxDBImageComboBox;
    cxDBImageComboBox19: TcxDBImageComboBox;
    cxDBImageComboBox20: TcxDBImageComboBox;
    cxDBImageComboBox21: TcxDBImageComboBox;
    cxDBImageComboBox22: TcxDBImageComboBox;
    cxDBImageComboBox23: TcxDBImageComboBox;
    cxDBImageComboBox24: TcxDBImageComboBox;
    cxDBImageComboBox25: TcxDBImageComboBox;
    cxDBImageComboBox26: TcxDBImageComboBox;
    cxDBImageComboBox27: TcxDBImageComboBox;
    cxDBImageComboBox28: TcxDBImageComboBox;
    cxDBImageComboBox29: TcxDBImageComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
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
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl7Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl7Item3: TdxLayoutItem;
    dxLayoutControl7Item4: TdxLayoutItem;
    dxLayoutControl7Item5: TdxLayoutItem;
    dxLayoutControl7Item6: TdxLayoutItem;
    dxLayoutControl7Item7: TdxLayoutItem;
    dxLayoutControl7Item8: TdxLayoutItem;
    dxLayoutControl7Item9: TdxLayoutItem;
    dxLayoutControl7Item10: TdxLayoutItem;
    dxLayoutControl7Item11: TdxLayoutItem;
    dxLayoutControl7Item12: TdxLayoutItem;
    dxLayoutControl7Item13: TdxLayoutItem;
    dxLayoutControl7Item14: TdxLayoutItem;
    dxLayoutControl7Item15: TdxLayoutItem;
    dxLayoutControl7Item16: TdxLayoutItem;
    dxLayoutControl7Item17: TdxLayoutItem;
    dxLayoutControl7Item18: TdxLayoutItem;
    dxLayoutControl7Item19: TdxLayoutItem;
    dxLayoutControl7Item20: TdxLayoutItem;
    dxLayoutControl7Item21: TdxLayoutItem;
    dxLayoutControl7Item22: TdxLayoutItem;
    dxLayoutControl7Item23: TdxLayoutItem;
    dxLayoutControl7Item24: TdxLayoutItem;
    dxLayoutControl7Item25: TdxLayoutItem;
    dxLayoutControl7Item26: TdxLayoutItem;
    dxLayoutControl7Item27: TdxLayoutItem;
    dxLayoutControl7Group2: TdxLayoutGroup;
    dxLayoutControl7Item28: TdxLayoutItem;
    dxLayoutControl7Item29: TdxLayoutItem;
    dxLayoutControl7Item30: TdxLayoutItem;
    dxLayoutControl7Group4: TdxLayoutGroup;
    dxLayoutControl7Item31: TdxLayoutItem;
    dxLayoutControl7Item32: TdxLayoutItem;
    dxLayoutControl7Item33: TdxLayoutItem;
    dxLayoutControl7Group5: TdxLayoutGroup;
    dxLayoutControl7Item34: TdxLayoutItem;
    dxLayoutControl7Item35: TdxLayoutItem;
    dxLayoutControl7Item36: TdxLayoutItem;
    dxLayoutControl7Group6: TdxLayoutGroup;
    dxLayoutControl7Item37: TdxLayoutItem;
    dxLayoutControl7Item38: TdxLayoutItem;
    dxLayoutControl7Item39: TdxLayoutItem;
    dxLayoutControl7Group7: TdxLayoutGroup;
    dxLayoutControl7Item40: TdxLayoutItem;
    dxLayoutControl7Group8: TdxLayoutGroup;
    dxLayoutControl7Item41: TdxLayoutItem;
    dxLayoutControl7Item42: TdxLayoutItem;
    dxLayoutControl7Item43: TdxLayoutItem;
    dxLayoutControl7Group9: TdxLayoutGroup;
    dxLayoutControl7Item44: TdxLayoutItem;
    dxLayoutControl7Item45: TdxLayoutItem;
    dxLayoutControl7Group10: TdxLayoutGroup;
    dxLayoutControl7Item46: TdxLayoutItem;
    dxLayoutControl7Item47: TdxLayoutItem;
    dxLayoutControl7Item48: TdxLayoutItem;
    dxLayoutControl7Group11: TdxLayoutGroup;
    dxLayoutControl7Item49: TdxLayoutItem;
    dxLayoutControl7Item50: TdxLayoutItem;
    dxLayoutControl7Item51: TdxLayoutItem;
    dxLayoutControl7Group12: TdxLayoutGroup;
    dxLayoutControl7Item52: TdxLayoutItem;
    dxLayoutControl7Item53: TdxLayoutItem;
    dxLayoutControl7Item54: TdxLayoutItem;
    dxLayoutControl7Group13: TdxLayoutGroup;
    cdsEntityKTP_LIFETIME: TStringField;
    cdsEntityKSEI_CLIENT_CODE: TStringField;
    cdsEntityBICCODE: TStringField;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    cmbRisk: TcxDBImageComboBox;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl4Item5: TdxLayoutItem;
    cxDBCheckGroup3: TcxDBCheckGroup;
    alDocument: TActionList;
    actView: TNAction;
    pmDocument: TPopupMenu;
    procedure gvwDocumentDOCFILENAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsEntityNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsEntitySOURCEFUNDChange(Sender: TField);
    procedure cdsEntityINVESTOBJECTIVEChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure glvAddressInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure glvAddressEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure glvContactEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure glvContactInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure ChangePropertiesDBComboBoxRequired3Field(Sender: TObject);
    procedure ChangePropertiesDBComboBoxRequired2Field(Sender: TObject);
    procedure ChangePropertiesDBComboBoxRequired1Field(Sender: TObject);
    procedure ChangePropertiesDBComboBoxRequiredFatcha(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure cdsEntityAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure UploadDocs(AFileName: string);
  public
    { Public declarations }
  end;

var
  frmEntityIns: TfrmEntityIns;

implementation

{$R *.dfm}

uses FormEntityList, DataGlobal, cxLookupDBGrid;

procedure TfrmEntityIns.actViewExecute(Sender: TObject);
var
 blob : TStream;
 sFileName: string;
begin
  sFileName := GetCurrentDir+'\Temp';

  if not DirectoryExists(sFileName) then
    CreateDir(sFileName);

  blob := cdsEntDOC.CreateBlobStream(cdsEntDOC.FieldByName('DOCOBJECT'), bmRead);
  try
    blob.Seek(0, soFromBeginning);

    sFileName := sFileName+'\'+cdsEntDOCDOCFILENAME.AsString;
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

procedure TfrmEntityIns.cdsEntityAfterPost(DataSet: TDataSet);
var
  sFL, sCustType: string;
  iSeqNo: Integer;
begin
  inherited;
  if cdsEntityENTTID.AsInteger = -1 then
  begin
    if cdsEntityENTACCTYPE.AsString = 'l' then
      sFL := '0'
    else
      sFL := '1';

    if cdsEntityCUST_TYPE.AsInteger = 0 then
      sCustType := '1'
    else if cdsEntityCUST_TYPE.AsInteger = 1 then
      sCustType := '2'
    else
      sCustType := '3';

    iSeqNo := dmGlobal.RemoteServer.GetSeq('main.B_ENTITY');

    cdsEntityENTTID.AsInteger  := dmGlobal.RemoteServer.GetSeq('TBL_B_ENTITY');
    cdsEntityENTTCODE.AsString := sFL + sCustType + FormatFloat('0000000', iSeqNo) ;
  end;
end;

procedure TfrmEntityIns.cdsEntityINVESTOBJECTIVEChange(Sender: TField);
var
  sValue, sKSEI: String;
  i: Integer;
begin
  inherited;
  sKSEI := '';
  sValue := cdsEntityINVESTOBJECTIVE.AsString;
  for i := 1 to Length(sValue) do
  begin
    if sValue[i] = '1' then
    begin
      if sKSEI <> '' then
        sKSEI := sKSEI + ',';

      sKSEI := sKSEI + IntToStr(i);
    end;
  end;

  cdsEntityINVESTOBJECTIVEKSEI.AsString := sKSEI;
end;

procedure TfrmEntityIns.cdsEntityNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEntityENTTID.AsInteger := -1;
  cdsEntityENTTCODE.AsString := '<Auto>';
end;

procedure TfrmEntityIns.cdsEntitySOURCEFUNDChange(Sender: TField);
var
  sValue, sKSEI: String;
  i: Integer;
begin
  inherited;
  sKSEI := '';
  sValue := cdsEntitySOURCEFUND.AsString;
  for i := 1 to Length(sValue) do
  begin
    if sValue[i] = '1' then
    begin
      if sKSEI <> '' then
        sKSEI := sKSEI + ',';

      sKSEI := sKSEI + IntToStr(i);
    end;
  end;

  cdsEntitySOURCEFUNDKSEI.AsString := sKSEI;
  lcSourceFundOther.Visible := sValue[1] = '1';
end;

procedure TfrmEntityIns.ChangePropertiesDBComboBoxRequired1Field(
  Sender: TObject);
var
  AFieldName: string;
  bStatus: boolean;
  sStatus: String;
begin
  AfieldName:= TcxDBImageComboBox(Sender).DataBinding.DataField;
  if dsSubject.DataSet <> Nil then
  begin
    bStatus:= dsSubject.DataSet.FieldByName(AFieldName).Required;
    sStatus := TcxDBImageComboBox(Sender).EditValue;
    if sStatus = '1' then
      bStatus := True
    else
      bStatus := False;

    dsSubject.DataSet.FieldByName(AFieldName+'_NAME').Required := bStatus;
  end;
end;

procedure TfrmEntityIns.ChangePropertiesDBComboBoxRequired2Field(
  Sender: TObject);
var
  AFieldName: string;
  bStatus: boolean;
  sStatus: String;
begin
  AfieldName:= TcxDBImageComboBox(Sender).DataBinding.DataField;
  if dsSubject.DataSet <> Nil then
  begin
    bStatus:= dsSubject.DataSet.FieldByName(AFieldName).Required;
    sStatus := TcxDBImageComboBox(Sender).EditValue;
    if sStatus = '1' then
      bStatus := True
    else
      bStatus := False;

//    dsSubject.DataSet.FieldByName(AFieldName+'_NAME').Required := bStatus;
//    dsSubject.DataSet.FieldByName(AFieldName+'_DESC1').Required := bStatus;
  end;
end;

procedure TfrmEntityIns.ChangePropertiesDBComboBoxRequired3Field(
  Sender: TObject);
var
  AFieldName: string;
  bStatus: boolean;
  sStatus: String;
begin
  AfieldName:= TcxDBImageComboBox(Sender).DataBinding.DataField;
  if dsSubject.DataSet <> Nil then
  begin
    bStatus:= dsSubject.DataSet.FieldByName(AFieldName).Required;
    sStatus := TcxDBImageComboBox(Sender).EditValue;
    if sStatus = '1' then
      bStatus := True
    else
      bStatus := False;

//    dsSubject.DataSet.FieldByName(AFieldName+'_NAME').Required := bStatus;
//    dsSubject.DataSet.FieldByName(AFieldName+'_DESC1').Required := bStatus;
//    dsSubject.DataSet.FieldByName(AFieldName+'_DESC2').Required := bStatus;
  end;
end;

procedure TfrmEntityIns.ChangePropertiesDBComboBoxRequiredFatcha(
  Sender: TObject);
var
  AFieldName: string;
  bStatus: boolean;
  sStatus: String;
begin
  AfieldName:= TcxDBImageComboBox(Sender).DataBinding.DataField;
  if dsSubject.DataSet <> Nil then
  begin
    bStatus:= dsSubject.DataSet.FieldByName(AFieldName).Required;
    sStatus := TcxDBImageComboBox(Sender).EditValue;
    if sStatus = '1' then
      bStatus := True
    else
      bStatus := False;

//    dsSubject.DataSet.FieldByName(AFieldName+'_DESC').Required := bStatus;
  end;
end;

procedure TfrmEntityIns.FormCreate(Sender: TObject);
begin
  inherited;
  pageEntity.ActivePage := tabGeneral;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBranch.Active then
      cdsLuBranch.Open
    else
      cdsLuBranch.Refresh;

    if not cdsLuSales.Active then
      cdsLuSales.Open
    else
      cdsLuSales.Refresh;

    if not cdsLuBusinessType.Active then
      cdsLuBusinessType.Open
    else
      cdsLuBusinessType.Refresh;

    if not cdsLuBank.Active then
      cdsLuBank.Open
    else
      cdsLuBank.Refresh;

    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open
    else
      cdsLuCounNation.Refresh;

    if not cdsLuProvince.Active then
      cdsLuProvince.Open
    else
      cdsLuProvince.Refresh;

    if not cdsLuCity.Active then
      cdsLuCity.Open
    else
      cdsLuCity.Refresh;

    if not cdsLuTaxID.Active then
      cdsLuTaxID.Open
    else
      cdsLuTaxID.Refresh;

    if not cdsLuAddressType.Active then
      cdsLuAddressType.Open
    else
      cdsLuAddressType.Refresh;
  end;
end;

procedure TfrmEntityIns.FormShow(Sender: TObject);
begin
  inherited;
  if (not dsSubject.DataSet.FieldByName('SOURCEFUND').IsNull)
    and (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString <> '') then
  begin
    lcSourceFundOther.Visible := (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString[1] = '1');
  end
  else
    lcSourceFundOther.Visible := False;

//  tabKYC.TabVisible := (dmGlobal.RemoteServer.GetBrokerCode = 'YU');
  tabTrackingInfo.TabVisible := False;

end;

procedure TfrmEntityIns.glvAddressEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
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

procedure TfrmEntityIns.glvAddressInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
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

procedure TfrmEntityIns.glvContactEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
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

procedure TfrmEntityIns.glvContactInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
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

procedure TfrmEntityIns.gvwDocumentDOCFILENAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if odDocs.Execute then
  begin
    if FileExists(odDocs.FileName) then
      UploadDocs(odDocs.FileName);
  end;
end;

procedure TfrmEntityIns.UploadDocs(AFileName: string);
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

Initialization
  RegisterClass(TfrmEntityIns);

end.
