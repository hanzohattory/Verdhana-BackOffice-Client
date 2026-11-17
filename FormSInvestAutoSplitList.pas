unit FormSInvestAutoSplitList;

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
  Datasnap.DBClient, NClientDataset, cxCalendar, cxBarEditItem;

type
  TfrmSInvestAutoSplitList = class(TfrmBrowseData)
    cdsSInvestAutoSplitList: TNClientDataset;
    cdsSInvestAutoSplitListTCReferenceNo: TStringField;
    cdsSInvestAutoSplitListIMCode: TStringField;
    cdsSInvestAutoSplitListIMName: TStringField;
    cdsSInvestAutoSplitListFundCode: TStringField;
    cdsSInvestAutoSplitListFundName: TStringField;
    cdsSInvestAutoSplitListSecurityCode: TStringField;
    cdsSInvestAutoSplitListBuySell: TStringField;
    cdsSInvestAutoSplitListPrice: TFloatField;
    cdsSInvestAutoSplitListQuantity: TFloatField;
    cdsSInvestAutoSplitListTradeAmount: TFloatField;
    cdsSInvestAutoSplitListDealticketID: TLargeintField;
    cdsSInvestAutoSplitListDealticketCode: TStringField;
    cdsSInvestAutoSplitListMatched: TStringField;
    gvwMasterTCReferenceNo: TcxGridDBBandedColumn;
    gvwMasterIMCode: TcxGridDBBandedColumn;
    gvwMasterIMName: TcxGridDBBandedColumn;
    gvwMasterFundCode: TcxGridDBBandedColumn;
    gvwMasterFundName: TcxGridDBBandedColumn;
    gvwMasterSecurityCode: TcxGridDBBandedColumn;
    gvwMasterBuySell: TcxGridDBBandedColumn;
    gvwMasterPrice: TcxGridDBBandedColumn;
    gvwMasterQuantity: TcxGridDBBandedColumn;
    gvwMasterTradeAmount: TcxGridDBBandedColumn;
    gvwMasterDealticketID: TcxGridDBBandedColumn;
    gvwMasterDealticketCode: TcxGridDBBandedColumn;
    gvwMasterMatched: TcxGridDBBandedColumn;
    dtTrade: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    actGenerateSInvest: TNAction;
    cdsSInvestAutoSplitListDTSTATUS: TStringField;
    gvwMasterDTSTATUS: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGenerateSInvestExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSInvestAutoSplitList: TfrmSInvestAutoSplitList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSInvestAutoSplitList.actGenerateSInvestExecute(Sender: TObject);
var
  sMsg: string;
  fTrade: TDateTime;
begin
  inherited;
  sMsg := '';

  if MessageQuestion('Are You Sure Want To Generate S-Invest AutoSplit ?') then
  begin
    fTrade := VarToDateTime(dtTrade.EditValue);

    dmGlobal.RemoteServer.sInvestAutoSplit(fTrade, sMsg);
    MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmSInvestAutoSplitList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsSInvestAutoSplitList.Close;
  cdsSInvestAutoSplitList.Params[0].AsDate := VarToDateTime(dtTrade.EditValue);
  cdsSInvestAutoSplitList.Open;
end;

procedure TfrmSInvestAutoSplitList.FormCreate(Sender: TObject);
begin
  inherited;
  dtTrade.EditValue := dmGlobal.RemoteServer.GetTransDate;

  actRefresh.Execute;
end;

end.
