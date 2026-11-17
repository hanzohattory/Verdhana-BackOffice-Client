unit FormReportMovementSafeCustody;

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
  TfrmReportMovementSafeCustody = class(TfrmReport)
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
  frmReportMovementSafeCustody: TfrmReportMovementSafeCustody;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMovementSafeCustody.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtRPTDATEFROM.Date;
  Report.Params[1].AsDate := dtRPTDATETO.Date;
  inherited;

end;

procedure TfrmReportMovementSafeCustody.FormCreate(Sender: TObject);
begin
  inherited;
  dtRPTDATEFROM.date := dmGlobal.RemoteServer.GetTransDate;
  dtRPTDATETO.date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
