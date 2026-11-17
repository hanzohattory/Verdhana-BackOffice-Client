unit FormProvisionPortFolioM2M;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset,
  cxPropertiesStore, dxBar, cxClasses, dxPSCore, dxPScxCommon,
  NDatasetContainer, NDatasetAction, Vcl.ActnList, Vcl.ImgList,
  NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView, cxGrid,
  dxLayoutContainer, dxLayoutControl, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxImageComboBox, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, cxCheckBox;

type
  TfrmProvisionPortFolioM2M = class(TfrmBrowseSingle)
    cdsPortFolio: TNClientDataset;
    cdsPortFolioPORTO_HISID: TLargeintField;
    cdsPortFolioPORTO_HISNO: TStringField;
    cdsPortFolioVALUEDATE: TDateField;
    cdsPortFolioINSTRUMENT_TYPE: TStringField;
    cdsPortFolioCCYCODE: TStringField;
    cdsPortFolioPORTO_STOCKVAL: TFloatField;
    cdsPortFolioPORTO_MARKETVAL: TFloatField;
    cdsPortFolioUNREAL_VAL: TFloatField;
    cdsPortFolioGL_MARKETVAL: TFloatField;
    cdsPortFolioPROVISION_VAL: TFloatField;
    cdsPortFolioPORTO_DESC: TStringField;
    cdsPortFolioSTAT: TStringField;
    cdsPortFolioJRNID: TLargeintField;
    cdsPortFolioREVERSE: TStringField;
    cdsPortFolioMARKETCODE: TStringField;
    cdsPortFolioPORTO_DATE: TDateField;
    cdsPortFolio_D: TNClientDataset;
    cdsPortFolio_DPORTO_HISID: TLargeintField;
    cdsPortFolio_DLNNUM: TIntegerField;
    cdsPortFolio_DACQDATE: TDateField;
    cdsPortFolio_DSTOCKCODE: TStringField;
    cdsPortFolio_DACCNO: TStringField;
    cdsPortFolio_DACCNAME: TStringField;
    cdsPortFolio_DAVGPRICE: TFloatField;
    cdsPortFolio_DCLOSEPRICE: TFloatField;
    cdsPortFolio_DQTY: TFloatField;
    cdsPortFolio_DSTOCK_VAL: TFloatField;
    cdsPortFolio_DCLOSE_VALUE: TFloatField;
    cdsPortFolio_DUNREAL_AMT: TFloatField;
    dsPortFolio_D: TDataSource;
    gvwBrowsePORTO_HISID: TcxGridDBBandedColumn;
    gvwBrowsePORTO_HISNO: TcxGridDBBandedColumn;
    gvwBrowseVALUEDATE: TcxGridDBBandedColumn;
    gvwBrowseINSTRUMENT_TYPE: TcxGridDBBandedColumn;
    gvwBrowseCCYCODE: TcxGridDBBandedColumn;
    gvwBrowsePORTO_STOCKVAL: TcxGridDBBandedColumn;
    gvwBrowsePORTO_MARKETVAL: TcxGridDBBandedColumn;
    gvwBrowseUNREAL_VAL: TcxGridDBBandedColumn;
    gvwBrowseGL_MARKETVAL: TcxGridDBBandedColumn;
    gvwBrowsePROVISION_VAL: TcxGridDBBandedColumn;
    gvwBrowsePORTO_DESC: TcxGridDBBandedColumn;
    gvwBrowseSTAT: TcxGridDBBandedColumn;
    gvwBrowseJRNID: TcxGridDBBandedColumn;
    gvwBrowseREVERSE: TcxGridDBBandedColumn;
    gvwBrowseMARKETCODE: TcxGridDBBandedColumn;
    gvwBrowsePORTO_DATE: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cmbCurrency: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cmbInstrType: TcxLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    actGeneratePortM2M: TNAction;
    actPortfolioExecute: TNAction;
    N5: TMenuItem;
    PortfolioExecute1: TMenuItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    actCancelProv: TNAction;
    Cancel1: TMenuItem;
    cmbMarket: TcxLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGeneratePortM2MExecute(Sender: TObject);
    procedure actGeneratePortM2MUpdate(Sender: TObject);
    procedure actPortfolioExecuteUpdate(Sender: TObject);
    procedure actCancelProvExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPortfolioExecuteExecute(Sender: TObject);
    procedure dtValueDatePropertiesCloseUp(Sender: TObject);
    procedure cmbCurrencyPropertiesCloseUp(Sender: TObject);
    procedure cmbInstrTypePropertiesCloseUp(Sender: TObject);
    procedure actCancelProvUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData(AValueDate: TDateTime; ACCY: string; AInstrType: string);
  public
    { Public declarations }
  end;

var
  frmProvisionPortFolioM2M: TfrmProvisionPortFolioM2M;

implementation

{$R *.dfm}

uses DataGlobal, DataReport;

procedure TfrmProvisionPortFolioM2M.actCancelProvExecute(Sender: TObject);
begin
  inherited;
  try
    cdsPortFolio.Delete;
    cdsPortFolio.ApplyUpdates(-1);
  except
    on E : Exception do MessageDlg('Error : '+E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmProvisionPortFolioM2M.actCancelProvUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsPortFolioSTAT.AsString = 'O';
end;

procedure TfrmProvisionPortFolioM2M.actGeneratePortM2MExecute(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Generate portfolio market to market ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmGlobal.RemoteServer.GeneratePortfolioM2M(dtValueDate.Date, cmbCurrency.EditValue, cmbMarket.EditValue, cmbInstrType.EditValue);
    MessageDlg('Geneerate portfolio market to market has done', mtInformation, [mbOk], 0);
    RefreshData(dtValueDate.Date, cmbCurrency.EditValue, cmbInstrType.EditValue);
  end;
end;

procedure TfrmProvisionPortFolioM2M.actGeneratePortM2MUpdate(
  Sender: TObject);
begin
  inherited;
  actGeneratePortM2M.Enabled := cdsPortFolio.IsEmpty;

end;

procedure TfrmProvisionPortFolioM2M.actPortfolioExecuteExecute(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Generate portfolio Ecexute ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PortofolioExecute(dtValueDate.Date, cmbMarket.EditValue, cmbCurrency.EditValue, cmbInstrType.EditValue);
    MessageDlg('Generate portfolio Execute has done', mtInformation, [mbOk], 0);
    RefreshData(dtValueDate.Date, cmbCurrency.EditValue, cmbInstrType.EditValue);
  end;
end;

procedure TfrmProvisionPortFolioM2M.actPortfolioExecuteUpdate(
  Sender: TObject);
begin
  inherited;
  actPortfolioExecute.Enabled := not cdsPortFolio.IsEmpty;
end;

procedure TfrmProvisionPortFolioM2M.actRefreshExecute(Sender: TObject);
begin
  RefreshData(dtValueDate.Date, cmbCurrency.EditValue, cmbInstrType.EditValue);
  inherited;
end;

procedure TfrmProvisionPortFolioM2M.cmbCurrencyPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  RefreshData(dtValueDate.Date, cmbCurrency.EditValue, cmbInstrType.EditValue);
end;

procedure TfrmProvisionPortFolioM2M.cmbInstrTypePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  RefreshData(dtValueDate.Date, cmbCurrency.EditValue, cmbInstrType.EditValue);
end;

procedure TfrmProvisionPortFolioM2M.dtValueDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  RefreshData(dtValueDate.Date, cmbCurrency.EditValue, cmbInstrType.EditValue);
end;

procedure TfrmProvisionPortFolioM2M.FormCreate(Sender: TObject);
begin
  inherited;
  dtValueDate.Date := dmGlobal.RemoteServer.GetTransDate;

  RefreshData(dtValueDate.Date, '', '');
  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuInstrumentGroupType.Close;
    cdsLuInstrumentGroupType.Open;

    cdsLuInstrumentType.Close;
    cdsLuInstrumentType.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;
  end;
end;

procedure TfrmProvisionPortFolioM2M.FormShow(Sender: TObject);
begin
  inherited;
  cmbMarket.EditValue    := dmGlobal.RemoteServer.GetGlobalParamString('051');
  cmbCurrency.EditValue  := dmGlobal.RemoteServer.GetGlobalParamString('050');
  cmbInstrType.EditValue := 'C';
end;

procedure TfrmProvisionPortFolioM2M.RefreshData(AValueDate: TDateTime;
  ACCY, AInstrType: string);
begin
  cdsPortFolio.Close;
  cdsPortFolio.Params[0].AsDateTime := AValueDate;
  cdsPortFolio.Params[1].AsString   := AInstrType;
  cdsPortFolio.Params[2].AsString   := ACCY;
  cdsPortFolio.Open;
end;

Initialization
  RegisterClass(TfrmProvisionPortFolioM2M);

end.
