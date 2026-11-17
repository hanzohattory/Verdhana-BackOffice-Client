unit FormReportPendukungDailyTransaction;

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
  TfrmReportPendukungDailyTransaction = class(TfrmReport)
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
  frmReportPendukungDailyTransaction: TfrmReportPendukungDailyTransaction;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportPendukungDailyTransaction.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := dtReportDate.Date;
  inherited;

end;

procedure TfrmReportPendukungDailyTransaction.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
