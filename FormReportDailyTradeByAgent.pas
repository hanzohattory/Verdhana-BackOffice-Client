unit FormReportDailyTradeByAgent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxRadioGroup,
  dxLayoutContainer, cxGroupBox, NReportClient, Vcl.ActnList, dxBar, cxClasses,
  NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutControl,
  frxClass, frxPreview, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, cxButtonEdit;

type
  TfrmReportDailyTradeByAgent = class(TfrmReport)
    cbAgentFrom: TcxLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    cbAgentTo: TcxLookupComboBox;
    lcParameterItem5: TdxLayoutItem;
    cbFormat: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    edAccCodeFrom: TcxButtonEdit;
    edAccNameFrom: TcxTextEdit;
    dtReportDateFrom: TcxDateEdit;
    dtReportDateTo: TcxDateEdit;
    edAccCodeTo: TcxButtonEdit;
    edAccNameTo: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    lcParameterItem3: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    lcParameterGroup3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    lcParameterItem6: TdxLayoutItem;
    lcParameterGroup5: TdxLayoutGroup;
    lcParameterGroup6: TdxLayoutGroup;
    lcParameterGroup2: TdxLayoutGroup;
    lcParameterGroup7: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edAccCodeFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAccIDFrom : integer;
    FAccIDTo : integer;
  public
    { Public declarations }
  end;

var
  frmReportDailyTradeByAgent: TfrmReportDailyTradeByAgent;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportDailyTradeByAgent.actReloadDataExecute(Sender: TObject);
begin
  if cbFormat.EditValue = 'Format1' then
    begin
    report.ReportName := 'Settlement\DailyTradeReportByAgent-Format1.fr3';
    end
  else
    begin
    report.ReportName := 'Settlement\DailyTradeReportByAgent-Format2.fr3';
    end;
  Report.Params[0].AsInteger := cbAgentFrom.EditValue;
  Report.Params[1].AsInteger := cbAgentTo.EditValue;
  Report.Params[2].AsDate := dtReportDateFrom.Date;
  Report.Params[3].AsDate := dtReportDateTo.Date;
  Report.Params[4].AsInteger := FAccIDFrom;
  Report.Params[5].AsInteger := FAccIDTo;
  inherited;
end;

procedure TfrmReportDailyTradeByAgent.edAccCodeFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeFrom.EditValue := FAccIDFrom;
      edAccCodeFrom.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameFrom.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportDailyTradeByAgent.edAccCodeToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeTo.EditValue := FAccIDFrom;
      edAccCodeTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportDailyTradeByAgent.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtReportDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
  FAccIDFrom := 0;
  FAccIDTo := 0;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuSales.Close;
    cdsLuSales.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportDailyTradeByAgent);

end.
