unit FormReportAccountSuspendList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportAccountSuspendList = class(TfrmReport)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportAccountSuspendList: TfrmReportAccountSuspendList;

implementation

{$R *.dfm}

end.
