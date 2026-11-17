unit FormJrnTypeList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Datasnap.DBClient,
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient;

type
  TfrmJrnTypeList = class(TfrmBrowseData)
    cdsJrnTypeList: TNClientDataset;
    cdsJrnTypeListJRNTYPE: TStringField;
    cdsJrnTypeListJRNTYPEDESC: TStringField;
    cdsJrnTypeListJRNMANUAL: TStringField;
    cdsJrnTypeListMODDA: TDateTimeField;
    cdsJrnTypeListMODUI: TStringField;
    cdsJrnTypeListAPPDA: TDateTimeField;
    cdsJrnTypeListAPPUI: TStringField;
    cdsJrnTypeListUNDER4Y: TIntegerField;
    cdsJrnTypeListUNDER4YDA: TDateTimeField;
    cdsJrnTypeListNOTES4Y: TStringField;
    cdsJrnTypeListISDEL: TIntegerField;
    cdsJrnTypeListID: TLargeintField;
    cdsJrnType: TNClientDataset;
    cdsJrnTypeJRNTYPE: TStringField;
    cdsJrnTypeJRNTYPEDESC: TStringField;
    cdsJrnTypeJRNMANUAL: TStringField;
    cdsJrnTypeMODDA: TDateTimeField;
    cdsJrnTypeMODUI: TStringField;
    cdsJrnTypeAPPDA: TDateTimeField;
    cdsJrnTypeAPPUI: TStringField;
    cdsJrnTypeUNDER4Y: TIntegerField;
    cdsJrnTypeUNDER4YDA: TDateTimeField;
    cdsJrnTypeNOTES4Y: TStringField;
    cdsJrnTypeISDEL: TIntegerField;
    cdsJrnTypeID: TLargeintField;
    gvwMasterJRNTYPE: TcxGridDBBandedColumn;
    gvwMasterJRNTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterJRNMANUAL: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure cdsJrnTypeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJrnTypeList: TfrmJrnTypeList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormJrnType;

procedure TfrmJrnTypeList.cdsJrnTypeNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsJrnTypeJRNMANUAL.AsString := '0';
end;

procedure TfrmJrnTypeList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmJrnType;
end;

procedure TfrmJrnTypeList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsJrnTypeList.Close;
  cdsJrnTypeList.Open;
end;

Initialization
  RegisterClass(TfrmJrnTypeList);


end.
