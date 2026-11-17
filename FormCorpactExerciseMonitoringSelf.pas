unit FormCorpactExerciseMonitoringSelf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox, cxCalendar,
  NReportClient, Vcl.ActnList, NDatasetAction, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls, Vcl.Tabs, dxStatusBar, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxLabel, cxDBLabel, dxLayoutControl;

type
  TfrmCorpactExerciseMonitoringSelf = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxLabel1: TcxLabel;
    txtCorpActType: TcxLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    cxDBLabel10: TcxDBLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dbNavLog: TDBNavigator;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    lcNavLog: TdxLayoutItem;
    StatusBar: TdxStatusBar;
    tabEditorData: TTabSet;
    dsSubject: TDataSource;
    pnlCorpActEnt: TPanel;
    cxGrid1: TcxGrid;
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
    gvwMonitoringPAYDATE: TcxGridDBBandedColumn;
    gvwMonitoringALLOTMENT_DATE: TcxGridDBBandedColumn;
    gvwMonitoringRDN_RECEIVE: TcxGridDBBandedColumn;
    gvwMonitoringMEMBER: TcxGridDBBandedColumn;
    gvwMonitoringEXER_NO: TcxGridDBBandedColumn;
    gvwMonitoringCUSTODY: TcxGridDBBandedColumn;
    gvwMonitoringSTOCK_DIST_DATE: TcxGridDBBandedColumn;
    gvwMonitoringBT_DATE: TcxGridDBBandedColumn;
    gvwMonitoringREMARKS: TcxGridDBBandedColumn;
    gvwMonitoringCANCEL_EXERPAID: TcxGridDBBandedColumn;
    gvwMonitoringStockOnHand: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dsCorpActExerMonitoring: TDataSource;
    cdsCorpActExerMonitoring: TNClientDataset;
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
    cdsCorpActExerMonitoringPAYDATE: TDateField;
    cdsCorpActExerMonitoringALLOTMENT_DATE: TDateField;
    cdsCorpActExerMonitoringRDN_RECEIVE: TStringField;
    cdsCorpActExerMonitoringMEMBER: TStringField;
    cdsCorpActExerMonitoringEXER_NO: TStringField;
    cdsCorpActExerMonitoringCUSTODY: TStringField;
    cdsCorpActExerMonitoringSTOCK_DIST_DATE: TDateField;
    cdsCorpActExerMonitoringBT_DATE: TDateField;
    cdsCorpActExerMonitoringREMARKS: TStringField;
    cdsCorpActExerMonitoringCANCEL_EXERPAID: TStringField;
    cdsCorpActExerMonitoringStockOnHand: TFloatField;
    actCorpactExer: TActionList;
    actPaidExercise: TNAction;
    actGenerateBTInstruction: TNAction;
    actGenerateBTToExcel: TNAction;
    actGenerateFileVCA: TNAction;
    actCorpactDistributionProcess: TNAction;
    actTakeOverToFinance: TNAction;
    actCancelCorpactDistProcess: TNAction;
    actWithdrawRight: TNAction;
    PopupMenu1: TPopupMenu;
    PaidExercise1: TMenuItem;
    NAction11: TMenuItem;
    Generatebooktransfertoexcel1: TMenuItem;
    GenerateBookTransferInstruction1: TMenuItem;
    GenerateFileVCA1: TMenuItem;
    WithdrawalRightExercise1: TMenuItem;
    N1: TMenuItem;
    CorpactDistributionProcess1: TMenuItem;
    Report: TNClientReportContainer;
    dsCorpactExer: TDataSource;
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
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;
  public
    { Public declarations }
  end;

var
  frmCorpactExerciseMonitoringSelf: TfrmCorpactExerciseMonitoringSelf;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCorpactExerciseMonitoringSelf.FormShow(Sender: TObject);
begin
  cdsCorpActExerMonitoring.Close;
  cdsCorpActExerMonitoring.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCorpActExerMonitoring.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsCorpActExerMonitoring.Open;

  FTransDate := dmGlobal.RemoteServer.GetTransDate;
end;

end.
