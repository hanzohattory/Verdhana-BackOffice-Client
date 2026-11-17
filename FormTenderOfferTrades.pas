unit FormTenderOfferTrades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxImageComboBox, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxMaskEdit, cxCalendar,
  Data.DB, FormTenderOfferList, Datasnap.DBClient, NClientDataset, cxClasses;

type
  TfrmTenderOfferTrades = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    dsSubject: TDataSource;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl2Item10: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl2Item11: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControl2Item12: TdxLayoutItem;
    cdsStockPos: TNClientDataset;
    cdsStockPosStockID: TIntegerField;
    cdsStockPosAccID: TLargeintField;
    cdsStockPosAcqDate: TDateField;
    cdsStockPosAvgPrice: TFloatField;
    cdsStockPosStockOnHand: TFloatField;
    cdsStockPosStockBalance: TFloatField;
    cdsStockPosStockType: TStringField;
    cdsStockPosSWQTY: TFloatField;
    cdsStockPosBondsTrans: TFloatField;
    cdsStockPosAV_QTY: TFloatField;
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxDBImageComboBox1Exit(Sender: TObject);
  private
    FFormBrowse: TfrmTenderOfferList;
    FLevy: Double;
    FVAT: Double;
    FComission: Double;
    FPrice: Double;
    FWHT: Double;
    FIsUseWHT: string;
    { Private declarations }
  public
    property FormBrowse: TfrmTenderOfferList read FFormBrowse write FFormBrowse;
    property Comission: Double read FComission write FComission;
    property Levy: Double read FLevy write FLevy;
    property VAT: Double read FVAT write FVAT;
    property Price: Double read FPrice write FPrice;
    property WHT: Double read FWHT write FWHT;
  end;

var
  frmTenderOfferTrades: TfrmTenderOfferTrades;

implementation

{$R *.dfm}

uses DataGlobal, FormTenderOfferTrade, DataLookup;

procedure TfrmTenderOfferTrades.cxButton3Click(Sender: TObject);
begin
  if FFormBrowse.cdsTenderOfferTrade.State in [dsInsert, dsEdit] then
  begin
    cdsStockPos.Close;
    cdsStockPos.Params[0].AsDate    := dsSubject.DataSet.FieldByName('TRANSDATE').AsDateTime;
    cdsStockPos.Params[1].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
    cdsStockPos.Params[2].AsInteger := FFormBrowse.cdsTenderOfferListSTOCKID.AsInteger;
    cdsStockPos.Open;

    if cdsStockPosStockOnHand.AsFloat <= 0 then
    begin
      MessageDlg('There is no stock on hand can be traded', mtError, [mbOk], 0);
      ModalResult := mrNone;
    end
    else
    begin
      FFormBrowse.cdsTenderOfferTrade.Post;
      ModalResult := mrOk;
    end;
  end;
end;

procedure TfrmTenderOfferTrades.cxButton4Click(Sender: TObject);
begin
  FFormBrowse.cdsTenderOfferTrade.Cancel;
end;

procedure TfrmTenderOfferTrades.cxDBCurrencyEdit1Exit(Sender: TObject);
begin
  FFormBrowse.cdsTenderOfferTradeVALUE.AsFloat := FFormBrowse.cdsTenderOfferTradeQTY.AsFloat * FPrice;
end;

procedure TfrmTenderOfferTrades.cxDBImageComboBox1Exit(Sender: TObject);
var
  sComCalcMode: string;
  dBrokerFee: Double;
begin
  with FFormBrowse do
  begin
    sComCalcMode := cdsTenderOfferTradeCOM_CALCMODE.AsString;
    if sComCalcMode = 'AI' then
      dBrokerFee := ((FComission/100) - (FLevy/100)) * (100 / (100 + FVAT)) * FFormBrowse.cdsTenderOfferTradeVALUE.AsFloat
    else if sComCalcMode = 'CO' then
      dBrokerFee := (FComission/100) * (100 / (100 + FVAT)) * FFormBrowse.cdsTenderOfferTradeVALUE.AsFloat
    else if sComCalcMode = 'CV' then
      dBrokerFee := (FComission/100) * FFormBrowse.cdsTenderOfferTradeVALUE.AsFloat;

    cdsTenderOfferTradeCOMM_AMT.AsFloat  := Round(dBrokerFee);
    cdsTenderOfferTradeLEVY_AMT.AsFloat  := Round(FFormBrowse.cdsTenderOfferTradeVALUE.AsFloat * FLevy / 100);
    cdsTenderOfferTradeVATAMT.AsFloat    := Round(dBrokerFee * (FVAT / 100));
    if FIsUseWHT = '1' then
      cdsTenderOfferTradeWHT_AMT.AsFloat := Round(dBrokerFee * FWHT / 100)
    else
      cdsTenderOfferTradeWHT_AMT.AsFloat := 0;
    cdsTenderOfferTradeNETAMOUNT.AsFloat := FFormBrowse.cdsTenderOfferTradeVALUE.AsFloat -
                                            (cdsTenderOfferTradeCOMM_AMT.AsFloat +
                                            cdsTenderOfferTradeLEVY_AMT.AsFloat +
                                            cdsTenderOfferTradeVATAMT.AsFloat +
                                            cdsTenderOfferTradeWHT_AMT.AsFloat);
  end;
end;

procedure TfrmTenderOfferTrades.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', FFormBrowse.cdsTenderOfferTradeACCID.AsInteger, []) then
    begin
      FFormBrowse.cdsTenderOfferTradeACCNO.AsString := cdsLuAccountACCCODE.AsString;
      FIsUseWHT := dmGlobal.RemoteServer.CheckAccountChargeUsed(FFormBrowse.cdsTenderOfferTradeACCID.AsInteger, 'IDX', 'CHG9');
    end;
  end;
end;

end.
