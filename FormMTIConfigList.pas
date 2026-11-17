unit FormMTIConfigList;

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
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, System.ImageList;

type
  TfrmMTIConfigList = class(TfrmBrowseData)
    cdsMTIConfigList: TNClientDataset;
    cdsMTIConfigListCONFIGID: TIntegerField;
    cdsMTIConfigListCONFIGCODE: TStringField;
    cdsMTIConfigListTRANSID: TIntegerField;
    cdsMTIConfigListDESCRIPTION: TStringField;
    cdsMTIConfigListMODDA: TDateTimeField;
    cdsMTIConfigListMODUI: TStringField;
    cdsMTIConfigListAPPDA: TDateTimeField;
    cdsMTIConfigListAPPUI: TStringField;
    cdsMTIConfigListUNDER4Y: TIntegerField;
    cdsMTIConfigListUNDER4YDA: TDateTimeField;
    cdsMTIConfigListNOTES4Y: TStringField;
    cdsMTIConfigListISDEL: TIntegerField;
    cdsMTIConfigListID: TLargeintField;
    cdsMTIConfig: TNClientDataset;
    cdsMTIConfigCONFIGID: TIntegerField;
    cdsMTIConfigCONFIGCODE: TStringField;
    cdsMTIConfigTRANSID: TIntegerField;
    cdsMTIConfigDESCRIPTION: TStringField;
    cdsMTIConfigMODDA: TDateTimeField;
    cdsMTIConfigMODUI: TStringField;
    cdsMTIConfigAPPDA: TDateTimeField;
    cdsMTIConfigAPPUI: TStringField;
    cdsMTIConfigUNDER4Y: TIntegerField;
    cdsMTIConfigUNDER4YDA: TDateTimeField;
    cdsMTIConfigNOTES4Y: TStringField;
    cdsMTIConfigISDEL: TIntegerField;
    cdsMTIConfigID: TLargeintField;
    cdsMTIConfigqryMTIConfigRecord: TDataSetField;
    cdsMTIConfigRecord: TNClientDataset;
    cdsMTIConfigRecordCONFIG_RECORD_ID: TIntegerField;
    cdsMTIConfigRecordCONFIGID: TIntegerField;
    cdsMTIConfigRecordRECORDID: TIntegerField;
    cdsMTIConfigRecordSEQID: TIntegerField;
    cdsMTIConfigRecordMODDA: TDateTimeField;
    cdsMTIConfigRecordMODUI: TStringField;
    cdsMTIConfigRecordAPPDA: TDateTimeField;
    cdsMTIConfigRecordAPPUI: TStringField;
    cdsMTIConfigRecordUNDER4Y: TIntegerField;
    cdsMTIConfigRecordUNDER4YDA: TDateTimeField;
    cdsMTIConfigRecordNOTES4Y: TStringField;
    cdsMTIConfigRecordISDEL: TIntegerField;
    cdsMTIConfigRecordID: TLargeintField;
    cdsMTIConfigRecordqryMTIConfigField: TDataSetField;
    cdsMTIConfigField: TNClientDataset;
    cdsMTIConfigFieldCONFIG_RECORD_ID: TIntegerField;
    cdsMTIConfigFieldFIELDID: TIntegerField;
    cdsMTIConfigFieldSOURCEDATA: TStringField;
    cdsMTIConfigFieldSOURCEVALUE: TStringField;
    cdsMTIConfigFieldMODDA: TDateTimeField;
    cdsMTIConfigFieldMODUI: TStringField;
    cdsMTIConfigFieldAPPDA: TDateTimeField;
    cdsMTIConfigFieldAPPUI: TStringField;
    cdsMTIConfigFieldUNDER4Y: TIntegerField;
    cdsMTIConfigFieldUNDER4YDA: TDateTimeField;
    cdsMTIConfigFieldNOTES4Y: TStringField;
    cdsMTIConfigFieldISDEL: TIntegerField;
    cdsMTIConfigFieldID: TLargeintField;
    gvwMasterCONFIGID: TcxGridDBBandedColumn;
    gvwMasterCONFIGCODE: TcxGridDBBandedColumn;
    gvwMasterTRANSID: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsLuMTITransRecordMINREC: TIntegerField;
    cdsLuMTITransRecordMAXREC: TIntegerField;
    cdsLuMTITransRecordNUM_FIELDS: TIntegerField;
    cdsLuMTITransRecordREQ_FIELDS: TIntegerField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMTIConfigList: TfrmMTIConfigList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormMTIConfig;

procedure TfrmMTIConfigList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmMTIConfig;
end;

procedure TfrmMTIConfigList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsMTIConfigListCONFIGID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMTITrans.Close;
    cdsLuMTITrans.Open;

    cdsLuMTIField.Close;
    cdsLuMTIField.Open;
  end;

  cdsMTIConfigList.Close;
  cdsMTIConfigList.Open;
end;

Initialization
  RegisterClass(TfrmMTIConfigList);

end.
