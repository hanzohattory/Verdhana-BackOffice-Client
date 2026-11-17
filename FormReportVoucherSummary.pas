unit FormReportVoucherSummary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus,
  dxStatusBar, cxSplitter, dxLayoutControl, frxClass, frxPreview, cxCheckBox,
  cxBarEditItem, System.Actions, cxDBLookupComboBox;

type
  TfrmReportVoucherSummary = class(TfrmReport)
    lcParameterGroup1: TdxLayoutGroup;
    barMReportBar1: TdxBar;
    barMReportBar2: TdxBar;
    txtJournalVoucher: TcxBarEditItem;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    chkAll: TcxBarEditItem;
    chkAllType: TcxBarEditItem;
    edReffNo: TcxBarEditItem;
    edJournalType: TcxBarEditItem;
    chkAllReff: TcxBarEditItem;
    chkAllVoucher: TcxBarEditItem;
    edVoucherNo: TcxBarEditItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkAllTypePropertiesChange(Sender: TObject);
    procedure chkAllReffPropertiesChange(Sender: TObject);
    procedure chkAllPropertiesChange(Sender: TObject);
    procedure cxBarEditItem1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportVoucherSummary: TfrmReportVoucherSummary;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportVoucherSummary.actReloadDataExecute(Sender: TObject);
begin
  if txtJournalVoucher.EditValue = 'Summary' then
    Report.ReportName := 'Accounting\Journal Voucher Summary.fr3'
  else
    Report.ReportName := 'Accounting\Journal Voucher Detail.fr3';

  Report.Params[0].AsDate   := VarToDateTime(dtStart.EditValue);
  Report.Params[1].AsDate   := VarToDateTime(dtEnd.EditValue);
  Report.Params[2].AsString := chkAll.EditValue;
  Report.Params[3].AsString := chkAllType.EditValue;
  Report.Params[4].AsString := edJournalType.EditValue;
  Report.Params[5].AsString := chkAllReff.EditValue;
  Report.Params[6].AsString := edReffNo.EditValue;
  Report.Params[7].AsString := chkAllVoucher.EditValue;
  Report.Params[8].AsString := edVoucherNo.EditValue;

  inherited;
end;

procedure TfrmReportVoucherSummary.chkAllPropertiesChange(Sender: TObject);
begin
  inherited;
  chkAllType.EditValue    := '0';
  chkAllReff.EditValue    := '0';
  chkAllVoucher.EditValue := '0';

  edReffNo.EditValue      := '';
  edJournalType.EditValue := '';
  edVoucherNo.EditValue   := '';

  chkAllType.Enabled    := chkAll.EditValue = '0';
  chkAllReff.Enabled    := chkAll.EditValue = '0';
  chkAllVoucher.Enabled := chkAll.EditValue = '0';
  edReffNo.Enabled      := chkAll.EditValue = '0';
  edJournalType.Enabled := chkAll.EditValue = '0';
  edVoucherNo.Enabled   := chkAll.EditValue = '0';
end;

procedure TfrmReportVoucherSummary.chkAllReffPropertiesChange(Sender: TObject);
begin
  inherited;
  edReffNo.Enabled := chkAllReff.EditValue = '0';

  if chkAllReff.EditValue = '1' then
    edReffNo.EditValue := '';
end;

procedure TfrmReportVoucherSummary.chkAllTypePropertiesChange(Sender: TObject);
begin
  inherited;
  edJournalType.Enabled := chkAllType.EditValue = '0';

  if chkAllType.EditValue = '1' then
    edJournalType.EditValue := '';
end;

procedure TfrmReportVoucherSummary.cxBarEditItem1PropertiesChange(
  Sender: TObject);
begin
  inherited;
  edVoucherNo.Enabled := chkAllVoucher.EditValue = '0';

  if chkAllVoucher.EditValue = '1' then
    edVoucherNo.EditValue := '';
end;

procedure TfrmReportVoucherSummary.FormCreate(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    cdsLuJournalType.Close;
    cdsLuJournalType.Open;
  end;

  chkAll.EditValue        := '1';
  chkAllType.EditValue    := '0';
  chkAllReff.EditValue    := '0';
  chkAllVoucher.EditValue := '0';

  txtJournalVoucher.EditValue := 'Summary';
  edReffNo.EditValue          := '';
  edJournalType.EditValue     := '';
  edVoucherNo.EditValue       := '';

  dtStart.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEnd.EditValue   := dmGlobal.RemoteServer.GetTransDate;

  chkAllType.Enabled    := chkAll.EditValue = '0';
  chkAllReff.Enabled    := chkAll.EditValue = '0';
  chkAllVoucher.Enabled := chkAll.EditValue = '0';
  edReffNo.Enabled      := chkAll.EditValue = '0';
  edJournalType.Enabled := chkAll.EditValue = '0';

  inherited;
end;

Initialization
  RegisterClass(TfrmReportVoucherSummary);

end.
