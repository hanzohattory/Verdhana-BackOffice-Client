unit FormReportDailyCashProjection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportDailyCashProjection = class(TfrmReport)
    cbRptType: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDailyCashProjection: TfrmReportDailyCashProjection;

implementation

{$R *.dfm}

procedure TfrmReportDailyCashProjection.actReloadDataExecute(Sender: TObject);
begin
  if(CBRptType.EditValue = 'C') then
    Report.ReportName := 'FA\CashProjectionConsolidate.fr3'
  else
    Report.ReportName := 'FA\CashProjectionGroupByBank.fr3';
  inherited;

end;

end.
