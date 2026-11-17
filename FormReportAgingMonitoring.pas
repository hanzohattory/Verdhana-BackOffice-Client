unit FormReportAgingMonitoring;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxCalendar, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, cxButtonEdit;

type
  TfrmReportAgingMonitoring = class(TfrmReport)
    dtDateEdit: TcxDateEdit;
    lcParameterItem3: TdxLayoutItem;
    edAccFrom: TcxButtonEdit;
    lcParameterItem1: TdxLayoutItem;
    edAccTo: TcxButtonEdit;
    lcParameterItem2: TdxLayoutItem;
    edAccNameTo: TcxTextEdit;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    edAccNameFrom: TcxTextEdit;
    lcParameterItem5: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure edAccFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edAccToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FAccIDFrom : Integer;
    FAccIDTo : Integer;
  public
    { Public declarations }
  end;

var
  frmReportAgingMonitoring: TfrmReportAgingMonitoring;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportAgingMonitoring.actReloadDataExecute(Sender: TObject);
begin

  Report.Params[0].AsInteger := FAccIDFrom;
  Report.Params[1].AsInteger := FAccIDTo;
  Report.Params[2].AsDate    := dtDateEdit.Date;
  inherited;
  //showMessage(edAccFrom.Text + ' ' + edAccTo.Text);
end;

procedure TfrmReportAgingMonitoring.edAccFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccFrom.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameFrom.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportAgingMonitoring.edAccToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDTo) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccTo.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccNameTo.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportAgingMonitoring.FormCreate(Sender: TObject);
begin
  inherited;
  FAccIdFrom := 0;
  FAccIDTo := 0;
  dtDateEdit.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
