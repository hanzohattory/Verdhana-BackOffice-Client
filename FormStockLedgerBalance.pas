unit FormStockLedgerBalance;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, System.Actions, System.ImageList;

type
  TfrmStockLedgerBalance = class(TfrmBrowseData)
    cdsStockLedgerBalance: TNClientDataset;
    cdsStockLedgerBalanceACCID: TLargeintField;
    cdsStockLedgerBalanceACCCODE: TStringField;
    cdsStockLedgerBalanceACCNAME: TStringField;
    cdsStockLedgerBalanceACCINIT: TStringField;
    cdsStockLedgerBalanceLDGTYPE: TStringField;
    cdsStockLedgerBalanceALDESCRIPTION: TStringField;
    cdsStockLedgerBalanceINSTRUMENT_ID: TLargeintField;
    cdsStockLedgerBalanceINSTRUMENT_CODE: TStringField;
    cdsStockLedgerBalanceMARKETCODE: TStringField;
    cdsStockLedgerBalanceLOCALCODE: TStringField;
    cdsStockLedgerBalanceSHORTNAME: TStringField;
    cdsStockLedgerBalanceINSTRUMENT_TYPE_CODE: TStringField;
    cdsStockLedgerBalanceINSTRUMENT_TYPE_DESC: TStringField;
    cdsStockLedgerBalanceQTY: TFloatField;
    cdsStockLedgerBalanceACCCUSTODYID: TLargeintField;
    cdsStockLedgerBalanceCUSTODYCODE: TStringField;
    cdsStockLedgerBalanceCUSTODYNAME: TStringField;
    cdsStockLedgerBalanceCUSTODYACCNO: TStringField;
    cdsStockLedgerBalanceCUSTODYACCNAME: TStringField;
    cdsStockLedgerBalanceCUSTODYBRANCH: TStringField;
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterLDGTYPE: TcxGridDBBandedColumn;
    gvwMasterALDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_DESC: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterACCCUSTODYID: TcxGridDBBandedColumn;
    gvwMasterCUSTODYCODE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYNAME: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUSTODYBRANCH: TcxGridDBBandedColumn;
    actViewData: TNAction;
    cdsStockLedgerBalanceACCTYPE: TStringField;
    cdsStockLedgerBalancePRDCODE: TStringField;
    cdsStockLedgerBalanceCASHKEEP: TStringField;
    cdsStockLedgerBalanceSTOCKKEEP: TStringField;
    cdsStockLedgerBalanceENTTID: TIntegerField;
    cdsStockLedgerBalanceENTTCODE: TStringField;
    cdsStockLedgerBalanceENTNAME: TStringField;
    cdsStockLedgerBalanceENTACCTYPE: TStringField;
    cdsStockLedgerBalanceAFFIL: TBooleanField;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTACCTYPE: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    cdsStockLedgerBalanceCLOSING_PRICE: TFloatField;
    cdsStockLedgerBalanceVALUE: TFloatField;
    gvwMasterCLOSING_PRICE: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockLedgerBalance: TfrmStockLedgerBalance;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmStockLedgerBalance.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsStockLedgerBalance.Close;
  cdsStockLedgerBalance.Params[0].AsDate := dtValueDate.Date;
  cdsStockLedgerBalance.Open;
end;

procedure TfrmStockLedgerBalance.FormCreate(Sender: TObject);
begin
  inherited;
  dtValueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtValueDate.Properties.MaxDate := dtValueDate.Date;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;

  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmStockLedgerBalance);

end.
