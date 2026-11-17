unit FormReportOutstandingTradesDueForDelivery;

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
  TfrmReportOutstandingTradesDueForDelivery = class(TfrmReport)
    dtRPTDATEFROM: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRPTDATETO: TcxDateEdit;
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
  frmReportOutstandingTradesDueForDelivery: TfrmReportOutstandingTradesDueForDelivery;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportOutstandingTradesDueForDelivery.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := dtRPTDATEFROM.Date;
  Report.Params[1].AsDate := dtRPTDATETO.Date;
  inherited;

end;

procedure TfrmReportOutstandingTradesDueForDelivery.FormCreate(Sender: TObject);
begin
  inherited;
  dtRPTDATEFROM.Date := dmGlobal.RemoteServer.GetTransDate;
  dtRPTDATETO.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
