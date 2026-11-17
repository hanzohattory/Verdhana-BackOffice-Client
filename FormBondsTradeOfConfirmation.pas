unit FormBondsTradeOfConfirmation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  System.Actions, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxSkinsdxBarPainter;

type
  TfrmBondsTradeConfirmation = class(TfrmReport)
    txtFromDate: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    txtUntilDate: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    txtAuthPerson: TcxLookupComboBox;
    lcParameterItem3: TdxLayoutItem;
    txtTradeNo: TcxLookupComboBox;
    lcParameterItem4: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
    procedure txtFromDatePropertiesCloseUp(Sender: TObject);
    procedure txtUntilDatePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure ReloadBondTradeNo;
  public
    { Public declarations }
  end;

var
  frmBondsTradeConfirmation: TfrmBondsTradeConfirmation;

implementation

{$R *.dfm}

uses DataLookup, DataGlobal;

procedure TfrmBondsTradeConfirmation.actReloadDataExecute(Sender: TObject);
var
  sJabatan: string;
  iTradeBondID: Integer;
begin
//  if dmGlobal.IntDataLookup.cdsLuAuthPerson.Locate('AUTH_NAME', txtAuthPerson.EditValue, []) then
//    sJabatan := dmGlobal.IntDataLookup.cdsLuAuthPersonJABATAN.AsString;

  if dmGlobal.IntDataLookup.cdsLuBondsDealTicket.Locate('TRADEBOND_NO', txtTradeNo.Text, []) then
    iTradeBondID := dmGlobal.IntDataLookup.cdsLuBondsDealTicketTRADEBOND_ID.AsInteger;

  Report.Params[0].AsString  := ''; //txtAuthPerson.EditValue; //<- untuk sementara
  Report.Params[1].AsString  := ''; //sJabatan;
  Report.Params[2].AsDate    := txtFromDate.Date;
  Report.Params[3].AsDate    := txtUntilDate.Date;
  Report.Params[4].AsString  := txtTradeNo.Text;
  Report.Params[5].AsInteger := iTradeBondID;
  inherited;
end;

procedure TfrmBondsTradeConfirmation.FormCreate(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsLuAuthPerson.Close;
  dmGlobal.IntDataLookup.cdsLuAuthPerson.Open;

  txtFromDate.Date  := dmGlobal.RemoteServer.GetTransDate;
  txtUntilDate.Date := dmGlobal.RemoteServer.GetTransDate;

  ReloadBondTradeNo;
end;

procedure TfrmBondsTradeConfirmation.ReloadBondTradeNo;
begin
  dmGlobal.IntDataLookup.cdsLuBondsDealTicket.Close;
  dmGlobal.IntDataLookup.cdsLuBondsDealTicket.Params[0].AsDate := txtFromDate.Date;
  dmGlobal.IntDataLookup.cdsLuBondsDealTicket.Params[1].AsDate := txtUntilDate.Date;
  dmGlobal.IntDataLookup.cdsLuBondsDealTicket.Open;
end;

procedure TfrmBondsTradeConfirmation.txtFromDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  ReloadBondTradeNo;
end;

procedure TfrmBondsTradeConfirmation.txtUntilDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  ReloadBondTradeNo;
end;

Initialization
  RegisterClass(TfrmBondsTradeConfirmation);

end.
