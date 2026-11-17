unit FormReconcileDTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList,
  NDatasetAction, Datasnap.DBClient, NClientDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, NActionPermission, Vcl.ExtCtrls,
  cxLabel, cxCurrencyEdit, System.DateUtils, dxBarBuiltInMenu, System.Actions,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmReconcileDTE = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    aclRecDTE: TActionList;
    cxPageControl1: TcxPageControl;
    tabRecDTE: TcxTabSheet;
    grdOrderView: TcxGrid;
    gvwOrderView: TcxGridDBBandedTableView;
    grdOrderViewLevel1: TcxGridLevel;
    grdDTEView: TcxGrid;
    gvwDTEView: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cdsRecDealTicketExec: TNClientDataset;
    cdsRecDTE: TNClientDataset;
    cdsRecDTETRX_CODE: TIntegerField;
    cdsRecDTETRX_POST: TSmallintField;
    cdsRecDTETRX_NOTE: TStringField;
    cdsRecDTETRX_SESS: TLargeintField;
    cdsRecDTETRX_TYPE: TStringField;
    cdsRecDTEBRK_COD2: TStringField;
    cdsRecDTEINV_TYP2: TStringField;
    cdsRecDTEBRK_COD1: TStringField;
    cdsRecDTEINV_TYP1: TStringField;
    cdsRecDTESTK_CODE: TStringField;
    cdsRecDTESTK_VOLM: TLargeintField;
    cdsRecDTESTK_PRIC: TFloatField;
    cdsRecDTETRX_ORD2: TIntegerField;
    cdsRecDTETRX_ORD1: TIntegerField;
    cdsRecDTETRX_REF2: TStringField;
    cdsRecDTETRX_REF1: TStringField;
    cdsRecDTETRX_KOPUR: TFloatField;
    cdsRecDTETRX_TIME: TStringField;
    cdsRecDTETRX_USER: TStringField;
    cdsRecDTETRADING_ID: TStringField;
    cdsRecDealTicketExecDEALTICKETID: TLargeintField;
    cdsRecDealTicketExecSEQID: TIntegerField;
    cdsRecDealTicketExecBOARDID: TLargeintField;
    cdsRecDealTicketExecBROKERCODE: TStringField;
    cdsRecDealTicketExecEXQTY: TLargeintField;
    cdsRecDealTicketExecEXPRICE: TFloatField;
    cdsRecDealTicketExecEXVALUE: TFloatField;
    cdsRecDealTicketExecEXTIME: TTimeField;
    cdsRecDealTicketExecDUECASH: TDateTimeField;
    cdsRecDealTicketExecDUESTOCK: TDateTimeField;
    cdsRecDealTicketExecTRDID: TStringField;
    cdsRecDealTicketExecMODDA: TDateTimeField;
    cdsRecDealTicketExecMODUI: TStringField;
    cdsRecDealTicketExecAPPDA: TDateTimeField;
    cdsRecDealTicketExecAPPUI: TStringField;
    cdsRecDealTicketExecISDEL: TIntegerField;
    cdsRecDealTicketExecID: TLargeintField;
    cdsRecDealTicketExecCPACCID: TIntegerField;
    cdsRecDealTicketExecACCID: TIntegerField;
    cdsRecDealTicketExecACCNO: TStringField;
    cdsRecDealTicketExecACCNAME: TStringField;
    cdsRecDealTicketExecSTOCKID: TLargeintField;
    cdsRecDealTicketExecSTOCKCODE: TStringField;
    cdsRecDealTicketExecSTOCKNAME: TStringField;
    cdsRecDealTicketExecBS: TStringField;
    cdsRecDealTicketExecMARKETCODE: TStringField;
    cdsRecDealTicketExecBOARDCODE: TStringField;
    actViewData: TNAction;
    actCompareData: TNAction;
    dsRecDealTicketExec: TDataSource;
    dsRecDTE: TDataSource;
    gvwOrderViewBROKERCODE: TcxGridDBBandedColumn;
    gvwOrderViewEXQTY: TcxGridDBBandedColumn;
    gvwOrderViewEXPRICE: TcxGridDBBandedColumn;
    gvwOrderViewEXVALUE: TcxGridDBBandedColumn;
    gvwOrderViewEXTIME: TcxGridDBBandedColumn;
    gvwOrderViewDUECASH: TcxGridDBBandedColumn;
    gvwOrderViewDUESTOCK: TcxGridDBBandedColumn;
    gvwOrderViewTRDID: TcxGridDBBandedColumn;
    gvwOrderViewACCNO: TcxGridDBBandedColumn;
    gvwOrderViewACCNAME: TcxGridDBBandedColumn;
    gvwOrderViewSTOCKCODE: TcxGridDBBandedColumn;
    gvwOrderViewSTOCKNAME: TcxGridDBBandedColumn;
    gvwOrderViewBS: TcxGridDBBandedColumn;
    gvwOrderViewMARKETCODE: TcxGridDBBandedColumn;
    gvwOrderViewBOARDCODE: TcxGridDBBandedColumn;
    gvwDTEViewTRX_CODE: TcxGridDBBandedColumn;
    gvwDTEViewTRX_POST: TcxGridDBBandedColumn;
    gvwDTEViewTRX_NOTE: TcxGridDBBandedColumn;
    gvwDTEViewTRX_SESS: TcxGridDBBandedColumn;
    gvwDTEViewTRX_TYPE: TcxGridDBBandedColumn;
    gvwDTEViewBRK_COD2: TcxGridDBBandedColumn;
    gvwDTEViewINV_TYP2: TcxGridDBBandedColumn;
    gvwDTEViewBRK_COD1: TcxGridDBBandedColumn;
    gvwDTEViewINV_TYP1: TcxGridDBBandedColumn;
    gvwDTEViewSTK_CODE: TcxGridDBBandedColumn;
    gvwDTEViewSTK_VOLM: TcxGridDBBandedColumn;
    gvwDTEViewSTK_PRIC: TcxGridDBBandedColumn;
    gvwDTEViewTRX_ORD2: TcxGridDBBandedColumn;
    gvwDTEViewTRX_ORD1: TcxGridDBBandedColumn;
    gvwDTEViewTRX_REF2: TcxGridDBBandedColumn;
    gvwDTEViewTRX_REF1: TcxGridDBBandedColumn;
    gvwDTEViewTRX_KOPUR: TcxGridDBBandedColumn;
    gvwDTEViewTRX_TIME: TcxGridDBBandedColumn;
    gvwDTEViewTRX_USER: TcxGridDBBandedColumn;
    gvwDTEViewTRADING_ID: TcxGridDBBandedColumn;
    cdsRecDealTicketExecREC_STATUS: TStringField;
    gvwOrderViewREC_STATUS: TcxGridDBBandedColumn;
    gvwDTEViewREC_STATUS: TcxGridDBBandedColumn;
    cdsRecDealTicketExecMARKET: TStringField;
    gvwOrderViewMARKET: TcxGridDBBandedColumn;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    actShowHideDesc: TNAction;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    edBuyMarketTotal: TcxTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    edSellMarketTotal: TcxTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    edSellDTETotal: TcxTextEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    edBuyDTETotal: TcxTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    actReconcile: TNAction;
    cdsRecDealExecSum: TNClientDataset;
    cdsRecDTESum: TNClientDataset;
    cdsRecDealExecSumTOTAL: TFloatField;
    cdsRecDTESumTOTAL: TFloatField;
    cdsRecDTEBS: TStringField;
    gvwDTEViewBS: TcxGridDBBandedColumn;
    cdsRecDTEDTEID: TLargeintField;
    cxButton3: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsRecDTEREC_STATUS: TStringField;
    dxLayoutControl2Item5: TdxLayoutItem;
    edBuyOffMarketTotal: TcxTextEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    edSellOffMarketTotal: TcxTextEdit;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    cdsRecDTESTK_VAL: TFloatField;
    gvwDTEViewSTK_VAL: TcxGridDBBandedColumn;
    cdsRecDTETRX_CODE_STR: TStringField;
    cdsRecDTEDIFFERENT: TFloatField;
    gvwDTEViewDIFFERENT: TcxGridDBBandedColumn;
    cxButton4: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    actViewDifference: TNAction;
    cdsCheckDTERecon: TNClientDataset;
    cdsCheckDTEReconDT_STOCKCODE: TStringField;
    cdsCheckDTEReconDT_BOARDCODE: TStringField;
    cdsCheckDTEReconDT_BS: TStringField;
    cdsCheckDTEReconDT_PRICE: TFloatField;
    cdsCheckDTEReconDT_QTY: TFloatField;
    cdsCheckDTEReconDTE_STOCKCODE: TStringField;
    cdsCheckDTEReconDTE_BOARDCODE: TStringField;
    cdsCheckDTEReconDTE_BS: TStringField;
    cdsCheckDTEReconDTE_PRICE: TFloatField;
    cdsCheckDTEReconDTE_QTY: TFloatField;
    cdsCheckDTEReconDIFFERENT: TFloatField;
    dxLayoutControl2Group6: TdxLayoutGroup;
    txtDiffBuy: TcxCurrencyEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    txtDiffSell: TcxCurrencyEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    cdsCheckDTEReconDT_ACCCODE: TStringField;
    cdsCheckDTEReconDT_ACCNAME: TStringField;
    cdsCheckDTEReconDT_VALUE: TFloatField;
    cdsCheckDTEReconDTE_VALUE: TFloatField;
    cdsCheckDTEReconDTE_ACCCODE: TStringField;
    cdsCheckDTEReconDTE_ACCNAME: TStringField;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actCompareDataExecute(Sender: TObject);
    procedure gvwDTEViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actShowHideDescExecute(Sender: TObject);
    procedure gvwOrderViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsRecDTECalcFields(DataSet: TDataSet);
    procedure actViewDifferenceExecute(Sender: TObject);
  private
    { Private declarations }
    BuyMarketTotal, SellMarketTotal,
    BuyOffMarketTotal, SellOffMarketTotal,
    BuyDTETotal, SellDTETotal: Double;
  public
    { Public declarations }
  end;

var
  frmReconcileDTE: TfrmReconcileDTE;

implementation

{$R *.dfm}

uses DataGlobal, FormChackDTERecon;

procedure TfrmReconcileDTE.actCompareDataExecute(Sender: TObject);
var
  t: Cardinal;
  tf: Double;
  sMsg: String;
begin
  inherited;
  cdsRecDTE.DisableControls;
  cdsRecDealTicketExec.DisableControls;

  Try
//    t := GetTickCount;
//
//    cdsRecDTE.First;
//    while not cdsRecDTE.Eof do
//    begin
//      cdsRecDTE.Edit;
//      if cdsRecDealTicketExec.Locate('TRDID;BS', VarArrayOf([cdsRecDTETRX_CODE_STR.AsString, cdsRecDTEBS.AsString]), []) then
//      begin
//        cdsRecDTEREC_STATUS.AsString := 'E';
////        cdsRecDTEDIFFERENT.AsFloat   := cdsRecDealTicketExec
//      end
//      else
//      begin
//        cdsRecDTEREC_STATUS.AsString := 'N';
//      end;
//      cdsRecDTE.Post;
//      cdsRecDTE.Next;
//    end;
//
//    cdsRecDTE.ApplyUpdates(-1);
//
//    tf := (GetTickCount - t) / 1000;
//
//    sMsg := 'Proses 1 by ClientDataset done in ' + FloatToStr(tf) + ' ms.';

    t := GetTickCount;
    if dmGlobal.RemoteServer.ReconcileDTE(dtTransDate.Date) then
    begin
      cdsRecDTE.Refresh;
      tf := (GetTickCount - t) / 1000;
      sMsg := 'Proses Compare Data Done in '  + FloatToStr(tf) + ' seconds.';
      ShowMessage(sMsg);
    end;

  Finally
    cdsRecDealTicketExec.EnableControls;
    cdsRecDTE.EnableControls;
  End;
end;

procedure TfrmReconcileDTE.actShowHideDescExecute(Sender: TObject);
begin
  inherited;
  if actShowHideDesc.Caption = 'Show Description' then
  begin
    dxLayoutControl1.Height := 150;
    dxLayoutControl1Group1.Visible := True;
    actShowHideDesc.Caption := 'Hide Description';
  end
  else if actShowHideDesc.Caption = 'Hide Description' then
  begin
    dxLayoutControl1.Height := 47;
    dxLayoutControl1Group1.Visible := False;
    actShowHideDesc.Caption := 'Show Description';
  end;
  dxLayoutControl1Group4.Visible := dxLayoutControl1Group1.Visible;
end;

procedure TfrmReconcileDTE.actViewDataExecute(Sender: TObject);
var
  BrokerCode: String;
begin
  inherited;
  BuyMarketTotal := 0;
  SellMarketTotal := 0;
  BuyOffMarketTotal := 0;
  SellOffMarketTotal := 0;
  BuyDTETotal := 0;
  SellDTETotal := 0;
  BrokerCode := dmGlobal.RemoteServer.GetBrokerCode;

  cdsRecDealExecSum.Close;
  cdsRecDealExecSum.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDealExecSum.Params[1].AsString := 'B';
  cdsRecDealExecSum.Params[2].AsString := '1';
  cdsRecDealExecSum.Open;

  BuyMarketTotal := cdsRecDealExecSumTOTAL.AsFloat;

  cdsRecDealExecSum.Close;
  cdsRecDealExecSum.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDealExecSum.Params[1].AsString := 'S';
  cdsRecDealExecSum.Params[2].AsString := '1';
  cdsRecDealExecSum.Open;

  SellMarketTotal := cdsRecDealExecSumTOTAL.AsFloat;

  cdsRecDealExecSum.Close;
  cdsRecDealExecSum.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDealExecSum.Params[1].AsString := 'B';
  cdsRecDealExecSum.Params[2].AsString := '0';
  cdsRecDealExecSum.Open;

  BuyOffMarketTotal := cdsRecDealExecSumTOTAL.AsFloat;

  cdsRecDealExecSum.Close;
  cdsRecDealExecSum.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDealExecSum.Params[1].AsString := 'S';
  cdsRecDealExecSum.Params[2].AsString := '0';
  cdsRecDealExecSum.Open;

  SellOffMarketTotal := cdsRecDealExecSumTOTAL.AsFloat;

  cdsRecDealTicketExec.Close;
  cdsRecDealTicketExec.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDealTicketExec.Open;
  gvwOrderView.ApplyBestFit();

//  cdsRecDealTicketExec.DisableControls;
//  cdsRecDealTicketExec.First;
//  while not cdsRecDealTicketExec.Eof do
//  begin
//    if cdsRecDealTicketExecMARKET.AsString = '1' then
//    begin
//      if cdsRecDealTicketExecBS.AsString = 'B' then
//      begin
//        BuyMarketTotal := BuyMarketTotal + cdsRecDealTicketExecEXVALUE.AsFloat;
//      end
//      else if cdsRecDealTicketExecBS.AsString = 'S' then
//      begin
//        SellMarketTotal := SellMarketTotal + cdsRecDealTicketExecEXVALUE.AsFloat;
//      end;
//    end;
//    cdsRecDealTicketExec.Next;
//  end;
//  cdsRecDealTicketExec.First;
//  cdsRecDealTicketExec.EnableControls;

  edBuyMarketTotal.Text := FormatFloat('#,##0', BuyMarketTotal);
  edSellMarketTotal.Text := FormatFloat('#,##0', SellMarketTotal);
  edBuyOffMarketTotal.Text := FormatFloat('#,##0', BuyOffMarketTotal);
  edSellOffMarketTotal.Text := FormatFloat('#,##0', SellOffMarketTotal);

  cdsRecDTESum.Close;
  cdsRecDTESum.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDTESum.Params[1].AsString := 'B';
  cdsRecDTESum.Open;

  BuyDTETotal := cdsRecDTESumTOTAL.AsFloat;

  cdsRecDTESum.Close;
  cdsRecDTESum.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDTESum.Params[1].AsString := 'S';
  cdsRecDTESum.Open;

  SellDTETotal := cdsRecDTESumTOTAL.AsFloat;

  cdsRecDTE.Close;
  cdsRecDTE.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsRecDTE.Open;
  gvwDTEView.ApplyBestFit();

//  cdsRecDTE.DisableControls;
//  cdsRecDTE.First;
//  while not cdsRecDTE.Eof do
//  begin
//    if cdsRecDTEBRK_COD1.AsString = BrokerCode then
//    begin
//      BuyDTETotal := BuyDTETotal + (cdsRecDTESTK_VOLM.AsLargeInt * cdsRecDTESTK_PRIC.AsFloat);
//    end;
//    if cdsRecDTEBRK_COD2.AsString = BrokerCode then
//    begin
//      SellDTETotal := SellDTETotal + (cdsRecDTESTK_VOLM.AsLargeInt * cdsRecDTESTK_PRIC.AsFloat);
//    end;
//    cdsRecDTE.Next;
//  end;
//  cdsRecDTE.First;
//  cdsRecDTE.EnableControls;

  edBuyDTETotal.Text := FormatFloat('#,##0', BuyDTETotal);
  edSellDTETotal.Text := FormatFloat('#,##0', SellDTETotal);

  txtDiffBuy.EditValue  := BuyMarketTotal - BuyDTETotal;
  txtDiffSell.EditValue := SellMarketTotal - SellDTETotal;
end;

procedure TfrmReconcileDTE.actViewDifferenceExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;

  oForm := TfrmCheckDTERecon.Create(Self);

  cdsCheckDTERecon.Close;
  cdsCheckDTERecon.Params[0].AsDateTime := dtTransDate.Date;
  cdsCheckDTERecon.Open;

  oForm.ShowModal;
  oForm.Free;
end;

procedure TfrmReconcileDTE.cdsRecDTECalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsRecDTESTK_VAL.AsFloat       := cdsRecDTESTK_VOLM.AsLargeInt * cdsRecDTESTK_PRIC.AsFloat;
  cdsRecDTETRX_CODE_STR.AsString := FormatFloat('000000000000', cdsRecDTETRX_CODE.AsFloat);
end;

procedure TfrmReconcileDTE.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmReconcileDTE.FormResize(Sender: TObject);
begin
  inherited;
  grdOrderView.Width := tabRecDTE.Width div 2;
end;

procedure TfrmReconcileDTE.gvwDTEViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[gvwDTEViewREC_STATUS.Index] = 'E') then
  begin
    ACanvas.Brush.Color := clLime;
//    ACanvas.Font.Style := [fsBold];
//    ACanvas.Font.Color := clRed;
  end
  else
  begin
    ACanvas.Brush.Color := clWhite;
  end;
end;

procedure TfrmReconcileDTE.gvwOrderViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[gvwOrderViewMARKET.Index] = '1') then
  begin
    ACanvas.Brush.Color := clAqua;
  end
  else
  begin
    ACanvas.Brush.Color := clYellow;
  end;
end;

Initialization
  RegisterClass(TfrmReconcileDTE);

end.
