unit FormLendBorrow;

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
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxCurrencyEdit, cxImageComboBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls,
  cxButtonEdit, dxLayoutLookAndFeels;

type
  TfrmLendBorrow = class(TfrmEditorData)
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cdsClosePrice: TNClientDataset;
    cdsClosePriceSTK_CLOS: TFloatField;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cdsLendBorrow: TNClientDataset;
    cdsLendBorrowLBID: TLargeintField;
    cdsLendBorrowLBNO: TStringField;
    cdsLendBorrowENTRYDATE: TDateField;
    cdsLendBorrowLBDATE: TDateField;
    cdsLendBorrowDUEDATE: TDateField;
    cdsLendBorrowSTOCKID: TLargeintField;
    cdsLendBorrowSTOCKCODE: TStringField;
    cdsLendBorrowACCID: TLargeintField;
    cdsLendBorrowACCNO: TStringField;
    cdsLendBorrowACCNAME: TStringField;
    cdsLendBorrowCP_ACCID: TLargeintField;
    cdsLendBorrowCP_ACCNO: TStringField;
    cdsLendBorrowCP_ACCNAME: TStringField;
    cdsLendBorrowLBTYPE: TStringField;
    cdsLendBorrowLB_QTY: TFloatField;
    cdsLendBorrowLB_PRICE: TFloatField;
    cdsLendBorrowLB_CHARGESRATE: TFloatField;
    cdsLendBorrowLB_DAY: TIntegerField;
    cdsLendBorrowLB_TIMEMODE: TStringField;
    cdsLendBorrowARO: TStringField;
    cdsLendBorrowCHARGE_PAYDATE: TDateField;
    cdsLendBorrowPOSTED: TStringField;
    cdsLendBorrowPAID: TStringField;
    cdsLendBorrowCASH_VOUCHERID: TLargeintField;
    cdsLendBorrowSET2SIDE: TStringField;
    cdsLendBorrowLINK2SIDEID: TLargeintField;
    cdsLendBorrowMODDA: TDateTimeField;
    cdsLendBorrowMODUI: TStringField;
    cdsLendBorrowAPPDA: TDateTimeField;
    cdsLendBorrowAPPUI: TStringField;
    cdsLendBorrowUNDER4Y: TIntegerField;
    cdsLendBorrowUNDER4YDA: TDateTimeField;
    cdsLendBorrowNOTES4Y: TStringField;
    cdsLendBorrowISDEL: TIntegerField;
    cdsLendBorrowID: TLargeintField;
    cdsLendBorrowOVERDUEDATE: TDateField;
    cdsLendBorrowOVERDAY: TIntegerField;
    cdsLendBorrowACCCODETEMP: TStringField;
    cdsLendBorrowACCNAMETMP: TStringField;
    cdsLendBorrowCPACCCODETMP: TStringField;
    cdsLendBorrowCPACCNAMETMP: TStringField;
    cdsLendBorrowSTOCKCODETMP: TStringField;
    cdsLendBorrowSTOCKNAMETMP: TStringField;
    cdsLendBorrowPROCESSED: TStringField;
    cdsLendBorrowLB_FEEAMT: TFloatField;
    cdsLendBorrowJRNID: TLargeintField;
    cdsLendBorrowRECALL: TStringField;
    cdsLendBorrowRECALL_DATE: TDateField;
    cdsLendBorrowSETTLED: TStringField;
    cdsLendBorrowCOL_AMT: TFloatField;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox3Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure cxDBCurrencyEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBCurrencyEdit3Exit(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsLendBorrowNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CalculateCollateral;
  public
    { Public declarations }
  end;

var
  frmLendBorrow: TfrmLendBorrow;

implementation

{$R *.dfm}

uses FormLendBorrowList, DataGlobal, DataLookup, FormLookupAccount,
  FormLuAccount, DateUtils;

procedure TfrmLendBorrow.CalculateCollateral;
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if (not dsSubject.DataSet.FieldByName('LB_QTY').IsNull) and (not dsSubject.DataSet.FieldByName('LB_PRICE').IsNull) and
       (not dsSubject.DataSet.FieldByName('LB_CHARGESRATE').IsNull) and (not dsSubject.DataSet.FieldByName('STOCKID').IsNull) then
    begin
      dsSubject.DataSet.FieldByName('COL_AMT').AsFloat := dsSubject.DataSet.FieldByName('LB_CHARGESRATE').AsFloat * dsSubject.DataSet.FieldByName('LB_QTY').AsFloat *
                                                          dsSubject.DataSet.FieldByName('LB_PRICE').AsFloat / 100;

      //dsSubject.DataSet.FieldByName('LB_FEEAMT').AsFloat := dsSubject.DataSet.FieldByName('COL_AMT').AsFloat * dsSubject.DataSet.FieldByName('LB_DAY').AsFloat / 360;
      dsSubject.DataSet.FieldByName('LB_FEEAMT').AsFloat := 0;
    end;
  end;
end;

procedure TfrmLendBorrow.cdsLendBorrowNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsLendBorrowLBID.AsLargeInt      := dmGlobal.RemoteServer.GetSeq('TBL_LBCONTRACT');
  cdsLendBorrowENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsLendBorrowLBNO.AsString        := dmGlobal.RemoteServer.GetVoucherNo(dmGlobal.RemoteServer.GetTransDate, 'LB', 'TBL_LB_CONTRACT');
  cdsLendBorrowLBDATE.AsDateTime    := dmGlobal.RemoteServer.GetTransDate;
  cdsLendBorrowLBTYPE.AsString      := 'B';
end;

procedure TfrmLendBorrow.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
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
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmLendBorrow.cxDBCurrencyEdit2Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    if (not VarIsEmpty(dsSubject.DataSet.FieldByName('LBDATE').AsDateTime)) then
      //dsSubject.DataSet.FieldByName('DUEDATE').AsDateTime := dmGlobal.RemoteServer.GetNextTradingDate(dsSubject.DataSet.FieldByName('LBDATE').AsDateTime, dsSubject.DataSet.FieldByName('LB_DAY').AsInteger);
      dsSubject.DataSet.FieldByName('DUEDATE').AsDateTime := IncDay(dsSubject.DataSet.FieldByName('LBDATE').AsDateTime, dsSubject.DataSet.FieldByName('LB_DAY').AsInteger)
  end;
end;

procedure TfrmLendBorrow.cxDBCurrencyEdit3Exit(Sender: TObject);
begin
  inherited;
  CalculateCollateral;
end;

procedure TfrmLendBorrow.cxDBDateEdit1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    if (not VarIsEmpty(dsSubject.DataSet.FieldByName('LBDATE').AsDateTime)) then
      //dsSubject.DataSet.FieldByName('DUEDATE').AsDateTime := dmGlobal.RemoteServer.GetNextTradingDate(dsSubject.DataSet.FieldByName('LBDATE').AsDateTime, dsSubject.DataSet.FieldByName('LB_DAY').AsInteger);
      dsSubject.DataSet.FieldByName('DUEDATE').AsDateTime := IncDay(dsSubject.DataSet.FieldByName('LBDATE').AsDateTime, dsSubject.DataSet.FieldByName('LB_DAY').AsInteger)
  end;
end;

procedure TfrmLendBorrow.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    dsSubject.DataSet.FieldByName('ACCNO').AsString   := dsSubject.DataSet.FieldByName('ACCCODETEMP').AsString;
    dsSubject.DataSet.FieldByName('ACCNAME').AsString := dsSubject.DataSet.FieldByName('ACCNAMETMP').AsString;

    CalculateCollateral;
  end;
end;

procedure TfrmLendBorrow.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    if (not dsSubject.DataSet.FieldByName('STOCKID').IsNull) then
    begin
      dsSubject.DataSet.FieldByName('STOCKCODE').AsString := dsSubject.DataSet.FieldByName('STOCKCODETMP').AsString;

      if dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('INSTRUMENT_ID', dsSubject.DataSet.FieldByName('STOCKID').AsString, []) then
      begin
        if dmGlobal.IntDataLookup.cdsLuInstrumentAllINSTRUMENT_TYPE_CODE.AsString <> 'B' then
          dsSubject.DataSet.FieldByName('LB_PRICE').AsFloat := dmGlobal.RemoteServer.GetMaxClosePrice(dsSubject.DataSet.FieldByName('ENTRYDATE').AsDateTime, 3, dsSubject.DataSet.FieldByName('STOCKCODE').AsString);
      end;

      CalculateCollateral;
    end;
  end;
end;

procedure TfrmLendBorrow.cxDBLookupComboBox3Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    dsSubject.DataSet.FieldByName('CP_ACCNO').AsString   := dsSubject.DataSet.FieldByName('CPACCCODETMP').AsString;
    dsSubject.DataSet.FieldByName('CP_ACCNAME').AsString := dsSubject.DataSet.FieldByName('CPACCNAMETMP').AsString;
  end;
end;

procedure TfrmLendBorrow.FormShow(Sender: TObject);
var
  sCP: string;
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    sCP := dmGlobal.RemoteServer.GetGlobalParamString('052');

    if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCINIT', sCP, []) then
    begin
      dsSubject.DataSet.FieldByName('CP_ACCID').AsInteger  := dmGlobal.IntDataLookup.cdsLuAccountACCID.AsInteger;
      dsSubject.DataSet.FieldByName('CP_ACCNO').AsString   := dmGlobal.IntDataLookup.cdsLuAccountACCCODE.AsString;
      dsSubject.DataSet.FieldByName('CP_ACCNAME').AsString := dmGlobal.IntDataLookup.cdsLuAccountACCNAME.AsString;
    end;

    dsSubject.DataSet.FieldByName('ENTRYDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    dsSubject.DataSet.FieldByName('LB_CHARGESRATE').AsFloat := dmGlobal.RemoteServer.GetGlobalParamFloat('215');
    dsSubject.DataSet.FieldByName('LBTYPE').AsString := 'B';
    dsSubject.DataSet.FieldByName('LB_FEEAMT').AsFloat := 0;
  end;
end;

end.
