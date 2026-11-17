unit FormReportTotalOutstandingCashClient;

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
  TfrmReportTotalOutstandingCashClient = class(TfrmReport)
    cbTopFilter: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTotalOutstandingCashClient: TfrmReportTotalOutstandingCashClient;

implementation

{$R *.dfm}

procedure TfrmReportTotalOutstandingCashClient.actReloadDataExecute(
  Sender: TObject);
begin
  if cbTopFilter.EditValue = '20' then
    begin
    Report.ReportName := 'Credit Control\R-CC-2-6-a_Top20TotalOutstandingCashClient.fr3';
    end
  else
    begin
    report.ReportName := 'Credit Control\R-CC-2-2-a_Top50_OustandingCashClient.fr3';
    end;
  inherited;

end;

end.
