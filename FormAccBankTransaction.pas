unit FormAccBankTransaction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxCheckBox,
  cxDropDownEdit, cxCalendar, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, NReportClient, Vcl.ActnList, dxBar, cxClasses,
  NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutControl,
  frxClass, frxPreview, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmReportAccBankTransaction = class(TfrmReport)
    txtAccIDFrom: TcxButtonEdit;
    lcParameterItem1: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    txtAccIDTo: TcxButtonEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    lcParameterGroup3: TdxLayoutGroup;
    dtFrom: TcxDateEdit;
    From: TdxLayoutItem;
    dtTo: TcxDateEdit;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup4: TdxLayoutGroup;
    chkMSOP: TcxCheckBox;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup5: TdxLayoutGroup;
    txtAccNameFrom: TcxTextEdit;
    lcParameterItem7: TdxLayoutItem;
    lcParameterGroup6: TdxLayoutGroup;
    txtAccNameTo: TcxTextEdit;
    lcParameterItem8: TdxLayoutItem;
    lcParameterGroup7: TdxLayoutGroup;
    txtAccMSOPNameFrom: TcxTextEdit;
    lcParameterItem9: TdxLayoutItem;
    txtAccMSOPNameTo: TcxTextEdit;
    txtAccMSOPName: TdxLayoutItem;
    lcParameterGroup8: TdxLayoutGroup;
    txtAccMSOPIDFrom: TcxLookupComboBox;
    lcParameterItem10: TdxLayoutItem;
    txtAccMSOPIDTo: TcxLookupComboBox;
    lcParameterItem5: TdxLayoutItem;
    procedure actReloadDataExecute(Sender: TObject);
    procedure txtAccIDFromPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtAccIDToPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure chkMSOPPropertiesChange(Sender: TObject);
    procedure txtAccMSOPIDFromExit(Sender: TObject);
    procedure txtAccMSOPIDToExit(Sender: TObject);
  private
    { Private declarations }
    FAccIDFrom, FAccIDTo: Int64;
    FAccMSOPIDFrom, FAccMSOPIDTo: Int64;

    procedure EnableAccountMSOP;
  public
    { Public declarations }
  end;

var
  frmReportAccBankTransaction: TfrmReportAccBankTransaction;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportAccBankTransaction.actReloadDataExecute(
  Sender: TObject);
var
  isMSOP: String;
begin
  if VarIsNull(FAccIDFrom) then FAccIDFrom := 0;
  if VarIsNull(FAccIDTo)   then FAccIDTo := 0;

  if VarIsNull(txtAccMSOPIDFrom.EditValue) then
    FAccMSOPIDFrom := 0
  else
    FAccMSOPIDFrom := txtAccMSOPIDFrom.EditValue;

  if VarIsNull(txtAccMSOPIDTo.EditValue) then
    FAccMSOPIDTo := 0
  else
    FAccMSOPIDTo := txtAccMSOPIDTo.EditValue;

  if not chkMSOP.Checked then
  begin
    isMSOP := '0';
    FAccMSOPIDFrom := 0;
    FAccMSOPIDTo := 0;
  end
  else
    isMSOP := '1';
  

  Report.Params[0].AsLargeInt := FAccIDFrom;
  Report.Params[1].AsLargeInt := FAccIDTo;
  Report.Params[2].AsDate     := dtFrom.Date;
  Report.Params[3].AsDate     := dtTo.Date;
  Report.Params[4].AsString   := isMSOP;
  Report.Params[5].AsLargeInt := FAccMSOPIDFrom;
  Report.Params[6].AsLargeInt := FAccMSOPIDTo;

  inherited;
end;

procedure TfrmReportAccBankTransaction.chkMSOPPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkMSOP.Checked then
  begin
    txtAccMSOPIDFrom.Enabled       := True;
    txtAccMSOPIDFrom.ParentColor   := False;
    txtAccMSOPNameFrom.Enabled     := True;
    txtAccMSOPNameFrom.ParentColor := False;

    txtAccMSOPIDTo.Enabled       := True;
    txtAccMSOPIDTo.ParentColor   := False;
    txtAccMSOPNameTo.Enabled     := True;
    txtAccMSOPNameTo.ParentColor := False;

    with dmGlobal.IntDataLookup do
    begin
      cdsluAccSOPByAccID.Close;
      cdsluAccSOPByAccID.Params[0].AsInteger := FAccIDFrom;
      cdsluAccSOPByAccID.Open;
    end;
  end
  else
  begin
    txtAccMSOPIDFrom.Enabled       := False;
    txtAccMSOPIDFrom.ParentColor   := True;
    txtAccMSOPNameFrom.Enabled     := False;
    txtAccMSOPNameFrom.ParentColor := True;

    txtAccMSOPIDTo.Enabled       := False;
    txtAccMSOPIDTo.ParentColor   := True;
    txtAccMSOPNameTo.Enabled     := False;
    txtAccMSOPNameTo.ParentColor := True;

//    txtAccMSOPIDFrom.EditValue   := '';
//    txtAccMSOPNameFrom.EditValue := '';
//    txtAccMSOPIDTo.EditValue     := '';
//    txtAccMSOPNameTo.EditValue   := '';
  end;
end;

procedure TfrmReportAccBankTransaction.EnableAccountMSOP;
begin
  txtAccIDFrom.EditValue   := '';
  txtAccNameFrom.EditValue := '';
  txtAccIDTo.EditValue     := '';
  txtAccNameTo.EditValue   := '';

  if chkMSOP.EditValue = '1' then
  begin
    txtAccIDFrom.Enabled   := True;
    txtAccNameFrom.Enabled := True;
    txtAccIDTo.Enabled     := True;
    txtAccNameTo.Enabled   := True;
  end
  else
  begin
    txtAccIDFrom.Enabled   := False;
    txtAccNameFrom.Enabled := False;
    txtAccIDTo.Enabled     := False;
    txtAccNameTo.Enabled   := False;
  end;
end;

procedure TfrmReportAccBankTransaction.FormShow(Sender: TObject);
var
  dtTransDate: TDate;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;

  dtFrom.Date := dtTransDate;
  dtTo.Date   := dtTransDate;
end;

procedure TfrmReportAccBankTransaction.txtAccIDFromPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccIDFrom) = mrOK then
    begin
      FAccIDFrom := cdsLuAccountMultiFilterACCID.AsInteger;
      FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;

      txtAccIDFrom.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameFrom.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;

      txtAccIDTo.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
      txtAccNameTo.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportAccBankTransaction.txtAccIDToPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if chkMSOP.Checked then
    MessageDlg('Can not change if Is MSOP Account is checked', mtInformation, [mbOk], 0)
  else
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(FAccIDTo) = mrOK then
      begin
        FAccIDTo := cdsLuAccountMultiFilterACCID.AsInteger;

        txtAccIDTo.EditValue   := cdsLuAccountMultiFilterACCCODE.AsString;
        txtAccNameTo.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmReportAccBankTransaction.txtAccMSOPIDFromExit(
  Sender: TObject);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsluAccSOPByAccID.Locate('SOPID', txtAccMSOPIDFrom.EditValue, []) then
    txtAccMSOPNameFrom.EditValue := dmGlobal.IntDataLookup.cdsluAccSOPByAccIDSOPDESC.AsString;
end;

procedure TfrmReportAccBankTransaction.txtAccMSOPIDToExit(Sender: TObject);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsluAccSOPByAccID.Locate('SOPID', txtAccMSOPIDTo.EditValue, []) then
    txtAccMSOPNameTo.EditValue := dmGlobal.IntDataLookup.cdsluAccSOPByAccIDSOPDESC.AsString;
end;

Initialization
  RegisterClass(TfrmReportAccBankTransaction);

end.
