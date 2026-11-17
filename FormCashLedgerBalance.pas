unit FormCashLedgerBalance;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NReportClient, NDatasetContainer, dxBar, cxClasses, Vcl.ActnList,
  NDatasetAction, dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCustomPivotGrid, cxDBPivotGrid;

type
  TfrmCashLedgerBalance = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsCashLedgerBalance: TNClientDataset;
    cdsCashLedgerBalanceACCID: TLargeintField;
    cdsCashLedgerBalanceACCCODE: TStringField;
    cdsCashLedgerBalanceACCNAME: TStringField;
    cdsCashLedgerBalanceACCINIT: TStringField;
    cdsCashLedgerBalanceLDGTYPE: TStringField;
    cdsCashLedgerBalanceALDESCRIPTION: TStringField;
    cdsCashLedgerBalanceCCY: TStringField;
    cdsCashLedgerBalanceBalance: TFloatField;
    cdsCashLedgerBalanceFXBalance: TFloatField;
    cdsCashLedgerBalanceACCBANKID: TLargeintField;
    cdsCashLedgerBalanceBNCODE: TStringField;
    cdsCashLedgerBalanceBNNAME: TStringField;
    cdsCashLedgerBalanceBANKACCNO: TStringField;
    cdsCashLedgerBalanceBANKACCNAME: TStringField;
    cdsCashLedgerBalanceBANKBRANCH: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterLDGTYPE: TcxGridDBBandedColumn;
    gvwMasterALDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterBalance: TcxGridDBBandedColumn;
    gvwMasterFXBalance: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNNAME: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBANKBRANCH: TcxGridDBBandedColumn;
    actViewData: TNAction;
    grdPivot: TcxDBPivotGrid;
    grdPivotACCID: TcxDBPivotGridField;
    grdPivotACCCODE: TcxDBPivotGridField;
    grdPivotACCNAME: TcxDBPivotGridField;
    grdPivotACCINIT: TcxDBPivotGridField;
    grdPivotLDGTYPE: TcxDBPivotGridField;
    grdPivotALDESCRIPTION: TcxDBPivotGridField;
    grdPivotCCY: TcxDBPivotGridField;
    grdPivotBalance: TcxDBPivotGridField;
    grdPivotFXBalance: TcxDBPivotGridField;
    grdPivotACCBANKID: TcxDBPivotGridField;
    grdPivotBNCODE: TcxDBPivotGridField;
    grdPivotBNNAME: TcxDBPivotGridField;
    grdPivotBANKACCNO: TcxDBPivotGridField;
    grdPivotBANKACCNAME: TcxDBPivotGridField;
    grdPivotBANKBRANCH: TcxDBPivotGridField;
    cdsCashLedgerBalanceACCTYPE: TStringField;
    cdsCashLedgerBalancePRDCODE: TStringField;
    cdsCashLedgerBalanceCASHKEEP: TStringField;
    cdsCashLedgerBalanceSTOCKKEEP: TStringField;
    cdsCashLedgerBalanceENTTID: TIntegerField;
    cdsCashLedgerBalanceENTTCODE: TStringField;
    cdsCashLedgerBalanceENTNAME: TStringField;
    cdsCashLedgerBalanceENTACCTYPE: TStringField;
    cdsCashLedgerBalanceAFFIL: TBooleanField;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTACCTYPE: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashLedgerBalance: TfrmCashLedgerBalance;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashLedgerBalance.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCashLedgerBalance.Close;
  cdsCashLedgerBalance.Params[0].AsDate := dtValueDate.Date;
  cdsCashLedgerBalance.Open;
end;

procedure TfrmCashLedgerBalance.FormCreate(Sender: TObject);
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
  RegisterClass(TfrmCashLedgerBalance);

end.
