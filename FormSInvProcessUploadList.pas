unit FormSInvProcessUploadList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCalendar, dxBar,
  cxBarEditItem, NReportClient, NDatasetContainer, cxClasses, System.Actions,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  System.ImageList, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxImageComboBox;

type
  TfrmSInvProcessUploadList = class(TfrmBrowseData)
    dtTrade: TcxBarEditItem;
    cdsTradeDetailUpload: TNClientDataset;
    actGenerateSInvTD: TNAction;
    GenerateSInvestTradeDetail1: TMenuItem;
    cdsTradeDetailUploadTransactionStatus: TStringField;
    cdsTradeDetailUploadTDReferenceID: TStringField;
    cdsTradeDetailUploadTradeDate: TDateField;
    cdsTradeDetailUploadSettlementDate: TDateField;
    cdsTradeDetailUploadBRCode: TStringField;
    cdsTradeDetailUploadBRName: TStringField;
    cdsTradeDetailUploadIMCode: TStringField;
    cdsTradeDetailUploadIMName: TStringField;
    cdsTradeDetailUploadSecurityCode: TStringField;
    cdsTradeDetailUploadSecurityName: TStringField;
    cdsTradeDetailUploadBuySell: TIntegerField;
    cdsTradeDetailUploadPrice: TFloatField;
    gvwMasterTransactionStatus: TcxGridDBBandedColumn;
    gvwMasterTDReferenceID: TcxGridDBBandedColumn;
    gvwMasterTradeDate: TcxGridDBBandedColumn;
    gvwMasterSettlementDate: TcxGridDBBandedColumn;
    gvwMasterBRCode: TcxGridDBBandedColumn;
    gvwMasterBRName: TcxGridDBBandedColumn;
    gvwMasterIMCode: TcxGridDBBandedColumn;
    gvwMasterIMName: TcxGridDBBandedColumn;
    gvwMasterSecurityCode: TcxGridDBBandedColumn;
    gvwMasterSecurityName: TcxGridDBBandedColumn;
    gvwMasterBuySell: TcxGridDBBandedColumn;
    gvwMasterPrice: TcxGridDBBandedColumn;
    cdsTradeDetailUploadQuantity: TFloatField;
    cdsTradeDetailUploadTDReferenceNo: TStringField;
    gvwMasterQuantity: TcxGridDBBandedColumn;
    gvwMasterTDReferenceNo: TcxGridDBBandedColumn;
    actGenerateSInvTDcsv: TNAction;
    FormatText1: TMenuItem;
    Formatcsv1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actGenerateSInvTDExecute(Sender: TObject);
    procedure actGenerateSInvTDcsvExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSInvProcessUploadList: TfrmSInvProcessUploadList;

implementation

{$R *.dfm}

uses DataGlobal, DataSInvest;

procedure TfrmSInvProcessUploadList.actGenerateSInvTDcsvExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.IntDataSInvest.GenerateTradeDetailEquityUpload(dtTrade.EditValue, 'csv', sMsg);
  ShowMessage(sMsg);
end;

procedure TfrmSInvProcessUploadList.actGenerateSInvTDExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.IntDataSInvest.GenerateTradeDetailEquityUpload(dtTrade.EditValue, 'txt', sMsg);
  ShowMessage(sMsg);
end;

procedure TfrmSInvProcessUploadList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsTradeDetailUpload.Close;
  cdsTradeDetailUpload.Params[0].AsDate   := dtTrade.EditValue;
  cdsTradeDetailUpload.Params[1].AsString := '';
  cdsTradeDetailUpload.Open;
end;

procedure TfrmSInvProcessUploadList.FormCreate(Sender: TObject);
var
  dDate: TDate;
begin
  inherited;
  dDate := dmGlobal.RemoteServer.GetTransDate;

  cdsTradeDetailUpload.Close;
  cdsTradeDetailUpload.Params[0].AsDate   := dDate;
  cdsTradeDetailUpload.Params[1].AsString := 'NEWM';
  cdsTradeDetailUpload.Open;
end;

procedure TfrmSInvProcessUploadList.FormShow(Sender: TObject);
begin
  inherited;
  dtTrade.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmSInvProcessUploadList);

end.
