unit FormEMateraiMonitoringList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxTextEdit, cxCalendar, cxBarEditItem;

type
  TfrmEMateraiMonitoringList = class(TfrmBrowseData)
    cdsEMateraiList: TNClientDataset;
    cdsEMateraiListid: TLargeintField;
    cdsEMateraiListstatus: TStringField;
    cdsEMateraiListworker_id: TStringField;
    cdsEMateraiListclaimed_at: TDateTimeField;
    cdsEMateraiListretry_count: TIntegerField;
    cdsEMateraiListcreated_at: TDateTimeField;
    cdsEMateraiListupdated_at: TDateTimeField;
    cdsEMateraiListfile_name: TWideStringField;
    cdsEMateraiListsource_path: TWideStringField;
    cdsEMateraiListdoc_type: TWideStringField;
    cdsEMateraiListdoc_number: TWideStringField;
    cdsEMateraiListdoc_date: TDateField;
    cdsEMateraiListdoc_password: TWideStringField;
    cdsEMateraiListstamp_nominal: TWideStringField;
    cdsEMateraiListidentity_type: TWideStringField;
    cdsEMateraiListidentity_number: TWideStringField;
    cdsEMateraiListpayer_name: TWideStringField;
    cdsEMateraiListtrans_location: TWideStringField;
    cdsEMateraiListreason: TWideStringField;
    cdsEMateraiListstamp_llx: TFloatField;
    cdsEMateraiListstamp_lly: TFloatField;
    cdsEMateraiListstamp_urx: TFloatField;
    cdsEMateraiListstamp_ury: TFloatField;
    cdsEMateraiListstamp_page: TIntegerField;
    cdsEMateraiListstorage_path: TWideStringField;
    cdsEMateraiListqr_storage_path: TWideStringField;
    cdsEMateraiListfinal_file_path: TWideStringField;
    cdsEMateraiListserial_number: TWideStringField;
    cdsEMateraiListstamp_status: TStringField;
    cdsEMateraiListerror_code: TStringField;
    cdsEMateraiListerror_message: TWideStringField;
    cdsEMateraiListstamped_at: TDateTimeField;
    gvwMasterid: TcxGridDBBandedColumn;
    gvwMasterstatus: TcxGridDBBandedColumn;
    gvwMasterworker_id: TcxGridDBBandedColumn;
    gvwMasterclaimed_at: TcxGridDBBandedColumn;
    gvwMasterretry_count: TcxGridDBBandedColumn;
    gvwMastercreated_at: TcxGridDBBandedColumn;
    gvwMasterupdated_at: TcxGridDBBandedColumn;
    gvwMasterfile_name: TcxGridDBBandedColumn;
    gvwMastersource_path: TcxGridDBBandedColumn;
    gvwMasterdoc_type: TcxGridDBBandedColumn;
    gvwMasterdoc_number: TcxGridDBBandedColumn;
    gvwMasterdoc_date: TcxGridDBBandedColumn;
    gvwMasterdoc_password: TcxGridDBBandedColumn;
    gvwMasterstamp_nominal: TcxGridDBBandedColumn;
    gvwMasteridentity_type: TcxGridDBBandedColumn;
    gvwMasteridentity_number: TcxGridDBBandedColumn;
    gvwMasterpayer_name: TcxGridDBBandedColumn;
    gvwMastertrans_location: TcxGridDBBandedColumn;
    gvwMasterreason: TcxGridDBBandedColumn;
    gvwMasterstamp_llx: TcxGridDBBandedColumn;
    gvwMasterstamp_lly: TcxGridDBBandedColumn;
    gvwMasterstamp_urx: TcxGridDBBandedColumn;
    gvwMasterstamp_ury: TcxGridDBBandedColumn;
    gvwMasterstamp_page: TcxGridDBBandedColumn;
    gvwMasterstorage_path: TcxGridDBBandedColumn;
    gvwMasterqr_storage_path: TcxGridDBBandedColumn;
    gvwMasterfinal_file_path: TcxGridDBBandedColumn;
    gvwMasterserial_number: TcxGridDBBandedColumn;
    gvwMasterstamp_status: TcxGridDBBandedColumn;
    gvwMastererror_code: TcxGridDBBandedColumn;
    gvwMastererror_message: TcxGridDBBandedColumn;
    gvwMasterstamped_at: TcxGridDBBandedColumn;
    edDocDate: TcxBarEditItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
    FSysDate: TDate;
  public
    { Public declarations }
  end;

var
  frmEMateraiMonitoringList: TfrmEMateraiMonitoringList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmEMateraiMonitoringList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsEMateraiList.Close;
  cdsEMateraiList.Params[0].AsDate := VarToDateTime(edDocDate.EditValue);
  cdsEMateraiList.Open;
end;

procedure TfrmEMateraiMonitoringList.FormCreate(Sender: TObject);
begin
  inherited;
  FSysDate := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmEMateraiMonitoringList.FormShow(Sender: TObject);
begin
  inherited;
  edDocDate.EditValue := FSysDate;
end;

end.
