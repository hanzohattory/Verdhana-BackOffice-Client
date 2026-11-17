unit FormCOBTradeSettingParam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxDBEdit, cxCheckBox, cxLabel, cxDBLabel, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmCOBTradeSettingParam = class(TfrmEditor)
    cxDBLabel1: TcxDBLabel;
    LayoutControlItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    LayoutControlItem3: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    txtCustRegNo: TcxLabel;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    LayoutControlItem4: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    LayoutControlItem5: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    LayoutControlItem6: TdxLayoutItem;
    LayoutControlGroup3: TdxLayoutGroup;
    cxDBCheckBox4: TcxDBCheckBox;
    LayoutControlItem7: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    LayoutControlItem8: TdxLayoutItem;
    chkConfMode: TcxDBCheckBox;
    LayoutControlItem9: TdxLayoutItem;
    ConfMode: TcxDBImageComboBox;
    LayoutControlItem10: TdxLayoutItem;
    LayoutControlGroup4: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    LayoutControlItem11: TdxLayoutItem;
    chkConfSystem: TcxDBCheckBox;
    LayoutControlItem12: TdxLayoutItem;
    ConfSystem: TcxDBLookupComboBox;
    LayoutControlItem13: TdxLayoutItem;
    LayoutControlGroup5: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure chkConfModeClick(Sender: TObject);
    procedure chkConfSystemClick(Sender: TObject);
  private
    FCustRegNo: string;
    FAction: Integer;
    { Private declarations }
  public
    property CustRegNo: string read FCustRegNo write FCustRegNo;
    property Action: Integer read FAction write FAction;
  end;

var
  frmCOBTradeSettingParam: TfrmCOBTradeSettingParam;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormClientOnBoardingList;

procedure TfrmCOBTradeSettingParam.chkConfModeClick(Sender: TObject);
begin
  inherited;
  if chkConfMode.Checked then
    ConfMode.Enabled := True else ConfMode.Enabled := False;
end;

procedure TfrmCOBTradeSettingParam.chkConfSystemClick(Sender: TObject);
begin
  inherited;
  if chkConfSystem.Checked then
    ConfSystem.Enabled := True else ConfSystem.Enabled := False;
end;

procedure TfrmCOBTradeSettingParam.FormShow(Sender: TObject);
begin
  inherited;
  txtCustRegNo.Caption := CustRegNo;

  if chkConfSystem.Checked then
    ConfSystem.Enabled := True else ConfSystem.Enabled := False;

  if chkConfMode.Checked then
    ConfMode.Enabled := True else ConfMode.Enabled := False;

  if FAction = 1 then
  begin
    btnOk.Caption     := 'Done';
    btnCancel.Caption := 'Not Complete';

    dsSubject.DataSet.DisableControls;
  end
  else
  begin
    btnOk.Caption     := 'Ok';
    btnCancel.Caption := 'Cancel';

    dsSubject.DataSet.EnableControls;
  end
end;

end.
