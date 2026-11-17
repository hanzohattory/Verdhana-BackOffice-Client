unit FormReportMarginAccountSummaryUSD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmReportMarginAccountSummaryUSD = class(TfrmReport)
    dtReport: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMarginAccountSummaryUSD: TfrmReportMarginAccountSummaryUSD;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMarginAccountSummaryUSD.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := dtReport.Date;
  inherited;
end;

procedure TfrmReportMarginAccountSummaryUSD.FormCreate(Sender: TObject);
begin
  inherited;
  dtReport.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
