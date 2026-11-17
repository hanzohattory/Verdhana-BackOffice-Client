unit FormReportDailyCommision;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxButtonEdit, cxDropDownEdit,
  cxImageComboBox, cxMaskEdit, cxCalendar;

type
  TfrmReportDailyCommision = class(TfrmReport)
    dtRPTDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRPTDateTo: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    cbFilter: TcxImageComboBox;
    lcParameterItem3: TdxLayoutItem;
    lcAccountGroup: TdxLayoutGroup;
    edAccCodeFrom: TcxButtonEdit;
    lcParameterItem4: TdxLayoutItem;
    edAccCodeTo: TcxButtonEdit;
    lcParameterItem5: TdxLayoutItem;
    edAccNameFrom: TcxTextEdit;
    lcParameterItem6: TdxLayoutItem;
    lcParameterGroup3: TdxLayoutGroup;
    edAccNameTo: TcxTextEdit;
    lcParameterItem7: TdxLayoutItem;
    lcParameterGroup4: TdxLayoutGroup;
    lcSalesGroup: TdxLayoutGroup;
    lcParameterGroup6: TdxLayoutGroup;
    cbSalesFrom: TcxLookupComboBox;
    lcParameterItem8: TdxLayoutItem;
    cbSalesTo: TcxLookupComboBox;
    lcParameterItem9: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure edAccCodeFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbFilterPropertiesCloseUp(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    FAccIDFrom : Integer;
    FAccIDTo : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDailyCommision: TfrmReportDailyCommision;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportDailyCommision.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtRPTDateFrom.Date;
  Report.Params[1].AsDate := dtRPTDateTo.Date;
  if(cbFilter.EditValue = 'A') then
  begin
    Report.Params[2].AsInteger := FAccIdFrom;
    Report.Params[3].AsInteger := FAccIdTo;
    Report.Params[4].AsInteger := 0;
    Report.Params[5].AsInteger := 0;
  end
  else
  begin
    Report.Params[2].AsInteger := 0;
    Report.Params[3].AsInteger := 0;
    Report.Params[4].AsInteger := cbSalesFrom.EditValue;
    Report.Params[5].AsInteger := cbSalesTo.EditValue;
  end;
  inherited;

end;

procedure TfrmReportDailyCommision.cbFilterPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if(cbFilter.EditValue = 'A') then
  begin
    lcAccountGroup.Visible := True;
    lcSalesGroup.Visible := False;
  end
  else
  begin
    lcAccountGroup.Visible := False;
    lcSalesGroup.Visible := True;
  end;
end;

procedure TfrmReportDailyCommision.edAccCodeFromPropertiesButtonClick(
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

procedure TfrmReportDailyCommision.edAccCodeToPropertiesButtonClick(
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

procedure TfrmReportDailyCommision.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuSales.Close;
    cdsLuSales.Open;
  end;
  dtRPTDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtRPTDateTo.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
