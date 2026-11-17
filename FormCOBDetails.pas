unit FormCOBDetails;

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
  TfrmCOBDetails = class(TfrmEditor)
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
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    MatiralStatus: TcxDBImageComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBImageComboBox5: TcxDBImageComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTextEdit8: TcxDBTextEdit;
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
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBImageComboBox9: TcxDBImageComboBox;
    cxDBImageComboBox10: TcxDBImageComboBox;
    cxDBTextEdit33: TcxDBTextEdit;
    cxCheckBox1: TcxCheckBox;
    cxDBTextEdit77: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    guCityCode: TcxDBLookupComboBox;
    gucaCity: TcxDBLookupComboBox;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxCheckBox3: TcxCheckBox;
    cxDBTextEdit17: TcxDBTextEdit;
    Edu_Background: TcxDBImageComboBox;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit42: TcxDBTextEdit;
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
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    GuarantorPanel: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
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
    dxLayoutControl1Item32: TdxLayoutItem;
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
    dxLayoutControl1Item47: TdxLayoutItem;
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
    dxLayoutControl1Item55: TdxLayoutItem;
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
    cxCheckBox2: TcxCheckBox;
    cxDBImageComboBox13: TcxDBImageComboBox;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBImageComboBox14: TcxDBImageComboBox;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBTextEdit49: TcxDBTextEdit;
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
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Item11: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Item17: TdxLayoutItem;
    dxLayoutControl2Item18: TdxLayoutItem;
    dxLayoutControl2Item21: TdxLayoutItem;
    dxLayoutControl2Item22: TdxLayoutItem;
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
    cxDBImageComboBox17: TcxDBImageComboBox;
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
    cxDBTextEdit64: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit69: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit74: TcxDBTextEdit;
    cxDBTextEdit75: TcxDBTextEdit;
    cxDBTextEdit76: TcxDBTextEdit;
    cxDBImageComboBox21: TcxDBImageComboBox;
    cxDBTextEdit78: TcxDBTextEdit;
    cxDBImageComboBox22: TcxDBImageComboBox;
    cxDBImageComboBox23: TcxDBImageComboBox;
    cxDBImageComboBox24: TcxDBImageComboBox;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl4Item8: TdxLayoutItem;
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
  private
    { Private declarations }
    FParticularTab: Boolean;
    FAddressTab: Boolean;
    FFundSourceTab: Boolean;
    FKnownCustomerTab: Boolean;
    FAction: Integer;

    function SetColor(ATab: Boolean): TColor;
  public
    { Public declarations }
  end;

var
  frmCOBDetails: TfrmCOBDetails;

implementation

{$R *.dfm}

uses FormClientOnBoardingList, DataGlobal, DataLookup;

procedure TfrmCOBDetails.Label11Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

procedure TfrmCOBDetails.Label2Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabPaticular;
end;

procedure TfrmCOBDetails.Label5Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBDetails.Label8Click(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

procedure TfrmCOBDetails.pnlParticularClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabPaticular;
end;

procedure TfrmCOBDetails.pnlAddressClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabAddress;
end;

procedure TfrmCOBDetails.pnlSourceOfFundClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabSourceOfFund;
end;

procedure TfrmCOBDetails.pnlKnowYourCustClick(Sender: TObject);
begin
  inherited;
  OATabs.ActivePage := TabKnowYourCust;
end;

function TfrmCOBDetails.SetColor(ATab: Boolean): TColor;
begin
  if ATab then Result := clMoneyGreen else Result := clBtnFace;
end;

procedure TfrmCOBDetails.TabAddressShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := SetColor(FParticularTab);
  pnlAddress.Color      := clLime;
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlKnowYourCust.Color := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetails.TabKnowYourCustShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := SetColor(FParticularTab);
  pnlAddress.Color      := SetColor(FAddressTab);
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlKnowYourCust.Color := clLime;
end;

procedure TfrmCOBDetails.TabPaticularShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := clLime;
  pnlAddress.Color      := SetColor(FAddressTab);
  pnlSourceOfFund.Color := SetColor(FFundSourceTab);
  pnlKnowYourCust.Color := SetColor(FKnownCustomerTab);
end;

procedure TfrmCOBDetails.TabSourceOfFundShow(Sender: TObject);
begin
  inherited;
  pnlParticular.Color   := SetColor(FParticularTab);
  pnlAddress.Color      := SetColor(FAddressTab);
  pnlSourceOfFund.Color := clLime;
  pnlKnowYourCust.Color := SetColor(FKnownCustomerTab);
end;

end.
