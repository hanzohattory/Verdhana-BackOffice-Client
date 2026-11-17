unit FormReportCashStatement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox;

type
  TfrmReportCashStatement = class(TfrmReport)
    cbMonth: TcxImageComboBox;
    edYear: TcxSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    lcParameterItem3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCashStatement: TfrmReportCashStatement;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportCashStatement.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsInteger := cbMonth.EditValue;
  Report.Params[1].AsInteger := edYear.EditValue;
  inherited;

end;

procedure TfrmReportCashStatement.FormCreate(Sender: TObject);
var
  dtTransDate: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtTransDate := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtTransDate, iYear, iMonth, iDay);
  cbMonth.EditValue := iMonth;
  edYear.EditValue := iYear;
end;

end.
