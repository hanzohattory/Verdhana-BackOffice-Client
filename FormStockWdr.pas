unit FormStockWdr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, NDatasetContainer, cxImageComboBox, cxMemo,
  cxCheckBox, cxGroupBox, cxRadioGroup, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, Datasnap.DBClient, NClientDataset, cxCurrencyEdit,
  cxGridDBTableView, ClassClientConst, cxButtonEdit, DateUtils,
  dxLayoutLookAndFeels, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmStockWdr = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item14: TdxLayoutItem;
    cmbReason: TcxDBImageComboBox;
    cmbReasons: TdxLayoutItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwAcquisition: TcxGridDBBandedTableView;
    cdsStockWdrPos: TNClientDataset;
    dsStockWdrPos: TDataSource;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cdsStockWdrPosStockID: TIntegerField;
    cdsStockWdrPosAccID: TLargeintField;
    cdsStockWdrPosAcqDate: TDateField;
    cdsStockWdrPosAvgPrice: TFloatField;
    cdsStockWdrPosStockOnHand: TFloatField;
    cdsStockWdrPosStockBalance: TFloatField;
    cdsStockWdrPosStockType: TStringField;
    cdsStockWdrAvail: TNClientDataset;
    cdsStockWdrAvailACQDATE: TDateField;
    cdsStockWdrAvailACCID: TLargeintField;
    cdsStockWdrAvailSTOCKID: TIntegerField;
    cdsStockWdrAvailPRICE: TFloatField;
    cdsStockWdrAvailVALUE: TFloatField;
    cdsSumWithdraw: TNClientDataset;
    cdsSumWithdrawWithdraw_Qty: TLargeintField;
    cdsSumStockAvail: TNClientDataset;
    cdsSumStockAvailStokAvail: TFloatField;
    cdsStockWdrPosSWQTY: TFloatField;
    dsStockWdrAcq: TDataSource;
    dsSumStockAvail: TDataSource;
    cdsStockWdrPosBondsTrans: TFloatField;
    cdsStockWdrPosAV_QTY: TFloatField;
    cdsGetAccOverTL: TNClientDataset;
    cdsGetAccOverTLACCID: TLargeintField;
    cdsGetAccOverTLPRDCODE: TStringField;
    cdsGetAccOverTLACCTYPE: TStringField;
    cdsGetAccOverTLRATIO_MRGCALL: TFloatField;
    cdsGetAccOverTLRATIO_MRGWARING: TFloatField;
    cdsGetAccOverTLAR_RATIO: TFloatField;
    cdsGetAccOverTLOVER_TL: TFloatField;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dsGetAccOverTL: TDataSource;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    txtSIDNO: TcxTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cmbSettleDate: TcxDBDateEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    txtAccountName: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsStockWdrPosStockReceive: TFloatField;
    cdsStockWdrPosStockWithdraw: TFloatField;
    cdsCustStockAvail: TNClientDataset;
    cdsCustStockAvailStockCode: TStringField;
    cdsCustStockAvailClosingPrice: TFloatField;
    cdsCustStockAvailQuantityOnHand: TFloatField;
    cdsCustStockAvailQuantitySell: TFloatField;
    cdsCustStockAvailStockWithdraw: TFloatField;
    cdsCustStockAvailAvailableQuantity: TFloatField;
    dsCustStockAvail: TDataSource;
    gvwAcquisitionStockCode: TcxGridDBBandedColumn;
    gvwAcquisitionClosingPrice: TcxGridDBBandedColumn;
    gvwAcquisitionQuantityOnHand: TcxGridDBBandedColumn;
    gvwAcquisitionQuantitySell: TcxGridDBBandedColumn;
    gvwAcquisitionStockWithdraw: TcxGridDBBandedColumn;
    gvwAcquisitionAvailableQuantity: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbSettleDateExit(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBImageComboBox1PropertiesChange(Sender: TObject);
  private
    FIsMarginCall: boolean;
    FLastPosStockWdr: Double;
    fSumStockAvail: Double;

    procedure ShowStockAvail;
  public
    { Public declarations }
  end;

var
  frmStockWdr: TfrmStockWdr;

implementation

{$R *.dfm}

uses DataGlobal, FormStockWdrList, DataLookup, FormLuAccount;

procedure TfrmStockWdr.btnOKClick(Sender: TObject);
var
  fSumStockWithdraw,
  fSisaStock, fTmpStock: Double;
  sMessage: string;
  bCont: Boolean;
begin
  bCont := False;

  if (Self.State in [pkCreate, pkUpdate, pkApprove]) then
  begin
    if fSumStockAvail < dsSubject.DataSet.FieldByName('SWQTY').AsFloat then
      MessageDlg('Avail Qty is not enough', mtError, [mbOK], 0)
    else
    begin
      if (dsSubject.DataSet.FieldByName('SWQTY').AsFloat <> 0) then
      begin
        if dsSubject.DataSet.State in [dsInsert, dsEdit] then
        begin
          cdsStockWdrAvail.Close;
          cdsStockWdrAvail.Params[0].AsDate    := dsSubject.DataSet.FieldByName('SWDATE').AsDateTime;
          cdsStockWdrAvail.Params[1].AsFloat   := dsSubject.DataSet.FieldByName('SWQTY').AsFloat;
          cdsStockWdrAvail.Params[2].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
          cdsStockWdrAvail.Params[3].AsInteger := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
          cdsStockWdrAvail.Open;

          cdsSumStockAvail.Close;
          cdsSumStockAvail.Params[0].AsDateTime := dsSubject.DataSet.FieldByName('SWDATE').AsDateTime;
          cdsSumStockAvail.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
          cdsSumStockAvail.Params[2].AsInteger  := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
          cdsSumStockAvail.Open;

          if cdsStockWdrAvail.RecordCount > 0 then
          begin

            if cdsGetAccOverTLAR_RATIO.AsFloat <> 0 then
            begin
              if cdsGetAccOverTLRATIO_MRGCALL.AsFloat <= cdsGetAccOverTLAR_RATIO.AsFloat then
                MessageDlg('There is not enough margin can be withdrawed', mtError, [mbOk], 0)
              else if cdsGetAccOverTLRATIO_MRGWARING.AsFloat <= cdsGetAccOverTLAR_RATIO.AsFloat then
              begin  if MessageDlg('AR Margin is above margin warning, continue withdraw?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  bCont := True;
              end
              else
                bCont := True;
            end
            else
              bCont := True;
          end
          else
            MessageDlg('Not enough stock avail to be withdrawed...', mtError, [mbOk], 0);
        end
        else
          bCont := True;
      end
      else
        MessageDlg('Please fill Quantity for Withdrawed...', mtError, [mbOK], 0);
    end;
  end
  else
    bCont := True;

  if dmGlobal.RemoteServer.GetTransDate > dsSubject.DataSet.FieldByName('SETTLEDATE').AsDateTime then
  begin
    MessageDlg('Settle date can not less than withdraw date', mtError, [mbOk], 0);
    bCont := False;
  end;

  if bCont then
  begin
    if dsSubject.DataSet.State in [dsInsert] then
    begin
//      sMessage := dmGlobal.RemoteServer.AddCustodianInstruction(
//          dsSubject.DataSet.FieldByName('SWID').AsLargeInt,
//          dsSubject.DataSet.FieldByName('SWCODE').AsString,
//          'SWID',
//          dsSubject.DataSet.FieldByName('ACCID').AsLargeInt,
//          dsSubject.DataSet.FieldByName('ACCNO').AsString,
//          txtAccountName.Text,
//          dsSubject.DataSet.FieldByName('SWDATE').AsDateTime,
//          dsSubject.DataSet.FieldByName('KSEIACC').AsString,
//          dsSubject.DataSet.FieldByName('CBCODE').AsString,
//          dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsLargeInt,
//          dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString,
//          dsSubject.DataSet.FieldByName('SWQTY').AsFloat,
//          dsSubject.DataSet.FieldByName('REMARK').AsString,
//          dsSubject.DataSet.FieldByName('PURPOSE').AsString,
//          dsSubject.DataSet.FieldByName('TRADEREFF').AsString,
//          dsSubject.DataSet.FieldByName('SETTLEREASON').AsString, 'D');
//
//      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      FLastPosStockWdr := 0;

    end;

    dmGlobal.RemoteServer.UpdateWithdrawStockPosition(FLastPosStockWdr
      , dsSubject.DataSet.FieldByName('SWQTY').AsFloat
      , dsSubject.DataSet.FieldByName('SWDATE').AsDateTime
      , dsSubject.DataSet.FieldByName('ACCID').AsInteger
      , dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger);

    inherited;
  end;
end;

procedure TfrmStockWdr.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  iInstrumentID: Integer;
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

        dsSubject.DataSet.FieldByName('ACCTYPE').AsString       := dsSubject.DataSet.FieldByName('INVTYPE').AsString;
        dsSubject.DataSet.FieldByName('KSEIACC').AsString       := dsSubject.DataSet.FieldByName('KSEIACC_TMP').AsString;
        dsSubject.DataSet.FieldByName('ACTLED_SEQID').AsInteger := dsSubject.DataSet.FieldByName('ACTLED_SEQID_TMP').AsInteger;

        dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := False;
        if dsSubject.DataSet.FieldByName('PRDTYPE').AsString = 'FIR' then
        begin
          dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filter   := 'INSTRUMENT_TYPE_CODE = '+QuotedStr('B');
          dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := True;
        end
        else
        begin
          dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filter   := 'INSTRUMENT_TYPE_CODE <> '+QuotedStr('B');
          dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := True;
        end;

        with dmGlobal.IntDataLookup do
        begin
          if cdsLuAccount.Locate('ACCID', dsSubject.DataSet.FieldByName('ACCID').AsInteger, []) then
          begin
            dsSubject.DataSet.FieldByName('ACCNO').AsString := cdsLuAccountACCCODE.AsString;
            txtSIDNO.Text := cdsLuAccountSIDNO.AsString;
          end;
        end;

        ShowStockAvail;
      end;
    end;
  end;
end;

procedure TfrmStockWdr.cmbSettleDateExit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('SWDATE').AsDateTime > dsSubject.DataSet.FieldByName('SETTLEDATE').AsDateTime then
  begin
    MessageDlg('Settle date can not less than withdraw date', mtError, [mbOk], 0);

    cmbSettleDate.SetFocus;
  end;
end;

procedure TfrmStockWdr.cxDBImageComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if dsSubject.DataSet.FieldByName('PURPOSE').AsString = '' then
      cmbReasons.Enabled := False
    else
      cmbReasons.Enabled := True;
  end;
end;

procedure TfrmStockWdr.cxDBLookupComboBox3Exit(Sender: TObject);
var
  iInstrumentID: Integer;
begin
  inherited;
  iInstrumentID := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;

  if dmGlobal.IntDataLookup.cdsluCustStock.Locate('StockID', iInstrumentID, []) then
  begin
    dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString    := dmGlobal.IntDataLookup.cdsluCustStockStockCode.AsString;
    dsSubject.DataSet.FieldByName('INSTRUMEN_NAME_TMP').AsString := dmGlobal.IntDataLookup.cdsluCustStockStockName.AsString;

    fSumStockAvail := dmGlobal.IntDataLookup.cdsluCustStockAV_QTY.AsFloat;
  end;

  ShowStockAvail;
end;

procedure TfrmStockWdr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Filtered := False;

  inherited;
end;

procedure TfrmStockWdr.FormShow(Sender: TObject);
var
  sSeqNo: String;
  iAccID: Integer;
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
  begin
    sSeqNo := FormatFloat('0000000000',dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKWDR'));

    dsSubject.DataSet.FieldByName('SETTLEDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    dsSubject.DataSet.FieldByName('SWCODE').AsString       := '<Auto No>';
    dsSubject.DataSet.FieldByName('PLEDGED').AsString      := '0';
    dsSubject.DataSet.FieldByName('SCRIPLESS').AsString    := '1';
    dsSubject.DataSet.FieldByName('PURPOSE').AsString      := 'NONEXCHG';
    dsSubject.DataSet.FieldByName('SETTLEREASON').AsString := 'OWNE';
  end;

  ShowStockAvail;
end;

procedure TfrmStockWdr.ShowStockAvail;
begin
  if dsSubject.DataSet.State in [dsEdit] then
    FLastPosStockWdr := dsSubject.DataSet.FieldByName('SWQTY').AsFloat;

  cdsCustStockAvail.Close;
  cdsCustStockAvail.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsCustStockAvail.Open;
end;

Initialization
  RegisterClass(TfrmStockWdr);

end.
