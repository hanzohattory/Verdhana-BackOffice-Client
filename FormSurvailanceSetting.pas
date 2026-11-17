unit FormSurvailanceSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, Vcl.Menus, cxContainer,
  cxEdit, cxCheckBox, cxTimeEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.StdCtrls, cxButtons, Data.DB, Datasnap.DBClient, NClientDataset;

type
  TfrmSurvailanceSetting = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edFDSAmendCount: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    edFRBigRelOrder: TcxSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    edFRRangeTime: TcxSpinEdit;
    dxLayoutItem5: TdxLayoutItem;
    edMTCStartTime: TcxTimeEdit;
    dxLayoutItem6: TdxLayoutItem;
    edMTCMinimalOrd: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    edMTCEndTime: TcxTimeEdit;
    dxLayoutItem8: TdxLayoutItem;
    edUMVTransCount: TcxSpinEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    chWSSID: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    chWSNPWP: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    chWSContactPerson: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    chWSHomeAddress: TcxCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    chWSOfficeAddress: TcxCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    chWSSpouse: TcxCheckBox;
    dxLayoutItem15: TdxLayoutItem;
    chWSBankAccount: TcxCheckBox;
    dxLayoutItem16: TdxLayoutItem;
    chWSEmail: TcxCheckBox;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cdsSurvailanceSetting: TNClientDataset;
    cdsSurvailanceSettingPRMID: TStringField;
    cdsSurvailanceSettingPRMNAME: TStringField;
    cdsSurvailanceSettingPRMTY: TStringField;
    cdsSurvailanceSettingAPPTYPE: TStringField;
    cdsSurvailanceSettingINTVAL: TIntegerField;
    cdsSurvailanceSettingFLOATVAL: TFloatField;
    cdsSurvailanceSettingSTRVAL: TStringField;
    cdsSurvailanceSettingDATEVAL: TDateTimeField;
    cdsSurvailanceSettingMODDA: TDateTimeField;
    cdsSurvailanceSettingMODUI: TStringField;
    cdsSurvailanceSettingINSDA: TDateTimeField;
    cdsSurvailanceSettingINSUI: TStringField;
    cdsSurvailanceSettingSHOW: TStringField;
    cdsSurvailanceSettingEDIT: TStringField;
    cdsSurvailanceSettingAPPDA: TDateTimeField;
    cdsSurvailanceSettingAPPUI: TStringField;
    cdsSurvailanceSettingUNDER4Y: TIntegerField;
    cdsSurvailanceSettingUNDER4YDA: TDateTimeField;
    cdsSurvailanceSettingNOTES4Y: TStringField;
    cdsSurvailanceSettingISDEL: TIntegerField;
    cdsSurvailanceSettingID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }

    procedure SaveSurvailanceSetting(AParamID: string; AEditValue: Variant);
  public
    { Public declarations }
  end;

var
  frmSurvailanceSetting: TfrmSurvailanceSetting;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSurvailanceSetting.cxButton1Click(Sender: TObject);
begin
  if MessageDlg('Save setting ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with dmGlobal do
    begin
      FakeDemandSupplyAmendSupply     := edFDSAmendCount.EditValue;
      FrontRunningBigReleaseQty       := edFRBigRelOrder.EditValue;
      FrontRunningRageTime            := edFRRangeTime.EditValue;
      MarkingTheCloseMinimalOrderQty  := edMTCMinimalOrd.EditValue;
      MarkingTheCloseStartTime        := VarToStr(edMTCStartTime.EditValue);
      MarkingTheCloseEndTime          := VarToStr(edMTCEndTime.EditValue);
      UnusualMarketVolTransCount      := edUMVTransCount.EditValue;
      WashsaleSID                     := chWSSID.EditValue;
      WashsaleNPWP                    := chWSNPWP.EditValue;
      WashsaleContactPerson           := chWSContactPerson.EditValue;
      WashsaleHomeAddress             := chWSHomeAddress.EditValue;
      WashsaleOfficeAddress           := chWSOfficeAddress.EditValue;
      WashsaleSpouse                  := chWSSpouse.EditValue;
      WashsaleBankAccount             := chWSBankAccount.EditValue;
      WashsaleEmail                   := chWSEmail.EditValue;

      SaveSurvailanceSetting('310', FakeDemandSupplyAmendSupply);
      SaveSurvailanceSetting('311', FrontRunningBigReleaseQty);
      SaveSurvailanceSetting('312', FrontRunningRageTime);
      SaveSurvailanceSetting('313', MarkingTheCloseMinimalOrderQty);
//      SaveSurvailanceSetting('314', MarkingTheCloseStartTime);
//      SaveSurvailanceSetting('315', MarkingTheCloseEndTime);
      SaveSurvailanceSetting('316', UnusualMarketVolTransCount);
      SaveSurvailanceSetting('317', WashsaleSID);
      SaveSurvailanceSetting('318', WashsaleNPWP);
      SaveSurvailanceSetting('319', WashsaleContactPerson);
      SaveSurvailanceSetting('320', WashsaleHomeAddress);
      SaveSurvailanceSetting('321', WashsaleOfficeAddress);
      SaveSurvailanceSetting('322', WashsaleSpouse);
      SaveSurvailanceSetting('323', WashsaleBankAccount);
      SaveSurvailanceSetting('324', WashsaleEmail);

      ModalResult := mrOk;
    end;
  end;
end;

procedure TfrmSurvailanceSetting.FormCreate(Sender: TObject);
begin
  with dmGlobal do
  begin
    edFDSAmendCount.EditValue   := FakeDemandSupplyAmendSupply;
    edFRBigRelOrder.EditValue   := FrontRunningBigReleaseQty;
    edFRRangeTime.EditValue     := FrontRunningRageTime;
    edMTCMinimalOrd.EditValue   := MarkingTheCloseMinimalOrderQty;
    edMTCStartTime.EditValue    := MarkingTheCloseStartTime;
    edMTCEndTime.EditValue      := MarkingTheCloseEndTime;
    edUMVTransCount.EditValue   := UnusualMarketVolTransCount;
    chWSSID.EditValue           := WashsaleSID;
    chWSNPWP.EditValue          := WashsaleNPWP;
    chWSContactPerson.EditValue := WashsaleContactPerson;
    chWSHomeAddress.EditValue   := WashsaleHomeAddress;
    chWSOfficeAddress.EditValue := WashsaleOfficeAddress;
    chWSSpouse.EditValue        := WashsaleSpouse;
    chWSBankAccount.EditValue   := WashsaleBankAccount;
    chWSEmail.EditValue         := WashsaleEmail;
  end;
end;

procedure TfrmSurvailanceSetting.SaveSurvailanceSetting(AParamID: string;
  AEditValue: Variant);
begin
  cdsSurvailanceSetting.Close;
  cdsSurvailanceSetting.Params[0].AsString := AParamID;
  cdsSurvailanceSetting.Open;

  if not cdsSurvailanceSetting.IsEmpty then
  begin
    cdsSurvailanceSetting.Edit;
    if cdsSurvailanceSettingPRMTY.AsString = 'I' then
      cdsSurvailanceSettingINTVAL.AsInteger := StrToInt(AEditValue)
    else if cdsSurvailanceSettingPRMTY.AsString = 'S' then
      cdsSurvailanceSettingSTRVAL.AsInteger := AEditValue
    else if cdsSurvailanceSettingPRMTY.AsString = 'F' then
      cdsSurvailanceSettingFLOATVAL.AsFloat := StrToFloat(AEditValue);
    cdsSurvailanceSetting.Post;

    cdsSurvailanceSetting.ApplyUpdates(-1);
  end;
end;

end.
