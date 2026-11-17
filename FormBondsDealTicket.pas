unit FormBondsDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, cxDBEdit, cxImageComboBox, cxCurrencyEdit, Datasnap.DBClient,
  NClientDataset, Vcl.ExtCtrls, dxLayoutLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  cxCheckBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter, Vcl.DBCtrls,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmBondsDealTicket = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtInstrument: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    txtTradeType: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    txtFaceValue: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    txtAccSell: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    txtOfferPrice: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    txtAccBuy: TcxDBLookupComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    txtBidPrice: TcxDBCurrencyEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cdsCouponPayment: TNClientDataset;
    cdsCouponPaymentINSTRUMENT_ID: TLargeintField;
    cdsCouponPaymentINSTRUMENT_CODE: TStringField;
    cdsCouponPaymentSHORTNAME: TStringField;
    cdsCouponPaymentMATURITYDATE: TDateTimeField;
    cdsCouponPaymentCOUPONDATE: TDateTimeField;
    cdsCouponPaymentINTERESTRATE: TFloatField;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    pnlSell: TPanel;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl1Item20: TdxLayoutItem;
    pnlBuy: TPanel;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    cdsCouponPaymentCCY: TStringField;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cdsCouponPaymentCALCULATE_DAYS_METHOD: TIntegerField;
    cdsCouponPaymentCOUNTINGDAYS_METHOD: TIntegerField;
    cdsCouponPaymentDAYSOFYEAR: TIntegerField;
    cdsCouponPaymentCOUPON_IN_YEAR: TIntegerField;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    txtQuotationLimit: TcxCurrencyEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cdsQuotationDealTicket: TNClientDataset;
    txtHardLimitDealer: TcxCurrencyEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    txtSoftLimitDealer: TcxCurrencyEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl4Item1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwBid: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxGrid2: TcxGrid;
    gvwOffer: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    dsQuotationDealTicket: TDataSource;
    txtCashLimit: TcxCurrencyEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    txtBondsLimit: TcxCurrencyEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cdsUserLimit: TNClientDataset;
    cdsUserLimitUSERID: TStringField;
    cdsUserLimitHARDLIMIT: TFloatField;
    cdsUserLimitSOFTLIMIT: TFloatField;
    cdsUserLimitTEMPLIMIT: TFloatField;
    dxLayoutControl4Group2: TdxLayoutGroup;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutControl1Item25: TdxLayoutItem;
    gvwAquisitionBonds: TcxGridDBBandedTableView;
    cdsAquisitionBonds: TNClientDataset;
    dsAquisitionBonds: TDataSource;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    cdsCouponPaymentMARKETCODE: TStringField;
    cdsMarket: TNClientDataset;
    cdsMarketMARKETCODE: TStringField;
    cdsMarketMARKETDESC: TStringField;
    cdsMarketINITCODE: TStringField;
    cdsMarketCCY: TStringField;
    cdsMarketCCYTRANS: TStringField;
    cdsMarketCCYSETTLE: TStringField;
    cdsMarketHOLDTAX: TFloatField;
    cdsMarketCAPGAINTAX: TFloatField;
    txtDueDays: TcxDBCurrencyEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    cdsAccCashPosition: TNClientDataset;
    cdsAccCashPositionACCID: TLargeintField;
    cdsAccCashPositionACCNO: TStringField;
    cdsAccCashPositionACCNAME: TStringField;
    cdsAccCashPositionCCY: TStringField;
    cdsAccCashPositionCashOnHand: TFloatField;
    cdsAccCashPositionCashOnHold: TFloatField;
    cdsAccCashPositionARAmt: TFloatField;
    cdsAccCashPositionApAmt: TFloatField;
    cdsAccCashPositionNetARAP: TFloatField;
    cdsAccCashPositionCashPosition: TFloatField;
    cdsAccInstrumentBond: TNClientDataset;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    txtCapGain: TcxDBCurrencyEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutControl1Item30: TdxLayoutItem;
    cdsMarketBONDSWHT: TFloatField;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group4: TdxLayoutGroup;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Group6: TdxLayoutGroup;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Group7: TdxLayoutGroup;
    gvwBidOFFER_PRICE: TcxGridDBBandedColumn;
    gvwBidBOTTOM_OFFER_PRICE: TcxGridDBBandedColumn;
    gvwBidTOP_OFFER_PRICE: TcxGridDBBandedColumn;
    gvwOfferBID_PRICE: TcxGridDBBandedColumn;
    gvwOfferBOTTOM_BID_PRICE: TcxGridDBBandedColumn;
    gvwOfferTOP_BID_PRICE: TcxGridDBBandedColumn;
    cdsBondsCashPos: TNClientDataset;
    cdsBondsCashPosVALUEDATE: TDateField;
    cdsBondsCashPosACCID: TLargeintField;
    cdsBondsCashPosCCY: TStringField;
    cdsBondsCashPosACCNO: TStringField;
    cdsBondsCashPosCASH_ONHAND: TFloatField;
    cdsBondsCashPosCASH_ONHOLD: TFloatField;
    cdsBondsCashPosARAMT: TFloatField;
    cdsBondsCashPosAPAMT: TFloatField;
    cdsBondsCashPosCASH_OUTS: TFloatField;
    cdsBondsCashPosBUY_AMT: TFloatField;
    cdsBondsCashPosSELL_AMT: TFloatField;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxLayoutControl4Group7: TdxLayoutGroup;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    cdsCalcFactor: TNClientDataset;
    dxLayoutControl4Group10: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group18: TdxLayoutGroup;
    dxLayoutControl1Group19: TdxLayoutGroup;
    dxLayoutControl1Group20: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    txtCostPrice: TcxDBCurrencyEdit;
    dxLayoutControl4Item5: TdxLayoutItem;
    cxDBCurrencyEdit16: TcxDBCurrencyEdit;
    dxLayoutControl4Item6: TdxLayoutItem;
    cxDBCurrencyEdit17: TcxDBCurrencyEdit;
    dxLayoutControl3Item7: TdxLayoutItem;
    cxDBCurrencyEdit18: TcxDBCurrencyEdit;
    dxLayoutControl3Item8: TdxLayoutItem;
    cdsCalcFactorACCRUED_FACTOR: TFloatField;
    cdsCalcFactorCOUPON_DAYS: TFloatField;
    cdsCalcFactorACCRUED_DAYS: TFloatField;
    cdsCalcFactorHOLDING_DAYS: TFloatField;
    cdsCalcFactorHOLDING_FACTOR: TFloatField;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl1Item32: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl4Item7: TdxLayoutItem;
    cdsDetailInstrumentBonds: TNClientDataset;
    cdsStockPos: TNClientDataset;
    cdsStockPosVALUEDATE: TDateField;
    cdsStockPosACQDATE: TDateField;
    cdsStockPosACCID: TLargeintField;
    cdsStockPosACCNO: TStringField;
    cdsStockPosSTOCKID: TIntegerField;
    cdsStockPosSTOCKCODE: TStringField;
    cdsStockPosAVGPRICE: TFloatField;
    cdsStockPosQTY_ONHAND: TFloatField;
    cdsStockPosQTY_OUTS: TFloatField;
    cdsStockPosQTY_ONHOLD: TFloatField;
    cdsStockPosQTY_BAL: TFloatField;
    cdsStockPosQTY_OVERDUE: TFloatField;
    cdsStockPosQTY_DLV: TFloatField;
    cdsStockPosQTY_RCV: TFloatField;
    cdsStockPosPROFIT_LOSS: TFloatField;
    cdsStockPosBUY_VAL: TFloatField;
    cdsStockPosSELL_VAL: TFloatField;
    cdsQuotationDealTicketTRADE_DATE: TDateTimeField;
    cdsQuotationDealTicketINSTRUMENT_ID: TLargeintField;
    cdsQuotationDealTicketINSTRUMENT_CODE: TStringField;
    cdsQuotationDealTicketSHORTNAME: TStringField;
    cdsQuotationDealTicketBOTTOM_BID_PRICE: TFloatField;
    cdsQuotationDealTicketTOP_BID_PRICE: TFloatField;
    cdsQuotationDealTicketBID_PRICE: TFloatField;
    cdsQuotationDealTicketBOTTOM_OFFER_PRICE: TFloatField;
    cdsQuotationDealTicketTOP_OFFER_PRICE: TFloatField;
    cdsQuotationDealTicketOFFER_PRICE: TFloatField;
    cdsQuotationDealTicketHARDLIMIT: TFloatField;
    cdsQuotationDealTicketMODDA: TDateTimeField;
    cdsQuotationDealTicketMODUI: TStringField;
    cdsQuotationDealTicketAPPDA: TDateTimeField;
    cdsQuotationDealTicketAPPUI: TStringField;
    cdsQuotationDealTicketISDEL: TIntegerField;
    cdsQuotationDealTicketID: TLargeintField;
    cdsQuotationDealTicketYIELDBUY: TFloatField;
    cdsQuotationDealTicketYIELDSELL: TFloatField;
    cdsBondsCashPosMODDA: TDateTimeField;
    cdsBondsCashPosMODUI: TStringField;
    cdsBondsCashPosAPPDA: TDateTimeField;
    cdsBondsCashPosAPPUI: TStringField;
    cdsBondsCashPosUNDER4Y: TIntegerField;
    cdsBondsCashPosUNDER4YDA: TDateTimeField;
    cdsBondsCashPosNOTES4Y: TStringField;
    cdsBondsCashPosISDEL: TIntegerField;
    cdsBondsCashPosID: TLargeintField;
    cdsAccCreditLimit: TNClientDataset;
    cdsAccCreditLimitACCID: TLargeintField;
    cdsAccCreditLimitCCCLS_ID: TLargeintField;
    cdsAccCreditLimitCCLSSNAME: TStringField;
    cdsAccCreditLimitCC_TYPE: TStringField;
    cdsAccCreditLimitTL_CASHVALUATE: TFloatField;
    cdsAccCreditLimitTL_STOCKVALUATE: TFloatField;
    cdsAccCreditLimitTLB_OVERLIMIT: TStringField;
    cdsAccCreditLimitTLB_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLB_MRG_NONVALSTOCK: TStringField;
    cdsAccCreditLimitTLB_OVERDUE: TStringField;
    cdsAccCreditLimitTLS_SHORTSELL: TStringField;
    cdsAccCreditLimitTLS_NOTVALIDSTATUS: TStringField;
    cdsAccCreditLimitTLS_OVERDUE: TStringField;
    cdsAccCreditLimitRATIO_MRGCALL: TFloatField;
    cdsAccCreditLimitRATIO_MRGWARING: TFloatField;
    cdsAccCreditLimitRATIO_FORCESELL: TFloatField;
    cdsAccCreditLimitFORCESELL_DAY: TIntegerField;
    cdsAccCreditLimitCR_VAL: TFloatField;
    cdsAccCreditLimitBUY_LIMIT: TFloatField;
    cdsAccCreditLimitSELL_LIMIT: TFloatField;
    cdsAccCreditLimitMODDA: TDateTimeField;
    cdsAccCreditLimitMODUI: TStringField;
    cdsAccCreditLimitAPPDA: TDateTimeField;
    cdsAccCreditLimitAPPUI: TStringField;
    cdsAccCreditLimitUNDER4Y: TIntegerField;
    cdsAccCreditLimitUNDER4YDA: TDateTimeField;
    cdsAccCreditLimitNOTES4Y: TStringField;
    cdsAccCreditLimitISDEL: TIntegerField;
    cdsAccCreditLimitID: TLargeintField;
    cdsDetailInstrumentBondsINSTRUMENT_ID: TLargeintField;
    cdsDetailInstrumentBondsINSTRUMENT_CODE: TStringField;
    cdsDetailInstrumentBondsSHORTNAME: TStringField;
    cdsDetailInstrumentBondsMATURITYDATE: TDateTimeField;
    cdsDetailInstrumentBondsCCY: TStringField;
    cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsCOUNTINGDAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsDAYSOFYEAR: TIntegerField;
    cdsDetailInstrumentBondsCOUPON_IN_YEAR: TIntegerField;
    cdsDetailInstrumentBondsMARKETCODE: TStringField;
    cdsDetailInstrumentBondsLASTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsNEXTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsINTERESTRATE: TFloatField;
    cdsDetailInstrumentBondsLOCALCODE: TStringField;
    cdsAquisitionBondsVALUEDATE: TDateField;
    cdsAquisitionBondsACCID: TLargeintField;
    cdsAquisitionBondsSTOCKID: TIntegerField;
    cdsAquisitionBondsAVGPRICE: TFloatField;
    cdsAquisitionBondsAVAIL: TFloatField;
    gvwAquisitionBondsVALUEDATE: TcxGridDBBandedColumn;
    gvwAquisitionBondsACCID: TcxGridDBBandedColumn;
    gvwAquisitionBondsSTOCKID: TcxGridDBBandedColumn;
    gvwAquisitionBondsAVGPRICE: TcxGridDBBandedColumn;
    gvwAquisitionBondsAVAIL: TcxGridDBBandedColumn;
    cdsAquisitionBondsACQDATE: TDateField;
    txtConsDate: TcxDBDateEdit;
    dxLayoutControl4Item8: TdxLayoutItem;
    dxLayoutControl4Group1: TdxLayoutGroup;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cdsStockPosNonSafeKeep: TNClientDataset;
    cdsStockPosNonSafeKeepACCID: TLargeintField;
    cdsStockPosNonSafeKeepAVAIL: TFloatField;
    cdsAccInstrumentBondACCID: TLargeintField;
    cdsAccInstrumentBondSTOCKID: TIntegerField;
    cdsAccInstrumentBondAVAIL: TFloatField;
    cdsCashPosNonSafeKeep: TNClientDataset;
    cdsCashPosNonSafeKeepACCID: TLargeintField;
    cdsCashPosNonSafeKeepBUY_AMT: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtOfferPriceExit(Sender: TObject);
    procedure txtBidPriceExit(Sender: TObject);
    procedure txtHardLimitDealerPropertiesEditValueChanged(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure txtFaceValueExit(Sender: TObject);
    procedure txtAccBuyExit(Sender: TObject);
    procedure txtAccSellExit(Sender: TObject);
    procedure txtDueDaysExit(Sender: TObject);
    procedure txtCostPriceExit(Sender: TObject);
    procedure txtInstrumentExit(Sender: TObject);
    procedure txtInstrumentPropertiesCloseUp(Sender: TObject);
    procedure gvwAquisitionBondsCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    FUserHardLimit: Double;
    FOldInstrumentID: Integer;
    FContinue: Boolean;
    FBAccType: string;
    FSAccType: string;
    FBasis: integer;

    procedure GetHardSoftLimit;
    procedure GetSumQuotationLimit;
    procedure UpdateUserLimit;
    procedure GetAquisitionPrice;
    procedure GetOldValueBeforeEdit;
    procedure OpeningCashPos(ATradeDate: TDateTime; AAccID: Integer);

    procedure UpdateCashPos;
    procedure UpdateStockPos;

    procedure GetBuySellPrice;
    procedure GetSellSide;
    procedure GetBuySide;

    function CheckAllLimit: Boolean;
    function GetAccInstrumentBondLimit(ATradeDate: TDateTime; AAccID: Integer; AInstrID: Integer): Double;
    function GetAccCashPosition(ATradeDate: TDateTime; AAccID: Integer): Double;

    function CheckSellCreditLimit(ABondsLimit: Double): Boolean;
    function CheckBuyCreditLimit(ACashLimit: Double): Boolean;

    procedure ProcessAll;
  public
    { Public declarations }
  end;

var
  frmBondsDealTicket: TfrmBondsDealTicket;

implementation

{$R *.dfm}

uses DataGlobal, FormBondsDealTicketList, DataLookup;

procedure TfrmBondsDealTicket.btnOKClick(Sender: TObject);
var
  bContinue: Boolean;
  dOfferPrice,
  dBidPrice: Double;
begin
  bContinue   := True;
  dOfferPrice := dsSubject.DataSet.FieldByName('BPRICE').AsFloat;
  dBidPrice   := dsSubject.DataSet.FieldByName('SPRICE').AsFloat;

//  if (VarIsEmpty(dsSubject.DataSet.FieldByName('SCTPREFF').AsString) or VarIsNull(dsSubject.DataSet.FieldByName('SCTPREFF').AsString)) and
//     (VarIsEmpty(dsSubject.DataSet.FieldByName('BCTPREFF').AsString) or VarIsNull(dsSubject.DataSet.FieldByName('BCTPREFF').AsString)) then
//  begin
//    MessageDlg('CTP Refference can not empty...', mtError, [mbOK], 0);
//    bContinue := False;
//  end;

//  if (dOfferPrice > cdsQuotationDealTicketTOP_OFFER_PRICE.AsFloat) or (dOfferPrice < cdsQuotationDealTicketBOTTOM_OFFER_PRICE.AsFloat) then
//  begin
//    MessageDlg('Offer Price out of range...', mtError, [mbOK], 0);
//    bContinue := False;
//    txtOfferPrice.SetFocus;
//  end;
//
//  if bContinue and ((dBidPrice > cdsQuotationDealTicketTOP_BID_PRICE.AsFloat) or (dBidPrice < cdsQuotationDealTicketBOTTOM_BID_PRICE.AsFloat)) then
//  begin
//    MessageDlg('Bid Price out of range...', mtError, [mbOK], 0);
//    bContinue := False;
//    txtBidPrice.SetFocus;
//  end;

//--> untuk sementara limit2an dilepas aja dulu okeh
//  if not FContinue then
//  begin
//    MessageDlg('Sell capital gain is loss...', mtError, [mbOK], 0);
//    bContinue := False;
//  end;
//
//  if bContinue then
//  begin
//    if CheckAllLimit then
//    begin
//      UpdateUserLimit;
//
      if dsSubject.DataSet.State in [dsEdit] then
      begin
        if dsSubject.DataSet.FieldByName('INSTRUMENT_ID').OldValue <> dsSubject.DataSet.FieldByName('INSTRUMENT_ID').NewValue then
          GetOldValueBeforeEdit;
      end;

      inherited;
//    end;
//  end;
end;

function TfrmBondsDealTicket.CheckAllLimit: Boolean;
var
  bResult: Boolean;
  fCashLimit,
  fBondLimit: Double;
begin
  bResult    := True;
  fCashLimit := txtCashLimit.EditValue - (dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat * (dsSubject.DataSet.FieldByName('BPRICE').AsFloat/100));
  fBondLimit := txtBondsLimit.EditValue - dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat;

//  ceritanya ini check limit untuk seller
  cdsAccCreditLimit.Close;
  cdsAccCreditLimit.Params[0].AsInteger := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
  cdsAccCreditLimit.Open;

  if cdsAccCreditLimitTLS_SHORTSELL.AsString = 'A' then
    Result := True
  else
    bResult := CheckSellCreditLimit(fBondLimit);


//  ceritanya ini check limit untuk seller
  cdsAccCreditLimit.Close;
  cdsAccCreditLimit.Params[0].AsInteger := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
  cdsAccCreditLimit.Open;

  if (bResult) then
  begin
    if (cdsAccCreditLimitTLB_OVERLIMIT.AsString = 'A') then
      bResult := True
    else
      bResult := CheckBuyCreditLimit(fCashLimit);
  end;

  if bResult then
  begin
    if txtHardLimitDealer.EditValue < 0 then
    begin
      txtHardLimitDealer.Style.Color      := clRed;
      txtHardLimitDealer.Style.Font.Color := clWhite;

      MessageDlg('Hard Limit Dealer is out of range...', mtError, [mbOK], 0);
      bResult := False;
    end;
  end;

  if txtSoftLimitDealer.EditValue < 0 then
    MessageDlg('Soft Limit Dealer is out of range', mtError, [mbOK], 0);

  Result := bResult;
end;

function TfrmBondsDealTicket.CheckBuyCreditLimit(ACashLimit: Double): Boolean;
begin
  Result := True;

  if cdsAccCreditLimitTLB_OVERLIMIT.AsString = 'R' then
  begin
    if FBAccType = 'I' then
    begin
      if ACashLimit < 0 then
      begin
        MessageDlg('Cash Client Limit is out of range', mtError, [mbOK], 0);
        Result := False;
      end;
    end
    else if FBAcctype = 'N' then
    begin
      if ACashLimit < 0 then
      begin
        MessageDlg('Cash Client Limit is out of range', mtError, [mbOK], 0);
        Result := False;
      end;
    end;
  end;
end;

function TfrmBondsDealTicket.CheckSellCreditLimit(ABondsLimit: Double): Boolean;
var
  dCreditLimit: Double;
begin
  Result := True;

  if cdsAccCreditLimitTLS_SHORTSELL.AsString = 'R' then
  begin
    if FSAccType = 'I' then
    begin
      dCreditLimit := ABondsLimit;

      if ABondsLimit < 0 then
      begin
        MessageDlg('Bonds Client Limit is out of range', mtError, [mbOK], 0);
        Result := False;
      end;
    end
    else if FSAccType = 'N' then
    begin
      if ABondsLimit < 0 then
      begin
        MessageDlg('Bonds Client Limit is out of range', mtError, [mbOK], 0);
        Result := False;
      end
      else
      begin
//        cdsAquisitionBonds.First;
        if dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat > cdsAquisitionBondsAVAIL.AsFloat then
        begin
          MessageDlg('Face value is greater than avail aquisition bonds...', mtError, [mbOK], 0);
          Result := False;
        end;
      end;
    end;
  end;
end;

procedure TfrmBondsDealTicket.txtCostPriceExit(Sender: TObject);
begin
  inherited;
  ProcessAll;
end;

procedure TfrmBondsDealTicket.txtDueDaysExit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
    dsSubject.DataSet.FieldByName('VALUEDATE').AsDateTime := dmGlobal.RemoteServer.GetValueDate(dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime, dsSubject.DataSet.FieldByName('DUEDAYS').AsInteger);
end;

procedure TfrmBondsDealTicket.txtInstrumentExit(Sender: TObject);
var
  oDealTicket: TDataSet;
  iInstrumentID: Integer;
  dTradeDate: TDateTime;
begin
  oDealTicket   := dsSubject.DataSet;
  iInstrumentID := oDealTicket.FieldByName('INSTRUMENT_ID').AsInteger;
  dTradeDate    := oDealTicket.FieldByName('TRADEDATE').AsDateTime;

  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    cdsDetailInstrumentBonds.Close;
    cdsDetailInstrumentBonds.Params[0].AsInteger := iInstrumentID;
    cdsDetailInstrumentBonds.Params[1].AsDate    := dTradeDate;
    cdsDetailInstrumentBonds.Open;

    dsSubject.DataSet.FieldByName('INSTRUMENT_CODE').AsString := cdsDetailInstrumentBondsSHORTNAME.AsString;

    oDealTicket.FieldByName('MATURITY_DATE').AsDateTime := cdsDetailInstrumentBondsMATURITYDATE.AsDateTime;

    cdsMarket.Close;
    cdsMarket.Params[0].AsString := cdsDetailInstrumentBondsMARKETCODE.AsString;
    cdsMarket.Open;

    oDealTicket.FieldByName('INSTRUMENT_CODE').AsString  := cdsDetailInstrumentBondsLOCALCODE.AsString;
    oDealTicket.FieldByName('SHORTNAME').AsString        := cdsDetailInstrumentBondsSHORTNAME.AsString;
    oDealTicket.FieldByName('INTERESTRATE').AsFloat      := cdsDetailInstrumentBondsINTERESTRATE.AsFloat;
    oDealTicket.FieldByName('CCY').AsString              := cdsDetailInstrumentBondsCCY.AsString;
    oDealTicket.FieldByName('LASTCOUPONDATE').AsDateTime := cdsDetailInstrumentBondsLASTCOUPONDATE.AsDateTime;
    oDealTicket.FieldByName('NEXTCOUPONDATE').AsDateTime := cdsDetailInstrumentBondsNEXTCOUPONDATE.AsDateTime;
    oDealTicket.FieldByName('VALUEDATE').AsDateTime      := dmGlobal.RemoteServer.GetValueDate(oDealTicket.FieldByName('TRADEDATE').AsDateTime, oDealTicket.FieldByName('DUEDAYS').AsInteger);

//    cdsQuotationDealTicket.Close;
//    cdsQuotationDealTicket.Params[0].AsDate    := dTradeDate;
//    cdsQuotationDealTicket.Params[1].AsInteger := iInstrumentID;
//    cdsQuotationDealTicket.Open;
//
//    GetBuySellPrice;

    txtQuotationLimit.EditValue := cdsQuotationDealTicketHARDLIMIT.AsFloat;

    GetAquisitionPrice;
//    GetSumQuotationLimit;
    ProcessAll;

  end;
end;

procedure TfrmBondsDealTicket.txtInstrumentPropertiesCloseUp(
  Sender: TObject);
var
  sIns: string;
begin
  inherited;
  sIns := txtInstrument.Text;

  cdsQuotationDealTicket.Close;
  cdsQuotationDealTicket.Params[0].AsDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
  cdsQuotationDealTicket.Params[1].AsInteger := txtInstrument.EditValue;
  cdsQuotationDealTicket.Open;

  GetBuySellPrice;
end;

procedure TfrmBondsDealTicket.txtAccSellExit(Sender: TObject);
var
  dTradeDate: TDateTime;
  iAccID: Integer;
  sAccType, sSafeKeep: string;
  fTax: Double;
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    dsSubject.DataSet.FieldByName('BACCCODE').AsString := dsSubject.DataSet.FieldByName('BACCCODETMP').AsString;
    dsSubject.DataSet.FieldByName('BACCNAME').AsString := dsSubject.DataSet.FieldByName('BACCNAMETMP').AsString;
    dsSubject.DataSet.FieldByName('BSALES').AsInteger  := dsSubject.DataSet.FieldByName('BSALESTMP').AsInteger;
  end;

  iAccID := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
  if dmGlobal.IntDataLookup.cdsLuCustomerBonds.Locate('ACCID', iAccID, []) then
  begin
    sAccType  := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCTYPE.AsString;
    fTax      := dmGlobal.IntDataLookup.cdsLuCustomerBondsBTAX.AsFloat;
    sSafeKeep := dmGlobal.IntDataLookup.cdsLuCustomerBondsCUST_TYPE.AsString;

    dsSubject.DataSet.FieldByName('BTAX').AsFloat := fTax;
    FBAccType := sAccType;
  end;

  ProcessAll;
end;

procedure TfrmBondsDealTicket.txtAccBuyExit(Sender: TObject);
var
  dTradeDate: TDateTime;
  iAccID,
  iInstrumentID: Integer;
  sAccType, sSafeKeep: string;
  fTax, dBondsLimit: Double;
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    dsSubject.DataSet.FieldByName('SACCCODE').AsString := dsSubject.DataSet.FieldByName('SACCCODETMP').AsString;
    dsSubject.DataSet.FieldByName('SACCNAME').AsString := dsSubject.DataSet.FieldByName('SACCNAMETMP').AsString;
    dsSubject.DataSet.FieldByName('SSALES').AsInteger  := dsSubject.DataSet.FieldByName('SSALESTMP').AsInteger;
  end;

  dTradeDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
  iAccID        := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
  iInstrumentID := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;

  if dmGlobal.IntDataLookup.cdsLuCustomerBonds.Locate('ACCID', iAccID, []) then
  begin
    sAccType  := dmGlobal.IntDataLookup.cdsLuCustomerBondsACCTYPE.AsString;
    fTax      := dmGlobal.IntDataLookup.cdsLuCustomerBondsSTAX.AsFloat;
    sSafeKeep := dmGlobal.IntDataLookup.cdsLuCustomerBondsCUST_TYPE.AsString;

    if sAccType = 'N' then
    begin
      txtCostPrice.Style.Color                      := clBtnFace;
      txtCostPrice.Properties.ReadOnly              := True;
      txtConsDate.Style.Color                       := clBtnFace;
      txtConsDate.Properties.ReadOnly               := True;
      dsSubject.DataSet.FieldByName('STAX').AsFloat := fTax;
    end
    else
    begin
      txtCostPrice.Style.Color                      := clWhite;
      txtCostPrice.Properties.ReadOnly              := False;
      txtConsDate.Style.Color                       := clWhite;
      txtConsDate.Properties.ReadOnly               := False;
      dsSubject.DataSet.FieldByName('STAX').AsFloat := fTax;
    end;

    FSAccType := sAccType;
  end;

  GetAquisitionPrice;
  ProcessAll;
  dBondsLimit := GetAccInstrumentBondLimit(dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime, dsSubject.DataSet.FieldByName('SACCID').AsInteger, dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger);
  if FSAccType = 'N' then
    txtBondsLimit.Value := dBondsLimit
  else if FSAccType = 'I' then
  begin
//    if sSafeKeep = '2' then
//      txtBondsLimit.Value := dBondsLimit
//    else
//    begin
      cdsStockPosNonSafeKeep.Close;
      cdsStockPosNonSafeKeep.Params[0].AsInteger := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
      cdsStockPosNonSafeKeep.Params[1].AsDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
      cdsStockPosNonSafeKeep.Open;

      cdsAccCreditLimit.Close;
      cdsAccCreditLimit.Params[0].AsInteger := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
      cdsAccCreditLimit.Open;

      txtBondsLimit.Value := cdsAccCreditLimitSELL_LIMIT.AsFloat - cdsStockPosNonSafeKeepAVAIL.AsFloat;
//    end;
  end;

end;

procedure TfrmBondsDealTicket.FormCreate(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsLuAccount.Close;
  dmGlobal.IntDataLookup.cdsLuAccount.Open;

  cdsUserLimit.Close;
  cdsUserLimit.Params[0].AsString := dmGlobal.UserID;
  cdsUserLimit.Open;

  dmGlobal.IntDataLookup.luCCYOn;
  dmGlobal.IntDataLookUp.luInstrumentBondsOn(dmGlobal.RemoteServer.GetTransDate);

//  dmGlobal.IntDataLookup.cdsLuCustBondsSell.Close;
//  dmGlobal.IntDataLookup.cdsLuCustBondsSell.Open;
//
//  dmGlobal.IntDataLookup.cdsLuCustBondsBuy.Close;
//  dmGlobal.IntDataLookup.cdsLuCustBondsBuy.Open;

  FContinue := True;
end;

procedure TfrmBondsDealTicket.FormShow(Sender: TObject);
var
  dTradeDate: TDateTime;
  iBAccID, iSAccID,
  iInstrumentID: Integer;
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
  begin
    dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    dsSubject.DataSet.FieldByName('TRADETYPE').AsString   := 'RG';
    dsSubject.DataSet.FieldByName('STAT').AsString        := 'O';
    dsSubject.DataSet.FieldByName('DUEDAYS').AsInteger    := 2;
  end
  else
  begin
    cdsQuotationDealTicket.Close;
    cdsQuotationDealTicket.Params[0].AsDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
    cdsQuotationDealTicket.Params[1].AsInteger := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
    cdsQuotationDealTicket.Open;

    txtQuotationLimit.EditValue := cdsQuotationDealTicketHARDLIMIT.AsFloat;
    GetSumQuotationLimit;

    dTradeDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
    iBAccID       := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
    txtCashLimit.Value := GetAccCashPosition(dTradeDate, iBAccID);

    iSAccID       := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
    iInstrumentID := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
    txtBondsLimit.Value := GetAccInstrumentBondLimit(dTradeDate, iSAccID, iInstrumentID);

  end;

  if dsSubject.DataSet.State in [dsEdit] then
  begin
    txtAccBuy.Style.Color := clBtnFace;
    txtAccBuy.Properties.ReadOnly := True;

    txtAccSell.Style.Color := clBtnFace;
    txtAccSell.Properties.ReadOnly := True;

    txtInstrument.Style.Color := clBtnFace;
    txtInstrument.Properties.ReadOnly := True;

    txtBidPrice.Style.Color := clBtnFace;
    txtBidPrice.Properties.ReadOnly := True;

    txtOfferPrice.Style.Color := clBtnFace;
    txtOfferPrice.Properties.ReadOnly := True;
  end;

  pnlBuy.Color  := clHighlight;
  pnlSell.Color := clRed;

  txtHardLimitDealer.EditValue := cdsUserLimitHARDLIMIT.AsFloat;
  FUserHardLimit               := cdsUserLimitHARDLIMIT.AsFloat + (dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat * dsSubject.DataSet.FieldByName('BPRICE').AsFloat * 0.01);

  if dsSubject.DataSet.State in [dsInsert] then
    dsSubject.DataSet.FieldByName('VALUEDATE').AsDateTime := dmGlobal.RemoteServer.GetValueDate(dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime, dsSubject.DataSet.FieldByName('DUEDAYS').AsInteger);
  GetAquisitionPrice;
end;

function TfrmBondsDealTicket.GetAccCashPosition(ATradeDate: TDateTime;
  AAccID: Integer): Double;
begin
  cdsAccCashPosition.Close;
  cdsAccCashPosition.Params[0].AsDate    := ATradeDate;
  cdsAccCashPosition.Params[1].AsInteger := AAccID;
  cdsAccCashPosition.Open;

  Result := cdsAccCashPositionCashPosition.AsFloat;
end;

function TfrmBondsDealTicket.GetAccInstrumentBondLimit(ATradeDate: TDateTime;
  AAccID, AInstrID: Integer): Double;
begin
  cdsAccInstrumentBond.Close;
  cdsAccInstrumentBond.Params[0].AsInteger := AAccID;
  cdsAccInstrumentBond.Params[1].AsInteger := AInstrID;
  cdsAccInstrumentBond.Params[2].AsDate    := ATradeDate;
  cdsAccInstrumentBond.Open;

  Result := cdsAccInstrumentBondAVAIL.AsFloat;
end;

procedure TfrmBondsDealTicket.GetAquisitionPrice;
var
  oSubject: TDataSet;
  oAquisitionDate: TDateTime;
begin
//  oSubject := dsSubject.DataSet;
//
//  if oSubject.State in [dsInsert, dsEdit] then
//  begin
//    if dmGlobal.IntDataLookup.cdsLuCustBondsSell.Locate('ACCID', dsSubject.DataSet.FieldByName('SACCID').AsInteger, []) then
//    begin
//      if dmGlobal.IntDataLookup.cdsLuCustBondsSellCUST_TYPE.AsInteger <> 3 then
//      begin
//        cdsAquisitionBonds.Close;
//        cdsAquisitionBonds.Params[0].AsInteger := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
//        cdsAquisitionBonds.Params[1].AsInteger := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').AsInteger;
//        cdsAquisitionBonds.Params[2].AsDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
//        cdsAquisitionBonds.Open;
//      end
//      else
//      begin
//        cdsAquisitionBonds.Close;
//        cdsAquisitionBonds.Params[0].AsInteger := 0;
//        cdsAquisitionBonds.Params[1].AsInteger := 0;
//        cdsAquisitionBonds.Params[2].AsDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
//        cdsAquisitionBonds.Open;
//      end
//
//    end;
//
//    cdsCalcFactor.Close;
//    cdsCalcFactor.Params[0].AsDate    := oSubject.FieldByName('LASTCOUPONDATE').AsDateTime;
//    cdsCalcFactor.Params[1].AsDate    := oSubject.FieldByName('NEXTCOUPONDATE').AsDateTime;
//    cdsCalcFactor.Params[2].AsDate    := oSubject.FieldByName('VALUEDATE').AsDateTime;
//    cdsCalcFactor.Params[3].AsDate    := oAquisitionDate;
//    cdsCalcFactor.Params[4].AsInteger := cdsCouponPaymentCALCULATE_DAYS_METHOD.AsInteger;
//    cdsCalcFactor.Params[5].AsInteger := cdsCouponPaymentCOUPON_IN_YEAR.AsInteger;
//    cdsCalcFactor.Open;
//
//    FBasis := cdsCouponPaymentCALCULATE_DAYS_METHOD.AsInteger;
//
//    if not cdsAquisitionBonds.IsEmpty then
//    begin
//      oAquisitionDate := oSubject.FieldByName('TRADEDATE').AsDateTime;
//
//      dsSubject.DataSet.FieldByName('SCOST_PRICE').AsFloat  := cdsAquisitionBondsAVGPRICE.AsFloat;
//      dsSubject.DataSet.FieldByName('SCOSTDATE').AsDateTime := cdsAquisitionBondsACQDATE.AsDateTime;
//
////      oSubject.FieldByName('HOLDPERIOD').AsInteger := cdsCalcFactorHOLDING_DAYS.AsInteger;
//    end
//    else
//    begin
//      oAquisitionDate := oSubject.FieldByName('LASTCOUPONDATE').AsDateTime;
//
//      dsSubject.DataSet.FieldByName('SCOST_PRICE').AsFloat  := 0;
//      dsSubject.DataSet.FieldByName('SCOSTDATE').AsDateTime := oSubject.FieldByName('TRADEDATE').AsDateTime;
//
////      oSubject.FieldByName('HOLDPERIOD').AsInteger := 0;
//    end;
//
//    oSubject.FieldByName('ACCRDAYS').AsInteger        := cdsCalcFactorACCRUED_DAYS.AsInteger;
//    oSubject.FieldByName('INTEREST_AMT').AsFloat      := cdsCalcFactorACCRUED_FACTOR.AsFloat * (oSubject.FieldByName('INTERESTRATE').AsFloat / 100) * oSubject.FieldByName('FACEVALUE').AsFloat;
//    oSubject.FieldByName('PERIODECOUPON').AsInteger   := cdsCalcFactorCOUPON_DAYS.AsInteger;
////    oSubject.FieldByName('HOLDING_INTEREST').AsFloat  := cdsCalcFactorHOLDING_FACTOR.AsFloat * (oSubject.FieldByName('INTERESTRATE').AsFloat / 100) * oSubject.FieldByName('FACEVALUE').AsFloat;
//
//  end;
end;

procedure TfrmBondsDealTicket.GetBuySellPrice;
begin
  dsSubject.DataSet.FieldByName('SPRICE').AsFloat := cdsQuotationDealTicketBOTTOM_BID_PRICE.AsFloat;
  dsSubject.DataSet.FieldByName('BPRICE').AsFloat := cdsQuotationDealTicketTOP_OFFER_PRICE.AsFloat;
end;

procedure TfrmBondsDealTicket.GetBuySide;
var
  oSubject: TDataSet;
  sTax: double;
begin
//  oSubject := dsSubject.DataSet;
//
//  oSubject.FieldByName('BCOST_PRICE').AsFloat := dsSubject.DataSet.FieldByName('SPRICE').AsFloat;
//  oSubject.FieldByName('BCOSTDATE').AsDateTime:= dsSubject.DataSet.FieldByName('VALUEDATE').AsDateTime;
//  oSubject.FieldByName('BPROCEED').AsFloat    := oSubject.FieldByName('BPRICE').AsFloat / 100 *  oSubject.FieldByName('FACEVALUE').AsFloat;
//
//  if dmGlobal.IntDataLookup.cdsLuCustBondsBuy.Locate('ACCID', oSubject.FieldByName('BACCID').AsInteger, []) then
//  begin
//    if dmGlobal.IntDataLookup.cdsLuCustBondsBuyISUSEWHT.AsString = '1' then
//      oSubject.FieldByName('WHT_TAX').AsFloat   := oSubject.FieldByName('SUM_BCAPGAIN').AsFloat * (oSubject.FieldByName('BTAX').AsFloat / 100)
//    else
//      oSubject.FieldByName('WHT_TAX').AsFloat   := 0;
//    oSubject.FieldByName('BNETPROCEED').AsFloat := oSubject.FieldByName('BPROCEED').AsFloat + oSubject.FieldByName('INTEREST_AMT').AsFloat - oSubject.FieldByName('WHT_TAX').AsFloat;
//  end;
//
//  if oSubject.FieldByName('SUM_BCAPGAIN').AsFloat > 0 then
//  begin
//    oSubject.FieldByName('BCAPGAIN').AsFloat    := oSubject.FieldByName('SUM_BCAPGAIN').AsFloat;
//    oSubject.FieldByName('BCAPGAINTAX').AsFloat := oSubject.FieldByName('BCAPGAIN').AsFloat * (cdsMarketCAPGAINTAX.AsFloat / 100);
//
//    FContinue := True;
//  end
//  else
//  begin
//    oSubject.FieldByName('BCAPGAIN').AsFloat    := 0;
//    oSubject.FieldByName('BCAPGAINTAX').AsFloat := 0;
//
//    FContinue := False;
//  end;
end;

procedure TfrmBondsDealTicket.GetHardSoftLimit;
begin
  txtSoftLimitDealer.EditValue := txtHardLimitDealer.EditValue * (cdsUserLimitSOFTLIMIT.AsFloat * 0.01);

  if txtHardLimitDealer.EditValue > 0 then
  begin
    txtHardLimitDealer.Style.Color      := clMoneyGreen;
    txtHardLimitDealer.Style.Font.Color := clBlack;
  end
  else
  begin
    txtHardLimitDealer.Style.Color      := clRed;
    txtHardLimitDealer.Style.Font.Color := clWhite;
  end;

  if txtSoftLimitDealer.EditValue > 0 then
  begin
    txtSoftLimitDealer.Style.Color      := clMoneyGreen;
    txtSoftLimitDealer.Style.Font.Color := clBlack;
  end
  else
  begin
    txtSoftLimitDealer.Style.Color      := clRed;
    txtSoftLimitDealer.Style.Font.Color := clWhite;
  end;
end;

procedure TfrmBondsDealTicket.GetOldValueBeforeEdit;
var
  dHardLimit: Double;
begin
  cdsQuotationDealTicket.Close;
  cdsQuotationDealTicket.Params[0].AsDate    := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
  cdsQuotationDealTicket.Params[1].AsInteger := dsSubject.DataSet.FieldByName('INSTRUMENT_ID').OldValue;
  cdsQuotationDealTicket.Open;

  dHardLimit := cdsQuotationDealTicketHARDLIMIT.AsFloat + dsSubject.DataSet.FieldByName('FACEVALUE').OldValue;

  cdsQuotationDealTicket.Edit;
  cdsQuotationDealTicketHARDLIMIT.AsFloat := dHardLimit;
  cdsQuotationDealTicket.Post;

  dmGlobal.RemoteServer.StartTransaction;
  cdsQuotationDealTicket.ApplyUpdates(-1);
  dmGlobal.RemoteServer.CommitTransaction;
end;

procedure TfrmBondsDealTicket.GetSellSide;
  function GetHoldingInterest: Double;
  var
    ALastCouDate, ADueDate, ACostDate: TDateTime;
    dBasis: Double;
  begin
    ALastCouDate := dsSubject.DataSet.FieldByName('LASTCOUPONDATE').AsDateTime;
    ADueDate     := dsSubject.DataSet.FieldByName('VALUEDATE').AsDateTime;
    ACostDate    := dsSubject.DataSet.FieldByName('SCOSTDATE').AsDateTime;

    if FBasis = 0 then dBasis := 360 else dBasis := 365;
    if ALastCouDate < ACostDate then
    begin
      dsSubject.DataSet.FieldByName('HOLDPERIOD').AsFloat := ADueDate + 1 - ACostDate;
      Result := (ADueDate + 1 - ACostDate) / dBasis * (dsSubject.DataSet.FieldByName('INTERESTRATE').AsFloat / 100) *
                dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat * (dsSubject.DataSet.FieldByName('STAX').AsFloat/100);
    end
    else
    begin
      dsSubject.DataSet.FieldByName('HOLDPERIOD').AsInteger := 0;
      Result := 0;
    end;
  end;

var
  oSubject: TDataSet;
  sNetProceed, sTax: Double;
begin
//  oSubject := dsSubject.DataSet;
//
//  oSubject.FieldByName('SPROCEED').AsFloat    := oSubject.FieldByName('SPRICE').AsFloat / 100 *  oSubject.FieldByName('FACEVALUE').AsFloat;
//  oSubject.FieldByName('BCOST_AMT').AsFloat   := oSubject.FieldByName('SPROCEED').AsFloat;
//  oSubject.FieldByName('SCOST_AMT').AsFloat   := (oSubject.FieldByName('SCOST_PRICE').AsFloat / 100) * oSubject.FieldByName('FACEVALUE').AsFloat;
//
//  oSubject.FieldByName('HOLDING_INTEREST').AsFloat     := GetHoldingInterest;
//  oSubject.FieldByName('HOLDING_INTEREST_TAX').AsFloat := oSubject.FieldByName('HOLDING_INTEREST').AsFloat * cdsMarketHOLDTAX.AsFloat / 100;
//
//  sNetProceed := oSubject.FieldByName('SPROCEED').AsFloat + oSubject.FieldByName('INTEREST_AMT').AsFloat - oSubject.FieldByName('HOLDING_INTEREST_TAX').AsFloat;
//
//  if oSubject.FieldByName('SUM_SCAPGAIN').AsFloat > 0 then
//  begin
//    if dmGlobal.IntDataLookup.cdsLuCustBondsSell.Locate('ACCID', oSubject.FieldByName('SACCID').AsInteger, []) then
//    begin
//      if dmGlobal.IntDataLookup.cdsLuCustBondsSellISUSEWHT.AsString = '1' then
//        sTax := oSubject.FieldByName('SUM_SCAPGAIN').AsFloat * (oSubject.FieldByName('STAX').AsFloat / 100)
//      else
//        sTax := 0;
//    end;
//
//    oSubject.FieldByName('SNETPROCEED').AsFloat := sNetProceed - sTax;
//    oSubject.FieldByName('SCAPGAIN').AsFloat    := oSubject.FieldByName('SUM_SCAPGAIN').AsFloat;
//    oSubject.FieldByName('SCAPGAINTAX').AsFloat := oSubject.FieldByName('SCAPGAIN').AsFloat * cdsMarketCAPGAINTAX.AsFloat /100;
//  end
//  else
//  begin
//    oSubject.FieldByName('SNETPROCEED').AsFloat := sNetProceed;
//    oSubject.FieldByName('SCAPGAIN').AsFloat    := 0;
//    oSubject.FieldByName('SCAPGAINTAX').AsFloat := 0;
//  end;
end;

procedure TfrmBondsDealTicket.GetSumQuotationLimit;
begin
  if dsSubject.State in [dsInsert] then
  begin
    txtQuotationLimit.EditValue  := cdsQuotationDealTicketHARDLIMIT.AsFloat - dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat;
    txtHardLimitDealer.EditValue := cdsUserLimitHARDLIMIT.AsFloat - (dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat * dsSubject.DataSet.FieldByName('BPRICE').AsFloat * 0.01);
  end
  else
  begin
    if dsSubject.DataSet.FieldByName('INSTRUMENT_ID').OldValue <> dsSubject.DataSet.FieldByName('INSTRUMENT_ID').NewValue then
      txtQuotationLimit.EditValue  := cdsQuotationDealTicketHARDLIMIT.AsFloat - dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat
    else
      txtQuotationLimit.EditValue  := cdsQuotationDealTicketHARDLIMIT.AsFloat - (dsSubject.DataSet.FieldByName('FACEVALUE').NewValue - dsSubject.DataSet.FieldByName('FACEVALUE').OldValue);

    txtHardLimitDealer.EditValue   := FUserHardLimit - (dsSubject.DataSet.FieldByName('FACEVALUE').AsFloat * dsSubject.DataSet.FieldByName('BPRICE').AsFloat * 0.01);
  end;

  if txtQuotationLimit.EditValue > 0 then
  begin
    txtQuotationLimit.Style.Color      := clMoneyGreen;
    txtQuotationLimit.Style.Font.Color := clBlack;
  end
  else
  begin
    txtQuotationLimit.Style.Color      := clRed;
    txtQuotationLimit.Style.Font.Color := clWhite;
  end;
end;

procedure TfrmBondsDealTicket.gvwAquisitionBondsCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    txtBondsLimit.EditValue := gvwAquisitionBonds.Controller.SelectedRows[0].Values[4];
    dsSubject.DataSet.FieldByName('SCOST_PRICE').AsFloat  := gvwAquisitionBonds.Controller.SelectedRows[0].Values[3];// cdsAquisitionBondsAVGPRICE.AsFloat;
    dsSubject.DataSet.FieldByName('SCOSTDATE').AsDateTime := gvwAquisitionBonds.Controller.SelectedRows[0].Values[0];// cdsAquisitionBondsACQDATE.AsDateTime;
  end;
end;

procedure TfrmBondsDealTicket.OpeningCashPos(ATradeDate: TDateTime; AAccID: Integer);
begin
  cdsBondsCashPos.Close;
  cdsBondsCashPos.Params[0].AsDateTime := ATradeDate;
  cdsBondsCashPos.Params[1].AsInteger  := AAccID;
  cdsBondsCashPos.Open;
end;

procedure TfrmBondsDealTicket.ProcessAll;
var
  dBondsLimit,
  dCashLimit: Double;
  iAccID: Integer;
  sSafeKeep: string;
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    GetBuySide;
    GetSellSide;
    GetSumQuotationLimit;

    dCashLimit  := GetAccCashPosition(dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime, dsSubject.DataSet.FieldByName('BACCID').AsInteger);

    if FBAccType = 'N' then
      txtCashLimit.Value := dCashLimit
    else if FBAccType = 'I' then
    begin
      iAccID := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
      if dmGlobal.IntDataLookup.cdsLuCustomerBonds.Locate('ACCID', iAccID, []) then
        sSafeKeep := dmGlobal.IntDataLookup.cdsLuCustomerBondsCUST_TYPE.AsString;

//      if sSafeKeep = '2' then
//        txtCashLimit.Value := dCashLimit
//      else
//      begin
        cdsCashPosNonSafeKeep.Close;
        cdsCashPosNonSafeKeep.Params[0].AsInteger  := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
        cdsCashPosNonSafeKeep.Params[1].AsDateTime := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
        cdsCashPosNonSafeKeep.Open;

        cdsAccCreditLimit.Close;
        cdsAccCreditLimit.Params[0].AsInteger := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
        cdsAccCreditLimit.Open;

        txtCashLimit.Value := cdsAccCreditLimitBUY_LIMIT.AsFloat - cdsCashPosNonSafeKeepBUY_AMT.AsFloat;
//      end;
    end;


    OpeningCashPos(dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime, dsSubject.DataSet.FieldByName('BACCID').AsInteger);
  end;
end;

procedure TfrmBondsDealTicket.txtBidPriceExit(Sender: TObject);
begin
  inherited;
  ProcessAll;
end;

procedure TfrmBondsDealTicket.txtFaceValueExit(Sender: TObject);
begin
  inherited;
  GetAquisitionPrice;
  ProcessAll;
end;

procedure TfrmBondsDealTicket.txtHardLimitDealerPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  GetHardSoftLimit;
end;

procedure TfrmBondsDealTicket.txtOfferPriceExit(Sender: TObject);
begin
  inherited;
  ProcessAll;
end;

procedure TfrmBondsDealTicket.UpdateCashPos;
var
  oSubject: TDataSet;
begin
  oSubject := dsSubject.DataSet;

  if oSubject.State in [dsInsert] then
  begin
    // > Untuk Buy
    cdsBondsCashPos.Close;
    cdsBondsCashPos.Params[0].AsDateTime := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
    cdsBondsCashPos.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
    cdsBondsCashPos.Open;

    if cdsBondsCashPos.IsEmpty then
    begin
      cdsBondsCashPos.Append;
      cdsBondsCashPosVALUEDATE.AsDateTime := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
      cdsBondsCashPosACCID.AsInteger      := dsSubject.DataSet.FieldByName('BACCID').AsInteger;
      cdsBondsCashPosCCY.AsString         := dsSubject.DataSet.FieldByName('CCY').AsString;
      cdsBondsCashPosACCNO.AsString       := dsSubject.DataSet.FieldByName('BACCCODE').AsString;
      cdsBondsCashPosBUY_AMT.AsFloat      := dsSubject.DataSet.FieldByName('BNETPROCEED').AsFloat;
      cdsBondsCashPos.Post;
    end
    else
    begin
      cdsBondsCashPos.Edit;
      cdsBondsCashPosBUY_AMT.AsFloat := cdsBondsCashPosBUY_AMT.AsFloat + dsSubject.DataSet.FieldByName('BNETPROCEED').AsFloat;
      cdsBondsCashPos.Post;
    end;

    // > Untuk Sell
    cdsBondsCashPos.Close;
    cdsBondsCashPos.Params[0].AsDateTime := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
    cdsBondsCashPos.Params[1].AsInteger  := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
    cdsBondsCashPos.Open;

    if cdsBondsCashPos.IsEmpty then
    begin
      cdsBondsCashPos.Append;
      cdsBondsCashPosVALUEDATE.AsDateTime := dsSubject.DataSet.FieldByName('TRADEDATE').AsDateTime;
      cdsBondsCashPosACCID.AsInteger      := dsSubject.DataSet.FieldByName('SACCID').AsInteger;
      cdsBondsCashPosCCY.AsString         := dsSubject.DataSet.FieldByName('CCY').AsString;
      cdsBondsCashPosACCNO.AsString       := dsSubject.DataSet.FieldByName('SACCCODE').AsString;
      cdsBondsCashPosSELL_AMT.AsFloat     := dsSubject.DataSet.FieldByName('SNETPROCEED').AsFloat;
      cdsBondsCashPos.Post;
    end
    else
    begin
      cdsBondsCashPos.Edit;
      cdsBondsCashPosSELL_AMT.AsFloat := cdsBondsCashPosSELL_AMT.AsFloat + dsSubject.DataSet.FieldByName('SNETPROCEED').AsFloat;
      cdsBondsCashPos.Post;
    end;
  end;
end;

procedure TfrmBondsDealTicket.UpdateStockPos;
var
  oSubject: TDataSet;
begin
  oSubject := dsSubject.DataSet;

  if oSubject.State in [dsInsert] then
  begin
    // > untuk yang seller
    cdsStockPos.Close;
    cdsStockPos.Params[0].AsDateTime  := oSubject.FieldByName('TRADEDATE').AsDateTime;
    cdsStockPos.Params[1].AsInteger   := oSubject.FieldByName('SACCID').AsInteger;
    cdsStockPos.Params[2].AsInteger   := oSubject.FieldByName('INSTRUMENT_ID').AsInteger;
    cdsStockPos.Params[3].AsFloat     := oSubject.FieldByName('SCOST_PRICE').AsFloat;
    cdsStockPos.open;

    if cdsStockPos.IsEmpty then
    begin
      cdsStockPos.Append;
      cdsStockPosVALUEDATE.AsDateTime := oSubject.FieldByName('TRADEDATE').AsDateTime;
      cdsStockPosACQDATE.AsDateTime   := oSubject.FieldByName('VALUEDATE').AsDateTime;
      cdsStockPosACCID.AsInteger      := oSubject.FieldByName('SACCID').AsInteger;
      cdsStockPosACCNO.AsString       := oSubject.FieldByName('SACCCODE').AsString;
      cdsStockPosSTOCKID.AsInteger    := oSubject.FieldByName('INSTRUMENT_ID').AsInteger;
      cdsStockPosSTOCKCODE.AsString   := oSubject.FieldByName('INSTRUMENT_CODE').AsString;
      cdsStockPosPROFIT_LOSS.AsFloat  := (oSubject.FieldByName('SPRICE').AsFloat - oSubject.FieldByName('SCOST_PRICE').AsFloat) * oSubject.FieldByName('FACEVALUE').AsFloat;
      cdsStockPosAVGPRICE.AsFloat     := oSubject.FieldByName('SCOST_PRICE').AsFloat;
//      if FSAccType = 'N' then
//        cdsStockPosSELL_VAL.AsFloat   := cdsStockPosSELL_VAL.AsFloat + (oSubject.FieldByName('FACEVALUE').AsFloat * oSubject.FieldByName('SPRICE').AsFloat / 100)
//      else
        cdsStockPosSELL_VAL.AsFloat   := cdsStockPosSELL_VAL.AsFloat + oSubject.FieldByName('FACEVALUE').AsFloat;
      cdsStockPos.Post;
    end
    else
    begin
      cdsStockPos.Edit;
//      if FSAccType = 'N' then
//        cdsStockPosSELL_VAL.AsFloat   := cdsStockPosSELL_VAL.AsFloat + (oSubject.FieldByName('FACEVALUE').AsFloat * oSubject.FieldByName('SPRICE').AsFloat / 100)
//      else
        cdsStockPosSELL_VAL.AsFloat   := cdsStockPosSELL_VAL.AsFloat + oSubject.FieldByName('FACEVALUE').AsFloat;
      cdsStockPosPROFIT_LOSS.AsFloat  := cdsStockPosPROFIT_LOSS.AsFloat + oSubject.FieldByName('SPRICE').AsFloat - oSubject.FieldByName('SCOST_PRICE').AsFloat;
      cdsStockPos.Post;
    end;

    // > untuk yang Buyer
    cdsStockPos.Close;
    cdsStockPos.Params[0].AsDateTime  := oSubject.FieldByName('TRADEDATE').AsDateTime;
    cdsStockPos.Params[1].AsInteger   := oSubject.FieldByName('BACCID').AsInteger;
    cdsStockPos.Params[2].AsInteger   := oSubject.FieldByName('INSTRUMENT_ID').AsInteger;
    cdsStockPos.Params[3].AsFloat     := oSubject.FieldByName('BPRICE').AsFloat;
    cdsStockPos.open;

    if cdsStockPos.IsEmpty then
    begin
      cdsStockPos.Append;
      cdsStockPosVALUEDATE.AsDateTime := oSubject.FieldByName('TRADEDATE').AsDateTime;
      cdsStockPosACQDATE.AsDateTime   := oSubject.FieldByName('VALUEDATE').AsDateTime;
      cdsStockPosACCID.AsInteger      := oSubject.FieldByName('BACCID').AsInteger;
      cdsStockPosACCNO.AsString       := oSubject.FieldByName('BACCCODE').AsString;
      cdsStockPosSTOCKID.AsInteger    := oSubject.FieldByName('INSTRUMENT_ID').AsInteger;
      cdsStockPosSTOCKCODE.AsString   := oSubject.FieldByName('INSTRUMENT_CODE').AsString;
      cdsStockPosAVGPRICE.AsFloat     := oSubject.FieldByName('BPRICE').AsFloat;
      cdsStockPosBUY_VAL.AsFloat      := cdsStockPosBUY_VAL.AsFloat + oSubject.FieldByName('FACEVALUE').AsFloat;// (oSubject.FieldByName('FACEVALUE').AsFloat * oSubject.FieldByName('BPRICE').AsFloat /100);
      cdsStockPos.Post;
    end
    else
    begin
      cdsStockPos.Edit;
      cdsStockPosBUY_VAL.AsFloat := cdsStockPosBUY_VAL.AsFloat + oSubject.FieldByName('FACEVALUE').AsFloat;// (oSubject.FieldByName('FACEVALUE').AsFloat * oSubject.FieldByName('BPRICE').AsFloat /100);
      cdsStockPos.Post;
    end;
  end;
end;

procedure TfrmBondsDealTicket.UpdateUserLimit;
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    cdsUserLimit.Edit;
    cdsUserLimitHARDLIMIT.AsFloat := txtHardLimitDealer.EditValue;
    cdsUserLimit.Post;

    UpdateStockPos;
    UpdateCashPos;

    dmGlobal.RemoteServer.StartTransaction;
    cdsUserLimit.ApplyUpdates(-1);
    dmGlobal.RemoteServer.CommitTransaction;
  end;
end;

end.
