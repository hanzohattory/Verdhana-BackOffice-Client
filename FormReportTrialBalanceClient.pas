unit FormReportTrialBalanceClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, System.Actions,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutContainer, dxLayoutControl, frxClass, frxPreview,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, cxCheckBox, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, cxTextEdit, cxMaskEdit,
  cxCalendar;

type
  TfrmReportTrialBalanceClient = class(TfrmReport)
    dtDateFrom: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dtDateTo: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    edLedgerCode: TcxLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    chkAllAccCode: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    chkAllLedgerCode: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cbCcy: TcxLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmReportTrialBalanceClient: TfrmReportTrialBalanceClient;

implementation

uses
  DataGlobal, FormLuAccount;

{$R *.dfm}

procedure TfrmReportTrialBalanceClient.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate     := dtDateFrom.EditValue;
  Report.Params[1].AsDate     := dtDateTo.EditValue;
  Report.Params[2].AsString   := cbCcy.EditValue;
  Report.Params[3].AsInteger  := FAccID;
  Report.Params[4].AsString   := edLedgerCode.EditValue;
  Report.Params[5].AsString   := chkAllAccCode.EditValue;
  Report.Params[6].AsString   := chkAllLedgerCode.EditValue;

  Report.ReportName := 'Accounting\ConsolidatedTrialBalanceClient.fr3';

  inherited;
end;

procedure TfrmReportTrialBalanceClient.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID, True) = mrOK then
    begin
      FAccID              := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
//      edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportTrialBalanceClient.FormCreate(Sender: TObject);
begin
  inherited;
  dtDateFrom.EditValue  := dmGlobal.RemoteServer.GetTransDate;
  dtDateTo.EditValue    := dmGlobal.RemoteServer.GetTransDate;


  chkAllAccCode.EditValue := '0';
  chkAllLedgerCode.EditValue  := '0';

  cbCcy.EditValue        := 'IDR';
  edAccCode.EditValue    := '';
  edLedgerCode.EditValue := '';


  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuLedgerType.Active then
      cdsLuLedgerType.Open;

    if not cdsLuCcy.Active then
      cdsLuCcy.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportTrialBalanceClient);

end.
