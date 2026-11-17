unit FormCOBInstitution;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter,
  cxPCdxBarPopupMenu, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxDBEdit, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxMemo,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxImageComboBox, cxPC,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Tabs, dxStatusBar, cxButtons, dxLayoutControl,
  cxCheckBox, Datasnap.DBClient, NClientDataset, Vcl.DBCtrls, cxButtonEdit,
  NDatasetContainer, Vcl.ActnList, NDatasetAction, Winapi.ShellAPI;

type
  TfrmCOBInstitution = class(TfrmEditorData)
    dsCOBBOD: TDataSource;
    dsCOBBankAcc: TDataSource;
    cdsEntityByParam: TNClientDataset;
    cdsEntityByParamENTTID: TIntegerField;
    cdsEntityByParamENTTCODE: TStringField;
    cdsEntityByParamBRANCHID: TLargeintField;
    cdsEntityByParamSALESID: TLargeintField;
    cdsEntityByParamENTNAME: TStringField;
    cdsEntityByParamCREATEDATE: TDateTimeField;
    cdsEntityByParamENTSTATUS: TStringField;
    cdsEntityByParamBUSSTYPEID: TLargeintField;
    cdsEntityByParamENTTYPE: TStringField;
    cdsEntityByParamENTACCTYPE: TStringField;
    cdsEntityByParamAFFIL: TBooleanField;
    cdsEntityByParamRET_IDCARDTYPE: TStringField;
    cdsEntityByParamRET_IDCARDNO: TStringField;
    cdsEntityByParamRET_IDCARDEXPIRE: TDateField;
    cdsEntityByParamRET_EMAIL: TStringField;
    cdsEntityByParamRET_HOMEPHONE: TStringField;
    cdsEntityByParamRET_HOMEFAX: TStringField;
    cdsEntityByParamRET_MOBILE: TStringField;
    cdsEntityByParamRET_OCCUPATION: TStringField;
    cdsEntityByParamRET_JOBTITTLE: TStringField;
    cdsEntityByParamRET_COMPANYNAME: TStringField;
    cdsEntityByParamRET_BIRTDATE: TDateField;
    cdsEntityByParamRET_BIRTHPLACE: TStringField;
    cdsEntityByParamRET_GENDER: TStringField;
    cdsEntityByParamSOURCEFUND: TStringField;
    cdsEntityByParamINVESTOBJECTIVE: TStringField;
    cdsEntityByParamINVESTEXP: TStringField;
    cdsEntityByParamANUALINCOME: TStringField;
    cdsEntityByParamESTDAILYTRADE: TStringField;
    cdsEntityByParamINS_DATEOFESTABLIZED: TDateField;
    cdsEntityByParamINS_DATEOFGAZETTE: TDateField;
    cdsEntityByParamINS_NOOFGAZETTE: TStringField;
    cdsEntityByParamINS_COMPTYPE: TStringField;
    cdsEntityByParamINS_TOTALASET: TStringField;
    cdsEntityByParamINS_AUTHNAME: TStringField;
    cdsEntityByParamINS_AUTHADDDRESS: TStringField;
    cdsEntityByParamINS_AUTHIDCARDTYPE: TStringField;
    cdsEntityByParamINS_AUTHIDCARDNO: TStringField;
    cdsEntityByParamINS_AUTHIDCARDEXPDATE: TDateField;
    cdsEntityByParamINS_AUTHPHONE: TStringField;
    cdsEntityByParamINS_AUTHMOBILE: TStringField;
    cdsEntityByParamINS_AUTHFAX: TStringField;
    cdsEntityByParamINS_AUTHEMAIL: TStringField;
    cdsEntityByParamINS_CPNAME: TStringField;
    cdsEntityByParamINS_CPADDRESS: TStringField;
    cdsEntityByParamINS_CPPOSITION: TStringField;
    cdsEntityByParamINS_CPTITLE: TStringField;
    cdsEntityByParamINS_COMPPHONE: TStringField;
    cdsEntityByParamINS_COMPFAX: TStringField;
    cdsEntityByParamCNTREST: TStringField;
    cdsEntityByParamCNTCITIZEN: TStringField;
    cdsEntityByParamCNTINVESTMENT: TStringField;
    cdsEntityByParamSIDNO: TStringField;
    cdsEntityByParamTAXID: TStringField;
    cdsEntityByParamRET_MARITALSTATUS: TStringField;
    cdsEntityByParamRET_SPOUSENAME: TStringField;
    cdsEntityByParamRET_HEIRNAME: TStringField;
    cdsEntityByParamRET_HEIRRELATION: TStringField;
    cdsEntityByParamRET_EDUBACKGROUND: TStringField;
    cdsEntityByParamSOURCEFUNDOTHERS: TStringField;
    cdsEntityByParamINS_BUSSTYPE: TStringField;
    cdsEntityByParamMODDA: TDateTimeField;
    cdsEntityByParamMODUI: TStringField;
    cdsEntityByParamAPPDA: TDateTimeField;
    cdsEntityByParamAPPUI: TStringField;
    cdsEntityByParamUNDER4Y: TIntegerField;
    cdsEntityByParamUNDER4YDA: TDateTimeField;
    cdsEntityByParamNOTES4Y: TStringField;
    cdsEntityByParamISDEL: TIntegerField;
    cdsEntityByParamID: TLargeintField;
    cdsEntityByParamCUST_TYPE: TIntegerField;
    cdsEntityByParamNPWP: TStringField;
    cdsEntityByParamNPWP_REGDATE: TDateField;
    cdsEntityByParamqryEntTrackInfo: TDataSetField;
    cdsEntityByParamqryEntSHL: TDataSetField;
    cdsEntityByParamqryEntDOC: TDataSetField;
    cdsEntityByParamqryEntContact: TDataSetField;
    cdsEntityByParamqryEntBOD: TDataSetField;
    cdsEntityByParamqryEntBank: TDataSetField;
    cdsEntityByParamqryEntAddress: TDataSetField;
    cdsEntAddress: TNClientDataset;
    cdsEntAddressENTTID: TIntegerField;
    cdsEntAddressSEQNO: TIntegerField;
    cdsEntAddressCOUNTCODE: TStringField;
    cdsEntAddressPROVCODE: TStringField;
    cdsEntAddressADDRTYPE: TStringField;
    cdsEntAddressADDRESS: TStringField;
    cdsEntAddressCITY: TStringField;
    cdsEntAddressZIPCODE: TStringField;
    cdsEntAddressTCADDRESS: TStringField;
    cdsEntAddressMODDA: TDateTimeField;
    cdsEntAddressMODUI: TStringField;
    cdsEntAddressAPPDA: TDateTimeField;
    cdsEntAddressAPPUI: TStringField;
    cdsEntAddressUNDER4Y: TIntegerField;
    cdsEntAddressUNDER4YDA: TDateTimeField;
    cdsEntAddressNOTES4Y: TStringField;
    cdsEntAddressISDEL: TIntegerField;
    cdsEntAddressID: TLargeintField;
    dsCOBBankCustody: TDataSource;
    OATabs: TcxPageControl;
    TabParticular: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cmbTypeOfSecurities: TcxDBImageComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    TaxpayerChk: TcxDBImageComboBox;
    cxDBDateEdit5: TcxDBDateEdit;
    FormOfBusinessChk: TcxDBImageComboBox;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    CompanyCharateristicChk: TcxDBImageComboBox;
    txtCompanyCharateristik: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    chkIsParent: TcxDBCheckBox;
    cmbParentID: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    txtFormOfBusinessOther: TdxLayoutItem;
    txtLineOfBusiness: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Item21: TdxLayoutItem;
    txtLayoutChar: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxLayoutControl1Item33: TdxLayoutItem;
    dxLayoutControl1Item34: TdxLayoutItem;
    dxLayoutControl1Item35: TdxLayoutItem;
    dxLayoutControl1Item36: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    TaxPayerRegNo: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl3Group10: TdxLayoutGroup;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    cmbParentAccID: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    TabAddress: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwBOD: TcxGridDBBandedTableView;
    gvwBODCUST_REG_NO: TcxGridDBBandedColumn;
    gvwBODBOD_NAME: TcxGridDBBandedColumn;
    gvwBODBOD_POSITION: TcxGridDBBandedColumn;
    gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn;
    gvwBODBOD_EMAIL: TcxGridDBBandedColumn;
    gvwBODBOD_NATIONALITY: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    TabSourceOfFund: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cmbAnnualNetProfit: TcxDBImageComboBox;
    cxDBImageComboBox4: TcxDBImageComboBox;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    txtSourceOfFundChk: TcxDBImageComboBox;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    txtInvestmentObjectiveChk: TcxDBImageComboBox;
    cxDBTextEdit50: TcxDBTextEdit;
    cxGrid2: TcxGrid;
    gvwBankAccount: TcxGridDBBandedTableView;
    gvwBankAccountCUST_REG_NO: TcxGridDBBandedColumn;
    gvwBankAccountACC_NO: TcxGridDBBandedColumn;
    gvwBankAccountBANK_NAME: TcxGridDBBandedColumn;
    gvwBankAccountBANK_BRANCH: TcxGridDBBandedColumn;
    gvwBankAccountBENEFICIARY: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    gvwBankCustody: TcxGridDBBandedTableView;
    gvwBankCustodyACCID: TcxGridDBBandedColumn;
    gvwBankCustodyCUSTODYCODE: TcxGridDBBandedColumn;
    gvwBankCustodyCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwBankCustodyCUSTODYACCNAME: TcxGridDBBandedColumn;
    gvwBankCustodyCUSTODYBRANCH: TcxGridDBBandedColumn;
    gvwBankCustodyACTLED_SEQID: TcxGridDBBandedColumn;
    gvwBankCustodyMODDA: TcxGridDBBandedColumn;
    gvwBankCustodyMODUI: TcxGridDBBandedColumn;
    gvwBankCustodyAPPDA: TcxGridDBBandedColumn;
    gvwBankCustodyAPPUI: TcxGridDBBandedColumn;
    gvwBankCustodyUNDER4Y: TcxGridDBBandedColumn;
    gvwBankCustodyUNDER4YDA: TcxGridDBBandedColumn;
    gvwBankCustodyNOTES4Y: TcxGridDBBandedColumn;
    gvwBankCustodyISDEL: TcxGridDBBandedColumn;
    gvwBankCustodyID: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Item13: TdxLayoutItem;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Item16: TdxLayoutItem;
    dxLayoutControl3Item17: TdxLayoutItem;
    txtSourceOfFund: TdxLayoutItem;
    dxLayoutControl3Item18: TdxLayoutItem;
    dxLayoutControl3Item19: TdxLayoutItem;
    txtInvestmentObjOther: TdxLayoutItem;
    dxLayoutControl3Item20: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group9: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    TabKnowYourCust: TcxTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    chkInfo: TcxDBImageComboBox;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBImageComboBox6: TcxDBImageComboBox;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBImageComboBox9: TcxDBImageComboBox;
    cxDBImageComboBox10: TcxDBImageComboBox;
    cxDBImageComboBox11: TcxDBImageComboBox;
    cxDBImageComboBox12: TcxDBImageComboBox;
    cxDBImageComboBox13: TcxDBImageComboBox;
    cxDBImageComboBox14: TcxDBImageComboBox;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutControl4Item12: TdxLayoutItem;
    dxLayoutControl4Item13: TdxLayoutItem;
    dxLayoutControl4Item14: TdxLayoutItem;
    dxLayoutControl4Item15: TdxLayoutItem;
    dxLayoutControl4Item16: TdxLayoutItem;
    dxLayoutControl4Item17: TdxLayoutItem;
    dxLayoutControl4Item18: TdxLayoutItem;
    dxLayoutControl4Item19: TdxLayoutItem;
    dxLayoutControl4Item20: TdxLayoutItem;
    dxLayoutControl4Item21: TdxLayoutItem;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxLayoutControl4Group6: TdxLayoutGroup;
    dxLayoutControl4Group14: TdxLayoutGroup;
    dxLayoutControl4Group15: TdxLayoutGroup;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Group7: TdxLayoutGroup;
    dxLayoutControl4Group8: TdxLayoutGroup;
    dxLayoutControl4Group9: TdxLayoutGroup;
    dxLayoutControl4Group10: TdxLayoutGroup;
    dxLayoutControl4Group11: TdxLayoutGroup;
    dxLayoutControl4Item11: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutControl4Item22: TdxLayoutItem;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Item23: TdxLayoutItem;
    dxLayoutControl4Item24: TdxLayoutItem;
    dxLayoutControl4Group12: TdxLayoutGroup;
    dxLayoutControl4Item25: TdxLayoutItem;
    dxLayoutControl4Group13: TdxLayoutGroup;
    dxLayoutControl4Item26: TdxLayoutItem;
    dxLayoutControl4Group16: TdxLayoutGroup;
    dxLayoutControl4Item27: TdxLayoutItem;
    dxLayoutControl4Group17: TdxLayoutGroup;
    dxLayoutControl4Item28: TdxLayoutItem;
    dxLayoutControl4Group18: TdxLayoutGroup;
    dxLayoutControl4Item29: TdxLayoutItem;
    dxLayoutControl4Group19: TdxLayoutGroup;
    dxLayoutControl4Item30: TdxLayoutItem;
    dxLayoutControl4Group20: TdxLayoutGroup;
    dxLayoutControl4Item31: TdxLayoutItem;
    dxLayoutControl4Group21: TdxLayoutGroup;
    dxLayoutControl4Item32: TdxLayoutItem;
    dxLayoutControl4Group22: TdxLayoutGroup;
    dxLayoutControl4Item33: TdxLayoutItem;
    dxLayoutControl4Group23: TdxLayoutGroup;
    dxLayoutControl4Item34: TdxLayoutItem;
    dxLayoutControl4Group24: TdxLayoutGroup;
    dxLayoutControl4Item35: TdxLayoutItem;
    dxLayoutControl4Item36: TdxLayoutItem;
    dxLayoutControl4Item37: TdxLayoutItem;
    dxLayoutControl4Group25: TdxLayoutGroup;
    dxLayoutControl4Item38: TdxLayoutItem;
    dxLayoutControl4Item39: TdxLayoutItem;
    dxLayoutControl4Group26: TdxLayoutGroup;
    dxLayoutControl4Item40: TdxLayoutItem;
    dxLayoutControl4Item41: TdxLayoutItem;
    dxLayoutControl4Item42: TdxLayoutItem;
    dxLayoutControl4Group27: TdxLayoutGroup;
    dxLayoutControl4Item43: TdxLayoutItem;
    dxLayoutControl4Item44: TdxLayoutItem;
    dxLayoutControl4Item45: TdxLayoutItem;
    dxLayoutControl4Group28: TdxLayoutGroup;
    dxLayoutControl4Item46: TdxLayoutItem;
    dxLayoutControl4Item47: TdxLayoutItem;
    dxLayoutControl4Item48: TdxLayoutItem;
    dxLayoutControl4Group29: TdxLayoutGroup;
    dxLayoutControl4Item49: TdxLayoutItem;
    dxLayoutControl4Group30: TdxLayoutGroup;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutControl3Group12: TdxLayoutGroup;
    TabDoc: TcxTabSheet;
    dsDocs: TDataSource;
    cxGrid4: TcxGrid;
    gvwUploadDocs: TcxGridDBBandedTableView;
    gvwUploadDocsDOC_TYPE: TcxGridDBBandedColumn;
    gvwUploadDocsNOTES: TcxGridDBBandedColumn;
    gvwUploadDocsTOKEN: TcxGridDBBandedColumn;
    gvwUploadDocsIMAGE_NAME: TcxGridDBBandedColumn;
    gvwUploadDocsUPLOADEDON: TcxGridDBBandedColumn;
    gvwUploadDocsUPLOADEDBY: TcxGridDBBandedColumn;
    gvwUploadDocsCID: TcxGridDBBandedColumn;
    gvwUploadDocsDOC_ATTACH: TcxGridDBBandedColumn;
    gvwUploadDocsCUST_REG_NO: TcxGridDBBandedColumn;
    gvwUploadDocsDOCEXPIRE: TcxGridDBBandedColumn;
    gvwUploadDocsDOCEXPIREDATE: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    odDocs: TOpenDialog;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    dxLayoutControl3Group13: TdxLayoutGroup;
    LineOfBusinessChk: TcxDBLookupComboBox;
    dxLayoutControl3Item6: TdxLayoutItem;
    pnlRisk: TPanel;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxLabel11: TcxLabel;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Group14: TdxLayoutGroup;
    gvwBankAccountCCY: TcxGridDBBandedColumn;
    ActionList1: TActionList;
    actView: TNAction;
    PopupMenu1: TPopupMenu;
    ViewDocument1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure pnlBODClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure pnlSourceOfFundClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure pnlInformationClick(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure CompanyCharateristicChkPropertiesChange(Sender: TObject);
    procedure FormOfBusinessChkPropertiesChange(Sender: TObject);
    procedure pnlClientDataClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure chkIsParentClick(Sender: TObject);
    procedure cmbParentIDExit(Sender: TObject);
    procedure gvwUploadDocsIMAGE_NAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure chkInfoPropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox12PropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox14PropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox6PropertiesChange(Sender: TObject);
    procedure cxDBLookupComboBox7PropertiesChange(Sender: TObject);
    procedure LineOfBusinessChkExit(Sender: TObject);
    procedure cxDBImageComboBox7PropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox8PropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox9PropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox10PropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox11PropertiesChange(Sender: TObject);
    procedure txtInvestmentObjectiveChkPropertiesChange(Sender: TObject);
    procedure txtSourceOfFundChkPropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox13Exit(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
  private
    { Private declarations }
    FParticularTab: Boolean;
    FAddressTab: Boolean;
    FFundSourceTab: Boolean;
    FKnownCustomerTab: Boolean;
    FAction: Integer;

    function SetColor(ATab: Boolean): TColor;
    function ValidateFields(AFieldList: Variant; AFieldNames: Variant): Boolean;
    function CheckMandatoryFields: Boolean;

    procedure UploadDocs(AFileName: string);
    procedure GetRisk;
  public
    { Public declarations }
  end;

var
  frmCOBInstitution: TfrmCOBInstitution;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal, DataLookup;

procedure TfrmCOBInstitution.actViewExecute(Sender: TObject);
var
  oStream: TStream;
  sFileName: string;
  aFileName: array[0..255] of WideChar;
  oDataSet : TDataSet;
  sDirName : string;
begin
  inherited;
  oDataSet := dsDocs.DataSet;

  sDirName  := GetCurrentDir+'\Docs\';
  if not DirectoryExists(sDirName) then
    CreateDir(sDirName);

  sFileName := oDataSet.FieldByName('IMAGE_NAME').AsString;
  sFileName := sDirName + sFileName;
  oStream   := oDataSet.CreateBlobStream(oDataSet.FieldByName('DOC_ATTACH'), bmRead);
  try
    oStream.Seek(0, soFromBeginning);
    with TFileStream.Create(sFileName, fmCreate) do
      try
        CopyFrom(oStream, oStream.Size);
      finally
        Free;
      end;
  finally
    oStream.Free;
  end;

  if FileExists(sFileName) then
  begin
    ShellExecute(Handle, 'Open', StringToWideChar(sFilename, aFileName, 255), nil, nil, SW_SHOWNORMAL);
//    DeleteFile(sFileName);
  end;
end;

function TfrmCOBInstitution.CheckMandatoryFields: Boolean;
var
  oDataSet: TDataSet;
  oCOBDataSet: TDataSet;
  oCOBClientBank: TDataSet;

  bClientData,
  bBoardOfDirector,
  bSourceOfFund,
  bInformation: Boolean;
begin
  oDataSet       := dsSubject.DataSet;
  oCOBDataSet    := dsCOBBOD.DataSet;
  oCOBClientBank := dsCOBBankAcc.DataSet;

  bClientData       := False;
  bBoardOfDirector  := False;
  bSourceOfFund     := False;
  bInformation      := False;

  if not oCOBDataSet.IsEmpty then
    bBoardOfDirector := True;

  if not oCOBCLientBank.IsEmpty then
    bSourceOfFund := True;

  Result := bClientData and bBoardOfDirector and bSourceOfFund and bInformation;
end;

procedure TfrmCOBInstitution.CompanyCharateristicChkPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if CompanyCharateristicChk.ItemIndex = 0 then
    txtLayoutChar.Visible := True
  else
    txtLayoutChar.Visible := False;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox10PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit38.ParentColor         := False;
  cxDBTextEdit38.Properties.ReadOnly := False;

  cxDBTextEdit40.ParentColor         := False;
  cxDBTextEdit40.Properties.ReadOnly := False;

  cxDBTextEdit41.ParentColor         := False;
  cxDBTextEdit41.Properties.ReadOnly := False;

  if cxDBImageComboBox10.EditValue = 2 then
  begin
    cxDBTextEdit38.ParentColor         := True;
    cxDBTextEdit38.Properties.ReadOnly := True;

    cxDBTextEdit40.ParentColor         := True;
    cxDBTextEdit40.Properties.ReadOnly := True;

    cxDBTextEdit41.ParentColor         := True;
    cxDBTextEdit41.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox11PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit42.ParentColor         := False;
  cxDBTextEdit42.Properties.ReadOnly := False;

  cxDBTextEdit43.ParentColor         := False;
  cxDBTextEdit43.Properties.ReadOnly := False;

  cxDBTextEdit44.ParentColor         := False;
  cxDBTextEdit44.Properties.ReadOnly := False;

  if cxDBImageComboBox11.EditValue = 2 then
  begin
    cxDBTextEdit42.ParentColor         := True;
    cxDBTextEdit42.Properties.ReadOnly := True;

    cxDBTextEdit43.ParentColor         := True;
    cxDBTextEdit43.Properties.ReadOnly := True;

    cxDBTextEdit44.ParentColor         := True;
    cxDBTextEdit44.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox12PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit45.ParentColor         := False;
  cxDBTextEdit45.Properties.ReadOnly := False;

  if cxDBImageComboBox12.EditValue = 2 then
  begin
    cxDBTextEdit45.ParentColor         := True;
    cxDBTextEdit45.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox13Exit(Sender: TObject);
var
  sRisk, sTempRisk, sTempRisk2: string;
begin
  inherited;
  if TClientDataset(dsSubject.DataSet).ReadOnly then Exit;

  sRisk := dsSubject.DataSet.FieldByName('INFO_EXISTING_PUB_CHK').AsString;

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBusinessLine.Locate('BUSSLINE_ID', dsSubject.DataSet.FieldByName('BUSINESS_LINE_CHK').AsString, []) then
      sTempRisk := cdsLuBusinessLineRISK.AsString;;
    if cdsLuCounNation.Locate('CODE', dsSubject.DataSet.FieldByName('OFFC_COUNTRY').AsString, []) then
      sTempRisk2 := cdsLuCounNationRISK.AsString;

    if (sTempRisk = 'H') or (sTempRisk2 = 'H') or (sRisk = '1') then
      dsSubject.DataSet.FieldByName('RISK').AsString := 'H'
    else if (sTempRisk = 'M') or (sTempRisk2 = 'M') then
      dsSubject.DataSet.FieldByName('RISK').AsString := 'M'
    else
      dsSubject.DataSet.FieldByName('RISK').AsString := 'L';
  end;

  GetRisk;

end;

procedure TfrmCOBInstitution.cxDBImageComboBox14PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit51.ParentColor         := False;
  cxDBTextEdit51.Properties.ReadOnly := False;

  if cxDBImageComboBox14.EditValue = 2 then
  begin
    cxDBTextEdit51.ParentColor         := True;
    cxDBTextEdit51.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox6PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit28.ParentColor         := False;
  cxDBTextEdit28.Properties.ReadOnly := False;

  if cxDBImageComboBox6.EditValue = 2 then
  begin
    cxDBTextEdit28.ParentColor         := True;
    cxDBTextEdit28.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox7PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit29.ParentColor         := False;
  cxDBTextEdit29.Properties.ReadOnly := False;

  cxDBTextEdit30.ParentColor         := False;
  cxDBTextEdit30.Properties.ReadOnly := False;

  cxDBTextEdit31.ParentColor         := False;
  cxDBTextEdit31.Properties.ReadOnly := False;

  if cxDBImageComboBox7.EditValue = 2 then
  begin
    cxDBTextEdit29.ParentColor         := True;
    cxDBTextEdit29.Properties.ReadOnly := True;

    cxDBTextEdit30.ParentColor         := True;
    cxDBTextEdit30.Properties.ReadOnly := True;

    cxDBTextEdit31.ParentColor         := True;
    cxDBTextEdit31.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox8PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit32.ParentColor         := False;
  cxDBTextEdit32.Properties.ReadOnly := False;

  cxDBTextEdit33.ParentColor         := False;
  cxDBTextEdit33.Properties.ReadOnly := False;

  if cxDBImageComboBox8.EditValue = 2 then
  begin
    cxDBTextEdit32.ParentColor         := True;
    cxDBTextEdit32.Properties.ReadOnly := True;

    cxDBTextEdit33.ParentColor         := True;
    cxDBTextEdit33.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBImageComboBox9PropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit34.ParentColor         := False;
  cxDBTextEdit34.Properties.ReadOnly := False;

  cxDBTextEdit36.ParentColor         := False;
  cxDBTextEdit36.Properties.ReadOnly := False;

  cxDBTextEdit37.ParentColor         := False;
  cxDBTextEdit37.Properties.ReadOnly := False;

  if cxDBImageComboBox9.EditValue = 2 then
  begin
    cxDBTextEdit34.ParentColor         := True;
    cxDBTextEdit34.Properties.ReadOnly := True;

    cxDBTextEdit36.ParentColor         := True;
    cxDBTextEdit36.Properties.ReadOnly := True;

    cxDBTextEdit37.ParentColor         := True;
    cxDBTextEdit37.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBInstitution.cxDBLookupComboBox1Exit(Sender: TObject);
var
  sRisk, sTempRisk, sTempRisk2: string;
begin
  inherited;
  if TClientDataset(dsSubject.DataSet).ReadOnly then Exit;

  sRisk := dsSubject.DataSet.FieldByName('BUSINESS_LINE_CHK').AsString;

  with dmGlobal.IntDataLookup do
  begin
    if (dsSubject.DataSet.FieldByName('OFFC_COUNTRY').IsNull) or (dsSubject.DataSet.FieldByName('OFFC_COUNTRY').AsString = '')  then exit;

    if cdsLuCounNation.Locate('CODE', dsSubject.DataSet.FieldByName('OFFC_COUNTRY').AsString, []) then
    begin
      if sRisk = '' then
        dsSubject.DataSet.FieldByName('RISK').AsString := cdsLuCounNationRISK.AsString
      else
      begin
        if cdsLuBusinessLine.Locate('BUSSLINE_ID', sRisk, []) then
          sTempRisk := cdsLuBusinessLineRISK.AsString;
        sTempRisk2  := dsSubject.DataSet.FieldByName('INFO_EXISTING_PUB_CHK').AsString;

        if (sTempRisk = 'H') or (cdsLuCounNationRISK.AsString = 'H') or (sTempRisk2 = '1') then
          dsSubject.DataSet.FieldByName('RISK').AsString := 'H'
        else if (sTempRisk = 'M') or (cdsLuCounNationRISK.AsString = 'M') then
          dsSubject.DataSet.FieldByName('RISK').AsString := 'M'
        else
          dsSubject.DataSet.FieldByName('RISK').AsString := 'L';
      end;
    end;
  end;

  GetRisk;
end;

procedure TfrmCOBInstitution.LineOfBusinessChkExit(Sender: TObject);
var
  sRisk, sTempRisk, sTempRisk2: string;
begin
  inherited;
  if TClientDataset(dsSubject.DataSet).ReadOnly then Exit;

  sRisk := dsSubject.DataSet.FieldByName('OFFC_COUNTRY').AsString;

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBusinessLine.Locate('BUSSLINE_ID', dsSubject.DataSet.FieldByName('BUSINESS_LINE_CHK').AsString, []) then
    begin
      if sRisk = '' then
        dsSubject.DataSet.FieldByName('RISK').AsString := cdsLuBusinessLineRISK.AsString
      else
      begin
        if cdsLuCounNation.Locate('CODE', sRisk, []) then
          sTempRisk := cdsLuCounNationRISK.AsString;
        sTempRisk2  := dsSubject.DataSet.FieldByName('INFO_EXISTING_PUB_CHK').AsString;

        if (sTempRisk = 'H') or (cdsLuBusinessLineRISK.AsString = 'H') or (sTempRisk2 = '1') then
          dsSubject.DataSet.FieldByName('RISK').AsString := 'H'
        else if (sTempRisk = 'M') or (cdsLuBusinessLineRISK.AsString = 'M') then
          dsSubject.DataSet.FieldByName('RISK').AsString := 'M'
        else
          dsSubject.DataSet.FieldByName('RISK').AsString := 'L';
      end;
    end;
  end;

  GetRisk;
end;

procedure TfrmCOBInstitution.cxDBLookupComboBox7PropertiesChange(
  Sender: TObject);
begin
  inherited;
  if LineOfBusinessChk.ItemIndex = 0 then
    txtLineOfBusiness.Visible := True
  else
    txtLineOfBusiness.Visible := False;
end;

procedure TfrmCOBInstitution.chkInfoPropertiesChange(Sender: TObject);
begin
  inherited;
  cxDBTextEdit26.ParentColor         := False;
  cxDBTextEdit26.Properties.ReadOnly := False;

  cxDBTextEdit27.ParentColor         := False;
  cxDBTextEdit27.Properties.ReadOnly := False;

  if chkInfo.EditValue = 2 then
  begin
    cxDBTextEdit26.ParentColor         := True;
    cxDBTextEdit26.Properties.ReadOnly := True;

    cxDBTextEdit27.ParentColor         := True;
    cxDBTextEdit27.Properties.ReadOnly := True;
  end;

end;

procedure TfrmCOBInstitution.chkIsParentClick(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if chkIsParent.Checked then
    begin
      cmbParentAccID.Visible := True;
      dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 3;
    end
    else
    begin
      cmbParentAccID.Visible := False;
      dsSubject.DataSet.FieldByName('PACCID').AsString := '';
      dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 2;
    end;
  end;
end;

procedure TfrmCOBInstitution.cmbParentIDExit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    cdsEntityByParam.Close;
    cdsEntityByParam.Params[0].AsInteger := dsSubject.DataSet.FieldByName('PACCID').AsInteger;
    cdsEntityByParam.Open;

    dsSubject.DataSet.FieldByname('NAME').AsString          := cdsEntityByParamENTNAME.AsString;
    dsSubject.DataSet.FieldByname('TAXPAYER_REG').AsString  := cdsEntityByParamNPWP.AsString;
    dsSubject.DataSet.FieldByName('SID').AsString           := cdsEntityByParamSIDNO.AsString;
    dsSubject.DataSet.FieldByname('RESIDENT_TYPE').AsString := cdsEntAddressADDRTYPE.AsString;
    dsSubject.DataSet.FieldByname('STREET').AsString        := cdsEntAddressADDRESS.AsString;
    dsSubject.DataSet.FieldByname('PROVINCE').AsString      := cdsEntAddressPROVCODE.AsString;
    dsSubject.DataSet.FieldByname('CITY').AsString          := cdsEntAddressCITY.AsString;
    dsSubject.DataSet.FieldByName('ZIP_CODE').AsString      := cdsEntAddressZIPCODE.AsString;
  end;
end;

procedure TfrmCOBInstitution.FormOfBusinessChkPropertiesChange(Sender: TObject);
begin
  inherited;
  if FormOfBusinessChk.ItemIndex = 6 then
    txtFormOfBusinessOther.Visible := True
  else
    txtFormOfBusinessOther.Visible := False;
end;

procedure TfrmCOBInstitution.FormShow(Sender: TObject);
begin
  inherited;
  OATabs.Properties.ActivePage := TabParticular;
  cmbTypeOfSecurities.Properties.ReadOnly := DataContainer.State <> mddsInsert;

  if dsSubject.DataSet.State in [dsInsert] then
    dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 2;

  if dsSubject.DataSet.State in [dsEdit] then
  begin
    if dsSubject.DataSet.FieldByName('ISPACC').AsString = 'Y' then
      cmbParentAccID.Visible := True
    else
      cmbParentAccID.Visible := False;

    if dsSubject.DataSet.FieldByName('TAX_REG_CHK').AsInteger = 1 then
      TaxPayerRegNo.Visible := True;

    if dsSubject.DataSet.FieldByName('BUSINESS_ENTITY_CHK').AsInteger = 7 then
      txtFormOfBusinessOther.Visible := True;

    if dsSubject.DataSet.FieldByName('BUSINESS_LINE_CHK').AsInteger = 13 then
      txtLineOfBusiness.Visible := True;

    if dsSubject.DataSet.FieldByName('COMPANY_CHARACTER_CHK').AsInteger = 8 then
      txtLayoutChar.Visible := True;

  end;

  GetRisk;
end;

procedure TfrmCOBInstitution.GetRisk;
var
  sRisk: string;
begin
  sRisk := dsSubject.DataSet.FieldByName('RISK').AsString;

  if sRisk = 'L' then begin pnlRisk.Color := clMoneyGreen; pnlRisk.Caption := 'Low' end
  else if sRisk = 'M' then begin pnlRisk.Color := clYellow; pnlRisk.Caption := 'Medium' end
  else if sRisk = 'H' then begin pnlRisk.Color := clRed; pnlRisk.Caption := 'High' end;
end;

procedure TfrmCOBInstitution.gvwUploadDocsIMAGE_NAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  oFileStream: TFileStream;
  oDataSet: TDataSet;
begin
  inherited;
  try
    if not TClientDataset(dsDocs.DataSet).ReadOnly then
    begin
      if odDocs.Execute then
      begin
        if FileExists(odDocs.FileName) then
          UploadDocs(odDocs.FileName);
      end;
    end;
  finally
//    cdsCOBUploadDocs.Post;
  end;
end;

procedure TfrmCOBInstitution.Label11Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

procedure TfrmCOBInstitution.Label2Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabParticular;
end;

procedure TfrmCOBInstitution.Label5Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBInstitution.Label8Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

procedure TfrmCOBInstitution.pnlBODClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBInstitution.pnlClientDataClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabParticular;
end;

procedure TfrmCOBInstitution.pnlInformationClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

procedure TfrmCOBInstitution.pnlSourceOfFundClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

function TfrmCOBInstitution.SetColor(ATab: Boolean): TColor;
begin
  if ATab then Result := clMoneyGreen else Result := clBtnFace;
end;

procedure TfrmCOBInstitution.txtInvestmentObjectiveChkPropertiesChange(
  Sender: TObject);
begin
  inherited;
  txtInvestmentObjOther.Visible := txtInvestmentObjectiveChk.ItemIndex = 6;
end;

procedure TfrmCOBInstitution.txtSourceOfFundChkPropertiesChange(
  Sender: TObject);
begin
  inherited;
  txtSourceOfFund.Visible := txtSourceOfFundChk.ItemIndex = 1;
end;

procedure TfrmCOBInstitution.UploadDocs(AFileName: string);
var
  oFileStream: TFileStream;
  oDataSet: TDataSet;
begin
  oDataSet    := dsDocs.DataSet;
  oFileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    if not (oDataset.State in dsEditModes) then oDataset.Edit;

    oFileStream.Seek(0, soFromBeginning);
    TblobField(oDataSet.FieldByName('DOC_ATTACH')).LoadFromStream(oFileStream);
    oDataSet.FieldByName('IMAGE_NAME').Value := ExtractFileName(AFileName);
  finally
    oFileStream.Free;
  end;
end;

function TfrmCOBInstitution.ValidateFields(AFieldList,
  AFieldNames: Variant): Boolean;
var
  IsEmpty: Boolean;
  i: Integer;
begin
  IsEmpty := False;

  for i := 0 to VarArrayHighBound(AFieldList, 1) do
  begin
    if (dsSubject.DataSet.FieldValues[AFieldList[i]] = NULL) or (Trim(dsSubject.DataSet.FieldValues[AFieldList[i]]) = '') then
      IsEmpty := True
    else
      IsEmpty := False;

    if IsEmpty then
      MessageDlg(AFieldNames[i]+' Can not be empty', mtError, [mbOk], 0);
  end;

  Result := not IsEmpty;
end;

end.
