unit FormReportDormantClientList;

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
  cxGridDBBandedTableView, cxGrid;

type
  TfrmReportDormanClientList = class(TfrmBrowseData)
    cdsDormanClientList: TNClientDataset;
    cdsDormanClientListTradeDate: TDateTimeField;
    cdsDormanClientListACCID: TIntegerField;
    cdsDormanClientListENTTID: TIntegerField;
    cdsDormanClientListACCCODE: TStringField;
    cdsDormanClientListACCNAME: TStringField;
    cdsDormanClientListACCINIT: TStringField;
    cdsDormanClientListACC_STS: TStringField;
    cdsDormanClientListACCTYPE: TStringField;
    cdsDormanClientListACCSUBTYPE: TStringField;
    cdsDormanClientListBRANCHID: TLargeintField;
    cdsDormanClientListSALESID: TLargeintField;
    cdsDormanClientListINVTYPE: TStringField;
    cdsDormanClientListPRDCODE: TStringField;
    cdsDormanClientListLASTTR_DATE: TDateTimeField;
    cdsDormanClientListDORMANDAY: TIntegerField;
    cdsDormanClientListBRANCHCODE: TStringField;
    cdsDormanClientListBRANCHNAME: TStringField;
    cdsDormanClientListSALESCODE: TStringField;
    cdsDormanClientListSALESNAME: TStringField;
    cdsDormanClientListPRDDESC: TStringField;
    cdsDormanClientListDORMANTSTAT: TStringField;
    gvwMasterTradeDate: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterLASTTR_DATE: TcxGridDBBandedColumn;
    gvwMasterDORMANDAY: TcxGridDBBandedColumn;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterPRDDESC: TcxGridDBBandedColumn;
    gvwMasterDORMANTSTAT: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDormanClientList: TfrmReportDormanClientList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportDormanClientList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsDormanClientList.Close;
  cdsDormanClientList.Open;
end;

end.
