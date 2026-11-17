unit FormReportValueAddedTax;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportValueAddedTax = class(TfrmReport)
    dtReportDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtReportDateTo: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportValueAddedTax: TfrmReportValueAddedTax;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportValueAddedTax.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtReportDateFrom.Date;
  Report.Params[1].AsDate := dtReportDateTo.Date;
  inherited;

end;

procedure TfrmReportValueAddedTax.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtReportDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
