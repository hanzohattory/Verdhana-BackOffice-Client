unit FormReportFundStatement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxSpinEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  cxTextEdit, dxLayoutContainer, cxMaskEdit, cxButtonEdit, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutControl, frxClass, frxPreview, DateUtils, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, System.Actions;

type
  TfrmReportFundStatement = class(TfrmReport)
    lcParameterItem1: TdxLayoutItem;
    edAccCode: TcxButtonEdit;
    lcParameterItem2: TdxLayoutItem;
    edAccName: TcxTextEdit;
    edYear: TcxSpinEdit;
    lcYear: TdxLayoutItem;
    lcParameterGroup4: TdxLayoutGroup;
    lcParameterGroup1: TdxLayoutGroup;
    cmbFiltering: TcxComboBox;
    lcParameterItem5: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    dtFromDate: TcxDateEdit;
    lcFromDate: TdxLayoutItem;
    dtUntilDate: TcxDateEdit;
    lcUntilDate: TdxLayoutItem;
    cbMonth: TcxImageComboBox;
    lcPeriode: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
    procedure cmbFilteringPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmReportFundStatement: TfrmReportFundStatement;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportFundStatement.actReloadDataExecute(Sender: TObject);
var
  dtLastMonthDate: TDateTime;
  iYear, iMonth: Word;

  dtFrom, dtUntil: TDateTime;
begin
  if cmbFiltering.Text = 'Month' then
  begin
    iYear := edYear.EditValue;
    iMonth := cbMonth.EditValue;
    dtLastMonthDate := EndOfAMonth(iYear, iMonth);

    dtFrom  := EncodeDate(iYear, iMonth, 1);
    dtUntil := dtLastMonthDate;
  end
  else
  begin
    dtFrom  := dtFromDate.Date;
    dtUntil := dtUntilDate.Date;
  end;

  Report.Params[0].AsInteger := FAccID;
  Report.Params[1].AsDate    := dtFrom;
  Report.Params[2].AsDate    := dtUntil;

  inherited;
end;

procedure TfrmReportFundStatement.cmbFilteringPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  lcPeriode.Visible   := False;
  lcYear.Visible      := False;
  lcFromDate.Visible  := False;
  lcUntilDate.Visible := False;

  if cmbFiltering.Text = 'Month' then
  begin
    lcPeriode.Visible := True;
    lcYear.Visible    := True;
  end
  else
  begin
    lcFromDate.Visible  := True;
    lcUntilDate.Visible := True;
  end;
end;

procedure TfrmReportFundStatement.edAccCodePropertiesButtonClick(
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

procedure TfrmReportFundStatement.FormCreate(Sender: TObject);
var
  dtTransDate: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  FAccID := 0;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtTransDate, iYear, iMonth, iDay);
  cbMonth.EditValue := iMonth;
  edYear.EditValue := iYear;
end;

Initialization
  RegisterClass(TfrmReportFundStatement);

end.
