unit FormOpeningAccountRetailSB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Datasnap.DBClient, NClientDataset, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxPCdxBarPopupMenu,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxButtonEdit, cxBlobEdit, cxLabel, cxGridLevel,
  cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCheckGroup, cxDBCheckGroup, cxCheckBox, cxDBEdit,
  cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit,
  cxDropDownEdit, cxImageComboBox, cxGroupBox, cxRadioGroup, cxMaskEdit,
  cxCalendar, cxTextEdit, cxPC, ClassClientConst, cxGridBandedTableView,
  cxGridDBBandedTableView, cxSpinEdit, dxBarBuiltInMenu,
  cxGridViewLayoutContainer, dxLayoutLookAndFeels, dxDateRanges,
  dxScrollbarAnnotations;

const
  MinDateTime: TDateTime = -657434.0;      { 01/01/0100 12:00:00.000 AM }
  MaxDateTime: TDateTime =  2958100.99999; { 12/31/9998 11:59:59.999 PM }

type
  TfrmOpeningAccountRetailSB = class(TfrmEditorData)
    dsDocument: TDataSource;
    dsTrackInfo: TDataSource;
    dsAddress: TDataSource;
    cdsOA: TNClientDataset;
    cdsOAAddress: TNClientDataset;
    cdsOADOC: TNClientDataset;
    cdsOATrackInfo: TNClientDataset;
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
    pgEntity: TcxPageControl;
    tabGeneral: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    TaxStatus: TcxDBImageComboBox;
    cmbOccupation: TcxDBImageComboBox;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit53: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
    cxDBTextEdit56: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBTextEdit57: TcxDBTextEdit;
    cxDBTextEdit58: TcxDBTextEdit;
    eduBackgroundOthers: TcxDBTextEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBMaskEdit4: TcxDBMaskEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    cxDBDateEdit7: TcxDBDateEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Item20: TdxLayoutItem;
    dxLayoutControl3Item24: TdxLayoutItem;
    dxLayoutControl3Item21: TdxLayoutItem;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Item22: TdxLayoutItem;
    dxLayoutControl3Group9: TdxLayoutGroup;
    dxLayoutControl3Item18: TdxLayoutItem;
    lcOccupationOther: TdxLayoutItem;
    dxLayoutControl3Item25: TdxLayoutItem;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutControl3Item26: TdxLayoutItem;
    dxLayoutControl3Item27: TdxLayoutItem;
    dxLayoutControl3Item28: TdxLayoutItem;
    dxLayoutControl3Group12: TdxLayoutGroup;
    dxLayoutControl3Item29: TdxLayoutItem;
    dxLayoutControl3Item30: TdxLayoutItem;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Group14: TdxLayoutGroup;
    dxLayoutControl3Item19: TdxLayoutItem;
    dxLayoutControl3Item33: TdxLayoutItem;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    lcKTPExpDate: TdxLayoutItem;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Item13: TdxLayoutItem;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Group17: TdxLayoutGroup;
    dxLayoutControl3Item16: TdxLayoutItem;
    dxLayoutControl3Group18: TdxLayoutGroup;
    lcNatureOfBusiness: TdxLayoutItem;
    dxLayoutControl3Group19: TdxLayoutGroup;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item17: TdxLayoutItem;
    dxLayoutControl3Item23: TdxLayoutItem;
    dxLayoutControl3Group20: TdxLayoutGroup;
    dxLayoutControl3Item32: TdxLayoutItem;
    dxLayoutControl3Item34: TdxLayoutItem;
    dxLayoutControl3Group21: TdxLayoutGroup;
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
    dxLayoutGroup6: TdxLayoutGroup;
    GuarantorPanel: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl1Item56: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
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
    dxLayoutControl7Group2: TdxLayoutGroup;
    tabInvestInfo: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBCheckGroup1: TcxDBCheckGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    edSourceFundOther: TcxDBTextEdit;
    cxDBCheckGroup2: TcxDBCheckGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    cbAssetOwner: TcxDBImageComboBox;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutControl4Group12: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    lcSourceFundOther: TdxLayoutGroup;
    dxLayoutControl4Group9: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Item11: TdxLayoutItem;
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
    dxLayoutGroup10: TdxLayoutGroup;
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
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cbBranch: TcxDBLookupComboBox;
    dxLayoutControl3Item35: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cbSales: TcxDBLookupComboBox;
    dxLayoutControl3Item36: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl3Item37: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl3Item38: TdxLayoutItem;
    cxDBDateEdit8: TcxDBDateEdit;
    dxLayoutControl3Item39: TdxLayoutItem;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group22: TdxLayoutGroup;
    tabBankCustody: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridLevel3: TcxGridLevel;
    dsBank: TDataSource;
    dsCustody: TDataSource;
    cdsOABank: TNClientDataset;
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
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridLevel4: TcxGridLevel;
    dxLayoutControl5Item3: TdxLayoutItem;
    cxGrid5: TcxGrid;
    cxGridLevel5: TcxGridLevel;
    gvwRDNRequest: TcxGridDBBandedTableView;
    gvwKSEIRequest: TcxGridDBBandedTableView;
    cdsOAKSEI: TNClientDataset;
    cdsOARDN: TNClientDataset;
    dsKSEI: TDataSource;
    dsRDN: TDataSource;
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
    dxLayoutControl3Item40: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcAccNo: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl3Group13: TdxLayoutGroup;
    lcAccName: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
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
    dxLayoutControl3Item43: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl5Item4: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl5Group2: TdxLayoutGroup;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl5Item5: TdxLayoutItem;
    cdsOAAddressADDR_REF: TStringField;
    cdsOAAddressADDRTYPE_REF: TStringField;
    glvAddressLayoutItem1: TcxGridLayoutItem;
    glvAddressOAID: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem2: TcxGridLayoutItem;
    glvAddressADDR_REF: TcxGridDBLayoutViewItem;
    glvAddressLayoutItem24: TcxGridLayoutItem;
    glvAddressADDRTYPE_REF: TcxGridDBLayoutViewItem;
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
    cxDBTextEdit40: TcxDBTextEdit;
    dxLayoutControl3Item44: TdxLayoutItem;
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
    cdsEntityDIRECTSID: TStringField;
    cdsEntityqryEntContact: TDataSetField;
    cdsOAContact: TNClientDataset;
    dsContact: TDataSource;
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
    tabContact: TcxTabSheet;
    cxGrid9: TcxGrid;
    glvContact: TcxGridDBLayoutView;
    glvContactOAID: TcxGridDBLayoutViewItem;
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
    cxGridLayoutItem1: TcxGridLayoutItem;
    cxGridLevel9: TcxGridLevel;
    dxLayoutControl6Group1: TdxLayoutGroup;
    edKYC1: TcxLabel;
    dxLayoutControl6Item1: TdxLayoutItem;
    cxLabel10: TcxLabel;
    dxLayoutControl6Item16: TdxLayoutItem;
    cxLabel11: TcxLabel;
    dxLayoutControl6Item17: TdxLayoutItem;
    cxLabel12: TcxLabel;
    dxLayoutControl6Item18: TdxLayoutItem;
    dxLayoutControl6Item27: TdxLayoutItem;
    cxDBTextEdit41: TcxDBTextEdit;
    dxLayoutControl6Item28: TdxLayoutItem;
    dxLayoutControl6Group11: TdxLayoutGroup;
    cxDBTextEdit42: TcxDBTextEdit;
    dxLayoutControl6Item29: TdxLayoutItem;
    cmb: TcxDBImageComboBox;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl6Item30: TdxLayoutItem;
    cxDBTextEdit43: TcxDBTextEdit;
    dxLayoutControl6Item31: TdxLayoutItem;
    dxLayoutControl6Group12: TdxLayoutGroup;
    cxDBTextEdit44: TcxDBTextEdit;
    dxLayoutControl6Item32: TdxLayoutItem;
    cxDBTextEdit45: TcxDBTextEdit;
    dxLayoutControl6Item33: TdxLayoutItem;
    dxLayoutControl6Item34: TdxLayoutItem;
    cxDBImageComboBox5: TcxDBImageComboBox;
    cxDBTextEdit46: TcxDBTextEdit;
    dxLayoutControl6Item35: TdxLayoutItem;
    dxLayoutControl6Group13: TdxLayoutGroup;
    cxDBTextEdit47: TcxDBTextEdit;
    dxLayoutControl6Item36: TdxLayoutItem;
    dxLayoutControl6Item38: TdxLayoutItem;
    cxDBImageComboBox16: TcxDBImageComboBox;
    cxDBTextEdit49: TcxDBTextEdit;
    dxLayoutControl6Item39: TdxLayoutItem;
    dxLayoutControl6Group14: TdxLayoutGroup;
    cxDBTextEdit50: TcxDBTextEdit;
    dxLayoutControl6Item40: TdxLayoutItem;
    cxLabel21: TcxLabel;
    dxLayoutControl6Item69: TdxLayoutItem;
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
    cdsOAAuth: TNClientDataset;
    cdsOAAuthOAID: TIntegerField;
    cdsOAAuthSEQNO: TIntegerField;
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
    dsAuth: TDataSource;
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
    glvAuthOAID: TcxGridDBLayoutViewItem;
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
    dxLayoutGroup16: TdxLayoutGroup;
    glvAuthGroup2: TdxLayoutGroup;
    glvAuthGroup3: TdxLayoutGroup;
    glvAuthGroup4: TdxLayoutGroup;
    glvAuthGroup5: TdxLayoutGroup;
    cxGridLayoutItem2: TcxGridLayoutItem;
    glvAuthLayoutItem2: TcxGridLayoutItem;
    grdAuthLevel1: TcxGridLevel;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl3Item41: TdxLayoutItem;
    btnCheck: TcxButton;
    lcCheck: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    cmbRisk: TcxDBImageComboBox;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxDBCheckGroup3: TcxDBCheckGroup;
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
    cdsOAGU_TAXPAYER_NO: TStringField;
    cdsOAGU_NATIONALITY: TStringField;
    cdsOAGU_POB: TStringField;
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
    cdsOADIRECTSID: TStringField;
    cdsOAKSEI_CLIENT_CODE: TStringField;
    cdsOABICCODE: TStringField;
    cdsOAREQUEST_SUBREK: TStringField;
    cdsOAqryOARDN: TDataSetField;
    cdsOAqryOAKSEI: TDataSetField;
    cdsOAPARENT_ACCCODE: TStringField;
    cdsOAPARENT_ACCNAME: TStringField;
    cdsOAqryOAContact: TDataSetField;
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
    cdsOAKTP_LIFETIME: TStringField;
    cdsOASUBMIT: TStringField;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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
    gvwBank: TcxGridDBBandedTableView;
    gvwBankOAID: TcxGridDBBandedColumn;
    gvwBankSEQID: TcxGridDBBandedColumn;
    gvwBankCCYCODE: TcxGridDBBandedColumn;
    gvwBankBANKCODE: TcxGridDBBandedColumn;
    gvwBankBANKACCNO: TcxGridDBBandedColumn;
    gvwBankBANKACCNAME: TcxGridDBBandedColumn;
    gvwBankBANKBRANCH: TcxGridDBBandedColumn;
    gvwBankMODDA: TcxGridDBBandedColumn;
    gvwBankMODUI: TcxGridDBBandedColumn;
    gvwBankAPPDA: TcxGridDBBandedColumn;
    gvwBankAPPUI: TcxGridDBBandedColumn;
    gvwBankUNDER4Y: TcxGridDBBandedColumn;
    gvwBankUNDER4YDA: TcxGridDBBandedColumn;
    gvwBankNOTES4Y: TcxGridDBBandedColumn;
    gvwBankISDEL: TcxGridDBBandedColumn;
    gvwBankID: TcxGridDBBandedColumn;
    gvwCustody: TcxGridDBBandedTableView;
    gvwCustodyOAID: TcxGridDBBandedColumn;
    gvwCustodySEQID: TcxGridDBBandedColumn;
    gvwCustodyCUSTODYCODE: TcxGridDBBandedColumn;
    gvwCustodyCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwCustodyCUSTODYACCNAME: TcxGridDBBandedColumn;
    gvwCustodyCUSTODYBRANCH: TcxGridDBBandedColumn;
    gvwCustodyMODDA: TcxGridDBBandedColumn;
    gvwCustodyMODUI: TcxGridDBBandedColumn;
    gvwCustodyAPPDA: TcxGridDBBandedColumn;
    gvwCustodyAPPUI: TcxGridDBBandedColumn;
    gvwCustodyUNDER4Y: TcxGridDBBandedColumn;
    gvwCustodyUNDER4YDA: TcxGridDBBandedColumn;
    gvwCustodyNOTES4Y: TcxGridDBBandedColumn;
    gvwCustodyISDEL: TcxGridDBBandedColumn;
    gvwCustodyID: TcxGridDBBandedColumn;
    cdsOAAuthSTREET: TStringField;
    cdsOAAuthCITIZENSHIP: TStringField;
    cdsOAAuthCELLPHONE: TStringField;
    cdsOAAuthPHONE: TStringField;
    cdsOAAuthFAX: TStringField;
    cdsOAAuthEMAIL: TStringField;
    cdsOAAuthRELATION: TStringField;
    glvAuthLayoutItem1: TcxGridLayoutItem;
    glvAuthSTREET: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem29: TcxGridLayoutItem;
    glvAuthCITIZENSHIP: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem30: TcxGridLayoutItem;
    glvAuthCELLPHONE: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem31: TcxGridLayoutItem;
    glvAuthPHONE: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem32: TcxGridLayoutItem;
    glvAuthFAX: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem33: TcxGridLayoutItem;
    glvAuthEMAIL: TcxGridDBLayoutViewItem;
    glvAuthLayoutItem34: TcxGridLayoutItem;
    glvAuthRELATION: TcxGridDBLayoutViewItem;
    glvAuthGroup1: TdxLayoutAutoCreatedGroup;
    glvAuthGroup6: TdxLayoutAutoCreatedGroup;
    glvAuthGroup7: TdxLayoutAutoCreatedGroup;
    glvAuthGroup8: TdxLayoutAutoCreatedGroup;
    glvAuthGroup9: TdxLayoutAutoCreatedGroup;
    PopupMenu1: TPopupMenu;
    View1: TMenuItem;
    cdsAddrReff: TNClientDataset;
    cdsAddrReffOAID: TIntegerField;
    cdsAddrReffADDRTYPE: TStringField;
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
    cdsAddrReffADDR_REF: TStringField;
    cdsAddrReffADDRTYPE_REF: TStringField;
    cdsAddrReffRTRW: TStringField;
    cdsAddrReffRESIDENCETYPE: TStringField;
    cdsAddrReffOWNERSHIPSTATUS: TStringField;
    cdsAddrReffRESIDENCETYPE_OTHER: TStringField;
    cdsAddrReffOWNERSHIPSTATUS_OTHER: TStringField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
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
    glvAddressGroup1: TdxLayoutAutoCreatedGroup;
    glvAddressGroup6: TdxLayoutAutoCreatedGroup;
    glvAddressGroup8: TdxLayoutAutoCreatedGroup;
    glvAddressGroup10: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cdsDukcapil: TNClientDataset;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cdsOAINITIAL: TStringField;
    cdsOAEVENTID: TLargeintField;
    edInitial: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    cdsDukcapilNOKECAMATAN: TStringField;
    cdsDukcapilNOPRIBADI: TStringField;
    cdsDukcapilNOKK: TStringField;
    cdsDukcapilNAMA1: TStringField;
    cdsDukcapilNAMA2: TStringField;
    cdsDukcapilNAMA3: TStringField;
    cdsDukcapilKABUPATEN: TStringField;
    cdsDukcapilAGAMA: TStringField;
    cdsDukcapilRW: TStringField;
    cdsDukcapilKECAMATAN: TStringField;
    cdsDukcapilPEKERJAAN: TStringField;
    cdsDukcapilRT: TStringField;
    cdsDukcapilNOKELURAHAN: TStringField;
    cdsDukcapilALAMAT: TStringField;
    cdsDukcapilTEMPATLAHIR: TStringField;
    cdsDukcapilTANGGALLAHIR: TStringField;
    cdsDukcapilPENDIDIKAN: TStringField;
    cdsDukcapilSTATUS: TStringField;
    cdsDukcapilIBUKANDUNG: TStringField;
    cdsDukcapilPROVINSI: TStringField;
    cdsDukcapilNOKABUPATEN: TStringField;
    cdsDukcapilKELURAHAN: TStringField;
    cdsDukcapilKELAMIN: TStringField;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cdsOAPAYMENT_BANK: TStringField;
    cdsOABankDEFAULT_BANK: TStringField;
    cdsOACustodyDEFAULT_CUSTODY: TStringField;
    gvwBankDEFAULT_BANK: TcxGridDBBandedColumn;
    gvwCustodyDEFAULT_CUSTODY: TcxGridDBBandedColumn;
    cdsOABankPAYMENT_BANK: TStringField;
    gvwBankPAYMENT_BANK: TcxGridDBBandedColumn;
    cdsOAGU_GENDER: TStringField;
    cdsOAREFERRAL_ID_INT: TIntegerField;
    cdsOAREFERRAL_ID_EXT: TIntegerField;
    cxDBTextEdit51: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    cdsEntityGU_ID_EXP: TDateTimeField;
    cdsEntityGU_GENDER: TIntegerField;
    cdsEntityGU_DOB: TDateTimeField;
    glvAddressGroup7: TdxLayoutAutoCreatedGroup;
    cdsOAGU_ID_EXP: TDateField;
    cdsOAGU_DOB: TDateField;
    cdsCheckOAKTP: TNClientDataset;
    cdsCheckOAKTPKTP: TStringField;
    cdsCheckOAKTPENTNAME: TStringField;
    cxButton2: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    cxDBImageComboBox17: TcxDBImageComboBox;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cdsOAINS_BUSSTYPE_OT: TStringField;
    cdsOAINS_COMPTYPE_OT: TStringField;
    cdsOASINVUSE: TStringField;
    cdsOAWAPU_VALUE: TFloatField;
    cdsOAWAPU_TYPE: TIntegerField;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    cxDBImageComboBox18: TcxDBImageComboBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit52: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit54: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    cdsOAREFERRAL_INT_DESC: TStringField;
    cdsOAREFERRAL_EXT_DESC: TStringField;
    tabTradingParameter: TcxTabSheet;
    dxLayoutControl8: TdxLayoutControl;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    cxDBImageComboBox19: TcxDBImageComboBox;
    cxDBLookupComboBox22: TcxDBLookupComboBox;
    cbBusType: TcxDBLookupComboBox;
    btnGetSetting: TcxButton;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    pageAccount: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl9: TdxLayoutControl;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl10: TdxLayoutControl;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBTextEdit60: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    chkWAPU: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    edWapuVal: TcxDBCurrencyEdit;
    edWapuType: TcxDBImageComboBox;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutControl5Group3: TdxLayoutGroup;
    dxLayoutControl5Item16: TdxLayoutItem;
    dxLayoutControl5Item11: TdxLayoutItem;
    dxLayoutControl5Group5: TdxLayoutGroup;
    lcAvgDec: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutControl5Item17: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutControl5Item13: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    cbTCModel: TcxDBImageComboBox;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    tabSettle: TcxTabSheet;
    dxLayoutControl11: TdxLayoutControl;
    cxDBImageComboBox20: TcxDBImageComboBox;
    cbSettleType: TcxDBImageComboBox;
    dxLayoutGroup19: TdxLayoutGroup;
    lcSettleMode: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    tabInterest: TcxTabSheet;
    cxGrid7: TcxGrid;
    gvwInterest: TcxGridDBBandedTableView;
    gvwInterestACCID: TcxGridDBBandedColumn;
    gvwInterestCCY: TcxGridDBBandedColumn;
    gvwInterestINTERESTCODE: TcxGridDBBandedColumn;
    gvwInterestMODDA: TcxGridDBBandedColumn;
    gvwInterestMODUI: TcxGridDBBandedColumn;
    gvwInterestAPPDA: TcxGridDBBandedColumn;
    gvwInterestAPPUI: TcxGridDBBandedColumn;
    gvwInterestUNDER4Y: TcxGridDBBandedColumn;
    gvwInterestUNDER4YDA: TcxGridDBBandedColumn;
    gvwInterestNOTES4Y: TcxGridDBBandedColumn;
    gvwInterestISDEL: TcxGridDBBandedColumn;
    gvwInterestID: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    tabCommission: TcxTabSheet;
    grdComm: TcxGrid;
    gvwComm: TcxGridDBTableView;
    gvwCommCHANNELCODE: TcxGridDBColumn;
    gvwCommMARKETCODE: TcxGridDBColumn;
    gvwCommCCYCODE: TcxGridDBColumn;
    gvwCommCOMM_ID: TcxGridDBColumn;
    gvwCommDESCRIPTION: TcxGridDBColumn;
    gvwCommCALC_METHOD: TcxGridDBColumn;
    gvwCommUSE_MINCOMM: TcxGridDBColumn;
    gvwCommWITH_SELLTAX: TcxGridDBColumn;
    grdCommLevel1: TcxGridLevel;
    Panel1: TPanel;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBBandedTableView;
    gvwChargeOAID: TcxGridDBBandedColumn;
    gvwChargeMARKETCODE: TcxGridDBBandedColumn;
    gvwChargeCHARGE_ID: TcxGridDBBandedColumn;
    gvwChargeISUSED: TcxGridDBBandedColumn;
    gvwChargeMODDA: TcxGridDBBandedColumn;
    gvwChargeMODUI: TcxGridDBBandedColumn;
    gvwChargeAPPDA: TcxGridDBBandedColumn;
    gvwChargeAPPUI: TcxGridDBBandedColumn;
    gvwChargeUNDER4Y: TcxGridDBBandedColumn;
    gvwChargeUNDER4YDA: TcxGridDBBandedColumn;
    gvwChargeNOTES4Y: TcxGridDBBandedColumn;
    gvwChargeISDEL: TcxGridDBBandedColumn;
    gvwChargeID: TcxGridDBBandedColumn;
    gvwChargeDESCRIPTION: TcxGridDBBandedColumn;
    gvwChargeCHARGE_DESC: TcxGridDBBandedColumn;
    grdChargeLevel1: TcxGridLevel;
    grdChargeByBussType: TcxGrid;
    gvwChargeByBussType: TcxGridDBBandedTableView;
    gvwChargeByBussTypeMARKETCODE: TcxGridDBBandedColumn;
    gvwChargeByBussTypeCHARGE_CODE: TcxGridDBBandedColumn;
    gvwChargeByBussTypeCHARGE_DESC: TcxGridDBBandedColumn;
    grdChargeByBussTypeLevel1: TcxGridLevel;
    tabCharges: TcxTabSheet;
    tabCreditLimit: TcxTabSheet;
    PC: TcxPageControl;
    ctDefault: TcxTabSheet;
    dxLayoutControl12: TdxLayoutControl;
    dxLayoutGroup21: TdxLayoutGroup;
    ctCash: TcxTabSheet;
    dxLayoutControl13: TdxLayoutControl;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxDBRadioGroup6: TcxDBRadioGroup;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxDBRadioGroup9: TcxDBRadioGroup;
    cxDBTextEdit61: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    x: TdxLayoutGroup;
    LayoutControlItem23: TdxLayoutItem;
    LayoutControlItem24: TdxLayoutItem;
    LayoutControlItem7: TdxLayoutItem;
    dxLayoutGroup22: TdxLayoutGroup;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlItem27: TdxLayoutItem;
    LayoutControlItem12: TdxLayoutItem;
    LayoutControlItem18: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    ctReg: TcxTabSheet;
    dxLayoutControl14: TdxLayoutControl;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBRadioGroup10: TcxDBRadioGroup;
    cxDBRadioGroup11: TcxDBRadioGroup;
    cxDBRadioGroup12: TcxDBRadioGroup;
    cxDBRadioGroup13: TcxDBRadioGroup;
    cxDBRadioGroup14: TcxDBRadioGroup;
    cxDBRadioGroup15: TcxDBRadioGroup;
    cxDBTextEdit63: TcxDBTextEdit;
    cxDBTextEdit64: TcxDBTextEdit;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    LayoutControlItem13: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutItem37: TdxLayoutItem;
    ctRatio: TcxTabSheet;
    dxLayoutControl15: TdxLayoutControl;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBRadioGroup16: TcxDBRadioGroup;
    cxDBRadioGroup17: TcxDBRadioGroup;
    cxDBRadioGroup18: TcxDBRadioGroup;
    cxDBRadioGroup19: TcxDBRadioGroup;
    cxDBRadioGroup20: TcxDBRadioGroup;
    cxDBRadioGroup21: TcxDBRadioGroup;
    cxDBTextEdit66: TcxDBTextEdit;
    cxDBTextEdit67: TcxDBTextEdit;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutControl5Group4: TdxLayoutGroup;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutGroup32: TdxLayoutGroup;
    dxLayoutControl5Group6: TdxLayoutGroup;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutControl5Group8: TdxLayoutGroup;
    dxLayoutControl5Group9: TdxLayoutGroup;
    dxLayoutControl5Group7: TdxLayoutGroup;
    dxLayoutItem50: TdxLayoutItem;
    ctApprLimit: TcxTabSheet;
    dxLayoutControl16: TdxLayoutControl;
    cxDBRadioGroup22: TcxDBRadioGroup;
    cxDBRadioGroup23: TcxDBRadioGroup;
    cxDBRadioGroup24: TcxDBRadioGroup;
    cxDBRadioGroup25: TcxDBRadioGroup;
    cxDBRadioGroup26: TcxDBRadioGroup;
    cxDBRadioGroup27: TcxDBRadioGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutGroup34: TdxLayoutGroup;
    dxLayoutGroup35: TdxLayoutGroup;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutItem56: TdxLayoutItem;
    dxLayoutGroup38: TdxLayoutGroup;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutControl17: TdxLayoutControl;
    CreditLimitClass: TcxDBLookupComboBox;
    btnSetCreditLimit: TButton;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutItem60: TdxLayoutItem;
    tabExtRef: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2EXTSYS_ID: TcxGridDBColumn;
    cxGridDBTableView2EXTREF_CODE: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    dsOAAccount: TDataSource;
    cdsOAAccount: TNClientDataset;
    intgrfldOAAccountOAID: TIntegerField;
    cdsOAAccountACCNAME: TStringField;
    cdsOAAccountACCINIT: TStringField;
    cdsOAAccountACCTYPE: TStringField;
    cdsOAAccountACCSUBTYPE: TStringField;
    cdsOAAccountBRANCHID: TLargeintField;
    cdsOAAccountINVTYPE: TStringField;
    cdsOAAccountBUSSTYPE: TLargeintField;
    cdsOAAccountTC_MODEL: TStringField;
    cdsOAAccountPRDCODE: TStringField;
    cdsOAAccountA_CLS_ORDER: TStringField;
    cdsOAAccountAVGPRICEDEC: TSmallintField;
    cdsOAAccountOMNIBUSTRADE: TStringField;
    cdsOAAccountCASHKEEP: TStringField;
    cdsOAAccountSTOCKKEEP: TStringField;
    cdsOAAccountISWAPU: TStringField;
    cdsOAAccountISUSEWHT: TStringField;
    cdsOAAccountISUSEOTC: TStringField;
    cdsOAAccountISOWNCONTACT: TStringField;
    cdsOAAccountISTRDACCOUNT: TStringField;
    cdsOAAccountAUTO_SETTLE: TStringField;
    cdsOAAccountSALESID: TLargeintField;
    cdsOAAccountACC_STS: TStringField;
    cdsOAAccountOMGUSE: TStringField;
    cdsOAAccountOMGEXREFFCODE: TStringField;
    cdsOAAccountOMGALERT: TStringField;
    cdsOAAccountOMGSENDSSI: TStringField;
    cdsOAAccountOMGSENDFEEINBLOCK: TStringField;
    cdsOAAccountSI_SPLIT: TStringField;
    intgrfldOAAccountALCID: TIntegerField;
    intgrfldOAAccountTALCID: TIntegerField;
    cdsOAAccountLASTTR_DATE: TDateTimeField;
    cdsOAAccountTRF_PRVT_BANK: TStringField;
    intgrfldOAAccountTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsOAAccountCCCLS_ID: TLargeintField;
    cdsOAAccountCC_TYPE: TStringField;
    fltfldOAAccountCR_VAL: TFloatField;
    fltfldOAAccountBUY_LIMIT: TFloatField;
    fltfldOAAccountSELL_LIMIT: TFloatField;
    cdsOAAccountIS_IDX_TRX: TStringField;
    intgrfldOAAccountTLCLASSID: TIntegerField;
    cdsOAAccountDEFTRDPARAM: TStringField;
    cdsOAAccountKSEI_SID: TStringField;
    fltfldOAAccountRATIO_MRGCALL: TFloatField;
    fltfldOAAccountRATIO_MRGWARING: TFloatField;
    fltfldOAAccountRATIO_FORCESELL: TFloatField;
    intgrfldOAAccountFORCESELL_DAY: TIntegerField;
    fltfldOAAccountTL_CASHVALUATE: TFloatField;
    fltfldOAAccountTL_STOCKVALUATE: TFloatField;
    cdsOAAccountACCPASSWORD: TStringField;
    intgrfldOAAccountCPID: TIntegerField;
    cdsOAAccountBUS_CAT: TLargeintField;
    fltfldOAAccountINIT_DEPOSIT_FUND: TFloatField;
    fltfldOAAccountINIT_DEPOSIT_SHARES: TFloatField;
    cdsOAAccountALLOC_TYPE: TStringField;
    cdsOAAccountTC_BASE: TStringField;
    cdsOAAccountAUTO_ALLOC: TStringField;
    cdsOAAccountDT_AUTOAVGPRICE: TStringField;
    cdsOAAccountSETTLE_MODE: TStringField;
    cdsOAAccountNET_SETTLE: TStringField;
    cdsOAAccountSETTLE_TYPE: TStringField;
    fltfldOAAccountDIVIDEN_TAX: TFloatField;
    cdsOAAccountDORMANT: TStringField;
    cdsOAAccountRISK: TStringField;
    intgrfldOAAccountEXCELL_CLASS: TIntegerField;
    cdsOAAccountMODDA: TDateTimeField;
    cdsOAAccountMODUI: TStringField;
    cdsOAAccountAPPDA: TDateTimeField;
    cdsOAAccountAPPUI: TStringField;
    intgrfldOAAccountUNDER4Y: TIntegerField;
    cdsOAAccountUNDER4YDA: TDateTimeField;
    cdsOAAccountNOTES4Y: TStringField;
    intgrfldOAAccountISDEL: TIntegerField;
    cdsOAAccountID: TLargeintField;
    cdsOAAccountqryOAAccountInterest: TDataSetField;
    cdsOAAccountqryOAAccountExtReff: TDataSetField;
    cdsOAAccountqryOAAccountCharge: TDataSetField;
    cdsOAAccountqryOAAccountComm: TDataSetField;
    cdsOAAccountqryOAAccountCreditLimit: TDataSetField;
    intgrfldOAAccountREFERRAL_ID_INT: TIntegerField;
    intgrfldOAAccountREFERRAL_ID_EXT: TIntegerField;
    cdsOAAccountSINVUSE: TStringField;
    fltfldOAAccountWAPU_VALUE: TFloatField;
    intgrfldOAAccountWAPU_TYPE: TIntegerField;
    dsInterest: TDataSource;
    cdsOAAccountInterest: TNClientDataset;
    intgrfldOAAccountInterestOAID: TIntegerField;
    cdsOAAccountInterestCCY: TStringField;
    cdsOAAccountInterestINTERESTCODE: TStringField;
    cdsOAAccountInterestMODDA: TDateTimeField;
    cdsOAAccountInterestMODUI: TStringField;
    cdsOAAccountInterestAPPDA: TDateTimeField;
    cdsOAAccountInterestAPPUI: TStringField;
    intgrfldOAAccountInterestUNDER4Y: TIntegerField;
    cdsOAAccountInterestUNDER4YDA: TDateTimeField;
    cdsOAAccountInterestNOTES4Y: TStringField;
    intgrfldOAAccountInterestISDEL: TIntegerField;
    cdsOAAccountInterestID: TLargeintField;
    cdsOAAccountComm: TNClientDataset;
    intgrfldOAAccountCommOAID: TIntegerField;
    cdsOAAccountCommMARKETCODE: TStringField;
    cdsOAAccountCommCHANNELCODE: TStringField;
    cdsOAAccountCommCOMM_ID: TLargeintField;
    cdsOAAccountCommCALC_METHOD: TStringField;
    cdsOAAccountCommUSE_DAYTRADE: TStringField;
    cdsOAAccountCommUSE_MINCOMM: TStringField;
    cdsOAAccountCommWITH_SELLTAX: TStringField;
    cdsOAAccountCommMODDA: TDateTimeField;
    cdsOAAccountCommMODUI: TStringField;
    cdsOAAccountCommAPPDA: TDateTimeField;
    cdsOAAccountCommAPPUI: TStringField;
    intgrfldOAAccountCommUNDER4Y: TIntegerField;
    cdsOAAccountCommUNDER4YDA: TDateTimeField;
    cdsOAAccountCommNOTES4Y: TStringField;
    intgrfldOAAccountCommISDEL: TIntegerField;
    cdsOAAccountCommID: TLargeintField;
    cdsOAAccountCommDESCRIPTION: TStringField;
    dsComm: TDataSource;
    cdsOAAccountCreditLimit: TNClientDataset;
    intgrfldOAAccountCreditLimitOAID: TIntegerField;
    cdsOAAccountCreditLimitCCCLS_ID: TLargeintField;
    cdsOAAccountCreditLimitCCLSSNAME: TStringField;
    cdsOAAccountCreditLimitCC_TYPE: TStringField;
    fltfldOAAccountCreditLimitTL_CASHVALUATE: TFloatField;
    fltfldOAAccountCreditLimitTL_STOCKVALUATE: TFloatField;
    cdsOAAccountCreditLimitTLB_OVERLIMIT: TStringField;
    cdsOAAccountCreditLimitTLB_NOTVALIDSTATUS: TStringField;
    cdsOAAccountCreditLimitTLB_MRG_NONVALSTOCK: TStringField;
    cdsOAAccountCreditLimitTLB_OVERDUE: TStringField;
    cdsOAAccountCreditLimitTLS_SHORTSELL: TStringField;
    cdsOAAccountCreditLimitTLS_NOTVALIDSTATUS: TStringField;
    cdsOAAccountCreditLimitTLS_OVERDUE: TStringField;
    fltfldOAAccountCreditLimitRATIO_MRGCALL: TFloatField;
    fltfldOAAccountCreditLimitRATIO_MRGWARING: TFloatField;
    fltfldOAAccountCreditLimitRATIO_FORCESELL: TFloatField;
    intgrfldOAAccountCreditLimitFORCESELL_DAY: TIntegerField;
    fltfldOAAccountCreditLimitCR_VAL: TFloatField;
    fltfldOAAccountCreditLimitBUY_LIMIT: TFloatField;
    fltfldOAAccountCreditLimitSELL_LIMIT: TFloatField;
    fltfldOAAccountCreditLimitCREDIT_LIMIT: TFloatField;
    cdsOAAccountCreditLimitMODDA: TDateTimeField;
    cdsOAAccountCreditLimitMODUI: TStringField;
    cdsOAAccountCreditLimitAPPDA: TDateTimeField;
    cdsOAAccountCreditLimitAPPUI: TStringField;
    intgrfldOAAccountCreditLimitUNDER4Y: TIntegerField;
    cdsOAAccountCreditLimitUNDER4YDA: TDateTimeField;
    cdsOAAccountCreditLimitNOTES4Y: TStringField;
    intgrfldOAAccountCreditLimitISDEL: TIntegerField;
    cdsOAAccountCreditLimitID: TLargeintField;
    dsCreditLimit: TDataSource;
    dsChargeByBusType: TDataSource;
    dsChargeByBusTypecds: TClientDataSet;
    dsChargeByBusTypecdsMARKETCODE: TStringField;
    dsChargeByBusTypecdsCHARGE_CODE: TStringField;
    dsChargeByBusTypecdsCHARGE_DESC: TStringField;
    cdsOAAccountCharge: TNClientDataset;
    intgrfldOAAccountChargeOAID: TIntegerField;
    cdsOAAccountChargeMARKETCODE: TStringField;
    cdsOAAccountChargeCHARGE_ID: TLargeintField;
    cdsOAAccountChargeISUSED: TStringField;
    cdsOAAccountChargeMODDA: TDateTimeField;
    cdsOAAccountChargeMODUI: TStringField;
    cdsOAAccountChargeAPPDA: TDateTimeField;
    cdsOAAccountChargeAPPUI: TStringField;
    intgrfldOAAccountChargeUNDER4Y: TIntegerField;
    cdsOAAccountChargeUNDER4YDA: TDateTimeField;
    cdsOAAccountChargeNOTES4Y: TStringField;
    intgrfldOAAccountChargeISDEL: TIntegerField;
    cdsOAAccountChargeID: TLargeintField;
    cdsOAAccountChargeDESCRIPTION: TStringField;
    cdsOAAccountChargeCHARGE_DESC: TStringField;
    dsCharge: TDataSource;
    cdsOAAccountExtReff: TNClientDataset;
    intgrfldOAAccountExtReffOAID: TIntegerField;
    intgrfldOAAccountExtReffEXTSYS_ID: TIntegerField;
    cdsOAAccountExtReffEXTREF_CODE: TStringField;
    cdsOAAccountExtReffMODDA: TDateTimeField;
    cdsOAAccountExtReffMODUI: TStringField;
    cdsOAAccountExtReffAPPDA: TDateTimeField;
    cdsOAAccountExtReffAPPUI: TStringField;
    intgrfldOAAccountExtReffUNDER4Y: TIntegerField;
    cdsOAAccountExtReffUNDER4YDA: TDateTimeField;
    cdsOAAccountExtReffNOTES4Y: TStringField;
    intgrfldOAAccountExtReffISDEL: TIntegerField;
    cdsOAAccountExtReffID: TLargeintField;
    dsExtRef: TDataSource;
    cdsBusType: TNClientDataset;
    cdsBusTypeBUSTYPEID: TLargeintField;
    cdsBusTypeBUSTYPECODE: TStringField;
    cdsBusTypeBUSTYPEDESC: TStringField;
    cdsBusTypeTC_MODEL: TStringField;
    cdsBusTypeA_CLS_ORDER: TStringField;
    cdsBusTypeAVGPRICEDEC: TSmallintField;
    cdsBusTypeOMNIBUSTRADE: TStringField;
    cdsBusTypeCASHKEEP: TStringField;
    cdsBusTypeSTOCKKEEP: TStringField;
    cdsBusTypeISWAPU: TStringField;
    cdsBusTypeISUSEWHT: TStringField;
    cdsBusTypeISUSEOTC: TStringField;
    cdsBusTypeISOWNCONTACT: TStringField;
    cdsBusTypeISTRDACCOUNT: TStringField;
    cdsBusTypeAUTO_SETTLE: TStringField;
    cdsBusTypeOMGUSE: TStringField;
    cdsBusTypeOMGEXREFFCODE: TStringField;
    cdsBusTypeOMGALERT: TStringField;
    cdsBusTypeOMGSENDSSI: TStringField;
    cdsBusTypeOMGSENDFEEINBLOCK: TStringField;
    cdsBusTypeSI_SPLIT: TStringField;
    intgrfldBusTypeALCID: TIntegerField;
    intgrfldBusTypeTALCID: TIntegerField;
    cdsBusTypeCCCLS_ID: TLargeintField;
    cdsBusTypeCC_TYPE: TStringField;
    fltfldBusTypeCR_VAL: TFloatField;
    fltfldBusTypeBUY_LIMIT: TFloatField;
    fltfldBusTypeSELL_LIMIT: TFloatField;
    cdsBusTypeIS_IDX_TRX: TStringField;
    intgrfldBusTypeTLCLASSID: TIntegerField;
    cdsBusTypeDEFTRDPARAM: TStringField;
    fltfldBusTypeRATIO_MRGCALL: TFloatField;
    fltfldBusTypeRATIO_MRGWARING: TFloatField;
    fltfldBusTypeRATIO_FORCESELL: TFloatField;
    intgrfldBusTypeFORCESELL_DAY: TIntegerField;
    fltfldBusTypeTL_CASHVALUATE: TFloatField;
    fltfldBusTypeTL_STOCKVALUATE: TFloatField;
    cdsBusTypeACCPASSWORD: TStringField;
    intgrfldBusTypeCPID: TIntegerField;
    cdsBusTypeBUS_CAT: TLargeintField;
    cdsBusTypeALLOC_TYPE: TStringField;
    cdsBusTypeTC_BASE: TStringField;
    cdsBusTypeAUTO_ALLOC: TStringField;
    cdsBusTypeDT_AUTOAVGPRICE: TStringField;
    cdsBusTypeSETTLE_MODE: TStringField;
    cdsBusTypeNET_SETTLE: TStringField;
    cdsBusTypeSETTLE_TYPE: TStringField;
    fltfldBusTypeDIVIDEN_TAX: TFloatField;
    cdsBusTypeMODDA: TDateTimeField;
    cdsBusTypeMODUI: TStringField;
    cdsBusTypeAPPDA: TDateTimeField;
    cdsBusTypeAPPUI: TStringField;
    intgrfldBusTypeUNDER4Y: TIntegerField;
    cdsBusTypeUNDER4YDA: TDateTimeField;
    cdsBusTypeNOTES4Y: TStringField;
    intgrfldBusTypeISDEL: TIntegerField;
    cdsBusTypeID: TLargeintField;
    cdsBusTypeqryBusTypeInterest: TDataSetField;
    cdsBusTypeqryBusTypeComm: TDataSetField;
    cdsBusTypeqryBusTypeCharge: TDataSetField;
    cdsBusTypeCharge: TNClientDataset;
    cdsBusTypeChargeBUSTYPEID: TLargeintField;
    cdsBusTypeChargeMARKETCODE: TStringField;
    cdsBusTypeChargeCHARGE_ID: TLargeintField;
    cdsBusTypeChargeISUSED: TStringField;
    cdsBusTypeChargeMODDA: TDateTimeField;
    cdsBusTypeChargeMODUI: TStringField;
    cdsBusTypeChargeAPPDA: TDateTimeField;
    cdsBusTypeChargeAPPUI: TStringField;
    intgrfldBusTypeChargeUNDER4Y: TIntegerField;
    cdsBusTypeChargeUNDER4YDA: TDateTimeField;
    cdsBusTypeChargeNOTES4Y: TStringField;
    intgrfldBusTypeChargeISDEL: TIntegerField;
    cdsBusTypeChargeID: TLargeintField;
    cdsBusTypeComm: TNClientDataset;
    cdsBusTypeCommBUSTYPEID: TLargeintField;
    cdsBusTypeCommMARKETCODE: TStringField;
    cdsBusTypeCommCHANNELCODE: TStringField;
    cdsBusTypeCommCOMM_ID: TLargeintField;
    cdsBusTypeCommNET_COMMID: TLargeintField;
    cdsBusTypeCommCALC_METHOD: TStringField;
    cdsBusTypeCommUSE_DAYTRADE: TStringField;
    cdsBusTypeCommUSE_MINCOMM: TStringField;
    cdsBusTypeCommWITH_SELLTAX: TStringField;
    cdsBusTypeCommMODDA: TDateTimeField;
    cdsBusTypeCommMODUI: TStringField;
    cdsBusTypeCommAPPDA: TDateTimeField;
    cdsBusTypeCommAPPUI: TStringField;
    intgrfldBusTypeCommUNDER4Y: TIntegerField;
    cdsBusTypeCommUNDER4YDA: TDateTimeField;
    cdsBusTypeCommNOTES4Y: TStringField;
    intgrfldBusTypeCommISDEL: TIntegerField;
    cdsBusTypeCommID: TLargeintField;
    cdsBusTypeInterest: TNClientDataset;
    cdsBusTypeInterestBUSTYPEID: TLargeintField;
    cdsBusTypeInterestCCY: TStringField;
    cdsBusTypeInterestINTERESTCODE: TStringField;
    cdsBusTypeInterestMODDA: TDateTimeField;
    cdsBusTypeInterestMODUI: TStringField;
    cdsBusTypeInterestAPPDA: TDateTimeField;
    cdsBusTypeInterestAPPUI: TStringField;
    intgrfldBusTypeInterestUNDER4Y: TIntegerField;
    cdsBusTypeInterestUNDER4YDA: TDateTimeField;
    cdsBusTypeInterestNOTES4Y: TStringField;
    intgrfldBusTypeInterestISDEL: TIntegerField;
    cdsBusTypeInterestID: TLargeintField;
    cdsCrdConClassByParam: TNClientDataset;
    cdsCrdConClassByParamCCCLS_ID: TLargeintField;
    cdsCrdConClassByParamCCLSSNAME: TStringField;
    cdsCrdConClassByParamCC_TYPE: TStringField;
    fltfldCrdConClassByParamTL_CASHVALUATE: TFloatField;
    fltfldCrdConClassByParamTL_STOCKVALUATE: TFloatField;
    cdsCrdConClassByParamTLB_OVERLIMIT: TStringField;
    cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField;
    cdsCrdConClassByParamTLB_OVERDUE: TStringField;
    cdsCrdConClassByParamTLS_SHORTSELL: TStringField;
    cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLS_OVERDUE: TStringField;
    fltfldCrdConClassByParamRATIO_MRGCALL: TFloatField;
    fltfldCrdConClassByParamRATIO_MRGWARING: TFloatField;
    fltfldCrdConClassByParamRATIO_FORCESELL: TFloatField;
    intgrfldCrdConClassByParamFORCESELL_DAY: TIntegerField;
    fltfldCrdConClassByParamCR_VAL: TFloatField;
    fltfldCrdConClassByParamBUY_LIMIT: TFloatField;
    fltfldCrdConClassByParamSELL_LIMIT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure TaxStatusPropertiesChange(Sender: TObject);
    procedure cmbOccupationPropertiesChange(Sender: TObject);
    procedure gvwDocumentDOCFILENAMEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsOANewRecord(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsOASOURCEFUNDChange(Sender: TField);
    procedure cdsOAINVESTOBJECTIVEChange(Sender: TField);
    procedure cdsOAFIRSTNAMEChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure GuarantorCurrAddressClick(Sender: TObject);
    procedure cdsOABankNewRecord(DataSet: TDataSet);
    procedure cdsOACustodyNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsOAPARENT_ACCIDChange(Sender: TField);
    procedure cdsOACNTRESTChange(Sender: TField);
    procedure glvAddressInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure cdsOAAddressCOUNTCODEChange(Sender: TField);
    procedure cdsOAAddressPROVCODEChange(Sender: TField);
    procedure cdsOAAddressADDR_REFChange(Sender: TField);
    procedure cdsOAAddressNewRecord(DataSet: TDataSet);
    procedure cdsOAAddressBeforePost(DataSet: TDataSet);
    procedure glvAddressEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsOAKSEINewRecord(DataSet: TDataSet);
    procedure glvContactEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsOAEXISTING_CLIENTChange(Sender: TField);
    procedure cdsOAAfterOpen(DataSet: TDataSet);
    procedure cdsOAKTP_LIFETIMEChange(Sender: TField);
    procedure btnCheckClick(Sender: TObject);
    procedure cbSalesEnter(Sender: TObject);
    procedure cbSalesExit(Sender: TObject);
    procedure glvContactInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure View1Click(Sender: TObject);
    procedure cdsOAAddressADDRTYPE_REFChange(Sender: TField);
    procedure cdsOACOMPANY_PHONEChange(Sender: TField);
    procedure cdsOAGU_HANDPHONEChange(Sender: TField);
    procedure cdsOAGU_PHONEChange(Sender: TField);
    procedure cdsOAGU_PHONE2Change(Sender: TField);
    procedure cdsOAGU_JOBS_PHONEChange(Sender: TField);
    procedure cdsOAGU_CELLPHONEChange(Sender: TField);
    procedure cdsOAOFFC_PHONE_NOChange(Sender: TField);
    procedure cdsOAAddressPHONEChange(Sender: TField);
    procedure cdsOAAddressMOBILEPHONEChange(Sender: TField);
    procedure cdsOAContactPHONEChange(Sender: TField);
    procedure cdsOAContactMOBILEPHONEChange(Sender: TField);
    procedure cdsOAAddressRESIDENCETYPEChange(Sender: TField);
    procedure cdsOAAddressOWNERSHIPSTATUSChange(Sender: TField);
    procedure cdsOAFATCA_A1Change(Sender: TField);
    procedure cdsOAFATCA_A2Change(Sender: TField);
    procedure cdsOAFATCA_A3Change(Sender: TField);
    procedure cdsOAINFO_01Change(Sender: TField);
    procedure cdsOAINFO_02Change(Sender: TField);
    procedure cdsOAINFO_03Change(Sender: TField);
    procedure cdsOAINFO_04Change(Sender: TField);
    procedure cdsOARET_EDUBACKGROUNDChange(Sender: TField);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cbRefExtEnter(Sender: TObject);
    procedure cbRefExtExit(Sender: TObject);
    procedure cbRefIntEnter(Sender: TObject);
    procedure cbRefIntExit(Sender: TObject);
    procedure cdsOAOCCUPATIONChange(Sender: TField);
    procedure cdsOABeforePost(DataSet: TDataSet);
    procedure cdsOAAccountAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FRegisteredKTP: Boolean;

    procedure UploadDocs(AFileName: string);
    procedure CopyDataFromAccount(ACCID: Integer);
  public
    { Public declarations }
  end;

var
  frmOpeningAccountRetailSB: TfrmOpeningAccountRetailSB;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount, cxLookupDBGrid, FormEntityCheck,
  FormDataDukcapil, DataLookup, ClassRemoteServer;

procedure TfrmOpeningAccountRetailSB.btnCheckClick(Sender: TObject);
var
  iACCID: Integer;
begin
  inherited;
  if cdsOA.ReadOnly then
    Exit;

  if frmEntityCheck.CheckRetail(
    cdsOAFIRSTNAME.AsString,
    cdsOAMIDDLENAME.AsString,
    cdsOALASTNAME.AsString,
    cdsOAMOTHER_NAME.AsString,
    cdsOANPWP.AsString,
    cdsOAKTP.AsString,
    cdsOARET_BIRTDATE.AsDateTime,
    iACCID) then
  begin
//
  end;

end;

procedure TfrmOpeningAccountRetailSB.btnOKClick(Sender: TObject);
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

procedure TfrmOpeningAccountRetailSB.cbSalesEnter(Sender: TObject);
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

procedure TfrmOpeningAccountRetailSB.cbSalesExit(Sender: TObject);
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

procedure TfrmOpeningAccountRetailSB.cdsOAAccountAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dsChargeByBusTypecds.Close;
  dsChargeByBusTypecds.Params[0].AsInteger := cdsOAAccountBUSSTYPE.AsInteger;
  dsChargeByBusTypecds.Open;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAAddressADDRTYPE_REFChange(
  Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cdsOAAddressADDR_REFChange(Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cdsOAAddressBeforePost(DataSet: TDataSet);
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

procedure TfrmOpeningAccountRetailSB.cdsOAAddressCOUNTCODEChange(Sender: TField);
begin
  inherited;
  cdsOAAddressPROVCODE.Clear;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAAddressMOBILEPHONEChange(
  Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cdsOAAddressNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOAAddressADDR_REF.AsString := '0';
  cdsOAAddressEMAIL.AsString    := cdsOAEMAIL_ADDR.AsString;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAAddressOWNERSHIPSTATUSChange(
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

procedure TfrmOpeningAccountRetailSB.cdsOAAddressPHONEChange(Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cdsOAAddressPROVCODEChange(Sender: TField);
begin
  inherited;
  cdsOAAddressCITY.Clear;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAAddressRESIDENCETYPEChange(
  Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cdsOAAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  lcAccNo.Visible := cdsOAEXISTING_CLIENT.AsString = '1';
  lcAccName.Visible := lcAccNo.Visible;
  lcKTPExpDate.Enabled := cdsOAKTP_LIFETIME.AsString <> '1';

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

  cxDBTextEdit41.ParentColor         := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit41.Properties.ReadOnly := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit42.ParentColor         := cdsOAINFO_01.AsString = '0';
  cxDBTextEdit42.Properties.ReadOnly := cdsOAINFO_01.AsString = '0';

  cxDBTextEdit43.ParentColor         := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit43.Properties.ReadOnly := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit44.ParentColor         := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit44.Properties.ReadOnly := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit45.ParentColor         := cdsOAINFO_02.AsString = '0';
  cxDBTextEdit45.Properties.ReadOnly := cdsOAINFO_02.AsString = '0';

  cxDBTextEdit46.ParentColor         := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit46.Properties.ReadOnly := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit47.ParentColor         := cdsOAINFO_03.AsString = '0';
  cxDBTextEdit47.Properties.ReadOnly := cdsOAINFO_03.AsString = '0';

  cxDBTextEdit49.ParentColor         := cdsOAINFO_04.AsString = '0';
  cxDBTextEdit49.Properties.ReadOnly := cdsOAINFO_04.AsString = '0';
  cxDBTextEdit50.ParentColor         := cdsOAINFO_04.AsString = '0';
  cxDBTextEdit50.Properties.ReadOnly := cdsOAINFO_04.AsString = '0';

  KYC11.ParentColor         := cdsOAFATCA_A1.AsString = '0';
  KYC11.Properties.ReadOnly := cdsOAFATCA_A1.AsString = '0';

  KYC21.ParentColor         := cdsOAFATCA_A2.AsString = '0';
  KYC21.Properties.ReadOnly := cdsOAFATCA_A2.AsString = '0';

  KYC31.ParentColor         := cdsOAFATCA_A3.AsString = '0';
  KYC31.Properties.ReadOnly := cdsOAFATCA_A3.AsString = '0';


  cdsOAAccount.Close;
  cdsOAAccount.Params[0].Value := cdsOAOAID.AsInteger;
  cdsOAAccount.Open;

  cdsOAAccountInterest.Close;
  cdsOAAccountInterest.Open;

  cdsOAAccountComm.Close;
  cdsOAAccountComm.Open;

  cdsOAAccountCharge.Close;
  cdsOAAccountCharge.Open;

  cdsOAAccountCreditLimit.Close;
  cdsOAAccountCreditLimit.Open;

  cdsOAAccountExtReff.Close;
  cdsOAAccountExtReff.Open;
end;

procedure TfrmOpeningAccountRetailSB.cdsOABankNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOABankBANKACCNAME.AsString := cdsOAENTNAME.AsString;
end;

procedure TfrmOpeningAccountRetailSB.cdsOABeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsOA.State in [dsInsert] then
  begin
    cdsOAINITIAL.AsString := FormatFloat('0000000', dmGlobal.RemoteServer.GetSeq('TBL_OA_INIT'))
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOACNTRESTChange(Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cdsOACOMPANY_PHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOA.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsoaCNTREST.AsString, cdsOACOMPANY_PHONE.AsString);
    if cdsOACOMPANY_PHONE.AsString <> sPhoneNo then
      cdsOACOMPANY_PHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAContactMOBILEPHONEChange(
  Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
//  if cdsOAContact.State in dsEditModes then
//  begin
//    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsOAContactCOUNTCODE.AsString, cdsOAContactMOBILEPHONE.AsString);
//    if cdsOAContactMOBILEPHONE.AsString <> sPhoneNo then
//      cdsOAContactMOBILEPHONE.AsString := sPhoneNo;
//  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAContactPHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
//  if cdsOAContact.State in dsEditModes then
//  begin
//    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsOAContactCOUNTCODE.AsString, cdsOAContactPHONE.AsString);
//    if cdsOAContactPHONE.AsString <> sPhoneNo then
//      cdsOAContactPHONE.AsString := sPhoneNo;
//  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOACustodyNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOACustodyCUSTODYACCNAME.AsString := cdsOAENTNAME.AsString;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAEXISTING_CLIENTChange(Sender: TField);
begin
  inherited;
  lcAccNo.Visible := cdsOAEXISTING_CLIENT.AsString = '1';
  lcAccName.Visible := lcAccNo.Visible;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAFATCA_A1Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAFATCA_A1.AsString = '0';

  KYC11.ParentColor         := sBol;
  KYC11.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAFATCA_A2Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAFATCA_A2.AsString = '0';

  KYC21.ParentColor         := sBol;
  KYC21.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAFATCA_A3Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAFATCA_A3.AsString = '0';

  KYC31.ParentColor         := sBol;
  KYC31.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAFIRSTNAMEChange(Sender: TField);
begin
  inherited;
  cdsOAENTNAME.AsString := cdsOAFIRSTNAME.AsString + ' '
    + cdsOAMIDDLENAME.AsString + ' '
    + cdsOALASTNAME.AsString;

end;

procedure TfrmOpeningAccountRetailSB.cdsOAGU_CELLPHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOA.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsoaCNTREST.AsString, cdsOAGU_CELLPHONE.AsString);
    if cdsOAGU_CELLPHONE.AsString <> sPhoneNo then
      cdsOAGU_CELLPHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAGU_HANDPHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOA.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsoaCNTREST.AsString, cdsOAGU_HANDPHONE.AsString);
    if cdsOAGU_HANDPHONE.AsString <> sPhoneNo then
      cdsOAGU_HANDPHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAGU_JOBS_PHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOA.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsoaCNTREST.AsString, cdsOAGU_JOBS_PHONE.AsString);
    if cdsOAGU_JOBS_PHONE.AsString <> sPhoneNo then
      cdsOAGU_JOBS_PHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAGU_PHONE2Change(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOA.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsoaCNTREST.AsString, cdsOAGU_PHONE2.AsString);
    if cdsOAGU_PHONE2.AsString <> sPhoneNo then
      cdsOAGU_PHONE2.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAGU_PHONEChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOA.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsoaCNTREST.AsString, cdsOAGU_PHONE.AsString);
    if cdsOAGU_PHONE.AsString <> sPhoneNo then
      cdsOAGU_PHONE.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAINFO_01Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_01.AsString = '0';

  cxDBTextEdit41.ParentColor         := sBol;
  cxDBTextEdit41.Properties.ReadOnly := sBol;

  cxDBTextEdit42.ParentColor         := sBol;
  cxDBTextEdit42.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAINFO_02Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_02.AsString = '0';

  cxDBTextEdit43.ParentColor         := sBol;
  cxDBTextEdit43.Properties.ReadOnly := sBol;

  cxDBTextEdit44.ParentColor         := sBol;
  cxDBTextEdit44.Properties.ReadOnly := sBol;

  cxDBTextEdit45.ParentColor         := sBol;
  cxDBTextEdit45.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAINFO_03Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_03.AsString = '0';

  cxDBTextEdit46.ParentColor         := sBol;
  cxDBTextEdit46.Properties.ReadOnly := sBol;

  cxDBTextEdit47.ParentColor         := sBol;
  cxDBTextEdit47.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAINFO_04Change(Sender: TField);
var
  sBol: Boolean;
begin
  inherited;
  sBol := cdsOAINFO_04.AsString = '0';

  cxDBTextEdit49.ParentColor         := sBol;
  cxDBTextEdit49.Properties.ReadOnly := sBol;

  cxDBTextEdit50.ParentColor         := sBol;
  cxDBTextEdit50.Properties.ReadOnly := sBol;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAINVESTOBJECTIVEChange(Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cdsOAKSEINewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOAKSEIKSEI_MEMBER_CODE.AsString := dmGlobal.RemoteServer.GetGlobalParamString('009');//KSEI Member Code
  cdsOAKSEIKSEI_CLIENT_CODE.AsString := cdsOAKSEI_CLIENT_CODE.AsString;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAKTP_LIFETIMEChange(Sender: TField);
var
  xDate, xMonth, xYear: word;
  bDate, bMonth, bYear: word;
  dBirthDate, dExpiredDate: TDate;
begin
  inherited;
  dBirthDate := cdsOARET_BIRTDATE.AsDateTime;
  DecodeDate(dBirthDate, bYear, bMonth, bDate);
  DecodeDate(MaxDateTime, xYear, xMonth, xDate);

  dExpiredDate := EncodeDate(xYear, bMonth, bDate);

  if cdsOAKTP_LIFETIME.AsString = '1' then
    cdsOAKTP_EXPDATE.AsDateTime := dExpiredDate;

  lcKTPExpDate.Enabled := cdsOAKTP_LIFETIME.AsString <> '1';
end;

procedure TfrmOpeningAccountRetailSB.cdsOANewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOAOAID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_OA');
  cdsOAOACODE.AsString := '<AUTO>';
  cdsOACUST_TYPE.AsInteger := 1;
  cdsOAAFFIL.AsBoolean := False;
  cdsOACREATEDATE.AsDateTime := dmGlobal.RemoteServer.GetServerTimeStamp; //GetTransDate;
  cdsOAINVESTORCAT.AsString := 'D';
  cdsOACNTREST.AsString := dmGlobal.RemoteServer.GetDefaultCountry;
  cdsOAEXISTING_CLIENT.AsString := '0';
  cdsOAREQUEST_SUBREK.AsString  := '1';
  cdsOASUBMIT.AsString          := '1';
  cdsOACNTREST.AsString         := 'ID';
  cdsOAPRDCODE.AsString         := 'EQS';
  cdsOABRANCHID.AsInteger       := 1;
  cdsOATAXID.AsString           := '1010';
//  cdsOAINITIAL.AsString         := FormatFloat('0000000', dmGlobal.RemoteServer.GetSeq('TBL_OA_INIT'));
end;

procedure TfrmOpeningAccountRetailSB.cdsOAOCCUPATIONChange(Sender: TField);
var
  sRisk: string;
begin
  inherited;
  if cdsOARISK.AsString <> 'H' then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuOccupation.Locate('OC_CODE', cdsOAOCCUPATION.AsString, []) then
      begin
        cdsOARISK.AsString := cdsLuOccupationRISK.AsString;
      end;
    end;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAOFFC_PHONE_NOChange(Sender: TField);
var
  sPhoneNo: string;
begin
  inherited;
  if cdsOA.State in dsEditModes then
  begin
    sPhoneNo := dmGlobal.PhoneNoWithCounCode(cdsoaCNTREST.AsString, cdsOAOFFC_PHONE_NO.AsString);
    if cdsOAOFFC_PHONE_NO.AsString <> sPhoneNo then
      cdsOAOFFC_PHONE_NO.AsString := sPhoneNo;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOAPARENT_ACCIDChange(Sender: TField);
begin
  inherited;
  CopyDataFromAccount(cdsOAPARENT_ACCID.AsInteger);
end;

procedure TfrmOpeningAccountRetailSB.cdsOARET_EDUBACKGROUNDChange(Sender: TField);
begin
  inherited;
  if cdsOARET_EDUBACKGROUND.AsString = '1' then
  begin
    eduBackgroundOthers.ParentColor         := False;
    eduBackgroundOthers.Properties.ReadOnly := False;
  end
  else
  begin
    eduBackgroundOthers.ParentColor         := True;
    eduBackgroundOthers.Properties.ReadOnly := True;
    cdsOAEDU_BACKGOUND_OTHER.AsString       := '';
  end;
end;

procedure TfrmOpeningAccountRetailSB.cdsOASOURCEFUNDChange(Sender: TField);
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

procedure TfrmOpeningAccountRetailSB.cmbOccupationPropertiesChange(
  Sender: TObject);
begin
  inherited;
  lcOccupationOther.Visible := cmbOccupation.ItemIndex = 0;
  lcNatureOfBusiness.Visible := cmbOccupation.ItemIndex = 4;
end;

procedure TfrmOpeningAccountRetailSB.CopyDataFromAccount(ACCID: Integer);
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

    if not ASourceDataSet.IsEmpty then
    begin
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
      try
        oTargetField := cdsOA.FindField(oSourceField.FieldName);

        if oTargetField = cdsOACREATEDATE then
          Continue;

        if oTargetField = cdsOASOURCEFUND then
          Continue;

        if oTargetField = cdsOAOCCUPATION then
          Continue;

        if (oTargetField <> Nil) then
        begin
          oTargetField.Value := oSourceField.Value;
        end;
      except
        on e: exception do
          ShowMessage(oSourceField.FieldName + e.Message);
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
//  //Copy Bank Data
//  CopyDataSet(cdsAccountqryAccountBank.NestedDataSet, cdsOABank);
//  //Copy Custody Data
//  CopyDataSet(cdsAccountqryAccountCustody.NestedDataSet, cdsOACustody);

end;

procedure TfrmOpeningAccountRetailSB.cxButton1Click(Sender: TObject);
  function Compare(ACompare1: string; ACompare2: string): Boolean;
  begin
    Result := False;
    if CompareStr(ACompare1, ACompare2) <> 0 then
      Result := True;
  end;

  procedure InsertText(AForm: TfrmDataDukcapil; ATitle, ATextDukcapil, ATextOpeningAccount: string; ACheck: Integer = 0);
  var
    sGender, sStatus, sPendidikan, sPekerjaan, sCity, sRT, sRW, sRTRW: string;
    sCompare1, sCompare2: string;
  begin
    sCompare1 := ATextDukcapil;
    sCompare2 := ATextOpeningAccount;

    //Kelamin
    if ACheck = 1 then
    begin
      if ATextOpeningAccount = '1' then sGender := 'Laki-Laki'
      else if ATextOpeningAccount = '2' then sGender := 'Perempuan'
      else sGender := ATextOpeningAccount;

      sCompare2 := sGender;
    end;

    //Status
    if ACheck = 2 then
    begin
      if ATextDukcapil = 'BELUM KAWIN' then sStatus := '1'
      else if ATextDukcapil = 'KAWIN' then sStatus := '2'
      else if ((ATextDukcapil = 'CERAI MATI') or (ATextDukcapil = 'CERAI HIDUP')) and (sGender = 'Laki-Laki') then sStatus := '3'
      else if ((ATextDukcapil = 'CERAI MATI') or (ATextDukcapil = 'CERAI HIDUP')) and (sGender = 'Perempuan') then sStatus := '4'
      else sStatus := ATextDukcapil;

      sCompare1 := sStatus;
    end;

    //Pendidikan
    if ACheck = 3 then
    begin
      if UpperCase(ATextDukcapil) = 'TIDAK/BLM SEKOLAH' then sPendidikan := '1'
      else if UpperCase(ATextDukcapil) = 'TAMAT SD/SEDERAJAT' then sPendidikan := '2'
      else if UpperCase(ATextDukcapil) = 'SLTP/SEDERAJAT' then sPendidikan := '3'
      else if UpperCase(ATextDukcapil) = 'SLTA/SEDERAJAT' then sPendidikan := '4'
      else if UpperCase(ATextDukcapil) = 'AKADEMI/DIPLOMA III/SARJANA MUDA' then sPendidikan := '5'
      else if UpperCase(ATextDukcapil) = 'DIPLOMA IV/STRATA I' then sPendidikan := '6'
      else if UpperCase(ATextDukcapil) = 'STRATA-II' then sPendidikan := '7'
      else if UpperCase(ATextDukcapil) = 'STRATA-III' then sPendidikan := '8';

      sCompare1 := sPendidikan;
    end;

    //Pekerjaan
    if ACheck = 4 then
    begin
      if UpperCase(ATextDukcapil) = 'KARYAWAN SWASTA' then sPekerjaan := '2'
      else if UpperCase(ATextDukcapil) = 'PEGAWAI NEGERI SIPIL (PNS)' then sPekerjaan := '3'
      else if UpperCase(ATextDukcapil) = 'MENGURUS RUMAH TANGGA' then sPekerjaan := '4'
      else if UpperCase(ATextDukcapil) = 'WIRASWASTA' then sPekerjaan := '5'
      else if UpperCase(ATextDukcapil) = 'PELAJAR/MAHASISWA' then sPekerjaan := '6'
      else if UpperCase(ATextDukcapil) = 'TNI/POLISI' then sPekerjaan := '7'
      else if UpperCase(ATextDukcapil) = 'PENSIUN' then sPekerjaan := '8'
      else if UpperCase(ATextDukcapil) = 'GURU/DOSEN' then sPekerjaan := '9'
      else sPekerjaan := '1';

      sCompare1 := sPekerjaan;
    end;

    if ACheck = 5 then
    begin
      if not cdsOAAddress.IsEmpty then
      begin
        if cdsOAAddress.Locate('ADDRTYPE', '1', []) then
        begin
          if sCompare2 = 'ALAMAT1' then
            sCompare2 := cdsOAAddressADDRESS1.AsString
          else if sCompare2 = 'PROV' then
          begin
            if not dmGlobal.IntDataLookup.cdsLuProvince.Active then
              dmGlobal.IntDataLookup.cdsLuProvince.Open;

            if dmGlobal.IntDataLookup.cdsLuProvince.Locate('PROVCODE', cdsOAAddressPROVCODE.AsString, []) then
              sCompare2 := dmGlobal.IntDataLookup.cdsLuProvincePROVNAME.AsString
          end
          else if sCompare2 = 'RTRW' then
          begin
            sRTRW := cdsOAAddressRTRW.AsString;
            sRT   := dmGlobal.GetStringDelimiter(sRTRW, '/');
            sRW   := sRTRW;
            sRTRW := FormatFloat('000', StrToFloatDef(sRT,0))+'/'+FormatFloat('000', StrToFloatDef(sRW,0));

            sCompare2 := sRTRW;
          end
          else //if sCompare2 = 'KAB' then
          begin
            if not dmGlobal.IntDataLookup.cdsLuCity.Active then
              dmGlobal.IntDataLookup.cdsLuCity.Open;
            if dmGlobal.IntDataLookup.cdsLuCity.Locate('CITYCODE', cdsOAAddressCITY.AsString, []) then
            begin
              sCity := dmGlobal.IntDataLookup.cdsLuCityCITYNAME.AsString;

              cdsDukcapil.Filter   := 'KABUPATEN LIKE '+QuotedStr('%'+UpperCase(sCity)+'%');
              cdsDukcapil.Filtered := True;
              if cdsDukcapil.IsEmpty then
                sCompare2 := ''
              else
                sCompare2 := sCompare1;
              cdsDukcapil.Filter   := '';
              cdsDukcapil.Filtered := False
            end;
          end;
        end;
      end;
    end;

    if Compare(Trim(UpperCase(sCompare1)), Trim(UpperCase(sCompare2))) then
//      TfrmDataDukcapil(AForm).mmDukcapil.Lines.Add(ATitle + ATextDukcapil + '  [Different]')
      TfrmDataDukcapil(AForm).mmDukcapil.SelAttributes.Color := clRed
    else
//      TfrmDataDukcapil(AForm).mmDukcapil.Lines.Add(ATitle + ATextDukcapil);
      TfrmDataDukcapil(AForm).mmDukcapil.SelAttributes.Color := clBlack;

    TfrmDataDukcapil(AForm).mmDukcapil.Lines.Add(ATitle + ATextDukcapil);
  end;

  function GetName(ANama1, ANama2: string): string;
  begin
    if (ANama1 = ANama2) or (ANama1 = '') then
      Result := ''
    else
      Result := ANama2;
  end;
var
  nik, nomorkecamatan, nomorpropinsi, nomorkk
  , namalengkap, kabupaten, agama, norw, kecamatan, pekerjaan, nort, nokelurahan
  , alamat, tempatlahir, pendidikanterakhir, status, ibukandung, propinsi, nokabupaten
  , kelurahan, jeniskelamin, tanggallahir, Msg : string;
  bTrue: Boolean;
  oForm: TfrmDataDukcapil;
  sNamaLengkap: string;
begin
  inherited;
  if not dmGlobal.ShowDukcapil then
  begin
    nik   := cdsOAKTP.AsString;
    bTrue := dmGlobal.RemoteServer.GetDukcapilData(nik, nomorkecamatan, nomorpropinsi, nomorkk
             , namalengkap, kabupaten, agama, norw, kecamatan, pekerjaan, nort, nokelurahan
             , alamat, tempatlahir, pendidikanterakhir, status, ibukandung, propinsi, nokabupaten
             , kelurahan, jeniskelamin, tanggallahir, Msg);

    if bTrue then
    begin
      try
        sNamaLengkap := namalengkap;

        cdsDukcapil.EmptyDataSet;
        cdsDukcapil.Append;
        cdsDukcapilNOKECAMATAN.AsString := nomorkecamatan;
        cdsDukcapilNOPRIBADI.AsString   := nomorpropinsi;
        cdsDukcapilNOKK.AsString        := nomorkk;
        cdsDukcapilNAMA1.AsString       := GetName(' ', dmGlobal.GetStringDelimiter(sNamaLengkap, ' '));
        cdsDukcapilNAMA2.AsString       := GetName(cdsDukcapilNAMA1.AsString, dmGlobal.GetStringDelimiter(sNamaLengkap, ' '));
        cdsDukcapilNAMA3.AsString       := GetName(cdsDukcapilNAMA2.AsString, sNamaLengkap);
        cdsDukcapilKABUPATEN.AsString   := kabupaten;
        cdsDukcapilAGAMA.AsString       := agama;
        cdsDukcapilRW.AsString          := norw;
        cdsDukcapilKECAMATAN.AsString   := kecamatan;
        cdsDukcapilPEKERJAAN.AsString   := pekerjaan;
        cdsDukcapilRT.AsString          := nort;
        cdsDukcapilNOKELURAHAN.AsString := nokelurahan;
        cdsDukcapilALAMAT.AsString      := alamat;
        cdsDukcapilTEMPATLAHIR.AsString := tempatlahir;
        cdsDukcapilTANGGALLAHIR.AsString:= tanggallahir;
        cdsDukcapilPENDIDIKAN.AsString  := pendidikanterakhir;
        cdsDukcapilSTATUS.AsString      := status;
        cdsDukcapilIBUKANDUNG.AsString  := ibukandung;
        cdsDukcapilPROVINSI.AsString    := propinsi;
        cdsDukcapilNOKABUPATEN.AsString := nokabupaten;
        cdsDukcapilKELURAHAN.AsString   := kelurahan;
        cdsDukcapilKELAMIN.AsString     := jeniskelamin;
        cdsDukcapil.Post;


        oForm := TfrmDataDukcapil.Create(nil);

        InsertText(oForm, '', '', '');
        InsertText(oForm, ' - NIK                    : ', nik, cdsOAKTP.AsString);
        InsertText(oForm, ' - Nomer KK               : ', nomorkk, '');
        InsertText(oForm, ' - Nama Lengkap           : ', namalengkap, cdsOAFIRSTNAME.AsString+' '+cdsOAMIDDLENAME.AsString+' '+cdsOALASTNAME.AsString);
        InsertText(oForm, ' - Kabupaten              : ', kabupaten, cdsOAAddressCITY.AsString, 5);
        InsertText(oForm, ' - Agama                  : ', agama, '');
        InsertText(oForm, ' - Kecamatan              : ', kecamatan, '');
        InsertText(oForm, ' - Pekerjaan              : ', pekerjaan, cdsOAOCCUPATION.AsString, 4);
        InsertText(oForm, ' - Alamat                 : ', alamat, 'ALAMAT1', 5);
        InsertText(oForm, ' - RT/RW                  : ', FormatFloat('000', StrToFloatDef(nort,0))+'/'+FormatFloat('000', StrToFloatDef(norw,0)), 'RTRW', 5);
        InsertText(oForm, ' - Nomor Kecamatan        : ', nomorkecamatan, '');
        InsertText(oForm, ' - Nomer Provinsi         : ', nomorpropinsi, '');
        InsertText(oForm, ' - Provinsi               : ', propinsi, 'PROV', 5);
        InsertText(oForm, ' - No. Kabupaten          : ', nokabupaten, '');
        InsertText(oForm, ' - Kelurahan              : ', kelurahan, '');
        InsertText(oForm, ' - No Kelurahan           : ', nokelurahan, '');
        InsertText(oForm, ' - Tempat & Tanggal Lahir : ', tempatlahir +', '+ tanggallahir, cdsOARET_BIRTHPLACE.AsString+', '+FormatDateTime('yyyy-mm-dd', cdsOARET_BIRTDATE.AsDateTime));
        InsertText(oForm, ' - Pendidikan Terakhir    : ', pendidikanterakhir, cdsOARET_EDUBACKGROUND.AsString, 3);
        InsertText(oForm, ' - Status                 : ', status, cdsOARET_MARITALSTATUS.AsString, 2);
        InsertText(oForm, ' - Ibu Kandung            : ', ibukandung, cdsOAMOTHER_NAME.AsString);
        InsertText(oForm, ' - Jenis Kelamin          : ', jeniskelamin, cdsOARET_GENDER.AsString, 1);

        TfrmDataDukcapil(oForm).dsOA.DataSet       := cdsOA;
        TfrmDataDukcapil(oForm).dsDukcapil.DataSet := cdsDukcapil;
        TfrmDataDukcapil(oForm).dsAddress.DataSet  := cdsOAAddress;

        oForm.Show;
      finally
  //      FreeAndNil(oForm);
      end;
    end
    else
      ShowMessage(Msg);
  end;
end;

procedure TfrmOpeningAccountRetailSB.cxButton2Click(Sender: TObject);
begin
  inherited;
  FRegisteredKTP := False;

  cdsCheckOAKTP.Close;
  cdsCheckOAKTP.Params[0].AsString := cdsOAKTP.AsString;
  cdsCheckOAKTP.Open;

  if not cdsCheckOAKTP.IsEmpty then
  begin
    FRegisteredKTP := True;
    MessageDlg('KTP No. '+cdsCheckOAKTPKTP.AsString+' has been registered with name '+ cdsCheckOAKTPKTP.AsString,
      mtError, [mbOk], 0);
  end;
end;

procedure TfrmOpeningAccountRetailSB.cxDBButtonEdit1PropertiesButtonClick(
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

    if frmLuAccount.Run(iAccID) = mrOK then
    begin
      if not (cdsOA.State in dsEditModes) then
        cdsOA.Edit;

      iAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      cdsOAPARENT_ACCID.AsInteger := iAccID;
    end;
  end;
end;

procedure TfrmOpeningAccountRetailSB.cbRefExtEnter(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefExt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.AddItem(LGrid.Columns[2], foEqual, 'E', 'E');
//    Active := True;
//  end;
end;

procedure TfrmOpeningAccountRetailSB.cbRefExtExit(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefExt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.Clear;
//    Active := False;
//  end;
end;

procedure TfrmOpeningAccountRetailSB.cbRefIntEnter(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefInt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.AddItem(LGrid.Columns[2], foEqual, 'I', 'I');
//    Active := True;
//  end;
end;

procedure TfrmOpeningAccountRetailSB.cbRefIntExit(Sender: TObject);
//var
//  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
//  LGrid := cbRefInt.ActiveProperties.Grid;
//  with LGrid.DataController.Filter do
//  begin
//    Root.Clear;
//    Active := False;
//  end;
end;

procedure TfrmOpeningAccountRetailSB.FormCreate(Sender: TObject);
begin
  inherited;
  try
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

      if not cdsLuBank.Active then
        cdsLuBank.Open
      else
        cdsLuBank.Refresh;

      if not cdsLuCustody.Active then
        cdsLuCustody.Open
      else
        cdsLuCustody.Refresh;

      if not cdsLuProduct.Active then
        cdsLuProduct.Open
      else
        cdsLuProduct.Refresh;

      if not cdsLuBankRDN.Active then
        cdsLuBankRDN.Open
      else
        cdsLuBankRDN.Refresh;

      if not cdsLuAccount.Active then
        cdsLuAccount.Open
      else
        cdsLuAccount.Refresh;

      if not cdsLuCcy.Active then
        cdsLuCcy.Open
      else
        cdsLuCcy.Refresh;
    end;

    cdsDukcapil.Close;
    cdsDukcapil.CreateDataSet;
  except
    on E : Exception do
      MessageDlg('TfrmOpeningAccountRetailSB.FormCreate, Error : '+ E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmOpeningAccountRetailSB.FormShow(Sender: TObject);
begin
  inherited;
  try
    lcCheck.Visible := False;
    tabAuthPerson.TabVisible := False;
    tabTrackingInfo.TabVisible := False;
    tabGuarantor.Visible  := dsSubject.DataSet.FieldByName('TAXPAYER_STATUS').AsInteger = 2;
    pgEntity.Pages[1].TabVisible := dsSubject.DataSet.FieldByName('TAXPAYER_STATUS').AsInteger = 2;
    if (not dsSubject.DataSet.FieldByName('SOURCEFUND').IsNull)
      and (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString <> '') then
    begin
      lcSourceFundOther.Visible := (dsSubject.DataSet.FieldByName('SOURCEFUND').AsString[1] = '1');
    end
    else
      lcSourceFundOther.Visible := False;

    cmbOccupationPropertiesChange(cmbOccupation);

    if tabKYC.TabVisible then
    begin
      edKYC1.EditValue  := StringReplace(edKYC1.EditValue, '[SECURITIES]', dmGlobal.RemoteServer.GetBrokerName, [rfReplaceAll, rfIgnoreCase]);
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
  except
    on E : Exception do
      MessageDlg('TfrmOpeningAccountRetailSB.FormShow, Error : '+ E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmOpeningAccountRetailSB.glvAddressEditing(
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

procedure TfrmOpeningAccountRetailSB.glvAddressInitEdit(
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

procedure TfrmOpeningAccountRetailSB.glvContactEditing(
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

procedure TfrmOpeningAccountRetailSB.glvContactInitEdit(
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

procedure TfrmOpeningAccountRetailSB.GuarantorCurrAddressClick(Sender: TObject);
begin
  inherited;
  GuarantorCurrentAddress.Visible := GuarantorCurrAddress.Checked;
end;

procedure TfrmOpeningAccountRetailSB.gvwDocumentDOCFILENAMEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if odDocs.Execute then
  begin
    if FileExists(odDocs.FileName) then
      UploadDocs(odDocs.FileName);
  end;
end;

procedure TfrmOpeningAccountRetailSB.TaxStatusPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    if TaxStatus.ItemIndex = 1 then
    begin
      GuarantorPanel.Visible    := True;
      GuarantorWorkInfo.Visible := True;

      pgEntity.Pages[1].TabVisible := True;
    end
    else
    begin
      GuarantorPanel.Visible    := False;
      GuarantorWorkInfo.Visible := False;

      pgEntity.Pages[1].TabVisible := False;
    end;
  except
    on E : Exception do
      MessageDlg('TfrmOpeningAccountRetailSB.TaxStatusPropertiesChange, Error : '+ E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmOpeningAccountRetailSB.UploadDocs(AFileName: string);
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

procedure TfrmOpeningAccountRetailSB.View1Click(Sender: TObject);
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
  RegisterClass(TfrmOpeningAccountRetailSB);

end.
