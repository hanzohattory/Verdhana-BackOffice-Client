unit FormCorpactExerciseWarrant;

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
  XLSSheetData5, XLSReadWriteII5, dxLayoutLookAndFeels, dxDateRanges,
  System.Actions;

type
  TfrmCorpActWarrantExercise = class(TfrmEditorData)
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
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
    dxLayoutControl1Group5: TdxLayoutGroup;
    actCancel: TNAction;
    pmCorpactExer: TPopupMenu;
    MenuItem1: TMenuItem;
    actChangeExerQty: TNAction;
    ChangeExerQty1: TMenuItem;
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
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
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
    gvwEntetlementRPTDATE: TcxGridDBBandedColumn;
    gvwEntetlementAcqDate: TcxGridDBBandedColumn;
    gvwEntetlementBranchID: TcxGridDBBandedColumn;
    gvwEntetlementBranchCode: TcxGridDBBandedColumn;
    gvwEntetlementBranchName: TcxGridDBBandedColumn;
    gvwEntetlementSalesID: TcxGridDBBandedColumn;
    gvwEntetlementSalesCode: TcxGridDBBandedColumn;
    gvwEntetlementSalesName: TcxGridDBBandedColumn;
    gvwEntetlementAccID: TcxGridDBBandedColumn;
    gvwEntetlementAccNo: TcxGridDBBandedColumn;
    gvwEntetlementAccName: TcxGridDBBandedColumn;
    gvwEntetlementStockID: TcxGridDBBandedColumn;
    gvwEntetlementStockCode: TcxGridDBBandedColumn;
    gvwEntetlementStockName: TcxGridDBBandedColumn;
    gvwEntetlementAvgPrice: TcxGridDBBandedColumn;
    gvwEntetlementClosePrice: TcxGridDBBandedColumn;
    gvwEntetlementStockOnHand: TcxGridDBBandedColumn;
    gvwEntetlementStockOnHold: TcxGridDBBandedColumn;
    gvwEntetlementStockOuts: TcxGridDBBandedColumn;
    gvwEntetlementStockReceive: TcxGridDBBandedColumn;
    gvwEntetlementStockDeliver: TcxGridDBBandedColumn;
    gvwEntetlementStockBalance: TcxGridDBBandedColumn;
    gvwEntetlementStockBal_Value: TcxGridDBBandedColumn;
    gvwEntetlementStockBal_MktValue: TcxGridDBBandedColumn;
    gvwEntetlementUnReal_LossProfit: TcxGridDBBandedColumn;
    gvwEntetlementLastCP: TcxGridDBBandedColumn;
    gvwEntetlementInvType: TcxGridDBBandedColumn;
    gvwEntetlementSELLQTY: TcxGridDBBandedColumn;
    gvwEntetlementAV_QTY: TcxGridDBBandedColumn;
    gvwEntetlementQTY_CORPACT: TcxGridDBBandedColumn;
    gvwEntetlementENTTID: TcxGridDBBandedColumn;
    gvwEntetlementACCTYPE: TcxGridDBBandedColumn;
    gvwEntetlementHAIRCUTVAL: TcxGridDBBandedColumn;
    gvwEntetlementACCSOPID: TcxGridDBBandedColumn;
    gvwEntetlementQTY_AVAILABLE: TcxGridDBBandedColumn;
    gvwCorpActExerRDN_RECEIVE: TcxGridDBBandedColumn;
    gvwCorpActExerORIQTY: TcxGridDBBandedColumn;
    gvwCorpActExerEXER_NO: TcxGridDBBandedColumn;
    gvwCorpActExerCUSTODY: TcxGridDBBandedColumn;
    gvwCorpActExerSTOCK_DIST_DATE: TcxGridDBBandedColumn;
    gvwCorpActExerBT_DATE: TcxGridDBBandedColumn;
    gvwCorpActExerREMARKS: TcxGridDBBandedColumn;
    gvwCorpActExerCANCEL_EXERPAID: TcxGridDBBandedColumn;
    cdsStockOnHandQTY_AVAILABLE: TFloatField;
    cdsStockOnHandACCID: TLargeintField;
    cdsStockOnHandACCNO: TStringField;
    cdsStockOnHandACCNAME: TStringField;
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
    cdsStockOnHandQTY_CORPACT: TFloatField;
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
  frmCorpActWarrantExercise: TfrmCorpActWarrantExercise;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactList, FormCorpactTradeExer;

procedure TfrmCorpActWarrantExercise.actAddToExerciseExecute(Sender: TObject);
var
  dAmount : Double;
  i: Integer;
  dQty: Double;
  sQty: string;
begin
  inherited;
  if (dsSubject.DataSet.FieldByName('WR_STR_EXERDATE').AsDateTime <= FTransDate) and (dsSubject.DataSet.FieldByName('WR_END_EXERDATE').AsDateTime >= FTransDate) then
  begin
    for i := 0 to gvwEntetlement.DataController.Controller.SelectedRecordCount -1 do
    begin
      if gvwEntetlement.DataController.Controller.SelectedRecordCount = 1 then
      begin
        sQty := gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementQTY_AVAILABLE.Index];
        if InputQuery('Insert Corpact Qty', 'Insert Corpact Qty ', sQty) then
        begin
          dQty := StrToFloatDef(sQty, 0);
          if StrToFloat(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementQTY_AVAILABLE.Index]) < dQty then
          begin
            MessageDlg('Can not insert value bigger than quantity', mtError, [mbOk], 0);
            dQty := 0;
          end;
        end
        else
          dQty := 0;
      end
      else
        dQty := StrToFloat(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementQTY_AVAILABLE.Index]);

      if dQty > 0 then
      begin
        cdsCorpActExer.Append;
        cdsCorpactExerCAID.AsInteger      := dsSubject.DataSet.FieldByName('CAID').AsInteger;
        cdsCorpactExerACCID.AsInteger     := StrToInt(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementACCID.Index]); //cdsCorpActEntACCID.AsInteger;
        cdsCorpactExerEXERDATE.AsDateTime := FTransDate;
        cdsCorpactExerEXER_ID.AsLargeInt  := dmGlobal.RemoteServer.GetSeq('CA-'+FormatFloat('000000',dsSubject.DataSet.FieldByName('CAID').AsFloat)+'-B_CORPACT_EXER');
        cdsCorpactExerACCNO.AsString      := gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementACCNO.Index]; //cdsCorpActEntACCNO.AsString;
        cdsCorpactExerACCNAME.AsString    := gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementACCNAME.Index]; //cdsCorpActEntACCNAME.AsString;
        cdsCorpactExerCA_QTY.AsFloat      := StrToFloat(gvwEntetlement.DataController.Controller.SelectedRecords[i].Values[gvwEntetlementQTY_CORPACT.Index]); //cdsCorpActEntCA_QTY.AsFloat;
        cdsCorpactExerEXERQTY.AsFloat     := dQty;
        cdsCorpactExerEXER_AMT.AsFloat    := dQty * dsSubject.DataSet.FieldByName('WR_PRICE').AsFloat;
        cdsCorpactExerMEMBER.AsString     := '1';
//        cdsCorpactExerORIQTY.AsFloat      := dQty;
        cdsCorpactExerEXER_NO.AsString    := dmGlobal.RemoteServer.GetVoucherNo(FTransDate, 'EX', 'TBL_CORPACT_EXER');
        cdsCorpActExer.Post;
      end;
    end;
    cdscorpactExer.ApplyUpdates(-1);
    cdsStockOnHand.Refresh;
  end
  else
    MessageDlg('Out of exercise periode date, can not continue process...', mtError, [mbOk], 0);
end;

procedure TfrmCorpActWarrantExercise.actAddToExerciseUpdate(Sender: TObject);
begin
  inherited;
//  actAddToExercise.Enabled := cdsCorpActEntAVAIL_EXER_QTY.AsFloat > 0;
  actAddToExercise.Enabled := cdsStockOnHandQTY_AVAILABLE.AsFloat > 0;
end;

procedure TfrmCorpActWarrantExercise.actAddTradeExerciseExecute(Sender: TObject);
var
  oForm: TForm;
  i: Integer;
begin
  inherited;
  cdsTradeExercise.Close;
  cdsTradeExercise.Params[0].AsDateTime := FTransDate;
  cdsTradeExercise.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('WARRANTID').AsInteger;
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

procedure TfrmCorpActWarrantExercise.actCancelExecute(Sender: TObject);
begin
  inherited;
  cdsCorpActExer.Delete;
  cdsStockOnHand.Refresh;
end;

procedure TfrmCorpActWarrantExercise.actCancelUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := dsCorpActExer.DataSet.FieldByName('BANK_INSTRUCTION').AsString <> '1';
end;

procedure TfrmCorpActWarrantExercise.actChangeExerQtyExecute(Sender: TObject);
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

procedure TfrmCorpActWarrantExercise.actGenerateExcelFileExecute(Sender: TObject);
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

    if (cdsStockOnHandQTY_AVAILABLE.AsFloat >= oSheet.AsFloat[1, i]) then
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

procedure TfrmCorpActWarrantExercise.actTakeOverToFinanceAllExecute(
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

procedure TfrmCorpActWarrantExercise.actTakeOverToFinanceSelectedExecute(Sender: TObject);
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

procedure TfrmCorpActWarrantExercise.cdsCorpactExerAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsCorpactExer.ApplyUpdates(-1);
end;

procedure TfrmCorpActWarrantExercise.cdsCorpactExerAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsCorpactExer.ApplyUpdates(-1);
  cdsCorpactExer.Refresh;
end;

procedure TfrmCorpActWarrantExercise.FormShow(Sender: TObject);
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

procedure TfrmCorpActWarrantExercise.gvwCorpActExerCustomDrawCell(
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
