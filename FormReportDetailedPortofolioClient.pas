unit FormReportDetailedPortofolioClient;

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
  TfrmReportDetailedPortofolioClient = class(TfrmReport)
    cbClientType: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDetailedPortofolioClient: TfrmReportDetailedPortofolioClient;

implementation

{$R *.dfm}

procedure TfrmReportDetailedPortofolioClient.actReloadDataExecute(Sender: TObject);
begin
  if cbClientType.EditValue = 'r' then
    begin
    report.ReportName := 'Credit Control\R-CC-2-8_DetailedPortfolioTop20ClientRegular.fr3';
    end
  else
    begin
    report.ReportName := 'Credit Control\R-CC-2-9_DetailedPortfolioTop20ClientMargin.fr3';
    end;
  inherited;
end;

end.
