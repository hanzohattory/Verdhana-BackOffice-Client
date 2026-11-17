unit FormReportMarginAccountSummary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxDropDownEdit, cxImageComboBox,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportMarginAccountSummary = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cbReportType: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMarginAccountSummary: TfrmReportMarginAccountSummary;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMarginAccountSummary.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtReportDate.Date;
  if cbReportType.EditValue = 'R' then
    begin
    Report.ReportName := 'Credit Control\MarginAccountSummary.fr3';
    end
  else
    begin
    report.ReportName := 'Credit Control\MarginAccountSummaryUSD.fr3';
    end;

  inherited;
end;

procedure TfrmReportMarginAccountSummary.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
