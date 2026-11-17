unit FormTenderOfferTrade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxDBEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxImageComboBox, cxCurrencyEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, Data.DB,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.ActnList, NDatasetAction,
  Vcl.StdCtrls, cxButtons, FormTenderOfferList, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxLabel, cxDBLabel, Datasnap.DBClient, NClientDataset,
  dxDateRanges, dxScrollbarAnnotations, System.Actions;

type
  TfrmTenderOfferTrade = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dsTenderOfferTrade: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwTOTrade: TcxGridDBBandedTableView;
    gvwTOTradeTOID: TcxGridDBBandedColumn;
    gvwTOTradeTOTRID: TcxGridDBBandedColumn;
    gvwTOTradeTOCONNO: TcxGridDBBandedColumn;
    gvwTOTradeTRANSDATE: TcxGridDBBandedColumn;
    gvwTOTradeIS_EXTEND: TcxGridDBBandedColumn;
    gvwTOTradeACCID: TcxGridDBBandedColumn;
    gvwTOTradeACCNO: TcxGridDBBandedColumn;
    gvwTOTradeQTY: TcxGridDBBandedColumn;
    gvwTOTradeVALUE: TcxGridDBBandedColumn;
    gvwTOTradeCOM_CALCMODE: TcxGridDBBandedColumn;
    gvwTOTradeCOMM_AMT: TcxGridDBBandedColumn;
    gvwTOTradeVATAMT: TcxGridDBBandedColumn;
    gvwTOTradeLEVY_AMT: TcxGridDBBandedColumn;
    gvwTOTradeNETAMOUNT: TcxGridDBBandedColumn;
    gvwTOTradePAID_STAT: TcxGridDBBandedColumn;
    dsSubject: TDataSource;
    dxLayoutControl2Group4: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl2Item7: TdxLayoutItem;
    actList: TActionList;
    actNew: TNAction;
    cxButton3: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    actEdit: TNAction;
    cxButton5: TcxButton;
    dxLayoutControl2Item8: TdxLayoutItem;
    actDelete: TNAction;
    dxLayoutControl2Group10: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl2Item15: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl2Item16: TdxLayoutItem;
    dxLayoutControl2Group11: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
    dtTransDate: TcxLabel;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxDBLabel7: TcxDBLabel;
    dxLayoutControl2Item17: TdxLayoutItem;
    cxDBLabel8: TcxDBLabel;
    dxLayoutControl2Item12: TdxLayoutItem;
    cxDBLabel9: TcxDBLabel;
    dxLayoutControl2Item13: TdxLayoutItem;
    cxDBLabel10: TcxDBLabel;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    actNewList: TNAction;
    cdsTenderOfferTradeTmp: TNClientDataset;
    cdsTenderOfferTradeTmpTRANSDATE: TDateField;
    cdsTenderOfferTradeTmpIS_EXTEND: TStringField;
    cdsTenderOfferTradeTmpACCID: TLargeintField;
    cdsTenderOfferTradeTmpACCNO: TStringField;
    cdsTenderOfferTradeTmpQTY: TFloatField;
    cdsTenderOfferTradeTmpVALUE: TFloatField;
    cdsTenderOfferTradeTmpSelected: TStringField;
    cdsTenderOfferTradeTmpACCNAME: TStringField;
    cdsAccountByStock: TNClientDataset;
    cdsAccountByStockAcqDate: TDateField;
    cdsAccountByStockBranchID: TIntegerField;
    cdsAccountByStockBranchCode: TStringField;
    cdsAccountByStockBranchName: TStringField;
    cdsAccountByStockSalesID: TIntegerField;
    cdsAccountByStockSalesCode: TStringField;
    cdsAccountByStockSalesName: TStringField;
    cdsAccountByStockAccID: TLargeintField;
    cdsAccountByStockAccNo: TStringField;
    cdsAccountByStockAccName: TStringField;
    cdsAccountByStockStockID: TIntegerField;
    cdsAccountByStockStockCode: TStringField;
    cdsAccountByStockStockName: TStringField;
    cdsAccountByStockAvgPrice: TFloatField;
    cdsAccountByStockClosePrice: TFloatField;
    cdsAccountByStockStockOnHand: TFloatField;
    cdsAccountByStockStockOnHold: TFloatField;
    cdsAccountByStockStockOuts: TFloatField;
    cdsAccountByStockStockReceive: TFloatField;
    cdsAccountByStockStockDeliver: TFloatField;
    cdsAccountByStockStockBalance: TFloatField;
    cdsAccountByStockStockBal_Value: TFloatField;
    cdsAccountByStockStockBal_MktValue: TFloatField;
    cdsAccountByStockUnReal_LossProfit: TFloatField;
    cdsAccountByStockLastCP: TDateField;
    cdsAccountByStockInvType: TStringField;
    cdsAccountByStockSELLQTY: TFloatField;
    cdsAccountByStockAV_QTY: TFloatField;
    cdsAccountByStockQTY_CORPACT: TFloatField;
    cdsAccountByStockACCTYPE: TStringField;
    cdsAccountByStockHAIRCUTVAL: TFloatField;
    cmbCalcMethod: TcxImageComboBox;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Group6: TdxLayoutGroup;
    cdsAccountByStockISUSEWHT: TStringField;
    cdsTenderOfferTradeTmpISUSEWHT: TStringField;
    gvwTOTradeWHT_AMT: TcxGridDBBandedColumn;
    cxDBLabel11: TcxDBLabel;
    dxLayoutItem1: TdxLayoutItem;
    gvwTOTradeSALESTAX_AMT: TcxGridDBBandedColumn;
    gvwTOTradeSTAT: TcxGridDBBandedColumn;
    gvwTOTradeCLOSED_DATE: TcxGridDBBandedColumn;
    gvwTOTradeCLOSED_SYSDATE: TcxGridDBBandedColumn;
    gvwTOTradeCLOSED_UI: TcxGridDBBandedColumn;
    gvwTOTradeREVERSED_DATE: TcxGridDBBandedColumn;
    gvwTOTradeREVERSED_SYSDATE: TcxGridDBBandedColumn;
    gvwTOTradeREVERSED_UI: TcxGridDBBandedColumn;
    gvwTOTradeCANCELED_DATE: TcxGridDBBandedColumn;
    gvwTOTradeCANCELED_SYSDATE: TcxGridDBBandedColumn;
    gvwTOTradeCANCELED_UI: TcxGridDBBandedColumn;
    gvwTOTradeRECV_STAT: TcxGridDBBandedColumn;
    gvwTOTradeRECV_DATE: TcxGridDBBandedColumn;
    gvwTOTradePAID_SYSDATE: TcxGridDBBandedColumn;
    gvwTOTradePAID_DATE: TcxGridDBBandedColumn;
    gvwTOTradePAID_UI: TcxGridDBBandedColumn;
    gvwTOTradeJRNID: TcxGridDBBandedColumn;
    gvwTOTradeCOID: TcxGridDBBandedColumn;
    gvwTOTradeSOID: TcxGridDBBandedColumn;
    gvwTOTradeMODDA: TcxGridDBBandedColumn;
    gvwTOTradeMODUI: TcxGridDBBandedColumn;
    gvwTOTradeAPPDA: TcxGridDBBandedColumn;
    gvwTOTradeAPPUI: TcxGridDBBandedColumn;
    gvwTOTradeUNDER4Y: TcxGridDBBandedColumn;
    gvwTOTradeUNDER4YDA: TcxGridDBBandedColumn;
    gvwTOTradeNOTES4Y: TcxGridDBBandedColumn;
    gvwTOTradeISDEL: TcxGridDBBandedColumn;
    gvwTOTradeID: TcxGridDBBandedColumn;
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gvwTOTradeACCIDPropertiesCloseUp(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actNewListExecute(Sender: TObject);
  private
    FFormBrowse: TfrmTenderOfferList;
    { Private declarations }
  public
    { Public declarations }
    property FormBrowse: TfrmTenderOfferList read FFormBrowse write FFormBrowse;
  end;

var
  frmTenderOfferTrade: TfrmTenderOfferTrade;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormTenderOfferTrades, FormAccountByStockList;

procedure TfrmTenderOfferTrade.actDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Delete Tender Offer Trade', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    FFormBrowse.cdsTenderOfferTrade.Delete;
end;

procedure TfrmTenderOfferTrade.actEditExecute(Sender: TObject);
var
  oForm : TfrmTenderOfferTrades;
  dtTransDate: TDateTime;
begin
  try
    dtTransDate := dmGlobal.RemoteServer.GetTransDate;

    FFormBrowse.cdsTenderOfferTrade.Edit;
    oForm := TfrmTenderOfferTrades.Create(nil);
    oForm.FormBrowse := FFormBrowse;
    oForm.Comission  := FFormBrowse.cdsTenderOfferListCOMISSION_PERCENT.AsFloat;
    oForm.Levy       := FFormBrowse.cdsTenderOfferListLEVY_PERCENT.AsFloat;
    oForm.VAT        := FFormBrowse.cdsTenderOfferListVAT_PERCENT.AsFloat;
    oForm.Price      := FFormBrowse.cdsTenderOfferListQUOTATION_PRICE.AsFloat;
    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmTenderOfferTrade.actNewExecute(Sender: TObject);
var
  oForm : TfrmTenderOfferTrades;
  dtTransDate: TDateTime;
begin
  try
    dtTransDate := dmGlobal.RemoteServer.GetTransDate;

    with FFormBrowse do
    begin
      cdsTenderOfferTrade.Append;
      cdsTenderOfferTradeTOID.AsLargeInt      := cdsTenderOfferListTOID.AsLargeInt;
      cdsTenderOfferTradeTOTRID.AsLargeInt    := dmGlobal.RemoteServer.GetSeq('TBL_B_TENDEROFFER_TRADE');
      cdsTenderOfferTradeTRANSDATE.AsDateTime := dtTransDate;
      cdsTenderOfferTradeTOCONNO.AsString     := dmGlobal.RemoteServer.GetVoucherNo(dtTransDate, 'TT', 'TBL_TENDEROFFER_TRADE');
    end;

    oForm := TfrmTenderOfferTrades.Create(nil);
    oForm.FormBrowse := FFormBrowse;
    oForm.Comission  := FFormBrowse.cdsTenderOfferListCOMISSION_PERCENT.AsFloat;
    oForm.Levy       := FFormBrowse.cdsTenderOfferListLEVY_PERCENT.AsFloat;
    oForm.VAT        := FFormBrowse.cdsTenderOfferListVAT_PERCENT.AsFloat;
    oForm.Price      := FFormBrowse.cdsTenderOfferListQUOTATION_PRICE.AsFloat;
    oForm.WHT        := FFormBrowse.cdsTenderOfferListWHT_PERCENT.AsFloat;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmTenderOfferTrade.actNewListExecute(Sender: TObject);
var
  dTransDate: TDateTime;
  dBrokerFee: Double;
  dComission: Double;
  dLevy: Double;
  dVAT: Double;
  dPrice: Double;
  dWHT: Double;
  dSalesTax: Double;

begin
  dTransDate := dmGlobal.RemoteServer.GetTransDate;

  cdsTenderOfferTradeTmp.Close;
  cdsTenderOfferTradeTmp.CreateDataSet;

  cdsAccountByStock.Close;
  cdsAccountByStock.Params[0].AsDateTime := dTransDate;
  cdsAccountByStock.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('STOCKID').AsInteger;
  cdsAccountByStock.Open;

  cdsAccountByStock.First;
  while not cdsAccountByStock.Eof do
  begin
    cdsTenderOfferTradeTmp.Append;
    cdsTenderOfferTradeTmpTRANSDATE.AsDateTime := dTransDate;
    cdsTenderOfferTradeTmpACCID.AsLargeInt     := cdsAccountByStockAccID.AsLargeInt;
    cdsTenderOfferTradeTmpACCNO.AsString       := cdsAccountByStockAccNo.AsString;
    cdsTenderOfferTradeTmpACCNAME.AsString     := cdsAccountByStockAccName.AsString;
    cdsTenderOfferTradeTmpQTY.AsFloat          := cdsAccountByStockStockOnHand.AsFloat;
    cdsTenderOfferTradeTmpISUSEWHT.AsString    := cdsAccountByStockISUSEWHT.AsString;
    cdsTenderOfferTradeTmp.Post;

    cdsAccountByStock.Next;
  end;
  cdsAccountByStock.Close;

  if frmAccountByStockList.Run = mrOk then
  begin
    dComission := FFormBrowse.cdsTenderOfferListCOMISSION_PERCENT.AsFloat;
    dLevy      := FFormBrowse.cdsTenderOfferListLEVY_PERCENT.AsFloat;
    dVAT       := FFormBrowse.cdsTenderOfferListVAT_PERCENT.AsFloat;
    dPrice     := FFormBrowse.cdsTenderOfferListQUOTATION_PRICE.AsFloat;
    dWHT       := FFormBrowse.cdsTenderOfferListWHT_PERCENT.AsFloat;
    dSalesTax  := FFormBrowse.cdsTenderOfferListSALESTAX_PERCENT.AsFloat;

    if cmbCalcMethod.EditValue = 'AI' then
      dBrokerFee := ((dComission/100) - (dLevy/100)) * (100 / (100 + dVAT))
    else if cmbCalcMethod.EditValue = 'CO' then
      dBrokerFee := (dComission/100) * (100 / (100 + dVAT))
    else if cmbCalcMethod.EditValue = 'CV' then
      dBrokerFee := (dComission/100);


    cdsTenderOfferTradeTmp.First;
    while not cdsTenderOfferTradeTmp.Eof do
    begin
      if cdsTenderOfferTradeTmpSelected.AsString = '1' then
      begin
        with FFormBrowse do
        begin
          cdsTenderOfferTrade.Append;
          cdsTenderOfferTradeTOID.AsLargeInt       := cdsTenderOfferListTOID.AsLargeInt;
          cdsTenderOfferTradeTOTRID.AsLargeInt     := dmGlobal.RemoteServer.GetSeq('TBL_B_TENDEROFFER_TRADE');
          cdsTenderOfferTradeTRANSDATE.AsDateTime  := dTransDate;
          cdsTenderOfferTradeTOCONNO.AsString      := dmGlobal.RemoteServer.GetVoucherNo(dTransDate, 'TT', 'TBL_TENDEROFFER_TRADE');
          cdsTenderOfferTradeIS_EXTEND.AsString    := '0';
          cdsTenderOfferTradeCOM_CALCMODE.AsString := cmbCalcMethod.EditValue;

          cdsTenderOfferTradeACCID.AsLargeInt := cdsTenderOfferTradeTmpACCID.AsLargeInt;
          cdsTenderOfferTradeACCNO.AsString   := cdsTenderOfferTradeTmpACCNO.AsString;
          cdsTenderOfferTradeQTY.AsFloat      := cdsTenderOfferTradeTmpQTY.AsFloat;
          cdsTenderOfferTradeVALUE.AsFloat    := FFormBrowse.cdsTenderOfferListQUOTATION_PRICE.AsFloat * cdsTenderOfferTradeQTY.AsFloat;

          cdsTenderOfferTradeCOMM_AMT.AsFloat  := Round(dBrokerFee * cdsTenderOfferTradeVALUE.AsFloat);
          cdsTenderOfferTradeLEVY_AMT.AsFloat  := Round(cdsTenderOfferTradeVALUE.AsFloat * dLevy / 100);
          cdsTenderOfferTradeVATAMT.AsFloat    := Round(dBrokerFee * cdsTenderOfferTradeVALUE.AsFloat * (dVAT / 100));

          if cdsTenderOfferTradeTmpISUSEWHT.AsString = '1' then
            cdsTenderOfferTradeWHT_AMT.AsFloat := Round(dBrokerFee * cdsTenderOfferTradeVALUE.AsFloat * dWHT / 100)
          else
            cdsTenderOfferTradeWHT_AMT.AsFloat := 0;
          cdsTenderOfferTradeSALESTAX_AMT.AsFloat := cdsTenderOfferTradeVALUE.AsFloat * (dSalesTax / 100);
          cdsTenderOfferTradeNETAMOUNT.AsFloat := cdsTenderOfferTradeVALUE.AsFloat -
                                                  (cdsTenderOfferTradeCOMM_AMT.AsFloat +
                                                  cdsTenderOfferTradeLEVY_AMT.AsFloat +
                                                  cdsTenderOfferTradeVATAMT.AsFloat +
                                                  cdsTenderOfferTradeWHT_AMT.AsFloat +
                                                  cdsTenderOfferTradeSALESTAX_AMT.AsFloat);

        end;
      end;

      cdsTenderOfferTradeTmp.Next;
    end;
  end;
end;

procedure TfrmTenderOfferTrade.cxButton3Click(Sender: TObject);
begin
//  if FFormBrowse.cdsTenderOfferTrade.State in dsEditModes then
    FFormBrowse.cdsTenderOfferTrade.ApplyUpdates(-1);
end;

procedure TfrmTenderOfferTrade.FormShow(Sender: TObject);
begin
  if not FFormBrowse.cdsTenderOfferTrade.IsEmpty then
    dtTransDate.EditValue := FormatDateTime('dd mmm yyyy', FFormBrowse.cdsTenderOfferTradeTRANSDATE.AsDateTime)
  else
    dtTransDate.EditValue := FormatDateTime('dd mmm yyyy', dmGlobal.RemoteServer.GetTransDate);
end;

procedure TfrmTenderOfferTrade.gvwTOTradeACCIDPropertiesCloseUp(
  Sender: TObject);
begin
  if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', gvwTOTradeACCID.EditValue, []) then
    FFormBrowse.cdsTenderOfferTradeACCNO.AsString := dmGlobal.IntDataLookup.cdsLuAccountACCCODE.AsString;
end;

end.
