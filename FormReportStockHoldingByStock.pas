unit FormReportStockHoldingByStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxImageComboBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmReportStockHoldingByStock = class(TfrmReport)
    cbReportType: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportStockHoldingByStock: TfrmReportStockHoldingByStock;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportStockHoldingByStock.actReloadDataExecute(Sender: TObject);
begin
  if (cbReportType.EditValue = 'E') then
    Report.ReportName := 'Settlement\StockHoldingReportByStockExternal.fr3'
  else
    Report.ReportName := 'Settlement\StockHoldingReportByStockInternal.fr3';
  inherited;

end;

end.
