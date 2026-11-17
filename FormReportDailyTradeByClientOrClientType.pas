unit FormReportDailyTradeByClientOrClientType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, NReportClient, Vcl.ActnList, dxBar, cxClasses,
  NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutControl,
  frxClass, frxPreview, cxButtonEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmReportDailyTradeReportClientType = class(TfrmReport)
    lcParameterItem1: TdxLayoutItem;
    edAccCodeFrom: TcxButtonEdit;
    edAccNameFrom: TcxTextEdit;
    lcParameterItem2: TdxLayoutItem;
    dtReportDateFrom: TcxDateEdit;
    lcParameterItem3: TdxLayoutItem;
    dtReportDateTo: TcxDateEdit;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup3: TdxLayoutGroup;
    edAccCodeTo: TcxButtonEdit;
    lcParameterItem5: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    lcParameterItem6: TdxLayoutItem;
    lcParameterGroup5: TdxLayoutGroup;
    lcParameterGroup6: TdxLayoutGroup;
    lcParameterGroup2: TdxLayoutGroup;
    lcParameterGroup7: TdxLayoutGroup;
    cbStockCodeFrom: TcxLookupComboBox;
    lcParameterItem7: TdxLayoutItem;
    cbStockCodeTo: TcxLookupComboBox;
    lcParameterItem8: TdxLayoutItem;
    lcParameterGroup8: TdxLayoutGroup;
    lcParameterGroup4: TdxLayoutGroup;
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAccIDFrom: Integer;
    FAccIDTo: Integer;
  public
    { Public declarations }
  end;

var
  frmReportDailyTradeReportClientType: TfrmReportDailyTradeReportClientType;

implementation

{$R *.dfm}

uses dataglobal,FormLuAccount;

procedure TfrmReportDailyTradeReportClientType.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccIDFrom;
  Report.Params[1].AsInteger := FAccIDTo;
  Report.Params[2].AsDate := dtReportDateFrom.Date;
  Report.Params[3].AsDate := dtReportDateTo.Date;
  Report.Params[4].AsInteger := cbStockCodeFrom.EditValue;
  Report.Params[5].AsInteger := cbStockCodeTo.EditValue;
  inherited;
end;

procedure TfrmReportDailyTradeReportClientType.edAccCodePropertiesButtonClick(
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

procedure TfrmReportDailyTradeReportClientType.edAccCodeToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCodeTo.EditValue := FAccIDTo;
      edAccCodeTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportDailyTradeReportClientType.FormCreate(Sender: TObject);
begin
  inherited;
  FAccIDFrom := 0;
  FAccIDTo := 0;
  dtReportDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtReportDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrument.Close;
    cdsLuInstrument.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportDailyTradeReportClientType);

end.
