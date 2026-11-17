unit FormReportStockDepositList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmReportStockDepList = class(TfrmReport)
    dtStartDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtEndDate: TcxDateEdit;
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
  frmReportStockDepList: TfrmReportStockDepList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportStockDepList.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtStartDate.Date;
  Report.Params[1].AsDate := dtEndDate.Date;
  inherited;
end;

procedure TfrmReportStockDepList.FormCreate(Sender: TObject);
begin
  inherited;
  dtStartDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtEndDate.Date   := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmReportStockDepList);

end.
