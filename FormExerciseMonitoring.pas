unit FormExerciseMonitoring;

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
  Datasnap.DBClient, NClientDataset, cxPropertiesStore, dxBar, cxClasses,
  dxPSCore, dxPScxCommon, NDatasetContainer, NDatasetAction, Vcl.ActnList,
  Vcl.ImgList, NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxCheckBox, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, System.Actions, System.ImageList;

type
  TfrmExerciseMonitoring = class(TfrmBrowseSingle)
    cdsExerciseMonitoring: TNClientDataset;
    cdsExerciseMonitoringCAID: TLargeintField;
    cdsExerciseMonitoringEXER_ID: TLargeintField;
    cdsExerciseMonitoringACCID: TLargeintField;
    cdsExerciseMonitoringEXER_NO: TStringField;
    cdsExerciseMonitoringEXERDATE: TDateField;
    cdsExerciseMonitoringACCNO: TStringField;
    cdsExerciseMonitoringACCNAME: TStringField;
    cdsExerciseMonitoringCA_QTY: TFloatField;
    cdsExerciseMonitoringCA_AMT: TFloatField;
    cdsExerciseMonitoringEXERQTY: TFloatField;
    cdsExerciseMonitoringEXER_AMT: TFloatField;
    cdsExerciseMonitoringEXER_WARRQTY: TFloatField;
    cdsExerciseMonitoringEXER_PAYDATE: TDateField;
    cdsExerciseMonitoringEXER_PAID: TStringField;
    cdsExerciseMonitoringEXER_PAIDAMT: TFloatField;
    cdsExerciseMonitoringMEMBER: TStringField;
    cdsExerciseMonitoringCUSTODY: TStringField;
    cdsExerciseMonitoringFINANCE: TStringField;
    cdsExerciseMonitoringVCA_INSTRUCTION: TStringField;
    cdsExerciseMonitoringBT_INSTRUCTION: TStringField;
    cdsExerciseMonitoringBANK_INSTRUCTION: TStringField;
    cdsExerciseMonitoringRDN_RECEIVE: TStringField;
    cdsExerciseMonitoringREQUEST_CASH_LOAN: TStringField;
    cdsExerciseMonitoringCASH_LOAN_APPV: TStringField;
    cdsExerciseMonitoringSTOCK_DIST: TStringField;
    cdsExerciseMonitoringSTOCK_DIST_DATE: TDateField;
    cdsExerciseMonitoringBT_DATE: TDateField;
    cdsExerciseMonitoringREMARKS: TStringField;
    cdsExerciseMonitoringCANCEL_EXERPAID: TStringField;
    cdsExerciseMonitoringMODDA: TDateTimeField;
    cdsExerciseMonitoringMODUI: TStringField;
    cdsExerciseMonitoringAPPDA: TDateTimeField;
    cdsExerciseMonitoringAPPUI: TStringField;
    cdsExerciseMonitoringUNDER4Y: TIntegerField;
    cdsExerciseMonitoringUNDER4YDA: TDateTimeField;
    cdsExerciseMonitoringNOTES4Y: TStringField;
    cdsExerciseMonitoringISDEL: TIntegerField;
    cdsExerciseMonitoringID: TLargeintField;
    cdsExerciseMonitoringCashOnHand: TFloatField;
    cdsExerciseMonitoringPAYDATE: TDateField;
    cdsExerciseMonitoringALLOTMENT_DATE: TDateField;
    gvwBrowseCAID: TcxGridDBBandedColumn;
    gvwBrowseEXER_ID: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseEXER_NO: TcxGridDBBandedColumn;
    gvwBrowseEXERDATE: TcxGridDBBandedColumn;
    gvwBrowseACCNO: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseCA_QTY: TcxGridDBBandedColumn;
    gvwBrowseCA_AMT: TcxGridDBBandedColumn;
    gvwBrowseEXERQTY: TcxGridDBBandedColumn;
    gvwBrowseEXER_AMT: TcxGridDBBandedColumn;
    gvwBrowseEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwBrowseEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwBrowseEXER_PAID: TcxGridDBBandedColumn;
    gvwBrowseEXER_PAIDAMT: TcxGridDBBandedColumn;
    gvwBrowseMEMBER: TcxGridDBBandedColumn;
    gvwBrowseCUSTODY: TcxGridDBBandedColumn;
    gvwBrowseFINANCE: TcxGridDBBandedColumn;
    gvwBrowseVCA_INSTRUCTION: TcxGridDBBandedColumn;
    gvwBrowseBT_INSTRUCTION: TcxGridDBBandedColumn;
    gvwBrowseBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwBrowseRDN_RECEIVE: TcxGridDBBandedColumn;
    gvwBrowseREQUEST_CASH_LOAN: TcxGridDBBandedColumn;
    gvwBrowseCASH_LOAN_APPV: TcxGridDBBandedColumn;
    gvwBrowseSTOCK_DIST: TcxGridDBBandedColumn;
    gvwBrowseSTOCK_DIST_DATE: TcxGridDBBandedColumn;
    gvwBrowseBT_DATE: TcxGridDBBandedColumn;
    gvwBrowseREMARKS: TcxGridDBBandedColumn;
    gvwBrowseCANCEL_EXERPAID: TcxGridDBBandedColumn;
    gvwBrowseMODDA: TcxGridDBBandedColumn;
    gvwBrowseMODUI: TcxGridDBBandedColumn;
    gvwBrowseAPPDA: TcxGridDBBandedColumn;
    gvwBrowseAPPUI: TcxGridDBBandedColumn;
    gvwBrowseUNDER4Y: TcxGridDBBandedColumn;
    gvwBrowseUNDER4YDA: TcxGridDBBandedColumn;
    gvwBrowseNOTES4Y: TcxGridDBBandedColumn;
    gvwBrowseISDEL: TcxGridDBBandedColumn;
    gvwBrowseID: TcxGridDBBandedColumn;
    gvwBrowseCashOnHand: TcxGridDBBandedColumn;
    gvwBrowsePAYDATE: TcxGridDBBandedColumn;
    gvwBrowseALLOTMENT_DATE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExerciseMonitoring: TfrmExerciseMonitoring;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmExerciseMonitoring.FormCreate(Sender: TObject);
begin
  inherited;

  cdsExerciseMonitoring.Close;
  cdsExerciseMonitoring.Open;
end;

Initialization
  RegisterClass(TfrmExerciseMonitoring);

end.
