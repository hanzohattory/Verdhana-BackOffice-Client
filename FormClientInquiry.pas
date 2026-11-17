unit FormClientInquiry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, Vcl.ActnList, NDatasetAction,
  NActionPermission, Vcl.Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxPC, Datasnap.DBClient, NClientDataset, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxCalendar, dxLayoutControl, cxButtonEdit,
  LMDDckSite, System.DateUtils, System.Actions;

type
  TfrmClientInquiry = class(TfrmBasic)
    aclClientInquiry: TActionList;
    actViewList: TNAction;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDateStart: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dsCashPosition: TDataSource;
    dsStockPosition: TDataSource;
    cdsClientCashPosition: TNClientDataset;
    cdsClientStockPosition: TNClientDataset;
    edAccCode: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edAccName: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dtTransDateEnd: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    Site: TLMDDockSite;
    panStockPos: TLMDDockPanel;
    panelCashPos: TLMDDockPanel;
    DockManager: TLMDDockManager;
    grdStockPos: TcxGrid;
    gvwStockPos: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    grdCashPos: TcxGrid;
    gvwCashPos: TcxGridDBBandedTableView;
    grdCashPosLevel1: TcxGridLevel;
    cdsClientCashPositionACCID: TLargeintField;
    cdsClientCashPositionCCY: TStringField;
    cdsClientCashPositionCashOnHand: TFloatField;
    cdsClientCashPositionCashOnHold: TFloatField;
    cdsClientCashPositionCashOuts: TFloatField;
    cdsClientCashPositionNetCashAmount: TFloatField;
    cdsClientStockPositionACCID: TLargeintField;
    cdsClientStockPositionStockCode: TStringField;
    cdsClientStockPositionStockName: TStringField;
    cdsClientStockPositionAvgPrice: TFloatField;
    cdsClientStockPositionClosePrice: TFloatField;
    cdsClientStockPositionStockOnHand: TFloatField;
    cdsClientStockPositionStockOnHold: TFloatField;
    cdsClientStockPositionStockOuts: TFloatField;
    cdsClientStockPositionStockBalance: TFloatField;
    cdsClientStockPositionStockBal_Value: TFloatField;
    cdsClientStockPositionStockBal_MktValue: TFloatField;
    cdsClientStockPositionUnReal_LossProfit: TFloatField;
    cdsClientStockPositionLastCP: TDateField;
    gvwCashPosACCID: TcxGridDBBandedColumn;
    gvwCashPosCCY: TcxGridDBBandedColumn;
    gvwCashPosCashOnHand: TcxGridDBBandedColumn;
    gvwCashPosCashOnHold: TcxGridDBBandedColumn;
    gvwCashPosCashOuts: TcxGridDBBandedColumn;
    gvwCashPosNetCashAmount: TcxGridDBBandedColumn;
    gvwStockPosACCID: TcxGridDBBandedColumn;
    gvwStockPosStockCode: TcxGridDBBandedColumn;
    gvwStockPosStockName: TcxGridDBBandedColumn;
    gvwStockPosAvgPrice: TcxGridDBBandedColumn;
    gvwStockPosClosePrice: TcxGridDBBandedColumn;
    gvwStockPosStockOnHand: TcxGridDBBandedColumn;
    gvwStockPosStockOnHold: TcxGridDBBandedColumn;
    gvwStockPosStockOuts: TcxGridDBBandedColumn;
    gvwStockPosStockBalance: TcxGridDBBandedColumn;
    gvwStockPosStockBal_Value: TcxGridDBBandedColumn;
    gvwStockPosStockBal_MktValue: TcxGridDBBandedColumn;
    gvwStockPosUnReal_LossProfit: TcxGridDBBandedColumn;
    gvwStockPosLastCP: TcxGridDBBandedColumn;
    panelCashLedgerBal: TLMDDockPanel;
    cdsClientCashLedgerBal: TNClientDataset;
    cdsClientCashLedgerBalACCID: TLargeintField;
    cdsClientCashLedgerBalLEDGERACC: TStringField;
    cdsClientCashLedgerBalLEDGERTYPE: TStringField;
    cdsClientCashLedgerBalLEDGERTYPENAME: TStringField;
    cdsClientCashLedgerBalCCY: TStringField;
    cdsClientCashLedgerBalBALANCE: TFloatField;
    cdsClientCashTrack: TNClientDataset;
    cdsClientCashTrackACCID: TLargeintField;
    cdsClientCashTrackTRDATE: TDateField;
    cdsClientCashTrackDUEDATE: TDateField;
    cdsClientCashTrackVALUEDATE: TDateField;
    cdsClientCashTrackLDGACC: TStringField;
    cdsClientCashTrackLDGTYPE: TStringField;
    cdsClientCashTrackLDGNAME: TStringField;
    cdsClientCashTrackTRTYPE: TStringField;
    cdsClientCashTrackTRTYPE_NAME: TStringField;
    cdsClientCashTrackDC: TStringField;
    cdsClientCashTrackCCY: TStringField;
    cdsClientCashTrackAMT: TFloatField;
    cdsClientStockLedgerBal: TNClientDataset;
    cdsClientStockLedgerBalACCID: TLargeintField;
    cdsClientStockLedgerBalINSTRUMENT_CODE: TStringField;
    cdsClientStockLedgerBalLEDGERACC: TStringField;
    cdsClientStockLedgerBalLEDGERTYPE: TStringField;
    cdsClientStockLedgerBalLEDGERTYPENAME: TStringField;
    cdsClientStockLedgerBalQTY: TFloatField;
    cdsClientStockTrack: TNClientDataset;
    cdsClientStockTrackACCID: TLargeintField;
    cdsClientStockTrackTRDATE: TDateField;
    cdsClientStockTrackDUEDATE: TDateField;
    cdsClientStockTrackVALUEDATE: TDateField;
    cdsClientStockTrackLDGACC: TStringField;
    cdsClientStockTrackLDGTYPE: TStringField;
    cdsClientStockTrackLDGNAME: TStringField;
    cdsClientStockTrackTRTYPE: TStringField;
    cdsClientStockTrackTRTYPE_NAME: TStringField;
    cdsClientStockTrackINSTRUMENT_CODE: TStringField;
    cdsClientStockTrackINSTRUMENT_NAME: TStringField;
    cdsClientStockTrackDC: TStringField;
    cdsClientStockTrackPRICE: TFloatField;
    cdsClientStockTrackQTY: TFloatField;
    dsCashLedgerBal: TDataSource;
    dsCashTrack: TDataSource;
    dsStockLedgerBal: TDataSource;
    dsStockTrack: TDataSource;
    dsARAPAging: TDataSource;
    cdsClientARAPAging: TNClientDataset;
    cdsClientARAPAgingACCID: TLargeintField;
    cdsClientARAPAgingTRDATE: TDateField;
    cdsClientARAPAgingDUEDATE: TDateField;
    cdsClientARAPAgingCCY: TStringField;
    cdsClientARAPAgingART0T2: TFloatField;
    cdsClientARAPAgingAPT0T2: TFloatField;
    cdsClientARAPAgingART3: TFloatField;
    cdsClientARAPAgingAPT3: TFloatField;
    cdsClientARAPAgingART4: TFloatField;
    cdsClientARAPAgingAPT4: TFloatField;
    cdsClientARAPAgingART5: TFloatField;
    cdsClientARAPAgingAPT5: TFloatField;
    cdsClientARAPAgingART6: TFloatField;
    cdsClientARAPAgingAPT6: TFloatField;
    cdsClientARAPAgingARuptoT6: TFloatField;
    cdsClientARAPAgingAPuptoT6: TFloatField;
    cdsClientARAPAgingARTotal: TFloatField;
    cdsClientARAPAgingAPTotal: TFloatField;
    grdCashLedgerBal: TcxGrid;
    gvwCashLedgerBal: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    gvwCashLedgerBalACCID: TcxGridDBBandedColumn;
    gvwCashLedgerBalLEDGERACC: TcxGridDBBandedColumn;
    gvwCashLedgerBalLEDGERTYPE: TcxGridDBBandedColumn;
    gvwCashLedgerBalLEDGERTYPENAME: TcxGridDBBandedColumn;
    gvwCashLedgerBalCCY: TcxGridDBBandedColumn;
    gvwCashLedgerBalBALANCE: TcxGridDBBandedColumn;
    panelCashTrack: TLMDDockPanel;
    grdCashTrack: TcxGrid;
    gvwCashTrack: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    gvwCashTrackACCID: TcxGridDBBandedColumn;
    gvwCashTrackTRDATE: TcxGridDBBandedColumn;
    gvwCashTrackDUEDATE: TcxGridDBBandedColumn;
    gvwCashTrackVALUEDATE: TcxGridDBBandedColumn;
    gvwCashTrackLDGACC: TcxGridDBBandedColumn;
    gvwCashTrackLDGTYPE: TcxGridDBBandedColumn;
    gvwCashTrackLDGNAME: TcxGridDBBandedColumn;
    gvwCashTrackTRTYPE: TcxGridDBBandedColumn;
    gvwCashTrackTRTYPE_NAME: TcxGridDBBandedColumn;
    gvwCashTrackDC: TcxGridDBBandedColumn;
    gvwCashTrackCCY: TcxGridDBBandedColumn;
    gvwCashTrackAMT: TcxGridDBBandedColumn;
    panelStockLedgerBal: TLMDDockPanel;
    grdStockLedgerBal: TcxGrid;
    gvwStockLedgerBal: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    gvwStockLedgerBalACCID: TcxGridDBBandedColumn;
    gvwStockLedgerBalINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwStockLedgerBalLEDGERACC: TcxGridDBBandedColumn;
    gvwStockLedgerBalLEDGERTYPE: TcxGridDBBandedColumn;
    gvwStockLedgerBalLEDGERTYPENAME: TcxGridDBBandedColumn;
    gvwStockLedgerBalQTY: TcxGridDBBandedColumn;
    panelStockTrack: TLMDDockPanel;
    grdStockTrack: TcxGrid;
    gvwStockTrack: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    gvwStockTrackACCID: TcxGridDBBandedColumn;
    gvwStockTrackTRDATE: TcxGridDBBandedColumn;
    gvwStockTrackDUEDATE: TcxGridDBBandedColumn;
    gvwStockTrackVALUEDATE: TcxGridDBBandedColumn;
    gvwStockTrackLDGACC: TcxGridDBBandedColumn;
    gvwStockTrackLDGTYPE: TcxGridDBBandedColumn;
    gvwStockTrackLDGNAME: TcxGridDBBandedColumn;
    gvwStockTrackTRTYPE: TcxGridDBBandedColumn;
    gvwStockTrackTRTYPE_NAME: TcxGridDBBandedColumn;
    gvwStockTrackINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwStockTrackINSTRUMENT_NAME: TcxGridDBBandedColumn;
    gvwStockTrackDC: TcxGridDBBandedColumn;
    gvwStockTrackPRICE: TcxGridDBBandedColumn;
    gvwStockTrackQTY: TcxGridDBBandedColumn;
    panelARAPAging: TLMDDockPanel;
    grdARAPAging: TcxGrid;
    gvwARAPAging: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    gvwARAPAgingACCID: TcxGridDBBandedColumn;
    gvwARAPAgingTRDATE: TcxGridDBBandedColumn;
    gvwARAPAgingDUEDATE: TcxGridDBBandedColumn;
    gvwARAPAgingCCY: TcxGridDBBandedColumn;
    gvwARAPAgingART0T2: TcxGridDBBandedColumn;
    gvwARAPAgingAPT0T2: TcxGridDBBandedColumn;
    gvwARAPAgingART3: TcxGridDBBandedColumn;
    gvwARAPAgingAPT3: TcxGridDBBandedColumn;
    gvwARAPAgingART4: TcxGridDBBandedColumn;
    gvwARAPAgingAPT4: TcxGridDBBandedColumn;
    gvwARAPAgingART5: TcxGridDBBandedColumn;
    gvwARAPAgingAPT5: TcxGridDBBandedColumn;
    gvwARAPAgingART6: TcxGridDBBandedColumn;
    gvwARAPAgingAPT6: TcxGridDBBandedColumn;
    gvwARAPAgingARuptoT6: TcxGridDBBandedColumn;
    gvwARAPAgingAPuptoT6: TcxGridDBBandedColumn;
    gvwARAPAgingARTotal: TcxGridDBBandedColumn;
    gvwARAPAgingAPTotal: TcxGridDBBandedColumn;
    cdsClientStockAging: TNClientDataset;
    cdsClientStockAgingACCID: TLargeintField;
    cdsClientStockAgingACCNO: TStringField;
    cdsClientStockAgingTRDATE: TDateField;
    cdsClientStockAgingDUEDATE: TDateField;
    cdsClientStockAgingINSTRUMENT_ID: TIntegerField;
    cdsClientStockAgingINSTRUMENT_CODE: TStringField;
    cdsClientStockAgingINSTRUMENT_NAME: TStringField;
    cdsClientStockAgingDLVT0T2: TFloatField;
    cdsClientStockAgingRCVT0T2: TFloatField;
    cdsClientStockAgingDLVT3: TFloatField;
    cdsClientStockAgingRCVT3: TFloatField;
    cdsClientStockAgingDLVT4: TFloatField;
    cdsClientStockAgingRCVT4: TFloatField;
    cdsClientStockAgingDLVT5: TFloatField;
    cdsClientStockAgingRCVT5: TFloatField;
    cdsClientStockAgingDLVT6: TFloatField;
    cdsClientStockAgingRCVT6: TFloatField;
    cdsClientStockAgingDLVuptoT6: TFloatField;
    cdsClientStockAgingRCVuptoT6: TFloatField;
    cdsClientStockAgingDLVTot: TFloatField;
    cdsClientStockAgingRCVTot: TFloatField;
    dsStockAging: TDataSource;
    panelStockAging: TLMDDockPanel;
    grdStockAging: TcxGrid;
    gvwStockAging: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    gvwStockAgingACCID: TcxGridDBBandedColumn;
    gvwStockAgingACCNO: TcxGridDBBandedColumn;
    gvwStockAgingTRDATE: TcxGridDBBandedColumn;
    gvwStockAgingDUEDATE: TcxGridDBBandedColumn;
    gvwStockAgingINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwStockAgingINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwStockAgingINSTRUMENT_NAME: TcxGridDBBandedColumn;
    gvwStockAgingDLVT0T2: TcxGridDBBandedColumn;
    gvwStockAgingRCVT0T2: TcxGridDBBandedColumn;
    gvwStockAgingDLVT3: TcxGridDBBandedColumn;
    gvwStockAgingRCVT3: TcxGridDBBandedColumn;
    gvwStockAgingDLVT4: TcxGridDBBandedColumn;
    gvwStockAgingRCVT4: TcxGridDBBandedColumn;
    gvwStockAgingDLVT5: TcxGridDBBandedColumn;
    gvwStockAgingRCVT5: TcxGridDBBandedColumn;
    gvwStockAgingDLVT6: TcxGridDBBandedColumn;
    gvwStockAgingRCVT6: TcxGridDBBandedColumn;
    gvwStockAgingDLVuptoT6: TcxGridDBBandedColumn;
    gvwStockAgingRCVuptoT6: TcxGridDBBandedColumn;
    gvwStockAgingDLVTot: TcxGridDBBandedColumn;
    gvwStockAgingRCVTot: TcxGridDBBandedColumn;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    procedure actViewListExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SiteGetSiteInfo(Sender: TObject; DockClient: TControl;
      var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
  private
    { Private declarations }
    FAccID: Integer;
  public
    { Public declarations }
  end;

var
  frmClientInquiry: TfrmClientInquiry;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount, DataLookup, FormLookupAccount;

procedure TfrmClientInquiry.actViewListExecute(Sender: TObject);
begin
  inherited;
  cdsClientCashPosition.Close;
  cdsClientCashPosition.Params[0].AsDate := DateOf(dtTransDateEnd.Date);
  cdsClientCashPosition.Params[1].AsInteger := FAccID;
  cdsClientCashPosition.Open;

  cdsClientCashLedgerBal.Close;
  cdsClientCashLedgerBal.Params[0].AsDate := DateOf(dtTransdateEnd.Date);
  cdsClientCashLedgerBal.Params[1].AsInteger := FAccID;
  cdsClientCashLedgerBal.Open;

  cdsClientCashTrack.Close;
  cdsClientCashTrack.Params[0].AsDate := DateOf(dtTransDateStart.Date);
  cdsClientCashTrack.Params[1].AsDate := DateOf(dtTransDateEnd.Date);
  cdsClientCashTrack.Params[2].AsInteger := FAccID;
  cdsClientCashTrack.Open;

  cdsClientARAPAging.Close;
  cdsClientARAPAging.Params[0].AsDate := DateOf(dtTransDateEnd.Date);
  cdsClientARAPAging.Params[1].AsInteger := FAccID;
  cdsClientARAPAging.Open;

  cdsClientStockPosition.Close;
  cdsClientStockPosition.Params[0].AsDate := DateOf(dtTransDateEnd.Date);
  cdsClientStockPosition.Params[1].AsInteger := FAccID;
  cdsClientStockPosition.Open;

  cdsClientStockLedgerBal.Close;
  cdsClientStockLedgerBal.Params[0].AsDate := DateOf(dtTransDateEnd.Date);
  cdsClientStockLedgerBal.Params[1].AsInteger := FAccID;
  cdsClientStockLedgerBal.Open;

  cdsClientStockTrack.Close;
  cdsClientStockTrack.Params[0].AsDate := DateOf(dtTransDateStart.Date);
  cdsClientStockTrack.Params[1].AsDate := DateOf(dtTransDateEnd.Date);
  cdsClientStockTrack.Params[2].AsInteger := FAccID;
  cdsClientStockTrack.Open;

  cdsClientStockAging.Close;
  cdsClientStockAging.Params[0].AsDate := DateOf(dtTransDateEnd.Date);
  cdsClientStockAging.Params[1].AsInteger := FAccID;
  cdsClientStockAging.Open;
end;

procedure TfrmClientInquiry.edAccCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := FAccID;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmClientInquiry.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDateStart.Date := dmGlobal.RemoteServer.GetTransDate;
  dtTransDateEnd.Date := dtTransDateStart.Date;
  FAccID := 0;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;
  end;
end;

procedure TfrmClientInquiry.SiteGetSiteInfo(Sender: TObject;
  DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint;
  var CanDock: Boolean);
begin
  inherited;
  CanDock := False;
end;

Initialization
  RegisterClass(TfrmClientInquiry);

end.
