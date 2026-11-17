unit FormBondsMultiDealTicket_View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxImageComboBox, Datasnap.DBClient,
  NClientDataset, cxLabel;

type
  TfrmBondsMultiDealTicket_View = class(TfrmEditor)
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    txtFaceValue: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Item31: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    LayoutControlGroup4: TdxLayoutGroup;
    LayoutControlGroup5: TdxLayoutGroup;
    LayoutControlGroup6: TdxLayoutGroup;
    cxGrid3: TcxGrid;
    gvwAquisitionBonds: TcxGridDBBandedTableView;
    cxGrid3Level1: TcxGridLevel;
    loHistoricalAcq: TdxLayoutGroup;
    dxLayoutControl1Item25: TdxLayoutItem;
    dsAquisition: TDataSource;
    LayoutControlGroup11: TdxLayoutGroup;
    LayoutControlGroup3: TdxLayoutGroup;
    LayoutControlGroup7: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    LayoutControlItem2: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    LayoutControlItem3: TdxLayoutItem;
    LayoutControlGroup13: TdxLayoutGroup;
    LayoutControlGroup14: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    LayoutControlItem4: TdxLayoutItem;
    pnlBS: TPanel;
    LayoutControlItem8: TdxLayoutItem;
    LayoutControlGroup17: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem9: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    LayoutControlItem10: TdxLayoutItem;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    LayoutControlItem11: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cdsBondsDealTicket: TNClientDataset;
    cdsBondsDealTicketTRADEBOND_ID: TLargeintField;
    cdsBondsDealTicketTRADEBOND_NO: TStringField;
    txtBS: TcxLabel;
    LayoutControlGroup8: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem12: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    LayoutControlItem14: TdxLayoutItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    LayoutControlItem15: TdxLayoutItem;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    LayoutControlItem17: TdxLayoutItem;
    cdsBondsDealTicketTRADEDATE: TDateTimeField;
    cdsBondsDealTicketINSTRUMENT_ID: TLargeintField;
    cdsBondsDealTicketINSTRUMENT_CODE: TStringField;
    cdsBondsDealTicketTRADETYPE: TStringField;
    cdsBondsDealTicketCCY: TStringField;
    cdsBondsDealTicketFACEVALUE: TFloatField;
    cdsBondsDealTicketINTERESTRATE: TFloatField;
    cdsBondsDealTicketLASTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketNEXTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketPERIODECOUPON: TIntegerField;
    cdsBondsDealTicketDUEDAYS: TIntegerField;
    cdsBondsDealTicketACCRDAYS: TIntegerField;
    cdsBondsDealTicketCOUPONDAY: TIntegerField;
    cdsBondsDealTicketMARKETCODE: TStringField;
    cdsBondsDealTicketHOLDPERIOD: TIntegerField;
    cdsBondsDealTicketINTEREST_AMT: TFloatField;
    cdsBondsDealTicketVALUEDATE: TDateTimeField;
    cdsBondsDealTicketMATURITY_DATE: TDateTimeField;
    cdsBondsDealTicketHOLDING_INTEREST: TFloatField;
    cdsBondsDealTicketHOLDING_INTEREST_TAX: TFloatField;
    cdsBondsDealTicketSHORTNAME: TStringField;
    cdsBondsDealTicketBS: TStringField;
    cdsBondsDealTicketTOTAL_FV: TFloatField;
    cdsBondsDealTicketBACCID: TLargeintField;
    cdsBondsDealTicketBPRICE: TFloatField;
    cdsBondsDealTicketSACCID: TLargeintField;
    cdsBondsDealTicketSPRICE: TFloatField;
    cdsBondsDealTicketSACCCODE: TStringField;
    cdsBondsDealTicketBACCCODE: TStringField;
    cdsBondsDealTicketSACCNAME: TStringField;
    cdsBondsDealTicketBACCNAME: TStringField;
    cdsBondsDealTicketWHTPCT: TFloatField;
    cdsBondsDealTicketRVSDDATE: TDateField;
    cdsBondsDealTicketRVSD_DTID: TLargeintField;
    cdsBondsDealTicketSSALES: TLargeintField;
    cdsBondsDealTicketBSALES: TLargeintField;
    cdsBondsDealTicketDUEBUYSTOCK: TIntegerField;
    cdsBondsDealTicketDUESELLSTOCK: TIntegerField;
    cdsBondsDealTicketDUEBUYCASH: TIntegerField;
    cdsBondsDealTicketDUESELLCASH: TIntegerField;
    cdsBondsDealTicketSPROCEED: TFloatField;
    cdsBondsDealTicketSNETPROCEED: TFloatField;
    cdsBondsDealTicketBPROCEED: TFloatField;
    cdsBondsDealTicketBNETPROCEED: TFloatField;
    cdsBondsDealTicketSCAPGAIN: TFloatField;
    cdsBondsDealTicketBCAPGAIN: TFloatField;
    cdsBondsDealTicketSCAPGAINTAX: TFloatField;
    cdsBondsDealTicketBCAPGAINTAX: TFloatField;
    cdsBondsDealTicketSCOST_PRICE: TFloatField;
    cdsBondsDealTicketSCOST_AMT: TFloatField;
    cdsBondsDealTicketBCOST_PRICE: TFloatField;
    cdsBondsDealTicketBCOST_AMT: TFloatField;
    cdsBondsDealTicketSUM_SCAPGAIN: TFloatField;
    cdsBondsDealTicketSUM_BCAPGAIN: TFloatField;
    cdsBondsDealTicketWHT_TAX: TFloatField;
    cdsBondsDealTicketCTPREFF: TStringField;
    cdsBondsDealTicketMATCH_BUY: TStringField;
    cdsBondsDealTicketMATCH_SELL: TStringField;
    cdsBondsDealTicketCONTRACT: TStringField;
    cdsBondsDealTicketBCTPREFF: TStringField;
    cdsBondsDealTicketSCTPREFF: TStringField;
    cdsBondsDealTicketHOLD_TAX: TFloatField;
    cdsBondsDealTicketSTAX: TFloatField;
    cdsBondsDealTicketBTAX: TFloatField;
    cdsBondsDealTicketSACCTYPE: TStringField;
    cdsBondsDealTicketBACCTYPE: TStringField;
    cdsBondsDealTicketBCOSTDATE: TDateField;
    cdsBondsDealTicketSCOSTDATE: TDateField;
    cdsBondsDealTicketSTAT: TStringField;
    cdsAcq_Hist: TNClientDataset;
    LayoutControlGroup15: TdxLayoutGroup;
    LayoutControlGroup9: TdxLayoutGroup;
    LayoutControlGroup10: TdxLayoutGroup;
    gvwAquisitionBondsACQ_HISID: TcxGridDBBandedColumn;
    gvwAquisitionBondsTRADEDATE: TcxGridDBBandedColumn;
    gvwAquisitionBondsACQDATE: TcxGridDBBandedColumn;
    gvwAquisitionBondsACQ_PRICE: TcxGridDBBandedColumn;
    gvwAquisitionBondsFACEVALUE: TcxGridDBBandedColumn;
    gvwAquisitionBondsPROCEED: TcxGridDBBandedColumn;
    gvwAquisitionBondsCAP_GAIN: TcxGridDBBandedColumn;
    gvwAquisitionBondsACC_INTEREST: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_PERIOD: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_INTEREST: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_TAX: TcxGridDBBandedColumn;
    gvwAquisitionBondsHOLD_INTERESTTAX: TcxGridDBBandedColumn;
    gvwAquisitionBondsNET_PROCEED: TcxGridDBBandedColumn;
    cdsBondsDealTicketISINCODE: TStringField;
    cxDBTextEdit5: TcxDBTextEdit;
    LayoutControlItem5: TdxLayoutItem;
    LayoutControlGroup18: TdxLayoutGroup;
    LayoutControlGroup19: TdxLayoutGroup;
    cdsAcq_HistACQ_HISID: TLargeintField;
    cdsAcq_HistTRADEDATE: TDateField;
    cdsAcq_HistBS: TStringField;
    cdsAcq_HistACCID: TLargeintField;
    cdsAcq_HistBONDID: TLargeintField;
    cdsAcq_HistACQDATE: TDateField;
    cdsAcq_HistACQ_PRICE: TFloatField;
    cdsAcq_HistFACEVALUE: TFloatField;
    cdsAcq_HistPROCEED: TFloatField;
    cdsAcq_HistCAP_GAIN: TFloatField;
    cdsAcq_HistACC_INTEREST: TFloatField;
    cdsAcq_HistHOLD_PERIOD: TIntegerField;
    cdsAcq_HistHOLD_INTEREST: TFloatField;
    cdsAcq_HistHOLD_TAX: TFloatField;
    cdsAcq_HistHOLD_INTERESTTAX: TFloatField;
    cdsAcq_HistNET_PROCEED: TFloatField;
    cdsAcq_HistSELL_VAL: TFloatField;
    cdsAcq_HistLINKID: TLargeintField;
    cdsAcq_HistPOSTED: TStringField;
    gvwAquisitionBondsBS: TcxGridDBBandedColumn;
    gvwAquisitionBondsACCID: TcxGridDBBandedColumn;
    gvwAquisitionBondsBONDID: TcxGridDBBandedColumn;
    gvwAquisitionBondsSELL_VAL: TcxGridDBBandedColumn;
    gvwAquisitionBondsLINKID: TcxGridDBBandedColumn;
    gvwAquisitionBondsPOSTED: TcxGridDBBandedColumn;
    cxDBTextEdit6: TcxDBTextEdit;
    LayoutControlItem6: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    LayoutControlItem7: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FBuySell: string;
    FTransDate: TDate;
    FBasis, FTax: Double;
    dSumAcqBonds: Double;

    procedure GetBuySellColour;
  public
    property BuySell: string read FBuySell write FBuySell;
  end;

var
  frmBondsMultiDealTicket_View: TfrmBondsMultiDealTicket_View;

implementation

{$R *.dfm}

uses DataGlobal, FormBondsDealTicketList, DataLookup;
procedure TfrmBondsMultiDealTicket_View.FormCreate(Sender: TObject);
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    luCCYOn;
    luInstrumentBondsOn(FTransDate);
    luMarketOn;

    cdsLuCustomerBonds.Close;
    cdsLuCustomerBonds.Open;
  end;
end;

procedure TfrmBondsMultiDealTicket_View.FormShow(Sender: TObject);
begin
//  inherited;

  cdsAcq_Hist.Close;
  cdsAcq_Hist.Params[0].AsInteger := cdsBondsDealTicketTRADEBOND_ID.AsInteger;
  cdsAcq_Hist.Params[1].AsInteger := cdsBondsDealTicketBACCID.AsInteger;
  cdsAcq_Hist.Open;

  GetBuySellColour;
end;

procedure TfrmBondsMultiDealTicket_View.GetBuySellColour;
begin
  if cdsBondsDealTicketBS.AsString = 'B' then
  begin
    txtBS.Caption  := 'BUY';
    pnlBS.Color    := clRed;
  end
  else
  begin
    txtBS.Caption  := 'SELL';
    pnlBS.Color    := clLime;
  end;
end;

end.
