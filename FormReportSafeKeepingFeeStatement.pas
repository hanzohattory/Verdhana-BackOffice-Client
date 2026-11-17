unit FormReportSafeKeepingFeeStatement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxSpinEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit,
  cxTextEdit, dxLayoutContainer, cxMaskEdit, cxButtonEdit, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutControl, frxClass, frxPreview, DateUtils, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar;

type
  TfrmReportSafeKeepingFeeStatement = class(TfrmReport)
    cbMonth: TcxImageComboBox;
    lcParameterItem1: TdxLayoutItem;
    edYear: TcxSpinEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    edAccCode: TcxButtonEdit;
    lcParameterItem3: TdxLayoutItem;
    edAccName: TcxTextEdit;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
  private
    FAccID : Integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportSafeKeepingFeeStatement: TfrmReportSafeKeepingFeeStatement;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportSafeKeepingFeeStatement.actReloadDataExecute(
  Sender: TObject);
var
  dtLastMonthDate: TDateTime;
  iYear, iMonth: Word;

  dtFrom, dtUntil: TDateTime;
begin
  Report.Params[0].AsInteger    := cbMonth.EditValue;
  Report.Params[1].AsInteger    := edYear.EditValue;
  Report.Params[2].AsInteger := FAccID;
  inherited;
end;

procedure TfrmReportSafeKeepingFeeStatement.edAccCodePropertiesButtonClick(
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

procedure TfrmReportSafeKeepingFeeStatement.FormCreate(Sender: TObject);
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

end.
