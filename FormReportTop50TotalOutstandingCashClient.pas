unit FormReportTop50TotalOutstandingCashClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportTop50TotalOutstandingCashClient = class(TfrmReport)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTop50TotalOutstandingCashClient: TfrmReportTop50TotalOutstandingCashClient;

implementation

{$R *.dfm}

end.
