unit FormAccCreditLimit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxPCdxBarPopupMenu, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxDBEdit, cxGroupBox, cxRadioGroup, cxPC, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  cxImageComboBox, cxCurrencyEdit, dxLayoutLookAndFeels, cxClasses;

type
  TfrmAccCreditLimit = class(TfrmEditorData)
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
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
    cdsCrdConClassByParamCR_VAL: TFloatField;
    cdsCrdConClassByParamBUY_LIMIT: TFloatField;
    cdsCrdConClassByParamSELL_LIMIT: TFloatField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cdsAccCreditLimit: TNClientDataset;
    cdsAccCreditLimitACCID: TLargeintField;
    cdsAccCreditLimitCCCLS_ID: TLargeintField;
    cdsAccCreditLimitCCLSSNAME: TStringField;
    cdsAccCreditLimitCC_TYPE: TStringField;
    cdsAccCreditLimitTL_CASHVALUATE: TFloatField;
    cdsAccCreditLimitTL_STOCKVALUATE: TFloatField;
    cdsAccCreditLimitTLB_OVERLIMIT: TStringField;
    cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField;
    cdsAccCreditLimitTLB_OVERDUE: TStringField;
    cdsAccCreditLimitTLS_SHORTSELL: TStringField;
    cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLS_OVERDUE: TStringField;
    cdsAccCreditLimitRATIO_MRGCALL: TFloatField;
    cdsAccCreditLimitRATIO_MRGWARING: TFloatField;
    cdsAccCreditLimitRATIO_FORCESELL: TFloatField;
    cdsAccCreditLimitFORCESELL_DAY: TIntegerField;
    cdsAccCreditLimitCR_VAL: TFloatField;
    cdsAccCreditLimitBUY_LIMIT: TFloatField;
    cdsAccCreditLimitSELL_LIMIT: TFloatField;
    cdsAccCreditLimitCREDIT_LIMIT: TFloatField;
    cdsAccCreditLimitMODDA: TDateTimeField;
    cdsAccCreditLimitMODUI: TStringField;
    cdsAccCreditLimitAPPDA: TDateTimeField;
    cdsAccCreditLimitAPPUI: TStringField;
    cdsAccCreditLimitUNDER4Y: TIntegerField;
    cdsAccCreditLimitUNDER4YDA: TDateTimeField;
    cdsAccCreditLimitNOTES4Y: TStringField;
    cdsAccCreditLimitISDEL: TIntegerField;
    cdsAccCreditLimitID: TLargeintField;
    cdsAccCreditLimitBUYAPPROVEMETHODE: TIntegerField;
    cdsAccCreditLimitSELLAPPROVEMETHODE: TIntegerField;
    cdsAccCreditLimitMCALLDAY: TIntegerField;
    cdsAccCreditLimitEMAILID: TLargeintField;
    cdsAccCreditLimitSENDID: TLargeintField;
    cdsAccCreditLimitLASTSENDMAIL: TDateField;
    cdsAccCreditLimitSTATUS: TStringField;
    cdsAccCreditLimitLASTUPDATEMCALLALERT: TDateTimeField;
    cdsAccCreditLimitACCCODE: TStringField;
    cdsAccCreditLimitACCNAME: TStringField;
    procedure luCCTypePropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cdsAccCreditLimitNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ViewCorrectTab(Atype: String);
  end;

var
  frmAccCreditLimit: TfrmAccCreditLimit;

implementation

{$R *.dfm}

uses DataGlobal, FormAccCreditLimitList, DataLookup;

procedure TfrmAccCreditLimit.Button1Click(Sender: TObject);
begin
  inherited;
//  if not TClientDataset(dsSubject.DataSet).ReadOnly then
//  begin
//    cdsCrdConClassByParam.Close;
//    cdsCrdConClassByParam.Params[0].AsInteger := CreditLimitClass.EditValue;
//    cdsCrdConClassByParam.Open;
//
//    if not cdsCrdConClassByParam.IsEmpty then
//    begin
//      dsSubject.DataSet.FieldByName('CCLSSNAME').AsString := cdsCrdConClassByParamCCLSSNAME.AsString;
//      dsSubject.DataSet.FieldByName('CC_TYPE').AsString := cdsCrdConClassByParamCC_TYPE.AsString;
//      dsSubject.DataSet.FieldByName('RATIO_MRGCALL').Value := cdsCrdConClassByParamRATIO_MRGCALL.Value;
//      dsSubject.DataSet.FieldByName('RATIO_MRGWARING').Value := cdsCrdConClassByParamRATIO_MRGWARING.Value;
//      dsSubject.DataSet.FieldByName('RATIO_FORCESELL').Value := cdsCrdConClassByParamRATIO_FORCESELL.Value;
//      dsSubject.DataSet.FieldByName('FORCESELL_DAY').Value := cdsCrdConClassByParamFORCESELL_DAY.Value;
//      dsSubject.DataSet.FieldByName('TL_CASHVALUATE').Value := cdsCrdConClassByParamTL_CASHVALUATE.Value;
//      dsSubject.DataSet.FieldByName('TL_STOCKVALUATE').Value := cdsCrdConClassByParamTL_STOCKVALUATE.Value;
//      dsSubject.DataSet.FieldByName('CR_VAL').Value := cdsCrdConClassByParamCR_VAL.Value;
//      dsSubject.DataSet.FieldByName('BUY_LIMIT').Value := cdsCrdConClassByParamBUY_LIMIT.Value;
//      dsSubject.DataSet.FieldByName('SELL_LIMIT').Value := cdsCrdConClassByParamSELL_LIMIT.Value;
//      dsSubject.DataSet.FieldByName('TLB_OVERLIMIT').AsString := cdsCrdConClassByParamTLB_OVERLIMIT.AsString;
//      dsSubject.DataSet.FieldByName('TLB_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLB_NOTVALIDSTATUS.AsString;
//      dsSubject.DataSet.FieldByName('TLB_MRG_NONVALSTOCK').AsString := cdsCrdConClassByParamTLB_MRG_NONVALSTOCK.AsString;
//      dsSubject.DataSet.FieldByName('TLB_OVERDUE').AsString := cdsCrdConClassByParamTLB_OVERDUE.AsString;
//      dsSubject.DataSet.FieldByName('TLS_SHORTSELL').AsString := cdsCrdConClassByParamTLS_SHORTSELL.AsString;
//      dsSubject.DataSet.FieldByName('TLS_NOTVALIDSTATUS').AsString := cdsCrdConClassByParamTLS_NOTVALIDSTATUS.AsString;
//      dsSubject.DataSet.FieldByName('TLS_OVERDUE').AsString := cdsCrdConClassByParamTLS_OVERDUE.AsString;
//
//      ViewCorrectTab(dsSubject.DataSet.FieldByName('CC_TYPE').AsString);
//    end;
//  end;
end;

procedure TfrmAccCreditLimit.cdsAccCreditLimitNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccCreditLimitACCID.AsInteger := dmGlobal.AccountCreditLimit;
end;

procedure TfrmAccCreditLimit.FormShow(Sender: TObject);
begin
  inherited;
//  with TfrmAccCreditLimitList(BrowserForm) do
//  begin
//    if dsSubject.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_CASH then PC.ActivePage := ctCash
//    else if dsSubject.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_REG then PC.ActivePage := ctReg
//    else if dsSubject.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_RATIO then PC.ActivePage := ctRatio
//    else if dsSubject.DataSet.FieldByName('CC_TYPE').AsString = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
//    else PC.ActivePage := ctDefault;
//  end;
end;

procedure TfrmAccCreditLimit.luCCTypePropertiesCloseUp(Sender: TObject);
begin
  inherited;
//  ViewCorrectTab(VarToStr(luCCType.EditValue));
end;

procedure TfrmAccCreditLimit.ViewCorrectTab(Atype: String);
begin
//  if Atype = CCTYPE_CASH then PC.ActivePage := ctCash
//  else if Atype = CCTYPE_REG then PC.ActivePage := ctReg
//  else if Atype = CCTYPE_RATIO then PC.ActivePage := ctRatio
//  else if Atype = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
//  else PC.ActivePage := ctDefault;

end;

Initialization
  RegisterClass(TfrmAccCreditLimit);

end.
