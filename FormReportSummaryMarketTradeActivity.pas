unit FormReportSummaryMarketTradeActivity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, cxCheckBox, dxLayoutControl, Datasnap.DBClient,
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, NReportRPC, cxImageComboBox, cxLabel, cxBarEditItem,
  NReportClient, System.DateUtils, System.Actions, System.ImageList, ClassClientConst,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,Clipbrd,
  dxDateRanges, Vcl.StdCtrls;

type

  TfrmReportSummaryMarketTradeActivity = class(TfrmBrowseData)
    cdsSummaryMarket: TNClientDataset;
    actLoadData: TNAction;
    mnuLoadData: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    gvwMasterSalesCode: TcxGridDBBandedColumn;
    gvwMasterName: TcxGridDBBandedColumn;
    gvwMasterNetAmountBuy: TcxGridDBBandedColumn;
    gvwMasterNetAmountSell: TcxGridDBBandedColumn;
    gvwMasterCode: TcxGridDBBandedColumn;
    actPosting: TNAction;
    Cancel1: TMenuItem;
    actReverse: TNAction;
    actUnpostJournal: TNAction;
    actCopyCell: TNAction;
    gvwMasterGrossAmtBuy: TcxGridDBBandedColumn;
    gvwMasterGrossAmtSell: TcxGridDBBandedColumn;
    gvwMasterTotalTrans: TcxGridDBBandedColumn;
    dtFrom: TcxBarEditItem;
    dtTo: TcxBarEditItem;
    gvwMasterDate: TcxGridDBBandedColumn;
    gvwMasterNetComm: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterJSXFee: TcxGridDBBandedColumn;
    gvwMasterIncomeTax: TcxGridDBBandedColumn;
    gvwMasterSalesName: TcxGridDBBandedColumn;
    gvwMasterAddtionalFee: TcxGridDBBandedColumn;
    cdsSummaryMarketNETAMT: TFloatField;
    cdsSummaryMarketCOMMAMT: TFloatField;
    cdsSummaryMarketACCNO: TStringField;
    cdsSummaryMarketACCNAME: TStringField;
    cdsSummaryMarketCONDATE: TDateField;
    cdsSummaryMarketCASHSETTLEDATE: TDateField;
    cdsSummaryMarketNETTYPE: TStringField;
    cdsSummaryMarketCCYCODE: TStringField;
    cdsSummaryMarketFOREIGN_CCYCODE: TStringField;
    cdsSummaryMarketFOREIGN_EXRATE: TFloatField;
    cdsSummaryMarketFOREIGN_NETAMT: TFloatField;
    cdsSummaryMarketBROKERFEE: TFloatField;
    cdsSummaryMarketWAPU: TFloatField;
    cdsSummaryMarketALLOCAMT: TFloatField;
    cdsSummaryMarketNETBUY: TFloatField;
    cdsSummaryMarketTOTALBUYVALUE: TFloatField;
    cdsSummaryMarketTOTALSELLVALUE: TFloatField;
    cdsSummaryMarketLEVY: TFloatField;
    cdsSummaryMarketVAT: TFloatField;
    cdsSummaryMarketSALESTAX: TFloatField;
    cdsSummaryMarketWHT: TFloatField;
    cdsSummaryMarketNET_AVALUE: TFloatField;
    cdsSummaryMarketNET_FOREIGN_ALLOCAMT: TFloatField;
    cdsSummaryMarketCITYNAME: TStringField;
    cdsSummaryMarketCOMM_RATE: TFloatField;
    cdsSummaryMarketBOARDCODE: TStringField;
    cdsSummaryMarketBROKERCODE: TStringField;
    cdsSummaryMarketSALES_FAX: TStringField;
    cdsSummaryMarketSALESCODE: TStringField;
    cdsSummaryMarketSALESNAME: TStringField;
    cdsSummaryMarketADDMINFEE_BRKFEE: TFloatField;
    cdsSummaryMarketADDMINFEE_VAT: TFloatField;
    cdsSummaryMarketADDITIONAL_FEE: TFloatField;
    cdsSummaryMarketSETTLE_TYPE: TStringField;
    cdsSummaryMarketAVALUE: TFloatField;
    cdsSummaryMarketTOTALTRANS: TIntegerField;
    cdsSummaryMarketTOTBUYVALUE: TIntegerField;
    cdsSummaryMarketAMOUNTSELL: TFloatField;
    procedure actLoadDataExecute(Sender: TObject);
    procedure cdsSummaryMarketCalcFields(DataSet: TDataSet);
    
  private
//  FAccountID: Integer;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmReportSummaryMarketTradeActivity: TfrmReportSummaryMarketTradeActivity;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

{ TfrmJournalInputList }



procedure TfrmReportSummaryMarketTradeActivity.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsSummaryMarket.Close;
  cdsSummaryMarket.Params[0].AsDate := VarToDateTime(dtFrom.EditValue);
  cdsSummaryMarket.Params[1].AsDate := VarToDateTime(dtTo.EditValue);
//cdsSummaryMarket.Params [2].AsInteger := FAccountID;

  cdsSummaryMarket.Open;
end;


procedure TfrmReportSummaryMarketTradeActivity.cdsSummaryMarketCalcFields(
  DataSet: TDataSet);
begin
  inherited;
       //cdsSummaryMarketTOTBUYVALUE.AsInteger := cdsSummaryMarketTOTALBUYVALUE.AsInteger + cdsSummaryMarketTOTALSELLVALUE.AsInteger;
cdsSummaryMarketTOTALTRANS.AsInteger := cdsSummaryMarketTOTALBUYVALUE.AsInteger + cdsSummaryMarketTOTALSELLVALUE.AsInteger;
end;

initialization
  RegisterClass(TfrmReportSummaryMarketTradeActivity);

end.
