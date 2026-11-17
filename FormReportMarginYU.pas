unit FormReportMarginYU;

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
  TfrmReportMarginYU = class(TfrmReport)
    cbMarginReport: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    cbSupportReport: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure cbMarginReportClick(Sender: TObject);
    procedure cbSupportReportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMarginYU: TfrmReportMarginYU;

implementation

{$R *.dfm}

procedure TfrmReportMarginYU.actReloadDataExecute(Sender: TObject);
begin
  if cbMarginReport.EditValue = 'format1' then
    begin
    report.ReportName := 'Credit Control\MarginReportYUFormulir1.fr3';
    end
  else if cbMarginReport.EditValue = 'format2' then
    begin
    report.ReportName := 'Credit Control\MarginReportYUFormulir2.fr3';
    end
  else if cbMarginReport.EditValue = 'format3' then
    begin
    report.ReportName := 'Credit Control\MarginReportYUFormulir3.fr3';
    end
  else if cbMarginReport.EditValue = 'format4' then
    begin
    report.ReportName := 'Credit Control\MarginReportYUFormulir4.fr3';
    end
  else if cbSupportReport.EditValue = 'format1' then
    begin
    report.ReportName := 'Credit Control\MarginSupportReportYUFormulir1.fr3';
    end
  else if cbSupportReport.EditValue = 'format2' then
    begin
    report.ReportName := 'Credit Control\MarginSupportReportYUFormulir2.fr3';
    end;
  inherited;
end;

procedure TfrmReportMarginYU.cbMarginReportClick(Sender: TObject);
begin
  cbSupportReport.ItemIndex := -1;
  inherited;
end;

procedure TfrmReportMarginYU.cbSupportReportClick(Sender: TObject);
begin
  cbMarginReport.ItemIndex := -1;
  inherited;
end;

end.
