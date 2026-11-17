unit FormReportMonthlyTaxSummary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, System.Actions,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutContainer, dxLayoutControl, frxClass, frxPreview,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmMonthlyTaxSummary = class(TfrmReport)
    dtReport: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonthlyTaxSummary: TfrmMonthlyTaxSummary;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmMonthlyTaxSummary.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtReport.Date;
  inherited;

end;

procedure TfrmMonthlyTaxSummary.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmMonthlyTaxSummary);

end.
