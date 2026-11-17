unit FormReportSalesActivity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxCalendar, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, frxServerClient, cxCheckBox,
  cxBarEditItem, System.Actions;

type
  TfrmReportSalesActivity = class(TfrmReport)
    barMReportBar1: TdxBar;
    chkAll: TcxBarEditItem;
    edSales: TcxBarEditItem;
    dtFrom: TcxBarEditItem;
    dtTo: TcxBarEditItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkAllPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSalesActivity: TfrmReportSalesActivity;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportSalesActivity.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsInteger := edSales.EditValue;
  Report.Params[1].AsDate    := dtFrom.EditValue;
  Report.Params[2].AsDate    := dtTo.EditValue;
  Report.Params[3].AsInteger := chkAll.EditValue;

  inherited;
end;

procedure TfrmReportSalesActivity.chkAllPropertiesChange(Sender: TObject);
begin
  inherited;
  edSales.EditValue := 0;
  edSales.Enabled   := chkAll.EditValue = 0;
end;

procedure TfrmReportSalesActivity.FormCreate(Sender: TObject);
begin
  inherited;
  edSales.EditValue := 0;
  dtFrom.EditValue  := dmGlobal.RemoteServer.GetTransDate;
  dtTo.EditValue    := dtFrom.EditValue;
  chkAll.EditValue  := 1;

  edSales.Enabled := False;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuSales.Close;
    cdsLuSales.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportSalesActivity);

end.
