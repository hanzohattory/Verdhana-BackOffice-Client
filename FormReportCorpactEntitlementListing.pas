unit FormReportCorpactEntitlementListing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxImageComboBox;

type
  TfrmReportCorpactEntitlementListing = class(TfrmReport)
    dtRPTDATEFROM: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRPTDATETO: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    cbReportType: TcxImageComboBox;
    lcParameterItem3: TdxLayoutItem;
    lcParameterGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCorpactEntitlementListing: TfrmReportCorpactEntitlementListing;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportCorpactEntitlementListing.actReloadDataExecute(
  Sender: TObject);
var
I : Integer;
begin
  i := cbReportType.EditValue;
  case i of
      1 :  Report.ReportName := 'Settlement\RightWarrantIssueEntitlementListing.fr3';
      2 :  Report.ReportName := 'Settlement\CashDividendEntitlementListing.fr3';
      3 :  Report.ReportName := 'Settlement\StockDividendEntitlementListing.fr3';
      5 :  Report.ReportName := 'Settlement\BonusEntitlementListing.fr3';
      6 :  Report.ReportName := 'Settlement\StockSplitEntitlementListing.fr3';
      7 :  Report.ReportName := 'Settlement\ReverseStockEntitlementListing.fr3';
  end;

  Report.Params[0].AsDate := dtRPTDATEFROM.Date;
  Report.Params[1].AsDate := dtRPTDATETO.Date;
  inherited;
end;

procedure TfrmReportCorpactEntitlementListing.FormCreate(Sender: TObject);
begin
  inherited;
  dtRPTDATEFROM.date := dmGlobal.RemoteServer.GetTransDate;
  dtRPTDATETO.date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
