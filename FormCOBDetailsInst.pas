unit FormCOBDetailsInst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Vcl.ExtCtrls, dxLayoutcxEditAdapters, cxPCdxBarPopupMenu, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxDBLookupComboBox, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxMemo, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxImageComboBox, cxPC, dxBarBuiltInMenu;

type
  TfrmCOBDetailsInst = class(TfrmEditor)
    pnlClientData: TPanel;
    Label2: TLabel;
    pnlBOD: TPanel;
    Label5: TLabel;
    pnlSourceOfFund: TPanel;
    Label8: TLabel;
    pnlInformation: TPanel;
    Label11: TLabel;
    LayoutControlItem1: TdxLayoutItem;
    OATabs: TcxPageControl;
    TabParticular: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
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
    LineOfBusinessChk: TcxDBImageComboBox;
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
    cxDBImageComboBox15: TcxDBImageComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
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
    dxLayoutControl1Item20: TdxLayoutItem;
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
    dxLayoutControl1Item37: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
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
    dxLayoutControl3: TdxLayoutControl;
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
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
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
    TabKnowYourCust: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
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
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
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
    dxLayoutGroup6: TdxLayoutGroup;
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
    dsCOBBOD: TDataSource;
    dsCOBBankAcc: TDataSource;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBMaskEdit1: TcxDBMaskEdit;
    TaxPayerRegNo: TdxLayoutItem;
    procedure pnlClientDataClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure pnlBODClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure pnlSourceOfFundClick(Sender: TObject);
    procedure pnlInformationClick(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure TabParticularShow(Sender: TObject);
    procedure TabAddressShow(Sender: TObject);
    procedure TabKnowYourCustShow(Sender: TObject);
    procedure TabSourceOfFundShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TaxpayerChkPropertiesChange(Sender: TObject);
    procedure FormOfBusinessChkPropertiesChange(Sender: TObject);
    procedure CompanyCharateristicChkPropertiesChange(Sender: TObject);
    procedure LineOfBusinessChkPropertiesChange(Sender: TObject);
  private
    FParticularTab: Boolean;
    FAddressTab: Boolean;
    FFundSourceTab: Boolean;
    FKnownCustomerTab: Boolean;
    FAction: Integer;

    function SetColor(ATab: Boolean): TColor;
    function ValidateFields(AFieldList: Variant; AFieldNames: Variant): Boolean;
    function CheckMandatoryFields: Boolean;
  public
    { Public declarations }
  end;

var
  frmCOBDetailsInst: TfrmCOBDetailsInst;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormClientOnBoardingList;

function TfrmCOBDetailsInst.CheckMandatoryFields: Boolean;
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

procedure TfrmCOBDetailsInst.CompanyCharateristicChkPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if CompanyCharateristicChk.ItemIndex = 7 then
    txtLayoutChar.Visible := True
  else
    txtLayoutChar.Visible := False;
end;

procedure TfrmCOBDetailsInst.FormOfBusinessChkPropertiesChange(Sender: TObject);
begin
  inherited;
  if FormOfBusinessChk.ItemIndex = 6 then
    txtFormOfBusinessOther.Visible := True
  else
    txtFormOfBusinessOther.Visible := False;
end;

procedure TfrmCOBDetailsInst.FormShow(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
    dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 2;

  if dsSubject.DataSet.FieldByName('TAX_REG_CHK').AsInteger = 1 then
    TaxPayerRegNo.Visible := True;

  if dsSubject.DataSet.FieldByName('BUSINESS_ENTITY_CHK').AsInteger = 7 then
    txtFormOfBusinessOther.Visible := True;

  if dsSubject.DataSet.FieldByName('BUSINESS_LINE_CHK').AsInteger = 13 then
    txtLineOfBusiness.Visible := True;

  if dsSubject.DataSet.FieldByName('COMPANY_CHARACTER_CHK').AsInteger = 8 then
    txtLayoutChar.Visible := True;
end;

procedure TfrmCOBDetailsInst.Label11Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

procedure TfrmCOBDetailsInst.Label2Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabParticular;
end;

procedure TfrmCOBDetailsInst.Label5Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBDetailsInst.Label8Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

procedure TfrmCOBDetailsInst.LineOfBusinessChkPropertiesChange(Sender: TObject);
begin
  inherited;
  if LineOfBusinessChk.ItemIndex = 12 then
    txtLineOfBusiness.Visible := True
  else
    txtLineOfBusiness.Visible := False;
end;

procedure TfrmCOBDetailsInst.pnlClientDataClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabParticular;
end;

procedure TfrmCOBDetailsInst.pnlBODClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBDetailsInst.pnlSourceOfFundClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

procedure TfrmCOBDetailsInst.pnlInformationClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

function TfrmCOBDetailsInst.SetColor(ATab: Boolean): TColor;
begin
  if ATab then Result := clMoneyGreen else Result := clBtnFace;
end;

procedure TfrmCOBDetailsInst.TabAddressShow(Sender: TObject);
begin
  inherited;
  pnlClientData.Color   := SetColor(FParticularTab);
  pnlBOD.Color          := clLime;
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlInformation.Color  := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetailsInst.TabKnowYourCustShow(Sender: TObject);
begin
  inherited;
  pnlClientData.Color   := SetColor(FParticularTab);
  pnlBOD.Color          := SetColor(FAddressTab);
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlInformation.Color  := clLime;
end;

procedure TfrmCOBDetailsInst.TabParticularShow(Sender: TObject);
begin
  inherited;
  pnlClientData.Color   := clLime;
  pnlBOD.Color          := SetColor(FAddressTab);
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlInformation.Color  := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetailsInst.TabSourceOfFundShow(Sender: TObject);
begin
  inherited;
  pnlClientData.Color   := SetColor(FParticularTab);
  pnlBOD.Color          := SetColor(FAddressTab);
  pnlSourceOfFund.Color := clLime;
  pnlInformation.Color  := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetailsInst.TaxpayerChkPropertiesChange(Sender: TObject);
begin
  inherited;
  if TaxpayerChk.ItemIndex = 0 then
    TaxPayerRegNo.Visible := True
  else
    TaxPayerRegNo.Visible := False;
end;

function TfrmCOBDetailsInst.ValidateFields(AFieldList,
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

