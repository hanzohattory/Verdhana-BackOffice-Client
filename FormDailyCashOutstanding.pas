unit FormDailyCashOutstanding;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCalendar,
  Datasnap.DBClient, NClientDataset, dxBar, cxBarEditItem, NReportClient,
  NDatasetContainer, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmDailyCashOutstanding = class(TfrmBrowseData)
    dtBalance: TcxBarEditItem;
    cdsDailyCashOutstanding: TNClientDataset;
    cdsDailyCashOutstandingSIID: TLargeintField;
    cdsDailyCashOutstandingSINO: TStringField;
    cdsDailyCashOutstandingSI_DESC: TStringField;
    cdsDailyCashOutstandingSITYPE: TStringField;
    cdsDailyCashOutstandingENTRYDATE: TDateField;
    cdsDailyCashOutstandingTRDDATE: TDateField;
    cdsDailyCashOutstandingDUEDATE: TDateField;
    cdsDailyCashOutstandingACCID: TIntegerField;
    cdsDailyCashOutstandingACCCODE: TStringField;
    cdsDailyCashOutstandingACCNAME: TStringField;
    cdsDailyCashOutstandingACCINIT: TStringField;
    cdsDailyCashOutstandingACCTYPE: TStringField;
    cdsDailyCashOutstandingPRDCODE: TStringField;
    cdsDailyCashOutstandingSETTLE_SIDE: TStringField;
    cdsDailyCashOutstandingBASE_CCYCODE: TStringField;
    cdsDailyCashOutstandingBASE_NETAMT: TFloatField;
    cdsDailyCashOutstandingSETTLE_CCYCODE: TStringField;
    cdsDailyCashOutstandingSETTLE_NETAMT: TFloatField;
    cdsDailyCashOutstandingOUTSTANDING_AMOUNT: TFloatField;
    cdsDailyCashOutstandingLINKID: TLargeintField;
    cdsDailyCashOutstandingLINKSEQID: TIntegerField;
    cdsDailyCashOutstandingLINKNO: TStringField;
    cdsDailyCashOutstandingLINKTYPE: TStringField;
    cdsDailyCashOutstandingSTOCKID: TIntegerField;
    cdsDailyCashOutstandingINSTRUMENT_CODE: TStringField;
    cdsDailyCashOutstandingMARKETCODE: TStringField;
    cdsDailyCashOutstandingLOCALCODE: TStringField;
    cdsDailyCashOutstandingSHORTNAME: TStringField;
    cdsDailyCashOutstandingINSTRUMENT_TYPE_CODE: TStringField;
    cdsDailyCashOutstandingQTY: TFloatField;
    cdsDailyCashOutstandingQTY_BUY: TFloatField;
    cdsDailyCashOutstandingOUTSTANDING_BUY: TFloatField;
    cdsDailyCashOutstandingQTY_SELL: TFloatField;
    cdsDailyCashOutstandingOUTSTANDING_SELL: TFloatField;
    cdsDailyCashOutstandingOUTSTANDING_OTHERS: TFloatField;
    cdsDailyCashOutstandingOUTSTANDING_DAYS: TIntegerField;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterSI_DESC: TcxGridDBBandedColumn;
    gvwMasterSITYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDING_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterLINKSEQID: TcxGridDBBandedColumn;
    gvwMasterLINKNO: TcxGridDBBandedColumn;
    gvwMasterLINKTYPE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterQTY_BUY: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDING_BUY: TcxGridDBBandedColumn;
    gvwMasterQTY_SELL: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDING_SELL: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDING_OTHERS: TcxGridDBBandedColumn;
    gvwMasterOUTSTANDING_DAYS: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cdsDailyCashOutstandingCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDailyCashOutstanding: TfrmDailyCashOutstanding;

implementation

{$R *.dfm}

uses DataGlobal, DateUtils;

procedure TfrmDailyCashOutstanding.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsDailyCashOutstanding.Close;
  cdsDailyCashOutstanding.Params[0].AsDate := VarToDateTime(dtBalance.EditValue);
  cdsDailyCashOutstanding.Open;
end;

procedure TfrmDailyCashOutstanding.cdsDailyCashOutstandingCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if cdsDailyCashOutstandingDUEDATE.AsDateTime > cdsDailyCashOutstanding.Params[0].AsDate then
    cdsDailyCashOutstandingOUTSTANDING_DAYS.AsInteger := DaysBetween(cdsDailyCashOutstanding.Params[0].AsDate, cdsDailyCashOutstandingDUEDATE.AsDateTime) * -1
  else
    cdsDailyCashOutstandingOUTSTANDING_DAYS.AsInteger := DaysBetween(cdsDailyCashOutstanding.Params[0].AsDate, cdsDailyCashOutstandingDUEDATE.AsDateTime);

  if (cdsDailyCashOutstandingSITYPE.AsString = 'BT') or (cdsDailyCashOutstandingSITYPE.AsString = 'ST') then
  begin
    if cdsDailyCashOutstandingSETTLE_SIDE.AsString = 'R' then
    begin
      cdsDailyCashOutstandingQTY_BUY.AsFloat := cdsDailyCashOutstandingQTY.AsFloat;
      cdsDailyCashOutstandingOUTSTANDING_BUY.AsFloat := cdsDailyCashOutstandingOUTSTANDING_AMOUNT.AsFloat;
      cdsDailyCashOutstandingQTY_SELL.AsFloat := 0;
      cdsDailyCashOutstandingOUTSTANDING_SELL.AsFloat := 0;
      cdsDailyCashOutstandingOUTSTANDING_OTHERS.AsFloat := 0;
    end
    else
    begin
      cdsDailyCashOutstandingQTY_BUY.AsFloat := 0;
      cdsDailyCashOutstandingOUTSTANDING_BUY.AsFloat := 0;
      cdsDailyCashOutstandingQTY_SELL.AsFloat := cdsDailyCashOutstandingQTY.AsFloat * -1;
      cdsDailyCashOutstandingOUTSTANDING_SELL.AsFloat := cdsDailyCashOutstandingOUTSTANDING_AMOUNT.AsFloat * -1;
      cdsDailyCashOutstandingOUTSTANDING_OTHERS.AsFloat := 0;
    end;
  end
  else
  begin
    cdsDailyCashOutstandingQTY_BUY.AsFloat := 0;
    cdsDailyCashOutstandingOUTSTANDING_BUY.AsFloat := 0;
    cdsDailyCashOutstandingQTY_SELL.AsFloat := 0;
    cdsDailyCashOutstandingOUTSTANDING_SELL.AsFloat := 0;
    if cdsDailyCashOutstandingSETTLE_SIDE.AsString = 'R' then
      cdsDailyCashOutstandingOUTSTANDING_OTHERS.AsFloat := cdsDailyCashOutstandingOUTSTANDING_AMOUNT.AsFloat
    else
      cdsDailyCashOutstandingOUTSTANDING_OTHERS.AsFloat := cdsDailyCashOutstandingOUTSTANDING_AMOUNT.AsFloat * -1;
  end;
end;

procedure TfrmDailyCashOutstanding.FormCreate(Sender: TObject);
begin
  inherited;
  dtBalance.EditValue := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;

    if not cdsLuProduct.Active then
      cdsLuProduct.Open;
  end;
end;

Initialization
  RegisterClass(TfrmDailyCashOutstanding);

end.
