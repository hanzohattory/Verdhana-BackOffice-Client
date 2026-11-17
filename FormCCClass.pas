unit FormCCClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
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
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  cxPCdxBarPopupMenu, cxGroupBox, cxRadioGroup, cxDBEdit, cxPC, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset;

type
  TfrmCCClass = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    luCCType: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    PC: TcxPageControl;
    ctDefault: TcxTabSheet;
    ctCash: TcxTabSheet;
    ctReg: TcxTabSheet;
    ctRatio: TcxTabSheet;
    ctApprLimit: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup6: TcxDBRadioGroup;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxDBRadioGroup9: TcxDBRadioGroup;
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
    dxLayoutControl4: TdxLayoutControl;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup11: TcxDBRadioGroup;
    cxDBRadioGroup13: TcxDBRadioGroup;
    cxDBRadioGroup14: TcxDBRadioGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    LayoutControlItem13: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBRadioGroup10: TcxDBRadioGroup;
    cxDBRadioGroup12: TcxDBRadioGroup;
    cxDBRadioGroup15: TcxDBRadioGroup;
    cxDBRadioGroup16: TcxDBRadioGroup;
    cxDBRadioGroup17: TcxDBRadioGroup;
    cxDBRadioGroup18: TcxDBRadioGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl5Item1: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutControl5Group4: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutGroup;
    dxLayoutControl5Group5: TdxLayoutGroup;
    dxLayoutControl5Group6: TdxLayoutGroup;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Group8: TdxLayoutGroup;
    dxLayoutControl5Group9: TdxLayoutGroup;
    dxLayoutControl5Group7: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    cxDBRadioGroup19: TcxDBRadioGroup;
    cxDBRadioGroup20: TcxDBRadioGroup;
    cxDBRadioGroup21: TcxDBRadioGroup;
    cxDBRadioGroup22: TcxDBRadioGroup;
    cxDBRadioGroup23: TcxDBRadioGroup;
    cxDBRadioGroup24: TcxDBRadioGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutControl7Group_Root: TdxLayoutGroup;
    dxLayoutControl7: TdxLayoutControl;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl6Item1: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl6Item2: TdxLayoutItem;
    dxLayoutControl6Group1: TdxLayoutGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl5Item5: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    cdsCCClass: TNClientDataset;
    cdsCCClassCCCLS_ID: TLargeintField;
    cdsCCClassCCLSSNAME: TStringField;
    cdsCCClassCC_TYPE: TStringField;
    cdsCCClassTL_CASHVALUATE: TFloatField;
    cdsCCClassTL_STOCKVALUATE: TFloatField;
    cdsCCClassTLB_OVERLIMIT: TStringField;
    cdsCCClassTLB_NOTVALIDSTATUS: TStringField;
    cdsCCClassTLB_MRG_NONVALSTOCK: TStringField;
    cdsCCClassTLB_OVERDUE: TStringField;
    cdsCCClassTLS_SHORTSELL: TStringField;
    cdsCCClassTLS_NOTVALIDSTATUS: TStringField;
    cdsCCClassTLS_OVERDUE: TStringField;
    cdsCCClassRATIO_MRGCALL: TFloatField;
    cdsCCClassRATIO_MRGWARING: TFloatField;
    cdsCCClassRATIO_FORCESELL: TFloatField;
    cdsCCClassFORCESELL_DAY: TIntegerField;
    cdsCCClassMODDA: TDateTimeField;
    cdsCCClassMODUI: TStringField;
    cdsCCClassAPPDA: TDateTimeField;
    cdsCCClassAPPUI: TStringField;
    cdsCCClassUNDER4Y: TIntegerField;
    cdsCCClassUNDER4YDA: TDateTimeField;
    cdsCCClassNOTES4Y: TStringField;
    cdsCCClassISDEL: TIntegerField;
    cdsCCClassID: TLargeintField;
    cdsCCClassCR_VAL: TFloatField;
    cdsCCClassBUY_LIMIT: TFloatField;
    cdsCCClassSELL_LIMIT: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure luCCTypePropertiesCloseUp(Sender: TObject);
    procedure cdsCCClassNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ViewCorrectTab(Atype: String);
  end;

var
  frmCCClass: TfrmCCClass;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormCCClassList;

procedure TfrmCCClass.cdsCCClassNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCCClassCCCLS_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CRDCONCLASS');
end;

procedure TfrmCCClass.FormShow(Sender: TObject);
begin
  inherited;
  with TfrmCCClassList(BrowserForm) do
  begin
    if cdsCCClassCC_TYPE.AsString = CCTYPE_CASH then PC.ActivePage := ctCash
    else if cdsCCClassCC_TYPE.AsString = CCTYPE_REG then PC.ActivePage := ctReg
    else if cdsCCClassCC_TYPE.AsString = CCTYPE_RATIO then PC.ActivePage := ctRatio
    else if cdsCCClassCC_TYPE.AsString = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
    else PC.ActivePage := ctDefault;
  end;
end;

procedure TfrmCCClass.luCCTypePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  ViewCorrectTab(luCCType.EditValue);
end;

procedure TfrmCCClass.ViewCorrectTab(Atype: String);
begin
  if Atype = CCTYPE_CASH then PC.ActivePage := ctCash
  else if Atype = CCTYPE_REG then PC.ActivePage := ctReg
  else if Atype = CCTYPE_RATIO then PC.ActivePage := ctRatio
  else if Atype = CCTYPE_APPRLIMIT then PC.ActivePage := ctApprLimit
  else PC.ActivePage := ctDefault;

end;

Initialization
  RegisterClass(TfrmCCClass);

end.
