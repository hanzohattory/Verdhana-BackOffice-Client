unit FormReportAccountPosByStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCalendar, cxBarEditItem,
  NReportClient, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutContainer,
  dxLayoutControl, frxClass, frxPreview, cxCheckBox, cxDBLookupComboBox,
  cxTextEdit, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter;

type
  TfrmReportAccountPosByStock = class(TfrmReport)
    dtReport: TcxBarEditItem;
    barMReportBar1: TdxBar;
    chkAll: TcxBarEditItem;
    edStockCode: TcxBarEditItem;
    edStockName: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edStockCodePropertiesCloseUp(Sender: TObject);
    procedure chkAllPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FStockID : Integer;
  public
    { Public declarations }
  end;

var
  frmReportAccountPosByStock: TfrmReportAccountPosByStock;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportAccountPosByStock.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate    := dtReport.EditValue;
  Report.Params[1].AsInteger := chkAll.EditValue;
  Report.Params[2].AsInteger := edStockCode.EditValue;

  inherited;
end;

procedure TfrmReportAccountPosByStock.chkAllPropertiesChange(Sender: TObject);
begin
  inherited;
  edStockCode.Enabled := chkAll.EditValue = 0;
  edStockName.Enabled := chkAll.EditValue = 0;

  edStockCode.EditValue := 0;
  edStockName.EditValue := '';
end;

procedure TfrmReportAccountPosByStock.edStockCodePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', edStockCode.EditValue, []) then
      edStockName.EditValue := cdsLuInstrumentAllSHORTNAME.AsString
    else
      edStockName.EditValue := '';
  end;
end;

procedure TfrmReportAccountPosByStock.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;
  end;
end;

procedure TfrmReportAccountPosByStock.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;

  chkAll.EditValue      := 1;
  edStockCode.EditValue := 0;
  edStockName.EditValue := '';

  edStockCode.Enabled := False;
  edStockName.Enabled := False;
end;

end.
