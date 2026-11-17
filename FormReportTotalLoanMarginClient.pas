unit FormReportTotalLoanMarginClient;

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
  TfrmReportTotalLoanMarginClient = class(TfrmReport)
    cbTopFilter: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTotalLoanMarginClient: TfrmReportTotalLoanMarginClient;

implementation

{$R *.dfm}

procedure TfrmReportTotalLoanMarginClient.actReloadDataExecute(
  Sender: TObject);
begin
  if(cbTopFilter.EditValue = '10')then
      Report.ReportName := 'Credit Control\R-CC-2-4_Top10TotalLoanMarginClient.fr3'
  else
      Report.ReportName := 'Credit Control\R-CC-2-6-b_Top20TotalLoanMarginClient.fr3';


  inherited;

end;

end.
