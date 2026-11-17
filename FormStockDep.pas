unit FormStockDep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, NDatasetContainer, cxImageComboBox, cxMemo,
  cxGroupBox, cxRadioGroup, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, cxCurrencyEdit, Datasnap.DBClient, NClientDataset,
  cxButtonEdit, dxLayoutLookAndFeels, cxClasses;

type
  TfrmStockDep = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item14: TdxLayoutItem;
    cmbSettleReason: TcxDBImageComboBox;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dtAquisitionDate: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cdsStockClosingPrice: TNClientDataset;
    cdsStockClosingPriceSTK_DATE: TDateField;
    cdsStockClosingPriceSTK_CODE: TStringField;
    cdsStockClosingPriceSTK_NAME: TStringField;
    cdsStockClosingPriceSTK_PREV: TFloatField;
    cdsStockClosingPriceSTK_HIGH: TFloatField;
    cdsStockClosingPriceSTK_LOW: TFloatField;
    cdsStockClosingPriceSTK_CLOS: TFloatField;
    cdsStockClosingPriceSTK_VOLM: TFloatField;
    cdsStockClosingPriceSTK_AMNT: TFloatField;
    cdsStockClosingPriceSTK_INDX: TFloatField;
    cdsStockClosingPriceSTK_PIDX: TFloatField;
    cdsStockClosingPriceSTK_ASKP: TFloatField;
    cdsStockClosingPriceSTK_ASKV: TFloatField;
    cdsStockClosingPriceSTK_ASKF: TStringField;
    cdsStockClosingPriceSTK_BIDP: TFloatField;
    cdsStockClosingPriceSTK_BIDV: TFloatField;
    cdsStockClosingPriceSTK_BIDF: TStringField;
    cdsStockClosingPriceSTK_FHIG: TFloatField;
    cdsStockClosingPriceSTK_FLOW: TFloatField;
    cdsStockClosingPriceSTK_FCLO: TFloatField;
    cdsStockClosingPriceSTK_OPEN: TFloatField;
    txtSIDNO: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cdsStockDep: TNClientDataset;
    cdsStockDepSDID: TLargeintField;
    cdsStockDepSDCODE: TStringField;
    cdsStockDepSDDATE: TDateField;
    cdsStockDepACQPRICE: TFloatField;
    cdsStockDepACCID: TLargeintField;
    cdsStockDepACCNO: TStringField;
    cdsStockDepINSTRUMENT_ID: TLargeintField;
    cdsStockDepINSTRUMENT_CODE: TStringField;
    cdsStockDepCBCODE: TStringField;
    cdsStockDepKSEIACC: TStringField;
    cdsStockDepACTLED_SEQID: TIntegerField;
    cdsStockDepACCTYPE: TStringField;
    cdsStockDepSCRIPLESS: TStringField;
    cdsStockDepPLEDGED: TStringField;
    cdsStockDepSDPRICE: TFloatField;
    cdsStockDepSDQTY: TLargeintField;
    cdsStockDepREMARK: TStringField;
    cdsStockDepPURPOSE: TStringField;
    cdsStockDepTRADEREFF: TStringField;
    cdsStockDepSETTLEREASON: TStringField;
    cdsStockDepPOSTED: TStringField;
    cdsStockDepMODDA: TDateTimeField;
    cdsStockDepMODUI: TStringField;
    cdsStockDepAPPDA: TDateTimeField;
    cdsStockDepAPPUI: TStringField;
    cdsStockDepUNDER4Y: TIntegerField;
    cdsStockDepUNDER4YDA: TDateTimeField;
    cdsStockDepNOTES4Y: TStringField;
    cdsStockDepISDEL: TIntegerField;
    cdsStockDepID: TLargeintField;
    cdsStockDepINVTYPE_TMP: TStringField;
    cdsStockDepPRDTYPE: TStringField;
    cdsStockDepKSEIACC_TMP: TStringField;
    cdsStockDepACTLED_SEQID_TMP: TIntegerField;
    cdsStockDepINSTRUMEN_NAME_TMP: TStringField;
    txtAccCode: TcxDBButtonEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    txtAccountName: TcxTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    txtMarket: TcxLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    txtTradeReff: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsStockDepENTRYDATE: TDateField;
    cdsStockDepSTOCK_TYPE: TStringField;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cdsStockDepSETTLEDATE: TDateField;
    cdsStockDepACQDATE: TDateField;
    procedure FormShow(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsStockDepINSTRUMENT_IDChange(Sender: TField);
    procedure cdsStockDepACCIDChange(Sender: TField);
    procedure cdsStockDepBeforePost(DataSet: TDataSet);
    procedure txtAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtMarketPropertiesCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cdsStockDepNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FIsAccMargin: Boolean;
    FIsStockMargin: Boolean;
    FTransDate: TDateTime;

    function GetAccAndStockMargin: Boolean;
  public
    { Public declarations }
  end;

var
  frmStockDep: TfrmStockDep;

implementation

{$R *.dfm}

uses FormStockDepList, DataGlobal, DataLookup, FormLuAccount;

procedure TfrmStockDep.btnOKClick(Sender: TObject);
begin
  if (FIsAccMargin) and (not FIsStockMargin) then
    MessageDlg('Invalid Instrument Code for Account Margin', mtError, [mbOk], 0)
  else
  begin
    if dmGlobal.RemoteServer.GetTransDate > dsSubject.DataSet.FieldByName('SETTLEDATE').AsDateTime then
      MessageDlg('Settle date can not less than deposit date', mtError, [mbOk], 0)
    else
      inherited;
  end;

end;

procedure TfrmStockDep.cdsStockDepACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', cdsStockDepACCID.Value, []) then
    begin
      cdsStockDepACCNO.AsString := cdsLuAccountACCCODE.AsString;
      txtSIDNO.Text             := cdsLuAccountSIDNO.AsString;

      FIsAccMargin := False;
      if cdsLuAccountPRDCODE.AsString = dmGlobal.RemoteServer.GetGlobalParamString('762') then
        FIsAccMargin := True;
    end;

    cdsStockDepACCTYPE.AsString       := dsSubject.DataSet.FieldByName('INVTYPE_TMP').AsString;
    cdsStockDepKSEIACC.AsString       := dsSubject.DataSet.FieldByName('KSEIACC_TMP').AsString;
    cdsStockDepACTLED_SEQID.AsInteger := dsSubject.DataSet.FieldByName('ACTLED_SEQID_TMP').AsInteger;

//    request corpus 2019 11 04
//    cdsLuInstrumentAll.Filtered := False;
//    if dsSubject.DataSet.FieldByName('PRDTYPE').AsString = 'FI' then
//    begin
//      cdsLuInstrumentAll.Filter   := 'INSTRUMENT_TYPE_CODE = '+QuotedStr('B');
//      cdsLuInstrumentAll.Filtered := True;
//    end
//    else
//    begin
//      cdsLuInstrumentAll.Filter   := 'INSTRUMENT_TYPE_CODE <> '+QuotedStr('B');
//      cdsLuInstrumentAll.Filtered := True;
//    end;

    if FIsAccMargin and FIsStockMargin then
      cdsStockDepPLEDGED.AsString := '1'
    else
      cdsStockDepPLEDGED.AsString := '0';
  end;
end;

procedure TfrmStockDep.cdsStockDepBeforePost(DataSet: TDataSet);
var
  iSeqID, iSeqNo: int64;
  sSeqNo: string;
begin
  inherited;
  if cdsStockDepSDID.AsInteger = -1 then
  begin
    iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP');
    iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP_'+ FormatDateTime('yyyymm', FTransDate));
    sSeqNo := 'SD-'+ FormatDateTime('mmyyyy', FTransDate) +'-'+ FormatFloat('0000000000', iSeqNo);

    cdsStockDepSDID.AsLargeInt := iSeqID;
    cdsStockDepSDCODE.AsString := sSeqNo;
  end;
end;

procedure TfrmStockDep.cdsStockDepINSTRUMENT_IDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsStockDepINSTRUMENT_ID.Value, []) then
    begin
      cdsStockDepINSTRUMENT_CODE.AsString := cdsLuInstrumentAllLOCALCODE.AsString;

      dtAquisitionDate.Properties.ReadOnly := cdsLuInstrumentAllINSTRUMENT_TYPE_CODE.AsString <> 'B';
      dtAquisitionDate.ParentColor         := cdsLuInstrumentAllINSTRUMENT_TYPE_CODE.AsString <> 'B';
      dtAquisitionDate.TabStop             := cdsLuInstrumentAllINSTRUMENT_TYPE_CODE.AsString <> 'B';

      FIsStockMargin := False;
      if cdsLuInstrumentAllMARGIN.AsString = '1' then
        FIsStockMargin := True;

    end;

    if FIsAccMargin and FIsStockMargin then
      cdsStockDepPLEDGED.AsString := '1'
    else
      cdsStockDepPLEDGED.AsString := '0';
  end;
end;

procedure TfrmStockDep.cdsStockDepNewRecord(DataSet: TDataSet);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuMarket.IsEmpty then
      txtMarket.Text := 'IDX';

    if txtMarket.Text <> '' then
    begin
      cdsLuInstrumentAll.Filter   := 'MARKETCODE = '+ QuotedStr(txtMarket.Text);
      cdsLuInstrumentAll.Filtered := True;
    end;
  end;

  cdsStockDepSDCODE.AsString       := '<AUTONO>';
  cdsStockDepPURPOSE.AsString      := 'NONEXCHG';
  cdsStockDepSDID.AsInteger        := -1;
  cdsStockDepACQDATE.AsDateTime    := FTransDate;
  cdsStockDepSETTLEDATE.AsDateTime := FTransDate;
  cdsStockDepSDDATE.AsDateTime     := FTransDate;
  cdsStockDepPURPOSE.AsString      := 'NONEXCHG';
  cdsStockDepSETTLEREASON.AsString := 'OWNE';
  cdsStockDepPLEDGED.AsString      := '0';
  cdsStockDepSCRIPLESS.AsString    := '1';
end;

procedure TfrmStockDep.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
  inherited;
//  dsSubject.DataSet.FieldByName('ACQPRICE').AsFloat := dsSubject.DataSet.FieldByName('SDPRICE').AsFloat;
end;

procedure TfrmStockDep.cxDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
//  cdsStockClosingPrice.Close;
//  cdsStockClosingPrice.Params[0].AsDateTime := dsSubject.DataSet.FieldByName('SDDATE').AsDateTime;
//  cdsStockClosingPrice.Params[1].AsString   := dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString;
//  cdsStockClosingPrice.Open;

  dsSubject.DataSet.FieldByName('SDPRICE').AsFloat := 0 ;//cdsStockClosingPriceSTK_CLOS.AsFloat;

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger, []) then
    begin
      dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString := cdsLuInstrumentAllLOCALCODE.AsString;
      dsSubject.DataSet.FieldByName('SDPRICE').AsFloat          := 0; //cdsLuInstrumentAllLASTCLSPRICE.AsFloat;
    end;
  end;
end;

procedure TfrmStockDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := False;
  txtMarket.RepositoryItem.Properties.ReadOnly       := False;
  inherited;
end;

procedure TfrmStockDep.FormCreate(Sender: TObject);
begin
  inherited;

  FTransDate := dmGlobal.RemoteServer.GetTransDate;

//  with dmGlobal.IntDataLookup do
//  begin
//    cdsLuInstrumentAll.Close;
//    cdsLuInstrumentAll.Open;
//
//    cdsLuMarket.Close;
//    cdsLuMarket.Open;
//  end;
end;

procedure TfrmStockDep.FormShow(Sender: TObject);
var
  iSeqID, iSeqNo: int64;
  sSeqNo: string;
  iAccID: Integer;
  dTransDate: TDate;
begin
  inherited;
  FIsAccMargin   := False;
  FIsStockMargin := False;

  if not (cdsStockDep.State in [dsInsert]) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      iAccID := cdsStockDepACCID.AsInteger;

      if not cdsLuAccount.Active then
        cdsLuAccount.Open;

      if cdsLuAccount.Locate('ACCID', iAccID, []) then
        txtAccountName.Text := cdsLuAccountACCNAME.AsString;

      if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsStockDepINSTRUMENT_ID.AsInteger, []) then
      begin
        txtMarket.Text := cdsLuInstrumentAllMARKETCODE.AsString;

        if txtMarket.Text <> '' then
        begin
//          cdsLuInstrumentAll.Filter   := 'MARKETCODE = '+ QuotedStr(txtMarket.Text);
//          cdsLuInstrumentAll.Filtered := True;
        end;
      end;
    end;
  end;

//  if dsSubject.DataSet.State in [dsInsert] then
//  begin
//    with dmGlobal.IntDataLookup do
//    begin
//      if not cdsLuMarket.IsEmpty then
//        txtMarket.Text := 'IDX';
//
//      if txtMarket.Text <> '' then
//      begin
//        cdsLuInstrumentAll.Filter   := 'MARKETCODE = '+ QuotedStr(txtMarket.Text);
//        cdsLuInstrumentAll.Filtered := True;
//      end;
//    end;
//
////    dTransDate := dmGlobal.RemoteServer.GetTransDate;
////    iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP');
////    iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKDEP_'+ FormatDateTime('MMYYYY',dmGlobal.RemoteServer.GetTransDate));
////    sSeqNo := 'SD-'+FormatDateTime('MMYYYY',dmGlobal.RemoteServer.GetTransDate)+'-'+FormatFloat('0000000000', iSeqNo);
////
////    dsSubject.DataSet.FieldByName('SDCODE').AsString       := sSeqNo;
//    dsSubject.DataSet.FieldByName('SDDATE').AsDateTime     := FTransDate;
//    dsSubject.DataSet.FieldByName('PLEDGED').AsString      := '0';
//    dsSubject.DataSet.FieldByName('SCRIPLESS').AsString    := '1';
//    dsSubject.DataSet.FieldByName('ACQDATE').AsDateTime    := dTransDate;
//    dsSubject.DataSet.FieldByName('PURPOSE').AsString      := 'NONEXCHG';
//    dsSubject.DataSet.FieldByName('SETTLEREASON').AsString := 'OWNE';
//    dsSubject.DataSet.FieldByName('SETTLEDATE').AsDateTime := dTransDate;
//    dsSubject.DataSet.FieldByName('ENTRYDATE').AsDateTime  := dTransDate;
//  end;
end;

function TfrmStockDep.GetAccAndStockMargin: Boolean;
begin

end;

procedure TfrmStockDep.txtAccCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('ACCNO').AsString   := cdsLuAccountMultiFilterACCCODE.AsString;
        txtAccountName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmStockDep.txtMarketPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
//    if txtMarket.Text <> '' then
//    begin
//      cdsLuInstrumentAll.Filter   := 'MARKETCODE = '+ QuotedStr(txtMarket.Text);
//      cdsLuInstrumentAll.Filtered := True;
//    end;
  end;
end;

Initialization
  RegisterClass(TfrmStockDep);

end.
