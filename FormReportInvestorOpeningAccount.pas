unit FormReportInvestorOpeningAccount;

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
  TfrmReportInvestorOpeningAccount = class(TfrmReport)
    dtRptDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRptDateTo: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    edAccCodeFrom: TcxButtonEdit;
    lcParameterItem3: TdxLayoutItem;
    edAccCodeTo: TcxButtonEdit;
    lcParameterItem4: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    lcParameterItem5: TdxLayoutItem;
    edAccNameFrom: TcxTextEdit;
    lcParameterItem6: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    lcParameterGroup2: TdxLayoutGroup;
    lcParameterGroup4: TdxLayoutGroup;
    lcParameterGroup5: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure edAccCodeFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    FAccIDFrom : Integer;
    FaccIDTo   : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportInvestorOpeningAccount: TfrmReportInvestorOpeningAccount;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportInvestorOpeningAccount.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccIdFrom;
  Report.Params[1].AsInteger := FAccIdTo;
  Report.Params[2].AsDate := dtRptDateFrom.Date;
  Report.Params[3].AsDate := dtRptDateTo.Date;
  inherited;
end;

procedure TfrmReportInvestorOpeningAccount.edAccCodeFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeFrom.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameFrom.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportInvestorOpeningAccount.edAccCodeToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportInvestorOpeningAccount.FormCreate(Sender: TObject);
begin
  inherited;
  FAccIDFrom := 0;
  FaccIDTo   := 0;
  dtRptDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtRptDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
