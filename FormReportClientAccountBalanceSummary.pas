unit FormReportClientAccountBalanceSummary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxCalendar, cxTextEdit, dxLayoutContainer, cxMaskEdit, cxButtonEdit,
  NReportClient, Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus,
  dxStatusBar, cxSplitter, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportClientAccountBalanceSummary = class(TfrmReport)
    lcParameterGroup1: TdxLayoutGroup;
    edAccIdFrom: TcxButtonEdit;
    lcParameterItem1: TdxLayoutItem;
    edAccNameFrom: TcxTextEdit;
    lcParameterItem2: TdxLayoutItem;
    edAccIdTo: TcxButtonEdit;
    lcParameterItem3: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup3: TdxLayoutGroup;
    lcParameterGroup4: TdxLayoutGroup;
    dtReportDate: TcxDateEdit;
    lcParameterItem5: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure edAccIdFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccIdToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
    FAccIDFrom : integer;
    FAccIDTo : integer;
  public
    { Public declarations }
  end;

var
  frmReportClientAccountBalanceSummary: TfrmReportClientAccountBalanceSummary;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportClientAccountBalanceSummary.actReloadDataExecute(
  Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccIDFrom;
  Report.Params[1].AsInteger := FAccIDTo;
  Report.Params[2].AsDate := dtReportDate.Date;
  inherited;
end;

procedure TfrmReportClientAccountBalanceSummary.edAccIdFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccIDFrom.EditValue := FAccIDFrom;
      edAccIDFrom.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameFrom.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportClientAccountBalanceSummary.edAccIdToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccIDTo.EditValue := FAccIDTo;
      edAccIDTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportClientAccountBalanceSummary.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
  FAccIDFrom := 0;
  FAccIDTo := 0;
end;

end.
