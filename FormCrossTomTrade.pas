unit FormCrossTomTrade;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient, System.Actions, System.ImageList,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCrossTomTrade = class(TfrmBrowseData)
    cdsCrossTomTradeList: TNClientDataset;
    cdsCrossTomTrade: TNClientDataset;
    cdsCrossTomTradeListCROSSTOMID: TLargeintField;
    cdsCrossTomTradeListCROSSTOMCODE: TStringField;
    cdsCrossTomTradeListCROSSTOMDESC: TStringField;
    cdsCrossTomTradeListDEALTICKETID_BUY: TLargeintField;
    cdsCrossTomTradeListSEQID_BUY: TIntegerField;
    cdsCrossTomTradeListDEALTICKETID_SELL: TLargeintField;
    cdsCrossTomTradeListSEQID_SELL: TIntegerField;
    cdsCrossTomTradeListDEALTICKETDATE: TDateField;
    cdsCrossTomTradeListACCID_BUY: TIntegerField;
    cdsCrossTomTradeListACCNO_BUY: TStringField;
    cdsCrossTomTradeListACCNAME_BUY: TStringField;
    cdsCrossTomTradeListACCID_SELL: TIntegerField;
    cdsCrossTomTradeListACCNO_SELL: TStringField;
    cdsCrossTomTradeListACCNAME_SELL: TStringField;
    cdsCrossTomTradeListSTOCKID: TLargeintField;
    cdsCrossTomTradeListSTOCKCODE: TStringField;
    cdsCrossTomTradeListSTOCKNAME: TStringField;
    cdsCrossTomTradeListMARKETCODE: TStringField;
    cdsCrossTomTradeListCCYCODE: TStringField;
    cdsCrossTomTradeListQTY: TLargeintField;
    cdsCrossTomTradeListPRICE: TFloatField;
    cdsCrossTomTradeListVALUE: TFloatField;
    cdsCrossTomTradeListCDUEDATE: TDateField;
    cdsCrossTomTradeListSDUEDATE: TDateField;
    cdsCrossTomTradeListLISTED_DATE: TDateField;
    cdsCrossTomTradeListBOOKED_DATE: TDateField;
    cdsCrossTomTradeListSTATUS: TStringField;
    cdsCrossTomTradeListMODDA: TDateTimeField;
    cdsCrossTomTradeListMODUI: TStringField;
    cdsCrossTomTradeListAPPDA: TDateTimeField;
    cdsCrossTomTradeListAPPUI: TStringField;
    cdsCrossTomTradeListISDEL: TIntegerField;
    cdsCrossTomTradeListID: TLargeintField;
    cdsCrossTomTradeCROSSTOMID: TLargeintField;
    cdsCrossTomTradeCROSSTOMCODE: TStringField;
    cdsCrossTomTradeCROSSTOMDESC: TStringField;
    cdsCrossTomTradeDEALTICKETID_BUY: TLargeintField;
    cdsCrossTomTradeSEQID_BUY: TIntegerField;
    cdsCrossTomTradeDEALTICKETID_SELL: TLargeintField;
    cdsCrossTomTradeSEQID_SELL: TIntegerField;
    cdsCrossTomTradeDEALTICKETDATE: TDateField;
    cdsCrossTomTradeACCID_BUY: TIntegerField;
    cdsCrossTomTradeACCNO_BUY: TStringField;
    cdsCrossTomTradeACCNAME_BUY: TStringField;
    cdsCrossTomTradeACCID_SELL: TIntegerField;
    cdsCrossTomTradeACCNO_SELL: TStringField;
    cdsCrossTomTradeACCNAME_SELL: TStringField;
    cdsCrossTomTradeSTOCKID: TLargeintField;
    cdsCrossTomTradeSTOCKCODE: TStringField;
    cdsCrossTomTradeSTOCKNAME: TStringField;
    cdsCrossTomTradeMARKETCODE: TStringField;
    cdsCrossTomTradeCCYCODE: TStringField;
    cdsCrossTomTradeQTY: TLargeintField;
    cdsCrossTomTradePRICE: TFloatField;
    cdsCrossTomTradeVALUE: TFloatField;
    cdsCrossTomTradeCDUEDATE: TDateField;
    cdsCrossTomTradeSDUEDATE: TDateField;
    cdsCrossTomTradeLISTED_DATE: TDateField;
    cdsCrossTomTradeBOOKED_DATE: TDateField;
    cdsCrossTomTradeSTATUS: TStringField;
    cdsCrossTomTradeMODDA: TDateTimeField;
    cdsCrossTomTradeMODUI: TStringField;
    cdsCrossTomTradeAPPDA: TDateTimeField;
    cdsCrossTomTradeAPPUI: TStringField;
    cdsCrossTomTradeISDEL: TIntegerField;
    cdsCrossTomTradeID: TLargeintField;
    gvwMasterCROSSTOMCODE: TcxGridDBBandedColumn;
    gvwMasterCROSSTOMDESC: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterACCNO_BUY: TcxGridDBBandedColumn;
    gvwMasterACCNAME_BUY: TcxGridDBBandedColumn;
    gvwMasterACCNO_SELL: TcxGridDBBandedColumn;
    gvwMasterACCNAME_SELL: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    gvwMasterCDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSDUEDATE: TcxGridDBBandedColumn;
    gvwMasterLISTED_DATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    actCancelCrosstom: TNAction;
    CancelCrossingTomorrowTrade1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actCancelCrosstomExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrossTomTrade: TfrmCrossTomTrade;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCrossTomTrade.actCancelCrosstomExecute(Sender: TObject);
var
  sMsg : string;
begin
  inherited;
  if MessageDlg('Are you sure to cancel this Crossing Tomorrow Trade ('+cdsCrossTomTradeListCROSSTOMCODE.asString+') ?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      dmGlobal.RemoteServer.CancelCrosstom(cdsCrossTomTradeListCROSSTOMID.AsInteger,sMsg);
      ShowMessage(sMsg);
      cdsCrossTomTradeList.Refresh;
    end;
end;

procedure TfrmCrossTomTrade.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCrossTomTradeList.Close;
  cdsCrossTomTradeList.Open;
end;

Initialization
  RegisterClass(TfrmCrossTomTrade);

end.
