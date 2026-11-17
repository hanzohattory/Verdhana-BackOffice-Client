unit FormReportStockPosByAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCalendar, cxBarEditItem,
  NReportClient, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutContainer,
  dxLayoutControl, frxClass, frxPreview, cxCheckBox, cxButtonEdit, cxTextEdit;

type
  TfrmReportStockPosByAccount = class(TfrmReport)
    dtReport: TcxBarEditItem;
    barMReportBar1: TdxBar;
    chkAll: TcxBarEditItem;
    edAccCode: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure chkAllPropertiesChange(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmReportStockPosByAccount: TfrmReportStockPosByAccount;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportStockPosByAccount.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate    := dtReport.EditValue;
  Report.Params[1].AsInteger := chkAll.EditValue;
  Report.Params[2].AsInteger := FAccID;

  inherited;
end;

procedure TfrmReportStockPosByAccount.chkAllPropertiesChange(Sender: TObject);
begin
  inherited;
  edAccCode.Enabled := chkAll.EditValue = 0;
  edAccName.Enabled := chkAll.EditValue = 0;
end;

procedure TfrmReportStockPosByAccount.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID, True) = mrOK then
    begin
      edAccCode.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;

      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
    end;
  end;
end;

procedure TfrmReportStockPosByAccount.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.EditValue  := dmGlobal.RemoteServer.GetTransDate;
  chkAll.EditValue    := 1;

  edAccCode.EditValue := '';
  edAccName.EditValue := '';

  edAccCode.Enabled := False;
  edAccName.Enabled := False;

  FAccID := 0;
end;

end.
