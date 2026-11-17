unit FormStockByCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxDBEdit, cxDropDownEdit, cxCalendar, Datasnap.DBClient,
  NClientDataset, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxDateRanges, dxScrollbarAnnotations;

type

  TfrmStockByCustomer = class(TfrmEditor)
    cxDBDateEdit1: TcxDBDateEdit;
    LayoutControlItem1: TdxLayoutItem;
    cmbSettleDate: TcxDBDateEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwStock: TcxGridDBBandedTableView;
    dsDetailedStock: TDataSource;
    cdsStockWdrPos: TNClientDataset;
    cdsStockWdrPosStockID: TIntegerField;
    cdsStockWdrPosAccID: TLargeintField;
    cdsStockWdrPosAcqDate: TDateField;
    cdsStockWdrPosAvgPrice: TFloatField;
    cdsStockWdrPosStockOnHand: TFloatField;
    cdsStockWdrPosStockBalance: TFloatField;
    cdsStockWdrPosStockType: TStringField;
    cdsStockWdrPosSWQTY: TFloatField;
    cdsStockWdrPosBondsTrans: TFloatField;
    cdsStockWdrPosAV_QTY: TFloatField;
    cdsCustomer: TClientDataSet;
    cdsCustomerENTRYDATE: TDateField;
    cdsCustomerTRANSDATE: TDateField;
    cdsCustomerSETTLEDATE: TDateField;
    cdsCustomerACCID: TLargeintField;
    cdsCustomerACCCODE: TStringField;
    cdsCustomerACCNAME: TStringField;
    cdsCustomerKSEIACC_TMP: TStringField;
    cdsDetailedStock: TClientDataSet;
    cdsDetailedStockSTOCKID: TLargeintField;
    cdsDetailedStockSTOCK_BAL: TIntegerField;
    cdsDetailedStockAVG_PRICE: TFloatField;
    cdsDetailedStockQTY: TIntegerField;
    cdsDetailedStockPRICE: TFloatField;
    gvwStockSTOCKID: TcxGridDBBandedColumn;
    gvwStockSTOCK_BAL: TcxGridDBBandedColumn;
    gvwStockAVG_PRICE: TcxGridDBBandedColumn;
    gvwStockQTY: TcxGridDBBandedColumn;
    gvwStockPRICE: TcxGridDBBandedColumn;
    cdsCustomerCBCODE: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    LayoutControlItem5: TdxLayoutItem;
    cdsDetailedStockSTOCKCODE: TStringField;
    cdsDetailedStockSTOCKNAME: TStringField;
    gvwStockSTOCKCODE: TcxGridDBBandedColumn;
    gvwStockSTOCKNAME: TcxGridDBBandedColumn;
    cdsDetailedStockAVAIL_QTY: TFloatField;
    gvwStockAVAIL_QTY: TcxGridDBBandedColumn;
    cdsCustomerDEP_DESC: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cdsCustomerNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsDetailedStockSTOCKIDChange(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailedStockSTOCKCODEChange(Sender: TField);
    procedure cdsCustomerSETTLEDATEChange(Sender: TField);
    procedure cdsCustomerACCIDChange(Sender: TField);
    procedure cdsDetailedStockBeforePost(DataSet: TDataSet);
  private
    FStockType: string;
    { Private declarations }
  public
    { Public declarations }
    property StockType: string read FStockType write FStockType;
  end;

var
  frmStockByCustomer: TfrmStockByCustomer;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount;

procedure TfrmStockByCustomer.cdsCustomerACCIDChange(Sender: TField);
begin
  inherited;
  if StockType = 'SW' then
  begin
    dmGlobal.IntDataLookup.cdsluCustStock.Close;
    dmGlobal.IntDataLookup.cdsluCustStock.Params[0].AsDate    := dmGlobal.RemoteServer.GetTransDate;
    dmGlobal.IntDataLookup.cdsluCustStock.Params[1].AsInteger := cdsCustomerACCID.AsInteger;
    dmGlobal.IntDataLookup.cdsluCustStock.Open;
  end
  else
  begin
    dmGlobal.IntDataLookup.cdsLuInstrumentStock.Close;
    dmGlobal.IntDataLookup.cdsLuInstrumentStock.Open;
  end;
end;

procedure TfrmStockByCustomer.cdsCustomerNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCustomerENTRYDATE.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
  cdsCustomerTRANSDATE.AsDateTime  := cdsCustomerENTRYDATE.AsDateTime;
  cdsCustomerSETTLEDATE.AsDateTime := cdsCustomerENTRYDATE.AsDateTime;
end;

procedure TfrmStockByCustomer.cdsCustomerSETTLEDATEChange(Sender: TField);
begin
  inherited;
  if cdsCustomerTRANSDATE.AsDateTime > cdsCustomerSETTLEDATE.AsDateTime then
  begin
    MessageDlg('Settle date can not bigger than trans date', mtError, [mbOK], 0);

    cmbSettleDate.SetFocus;
  end;
end;

procedure TfrmStockByCustomer.cdsDetailedStockBeforePost(DataSet: TDataSet);
begin
  inherited;
  if StockType = 'SW' then
  begin
    if cdsDetailedStockQTY.AsFloat > cdsDetailedStockAVAIL_QTY.AsFloat then
    begin
      MessageDlg('Not enough available quantity to be withdrawed', mtError, [mbOk], 0);
      Exit;
    end;
  end;
end;

procedure TfrmStockByCustomer.cdsDetailedStockSTOCKCODEChange(Sender: TField);
begin
  inherited;
//  if dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsDetailedStockSTOCKID.AsInteger, []) then
//    cdsDetailedStockSTOCKCODE.AsString := dmGlobal.IntDataLookup.cdsLuInstrumentLOCALCODE.AsString;
//
//  cdsStockWdrPos.Close;
//  cdsStockWdrPos.Params[0].AsDate    := cdsCustomerTRANSDATE.AsDateTime;
//  cdsStockWdrPos.Params[1].AsInteger := cdsCustomerACCID.AsInteger;
//  cdsStockWdrPos.Params[2].AsInteger := cdsDetailedStockSTOCKID.AsInteger;
//  cdsStockWdrPos.Open;
//
//  cdsDetailedStockAVG_PRICE.AsFloat := cdsStockWdrPosAvgPrice.AsFloat;
//  cdsDetailedStockSTOCK_BAL.AsFloat := cdsStockWdrPosStockBalance.AsFloat;
end;

procedure TfrmStockByCustomer.cdsDetailedStockSTOCKIDChange(Sender: TField);
begin
  inherited;
  cdsStockWdrPos.Close;
  cdsStockWdrPos.Params[0].AsDate    := cdsCustomerTRANSDATE.AsDateTime;
  cdsStockWdrPos.Params[1].AsInteger := cdsCustomerACCID.AsInteger;
  cdsStockWdrPos.Params[2].AsInteger := cdsDetailedStockSTOCKID.AsInteger;
  cdsStockWdrPos.Open;

  cdsDetailedStockAVG_PRICE.AsFloat := cdsStockWdrPosAvgPrice.AsFloat;
  cdsDetailedStockSTOCK_BAL.AsFloat := cdsStockWdrPosStockBalance.AsFloat;
  cdsDetailedStockAVAIL_QTY.AsFloat := cdsStockWdrPosAV_QTY.AsFloat;

  if dmGlobal.IntDataLookup.cdsLuInstrumentAll.Locate('INSTRUMENT_ID', cdsDetailedStockSTOCKID.AsInteger, []) then
    cdsDetailedStockPRICE.AsFloat := dmGlobal.IntDataLookup.cdsLuInstrumentAllLASTCLSPRICE.AsFloat;
end;

procedure TfrmStockByCustomer.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(cdsCustomerACCID.AsInteger, True) = mrOK then
    begin
      if not (dsSubject.DataSet.State in dsEditModes) then
        dsSubject.DataSet.Edit;

      cdsCustomerACCID.AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
      cdsCustomerACCCODE.AsString := cdsLuAccountMultiFilterACCCODE.AsString;
      cdsCustomerACCNAME.AsString := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmStockByCustomer.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCustomer.Close;
  cdsCustomer.CreateDataSet;

  cdsDetailedStock.Close;
  cdsDetailedStock.CreateDataSet;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;
  end;
end;

procedure TfrmStockByCustomer.FormShow(Sender: TObject);
begin
  inherited;
  cdsCustomer.Append;

  if StockType = 'SW' then
    gvwStockSTOCKID.RepositoryItem := dmGlobal.luCustomerStock
  else
    gvwStockSTOCKID.RepositoryItem := dmGlobal.luInstrumentStock;
end;

end.
