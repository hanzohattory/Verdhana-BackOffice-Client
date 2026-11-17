unit FormSalesAgentList;

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
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient, System.Actions, System.ImageList;

type
  TfrmSalesAgentList = class(TfrmBrowseData)
    cdsSalesAgentList: TNClientDataset;
    cdsSalesAgentListAGENTID: TLargeintField;
    cdsSalesAgentListAGENTCODE: TStringField;
    cdsSalesAgentListAGENTNAME: TStringField;
    cdsSalesAgentListBRANCHID: TLargeintField;
    cdsSalesAgentListBRANCHCODE: TStringField;
    cdsSalesAgentListADDRESS: TStringField;
    cdsSalesAgentListPHONE: TStringField;
    cdsSalesAgentListMOBILEPHONE: TStringField;
    cdsSalesAgentListFAX: TStringField;
    cdsSalesAgentListIDNUMBER: TStringField;
    cdsSalesAgentListMODDA: TDateTimeField;
    cdsSalesAgentListMODUI: TStringField;
    cdsSalesAgentListUNDER4Y: TIntegerField;
    cdsSalesAgentListUNDER4YDA: TDateTimeField;
    gvwMasterAGENTCODE: TcxGridDBBandedColumn;
    gvwMasterAGENTNAME: TcxGridDBBandedColumn;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterADDRESS: TcxGridDBBandedColumn;
    gvwMasterPHONE: TcxGridDBBandedColumn;
    gvwMasterMOBILEPHONE: TcxGridDBBandedColumn;
    gvwMasterFAX: TcxGridDBBandedColumn;
    gvwMasterIDNUMBER: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalesAgentList: TfrmSalesAgentList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormSalesAgent;

procedure TfrmSalesAgentList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmSalesAgent;
end;

procedure TfrmSalesAgentList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsSalesAgentListAGENTID;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBranch.Close;
    cdsLuBranch.Open;

    cdsLuCPCenter.Close;
    cdsLuCPCenter.Open;
  end;

  cdsSalesAgentList.Close;
  cdsSalesAgentList.Open;
end;

Initialization
  RegisterClass(TfrmSalesAgentList);

end.
