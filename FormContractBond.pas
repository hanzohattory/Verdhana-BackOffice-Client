unit FormContractBond;

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
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmContractBond = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    pnlBuy: TPanel;
    dxLayoutControl4: TdxLayoutControl;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    txtBidPrice: TcxDBCurrencyEdit;
    txtBondsLimit: TcxCurrencyEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    txtCapGain: TcxDBCurrencyEdit;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group4: TdxLayoutGroup;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Group6: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl4Group10: TdxLayoutGroup;
    dxLayoutControl4Item5: TdxLayoutItem;
    dxLayoutControl4Item6: TdxLayoutItem;
    dxLayoutControl4Item7: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    pnlSell: TPanel;
    dxLayoutControl3: TdxLayoutControl;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    txtOfferPrice: TcxDBCurrencyEdit;
    txtCashLimit: TcxCurrencyEdit;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    cxDBCurrencyEdit18: TcxDBCurrencyEdit;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl4Group1: TdxLayoutGroup;
    dxLayoutControl4Group3: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContractBond: TfrmContractBond;

implementation

{$R *.dfm}

uses FormContractBonds, DataGlobal;

procedure TfrmContractBond.FormShow(Sender: TObject);
begin
  inherited;
  pnlBuy.Color  := clHighlight;
  pnlSell.Color := clRed;
end;

end.
