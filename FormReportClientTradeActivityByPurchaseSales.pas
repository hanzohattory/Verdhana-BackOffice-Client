unit FormReportClientTradeActivityByPurchaseSales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, System.Actions,
  cxBarEditItem, cxCheckBox, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, cxDBLookupComboBox,
  cxImageComboBox;

type
  TfrmReportClientTradeActivityByPurchaseSales = class(TfrmReport)
    barMReportBar1: TdxBar;
    dtFrom: TcxBarEditItem;
    dtTo: TcxBarEditItem;
    barMReportBar2: TdxBar;
    edAccID: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    chkAllClient: TcxBarEditItem;
    barMReportBar3: TdxBar;
    chkAllStock: TcxBarEditItem;
    edStockCode: TcxBarEditItem;
    edStockName: TcxBarEditItem;
    barMReportBar4: TdxBar;
    chkAllBS: TcxBarEditItem;
    edBS: TcxBarEditItem;
    chkAllBoard: TcxBarEditItem;
    edBoard: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure edAccCodeFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edAccountPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure chkAllClientPropertiesChange(Sender: TObject);
    procedure chkAllStockPropertiesChange(Sender: TObject);
    procedure edStockCodePropertiesCloseUp(Sender: TObject);
    procedure chkAllBSPropertiesChange(Sender: TObject);
    procedure chkAllBoardPropertiesChange(Sender: TObject);
  private
    FAccID : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientTradeActivityByPurchaseSales: TfrmReportClientTradeActivityByPurchaseSales;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;



procedure TfrmReportClientTradeActivityByPurchaseSales.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsDate     := dtFrom.EditValue;
  Report.Params[1].AsDate     := dtTo.EditValue;
  Report.Params[2].AsInteger  := FAccID;
  Report.Params[3].AsInteger  := chkAllClient.EditValue;
  Report.Params[4].AsInteger  := chkAllStock.EditValue;
  Report.Params[5].AsInteger  := edStockCode.EditValue;
  Report.Params[6].AsInteger  := chkAllBS.EditValue;
  Report.Params[7].AsString   := edBS.EditValue;
  Report.Params[8].AsInteger := chkAllBoard.EditValue;
  Report.Params[9].AsString  := edBoard.EditValue;
  inherited;

end;

procedure TfrmReportClientTradeActivityByPurchaseSales.chkAllBoardPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllBoard.EditValue = 4 then
  begin
    edBoard.EditValue := '';
    edBoard.Enabled   := False;
  end
  else
    edBoard.Enabled   := True;
end;

procedure TfrmReportClientTradeActivityByPurchaseSales.chkAllBSPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllBS.EditValue = 3 then
  begin
    edBS.EditValue := '';
    edBS.Enabled   := False;
  end
  else
    edBS.Enabled   := True;
end;

procedure TfrmReportClientTradeActivityByPurchaseSales.chkAllClientPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllClient.EditValue = 1 then
  begin
    edAccID.EditValue   := '';
    edAccName.EditValue := '';

    edAccID.Enabled   := False;
  end
  else
    edAccID.Enabled   := True;
end;

procedure TfrmReportClientTradeActivityByPurchaseSales.chkAllStockPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllStock.EditValue = 2 then
  begin
    edStockCode.EditValue := 0;
    edStockName.EditValue := '';

    edStockCode.Enabled   := False;
  end
  else
    edStockCode.Enabled   := True;
end;

procedure TfrmReportClientTradeActivityByPurchaseSales.edAccCodeFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//  with dmGlobal.IntDataLookup do
//  begin
//    if frmLuAccount.Run(FAccID) = mrOK then
//    begin
//      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
//      edAccCodeFrom.EditValue := FAccIDFrom;
//      edAccCodeFrom.Text := cdsLuAccountMultiFilterACCCODE.AsString;
//      edAccNameFrom.Text := cdsLuAccountMultiFilterACCNAME.AsString;
//    end;
//  end;
end;

procedure TfrmReportClientTradeActivityByPurchaseSales.edAccountPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if chkAllClient.EditValue = 0 then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(FAccID) = mrOK then
      begin
        FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
        edAccID.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
        edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmReportClientTradeActivityByPurchaseSales.edStockCodePropertiesCloseUp(
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

procedure TfrmReportClientTradeActivityByPurchaseSales.FormCreate(
  Sender: TObject);
begin
  inherited;
  FAccID := 0;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;

    cdsLuBoard.Close;
    cdsLuBoard.Open;
  end;
end;

procedure TfrmReportClientTradeActivityByPurchaseSales.FormShow(
  Sender: TObject);
begin
  inherited;
  dtFrom.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtTo.EditValue   := dmGlobal.RemoteServer.GetTransDate;

  chkAllClient.EditValue  := 0;
  chkAllStock.EditValue   := 0;
  chkAllBS.EditValue      := 0;
  chkAllBoard.EditValue   := 0;

  edStockCode.EditValue := 0;
end;

end.
