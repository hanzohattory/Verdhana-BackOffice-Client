unit FormReportBalanceSheetReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, cxImageComboBox;

type
  TfrmBalanceSheetReport = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cxLookupComboBox1: TcxLookupComboBox;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    cmbMode: TcxImageComboBox;
    lcParameterItem4: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanceSheetReport: TfrmBalanceSheetReport;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmBalanceSheetReport.actReloadDataExecute(Sender: TObject);
begin
  if cmbMode.EditValue = 'O' then
    Report.ReportName := 'Accounting\Balance_Sheet_Potrait.fr3'
  else
    Report.ReportName := 'Accounting\Balance_Sheet_Landscape.fr3';

  Report.Params[0].AsDateTime := dtReportDate.Date;
  inherited;

end;

procedure TfrmBalanceSheetReport.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmBalanceSheetReport);

end.
