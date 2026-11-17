unit FormReportDailyTradeDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxImageComboBox;

type
  TfrmReportDailyTradeDetail = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cbReportType: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDailyTradeDetail: TfrmReportDailyTradeDetail;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportDailyTradeDetail.actReloadDataExecute(Sender: TObject);
begin
  if(cbReportType.EditValue = 'E')then
  Report.ReportName := 'Settlement\DailyTradeDetailExec.fr3'
  else
  Report.ReportName := 'Settlement\DailyTradeDetailAverage.fr3';
  Report.Params[0].AsDate := dtReportDate.Date;
  inherited;
end;

procedure TfrmReportDailyTradeDetail.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
