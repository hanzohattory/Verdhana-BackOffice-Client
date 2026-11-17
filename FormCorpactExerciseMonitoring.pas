unit FormCorpactExerciseMonitoring;

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
  Vcl.ActnList, NDatasetAction, frxClass, frxServerClient, NReportClient,
  cxCheckBox, ShellAPI, ComObj, System.Actions, dxLayoutLookAndFeels,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges;

type
  TfrmCorpActExerciseMonitoring = class(TfrmEditorData)
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    txtCorpActType: TcxLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsCorpActExerMonitoring: TDataSource;
    cdsCorpActExerMonitoring: TNClientDataset;
    pnlCorpActEnt: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    actCorpactExer: TActionList;
    PopupMenu1: TPopupMenu;
    Report: TNClientReportContainer;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl1Item8: TdxLayoutItem;
    dsCorpactExer: TDataSource;
    cxDBLabel7: TcxDBLabel;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBLabel8: TcxDBLabel;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cdsCorpActExerMonitoringCAID: TLargeintField;
    cdsCorpActExerMonitoringEXER_ID: TLargeintField;
    cdsCorpActExerMonitoringACCID: TLargeintField;
    cdsCorpActExerMonitoringEXERDATE: TDateField;
    cdsCorpActExerMonitoringACCNO: TStringField;
    cdsCorpActExerMonitoringACCNAME: TStringField;
    cdsCorpActExerMonitoringCA_QTY: TFloatField;
    cdsCorpActExerMonitoringCA_AMT: TFloatField;
    cdsCorpActExerMonitoringEXERQTY: TFloatField;
    cdsCorpActExerMonitoringEXER_AMT: TFloatField;
    cdsCorpActExerMonitoringEXER_WARRQTY: TFloatField;
    cdsCorpActExerMonitoringEXER_PAYDATE: TDateField;
    cdsCorpActExerMonitoringEXER_PAID: TStringField;
    cdsCorpActExerMonitoringEXER_PAIDAMT: TFloatField;
    cdsCorpActExerMonitoringFINANCE: TStringField;
    cdsCorpActExerMonitoringVCA_INSTRUCTION: TStringField;
    cdsCorpActExerMonitoringBT_INSTRUCTION: TStringField;
    cdsCorpActExerMonitoringBANK_INSTRUCTION: TStringField;
    cdsCorpActExerMonitoringREQUEST_CASH_LOAN: TStringField;
    cdsCorpActExerMonitoringCASH_LOAN_APPV: TStringField;
    cdsCorpActExerMonitoringSTOCK_DIST: TStringField;
    cdsCorpActExerMonitoringCashOnHand: TFloatField;
    gvwMonitoring: TcxGridDBBandedTableView;
    gvwMonitoringCAID: TcxGridDBBandedColumn;
    gvwMonitoringEXER_ID: TcxGridDBBandedColumn;
    gvwMonitoringACCID: TcxGridDBBandedColumn;
    gvwMonitoringEXERDATE: TcxGridDBBandedColumn;
    gvwMonitoringACCNO: TcxGridDBBandedColumn;
    gvwMonitoringACCNAME: TcxGridDBBandedColumn;
    gvwMonitoringCA_QTY: TcxGridDBBandedColumn;
    gvwMonitoringCA_AMT: TcxGridDBBandedColumn;
    gvwMonitoringEXERQTY: TcxGridDBBandedColumn;
    gvwMonitoringEXER_AMT: TcxGridDBBandedColumn;
    gvwMonitoringEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwMonitoringEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwMonitoringEXER_PAID: TcxGridDBBandedColumn;
    gvwMonitoringEXER_PAIDAMT: TcxGridDBBandedColumn;
    gvwMonitoringFINANCE: TcxGridDBBandedColumn;
    gvwMonitoringVCA_INSTRUCTION: TcxGridDBBandedColumn;
    gvwMonitoringBT_INSTRUCTION: TcxGridDBBandedColumn;
    gvwMonitoringBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwMonitoringREQUEST_CASH_LOAN: TcxGridDBBandedColumn;
    gvwMonitoringCASH_LOAN_APPV: TcxGridDBBandedColumn;
    gvwMonitoringSTOCK_DIST: TcxGridDBBandedColumn;
    gvwMonitoringCashOnHand: TcxGridDBBandedColumn;
    actPaidExercise: TNAction;
    NClientDataset1: TNClientDataset;
    cdsCorpactExer: TNClientDataset;
    cdsCorpactExerCAID: TLargeintField;
    cdsCorpactExerEXER_ID: TLargeintField;
    cdsCorpactExerACCID: TLargeintField;
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
    cdsCorpactExerFINANCE: TStringField;
    cdsCorpactExerVCA_INSTRUCTION: TStringField;
    cdsCorpactExerBT_INSTRUCTION: TStringField;
    cdsCorpactExerBANK_INSTRUCTION: TStringField;
    cdsCorpactExerREQUEST_CASH_LOAN: TStringField;
    cdsCorpactExerCASH_LOAN_APPV: TStringField;
    cdsCorpactExerSTOCK_DIST: TStringField;
    cdsCorpactExerMODDA: TDateTimeField;
    cdsCorpactExerMODUI: TStringField;
    cdsCorpactExerAPPDA: TDateTimeField;
    cdsCorpactExerAPPUI: TStringField;
    cdsCorpactExerUNDER4Y: TIntegerField;
    cdsCorpactExerUNDER4YDA: TDateTimeField;
    cdsCorpactExerNOTES4Y: TStringField;
    cdsCorpactExerISDEL: TIntegerField;
    cdsCorpactExerID: TLargeintField;
    PaidExercise1: TMenuItem;
    cdsCorpActExerMonitoringPAYDATE: TDateField;
    cdsCorpActExerMonitoringALLOTMENT_DATE: TDateField;
    actGenerateBTInstruction: TNAction;
    SaveDialog: TSaveDialog;
    cdsExerciseBookTransfer: TNClientDataset;
    cdsExerciseBookTransferexternalReference: TStringField;
    cdsExerciseBookTransferparticipantCode: TStringField;
    cdsExerciseBookTransferparticipantAccount: TStringField;
    cdsExerciseBookTransfercounterpartAccount: TStringField;
    cdsExerciseBookTransfervalueDate: TStringField;
    cdsExerciseBookTransfercurrencyCode: TStringField;
    cdsExerciseBookTransfercashAmount: TFloatField;
    cdsExerciseBookTransferdescription: TStringField;
    actGenerateBTToExcel: TNAction;
    gvwMonitoringPAYDATE: TcxGridDBBandedColumn;
    gvwMonitoringALLOTMENT_DATE: TcxGridDBBandedColumn;
    cdsCorpActExerMonitoringRDN_RECEIVE: TStringField;
    cdsCorpActExerMonitoringMEMBER: TStringField;
    gvwMonitoringRDN_RECEIVE: TcxGridDBBandedColumn;
    gvwMonitoringMEMBER: TcxGridDBBandedColumn;
    actGenerateFileVCA: TNAction;
    cdsVCA: TNClientDataset;
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
    SaveDialog1: TSaveDialog;
    actCorpactDistributionProcess: TNAction;
    CorpactDistributionProcess1: TMenuItem;
    actTakeOverToFinance: TNAction;
    actCancelCorpactDistProcess: TNAction;
    actWithdrawRight: TNAction;
    cdsCorpActExerMonitoringEXER_NO: TStringField;
    cdsCorpActExerMonitoringCUSTODY: TStringField;
    cdsCorpActExerMonitoringSTOCK_DIST_DATE: TDateField;
    gvwMonitoringEXER_NO: TcxGridDBBandedColumn;
    gvwMonitoringCUSTODY: TcxGridDBBandedColumn;
    gvwMonitoringSTOCK_DIST_DATE: TcxGridDBBandedColumn;
    cdsCorpActExerMonitoringBT_DATE: TDateField;
    gvwMonitoringBT_DATE: TcxGridDBBandedColumn;
    cdsCorpActExerMonitoringREMARKS: TStringField;
    gvwMonitoringREMARKS: TcxGridDBBandedColumn;
    cdsVCAexternalReference: TStringField;
    cxDBLabel9: TcxDBLabel;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBLabel10: TcxDBLabel;
    dxLayoutControl1Item12: TdxLayoutItem;
    cdsCorpActExerMonitoringCANCEL_EXERPAID: TStringField;
    gvwMonitoringCANCEL_EXERPAID: TcxGridDBBandedColumn;
    cdsCorpActExerMonitoringStockOnHand: TFloatField;
    gvwMonitoringStockOnHand: TcxGridDBBandedColumn;
    actAmendExercise: TNAction;

    procedure FormShow(Sender: TObject);
    procedure actPaidExerciseExecute(Sender: TObject);
    procedure actPaidExerciseUpdate(Sender: TObject);
    procedure actGenerateBTInstructionExecute(Sender: TObject);
    procedure actGenerateBTToExcelExecute(Sender: TObject);
    procedure actGenerateBTToExcelUpdate(Sender: TObject);
    procedure actGenerateBTInstructionUpdate(Sender: TObject);
    procedure actGenerateFileVCAExecute(Sender: TObject);
    procedure actCorpactDistributionProcessExecute(Sender: TObject);
    procedure actTakeOverToFinanceExecute(Sender: TObject);
    procedure actCancelCorpactDistProcessExecute(Sender: TObject);
    procedure actGenerateFileVCAUpdate(Sender: TObject);
    procedure actCorpactDistributionProcessUpdate(Sender: TObject);
    procedure actWithdrawRightUpdate(Sender: TObject);
    procedure actWithdrawRightExecute(Sender: TObject);
    procedure gvwMonitoringCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actCancelCorpactDistProcessUpdate(Sender: TObject);
    procedure actAmendExerciseUpdate(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;

    procedure GenerateExerciseTransfertoExcel(ACAID: Integer; AExerNo: string; ATransDate: TDateTime);
  public
    { Public declarations }
  end;

var
  frmCorpActExerciseMonitoring: TfrmCorpActExerciseMonitoring;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactList;

procedure TfrmCorpActExerciseMonitoring.actGenerateBTInstructionExecute(
  Sender: TObject);
var
  sExerNo: string;
  dTransDate: TDateTime;
  i: Integer;
  sMsg: string;
begin
  inherited;
  sExerNo    := '';
  dTransDate := dmGlobal.RemoteServer.GetTransDate;

  for i := 0 to gvwMonitoring.Controller.SelectedRecordCount -1 do
    sExerNo := sExerNo + IntToStr(gvwMonitoring.Controller.SelectedRecords[i].Values[gvwMonitoringEXER_ID.Index]) +';';

  if sExerNo <> '' then
  begin
    dmGlobal.RemoteServer.GenerateBookInstructionForExercise(cdsCorpActExerMonitoringCAID.AsLargeInt, sExerNo, dTransDate, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);

    dsCorpActExerMonitoring.DataSet.Refresh;
  end
  else
    MessageDlg('There is no data can be generated', mtError, [mbOk], 0);
end;

procedure TfrmCorpActExerciseMonitoring.actGenerateBTInstructionUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerateBTInstruction.Enabled := (cdsCorpActExerMonitoringBANK_INSTRUCTION.AsString = '1') and
                                      (cdsCorpActExerMonitoringVCA_INSTRUCTION.AsString <> '1') and
                                      (dsSubject.DataSet.FieldByName('RI_STR_EXERDATE').AsDateTime <= FTransDate) and
                                      (dsSubject.DataSet.FieldByName('RI_END_EXERDATE').AsDateTime >= FTransDate) and
                                      (cdsCorpActExerMonitoringCANCEL_EXERPAID.AsString <> '1');
end;

procedure TfrmCorpActExerciseMonitoring.actGenerateBTToExcelExecute(
  Sender: TObject);
var
  i: Integer;
  sExerNo: string;
begin
  inherited;
  sExerNo := '';
  for i := 0 to gvwMonitoring.Controller.SelectedRowCount -1 do
    sExerNo := sExerNo + IntToStr(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringEXER_ID.Index])+';';
  GenerateExerciseTransfertoExcel(cdsCorpActExerMonitoringCAID.AsInteger, sExerNo, dmGlobal.RemoteServer.GetTransDate);
  dsCorpActExerMonitoring.DataSet.Refresh;
end;

procedure TfrmCorpActExerciseMonitoring.actGenerateBTToExcelUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerateBTToExcel.Enabled := gvwMonitoring.Controller.SelectedRecords[0].Values[gvwMonitoringBANK_INSTRUCTION.Index] = '1';
end;

procedure TfrmCorpActExerciseMonitoring.actGenerateFileVCAExecute(
  Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName: string;
  i, j, x, y, z: Integer;
  sExerNo, sMessage: string;
  iCAID: Integer;
begin
  inherited;
  if MessageDlg('Generate File VCA ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    inherited;
    sExerNo := '';
    iCAID   := dsSubject.DataSet.FieldByName('CAID').AsInteger;

    if SaveDialog.Execute(Application.Handle) then
    begin
      sFileName := SaveDialog.FileName;
      if sFileName = '' then
      begin
        MessageDlg('Please write file name to be saved', mtError, [mbOk], 0);
        exit;
      end;
    end;

    for y := 0 to gvwMonitoring.Controller.SelectedRecordCount -1 do
    begin
      sExerNo := sExerNo + IntToStr(gvwMonitoring.Controller.SelectedRecords[y].Values[gvwMonitoringEXER_ID.Index]) + ';';

//      dsCorpactExer.DataSet.Filter   := 'CAID = '+ IntToStr(iCAID) +' and EXER_ID = '+ IntToStr(gvwMonitoring.Controller.SelectedRecords[y].Values[gvwMonitoringEXER_ID.Index]);
//      dsCorpactExer.DataSet.Filtered := True;
//
//      dsCorpActExer.DataSet.Edit;
//      dsCorpActExer.DataSet.FieldByName('VCA_INSTRUCTION').AsString := '1';
//      dsCorpActExer.DataSet.Post;

      cdsCorpactExer.Close;
      cdsCorpactExer.Params[0].AsInteger := iCAID;
      cdsCorpactExer.Params[1].AsInteger := StrToInt(gvwMonitoring.Controller.SelectedRecords[y].Values[gvwMonitoringEXER_ID.Index]);
      cdsCorpactExer.Open;

      cdsCorpactExer.Edit;
      cdsCorpactExerVCA_INSTRUCTION.AsString := '1';
      cdsCorpactExer.Post;
      cdsCorpactExer.ApplyUpdates(-1);

    end;
//    dsCorpactExer.DataSet.Filtered := False;

    cdsVCA.Close;
    cdsVCA.Params[0].AsInteger := iCAID;
    cdsVCA.Params[1].AsString  := sExerNo;
    cdsVCA.Open;

    try
      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := false;
      oExcel.WorkBooks.Add;

      oExcel.WorkBooks[1].WorkSheets[1].Name := sFileName;
      oSheet := oExcel.WorkBooks[1].WorkSheets[sFileName];

      cdsVCA.First;
      x := 1;
      for i := 0 to cdsVCA.FieldCount -1 do
        oSheet.AsString[x, i+1] := cdsVCA.Fields[i].FieldName;

      while not cdsVCA.Eof do
      begin
        Inc(x);

        for i := 0 to cdsVCA.FieldCount -1 do
        begin
          if (cdsVCA.Fields[i].DataType = ftFloat) then
            oSheet.AsFloat[x, i+1] := 0
          else
            oSheet.AsString[x, i+1] := cdsVCA.Fields[i].Value;
        end;

        cdsVCA.Next;
      end;
    finally
      MessageDlg('Generate file VCA has done', mtConfirmation, [mbOk], 0);

      oExcel.Visible := False;
      oExcel.Workbooks[1].SaveAs(sFileName);

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;

      if FileExists(sFileName) then
        ShellExecute(Application.Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
    end;

  end;
  dsCorpActExerMonitoring.DataSet.Refresh;
end;

procedure TfrmCorpActExerciseMonitoring.actGenerateFileVCAUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := gvwMonitoring.Controller.SelectedRecords[0].Values[gvwMonitoringBANK_INSTRUCTION.Index] = '1';;
end;

procedure TfrmCorpActExerciseMonitoring.actPaidExerciseExecute(
  Sender: TObject);
var
  i: Integer;
  sExerID, sExerIDTmp: string;
  dCashOnHand,
  dCashExercise: Double;
  sAccountName: string;
  sContinue: Boolean;
  sMsg: string;
begin
  inherited;
  if MessageDlg('Paid exercise?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsCorpActExerMonitoring.DisableControls;
    sExerID := '';

    if (dsSubject.DataSet.FieldByName('RI_STR_EXERDATE').AsDateTime <= FTransDate) and
       (FTransDate <= dsSubject.DataSet.FieldByName('RI_END_EXERDATE').AsDateTime) then
    begin
      for i := 0 to gvwMonitoring.Controller.SelectedRowCount -1 do
      begin
        if gvwMonitoring.Controller.SelectedRecords[i].Values[gvwMonitoringBANK_INSTRUCTION.Index] <> '1' then
        begin
          dCashOnHand   := StrToFloat(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringCashOnHand.Index]);
          dCashExercise := StrToFloat(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringEXER_AMT.Index]);
          sAccountName  := gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringACCNAME.Index];
          sExerIDTmp    := IntToStr(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringEXER_ID.Index]);

          sContinue := True;
          if dCashOnHand <= dCashExercise then
          begin
  //          if MessageDlg('Cash on hand '+sAccountName+' is lower than exercise, Continue?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
            MessageDlg('Cash on hand '+sAccountName+' is lower than exercise!', mtWarning, [mbOk], 0);
            sContinue := False;
          end;

          if sContinue then
          begin
//            cdsCorpactExer.Close;
//            cdsCorpactExer.Params[0].AsInteger := StrToInt(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringCAID.Index]);
//            cdsCorpactExer.Params[1].AsInteger := StrToInt(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringEXER_ID.Index]);
//            cdsCorpActExer.Open;

//            sExerID := sExerID + cdsCorpactExerEXER_ID.AsString + ';';
            sExerID := sExerID + sExerIDTmp + ';';

//            cdsCorpactExer.ApplyUpdates(-1);
          end;
        end;
      end;

      if sExerID <> '' then
      begin
        dmGlobal.RemoteServer.GenerateBankInstructionForExercise(dsSubject.DataSet.FieldByName('CAID').AsLargeInt, sExerID, dmGlobal.RemoteServer.GetTransDate, sMsg);
        MessageDlg(sMsg, mtInformation, [mbOk], 0);
      end;
    end
    else
      MessageDlg('Can not continue process paid, Payment date has been expired', mtError, [mbOk], 0);

    cdsCorpActExerMonitoring.EnableControls;
    if sContinue then
      cdsCorpActExerMonitoring.Refresh;
  end;
end;

procedure TfrmCorpActExerciseMonitoring.actPaidExerciseUpdate(
  Sender: TObject);
var
  oDataSet: TDataSet;
  dTradeDate: TDateTime;
begin
  inherited;
  oDataSet   := dsSubject.DataSet;
  dTradeDate := dmGlobal.RemoteServer.GetTransDate;

  TAction(Sender).Enabled := (gvwMonitoring.Controller.SelectedRecords[0].Values[gvwMonitoringBANK_INSTRUCTION.Index] <> '1') and
    (oDataSet.FieldByName('RI_STR_EXERDATE').AsDateTime <= dTradeDate) and (oDataSet.FieldByName('RI_END_EXERDATE').AsDateTime >= dTradeDate);
end;

procedure TfrmCorpActExerciseMonitoring.actTakeOverToFinanceExecute(
  Sender: TObject);
var
  i: Integer;
  iCAID: Int64;
  sExerID: string;
  dTradeDate: TDateTime;
  sMsg: string;
begin
  inherited;
  if MessageDlg('Finance checking?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCorpActExer.DataSet.DisableControls;
    dsCorpActExer.DataSet.Filtered := False;

    iCAID      := dsSubject.DataSet.FieldByName('CAID').AsLargeInt;
    dTradeDate := dmGlobal.RemoteServer.GetTransDate;
    sExerID    := '';
    for i := 0 to gvwMonitoring.Controller.SelectedRowCount -1 do
    begin
      if gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringFINANCE.Index] <> '1' then
      begin
        sExerID := sExerID + IntToStr(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringEXER_ID.Index]);

        if i < gvwMonitoring.Controller.SelectedRowCount -1 then
          sExerID := sExerID + ';';
      end;
    end;

    if sExerID <> '' then
      dmGlobal.RemoteServer.ExerciseToFinance(iCAID, sExerID, dTradeDate, sMsg);
    dsCorpActExer.DataSet.EnableControls;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
    dsCorpActExerMonitoring.DataSet.Refresh;
  end;
end;

procedure TfrmCorpActExerciseMonitoring.actWithdrawRightExecute(
  Sender: TObject);
var
  i: Integer;
  sExerNo, sMessage: string;
begin
  inherited;

  sExerNo := '';

  for i := 0 to gvwMonitoring.Controller.SelectedRecordCount -1 do
    sExerNo := sExerNo + IntToStr(gvwMonitoring.Controller.SelectedRecords[i].Values[gvwMonitoringEXER_ID.Index]) +';';
  dmGlobal.RemoteServer.ExerciseRightProcess(dsSubject.DataSet.FieldByName('CAID').AsLargeInt, sExerNo, dmGlobal.RemoteServer.GetTransDate, sMessage);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
  cdsCorpActExerMonitoring.Refresh;
end;

procedure TfrmCorpActExerciseMonitoring.actWithdrawRightUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := //(cdsCorpActExerMonitoringVCA_INSTRUCTION.AsString = '1') and
//                             (dsSubject.DataSet.FieldByName('RI_STR_EXERDATE').AsDateTime <= FTransDate) and
//                             (dsSubject.DataSet.FieldByName('RI_END_EXERDATE').AsDateTime >= FTransDate) and
                             (cdsCorpActExerMonitoringCANCEL_EXERPAID.AsString <> '1');
end;

procedure TfrmCorpActExerciseMonitoring.FormShow(Sender: TObject);
begin
  inherited;
  txtCorpActType.Caption := 'HMETD';

  cdsCorpActExerMonitoring.Close;
  cdsCorpActExerMonitoring.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCorpActExerMonitoring.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsCorpActExerMonitoring.Open;

  FTransDate := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmCorpActExerciseMonitoring.GenerateExerciseTransfertoExcel(
  ACAID: Integer; AExerNo: string; ATransDate: TDateTime);
var
  oExcel, oSheet: OleVariant;
  sFileName, sSalesName, sSheetName: string;
  i, j: Integer;
begin
  if SaveDialog.Execute(Application.Handle) then
  begin
    sFileName := SaveDialog.FileName;
    if sFileName = '' then
    begin
      MessageDlg('Please write file name to be saved', mtError, [mbOk], 0);
      exit;
    end;
  end;

  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    cdsExerciseBookTransfer.Close;
    cdsExerciseBookTransfer.Params[0].AsInteger := ACAID;
    cdsExerciseBookTransfer.Params[1].AsString  := AExerNo;
    cdsExerciseBookTransfer.Open;

    if cdsExerciseBookTransfer.IsEmpty then
    begin
      MessageDlg('There is no data can be generated to excel file', mtError, [mbOK], 0);
      Exit;
    end;
    sSheetName := FormatDateTime('yyyymmdd', ATransDate);

    oExcel.WorkBooks[1].WorkSheets[1].Name := sSheetName;
    oSheet := oExcel.WorkBooks[1].WorkSheets[sSheetName];

    cdsExerciseBookTransfer.First;
    for i := 0 to cdsExerciseBookTransfer.FieldCount -1 do
      oSheet.AsString[1, i+1] := cdsExerciseBookTransfer.Fields[i].FieldName;

    j := 1;
    while not cdsExerciseBookTransfer.Eof do
    begin
      Inc(j);

      for i := 0 to cdsExerciseBookTransfer.FieldCount -1 do
      begin
        if (cdsExerciseBookTransfer.Fields[i].DataType = ftFloat) then
          oSheet.AsString[j, i+1] := 0
        else
          oSheet.AsString[j, i+1] := cdsExerciseBookTransfer.Fields[i].Value;
      end;

      cdsExerciseBookTransfer.Next;
    end;
  finally
    MessageDlg('Generate excel file has done...', mtInformation, [mbOk], 0);

    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    if FileExists(sFileName) then
        ShellExecute(Application.Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfrmCorpActExerciseMonitoring.gvwMonitoringCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwMonitoringCANCEL_EXERPAID.Index] = '1' then
    ACanvas.Font.Color := clRed;
end;

procedure TfrmCorpActExerciseMonitoring.actAmendExerciseUpdate(Sender: TObject);
begin
  inherited;
  actAmendExercise.Enabled := gvwMonitoring.Controller.SelectedRecords[0].Values[gvwMonitoringBANK_INSTRUCTION.Index] <> '1';
end;

procedure TfrmCorpActExerciseMonitoring.actCancelCorpactDistProcessExecute(Sender: TObject);
var
  sMessage: WideString;
  iCAID, iExerID: Int64;
  i: Integer;
begin
  inherited;
  iCAID    := dsSubject.DataSet.FieldByName('CAID').AsLargeInt;
  for i := 0 to gvwMonitoring.Controller.SelectedRecordCount -1 do
  begin
    iExerID  := StrToInt64(gvwMonitoring.Controller.SelectedRows[i].Values[gvwMonitoringEXER_ID.Index]);
//    sMessage := dmGlobal.RemoteServer.CorpactExercisesCancel(iCAID, iExerID);
  end;
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
  dsCorpActExerMonitoring.DataSet.Refresh;
end;

procedure TfrmCorpActExerciseMonitoring.actCancelCorpactDistProcessUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (gvwMonitoring.Controller.SelectedRecords[0].Values[gvwMonitoringBANK_INSTRUCTION.Index] = '1') and
    (gvwMonitoring.Controller.SelectedRecords[0].Values[gvwMonitoringSTOCK_DIST.Index] = '1');
end;

procedure TfrmCorpActExerciseMonitoring.actCorpactDistributionProcessExecute(Sender: TObject);
var
  i, v, x: Integer;
  sMessage : string;
begin
  inherited;
  try
    x := 0;
    v := 0;

    if MessageDlg('Process Distribution Corporate Action ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      for i := 0 to gvwMonitoring.Controller.SelectedRecordCount -1 do
      begin
        if dmGlobal.RemoteServer.ExercisesDistributionProcess(cdsCorpActExerMonitoringCAID.AsLargeInt, StrToInt64(gvwMonitoring.Controller.SelectedRecords[i].Values[gvwMonitoringEXER_ID.Index]), sMessage) then
          inc(v)
        else
          inc(x);
      end;

      MessageDlg(IntToStr(v)+' successfully to distributed'+#13+IntToStr(x)+' fail to distributed', mtInformation, [mbOk], 0);
    end;

    cdsCorpActExerMonitoring.Refresh;
  except

  end;
end;

procedure TfrmCorpActExerciseMonitoring.actCorpactDistributionProcessUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := gvwMonitoring.Controller.SelectedRecords[0].Values[gvwMonitoringBANK_INSTRUCTION.Index] = '1';
end;

end.
