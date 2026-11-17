unit FormViewTransaction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl;

type
  TfrmViewTransaction = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    glvLedger: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwLedger: TcxGridDBBandedTableView;
    cdsLedgerTransaction: TNClientDataset;
    dsLedgerTransaction: TDataSource;
    cdsLedgerTransactionLedgerID: TLargeintField;
    cdsLedgerTransactionEntryDate: TDateField;
    cdsLedgerTransactionValueDate: TDateField;
    cdsLedgerTransactionJournalType: TStringField;
    cdsLedgerTransactionTransType: TStringField;
    cdsLedgerTransactionTransactionName: TStringField;
    cdsLedgerTransactionDescriptionHeader: TStringField;
    cdsLedgerTransactionDescriptionDetail: TStringField;
    cdsLedgerTransactionAccountCode: TStringField;
    cdsLedgerTransactionAccountName: TStringField;
    cdsLedgerTransactionLedgerCode: TStringField;
    cdsLedgerTransactionLedgerDesc: TStringField;
    cdsLedgerTransactionCOACode: TStringField;
    cdsLedgerTransactionCostCentre: TStringField;
    cdsLedgerTransactionBankCode: TStringField;
    cdsLedgerTransactionBankAccountNo: TStringField;
    cdsLedgerTransactionExchangerate: TFloatField;
    cdsLedgerTransactionCurrency: TStringField;
    cdsLedgerTransactionDebetAmount: TFloatField;
    cdsLedgerTransactionCreditAmount: TFloatField;
    cdsLedgerTransactionTransactionNo: TStringField;
    cdsLedgerTransactionReversed: TBooleanField;
    cdsLedgerTransactionGLPosted: TBooleanField;
    cdsLedgerTransactionGLPostedDate: TDateTimeField;
    cdsLedgerTransactionGLPostedUI: TStringField;
    cdsLedgerTransactionGLJournalCode: TStringField;
    cdsLedgerTransactionJournalCodeReversed: TStringField;
    cdsLedgerTransactionReversedDate: TDateTimeField;
    cdsLedgerTransactionReversedUI: TStringField;
    gvwLedgerLedgerID: TcxGridDBBandedColumn;
    gvwLedgerEntryDate: TcxGridDBBandedColumn;
    gvwLedgerValueDate: TcxGridDBBandedColumn;
    gvwLedgerJournalType: TcxGridDBBandedColumn;
    gvwLedgerTransType: TcxGridDBBandedColumn;
    gvwLedgerTransactionName: TcxGridDBBandedColumn;
    gvwLedgerDescriptionHeader: TcxGridDBBandedColumn;
    gvwLedgerDescriptionDetail: TcxGridDBBandedColumn;
    gvwLedgerAccountCode: TcxGridDBBandedColumn;
    gvwLedgerAccountName: TcxGridDBBandedColumn;
    gvwLedgerLedgerCode: TcxGridDBBandedColumn;
    gvwLedgerLedgerDesc: TcxGridDBBandedColumn;
    gvwLedgerCOACode: TcxGridDBBandedColumn;
    gvwLedgerCostCentre: TcxGridDBBandedColumn;
    gvwLedgerBankCode: TcxGridDBBandedColumn;
    gvwLedgerBankAccountNo: TcxGridDBBandedColumn;
    gvwLedgerExchangerate: TcxGridDBBandedColumn;
    gvwLedgerCurrency: TcxGridDBBandedColumn;
    gvwLedgerDebetAmount: TcxGridDBBandedColumn;
    gvwLedgerCreditAmount: TcxGridDBBandedColumn;
    gvwLedgerTransactionNo: TcxGridDBBandedColumn;
    gvwLedgerReversed: TcxGridDBBandedColumn;
    gvwLedgerGLPosted: TcxGridDBBandedColumn;
    gvwLedgerGLPostedDate: TcxGridDBBandedColumn;
    gvwLedgerGLPostedUI: TcxGridDBBandedColumn;
    gvwLedgerGLJournalCode: TcxGridDBBandedColumn;
    gvwLedgerJournalCodeReversed: TcxGridDBBandedColumn;
    gvwLedgerReversedDate: TcxGridDBBandedColumn;
    gvwLedgerReversedUI: TcxGridDBBandedColumn;
    glvStockLedger: TcxGridLevel;
    glvFundLedger: TcxGridLevel;
    gvwStockLedger: TcxGridDBBandedTableView;
    gvwFundLedger: TcxGridDBBandedTableView;
    cdsStockTrans: TNClientDataset;
    dsStockTrans: TDataSource;
    dsFundTrans: TDataSource;
    cdsFundTrans: TNClientDataset;
    cdsStockTransSecuritiesLedgerID: TLargeintField;
    cdsStockTransEntryDate: TDateField;
    cdsStockTransValueDate: TDateField;
    cdsStockTransTransType: TStringField;
    cdsStockTransTransactionName: TStringField;
    cdsStockTransTransactionDescription: TStringField;
    cdsStockTransAccountCode: TStringField;
    cdsStockTransAccountName: TStringField;
    cdsStockTransSecuritiesLedgerCode: TStringField;
    cdsStockTransSecuritiesLedgerDesc: TStringField;
    cdsStockTransCustodyCode: TStringField;
    cdsStockTransCustodyAccountNo: TStringField;
    cdsStockTransPrice: TFloatField;
    cdsStockTransLongQuantity: TFloatField;
    cdsStockTransShortQuantity: TFloatField;
    cdsStockTransTransactionNo: TStringField;
    cdsStockTransReversed: TBooleanField;
    cdsStockTransReversedDate: TDateTimeField;
    cdsStockTransReversedUI: TStringField;
    cdsFundTransFundLedgerID: TLargeintField;
    cdsFundTransEntryDate: TDateField;
    cdsFundTransValueDate: TDateField;
    cdsFundTransTransType: TStringField;
    cdsFundTransTransactionName: TStringField;
    cdsFundTransTransactionDescription: TStringField;
    cdsFundTransAccountCode: TStringField;
    cdsFundTransAccountName: TStringField;
    cdsFundTransFundLedgerCode: TStringField;
    cdsFundTransFundLedgerDesc: TStringField;
    cdsFundTransBankCode: TStringField;
    cdsFundTransBankAccountNo: TStringField;
    cdsFundTransExchangeRate: TFloatField;
    cdsFundTransCurrency: TStringField;
    cdsFundTransDebetAmount: TFloatField;
    cdsFundTransCreditAmount: TFloatField;
    cdsFundTransTransactionNo: TStringField;
    cdsFundTransReversed: TBooleanField;
    cdsFundTransReversedDate: TDateTimeField;
    cdsFundTransReversedUI: TStringField;
    gvwStockLedgerSecuritiesLedgerID: TcxGridDBBandedColumn;
    gvwStockLedgerEntryDate: TcxGridDBBandedColumn;
    gvwStockLedgerValueDate: TcxGridDBBandedColumn;
    gvwStockLedgerTransType: TcxGridDBBandedColumn;
    gvwStockLedgerTransactionName: TcxGridDBBandedColumn;
    gvwStockLedgerTransactionDescription: TcxGridDBBandedColumn;
    gvwStockLedgerAccountCode: TcxGridDBBandedColumn;
    gvwStockLedgerAccountName: TcxGridDBBandedColumn;
    gvwStockLedgerSecuritiesLedgerCode: TcxGridDBBandedColumn;
    gvwStockLedgerSecuritiesLedgerDesc: TcxGridDBBandedColumn;
    gvwStockLedgerCustodyCode: TcxGridDBBandedColumn;
    gvwStockLedgerCustodyAccountNo: TcxGridDBBandedColumn;
    gvwStockLedgerPrice: TcxGridDBBandedColumn;
    gvwStockLedgerLongQuantity: TcxGridDBBandedColumn;
    gvwStockLedgerShortQuantity: TcxGridDBBandedColumn;
    gvwStockLedgerTransactionNo: TcxGridDBBandedColumn;
    gvwStockLedgerReversed: TcxGridDBBandedColumn;
    gvwStockLedgerReversedDate: TcxGridDBBandedColumn;
    gvwStockLedgerReversedUI: TcxGridDBBandedColumn;
    gvwFundLedgerFundLedgerID: TcxGridDBBandedColumn;
    gvwFundLedgerEntryDate: TcxGridDBBandedColumn;
    gvwFundLedgerValueDate: TcxGridDBBandedColumn;
    gvwFundLedgerTransType: TcxGridDBBandedColumn;
    gvwFundLedgerTransactionName: TcxGridDBBandedColumn;
    gvwFundLedgerTransactionDescription: TcxGridDBBandedColumn;
    gvwFundLedgerAccountCode: TcxGridDBBandedColumn;
    gvwFundLedgerAccountName: TcxGridDBBandedColumn;
    gvwFundLedgerFundLedgerCode: TcxGridDBBandedColumn;
    gvwFundLedgerFundLedgerDesc: TcxGridDBBandedColumn;
    gvwFundLedgerBankCode: TcxGridDBBandedColumn;
    gvwFundLedgerBankAccountNo: TcxGridDBBandedColumn;
    gvwFundLedgerExchangeRate: TcxGridDBBandedColumn;
    gvwFundLedgerCurrency: TcxGridDBBandedColumn;
    gvwFundLedgerDebetAmount: TcxGridDBBandedColumn;
    gvwFundLedgerCreditAmount: TcxGridDBBandedColumn;
    gvwFundLedgerTransactionNo: TcxGridDBBandedColumn;
    gvwFundLedgerReversed: TcxGridDBBandedColumn;
    gvwFundLedgerReversedDate: TcxGridDBBandedColumn;
    gvwFundLedgerReversedUI: TcxGridDBBandedColumn;
    cdsStockTransStockCode: TStringField;
    gvwStockLedgerStockCode: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
  private
    FfundTransID: int64;
    FstockTransID: int64;
    FconDate: TDateTime;
    FledgerTransID: int64;
    { Private declarations }
  public
    { Public declarations }
    property conDate: TDateTime read FconDate write FconDate;
    property ledgerTransID: int64 read FledgerTransID write FledgerTransID;
    property stockTransID: int64 read FstockTransID write FstockTransID;
    property fundTransID: int64 read FfundTransID write FfundTransID;
  end;

var
  frmViewTransaction: TfrmViewTransaction;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmViewTransaction.FormShow(Sender: TObject);
begin
  glvLedger.Visible      := ledgerTransID <> -1;
  glvStockLedger.Visible := stockTransID <> -1;
  glvFundLedger.Visible  := fundTransID <> -1;

  cdsLedgerTransaction.Close;
  cdsLedgerTransaction.Params[0].AsDate     := conDate;
  cdsLedgerTransaction.Params[1].AsLargeInt := ledgerTransID;
  cdsLedgerTransaction.Open;

  cdsStockTrans.Close;
  cdsStockTrans.Params[0].AsDate     := conDate;
  cdsStockTrans.Params[1].AsLargeInt := stockTransID;
  cdsStockTrans.Open;

  cdsFundTrans.Close;
  cdsFundTrans.Params[0].AsDate     := conDate;
  cdsFundTrans.Params[1].AsLargeInt := fundTransID;
  cdsFundTrans.Open;

end;

end.
