unit FormReportShareBalancesByAgent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxDropDownEdit,
  cxImageComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit;

type
  TfrmReportShareBalancesByAgent = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cbSales: TcxLookupComboBox;
    lcParameterItem3: TdxLayoutItem;
    lcParameterItem2: TdxLayoutItem;
    cbSalesTo: TcxLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    lcParameterItem5: TdxLayoutItem;
    edAccName: TcxTextEdit;
    lcParameterGroup2: TdxLayoutGroup;
    lcParameterItem6: TdxLayoutItem;
    edAccCodeTo: TcxButtonEdit;
    lcParameterGroup4: TdxLayoutGroup;
    lcParameterItem7: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    lcParameterGroup5: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccCodeToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAccID, FAccIDTo: Integer;
  public
    { Public declarations }
  end;

var
  frmReportShareBalancesByAgent: TfrmReportShareBalancesByAgent;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportShareBalancesByAgent.actReloadDataExecute(Sender: TObject);
begin
//  if cbReportFormat.EditValue = 'main' then
//    Report.ReportName := 'Settlement\ShareBalancesByAgent.fr3'
//  else if cbReportFormat.EditValue = 'format1' then
//    Report.ReportName := 'Settlement\ShareBalancesByAgentFormat1.fr3'
//  else
//    Report.ReportName := 'Settlement\ShareBalancesByAgentFormat2.fr3';
  Report.Params[0].AsDate := dtReportDate.Date;
  Report.Params[1].AsInteger := FAccID;
  Report.Params[2].AsInteger := FAccIDTo;
  Report.Params[3].AsInteger := StrToIntDef(VarToStr(cbSales.EditValue), 0);
  Report.Params[4].AsInteger := StrToIntDef(VarToStr(cbSalesTo.EditValue), MaxInt);
  inherited;

end;

procedure TfrmReportShareBalancesByAgent.edAccCodePropertiesButtonClick(
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

procedure TfrmReportShareBalancesByAgent.edAccCodeToPropertiesButtonClick(
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

procedure TfrmReportShareBalancesByAgent.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuSales.Close;
    cdsLuSales.Open;
  end;
end;

end.
