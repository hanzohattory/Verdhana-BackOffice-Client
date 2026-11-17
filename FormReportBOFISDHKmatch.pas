unit FormReportBOFISDHKmatch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox;

type
  TfrmReportBOFISDHKmatch = class(TfrmReport)
    cbReportType: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportBOFISDHKmatch: TfrmReportBOFISDHKmatch;

implementation

{$R *.dfm}

procedure TfrmReportBOFISDHKmatch.actReloadDataExecute(Sender: TObject);
begin

  if (cbReportType.EditValue = 'M') then
    Report.ReportName := 'Settlement\MatchReport.fr3'
  else if (cbReportType.EditValue = 'B') then
    Report.ReportName := 'Settlement\UnmatchBOFIS.fr3'
  else
    Report.ReportName := 'Settlement\UnmatchDHK.fr3';
  inherited;
end;

end.
