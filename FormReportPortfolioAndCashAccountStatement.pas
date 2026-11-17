unit FormReportPortfolioAndCashAccountStatement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit;

type
  TfrmReportPortfolioAndCashAccountStatement = class(TfrmReport)
    edAccCode: TcxButtonEdit;
    lcParameterItem1: TdxLayoutItem;
    edAccName: TcxTextEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
  private
    FAccID : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportPortfolioAndCashAccountStatement: TfrmReportPortfolioAndCashAccountStatement;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportPortfolioAndCashAccountStatement.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccID;
  inherited;

end;

procedure TfrmReportPortfolioAndCashAccountStatement.cxButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := FAccID;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

end.
