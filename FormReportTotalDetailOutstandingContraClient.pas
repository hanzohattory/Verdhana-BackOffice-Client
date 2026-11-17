unit FormReportTotalDetailOutstandingContraClient;

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
  TfrmReportTotalDetailOutstandingContraClient = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTotalDetailOutstandingContraClient: TfrmReportTotalDetailOutstandingContraClient;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportTotalDetailOutstandingContraClient.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := dtReportDate.Date;
  inherited;
end;

procedure TfrmReportTotalDetailOutstandingContraClient.FormCreate(
  Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
