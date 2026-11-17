unit FormARAPSummary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus,
  dxStatusBar, cxSplitter, dxLayoutControl, frxClass, frxPreview;

type
  TfrmARAPSummary = class(TfrmReport)
    dtDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmARAPSummary: TfrmARAPSummary;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmARAPSummary.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtDate.Date;

  inherited;

end;

procedure TfrmARAPSummary.FormCreate(Sender: TObject);
begin
  dtDate.Date := dmGlobal.RemoteServer.GetTransDate;
  inherited;

end;

initialization
RegisterClass(TfrmARAPSummary);

end.
