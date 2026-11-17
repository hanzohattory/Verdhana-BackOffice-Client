unit FormReportTradeConfirmation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, System.Actions,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutContainer, dxLayoutControl, frxClass, frxPreview,
  cxCalendar, cxCheckBox, cxButtonEdit, cxDBLookupComboBox, cxBarEditItem,
  cxTextEdit, cxImageComboBox;

type
  TfrmReportTradeConfirmation = class(TfrmReport)
    dtContract: TcxBarEditItem;
    chkAllAcc: TcxBarEditItem;
    barMReportBar1: TdxBar;
    chkAllSales: TcxBarEditItem;
    edClient: TcxBarEditItem;
    edSales: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    dtConDateTo: TcxBarEditItem;
    chkAllBranch: TcxBarEditItem;
    chkBranch: TcxBarEditItem;
    edBranch: TcxBarEditItem;
    edSalesName: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edClientPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkAllAccPropertiesChange(Sender: TObject);
    procedure chkAllSalesPropertiesChange(Sender: TObject);
    procedure chkBranchPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSalesPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    FAccId : integer;
    //FAccountID: Integer;
  public
    { Public declarations }
  end;

var
  frmReportTradeConfirmation: TfrmReportTradeConfirmation;

implementation

uses DataGlobal, FormLuAccount, DataLookup;

{$R *.dfm}

procedure TfrmReportTradeConfirmation.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate    := dtContract.EditValue;
  Report.Params[1].AsDate    := dtConDateTo.EditValue;
  Report.Params[2].AsInteger := chkAllAcc.EditValue;
  Report.Params[3].AsInteger := FAccId;
  Report.Params[4].AsInteger := chkAllSales.EditValue;
  Report.Params[5].AsInteger := edSales.EditValue;
  Report.Params[6].AsInteger := chkBranch.EditValue;
  Report.Params[7].AsInteger := edBranch.EditValue;

  inherited;
end;

procedure TfrmReportTradeConfirmation.chkAllAccPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllAcc.EditValue = 1 then
  begin
    edClient.EditValue   := '';
    edAccName.EditValue := '';

    edClient.Enabled   := False;
  end
  else
    edClient.Enabled   := True;
end;

procedure TfrmReportTradeConfirmation.chkAllSalesPropertiesChange(
  Sender: TObject);
begin
  inherited;
      if chkAllSales.EditValue = 2 then
  begin
    edSales.EditValue   := -1;
    //edAccName.EditValue := '';

    edSales.Enabled   := False;
  end
  else
    edSales.Enabled   := True;
end;

procedure TfrmReportTradeConfirmation.chkBranchPropertiesChange(
  Sender: TObject);
begin
  inherited;
      if chkBranch.EditValue = 3 then
  begin
    edBranch.EditValue   := -1;
    //edAccName.EditValue := '';

    edBranch.Enabled   := False;
  end
  else
    edBranch.Enabled   := True;
end;

procedure TfrmReportTradeConfirmation.edClientPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccId, True) = mrOK then
    begin
      FAccId          := cdsLuAccountMultiFilterACCID.AsInteger;
      edClient.EditValue  := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportTradeConfirmation.edSalesPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuSales.Locate('SALESID',edSales.EditValue, []) then
      edSalesName.EditValue := cdsLuSalesSALESNAME.AsString
    else
      edSalesName.EditValue := '';
  end;
end;

procedure TfrmReportTradeConfirmation.FormCreate(Sender: TObject);
//var
//  fTradeDate: TDate;
begin
  inherited;
//  fTradeDate := dmGlobal.RemoteServer.GetTransDate;
//
//  FAccId := -1;
//  edSales.EditValue     := '';
//  dtContract.EditValue  := fTradeDate;
//  dtConDateTo.EditValue := fTradeDate;
//
//  with dmGlobal.IntDataLookup do
//  begin
//    if not cdsLuSales.Active then
//      cdsLuSales.Open;
//  end;
FAccID := 0;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuSales.Close;
    cdsLuSales.Open;

    cdsLuBranch.Close;
    cdsLuBranch.Open;
  end;
end;

procedure TfrmReportTradeConfirmation.FormShow(Sender: TObject);
begin
  inherited;
dtContract.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtConDateTo.EditValue   := dmGlobal.RemoteServer.GetTransDate;

  chkAllAcc.EditValue  := 0;
  chkAllSales.EditValue   := 0;
  chkBranch.EditValue      := 0;


end;

end.
