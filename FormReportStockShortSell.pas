unit FormReportStockShortSell;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCalendar, cxBarEditItem,
  NReportClient, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutContainer,
  dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportStockShortSell = class(TfrmReport)
    dtReport: TcxBarEditItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportStockShortSell: TfrmReportStockShortSell;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportStockShortSell.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtReport.EditValue;

  inherited;
end;

end.
