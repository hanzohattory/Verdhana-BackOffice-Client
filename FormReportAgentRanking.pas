unit FormReportAgentRanking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, System.Actions;

type
  TfrmReportAgentRanking = class(TfrmReport)
    dtRPTDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRPTDateTo: TcxDateEdit;
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
  frmReportAgentRanking: TfrmReportAgentRanking;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportAgentRanking.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtRPTDateFrom.Date;
  Report.Params[1].AsDate := dtRPTDateTo.Date;
  inherited;

end;

procedure TfrmReportAgentRanking.FormCreate(Sender: TObject);
begin
  inherited;
  dtRPTDateFrom.Date := dmGlobal.remoteserver.GetTransDate;
  dtRPTDateTo.Date := dmGlobal.remoteserver.GetTransDate;
end;

end.
