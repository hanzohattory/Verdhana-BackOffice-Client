unit FormSInvestMonitoringList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxBarEditItem, Datasnap.DBClient, NClientDataset;

type
  TfrmSInvestMonitoringList = class(TfrmBrowseData)
    cdsSInvestMonitoringList: TNClientDataset;
    cdsSInvestMonitoringListCONID: TLargeintField;
    cdsSInvestMonitoringListDEALTICKETID: TLargeintField;
    cdsSInvestMonitoringListDealticketNo: TStringField;
    cdsSInvestMonitoringListTradeDate: TDateField;
    cdsSInvestMonitoringListSettlementDate: TDateField;
    cdsSInvestMonitoringListBRCode: TStringField;
    cdsSInvestMonitoringListBRName: TStringField;
    cdsSInvestMonitoringListIMCode: TStringField;
    cdsSInvestMonitoringListIMName: TStringField;
    cdsSInvestMonitoringListFundCode: TStringField;
    cdsSInvestMonitoringListFundName: TStringField;
    cdsSInvestMonitoringListSecurityCode: TStringField;
    cdsSInvestMonitoringListSecurityName: TStringField;
    cdsSInvestMonitoringListBuySell: TIntegerField;
    cdsSInvestMonitoringListPrice: TFloatField;
    cdsSInvestMonitoringListQuantity: TFloatField;
    cdsSInvestMonitoringListBrokerFee: TFloatField;
    cdsSInvestMonitoringListVAT: TFloatField;
    cdsSInvestMonitoringListIDXLevy: TFloatField;
    cdsSInvestMonitoringListVATLevy: TFloatField;
    cdsSInvestMonitoringListKPEI: TFloatField;
    cdsSInvestMonitoringListSalesTax: TFloatField;
    cdsSInvestMonitoringListWHT: TFloatField;
    cdsSInvestMonitoringListCurrency: TStringField;
    cdsSInvestMonitoringListNetAmount: TFloatField;
    dtTrade: TcxBarEditItem;
    gvwMasterCONID: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETID: TcxGridDBBandedColumn;
    gvwMasterDealticketNo: TcxGridDBBandedColumn;
    gvwMasterTradeDate: TcxGridDBBandedColumn;
    gvwMasterSettlementDate: TcxGridDBBandedColumn;
    gvwMasterBRCode: TcxGridDBBandedColumn;
    gvwMasterBRName: TcxGridDBBandedColumn;
    gvwMasterIMCode: TcxGridDBBandedColumn;
    gvwMasterIMName: TcxGridDBBandedColumn;
    gvwMasterFundCode: TcxGridDBBandedColumn;
    gvwMasterFundName: TcxGridDBBandedColumn;
    gvwMasterSecurityCode: TcxGridDBBandedColumn;
    gvwMasterSecurityName: TcxGridDBBandedColumn;
    gvwMasterBuySell: TcxGridDBBandedColumn;
    gvwMasterPrice: TcxGridDBBandedColumn;
    gvwMasterQuantity: TcxGridDBBandedColumn;
    gvwMasterBrokerFee: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterIDXLevy: TcxGridDBBandedColumn;
    gvwMasterVATLevy: TcxGridDBBandedColumn;
    gvwMasterKPEI: TcxGridDBBandedColumn;
    gvwMasterSalesTax: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    gvwMasterCurrency: TcxGridDBBandedColumn;
    gvwMasterNetAmount: TcxGridDBBandedColumn;
    actGenerateTradeConfirmTxt: TNAction;
    actGenerateTradeConfirmCsv: TNAction;
    actGenerateTradeDetailTxt: TNAction;
    actGenerateTradeDetailCsv: TNAction;
    N1: TMenuItem;
    GenerateTradeConfirmation1: TMenuItem;
    GenerateTradeDetail1: TMenuItem;
    GenerateTradeConfirmationtxt1: TMenuItem;
    GenerateTradeConfirmationcsv1: TMenuItem;
    GenerateTradeDetailtxt1: TMenuItem;
    GenerateTradeDetailcsv1: TMenuItem;
    cdsSInvestMonitoringListAccountCode: TStringField;
    gvwMasterAccountCode: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actGenerateTradeConfirmTxtExecute(Sender: TObject);
    procedure actGenerateTradeConfirmCsvExecute(Sender: TObject);
    procedure actGenerateTradeDetailTxtExecute(Sender: TObject);
    procedure actGenerateTradeDetailCsvExecute(Sender: TObject);
    procedure cdsSInvestMonitoringListBuySellGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    FSysDate: TDate;
  public
    { Public declarations }
  end;

var
  frmSInvestMonitoringList: TfrmSInvestMonitoringList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSInvestMonitoringList.actGenerateTradeConfirmCsvExecute(
  Sender: TObject);
var
  sMsg: string;
  sConID, sDealTicketID: string;
  i: Integer;
begin
  inherited;
  sConID        := '';
  sDealTicketID := '';

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    if sConID = '' then
      sConID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index])
    else
      sConID := sConID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index]);

    if sDealTicketID = '' then
      sDealTicketID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index])
    else
      sDealTicketID := sDealTicketID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index]);
  end;

  dmGlobal.IntDataSInvest.GenerateSInvestTradeConfirmBySelected(sConID, sDealTicketID, 'csv', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmSInvestMonitoringList.actGenerateTradeConfirmTxtExecute(
  Sender: TObject);
var
  sMsg: string;
  sConID, sDealTicketID: string;
  i: Integer;
begin
  inherited;
  sConID        := '';
  sDealTicketID := '';

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    if sConID = '' then
      sConID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index])
    else
      sConID := sConID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index]);

    if sDealTicketID = '' then
      sDealTicketID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index])
    else
      sDealTicketID := sDealTicketID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index]);
  end;

  dmGlobal.IntDataSInvest.GenerateSInvestTradeConfirmBySelected(sConID, sDealTicketID, 'txt', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmSInvestMonitoringList.actGenerateTradeDetailCsvExecute(
  Sender: TObject);
var
  sMsg: string;
  sConID, sDealTicketID: string;
  i: Integer;
begin
  inherited;
  sConID        := '';
  sDealTicketID := '';

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    if sConID = '' then
      sConID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index])
    else
      sConID := sConID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index]);

    if sDealTicketID = '' then
      sDealTicketID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index])
    else
      sDealTicketID := sDealTicketID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index]);
  end;

  dmGlobal.IntDataSInvest.GenerateSInvestTradeDetailBySelected(sConID, sDealTicketID, 'csv', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmSInvestMonitoringList.actGenerateTradeDetailTxtExecute(
  Sender: TObject);
var
  sMsg: string;
  sConID, sDealTicketID: string;
  i: Integer;
begin
  inherited;
  sConID        := '';
  sDealTicketID := '';

  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    if sConID = '' then
      sConID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index])
    else
      sConID := sConID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index]);

    if sDealTicketID = '' then
      sDealTicketID := intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index])
    else
      sDealTicketID := sDealTicketID +';'+ intToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index]);
  end;

  dmGlobal.IntDataSInvest.GenerateSInvestTradeDetailBySelected(sConID, sDealTicketID, 'txt', sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmSInvestMonitoringList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsSInvestMonitoringList.Close;
  cdsSInvestMonitoringList.Params[0].AsDate := VarToDateTime(dtTrade.EditValue);
  cdsSInvestMonitoringList.Open;
end;

procedure TfrmSInvestMonitoringList.cdsSInvestMonitoringListBuySellGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '1' then
    Text := 'Buy'
  else if Sender.AsString = '2' then
    Text := 'Sell';
end;

procedure TfrmSInvestMonitoringList.FormCreate(Sender: TObject);
begin
  inherited;
  FSysDate := dmGlobal.RemoteServer.GetTransDate;

  dtTrade.EditValue := FSysDate;
  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmSInvestMonitoringList);

end.
