unit FormReportFakeDemand;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, cxBarEditItem, System.Actions;

type
  TfrmReportFakeDemand = class(TfrmReport)
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportFakeDemand: TfrmReportFakeDemand;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportFakeDemand.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].asDate := dtStart.EditValue;
  Report.Params[1].asDate := dtEnd.EditValue;

  inherited;
end;

procedure TfrmReportFakeDemand.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;
end;

end.
