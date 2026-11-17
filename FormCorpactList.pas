unit FormCorpactList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxContainer, dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxCalendar, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxImageComboBox, dxLayoutControl, Vcl.ExtCtrls,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.DBGrids,
  NReportClient, cxCheckBox, System.Actions, System.ImageList,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxDateRanges, strUtils, cxBarEditItem,
  dxScrollbarAnnotations;

type
  TfrmCorpActList = class(TfrmBrowseData)
    cdsCorpactList: TNClientDataset;
    cdsCorpAct: TNClientDataset;
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
    cdsCorpActCAID: TLargeintField;
    cdsCorpActCANO: TStringField;
    cdsCorpActCATYPE: TStringField;
    cdsCorpActSTOCKID: TIntegerField;
    cdsCorpActSTOCKCODE: TStringField;
    cdsCorpActSTOCKNAME: TStringField;
    cdsCorpActISINCODE: TStringField;
    cdsCorpActBASE_STK_RATIO: TFloatField;
    cdsCorpActGET_STK_RT: TFloatField;
    cdsCorpActBASE_CASH_RATIO: TFloatField;
    cdsCorpActGET_CASH_RATIO: TFloatField;
    cdsCorpActBASE_QTY_PRICE_RATIO: TFloatField;
    cdsCorpActEXER_PRICE: TFloatField;
    cdsCorpActWR_QTY_PRICE_RATIO: TFloatField;
    cdsCorpActWR_EXER_PRICE: TFloatField;
    cdsCorpActRND_CALC_MODE: TStringField;
    cdsCorpActLOCAL_TAX: TFloatField;
    cdsCorpActFOR_TAX: TFloatField;
    cdsCorpActRIGHTID: TIntegerField;
    cdsCorpActRIGHTCODE: TStringField;
    cdsCorpActWARRANTID: TIntegerField;
    cdsCorpActWAARANTCODE: TStringField;
    cdsCorpActNGRG_CUMDATE: TDateField;
    cdsCorpActTN_CUMDATE: TDateField;
    cdsCorpActNGRG_EXDATE: TDateField;
    cdsCorpActTN_EXDATE: TDateField;
    cdsCorpActRECDATE: TDateField;
    cdsCorpActDISTDATE: TDateField;
    cdsCorpActPAYDATE: TDateField;
    cdsCorpActRI_STR_LISTDATE: TDateField;
    cdsCorpActRI_END_LISDATE: TDateField;
    cdsCorpActRI_STR_TRDDATE: TDateField;
    cdsCorpActRI_END_TRDDATE: TDateField;
    cdsCorpActRI_STR_EXERDATE: TDateField;
    cdsCorpActRI_END_EXERDATE: TDateField;
    cdsCorpActSTR_DISTDATE: TDateField;
    cdsCorpActEND_DISTDATE: TDateField;
    cdsCorpActRI_LASTPAY_DATE: TDateField;
    cdsCorpActALLOTMENT_DATE: TDateField;
    cdsCorpActREFUND_DATE: TDateField;
    cdsCorpActRGNG_WR_STR_TRDDATE: TDateField;
    cdsCorpActTN_WR_STR_TRDDATE: TDateField;
    cdsCorpActWR_STR_EXERDATE: TDateField;
    cdsCorpActWR_END_EXERDATE: TDateField;
    cdsCorpActWR_EXPDATE: TDateField;
    cdsCorpActCA_DESC: TStringField;
    cdsCorpActRI_EXER_ADM_FEE: TFloatField;
    cdsCorpActRI_ISINCODE: TStringField;
    cdsCorpActWR_ISINCODE: TStringField;
    cdsCorpActWR_STR_TRDDATE: TDateField;
    cdsCorpActBASE_RI_QTY: TFloatField;
    cdsCorpActGET_RI_QTY: TFloatField;
    cdsCorpActRI_PRICE: TFloatField;
    cdsCorpActBASE_WR_QTY: TFloatField;
    cdsCorpActGET_WR_QTY: TFloatField;
    cdsCorpActWR_PRICE: TFloatField;
    cdsCorpActNEW_STOCKID: TIntegerField;
    cdsCorpActNEW_STOCKCODE: TStringField;
    cdsCorpActNEW_STOCKNAME: TStringField;
    cdsCorpActNEW_ISINCODE: TStringField;
    cdsCorpActRIGTHNAME: TStringField;
    cdsCorpActWARRANTNAME: TStringField;
    cdsCorpActLASTCOUPON_DATE: TDateField;
    cdsCorpActNEXTCOUPON_DATE: TDateField;
    cdsCorpActMATURITY_DATE: TDateField;
    cdsCorpActCOUPONDAYS: TIntegerField;
    cdsCorpActINTEREST_RATE: TFloatField;
    cdsCorpActSTAT: TStringField;
    cdsCorpActMODDA: TDateTimeField;
    cdsCorpActMODUI: TStringField;
    cdsCorpActAPPDA: TDateTimeField;
    cdsCorpActAPPUI: TStringField;
    cdsCorpActUNDER4Y: TIntegerField;
    cdsCorpActUNDER4YDA: TDateTimeField;
    cdsCorpActNOTES4Y: TStringField;
    cdsCorpActISDEL: TIntegerField;
    cdsCorpActID: TLargeintField;
    cdsCorpActVOUCHERDATE: TDateTimeField;
    dxBarButton1: TdxBarButton;
    actEntitlement: TNAction;
    dxBarButton2: TdxBarButton;
    cdsCorpActCCYCODE: TStringField;
    cdsCorpActSETTLE_CCYCODE: TStringField;
    cdsCorpActEXRATE: TFloatField;
    actNewHMETD: TNAction;
    actCDeviden: TNAction;
    actSDeviden: TNAction;
    actStockMix: TNAction;
    actSBonus: TNAction;
    actSSplit: TNAction;
    actSReverse: TNAction;
    actSMerge: TNAction;
    actCPayment: TNAction;
    NewHMETD1: TMenuItem;
    NewCashDeviden1: TMenuItem;
    StockDeviden1: TMenuItem;
    StockMix1: TMenuItem;
    StockBonus1: TMenuItem;
    StockSplit1: TMenuItem;
    StockReverse1: TMenuItem;
    StockMerge1: TMenuItem;
    CouponPayment1: TMenuItem;
    cdsCorpActBROKER_ACCBANKID: TLargeintField;
    cdsCorpActWR_END_TRDDATE: TDateField;
    cdsCorpActFIRST_HANDOVER_DATE: TDateField;
    cdsCorpActSCND_HANDOVER_DATE: TDateField;
    cdsCorpActCOMPLAIN_DATE: TDateField;
    cdsCorpActEFFECTIVE_DATE: TDateField;
    cdsCorpActRUPSLB_DATE: TDateField;
    cdsCorpActSTR_IMPL_DATE: TDateField;
    cdsCorpActEND_IMPL_DATE: TDateField;
    cdsCorpActSTR_TRADE_DATE: TDateField;
    cdsCorpActEND_TRADE_DATE: TDateField;
    cdsCorpActMERGE_TRADE_DATE: TDateField;
    cdsCorpActSTR_TRADE_MERGE: TDateField;
    cdsCorpActRECMERGE: TDateField;
    cdsCorpActSHAREHOLDER_DATE: TDateField;
    cdsCorpActREPORT_DATE: TDateField;
    cdsCorpActSTR_NEW_TRADE: TDateField;
    cdsCorpActEND_OLD_TRADE: TDateField;
    cdsCorpActANNO_DATE: TDateField;
    cdsCorpActSTR_RESCISSION_DATE: TDateField;
    cdsCorpActEND_RESCISSION_DATE: TDateField;
    Entitlement1: TMenuItem;
    N5: TMenuItem;
    actExercise: TNAction;
    cdsCorpActCLOSING_PRICE: TFloatField;
    cdsCorpActROUNDSTOCK: TIntegerField;
    cdsCorpactListCAID: TLargeintField;
    cdsCorpactListCANO: TStringField;
    cdsCorpactListCATYPE: TStringField;
    cdsCorpactListSTOCKID: TIntegerField;
    cdsCorpactListSTOCKCODE: TStringField;
    cdsCorpactListSTOCKNAME: TStringField;
    cdsCorpactListISINCODE: TStringField;
    cdsCorpactListBASE_STK_RATIO: TFloatField;
    cdsCorpactListGET_STK_RT: TFloatField;
    cdsCorpactListBASE_CASH_RATIO: TFloatField;
    cdsCorpactListGET_CASH_RATIO: TFloatField;
    cdsCorpactListBASE_QTY_PRICE_RATIO: TFloatField;
    cdsCorpactListEXER_PRICE: TFloatField;
    cdsCorpactListWR_QTY_PRICE_RATIO: TFloatField;
    cdsCorpactListWR_EXER_PRICE: TFloatField;
    cdsCorpactListRND_CALC_MODE: TStringField;
    cdsCorpactListLOCAL_TAX: TFloatField;
    cdsCorpactListFOR_TAX: TFloatField;
    cdsCorpactListRIGHTID: TIntegerField;
    cdsCorpactListRIGHTCODE: TStringField;
    cdsCorpactListWARRANTID: TIntegerField;
    cdsCorpactListWAARANTCODE: TStringField;
    cdsCorpactListNGRG_CUMDATE: TDateField;
    cdsCorpactListTN_CUMDATE: TDateField;
    cdsCorpactListNGRG_EXDATE: TDateField;
    cdsCorpactListTN_EXDATE: TDateField;
    cdsCorpactListRECDATE: TDateField;
    cdsCorpactListDISTDATE: TDateField;
    cdsCorpactListPAYDATE: TDateField;
    cdsCorpactListRI_STR_LISTDATE: TDateField;
    cdsCorpactListRI_END_LISDATE: TDateField;
    cdsCorpactListRI_STR_TRDDATE: TDateField;
    cdsCorpactListRI_END_TRDDATE: TDateField;
    cdsCorpactListRI_STR_EXERDATE: TDateField;
    cdsCorpactListRI_END_EXERDATE: TDateField;
    cdsCorpactListSTR_DISTDATE: TDateField;
    cdsCorpactListEND_DISTDATE: TDateField;
    cdsCorpactListRI_LASTPAY_DATE: TDateField;
    cdsCorpactListALLOTMENT_DATE: TDateField;
    cdsCorpactListREFUND_DATE: TDateField;
    cdsCorpactListRGNG_WR_STR_TRDDATE: TDateField;
    cdsCorpactListTN_WR_STR_TRDDATE: TDateField;
    cdsCorpactListWR_STR_EXERDATE: TDateField;
    cdsCorpactListWR_END_EXERDATE: TDateField;
    cdsCorpactListWR_EXPDATE: TDateField;
    cdsCorpactListCA_DESC: TStringField;
    cdsCorpActCASHDIV_RCV: TDateField;
    gvwMasterNGRG_CUMDATE: TcxGridDBBandedColumn;
    gvwMasterTN_CUMDATE: TcxGridDBBandedColumn;
    gvwMasterNGRG_EXDATE: TcxGridDBBandedColumn;
    gvwMasterTN_EXDATE: TcxGridDBBandedColumn;
    gvwMasterRECDATE: TcxGridDBBandedColumn;
    gvwMasterDISTDATE: TcxGridDBBandedColumn;
    gvwMasterPAYDATE: TcxGridDBBandedColumn;
    cdsCorpactListSTAT: TStringField;
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
    gvwMasterSTAT: TcxGridDBBandedColumn;
    cdsCorpActRI_EXERCISES: TStringField;
    cdsCorpActRI_EXPIRED: TStringField;
    cdsCorpactListCASHDIV_RCV: TDateField;
    cdsCorpactListRI_EXERCISES: TStringField;
    cdsCorpactListRI_EXPIRED: TStringField;
    cdsCorpactListRI_EXER_ADM_FEE: TFloatField;
    cdsCorpactListRI_ISINCODE: TStringField;
    cdsCorpactListWR_ISINCODE: TStringField;
    cdsCorpactListWR_STR_TRDDATE: TDateField;
    cdsCorpactListBASE_RI_QTY: TFloatField;
    cdsCorpactListGET_RI_QTY: TFloatField;
    cdsCorpactListRI_PRICE: TFloatField;
    cdsCorpactListBASE_WR_QTY: TFloatField;
    cdsCorpactListGET_WR_QTY: TFloatField;
    cdsCorpactListWR_PRICE: TFloatField;
    cdsCorpactListNEW_STOCKID: TIntegerField;
    cdsCorpactListNEW_STOCKCODE: TStringField;
    cdsCorpactListNEW_STOCKNAME: TStringField;
    cdsCorpactListNEW_ISINCODE: TStringField;
    cdsCorpactListRIGTHNAME: TStringField;
    cdsCorpactListWARRANTNAME: TStringField;
    cdsCorpactListLASTCOUPON_DATE: TDateField;
    cdsCorpactListNEXTCOUPON_DATE: TDateField;
    cdsCorpactListMATURITY_DATE: TDateField;
    cdsCorpactListCOUPONDAYS: TIntegerField;
    cdsCorpactListINTEREST_RATE: TFloatField;
    cdsCorpactListVOUCHERDATE: TDateTimeField;
    cdsCorpactListCCYCODE: TStringField;
    cdsCorpactListSETTLE_CCYCODE: TStringField;
    cdsCorpactListEXRATE: TFloatField;
    cdsCorpactListBROKER_ACCBANKID: TLargeintField;
    cdsCorpactListWR_END_TRDDATE: TDateField;
    cdsCorpactListFIRST_HANDOVER_DATE: TDateField;
    cdsCorpactListSCND_HANDOVER_DATE: TDateField;
    cdsCorpactListCLOSING_PRICE: TFloatField;
    cdsCorpactListCOMPLAIN_DATE: TDateField;
    cdsCorpactListEFFECTIVE_DATE: TDateField;
    cdsCorpactListRUPSLB_DATE: TDateField;
    cdsCorpactListSTR_IMPL_DATE: TDateField;
    cdsCorpactListEND_IMPL_DATE: TDateField;
    cdsCorpactListSTR_TRADE_DATE: TDateField;
    cdsCorpactListEND_TRADE_DATE: TDateField;
    cdsCorpactListMERGE_TRADE_DATE: TDateField;
    cdsCorpactListSTR_TRADE_MERGE: TDateField;
    cdsCorpactListRECMERGE: TDateField;
    cdsCorpactListSHAREHOLDER_DATE: TDateField;
    cdsCorpactListREPORT_DATE: TDateField;
    cdsCorpactListSTR_NEW_TRADE: TDateField;
    cdsCorpactListEND_OLD_TRADE: TDateField;
    cdsCorpactListANNO_DATE: TDateField;
    cdsCorpactListSTR_RESCISSION_DATE: TDateField;
    cdsCorpactListEND_RESCISSION_DATE: TDateField;
    cdsCorpactListROUNDSTOCK: TIntegerField;
    cdsCorpactListMODDA: TDateTimeField;
    cdsCorpactListMODUI: TStringField;
    cdsCorpactListAPPDA: TDateTimeField;
    cdsCorpactListAPPUI: TStringField;
    cdsCorpactListUNDER4Y: TIntegerField;
    cdsCorpactListUNDER4YDA: TDateTimeField;
    cdsCorpactListNOTES4Y: TStringField;
    cdsCorpactListISDEL: TIntegerField;
    cdsCorpactListID: TLargeintField;
    gvwMasterCASHDIV_RCV: TcxGridDBBandedColumn;
    gvwMasterRI_EXERCISES: TcxGridDBBandedColumn;
    gvwMasterRI_EXPIRED: TcxGridDBBandedColumn;
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
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actExecuteByFinance: TNAction;
    SubMenuExercise: TMenuItem;
    actCashHandOver: TNAction;
    actProcessFinance: TNAction;
    actProcessStock: TNAction;
    actExerciseMonitoring: TNAction;
    ExerciseMonitoring1: TMenuItem;
    cdsCorpActRI_STOCK_DIST: TStringField;
    actCorpactDistributionProcess: TNAction;
    N7: TMenuItem;
    cdsRecCount: TNClientDataset;
    cdsRecCountRECCOUNT: TIntegerField;
    cdsCorpactListCASHDIV_RECVSTAT: TStringField;
    cdsCorpactListENTITLEMENT: TStringField;
    cdsCorpactListEXERCISES_CLOSE: TStringField;
    cdsCorpactListCASH_STAT: TStringField;
    cdsCorpactListSTOCK_STAT: TStringField;
    cdsCorpactListRI_STOCK_DIST: TStringField;
    cdsCorpactListCASH_DVDPAY: TDateField;
    cdsCorpactListLAST_OLD_NOMDATE: TDateField;
    cdsCorpactListST_TRD_NOMDATE: TDateField;
    gvwMasterCASHDIV_RECVSTAT: TcxGridDBBandedColumn;
    gvwMasterENTITLEMENT: TcxGridDBBandedColumn;
    gvwMasterEXERCISES_CLOSE: TcxGridDBBandedColumn;
    gvwMasterCASH_STAT: TcxGridDBBandedColumn;
    gvwMasterSTOCK_STAT: TcxGridDBBandedColumn;
    gvwMasterRI_STOCK_DIST: TcxGridDBBandedColumn;
    gvwMasterCASH_DVDPAY: TcxGridDBBandedColumn;
    gvwMasterLAST_OLD_NOMDATE: TcxGridDBBandedColumn;
    gvwMasterST_TRD_NOMDATE: TcxGridDBBandedColumn;
    cdsCorpActCASHDIV_RECVSTAT: TStringField;
    cdsCorpActENTITLEMENT: TStringField;
    cdsCorpActEXERCISES_CLOSE: TStringField;
    cdsCorpActCASH_STAT: TStringField;
    cdsCorpActSTOCK_STAT: TStringField;
    cdsCorpActCASH_DVDPAY: TDateField;
    cdsCorpActLAST_OLD_NOMDATE: TDateField;
    cdsCorpActST_TRD_NOMDATE: TDateField;
    actEntitlementMonitoring: TNAction;
    EntitlementMonitoring1: TMenuItem;
    cdsCorpActCANCEL_EXERPAID: TStringField;
    cdsCorpActFOREX_CASH_RATIO: TFloatField;
    cdsCorpActISSUERID: TLargeintField;
    cdsCorpActACCNO: TStringField;
    cdsCorpActACCID: TIntegerField;
    actSplitReverseProcess: TNAction;
    actExerciseWarrantAllocation: TNAction;
    actExerciseWarrantMonitoring: TNAction;
    ExerciseWarrantMonitoring1: TMenuItem;
    Cancel1: TMenuItem;
    actCancelProcess: TNAction;
    actCorpactProcess: TNAction;
    CoporateActionProcess1: TMenuItem;
    cdsCorpactListGENERATE_ENT: TStringField;
    chkAll: TcxBarEditItem;
    edCAType: TcxBarEditItem;
    chkOpen: TcxBarEditItem;
    chkClose: TcxBarEditItem;
    chkExercise: TcxBarEditItem;
    chkExpired: TcxBarEditItem;
    chkReversed: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    actReverseProcess: TNAction;
    ReverseProcess1: TMenuItem;
    cdsCorpActGENERATE_ENT: TStringField;
    cdsCorpactListSTOCKTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsCorpactListLEDGERTRANSID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsCorpActNewRecord(DataSet: TDataSet);
    procedure actRefreshExecute(Sender: TObject);
    procedure actEntitlementExecute(Sender: TObject);
    procedure gvwMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actNewHMETDExecute(Sender: TObject);
    procedure actCDevidenExecute(Sender: TObject);
    procedure actSDevidenExecute(Sender: TObject);
    procedure actStockMixExecute(Sender: TObject);
    procedure actSBonusExecute(Sender: TObject);
    procedure actSSplitExecute(Sender: TObject);
    procedure actSReverseExecute(Sender: TObject);
    procedure actSMergeExecute(Sender: TObject);
    procedure actCPaymentExecute(Sender: TObject);
    procedure actExerciseExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actExecuteByFinanceExecute(Sender: TObject);
    procedure actCashHandOverExecute(Sender: TObject);
    procedure actProcessFinanceExecute(Sender: TObject);
    procedure actProcessStockExecute(Sender: TObject);
    procedure actExerciseMonitoringExecute(Sender: TObject);
    procedure actExerciseMonitoringUpdate(Sender: TObject);
    procedure actCorpactDistributionProcessExecute(Sender: TObject);
    procedure actCorpactDistributionProcessUpdate(Sender: TObject);
    procedure cmbFilteredByPropertiesCloseUp(Sender: TObject);
    procedure actProcessFinanceUpdate(Sender: TObject);
    procedure actProcessStockUpdate(Sender: TObject);
    procedure actEntitlementMonitoringExecute(Sender: TObject);
    procedure actEntitlementUpdate(Sender: TObject);
    procedure cdsCorpActExerAfterPost(DataSet: TDataSet);
    procedure cdsCorpActExerAfterDelete(DataSet: TDataSet);
    procedure cdsCorpActSETTLE_CCYCODEChange(Sender: TField);
    procedure cdsCorpActSTOCKIDChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure actCDevidenUpdate(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actSplitReverseProcessExecute(Sender: TObject);
    procedure actSplitReverseProcessUpdate(Sender: TObject);
    procedure actExerciseWarrantAllocationExecute(Sender: TObject);
    procedure actExerciseWarrantMonitoringExecute(Sender: TObject);
    procedure actExerciseWarrantAllocationUpdate(Sender: TObject);
    procedure actExerciseWarrantMonitoringUpdate(Sender: TObject);
    procedure actCancelProcessExecute(Sender: TObject);
    procedure actCancelProcessUpdate(Sender: TObject);
    procedure actCorpactProcessExecute(Sender: TObject);
    procedure cdsCorpActRIGHTIDChange(Sender: TField);
    procedure cdsCorpActWARRANTIDChange(Sender: TField);
    procedure chkAllPropertiesEditValueChanged(Sender: TObject);
    procedure actReverseProcessExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    FCAType: string;
    FSysDate: TDateTime;

    procedure RefreshData;
  public
    property CAType: string read FCAType write FCAType;
  end;

var
  frmCorpActList: TfrmCorpActList;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpact, DataLookup, FormCorpactHMETD,
  FormCorpactCashDividen, FormCorpactStockDividen, FormCorpactMix,
  FormCorpactMerge, FormCorpactReverse, FormCorpactStockSplit,
  FormCorpactStockBonus, FormCorpactEntList, FormCorpactEntitlement,
  FormCorpactExercise, FormCorpactExecuteExercise, FormCorpactCashHandOver,
  FormCorpactExerciseMonitoring, FormCorpactEntitlementMonitoring,
  FormCorpactExerciseWarrant, FormCorpactWarrantMonitoring, FormLedgerDetail,
  FormViewTransaction;

procedure TfrmCorpActList.actCancelProcessExecute(Sender: TObject);
var
  sMsg: string;
  sCon: Boolean;
begin
  inherited;
  if MessageQuestion('Cancel data ?') then
  begin
    if cdsCorpactListSTAT.AsString = 'C' then
      MessageError('Can''t Cancel Closed Corporate Action')
    else if cdsCorpactListSTAT.AsString = 'F' then
      MessageError('Can''t Cancel Canceled Corporate Action')
    else if cdsCorpactListSTAT.AsString = 'R' then
      MessageError('Can''t Cancel Reversed Corporate Action')
    else if cdsCorpactListSTAT.AsString = 'O' then
    begin
      if (cdsCorpactListCAID.AsString = '6') or (cdsCorpactListCAID.AsString = '7') then
      begin
        if cdsCorpactListLAST_OLD_NOMDATE.AsDateTime = FSysDate then
          sCon := True
        else
        begin
          sCon := False;
          MessageError('Can''t Cancel Different Last Nominal Date With System Date');
        end;
      end
      else
        sCon := True;

      if sCon then
      begin
        dmGlobal.RemoteServer.CorpactCancel(cdsCorpactListCAID.AsInteger, sMsg);
        MessageDlg(sMsg, mtInformation, [mbOk], 0);
        cdsCorpactList.Refresh;
      end;
    end
    else
    if cdsCorpactListSTAT.AsString = 'X' then
      MessageError('Can''t Cancel Exercised Corporate Action')
  end;
end;

procedure TfrmCorpActList.actCancelProcessUpdate(Sender: TObject);
begin
  inherited;
 TAction(Sender).Enabled := (cdsCorpActListSTAT.AsString = 'O') or (cdsCorpActListSTAT.AsString = 'X')
end;

procedure TfrmCorpActList.actCashHandOverExecute(Sender: TObject);
begin
  inherited;
  CAType := '13';
  actEdit.Execute;
end;

procedure TfrmCorpActList.actCDevidenExecute(Sender: TObject);
begin
  inherited;
  CAType := '2';
  actNew.Execute;
end;

procedure TfrmCorpActList.actCDevidenUpdate(Sender: TObject);
begin
  inherited;
//  TAction(Sender).Enabled := (cdsCorpactListCATYPE.AsString <> '2')
//    and (cdsCorpactListDISTDATE.AsDateTime = FSysDate);
end;

procedure TfrmCorpActList.actCorpactDistributionProcessExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  try
    if cdsCorpactListDISTDATE.AsDateTime = dmGlobal.RemoteServer.GetTransDate then
    begin
      if MessageDlg('Process Distribution Corporate Action ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dmGlobal.RemoteServer.CorpactDistributionProcess(cdsCorpactListCAID.AsLargeInt, sMsg);
        MessageDlg(sMsg, mtInformation, [mbOk], 0);
      end;
    end
    else
      MessageDlg('Distribution date is out of date', mtInformation, [mbOk], 0);
  except

  end;
  cdsCorpactList.Refresh;
end;

procedure TfrmCorpActList.actCorpactDistributionProcessUpdate(
  Sender: TObject);
begin
  inherited;
//  TAction(Sender).Enabled := ((cdsCorpactListCATYPE.AsString <> '2') or (cdsCorpactListCATYPE.AsString <> '4')) and (cdsCorpactListDISTDATE.AsDateTime = FSysDate);
end;

procedure TfrmCorpActList.actCorpactProcessExecute(Sender: TObject);
var
  sMsg: string;
  iCaType, iCaID: integer;
  bCon: boolean;
begin
  inherited;
  iCaType := cdsCorpactListCATYPE.AsInteger;
  iCaID   := cdsCorpactListCAID.AsInteger;
  bCon    := False;

  if (iCaType = 1) and
    (cdsCorpactListDISTDATE.AsDateTime = FSysDate) then
  begin
    bCon := True;
  end
  else if (iCaType = 2) and (cdsCorpactListPAYDATE.AsDateTime = FSysDate) then
  begin
    bCon := True;
  end
  else if ((iCaType = 3) or (iCaType = 4) or (iCaType = 5) or (iCaType = 6) or (iCaType = 7) or (iCaType = 8))
    and (cdsCorpactListDISTDATE.AsDateTime = FSysDate) then
  begin
    bCon := True;
  end;

  if bCon then
  begin
    dmGlobal.RemoteServer.CorpactEntitlementPosting(iCaID, dmGlobal.UserID, sMsg);
    MessageDlg(sMsg, mtConfirmation, [mbOk], 0);
    cdsCorpactList.Refresh;
  end
  else
  begin
    MessageDlg('Can not process Corporate Action Process !', mtError, [mbOk], 0);
  end;
end;

procedure TfrmCorpActList.actCPaymentExecute(Sender: TObject);
begin
  inherited;
  CAType := '9';
  actNew.Execute;
end;

procedure TfrmCorpActList.actEditUpdate(Sender: TObject);
begin
  inherited;
//  actEdit.Enabled := cdsCorpactListSTAT.AsString = 'O';
end;

procedure TfrmCorpActList.actEntitlementExecute(Sender: TObject);
begin
  CAType := '10';
  actEdit.Execute;
end;

procedure TfrmCorpActList.actEntitlementMonitoringExecute(Sender: TObject);
begin
  inherited;
  FCAType := '15';
  actEdit.Execute;
end;

procedure TfrmCorpActList.actEntitlementUpdate(Sender: TObject);
begin
  inherited;
//  TAction(Sender).Enabled := (cdsCorpactListSTAT.AsString <> 'S') and (cdsCorpactListRI_EXERCISES.AsString <> '1');
end;

procedure TfrmCorpActList.actExecuteByFinanceExecute(Sender: TObject);
begin
  inherited;
  CAType := '12';
  actEdit.Execute;
end;

procedure TfrmCorpActList.actExerciseExecute(Sender: TObject);
begin
  inherited;
  if cdsCorpactListSTAT.AsString = 'X' then
  begin
    CAType := '11';
    actEdit.Execute;
  end
  else
    MessageError('Can not proceed, status exercise process only');
end;

procedure TfrmCorpActList.actExerciseMonitoringExecute(Sender: TObject);
begin
  inherited;
  CAType := '14';
  actEdit.Execute;
end;

procedure TfrmCorpActList.actExerciseMonitoringUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not cdsCorpactList.IsEmpty) and (cdsCorpactListCATYPE.AsString = '1');
//    and (cdsCorpactListRI_END_EXERDATE.AsDateTime > FSysDate);
//    (cdsCorpactListSTOCK_STAT.AsString = 'D') and
//    (cdsCorpactListSTAT.AsString <> 'S');
end;

procedure TfrmCorpActList.actExerciseWarrantAllocationExecute(Sender: TObject);
begin
  inherited;
  CAType := '16';
  actEdit.Execute;
end;

procedure TfrmCorpActList.actExerciseWarrantAllocationUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not cdsCorpactList.IsEmpty) and (cdsCorpactListCATYPE.AsString = '1');
end;

procedure TfrmCorpActList.actExerciseWarrantMonitoringExecute(Sender: TObject);
begin
  inherited;
  CAType := '17';
  actEdit.Execute;
end;

procedure TfrmCorpActList.actExerciseWarrantMonitoringUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (not cdsCorpactList.IsEmpty) and (cdsCorpactListCATYPE.AsString = '1');
end;

procedure TfrmCorpActList.actNewHMETDExecute(Sender: TObject);
begin
  inherited;
  CAType := '1';
  actNew.Execute;
end;

procedure TfrmCorpActList.actProcessFinanceExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  if(messagedlg('Process Cash Dividen Corporate Action?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
  begin
    if cdsCorpactListCASH_STAT.AsString = 'F' then
      MessageDlg('It''s has been proceed...', mtInformation, [mbOk], 0)
    else
    begin
      dmGlobal.RemoteServer.CashCorpactProcess(dsBrowseMaster.DataSet.FieldByName('CAID').AsLargeInt, sMessage);
      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      cdsCorpactList.Refresh;
    end;
  end;
end;

procedure TfrmCorpActList.actProcessFinanceUpdate(Sender: TObject);
begin
  inherited;
//  TAction(Sender).Enabled := ((cdsCorpactListCATYPE.AsString = '2') or (cdsCorpactListCATYPE.AsString = '4')) and
//                             (FSysDate = cdsCorpactListPAYDATE.AsDateTime);
//
//  actProcessFinance.Caption := 'Cash Dividen Process';
end;

procedure TfrmCorpActList.actProcessStockExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  if(messagedlg('Process Split / Reverse Stock Corporate Action?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
  begin
    dmGlobal.RemoteServer.StockCorpactProcess(dsBrowseMaster.DataSet.FieldByName('CAID').AsLargeInt, sMessage);
    MessageDlg(sMessage, mtInformation, [mbOk], 0);

    cdsCorpactList.Refresh;
  end;
end;

procedure TfrmCorpActList.actProcessStockUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := ((cdsCorpactListCATYPE.AsString = '6') or (cdsCorpactListCATYPE.AsString = '7'))
    and (cdsCorpactListSTAT.AsString <> 'S');

//  cdsRecCount.Close;
//  cdsRecCount.Params[0].AsInteger := cdsCorpactListCAID.AsInteger;
//  cdsRecCount.Open;
//
//  if (cdsRecCountRECCOUNT.AsInteger = 0) then
//    TAction(Sender).Enabled := cdsCorpactListSTAT.AsString <> 'S'
//  else
//    TAction(Sender).Enabled := False;
end;

procedure TfrmCorpActList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  CAType := edCAType.EditValue;
  RefreshData;
end;

procedure TfrmCorpActList.actReverseProcessExecute(Sender: TObject);
var
  sMsg, sRejectMsg: string;
  sCon : Boolean;
begin
  inherited;
  if MessageQuestion('Reverse data ?') then
  begin
    if cdsCorpactListSTAT.AsString = 'O' then
      MessageError('Can''t Reverse opened corporate action')
    else if cdsCorpactListSTAT.AsString = 'F' then
      MessageError('Can''t cancel canceled corporate action')
    else if cdsCorpactListSTAT.AsString = 'R' then
      MessageError('Can''t cancel reversed corporate action')
    else if (cdsCorpactListSTAT.AsString = 'X') or (cdsCorpactListSTAT.AsString = 'C') then
    begin
       if (cdsCorpactListCAID.AsString = '6') or (cdsCorpactListCAID.AsString = '7') then
      begin
        sCon := False;
        MessageError('Can''t Reverse Distributed Corporate Action');
      end
      else
        sCon := True;

      if sCon then
      begin
        repeat
          sRejectMsg := InputBox('Reversed Reason', 'Reversed Reason', '');
        until sRejectMsg <> '';

        dmGlobal.RemoteServer.CorpactReversed(cdsCorpactListCAID.AsInteger, sRejectMsg, sMsg);
        MessageDlg(sMsg, mtInformation, [mbOk], 0);

        cdsCorpactList.Refresh;
      end;
    end;
  end;
end;

procedure TfrmCorpActList.actSBonusExecute(Sender: TObject);
begin
  inherited;
  CAType := '5';
  actNew.Execute;
end;

procedure TfrmCorpActList.actSDevidenExecute(Sender: TObject);
begin
  inherited;
  CAType := '3';
  actNew.Execute;
end;

procedure TfrmCorpActList.actSMergeExecute(Sender: TObject);
begin
  inherited;
  CAType := '8';
  actNew.Execute;
end;

procedure TfrmCorpActList.actSReverseExecute(Sender: TObject);
begin
  inherited;
  CAType := '7';
  actNew.Execute;
end;

procedure TfrmCorpActList.actSSplitExecute(Sender: TObject);
begin
  inherited;
  CAType := '6';
  actNew.Execute;
end;

procedure TfrmCorpActList.actStockMixExecute(Sender: TObject);
begin
  inherited;
  CAType := '4';
  actNew.Execute;
end;

procedure TfrmCorpActList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := FSysDate;
    iLedgerTransID := cdsCorpactListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := cdsCorpactListSTOCKTRANSID.AsLargeInt;
    iFundTransID   := -1;

    oForm := TfrmViewTransaction.Create(nil);

    TfrmViewTransaction(oForm).conDate       := dtConDate;
    TfrmViewTransaction(oForm).ledgerTransID := iLedgerTransID;
    TfrmViewTransaction(oForm).stockTransID  := iStockTransID;
    TfrmViewTransaction(oForm).fundTransID   := iFundTransID;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmCorpActList.cdsCorpActExerAfterDelete(DataSet: TDataSet);
begin
  inherited;
  cdsCorpAct.ApplyUpdates(-1);
end;

procedure TfrmCorpActList.cdsCorpActExerAfterPost(DataSet: TDataSet);
begin
  inherited;
  cdsCorpAct.ApplyUpdates(-1);
end;

procedure TfrmCorpActList.cdsCorpActNewRecord(DataSet: TDataSet);
begin
  inherited;
  if edCAType.EditValue = 'All' then
    cdsCorpActCATYPE.AsString := '1'
  else
    cdsCorpActCATYPE.AsString := CAType;

  cdsCorpActSTOCK_STAT.AsString       := 'O';
  cdsCorpActCASHDIV_RECVSTAT.AsString := 'N';
  cdsCorpActCASH_STAT.AsString        := 'O';
  cdsCorpActCAID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CORPACT_ANNO');
  cdsCorpActSTAT.AsString := 'O';
  cdsCorpActCANO.AsString := dmGlobal.RemoteServer.GetVoucherNo(dmGlobal.RemoteServer.GetTransDate, 'CA', 'TBL_B_CORPACT');
end;

procedure TfrmCorpActList.cdsCorpActRIGHTIDChange(Sender: TField);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID', cdsCorpActRIGHTID.AsInteger, []) then
  begin
    if not ContainsStr(dmGlobal.IntDataLookup.cdsLuInstrumentLOCALCODE.AsString, cdsCorpActSTOCKCODE.AsString) then
    begin
      MessageError('Invalid Right Code !');

      cdsCorpActRIGHTID.AsInteger    := -1;
      cdsCorpActRIGHTCODE.AsString   := '';
      cdsCorpActRIGTHNAME.AsString   := '';
      cdsCorpActRI_ISINCODE.AsString := '';
    end
    else
    begin
      cdsCorpActRIGHTCODE.AsString   := dmGlobal.IntDataLookup.cdsLuInstrumentLOCALCODE.AsString;
      cdsCorpActRI_ISINCODE.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentISINCODE.AsString;
      cdsCorpActRIGTHNAME.AsString   := dmGlobal.IntDataLookup.cdsLuInstrumentSHORTNAME.AsString;
    end;
  end;
end;

procedure TfrmCorpActList.cdsCorpActSETTLE_CCYCODEChange(Sender: TField);
begin
  inherited;
  cdsCorpActEXRATE.AsFloat := dmGlobal.RemoteServer.GetCCYRate(dmGlobal.RemoteServer.GetTransDate, cdsCorpActSETTLE_CCYCODE.AsString);
end;

procedure TfrmCorpActList.cdsCorpActSTOCKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrumentStock.Locate('INSTRUMENT_ID', cdsCorpActSTOCKID.AsInteger, []) then
    begin
      cdsCorpActSTOCKCODE.AsString      := cdsLuInstrumentStockLOCALCODE.AsString;
      cdsCorpActSTOCKNAME.AsString      := cdsLuInstrumentStockSHORTNAME.AsString;
      cdsCorpActISINCODE.AsString       := cdsLuInstrumentstockisiNCODE.AsString;
      cdsCorpActCCYCODE.AsString        := cdsLuInstrumentStockCCY.AsString;
      cdsCorpActSETTLE_CCYCODE.AsString := cdsLuInstrumentStockCCY.AsString;
      cdsCorpActISSUERID.AsInteger      := cdsLuInstrumentStockISSUERID.AsInteger;
    end;
  end;
end;

procedure TfrmCorpActList.cdsCorpActWARRANTIDChange(Sender: TField);
begin
  inherited;
  if dmGlobal.IntDataLookup.cdsLuInstrument.Locate('INSTRUMENT_ID', cdsCorpActWARRANTID.AsInteger, []) then
  begin
    if not ContainsStr(dmGlobal.IntDataLookup.cdsLuInstrumentLOCALCODE.AsString, cdsCorpActStockCode.AsString) then
    begin
      MessageError('Invalid Warrant Code !');

      cdsCorpActWARRANTID.AsInteger  := -1;
      cdsCorpActWAARANTCODE.AsString := '';
      cdsCorpActWARRANTNAME.AsString := '';
      cdsCorpActWR_ISINCODE.AsString := '';
    end
    else
    begin
      cdsCorpActWAARANTCODE.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentLOCALCODE.AsString;
      cdsCorpActWR_ISINCODE.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentISINCODE.AsString;
      cdsCorpActWARRANTNAME.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentSHORTNAME.AsString;
    end;
  end;
end;

procedure TfrmCorpActList.chkAllPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if chkAll.editValue = 1 then
    edCAType.Enabled := False
  else
    edCAType.Enabled := True;
end;

procedure TfrmCorpActList.cmbFilteredByPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmCorpActList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
var
  iCAType: integer;
begin
  try
    dmGlobal.IntDataLookup.cdsLuInstrumentAll.Close;
    dmGlobal.IntDataLookup.cdsLuInstrumentAll.Open;

    dmGlobal.IntDataLookup.cdsLuInstrument.Close;
    dmGlobal.IntDataLookup.cdsLuInstrument.Open;

    dmGlobal.IntDataLookup.cdsLuInstrumentStock.Close;
    dmGlobal.IntDataLookup.cdsLuInstrumentStock.Open;

    dmGlobal.IntDataLookup.cdsLuInstrumentRight.Close;
    dmGlobal.IntDataLookup.cdsLuInstrumentRight.Open;

    dmGlobal.IntDataLookup.cdsLuInstrumentWarrant.Close;
    dmGlobal.IntDataLookup.cdsLuInstrumentWarrant.Open;

    dmGlobal.IntDataLookup.cdsLuCcy.Close;
    dmGlobal.IntDataLookup.cdsLuCcy.Open;

    if (CAType = '%') or (CAType = '') then
    begin
      MessageDlg('Please choose one Corporate Action Type', mtInformation, [mbOK], 0);
      exit;
    end;

    iCAType := StrToInt(CAType);

//    if (cdsCorpactListSTAT.AsString = 'S') and ((iCaType <> 10) and (iCAType <> 11)) then
//    begin
//      MessageDlg('Can not be edited, status has been closed', mtInformation, [mbOK], 0);
//      exit;
//    end;

    case iCAType of
      1 : AFormClass := TfrmCorpActHMETD;
      2 : AFormClass := TfrmCorpActCashDividen;
      3 : AFormClass := TfrmCorpActStockDividen;
      4 : AFormClass := TfrmCorpActMix;
      5 : AFormClass := TfrmCorpActStockBonus;
      6 : AFormClass := TfrmCorpActStockSplit;
      7 : AFormClass := TfrmCorpactReverse;
      8 : AFormClass := TfrmCorpActMerge;
      10: AFormClass := TfrmCorpActEntitlement;
      11: AFormClass := TfrmCorpActExercise;
      12: AFormClass := TfrmCorpActExecuteExercise;
      13: AFormClass := TfrmCorpActCashHandOver;
      14: AFormClass := TfrmCorpActExerciseMonitoring;
      15: AFormClass := TfrmCorpActEntitlementMonitoring;
      16: AFormClass := TfrmCorpActWarrantExercise;
      17: AFormClass := TfrmCorpActWarrantMonitoring;
    end;

    inherited;
  except

  end;
end;

procedure TfrmCorpActList.FormCreate(Sender: TObject);
begin
  inherited;
  edCAType.EditValue := '1';

  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Close;
  dmGlobal.IntDataLookup.cdsLuInstrumentAll.Open;

  dmGlobal.IntDataLookup.cdsLuInstrument.Close;
  dmGlobal.IntDataLookup.cdsLuInstrument.Open;

  dmGlobal.IntDataLookup.cdsLuInstrumentStock.Close;
  dmGlobal.IntDataLookup.cdsLuInstrumentStock.Open;

  dmGlobal.IntDataLookup.cdsLuCcy.Close;
  dmGlobal.IntDataLookup.cdsLuCcy.Open;

  cdsCorpactList.Close;
  cdsCorpactList.Params[0].AsString := '%';
  cdsCorpactList.Open;

  dmGlobal.IntDataLookup.cdsLuInstrumentRight.Close;
  dmGlobal.IntDataLookup.cdsLuInstrumentRight.Open;

  dmGlobal.IntDataLookup.cdsLuInstrumentWarrant.Close;
  dmGlobal.IntDataLookup.cdsLuInstrumentWarrant.Open;

  dmGlobal.IntDataLookup.cdsLuCcy.Close;
  dmGlobal.IntDataLookup.cdsLuCcy.Open;

  chkAll.EditValue      := 1;
  chkOpen.EditValue     := 'O';
  chkClose.EditValue    := '-';
  chkExercise.EditValue := '-';
  chkExpired.EditValue  := '-';
  chkCanceled.EditValue := '-';
  chkReversed.EditValue := '-';
end;

procedure TfrmCorpActList.FormShow(Sender: TObject);
begin
  inherited;
  FSysDate := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmCorpActList.gvwMasterCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  CAType := cdsCorpactListCATYPE.AsString;
end;

procedure TfrmCorpActList.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[gvwMasterCATYPE.Index] = '6') or (AViewInfo.GridRecord.Values[gvwMasterCATYPE.Index] = '7') then
  begin
    if AViewInfo.GridRecord.Values[gvwMasterLAST_OLD_NOMDATE.Index] = FSysDate then
      ACanvas.Font.Color := clBlue
  end;

  if AViewInfo.GridRecord.Values[gvwMasterRECDATE.Index] = FSysDate then
    ACanvas.Font.Color := clRed
  else if AViewInfo.GridRecord.Values[gvwMasterPAYDATE.Index] = FSysDate then
    ACanvas.Font.Color := clGreen
  else if AViewInfo.GridRecord.Values[gvwMasterDISTDATE.Index] = FSysDate then
    ACanvas.Font.Color := clGreen;
end;

procedure TfrmCorpActList.actSplitReverseProcessExecute(Sender: TObject);
var
  sMsg : string;
begin
  inherited;
  dmGlobal.RemoteServer.SplitReverseProcess(cdsCorpactListCAID.AsLargeInt, sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmCorpActList.actSplitReverseProcessUpdate(Sender: TObject);
begin
  inherited;
//  TNAction(Sender).Enabled := ((cdsCorpactListCATYPE.AsString = '6') or (cdsCorpactListCATYPE.AsString = '7')) and
//                              (cdsCorpactListSTAT.AsString <> 'C');
end;

procedure TfrmCorpActList.RefreshData;
var
  dBeginDate,
  dTransDate : TDateTime;
  wDate, wMonth, wYear: Word;
begin
  if chkAll.EditValue = 1 then
    CAType := '%'
  else
    CAType := edCAType.EditValue;

  cdsCorpactList.Close;
  cdsCorpactList.Params[0].AsString := CAType;
  cdsCorpactList.Params[1].AsString := chkOpen.EditValue;
  cdsCorpactList.Params[2].AsString := chkClose.EditValue;
  cdsCorpactList.Params[3].AsString := chkExercise.EditValue;
  cdsCorpactList.Params[4].AsString := chkExpired.EditValue;
  cdsCorpactList.Params[5].AsString := chkCanceled.EditValue;
  cdsCorpactList.Params[6].AsString := chkReversed.EditValue;
  cdsCorpactList.Open;

end;

Initialization
  RegisterClass(TfrmCorpActList);

end.
