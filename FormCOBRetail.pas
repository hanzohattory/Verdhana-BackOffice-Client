unit FormCOBRetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters,
  cxPCdxBarPopupMenu, cxContainer, cxEdit, cxCurrencyEdit, cxDBEdit, cxLabel,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  cxDropDownEdit, cxImageComboBox, cxMaskEdit, cxCalendar, cxTextEdit, cxPC,
  Vcl.ExtCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, Datasnap.DBClient,
  NClientDataset, cxGridDBTableView, cxImage, JPEG, Vcl.DBCtrls;

type
  TfrmCOBRetail = class(TfrmEditorData)
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
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBImageComboBox5: TcxDBImageComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBImageComboBox6: TcxDBImageComboBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    SOFWBI: TcxDBImageComboBox;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBImageComboBox9: TcxDBImageComboBox;
    cxDBTextEdit33: TcxDBTextEdit;
    txtIDNumber: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    txtGuProvince: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    guCityCode: TcxDBLookupComboBox;
    gucaCity: TcxDBLookupComboBox;
    chkIDLifeTime: TcxCheckBox;
    cxDBTextEdit17: TcxDBTextEdit;
    EduBackground: TcxDBImageComboBox;
    eduBackgroundOthers: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    GuarantorCurrAddress: TcxDBCheckBox;
    chkEvent: TcxDBCheckBox;
    cmbEvent: TcxDBLookupComboBox;
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
    GuarantorPanel: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Item30: TdxLayoutItem;
    GuarantorCurrentAddress: TdxLayoutGroup;
    GuarantorWorkInfo: TdxLayoutGroup;
    pnlGuarantorCurAddress: TdxLayoutItem;
    dxLayoutControl1Item34: TdxLayoutItem;
    dxLayoutControl1Item36: TdxLayoutItem;
    dxLayoutControl1Item37: TdxLayoutItem;
    dxLayoutControl1Item38: TdxLayoutItem;
    dxLayoutControl1Item39: TdxLayoutItem;
    dxLayoutControl1Item40: TdxLayoutItem;
    dxLayoutControl1Item41: TdxLayoutItem;
    dxLayoutControl1Item43: TdxLayoutItem;
    dxLayoutControl1Item44: TdxLayoutItem;
    dxLayoutControl1Item45: TdxLayoutItem;
    dxLayoutControl1Item46: TdxLayoutItem;
    OtherSourceOfFund: TdxLayoutItem;
    dxLayoutControl1Item48: TdxLayoutItem;
    dxLayoutControl1Item50: TdxLayoutItem;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxLayoutControl1Item51: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item52: TdxLayoutItem;
    dxLayoutControl1Item53: TdxLayoutItem;
    dxLayoutControl1Item54: TdxLayoutItem;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxLayoutControl1Item26: TdxLayoutItem;
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
    dxLayoutControl1Item56: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item32: TdxLayoutItem;
    EventCode: TdxLayoutItem;
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
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    chkCurrentAddress: TcxDBCheckBox;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    CurrentAddress: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
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
    TabSourceOfFund: TcxTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    cmbOccupation: TcxDBImageComboBox;
    cxDBTextEdit53: TcxDBTextEdit;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
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
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
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
    dxLayoutGroup9: TdxLayoutGroup;
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
    TabKnowYourCust: TcxTabSheet;
    dxLayoutControl6: TdxLayoutControl;
    txtFamily: TcxDBTextEdit;
    cxDBImageComboBox19: TcxDBImageComboBox;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBTextEdit61: TcxDBTextEdit;
    cxDBImageComboBox20: TcxDBImageComboBox;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    KYC12: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    KYC21: TcxDBTextEdit;
    KYC22: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    KYC31: TcxDBTextEdit;
    KYC32: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    KYC41: TcxDBTextEdit;
    KYC42: TcxDBTextEdit;
    cxDBTextEdit76: TcxDBTextEdit;
    KYC1: TcxDBImageComboBox;
    KYC11: TcxDBTextEdit;
    KYC2: TcxDBImageComboBox;
    KYC3: TcxDBImageComboBox;
    KYC4: TcxDBImageComboBox;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Item14: TdxLayoutItem;
    dxLayoutControl4Item17: TdxLayoutItem;
    dxLayoutControl4Item18: TdxLayoutItem;
    dxLayoutControl4Item20: TdxLayoutItem;
    dxLayoutControl4Item21: TdxLayoutItem;
    dxLayoutControl4Item22: TdxLayoutItem;
    dxLayoutControl4Item24: TdxLayoutItem;
    dxLayoutControl4Item25: TdxLayoutItem;
    dxLayoutControl4Item26: TdxLayoutItem;
    dxLayoutControl4Item28: TdxLayoutItem;
    dxLayoutControl4Item29: TdxLayoutItem;
    dxLayoutControl4Item30: TdxLayoutItem;
    dxLayoutControl4Item31: TdxLayoutItem;
    dxLayoutControl4Item15: TdxLayoutItem;
    dxLayoutControl4Item16: TdxLayoutItem;
    dxLayoutControl4Item19: TdxLayoutItem;
    dxLayoutControl4Item23: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutControl4Group6: TdxLayoutGroup;
    dxLayoutControl4Group15: TdxLayoutGroup;
    dxLayoutControl4Group8: TdxLayoutGroup;
    dxLayoutControl4Group11: TdxLayoutGroup;
    dxLayoutControl4Group19: TdxLayoutGroup;
    dxLayoutControl4Group20: TdxLayoutGroup;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Group7: TdxLayoutGroup;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl3Item17: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    dxLayoutControl4Item8: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwCOBBank: TcxGridDBBandedTableView;
    dsCOBBank: TDataSource;
    cdsCOBBank: TNClientDataset;
    cdsCOBBankCPDID: TIntegerField;
    cdsCOBBankCID: TLargeintField;
    cdsCOBBankBRCODE: TStringField;
    cdsCOBBankBRANCHID: TLargeintField;
    cdsCOBBankACCCODE: TStringField;
    cdsCOBBankACCNAME: TStringField;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    dxLayoutControl3Item15: TdxLayoutItem;
    gvwCOBBankCUST_REG_NO: TcxGridDBBandedColumn;
    gvwCOBBankACC_NO: TcxGridDBBandedColumn;
    gvwCOBBankBANK_NAME: TcxGridDBBandedColumn;
    gvwCOBBankBANK_BRANCH: TcxGridDBBandedColumn;
    gvwCOBBankBENEFICIARY: TcxGridDBBandedColumn;
    gvwCOBBankACCID: TcxGridDBBandedColumn;
    dsCOBBankCustody: TDataSource;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl5Item2: TdxLayoutItem;
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
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutControl3Group9: TdxLayoutGroup;
    dxLayoutControl7Group1: TdxLayoutGroup;
    dxLayoutControl7Group2: TdxLayoutGroup;
    dsDocs: TDataSource;
    imgPhoto: TcxImage;
    dxLayoutControl3Item1: TdxLayoutItem;
    cdsCOBBankCCY: TStringField;
    gvwCOBBankCCY: TcxGridDBBandedColumn;
    luChannel: TcxDBLookupComboBox;
    dxLayoutControl3Item16: TdxLayoutItem;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item18: TdxLayoutItem;
    FileOpen: TOpenDialog;
    btnCheck: TButton;
    dxLayoutControl3Item21: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl3Item22: TdxLayoutItem;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    dxLayoutControl3Item23: TdxLayoutItem;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group10: TdxLayoutGroup;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl3Item24: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl7Item1: TdxLayoutItem;
    gvwCOBBankBANK_CODE: TcxGridDBBandedColumn;
    procedure pnlParticularClick(Sender: TObject);
    procedure pnlAddressClick(Sender: TObject);
    procedure pnlSourceOfFundClick(Sender: TObject);
    procedure pnlKnowYourCustClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TaxStatusPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cmbOccupationPropertiesChange(Sender: TObject);
    procedure cmbSourceOfFundPropertiesChange(Sender: TObject);
    procedure KYC1PropertiesChange(Sender: TObject);
    procedure Invs_ObjectivesPropertiesCloseUp(Sender: TObject);
    procedure cmbSourceOfFundPropertiesCloseUp(Sender: TObject);
    procedure TypeOfResidentPropertiesCloseUp(Sender: TObject);
    procedure OwnershipStatusPropertiesCloseUp(Sender: TObject);
    procedure SOFWBIPropertiesCloseUp(Sender: TObject);
    procedure MaritalStatusPropertiesCloseUp(Sender: TObject);
    procedure EduBackgroundPropertiesCloseUp(Sender: TObject);
    procedure KYC2PropertiesChange(Sender: TObject);
    procedure KYC3PropertiesChange(Sender: TObject);
    procedure KYC4PropertiesChange(Sender: TObject);
    procedure chkIDLifeTimeClick(Sender: TObject);
    procedure chkEventClick(Sender: TObject);
    procedure chkCurrentAddressClick(Sender: TObject);
    procedure GuarantorCurrAddressClick(Sender: TObject);
    procedure txtIDNumberExit(Sender: TObject);
    procedure cdsCOBBankNewRecord(DataSet: TDataSet);
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
    FParticularTab: Boolean;
    FAddressTab: Boolean;
    FFundSourceTab: Boolean;
    FKnownCustomerTab: Boolean;
    FAction: Integer;
    FValidateMessage: String;

    function SetColor(ATab: Boolean): TColor;
    function CheckMandatoryData: Boolean;
    function ValidateFields(AFieldList: Variant; AFieldNames: Variant): Boolean;
  public
    { Public declarations }
  end;

var
  frmCOBRetail: TfrmCOBRetail;

implementation

{$R *.dfm}

uses FormCOBList, ClassClientConst, DataGlobal, FormEntityCheck;

procedure TfrmCOBRetail.btnCheckClick(Sender: TObject);
var
  sEntName, sNPWP, sIDCardNo: String;
  dtBirthDate: TDate;
  iEntID: Integer;
begin
  inherited;
//  if (not dsSubject.DataSet.FieldByName('NAME').IsNull) And
//    (not dsSubject.DataSet.FieldByName('TAXPAYER_REG').IsNull) And
//    (not dsSubject.DataSet.FieldByName('ID_NO').IsNull) And
//    (not dsSubject.DataSet.FieldByName('DOB').IsNull) then
//  begin
//    if dsSubject.DataSet.FieldByName('NAME').IsNull then
//      sEntName := '     '
//    else
      sEntName := dsSubject.DataSet.FieldByName('NAME').AsString;

//    if dsSubject.DataSet.FieldByName('TAXPAYER_REG').IsNull then
//      sNPWP := '     '
//    else
      sNPWP := dsSubject.DataSet.FieldByName('TAXPAYER_REG').AsString;

//    if dsSubject.DataSet.FieldByName('ID_NO').IsNull then
//      sIDCardNo := '     '
//    else
      sIDCardNo := dsSubject.DataSet.FieldByName('ID_NO').AsString;

    if dsSubject.DataSet.FieldByName('DOB').IsNull then
      dtBirthDate := EncodeDate(1899, 12, 31)
    else
      dtBirthDate := dsSubject.DataSet.FieldByName('DOB').AsDateTime;

//    frmEntityCheck.Check(sEntName, sNPWP, sIDCardNo, dtBirthDate, iEntID);
//  end
//  else
//  begin
//    dmGlobal.ErrorMessage('Please fill field "Name As State In the ID", "Date Of Birth", "ID Number", "Indonesia Taxpayer Reg No."!');
//  end;
end;

procedure TfrmCOBRetail.btnOKClick(Sender: TObject);
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
  begin
    ModalResult := mrOk;
  end;

end;

procedure TfrmCOBRetail.cdsCOBBankNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCOBBankCID.AsInteger := dsSubject.DataSet.FieldByname('CID').AsInteger;
end;

function TfrmCOBRetail.CheckMandatoryData: Boolean;
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
                                               'MARITAL_STATUS', 'ID_VALID', 'GENDER', 'EDU_BACKGROUND']),
                                   VarArrayOf(['Product Code', 'Name', 'Place Of Birth', 'Date Of Birth',
                                               'ID Type', 'ID Number', 'Nationality', 'Mother Maiden Name',
                                               'Marital Status', 'ID Valid', 'Gender', 'Education Background']));

  if FParticularTab then
  begin
    if oDataSet.FieldByName('MARITAL_STATUS').AsInteger = 2 then
      FParticularTab := ValidateFields(VarArrayOf(['SPOUSE_NAME']), VarArrayOf(['Spause Name']));
  end;

  //Address Tab
  FAddressTab := ValidateFields(VarArrayOf(['RESIDENT_TYPE', 'OWNERSHIP_STATUS', 'STREET', 'RT_RW',
                                            'KELURAHAN', 'KECAMATAN', 'PROVINCE', 'COUNTRY',
                                            'EMAIL', 'CELL_PHONE', 'CITY']),
                                VarArrayOf(['Resident Type', 'Resident Ownership Status', 'Resident Street', ' Resident RT/RW',
                                            'Kelurahan', 'Kecamatan', 'Province', 'Country',
                                            'Email', 'Cell Phone', 'City']));

  //Fund Source Tab
  FFundSourceTab := ValidateFields(VarArrayOf(['OCCUPATION']),
                                VarArrayOf(['Occupation']));

  if FFundSourceTab then
  begin
    if oDataSet.FieldByName('OCCUPATION').AsInteger = 5 then
      FFundSourceTab := ValidateFields(VarArrayOf(['NAT_BUSINESS_ENTREPRENEUR', 'FUND_SOURCE', 'ANNUAL_INCOME']),
                                       VarArrayOf(['Nat Business Enterpreneur', 'Source Of Fund', 'Annual Income']));
  end;

  //Known Your Customer Tab
  FKnownCustomerTab := ValidateFields(VarArrayOf(['REL_FAMILY_NAME', 'REL_FAMILY', 'BENEFICIARY_NAME', 'BENEFICIARY_RELATION']),
                                VarArrayOf(['Relation Family Name', 'Relation Family', 'Beneficiary Name', 'Beneficiary Relation']));

  if FValidateMessage <> '' then
  begin
    if MessageDlg('Fields "' + FValidateMessage+'" Can not be empty!' + #13 +
      'Do you want to add this Information to Notes?', mtError, mbYesNo, 0) = mrYes then
    begin
      TfrmCOBList(BrowserForm).AddNotes('Fields "' + FValidateMessage+'" Can not be empty!');
    end;

  end;

  Result := FParticularTab and FAddressTab and FFundSourceTab and FKnownCustomerTab;

end;

procedure TfrmCOBRetail.chkCurrentAddressClick(Sender: TObject);
begin
  inherited;
  if chkCurrentAddress.Checked then
    CurrentAddress.Visible := true else CurrentAddress.Visible := False;

end;

procedure TfrmCOBRetail.chkEventClick(Sender: TObject);
begin
  inherited;
  if chkEvent.Checked then
    EventCode.Visible := True else EventCode.Visible := False;

end;

procedure TfrmCOBRetail.chkIDLifeTimeClick(Sender: TObject);
begin
  inherited;
  if chkIDLifeTime.Checked then
    dsSubject.DataSet.FieldByName('ID_VALID').AsDateTime := StrToDate('9/9/9999')
  else
    dsSubject.DataSet.FieldByName('ID_VALID').AsDateTime := Now;

end;

procedure TfrmCOBRetail.cmbOccupationPropertiesChange(Sender: TObject);
begin
  inherited;
  if cmbOccupation.ItemIndex = 0 then
    Ocupation_Other.Visible := True else Ocupation_Other.Visible := False;

end;

procedure TfrmCOBRetail.cmbSourceOfFundPropertiesChange(Sender: TObject);
begin
  inherited;
  if cmbSourceOfFund.ItemIndex = 0 then
    SourceOfFundOther.Visible := True else SourceOfFundOther.Visible := False;

end;

procedure TfrmCOBRetail.cmbSourceOfFundPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if cmbSourceOfFund.ItemIndex = 0 then
    SourceOfFundOther.Visible := True else SourceOfFundOther.Visible := False;

end;

procedure TfrmCOBRetail.txtIDNumberExit(Sender: TObject);
var
  oDataSet: TDataSet;
  iLength: Integer;
begin
  inherited;
  oDataSet := dsSubject.DataSet;
  iLength  := Length(oDataSet.FieldByName('ID_NO').AsString);

  if oDataSet.FieldByName('ID_TYPE').AsInteger = 1 then
  begin
    if (iLength > 16) or (iLength < 16) then
    begin
      if MessageDlg('ID Number is not 16 digit, continue ?', mtWarning, [mbYes, mbNo], 0) = mrNo then
        txtIDNumber.SetFocus;
    end;
  end;
end;

procedure TfrmCOBRetail.EduBackgroundPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if EduBackground.ItemIndex = 0 then
    EB_Other.Visible := True else EB_Other.Visible := False;

end;

procedure TfrmCOBRetail.FormShow(Sender: TObject);
var
  Field: TBlobField;
  Stream: TStream;
  Jpg: TJPEGImage;
begin
  inherited;

  KYC11.Properties.ReadOnly := KYC1.ItemIndex <> 0;
  KYC12.Properties.ReadOnly := KYC1.ItemIndex <> 0;

  KYC21.Properties.ReadOnly := KYC2.ItemIndex <> 0;
  KYC22.Properties.ReadOnly := KYC2.ItemIndex <> 0;

  KYC31.Properties.ReadOnly := KYC3.ItemIndex <> 0;
  KYC32.Properties.ReadOnly := KYC3.ItemIndex <> 0;

  KYC41.Properties.ReadOnly := KYC4.ItemIndex <> 0;
  KYC42.Properties.ReadOnly := KYC4.ItemIndex <> 0;

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
end;

procedure TfrmCOBRetail.GuarantorCurrAddressClick(Sender: TObject);
begin
  inherited;
  if GuarantorCurrAddress.Checked then
    GuarantorCurrentAddress.Visible := True else GuarantorCurrentAddress.Visible := False;

end;

procedure TfrmCOBRetail.Invs_ObjectivesPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Invs_Objectives.ItemIndex = 0 then
    Invs_Objective_Others.Visible := True else Invs_Objective_Others.Visible := False;

end;

procedure TfrmCOBRetail.KYC1PropertiesChange(Sender: TObject);
begin
  inherited;

  KYC11.Properties.ReadOnly := KYC1.ItemIndex <> 0;
  KYC12.Properties.ReadOnly := KYC1.ItemIndex <> 0;

  KYC11.TabStop := not KYC11.Properties.ReadOnly;
  KYC12.TabStop := not KYC12.Properties.ReadOnly;

  if KYC11.Properties.ReadOnly then
    KYC11.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC11.Style.Color := clWindow;

  if KYC12.Properties.ReadOnly then
    KYC12.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC12.Style.Color := clWindow;

end;

procedure TfrmCOBRetail.KYC2PropertiesChange(Sender: TObject);
begin
  inherited;

  KYC21.Properties.ReadOnly := KYC2.ItemIndex <> 0;
  KYC22.Properties.ReadOnly := KYC2.ItemIndex <> 0;

  KYC21.TabStop := not KYC21.Properties.ReadOnly;
  KYC22.TabStop := not KYC22.Properties.ReadOnly;

  if KYC21.Properties.ReadOnly then
    KYC21.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC21.Style.Color := clWindow;

  if KYC22.Properties.ReadOnly then
    KYC22.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC22.Style.Color := clWindow;

end;

procedure TfrmCOBRetail.KYC3PropertiesChange(Sender: TObject);
begin
  inherited;

  KYC31.Properties.ReadOnly := KYC3.ItemIndex <> 0;
  KYC32.Properties.ReadOnly := KYC3.ItemIndex <> 0;

  KYC31.TabStop := not KYC31.Properties.ReadOnly;
  KYC32.TabStop := not KYC32.Properties.ReadOnly;

  if KYC31.Properties.ReadOnly then
    KYC31.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC31.Style.Color := clWindow;

  if KYC32.Properties.ReadOnly then
    KYC32.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC32.Style.Color := clWindow;

end;

procedure TfrmCOBRetail.KYC4PropertiesChange(Sender: TObject);
begin
  inherited;

  KYC41.Properties.ReadOnly := KYC4.ItemIndex <> 0;
  KYC42.Properties.ReadOnly := KYC4.ItemIndex <> 0;

  KYC41.TabStop := not KYC41.Properties.ReadOnly;
  KYC42.TabStop := not KYC42.Properties.ReadOnly;

  if KYC41.Properties.ReadOnly then
    KYC41.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC41.Style.Color := clWindow;

  if KYC42.Properties.ReadOnly then
    KYC42.Style.Color := dmGlobal.DisableColor.Color
  else
    KYC42.Style.Color := clWindow;

end;

procedure TfrmCOBRetail.Label11Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;

end;

procedure TfrmCOBRetail.Label2Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabPaticular;

end;

procedure TfrmCOBRetail.Label5Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;

end;

procedure TfrmCOBRetail.Label8Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;

end;

procedure TfrmCOBRetail.MaritalStatusPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if MaritalStatus.ItemIndex = 1 then
    SpouseName.Visible := True else SpouseName.Visible := False;

end;

procedure TfrmCOBRetail.OwnershipStatusPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if OwnershipStatus.ItemIndex = 4 then
    OwnershipStatusOth.Visible := True else OwnershipStatusOth.Visible := False;

end;

procedure TfrmCOBRetail.pnlAddressClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;

end;

procedure TfrmCOBRetail.pnlKnowYourCustClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;

end;

procedure TfrmCOBRetail.pnlParticularClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabPaticular;

end;

procedure TfrmCOBRetail.pnlSourceOfFundClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;

end;

function TfrmCOBRetail.SetColor(ATab: Boolean): TColor;
begin
  if ATab then Result := clMoneyGreen else Result := clBtnFace;

end;

procedure TfrmCOBRetail.SOFWBIPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if SOFWBI.ItemIndex = 3 then
    OtherSourceOfFund.Visible := True else OtherSourceOfFund.Visible := False;

end;

procedure TfrmCOBRetail.TaxStatusPropertiesChange(Sender: TObject);
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

procedure TfrmCOBRetail.TypeOfResidentPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if TypeOfResident.ItemIndex = 3 then
    TypeOfResidentOth.Visible := True else TypeOfResidentOth.Visible := False;

end;

function TfrmCOBRetail.ValidateFields(AFieldList,
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
