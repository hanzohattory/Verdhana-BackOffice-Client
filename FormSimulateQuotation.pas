unit FormSimulateQuotation;

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
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Datasnap.DBClient,
  NClientDataset;

type
  TfrmSimulateQuotation = class(TfrmEditor)
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    LayoutControlItem5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    LayoutControlItem6: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    LayoutControlItem7: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    LayoutControlItem8: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    LayoutControlItem9: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    LayoutControlItem10: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    dsDetailInstrumentBonds: TDataSource;
    cdsDetailInstrumentBonds: TNClientDataset;
    cdsDetailInstrumentBondsINSTRUMENT_ID: TLargeintField;
    cdsDetailInstrumentBondsINSTRUMENT_CODE: TStringField;
    cdsDetailInstrumentBondsSHORTNAME: TStringField;
    cdsDetailInstrumentBondsMATURITYDATE: TDateTimeField;
    cdsDetailInstrumentBondsCCY: TStringField;
    cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsCOUNTINGDAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsDAYSOFYEAR: TIntegerField;
    cdsDetailInstrumentBondsCOUPON_IN_YEAR: TIntegerField;
    cdsDetailInstrumentBondsMARKETCODE: TStringField;
    cdsDetailInstrumentBondsLASTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsNEXTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsINTERESTRATE: TFloatField;
    LayoutControlGroup4: TdxLayoutGroup;
    txtYTMBuy: TcxCurrencyEdit;
    LayoutControlItem15: TdxLayoutItem;
    LayoutControlGroup6: TdxLayoutGroup;
    txtYTMSell: TcxCurrencyEdit;
    LayoutControlItem16: TdxLayoutItem;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlGroup8: TdxLayoutGroup;
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure cxDBCurrencyEdit2Exit(Sender: TObject);
    procedure cxDBCurrencyEdit6Exit(Sender: TObject);
  private
    { Private declarations }
  public
    function GetYTM(APrice: Double): Double;
  end;

var
  frmSimulateQuotation: TfrmSimulateQuotation;

implementation

{$R *.dfm}

uses FormBondsQuotationList, DataLookup, DataGlobal;

{ TfrmSimulateQuotation }

procedure TfrmSimulateQuotation.cxDBCurrencyEdit2Exit(Sender: TObject);
begin
  inherited;
  txtYTMBuy.EditValue := GetYTM(dsSubject.DataSet.FieldByName('BID_PRICE').AsFloat);

end;

procedure TfrmSimulateQuotation.cxDBCurrencyEdit6Exit(Sender: TObject);
begin
  inherited;
  txtYTMSell.EditValue := GetYTM(dsSubject.DataSet.FieldByName('OFFER_PRICE').AsFloat);

end;

procedure TfrmSimulateQuotation.cxDBDateEdit1Exit(Sender: TObject);
begin
  inherited;
  txtYTMBuy.EditValue  := GetYTM(dsSubject.DataSet.FieldByName('BID_PRICE').AsFloat);
  txtYTMSell.EditValue := GetYTM(dsSubject.DataSet.FieldByName('OFFER_PRICE').AsFloat);
end;

function TfrmSimulateQuotation.GetYTM(APrice: Double): Double;
var
  dTransDate,
  dLastCouponDate,
  dNextCouponDate,
  dMaturityDate: TDateTime;
  iBasis, iCouponInYear : Integer;
  iCouponRate: Double;
begin
  Result := 0;
  try
    cdsDetailInstrumentBonds.Close;
    cdsDetailInstrumentBonds.Params[0].AsInteger  := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
    cdsDetailInstrumentBonds.Params[1].AsDateTime := dsSubject.DataSet.FieldByName('TRADE_DATE').AsDateTime;
    cdsDetailInstrumentBonds.Open;

    dLastCouponDate := cdsDetailInstrumentBondsLASTCOUPONDATE.AsDateTime;
    dNextCouponDate := cdsDetailInstrumentBondsNEXTCOUPONDATE.AsDateTime;
    dMaturityDate   := cdsDetailInstrumentBondsMATURITYDATE.AsDateTime;
    iBasis          := cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD.AsInteger;
    iCouponInYear   := cdsDetailInstrumentBondsCOUPON_IN_YEAR.AsInteger;
    iCouponRate     := cdsDetailInstrumentBondsINTERESTRATE.AsFloat;

    Result := dmGlobal.RemoteServer.GetYieldQuotation(dLastCouponDate, dNextCouponDate, dsSubject.DataSet.FieldByName('TRADE_DATE').AsDateTime, iBasis, iCouponInYear, dMaturityDate, iCouponRate, APrice);
  except

  end;
end;

end.
