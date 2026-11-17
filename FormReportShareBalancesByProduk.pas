unit FormReportShareBalancesByProduk;

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
  TfrmReportShareBalancesByProduk = class(TfrmReport)
    dtReportDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    cbStock: TcxLookupComboBox;
    lcParameterItem3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportShareBalancesByProduk: TfrmReportShareBalancesByProduk;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportShareBalancesByProduk.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtReportDate.Date;
  Report.Params[1].AsInteger := cbStock.EditValue;
  inherited;

end;

procedure TfrmReportShareBalancesByProduk.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrument.Close;
    cdsLuInstrument.Open;
  end;
  dtReportDate.Date := dmGlobal.RemoteServer.gettransdate;
end;

end.
