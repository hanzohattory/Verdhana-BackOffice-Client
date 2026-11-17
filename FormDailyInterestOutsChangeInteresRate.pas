unit FormDailyInterestOutsChangeInteresRate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxLabel, cxDBLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmDailyInteresOutsChangeInterestRate = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnOk: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    btnCancel: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cdsChangeInterestRate: TNClientDataset;
    cdsChangeInterestRateAccountID: TIntegerField;
    cdsChangeInterestRateAccountCode: TStringField;
    cdsChangeInterestRateAccountName: TStringField;
    cdsChangeInterestRateAccountType: TStringField;
    cdsChangeInterestRateAccountTypeDesc: TStringField;
    cdsChangeInterestRateTransactionID: TLargeintField;
    cdsChangeInterestRateTransactionNo: TStringField;
    cdsChangeInterestRateTransType: TStringField;
    cdsChangeInterestRateTransTypeDesc: TStringField;
    cdsChangeInterestRateTransactionDate: TDateField;
    cdsChangeInterestRateDueDate: TDateField;
    cdsChangeInterestRateMaturityDate: TDateField;
    cdsChangeInterestRateOriginalAmount: TFloatField;
    cdsChangeInterestRateSettled_Amount: TFloatField;
    cdsChangeInterestRateUnsettle_Amount: TFloatField;
    cdsChangeInterestRateAccrruedInterest: TFloatField;
    cdsChangeInterestRatePrincipalizeInterest: TFloatField;
    cdsChangeInterestRateInterestDays: TIntegerField;
    cdsChangeInterestRateInterestRate: TFloatField;
    cdsChangeInterestRatePenaltyInterest: TFloatField;
    cdsChangeInterestRatePenaltyInterestDay: TIntegerField;
    cdsChangeInterestRateWaiveInterest: TFloatField;
    cdsChangeInterestRateAccrruedPenalty: TFloatField;
    cdsChangeInterestRatePrincipalizePenalty: TFloatField;
    cdsChangeInterestRatePenaltyDays: TIntegerField;
    cdsChangeInterestRatePenaltyRate: TFloatField;
    cdsChangeInterestRateWaivePenalty: TFloatField;
    dsChangeInterestRate: TDataSource;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem3: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutItem4: TdxLayoutItem;
    cdsChangeInterestRateaccount: TStringField;
    cxDBLabel3: TcxDBLabel;
    dxLayoutItem5: TdxLayoutItem;
    cxDBLabel4: TcxDBLabel;
    dxLayoutItem6: TdxLayoutItem;
    cxDBLabel5: TcxDBLabel;
    dxLayoutItem7: TdxLayoutItem;
    cxDBLabel6: TcxDBLabel;
    dxLayoutItem8: TdxLayoutItem;
    cxDBLabel7: TcxDBLabel;
    dxLayoutItem9: TdxLayoutItem;
    cxDBLabel8: TcxDBLabel;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edInterestCode: TcxLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    lbInterestCode: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    procedure btnOkClick(Sender: TObject);
    procedure edInterestCodePropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FInterestCode: string;
  public
    { Public declarations }
    property InterestCode: string read FInterestCode write FInterestCode;

    procedure LoadData(ACOAI: Integer);
  end;

var
  frmDailyInteresOutsChangeInterestRate: TfrmDailyInteresOutsChangeInterestRate;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmDailyInteresOutsChangeInterestRate.btnOkClick(Sender: TObject);
begin
  if MessageDlg('Change Interest Rate ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    FInterestCode := edInterestCode.EditValue;
    ModalResult   := mrOk;
  end;
end;

procedure TfrmDailyInteresOutsChangeInterestRate.edInterestCodePropertiesChange(
  Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInterest.Locate('INTERESTCODE', edInterestCode.EditValue, []) then
      lbInterestCode.Caption := cdsLuInterestINTERESTDESC.AsString +', Rate : '+ cdsLuInterestINTERESTRATE.AsString;
  end;
end;

procedure TfrmDailyInteresOutsChangeInterestRate.LoadData(ACOAI: Integer);
begin
  cdsChangeInterestRate.Close;
  cdsChangeInterestRate.Params[0].AsInteger := ACOAI;
  cdsChangeInterestRate.Open;
end;

end.
