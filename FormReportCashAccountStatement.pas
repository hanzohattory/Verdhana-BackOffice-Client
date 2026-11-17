unit FormReportCashAccountStatement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit, cxButtonEdit,
  dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportCashAccountStatement = class(TfrmReport)
    dtRptDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRptDateTo: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    edAccCode: TcxButtonEdit;
    lcParameterItem3: TdxLayoutItem;
    edAccName: TcxTextEdit;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
  private
    FAccId : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCashAccountStatement: TfrmReportCashAccountStatement;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportCashAccountStatement.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccId;
  Report.Params[1].AsDate := dtRptDateFrom.Date;
  Report.Params[2].AsDate := dtRptDateTo.Date;
  inherited;

end;

procedure TfrmReportCashAccountStatement.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportCashAccountStatement.FormCreate(Sender: TObject);
begin
  inherited;
  FAccID := 0;
  dtRptDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtRptDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
