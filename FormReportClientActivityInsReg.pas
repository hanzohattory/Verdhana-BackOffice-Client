unit FormReportClientActivityInsReg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCalendar, cxBarEditItem,
  NReportClient, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutContainer,
  dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportClientActivityInsReg = class(TfrmReport)
    barMReportBar1: TdxBar;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientActivityInsReg: TfrmReportClientActivityInsReg;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportClientActivityInsReg.actReloadDataExecute(Sender: TObject);
begin
  Report.params[0].AsDate := dtStart.EditValue;
  Report.params[1].AsDate := dtEnd.EditValue;

  inherited;
end;

procedure TfrmReportClientActivityInsReg.FormShow(Sender: TObject);
begin
  dtStart.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEnd.EditValue   := dtStart.EditValue;

  inherited;
end;

end.
