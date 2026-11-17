unit FormReportSecuritiesLedgerJournal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus,
  dxStatusBar, cxSplitter, dxLayoutControl, frxClass, frxPreview, System.Actions,
  cxBarEditItem;

type
  TfrmReportSecuritiesLedgerJournal = class(TfrmReport)
    dtAsOf: TcxBarEditItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSecuritiesLedgerJournal: TfrmReportSecuritiesLedgerJournal;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportSecuritiesLedgerJournal.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDateTime := VarToDateTime(dtAsOf.EditValue);

  inherited;
end;

procedure TfrmReportSecuritiesLedgerJournal.FormShow(Sender: TObject);
begin
  inherited;
  dtAsOf.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmReportSecuritiesLedgerJournal);


end.
