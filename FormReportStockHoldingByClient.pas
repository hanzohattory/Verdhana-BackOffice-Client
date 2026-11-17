unit FormReportStockHoldingByClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxDropDownEdit, cxImageComboBox, cxTextEdit,
  cxMaskEdit, cxButtonEdit;

type
  TfrmReportStockHoldingByClient = class(TfrmReport)
    cbReportType: TcxImageComboBox;
    lcParameterItem3: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
  private
    FAccId : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportStockHoldingByClient: TfrmReportStockHoldingByClient;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportStockHoldingByClient.actReloadDataExecute(Sender: TObject);
begin
  if (cbReportType.EditValue = 'E') then
    Report.ReportName := 'Settlement\StockHoldingReportByClientExternal.fr3'
  else
    Report.ReportName := 'Settlement\StockHoldingReportByClientInternal.fr3';
  inherited;

end;

end.
