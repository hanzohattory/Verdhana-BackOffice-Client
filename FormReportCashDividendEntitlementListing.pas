unit FormReportCashDividendEntitlementListing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmReportCashDividendEntitlementListing = class(TfrmReport)
    dtRPTDATEFROM: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRPTDATETO: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCashDividendEntitlementListing: TfrmReportCashDividendEntitlementListing;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportCashDividendEntitlementListing.actReloadDataExecute(
  Sender: TObject);
begin
  report.Params[0].AsDate := dtRPTDATEFROM.Date;
  report.Params[1].AsDate := dtRPTDATETO.Date;

  inherited;
end;

procedure TfrmReportCashDividendEntitlementListing.FormCreate(Sender: TObject);
begin
  inherited;
  dtRPTDATEFROM.Date := dmglobal.RemoteServer.GetTransDate;
  dtRPTDATETO.Date := dmglobal.RemoteServer.GetTransDate;
end;

end.
