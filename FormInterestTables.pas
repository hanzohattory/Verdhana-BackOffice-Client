unit FormInterestTables;

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
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, NReportRPC,
  NReportClient, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  System.ImageList;

type
  TfrmInterestTables = class(TfrmBrowseData)
    cdsInterestTableList: TNClientDataset;
    cdsInterestTableH: TNClientDataset;
    cdsInterestTableD: TNClientDataset;
    gvwMasterINTERESTTABLEDESC: TcxGridDBBandedColumn;
    cdsInterestTableListINTERESTTABLECODE: TStringField;
    cdsInterestTableListINTERESTTABLEDESC: TStringField;
    gvwMasterINTERESTTABLECODE: TcxGridDBBandedColumn;
    cdsInterestTableHINTERESTTABLECODE: TStringField;
    cdsInterestTableHINTERESTTABLEDESC: TStringField;
    cdsInterestTableHMODDA: TDateTimeField;
    cdsInterestTableHMODUI: TStringField;
    cdsInterestTableHAPPDA: TDateTimeField;
    cdsInterestTableHAPPUI: TStringField;
    cdsInterestTableHISDEL: TIntegerField;
    cdsInterestTableHID: TLargeintField;
    cdsInterestTableHqryInterestTableD: TDataSetField;
    cdsInterestTableDINTERESTTABLECODE: TStringField;
    cdsInterestTableDSEQNO: TIntegerField;
    cdsInterestTableDSTARTVALUE: TFloatField;
    cdsInterestTableDENDVALUE: TFloatField;
    cdsInterestTableDINTERESTRATE: TFloatField;
    cdsInterestTableDMODDA: TDateTimeField;
    cdsInterestTableDMODUI: TStringField;
    cdsInterestTableDAPPDA: TDateTimeField;
    cdsInterestTableDAPPUI: TStringField;
    cdsInterestTableDISDEL: TIntegerField;
    cdsInterestTableDID: TLargeintField;
    cdsInterestTableHUNDER4Y: TIntegerField;
    cdsInterestTableHUNDER4YDA: TDateTimeField;
    cdsInterestTableHNOTES4Y: TStringField;
    cdsInterestTableListUNDER4Y: TIntegerField;
    cdsInterestTableListUNDER4YDA: TDateTimeField;
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
  frmInterestTables: TfrmInterestTables;

implementation

{$R *.dfm}

uses DataGlobal, FormInterestTable;

procedure TfrmInterestTables.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmInterestTable;
end;

procedure TfrmInterestTables.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsInterestTableListINTERESTTABLECODE;
  cdsInterestTableList.Close;
  cdsInterestTableList.Open;
end;

Initialization
  RegisterClass(TfrmInterestTables);

end.
