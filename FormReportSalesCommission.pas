unit FormReportSalesCommission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, System.DateUtils, System.Actions;

type
  TfrmReportSalesCommission = class(TfrmReport)
    lcParameterItem1: TdxLayoutItem;
    dtTransDate: TcxDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSalesCommission: TfrmReportSalesCommission;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportSalesCommission.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := DateOf(dtTransDate.Date);

  inherited;
end;

procedure TfrmReportSalesCommission.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmReportSalesCommission);

end.
