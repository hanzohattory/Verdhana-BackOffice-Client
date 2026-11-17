unit FormIDXOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, XLSSheetData5,
  XLSReadWriteII5, Datasnap.DBClient, NClientDataset, Vcl.Menus, Vcl.ActnList,
  NDatasetAction, NActionPermission, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, System.DateUtils, System.Actions,
  ComObj;

type
  TfrmIDXOrder = class(TfrmBasic)
    aclIDXOrder: TActionList;
    actRefreshTrade: TNAction;
    actUploadOrder: TNAction;
    popTrade: TPopupMenu;
    Refresh1: TMenuItem;
    OpenDialog: TOpenDialog;
    dsIDXTrade: TDataSource;
    cdsIDXTrade: TNClientDataset;
    cdsIDXTradeIDXTRADEID: TStringField;
    cdsIDXTradeIDXORDERID: TStringField;
    cdsIDXTradeTRADEDATE: TDateTimeField;
    cdsIDXTradeSTOCKCODE: TStringField;
    cdsIDXTradeBOARDCODE: TStringField;
    cdsIDXTradeMKTID: TStringField;
    cdsIDXTradeBS: TStringField;
    cdsIDXTradeMTIME: TDateTimeField;
    cdsIDXTradeMQTY: TFloatField;
    cdsIDXTradeLOTSIZE: TFloatField;
    cdsIDXTradeMPRICE: TFloatField;
    cdsIDXTradeCPBROKER: TStringField;
    cdsIDXTradeCPDEALER: TStringField;
    cdsIDXTradeMODDA: TDateTimeField;
    cdsIDXTradeMODUI: TStringField;
    cdsIDXTradeINSDA: TDateTimeField;
    cdsIDXTradeINSUI: TStringField;
    cdsIDXTradeSID: TStringField;
    cdsIDXTradeBRKREFF: TStringField;
    cdsIDXTradeALLOCQTY: TFloatField;
    cdsIDXTradeALLOC: TStringField;
    cdsIDXTradeACCINIT: TStringField;
    cdsIDXTradeTRDMEMO: TStringField;
    cdsIDXTradeACCID: TIntegerField;
    cdsIDXTradeORDSOURCE: TStringField;
    cdsIDXTradeDEALTICKETID: TLargeintField;
    cdsIDXTradeACCCODE: TStringField;
    cdsIDXTradeACCNAME: TStringField;
    cdsIDXTradeINSTRUMENT_ID: TLargeintField;
    cdsIDXTradeINSTRUMENT_CODE: TStringField;
    cdsIDXTradeSHORTNAME: TStringField;
    cdsSunGardTrade: TNClientDataset;
    XLS: TXLSReadWriteII5;
    grdTrade: TcxGrid;
    gvwTrade: TcxGridDBBandedTableView;
    gvwTradeIDXTRADEID: TcxGridDBBandedColumn;
    gvwTradeIDXORDERID: TcxGridDBBandedColumn;
    gvwTradeTRADEDATE: TcxGridDBBandedColumn;
    gvwTradeSTOCKCODE: TcxGridDBBandedColumn;
    gvwTradeBOARDCODE: TcxGridDBBandedColumn;
    gvwTradeMKTID: TcxGridDBBandedColumn;
    gvwTradeBS: TcxGridDBBandedColumn;
    gvwTradeMTIME: TcxGridDBBandedColumn;
    gvwTradeMQTY: TcxGridDBBandedColumn;
    gvwTradeLOTSIZE: TcxGridDBBandedColumn;
    gvwTradeMPRICE: TcxGridDBBandedColumn;
    gvwTradeCPBROKER: TcxGridDBBandedColumn;
    gvwTradeCPDEALER: TcxGridDBBandedColumn;
    gvwTradeMODDA: TcxGridDBBandedColumn;
    gvwTradeMODUI: TcxGridDBBandedColumn;
    gvwTradeINSDA: TcxGridDBBandedColumn;
    gvwTradeINSUI: TcxGridDBBandedColumn;
    gvwTradeSID: TcxGridDBBandedColumn;
    gvwTradeBRKREFF: TcxGridDBBandedColumn;
    gvwTradeALLOCQTY: TcxGridDBBandedColumn;
    gvwTradeALLOC: TcxGridDBBandedColumn;
    gvwTradeACCINIT: TcxGridDBBandedColumn;
    gvwTradeTRDMEMO: TcxGridDBBandedColumn;
    gvwTradeACCID: TcxGridDBBandedColumn;
    gvwTradeORDSOURCE: TcxGridDBBandedColumn;
    gvwTradeDEALTICKETID: TcxGridDBBandedColumn;
    gvwTradeACCCODE: TcxGridDBBandedColumn;
    gvwTradeACCNAME: TcxGridDBBandedColumn;
    gvwTradeINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwTradeINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwTradeSHORTNAME: TcxGridDBBandedColumn;
    grdTradeLevel1: TcxGridLevel;
    grdOrder: TcxGrid;
    gvwOrder: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cdsIDXOrder: TNClientDataset;
    dsIDXOrder: TDataSource;
    cdsIDXOrderORDERSOURCE: TStringField;
    cdsIDXOrderORDERCODE: TStringField;
    cdsIDXOrderORDERDATE: TDateField;
    cdsIDXOrderACCOUNTCODE: TStringField;
    cdsIDXOrderMARKETCODE: TStringField;
    cdsIDXOrderSTOCKCODE: TStringField;
    cdsIDXOrderBS: TStringField;
    cdsIDXOrderQTY: TFloatField;
    cdsIDXOrderPRICE: TFloatField;
    cdsIDXOrderDEALQTY: TFloatField;
    cdsIDXOrderDEALPRICE: TFloatField;
    cdsIDXOrderSID: TStringField;
    cdsIDXOrderMODDA: TDateTimeField;
    cdsIDXOrderMODUI: TStringField;
    cdsIDXOrderAPPDA: TDateTimeField;
    cdsIDXOrderAPPUI: TStringField;
    cdsIDXOrderUNDER4Y: TIntegerField;
    cdsIDXOrderUNDER4YDA: TDateTimeField;
    cdsIDXOrderNOTES4Y: TStringField;
    cdsIDXOrderISDEL: TIntegerField;
    cdsIDXOrderID: TLargeintField;
    gvwOrderORDERSOURCE: TcxGridDBBandedColumn;
    gvwOrderORDERCODE: TcxGridDBBandedColumn;
    gvwOrderORDERDATE: TcxGridDBBandedColumn;
    gvwOrderACCOUNTCODE: TcxGridDBBandedColumn;
    gvwOrderMARKETCODE: TcxGridDBBandedColumn;
    gvwOrderSTOCKCODE: TcxGridDBBandedColumn;
    gvwOrderBS: TcxGridDBBandedColumn;
    gvwOrderQTY: TcxGridDBBandedColumn;
    gvwOrderPRICE: TcxGridDBBandedColumn;
    gvwOrderDEALQTY: TcxGridDBBandedColumn;
    gvwOrderDEALPRICE: TcxGridDBBandedColumn;
    gvwOrderSID: TcxGridDBBandedColumn;
    gvwOrderMODDA: TcxGridDBBandedColumn;
    gvwOrderMODUI: TcxGridDBBandedColumn;
    gvwOrderAPPDA: TcxGridDBBandedColumn;
    gvwOrderAPPUI: TcxGridDBBandedColumn;
    gvwOrderUNDER4Y: TcxGridDBBandedColumn;
    gvwOrderUNDER4YDA: TcxGridDBBandedColumn;
    gvwOrderNOTES4Y: TcxGridDBBandedColumn;
    gvwOrderISDEL: TcxGridDBBandedColumn;
    gvwOrderID: TcxGridDBBandedColumn;
    popOrder: TPopupMenu;
    actRefreshOrder: TNAction;
    Refresh2: TMenuItem;
    UploadSunGardOrder1: TMenuItem;
    lcTop: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    lcTopItem2: TdxLayoutItem;
    lcTopGroup2: TdxLayoutGroup;
    actViewData: TNAction;
    cdsDealTicketList: TNClientDataset;
    cdsDealTicketListDEALTICKETID: TLargeintField;
    cdsDealTicketListDEALTICKETCODE: TStringField;
    cdsDealTicketListDEALTICKETDATE: TDateField;
    cdsDealTicketListACCNO: TStringField;
    cdsDealTicketListACCNAME: TStringField;
    cdsDealTicketListSTOCKID: TLargeintField;
    cdsDealTicketListSTOCKCODE: TStringField;
    cdsDealTicketListSTOCKNAME: TStringField;
    cdsDealTicketListBS: TStringField;
    cdsDealTicketListMARKETCODE: TStringField;
    cdsDealTicketListCCYCODE: TStringField;
    cdsDealTicketListCHANNELCODE: TStringField;
    cdsDealTicketListOMNIBUSTRADE: TStringField;
    cdsDealTicketListDEALQTY: TLargeintField;
    cdsDealTicketListDEALPRICE: TFloatField;
    cdsDealTicketListDEALVALUE: TFloatField;
    cdsDealTicketListALLOCQTY: TLargeintField;
    cdsDealTicketListSALESID: TLargeintField;
    cdsDealTicketListDEALERID: TLargeintField;
    cdsDealTicketListDUESTOCK: TIntegerField;
    cdsDealTicketListDUECASH: TIntegerField;
    cdsDealTicketListPOSTED: TStringField;
    cdsDealTicketListMODDA: TDateTimeField;
    cdsDealTicketListMODUI: TStringField;
    cdsDealTicketListAPPDA: TDateTimeField;
    cdsDealTicketListAPPUI: TStringField;
    cdsDealTicketListISDEL: TIntegerField;
    cdsDealTicketListID: TLargeintField;
    cdsDealTicketListACCID: TIntegerField;
    cdsDealTicketListDAYTRADE: TStringField;
    cdsDealTicketListCONID: TLargeintField;
    cdsDealTicketListSTAT: TStringField;
    cdsDealTicketListCDUEDATE: TDateField;
    cdsDealTicketListSDUEDATE: TDateField;
    cdsDealTicketListSTATUS: TStringField;
    cdsDealTicketListOLD_DEALTICKETID: TLargeintField;
    cdsDealTicketListDCCYAMT: TFloatField;
    cdsDealTicketListCNNO: TStringField;
    cdsDealTicketListCXLD: TStringField;
    cdsDealTicketListRVSD: TStringField;
    cdsDealTicketListRVSD_DTID: TIntegerField;
    cdsDealTicketListRVSDDATE: TDateTimeField;
    cdsDealTicketListEXTERNALID: TStringField;
    cdsDealTicketListSALES_BRANCHID: TLargeintField;
    cdsDealTicketListENTTID: TIntegerField;
    cdsDealTicketListENTTCODE: TStringField;
    cdsDealTicketListENTNAME: TStringField;
    cdsDealTicket: TNClientDataset;
    cdsDealTicketDEALTICKETID: TLargeintField;
    cdsDealTicketDEALTICKETCODE: TStringField;
    cdsDealTicketDEALTICKETDATE: TDateField;
    cdsDealTicketACCNO: TStringField;
    cdsDealTicketACCNAME: TStringField;
    cdsDealTicketSTOCKID: TLargeintField;
    cdsDealTicketSTOCKCODE: TStringField;
    cdsDealTicketSTOCKNAME: TStringField;
    cdsDealTicketBS: TStringField;
    cdsDealTicketMARKETCODE: TStringField;
    cdsDealTicketCCYCODE: TStringField;
    cdsDealTicketCHANNELCODE: TStringField;
    cdsDealTicketOMNIBUSTRADE: TStringField;
    cdsDealTicketDEALQTY: TLargeintField;
    cdsDealTicketDEALPRICE: TFloatField;
    cdsDealTicketDEALVALUE: TFloatField;
    cdsDealTicketALLOCQTY: TLargeintField;
    cdsDealTicketSALESID: TLargeintField;
    cdsDealTicketDEALERID: TLargeintField;
    cdsDealTicketDUESTOCK: TIntegerField;
    cdsDealTicketDUECASH: TIntegerField;
    cdsDealTicketPOSTED: TStringField;
    cdsDealTicketMODDA: TDateTimeField;
    cdsDealTicketMODUI: TStringField;
    cdsDealTicketAPPDA: TDateTimeField;
    cdsDealTicketAPPUI: TStringField;
    cdsDealTicketISDEL: TIntegerField;
    cdsDealTicketID: TLargeintField;
    cdsDealTicketqryDealTicketExec: TDataSetField;
    cdsDealTicketqryDealTicketAlloc: TDataSetField;
    cdsDealTicketACCID: TIntegerField;
    cdsDealTicketDAYTRADE: TStringField;
    cdsDealTicketCONID: TLargeintField;
    cdsDealTicketSTAT: TStringField;
    cdsDealTicketCDUEDATE: TDateField;
    cdsDealTicketSDUEDATE: TDateField;
    cdsDealTicketSTATUS: TStringField;
    cdsDealTicketOLD_DEALTICKETID: TLargeintField;
    cdsDealTicketExec: TNClientDataset;
    cdsDealTicketExecDEALTICKETID: TLargeintField;
    cdsDealTicketExecSEQID: TIntegerField;
    cdsDealTicketExecBOARDID: TLargeintField;
    cdsDealTicketExecBROKERCODE: TStringField;
    cdsDealTicketExecEXQTY: TLargeintField;
    cdsDealTicketExecEXPRICE: TFloatField;
    cdsDealTicketExecEXVALUE: TFloatField;
    cdsDealTicketExecEXTIME: TTimeField;
    cdsDealTicketExecTRDID: TStringField;
    cdsDealTicketExecMODDA: TDateTimeField;
    cdsDealTicketExecMODUI: TStringField;
    cdsDealTicketExecAPPDA: TDateTimeField;
    cdsDealTicketExecAPPUI: TStringField;
    cdsDealTicketExecISDEL: TIntegerField;
    cdsDealTicketExecID: TLargeintField;
    cdsDealTicketExecCPACCID: TIntegerField;
    cdsDealTicketExecDUECASH: TDateTimeField;
    cdsDealTicketExecDUESTOCK: TDateTimeField;
    cdsDealTicketExecCPTYPE: TStringField;
    cdsDealTicketAlloc: TNClientDataset;
    cdsDealTicketAllocDEALTICKETID: TLargeintField;
    cdsDealTicketAllocSEQID: TIntegerField;
    cdsDealTicketAllocACCNO: TStringField;
    cdsDealTicketAllocACCNAME: TStringField;
    cdsDealTicketAllocAQTY: TLargeintField;
    cdsDealTicketAllocAPRICE: TFloatField;
    cdsDealTicketAllocAVALUE: TFloatField;
    cdsDealTicketAllocMODDA: TDateTimeField;
    cdsDealTicketAllocMODUI: TStringField;
    cdsDealTicketAllocAPPDA: TDateTimeField;
    cdsDealTicketAllocAPPUI: TStringField;
    cdsDealTicketAllocISDEL: TIntegerField;
    cdsDealTicketAllocID: TLargeintField;
    cdsDealTicketAllocACCID: TIntegerField;
    dsDealTicketList: TDataSource;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterDEALTICKETCODE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterCHANNELCODE: TcxGridDBBandedColumn;
    gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwMasterDEALQTY: TcxGridDBBandedColumn;
    gvwMasterDEALPRICE: TcxGridDBBandedColumn;
    gvwMasterDEALVALUE: TcxGridDBBandedColumn;
    gvwMasterALLOCQTY: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterDEALERID: TcxGridDBBandedColumn;
    gvwMasterDUESTOCK: TcxGridDBBandedColumn;
    gvwMasterDUECASH: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    actCreateDealTicket: TNAction;
    CreateDealTicket1: TMenuItem;
    actAddToOrder: TNAction;
    cdsIDXTradeORDERCODE: TStringField;
    cdsIDXOrderDEALTICKETID: TLargeintField;
    actCreateDeal: TNAction;
    CreateDealTicket2: TMenuItem;
    cdsIDXTradeByOrder: TNClientDataset;
    cdsIDXTradeByOrderIDXTRADEID: TStringField;
    cdsIDXTradeByOrderIDXORDERID: TStringField;
    cdsIDXTradeByOrderTRADEDATE: TDateTimeField;
    cdsIDXTradeByOrderSTOCKCODE: TStringField;
    cdsIDXTradeByOrderBOARDCODE: TStringField;
    cdsIDXTradeByOrderMKTID: TStringField;
    cdsIDXTradeByOrderBS: TStringField;
    cdsIDXTradeByOrderMTIME: TDateTimeField;
    cdsIDXTradeByOrderMQTY: TFloatField;
    cdsIDXTradeByOrderLOTSIZE: TFloatField;
    cdsIDXTradeByOrderMPRICE: TFloatField;
    cdsIDXTradeByOrderCPBROKER: TStringField;
    cdsIDXTradeByOrderCPDEALER: TStringField;
    cdsIDXTradeByOrderMODDA: TDateTimeField;
    cdsIDXTradeByOrderMODUI: TStringField;
    cdsIDXTradeByOrderINSDA: TDateTimeField;
    cdsIDXTradeByOrderINSUI: TStringField;
    cdsIDXTradeByOrderSID: TStringField;
    cdsIDXTradeByOrderBRKREFF: TStringField;
    cdsIDXTradeByOrderALLOCQTY: TFloatField;
    cdsIDXTradeByOrderALLOC: TStringField;
    cdsIDXTradeByOrderACCINIT: TStringField;
    cdsIDXTradeByOrderTRDMEMO: TStringField;
    cdsIDXTradeByOrderACCID: TIntegerField;
    cdsIDXTradeByOrderORDSOURCE: TStringField;
    cdsIDXTradeByOrderDEALTICKETID: TLargeintField;
    cdsIDXTradeByOrderORDERCODE: TStringField;
    cdsIDXTradeByOrderACCCODE: TStringField;
    cdsIDXTradeByOrderACCNAME: TStringField;
    cdsIDXTradeByOrderINSTRUMENT_ID: TLargeintField;
    cdsIDXTradeByOrderINSTRUMENT_CODE: TStringField;
    cdsIDXTradeByOrderSHORTNAME: TStringField;
    actViewDeal: TNAction;
    popDeal: TPopupMenu;
    ViewDealTicket1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshTradeExecute(Sender: TObject);
    procedure actRefreshOrderExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actUploadOrderExecute(Sender: TObject);
    procedure gvwOrderFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actViewDataExecute(Sender: TObject);
    procedure cdsDealTicketBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketNewRecord(DataSet: TDataSet);
    procedure cdsDealTicketAfterOpen(DataSet: TDataSet);
    procedure cdsDealTicketExecBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketExecBeforeEdit(DataSet: TDataSet);
    procedure cdsDealTicketExecBeforeDelete(DataSet: TDataSet);
    procedure cdsDealTicketExecBOARDIDChange(Sender: TField);
    procedure cdsDealTicketExecBROKERCODEChange(Sender: TField);
    procedure cdsDealTicketExecEXQTYChange(Sender: TField);
    procedure cdsDealTicketMARKETCODEChange(Sender: TField);
    procedure cdsDealTicketACCIDChange(Sender: TField);
    procedure cdsDealTicketSTOCKIDChange(Sender: TField);
    procedure actCreateDealTicketExecute(Sender: TObject);
    procedure actAddToOrderExecute(Sender: TObject);
    procedure actCreateDealExecute(Sender: TObject);
    procedure actViewDealExecute(Sender: TObject);
    procedure actViewDealUpdate(Sender: TObject);
  private
    { Private declarations }
    FOldQty: Int64;
    FOldValue: Double;
    FOldAllocQty: Int64;
  public
    { Public declarations }
  end;

var
  frmIDXOrder: TfrmIDXOrder;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTicketFromIDXOrder;

procedure TfrmIDXOrder.actAddToOrderExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  bMark: TBookmark;
begin
  inherited;
  if MessageDlg('Are you sure to Add Selected Trade to Order ' +
    QuotedStr(cdsIDXOrderORDERCODE.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    for i := 0 to gvwTrade.Controller.SelectedRecordCount - 1 do
    begin
      RecIdx := gvwTrade.Controller.SelectedRecords[i].RecordIndex;
      gvwTrade.DataController.FocusedRecordIndex := RecIdx;

      cdsIDXTrade.Edit;
      cdsIDXTradeORDSOURCE.AsString := cdsIDXOrderORDERSOURCE.AsString;
      cdsIDXTradeORDERCODE.AsString := cdsIDXOrderORDERCODE.AsString;
      cdsIDXTrade.Post;

      cdsIDXOrder.Edit;
      cdsIDXOrderDEALPRICE.AsFloat := ((cdsIDXTradeMQTY.AsFloat * cdsIDXTradeMPRICE.AsFloat) +
        (cdsIDXOrderDEALQTY.AsFloat * cdsIDXOrderDEALPRICE.AsFloat)) /
        (cdsIDXOrderDEALQTY.AsFloat + cdsIDXTradeMQTY.AsFloat);
      cdsIDXOrderDEALQTY.AsFloat := cdsIDXOrderDEALQTY.AsFloat + cdsIDXTradeMQTY.AsFloat;
      cdsIDXOrder.Post;
    end;

    if cdsIDXTrade.ApplyUpdates(0) = 0 then
    begin
      cdsIDXOrder.ApplyUpdates(0);

      bMark := cdsIDXOrder.GetBookmark;
      actViewData.Execute;
      cdsIDXOrder.GotoBookmark(bMark);
    end;
  end;
end;

procedure TfrmIDXOrder.actCreateDealExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  oForm: TfrmDealTicketFromIDXOrder;
begin
  inherited;
  cdsIDXTradeByOrder.Close;
  cdsIDXTradeByOrder.Params[0].AsString := cdsIDXOrderORDERCODE.AsString;
  cdsIDXTradeByOrder.Open;

  if cdsIDXTradeByOrder.IsEmpty then
  begin
    ShowMessage('This Order Don''t Have Any Trade Execution. Can''t Create Deal Ticket');
    Exit;
  end;

  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuTradingAccount.Locate('ACCCODE', cdsIDXOrderACCOUNTCODE.AsString, []))
      and (cdsLuInstrument.Locate('LOCALCODE', cdsIDXOrderSTOCKCODE.AsString, [])) then
    begin
      cdsDealTicket.Close;
      cdsDealTicket.Params[0].AsInteger := 0;
      cdsDealTicket.Open;

      cdsDealTicket.Append;
      cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETDATE.AsDateTime := cdsIDXOrderORDERDATE.AsDateTime;
      cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
          cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
      cdsDealTicketACCID.AsInteger := cdsLuTradingAccountACCID.AsInteger;
      cdsDealTicketACCNO.AsString := cdsLuTradingAccountACCCODE.AsString;
      cdsDealTicketACCNAME.AsString := cdsLuTradingAccountACCNAME.AsString;
      cdsDealTicketSTOCKID.AsLargeInt := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
      cdsDealTicketSTOCKCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsDealTicketSTOCKNAME.AsString := cdsLuInstrumentSHORTNAME.AsString;
      cdsDealTicketBS.AsString := cdsIDXOrderBS.AsString;
      cdsDealTicketMARKETCODE.AsString := cdsIDXOrderMARKETCODE.AsString;
      cdsDealTicketSTAT.AsString := 'O';

      cdsDealTicket.Post;

      cdsIDXTradeByOrder.First;
      while not cdsIDXTradeByOrder.Eof do
      begin
        cdsDealTicketExec.Append;
        if cdsLuBoard.Locate('BOARDCODE', cdsIDXTradeByOrderBOARDCODE.AsString, []) then
          cdsDealTicketExecBOARDID.AsLargeInt := cdsLuBoardBOARDID.AsLargeInt;

        cdsDealTicketExecEXQTY.AsInteger := Trunc(cdsIDXTradeByOrderMQTY.AsFloat);
        cdsDealTicketExecEXPRICE.AsFloat := cdsIDXTradeByOrderMPRICE.AsFloat;
        cdsDealTicketExecEXTIME.AsDateTime := cdsIDXTradeByOrderMTIME.AsDateTime;
        cdsDealTicketExec.Post;

        cdsIDXTradeByOrder.Edit;
        cdsIDXTradeByOrderDEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
        cdsIDXTradeByOrder.Post;

        cdsIDXTradeByOrder.Next;
      end;

      oForm := TfrmDealTicketFromIDXOrder.Create(nil);
      Try
        if oForm.ShowModal = mrOK then
        begin
          if cdsDealTicket.ApplyUpdates(0) = 0 then
          begin
            cdsIDXTradeByOrder.ApplyUpdates(0);
            cdsIDXOrder.Edit;
            cdsIDXOrderDEALTICKETID.AsLargeInt := cdsDealTicketListDEALTICKETID.AsLargeInt;
            cdsIDXOrder.Post;
            cdsIDXOrder.ApplyUpdates(0);

            actViewData.Execute;
          end;
        end;
      Finally
        FreeAndNil(oForm);
      End;

    end;

  end;

end;

procedure TfrmIDXOrder.actCreateDealTicketExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  oForm: TfrmDealTicketFromIDXOrder;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuTradingAccount.Locate('ACCCODE', cdsIDXOrderACCOUNTCODE.AsString, []))
      and (cdsLuInstrument.Locate('LOCALCODE', cdsIDXOrderSTOCKCODE.AsString, [])) then
    begin
      cdsDealTicket.Close;
      cdsDealTicket.Params[0].AsInteger := 0;
      cdsDealTicket.Open;

      cdsDealTicket.Append;
      cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETDATE.AsDateTime := cdsIDXOrderORDERDATE.AsDateTime;
      cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
          cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
      cdsDealTicketACCID.AsInteger := cdsLuTradingAccountACCID.AsInteger;
      cdsDealTicketACCNO.AsString := cdsLuTradingAccountACCCODE.AsString;
      cdsDealTicketACCNAME.AsString := cdsLuTradingAccountACCNAME.AsString;
      cdsDealTicketSTOCKID.AsLargeInt := cdsLuInstrumentINSTRUMENT_ID.AsLargeInt;
      cdsDealTicketSTOCKCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsDealTicketSTOCKNAME.AsString := cdsLuInstrumentSHORTNAME.AsString;
      cdsDealTicketBS.AsString := cdsIDXOrderBS.AsString;
      cdsDealTicketMARKETCODE.AsString := cdsIDXOrderMARKETCODE.AsString;

      cdsDealTicket.Post;

      for i := 0 to gvwTrade.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwTrade.Controller.SelectedRecords[i].RecordIndex;
        gvwTrade.DataController.FocusedRecordIndex := RecIdx;

        cdsDealTicketExec.Append;
        if cdsLuBoard.Locate('BOARDCODE', cdsIDXTradeBOARDCODE.AsString, []) then
          cdsDealTicketExecBOARDID.AsLargeInt := cdsLuBoardBOARDID.AsLargeInt;

        cdsDealTicketExecEXQTY.AsInteger := Trunc(cdsIDXTradeMQTY.AsFloat);
        cdsDealTicketExecEXPRICE.AsFloat := cdsIDXTradeMPRICE.AsFloat;
        cdsDealTicketExecEXTIME.AsDateTime := cdsIDXTradeMTIME.AsDateTime;
        cdsDealTicketExec.Post;

        cdsIDXTrade.Edit;
        cdsIDXTradeDEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
        cdsIDXTrade.Post;
      end;

      oForm := TfrmDealTicketFromIDXOrder.Create(nil);
      Try
        if oForm.ShowModal = mrOK then
        begin
          if cdsDealTicket.ApplyUpdates(0) = 0 then
          begin
            cdsIDXTrade.ApplyUpdates(0);
            cdsIDXOrder.Edit;
            cdsIDXOrderDEALPRICE.AsFloat := (cdsDealTicketDEALVALUE.AsFloat +
              (cdsIDXOrderDEALQTY.AsFloat * cdsIDXOrderDEALPRICE.AsFloat)) /
              (cdsIDXOrderDEALQTY.AsFloat + cdsDealTicketDEALQTY.Value);
            cdsIDXOrderDEALQTY.AsFloat := cdsIDXOrderDEALQTY.AsFloat + cdsDealTicketDEALQTY.Value;
            cdsIDXOrder.Post;
            cdsIDXOrder.ApplyUpdates(0);

            actViewData.Execute;
          end;
        end;
      Finally
        FreeAndNil(oForm);
      End;

    end;

  end;

end;

procedure TfrmIDXOrder.actRefreshOrderExecute(Sender: TObject);
begin
  inherited;
  cdsIDXOrder.Close;
  cdsIDXOrder.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsIDXOrder.Open;
end;

procedure TfrmIDXOrder.actRefreshTradeExecute(Sender: TObject);
begin
  inherited;
  cdsIDXTrade.Close;
  cdsIDXTrade.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsIDXTrade.Open;
end;

procedure TfrmIDXOrder.actUploadOrderExecute(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName: String;
  i, iRows: Integer;
begin
  inherited;
  if MessageDlg('Are you sure to upload IDX Order?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if OpenDialog.Execute then
    begin
      sFileName := OpenDialog.FileName;
      if FileExists(sFileName) then
      begin
        try
          oExcel := CreateOleObject('Excel.Application');
          oExcel.DisplayAlrets := False;
          oExcel.WorkBooks.Open(sFileName);

          oSheet := oExcel.WorkBooks[1].WorkSheet[1];
          iRows  := oSheet.UsedRange.Rows.Count;

          cdsIDXOrder.DisableControls;
          Screen.Cursor := crSQLWait;
          Try
            for i := 2 to iRows do
            begin
              with dmGlobal.IntDataLookup do
              begin
                cdsIDXOrder.Append;
                cdsIDXOrderORDERSOURCE.AsString := oSheet.Cells[i, 1].Value;
                cdsIDXOrderORDERCODE.AsString   := oSheet.Cells[i, 2].Value;
                cdsIDXOrderORDERDATE.AsDateTime := oSheet.Cells[i, 3].Value;
                cdsIDXOrderACCOUNTCODE.AsString := oSheet.Cells[i, 4].Value;
                cdsIDXOrderMARKETCODE.AsString  := oSheet.Cells[i, 5].Value;
                cdsIDXOrderSTOCKCODE.AsString   := oSheet.Cells[i, 6].Value;
                cdsIDXOrderBS.AsString          := oSheet.Cells[i, 7].Value;
                cdsIDXOrderQTY.AsFloat          := oSheet.Cells[i, 8].Value;
                cdsIDXOrderPRICE.AsFloat        := oSheet.Cells[i, 9].Value;
                cdsIDXOrder.Post;
              end;
            end;

            cdsIDXOrder.ApplyUpdates(-1);
          Finally
            Screen.Cursor := crDefault;
            cdsIDXOrder.EnableControls;
          End;
        finally
          oExcel.Quit;

          oExcel := Unassigned;
          oSheet := Unassigned;
        end;
      end;

    end;
  end;

end;

procedure TfrmIDXOrder.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsIDXTrade.Close;
  cdsIDXTrade.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsIDXTrade.Open;
  gvwTrade.ApplyBestFit();

  cdsIDXOrder.Close;
  cdsIDXOrder.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsIDXOrder.Open;
  gvwOrder.ApplyBestFit();

  cdsDealTicketList.Close;
  cdsDealTicketList.Params[0].AsDate := DateOf(dtTransDate.Date);
  cdsDealTicketList.Params[1].AsDate := DateOf(dtTransDate.Date);
  cdsDealTicketList.Params[2].AsInteger := 0;
  cdsDealTicketList.Params[3].AsInteger := 0;
  cdsDealTicketList.Params[4].AsString := dmGlobal.UserID;
  cdsDealTicketList.Open;
  gvwMaster.ApplyBestFit();
end;

procedure TfrmIDXOrder.actViewDealExecute(Sender: TObject);
Var
  oForm: TfrmDealTicketFromIDXOrder;
begin
  inherited;
  cdsDealTicket.Close;
  cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
  cdsDealTicket.Open;

  if not cdsDealTicket.IsEmpty then
  begin
    oForm := TfrmDealTicketFromIDXOrder.Create(nil);
    Try
      oForm.ShowModal;
    Finally
      FreeAndNil(oForm);
    End;
  end;
end;

procedure TfrmIDXOrder.actViewDealUpdate(Sender: TObject);
begin
  inherited;
  actViewDeal.Enabled := (cdsDealTicketList.Active) and (not cdsDealTicketList.IsEmpty);
end;

procedure TfrmIDXOrder.cdsDealTicketACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuTradingAccount.Locate('ACCID', Sender.Value, []) then
    begin
      cdsDealTicketACCNO.AsString := cdsLuTradingAccountACCCODE.AsString;
      cdsDealTicketACCNAME.AsString := cdsLuTradingAccountACCNAME.AsString;
      cdsDealTicketOMNIBUSTRADE.AsString := cdsLuTradingAccountOMNIBUSTRADE.AsString;
      cdsDealTicketSALESID.AsLargeInt := cdsLuTradingAccountSALESID.AsLargeInt;
    end;

    cdsLuAllocAccount.Close;
    cdsLuAllocAccount.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
    cdsLuAllocAccount.Open;
  end;
end;

procedure TfrmIDXOrder.cdsDealTicketAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsDealTicket.IsEmpty then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuAllocAccount.Close;
      cdsLuAllocAccount.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
      cdsLuAllocAccount.Open;
    end;
  end;
end;

procedure TfrmIDXOrder.cdsDealTicketBeforePost(DataSet: TDataSet);
var
  TrdDateFile: Integer;
begin
  inherited;
  TrdDateFile := DateTimeToFileDate(cdsDealTicketDEALTICKETDATE.AsDateTime);
  cdsDealTicketCDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketDUECASH.AsInteger);
  cdsDealTicketSDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketDUESTOCK.AsInteger);
end;

procedure TfrmIDXOrder.cdsDealTicketExecBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  cdsDealTicketDEALQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt - cdsDealTicketExecEXQTY.AsLargeInt;
  cdsDealTicketDEALVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat - cdsDealTicketExecEXVALUE.AsLargeInt;

  if cdsDealTicketDEALQTY.AsLargeInt > 0 then
    cdsDealTicketDEALPRICE.AsFloat := cdsDealTicketDEALVALUE.AsFloat / cdsDealTicketDEALQTY.AsFloat
  else
    cdsDealTicketDEALPRICE.AsFloat := 0;
end;

procedure TfrmIDXOrder.cdsDealTicketExecBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldQty := cdsDealTicketExecEXQTY.AsLargeInt;
  FOldValue := cdsDealTicketExecEXVALUE.AsFloat;
end;

procedure TfrmIDXOrder.cdsDealTicketExecBeforePost(DataSet: TDataSet);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBoard.Locate('BOARDID', cdsDealTicketExecBOARDID.Value, []) then
    begin
      if cdsLuBoardCPTYPE.AsString = 'BRK' then
      begin
        if cdsLuAccount.Locate('ACCINIT', cdsDealTicketExecBROKERCODE.Value, []) then
          cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountACCID.AsInteger;
      end
      else
        if cdsDealTicketExecCPACCID.IsNull then
          cdsDealTicketExecCPACCID.AsInteger := cdsLuBoardCPVALUE.AsInteger;
    end;
  end;

  if cdsDealTicketExec.State in [dsInsert] then
  begin
    cdsDealTicketDEALQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt + cdsDealTicketExecEXQTY.AsLargeInt;
    cdsDealTicketDEALVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat + cdsDealTicketExecEXVALUE.AsFloat;
  end
  else if cdsDealTicketExec.State in [dsEdit] then
  begin
    cdsDealTicketDEALQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt - FOldQty + cdsDealTicketExecEXQTY.AsLargeInt;
    cdsDealTicketDEALVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat - FOldValue + cdsDealTicketExecEXVALUE.AsFloat;
  end;

  if cdsDealTicketDEALQTY.AsLargeInt > 0 then
    cdsDealTicketDEALPRICE.AsFloat := cdsDealTicketDEALVALUE.AsFloat / cdsDealTicketDEALQTY.AsFloat
  else
    cdsDealTicketDEALPRICE.AsFloat := 0;
end;

procedure TfrmIDXOrder.cdsDealTicketExecBOARDIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsDealTicketExecCPTYPE.AsString = 'ACT' then
    begin
      cdsDealTicketExecBROKERCODE.Clear;
      cdsDealTicketExecCPACCID.AsInteger := cdsLuBoardCPVALUE.AsInteger;
    end;
  end;
end;

procedure TfrmIDXOrder.cdsDealTicketExecBROKERCODEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsDealTicketExecCPTYPE.AsString <> 'ACT' then
    begin
      if not cdsLuAccount.Active then
      begin
        cdsLuAccount.Close;
        cdsLuAccount.Open;
      end;

      if not cdsDealTicketExecBROKERCODE.IsNull then
      begin
        if cdsLuAccount.Locate('ACCINIT', cdsDealTicketExecBROKERCODE.Value, []) then
        begin
          cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountACCID.AsInteger;
        end;
      end;

    end;

  end;
end;

procedure TfrmIDXOrder.cdsDealTicketExecEXQTYChange(Sender: TField);
begin
  inherited;
  cdsDealTicketExecEXVALUE.AsFloat := cdsDealTicketExecEXQTY.AsFloat * cdsDealTicketExecEXPRICE.AsFloat;
end;

procedure TfrmIDXOrder.cdsDealTicketMARKETCODEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuMarket.Locate('MARKETCODE', Sender.Value, []) then
    begin
      cdsDealTicketCCYCODE.AsString := cdsLuMarketCCY.AsString;
    end;
  end;
end;

procedure TfrmIDXOrder.cdsDealTicketNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDealTicketMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
  cdsDealTicketCHANNELCODE.AsString := 'NT';
  cdsDealTicketOMNIBUSTRADE.AsString := '0';
  cdsDealTicketDUESTOCK.AsInteger := 3;
  cdsDealTicketDUECASH.AsInteger := 3;
end;

procedure TfrmIDXOrder.cdsDealTicketSTOCKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrument.Locate('INSTRUMENT_ID', Sender.Value, []) then
    begin
      cdsDealTicketSTOCKCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsDealTicketSTOCKNAME.AsString := cdsLuInstrumentSHORTNAME.AsString;
    end;
  end;
end;

procedure TfrmIDXOrder.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  actViewData.Execute;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMainAccount.Close;
    cdsLuMainAccount.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuEntity.Close;
    cdsLuEntity.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuChannel.Close;
    cdsLuChannel.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;

    cdsLuBoard.Close;
    cdsLuBoard.Open;

    cdsLuBroker.Close;
    cdsLuBroker.Open;

    cdsLuDealer.Close;
    cdsLuDealer.Open;

    cdsLuSales.Close;
    cdsLuSales.Open;

    cdsLuTradingAccount.Close;
    cdsLuTradingAccount.Open;
  end;
end;

procedure TfrmIDXOrder.FormResize(Sender: TObject);
begin
  inherited;
  grdOrder.Width := Self.Width div 2;
  grdMaster.Height := (Self.Height - lcTop.Height) div 2;
end;

procedure TfrmIDXOrder.gvwOrderFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  AItemList: TcxFilterCriteriaItemList;
begin
  inherited;
  with gvwTrade.DataController.Filter do
  begin
    BeginUpdate;
    Try
      Root.Clear;
      AItemList := Root.AddItemList(fboAnd);
      AItemList.AddItem(gvwTradeIDXORDERID, foEqual, cdsIDXOrderORDERCODE.AsString, cdsIDXOrderORDERCODE.AsString);
      AItemList.AddItem(gvwTradeBS, foEqual, cdsIDXOrderBS.AsString, cdsIDXOrderBS.AsString);
      AItemList.AddItem(gvwTradeSTOCKCODE, foEqual, cdsIDXOrderSTOCKCODE.AsString, cdsIDXOrderSTOCKCODE.AsString);
      Active := True;
    Finally
      EndUpdate;
    End;
  end;
end;

Initialization
  RegisterClass(TfrmIDXOrder);

end.
