unit FormReportTradeTransaction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, System.Actions,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutContainer, dxLayoutControl, frxClass, frxPreview,
  cxCalendar, cxBarEditItem, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxCheckBox,
  cxDBLookupComboBox, cxButtonEdit, cxTextEdit;

type
  TfrmReportTradeTransaction = class(TfrmReport)
    barMReportBar1: TdxBar;
    dtFrom: TcxBarEditItem;
    dtTo: TcxBarEditItem;
    chkAllCust: TcxBarEditItem;
    chkAllStock: TcxBarEditItem;
    edStockID: TcxBarEditItem;
    edCustCode: TcxBarEditItem;
    edCustName: TcxBarEditItem;
    cbBoard: TcxBarEditItem;
    chkAll: TcxBarEditItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTradeTransaction: TfrmReportTradeTransaction;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal, FormLuAccount;

procedure TfrmReportTradeTransaction.actReloadDataExecute(Sender: TObject);
var
  iBoardID, iAll: integer;
begin
  if VarIsNull(cbBoard.EditValue) then iBoardID := 0 else iBoardID := cbBoard.EditValue;
  if VarIsNull(chkAll.EditValue) then iAll := 0 else iAll := chkAll.EditValue;

  Report.Params[0].AsDate     := dtFrom.EditValue;
  Report.Params[1].AsDate     := dtTo.EditValue;
  Report.Params[2].AsInteger  := iBoardID;
  Report.Params[3].AsInteger  := iAll;

  inherited;
end;

procedure TfrmReportTradeTransaction.FormShow(Sender: TObject);
var
  FTradeDate: TDate;
begin
  inherited;
  FTradeDate := dmGlobal.RemoteServer.GetTransDate;

  dtFrom.EditValue := FTradeDate;
  dtTo.EditValue   := FTradeDate;
  chkAll.EditValue := 1;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.open;
  end;

end;

end.
