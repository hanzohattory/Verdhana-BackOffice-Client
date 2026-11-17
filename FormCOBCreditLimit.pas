unit FormCOBCreditLimit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
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
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, Datasnap.DBClient, NClientDataset, cxPCdxBarPopupMenu,
  cxGroupBox, cxRadioGroup, cxPC;

const
  CCTYPE_CASH = 'CS';
  CCTYPE_REG = 'RV';
  CCTYPE_RATIO = 'TV';
  CCTYPE_APPRLIMIT = 'AL';

type
  TfrmCOBCreditLimit = class(TfrmEditor)
    AccID: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    CreditLimitClass: TcxDBLookupComboBox;
    LayoutControlItem3: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    cdsCrdConClassByParam: TNClientDataset;
    cdsCrdConClassByParamCCCLS_ID: TLargeintField;
    cdsCrdConClassByParamCCLSSNAME: TStringField;
    cdsCrdConClassByParamCC_TYPE: TStringField;
    cdsCrdConClassByParamTL_CASHVALUATE: TFloatField;
    cdsCrdConClassByParamTL_STOCKVALUATE: TFloatField;
    cdsCrdConClassByParamTLB_OVERLIMIT: TStringField;
    cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField;
    cdsCrdConClassByParamTLB_OVERDUE: TStringField;
    cdsCrdConClassByParamTLS_SHORTSELL: TStringField;
    cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLS_OVERDUE: TStringField;
    cdsCrdConClassByParamRATIO_MRGCALL: TFloatField;
    cdsCrdConClassByParamRATIO_MRGWARING: TFloatField;
    cdsCrdConClassByParamRATIO_FORCESELL: TFloatField;
    cdsCrdConClassByParamFORCESELL_DAY: TIntegerField;
    cmbType: TcxDBTextEdit;
    LayoutControlItem4: TdxLayoutItem;
    cdsCrdConClassByParamCR_VAL: TFloatField;
    cdsCrdConClassByParamBUY_LIMIT: TFloatField;
    cdsCrdConClassByParamSELL_LIMIT: TFloatField;
    dsAccCreditLimit: TDataSource;
    PC: TcxPageControl;
    ctDefault: TcxTabSheet;
    dxLayoutControl7: TdxLayoutControl;
    dxLayoutGroup4: TdxLayoutGroup;
    ctCash: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup6: TcxDBRadioGroup;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxDBRadioGroup9: TcxDBRadioGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    x: TdxLayoutGroup;
    LayoutControlItem23: TdxLayoutItem;
    LayoutControlItem24: TdxLayoutItem;
    LayoutControlItem7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlItem27: TdxLayoutItem;
    LayoutControlItem12: TdxLayoutItem;
    LayoutControlItem18: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    ctReg: TcxTabSheet;
    dxLayoutControl4: TdxLayoutControl;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup11: TcxDBRadioGroup;
    cxDBRadioGroup13: TcxDBRadioGroup;
    cxDBRadioGroup14: TcxDBRadioGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    LayoutControlItem13: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl4Item2: TdxLayoutItem;
    ctRatio: TcxTabSheet;
    dxLayoutControl5: TdxLayoutControl;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBRadioGroup10: TcxDBRadioGroup;
    cxDBRadioGroup12: TcxDBRadioGroup;
    cxDBRadioGroup15: TcxDBRadioGroup;
    cxDBRadioGroup16: TcxDBRadioGroup;
    cxDBRadioGroup17: TcxDBRadioGroup;
    cxDBRadioGroup18: TcxDBRadioGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutControl5Item2: TdxLayoutItem;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutControl5Group4: TdxLayoutGroup;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutControl5Group5: TdxLayoutGroup;
    dxLayoutControl5Group6: TdxLayoutGroup;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Group8: TdxLayoutGroup;
    dxLayoutControl5Group9: TdxLayoutGroup;
    dxLayoutControl5Group7: TdxLayoutGroup;
    dxLayoutControl5Item5: TdxLayoutItem;
    ctApprLimit: TcxTabSheet;
    dxLayoutControl6: TdxLayoutControl;
    cxDBRadioGroup19: TcxDBRadioGroup;
    cxDBRadioGroup20: TcxDBRadioGroup;
    cxDBRadioGroup21: TcxDBRadioGroup;
    cxDBRadioGroup22: TcxDBRadioGroup;
    cxDBRadioGroup23: TcxDBRadioGroup;
    cxDBRadioGroup24: TcxDBRadioGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutControl6Item2: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    procedure CreditLimitClassPropertiesCloseUp(Sender: TObject);
    procedure cmbTypePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FUpdate: Boolean;
  public
    { Public declarations }
    procedure prepareData(AUpdate: Boolean);
    procedure ViewCorrectTab(Atype: String);
  end;

var
  frmCOBCreditLimit: TfrmCOBCreditLimit;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal;

procedure TfrmCOBCreditLimit.cmbTypePropertiesChange(Sender: TObject);
begin
  inherited;
  ViewCorrectTab(VarToStr(cmbType.EditValue));
end;

procedure TfrmCOBCreditLimit.CreditLimitClassPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if (CreditLimitClass.EditValue <> Null) and (FUpdate) then
  begin

    cdsCrdConClassByParam.Close;
    cdsCrdConClassByParam.Params[0].AsInteger := CreditLimitClass.EditValue;
    cdsCrdConClassByParam.Open;

    dsAccCreditLimit.DataSet.FieldByName('CCLSSNAME').AsString := cdsCrdConClassByParamCCLSSNAME.AsString;
    dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString := cdsCrdConClassByParamCC_TYPE.AsString;
    dsAccCreditLimit.DataSet.FieldByName('RATIO_MRGCALL').Value := cdsCrdConClassByParamRATIO_MRGCALL.Value;
    dsAccCreditLimit.DataSet.FieldByName('RATIO_MRGWARING').Value := cdsCrdConClassByParamRATIO_MRGWARING.Value;
    dsAccCreditLimit.DataSet.FieldByName('RATIO_FORCESELL').Value := cdsCrdConClassByParamRATIO_FORCESELL.Value;
    dsAccCreditLimit.DataSet.FieldByName('FORCESELL_DAY').Value := cdsCrdConClassByParamFORCESELL_DAY.Value;
    dsAccCreditLimit.DataSet.FieldByName('TL_CASHVALUATE').Value := cdsCrdConClassByParamTL_CASHVALUATE.Value;
    dsAccCreditLimit.DataSet.FieldByName('TL_STOCKVALUATE').Value := cdsCrdConClassByParamTL_STOCKVALUATE.Value;
    dsAccCreditLimit.DataSet.FieldByName('CR_VAL').Value := cdsCrdConClassByParamCR_VAL.Value;
    dsAccCreditLimit.DataSet.FieldByName('BUY_LIMIT').Value := cdsCrdConClassByParamBUY_LIMIT.Value;
    dsAccCreditLimit.DataSet.FieldByName('SELL_LIMIT').Value := cdsCrdConClassByParamSELL_LIMIT.Value;
    dsAccCreditLimit.DataSet.FieldByName('TLB_OVERLIMIT').AsString := cdsCrdConClassByParamTLB_OVERLIMIT.AsString;
    dsAccCreditLimit.DataSet.FieldByName('TLB_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLB_NOTVALIDSTATUS.AsString;
    dsAccCreditLimit.DataSet.FieldByName('TLB_MRG_NONVALSTOCK').AsString := cdsCrdConClassByParamTLB_MRG_NONVALSTOCK.AsString;
    dsAccCreditLimit.DataSet.FieldByName('TLB_OVERDUE').AsString := cdsCrdConClassByParamTLB_OVERDUE.AsString;
    dsAccCreditLimit.DataSet.FieldByName('TLS_SHORTSELL').AsString := cdsCrdConClassByParamTLS_SHORTSELL.AsString;
    dsAccCreditLimit.DataSet.FieldByName('TLS_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLS_NOTVALIDSTATUS.AsString;
    dsAccCreditLimit.DataSet.FieldByName('TLS_OVERDUE').AsString := cdsCrdConClassByParamTLS_OVERDUE.AsString;

    ViewCorrectTab(VarToStr(dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString));
  end;

end;

procedure TfrmCOBCreditLimit.FormCreate(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookUp.cdsLuCrdConClass.Close;
  dmGlobal.IntDataLookUp.cdsLuCrdConClass.Open;
end;

procedure TfrmCOBCreditLimit.FormShow(Sender: TObject);
begin
  inherited;
  if dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_CASH then PC.ActivePage := ctCash
  else if dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_REG then PC.ActivePage := ctReg
  else if dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_RATIO then PC.ActivePage := ctRatio
  else if dsAccCreditLimit.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
  else PC.ActivePage := ctDefault;
end;

procedure TfrmCOBCreditLimit.prepareData(AUpdate: Boolean);
var
  i: Integer;
begin
  FUpdate := AUpdate;
  dsSubject.AutoEdit := AUpdate;
  dsAccCreditLimit.AutoEdit := AUpdate;

  for i:=0 to ComponentCount-1 do
  begin
    if Components[i].Tag <> -1 then
    begin
      if (Components[i] is TcxDBLookupComboBox) then
      begin
        TcxDBLookupComboBox(Components[i]).DataBinding.Field.ReadOnly := not AUpdate;
      end
      else if (Components[i] is TcxDBTextEdit) then
      begin
        TcxDBTextEdit(Components[i]).DataBinding.Field.ReadOnly := not AUpdate;
      end
      else if (Components[i] is TcxTextEdit) then
      begin
        TcxTextEdit(Components[i]).Properties.ReadOnly := not AUpdate;
      end
    end;
  end;

  LockWindow(Self);

end;

procedure TfrmCOBCreditLimit.ViewCorrectTab(Atype: String);
begin
  if Atype = CCTYPE_CASH then PC.ActivePage := ctCash
  else if Atype = CCTYPE_REG then PC.ActivePage := ctReg
  else if Atype = CCTYPE_RATIO then PC.ActivePage := ctRatio
  else if Atype = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
  else PC.ActivePage := ctDefault;

end;

end.
