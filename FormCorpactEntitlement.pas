unit FormCorpactEntitlement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxLabel, cxDBLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Datasnap.DBClient, NClientDataset,
  Vcl.ActnList, NDatasetAction, frxClass, frxServerClient, NReportClient,
  XLSSheetData5, XLSReadWriteII5, cxGridDBTableView, cxGridExportLink, Winapi.ShellAPI,
  cxCheckBox, cxBlobEdit, dxLayoutLookAndFeels, Vcl.FileCtrl, System.Actions,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCorpActEntitlement = class(TfrmEditorData)
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    txtCorpActType: TcxLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsCorpActEnt: TDataSource;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    PaymentDate: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    DistributionDate: TdxLayoutItem;
    btnGenerateEnt: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsCorpActEnt: TNClientDataset;
    cdsCorpActEntCAID: TLargeintField;
    cdsCorpActEntACCID: TLargeintField;
    cdsCorpActEntACCNO: TStringField;
    cdsCorpActEntACCNAME: TStringField;
    cdsCorpActEntCUSTODYNO: TStringField;
    cdsCorpActEntSTOCKID: TIntegerField;
    cdsCorpActEntSTOCKCODE: TStringField;
    cdsCorpActEntACCTYPE: TStringField;
    cdsCorpActEntAV_QTY: TFloatField;
    cdsCorpActEntCA_QTY: TFloatField;
    cdsCorpActEntCA_AMT: TFloatField;
    cdsCorpActEntTAXRATE: TFloatField;
    cdsCorpActEntTAXAMT: TFloatField;
    cdsCorpActEntCA_NETAMT: TFloatField;
    cdsCorpActEntCDIV_PAYDATE: TDateField;
    cdsCorpActEntSTAT: TStringField;
    cdsCorpActEntDIV_PAID: TStringField;
    cdsCorpActEntMODDA: TDateTimeField;
    cdsCorpActEntMODUI: TStringField;
    cdsCorpActEntAPPDA: TDateTimeField;
    cdsCorpActEntAPPUI: TStringField;
    cdsCorpActEntUNDER4Y: TIntegerField;
    cdsCorpActEntUNDER4YDA: TDateTimeField;
    cdsCorpActEntNOTES4Y: TStringField;
    cdsCorpActEntISDEL: TIntegerField;
    cdsCorpActEntID: TLargeintField;
    cdsCorpActEntAVGPRICE: TFloatField;
    cdsCorpActEntCA_PRICE: TFloatField;
    cdsCorpActEntPAID: TStringField;
    cdsCorpActEntPAID_DATE: TDateField;
    cdsCorpActEntCCYCODE: TStringField;
    pnlCorpActEnt: TPanel;
    cxGrid1: TcxGrid;
    gvwEntetlement: TcxGridDBBandedTableView;
    gvwEntetlementCAID: TcxGridDBBandedColumn;
    gvwEntetlementACCID: TcxGridDBBandedColumn;
    gvwEntetlementACCNO: TcxGridDBBandedColumn;
    gvwEntetlementACCNAME: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYNO: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKID: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKCODE: TcxGridDBBandedColumn;
    gvwEntetlementACCTYPE: TcxGridDBBandedColumn;
    gvwEntetlementAV_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_AMT: TcxGridDBBandedColumn;
    gvwEntetlementTAXRATE: TcxGridDBBandedColumn;
    gvwEntetlementTAXAMT: TcxGridDBBandedColumn;
    gvwEntetlementCA_NETAMT: TcxGridDBBandedColumn;
    gvwEntetlementCDIV_PAYDATE: TcxGridDBBandedColumn;
    gvwEntetlementSTAT: TcxGridDBBandedColumn;
    gvwEntetlementDIV_PAID: TcxGridDBBandedColumn;
    gvwEntetlementMODDA: TcxGridDBBandedColumn;
    gvwEntetlementMODUI: TcxGridDBBandedColumn;
    gvwEntetlementAPPDA: TcxGridDBBandedColumn;
    gvwEntetlementAPPUI: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4Y: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn;
    gvwEntetlementNOTES4Y: TcxGridDBBandedColumn;
    gvwEntetlementISDEL: TcxGridDBBandedColumn;
    gvwEntetlementID: TcxGridDBBandedColumn;
    gvwEntetlementAVGPRICE: TcxGridDBBandedColumn;
    gvwEntetlementCA_PRICE: TcxGridDBBandedColumn;
    gvwEntetlementPAID: TcxGridDBBandedColumn;
    gvwEntetlementPAID_DATE: TcxGridDBBandedColumn;
    gvwEntetlementCCYCODE: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    actSendEmail: TNAction;
    PopupMenu1: TPopupMenu;
    SendEmail1: TMenuItem;
    cdsCorpActEntAVAIL_EXER_QTY: TFloatField;
    actPrintPreview: TNAction;
    PrintPreview1: TMenuItem;
    Report: TNClientReportContainer;
    actGenerateToExcelFile: TNAction;
    cdsGenerateCorpActEnt: TNClientDataset;
    cdsGenerateCorpActEntCAID: TLargeintField;
    cdsGenerateCorpActEntSEQID: TLargeintField;
    cdsGenerateCorpActEntACCID: TLargeintField;
    cdsGenerateCorpActEntACCNO: TStringField;
    cdsGenerateCorpActEntACCNAME: TStringField;
    cdsGenerateCorpActEntCUSTODYNO: TStringField;
    cdsGenerateCorpActEntSTOCKID: TIntegerField;
    cdsGenerateCorpActEntSTOCKCODE: TStringField;
    cdsGenerateCorpActEntACCTYPE: TStringField;
    cdsGenerateCorpActEntAV_QTY: TFloatField;
    cdsGenerateCorpActEntCA_QTY: TFloatField;
    cdsGenerateCorpActEntCA_AMT: TFloatField;
    cdsGenerateCorpActEntTAXRATE: TFloatField;
    cdsGenerateCorpActEntTAXAMT: TFloatField;
    cdsGenerateCorpActEntCA_NETAMT: TFloatField;
    cdsGenerateCorpActEntCDIV_PAYDATE: TDateField;
    cdsGenerateCorpActEntSTAT: TStringField;
    cdsGenerateCorpActEntDIV_PAID: TStringField;
    cdsGenerateCorpActEntCASH_VOUCHERID: TLargeintField;
    cdsGenerateCorpActEntAVGPRICE: TFloatField;
    cdsGenerateCorpActEntCA_PRICE: TFloatField;
    cdsGenerateCorpActEntPAID: TStringField;
    cdsGenerateCorpActEntPAID_DATE: TDateField;
    cdsGenerateCorpActEntISPARENT: TLargeintField;
    cdsGenerateCorpActEntCCYCODE: TStringField;
    cdsGenerateCorpActEntEXCH_CA_NETAMT: TFloatField;
    cdsGenerateCorpActEntRCVD: TStringField;
    cdsGenerateCorpActEntSDLV: TStringField;
    cdsGenerateCorpActEntAVAIL_EXER_QTY: TFloatField;
    cdsGenerateCorpActEntMODDA: TDateTimeField;
    cdsGenerateCorpActEntMODUI: TStringField;
    cdsGenerateCorpActEntAPPDA: TDateTimeField;
    cdsGenerateCorpActEntAPPUI: TStringField;
    cdsGenerateCorpActEntUNDER4Y: TIntegerField;
    cdsGenerateCorpActEntUNDER4YDA: TDateTimeField;
    cdsGenerateCorpActEntNOTES4Y: TStringField;
    cdsGenerateCorpActEntISDEL: TIntegerField;
    cdsGenerateCorpActEntID: TLargeintField;
    cdsGenerateCorpActEntSALESNAME: TStringField;
    cdsGenerateCorpActEntACCINIT: TStringField;
    GenerateToExcelFile1: TMenuItem;
    SaveDialog: TSaveDialog;
    actEditTaxSubAcc: TNAction;
    EditTaxSubAccount1: TMenuItem;
    N1: TMenuItem;
    actExportToExcel: TNAction;
    ExportToExcel1: TMenuItem;
    actEditTaxRate: TNAction;
    EditTaxRate1: TMenuItem;
    N2: TMenuItem;
    cdsCorpActEntTAXPCNT: TFloatField;
    gvwEntetlementAVAIL_EXER_QTY: TcxGridDBBandedColumn;
    gvwEntetlementTAXPCNT: TcxGridDBBandedColumn;
    cdsCorpActEntSEQID: TLargeintField;
    cdsCorpActEntCASH_VOUCHERID: TLargeintField;
    cdsCorpActEntISPARENT: TLargeintField;
    cdsCorpActEntEXCH_CA_NETAMT: TFloatField;
    cdsCorpActEntRCVD: TStringField;
    cdsCorpActEntSDLV: TStringField;
    cdsCorpActEntRECON: TStringField;
    gvwEntetlementSEQID: TcxGridDBBandedColumn;
    gvwEntetlementCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwEntetlementISPARENT: TcxGridDBBandedColumn;
    gvwEntetlementEXCH_CA_NETAMT: TcxGridDBBandedColumn;
    gvwEntetlementRCVD: TcxGridDBBandedColumn;
    gvwEntetlementSDLV: TcxGridDBBandedColumn;
    gvwEntetlementRECON: TcxGridDBBandedColumn;
    actCheck: TNAction;
    CheckSelected1: TMenuItem;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBLabel7: TcxDBLabel;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBLabel8: TcxDBLabel;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cdsCorpActEntWT_INSTRUCTION: TStringField;
    gvwEntetlementWT_INSTRUCTION: TcxGridDBBandedColumn;
    cdsCorpActEntCENO: TStringField;
    cdsCorpActEntINVTYPE: TStringField;
    cdsCorpActEntSTOCKTAXAMT: TFloatField;
    gvwEntetlementCENO: TcxGridDBBandedColumn;
    gvwEntetlementINVTYPE: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKTAXAMT: TcxGridDBBandedColumn;
    cdsCorpActEntList: TNClientDataset;
    gvwEntetlementACCCUSTODYID: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYCODE: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYACCNAME: TcxGridDBBandedColumn;
    dsCorpActEntList: TDataSource;
    cdsCorpActEntListCAID: TLargeintField;
    cdsCorpActEntListSEQID: TLargeintField;
    cdsCorpActEntListACCID: TLargeintField;
    cdsCorpActEntListCENO: TStringField;
    cdsCorpActEntListACCNO: TStringField;
    cdsCorpActEntListACCNAME: TStringField;
    cdsCorpActEntListCUSTODYNO: TStringField;
    cdsCorpActEntListSTOCKID: TIntegerField;
    cdsCorpActEntListSTOCKCODE: TStringField;
    cdsCorpActEntListACCTYPE: TStringField;
    cdsCorpActEntListINVTYPE: TStringField;
    cdsCorpActEntListAV_QTY: TFloatField;
    cdsCorpActEntListCA_QTY: TFloatField;
    cdsCorpActEntListCA_AMT: TFloatField;
    cdsCorpActEntListTAXRATE: TFloatField;
    cdsCorpActEntListTAXAMT: TFloatField;
    cdsCorpActEntListSTOCKTAXAMT: TFloatField;
    cdsCorpActEntListCA_NETAMT: TFloatField;
    cdsCorpActEntListCDIV_PAYDATE: TDateField;
    cdsCorpActEntListSTAT: TStringField;
    cdsCorpActEntListDIV_PAID: TStringField;
    cdsCorpActEntListCASH_VOUCHERID: TLargeintField;
    cdsCorpActEntListAVGPRICE: TFloatField;
    cdsCorpActEntListCA_PRICE: TFloatField;
    cdsCorpActEntListPAID: TStringField;
    cdsCorpActEntListPAID_DATE: TDateField;
    cdsCorpActEntListISPARENT: TLargeintField;
    cdsCorpActEntListCCYCODE: TStringField;
    cdsCorpActEntListEXCH_CA_NETAMT: TFloatField;
    cdsCorpActEntListRCVD: TStringField;
    cdsCorpActEntListSDLV: TStringField;
    cdsCorpActEntListAVAIL_EXER_QTY: TFloatField;
    cdsCorpActEntListRECON: TStringField;
    cdsCorpActEntListWT_INSTRUCTION: TStringField;
    cdsCorpActEntListMODDA: TDateTimeField;
    cdsCorpActEntListMODUI: TStringField;
    cdsCorpActEntListAPPDA: TDateTimeField;
    cdsCorpActEntListAPPUI: TStringField;
    cdsCorpActEntListUNDER4Y: TIntegerField;
    cdsCorpActEntListUNDER4YDA: TDateTimeField;
    cdsCorpActEntListNOTES4Y: TStringField;
    cdsCorpActEntListISDEL: TIntegerField;
    cdsCorpActEntListID: TLargeintField;
    cdsCorpActEntListACCCUSTODYID: TIntegerField;
    cdsCorpActEntListCUSTODYCODE: TStringField;
    cdsCorpActEntListCUSTODYACCNO: TStringField;
    cdsCorpActEntListCUSTODYACCNAME: TStringField;
    actReconcileAll: TNAction;
    ReconcileAll: TMenuItem;
    cdsCorpActAnno: TNClientDataset;
    dsCorpActAnno: TDataSource;
    cdsCorpActAnnoCAID: TLargeintField;
    cdsCorpActAnnoCANO: TStringField;
    cdsCorpActAnnoCATYPE: TStringField;
    cdsCorpActAnnoSTOCKID: TIntegerField;
    cdsCorpActAnnoSTOCKCODE: TStringField;
    cdsCorpActAnnoSTOCKNAME: TStringField;
    cdsCorpActAnnoISINCODE: TStringField;
    cdsCorpActAnnoBASE_STK_RATIO: TFloatField;
    cdsCorpActAnnoGET_STK_RT: TFloatField;
    cdsCorpActAnnoBASE_CASH_RATIO: TFloatField;
    cdsCorpActAnnoGET_CASH_RATIO: TFloatField;
    cdsCorpActAnnoBASE_QTY_PRICE_RATIO: TFloatField;
    cdsCorpActAnnoEXER_PRICE: TFloatField;
    cdsCorpActAnnoWR_QTY_PRICE_RATIO: TFloatField;
    cdsCorpActAnnoWR_EXER_PRICE: TFloatField;
    cdsCorpActAnnoRND_CALC_MODE: TStringField;
    cdsCorpActAnnoLOCAL_TAX: TFloatField;
    cdsCorpActAnnoFOR_TAX: TFloatField;
    cdsCorpActAnnoRIGHTID: TIntegerField;
    cdsCorpActAnnoRIGHTCODE: TStringField;
    cdsCorpActAnnoWARRANTID: TIntegerField;
    cdsCorpActAnnoWAARANTCODE: TStringField;
    cdsCorpActAnnoNGRG_CUMDATE: TDateField;
    cdsCorpActAnnoTN_CUMDATE: TDateField;
    cdsCorpActAnnoNGRG_EXDATE: TDateField;
    cdsCorpActAnnoTN_EXDATE: TDateField;
    cdsCorpActAnnoRECDATE: TDateField;
    cdsCorpActAnnoDISTDATE: TDateField;
    cdsCorpActAnnoPAYDATE: TDateField;
    cdsCorpActAnnoST_TRD_NOMDATE: TDateField;
    cdsCorpActAnnoLAST_OLD_NOMDATE: TDateField;
    cdsCorpActAnnoRI_STR_LISTDATE: TDateField;
    cdsCorpActAnnoRI_END_LISDATE: TDateField;
    cdsCorpActAnnoRI_STR_TRDDATE: TDateField;
    cdsCorpActAnnoRI_END_TRDDATE: TDateField;
    cdsCorpActAnnoRI_STR_EXERDATE: TDateField;
    cdsCorpActAnnoRI_END_EXERDATE: TDateField;
    cdsCorpActAnnoSTR_DISTDATE: TDateField;
    cdsCorpActAnnoEND_DISTDATE: TDateField;
    cdsCorpActAnnoRI_LASTPAY_DATE: TDateField;
    cdsCorpActAnnoALLOTMENT_DATE: TDateField;
    cdsCorpActAnnoREFUND_DATE: TDateField;
    cdsCorpActAnnoRGNG_WR_STR_TRDDATE: TDateField;
    cdsCorpActAnnoTN_WR_STR_TRDDATE: TDateField;
    cdsCorpActAnnoWR_STR_EXERDATE: TDateField;
    cdsCorpActAnnoWR_END_EXERDATE: TDateField;
    cdsCorpActAnnoWR_EXPDATE: TDateField;
    cdsCorpActAnnoCA_DESC: TStringField;
    cdsCorpActAnnoCASHDIV_RECVSTAT: TStringField;
    cdsCorpActAnnoCASHDIV_RCV: TDateField;
    cdsCorpActAnnoENTITLEMENT: TStringField;
    cdsCorpActAnnoEXERCISES_CLOSE: TStringField;
    cdsCorpActAnnoSTAT: TStringField;
    cdsCorpActAnnoRI_EXERCISES: TStringField;
    cdsCorpActAnnoRI_STOCK_DIST: TStringField;
    cdsCorpActAnnoRI_EXPIRED: TStringField;
    cdsCorpActAnnoRI_EXER_ADM_FEE: TFloatField;
    cdsCorpActAnnoRI_ISINCODE: TStringField;
    cdsCorpActAnnoWR_ISINCODE: TStringField;
    cdsCorpActAnnoWR_STR_TRDDATE: TDateField;
    cdsCorpActAnnoBASE_RI_QTY: TFloatField;
    cdsCorpActAnnoGET_RI_QTY: TFloatField;
    cdsCorpActAnnoRI_PRICE: TFloatField;
    cdsCorpActAnnoBASE_WR_QTY: TFloatField;
    cdsCorpActAnnoGET_WR_QTY: TFloatField;
    cdsCorpActAnnoWR_PRICE: TFloatField;
    cdsCorpActAnnoNEW_STOCKID: TIntegerField;
    cdsCorpActAnnoNEW_STOCKCODE: TStringField;
    cdsCorpActAnnoNEW_STOCKNAME: TStringField;
    cdsCorpActAnnoNEW_ISINCODE: TStringField;
    cdsCorpActAnnoRIGTHNAME: TStringField;
    cdsCorpActAnnoWARRANTNAME: TStringField;
    cdsCorpActAnnoLASTCOUPON_DATE: TDateField;
    cdsCorpActAnnoNEXTCOUPON_DATE: TDateField;
    cdsCorpActAnnoMATURITY_DATE: TDateField;
    cdsCorpActAnnoCOUPONDAYS: TIntegerField;
    cdsCorpActAnnoINTEREST_RATE: TFloatField;
    cdsCorpActAnnoVOUCHERDATE: TDateTimeField;
    cdsCorpActAnnoCCYCODE: TStringField;
    cdsCorpActAnnoSETTLE_CCYCODE: TStringField;
    cdsCorpActAnnoEXRATE: TFloatField;
    cdsCorpActAnnoBROKER_ACCBANKID: TLargeintField;
    cdsCorpActAnnoWR_END_TRDDATE: TDateField;
    cdsCorpActAnnoFIRST_HANDOVER_DATE: TDateField;
    cdsCorpActAnnoSCND_HANDOVER_DATE: TDateField;
    cdsCorpActAnnoCLOSING_PRICE: TFloatField;
    cdsCorpActAnnoCOMPLAIN_DATE: TDateField;
    cdsCorpActAnnoEFFECTIVE_DATE: TDateField;
    cdsCorpActAnnoRUPSLB_DATE: TDateField;
    cdsCorpActAnnoSTR_IMPL_DATE: TDateField;
    cdsCorpActAnnoEND_IMPL_DATE: TDateField;
    cdsCorpActAnnoSTR_TRADE_DATE: TDateField;
    cdsCorpActAnnoEND_TRADE_DATE: TDateField;
    cdsCorpActAnnoMERGE_TRADE_DATE: TDateField;
    cdsCorpActAnnoSTR_TRADE_MERGE: TDateField;
    cdsCorpActAnnoRECMERGE: TDateField;
    cdsCorpActAnnoSHAREHOLDER_DATE: TDateField;
    cdsCorpActAnnoREPORT_DATE: TDateField;
    cdsCorpActAnnoSTR_NEW_TRADE: TDateField;
    cdsCorpActAnnoEND_OLD_TRADE: TDateField;
    cdsCorpActAnnoANNO_DATE: TDateField;
    cdsCorpActAnnoSTR_RESCISSION_DATE: TDateField;
    cdsCorpActAnnoEND_RESCISSION_DATE: TDateField;
    cdsCorpActAnnoROUNDSTOCK: TIntegerField;
    cdsCorpActAnnoCASH_DVDPAY: TDateField;
    cdsCorpActAnnoMODDA: TDateTimeField;
    cdsCorpActAnnoMODUI: TStringField;
    cdsCorpActAnnoAPPDA: TDateTimeField;
    cdsCorpActAnnoAPPUI: TStringField;
    cdsCorpActAnnoUNDER4Y: TIntegerField;
    cdsCorpActAnnoUNDER4YDA: TDateTimeField;
    cdsCorpActAnnoNOTES4Y: TStringField;
    cdsCorpActAnnoISDEL: TIntegerField;
    cdsCorpActAnnoID: TLargeintField;
    cdsCorpActAnnoCASH_STAT: TStringField;
    cdsCorpActAnnoSTOCK_STAT: TStringField;
    cdsCorpActAnnoCANCEL_EXERPAID: TStringField;
    cdsCorpActEntListSALESCODE: TStringField;
    gvwEntetlementSALESCODE: TcxGridDBBandedColumn;
    cdsCorpActEntListEXER_AMT: TFloatField;
    cdsCorpActEntListEXERQTY: TFloatField;
    gvwEntetlementEXER_AMT: TcxGridDBBandedColumn;
    gvwEntetlementEXERQTY: TcxGridDBBandedColumn;
    cdsBuatBantuCopyField: TNClientDataset;
    cdsCorpActCAID: TLargeintField;
    cdsCorpActCANO: TStringField;
    cdsCorpActCATYPE: TStringField;
    cdsBuatBantuCopyFieldSTOCKCODE: TStringField;
    cdsBuatBantuCopyFieldSTOCKNAME: TStringField;
    cdsBuatBantuCopyFieldISINCODE: TStringField;
    cdsBuatBantuCopyFieldBASE_STK_RATIO: TFloatField;
    cdsBuatBantuCopyFieldGET_STK_RT: TFloatField;
    cdsBuatBantuCopyFieldGET_CASH_RATIO: TFloatField;
    cdsBuatBantuCopyFieldBASE_CASH_RATIO: TFloatField;
    cdsBuatBantuCopyFieldDISTDATE: TDateField;
    cdsBuatBantuCopyFieldPAYDATE: TDateField;
    cdsCorpActEntListStringField: TStringField;
    cdsCorpActEntListStringField2: TStringField;
    cdsCorpActEntListSTOCKNAME: TStringField;
    cdsCorpActEntListISINCODE: TStringField;
    cdsCorpActEntListBASE_STK_RATIO: TFloatField;
    cdsCorpActEntListGET_STK_RT: TFloatField;
    cdsCorpActEntListGET_CASH_RATIO: TFloatField;
    cdsCorpActEntListBASE_CASH_RATIO: TFloatField;
    cdsCorpActEntListDISTDATE: TDateField;
    cdsCorpActEntListPAYDATE: TDateField;
    gvwEntetlementCANO: TcxGridDBBandedColumn;
    gvwEntetlementCATYPE: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKNAME: TcxGridDBBandedColumn;
    gvwEntetlementISINCODE: TcxGridDBBandedColumn;
    gvwEntetlementBASE_STK_RATIO: TcxGridDBBandedColumn;
    gvwEntetlementGET_STK_RT: TcxGridDBBandedColumn;
    gvwEntetlementGET_CASH_RATIO: TcxGridDBBandedColumn;
    gvwEntetlementBASE_CASH_RATIO: TcxGridDBBandedColumn;
    gvwEntetlementDISTDATE: TcxGridDBBandedColumn;
    gvwEntetlementPAYDATE: TcxGridDBBandedColumn;
    cdsCorpActEntCA_NETQTY: TFloatField;
    cdsCorpActEntListCA_NETQTY: TFloatField;
    gvwEntetlementCA_NETQTY: TcxGridDBBandedColumn;
    cdsCorpActEntListTAXPCNT: TFloatField;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    actReconcileEnt: TNAction;
    GetFile: TOpenDialog;
    ReconcileEntitlement1: TMenuItem;
    cdsCorpactRecon: TNClientDataset;
    cdsCorpactReconSECURITY_ID: TStringField;
    cdsCorpactReconSECURITY_DESC: TStringField;
    cdsCorpactReconTYPE_CA: TStringField;
    cdsCorpactReconRECORDING_DATE: TDateField;
    cdsCorpactReconEFFECTIVE_DATE: TDateField;
    cdsCorpactReconACCOUNT_ID: TStringField;
    cdsCorpactReconACCOUNT_DESC: TStringField;
    cdsCorpactReconTAX_ID: TStringField;
    cdsCorpactReconTAX_RATE: TFloatField;
    cdsCorpactReconBALANCE_POSITION: TFloatField;
    cdsCorpactReconPROCEED_INSTRUMENT: TStringField;
    cdsCorpactReconGROSS_PROCEED: TFloatField;
    cdsCorpactReconPROCEED_TAX: TFloatField;
    cdsCorpactReconNET_PROCEED: TFloatField;
    cdsCorpActEntListC_TAXRATE: TFloatField;
    cdsCorpActEntListC_BALPOSITION: TFloatField;
    cdsCorpActEntListC_INSTRUMENT: TStringField;
    cdsCorpActEntListC_GROSSPROCEED: TFloatField;
    cdsCorpActEntListC_PROCEEDTAX: TFloatField;
    cdsCorpActEntListC_NETPROCEED: TFloatField;
    actReconSelected: TNAction;
    chkDiff: TcxCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    ReconSelectedEntitlement1: TMenuItem;
    actReconManual: TNAction;
    ReconcileManual1: TMenuItem;

    procedure FormShow(Sender: TObject);
    procedure btnGenerateEntClick(Sender: TObject);
    procedure actSendEmailExecute(Sender: TObject);
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure actGenerateToExcelFileExecute(Sender: TObject);
    procedure actGenerateToExcelFileUpdate(Sender: TObject);
    procedure actEditTaxSubAccExecute(Sender: TObject);
    procedure actExportToExcelExecute(Sender: TObject);
    procedure actEditTaxRateExecute(Sender: TObject);
    procedure cdsCorpActEntCalcFields(DataSet: TDataSet);
    procedure actCheckExecute(Sender: TObject);
    procedure actReconcileAllExecute(Sender: TObject);
    procedure cdsCorpActEntTAXRATEChange(Sender: TField);
    procedure cdsCorpActEntListCalcFields(DataSet: TDataSet);
    procedure actReconcileEntExecute(Sender: TObject);
    procedure gvwEntetlementC_TAXRATECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actReconSelectedExecute(Sender: TObject);
    procedure chkDiffPropertiesEditValueChanged(Sender: TObject);
    procedure actReconManualExecute(Sender: TObject);
  private
    { Private declarations }
    FSystemDate: TDate;

    procedure ListHeaderEntitlement(ACorpActType: Integer);
    procedure EnsureKSEIBand;
    procedure gvwKSEICustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    function FindEntitlementByAccount(const AAccountID: string): Boolean;
    procedure ExportToExcelFile;

    function GetCorpactType(ACAType: Integer): string;
  public
    { Public declarations }
  end;

var
  frmCorpActEntitlement: TfrmCorpActEntitlement;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactList, FormCorpactSubAccList,
  FormModifyEntitlement, System.Math, System.StrUtils;

procedure TfrmCorpActEntitlement.actCheckExecute(Sender: TObject);
var
  i, RecIdx: Integer;
begin
  inherited;
  if MessageDlg('Check Selected Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    for i := 0 to gvwEntetlement.Controller.SelectedRecordCount -1 do
    begin
      RecIdx := gvwEntetlement.Controller.SelectedRecords[i].RecordIndex;
      gvwEntetlement.DataController.FocusedRecordIndex := RecIdx;

      cdsCorpActEnt.Close;
      cdsCorpActEnt.Params[0].AsInteger := cdsCorpActEntListCAID.AsInteger;
      cdsCorpActEnt.Params[1].AsInteger := cdsCorpActEntListSEQID.AsInteger;
      cdsCorpActEnt.Params[2].AsInteger := cdsCorpActEntListACCID.AsInteger;
      cdsCorpActEnt.Open;

      if not cdsCorpActEnt.IsEmpty then
      begin
        cdsCorpActEnt.Edit;
        cdsCorpActEntRECON.AsString := '1';
        cdsCorpActEnt.Post;
        cdsCorpActEnt.ApplyUpdates(0);
      end;
    end;

    cdsCorpActEntList.Refresh;
  End;
end;

procedure TfrmCorpActEntitlement.actEditTaxRateExecute(Sender: TObject);
var
  oForm: TfrmModifyEntitlement;
begin
  inherited;
  if (cdsCorpActEntRECON.AsString = '0') or (cdsCorpActAnnoRECDATE.AsDateTime > FSystemDate) then
  begin
    cdsCorpActEnt.Close;
    cdsCorpActEnt.Params[0].AsInteger := cdsCorpActEntListCAID.AsInteger;
    cdsCorpActEnt.Params[1].AsInteger := cdsCorpActEntListSEQID.AsInteger;
    cdsCorpActEnt.Params[2].AsInteger := cdsCorpActEntListACCID.AsInteger;
    cdsCorpActEnt.Open;

    cdsCorpActEnt.Edit;

    oForm := TfrmModifyEntitlement.Create(nil);
    Try
      TfrmModifyEntitlement(oForm).txtTax.EditValue       := cdsCorpActEntTAXRATE.AsFloat * 100;
      TfrmModifyEntitlement(oForm).txtTaxAmount.EditValue := cdsCorpActEntCA_AMT.AsFloat;
      if oForm.ShowModal = mrOk then
      begin
        if (TfrmModifyEntitlement(oForm).txtTax.EditValue <> 0) then
          cdsCorpActEntTAXRATE.AsFloat := TfrmModifyEntitlement(oForm).txtTax.EditValue / 100;
        cdsCorpActEnt.Post;
        cdsCorpActEnt.ApplyUpdates(0);
      end
      else
        cdsCorpActEnt.CancelUpdates;
    Finally
      oForm.Free;
      cdsCorpActEntList.Refresh;
    End;
  end;
end;

procedure TfrmCorpActEntitlement.actEditTaxSubAccExecute(Sender: TObject);
var
  oForm: TfrmCorpactSubAccList;
begin
  inherited;
  oForm := TfrmCorpactSubAccList.Create(nil);
//  TfrmCorpactSubAccList(oForm).AccSubId := gvwEntetlement.Controller.SelectedRecords[0].Values[gvwEntetlementACCID.Index];

  TfrmCorpactSubAccList(oForm).cdsSubject.Close;
  TfrmCorpactSubAccList(oForm).cdsSubject.Params[0].AsInteger := gvwEntetlement.Controller.SelectedRecords[0].Values[gvwEntetlementACCID.Index];
  TfrmCorpactSubAccList(oForm).cdsSubject.Open;

  if TfrmCorpactSubAccList(oForm).cdsSubject.IsEmpty then
    MessageDlg('There is no data SOP member account to be edited', mtConfirmation, [mbOk], 0)
  else
    oForm.ShowModal;
  oForm.Free;
end;

procedure TfrmCorpActEntitlement.actExportToExcelExecute(Sender: TObject);
var
  sFileName: string;
begin
  inherited;
  SaveDialog.FileName := GetCurrentDir + '\CorpactEntitlement.xls';
  if not SaveDialog.Execute then
    Abort;

  sFileName := SaveDialog.FileName;
  if sFileName <> '' then
  begin
    gvwEntetlementCANO.Visible := True;
    gvwEntetlementCATYPE.Visible := True;
    gvwEntetlementSTOCKCODE.Visible := True;
    gvwEntetlementSTOCKNAME.Visible := True;
    gvwEntetlementISINCODE.Visible := True;
    gvwEntetlementBASE_STK_RATIO.Visible := True;
    gvwEntetlementGET_STK_RT.Visible := True;
    gvwEntetlementGET_CASH_RATIO.Visible := True;
    gvwEntetlementBASE_CASH_RATIO.Visible := True;
    gvwEntetlementDISTDATE.Visible := True;
    gvwEntetlementPAYDATE.Visible := True;
    Try
      ExportGridToExcel(sFileName, cxGrid1, True, True, False);
    Finally
      gvwEntetlementCANO.Visible := False;
      gvwEntetlementCATYPE.Visible := False;
      gvwEntetlementSTOCKCODE.Visible := False;
      gvwEntetlementSTOCKNAME.Visible := False;
      gvwEntetlementISINCODE.Visible := False;
      gvwEntetlementBASE_STK_RATIO.Visible := False;
      gvwEntetlementGET_STK_RT.Visible := False;
      gvwEntetlementGET_CASH_RATIO.Visible := False;
      gvwEntetlementBASE_CASH_RATIO.Visible := False;
      gvwEntetlementDISTDATE.Visible := False;
      gvwEntetlementPAYDATE.Visible := False;
    End;
    MessageDlg('Export to excel has done', mtInformation, [mbOk], 0);
    ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfrmCorpActEntitlement.actGenerateToExcelFileExecute(
  Sender: TObject);
var
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  sFileName, sSalesName: string;
  i: integer;
  sTransDate: string;
  sFilePath, sNameFile,
  sFileExt: string;
begin
  inherited;
  i          := 0;
  sTransDate := FormatDateTime('dd-mmm-yyyy', dmGlobal.RemoteServer.GetTransDate);

  cdsGenerateCorpActEnt.Close;
  cdsGenerateCorpActEnt.Params[0].AsInteger := cdsCorpActEnt.FieldByName('CAID').AsInteger;
  cdsGenerateCorpActEnt.Open;

  if cdsGenerateCorpActEnt.IsEmpty then
  begin
    MessageDlg('Can not generate Empty Entitlement...', mtError, [mbOk], 0);
    exit;
  end;

  if not SaveDialog.Execute(Application.Handle) then
    Abort;

  sFileName := SaveDialog.FileName;
  if sFileName = '' then
  begin
    MessageDlg('Please write file name to be saved', mtError, [mbOk], 0);
    exit;
  end;

  oXls   := TXLSReadWriteII5.Create(self);
  oSheet := oXls.Sheets[0];
  oSheet.Clear;

  cdsGenerateCorpActEnt.First;
  sSalesName    := cdsGenerateCorpActEntSALESNAME.AsString;
  sFilePath     := ExtractFilePath(sFileName);
  sNameFile     := ExtractFileName(sFileName);
  sFileExt      := ExtractFileExt(sFileName);
  sNameFile     := dmGlobal.GetStringDelimiter(sNameFile, '.');
  oXls.Filename := sFilePath + sNameFile +'-'+ sSalesName +'-'+sTransDate+sFileExt;

  oSheet.Name := 'Sales Name : '+ cdsGenerateCorpActEntSALESNAME.AsString;
  oSheet.AsString[0, 0] := 'Customer Code';
  oSheet.AsString[1, 0] := 'Qty';
  oSheet.AsString[2, 0] := 'Customer Name';
  oSheet.AsString[3, 0] := 'Customer Initial';

  while not cdsGenerateCorpActEnt.Eof do
  begin
    Inc(i);

    oSheet.AsString[0, i] := cdsGenerateCorpActEntACCNO.AsString;
    oSheet.AsFloat[1, i]  := cdsGenerateCorpActEntCA_QTY.AsFloat;
    oSheet.AsString[2, i] := cdsGenerateCorpActEntACCNAME.AsString;
    oSheet.AsString[3, i] := cdsGenerateCorpActEntACCINIT.AsString;

    cdsGenerateCorpActEnt.Next;

    if sSalesName <> cdsGenerateCorpActEntSALESNAME.AsString then
    begin
      sSalesName := cdsGenerateCorpActEntSALESNAME.AsString;

      oXls.Write;
      FreeAndNil(oXls);

      i := 0;
      oXls          := TXLSReadWriteII5.Create(self);
      oXls.Filename := sFilePath + sNameFile +'-'+ sSalesName +'-'+sTransDate+sFileExt;
      oSheet        := oXls.Sheets[0];
      oSheet.Name   := 'Sales Name : '+ sSalesName;
      oSheet.Clear;

      oSheet.AsString[0, 0] := 'Customer Code';
      oSheet.AsString[1, 0] := 'Qty';
      oSheet.AsString[2, 0] := 'Customer Name';
      oSheet.AsString[3, 0] := 'Customer Initial';
    end;

  end;
  oXls.Write;
  FreeAndNil(oXls);

  MessageDlg('Generate excel file has done...', mtInformation, [mbOk], 0);

end;

procedure TfrmCorpActEntitlement.actGenerateToExcelFileUpdate(
  Sender: TObject);
begin
  inherited;
  actGenerateToExcelFile.Visible := dsSubject.DataSet.FieldByName('CATYPE').AsString = '1';
end;

procedure TfrmCorpActEntitlement.actPrintPreviewExecute(Sender: TObject);
var
  sReportFile: string;
  sAccID: string;
  i: Integer;
begin
  inherited;
  try
    sAccID := '';
    for i := 0 to gvwEntetlement.Controller.SelectedRecordCount -1 do
    begin
      sAccID := sAccID + IntToStr(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementACCID.Index]);
      if i < gvwEntetlement.Controller.SelectedRecordCount -1 then
        sAccID := sAccID + ', ';

    end;

    sReportFile := 'Corporate Action\'+ GetCorpactType(dsSubject.DataSet.FieldByName('CATYPE').AsInteger) +'.fr3';

    Report.ReportName := sReportFile;

    Report.Params[0].AsInteger := cdsCorpActEntList.FieldByName('CAID').AsInteger;
    Report.Params[1].AsString  := sAccID;
    Report.PreviewReport;

  except
    on E : Exception do MessageDlg('Error while print preview, Error : '+ E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmCorpActEntitlement.actReconcileAllExecute(Sender: TObject);
var
  bCon: Boolean;
  x, v: Integer;
begin
  inherited;
  x := 0;
  v := 0;

  cdsCorpActEntList.DisableControls;
  if messagedlg('Are you sure to reconcile all data?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    cdsCorpActEntList.First;
    while not cdsCorpActEntList.Eof do
    begin
      try
        if StrToFloatDef(cdsCorpActEntListC_TAXRATE.AsString, 0) <> 0 then
        begin
          bCon := cdsCorpActEntListAV_QTY.AsFloat = cdsCorpActEntListC_BALPOSITION.AsFloat;
          if bCon then
          begin
            cdsCorpActEnt.Close;
            cdsCorpActEnt.Params[0].AsInteger := cdsCorpActEntListCAID.AsInteger;
            cdsCorpActEnt.Params[1].AsInteger := cdsCorpActEntListSEQID.AsInteger;
            cdsCorpActEnt.Params[2].AsInteger := cdsCorpActEntListACCID.AsInteger;
            cdsCorpActEnt.Open;

            if not cdsCorpActEnt.IsEmpty then
            begin
              cdsCorpActEnt.Edit;
              cdsCorpActEntTAXRATE.AsFloat := cdsCorpActEntListC_TAXRATE.AsFloat / 100;
              if dsSubject.DataSet.FieldByName('CATYPE').AsString = '2' then
                cdsCorpActEntCA_AMT.AsFloat := cdsCorpActEntListC_GROSSPROCEED.AsFloat
              else
                cdsCorpActEntCA_QTY.AsFloat := cdsCorpActEntListC_GROSSPROCEED.AsFloat;
              cdsCorpActEntTAXAMT.AsFloat   := cdsCorpActEntListC_PROCEEDTAX.AsFloat;
              cdsCorpActEntCA_NETAMT.AsFloat:= cdsCorpActEntListC_NETPROCEED.AsFloat;

              cdsCorpActEntRECON.AsString := '1';
              cdsCorpActEnt.Post;
              cdsCorpActEnt.ApplyUpdates(-1);

              Inc(v);
            end;
          end
          else
            Inc(x);
        end;
      except
        on E: Exception do Inc(x);
      end;

      cdsCorpActEntList.Next;
    end;

    if x = 0 then
      MessageDlg(IntToStr(v) + ' Data corpact has been reconciled', mtInformation, [mbOk], 0)
    else
      MessageDlg(IntToStr(v) + ' Data corpact has been reconciled and '+#13+IntToStr(x)+
            ' data can''t be reconcile becouse invalid stock balance', mtInformation, [mbOk], 0);
    cdsCorpActEntList.Refresh;
  end
  else
    messagedlg('Action has been cancelled!',mtInformation,[mbOk],0);

  cdsCorpActEntList.EnableControls;
end;

procedure TfrmCorpActEntitlement.actReconcileEntExecute(Sender: TObject);
var
  sFileName: string;
  oStringList,
  oReconData: TStringList;
  i: Integer;
  sAccountID: string;
  sStockCode: string;
  sTmpData: string;
  bTax, bBalance,
  bGrossproceed,
  bNetProceed,
  bProceedTax: Boolean;
  sMsg: string;
  fTaxRate: Double;
  FS, FSDate: TFormatSettings;
  dtValue: TDateTime;
  iRead, iMatch, iFail, iRecon: Integer;
  sNoMatch, sEntKeys, sHeaderStock, sDiff: string;
begin
  inherited;

  if not GetFile.Execute then
    Exit;

  sFileName := GetFile.FileName;
  if sFileName = '' then
    Exit;

  FS := TFormatSettings.Create;
  FS.DecimalSeparator := '.';
  FSDate := TFormatSettings.Create('en-US');
  FSDate.DateSeparator   := '-';
  FSDate.ShortDateFormat := 'dd-MMM-yyyy';

  iRead := 0; iMatch := 0; iFail := 0; iRecon := 0;
  sHeaderStock := Trim(dsSubject.DataSet.FieldByName('STOCKCODE').AsString);
  sDiff := '';
  sNoMatch := '';

  cdsCorpActEntList.DisableControls;
  try
    if not cdsCorpactRecon.Active then
      cdsCorpactRecon.Open;
    dmGlobal.RemoteServer.EmptyTable('main.B_CORPACT_RECON', sMsg);
    cdsCorpactRecon.Close;
    cdsCorpactRecon.Open;

    oStringList := TStringList.Create;
    try
      oStringList.LoadFromFile(sFileName);

      for i := 1 to oStringList.Count - 1 do
      begin
        if Trim(oStringList.Strings[i]) = '' then Continue;

        sTmpData   := StringReplace(oStringList.Strings[i], #9, '|', [rfReplaceAll, rfIgnoreCase]);
        oReconData := TStringList.Create;
        try
          dmGlobal.ParseDelimited(oReconData, sTmpData, '|');

          if oReconData.Count < 16 then Continue;
          Inc(iRead);

          sAccountID := Trim(StringReplace(oReconData.Strings[5], '-', '', [rfReplaceAll]));
          sStockCode := Trim(oReconData.Strings[0]);

          if ((sHeaderStock = '') or SameText(sStockCode, sHeaderStock)) and
             FindEntitlementByAccount(sAccountID) then
          begin
            Inc(iMatch);

            cdsCorpactRecon.Append;
            cdsCorpactReconSECURITY_ID.AsString        := sStockCode;
            cdsCorpactReconSECURITY_DESC.AsString      := oReconData.Strings[1];
            cdsCorpactReconTYPE_CA.AsString            := oReconData.Strings[2];
            if TryStrToDate(Trim(oReconData.Strings[3]), dtValue, FSDate) then
              cdsCorpactReconRECORDING_DATE.AsDateTime := dtValue;
            if TryStrToDate(Trim(oReconData.Strings[4]), dtValue, FSDate) then
              cdsCorpactReconEFFECTIVE_DATE.AsDateTime := dtValue;
            cdsCorpactReconACCOUNT_ID.AsString         := sAccountID;
            cdsCorpactReconACCOUNT_DESC.AsString       := oReconData.Strings[6];
            cdsCorpactReconTAX_ID.AsString             := oReconData.Strings[7];
            cdsCorpactReconTAX_RATE.AsFloat            := StrToFloatDef(Trim(oReconData.Strings[10]), 0, FS);
            cdsCorpactReconBALANCE_POSITION.AsFloat    := StrToFloatDef(Trim(oReconData.Strings[11]), 0, FS);
            cdsCorpactReconPROCEED_INSTRUMENT.AsString := oReconData.Strings[12];
            cdsCorpactReconGROSS_PROCEED.AsFloat       := StrToFloatDef(Trim(oReconData.Strings[13]), 0, FS);
            cdsCorpactReconPROCEED_TAX.AsFloat         := StrToFloatDef(Trim(oReconData.Strings[14]), 0, FS);
            cdsCorpactReconNET_PROCEED.AsFloat         := StrToFloatDef(Trim(oReconData.Strings[15]), 0, FS);
            cdsCorpactRecon.Post;
            if cdsCorpactRecon.ApplyUpdates(-1) <> 0 then
              Inc(iFail);

            fTaxRate    := cdsCorpActEntListTAXRATE.AsFloat * 100;
            bTax        := Abs(fTaxRate - cdsCorpactReconTAX_RATE.AsFloat) < 0.0001;
            bBalance    := Abs(cdsCorpActEntListAV_QTY.AsFloat - cdsCorpactReconBALANCE_POSITION.AsFloat) < 0.01;
            bProceedTax := Abs(cdsCorpActEntListTAXAMT.AsFloat - cdsCorpactReconPROCEED_TAX.AsFloat) < 0.01;
            if dsSubject.DataSet.FieldByName('CATYPE').AsString = '2' then
            begin
              bGrossproceed := Abs(cdsCorpActEntListCA_AMT.AsFloat - cdsCorpactReconGROSS_PROCEED.AsFloat) < 0.01;
              bNetProceed   := Abs(cdsCorpActEntListCA_NETAMT.AsFloat - cdsCorpactReconNET_PROCEED.AsFloat) < 0.01;
            end
            else
            begin
              bGrossproceed := Abs(cdsCorpActEntListCA_QTY.AsFloat - cdsCorpactReconGROSS_PROCEED.AsFloat) < 0.01;
              bNetProceed   := Abs(cdsCorpActEntListCA_NETQTY.AsFloat - cdsCorpactReconNET_PROCEED.AsFloat) < 0.01;
            end;

            if not (bTax and bBalance and bGrossproceed and bNetProceed and bProceedTax) then
            begin
              if Length(sDiff) < 700 then
                sDiff := sDiff + sAccountID + ' :' +
                  IfThen(bTax, '', ' TaxRate') + IfThen(bBalance, '', ' Balance') +
                  IfThen(bGrossproceed, '', ' Gross') + IfThen(bProceedTax, '', ' Tax') +
                  IfThen(bNetProceed, '', ' Net') + #13#10;
            end;

            if bTax and bBalance and bGrossproceed and bNetProceed and bProceedTax then
            begin
              cdsCorpActEnt.Close;
              cdsCorpActEnt.Params[0].AsInteger := cdsCorpActEntListCAID.AsInteger;
              cdsCorpActEnt.Params[1].AsInteger := cdsCorpActEntListSEQID.AsInteger;
              cdsCorpActEnt.Params[2].AsInteger := cdsCorpActEntListACCID.AsInteger;
              cdsCorpActEnt.Open;

              if not cdsCorpActEnt.IsEmpty then
              begin
                cdsCorpActEnt.Edit;
                cdsCorpActEntRECON.AsString := '1';
                cdsCorpActEnt.Post;
                cdsCorpActEnt.ApplyUpdates(-1);
                Inc(iRecon);
              end;
            end;
          end
          else if Length(sNoMatch) < 600 then
            sNoMatch := sNoMatch + sStockCode + ' | ' + sAccountID + #13#10;
        finally
          FreeAndNil(oReconData);
        end;
      end;
    finally
      FreeAndNil(oStringList);
    end;

    sEntKeys := '';
    if iMatch = 0 then
    begin
      cdsCorpActEntList.First;
      while not cdsCorpActEntList.Eof do
      begin
        sEntKeys := sEntKeys + '[' + cdsCorpActEntList.FieldByName('CUSTODYACCNO').AsString + '] len=' +
                    IntToStr(Length(cdsCorpActEntList.FieldByName('CUSTODYACCNO').AsString)) + #13#10;
        cdsCorpActEntList.Next;
      end;
    end;

    cdsCorpActEntList.Refresh;
    EnsureKSEIBand;
  finally
    cdsCorpActEntList.EnableControls;
  end;

    sMsg := Format('Rows in file         : %d'#13#10 +
                   'Matched entitlement  : %d'#13#10 +
                   'Failed to save       : %d'#13#10 +
                   'Reconciled (equal)   : %d', [iRead, iMatch, iFail, iRecon]);
  if sDiff <> '' then
    sMsg := sMsg + #13#10#13#10 + 'Not reconciled (differing columns):' + #13#10 + sDiff;
  if sNoMatch <> '' then
    sMsg := sMsg + #13#10#13#10 + 'Not found in entitlement (stock | account):' + #13#10 + sNoMatch;
  if sEntKeys <> '' then
    sMsg := sMsg + #13#10 + 'CA header stock: [' + sHeaderStock + ']' + #13#10 + 'CUSTODYACCNO in entitlement:' + #13#10 + sEntKeys;
  ShowMessage(sMsg);
end;


procedure TfrmCorpActEntitlement.actReconManualExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if MessageDlg('Reconcile Manual ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsCorpActEntList.DisableControls;

    for i := 0 to gvwEntetlement.Controller.SelectedRecordCount -1 do
    begin
      cdsCorpActEnt.Close;
      cdsCorpActEnt.Params[0].AsInteger := StrToIntDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementCAID.Index], 0);
      cdsCorpActEnt.Params[1].AsInteger := StrToIntDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementSEQID.Index], 0);
      cdsCorpActEnt.Params[2].AsInteger := StrToIntDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementACCID.Index], 0);
      cdsCorpActEnt.Open;

      cdsCorpActEnt.Edit;
      cdsCorpActEntRECON.AsString := '1';
      cdsCorpActEnt.Post;

      cdsCorpActEnt.ApplyUpdates(-1);
    end;
    cdsCorpActEntList.EnableControls;
    cdsCorpActEntList.Refresh;
  end;
end;

procedure TfrmCorpActEntitlement.actReconSelectedExecute(Sender: TObject);
var
  i: Integer;
  sAccountID: string;
  sStockCode: string;
  bTax, bBalance,
  bGrossproceed,
  bNetProceed,
  bProceedTax: Boolean;
  sMsg: string;
  fTaxRate: Double;
begin
  inherited;
//  cdsCorpActEntList.DisableControls;
//
//  for i := 0 to gvwEntetlement.Controller.SelectedRecordCount -1 do
//  begin
//    if gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_PROCEEDTAX.Index] <> null then
//    begin
//      fTaxRate    := StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementTAXRATE.Index]) * 100;
//      bTax        := fTaxRate = StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_TAXRATE.Index]);
//      bBalance    := StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementAV_QTY.Index]) =
//                     StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_BALPOSITION.Index]);
//      bProceedTax := StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementTAXAMT.Index]) =
//                     StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_PROCEEDTAX.Index]);
//
//      if gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementCATYPE.Index] = '2' then
//      begin
//        bGrossproceed := StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementCA_AMT.Index]) =
//                         StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_GROSSPROCEED.Index]);
//        bNetProceed   := StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_NETPROCEED.Index]) =
//                         StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementCA_NETAMT.Index]);
//      end
//      else //if dsSubject.DataSet.FieldByName('CATYPE').AsString = '3' then
//      begin
//        bGrossproceed := StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementCA_QTY.Index]) =
//                         StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_GROSSPROCEED.Index]);
//        bNetProceed   := StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_NETPROCEED.Index]) =
//                         StrToFloat(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementCA_NETQTY.Index]);
//      end;
//
//
////      if bTax and bBalance and bGrossproceed and bNetProceed and bProceedTax then
//      if bBalance and bNetProceed then
//      begin
//        cdsCorpActEnt.Close;
//        cdsCorpActEnt.Params[0].AsInteger := StrToIntDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementCAID.Index], 0);
//        cdsCorpActEnt.Params[1].AsInteger := StrToIntDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementSEQID.Index], 0);
//        cdsCorpActEnt.Params[2].AsInteger := StrToIntDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementACCID.Index], 0);
//        cdsCorpActEnt.Open;
//
//        if not cdsCorpActEnt.IsEmpty then
//        begin
//          cdsCorpActEnt.Edit;
//          cdsCorpActEntRECON.AsString := '1';
//
//              cdsCorpActEntTAXRATE.AsFloat := StrToFloatDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_TAXRATE.Index], 0) / 100;
//              if dsSubject.DataSet.FieldByName('CATYPE').AsString = '2' then
//                cdsCorpActEntCA_AMT.AsFloat := StrToFloatDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_GROSSPROCEED.Index], 0)
//              else
//                cdsCorpActEntCA_QTY.AsFloat := StrToFloatDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_GROSSPROCEED.Index], 0);
//              cdsCorpActEntTAXAMT.AsFloat   := StrToFloatDef(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementC_PROCEEDTAX.Index], 0);
//
//          cdsCorpActEnt.Post;
//          cdsCorpActEnt.ApplyUpdates(-1);
//        end;
//      end;
//    end;
//  end;
//
//  cdsCorpActEntList.EnableControls;
//  cdsCorpActEntList.Refresh;
end;

procedure TfrmCorpActEntitlement.actSendEmailExecute(Sender: TObject);
var
  iCAID, iACCID, iCAType: Integer;
  sysDate : TDateTime;
begin
  inherited;
  if MessageDlg('Send Email ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  iCAID   := dsCorpActEntList.DataSet.FieldByName('CAID').AsInteger;
  iACCID  := dsCorpActEntList.DataSet.FieldByName('ACCID').AsInteger;
  iCAType := StrToInt(dsSubject.DataSet.FieldByName('CATYPE').AsString);
  sysDate := dmGlobal.RemoteServer.GetTransDate;

  if(sysDate < cdsCorpActAnnoRECDATE.AsDateTime) then
    messagedlg('Cannot send email before recording date!',mtInformation,[mbOK],0)
  else
  //messagedlg('Can send email!',mtInformation,[mbOK],0);
  MessageDlg(dmGlobal.RemoteServer.SendCorpactEntitlement(iCAID, iACCID, iCAType, 'CA'), mtInformation, [mbOk], 0);
end;

procedure TfrmCorpActEntitlement.cdsCorpActEntCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsCorpActEntTAXPCNT.AsFloat := cdsCorpActEntTAXRATE.AsFloat * 100;
end;

procedure TfrmCorpActEntitlement.cdsCorpActEntListCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsCorpActEntListTAXPCNT.AsFloat := cdsCorpActEntListTAXRATE.AsFloat * 100;
end;

procedure TfrmCorpActEntitlement.cdsCorpActEntTAXRATEChange(Sender: TField);
var
  fValue: Double;
begin
  inherited;
  if (dsSubject.DataSet.FieldByName('CATYPE').AsInteger = 2) then //Cash Dividen
  begin
    cdsCorpActEntTAXAMT.AsFloat := cdsCorpActEntTAXRATE.AsFloat * cdsCorpActEntCA_AMT.AsFloat;
    cdsCorpActEntCA_NETAMT.AsFloat := cdsCorpActEntCA_AMT.AsFloat - cdsCorpActEntTAXAMT.AsFloat;
  end
  else if (dsSubject.DataSet.FieldByName('CATYPE').AsInteger = 3) then //Stock Dividen
  begin
    cdsCorpActEntTAXAMT.AsFloat := cdsCorpActEntTAXRATE.AsFloat * cdsCorpActEntCA_AMT.AsFloat;
    cdsCorpActEntCA_NETAMT.AsFloat := cdsCorpActEntCA_AMT.AsFloat - cdsCorpActEntTAXAMT.AsFloat;
    fValue := cdsCorpActEntTAXRATE.AsFloat * cdsCorpActEntCA_QTY.AsFloat;
    cdsCorpActEntSTOCKTAXAMT.AsFloat := Ceil(fValue);
    cdsCorpActEntCA_NETQTY.AsFloat := cdsCorpActEntCA_QTY.AsFloat - cdsCorpActEntSTOCKTAXAMT.AsFloat;
  end
  else if (dsSubject.DataSet.FieldByName('CATYPE').AsInteger = 4) then //Mix Dividen
  begin
    cdsCorpActEntTAXAMT.AsFloat := cdsCorpActEntTAXRATE.AsFloat * cdsCorpActEntCA_AMT.AsFloat;
    fValue := cdsCorpActEntTAXRATE.AsFloat * cdsCorpActEntCA_QTY.AsFloat;
    cdsCorpActEntSTOCKTAXAMT.AsFloat := Ceil(fValue);
    cdsCorpActEntCA_NETAMT.AsFloat := cdsCorpActEntCA_AMT.AsFloat - cdsCorpActEntTAXAMT.AsFloat -
      (cdsCorpActEntSTOCKTAXAMT.AsFloat * cdsCorpActEntCA_PRICE.AsFloat);
    cdsCorpActEntSTOCKTAXAMT.AsFloat := 0;//Karena udah dikurangi dari dividen uangnya
    cdsCorpActEntCA_NETQTY.AsFloat := cdsCorpActEntCA_QTY.AsFloat - cdsCorpActEntSTOCKTAXAMT.AsFloat;
  end;
end;

procedure TfrmCorpActEntitlement.chkDiffPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('CATYPE').AsString = '2' then
    cdsCorpActEntList.Filter := 'C_NETPROCEED <> CA_NETAMT'
  else
    cdsCorpActEntList.Filter := 'C_NETPROCEED <> CA_NETQTY';

  if chkDiff.Checked then cdsCorpActEntList.Filtered := True else cdsCorpActEntList.Filtered := False;
end;

procedure TfrmCorpActEntitlement.ExportToExcelFile;
begin

end;

procedure TfrmCorpActEntitlement.btnGenerateEntClick(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.RemoteServer.CorpactEnt(dsSubject.DataSet.FieldByName('CAID').AsLargeInt, sMsg);
  cdsCorpActEntList.Refresh;
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmCorpActEntitlement.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.RemoteServer.EmptyTable('main.B_CORPACT_RECON', sMsg);
end;

procedure TfrmCorpActEntitlement.FormShow(Sender: TObject);
var
  iCAType: Integer;
begin
  inherited;
  FSystemDate := dmGlobal.RemoteServer.GetTransDate;

  if dsSubject.DataSet.FieldByName('CATYPE').AsString <> '' then
  begin
    iCAType := StrToInt(dsSubject.DataSet.FieldByName('CATYPE').AsString);
    case iCAType of
      1 : txtCorpActType.Caption := 'HMETD';
      2 : txtCorpActType.Caption := 'Cash Dividen';
      3 : txtCorpActType.Caption := 'Stock Dividen';
      4 : txtCorpActType.Caption := 'Mix';
      5 : txtCorpActType.Caption := 'Stock Bonus';
      6 : txtCorpActType.Caption := 'Stock Split';
      7 : txtCorpActType.Caption := 'Stock Reverse';
      8 : txtCorpActType.Caption := 'Stock Merge';
      9 : txtCorpActType.Caption := 'Coupon Payment';
    end;

    ListHeaderEntitlement(iCAType);
  end;

  cdsCorpActEntList.Close;
  cdsCorpActEntList.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsCorpActEntList.Open;
  EnsureKSEIBand;

  cdsCorpActAnno.Close;
  cdsCorpActAnno.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsCorpActAnno.Open;

//  btnGenerateEnt.Enabled := cdsCorpActEnt.IsEmpty;
end;

function TfrmCorpActEntitlement.GetCorpactType(ACAType: Integer): string;
begin
  case ACAType of
    1 : Result := 'CorpActHMETD';
    2 : Result := 'CorpActCashDividen';
    3 : Result := 'CorpActStockDividen';
    4 : Result := 'CorpActStockMix';
    5 : Result := 'CorpActStockBonus';
    6 : Result := 'CorpActStockSplit';
    7 : Result := 'CorpActStockReverse';
    8 : Result := 'CorpActStockMerge';
    9 : Result := 'CorpActCouponPayment';
  end;
end;

procedure TfrmCorpActEntitlement.gvwEntetlementC_TAXRATECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[gvwEntetlementTAXRATE.Index] <> AViewInfo.GridRecord.Values[gvwEntetlementTAXRATE.Index]) then
    ACanvas.Brush.Color := clRed;
end;

function TfrmCorpActEntitlement.FindEntitlementByAccount(const AAccountID: string): Boolean;
  function Norm(const S: string): string;
  var
    k: Integer;
  begin
    Result := '';
    for k := 1 to Length(S) do
      if not CharInSet(S[k], ['-', ' ', #9, #13, #10, #160]) then
        Result := Result + UpCase(S[k]);
  end;
var
  sKey: string;
begin
  // cari manual (abaikan "-", spasi, huruf besar/kecil) supaya tidak bergantung pada Locate
  Result := False;
  sKey := Norm(AAccountID);
  if sKey = '' then Exit;
  cdsCorpActEntList.First;
  while not cdsCorpActEntList.Eof do
  begin
    if Norm(cdsCorpActEntList.FieldByName('CUSTODYACCNO').AsString) = sKey then
    begin
      Result := True;
      Exit;
    end;
    cdsCorpActEntList.Next;
  end;
end;

procedure TfrmCorpActEntitlement.EnsureKSEIBand;
const
  KSEI_FIELDS: array[0..5] of string = (
    'C_ACCOUNTID', 'C_TAXRATE', 'C_BALPOSITION', 'C_GROSSPROCEED', 'C_PROCEEDTAX', 'C_NETPROCEED');
  KSEI_CAPTIONS: array[0..5] of string = (
    'Account Description', 'Tax Rate', 'Balance Position', 'Gross Proceed', 'Proceed Tax', 'Net Proceed');
  KSEI_WIDTHS: array[0..5] of Integer = (200, 70, 100, 100, 90, 100);
var
  i: Integer;
  oBand: TcxGridBand;
  oCol: TcxGridDBBandedColumn;
begin
  gvwEntetlement.BeginUpdate;
  try
    if gvwEntetlement.Bands.Count < 2 then
    begin
      oBand := gvwEntetlement.Bands.Add;
      oBand.Caption := 'KSEI Data';
    end
    else
      oBand := gvwEntetlement.Bands[1];
    oBand.Visible := True;

    for i := Low(KSEI_FIELDS) to High(KSEI_FIELDS) do
    begin
      oCol := TcxGridDBBandedColumn(gvwEntetlement.GetColumnByFieldName(KSEI_FIELDS[i]));
      if oCol = nil then
      begin
        // field harus ada di cdsCorpActEntList (hasil query server)
        if cdsCorpActEntList.FindField(KSEI_FIELDS[i]) = nil then
          Continue;
        oCol := gvwEntetlement.CreateColumn;
        oCol.DataBinding.FieldName := KSEI_FIELDS[i];
        oCol.Caption := KSEI_CAPTIONS[i];
        oCol.Width := KSEI_WIDTHS[i];
        if KSEI_FIELDS[i] = 'C_ACCOUNTID' then
          oCol.PropertiesClass := TcxTextEditProperties
        else
        begin
          oCol.PropertiesClass := TcxCurrencyEditProperties;
          TcxCurrencyEditProperties(oCol.Properties).DisplayFormat := ',0.##';
        end;
        oCol.Options.Editing := False;
        oCol.Position.BandIndex := oBand.Index;
        oCol.OnCustomDrawCell := gvwKSEICustomDrawCell;   // merah kalau beda dengan Bofis
      end;
      oCol.Visible := True;   // ListHeaderEntitlement menyembunyikan semua kolom
    end;
  finally
    gvwEntetlement.EndUpdate;
  end;
end;

procedure TfrmCorpActEntitlement.gvwKSEICustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  oRec: TcxCustomGridRecord;
  sField: string;
  vKSEI: Variant;
  bCash, bDiff: Boolean;

  function Num(AColumn: TcxGridDBBandedColumn): Double;
  var
    v: Variant;
  begin
    v := oRec.Values[AColumn.Index];
    if VarIsNull(v) or VarIsEmpty(v) then
      Result := 0
    else
      Result := v;
  end;

begin
  if not (AViewInfo.Item is TcxGridDBBandedColumn) then Exit;
  oRec := AViewInfo.GridRecord;
  if oRec = nil then Exit;

  // baris tanpa data KSEI (belum diupload / tidak ada di file): tidak diwarnai
  vKSEI := oRec.Values[AViewInfo.Item.Index];
  if VarIsNull(vKSEI) or VarIsEmpty(vKSEI) then Exit;

  sField := TcxGridDBBandedColumn(AViewInfo.Item).DataBinding.FieldName;
  bCash  := dsSubject.DataSet.FieldByName('CATYPE').AsString = '2';
  bDiff  := False;

  if sField = 'C_TAXRATE' then
    bDiff := Abs(Num(gvwEntetlementTAXRATE) * 100 - Double(vKSEI)) >= 0.0001
  else if sField = 'C_BALPOSITION' then
    bDiff := Abs(Num(gvwEntetlementAV_QTY) - Double(vKSEI)) >= 0.01
  else if sField = 'C_PROCEEDTAX' then
    bDiff := Abs(Num(gvwEntetlementTAXAMT) - Double(vKSEI)) >= 0.01
  else if sField = 'C_GROSSPROCEED' then
  begin
    if bCash then
      bDiff := Abs(Num(gvwEntetlementCA_AMT) - Double(vKSEI)) >= 0.01
    else
      bDiff := Abs(Num(gvwEntetlementCA_QTY) - Double(vKSEI)) >= 0.01;
  end
  else if sField = 'C_NETPROCEED' then
  begin
    if bCash then
      bDiff := Abs(Num(gvwEntetlementCA_NETAMT) - Double(vKSEI)) >= 0.01
    else
      bDiff := Abs(Num(gvwEntetlementCA_NETQTY) - Double(vKSEI)) >= 0.01;
  end
  else if sField = 'C_ACCOUNTID' then
    bDiff := not SameText(Trim(VarToStr(vKSEI)),
                          Trim(VarToStr(oRec.Values[gvwEntetlementCUSTODYACCNO.Index])));

  if bDiff then
  begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color  := clWhite;
  end;
end;

procedure TfrmCorpActEntitlement.ListHeaderEntitlement(
  ACorpActType: Integer);
var
  i: Integer;
begin
  for i := 0 to gvwEntetlement.ColumnCount -1 do
    gvwEntetlement.Columns[i].Visible := False;

  gvwEntetlementACCNO.Visible := True;
  gvwEntetlementACCNAME.Visible := True;
  gvwEntetlementAV_QTY.Visible := True;
  gvwEntetlementRECON.Visible := True;
//  gvwEntetlementCUSTODYACCNO.Visible := True;
  gvwEntetlementSALESCODE.Visible := True;
  gvwEntetlementAV_QTY.Visible := True;
  gvwEntetlementCA_PRICE.Visible := (ACorpActType in [3, 4, 5, 6, 7, 8]);
  gvwEntetlementCCYCODE.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementCA_AMT.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementTAXPCNT.Visible := (ACorpActType in [2, 3, 4, 9]);
  gvwEntetlementTAXAMT.Visible := (ACorpActType in [2, 3, 4, 9]);
  gvwEntetlementCA_NETAMT.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementSTAT.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementCA_QTY.Visible := (ACorpActType in [1, 3, 4, 5, 6, 7, 8]);
  gvwEntetlementWT_INSTRUCTION.Visible := (ACorpActType in [2, 3, 4]);
  gvwEntetlementEXERQTY.Visible := (ACorpActType in [1]);
  gvwEntetlementEXER_AMT.Visible := (ACorpActType in [1]);
  gvwEntetlementSTOCKTAXAMT.Visible := (ACorpActType in [3, 4]);
  gvwEntetlementAVGPRICE.Visible := (ACorpActType in [6, 7]);
  gvwEntetlementCA_NETQTY.Visible := (ACorpActType in [3, 4]);

  PaymentDate.Visible := (ACorpActType in [1, 2, 3, 4, 9]);
  DistributionDate.Visible := (ACorpActType in [1, 5, 6, 7, 8]);

  gvwEntetlementCA_QTY.Caption := txtCorpActType.Caption + ' (Qty)';
  gvwEntetlementCA_PRICE.Caption := txtCorpActType.Caption + ' (Price)';
  gvwEntetlementCA_AMT.Caption := txtCorpActType.Caption + ' (IDR)';
  gvwEntetlementCA_NETAMT.Caption := 'Net ' + txtCorpActType.Caption + ' (IDR)';
  gvwEntetlementCA_NETQTY.Caption := 'Net ' + txtCorpActType.Caption + ' (Qty)';
  gvwEntetlementAVGPRICE.Caption := txtCorpActType.Caption + ' Avg. Price';

//  gvwEntetlementC_TAXRATE.Visible      := True;
//  gvwEntetlementC_BALPOSITION.Visible  := True;
//  gvwEntetlementC_INSTRUMENT.Visible   := False;
//  gvwEntetlementC_GROSSPROCEED.Visible := True;
//  gvwEntetlementC_PROCEEDTAX.Visible   := True;
//  gvwEntetlementC_NETPROCEED.Visible   := True;

//  case ACorpActType of
//    1 : begin
//          gvwEntetlementCA_PRICE.Caption := 'Excercise (Price)';
//        end;
//    else
//      gvwEntetlementCA_PRICE.Caption := 'Entitlement (Price)';
//  end;

  if gvwEntetlementCA_AMT.Visible then
  begin
    if cdsCorpActEntCA_AMT.AsFloat = 1 then
      gvwEntetlementCA_AMT.Visible := False;
  end;

end;

end.
