unit FormReportDailyPaymentReceive;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxDropDownEdit, cxImageComboBox,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar,
  cxSplitter, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportDailyPaymentReceive = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cbNetType: TcxImageComboBox;
    lcParameterItem2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDailyPaymentReceive: TfrmReportDailyPaymentReceive;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportDailyPaymentReceive.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtReportDate.Date;
  Report.Params[1].AsString := cbNetType.EditValue;
  inherited;
end;

procedure TfrmReportDailyPaymentReceive.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
