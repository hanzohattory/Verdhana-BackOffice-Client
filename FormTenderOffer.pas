unit FormTenderOffer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxClasses,
  dxLayoutLookAndFeels;

type
  TfrmTenderOffer = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox2Exit(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FSysDate: TDateTime;
  public
    { Public declarations }
  end;

var
  frmTenderOffer: TfrmTenderOffer;

implementation

{$R *.dfm}

uses DataGlobal, FormTenderOfferList, DataLookup;

procedure TfrmTenderOffer.btnCancelClick(Sender: TObject);
begin
//  dmGlobal.RemoteServer.CancelSeq('main.B_TENDER_OFFER', dsSubject.DataSet.FieldByName('TOID').AsLargeInt);
  inherited;

end;

procedure TfrmTenderOffer.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', dsSubject.DataSet.FieldByName('STOCKID').AsLargeInt, []) then
      begin
        dsSubject.DataSet.FieldByName('STOCKCODE').AsString         := cdsLuInstrumentAllINSTRUMENT_CODE.AsString;
        dsSubject.DataSet.FieldByName('MARKETCODE').AsString        := cdsLuInstrumentAllMARKETCODE.AsString;
        dsSubject.DataSet.FieldByName('QUOTATION_PRICE').AsFloat    := cdsLuInstrumentAllLASTCLSPRICE.AsFloat;
        dsSubject.DataSet.FieldByName('COMISSION_PERCENT').AsFloat  := 0.15;
        dsSubject.DataSet.FieldByName('VAT_PERCENT').AsFloat        := 12;
        dsSubject.DataSet.FieldByName('LEVY_PERCENT').AsFloat       := 0.033;
        dsSubject.DataSet.FieldByName('SALESTAX_PERCENT').AsFloat   := 10;
        dsSubject.DataSet.FieldByName('QUO_STARTDATE').AsDateTime   := FSysDate;;
        dsSubject.DataSet.FieldByName('QUO_ENDDATE').AsDateTime     := FSysDate;;
        dsSubject.DataSet.FieldByName('PAYMENTDATE').AsDateTime     := FSysDate;;
        dsSubject.DataSet.FieldByName('EXT_QUO_STDATE').AsDateTime  := FSysDate;;
        dsSubject.DataSet.FieldByName('EXT_QUO_ENDATE').AsDateTime  := FSysDate;;
        dsSubject.DataSet.FieldByName('EXT_PAYMENTDATE').AsDateTime := FSysDate;;
      end;
    end;
  end;
end;

procedure TfrmTenderOffer.cxDBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.State in [dsInsert, dsEdit] then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuMarket.Locate('MARKETCODE', dsSubject.DataSet.FieldByName('MARKETCODE').AsString, []) then
        dsSubject.DataSet.FieldByName('WHT_PERCENT').AsFloat := cdsLuMarketWHTPCT.AsFloat;
    end;
  end;
end;

procedure TfrmTenderOffer.FormCreate(Sender: TObject);
begin
  inherited;
  FSysDate := dmGlobal.RemoteServer.GetTransDate;
end;

end.
