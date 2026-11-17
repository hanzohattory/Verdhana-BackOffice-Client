unit FormReportDormantClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportDormantClient = class(TfrmReport)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDormantClient: TfrmReportDormantClient;

implementation

uses DataGlobal;

{$R *.dfm}


end.
