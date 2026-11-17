unit FormReportIDXClearingResult;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  System.Actions, cxBarEditItem;

type
  TfrmReportIDXClearingResult = class(TfrmReport)
    dtSettle: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportIDXClearingResult: TfrmReportIDXClearingResult;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmReportIDXClearingResult }

procedure TfrmReportIDXClearingResult.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := VarToDateTime(dtSettle.EditValue);
  inherited;
end;

procedure TfrmReportIDXClearingResult.FormShow(Sender: TObject);
begin
  dtSettle.EditValue := dmGlobal.RemoteServer.GetTransDate;
  inherited;
end;

Initialization
  RegisterClass(TfrmReportIDXClearingResult);

end.
