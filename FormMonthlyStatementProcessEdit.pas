unit FormMonthlyStatementProcessEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmMonthlyStatementProcessEdit = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsMonthlyStatementProcess: TNClientDataset;
    cdsMonthlyStatementProcessPROCESS_ID: TLargeintField;
    cdsMonthlyStatementProcessPROCESS_CODE: TStringField;
    cdsMonthlyStatementProcessSTART_DATE: TDateField;
    cdsMonthlyStatementProcessEND_DATE: TDateField;
    cdsMonthlyStatementProcessNOTES: TStringField;
    cdsMonthlyStatementProcessSTATUS: TStringField;
    cdsMonthlyStatementProcessMODDA: TDateTimeField;
    cdsMonthlyStatementProcessMODUI: TStringField;
    cdsMonthlyStatementProcessAPPDA: TDateTimeField;
    cdsMonthlyStatementProcessAPPUI: TStringField;
    cdsMonthlyStatementProcessUNDER4Y: TIntegerField;
    cdsMonthlyStatementProcessUNDER4YDA: TDateTimeField;
    cdsMonthlyStatementProcessNOTES4Y: TStringField;
    cdsMonthlyStatementProcessISDEL: TIntegerField;
    cdsMonthlyStatementProcessID: TLargeintField;
    procedure cdsMonthlyStatementProcessNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonthlyStatementProcessEdit: TfrmMonthlyStatementProcessEdit;

implementation

{$R *.dfm}

uses FormMonthlyStatementProcess, DataGlobal;

procedure TfrmMonthlyStatementProcessEdit.cdsMonthlyStatementProcessNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsMonthlyStatementProcessPROCESS_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_MONTHLY_STATEMENT_PROCESS');
end;

Initialization
  RegisterClass(TfrmMonthlyStatementProcessEdit);

end.
