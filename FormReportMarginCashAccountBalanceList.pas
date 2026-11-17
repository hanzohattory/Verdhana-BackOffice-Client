unit FormReportMarginCashAccountBalanceList;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmReportMarginCashAccountBalanceList = class(TfrmBrowseData)
    cdsMarginCashAccountBalance: TNClientDataset;
    cdsMarginCashAccountBalanceACCTYPEDESC: TStringField;
    cdsMarginCashAccountBalanceSALESNAME: TStringField;
    cdsMarginCashAccountBalanceACCCODE: TStringField;
    cdsMarginCashAccountBalanceACCNAME: TStringField;
    cdsMarginCashAccountBalanceCashOnHand: TFloatField;
    gvwMasterACCTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCashOnHand: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMarginCashAccountBalanceList: TfrmReportMarginCashAccountBalanceList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMarginCashAccountBalanceList.actRefreshExecute(
  Sender: TObject);
begin
  inherited;
  cdsMarginCashAccountBalance.Close;
  cdsMarginCashAccountBalance.Open;
end;

end.
