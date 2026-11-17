unit FormHandOverExer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset;

type
  TfrmHandOverExer = class(TfrmBrowseData)
    cdsHanOverExer: TNClientDataset;
    cdsHanOverExerCAID: TLargeintField;
    cdsHanOverExerCANO: TStringField;
    cdsHanOverExerCATYPE: TStringField;
    cdsHanOverExerSTOCKID: TIntegerField;
    cdsHanOverExerSTOCKCODE: TStringField;
    cdsHanOverExerSTOCKNAME: TStringField;
    cdsHanOverExerISINCODE: TStringField;
    cdsHanOverExerBASE_STK_RATIO: TFloatField;
    cdsHanOverExerGET_STK_RT: TFloatField;
    cdsHanOverExerBASE_CASH_RATIO: TFloatField;
    cdsHanOverExerGET_CASH_RATIO: TFloatField;
    cdsHanOverExerBASE_QTY_PRICE_RATIO: TFloatField;
    cdsHanOverExerEXER_PRICE: TFloatField;
    cdsHanOverExerWR_QTY_PRICE_RATIO: TFloatField;
    cdsHanOverExerWR_EXER_PRICE: TFloatField;
    cdsHanOverExerRND_CALC_MODE: TStringField;
    cdsHanOverExerLOCAL_TAX: TFloatField;
    cdsHanOverExerFOR_TAX: TFloatField;
    cdsHanOverExerRIGHTID: TIntegerField;
    cdsHanOverExerRIGHTCODE: TStringField;
    cdsHanOverExerWARRANTID: TIntegerField;
    cdsHanOverExerWAARANTCODE: TStringField;
    cdsHanOverExerNGRG_CUMDATE: TDateField;
    cdsHanOverExerTN_CUMDATE: TDateField;
    cdsHanOverExerNGRG_EXDATE: TDateField;
    cdsHanOverExerTN_EXDATE: TDateField;
    cdsHanOverExerRECDATE: TDateField;
    cdsHanOverExerDISTDATE: TDateField;
    cdsHanOverExerPAYDATE: TDateField;
    cdsHanOverExerRI_STR_LISTDATE: TDateField;
    cdsHanOverExerRI_END_LISDATE: TDateField;
    cdsHanOverExerRI_STR_TRDDATE: TDateField;
    cdsHanOverExerRI_END_TRDDATE: TDateField;
    cdsHanOverExerRI_STR_EXERDATE: TDateField;
    cdsHanOverExerRI_END_EXERDATE: TDateField;
    cdsHanOverExerSTR_DISTDATE: TDateField;
    cdsHanOverExerEND_DISTDATE: TDateField;
    cdsHanOverExerRI_LASTPAY_DATE: TDateField;
    cdsHanOverExerALLOTMENT_DATE: TDateField;
    cdsHanOverExerREFUND_DATE: TDateField;
    cdsHanOverExerRGNG_WR_STR_TRDDATE: TDateField;
    cdsHanOverExerTN_WR_STR_TRDDATE: TDateField;
    cdsHanOverExerWR_STR_EXERDATE: TDateField;
    cdsHanOverExerWR_END_EXERDATE: TDateField;
    cdsHanOverExerWR_EXPDATE: TDateField;
    cdsHanOverExerCA_DESC: TStringField;
    cdsHanOverExerCASHDIV_RCV: TDateField;
    cdsHanOverExerSTAT: TStringField;
    cdsHanOverExerRI_EXERCISES: TStringField;
    cdsHanOverExerRI_EXPIRED: TStringField;
    cdsHanOverExerMODDA: TDateTimeField;
    cdsHanOverExerMODUI: TStringField;
    cdsHanOverExerAPPDA: TDateTimeField;
    cdsHanOverExerAPPUI: TStringField;
    cdsHanOverExerUNDER4Y: TIntegerField;
    cdsHanOverExerUNDER4YDA: TDateTimeField;
    cdsHanOverExerNOTES4Y: TStringField;
    cdsHanOverExerISDEL: TIntegerField;
    cdsHanOverExerID: TLargeintField;
    cdsHanOverExerRI_EXER_ADM_FEE: TFloatField;
    cdsHanOverExerRI_ISINCODE: TStringField;
    cdsHanOverExerWR_ISINCODE: TStringField;
    cdsHanOverExerWR_STR_TRDDATE: TDateField;
    cdsHanOverExerBASE_RI_QTY: TFloatField;
    cdsHanOverExerGET_RI_QTY: TFloatField;
    cdsHanOverExerRI_PRICE: TFloatField;
    cdsHanOverExerBASE_WR_QTY: TFloatField;
    cdsHanOverExerGET_WR_QTY: TFloatField;
    cdsHanOverExerWR_PRICE: TFloatField;
    cdsHanOverExerNEW_STOCKID: TIntegerField;
    cdsHanOverExerNEW_STOCKCODE: TStringField;
    cdsHanOverExerNEW_STOCKNAME: TStringField;
    cdsHanOverExerNEW_ISINCODE: TStringField;
    cdsHanOverExerRIGTHNAME: TStringField;
    cdsHanOverExerWARRANTNAME: TStringField;
    cdsHanOverExerLASTCOUPON_DATE: TDateField;
    cdsHanOverExerNEXTCOUPON_DATE: TDateField;
    cdsHanOverExerMATURITY_DATE: TDateField;
    cdsHanOverExerCOUPONDAYS: TIntegerField;
    cdsHanOverExerINTEREST_RATE: TFloatField;
    cdsHanOverExerVOUCHERDATE: TDateTimeField;
    cdsHanOverExerCCYCODE: TStringField;
    cdsHanOverExerSETTLE_CCYCODE: TStringField;
    cdsHanOverExerEXRATE: TFloatField;
    cdsHanOverExerBROKER_ACCBANKID: TLargeintField;
    cdsHanOverExerWR_END_TRDDATE: TDateField;
    cdsHanOverExerFIRST_HANDOVER_DATE: TDateField;
    cdsHanOverExerSCND_HANDOVER_DATE: TDateField;
    cdsHanOverExerCLOSING_PRICE: TFloatField;
    cdsHanOverExerCOMPLAIN_DATE: TDateField;
    cdsHanOverExerEFFECTIVE_DATE: TDateField;
    cdsHanOverExerRUPSLB_DATE: TDateField;
    cdsHanOverExerSTR_IMPL_DATE: TDateField;
    cdsHanOverExerEND_IMPL_DATE: TDateField;
    cdsHanOverExerSTR_TRADE_DATE: TDateField;
    cdsHanOverExerEND_TRADE_DATE: TDateField;
    cdsHanOverExerMERGE_TRADE_DATE: TDateField;
    cdsHanOverExerSTR_TRADE_MERGE: TDateField;
    cdsHanOverExerRECMERGE: TDateField;
    cdsHanOverExerSHAREHOLDER_DATE: TDateField;
    cdsHanOverExerREPORT_DATE: TDateField;
    cdsHanOverExerSTR_NEW_TRADE: TDateField;
    cdsHanOverExerEND_OLD_TRADE: TDateField;
    cdsHanOverExerANNO_DATE: TDateField;
    cdsHanOverExerSTR_RESCISSION_DATE: TDateField;
    cdsHanOverExerEND_RESCISSION_DATE: TDateField;
    cdsHanOverExerROUNDSTOCK: TIntegerField;
    gvwMasterCAID: TcxGridDBBandedColumn;
    gvwMasterCANO: TcxGridDBBandedColumn;
    gvwMasterCATYPE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_STK_RATIO: TcxGridDBBandedColumn;
    gvwMasterGET_STK_RT: TcxGridDBBandedColumn;
    gvwMasterBASE_CASH_RATIO: TcxGridDBBandedColumn;
    gvwMasterGET_CASH_RATIO: TcxGridDBBandedColumn;
    gvwMasterBASE_QTY_PRICE_RATIO: TcxGridDBBandedColumn;
    gvwMasterEXER_PRICE: TcxGridDBBandedColumn;
    gvwMasterWR_QTY_PRICE_RATIO: TcxGridDBBandedColumn;
    gvwMasterWR_EXER_PRICE: TcxGridDBBandedColumn;
    gvwMasterRND_CALC_MODE: TcxGridDBBandedColumn;
    gvwMasterLOCAL_TAX: TcxGridDBBandedColumn;
    gvwMasterFOR_TAX: TcxGridDBBandedColumn;
    gvwMasterRIGHTID: TcxGridDBBandedColumn;
    gvwMasterRIGHTCODE: TcxGridDBBandedColumn;
    gvwMasterWARRANTID: TcxGridDBBandedColumn;
    gvwMasterWAARANTCODE: TcxGridDBBandedColumn;
    gvwMasterNGRG_CUMDATE: TcxGridDBBandedColumn;
    gvwMasterTN_CUMDATE: TcxGridDBBandedColumn;
    gvwMasterNGRG_EXDATE: TcxGridDBBandedColumn;
    gvwMasterTN_EXDATE: TcxGridDBBandedColumn;
    gvwMasterRECDATE: TcxGridDBBandedColumn;
    gvwMasterDISTDATE: TcxGridDBBandedColumn;
    gvwMasterPAYDATE: TcxGridDBBandedColumn;
    gvwMasterRI_STR_LISTDATE: TcxGridDBBandedColumn;
    gvwMasterRI_END_LISDATE: TcxGridDBBandedColumn;
    gvwMasterRI_STR_TRDDATE: TcxGridDBBandedColumn;
    gvwMasterRI_END_TRDDATE: TcxGridDBBandedColumn;
    gvwMasterRI_STR_EXERDATE: TcxGridDBBandedColumn;
    gvwMasterRI_END_EXERDATE: TcxGridDBBandedColumn;
    gvwMasterSTR_DISTDATE: TcxGridDBBandedColumn;
    gvwMasterEND_DISTDATE: TcxGridDBBandedColumn;
    gvwMasterRI_LASTPAY_DATE: TcxGridDBBandedColumn;
    gvwMasterALLOTMENT_DATE: TcxGridDBBandedColumn;
    gvwMasterREFUND_DATE: TcxGridDBBandedColumn;
    gvwMasterRGNG_WR_STR_TRDDATE: TcxGridDBBandedColumn;
    gvwMasterTN_WR_STR_TRDDATE: TcxGridDBBandedColumn;
    gvwMasterWR_STR_EXERDATE: TcxGridDBBandedColumn;
    gvwMasterWR_END_EXERDATE: TcxGridDBBandedColumn;
    gvwMasterWR_EXPDATE: TcxGridDBBandedColumn;
    gvwMasterCA_DESC: TcxGridDBBandedColumn;
    gvwMasterCASHDIV_RCV: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterRI_EXERCISES: TcxGridDBBandedColumn;
    gvwMasterRI_EXPIRED: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterRI_EXER_ADM_FEE: TcxGridDBBandedColumn;
    gvwMasterRI_ISINCODE: TcxGridDBBandedColumn;
    gvwMasterWR_ISINCODE: TcxGridDBBandedColumn;
    gvwMasterWR_STR_TRDDATE: TcxGridDBBandedColumn;
    gvwMasterBASE_RI_QTY: TcxGridDBBandedColumn;
    gvwMasterGET_RI_QTY: TcxGridDBBandedColumn;
    gvwMasterRI_PRICE: TcxGridDBBandedColumn;
    gvwMasterBASE_WR_QTY: TcxGridDBBandedColumn;
    gvwMasterGET_WR_QTY: TcxGridDBBandedColumn;
    gvwMasterWR_PRICE: TcxGridDBBandedColumn;
    gvwMasterNEW_STOCKID: TcxGridDBBandedColumn;
    gvwMasterNEW_STOCKCODE: TcxGridDBBandedColumn;
    gvwMasterNEW_STOCKNAME: TcxGridDBBandedColumn;
    gvwMasterNEW_ISINCODE: TcxGridDBBandedColumn;
    gvwMasterRIGTHNAME: TcxGridDBBandedColumn;
    gvwMasterWARRANTNAME: TcxGridDBBandedColumn;
    gvwMasterLASTCOUPON_DATE: TcxGridDBBandedColumn;
    gvwMasterNEXTCOUPON_DATE: TcxGridDBBandedColumn;
    gvwMasterMATURITY_DATE: TcxGridDBBandedColumn;
    gvwMasterCOUPONDAYS: TcxGridDBBandedColumn;
    gvwMasterINTEREST_RATE: TcxGridDBBandedColumn;
    gvwMasterVOUCHERDATE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterBROKER_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterWR_END_TRDDATE: TcxGridDBBandedColumn;
    gvwMasterFIRST_HANDOVER_DATE: TcxGridDBBandedColumn;
    gvwMasterSCND_HANDOVER_DATE: TcxGridDBBandedColumn;
    gvwMasterCLOSING_PRICE: TcxGridDBBandedColumn;
    gvwMasterCOMPLAIN_DATE: TcxGridDBBandedColumn;
    gvwMasterEFFECTIVE_DATE: TcxGridDBBandedColumn;
    gvwMasterRUPSLB_DATE: TcxGridDBBandedColumn;
    gvwMasterSTR_IMPL_DATE: TcxGridDBBandedColumn;
    gvwMasterEND_IMPL_DATE: TcxGridDBBandedColumn;
    gvwMasterSTR_TRADE_DATE: TcxGridDBBandedColumn;
    gvwMasterEND_TRADE_DATE: TcxGridDBBandedColumn;
    gvwMasterMERGE_TRADE_DATE: TcxGridDBBandedColumn;
    gvwMasterSTR_TRADE_MERGE: TcxGridDBBandedColumn;
    gvwMasterRECMERGE: TcxGridDBBandedColumn;
    gvwMasterSHAREHOLDER_DATE: TcxGridDBBandedColumn;
    gvwMasterREPORT_DATE: TcxGridDBBandedColumn;
    gvwMasterSTR_NEW_TRADE: TcxGridDBBandedColumn;
    gvwMasterEND_OLD_TRADE: TcxGridDBBandedColumn;
    gvwMasterANNO_DATE: TcxGridDBBandedColumn;
    gvwMasterSTR_RESCISSION_DATE: TcxGridDBBandedColumn;
    gvwMasterEND_RESCISSION_DATE: TcxGridDBBandedColumn;
    gvwMasterROUNDSTOCK: TcxGridDBBandedColumn;
    grdMasterDBBandedTableView1: TcxGridDBBandedTableView;
    grdMasterLevel2: TcxGridLevel;
    gvwDetail: TcxGridDBBandedTableView;
    cdsHandOverExerDetail: TNClientDataset;
    dsHandOverExerDetail: TDataSource;
    cdsHandOverExerDetailCAID: TLargeintField;
    cdsHandOverExerDetailEXER_ID: TLargeintField;
    cdsHandOverExerDetailACCID: TLargeintField;
    cdsHandOverExerDetailEXERDATE: TDateField;
    cdsHandOverExerDetailACCNO: TStringField;
    cdsHandOverExerDetailACCNAME: TStringField;
    cdsHandOverExerDetailCA_QTY: TFloatField;
    cdsHandOverExerDetailCA_AMT: TFloatField;
    cdsHandOverExerDetailEXERQTY: TFloatField;
    cdsHandOverExerDetailEXER_AMT: TFloatField;
    cdsHandOverExerDetailEXER_WARRQTY: TFloatField;
    cdsHandOverExerDetailEXER_PAYDATE: TDateField;
    cdsHandOverExerDetailEXER_PAID: TStringField;
    cdsHandOverExerDetailEXER_PAIDAMT: TFloatField;
    cdsHandOverExerDetailRCASH_VOUCHEID: TLargeintField;
    cdsHandOverExerDetailRCASH_VOUCHERNO: TStringField;
    cdsHandOverExerDetailPCASH_VOUCHERID: TLargeintField;
    cdsHandOverExerDetailPCASH_VOUCHERNO: TStringField;
    cdsHandOverExerDetailMODDA: TDateTimeField;
    cdsHandOverExerDetailMODUI: TStringField;
    cdsHandOverExerDetailAPPDA: TDateTimeField;
    cdsHandOverExerDetailAPPUI: TStringField;
    cdsHandOverExerDetailUNDER4Y: TIntegerField;
    cdsHandOverExerDetailUNDER4YDA: TDateTimeField;
    cdsHandOverExerDetailNOTES4Y: TStringField;
    cdsHandOverExerDetailISDEL: TIntegerField;
    cdsHandOverExerDetailID: TLargeintField;
    cdsHandOverExerDetailSTAT: TStringField;
    gvwDetailCAID: TcxGridDBBandedColumn;
    gvwDetailEXER_ID: TcxGridDBBandedColumn;
    gvwDetailACCID: TcxGridDBBandedColumn;
    gvwDetailEXERDATE: TcxGridDBBandedColumn;
    gvwDetailACCNO: TcxGridDBBandedColumn;
    gvwDetailACCNAME: TcxGridDBBandedColumn;
    gvwDetailCA_QTY: TcxGridDBBandedColumn;
    gvwDetailCA_AMT: TcxGridDBBandedColumn;
    gvwDetailEXERQTY: TcxGridDBBandedColumn;
    gvwDetailEXER_AMT: TcxGridDBBandedColumn;
    gvwDetailEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwDetailEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwDetailEXER_PAID: TcxGridDBBandedColumn;
    gvwDetailEXER_PAIDAMT: TcxGridDBBandedColumn;
    gvwDetailRCASH_VOUCHEID: TcxGridDBBandedColumn;
    gvwDetailRCASH_VOUCHERNO: TcxGridDBBandedColumn;
    gvwDetailPCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwDetailPCASH_VOUCHERNO: TcxGridDBBandedColumn;
    gvwDetailMODDA: TcxGridDBBandedColumn;
    gvwDetailMODUI: TcxGridDBBandedColumn;
    gvwDetailAPPDA: TcxGridDBBandedColumn;
    gvwDetailAPPUI: TcxGridDBBandedColumn;
    gvwDetailUNDER4Y: TcxGridDBBandedColumn;
    gvwDetailUNDER4YDA: TcxGridDBBandedColumn;
    gvwDetailNOTES4Y: TcxGridDBBandedColumn;
    gvwDetailISDEL: TcxGridDBBandedColumn;
    gvwDetailID: TcxGridDBBandedColumn;
    gvwDetailSTAT: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHandOverExer: TfrmHandOverExer;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmHandOverExer.FormCreate(Sender: TObject);
begin
  inherited;

  cdsHanOverExer.Close;
  cdsHanOverExer.Open;
end;

end.
