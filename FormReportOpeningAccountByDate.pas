unit FormReportOpeningAccountByDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, System.Actions,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutContainer, dxLayoutControl, frxClass, frxPreview,
  cxCalendar, cxBarEditItem;

type
  TfrmReportOpeningAccountByDate = class(TfrmReport)
    barMReportBar1: TdxBar;
    dtFrom: TcxBarEditItem;
    dtTo: TcxBarEditItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportOpeningAccountByDate: TfrmReportOpeningAccountByDate;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportOpeningAccountByDate.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtFrom.EditValue;
  Report.Params[1].AsDate := dtTo.EditValue;

  inherited;
end;

procedure TfrmReportOpeningAccountByDate.FormShow(Sender: TObject);
begin
  inherited;
  dtfrom.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtTo.EditValue   := dtFrom.EditValue;
end;

end.
