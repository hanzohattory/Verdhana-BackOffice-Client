unit FormReportSummaryActivityByAgentPerClient;

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
  TfrmReportSummaryActivityByAgentPerClient = class(TfrmReport)
    dtDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtDateTo: TcxDateEdit;
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
  frmReportSummaryActivityByAgentPerClient: TfrmReportSummaryActivityByAgentPerClient;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportSummaryActivityByAgentPerClient.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := dtDateFrom.Date;
  Report.Params[1].AsDate := dtDateTo.Date;
  inherited;
end;

procedure TfrmReportSummaryActivityByAgentPerClient.FormCreate(Sender: TObject);
begin
  inherited;
  dtDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
