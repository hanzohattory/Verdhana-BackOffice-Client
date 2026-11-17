unit FormCOBDetailsRet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Vcl.ExtCtrls, dxLayoutcxEditAdapters, cxPCdxBarPopupMenu, cxContainer, cxEdit,
  cxCurrencyEdit, cxDBEdit, cxLabel, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxMemo, cxDropDownEdit, cxImageComboBox,
  cxMaskEdit, cxCalendar, cxTextEdit, cxPC;

type
  TfrmCOBDetailsRet = class(TfrmEditor)
    LayoutControlItem5: TdxLayoutItem;
    OATabs: TcxPageControl;
    TabPaticular: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
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
    cxDBImageComboBox10: TcxDBImageComboBox;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit77: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    txtGuProvince: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    guCityCode: TcxDBLookupComboBox;
    gucaCity: TcxDBLookupComboBox;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxCheckBox3: TcxCheckBox;
    cxDBTextEdit17: TcxDBTextEdit;
    EduBackground: TcxDBImageComboBox;
    eduBackgroundOthers: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    GuarantorPanel: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
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
    dxLayoutControl1Group4: TdxLayoutGroup;
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
    dxLayoutControl1Item49: TdxLayoutItem;
    dxLayoutControl1Item50: TdxLayoutItem;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxLayoutControl1Item51: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item52: TdxLayoutItem;
    dxLayoutControl1Item53: TdxLayoutItem;
    dxLayoutControl1Item54: TdxLayoutItem;
    dxLayoutControl1Item28: TdxLayoutItem;
    dxLayoutControl1Item26: TdxLayoutItem;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Item33: TdxLayoutItem;
    SpouseName: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item35: TdxLayoutItem;
    EB_Other: TdxLayoutItem;
    dxLayoutControl1Item42: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item56: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    TabAddress: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
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
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    CurrentAddress: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
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
    TabSourceOfFund: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
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
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    cxDBTextEdit28: TcxDBTextEdit;
    Invs_Objectives: TcxDBImageComboBox;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
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
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Item16: TdxLayoutItem;
    SourceOfFundOther: TdxLayoutItem;
    dxLayoutControl3Item18: TdxLayoutItem;
    Ocupation_other: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Item19: TdxLayoutItem;
    Invs_Objective_Others: TdxLayoutItem;
    dxLayoutControl3Item20: TdxLayoutItem;
    dxLayoutControl3Item21: TdxLayoutItem;
    dxLayoutControl3Item22: TdxLayoutItem;
    dxLayoutControl3Item14: TdxLayoutItem;
    TabKnowYourCust: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
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
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
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
    dxLayoutGroup8: TdxLayoutGroup;
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
    pnlParticular: TPanel;
    Label2: TLabel;
    pnlAddress: TPanel;
    Label5: TLabel;
    pnlSourceOfFund: TPanel;
    Label8: TLabel;
    pnlKnowYourCust: TPanel;
    Label11: TLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    GuarantorCurrAddress: TcxDBCheckBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    chkCurrentAddress: TcxDBCheckBox;
    dxLayoutControl2Item12: TdxLayoutItem;
    chkEvent: TcxDBCheckBox;
    dxLayoutControl1Item32: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cmbEvent: TcxDBLookupComboBox;
    EventCode: TdxLayoutItem;
    procedure pnlParticularClick(Sender: TObject);
    procedure pnlAddressClick(Sender: TObject);
    procedure pnlSourceOfFundClick(Sender: TObject);
    procedure pnlKnowYourCustClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure TabPaticularShow(Sender: TObject);
    procedure TabAddressShow(Sender: TObject);
    procedure TabKnowYourCustShow(Sender: TObject);
    procedure TabSourceOfFundShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TaxStatusPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cmbOccupationPropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox17PropertiesChange(Sender: TObject);
    procedure cxDBImageComboBox21PropertiesChange(Sender: TObject);
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
    procedure cxCheckBox3Click(Sender: TObject);
    procedure chkEventClick(Sender: TObject);
    procedure chkCurrentAddressClick(Sender: TObject);
    procedure GuarantorCurrAddressClick(Sender: TObject);
  private
    { Private declarations }
    FParticularTab: Boolean;
    FAddressTab: Boolean;
    FFundSourceTab: Boolean;
    FKnownCustomerTab: Boolean;
    FAction: Integer;

    function SetColor(ATab: Boolean): TColor;
    function CheckMandatoryData: Boolean;
    function ValidateFields(AFieldList: Variant; AFieldNames: Variant): Boolean;
  public
    { Public declarations }
    property Action : Integer read FAction write FAction;
  end;

var
  frmCOBDetailsRet: TfrmCOBDetailsRet;

implementation

{$R *.dfm}

uses FormClientOnBoardingList, DataGlobal, DataLookup;

procedure TfrmCOBDetailsRet.btnOKClick(Sender: TObject);
begin
  if FAction = 1 then
  begin
    if CheckMandatoryData then
      ModalResult := mrOk
    else
    begin
      MessageDlg('Please fill mandatory fields before done...', mtWarning, [mbYes], 0);
      ModalResult := mrCancel;
    end;
  end
  else
    ModalResult := mrOk;
end;

function TfrmCOBDetailsRet.CheckMandatoryData: Boolean;
var
  oDataSet: TDataSet;
begin
  Result := False;

  oDataSet := dsSubject.DataSet;

  //Particulat Tab
  FParticularTab := ValidateFields(VarArrayOf(['PRD_CODE', 'NAME', 'POB', 'DOB',
                                               'ID_TYPE', 'ID_NO', 'NATIONALITY', 'MOTHER_NAME',
                                               'MARITAL_STATUS', 'ID_VALID']),
                                   VarArrayOf(['Product Code', 'Name', 'Place Of Birth', 'Date Of Birth',
                                               'ID Type', 'ID Number', 'Nationality', 'Mother Maiden Name',
                                               'Marital Status', 'ID Valid']));

  if FParticularTab then
  begin
    if oDataSet.FieldByName('MARITAL_STATUS').AsInteger = 2 then
      FParticularTab := ValidateFields(VarArrayOf(['SPOUSE_NAME']), VarArrayOf(['Spause Name']));
  end;

  //Address Tab
  FAddressTab := ValidateFields(VarArrayOf(['RESIDENT_TYPE', 'OWNERSHIP_STATUS', 'STREET', 'RT_RW',
                                            'KELURAHAN', 'KECAMATAN', 'PROVINCE', 'COUNTRY',
                                            'ZIP_CODE', 'EMAIL', 'HOME_PHONE', 'CELL_PHONE']),
                                VarArrayOf(['Resident Type', 'Resident Ownership Status', 'Resident Street', ' Resident RT/RW',
                                            'Kelurahan', 'Kecamatan', 'Province', 'Country',
                                            'Zip Code', 'Email', 'Home Phone', 'Cell Phone']));

  //Fund Source Tab
  FFundSourceTab := ValidateFields(VarArrayOf(['OCCUPATION']),
                                VarArrayOf(['Occupation']));

  if FFundSourceTab then
  begin
    if oDataSet.FieldByName('OCCUPATION').AsInteger = 5 then
      FFundSourceTab := ValidateFields(VarArrayOf(['NAT_BUSINESS_ENTREPRENEUR']), VarArrayOf(['Nat Business Enterpreneur']));
  end;

  //Known Your Customer Tab
  FKnownCustomerTab := ValidateFields(VarArrayOf(['REL_FAMILY_NAME', 'REL_FAMILY', 'BENEFICIARY_NAME', 'BENEFICIARY_RELATION',
                                            'HOBBIES']),
                                VarArrayOf(['Relation Family Name', 'Relation Family', 'Beneficiary Name', 'Beneficiary Relation',
                                            'Hobbies']));

  Result := FParticularTab and FAddressTab and FFundSourceTab and FKnownCustomerTab;

end;

procedure TfrmCOBDetailsRet.Invs_ObjectivesPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Invs_Objectives.ItemIndex = 0 then
    Invs_Objective_Others.Visible := True else Invs_Objective_Others.Visible := False;
end;

procedure TfrmCOBDetailsRet.KYC2PropertiesChange(Sender: TObject);
begin
  inherited;
  if KYC2.ItemIndex = 0 then
  begin
    KYC21.Properties.ReadOnly := False;
    KYC22.Properties.ReadOnly := False;
    KYC21.Properties.AssignedValues.ReadOnly := False;
    KYC22.Properties.AssignedValues.ReadOnly := False;
  end
  else
  begin
    KYC21.Properties.ReadOnly := true;
    KYC22.Properties.ReadOnly := true;
    KYC21.Properties.AssignedValues.ReadOnly := true;
    KYC22.Properties.AssignedValues.ReadOnly := true;
  end;
end;

procedure TfrmCOBDetailsRet.KYC3PropertiesChange(Sender: TObject);
begin
  inherited;
  if KYC3.ItemIndex = 0 then
  begin
    KYC31.Properties.ReadOnly := False;
    KYC32.Properties.ReadOnly := False;
    KYC31.Properties.AssignedValues.ReadOnly := False;
    KYC32.Properties.AssignedValues.ReadOnly := False;
  end
  else
  begin
    KYC31.Properties.ReadOnly := true;
    KYC32.Properties.ReadOnly := true;
    KYC31.Properties.AssignedValues.ReadOnly := true;
    KYC32.Properties.AssignedValues.ReadOnly := true;
  end;
end;

procedure TfrmCOBDetailsRet.KYC4PropertiesChange(Sender: TObject);
begin
  inherited;
  if KYC4.ItemIndex = 0 then
  begin
    KYC41.Properties.ReadOnly := False;
    KYC42.Properties.ReadOnly := False;
    KYC41.Properties.AssignedValues.ReadOnly := False;
    KYC42.Properties.AssignedValues.ReadOnly := False;
  end
  else
  begin
    KYC41.Properties.ReadOnly := true;
    KYC42.Properties.ReadOnly := true;
    KYC41.Properties.AssignedValues.ReadOnly := true;
    KYC42.Properties.AssignedValues.ReadOnly := true;
  end;
end;

procedure TfrmCOBDetailsRet.chkCurrentAddressClick(Sender: TObject);
begin
  inherited;
  if chkCurrentAddress.Checked then
    CurrentAddress.Visible := true else CurrentAddress.Visible := False;
end;

procedure TfrmCOBDetailsRet.cmbOccupationPropertiesChange(Sender: TObject);
begin
  inherited;
  if cmbOccupation.ItemIndex = 0 then
    Ocupation_Other.Visible := True else Ocupation_Other.Visible := False;
end;

procedure TfrmCOBDetailsRet.cmbSourceOfFundPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if Invs_Objectives.ItemIndex = 0 then
    Invs_Objective_Others.Visible := True else Invs_Objective_Others.Visible := False;
end;

procedure TfrmCOBDetailsRet.cxCheckBox3Click(Sender: TObject);
begin
  inherited;
  if cxCheckBox3.Checked then
    dsSubject.DataSet.FieldByName('ID_VALID').AsDateTime := StrToDate('9/9/9999')
  else
    dsSubject.DataSet.FieldByName('ID_VALID').AsDateTime := Now;
end;

procedure TfrmCOBDetailsRet.chkEventClick(Sender: TObject);
begin
  inherited;
  if chkEvent.Checked then
    EventCode.Visible := True else EventCode.Visible := False;
end;

procedure TfrmCOBDetailsRet.cxDBImageComboBox17PropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cmbSourceOfFund.ItemIndex = 0 then
    SourceOfFundOther.Visible := True else SourceOfFundOther.Visible := False;
end;

procedure TfrmCOBDetailsRet.cxDBImageComboBox21PropertiesChange(
  Sender: TObject);
begin
  inherited;
  if KYC1.ItemIndex = 0 then
  begin
    KYC11.Properties.ReadOnly := False;
    KYC12.Properties.ReadOnly := False;
    KYC11.Properties.AssignedValues.ReadOnly := False;
    KYC12.Properties.AssignedValues.ReadOnly := False;
  end
  else
  begin
    KYC11.Properties.ReadOnly := true;
    KYC12.Properties.ReadOnly := true;
    KYC11.Properties.AssignedValues.ReadOnly := true;
    KYC12.Properties.AssignedValues.ReadOnly := true;
  end;
end;

procedure TfrmCOBDetailsRet.EduBackgroundPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if EduBackground.ItemIndex = 0 then
    EB_Other.Visible := True else EB_Other.Visible := False;
end;

procedure TfrmCOBDetailsRet.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
    dsSubject.DataSet.FieldByName('CUST_TYPE').AsString := 'CR';

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
    GuarantorPanel.Visible    := True;
    GuarantorWorkInfo.Visible := True;
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
end;

procedure TfrmCOBDetailsRet.GuarantorCurrAddressClick(Sender: TObject);
begin
  inherited;
  if GuarantorCurrAddress.Checked then
    GuarantorCurrentAddress.Visible := True else GuarantorCurrentAddress.Visible := False;

end;

procedure TfrmCOBDetailsRet.Label11Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

procedure TfrmCOBDetailsRet.Label2Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabPaticular;
end;

procedure TfrmCOBDetailsRet.Label5Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBDetailsRet.Label8Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

procedure TfrmCOBDetailsRet.MaritalStatusPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if MaritalStatus.ItemIndex = 1 then
    SpouseName.Visible := True else SpouseName.Visible := False;
end;

procedure TfrmCOBDetailsRet.OwnershipStatusPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if OwnershipStatus.ItemIndex = 4 then
    OwnershipStatusOth.Visible := True else OwnershipStatusOth.Visible := False;
end;

procedure TfrmCOBDetailsRet.pnlParticularClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabPaticular;
end;

procedure TfrmCOBDetailsRet.pnlAddressClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBDetailsRet.pnlSourceOfFundClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

procedure TfrmCOBDetailsRet.pnlKnowYourCustClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

function TfrmCOBDetailsRet.SetColor(ATab: Boolean): TColor;
begin
  if ATab then Result := clMoneyGreen else Result := clBtnFace;
end;

procedure TfrmCOBDetailsRet.SOFWBIPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if SOFWBI.ItemIndex = 3 then
    OtherSourceOfFund.Visible := True else OtherSourceOfFund.Visible := False;
end;

procedure TfrmCOBDetailsRet.TabAddressShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := SetColor(FParticularTab);
  pnlAddress.Color      := clLime;
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlKnowYourCust.Color := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetailsRet.TabKnowYourCustShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := SetColor(FParticularTab);
  pnlAddress.Color      := SetColor(FAddressTab);
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlKnowYourCust.Color := clLime;
end;

procedure TfrmCOBDetailsRet.TabPaticularShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := clLime;
  pnlAddress.Color      := SetColor(FAddressTab);
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlKnowYourCust.Color := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetailsRet.TabSourceOfFundShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := SetColor(FParticularTab);
  pnlAddress.Color      := SetColor(FAddressTab);
  pnlSourceOfFund.Color := clLime;
  pnlKnowYourCust.Color := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetailsRet.TaxStatusPropertiesChange(Sender: TObject);
begin
  inherited;
  if TaxStatus.ItemIndex = 1 then
  begin
    GuarantorPanel.Visible    := True;
    GuarantorWorkInfo.Visible := True;
  end
  else
  begin
    GuarantorPanel.Visible    := False;
    GuarantorWorkInfo.Visible := False;
  end;
end;

procedure TfrmCOBDetailsRet.TypeOfResidentPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if TypeOfResident.ItemIndex = 3 then
    TypeOfResidentOth.Visible := True else TypeOfResidentOth.Visible := False;
end;

function TfrmCOBDetailsRet.ValidateFields(AFieldList,
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
