unit FormBondsQuotation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar,
  cxDBEdit, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxCurrencyEdit, Datasnap.DBClient, NClientDataset,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmBondsQuotation = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cdsBondListByInstrumentID: TNClientDataset;
    cdsBondListByInstrumentIDINSTRUMENT_ID: TLargeintField;
    cdsBondListByInstrumentIDINSTRUMENT_CODE: TStringField;
    cdsBondListByInstrumentIDLOCALCODE: TStringField;
    cdsBondListByInstrumentIDMARKETCODE: TStringField;
    cdsBondListByInstrumentIDINSTRUMENT_TYPE_CODE: TStringField;
    cdsBondListByInstrumentIDSHORTNAME: TStringField;
    cdsBondListByInstrumentIDLONGNAME: TStringField;
    cdsBondListByInstrumentIDISSUERNAME: TStringField;
    cdsBondListByInstrumentIDCCY: TStringField;
    cdsBondListByInstrumentIDISINCODE: TStringField;
    cdsBondListByInstrumentIDISINDATE: TDateTimeField;
    cdsBondListByInstrumentIDMARGIN: TIntegerField;
    cdsBondListByInstrumentIDSTATUS: TStringField;
    cdsBondListByInstrumentIDDELISTINGDATE: TDateTimeField;
    cdsBondListByInstrumentIDLISTINGDATE: TDateTimeField;
    cdsBondListByInstrumentIDLASTCLSPRICE: TFloatField;
    cdsBondListByInstrumentIDLASTCPPRICEDATE: TDateField;
    cdsBondListByInstrumentIDSECTOR: TStringField;
    cdsBondListByInstrumentIDMODDA: TDateTimeField;
    cdsBondListByInstrumentIDMODUI: TStringField;
    cdsBondListByInstrumentIDAPPDA: TDateTimeField;
    cdsBondListByInstrumentIDAPPUI: TStringField;
    cdsBondListByInstrumentIDISDEL: TIntegerField;
    cdsBondListByInstrumentIDID: TLargeintField;
    cdsBondListByInstrumentIDCATEGORY: TStringField;
    cdsBondListByInstrumentIDMATURITYDATE: TDateTimeField;
    cdsBondListByInstrumentIDRATING: TStringField;
    cdsBondListByInstrumentIDREMARKS: TStringField;
    cdsBondListByInstrumentIDEFFECTIVEDATE: TDateTimeField;
    cdsBondListByInstrumentIDOFFERING_PERIODBEG: TDateTimeField;
    cdsBondListByInstrumentIDOFFERING_PERIODEND: TDateTimeField;
    cdsBondListByInstrumentIDISSUEDATE: TDateTimeField;
    cdsBondListByInstrumentIDNO_OFCERTIFICATES: TStringField;
    cdsBondListByInstrumentIDLEAD_UNDERWRITER: TStringField;
    cdsBondListByInstrumentIDSELLING_AGENT: TStringField;
    cdsBondListByInstrumentIDTRUSTEE: TStringField;
    cdsBondListByInstrumentIDCALCULATE_DAYS_METHOD: TIntegerField;
    cdsBondListByInstrumentIDCOUPON_IN_YEAR: TIntegerField;
    cdsBondListByInstrumentIDCOMMONCODE: TStringField;
    cdsBondListByInstrumentIDDAYSOFYEAR: TIntegerField;
    cdsBondListByInstrumentIDREGIONALBONDS: TIntegerField;
    cdsBondListByInstrumentIDCOUNTINGDAYS_METHOD: TIntegerField;
    cdsBondListByInstrumentIDACCRUEDDAYS_METHOD: TIntegerField;
    cdsBondListByInstrumentIDDAYSPERYEAR_METHOD: TIntegerField;
    cdsBondListByInstrumentIDACCRUEDTYPE: TStringField;
    cdsBondListByInstrumentIDDECDIGIT: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxDBCurrencyEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBondsQuotation: TfrmBondsQuotation;

implementation

{$R *.dfm}

uses DataGlobal, FormBondsQuotationList, DataLookup;

procedure TfrmBondsQuotation.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    dsSubject.DataSet.FieldByName('BOTTOM_BID_PRICE').AsFloat := dsSubject.DataSet.FieldByName('BID_PRICE').AsFloat + dmGlobal.BottomBid;
    dsSubject.DataSet.FieldByName('TOP_BID_PRICE').AsFloat    := dsSubject.DataSet.FieldByName('BID_PRICE').AsFloat + dmGlobal.TopBid;
  end;
end;

procedure TfrmBondsQuotation.cxDBCurrencyEdit4Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    dsSubject.DataSet.FieldByName('BOTTOM_OFFER_PRICE').AsFloat := dsSubject.DataSet.FieldByName('OFFER_PRICE').AsFloat + dmGlobal.BottomOffer;
    dsSubject.DataSet.FieldByName('TOP_OFFER_PRICE').AsFloat    := dsSubject.DataSet.FieldByName('OFFER_PRICE').AsFloat + dmGlobal.TopOffer;
  end;
end;

procedure TfrmBondsQuotation.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    cdsBondListByInstrumentID.Close;
    cdsBondListByInstrumentID.Params[0].AsInteger := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
    cdsBondListByInstrumentID.Open;

    dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString := cdsBondListByInstrumentIDINSTRUMENT_CODE.AsString;
    dsSubject.DataSet.FieldByName('SHORTNAME').AsString       := cdsBondListByInstrumentIDSHORTNAME.AsString;
  end;
end;

procedure TfrmBondsQuotation.FormShow(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.luInstrumentBondsOn(dmGlobal.RemoteServer.GetTransDate);

  if dsSubject.State in [dsInsert] then
    dsSubject.DataSet.FieldByName('TRADE_DATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

end.
