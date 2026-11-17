unit FormReportFundLedgerJournal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus,
  dxStatusBar, cxSplitter, dxLayoutControl, frxClass, frxPreview, System.Actions;

type
  TfrmReportFundLedgerJournal = class(TfrmReport)
    dtValueDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportFundLedgerJournal: TfrmReportFundLedgerJournal;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportFundLedgerJournal.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate := dtValueDate.Date;
  inherited;

end;

procedure TfrmReportFundLedgerJournal.FormCreate(Sender: TObject);
begin
  inherited;
  dtValueDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;


Initialization
  RegisterClass(TfrmReportFundLedgerJournal);
end.
