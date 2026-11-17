unit FormReportFundLedgerBalance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmReportFundLedgerBalance = class(TfrmReport)
    dtStartDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtEndDate: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportFundLedgerBalance: TfrmReportFundLedgerBalance;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportFundLedgerBalance.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := dtStartDate.Date;
  Report.Params[1].AsDate := dtEndDate.Date;
  inherited;

end;

procedure TfrmReportFundLedgerBalance.FormCreate(Sender: TObject);
begin
  dtStartDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtEndDate.Date   := dmGlobal.RemoteServer.GetTransDate;
  inherited;

end;

Initialization
  RegisterClass(TfrmReportFundLedgerBalance);

end.
