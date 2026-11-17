unit FormCTPReffUpdate;

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
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls, Data.DB, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmCTPReffUpdate = class(TfrmEditor)
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    LayoutControlGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    LayoutControlGroup4: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlGroup5: TdxLayoutGroup;
    txtCTPReff: TcxDBTextEdit;
    LayoutControlItem7: TdxLayoutItem;
    LayoutControlGroup9: TdxLayoutGroup;
    LayoutControlGroup11: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCTPReffUpdate: TfrmCTPReffUpdate;

implementation

{$R *.dfm}

uses FormContractBonds, DataLookup;

procedure TfrmCTPReffUpdate.FormShow(Sender: TObject);
begin
  inherited;

  txtCTPReff.SetFocus;
end;

end.
