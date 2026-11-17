unit FormReportCashVoucher;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxDropDownEdit,
  cxImageComboBox, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxCalendar,
  NReportClient, Vcl.ActnList, dxBar, cxClasses, NActionPermission,
  Vcl.Menus, dxStatusBar, cxSplitter, dxLayoutControl, frxClass, frxPreview,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmRptCashVoucher = class(TfrmReport)
    CashVoucherID: TcxLookupComboBox;
    lcParameterItem1: TdxLayoutItem;
    dtVoucherDate: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure dtVoucherDatePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRptCashVoucher: TfrmRptCashVoucher;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmRptCashVoucher.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsInteger := CashVoucherID.EditValue;

  inherited;
end;

procedure TfrmRptCashVoucher.dtVoucherDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookUp.cdsluCashVoucher.Close;
  dmGlobal.IntDataLookUp.cdsluCashVoucher.Params[0].AsDate := dtVoucherDate.Date;
  dmGlobal.IntDataLookUp.cdsluCashVoucher.Open;
end;

procedure TfrmRptCashVoucher.FormCreate(Sender: TObject);
begin
  inherited;
  dtVoucherDate.Date := dmGlobal.RemoteServer.GetTransDate;

  dmGlobal.IntDataLookUp.cdsluCashVoucher.Close;
  dmGlobal.IntDataLookUp.cdsluCashVoucher.Params[0].AsDate := dtVoucherDate.Date;
  dmGlobal.IntDataLookUp.cdsluCashVoucher.Open;
end;

Initialization
  RegisterClass(TfrmRptCashVoucher);

end.
