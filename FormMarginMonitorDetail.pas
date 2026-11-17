unit FormMarginMonitorDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxLayoutContainer,
  cxLabel, cxDBLabel, cxTextEdit, dxStatusBar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmMarginMonitorDetail = class(TForm)
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    StatusBar: TdxStatusBar;
    dxLayoutControl3: TdxLayoutControl;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel18: TcxDBLabel;
    cxDBLabel19: TcxDBLabel;
    cxDBLabel20: TcxDBLabel;
    cxDBLabel13: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Item14: TdxLayoutItem;
    dxLayoutControl2Item15: TdxLayoutItem;
    dxLayoutControl2Item16: TdxLayoutItem;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Item21: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    lblStatus: TcxLabel;
    dxLayoutControl1Group_Root1: TdxLayoutGroup;
    lcACNo: TdxLayoutItem;
    lcACName: TdxLayoutItem;
    lcInit: TdxLayoutItem;
    lgTop: TdxLayoutGroup;
    lcStatus: TdxLayoutItem;
    lgAccount2: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel9: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsMarginDetail: TNClientDataset;
    dsMarginDetail: TDataSource;
    cdsMarginDetailACCNO: TStringField;
    cdsMarginDetailACCNAME: TStringField;
    cdsMarginDetailCASH_ONHAND: TFloatField;
    cdsMarginDetailARAMT: TFloatField;
    cdsMarginDetailAPAMT: TFloatField;
    cdsMarginDetailBUY_AMT: TFloatField;
    cdsMarginDetailSELL_AMT: TFloatField;
    cdsMarginDetailCASH_OUTS: TFloatField;
    cdsMarginDetailCOLLATERAL: TFloatField;
    cdsMarginDetailMKTVALUE: TFloatField;
    cdsMarginDetailASSETVALUE: TFloatField;
    cdsMarginDetailPL: TFloatField;
    cdsMarginDetailMCALLDAY: TIntegerField;
    cdsMarginDetailRATIO_MRGCALL: TFloatField;
    cdsMarginDetailRATIO_FORCESELL: TFloatField;
    cdsMarginDetailRATIO_MRGWARING: TFloatField;
    cdsMarginDetailCASHASSET: TFloatField;
    cdsMarginDetailBUYINGPOWER: TFloatField;
    cdsMarginDetailRATIO: TFloatField;
    cdsMarginDetailTOPUP: TFloatField;
    cdsMarginDetailACCRUED_INTEREST: TFloatField;
    cdsMarginDetailACCTYPE: TStringField;
    cdsMarginDetailACCTYPEDESC: TStringField;
    cdsMarginDetailPRDCODE: TStringField;
    cdsMarginDetailPRDDESC: TStringField;
    cdsMarginDetailACCINIT: TStringField;
    cxDBLabel10: TcxDBLabel;
    dxLayoutControl3Item1: TdxLayoutItem;
    cdsCollateral: TNClientDataset;
    dsCollateral: TDataSource;
    cdsMarginDetailACC_STS: TStringField;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cxDBLabel8: TcxDBLabel;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBLabel15: TcxDBLabel;
    dxLayoutControl3Item4: TdxLayoutItem;
    cdsMarginDetailSTOCK_SHORTFALL: TFloatField;
    cdsMarginDetailCASH_SHORTFALL: TFloatField;
    cdsMarginDetailCASH_DRAWDOWN: TFloatField;
    cdsMarginDetailSTOCK_DRAWDOWN: TFloatField;
    cxDBLabel17: TcxDBLabel;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBLabel21: TcxDBLabel;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxDBLabel22: TcxDBLabel;
    dxLayoutControl3Item7: TdxLayoutItem;
    cxDBLabel23: TcxDBLabel;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    cxDBLabel12: TcxDBLabel;
    cdsMarginDetailEMAILID: TLargeintField;
    cdsMarginDetailSENDID: TLargeintField;
    cdsMarginDetailLASTSENDMAIL: TDateField;
    cdsMarginDetailACCID: TLargeintField;
    cdsMarginDetailMRG_STATUS: TStringField;
    cxDBLabel24: TcxDBLabel;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cdsMarginDetailCASH_QQ: TFloatField;
    cdsCollateralRPTDATE: TDateField;
    cdsCollateralAcqDate: TDateField;
    cdsCollateralBranchID: TIntegerField;
    cdsCollateralBRANCHCODE: TStringField;
    cdsCollateralBRANCHNAME: TStringField;
    cdsCollateralSalesID: TIntegerField;
    cdsCollateralSALESCODE: TStringField;
    cdsCollateralSALESNAME: TStringField;
    cdsCollateralACCID: TLargeintField;
    cdsCollateralAccNo: TStringField;
    cdsCollateralAccName: TStringField;
    cdsCollateralAccInit: TStringField;
    cdsCollateralSTOCKID: TIntegerField;
    cdsCollateralMARKETCODE: TStringField;
    cdsCollateralStockCode: TStringField;
    cdsCollateralStockName: TStringField;
    cdsCollateralAvgPrice: TFloatField;
    cdsCollateralClosePrice: TFloatField;
    cdsCollateralStockOnHand: TFloatField;
    cdsCollateralStockOnHold: TFloatField;
    cdsCollateralStockOuts: TFloatField;
    cdsCollateralStockBalance: TFloatField;
    cdsCollateralStockBal_Value: TFloatField;
    cdsCollateralStockBal_MktValue: TFloatField;
    cdsCollateralUnReal_LossProfit: TFloatField;
    cdsCollateralLastCP: TDateField;
    cdsCollateralInvType: TStringField;
    cdsCollateralStockReceive: TFloatField;
    cdsCollateralStockDeliver: TFloatField;
    cdsCollateralSELLQTY: TFloatField;
    cdsCollateralAV_QTY: TFloatField;
    cdsCollateralQTY_CORPACT: TFloatField;
    cdsCollateralQTY_WARKAT: TFloatField;
    cdsCollateralENTTID: TIntegerField;
    cdsCollateralACCTYPE: TStringField;
    cdsCollateralHAIRCUTVAL: TFloatField;
    cdsCollateralACCSOPID: TIntegerField;
    cdsCollateralHCPERCENT: TFloatField;
    cdsCollateralSTOCKTYPE: TStringField;
    cdsCollateralSTOCKKEEP: TStringField;
    cdsCollateralCCY: TStringField;
    cdsCollateralRATING: TFloatField;
    cdsCollateralSTK_WDR: TFloatField;
    gvwMasterRPTDATE: TcxGridDBBandedColumn;
    gvwMasterAcqDate: TcxGridDBBandedColumn;
    gvwMasterBranchID: TcxGridDBBandedColumn;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterSalesID: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterAccNo: TcxGridDBBandedColumn;
    gvwMasterAccName: TcxGridDBBandedColumn;
    gvwMasterAccInit: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterStockCode: TcxGridDBBandedColumn;
    gvwMasterStockName: TcxGridDBBandedColumn;
    gvwMasterAvgPrice: TcxGridDBBandedColumn;
    gvwMasterClosePrice: TcxGridDBBandedColumn;
    gvwMasterStockOnHand: TcxGridDBBandedColumn;
    gvwMasterStockOnHold: TcxGridDBBandedColumn;
    gvwMasterStockOuts: TcxGridDBBandedColumn;
    gvwMasterStockBalance: TcxGridDBBandedColumn;
    gvwMasterStockBal_Value: TcxGridDBBandedColumn;
    gvwMasterStockBal_MktValue: TcxGridDBBandedColumn;
    gvwMasterUnReal_LossProfit: TcxGridDBBandedColumn;
    gvwMasterLastCP: TcxGridDBBandedColumn;
    gvwMasterInvType: TcxGridDBBandedColumn;
    gvwMasterStockReceive: TcxGridDBBandedColumn;
    gvwMasterStockDeliver: TcxGridDBBandedColumn;
    gvwMasterSELLQTY: TcxGridDBBandedColumn;
    gvwMasterAV_QTY: TcxGridDBBandedColumn;
    gvwMasterQTY_CORPACT: TcxGridDBBandedColumn;
    gvwMasterQTY_WARKAT: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterHAIRCUTVAL: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterHCPERCENT: TcxGridDBBandedColumn;
    gvwMasterSTOCKTYPE: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterRATING: TcxGridDBBandedColumn;
    gvwMasterSTK_WDR: TcxGridDBBandedColumn;
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsMarginDetailCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareData(AAccID: Integer; ATransDate: TDateTime);

  end;

var
  frmMarginMonitorDetail: TfrmMarginMonitorDetail;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmMarginMonitorDetail.cdsMarginDetailCalcFields(DataSet: TDataSet);
begin
  cdsMarginDetailBUYINGPOWER.AsFloat :=
    (((cdsMarginDetailRATIO_MRGCALL.AsFloat/100) * cdsMarginDetailCOLLATERAL.AsFloat) + cdsMarginDetailCASHASSET.AsFloat) /
    (1 - (cdsMarginDetailRATIO_MRGCALL.AsFloat/100));

  if cdsMarginDetailCOLLATERAL.AsFloat <=0 then cdsMarginDetailRATIO.AsFloat := 0
  else  cdsMarginDetailRATIO.AsFloat := abs((cdsMarginDetailCASHASSET.AsFloat / cdsMarginDetailCOLLATERAL.AsFloat) * 100);

  if (cdsMarginDetailCASHASSET.AsFloat < 0) then
  begin
    cdsMarginDetailTOPUP.AsFloat := ((cdsMarginDetailRATIO_MRGCALL.AsFloat/100) * cdsMarginDetailCOLLATERAL.AsFloat) + cdsMarginDetailCASHASSET.AsFloat;
    if Abs(cdsMarginDetailRATIO.AsFloat * 100) > cdsMarginDetailRATIO_MRGCALL.AsFloat  then
    begin
      cdsMarginDetailSTOCK_SHORTFALL.AsFloat := (abs(cdsMarginDetailCASHASSET.AsFloat) / (cdsMarginDetailRATIO_MRGCALL.AsFloat/100)) -
        cdsMarginDetailCOLLATERAL.AsFloat;
      cdsMarginDetailCASH_SHORTFALL.AsFloat := abs(cdsMarginDetailCASHASSET.AsFloat) -
        ((cdsMarginDetailRATIO_MRGCALL.AsFloat/100) * cdsMarginDetailCOLLATERAL.AsFloat);
    end;
    cdsMarginDetailCASH_DRAWDOWN.AsFloat := 0;


  end
  else
  begin
    cdsMarginDetailCASH_DRAWDOWN.AsFloat := cdsMarginDetailCASH_ONHAND.AsFloat;
  end;

  if cdsMarginDetailCOLLATERAL.AsFloat <= 0 then cdsMarginDetailSTOCK_DRAWDOWN.AsFloat := 0
  else
  begin
    if Abs(cdsMarginDetailRATIO.AsFloat * 100) <= cdsMarginDetailRATIO_MRGCALL.AsFloat  then
    begin
      if cdsMarginDetailCASHASSET.AsFloat < 0 then
      begin
        cdsMarginDetailSTOCK_DRAWDOWN.AsFloat := cdsMarginDetailCOLLATERAL.AsFloat + cdsMarginDetailCASHASSET.AsFloat;
      end
      else cdsMarginDetailSTOCK_DRAWDOWN.AsFloat := cdsMarginDetailCOLLATERAL.AsFloat;
    end;
  end;

end;

procedure TfrmMarginMonitorDetail.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmMarginMonitorDetail.PrepareData(AAccID: Integer; ATransDate: TDateTime);
begin
  cdsMarginDetail.Close;
  cdsCollateral.Close;
  cdsMarginDetail.Params[0].AsInteger  := AAccID;
  cdsMarginDetail.Params[1].AsDateTime := ATransDate;
  cdsCollateral.Params[0].AsDateTime := ATransDate;
  cdsCollateral.Params[1].AsInteger  := AAccID;
  cdsMarginDetail.Open;
  cdsCollateral.Open;

  if not cdsMarginDetail.IsEmpty then
  begin
    if cdsMarginDetailACC_STS.AsString = 'A' then lblStatus.Caption := 'Active'
    else if cdsMarginDetailACC_STS.AsString = 'T' then lblStatus.Caption := 'Suspend Trade'
    else if cdsMarginDetailACC_STS.AsString = 'B' then lblStatus.Caption := 'Suspend Buy'
    else if cdsMarginDetailACC_STS.AsString = 'S' then lblStatus.Caption := 'Suspend Sell';
  end;

end;

end.
