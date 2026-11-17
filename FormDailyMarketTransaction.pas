unit FormDailyMarketTransaction;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Datasnap.DBClient, NClientDataset, Vcl.StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  NReportClient, NDatasetContainer, dxBar, cxClasses, Vcl.ActnList,
  NDatasetAction, dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxGridChartView, cxGridDBChartView,
  System.DateUtils, System.Actions, System.ImageList, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges;

type
  TfrmDailyMarketTransaction = class(TfrmBrowseData)
    lcFilterGroup_Root: TdxLayoutGroup;
    lcFilter: TdxLayoutControl;
    cbMarket: TcxLookupComboBox;
    lcFilterItem1: TdxLayoutItem;
    dtStart: TcxDateEdit;
    lcFilterItem2: TdxLayoutItem;
    lcFilterGroup1: TdxLayoutGroup;
    btnView: TcxButton;
    lcFilterItem3: TdxLayoutItem;
    cdsDailyMarketTransaction: TNClientDataset;
    cdsDailyMarketTransactionCONID: TLargeintField;
    cdsDailyMarketTransactionCONCODE: TStringField;
    cdsDailyMarketTransactionCONDATE: TDateField;
    cdsDailyMarketTransactionCASHSETTLEDATE: TDateField;
    cdsDailyMarketTransactionSTOCKSETTLEDATE: TDateField;
    cdsDailyMarketTransactionMARKETCODE: TStringField;
    cdsDailyMarketTransactionCCYCODE: TStringField;
    cdsDailyMarketTransactionNETAMT: TFloatField;
    cdsDailyMarketTransactionFOREIGN_CCYCODE: TStringField;
    cdsDailyMarketTransactionFOREIGN_EXRATE: TFloatField;
    cdsDailyMarketTransactionFOREIGN_NETAMT: TFloatField;
    cdsDailyMarketTransactionACCID: TIntegerField;
    cdsDailyMarketTransactionACCCODE: TStringField;
    cdsDailyMarketTransactionACCNAME: TStringField;
    cdsDailyMarketTransactionACCINIT: TStringField;
    cdsDailyMarketTransactionACCTYPE: TStringField;
    cdsDailyMarketTransactionENTTCODE: TStringField;
    cdsDailyMarketTransactionENTNAME: TStringField;
    cdsDailyMarketTransactionENTACCTYPE: TStringField;
    cdsDailyMarketTransactionSALESID: TLargeintField;
    cdsDailyMarketTransactionSALESCODE: TStringField;
    cdsDailyMarketTransactionSALESNAME: TStringField;
    cdsDailyMarketTransactionSTOCKCODE: TStringField;
    cdsDailyMarketTransactionSTOCKNAME: TStringField;
    cdsDailyMarketTransactionBOARDID: TLargeintField;
    cdsDailyMarketTransactionBOARDCODE: TStringField;
    cdsDailyMarketTransactionCPACCID: TIntegerField;
    cdsDailyMarketTransactionCPACCCODE: TStringField;
    cdsDailyMarketTransactionCPACCNAME: TStringField;
    cdsDailyMarketTransactionCPACCINIT: TStringField;
    cdsDailyMarketTransactionAPRICE: TFloatField;
    cdsDailyMarketTransactionEXPRICE: TFloatField;
    cdsDailyMarketTransactionQTY: TFloatField;
    cdsDailyMarketTransactionVALUE: TFloatField;
    cdsDailyMarketTransactionBUY_QTY: TFloatField;
    cdsDailyMarketTransactionBUY_VALUE: TFloatField;
    cdsDailyMarketTransactionBUY_AVALUE: TFloatField;
    cdsDailyMarketTransactionSELL_QTY: TFloatField;
    cdsDailyMarketTransactionSELL_VALUE: TFloatField;
    cdsDailyMarketTransactionSELL_AVALUE: TFloatField;
    cdsDailyMarketTransactionBROKERFEE: TFloatField;
    cdsDailyMarketTransactionCHG1_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG1_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG1_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG2_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG2_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG2_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG3_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG3_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG3_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG4_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG4_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG4_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG5_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG5_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG5_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG6_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG6_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG6_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG7_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG7_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG7_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG8_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG8_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG8_CHARGE_DIFF: TFloatField;
    cdsDailyMarketTransactionCHG9_CHARGE_VAL1: TFloatField;
    cdsDailyMarketTransactionCHG9_CHARGE_VAL2: TFloatField;
    cdsDailyMarketTransactionCHG9_CHARGE_DIFF: TFloatField;
    actViewData: TNAction;
    gvwMasterCONID: TcxGridDBBandedColumn;
    gvwMasterCONCODE: TcxGridDBBandedColumn;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterCASHSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterSTOCKSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterNETAMT: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_EXRATE: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_NETAMT: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTACCTYPE: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterBOARDID: TcxGridDBBandedColumn;
    gvwMasterBOARDCODE: TcxGridDBBandedColumn;
    gvwMasterCPACCID: TcxGridDBBandedColumn;
    gvwMasterCPACCCODE: TcxGridDBBandedColumn;
    gvwMasterCPACCNAME: TcxGridDBBandedColumn;
    gvwMasterCPACCINIT: TcxGridDBBandedColumn;
    gvwMasterAPRICE: TcxGridDBBandedColumn;
    gvwMasterEXPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    gvwMasterBUY_QTY: TcxGridDBBandedColumn;
    gvwMasterBUY_VALUE: TcxGridDBBandedColumn;
    gvwMasterBUY_AVALUE: TcxGridDBBandedColumn;
    gvwMasterSELL_QTY: TcxGridDBBandedColumn;
    gvwMasterSELL_VALUE: TcxGridDBBandedColumn;
    gvwMasterSELL_AVALUE: TcxGridDBBandedColumn;
    gvwMasterBROKERFEE: TcxGridDBBandedColumn;
    gvwMasterCHG1_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG1_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG1_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG2_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG2_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG2_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG3_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG3_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG3_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG4_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG4_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG4_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG5_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG5_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG5_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG6_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG6_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG6_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG7_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG7_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG7_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG8_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG8_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG8_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwMasterCHG9_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwMasterCHG9_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwMasterCHG9_CHARGE_DIFF: TcxGridDBBandedColumn;
    cdsDailyMarketTransactionBS: TStringField;
    gvwMasterBS: TcxGridDBBandedColumn;
    cdsChargeList: TNClientDataset;
    cdsChargeListCHARGE_ID: TLargeintField;
    cdsChargeListCHARGE_CODE: TStringField;
    cdsChargeListMARKETCODE: TStringField;
    cdsChargeListCHARGE_TYPE: TStringField;
    cdsChargeListCHARGE_DESC: TStringField;
    cdsDailyMarketTransactionNETAMOUNT: TFloatField;
    gvwMasterNETAMOUNT: TcxGridDBBandedColumn;
    cdsDailyMarketTransactionPRDCODE: TStringField;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    cdsDailyMarketTransactionSETTLE_NETAMOUNT: TFloatField;
    gvwMasterSETTLE_NETAMOUNT: TcxGridDBBandedColumn;
    grdMasterLevel2: TcxGridLevel;
    gvwMasterChart: TcxGridDBChartView;
    gvwMasterChartSeries1: TcxGridDBChartSeries;
    gvwMasterChartSeries2: TcxGridDBChartSeries;
    gvwMasterChartSeries3: TcxGridDBChartSeries;
    gvwMasterChartSeries4: TcxGridDBChartSeries;
    gvwMasterChartDataGroup1: TcxGridDBChartDataGroup;
    gvwMasterChartDataGroup2: TcxGridDBChartDataGroup;
    gvwMasterChartDataGroup3: TcxGridDBChartDataGroup;
    gvwMasterChartDataGroup4: TcxGridDBChartDataGroup;
    gvwMasterChartDataGroup5: TcxGridDBChartDataGroup;
    gvwMasterChartDataGroup6: TcxGridDBChartDataGroup;
    cdsDailyMarketTransactionGAINLOSS_AVGPRICE: TFloatField;
    gvwMasterGAINLOSS_AVGPRICE: TcxGridDBBandedColumn;
    dtEnd: TcxDateEdit;
    lcFilterItem4: TdxLayoutItem;
    cdsDailyMarketTransactionCASHKEEP: TStringField;
    cdsDailyMarketTransactionSTOCKKEEP: TStringField;
    cdsDailyMarketTransactionAFFIL: TBooleanField;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    cdsDailyMarketTransactionBROKERFEE_LEG2: TFloatField;
    cdsDailyMarketTransactionNETAMOUNT_LEG2: TFloatField;
    cdsDailyMarketTransactionFOREIGN_CCYCODE_LEG2: TStringField;
    cdsDailyMarketTransactionFOREIGN_NETAMT_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG1_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG1_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG1_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG2_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG2_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG2_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG3_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG3_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG3_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG4_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG4_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG4_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG5_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG5_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG5_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG6_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG6_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG6_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG7_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG7_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG7_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG8_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG8_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG8_CHARGE_DIFF_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG9_CHARGE_VAL1_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG9_CHARGE_VAL2_LEG2: TFloatField;
    cdsDailyMarketTransactionCHG9_CHARGE_DIFF_LEG2: TFloatField;
    gvwMasterBROKERFEE_LEG2: TcxGridDBBandedColumn;
    gvwMasterNETAMOUNT_LEG2: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_CCYCODE_LEG2: TcxGridDBBandedColumn;
    gvwMasterFOREIGN_NETAMT_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG1_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG1_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG1_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG2_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG2_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG2_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG3_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG3_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG3_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG4_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG4_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG4_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG5_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG5_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG5_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG6_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG6_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG6_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG7_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG7_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG7_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG8_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG8_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG8_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG9_CHARGE_VAL1_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG9_CHARGE_VAL2_LEG2: TcxGridDBBandedColumn;
    gvwMasterCHG9_CHARGE_DIFF_LEG2: TcxGridDBBandedColumn;
    cdsDailyMarketTransactionCITYNAME: TStringField;
    gvwMasterOCCUPATION: TcxGridDBBandedColumn;
    gvwMasterCITYNAME: TcxGridDBBandedColumn;
    cdsDailyMarketTransactionOCCUPATION: TStringField;
    cdsDailyMarketTransactionADDITIONAL_FEE: TFloatField;
    gvwMasterADDITIONAL_FEE: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsDailyMarketTransactionCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDailyMarketTransaction: TfrmDailyMarketTransaction;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmDailyMarketTransaction.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsDailyMarketTransaction.Close;
  cdsDailyMarketTransaction.Params[0].AsString := VarToStrDef(cbMarket.EditValue, '');
  cdsDailyMarketTransaction.Params[1].AsDate := DateOf(dtStart.Date);
  cdsDailyMarketTransaction.Params[2].AsDate := DateOf(dtEnd.Date);
  cdsDailyMarketTransaction.Open;

  if (not cdsChargeList.Active)
    or (cdsChargeList.Params[0].AsString <> cdsDailyMarketTransaction.Params[0].AsString) then
  begin
    cdsChargeList.Close;
    cdsChargeList.Params[0].AsString := cdsDailyMarketTransaction.Params[0].AsString;
    cdsChargeList.Open;

    if cdsChargeList.IsEmpty then
    begin
      gvwMasterCHG1_CHARGE_VAL1.Visible := False;
      gvwMasterCHG2_CHARGE_VAL1.Visible := False;
      gvwMasterCHG3_CHARGE_VAL1.Visible := False;
      gvwMasterCHG4_CHARGE_VAL1.Visible := False;
      gvwMasterCHG5_CHARGE_VAL1.Visible := False;
      gvwMasterCHG6_CHARGE_VAL1.Visible := False;
      gvwMasterCHG7_CHARGE_VAL1.Visible := False;
      gvwMasterCHG8_CHARGE_VAL1.Visible := False;
      gvwMasterCHG9_CHARGE_VAL1.Visible := False;

      gvwMasterCHG1_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG2_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG3_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG4_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG5_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG6_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG7_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG8_CHARGE_VAL2_LEG2.Visible := False;
      gvwMasterCHG9_CHARGE_VAL2_LEG2.Visible := False;
    end
    else
    begin
      gvwMasterCHG1_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG1', []);
      gvwMasterCHG1_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG1_CHARGE_VAL1.Visible;
      if gvwMasterCHG1_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG1_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG1_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG2_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG2', []);
      gvwMasterCHG2_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG2_CHARGE_VAL1.Visible;
      if gvwMasterCHG2_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG2_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG2_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG3_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG3', []);
      gvwMasterCHG3_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG3_CHARGE_VAL1.Visible;
      if gvwMasterCHG3_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG3_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG3_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG4_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG4', []);
      gvwMasterCHG4_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG4_CHARGE_VAL1.Visible;
      if gvwMasterCHG4_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG4_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG4_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG5_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG5', []);
      gvwMasterCHG5_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG5_CHARGE_VAL1.Visible;
      if gvwMasterCHG5_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG5_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG5_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG6_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG6', []);
      gvwMasterCHG6_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG6_CHARGE_VAL1.Visible;
      if gvwMasterCHG6_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG6_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG6_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG7_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG7', []);
      gvwMasterCHG7_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG7_CHARGE_VAL1.Visible;
      if gvwMasterCHG7_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG7_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG7_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG8_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG8', []);
      gvwMasterCHG8_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG8_CHARGE_VAL1.Visible;
      if gvwMasterCHG8_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG8_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG8_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;

      gvwMasterCHG9_CHARGE_VAL1.Visible := cdsChargeList.Locate('CHARGE_CODE', 'CHG9', []);
      gvwMasterCHG9_CHARGE_VAL2_LEG2.Visible := gvwMasterCHG9_CHARGE_VAL1.Visible;
      if gvwMasterCHG9_CHARGE_VAL1.Visible then
      begin
        gvwMasterCHG9_CHARGE_VAL1.Caption := cdsChargeListCHARGE_DESC.AsString;
        gvwMasterCHG9_CHARGE_VAL2_LEG2.Caption := cdsChargeListCHARGE_DESC.AsString;
      end;
    end;
  end;
end;

procedure TfrmDailyMarketTransaction.cdsDailyMarketTransactionCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if cdsDailyMarketTransactionBS.AsString = 'B' then
  begin
    cdsDailyMarketTransactionNETAMOUNT.AsFloat := cdsDailyMarketTransactionBUY_AVALUE.AsFloat
      + cdsDailyMarketTransactionBROKERFEE.AsFloat
      + cdsDailyMarketTransactionCHG1_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG2_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG3_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG4_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG5_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG6_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG7_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG8_CHARGE_VAL1.AsFloat
      + cdsDailyMarketTransactionCHG9_CHARGE_VAL1.AsFloat;
    cdsDailyMarketTransactionGAINLOSS_AVGPRICE.AsFloat :=
      cdsDailyMarketTransactionBUY_AVALUE.AsFloat - cdsDailyMarketTransactionBUY_VALUE.AsFloat;
  end
  else
  begin
    cdsDailyMarketTransactionNETAMOUNT.AsFloat := (cdsDailyMarketTransactionSELL_AVALUE.AsFloat
      - cdsDailyMarketTransactionBROKERFEE.AsFloat
      - cdsDailyMarketTransactionCHG1_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG2_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG3_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG4_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG5_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG6_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG7_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG8_CHARGE_VAL1.AsFloat
      - cdsDailyMarketTransactionCHG9_CHARGE_VAL1.AsFloat) * -1;
    cdsDailyMarketTransactionGAINLOSS_AVGPRICE.AsFloat :=
      cdsDailyMarketTransactionSELL_AVALUE.AsFloat - cdsDailyMarketTransactionSELL_VALUE.AsFloat;
  end;

  cdsDailyMarketTransactionSETTLE_NETAMOUNT.AsFloat := cdsDailyMarketTransactionNETAMOUNT.AsFloat / cdsDailyMarketTransactionFOREIGN_EXRATE.AsFloat;
end;

procedure TfrmDailyMarketTransaction.FormCreate(Sender: TObject);
begin
  inherited;
  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  dtStart.Date := dmGlobal.RemoteServer.GetTransDate;
  dtStart.Properties.MaxDate := dtStart.Date;
  dtEnd.Date := dtStart.Date;
  dtEnd.Properties.MaxDate := dtStart.Date;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuMarket.Active then
      cdsLuMarket.Open;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmDailyMarketTransaction);

end.
