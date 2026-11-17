unit FormReportClientCommisionLists;

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
  TfrmReportClientCommisionLists = class(TfrmBrowseData)
    cdsClientComissionList: TNClientDataset;
    cdsClientComissionListACCID: TIntegerField;
    cdsClientComissionListACCCODE: TStringField;
    cdsClientComissionListACCNAME: TStringField;
    cdsClientComissionListSALESCODE: TStringField;
    cdsClientComissionListSALESNAME: TStringField;
    cdsClientComissionListBRANCHCODE: TStringField;
    cdsClientComissionListBRANCHNAME: TStringField;
    cdsClientComissionListComm_rate_offline: TFloatField;
    cdsClientComissionListComm_rate_online: TFloatField;
    cdsClientComissionListINTERESTCODE: TStringField;
    cdsClientComissionListREGINTEREST: TFloatField;
    cdsClientComissionListMARGININTEREST: TFloatField;
    cdsClientComissionListREPOINTEREST: TFloatField;
    cdsClientComissionListPRDCODE: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterComm_rate_offline: TcxGridDBBandedColumn;
    gvwMasterComm_rate_online: TcxGridDBBandedColumn;
    gvwMasterINTERESTCODE: TcxGridDBBandedColumn;
    gvwMasterREGINTEREST: TcxGridDBBandedColumn;
    gvwMasterMARGININTEREST: TcxGridDBBandedColumn;
    gvwMasterREPOINTEREST: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportClientCommisionLists: TfrmReportClientCommisionLists;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportClientCommisionLists.FormShow(Sender: TObject);
begin
  inherited;
  cdsClientComissionList.Close;
  cdsClientComissionList.Open;
end;

end.
