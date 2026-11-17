unit FormInstrumentBond;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxDBEdit, cxTextEdit, cxCalendar,
  cxCurrencyEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, Vcl.DBCtrls, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  Datasnap.DBClient, NClientDataset, DateUtils;

type
  TfrmInstrumentBond = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBImageComboBox5: TcxDBImageComboBox;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dsCouponPayment: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwCouponPayment: TcxGridDBBandedTableView;
    gvwCouponPaymentCOUPONDATE: TcxGridDBBandedColumn;
    gvwCouponPaymentINTERESTRATE: TcxGridDBBandedColumn;
    gvwCouponPaymentRECORDINGDATE: TcxGridDBBandedColumn;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item28: TdxLayoutItem;
    cdsInstrumentBond: TNClientDataset;
    cdsInstrumentBondINSTRUMENT_ID: TLargeintField;
    cdsInstrumentBondINSTRUMENT_CODE: TStringField;
    cdsInstrumentBondLOCALCODE: TStringField;
    cdsInstrumentBondMARKETCODE: TStringField;
    cdsInstrumentBondINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentBondSHORTNAME: TStringField;
    cdsInstrumentBondLONGNAME: TStringField;
    cdsInstrumentBondISSUERNAME: TStringField;
    cdsInstrumentBondCCY: TStringField;
    cdsInstrumentBondISINCODE: TStringField;
    cdsInstrumentBondISINDATE: TDateTimeField;
    cdsInstrumentBondMARGIN: TIntegerField;
    cdsInstrumentBondSTATUS: TStringField;
    cdsInstrumentBondDELISTINGDATE: TDateTimeField;
    cdsInstrumentBondLISTINGDATE: TDateTimeField;
    cdsInstrumentBondLASTCLSPRICE: TFloatField;
    cdsInstrumentBondLASTCPPRICEDATE: TDateField;
    cdsInstrumentBondSECTOR: TStringField;
    cdsInstrumentBondMODDA: TDateTimeField;
    cdsInstrumentBondMODUI: TStringField;
    cdsInstrumentBondAPPDA: TDateTimeField;
    cdsInstrumentBondAPPUI: TStringField;
    cdsInstrumentBondISDEL: TIntegerField;
    cdsInstrumentBondID: TLargeintField;
    cdsInstrumentBondCATEGORY: TStringField;
    cdsInstrumentBondMATURITYDATE: TDateTimeField;
    cdsInstrumentBondRATING: TStringField;
    cdsInstrumentBondREMARKS: TStringField;
    cdsInstrumentBondEFFECTIVEDATE: TDateTimeField;
    cdsInstrumentBondOFFERING_PERIODBEG: TDateTimeField;
    cdsInstrumentBondOFFERING_PERIODEND: TDateTimeField;
    cdsInstrumentBondISSUEDATE: TDateTimeField;
    cdsInstrumentBondNO_OFCERTIFICATES: TStringField;
    cdsInstrumentBondLEAD_UNDERWRITER: TStringField;
    cdsInstrumentBondSELLING_AGENT: TStringField;
    cdsInstrumentBondTRUSTEE: TStringField;
    cdsInstrumentBondCALCULATE_DAYS_METHOD: TIntegerField;
    cdsInstrumentBondCOUPON_IN_YEAR: TIntegerField;
    cdsInstrumentBondCOMMONCODE: TStringField;
    cdsInstrumentBondDAYSOFYEAR: TIntegerField;
    cdsInstrumentBondREGIONALBONDS: TIntegerField;
    cdsInstrumentBondCOUNTINGDAYS_METHOD: TIntegerField;
    cdsInstrumentBondACCRUEDDAYS_METHOD: TIntegerField;
    cdsCouponPayment: TNClientDataset;
    cdsCouponPaymentINSTRUMENT_ID: TLargeintField;
    cdsCouponPaymentCOUPONPAYMENTID: TIntegerField;
    cdsCouponPaymentCOUPONDATE: TDateTimeField;
    cdsCouponPaymentINTERESTRATE: TFloatField;
    cdsCouponPaymentRECORDINGDATE: TDateTimeField;
    cdsCouponPaymentMODDA: TDateTimeField;
    cdsCouponPaymentMODUI: TStringField;
    cdsCouponPaymentAPPDA: TDateTimeField;
    cdsCouponPaymentAPPUI: TStringField;
    cdsCouponPaymentISDEL: TIntegerField;
    cdsCouponPaymentID: TLargeintField;
    cdsInstrumentBondDAYSPERYEAR_METHOD: TIntegerField;
    cdsInstrumentBondACCRUEDTYPE: TStringField;
    cdsInstrumentBondDECDIGIT: TIntegerField;
    cdsInstrumentBondqryCouponPayment: TDataSetField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure btnOKClick(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxDBTextEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstrumentBond: TfrmInstrumentBond;

implementation

{$R *.dfm}

uses FormInstrumentBondList, DataGlobal, DataLookUp;

procedure TfrmInstrumentBond.btnOKClick(Sender: TObject);
  function GetCalcDaysMethod(ACalcMethod: string): Integer;
  begin
    if ACalcMethod = '30/360' then
      Result := 0
    else if LowerCase(ACalcMethod) = 'actual/actual' then
      Result := 1
    else if LowerCase(ACalcMethod) = 'actual/360' then
      Result := 2
    else if LowerCase(ACalcMethod) = 'actual/365' then
      Result := 3
  end;

var
  sDate, sMonth, sYear,
  sDate1, sMonth1, sYear1,
  sDate2, sMonth2, sYear2,
  sDate3, sMonth3, sYear3,
  sDate4, sMonth4, sYear4: word;
  iIncMonth: integer;
  sTmpDate: word;
  dGetLastDate: TDateTime;
  iCountDaysMethod: Integer;
  dCouponDate,
  dXCouponDate: TDateTime;
  i, j: integer;
begin
  if MessageDlg('Save Instrument Bond ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dsSubject.State in [dsInsert] then
    begin
      cdsInstrumentBondINSTRUMENT_TYPE_CODE.AsString := 'B';
      cdsInstrumentBondINSTRUMENT_ID.AsInteger       := dmGlobal.RemoteServer.GetSeq('TBL_B_INSTRUMENT');
//==============================================================================
      DecodeDate(cdsInstrumentBondMATURITYDATE.AsDateTime, sYear, sMonth, sDate);
      DecodeDate(cdsInstrumentBondLISTINGDATE.AsDateTime, sYear1, sMonth1, sDate1);

      sTmpDate := MonthDays[IsLeapYear(sYear1)][sMonth1];
      if sTmpDate < sDate then
        dCouponDate := EncodeDate(sYear1, sMonth1, sTmpDate)
      else
        dCouponDate := EncodeDate(sYear1, sMonth1, sDate);

      dCouponDate  := IncMonth(dCouponDate, StrToIntDef(cdsInstrumentBondCOUPON_IN_YEAR.AsString, 0));
      repeat
        cdsCouponPayment.Append;
        cdsCouponPaymentINSTRUMENT_ID.AsLargeInt := cdsInstrumentBondINSTRUMENT_ID.AsLargeInt;
        cdsCouponPaymentCOUPONDATE.AsDateTime    := dCouponDate;
        cdsCouponPaymentINTERESTRATE.AsFloat     := StrToFloat(cdsInstrumentBondRATING.AsString);
        cdsCouponPaymentRECORDINGDATE.AsDateTime := dCouponDate - 5;
        cdsCouponPayment.Post;

        dXCouponDate := dCouponDate;
        dCouponDate  := IncMonth(dCouponDate, StrToIntDef(cdsInstrumentBondCOUPON_IN_YEAR.AsString, 0));

        DecodeDate(dXCouponDate, sYear2, sMonth2, sDate2);
        if sDate > sDate2 then
        begin
          DecodeDate(dCouponDate, sYear3, sMonth3, sDate3);

          dGetLastDate := EndOfAMonth(sYear3, sMonth3);
          DecodeDate(dGetLastDate, sYear4, sMonth4, sDate4);

          if sMonth3 <> 2 then
          begin
            if sDate3 < sDate4 then
            begin
              DecodeDate(dCouponDate, sYear2, sMonth2, sDate2);
              dCouponDate := EncodeDate(sYear2, sMonth2, sDate);
            end;
          end;

        end;

      until dXCouponDate >= cdsInstrumentBondMATURITYDATE.AsDateTime;
//==============================================================================
    end;

    inherited;
  end;
end;

procedure TfrmInstrumentBond.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if not dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').IsNull then
  begin
    if not dsSubject.DataSet.FieldByName('MARKETCODE').IsNull then
      dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString := dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString +'.'+ dsSubject.DataSet.FieldByName('MARKETCODE').AsString;
  end;
end;

procedure TfrmInstrumentBond.cxDBTextEdit1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert] then
  begin
    if not dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').IsNull then
    begin
      if not dsSubject.DataSet.FieldByName('MARKETCODE').IsNull then
        dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString := dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString +'.'+ dsSubject.DataSet.FieldByName('MARKETCODE').AsString;
    end;
  end;
end;

end.
