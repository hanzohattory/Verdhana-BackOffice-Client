unit FormReportCBestDailyTradeList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar;

type
  TfrmReportCBestDailyTradeList = class(TfrmReport)
    dtRPTDATEFROM: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtRPTDATETO: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    cbSTOCKIDFROM: TcxLookupComboBox;
    lcParameterItem3: TdxLayoutItem;
    cbSTOCKIDTO: TcxLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    lcParameterGroup2: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCBestDailyTradeList: TfrmReportCBestDailyTradeList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportCBestDailyTradeList.actReloadDataExecute(Sender: TObject);
begin
  report.Params[0].AsDate   := dtRPTDATEFROM.Date;
  report.Params[1].AsDate   := dtRPTDATETO.Date;
  report.Params[2].AsInteger:= cbStockIdFrom.EditValue;
  report.Params[3].AsInteger:= cbStockIdTo.EditValue;
  inherited;

end;

procedure TfrmReportCBestDailyTradeList.FormCreate(Sender: TObject);
begin
  inherited;
  dtRPTDATEFROM.date := dmGlobal.RemoteServer.GetTransDate;
  dtRPTDATETO.date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrument.Close;
    cdsLuInstrument.Open;
  end;
end;

end.
