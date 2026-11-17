unit FormCOBOrderValidation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBLabel, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxCheckBox, cxTextEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmOrderValidation = class(TfrmEditor)
    cxLabel1: TcxLabel;
    LayoutControlItem1: TdxLayoutItem;
    txtCustRegNo: TcxLabel;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    luBuyValidationModel: TcxDBImageComboBox;
    cxDBRadioGroup3: TcxDBRadioGroup;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup5: TcxDBRadioGroup;
    luSellValidationModel: TcxDBImageComboBox;
    cxDBRadioGroup6: TcxDBRadioGroup;
    cxDBRadioGroup7: TcxDBRadioGroup;
    cxDBRadioGroup8: TcxDBRadioGroup;
    cxDBRadioGroup9: TcxDBRadioGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    LayoutControlGroup12: TdxLayoutGroup;
    LayoutControlGroup6: TdxLayoutGroup;
    LayoutControlGroup10: TdxLayoutGroup;
    LayoutControlItem14: TdxLayoutItem;
    LayoutControlItem22: TdxLayoutItem;
    LayoutControlGroup9: TdxLayoutGroup;
    LayoutControlItem13: TdxLayoutItem;
    LayoutControlItem20: TdxLayoutItem;
    LayoutControlItem23: TdxLayoutItem;
    LayoutControlItem24: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    LayoutControlItem11: TdxLayoutItem;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlGroup15: TdxLayoutGroup;
    LayoutControlItem15: TdxLayoutItem;
    LayoutControlItem26: TdxLayoutItem;
    LayoutControlItem27: TdxLayoutItem;
    LayoutControlItem28: TdxLayoutItem;
    LayoutControlItem12: TdxLayoutItem;
    LayoutControlItem18: TdxLayoutItem;
    dsAccLimit: TDataSource;
    cxDBLabel1: TcxDBLabel;
    LayoutControlItem4: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCustRegNo: string;
    FAction: Integer;
    FName: string;
  public
    { Public declarations }
    property CustRegNo: string read FCustRegNo write FCustRegNo;
    property Name: string read FName write FName;
    property Action: Integer read FAction write FAction;
  end;

var
  frmOrderValidation: TfrmOrderValidation;

implementation

{$R *.dfm}

uses DataGlobal, FormCOBList;

procedure TfrmOrderValidation.FormShow(Sender: TObject);
begin
  inherited;
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
  end;
  txtCustRegNo.Caption := FCustRegNo;
end;

end.
