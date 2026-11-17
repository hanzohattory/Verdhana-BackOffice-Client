unit FormReportClientCommissionByRange;

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
  TfrmReportClientCommissionByRange = class(TfrmReport)
    lcParameterItem1: TdxLayoutItem;
    dtStartDate: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    dtEndDate: TcxDateEdit;
    lcParameterGroup1: TdxLayoutGroup;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientCommissionByRange: TfrmReportClientCommissionByRange;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportClientCommissionByRange.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := DateOf(dtStartDate.Date);
  Report.Params[1].AsDate := DateOf(dtEndDate.Date);

  inherited;
end;

procedure TfrmReportClientCommissionByRange.FormCreate(Sender: TObject);
begin
  inherited;
  dtStartDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtEndDate.Date := dtStartDate.Date;
end;

Initialization
  RegisterClass(TfrmReportClientCommissionByRange);

end.
