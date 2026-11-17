unit FormRenewalContractRepoList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmRenewalContractRepoList = class(TfrmBrowseData)
    cdsRenewalContract: TNClientDataset;
    cdsRenewalContractCONRID: TLargeintField;
    cdsRenewalContractCONTRACT_NO: TStringField;
    cdsRenewalContractENTTID: TIntegerField;
    cdsRenewalContractENTTCODE: TStringField;
    cdsRenewalContractENTTNAME: TStringField;
    cdsRenewalContractTRXDATE: TDateTimeField;
    cdsRenewalContractTRXTYPE: TStringField;
    cdsRenewalContractACCID: TIntegerField;
    cdsRenewalContractACCCODE: TStringField;
    cdsRenewalContractACCNAME: TStringField;
    cdsRenewalContractRACCID: TIntegerField;
    cdsRenewalContractRACCCODE: TStringField;
    cdsRenewalContractRACCNAME: TStringField;
    cdsRenewalContractREPO_AMT: TFloatField;
    cdsRenewalContractSETTDATE: TDateTimeField;
    cdsRenewalContractSETTDAY: TIntegerField;
    cdsRenewalContractMATURDATE: TDateTimeField;
    cdsRenewalContractCCY: TStringField;
    cdsRenewalContractLOAN_AMT: TFloatField;
    cdsRenewalContractDUE_AMT: TFloatField;
    cdsRenewalContractINTERESTCODE: TStringField;
    cdsRenewalContractINTERESTRATE: TFloatField;
    cdsRenewalContractCOLL_AMT: TFloatField;
    cdsRenewalContractAPR_COLL: TFloatField;
    cdsRenewalContractFORCESELL: TFloatField;
    cdsRenewalContractCOLL_CALL: TFloatField;
    cdsRenewalContractDISCOUNT: TSmallintField;
    cdsRenewalContractCORPACT: TSmallintField;
    cdsRenewalContractOLD_CONRID: TLargeintField;
    cdsRenewalContractOLD_CONTRACT_NO: TStringField;
    cdsRenewalContractRENEWAL: TBooleanField;
    gvwMasterCONRID: TcxGridDBBandedColumn;
    gvwMasterCONTRACT_NO: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTTNAME: TcxGridDBBandedColumn;
    gvwMasterTRXDATE: TcxGridDBBandedColumn;
    gvwMasterTRXTYPE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterRACCID: TcxGridDBBandedColumn;
    gvwMasterRACCCODE: TcxGridDBBandedColumn;
    gvwMasterRACCNAME: TcxGridDBBandedColumn;
    gvwMasterREPO_AMT: TcxGridDBBandedColumn;
    gvwMasterSETTDATE: TcxGridDBBandedColumn;
    gvwMasterSETTDAY: TcxGridDBBandedColumn;
    gvwMasterMATURDATE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterLOAN_AMT: TcxGridDBBandedColumn;
    gvwMasterDUE_AMT: TcxGridDBBandedColumn;
    gvwMasterINTERESTCODE: TcxGridDBBandedColumn;
    gvwMasterINTERESTRATE: TcxGridDBBandedColumn;
    gvwMasterCOLL_AMT: TcxGridDBBandedColumn;
    gvwMasterAPR_COLL: TcxGridDBBandedColumn;
    gvwMasterFORCESELL: TcxGridDBBandedColumn;
    gvwMasterCOLL_CALL: TcxGridDBBandedColumn;
    gvwMasterDISCOUNT: TcxGridDBBandedColumn;
    gvwMasterCORPACT: TcxGridDBBandedColumn;
    gvwMasterOLD_CONRID: TcxGridDBBandedColumn;
    gvwMasterOLD_CONTRACT_NO: TcxGridDBBandedColumn;
    gvwMasterRENEWAL: TcxGridDBBandedColumn;
    actPosting: TNAction;
    actStockMovement: TNAction;
    Posting1: TMenuItem;
    StockMovement1: TMenuItem;
    cdsRenewalContractISACCRUE: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actStockMovementExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actPostingUpdate(Sender: TObject);
    procedure actStockMovementUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRenewalContractRepoList: TfrmRenewalContractRepoList;

implementation

{$R *.dfm}

uses DataGlobal, FormOpeningRepoContractEditor;

procedure TfrmRenewalContractRepoList.actPostingExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if (not cdsRenewalContract.Active) or (cdsRenewalContract.IsEmpty) then
    Exit;

  if MessageDlg('Are you sure to posting renewal repo contract '
    + QuotedStr(cdsRenewalContractCONTRACT_NO.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostingRenewalRepo(cdsRenewalContractCONRID.AsLargeInt, sMsg);
    cdsRenewalContract.Close;
    cdsRenewalContract.Open;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmRenewalContractRepoList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsRenewalContractISACCRUE.IsNull) or (cdsRenewalContractISACCRUE.AsInteger = 0);
end;

procedure TfrmRenewalContractRepoList.actStockMovementExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if (not cdsRenewalContract.Active) or (cdsRenewalContract.IsEmpty) then
    Exit;

  if MessageDlg('Are you sure to move stock renewal repo contract '
    + QuotedStr(cdsRenewalContractCONTRACT_NO.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.SettleRenewalRepo(cdsRenewalContractCONRID.AsLargeInt, sMsg);
    cdsRenewalContract.Close;
    cdsRenewalContract.Open;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmRenewalContractRepoList.actStockMovementUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsRenewalContractISACCRUE.AsInteger = 1);
end;

procedure TfrmRenewalContractRepoList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmOpeningRepoContractEditor;
end;

procedure TfrmRenewalContractRepoList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsRenewalContractCONRID;

  cdsRenewalContract.Close;
  cdsRenewalContract.Open;
end;

Initialization
  RegisterClass(TfrmRenewalContractRepoList);

end.
