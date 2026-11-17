unit FormEntityRet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxDBEdit, cxPCdxBarPopupMenu, cxGroupBox, cxRadioGroup, cxCalendar, cxPC,
  cxImageComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxButtonEdit,
  cxBlobEdit, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, cxMemo,
  cxCurrencyEdit, cxLabel, NClientDataset, cxCheckGroup, cxDBCheckGroup,
  cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView, cxSpinEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, dxLayoutLookAndFeels,
  dxBarBuiltInMenu, cxGridViewLayoutContainer, System.Actions, Vcl.ActnList,
  NDatasetAction, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges, dxScrollbarAnnotations;

const
  MinDateTime: TDateTime = -657434.0;      { 01/01/0100 12:00:00.000 AM }
  MaxDateTime: TDateTime =  2958100.99999; { 12/31/9998 11:59:59.999 PM }

type
  TfrmEntityRet = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    pgEntity: TcxPageControl;
    tabGeneral: TcxTabSheet;
    tabInvestInfo: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl3Item8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl3Item10: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl3Item20: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl3Item24: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    dxLayoutControl4Item4: TdxLayoutItem;
    tabAddress: TcxTabSheet;
    dsAddress: TDataSource;
    tabDocument: TcxTabSheet;
    cxGrid2: TcxGrid;
    gvwDocument: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsDocument: TDataSource;
    gvwDocumentDOCTYPE: TcxGridDBColumn;
    gvwDocumentDOCDESC: TcxGridDBColumn;
    gvwDocumentISEXPIRE: TcxGridDBColumn;
    gvwDocumentEXPIREDATE: TcxGridDBColumn;
    gvwDocumentDOCFILENAME: TcxGridDBColumn;
    odDocs: TOpenDialog;
    tabTrackingInfo: TcxTabSheet;
    dsTrackInfo: TDataSource;
    cxGrid6: TcxGrid;
    gvwTracking: TcxGridDBTableView;
    gvwTrackingINFODATE: TcxGridDBColumn;
    gvwTrackingINFOTYPE: TcxGridDBColumn;
    gvwTrackingINFOLEVEL: TcxGridDBColumn;
    gvwTrackingNOTES: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxDBImageComboBox5: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    cxButton1: TcxButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl3Item21: TdxLayoutItem;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Item22: TdxLayoutItem;
    TaxStatus: TcxDBImageComboBox;
    dxLayoutControl3Group9: TdxLayoutGroup;
    tabGuarantor: TcxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBImageComboBox6: TcxDBImageComboBox;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    txtGuProvince: TcxDBLookupComboBox;
    guCityCode: TcxDBLookupComboBox;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBTextEdit26: TcxDBTextEdit;
    GuarantorCurrAddress: TcxDBCheckBox;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    gucaCity: TcxDBLookupComboBox;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    SOFWBI: TcxDBImageComboBox;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBImageComboBox9: TcxDBImageComboBox;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    cxDBTextEdit38: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    GuarantorPanel: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item56: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Item52: TdxLayoutItem;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    GuarantorWorkInfo: TdxLayoutGroup;
    dxLayoutControl1Item37: TdxLayoutItem;
    dxLayoutControl1Item38: TdxLayoutItem;
    dxLayoutControl1Item39: TdxLayoutItem;
    dxLayoutControl1Item40: TdxLayoutItem;
    dxLayoutControl1Item41: TdxLayoutItem;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Item43: TdxLayoutItem;
    dxLayoutControl1Item44: TdxLayoutItem;
    dxLayoutControl1Item45: TdxLayoutItem;
    dxLayoutControl1Item46: TdxLayoutItem;
    OtherSourceOfFund: TdxLayoutItem;
    dxLayoutControl1Item48: TdxLayoutItem;
    dxLayoutControl1Item50: TdxLayoutItem;
    GuarantorCurrentAddress: TdxLayoutGroup;
    pnlGuarantorCurAddress: TdxLayoutItem;
    dxLayoutControl1Item53: TdxLayoutItem;
    dxLayoutControl1Item34: TdxLayoutItem;
    dxLayoutControl1Item54: TdxLayoutItem;
    dxLayoutControl1Item36: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl7Group2: TdxLayoutGroup;
    dxLayoutControl3Item18: TdxLayoutItem;
    cmbOccupation: TcxDBImageComboBox;
    lcOccupationOther: TdxLayoutItem;
    cxDBTextEdit39: TcxDBTextEdit;
    dxLayoutControl3Group10: TdxLayoutGroup;
    dxLayoutControl3Item25: TdxLayoutItem;
    cxDBTextEdit53: TcxDBTextEdit;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutControl3Item26: TdxLayoutItem;
    cxDBTextEdit55: TcxDBTextEdit;
    dxLayoutControl3Item27: TdxLayoutItem;
    cxDBTextEdit56: TcxDBTextEdit;
    dxLayoutControl3Item28: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl3Group12: TdxLayoutGroup;
    dxLayoutControl3Item29: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl3Item30: TdxLayoutItem;
    cxDBTextEdit57: TcxDBTextEdit;
    dxLayoutControl3Group13: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    cxDBTextEdit58: TcxDBTextEdit;
    dxLayoutControl3Group14: TdxLayoutGroup;
    dxLayoutControl3Group15: TdxLayoutGroup;
    dxLayoutControl3Group16: TdxLayoutGroup;
    dxLayoutControl3Item19: TdxLayoutItem;
    eduBackgroundOthers: TcxDBTextEdit;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBMaskEdit1: TcxDBMaskEdit;
    dxLayoutControl3Item33: TdxLayoutItem;
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
    cxDBCheckGroup1: TcxDBCheckGroup;
    dxLayoutControl4Item8: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Item10: TdxLayoutItem;
    edSourceFundOther: TcxDBTextEdit;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group10: TdxLayoutGroup;
    dxLayoutControl4Group12: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    cxDBCheckGroup2: TcxDBCheckGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    lcSourceFundOther: TdxLayoutGroup;
    dxLayoutControl4Group9: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl3Item14: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl3Group5: TdxLayoutGroup;
    cxDBMaskEdit2: TcxDBMaskEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    lcKTPExpDate: TdxLayoutItem;
    dxLayoutControl3Group8: TdxLayoutGroup;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl3Item13: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Group17: TdxLayoutGroup;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutControl3Item16: TdxLayoutItem;
    dxLayoutControl3Group18: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    lcNatureOfBusiness: TdxLayoutItem;
    dxLayoutControl3Group19: TdxLayoutGroup;
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
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cdsEntityINVESTORCAT: TStringField;
    cdsEntityARTICLE_ASSOCIATION: TStringField;
    cdsEntityASSET_OWNER: TStringField;
    cdsEntitySUPPLEMENTARY_DOCTYPE: TStringField;
    cdsEntitySUPPLEMENTARY_DOCEXP: TDateField;
    dxLayoutControl4Item11: TdxLayoutItem;
    cbAssetOwner: TcxDBImageComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl3Item17: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl3Item23: TdxLayoutItem;
    dxLayoutControl3Group20: TdxLayoutGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl3Item32: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl3Item34: TdxLayoutItem;
    dxLayoutControl3Group21: TdxLayoutGroup;
    cdsEntityDIRECTSID: TStringField;
    cdsEntityqryEntContact: TDataSetField;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
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
    dxLayoutGroup6: TdxLayoutGroup;
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
    grdAddressLevel1: TcxGridLevel;
    glvAddressLayoutItem1: TcxGridLayoutItem;
    glvAddressENTTID: TcxGridDBLayoutViewItem;
    cdsEntityINFO_01: TStringField;
    cdsEntityINFO_01_NAME: TStringField;
    cdsEntityINFO_01_DESC1: TStringField;
    cdsEntityINFO_01_DESC2: TStringField;
    cdsEntityINFO_02: TStringField;
    cdsEntityINFO_02_NAME: TStringField;
    cdsEntityINFO_02_DESC1: TStringField;
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
    dxLayoutControl6: TdxLayoutControl;
    KYC21: TcxDBTextEdit;
    KYC31: TcxDBTextEdit;
    KYC1: TcxDBImageComboBox;
    KYC11: TcxDBTextEdit;
    KYC2: TcxDBImageComboBox;
    KYC3: TcxDBImageComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBImageComboBox10: TcxDBImageComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBImageComboBox11: TcxDBImageComboBox;
    cxDBImageComboBox12: TcxDBImageComboBox;
    cxDBImageComboBox13: TcxDBImageComboBox;
    cxDBImageComboBox14: TcxDBImageComboBox;
    cxDBImageComboBox15: TcxDBImageComboBox;
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
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cmb: TcxDBImageComboBox;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBImageComboBox16: TcxDBImageComboBox;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBImageComboBox17: TcxDBImageComboBox;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBImageComboBox18: TcxDBImageComboBox;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit50: TcxDBTextEdit;
    cxDBImageComboBox19: TcxDBImageComboBox;
    cxDBImageComboBox20: TcxDBImageComboBox;
    cxDBImageComboBox21: TcxDBImageComboBox;
    cxDBImageComboBox22: TcxDBImageComboBox;
    cxDBImageComboBox23: TcxDBImageComboBox;
    cxDBImageComboBox24: TcxDBImageComboBox;
    cxDBImageComboBox25: TcxDBImageComboBox;
    cxDBImageComboBox26: TcxDBImageComboBox;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBTextEdit66: TcxDBTextEdit;
    cxDBTextEdit67: TcxDBTextEdit;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxDBTextEdit74: TcxDBTextEdit;
    cxDBTextEdit75: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutControl4Item20: TdxLayoutItem;
    dxLayoutControl4Item24: TdxLayoutItem;
    dxLayoutControl4Item31: TdxLayoutItem;
    dxLayoutControl4Item15: TdxLayoutItem;
    dxLayoutControl4Item16: TdxLayoutItem;
    dxLayoutControl4Item19: TdxLayoutItem;
    dxLayoutControl4Group15: TdxLayoutGroup;
    dxLayoutControl4Group8: TdxLayoutGroup;
    dxLayoutControl6Group2: TdxLayoutGroup;
    dxLayoutControl6Group3: TdxLayoutGroup;
    dxLayoutControl6Item2: TdxLayoutItem;
    dxLayoutControl6Item3: TdxLayoutItem;
    dxLayoutControl6Group4: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutControl6Item4: TdxLayoutItem;
    dxLayoutControl6Item5: TdxLayoutItem;
    dxLayoutControl6Item6: TdxLayoutItem;
    dxLayoutControl6Group5: TdxLayoutGroup;
    dxLayoutControl6Item7: TdxLayoutItem;
    dxLayoutControl6Item8: TdxLayoutItem;
    dxLayoutControl6Item9: TdxLayoutItem;
    dxLayoutControl6Item10: TdxLayoutItem;
    dxLayoutControl6Item11: TdxLayoutItem;
    dxLayoutControl6Item12: TdxLayoutItem;
    dxLayoutControl6Item13: TdxLayoutItem;
    dxLayoutControl6Item14: TdxLayoutItem;
    dxLayoutControl6Item15: TdxLayoutItem;
    dxLayoutControl6Group6: TdxLayoutGroup;
    dxLayoutControl6Group7: TdxLayoutGroup;
    dxLayoutControl6Group8: TdxLayoutGroup;
    dxLayoutControl6Group9: TdxLayoutGroup;
    dxLayoutControl6Group10: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutControl6Item16: TdxLayoutItem;
    dxLayoutControl6Item17: TdxLayoutItem;
    dxLayoutControl6Item18: TdxLayoutItem;
    dxLayoutControl6Item19: TdxLayoutItem;
    dxLayoutControl6Item20: TdxLayoutItem;
    dxLayoutControl6Item21: TdxLayoutItem;
    dxLayoutControl6Item22: TdxLayoutItem;
    dxLayoutControl6Item23: TdxLayoutItem;
    dxLayoutControl6Item24: TdxLayoutItem;
    dxLayoutControl6Item25: TdxLayoutItem;
    dxLayoutControl6Item26: TdxLayoutItem;
    dxLayoutControl6Item27: TdxLayoutItem;
    dxLayoutControl6Item28: TdxLayoutItem;
    dxLayoutControl6Group11: TdxLayoutGroup;
    dxLayoutControl6Item29: TdxLayoutItem;
    dxLayoutControl6Item30: TdxLayoutItem;
    dxLayoutControl6Item31: TdxLayoutItem;
    dxLayoutControl6Group12: TdxLayoutGroup;
    dxLayoutControl6Item32: TdxLayoutItem;
    dxLayoutControl6Item33: TdxLayoutItem;
    dxLayoutControl6Item34: TdxLayoutItem;
    dxLayoutControl6Item35: TdxLayoutItem;
    dxLayoutControl6Group13: TdxLayoutGroup;
    dxLayoutControl6Item36: TdxLayoutItem;
    dxLayoutControl6Item37: TdxLayoutItem;
    dxLayoutControl6Item38: TdxLayoutItem;
    dxLayoutControl6Item39: TdxLayoutItem;
    dxLayoutControl6Group14: TdxLayoutGroup;
    dxLayoutControl6Item40: TdxLayoutItem;
    dxLayoutControl6Item41: TdxLayoutItem;
    dxLayoutControl6Item42: TdxLayoutItem;
    dxLayoutControl6Item43: TdxLayoutItem;
    dxLayoutControl6Item44: TdxLayoutItem;
    dxLayoutControl6Item45: TdxLayoutItem;
    dxLayoutControl6Item46: TdxLayoutItem;
    dxLayoutControl6Item47: TdxLayoutItem;
    dxLayoutControl6Item48: TdxLayoutItem;
    dxLayoutControl6Item49: TdxLayoutItem;
    dxLayoutControl6Group15: TdxLayoutGroup;
    dxLayoutControl6Item50: TdxLayoutItem;
    dxLayoutControl6Item51: TdxLayoutItem;
    dxLayoutControl6Group16: TdxLayoutGroup;
    dxLayoutControl6Item52: TdxLayoutItem;
    dxLayoutControl6Item53: TdxLayoutItem;
    dxLayoutControl6Group17: TdxLayoutGroup;
    dxLayoutControl6Item55: TdxLayoutItem;
    dxLayoutControl6Item56: TdxLayoutItem;
    dxLayoutControl6Group18: TdxLayoutGroup;
    dxLayoutControl6Item58: TdxLayoutItem;
    dxLayoutControl6Item59: TdxLayoutItem;
    dxLayoutControl6Group19: TdxLayoutGroup;
    dxLayoutControl6Item60: TdxLayoutItem;
    dxLayoutControl6Item61: TdxLayoutItem;
    dxLayoutControl6Group20: TdxLayoutGroup;
    dxLayoutControl6Item62: TdxLayoutItem;
    dxLayoutControl6Group21: TdxLayoutGroup;
    dxLayoutControl6Item63: TdxLayoutItem;
    dxLayoutControl6Item64: TdxLayoutItem;
    dxLayoutControl6Group22: TdxLayoutGroup;
    dxLayoutControl6Item65: TdxLayoutItem;
    dxLayoutControl6Group23: TdxLayoutGroup;
    dxLayoutControl6Item66: TdxLayoutItem;
    dxLayoutControl6Group24: TdxLayoutGroup;
    dxLayoutControl6Item67: TdxLayoutItem;
    dxLayoutControl6Item68: TdxLayoutItem;
    dxLayoutControl6Item69: TdxLayoutItem;
    dxLayoutControl6Item54: TdxLayoutItem;
    dxLayoutControl6Item57: TdxLayoutItem;
    dsAuth: TDataSource;
    cdsEntAuth: TNClientDataset;
    cdsEntAuthENTTID: TIntegerField;
    cdsEntAuthSEQNO: TIntegerField;
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
    glvAuthENTTID: TcxGridDBLayoutViewItem;
    glvAuthSEQNO: TcxGridDBLayoutViewItem;
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
    dxLayoutGroup13: TdxLayoutGroup;
    glvAuthLayoutItem2: TcxGridLayoutItem;
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
    dxLayoutGroup14: TdxLayoutGroup;
    glvAuthGroup2: TdxLayoutGroup;
    glvAuthGroup3: TdxLayoutGroup;
    glvAuthGroup4: TdxLayoutGroup;
    glvAuthGroup5: TdxLayoutGroup;
    cxGridLayoutItem1: TcxGridLayoutItem;
    grdAuthLevel1: TcxGridLevel;
    cdsEntityKTP_LIFETIME: TStringField;
    cdsEntityKSEI_CLIENT_CODE: TStringField;
    cdsEntityBICCODE: TStringField;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl3Item35: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    cmbRisk: TcxDBImageComboBox;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl4Item5: TdxLayoutItem;
    cxDBCheckGroup3: TcxDBCheckGroup;
    alDocument: TActionList;
    actView: TNAction;
    pmDocument: TPopupMenu;
    cdsEntityINFO_02_DESC2: TStringField;
    cdsEntityOA_DATE: TDateTimeField;
    cdsEntityHRC_STATUS: TStringField;
    cdsEntityHRC_REMARKS: TStringField;
    cdsEntityASSESSMENT_STATUS: TStringField;
    cdsEntityASSESSMENT_DATE: TDateTimeField;
    cdsEntitySYNC: TStringField;
    tabHeir: TcxTabSheet;
    glvHeir: TcxGridLevel;
    drdHeir: TcxGrid;
    gvwHeirGroup_Root: TdxLayoutGroup;
    gvwHeir: TcxGridDBLayoutView;
    cdsEntHeir: TNClientDataset;
    cdsEntHeirENTTID: TIntegerField;
    cdsEntHeirSEQID: TIntegerField;
    cdsEntHeirHEIR_NAME: TStringField;
    cdsEntHeirRELATION: TStringField;
    cdsEntHeirNO_TELP: TStringField;
    cdsEntHeirNIK: TStringField;
    cdsEntHeirMODDA: TDateTimeField;
    cdsEntHeirMODUI: TStringField;
    cdsEntHeirAPPDA: TDateTimeField;
    cdsEntHeirAPPUI: TStringField;
    cdsEntHeirUNDER4Y: TIntegerField;
    cdsEntHeirUNDER4YDA: TDateTimeField;
    cdsEntHeirNOTES4Y: TStringField;
    cdsEntHeirISDEL: TIntegerField;
    cdsEntHeirID: TLargeintField;
    dsEntHeir: TDataSource;
    gvwHeirLayoutItem1: TcxGridLayoutItem;
    gvwHeirENTTID: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem2: TcxGridLayoutItem;
    gvwHeirSEQID: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem3: TcxGridLayoutItem;
    gvwHeirHEIR_NAME: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem4: TcxGridLayoutItem;
    gvwHeirRELATION: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem5: TcxGridLayoutItem;
    gvwHeirNO_TELP: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem6: TcxGridLayoutItem;
    gvwHeirNIK: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem7: TcxGridLayoutItem;
    gvwHeirMODDA: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem8: TcxGridLayoutItem;
    gvwHeirMODUI: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem9: TcxGridLayoutItem;
    gvwHeirAPPDA: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem10: TcxGridLayoutItem;
    gvwHeirAPPUI: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem11: TcxGridLayoutItem;
    gvwHeirUNDER4Y: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem12: TcxGridLayoutItem;
    gvwHeirUNDER4YDA: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem13: TcxGridLayoutItem;
    gvwHeirNOTES4Y: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem14: TcxGridLayoutItem;
    gvwHeirISDEL: TcxGridDBLayoutViewItem;
    gvwHeirLayoutItem15: TcxGridLayoutItem;
    gvwHeirID: TcxGridDBLayoutViewItem;
    gvwHeirAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure gvwDocumentDOCFILENAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure GuarantorCurrAddressClick(Sender: TObject);
    procedure TaxStatusPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsEntityNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsEntitySOURCEFUNDChange(Sender: TField);
    procedure cdsEntityINVESTOBJECTIVEChange(Sender: TField);
    procedure cmbOccupationPropertiesChange(Sender: TObject);
    procedure glvAddressInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure cdsEntityFIRSTNAMEChange(Sender: TField);
    procedure glvAddressEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsEntityAfterOpen(DataSet: TDataSet);
    procedure cdsEntityKTP_LIFETIMEChange(Sender: TField);
    procedure glvContactEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure glvContactInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure ChangePropertiesDBComboBoxRequired4Field(Sender: TObject);
    procedure ChangePropertiesDBComboBoxRequired3Field(Sender: TObject);
    procedure ChangePropertiesDBComboBoxRequired2Field(Sender: TObject);
    procedure ChangePropertiesDBComboBoxRequired1Field(Sender: TObject);
    procedure ChangePropertiesDBComboBoxRequiredFatcha(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure cdsEntityAfterPost(DataSet: TDataSet);
    procedure cdsEntHeirNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure UploadDocs(AFileName: string);
  public
    { Public declarations }
  end;

var
  frmEntityRet: TfrmEntityRet;

implementation

{$R *.dfm}

uses FormEntityList, DataGlobal, cxLookupDBGrid;

procedure TfrmEntityRet.actViewExecute(Sender: TObject);
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

procedure TfrmEntityRet.cdsEntHeirNewRecord(DataSet: TDataSet);
begin
  inherited;
  if cdsEntity.State in [dsBrowse] then
    cdsEntity.Edit;

  cdsEntHeirENTTID.AsInteger := cdsEntityENTTID.AsInteger;
end;

procedure TfrmEntityRet.cdsEntityAfterOpen(DataSet: TDataSet);
begin
  inherited;
  lcKTPExpDate.Enabled := cdsEntityKTP_LIFETIME.AsString <> '1';

  cdsEntHeir.Close;
  cdsEntHeir.Params[0].AsInteger;
  cdsEntHeir.Open;
end;

procedure TfrmEntityRet.cdsEntityAfterPost(DataSet: TDataSet);
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

  cdsEntHeir.ApplyUpdates(-1);
end;

procedure TfrmEntityRet.cdsEntityFIRSTNAMEChange(Sender: TField);
begin
  inherited;
  cdsEntityENTNAME.AsString := cdsEntityFIRSTNAME.AsString + ' '
    + cdsEntityMIDDLENAME.AsString + ' '
    + cdsEntityLASTNAME.AsString;
end;

procedure TfrmEntityRet.cdsEntityINVESTOBJECTIVEChange(Sender: TField);
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

procedure TfrmEntityRet.cdsEntityKTP_LIFETIMEChange(Sender: TField);
begin
  inherited;
  if cdsEntityKTP_LIFETIME.AsString = '1' then
    cdsEntityKTP_EXPDATE.AsDateTime := MaxDateTime;

  lcKTPExpDate.Enabled := cdsEntityKTP_LIFETIME.AsString <> '1';
end;

procedure TfrmEntityRet.cdsEntityNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEntityENTTID.AsInteger  := -1;
  cdsEntityENTTCODE.AsString := '<Auto>';
end;

procedure TfrmEntityRet.cdsEntitySOURCEFUNDChange(Sender: TField);
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

procedure TfrmEntityRet.ChangePropertiesDBComboBoxRequired1Field(
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

procedure TfrmEntityRet.ChangePropertiesDBComboBoxRequired2Field(
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

procedure TfrmEntityRet.ChangePropertiesDBComboBoxRequired3Field(
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

procedure TfrmEntityRet.ChangePropertiesDBComboBoxRequired4Field(
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
//    dsSubject.DataSet.FieldByName(AFieldName+'_DESC3').Required := bStatus;
  end;
end;

procedure TfrmEntityRet.ChangePropertiesDBComboBoxRequiredFatcha(
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

    dsSubject.DataSet.FieldByName(AFieldName+'_DESC').Required := bStatus;
  end;
end;

procedure TfrmEntityRet.cmbOccupationPropertiesChange(Sender: TObject);
begin
  inherited;
  lcOccupationOther.Visible := cmbOccupation.ItemIndex = 0;
  lcNatureOfBusiness.Visible := cmbOccupation.ItemIndex = 4;
end;

procedure TfrmEntityRet.cxButton1Click(Sender: TObject);
var
  sFileName: String;
begin
  inherited;
  sFileName := dmGlobal.AppPath + 'Temp\Account.xml';
  TClientDataSet(dsSubject.DataSet).SaveToFile(sFileName, dfXMLUTF8);
end;

procedure TfrmEntityRet.cxButton2Click(Sender: TObject);
var
  sFileName: String;
begin
  inherited;
  sFileName := dmGlobal.AppPath + 'Temp\Account.cds';
  TClientDataSet(dsSubject.DataSet).SaveToFile(sFileName, dfBinary);
end;

procedure TfrmEntityRet.FormCreate(Sender: TObject);
begin
  inherited;
  pgEntity.ActivePage := tabGeneral;

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

procedure TfrmEntityRet.FormShow(Sender: TObject);
begin
  inherited;
  tabGuarantor.Visible := dsSubject.DataSet.FieldByName('TAXPAYER_STATUS').AsInteger = 2;
  tabHeir.Visible      := False;
  pgEntity.Pages[2].TabVisible := dsSubject.DataSet.FieldByName('TAXPAYER_STATUS').AsInteger = 2;
  if (not dsSubject.DataSet.FieldByName('SOURCEFUND').IsNull)
    and (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString <> '') then
  begin
    lcSourceFundOther.Visible := (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString[1] = '1');
  end
  else
    lcSourceFundOther.Visible := False;

//  tabKYC.TabVisible := (dmGlobal.RemoteServer.GetBrokerCode = 'YU');
  tabTrackingInfo.TabVisible := False;

  cmbOccupationPropertiesChange(cmbOccupation);
end;

procedure TfrmEntityRet.glvAddressEditing(Sender: TcxCustomGridTableView;
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

procedure TfrmEntityRet.glvAddressInitEdit(Sender: TcxCustomGridTableView;
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

procedure TfrmEntityRet.glvContactEditing(Sender: TcxCustomGridTableView;
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

procedure TfrmEntityRet.glvContactInitEdit(Sender: TcxCustomGridTableView;
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

procedure TfrmEntityRet.GuarantorCurrAddressClick(Sender: TObject);
begin
  inherited;
  GuarantorCurrentAddress.Visible := GuarantorCurrAddress.Checked;
end;

procedure TfrmEntityRet.gvwDocumentDOCFILENAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if odDocs.Execute then
  begin
    if FileExists(odDocs.FileName) then
      UploadDocs(odDocs.FileName);
  end;
end;

procedure TfrmEntityRet.TaxStatusPropertiesChange(Sender: TObject);
begin
  inherited;
  if TaxStatus.ItemIndex = 1 then
  begin
    GuarantorPanel.Visible    := True;
    GuarantorWorkInfo.Visible := True;

    pgEntity.Pages[2].TabVisible := True;
  end
  else
  begin
    GuarantorPanel.Visible    := False;
    GuarantorWorkInfo.Visible := False;

    pgEntity.Pages[2].TabVisible := False;
  end;
end;

procedure TfrmEntityRet.UploadDocs(AFileName: string);
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
  RegisterClass(TfrmEntityRet);

end.
