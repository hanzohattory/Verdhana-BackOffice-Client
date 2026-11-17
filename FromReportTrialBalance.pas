unit FromReportTrialBalance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxImageComboBox,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, System.Actions, Vcl.DBCtrls;

type
  TfrmReportTrialBalance = class(TfrmReport)
    dtTransDateEnd: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cmbMode: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    cbCcy: TcxLookupComboBox;
    layoutCurrency: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    dtTransDateStart: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    ByEndate: TcxImageComboBox;
    layoutbydate: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbModePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTrialBalance: TfrmReportTrialBalance;

const
  BY_VALUE_DATE = '0';
  BY_ENTRY_DATE  = '1';

  MODE_CONSOLIDATED_BY_CURRENCY = '0';
  MODE_BY_CURRENCY = '1';

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportTrialBalance.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtTransDateStart.Date;
  Report.Params[1].AsDate := dtTransDateEnd.Date;

  if cmbMode.EditValue = MODE_CONSOLIDATED_BY_CURRENCY then
  begin
    if ByEndate.EditValue = BY_VALUE_DATE then
    begin
      Report.Params[2].asString := 'IDR';
      Report.ReportName := 'Accounting\ConsolidatedTrialBalance.fr3';
    end
    else
    begin
      Report.Params[2].asString := 'IDR';
      Report.ReportName := 'Accounting\EntryConsolidatedTrialBalance.fr3';
    end
  end
  else
  if cmbMode.EditValue = MODE_BY_CURRENCY then
  begin
    Report.Params[2].asString := 'IDR';
    Report.ReportName := 'Accounting\TrialBalanceByCcy.fr3';
  end;

  inherited;
end;

procedure TfrmReportTrialBalance.cmbModePropertiesChange(Sender: TObject);
begin
  inherited;
  if cmbMode.EditValue = MODE_CONSOLIDATED_BY_CURRENCY then
  begin
    layoutbydate.Visible := true;
    layoutCurrency.Visible := false;
  end
  else
  begin
    layoutbydate.Visible  := false;
    layoutCurrency.Visible := true;
  end;

end;

procedure TfrmReportTrialBalance.FormShow(Sender: TObject);
begin
  inherited;
  dtTransDateStart.Date := dmGlobal.RemoteServer.GetTransDate;
  dtTransDateEnd.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
      cdsLuCcy.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportTrialBalance);

end.
