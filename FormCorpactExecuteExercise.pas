unit FormCorpactExecuteExercise;

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
  cxCheckBox;

type
  TfrmCorpActExecuteExercise = class(TfrmEditorData)
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
    dsCorpActEnt: TDataSource;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsCorpActExer: TNClientDataset;
    pnlCorpActEnt: TPanel;
    cxGrid1: TcxGrid;
    gvwEntetlement: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    Report: TNClientReportContainer;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl1Item8: TdxLayoutItem;
    cdsCorpActExerCAID: TLargeintField;
    cdsCorpActExerEXER_ID: TLargeintField;
    cdsCorpActExerACCID: TLargeintField;
    cdsCorpActExerEXERDATE: TDateField;
    cdsCorpActExerACCNO: TStringField;
    cdsCorpActExerACCNAME: TStringField;
    cdsCorpActExerCA_QTY: TFloatField;
    cdsCorpActExerCA_AMT: TFloatField;
    cdsCorpActExerEXERQTY: TFloatField;
    cdsCorpActExerEXER_AMT: TFloatField;
    cdsCorpActExerEXER_WARRQTY: TFloatField;
    cdsCorpActExerEXER_PAYDATE: TDateField;
    cdsCorpActExerEXER_PAID: TStringField;
    cdsCorpActExerEXER_PAIDAMT: TFloatField;
    gvwEntetlementCAID: TcxGridDBBandedColumn;
    gvwEntetlementEXER_ID: TcxGridDBBandedColumn;
    gvwEntetlementACCID: TcxGridDBBandedColumn;
    gvwEntetlementEXERDATE: TcxGridDBBandedColumn;
    gvwEntetlementACCNO: TcxGridDBBandedColumn;
    gvwEntetlementACCNAME: TcxGridDBBandedColumn;
    gvwEntetlementCA_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_AMT: TcxGridDBBandedColumn;
    gvwEntetlementEXERQTY: TcxGridDBBandedColumn;
    gvwEntetlementEXER_AMT: TcxGridDBBandedColumn;
    gvwEntetlementEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwEntetlementEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwEntetlementEXER_PAID: TcxGridDBBandedColumn;
    gvwEntetlementEXER_PAIDAMT: TcxGridDBBandedColumn;
    gvwEntetlementRCASH_VOUCHEID: TcxGridDBBandedColumn;
    gvwEntetlementRCASH_VOUCHERNO: TcxGridDBBandedColumn;
    gvwEntetlementPCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwEntetlementPCASH_VOUCHERNO: TcxGridDBBandedColumn;
    gvwEntetlementMODDA: TcxGridDBBandedColumn;
    gvwEntetlementMODUI: TcxGridDBBandedColumn;
    gvwEntetlementAPPDA: TcxGridDBBandedColumn;
    gvwEntetlementAPPUI: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4Y: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn;
    gvwEntetlementNOTES4Y: TcxGridDBBandedColumn;
    gvwEntetlementISDEL: TcxGridDBBandedColumn;
    gvwEntetlementID: TcxGridDBBandedColumn;
    gvwEntetlementCashOnHand: TcxGridDBBandedColumn;
    gvwEntetlementISRDN: TcxGridDBBandedColumn;
    actRequestCashLoan: TNAction;
    RequestApprovalHMETD1: TMenuItem;
    dsCorpactExer: TDataSource;
    cdsCorpActExerFINANCE: TStringField;
    cdsCorpActExerVCA_INSTRUCTION: TStringField;
    cdsCorpActExerBT_INSTRUCTION: TStringField;
    cdsCorpActExerBANK_INSTRUCTION: TStringField;
    cdsCorpActExerREQUEST_CASH_LOAN: TStringField;
    cdsCorpActExerCASH_LOAN_APPV: TStringField;
    cdsCorpActExerSTOCK_DIST: TStringField;
    cdsCorpActExerMODDA: TDateTimeField;
    cdsCorpActExerMODUI: TStringField;
    cdsCorpActExerAPPDA: TDateTimeField;
    cdsCorpActExerAPPUI: TStringField;
    cdsCorpActExerUNDER4Y: TIntegerField;
    cdsCorpActExerUNDER4YDA: TDateTimeField;
    cdsCorpActExerNOTES4Y: TStringField;
    cdsCorpActExerISDEL: TIntegerField;
    cdsCorpActExerID: TLargeintField;
    cdsCorpActExerCashOnHand: TFloatField;
    gvwEntetlementFINANCE: TcxGridDBBandedColumn;
    gvwEntetlementVCA_INSTRUCTION: TcxGridDBBandedColumn;
    gvwEntetlementBT_INSTRUCTION: TcxGridDBBandedColumn;
    gvwEntetlementBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwEntetlementREQUEST_CASH_LOAN: TcxGridDBBandedColumn;
    gvwEntetlementCASH_LOAN_APPV: TcxGridDBBandedColumn;
    gvwEntetlementSTOCK_DIST: TcxGridDBBandedColumn;
    actGenerateBankInstructionForExercise: TNAction;
    actApprovedCashLoan: TNAction;
    GenerateBankInstructionForExercise1: TMenuItem;
    RequestCashLoan1: TMenuItem;
    cdsCorpActExerMEMBER: TStringField;
    cdsCorpActExerRDN_RECEIVE: TStringField;
    cdsCorpActExerCashOnHold: TFloatField;
    gvwEntetlementMEMBER: TcxGridDBBandedColumn;
    gvwEntetlementRDN_RECEIVE: TcxGridDBBandedColumn;
    gvwEntetlementCashOnHold: TcxGridDBBandedColumn;

    procedure FormShow(Sender: TObject);
    procedure actRequestCashLoanUpdate(Sender: TObject);
    procedure actRequestCashLoanExecute(Sender: TObject);
    procedure actGenerateBankInstructionForExerciseExecute(
      Sender: TObject);
    procedure actApprovedCashLoanExecute(Sender: TObject);
    procedure actApprovedCashLoanUpdate(Sender: TObject);
    procedure actGenerateBankInstructionForExerciseUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpActExecuteExercise: TfrmCorpActExecuteExercise;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactList;

procedure TfrmCorpActExecuteExercise.actApprovedCashLoanExecute(
  Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if MessageDlg('Approved Exercise Cash Loan?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsCorpActExer.DisableControls;
    for i := 0 to gvwEntetlement.Controller.SelectedRowCount -1 do
    begin
      if gvwEntetlement.Controller.SelectedRows[i].Values[gvwEntetlementREQUEST_CASH_LOAN.Index] = '1' then
      begin
        with dsCorpactExer.DataSet do
        begin
          Filtered := False;
          Filter   := 'EXER_ID = '+ IntToStr(gvwEntetlement.Controller.SelectedRows[i].Values[gvwEntetlementEXER_ID.Index]);
          Filtered := True;

          Edit;
          FieldByName('CASH_LOAN_APPV').AsString := '1';
          Post;

          Filtered := False;
        end;
      end;
    end;
    cdsCorpActExer.DisableControls;

    MessageDlg('Cash loan has been approved', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCorpActExecuteExercise.actApprovedCashLoanUpdate(
  Sender: TObject);
begin
  inherited;
  actApprovedCashLoan.Enabled := (cdsCorpActExerREQUEST_CASH_LOAN.AsString = '1') and (cdsCorpActExerCASH_LOAN_APPV.AsString = '0');
end;

procedure TfrmCorpActExecuteExercise.actGenerateBankInstructionForExerciseExecute(
  Sender: TObject);
var
  i: Integer;
  dExerAmount, dCashOnHand: Double;
  sExerID: string;
  sMsg: string;
begin
  inherited;
  sExerID := '';

  try
    cdsCorpActExer.DisableControls;
    for i := 0 to gvwEntetlement.Controller.SelectedRowCount -1 do
    begin
      dExerAmount := StrToFloatDef(gvwEntetlement.Controller.SelectedRows[i].Values[gvwEntetlementEXER_AMT.Index], 0);
      dCashOnHand := StrToFloatDef(gvwEntetlement.Controller.SelectedRows[i].Values[gvwEntetlementCashOnHand.Index], 0);

      if (dExerAmount <= dCashOnHand) then
      begin
        sExerID := sExerID + IntToStr(gvwEntetlement.Controller.SelectedRows[i].Values[gvwEntetlementEXER_ID.Index]) +';';
      end;
    end;

    if sExerID <> '' then
    begin
      dmGlobal.RemoteServer.GenerateBankInstructionForExercise(dsSubject.DataSet.FieldByName('CAID').AsLargeInt, sExerID, dmGlobal.RemoteServer.GetTransDate, sMsg);
      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end
    else
      MessageDlg('There is no data can be generated', mtError, [mbOk], 0);

    cdsCorpActExer.EnableControls;
  except
    on E: exception do MessageDlg('Error : '+E.Message, mtError, [mbOk], 0);
  end;

end;

procedure TfrmCorpActExecuteExercise.actGenerateBankInstructionForExerciseUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerateBankInstructionForExercise.Enabled := (cdsCorpActExerCashOnHand.AsFloat >= cdsCorpActExerEXER_AMT.AsFloat);
end;

procedure TfrmCorpActExecuteExercise.actRequestCashLoanExecute(
  Sender: TObject);
var
  i: Integer;
begin
  inherited;
  cdsCorpActExer.DisableControls;
  for i := 0 to gvwEntetlement.Controller.SelectedRowCount -1 do
  begin
    dsCorpactExer.DataSet.Filtered := False;
    dsCorpactExer.DataSet.Filter   := 'EXER_ID = '+ IntToStr(gvwEntetlement.Controller.SelectedRows[i].Values[gvwEntetlementEXER_ID.Index]);
    dsCorpactExer.DataSet.Filtered := True;

    dsCorpactExer.DataSet.Edit;
    dsCorpactExer.DataSet.FieldByName('REQUEST_CASH_LOAN').AsString := '1';
    dsCorpactExer.DataSet.Post;

    dsCorpactExer.DataSet.Filtered := false;
  end;

  MessageDlg('Request cash loan has done', mtInformation, [mbOk], 0);
  cdsCorpActExer.EnableControls;
end;

procedure TfrmCorpActExecuteExercise.actRequestCashLoanUpdate(
  Sender: TObject);
begin
  inherited;
  actRequestCashLoan.Enabled := (cdsCorpActExerREQUEST_CASH_LOAN.AsString <> '1') and (cdsCorpActExerEXER_AMT.AsFloat > cdsCorpActExerCashOnHand.AsFloat);
end;

procedure TfrmCorpActExecuteExercise.FormShow(Sender: TObject);
var
  iCAType: Integer;
begin
  inherited;
  txtCorpActType.Caption := 'HMETD';

  cdsCorpActExer.Close;
  cdsCorpActExer.Params[0].AsDateTime := dsSubject.DataSet.FieldByName('RI_STR_EXERDATE').AsDateTime;
  cdsCorpActExer.Open;
end;

end.
