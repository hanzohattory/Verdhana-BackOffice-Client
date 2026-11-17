unit FormInstrumentTypes;

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
  cxGridCustomView, cxGrid, NReportRPC, NReportClient;

type
  TfrmInstrumentTypes = class(TfrmBrowseData)
    cdsInstrumentTypeList: TNClientDataset;
    cdsInstrumentTypeListINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentTypeListINSTRUMENT_TYPE_DESC: TStringField;
    cdsInstrumentTypeListMODDA: TDateTimeField;
    cdsInstrumentTypeListMODUI: TStringField;
    cdsInstrumentTypeListAPPDA: TDateTimeField;
    cdsInstrumentTypeListAPPUI: TStringField;
    cdsInstrumentTypeListISDEL: TIntegerField;
    cdsInstrumentTypeListID: TLargeintField;
    cdsInstrumentType: TNClientDataset;
    cdsInstrumentTypeINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentTypeINSTRUMENT_TYPE_DESC: TStringField;
    cdsInstrumentTypeMODDA: TDateTimeField;
    cdsInstrumentTypeMODUI: TStringField;
    cdsInstrumentTypeAPPDA: TDateTimeField;
    cdsInstrumentTypeAPPUI: TStringField;
    cdsInstrumentTypeISDEL: TIntegerField;
    cdsInstrumentTypeID: TLargeintField;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_DESC: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstrumentTypes: TfrmInstrumentTypes;

implementation

{$R *.dfm}

uses DataGlobal, FormInstrumentType;

procedure TfrmInstrumentTypes.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmInstrumentType;
end;

procedure TfrmInstrumentTypes.FormCreate(Sender: TObject);
begin
  inherited;
  cdsInstrumentTypeList.Close;
  cdsInstrumentTypeList.Open;
end;

Initialization
  RegisterClass(TfrmInstrumentTypes);

end.
