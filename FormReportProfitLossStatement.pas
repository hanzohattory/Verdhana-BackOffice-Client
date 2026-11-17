unit FormReportProfitLossStatement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxImageComboBox;

type
  TfrmReportProfilLossStatement = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cbRptType: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    chkSelected: TcxCheckBox;
    lcParameterItem3: TdxLayoutItem;
    cbCPCenter: TcxLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbRptTypePropertiesChange(Sender: TObject);
    procedure chkSelectedPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportProfilLossStatement: TfrmReportProfilLossStatement;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportProfilLossStatement.actReloadDataExecute(
  Sender: TObject);
begin

  if cbRptType.EditValue = 'PLC' then
  begin
     Report.Params[0].AsDateTime := dtReportDate.Date;
     Report.ReportName := 'Accounting\ProfitLoss.fr3';
  end
  else
  begin
     Report.Params[0].AsDateTime := dtReportDate.Date;
     if chkSelected.Checked = true then
     begin
      Report.Params[1].AsString := '2';
      Report.Params[2].AsInteger := cbCPCenter.EditValue;
     end
     else
     begin
      Report.Params[1].AsString := '1';
      Report.Params[2].AsInteger := 0;
     end;


     Report.ReportName := 'Accounting\ProfitLossGroupbyCP.fr3';
  end;
  inherited;
end;

procedure TfrmReportProfilLossStatement.cbRptTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cbRptType.EditValue = 'PLC' then
  begin
     chkSelected.Visible := false;
     lcParameterItem4.Visible := false;
  end
  else
  begin
     chkSelected.Visible := true;
     chkSelected.Checked := false;
     lcParameterItem4.Visible := false;
  end;
end;

procedure TfrmReportProfilLossStatement.chkSelectedPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkSelected.Checked = true then
    lcParameterItem4.Visible := true
  else
    lcParameterItem4.Visible := false;
end;

Procedure TfrmReportProfilLossStatement.FormShow(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
  chkSelected.Visible := false;
  lcParameterItem4.Visible := false;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCPCenter.Active then
      cdsLuCPCenter.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportProfilLossStatement);

end.
