unit FormReportStockActivityProfiltLoss;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmReportStockActivityProfitLoss = class(TfrmReport)
    dtFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtUntil: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    cmbAccID: TcxLookupComboBox;
    lcParameterItem3: TdxLayoutItem;
    cmbStockID: TcxLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    txtAccName: TcxTextEdit;
    lcParameterItem5: TdxLayoutItem;
    txtStockName: TcxTextEdit;
    lcParameterItem6: TdxLayoutItem;
    lcParameterGroup3: TdxLayoutGroup;
    procedure actReloadDataExecute(Sender: TObject);
    procedure cmbAccIDPropertiesCloseUp(Sender: TObject);
    procedure cmbStockIDPropertiesCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportStockActivityProfitLoss: TfrmReportStockActivityProfitLoss;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportStockActivityProfitLoss.actReloadDataExecute(
  Sender: TObject);
begin
  inherited;
  Report.Params[0].AsDate    := dtFrom.Date;
  Report.Params[1].AsDate    := dtUntil.Date;
  Report.Params[2].AsInteger := cmbAccID.EditValue;
  Report.Params[3].AsInteger := cmbStockID.EditValue;
end;

procedure TfrmReportStockActivityProfitLoss.cmbAccIDPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuAccount.Locate('ACCID', cmbAccID.EditValue, []) then
    txtAccName.Text := dmGlobal.IntDataLookup.cdsLuAccountACCNAME.AsString
  else
    txtAccName.Text := '';
end;

procedure TfrmReportStockActivityProfitLoss.cmbStockIDPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID', cmbStockID.EditValue, []) then
    txtStockName.Text := dmGlobal.IntDataLookup.cdsLuInstrumentSHORTNAME.AsString
  else
    txtStockName.Text := '';
end;

procedure TfrmReportStockActivityProfitLoss.FormCreate(Sender: TObject);
begin
  inherited;
  dtFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtUntil.Date := dtFrom.Date;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportStockActivityProfitLoss);

end.
