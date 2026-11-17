unit FormDailyTradeSummary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, Vcl.ActnList,
  Datasnap.DBClient, NClientDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, NActionPermission, NDatasetAction,
  frxClass, frxDBSet, NReportRPC, cxPCdxBarPopupMenu, dxBar, Vcl.ImgList,
  NReportClient, cxPC;

type
  TfrmDailyTradeSummary = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtFromDate: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    pageTradeSum: TcxPageControl;
    tabStock: TcxTabSheet;
    tabAccount: TcxTabSheet;
    tabSales: TcxTabSheet;
    ReportByStock: TNClientReportContainer;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    aclEditor: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    grdMaster: TcxGrid;
    gvwStock: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dtToDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsTradeSumByStock: TNClientDataset;
    cdsTradeSumByAccount: TNClientDataset;
    cdsTradeSumBySales: TNClientDataset;
    dsTradeSumByStock: TDataSource;
    dsTradeSumByAccount: TDataSource;
    dsTradeSumBySales: TDataSource;
    cdsTradeSumByStockSTOCKID: TLargeintField;
    cdsTradeSumByStockSTOCKCODE: TStringField;
    cdsTradeSumByStockSTOCKNAME: TStringField;
    cdsTradeSumByStockBS: TStringField;
    cdsTradeSumByStockQTY: TFloatField;
    cdsTradeSumByStockAVGPRICE: TFloatField;
    cdsTradeSumByStockVALUE: TFloatField;
    cdsTradeSumByStockCHARGES: TFloatField;
    cdsTradeSumByStockBROKERFEE: TFloatField;
    cdsTradeSumByStockVAT: TFloatField;
    cdsTradeSumByStockWHT: TFloatField;
    cdsTradeSumByStockSELLTAX: TFloatField;
    cdsTradeSumByStockTOTAL_CHARGES: TFloatField;
    cdsTradeSumByStockTOTAL_AMOUNT: TFloatField;
    cdsTradeSumByAccountACCID: TLargeintField;
    cdsTradeSumByAccountACCCODE: TStringField;
    cdsTradeSumByAccountACCNAME: TStringField;
    cdsTradeSumByAccountBS: TStringField;
    cdsTradeSumByAccountQTY: TFloatField;
    cdsTradeSumByAccountAVGPRICE: TFloatField;
    cdsTradeSumByAccountVALUE: TFloatField;
    cdsTradeSumByAccountCHARGES: TFloatField;
    cdsTradeSumByAccountBROKERFEE: TFloatField;
    cdsTradeSumByAccountVAT: TFloatField;
    cdsTradeSumByAccountWHT: TFloatField;
    cdsTradeSumByAccountSELLTAX: TFloatField;
    cdsTradeSumByAccountTOTAL_CHARGES: TFloatField;
    cdsTradeSumByAccountTOTAL_AMOUNT: TFloatField;
    cdsTradeSumBySalesACCID: TLargeintField;
    cdsTradeSumBySalesSALESCODE: TStringField;
    cdsTradeSumBySalesSALESNAME: TStringField;
    cdsTradeSumBySalesBS: TStringField;
    cdsTradeSumBySalesQTY: TFloatField;
    cdsTradeSumBySalesAVGPRICE: TFloatField;
    cdsTradeSumBySalesVALUE: TFloatField;
    cdsTradeSumBySalesCHARGES: TFloatField;
    cdsTradeSumBySalesBROKERFEE: TFloatField;
    cdsTradeSumBySalesVAT: TFloatField;
    cdsTradeSumBySalesWHT: TFloatField;
    cdsTradeSumBySalesSELLTAX: TFloatField;
    cdsTradeSumBySalesTOTAL_CHARGES: TFloatField;
    cdsTradeSumBySalesTOTAL_AMOUNT: TFloatField;
    gvwStockSTOCKID: TcxGridDBBandedColumn;
    gvwStockSTOCKCODE: TcxGridDBBandedColumn;
    gvwStockSTOCKNAME: TcxGridDBBandedColumn;
    gvwStockBS: TcxGridDBBandedColumn;
    gvwStockQTY: TcxGridDBBandedColumn;
    gvwStockAVGPRICE: TcxGridDBBandedColumn;
    gvwStockVALUE: TcxGridDBBandedColumn;
    gvwStockCHARGES: TcxGridDBBandedColumn;
    gvwStockBROKERFEE: TcxGridDBBandedColumn;
    gvwStockVAT: TcxGridDBBandedColumn;
    gvwStockWHT: TcxGridDBBandedColumn;
    gvwStockSELLTAX: TcxGridDBBandedColumn;
    gvwStockTOTAL_CHARGES: TcxGridDBBandedColumn;
    gvwStockTOTAL_AMOUNT: TcxGridDBBandedColumn;
    ReportByAccount: TNClientReportContainer;
    ReportBySales: TNClientReportContainer;
    cxGrid1: TcxGrid;
    gvwAccount: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    gvwAccountACCID: TcxGridDBBandedColumn;
    gvwAccountACCCODE: TcxGridDBBandedColumn;
    gvwAccountACCNAME: TcxGridDBBandedColumn;
    gvwAccountBS: TcxGridDBBandedColumn;
    gvwAccountQTY: TcxGridDBBandedColumn;
    gvwAccountAVGPRICE: TcxGridDBBandedColumn;
    gvwAccountVALUE: TcxGridDBBandedColumn;
    gvwAccountCHARGES: TcxGridDBBandedColumn;
    gvwAccountBROKERFEE: TcxGridDBBandedColumn;
    gvwAccountVAT: TcxGridDBBandedColumn;
    gvwAccountWHT: TcxGridDBBandedColumn;
    gvwAccountSELLTAX: TcxGridDBBandedColumn;
    gvwAccountTOTAL_CHARGES: TcxGridDBBandedColumn;
    gvwAccountTOTAL_AMOUNT: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    gvwSales: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    gvwSalesACCID: TcxGridDBBandedColumn;
    gvwSalesSALESCODE: TcxGridDBBandedColumn;
    gvwSalesSALESNAME: TcxGridDBBandedColumn;
    gvwSalesBS: TcxGridDBBandedColumn;
    gvwSalesQTY: TcxGridDBBandedColumn;
    gvwSalesAVGPRICE: TcxGridDBBandedColumn;
    gvwSalesVALUE: TcxGridDBBandedColumn;
    gvwSalesCHARGES: TcxGridDBBandedColumn;
    gvwSalesBROKERFEE: TcxGridDBBandedColumn;
    gvwSalesVAT: TcxGridDBBandedColumn;
    gvwSalesWHT: TcxGridDBBandedColumn;
    gvwSalesSELLTAX: TcxGridDBBandedColumn;
    gvwSalesTOTAL_CHARGES: TcxGridDBBandedColumn;
    gvwSalesTOTAL_AMOUNT: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actLoadDataExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDailyTradeSummary: TfrmDailyTradeSummary;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmDailyTradeSummary.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsTradeSumByStock.Close;
  cdsTradeSumByStock.Params[0].AsDate := dtFromDate.Date;
  cdsTradeSumByStock.Params[1].AsDate := dtToDate.Date;
  cdsTradeSumByStock.Open;

  cdsTradeSumByAccount.Close;
  cdsTradeSumByAccount.Params[0].AsDate := dtFromDate.Date;
  cdsTradeSumByAccount.Params[1].AsDate := dtToDate.Date;
  cdsTradeSumByAccount.Open;

  cdsTradeSumBySales.Close;
  cdsTradeSumBySales.Params[0].AsDate := dtFromDate.Date;
  cdsTradeSumBySales.Params[1].AsDate := dtToDate.Date;
  cdsTradeSumBySales.Open;

  gvwStock.ApplyBestFit();
  gvwAccount.ApplyBestFit();
  gvwSales.ApplyBestFit();
end;

procedure TfrmDailyTradeSummary.actPrintExecute(Sender: TObject);
begin
  inherited;
  if pageTradeSum.ActivePageIndex = 0 then//Stock
  begin
    ReportByStock.Params[0].AsDate := cdsTradeSumByStock.Params[0].AsDate;
    ReportByStock.Params[1].AsDate := cdsTradeSumByStock.Params[1].AsDate;
    ReportByStock.PreviewReport;
  end
  else if pageTradeSum.ActivePageIndex = 1 then//Account
  begin
    ReportByAccount.Params[0].AsDate := cdsTradeSumByAccount.Params[0].AsDate;
    ReportByAccount.Params[1].AsDate := cdsTradeSumByAccount.Params[1].AsDate;
    ReportByAccount.PreviewReport;
  end
  else if pageTradeSum.ActivePageIndex = 2 then//Sales
  begin
    ReportBySales.Params[0].AsDate := cdsTradeSumBySales.Params[0].AsDate;
    ReportBySales.Params[1].AsDate := cdsTradeSumBySales.Params[1].AsDate;
    ReportBySales.PreviewReport;
  end;
end;

procedure TfrmDailyTradeSummary.FormCreate(Sender: TObject);
begin
  inherited;
  dtFromDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtToDate.Date := dtFromDate.Date;
  actLoadData.Execute;
end;

Initialization
  RegisterClass(TfrmDailyTradeSummary);

end.
