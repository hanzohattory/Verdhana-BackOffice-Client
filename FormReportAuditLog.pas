unit FormReportAuditLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportAuditLog = class(TfrmReport)
    dtRptDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRptDateTo: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportAuditLog: TfrmReportAuditLog;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportAuditLog.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtRptDateFrom.Date;
  Report.Params[1].AsDate := dtRptDateTo.Date;
  inherited;

end;

procedure TfrmReportAuditLog.FormCreate(Sender: TObject);
begin
  inherited;
  dtRptDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtRptDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
