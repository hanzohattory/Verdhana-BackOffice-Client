unit FormReportStockPortfolio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit,
  cxCheckBox, cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  System.Actions;

type
  TfrmReportStockPortfolio = class(TfrmReport)
    dtTradeDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    chkAllUsers: TcxCheckBox;
    lcParameterItem2: TdxLayoutItem;
    txtAccIDFrom: TcxButtonEdit;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    txtAccIDTo: TcxButtonEdit;
    lcParameterItem4: TdxLayoutItem;
    txtAccNameFrom: TcxTextEdit;
    lcParameterItem5: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    txtAccNameTo: TcxTextEdit;
    lcParameterItem6: TdxLayoutItem;
    lcParameterGroup4: TdxLayoutGroup;
    cmbFilterBy: TcxImageComboBox;
    lcParameterItem7: TdxLayoutItem;
    lcParameterGroup5: TdxLayoutGroup;
    gpAccount: TdxLayoutGroup;
    txtStockCode: TcxLookupComboBox;
    lcParameterItem8: TdxLayoutItem;
    lcParameterGroup6: TdxLayoutGroup;
    gpStockCode: TdxLayoutGroup;
    lcParameterGroup8: TdxLayoutGroup;
    txtStockName: TcxTextEdit;
    lcParameterItem9: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure txtAccIDFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtAccIDToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkAllUsersPropertiesChange(Sender: TObject);
    procedure cmbFilterByPropertiesCloseUp(Sender: TObject);
    procedure txtStockCodePropertiesCloseUp(Sender: TObject);
  private
    FAccIDFrom, FAccIDTo: Int64;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportStockPortfolio: TfrmReportStockPortfolio;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportStockPortfolio.actReloadDataExecute(Sender: TObject);
var
  iAllUsers: Integer;
  sStockCode: Integer;
begin
  if chkAllUsers.Checked then
    iAllUsers := 1
  else
    iAllUsers := 0;

  if VarIsNull(txtStockCode.EditValue) then
    sStockCode := 0
  else
    sStockCode := txtStockCode.EditValue;


  Report.Params[0].AsDate    := dtTradeDate.Date;
  Report.Params[1].AsInteger := cmbFilterBy.EditValue;
  Report.Params[2].AsInteger := iAllUsers;
  Report.Params[3].AsInteger := FAccIDFrom;
  Report.Params[4].AsInteger := FAccIDTo;
  Report.Params[5].AsInteger := sStockCode;
  inherited;

end;

procedure TfrmReportStockPortfolio.chkAllUsersPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkAllUsers.Checked then
  begin
    lcParameterItem3.Enabled := False;
    lcParameterItem4.Enabled := False;
    lcParameterItem5.Enabled := False;
    lcParameterItem6.Enabled := False;

    txtAccIDFrom.EditValue := '';
    txtAccIDTo.EditValue   := '';
    txtAccNameFrom.EditValue := '';
    txtAccNameTo.EditValue   := '';
  end
  else
  begin
    lcParameterItem3.Enabled := True;
    lcParameterItem4.Enabled := True;
    lcParameterItem5.Enabled := True;
    lcParameterItem6.Enabled := True;

    txtAccIDFrom.EditValue := '';
    txtAccIDTo.EditValue   := '';
    txtAccNameFrom.EditValue := '';
    txtAccNameTo.EditValue   := '';
  end;
end;

procedure TfrmReportStockPortfolio.cmbFilterByPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  gpAccount.Visible   := cmbFilterBy.EditValue = '1';
  gpStockCode.Visible := cmbFilterBy.EditValue = '0';
end;

procedure TfrmReportStockPortfolio.FormShow(Sender: TObject);
begin
  inherited;
  dtTradeDate.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;
  end;
end;

procedure TfrmReportStockPortfolio.txtAccIDFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      FAccIDTo   := cdsLuAccountMultiFilterACCID.AsInteger;

      txtAccIDFrom.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameFrom.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;

      txtAccIDTo.EditValue    := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameTo.EditValue  := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportStockPortfolio.txtAccIDToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;

      txtAccIDTo.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameTo.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportStockPortfolio.txtStockCodePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentAll.Locate('INSTRUMENT_ID', txtStockCode.EditValue, []) then
      txtStockName.EditValue := cdsLuInstrumentAllSHORTNAME.AsString
    else
      txtStockName.EditValue := '';
  end;
end;

Initialization
  RegisterClass(TfrmReportStockPortfolio);

end.
