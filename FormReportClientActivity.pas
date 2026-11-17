unit FormReportClientActivity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, frxServerClient, cxImageComboBox;

type
  TfrmReportClientActivity = class(TfrmReport)
    cbSales: TcxLookupComboBox;
    lcParameterItem1: TdxLayoutItem;
    dtFromDate: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    dtToDate: TcxDateEdit;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    cmbFiltered: TcxImageComboBox;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbFilteredPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientActivity: TfrmReportClientActivity;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportClientActivity.actReloadDataExecute(Sender: TObject);
begin
  if cmbFiltered.EditValue = 'BySales' then
    Report.ReportName := 'Middle Office\ClientActivityBySales.fr3'
  else
    Report.ReportName := 'Middle Office\ClientActivityByAccount.fr3';

  Report.Params[0].AsInteger := cbSales.EditValue;
  Report.Params[1].AsDate    := dtFromDate.Date;
  Report.Params[2].AsDate    := dtToDate.Date;

  inherited;
end;

procedure TfrmReportClientActivity.cmbFilteredPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if cmbFiltered.EditValue = 'BySales' then
    cbSales.RepositoryItem := dmGlobal.luSales
  else
    cbSales.RepositoryItem := dmGlobal.luAccountName;

end;

procedure TfrmReportClientActivity.FormCreate(Sender: TObject);
begin
  inherited;
  cbSales.EditValue := 0;
  dtFromDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtToDate.Date := dtFromDate.Date;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuSales.Close;
    cdsLuSales.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportClientActivity);

end.
