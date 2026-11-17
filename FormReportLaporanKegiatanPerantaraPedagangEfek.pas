unit FormReportLaporanKegiatanPerantaraPedagangEfek;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxCalendar,
  cxBarEditItem, System.Actions;

type
  TfrmReportLaporanKegiatanPerantaraPedagangEfek = class(TfrmReport)
    dtReport: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportLaporanKegiatanPerantaraPedagangEfek: TfrmReportLaporanKegiatanPerantaraPedagangEfek;

implementation

uses DataGlobal;

{$R *.dfm}

procedure TfrmReportLaporanKegiatanPerantaraPedagangEfek.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := VarToDateTime(dtReport.EditValue);

  inherited;
end;

procedure TfrmReportLaporanKegiatanPerantaraPedagangEfek.FormCreate(
  Sender: TObject);
begin
  inherited;
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

end.
