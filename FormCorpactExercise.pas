unit FormCorpactExercise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxLabel, cxDBLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Datasnap.DBClient, NClientDataset,
  cxDBLookupComboBox, Vcl.ActnList, NDatasetAction, cxCalc, cxCheckBox,
  XLSSheetData5, XLSReadWriteII5, System.Actions, dxLayoutLookAndFeels,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCorpActExercise = class(TfrmEditorData)
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    dsCorpActExer: TDataSource;
    pnlCorpActExer: TPanel;
    cxGrid2: TcxGrid;
    gvwCorpActExer: TcxGridDBBandedTableView;
    gvwCorpActExerCAID: TcxGridDBBandedColumn;
    gvwCorpActExerACCID: TcxGridDBBandedColumn;
    gvwCorpActExerACCNO: TcxGridDBBandedColumn;
    gvwCorpActExerACCNAME: TcxGridDBBandedColumn;
    gvwCorpActExerCA_QTY: TcxGridDBBandedColumn;
    gvwCorpActExerCA_AMT: TcxGridDBBandedColumn;
    gvwCorpActExerEXERQTY: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_AMT: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_PAID: TcxGridDBBandedColumn;
    gvwCorpActExerMODDA: TcxGridDBBandedColumn;
    gvwCorpActExerMODUI: TcxGridDBBandedColumn;
    gvwCorpActExerAPPDA: TcxGridDBBandedColumn;
    gvwCorpActExerAPPUI: TcxGridDBBandedColumn;
    gvwCorpActExerUNDER4Y: TcxGridDBBandedColumn;
    gvwCorpActExerUNDER4YDA: TcxGridDBBandedColumn;
    gvwCorpActExerNOTES4Y: TcxGridDBBandedColumn;
    gvwCorpActExerISDEL: TcxGridDBBandedColumn;
    gvwCorpActExerID: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwEntetlement: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    pmCorpactEnt: TPopupMenu;
    actCorpactExer: TActionList;
    actAddToExercise: TNAction;
    AddToExercise1: TMenuItem;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    actCancel: TNAction;
    pmCorpactExer: TPopupMenu;
    actChangeExerQty: TNAction;
    gvwCorpActExerEXERDATE: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_ID: TcxGridDBBandedColumn;
    actGenerateExcelFile: TNAction;
    OpenDialog: TOpenDialog;
    GenerateFromExcel1: TMenuItem;
    gvwCorpActExerEXER_PAIDAMT: TcxGridDBBandedColumn;
    gvwCorpActExerFINANCE: TcxGridDBBandedColumn;
    gvwCorpActExerWT_INSTRUCTION: TcxGridDBBandedColumn;
    gvwCorpActExerBT_INSTRUCTION: TcxGridDBBandedColumn;
    gvwCorpActExerBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwCorpActExerREQUEST_CASH_LOAN: TcxGridDBBandedColumn;
    gvwCorpActExerCASH_LOAN_APPV: TcxGridDBBandedColumn;
    gvwCorpActExerSTOCK_DIST: TcxGridDBBandedColumn;
    actTakeOverToFinanceSelected: TNAction;
    actTakeOverToFinanceAll: TNAction;
    actGenerateFileVCA: TNAction;
    cdsVCA: TNClientDataset;
    cdsVCAexternalReference: TStringField;
    cdsVCAcorporateActionType: TStringField;
    cdsVCAeffectiveDate: TStringField;
    cdsVCAsecurityCodeType: TStringField;
    cdsVCAsecurityCode: TStringField;
    cdsVCAparticipantCode: TStringField;
    cdsVCAparticipantAccount: TStringField;
    cdsVCAoptionName: TStringField;
    cdsVCAoptionQuantity: TFloatField;
    cdsVCAadditionalProceedRequest: TStringField;
    cdsVCAdescription: TStringField;
    gvwCorpActExerVCA_INSTRUCTION: TcxGridDBBandedColumn;
    gvwCorpActExerMEMBER: TcxGridDBBandedColumn;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBLabel7: TcxDBLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    actAddTradeExercise: TNAction;
    cdsTradeExercise: TNClientDataset;
    cdsTradeExerciseAcqDate: TDateField;
    cdsTradeExerciseBranchID: TIntegerField;
    cdsTradeExerciseBranchCode: TStringField;
    cdsTradeExerciseBranchName: TStringField;
    cdsTradeExerciseSalesID: TIntegerField;
    cdsTradeExerciseSalesCode: TStringField;
    cdsTradeExerciseSalesName: TStringField;
    cdsTradeExerciseAccID: TLargeintField;
    cdsTradeExerciseAccNo: TStringField;
    cdsTradeExerciseAccName: TStringField;
    cdsTradeExerciseStockID: TIntegerField;
    cdsTradeExerciseStockCode: TStringField;
    cdsTradeExerciseStockName: TStringField;
    cdsTradeExerciseAvgPrice: TFloatField;
    cdsTradeExerciseClosePrice: TFloatField;
    cdsTradeExerciseStockOnHand: TFloatField;
    cdsTradeExerciseStockOnHold: TFloatField;
    cdsTradeExerciseStockOuts: TFloatField;
    cdsTradeExerciseStockReceive: TFloatField;
    cdsTradeExerciseStockDeliver: TFloatField;
    cdsTradeExerciseStockBalance: TFloatField;
    cdsTradeExerciseStockBal_Value: TFloatField;
    cdsTradeExerciseStockBal_MktValue: TFloatField;
    cdsTradeExerciseUnReal_LossProfit: TFloatField;
    cdsTradeExerciseLastCP: TDateField;
    cdsTradeExerciseInvType: TStringField;
    cdsTradeExerciseSELLQTY: TFloatField;
    cdsTradeExerciseAV_QTY: TFloatField;
    cdsTradeExerciseQTY_CORPACT: TFloatField;
    cdsTradeExerciseENTTID: TLargeintField;
    cdsTradeExerciseEXERQTY: TFloatField;
    cdsTradeExerciseAVAILQTY: TFloatField;
    cdsStockOnHand: TNClientDataset;
    dsStockOnHand: TDataSource;
    gvwCorpActExerRDN_RECEIVE: TcxGridDBBandedColumn;
    gvwCorpActExerORIQTY: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_NO: TcxGridDBBandedColumn;
    gvwCorpActExerCUSTODY: TcxGridDBBandedColumn;
    gvwCorpActExerSTOCK_DIST_DATE: TcxGridDBBandedColumn;
    gvwCorpActExerBT_DATE: TcxGridDBBandedColumn;
    gvwCorpActExerREMARKS: TcxGridDBBandedColumn;
    gvwCorpActExerCANCEL_EXERPAID: TcxGridDBBandedColumn;
    cdsCorpactExer: TNClientDataset;
    cdsCorpactExerCAID: TLargeintField;
    cdsCorpactExerEXER_ID: TLargeintField;
    cdsCorpactExerACCID: TLargeintField;
    cdsCorpactExerEXER_NO: TStringField;
    cdsCorpactExerEXERDATE: TDateField;
    cdsCorpactExerACCNO: TStringField;
    cdsCorpactExerACCNAME: TStringField;
    cdsCorpactExerCA_QTY: TFloatField;
    cdsCorpactExerCA_AMT: TFloatField;
    cdsCorpactExerEXERQTY: TFloatField;
    cdsCorpactExerEXER_AMT: TFloatField;
    cdsCorpactExerEXER_WARRQTY: TFloatField;
    cdsCorpactExerEXER_PAYDATE: TDateField;
    cdsCorpactExerEXER_PAID: TStringField;
    cdsCorpactExerEXER_PAIDAMT: TFloatField;
    cdsCorpactExerMEMBER: TStringField;
    cdsCorpactExerCUSTODY: TStringField;
    cdsCorpactExerFINANCE: TStringField;
    cdsCorpactExerVCA_INSTRUCTION: TStringField;
    cdsCorpactExerBT_INSTRUCTION: TStringField;
    cdsCorpactExerBANK_INSTRUCTION: TStringField;
    cdsCorpactExerRDN_RECEIVE: TStringField;
    cdsCorpactExerREQUEST_CASH_LOAN: TStringField;
    cdsCorpactExerCASH_LOAN_APPV: TStringField;
    cdsCorpactExerSTOCK_DIST: TStringField;
    cdsCorpactExerSTOCK_DIST_DATE: TDateField;
    cdsCorpactExerBT_DATE: TDateField;
    cdsCorpactExerREMARKS: TStringField;
    cdsCorpactExerCANCEL_EXERPAID: TStringField;
    cdsCorpactExerMODDA: TDateTimeField;
    cdsCorpactExerMODUI: TStringField;
    cdsCorpactExerAPPDA: TDateTimeField;
    cdsCorpactExerAPPUI: TStringField;
    cdsCorpactExerUNDER4Y: TIntegerField;
    cdsCorpactExerUNDER4YDA: TDateTimeField;
    cdsCorpactExerNOTES4Y: TStringField;
    cdsCorpactExerISDEL: TIntegerField;
    cdsCorpactExerID: TLargeintField;
    cdsCorpactExerORIQTY: TFloatField;
    cdsStockOnHandACCID: TLargeintField;
    cdsStockOnHandACCNO: TStringField;
    cdsStockOnHandACCNAME: TStringField;
    cdsStockOnHandStockOnHand: TFloatField;
    cdsStockOnHandAV_QTY: TFloatField;
    cdsStockOnHandCA_QTY: TFloatField;
    gvwEntetlementACCID: TcxGridDBBandedColumn;
    gvwEntetlementACCNO: TcxGridDBBandedColumn;
    gvwEntetlementACCNAME: TcxGridDBBandedColumn;
    gvwEntetlementStockOnHand: TcxGridDBBandedColumn;
    gvwEntetlementAV_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_QTY: TcxGridDBBandedColumn;
    cdsStockOnHandAVAIL_CAQTY: TFloatField;
    gvwEntetlementAVAIL_CAQTY: TcxGridDBBandedColumn;
    cdsCorpactExerEXER_PRICE: TFloatField;
    cdsCorpactExerGENERATE_WT: TStringField;
    cdsCorpactExerPOSTED: TStringField;
    cdsCorpactExerINSERT_SYSTEMDATE: TDateField;
    cdsCorpactExerINSERT_DATE: TDateTimeField;
    cdsCorpactExerINSERT_USER: TStringField;
    cdsCorpactExerPOSTED_SYSTEMDATE: TDateField;
    cdsCorpactExerPOSTED_DATE: TDateTimeField;
    cdsCorpactExerPOSTED_USER: TStringField;
    cdsCorpactExerGENERATE_WT_SYSTEMDATE: TDateField;
    cdsCorpactExerGENERATE_WT_DATE: TDateTimeField;
    cdsCorpactExerGENERATE_WT_USER: TStringField;
    cdsCorpactExerREF_EXER_ID: TStringField;
    cdsCorpactExerSUBREK001: TStringField;
    cdsCorpactExerSTAT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actAddToExerciseExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actCancelUpdate(Sender: TObject);
    procedure actChangeExerQtyExecute(Sender: TObject);
    procedure actGenerateExcelFileExecute(Sender: TObject);
    procedure actTakeOverToFinanceSelectedExecute(Sender: TObject);
    procedure actTakeOverToFinanceAllExecute(Sender: TObject);
    procedure actAddToExerciseUpdate(Sender: TObject);
    procedure actAddTradeExerciseExecute(Sender: TObject);
    procedure gvwCorpActExerCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsCorpactExerAfterPost(DataSet: TDataSet);
    procedure cdsCorpactExerAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FTransDate: TDateTime;
  public
    { Public declarations }
  end;

var
  frmCorpActExercise: TfrmCorpActExercise;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactList, FormCorpactTradeExer;

procedure TfrmCorpActExercise.actAddToExerciseExecute(Sender: TObject);
var
  dAmount, dPrice : Double;
  i, iAccID: Integer;
  dQty: Double;
  sQty: string;
  sSubRek001: string;
begin
  inherited;
  if ((dsSubject.DataSet.FieldByName('RI_STR_EXERDATE').AsDateTime <= FTransDate) and (dsSubject.DataSet.FieldByName('RI_END_EXERDATE').AsDateTime >= FTransDate)) or
    ((dsSubject.DataSet.FieldByName('WR_STR_EXERDATE').AsDateTime <= FTransDate) and (dsSubject.DataSet.FieldByName('WR_END_EXERDATE').AsDateTime >= FTransDate)) then
  begin
    for i := 0 to gvwEntetlement.DataController.Controller.SelectedRecordCount -1 do
    begin
      if gvwEntetlement.DataController.Controller.SelectedRecordCount = 1 then
      begin
        sQty := gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementAVAIL_CAQTY.Index];
        if InputQuery('Insert Corpact Qty', 'Insert Corpact Qty ', sQty) then
        begin
          dQty := StrToFloatDef(sQty, 0);
          if StrToFloat(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementAVAIL_CAQTY.Index]) < dQty then
          begin
            MessageDlg('Can not insert value bigger than quantity', mtError, [mbOk], 0);
            dQty := 0;
          end;
        end
        else
          dQty := 0;
      end
      else
        dQty := StrToFloat(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementAVAIL_CAQTY.Index]);

      if dQty > 0 then
      begin
        iAccID := StrToInt(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementACCID.Index]);

        with dmGlobal.IntDataLookup do
        begin
          if not cdsLuAccountCustody.Active then
            cdsLuAccountCustody.Open;

          if cdsLuAccountCustody.Locate('ACCID', iAccID, []) then
            sSubRek001 := cdsLuAccountCustodyCUSTODYACCNO.AsString;
        end;

        if (dsSubject.DataSet.FieldByName('RI_STR_EXERDATE').AsDateTime <= FTransDate) and (dsSubject.DataSet.FieldByName('RI_END_EXERDATE').AsDateTime >= FTransDate) then
          dPrice := dsSubject.DataSet.FieldByName('EXER_PRICE').AsFloat
        else if (dsSubject.DataSet.FieldByName('WR_STR_EXERDATE').AsDateTime <= FTransDate) and (dsSubject.DataSet.FieldByName('WR_END_EXERDATE').AsDateTime >= FTransDate) then
          dPrice := dsSubject.DataSet.FieldByName('WR_PRICE').AsFloat;

        cdsCorpActExer.Append;
        cdsCorpactExerCAID.AsInteger      := dsSubject.DataSet.FieldByName('CAID').AsInteger;
        cdsCorpactExerACCID.AsInteger     := iAccID; //cdsCorpActEntACCID.AsInteger;
        cdsCorpactExerEXERDATE.AsDateTime := FTransDate;
        cdsCorpactExerEXER_ID.AsLargeInt  := dmGlobal.RemoteServer.GetSeq('TBL_B_CORPACT_EXER');
        cdsCorpactExerACCNO.AsString      := gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementACCNO.Index]; //cdsCorpActEntACCNO.AsString;
        cdsCorpactExerACCNAME.AsString    := gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementACCNAME.Index]; //cdsCorpActEntACCNAME.AsString;
        cdsCorpactExerCA_QTY.AsFloat      := StrToFloat(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementAVAIL_CAQTY.Index]); //cdsCorpActEntCA_QTY.AsFloat;
        cdsCorpactExerEXERQTY.AsFloat     := dQty;
        cdsCorpactExerEXER_AMT.AsFloat    := dQty * dPrice;
        cdsCorpactExerMEMBER.AsString     := '1';
        cdsCorpactExerORIQTY.AsFloat      := dQty;
        cdsCorpactExerEXER_NO.AsString    := dmGlobal.RemoteServer.GetVoucherNo(FTransDate, 'EX', 'TBL_CORPACT_EXER');

        cdsCorpactExerINSERT_SYSTEMDATE.AsDateTime := FTransDate;
        cdsCorpactExerINSERT_DATE.AsDateTime       := Now;
        cdsCorpactExerINSERT_USER.AsString         := dmGlobal.UserID;

        cdsCorpactExerSTAT.AsString       := '0';
        cdsCorpactExerSUBREK001.AsString  := sSubRek001;
        cdsCorpActExer.Post;
      end;
    end;
    cdscorpactExer.ApplyUpdates(-1);
    cdsStockOnHand.Refresh;
  end
  else
    MessageDlg('Out of exercise periode date, can not continue process...', mtError, [mbOk], 0);
end;

procedure TfrmCorpActExercise.actAddToExerciseUpdate(Sender: TObject);
begin
  inherited;
//  actAddToExercise.Enabled := cdsCorpActEntAVAIL_EXER_QTY.AsFloat > 0;
  actAddToExercise.Enabled := cdsStockOnHandAVAIL_CAQTY.AsFloat > 0;
end;

procedure TfrmCorpActExercise.actAddTradeExerciseExecute(Sender: TObject);
var
  oForm: TForm;
  i: Integer;
begin
  inherited;
  cdsTradeExercise.Close;
  cdsTradeExercise.Params[0].AsDateTime := FTransDate;
  cdsTradeExercise.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('RIGHTID').AsInteger;
  cdsTradeExercise.Open;

  oForm := TfrmCorpactTradeExercise.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    with TfrmCorpactTradeExercise(oForm) do
    begin
      for i := 0 to gvwTradeExercise.Controller.SelectedRowCount -1 do
      begin
        cdsCorpActExer.Append;
        cdsCorpActExerACCID.AsInteger     := dsSubject.DataSet.FieldByName('CAID').AsInteger;
        cdsCorpActExerEXERDATE.AsDateTime := FTransDate;
        cdsCorpActExerEXER_ID.AsLargeInt  := dmGlobal.RemoteServer.GetSeq('B_CORPACT_EXER');
        cdsCorpActExerACCID.AsInteger     := StrToInt(gvwTradeExercise.Controller.SelectedRows[i].Values[gvwTradeExerciseAccID.Index]);
        cdsCorpActExerACCNO.AsString      := gvwTradeExercise.Controller.SelectedRows[i].Values[gvwTradeExerciseAccNo.Index];
        cdsCorpActExerACCNAME.AsString    := gvwTradeExercise.Controller.SelectedRows[i].Values[gvwTradeExerciseAccName.Index];
        cdsCorpActExerCA_QTY.AsFloat      := 0;
        cdsCorpActExerEXERQTY.AsFloat     := StrToFloat(gvwTradeExercise.Controller.SelectedRows[i].Values[gvwTradeExerciseAVAILQTY.Index]);
        cdsCorpActExerEXER_AMT.AsFloat    := StrToFloat(gvwTradeExercise.Controller.SelectedRows[i].Values[gvwTradeExerciseAVAILQTY.Index]) *
                                                                    dsSubject.DataSet.FieldByName('EXER_PRICE').AsFloat;
        cdsCorpActExerEXER_NO.AsString    := dmGlobal.RemoteServer.GetVoucherNo(FTransDate, 'EX', 'TBL_CORPACT_EXER');
        cdsCorpActExer.Post;
      end;
    end;
  end;

end;

procedure TfrmCorpActExercise.actCancelExecute(Sender: TObject);
begin
  inherited;
//  cdsCorpActExer.Delete;
  cdsCorpactExer.Edit;
  cdsCorpactExerSTAT.AsString := '3';
  cdsCorpactExer.Post;

  cdsStockOnHand.Refresh;
end;

procedure TfrmCorpActExercise.actCancelUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := dsCorpActExer.DataSet.FieldByName('BANK_INSTRUCTION').AsString <> '1';
end;

procedure TfrmCorpActExercise.actChangeExerQtyExecute(Sender: TObject);
var
  dNewExerQty, dOldExerQty, dOriQty: Double;
  sAccID: string;
begin
  inherited;
  if gvwCorpActExer.Controller.SelectedRecords[0].Values[gvwCorpActExerEXERDATE.Index] = FTransDate then
  begin
    dOldExerQty := dsCorpActExer.DataSet.FieldByName('EXERQTY').AsFloat;
    dNewExerQty := StrToFloatDef(InputBox('New Exercise Qty', 'Exercise Qty',FloatToStr(dsCorpActExer.DataSet.FieldByName('EXERQTY').Value)), 0);
    sAccID      := dsCorpActExer.DataSet.FieldByName('ACCID').AsString;

    if dsCorpActExer.DataSet.FieldByName('ORIQTY').AsFloat = 0 then
      dOriQty := dsCorpActExer.DataSet.FieldByName('EXERQTY').AsFloat
    else
      dOriQty := dsCorpActExer.DataSet.FieldByName('ORIQTY').AsFloat;

    if dNewExerQty <= dOriQty then
    begin
      cdsCorpActExer.Edit;
      cdsCorpActExerEXERQTY.AsFloat  := dNewExerQty;
      cdsCorpActExerEXER_AMT.AsFloat := dNewExerQty * dsSubject.DataSet.FieldByName('EXER_PRICE').AsFloat;
      cdsCorpActExer.Post;
    end
    else
      ShowMessage('New edited exercise can not bigger than exercise qty');
  end
  else
    ShowMessage('Can be updated with same date');

  cdsStockOnHand.Refresh;
end;

procedure TfrmCorpActExercise.actGenerateExcelFileExecute(Sender: TObject);
var
  sFileName: string;
  oXLS : TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  i: Integer;
begin
  inherited;
  if OpenDialog.Execute(Application.Handle) then
    sFileName := OpenDialog.FileName;

  if sFileName = '' then
  begin
    MessageDlg('There is no file can be proceed...', mtError, [mbOK], 0);
    Exit;
  end;

  oXLS          := TXLSReadWriteII5.Create(self);
  oXLS.Filename := sFileName;
  oXLS.Read;

  oSheet := oXLS.Sheets[0];

  for i := 1 to oSheet.LastRow do
  begin
    if not (cdsStockOnHand.Locate('ACCNO', oSheet.AsString[0, i], [])) then
      Continue;

    if (cdsStockOnHandAVAIL_CAQTY.AsFloat >= oSheet.AsFloat[1, i]) then
    begin
      cdsCorpActExer.Append;
      cdsCorpActExerACCID.AsInteger     := cdsStockOnHandACCID.AsInteger;
      cdsCorpActExerEXERDATE.AsDateTime := FTransDate;
      cdsCorpActExerEXER_ID.AsLargeInt  := dmGlobal.RemoteServer.GetSeq('B_CORPACT_EXER');
      cdsCorpActExerACCNO.AsString      := oSheet.AsString[0, i];
      cdsCorpActExerACCNAME.AsString    := cdsStockOnHandACCNAME.AsString;;
      cdsCorpActExerCA_QTY.AsFloat      := oSheet.AsFloat[1, i];
      cdsCorpActExerEXERQTY.AsFloat     := oSheet.AsFloat[1, i];
      cdsCorpActExerEXER_AMT.AsFloat    := oSheet.AsFloat[1, i] * dsSubject.DataSet.FieldByName('EXER_PRICE').AsFloat;
      cdsCorpActExer.Post;

      cdsStockOnHand.Refresh;
    end;
  end;

  MessageDlg('Import entitlement data has been done...', mtInformation, [mbOk], 0);
end;

procedure TfrmCorpActExercise.actTakeOverToFinanceAllExecute(
  Sender: TObject);
var
  sExerID: string;
  iCAID: Int64;
  dTradeDate: TDateTime;
  sMsg : string;
begin
  inherited;
  if MessageDlg('Take over to finance?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCorpActExer.DataSet.DisableControls;
    dsCorpActExer.DataSet.First;

    iCAID      := StrToInt64(dsCorpActExer.DataSet.FieldByName('CAID').AsString);
    dTradeDate := FTransDate;
    sExerID    := '';

    while not dsCorpActExer.DataSet.Eof do
    begin
      if dsCorpActExer.DataSet.FieldByName('FINANCE').AsString <> '1' then
      begin
        sExerID := sExerID+ dsCorpActExer.DataSet.FieldByName('EXER_ID').AsString +';';

        dsCorpActExer.DataSet.Filter   := 'EXER_ID = '+ dsCorpActExer.DataSet.FieldByName('EXER_ID').AsString;
        dsCorpActExer.DataSet.Filtered := True;

        dsCorpActExer.DataSet.Edit;
        dsCorpActExer.DataSet.FieldByName('FINANCE').AsString := '1';
        dsCorpActExer.DataSet.Post;
      end;

      dsCorpActExer.DataSet.Next;
    end;

    dmGlobal.RemoteServer.ExerciseToFinance(iCAID, sExerID, dTradeDate, sMsg);

    dsCorpActExer.DataSet.EnableControls;
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCorpActExercise.actTakeOverToFinanceSelectedExecute(Sender: TObject);
var
  i: Integer;
  sExerID: string;
  iCAID: Int64;
  dTradeDate: TDateTime;
  sMsg: string;
begin
  inherited;
  if MessageDlg('Take over to finance?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCorpActExer.DataSet.DisableControls;
    dsCorpActExer.DataSet.Filtered := False;

    iCAID      := StrToInt64(gvwCorpActExer.Controller.SelectedRows[0].Values[gvwCorpActExerCAID.Index]);
    dTradeDate := FTransDate;
    sExerID    := '';
    for i := 0 to gvwCorpActExer.Controller.SelectedRowCount -1 do
    begin
      if gvwCorpActExer.Controller.SelectedRows[i].Values[gvwCorpActExerFINANCE.Index] <> '1' then
        sExerID := sExerID + IntToStr(gvwCorpActExer.Controller.SelectedRows[i].Values[gvwCorpActExerEXER_ID.Index]) +';';
    end;

    dmGlobal.RemoteServer.ExerciseToFinance(iCAID, sExerID, dTradeDate, sMsg);
    dsCorpActExer.DataSet.EnableControls;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
//    dsCorpActExer.DataSet.Refresh;
  end;
end;

procedure TfrmCorpActExercise.cdsCorpactExerAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsCorpactExer.ApplyUpdates(-1);
end;

procedure TfrmCorpActExercise.cdsCorpactExerAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsCorpactExer.ApplyUpdates(-1);
  cdsCorpactExer.Refresh;
end;

procedure TfrmCorpActExercise.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  cdsCorpactExer.Close;
  cdsCorpactExer.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsCorpactExer.Open;

  cdsStockOnHand.Close;
  cdsStockOnHand.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsStockOnHand.Params[1].AsDate    := dmGlobal.RemoteServer.GetTransDate;
  cdsStockOnHand.Open;
end;

procedure TfrmCorpActExercise.gvwCorpActExerCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwCorpActExerCANCEL_EXERPAID.Index] = '1' then
  begin
    ACanvas.Brush.Color := clRed;
//    ACanvas.Font.Style  := [fsBold];
  end
  else if AViewInfo.GridRecord.Values[gvwCorpActExerBANK_INSTRUCTION.Index] = '1' then
  begin
    ACanvas.Brush.Color := clMoneyGreen;
//    ACanvas.Font.Style  := [fsBold];
  end;
end;

end.
