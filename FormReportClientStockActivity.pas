unit FormReportClientStockActivity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxButtonEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutControl, frxClass, frxPreview, cxCheckBox, cxBarEditItem,
  System.Actions;

type
  TfrmReportClientStockActivity = class(TfrmReport)
    barMReportBar1: TdxBar;
    dtFrom: TcxBarEditItem;
    dtUntil: TcxBarEditItem;
    barMReportBar2: TdxBar;
    barMReportBar3: TdxBar;
    chkAllAccount: TcxBarEditItem;
    edAccCode: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    chkAllStock: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    edStockName: TcxBarEditItem;
    edStockCode: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure cxBarEditItem4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edStockCodePropertiesCloseUp(Sender: TObject);
    procedure chkAllAccountPropertiesChange(Sender: TObject);
    procedure chkAllStockPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientStockActivity: TfrmReportClientStockActivity;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportClientStockActivity.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate   := dtFrom.EditValue;
  Report.Params[1].AsDate   := dtUntil.EditValue;
  Report.Params[2].AsString := chkAllAccount.EditValue;
  Report.Params[3].AsString := edAccCode.EditValue;
  Report.Params[4].AsString := chkAllStock.EditValue;
  Report.Params[5].AsString := edStockCode.EditValue;

  inherited;
end;

procedure TfrmReportClientStockActivity.chkAllAccountPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllAccount.EditValue = '1' then
  begin
    edAccCode.EditValue := '';
    edAccName.EditValue := '';

    edAccCode.Properties.ReadOnly := True;
  end
  else
    edAccCode.Properties.ReadOnly := False;
end;

procedure TfrmReportClientStockActivity.chkAllStockPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllStock.EditValue = '1' then
  begin
    edStockCode.EditValue := '';
    edStockName.EditValue := '';

    edStockCode.Properties.ReadOnly := True;
  end
  else
    edStockCode.Properties.ReadOnly := False;
end;

procedure TfrmReportClientStockActivity.cxBarEditItem4PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if chkAllAccount.EditValue = '0' then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(0, True) = mrOK then
      begin
        edAccCode.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
        edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmReportClientStockActivity.edStockCodePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_CODE', edStockCode.EditValue, []) then
      edStockName.EditValue := cdsLuInstrumentAllSHORTNAME.AsString;
  end;
end;

procedure TfrmReportClientStockActivity.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuInstrumentAll.Active then
      cdsLuInstrumentAll.Open;
  end;
end;

procedure TfrmReportClientStockActivity.FormShow(Sender: TObject);
var
  dtTransDate: TDate;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;

  dtFrom.EditValue  := dtTransDate;
  dtUntil.EditValue := dtTransDate;

  edAccCode.EditValue   := '';
  edStockCode.EditValue := '';

  chkAllAccount.EditValue := '0';
  chkAllStock.EditValue   := '0';
end;

end.
