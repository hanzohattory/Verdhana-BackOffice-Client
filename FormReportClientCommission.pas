unit FormReportClientCommission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, System.DateUtils, System.Actions;

type
  TfrmReportClientCommission = class(TfrmReport)
    lcParameterItem1: TdxLayoutItem;
    dtTransDate: TcxDateEdit;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientCommission: TfrmReportClientCommission;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportClientCommission.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := DateOf(dtTransDate.Date);

  inherited;
end;

procedure TfrmReportClientCommission.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmReportClientCommission);

end.
