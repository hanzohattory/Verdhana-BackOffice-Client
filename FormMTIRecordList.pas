unit FormMTIRecordList;

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
  TfrmMTIRecordList = class(TfrmBrowseData)
    cdsMTIRecordList: TNClientDataset;
    cdsMTIRecord: TNClientDataset;
    cdsMTIRecordListRECORDID: TIntegerField;
    cdsMTIRecordListRECORDNAME: TStringField;
    cdsMTIRecordListDECSRIPTION: TStringField;
    cdsMTIRecordListMODDA: TDateTimeField;
    cdsMTIRecordListMODUI: TStringField;
    cdsMTIRecordListAPPDA: TDateTimeField;
    cdsMTIRecordListAPPUI: TStringField;
    cdsMTIRecordListUNDER4Y: TIntegerField;
    cdsMTIRecordListUNDER4YDA: TDateTimeField;
    cdsMTIRecordListNOTES4Y: TStringField;
    cdsMTIRecordListISDEL: TIntegerField;
    cdsMTIRecordListID: TLargeintField;
    cdsMTIRecordRECORDID: TIntegerField;
    cdsMTIRecordRECORDNAME: TStringField;
    cdsMTIRecordDECSRIPTION: TStringField;
    cdsMTIRecordMODDA: TDateTimeField;
    cdsMTIRecordMODUI: TStringField;
    cdsMTIRecordAPPDA: TDateTimeField;
    cdsMTIRecordAPPUI: TStringField;
    cdsMTIRecordUNDER4Y: TIntegerField;
    cdsMTIRecordUNDER4YDA: TDateTimeField;
    cdsMTIRecordNOTES4Y: TStringField;
    cdsMTIRecordISDEL: TIntegerField;
    cdsMTIRecordID: TLargeintField;
    cdsMTIRecordqryMTIField: TDataSetField;
    cdsMTIField: TNClientDataset;
    cdsMTIFieldFIELDID: TIntegerField;
    cdsMTIFieldRECORDID: TIntegerField;
    cdsMTIFieldSEQID: TIntegerField;
    cdsMTIFieldFIELDNAME: TStringField;
    cdsMTIFieldXMLFIELDNAME: TStringField;
    cdsMTIFieldSYNTAX: TStringField;
    cdsMTIFieldMOC: TStringField;
    cdsMTIFieldNOTES: TStringField;
    cdsMTIFieldMODDA: TDateTimeField;
    cdsMTIFieldMODUI: TStringField;
    cdsMTIFieldAPPDA: TDateTimeField;
    cdsMTIFieldAPPUI: TStringField;
    cdsMTIFieldUNDER4Y: TIntegerField;
    cdsMTIFieldUNDER4YDA: TDateTimeField;
    cdsMTIFieldNOTES4Y: TStringField;
    cdsMTIFieldISDEL: TIntegerField;
    cdsMTIFieldID: TLargeintField;
    gvwMasterRECORDID: TcxGridDBBandedColumn;
    gvwMasterRECORDNAME: TcxGridDBBandedColumn;
    gvwMasterDECSRIPTION: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMTIRecordList: TfrmMTIRecordList;

implementation

{$R *.dfm}

uses DataGlobal, FormMTIRecord;

procedure TfrmMTIRecordList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmMTIRecord;
end;

procedure TfrmMTIRecordList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsMTIRecordListRECORDID;

  cdsMTIRecordList.Close;
  cdsMTIRecordList.Open;
end;

Initialization
  RegisterClass(TfrmMTIRecordList);

end.
