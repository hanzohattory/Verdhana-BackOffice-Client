unit FormVidesaCreditLimitList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxLayoutContainer, dxLayoutControl,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons;

type
  TfrmVidesaCreditLimitList = class(TfrmBrowseData)
    cdsVidesaCreditLimit: TNClientDataset;
    cdsVidesaCreditLimitACCID: TLargeintField;
    cdsVidesaCreditLimitACCCODE: TStringField;
    cdsVidesaCreditLimitACCNAME: TStringField;
    cdsVidesaCreditLimitBUY_LIMIT: TFloatField;
    cdsVidesaCreditLimitSELL_LIMIT: TFloatField;
    cdsVidesaCreditLimitARAMT: TFloatField;
    cdsVidesaCreditLimitAPAMT: TFloatField;
    cdsVidesaCreditLimitExchageValue: TFloatField;
    cdsVidesaCreditLimitSellExchangeValue: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterBUY_LIMIT: TcxGridDBBandedColumn;
    gvwMasterSELL_LIMIT: TcxGridDBBandedColumn;
    gvwMasterARAMT: TcxGridDBBandedColumn;
    gvwMasterAPAMT: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cdsVidesaCreditLimitAPPROVED_BUY_AVAIL_LIMIT: TFloatField;
    cdsVidesaCreditLimitAPPROVED_SELL_AVAIL_LIMIT: TFloatField;
    gvwMasterAPPROVED_BUY_AVAIL_LIMIT: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_SELL_AVAIL_LIMIT: TcxGridDBBandedColumn;
    gvwMasterBuyExchageValue: TcxGridDBBandedColumn;
    gvwMasterSellExchangeValue: TcxGridDBBandedColumn;
    dtDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cmbCCY: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    txtExrate: TcxCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsVidesaCreditLimitEXTREF_CODE: TStringField;
    gvwMasterEXTREF_CODE: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbCCYExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVidesaCreditLimitList: TfrmVidesaCreditLimitList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmVidesaCreditLimitList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsVidesaCreditLimit.Close;
  cdsVidesaCreditLimit.Params[0].AsDate := dtDate.Date;
  cdsVidesaCreditLimit.Open;
end;

procedure TfrmVidesaCreditLimitList.cmbCCYExit(Sender: TObject);
begin
  inherited;
  txtExrate.EditValue := dmGlobal.RemoteServer.GetCCYRate(dtDate.Date, cmbCCY.EditValue);
end;

procedure TfrmVidesaCreditLimitList.cxButton1Click(Sender: TObject);
begin
  inherited;
  if not cdsVidesaCreditLimit.Active then
    exit;

  cdsVidesaCreditLimit.DisableControls;
  cdsVidesaCreditLimit.First;
  while not cdsVidesaCreditLimit.Eof do
  begin
    cdsVidesaCreditLimit.Edit;
    cdsVidesaCreditLimitExchageValue.AsFloat      := cdsVidesaCreditLimitBUY_LIMIT.AsFloat * txtExrate.EditValue;
    cdsVidesaCreditLimitSellExchangeValue.AsFloat := cdsVidesaCreditLimitSELL_LIMIT.AsFloat * txtExrate.EditValue;
    cdsVidesaCreditLimit.Post;

    cdsVidesaCreditLimit.Next;
  end;
  cdsVidesaCreditLimit.EnableControls;
end;

procedure TfrmVidesaCreditLimitList.FormCreate(Sender: TObject);
begin
  inherited;
  if not dmGlobal.IntDataLookup.cdsLuCcy.Active then
    dmGlobal.IntDataLookup.cdsLuCcy.Open;
end;

procedure TfrmVidesaCreditLimitList.FormShow(Sender: TObject);
begin
  inherited;
  dtDate.Date         := dmGlobal.RemoteServer.GetTransDate;
  cmbCCY.EditValue    := 'SGD';
  txtExrate.EditValue := dmGlobal.RemoteServer.GetCCYRate(dtDate.Date, cmbCCY.EditValue);
end;

end.
