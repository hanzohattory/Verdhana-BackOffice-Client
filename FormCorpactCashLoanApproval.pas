unit FormCorpactCashLoanApproval;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset;

type
  TfrmCorpactCashLoanApproval = class(TfrmBrowseData)
    cdsCorpactCashLoanAppv: TNClientDataset;
    cdsCorpactCashLoanAppvCAID: TLargeintField;
    cdsCorpactCashLoanAppvEXER_ID: TLargeintField;
    cdsCorpactCashLoanAppvACCID: TLargeintField;
    cdsCorpactCashLoanAppvEXERDATE: TDateField;
    cdsCorpactCashLoanAppvACCNO: TStringField;
    cdsCorpactCashLoanAppvACCNAME: TStringField;
    cdsCorpactCashLoanAppvCA_QTY: TFloatField;
    cdsCorpactCashLoanAppvCA_AMT: TFloatField;
    cdsCorpactCashLoanAppvEXERQTY: TFloatField;
    cdsCorpactCashLoanAppvEXER_AMT: TFloatField;
    cdsCorpactCashLoanAppvEXER_WARRQTY: TFloatField;
    cdsCorpactCashLoanAppvEXER_PAYDATE: TDateField;
    cdsCorpactCashLoanAppvEXER_PAID: TStringField;
    cdsCorpactCashLoanAppvEXER_PAIDAMT: TFloatField;
    cdsCorpactCashLoanAppvFINANCE: TStringField;
    cdsCorpactCashLoanAppvVCA_INSTRUCTION: TStringField;
    cdsCorpactCashLoanAppvBT_INSTRUCTION: TStringField;
    cdsCorpactCashLoanAppvBANK_INSTRUCTION: TStringField;
    cdsCorpactCashLoanAppvREQUEST_CASH_LOAN: TStringField;
    cdsCorpactCashLoanAppvCASH_LOAN_APPV: TStringField;
    cdsCorpactCashLoanAppvSTOCK_DIST: TStringField;
    cdsCorpactCashLoanAppvMODDA: TDateTimeField;
    cdsCorpactCashLoanAppvMODUI: TStringField;
    cdsCorpactCashLoanAppvAPPDA: TDateTimeField;
    cdsCorpactCashLoanAppvAPPUI: TStringField;
    cdsCorpactCashLoanAppvUNDER4Y: TIntegerField;
    cdsCorpactCashLoanAppvUNDER4YDA: TDateTimeField;
    cdsCorpactCashLoanAppvNOTES4Y: TStringField;
    cdsCorpactCashLoanAppvISDEL: TIntegerField;
    cdsCorpactCashLoanAppvID: TLargeintField;
    cdsCorpactCashLoanAppvCashOnHand: TFloatField;
    cdsCorpactCashLoanAppvISRDN: TStringField;
    gvwMasterCAID: TcxGridDBBandedColumn;
    gvwMasterEXER_ID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterEXERDATE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCA_QTY: TcxGridDBBandedColumn;
    gvwMasterCA_AMT: TcxGridDBBandedColumn;
    gvwMasterEXERQTY: TcxGridDBBandedColumn;
    gvwMasterEXER_AMT: TcxGridDBBandedColumn;
    gvwMasterEXER_WARRQTY: TcxGridDBBandedColumn;
    gvwMasterEXER_PAYDATE: TcxGridDBBandedColumn;
    gvwMasterEXER_PAID: TcxGridDBBandedColumn;
    gvwMasterEXER_PAIDAMT: TcxGridDBBandedColumn;
    gvwMasterFINANCE: TcxGridDBBandedColumn;
    gvwMasterVCA_INSTRUCTION: TcxGridDBBandedColumn;
    gvwMasterBT_INSTRUCTION: TcxGridDBBandedColumn;
    gvwMasterBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwMasterREQUEST_CASH_LOAN: TcxGridDBBandedColumn;
    gvwMasterCASH_LOAN_APPV: TcxGridDBBandedColumn;
    gvwMasterSTOCK_DIST: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterCashOnHand: TcxGridDBBandedColumn;
    gvwMasterISRDN: TcxGridDBBandedColumn;
    actApproved: TNAction;
    procedure FormCreate(Sender: TObject);
    procedure actApprovedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpactCashLoanApproval: TfrmCorpactCashLoanApproval;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCorpactCashLoanApproval.actApprovedExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmCorpactCashLoanApproval.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCorpactCashLoanAppv.Close;
  cdsCorpactCashLoanAppv.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
  cdsCorpactCashLoanAppv.Open;
end;

Initialization
  RegisterClass(TfrmCorpactCashLoanApproval);

end.
