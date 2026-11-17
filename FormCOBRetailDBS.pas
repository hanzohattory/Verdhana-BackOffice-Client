unit FormCOBRetailDBS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxPCdxBarPopupMenu, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBEdit, cxLabel, cxMemo, cxImage,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDropDownEdit, cxImageComboBox,
  cxMaskEdit, cxCalendar, cxTextEdit, cxPC, Datasnap.DBClient, NClientDataset,
  Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, JPEG, cxButtonEdit, Winapi.ShellAPI, Vcl.ActnList,
  NDatasetAction;

type
  TfrmCOBRetailDBS = class(TfrmEditorData)
    FileOpen: TFileOpenDialog;
    dsCOBBank: TDataSource;
    cdsCOBBank: TNClientDataset;
    cdsCOBBankCPDID: TIntegerField;
    cdsCOBBankCID: TLargeintField;
    cdsCOBBankBRCODE: TStringField;
    cdsCOBBankBRANCHID: TLargeintField;
    cdsCOBBankACCCODE: TStringField;
    cdsCOBBankACCNAME: TStringField;
    cdsCOBBankCCY: TStringField;
    dsDocs: TDataSource;
    dsCOBBankCustody: TDataSource;
    OATabs: TcxPageControl;
    TabPaticular: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    txtName: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    id_type: TcxDBImageComboBox;
    id_valid: TcxDBDateEdit;
    cxDBImageComboBox2: TcxDBImageComboBox;
    TaxStatus: TcxDBImageComboBox;
    MaritalStatus: TcxDBImageComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    txtIDNumber: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    chkIDLifeTime: TcxCheckBox;
    cxDBTextEdit17: TcxDBTextEdit;
    EduBackground: TcxDBImageComboBox;
    eduBackgroundOthers: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    chkEvent: TcxDBCheckBox;
    cmbEvent: TcxDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    imgPhoto: TcxImage;
    luChannel: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxLayoutControl1Item51: TdxLayoutItem;
    dxLayoutControl1Item33: TdxLayoutItem;
    SpouseName: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item35: TdxLayoutItem;
    EB_Other: TdxLayoutItem;
    dxLayoutControl1Item42: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    EventCode: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl3Item17: TdxLayoutItem;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Group9: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutControl3Item16: TdxLayoutItem;
    dxLayoutControl3Item18: TdxLayoutItem;
    TabGuarantor: TcxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBImageComboBox5: TcxDBImageComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    cxDBImageComboBox6: TcxDBImageComboBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    txtGuProvince: TcxDBLookupComboBox;
    guCityCode: TcxDBLookupComboBox;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBTextEdit18: TcxDBTextEdit;
    GuarantorCurrAddress: TcxDBCheckBox;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    gucaCity: TcxDBLookupComboBox;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    SOFWBI: TcxDBImageComboBox;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBImageComboBox9: TcxDBImageComboBox;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutGroup6: TdxLayoutGroup;
    GuarantorPanel: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl3Item13: TdxLayoutItem;
    dxLayoutControl1Item56: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
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
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutControl7Group2: TdxLayoutGroup;
    TabAddress: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cmbTypeOfResidence: TcxDBImageComboBox;
    cxDBImageComboBox12: TcxDBImageComboBox;
    cxDBMemo3: TcxDBMemo;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit39: TcxDBTextEdit;
    TypeOfResident: TcxDBImageComboBox;
    cxDBTextEdit40: TcxDBTextEdit;
    OwnershipStatus: TcxDBImageComboBox;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBTextEdit50: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBImageComboBox15: TcxDBImageComboBox;
    cxDBMemo5: TcxDBMemo;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cbCountry: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    chkCurrentAddress: TcxDBCheckBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    CurrentAddress: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Item11: TdxLayoutItem;
    TypeOfResidentOth: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    OwnershipStatusOth: TdxLayoutItem;
    dxLayoutControl2Item17: TdxLayoutItem;
    dxLayoutControl2Item18: TdxLayoutItem;
    dxLayoutControl2Item21: TdxLayoutItem;
    dxLayoutControl2Item23: TdxLayoutItem;
    dxLayoutControl2Item24: TdxLayoutItem;
    dxLayoutControl2Item25: TdxLayoutItem;
    dxLayoutControl2Item26: TdxLayoutItem;
    dxLayoutControl2Item27: TdxLayoutItem;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Item28: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Item8: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item19: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
    TabSourceOfFund: TcxTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit56: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBTextEdit57: TcxDBTextEdit;
    cxDBTextEdit58: TcxDBTextEdit;
    cxDBMemo4: TcxDBMemo;
    cmbSourceOfFund: TcxDBImageComboBox;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    Invs_Objectives: TcxDBImageComboBox;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    cxGrid1: TcxGrid;
    gvwCOBBank: TcxGridDBBandedTableView;
    gvwCOBBankCUST_REG_NO: TcxGridDBBandedColumn;
    gvwCOBBankACC_NO: TcxGridDBBandedColumn;
    gvwCOBBankBANK_NAME: TcxGridDBBandedColumn;
    gvwCOBBankBANK_BRANCH: TcxGridDBBandedColumn;
    gvwCOBBankBENEFICIARY: TcxGridDBBandedColumn;
    gvwCOBBankACCID: TcxGridDBBandedColumn;
    gvwCOBBankCCY: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwCOBBankCustody: TcxGridDBBandedTableView;
    gvwCOBBankCustodyACCID: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYCODE: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYACCNAME: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYBRANCH: TcxGridDBBandedColumn;
    gvwCOBBankCustodyACTLED_SEQID: TcxGridDBBandedColumn;
    gvwCOBBankCustodyMODDA: TcxGridDBBandedColumn;
    gvwCOBBankCustodyMODUI: TcxGridDBBandedColumn;
    gvwCOBBankCustodyAPPDA: TcxGridDBBandedColumn;
    gvwCOBBankCustodyAPPUI: TcxGridDBBandedColumn;
    gvwCOBBankCustodyUNDER4Y: TcxGridDBBandedColumn;
    gvwCOBBankCustodyUNDER4YDA: TcxGridDBBandedColumn;
    gvwCOBBankCustodyNOTES4Y: TcxGridDBBandedColumn;
    gvwCOBBankCustodyISDEL: TcxGridDBBandedColumn;
    gvwCOBBankCustodyID: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    SourceOfFundOther: TdxLayoutItem;
    Ocupation_other: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Item19: TdxLayoutItem;
    Invs_Objective_Others: TdxLayoutItem;
    dxLayoutControl3Item20: TdxLayoutItem;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutControl5Item2: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    TabKnowYourCust: TcxTabSheet;
    lcKYC: TdxLayoutControl;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
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
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    chkInfo: TcxDBImageComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBImageComboBox4: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBImageComboBox10: TcxDBImageComboBox;
    cxDBImageComboBox11: TcxDBImageComboBox;
    cxDBImageComboBox13: TcxDBImageComboBox;
    cxDBImageComboBox14: TcxDBImageComboBox;
    cxDBImageComboBox16: TcxDBImageComboBox;
    cxDBImageComboBox17: TcxDBImageComboBox;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBTextEdit61: TcxDBTextEdit;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    cxDBTextEdit64: TcxDBTextEdit;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBTextEdit66: TcxDBTextEdit;
    cxDBTextEdit67: TcxDBTextEdit;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
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
    dxLayoutGroup14: TdxLayoutGroup;
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
    cxLabel22: TcxLabel;
    lcKYCItem1: TdxLayoutItem;
    lcKYCItem2: TdxLayoutItem;
    cxDBImageComboBox18: TcxDBImageComboBox;
    cxLabel23: TcxLabel;
    lcKYCItem3: TdxLayoutItem;
    lcKYCGroup1: TdxLayoutGroup;
    lcKYCGroup2: TdxLayoutGroup;
    cxLabel24: TcxLabel;
    lcKYCItem4: TdxLayoutItem;
    cxLabel25: TcxLabel;
    lcKYCItem5: TdxLayoutItem;
    lcKYCItem6: TdxLayoutItem;
    cxDBImageComboBox19: TcxDBImageComboBox;
    lcKYCGroup3: TdxLayoutGroup;
    lcKYCGroup4: TdxLayoutGroup;
    txtFamily: TcxDBTextEdit;
    cxDBImageComboBox20: TcxDBImageComboBox;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBImageComboBox21: TcxDBImageComboBox;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    lcKYCGroup5: TdxLayoutGroup;
    lcKYCItem7: TdxLayoutItem;
    cxDBTextEdit76: TcxDBTextEdit;
    lcKYCGroup6: TdxLayoutGroup;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxDBImageComboBox22: TcxDBImageComboBox;
    dxLayoutControl5Item3: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl5Group1: TdxLayoutGroup;
    dxLayoutControl5Item4: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    TabDoc: TcxTabSheet;
    cxGrid3: TcxGrid;
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
    cxGridLevel1: TcxGridLevel;
    odDocs: TOpenDialog;
    cbFieldWork: TcxDBImageComboBox;
    dxLayoutControl5Item5: TdxLayoutItem;
    cxDBImageComboBox24: TcxDBImageComboBox;
    dxLayoutControl5Item6: TdxLayoutItem;
    cxDBTextEdit53: TcxDBTextEdit;
    lcFieldWorkDesc: TdxLayoutItem;
    dxLayoutControl5Item7: TdxLayoutItem;
    cxDBLookupComboBox17: TcxDBLookupComboBox;
    cbAnnualIncomeSource: TcxDBImageComboBox;
    dxLayoutControl5Item8: TdxLayoutItem;
    cxDBTextEdit55: TcxDBTextEdit;
    AnnIncomeSourceOther: TdxLayoutItem;
    dxLayoutControl5Item10: TdxLayoutItem;
    cbAddIncomeSource: TcxDBImageComboBox;
    cxDBTextEdit72: TcxDBTextEdit;
    AddIncomeSourceOther: TdxLayoutItem;
    cmbRisk: TcxDBImageComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cmbOccupation: TcxDBLookupComboBox;
    dxLayoutControl5Item9: TdxLayoutItem;
    pnlRisk: TPanel;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl5Group3: TdxLayoutGroup;
    ActionList1: TActionList;
    actView: TNAction;
    PopupMenu1: TPopupMenu;
    BankRDNReceiveMonitor1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure TaxStatusPropertiesChange(Sender: TObject);
    procedure MaritalStatusPropertiesCloseUp(Sender: TObject);
    procedure txtIDNumberExit(Sender: TObject);
    procedure chkIDLifeTimeClick(Sender: TObject);
    procedure EduBackgroundPropertiesCloseUp(Sender: TObject);
    procedure GuarantorCurrAddressClick(Sender: TObject);
    procedure SOFWBIPropertiesCloseUp(Sender: TObject);
    procedure OwnershipStatusPropertiesCloseUp(Sender: TObject);
    procedure chkCurrentAddressClick(Sender: TObject);
    procedure cmbOccupationPropertiesChange(Sender: TObject);
    procedure cmbSourceOfFundPropertiesChange(Sender: TObject);
    procedure Invs_ObjectivesPropertiesCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cdsCOBBankNewRecord(DataSet: TDataSet);
    procedure chkEventClick(Sender: TObject);
    procedure gvwUploadDocsIMAGE_NAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbFieldWorkPropertiesChange(Sender: TObject);
    procedure cbAnnualIncomeSourcePropertiesChange(Sender: TObject);
    procedure cbAddIncomeSourcePropertiesChange(Sender: TObject);
    procedure cbCountryExit(Sender: TObject);
    procedure chkInfoPropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox4PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox8PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox10PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox11PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox13PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox14PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox17PropertiesCloseUp(Sender: TObject);
    procedure cmbOccupationExit(Sender: TObject);
    procedure cxDBImageComboBox16Exit(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxDBLookupComboBox6Exit(Sender: TObject);
    procedure cxDBLookupComboBox4Exit(Sender: TObject);
    procedure cxDBLookupComboBox16Exit(Sender: TObject);
  private
    { Private declarations }
    FParticularTab: Boolean;
    FAddressTab: Boolean;
    FFundSourceTab: Boolean;
    FKnownCustomerTab: Boolean;
    FAction: Integer;
    FValidateMessage: String;

    function CheckMandatoryData: Boolean;
    function ValidateFields(AFieldList: Variant; AFieldNames: Variant): Boolean;

    procedure UploadDocs(AFileName: string);
    procedure GetRisk;
    procedure SetFormLayout;
  public
    { Public declarations }
  end;

var
  frmCOBRetailDBS: TfrmCOBRetailDBS;

implementation

{$R *.dfm}

uses FormCOBList, ClassClientConst, DataGlobal, DataLookup;

procedure TfrmCOBRetailDBS.actViewExecute(Sender: TObject);
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

procedure TfrmCOBRetailDBS.btnOKClick(Sender: TObject);
begin
  inherited;
  if TfrmCOBList(BrowserForm).UserAction = COB_FACT_DONE_INPUT then
  begin
    if CheckMandatoryData then
      ModalResult := mrOk
    else
      ModalResult := mrNone;
  end
  else
    ModalResult := mrOk;

end;

procedure TfrmCOBRetailDBS.cbAddIncomeSourcePropertiesChange(Sender: TObject);
begin
  inherited;
  AddIncomeSourceOther.Visible := cbAddIncomeSource.ItemIndex = 12;
end;

procedure TfrmCOBRetailDBS.cbAnnualIncomeSourcePropertiesChange(
  Sender: TObject);
begin
  inherited;
  AnnIncomeSourceOther.Visible := cbAnnualIncomeSource.ItemIndex = 12;
end;

procedure TfrmCOBRetailDBS.cbCountryExit(Sender: TObject);
var
  sRisk, sTempRisk, sTempRisk2: string;
begin
  inherited;
  if TClientDataset(dsSubject.DataSet).ReadOnly then Exit;

  sRisk := dsSubject.DataSet.FieldByName('OCCUPATION').AsString;

  with dmGlobal.IntDataLookup do
  begin
    if (dsSubject.DataSet.FieldByName('COUNTRY').IsNull) or (dsSubject.DataSet.FieldByName('COUNTRY').AsString = '')  then exit;

    if cdsLuCounNation.Locate('CODE', dsSubject.DataSet.FieldByName('COUNTRY').AsString, []) then
    begin
      if sRisk = '' then
        dsSubject.DataSet.FieldByName('RISK').AsString := cdsLuCounNationRISK.AsString
      else
      begin
        if cdsLuOccupation.Locate('OC_CODE', sRisk, []) then
          sTempRisk  := cdsLuOccupationRISK.AsString;
          sTempRisk2 := dsSubject.DataSet.FieldByName('INFO_EXISTING_PUB_CHK').AsString;

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

procedure TfrmCOBRetailDBS.cbFieldWorkPropertiesChange(Sender: TObject);
begin
  inherited;
  lcFieldWorkDesc.Visible := (cbFieldWork.ItemIndex = 11) or (cbFieldWork.ItemIndex = 12) or (cbFieldWork.ItemIndex = 13);

end;

procedure TfrmCOBRetailDBS.cdsCOBBankNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCOBBankCID.AsInteger := dsSubject.DataSet.FieldByname('CID').AsInteger;
end;

function TfrmCOBRetailDBS.CheckMandatoryData: Boolean;
var
  oDataSet: TDataSet;
begin
  Result := False;

  FParticularTab    := False;
  FAddressTab       := False;
  FFundSourceTab    := False;
  FKnownCustomerTab := False;

  oDataSet := dsSubject.DataSet;

  FValidateMessage := '';

  //Particulat Tab
  FParticularTab := ValidateFields(VarArrayOf(['PRD_CODE', 'NAME', 'POB', 'DOB',
                                               'ID_TYPE', 'ID_NO', 'NATIONALITY', 'MOTHER_NAME',
                                               'MARITAL_STATUS', 'ID_VALID', 'GENDER', 'EDU_BACKGROUND', 'SALESID']),
                                   VarArrayOf(['Product Code', 'Name', 'Place Of Birth', 'Date Of Birth',
                                               'ID Type', 'ID Number', 'Nationality', 'Mother Maiden Name',
                                               'Marital Status', 'ID Valid', 'Gender', 'Education Background', 'Sales']));

  if FParticularTab then
  begin
    if oDataSet.FieldByName('MARITAL_STATUS').AsInteger = 2 then
      FParticularTab := ValidateFields(VarArrayOf(['SPOUSE_NAME']), VarArrayOf(['Spause Name']));
  end;

  //Address Tab
  FAddressTab := ValidateFields(VarArrayOf(['RESIDENT_TYPE', 'OWNERSHIP_STATUS', 'STREET', 'RT_RW',
                                            'KELURAHAN', 'KECAMATAN', 'PROVINCE', 'COUNTRY',
                                            'ZIP_CODE', 'EMAIL', 'HOME_PHONE', 'CELL_PHONE', 'CITY']),
                                VarArrayOf(['Resident Type', 'Resident Ownership Status', 'Resident Street', ' Resident RT/RW',
                                            'Kelurahan', 'Kecamatan', 'Province', 'Country',
                                            'Zip Code', 'Email', 'Home Phone', 'Cell Phone', 'City']));

  //Fund Source Tab
  FFundSourceTab := ValidateFields(VarArrayOf(['OCCUPATION']),
                                VarArrayOf(['Occupation']));

  if FFundSourceTab then
  begin
    if oDataSet.FieldByName('OCCUPATION').AsInteger = 5 then
      FFundSourceTab := ValidateFields(VarArrayOf(['NAT_BUSINESS_ENTREPRENEUR', 'FUND_SOURCE', 'ANNUAL_INCOME', 'RDNBANKCODE']),
                                       VarArrayOf(['Nat Business Enterpreneur', 'Source Of Fund', 'Annual Income', 'RDN Bank Code']));
  end;

  //Known Your Customer Tab
//  FKnownCustomerTab := ValidateFields(VarArrayOf(['REL_FAMILY_NAME', 'REL_FAMILY', 'BENEFICIARY_NAME', 'BENEFICIARY_RELATION']),
//                                VarArrayOf(['Relation Family Name', 'Relation Family', 'Beneficiary Name', 'Beneficiary Relation']));

  if FValidateMessage <> '' then
  begin
    if MessageDlg('Fields "' + FValidateMessage+'" Can not be empty!' + #13 +
      'Do you want to add this Information to Notes?', mtError, mbYesNo, 0) = mrYes then
    begin
      TfrmCOBList(BrowserForm).AddNotes('Fields "' + FValidateMessage+'" Can not be empty!');
    end;

  end;

  Result := FParticularTab and FAddressTab and FFundSourceTab;// and FKnownCustomerTab;

end;

procedure TfrmCOBRetailDBS.chkCurrentAddressClick(Sender: TObject);
begin
  inherited;
  if chkCurrentAddress.Checked then
    CurrentAddress.Visible := true else CurrentAddress.Visible := False;

end;

procedure TfrmCOBRetailDBS.chkEventClick(Sender: TObject);
begin
  inherited;
  if chkEvent.Checked then
    EventCode.Visible := True else EventCode.Visible := False;

end;

procedure TfrmCOBRetailDBS.chkIDLifeTimeClick(Sender: TObject);
begin
  inherited;
  if chkIDLifeTime.Checked then
    dsSubject.DataSet.FieldByName('ID_VALID').AsDateTime := StrToDate('9/9/9999')
  else
    dsSubject.DataSet.FieldByName('ID_VALID').AsDateTime := Now;

end;

procedure TfrmCOBRetailDBS.chkInfoPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  cxDBTextEdit9.ParentColor         := False;
  cxDBTextEdit9.Properties.ReadOnly := False;

  cxDBTextEdit14.ParentColor         := False;
  cxDBTextEdit14.Properties.ReadOnly := False;

  if chkInfo.EditValue = 2 then
  begin
    cxDBTextEdit9.ParentColor         := True;
    cxDBTextEdit9.Properties.ReadOnly := True;

    cxDBTextEdit14.ParentColor         := True;
    cxDBTextEdit14.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cmbOccupationPropertiesChange(Sender: TObject);
begin
  inherited;
  if cmbOccupation.ItemIndex = 0 then
    Ocupation_Other.Visible := True else Ocupation_Other.Visible := False;

end;

procedure TfrmCOBRetailDBS.cmbSourceOfFundPropertiesChange(Sender: TObject);
begin
  inherited;
  SourceOfFundOther.Visible := cmbSourceOfFund.ItemIndex = 0;

end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox10PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit47.ParentColor         := False;
  cxDBTextEdit47.Properties.ReadOnly := False;

  cxDBTextEdit49.ParentColor         := False;
  cxDBTextEdit49.Properties.ReadOnly := False;

  cxDBTextEdit59.ParentColor         := False;
  cxDBTextEdit59.Properties.ReadOnly := False;

  if cxDBImageComboBox10.EditValue = 2 then
  begin
    cxDBTextEdit47.ParentColor         := True;
    cxDBTextEdit47.Properties.ReadOnly := True;

    cxDBTextEdit49.ParentColor         := True;
    cxDBTextEdit49.Properties.ReadOnly := True;

    cxDBTextEdit59.ParentColor         := True;
    cxDBTextEdit59.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox11PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit60.ParentColor         := False;
  cxDBTextEdit60.Properties.ReadOnly := False;

  cxDBTextEdit61.ParentColor         := False;
  cxDBTextEdit61.Properties.ReadOnly := False;

  cxDBTextEdit62.ParentColor         := False;
  cxDBTextEdit62.Properties.ReadOnly := False;

  if cxDBImageComboBox11.EditValue = 2 then
  begin
    cxDBTextEdit60.ParentColor         := True;
    cxDBTextEdit60.Properties.ReadOnly := True;

    cxDBTextEdit61.ParentColor         := True;
    cxDBTextEdit61.Properties.ReadOnly := True;

    cxDBTextEdit62.ParentColor         := True;
    cxDBTextEdit62.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox13PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit63.ParentColor         := False;
  cxDBTextEdit63.Properties.ReadOnly := False;

  cxDBTextEdit64.ParentColor         := False;
  cxDBTextEdit64.Properties.ReadOnly := False;

  cxDBTextEdit65.ParentColor         := False;
  cxDBTextEdit65.Properties.ReadOnly := False;

  if cxDBImageComboBox13.EditValue = 2 then
  begin
    cxDBTextEdit63.ParentColor         := True;
    cxDBTextEdit63.Properties.ReadOnly := True;

    cxDBTextEdit64.ParentColor         := True;
    cxDBTextEdit64.Properties.ReadOnly := True;

    cxDBTextEdit65.ParentColor         := True;
    cxDBTextEdit65.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox14PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit66.ParentColor         := False;
  cxDBTextEdit66.Properties.ReadOnly := False;

  if cxDBImageComboBox14.EditValue = 2 then
  begin
    cxDBTextEdit66.ParentColor         := True;
    cxDBTextEdit66.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox16Exit(Sender: TObject);
var
  sRisk, sTempRisk, sTempRisk2: string;
begin
  inherited;
  if TClientDataset(dsSubject.DataSet).ReadOnly then Exit;

  sRisk := dsSubject.DataSet.FieldByName('INFO_EXISTING_PUB_CHK').AsString;

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuOccupation.Locate('OC_CODE', dsSubject.DataSet.FieldByName('OCCUPATION').AsString, []) then
      sTempRisk := cdsLuOccupationRISK.AsString;
    if cdsLuCounNation.Locate('CODE', dsSubject.DataSet.FieldByName('COUNTRY').AsString, []) then
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

procedure TfrmCOBRetailDBS.cxDBImageComboBox17PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit67.ParentColor         := False;
  cxDBTextEdit67.Properties.ReadOnly := False;

  if cxDBImageComboBox17.EditValue = 2 then
  begin
    cxDBTextEdit67.ParentColor         := True;
    cxDBTextEdit67.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit16.ParentColor         := False;
  cxDBTextEdit16.Properties.ReadOnly := False;

  if cxDBImageComboBox1.EditValue = 2 then
  begin
    cxDBTextEdit16.ParentColor         := True;
    cxDBTextEdit16.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox4PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit21.ParentColor         := False;
  cxDBTextEdit21.Properties.ReadOnly := False;

  cxDBTextEdit34.ParentColor         := False;
  cxDBTextEdit34.Properties.ReadOnly := False;

  cxDBTextEdit42.ParentColor         := False;
  cxDBTextEdit42.Properties.ReadOnly := False;

  if cxDBImageComboBox4.EditValue = 2 then
  begin
    cxDBTextEdit21.ParentColor         := True;
    cxDBTextEdit21.Properties.ReadOnly := True;

    cxDBTextEdit34.ParentColor         := True;
    cxDBTextEdit34.Properties.ReadOnly := True;

    cxDBTextEdit42.ParentColor         := True;
    cxDBTextEdit42.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBImageComboBox8PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  cxDBTextEdit43.ParentColor         := False;
  cxDBTextEdit43.Properties.ReadOnly := False;

  cxDBTextEdit46.ParentColor         := False;
  cxDBTextEdit46.Properties.ReadOnly := False;

  if cxDBImageComboBox8.EditValue = 2 then
  begin
    cxDBTextEdit43.ParentColor         := True;
    cxDBTextEdit43.Properties.ReadOnly := True;

    cxDBTextEdit46.ParentColor         := True;
    cxDBTextEdit46.Properties.ReadOnly := True;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBLookupComboBox16Exit(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsLuCity.Filtered := False;
end;

procedure TfrmCOBRetailDBS.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if not dsSubject.DataSet.FieldByName('PROVINCE').IsNull then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuCity.Filtered := False;
      cdsLuCity.Filter   := 'PROVCODE = '+ QuotedStr(dsSubject.DataSet.FieldByName('PROVINCE').AsString);
      cdsLuCity.Filtered := True;
    end;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBLookupComboBox4Exit(Sender: TObject);
begin
  inherited;
  if not dsSubject.DataSet.FieldByName('PROVINCE2').IsNull then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuCity.Filtered := False;
      cdsLuCity.Filter   := 'PROVCODE = '+ QuotedStr(dsSubject.DataSet.FieldByName('PROVINCE2').AsString);
      cdsLuCity.Filtered := True;
    end;
  end;
end;

procedure TfrmCOBRetailDBS.cxDBLookupComboBox6Exit(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsLuCity.Filtered := False;
end;

procedure TfrmCOBRetailDBS.cmbOccupationExit(Sender: TObject);
var
  sRisk, sTempRisk, sTempRisk2: string;
begin
  inherited;
  if TClientDataset(dsSubject.DataSet).ReadOnly then Exit;

  sRisk := dsSubject.DataSet.FieldByName('COUNTRY').AsString;

  with dmGlobal.IntDataLookup do
  begin
    if (dsSubject.DataSet.FieldByName('OCCUPATION').IsNull) or (dsSubject.DataSet.FieldByName('OCCUPATION').AsString = '')  then exit;

    if cdsLuOccupation.Locate('OC_CODE', dsSubject.DataSet.FieldByName('OCCUPATION').AsString, []) then
    begin
      if sRisk = '' then
        dsSubject.DataSet.FieldByName('RISK').AsString := cdsLuOccupationRISK.AsString
      else
      begin
        if cdsLuCounNation.Locate('CODE', sRisk, []) then
          sTempRisk := cdsLuCounNationRISK.AsString;
        sTempRisk2 := dsSubject.DataSet.FieldByName('INFO_EXISTING_PUB_CHK').AsString;

        if (sTempRisk = 'H') or (cdsLuOccupationRISK.AsString = 'H') or (sTempRisk2 = '1') then
          dsSubject.DataSet.FieldByName('RISK').AsString := 'H'
        else if (sTempRisk = 'M') or (cdsLuOccupationRISK.AsString = 'M') then
          dsSubject.DataSet.FieldByName('RISK').AsString := 'M'
        else
          dsSubject.DataSet.FieldByName('RISK').AsString := 'L';
      end;
    end;
  end;

  GetRisk;
end;

procedure TfrmCOBRetailDBS.EduBackgroundPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if EduBackground.ItemIndex = 0 then
    EB_Other.Visible := True else EB_Other.Visible := False;

end;

procedure TfrmCOBRetailDBS.FormShow(Sender: TObject);
var
  Field: TBlobField;
  Stream: TStream;
  Jpg: TJPEGImage;
begin
  inherited;
  OATabs.Properties.ActivePage := TabPaticular;
  OATabs.Pages[1].TabVisible   := False;

  if dsSubject.DataSet.State in [dsInsert] then
    dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 1;

  if FAction = 1 then
  begin
    btnOk.Caption     := 'Done';
    btnCancel.Caption := 'Not Complete';
  end
  else
  begin
    btnOk.Caption     := 'Ok';
    btnCancel.Caption := 'Cancel';
  end;

  if dsSubject.DataSet.FieldByName('MARITAL_STATUS').AsInteger = 2  then
    SpouseName.Visible := True;

  if dsSubject.DataSet.FieldByName('EDU_BACKGROUND').AsInteger = 1  then
    EB_Other.Visible := True;

  if dsSubject.DataSet.FieldByName('TAXPAYER_STATUS').AsInteger = 2  then
  begin
    GuarantorPanel.Visible     := True;
    GuarantorWorkInfo.Visible  := True;
    OATabs.Pages[1].TabVisible := True;
  end;

  if dsSubject.DataSet.FieldByName('resident_type2').AsInteger = 4  then
    TypeOfResidentOth.Visible := True;

  if dsSubject.DataSet.FieldByName('ownership_status2').AsInteger = 5  then
    OwnershipStatusOth.Visible := True;

  if dsSubject.DataSet.FieldByName('INVEST_OBJECTIVE').AsInteger = 1  then
    Invs_Objective_Others.Visible := True;

  if dsSubject.DataSet.FieldByName('CHKCURRADR').AsString = '1' then
    CurrentAddress.Visible := True;

  if dsSubject.DataSet.FieldByName('CHKGUCURRADR').AsString = '1' then
    GuarantorCurrentAddress.Visible := True;

  if dsSubject.DataSet.FieldByName('ONEVENT').AsString = '1' then
    EventCode.Visible := True;

  cdsCOBBank.Close;
  cdsCOBBank.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CID').AsInteger;
  cdsCOBBank.Open;

  dsDocs.DataSet.Filtered := False;
  dsDocs.DataSet.Filter   := 'DOC_TYPE = 6';
  dsDocs.DataSet.Filtered := True;

  if not VarIsNull(dsDocs.DataSet.FieldByName('DOC_ATTACH').Value) and not VarIsEmpty(dsDocs.DataSet.FieldByName('DOC_ATTACH').Value) then
  begin
    Field  := TBlobField(dsDocs.DataSet.FieldByName('DOC_ATTACH'));
    Stream := dsDocs.DataSet.CreateBlobStream(Field, bmRead);

    Jpg := TJPEGImage.Create;
    try
      Jpg.LoadFromStream(Stream);
      imgPhoto.Picture.Graphic := Jpg;
    finally
      Jpg.Free;
      Stream.Free;
    end;
  end;

  dsDocs.DataSet.Filtered := False;

  SourceOfFundOther.Visible := cmbSourceOfFund.ItemIndex = 0;
  AnnIncomeSourceOther.Visible := cbAnnualIncomeSource.ItemIndex = 12;
  AddIncomeSourceOther.Visible := cbAddIncomeSource.ItemIndex = 12;

  SetFormLayout;
end;

procedure TfrmCOBRetailDBS.GetRisk;
var
  sRisk: string;
begin
  sRisk := dsSubject.DataSet.FieldByName('RISK').AsString;
  if sRisk = 'L' then pnlRisk.Color := clMoneyGreen
  else if sRisk = 'M' then pnlRisk.Color := clYellow
  else if sRisk = 'H' then pnlRisk.Color := clRed;

  pnlRisk.Caption := cmbRisk.Text;
end;

procedure TfrmCOBRetailDBS.GuarantorCurrAddressClick(Sender: TObject);
begin
  inherited;
  if GuarantorCurrAddress.Checked then
    GuarantorCurrentAddress.Visible := True else GuarantorCurrentAddress.Visible := False;

end;

procedure TfrmCOBRetailDBS.gvwUploadDocsIMAGE_NAMEPropertiesButtonClick(
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

procedure TfrmCOBRetailDBS.Invs_ObjectivesPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Invs_Objectives.ItemIndex = 0 then
    Invs_Objective_Others.Visible := True else Invs_Objective_Others.Visible := False;

end;

procedure TfrmCOBRetailDBS.MaritalStatusPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if MaritalStatus.ItemIndex = 1 then
    SpouseName.Visible := True else SpouseName.Visible := False;

end;

procedure TfrmCOBRetailDBS.OwnershipStatusPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if OwnershipStatus.ItemIndex = 4 then
    OwnershipStatusOth.Visible := True else OwnershipStatusOth.Visible := False;

end;

procedure TfrmCOBRetailDBS.SetFormLayout;
begin
  cxDBTextEdit9.ParentColor          := chkInfo.EditValue = 2;
  cxDBTextEdit9.Properties.ReadOnly  := chkInfo.EditValue = 2;
  cxDBTextEdit14.ParentColor         := chkInfo.EditValue = 2;
  cxDBTextEdit14.Properties.ReadOnly := chkInfo.EditValue = 2;

  cxDBTextEdit16.ParentColor         := cxDBImageComboBox1.EditValue = 2;
  cxDBTextEdit16.Properties.ReadOnly := cxDBImageComboBox1.EditValue = 2;

  cxDBTextEdit21.ParentColor         := cxDBImageComboBox4.EditValue = 2;
  cxDBTextEdit21.Properties.ReadOnly := cxDBImageComboBox4.EditValue = 2;
  cxDBTextEdit34.ParentColor         := cxDBImageComboBox4.EditValue = 2;
  cxDBTextEdit34.Properties.ReadOnly := cxDBImageComboBox4.EditValue = 2;
  cxDBTextEdit42.ParentColor         := cxDBImageComboBox4.EditValue = 2;
  cxDBTextEdit42.Properties.ReadOnly := cxDBImageComboBox4.EditValue = 2;

  cxDBTextEdit43.ParentColor         := cxDBImageComboBox8.EditValue = 2;
  cxDBTextEdit43.Properties.ReadOnly := cxDBImageComboBox8.EditValue = 2;
  cxDBTextEdit46.ParentColor         := cxDBImageComboBox8.EditValue = 2;
  cxDBTextEdit46.Properties.ReadOnly := cxDBImageComboBox8.EditValue = 2;

  cxDBTextEdit47.ParentColor         := cxDBImageComboBox10.EditValue = 2;
  cxDBTextEdit47.Properties.ReadOnly := cxDBImageComboBox10.EditValue = 2;
  cxDBTextEdit49.ParentColor         := cxDBImageComboBox10.EditValue = 2;
  cxDBTextEdit49.Properties.ReadOnly := cxDBImageComboBox10.EditValue = 2;
  cxDBTextEdit59.ParentColor         := cxDBImageComboBox10.EditValue = 2;
  cxDBTextEdit59.Properties.ReadOnly := cxDBImageComboBox10.EditValue = 2;

  cxDBTextEdit60.ParentColor         := cxDBImageComboBox11.EditValue = 2;
  cxDBTextEdit60.Properties.ReadOnly := cxDBImageComboBox11.EditValue = 2;
  cxDBTextEdit61.ParentColor         := cxDBImageComboBox11.EditValue = 2;
  cxDBTextEdit61.Properties.ReadOnly := cxDBImageComboBox11.EditValue = 2;
  cxDBTextEdit62.ParentColor         := cxDBImageComboBox11.EditValue = 2;
  cxDBTextEdit62.Properties.ReadOnly := cxDBImageComboBox11.EditValue = 2;

  cxDBTextEdit63.ParentColor         := cxDBImageComboBox13.EditValue = 2;
  cxDBTextEdit63.Properties.ReadOnly := cxDBImageComboBox13.EditValue = 2;
  cxDBTextEdit64.ParentColor         := cxDBImageComboBox13.EditValue = 2;
  cxDBTextEdit64.Properties.ReadOnly := cxDBImageComboBox13.EditValue = 2;
  cxDBTextEdit65.ParentColor         := cxDBImageComboBox13.EditValue = 2;
  cxDBTextEdit65.Properties.ReadOnly := cxDBImageComboBox13.EditValue = 2;

  cxDBTextEdit66.ParentColor         := cxDBImageComboBox14.EditValue = 2;
  cxDBTextEdit66.Properties.ReadOnly := cxDBImageComboBox14.EditValue = 2;

  cxDBTextEdit67.ParentColor         := cxDBImageComboBox17.EditValue = 2;
  cxDBTextEdit67.Properties.ReadOnly := cxDBImageComboBox17.EditValue = 2;
end;

procedure TfrmCOBRetailDBS.SOFWBIPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if SOFWBI.ItemIndex = 3 then
    OtherSourceOfFund.Visible := True else OtherSourceOfFund.Visible := False;

end;

procedure TfrmCOBRetailDBS.TaxStatusPropertiesChange(Sender: TObject);
begin
  inherited;
  if TaxStatus.ItemIndex = 1 then
  begin
    GuarantorPanel.Visible    := True;
    GuarantorWorkInfo.Visible := True;

//    cxTabSheet1.Visible := True;
    OATabs.Pages[1].TabVisible := True;
  end
  else
  begin
    GuarantorPanel.Visible    := False;
    GuarantorWorkInfo.Visible := False;

//    cxTabSheet1.Visible := False;
    OATabs.Pages[1].TabVisible := False;
  end;

end;

procedure TfrmCOBRetailDBS.txtIDNumberExit(Sender: TObject);
var
  oDataSet: TDataSet;
  iLength: Integer;
begin
  inherited;
  oDataSet := dsSubject.DataSet;
  iLength  := Length(oDataSet.FieldByName('ID_NO').AsString);

  if oDataSet.FieldByName('ID_TYPE').AsInteger = 1 then
  begin
    if (iLength <> 16) then
    begin
      if MessageDlg('ID Number is not 16 digit, continue ?', mtWarning, [mbYes, mbNo], 0) = mrNo then
        txtIDNumber.SetFocus;
    end;
  end;
end;

procedure TfrmCOBRetailDBS.UploadDocs(AFileName: string);
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

function TfrmCOBRetailDBS.ValidateFields(AFieldList,
  AFieldNames: Variant): Boolean;
var
  IsEmpty: Boolean;
  i, j: Integer;
begin
  Result := True;
  IsEmpty := False;

  j := VarArrayHighBound(AFieldList, 1);


  for i := 0 to VarArrayHighBound(AFieldList, 1) do
  begin
    if (dsSubject.DataSet.FieldValues[AFieldList[i]] = NULL) or (Trim(dsSubject.DataSet.FieldValues[AFieldList[i]]) = '') then
    begin
      IsEmpty := True;
      Result := False;
    end
    else
      IsEmpty := False;

    if IsEmpty then
    begin
      if FValidateMessage <> '' then FValidateMessage := FValidateMessage + ', ';

      FValidateMessage := FValidateMessage + AFieldNames[i];
//      MessageDlg(AFieldNames[i]+' Can not be empty', mtError, [mbOk], 0);
    end;
  end;

//  Result := not IsEmpty;

end;

end.
