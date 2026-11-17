unit FormInterestList;

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
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, System.Actions,
  System.ImageList, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmInterestList = class(TfrmBrowseData)
    cdsInterestList: TNClientDataset;
    cdsInterest: TNClientDataset;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterINTERESTDESC: TcxGridDBBandedColumn;
    gvwMasterCALCMETHOD: TcxGridDBBandedColumn;
    gvwMasterINTERESTRATE: TcxGridDBBandedColumn;
    gvwMasterINTERESTTABLE: TcxGridDBBandedColumn;
    gvwMasterCALCBASIS: TcxGridDBBandedColumn;
    gvwMasterINTERESTDAY: TcxGridDBBandedColumn;
    gvwMasterISACCRUE: TcxGridDBBandedColumn;
    cdsInterestListINTERESTCODE: TStringField;
    cdsInterestListCCY: TStringField;
    cdsInterestListINTERESTDESC: TStringField;
    cdsInterestListCALCMETHOD: TStringField;
    cdsInterestListINTERESTRATE: TFloatField;
    cdsInterestListINTERESTTABLE: TStringField;
    cdsInterestListCALCBASIS: TStringField;
    cdsInterestListINTERESTDAY: TIntegerField;
    cdsInterestListISACCRUE: TSmallintField;
    cdsInterestINTERESTCODE: TStringField;
    cdsInterestCCY: TStringField;
    cdsInterestINTERESTDESC: TStringField;
    cdsInterestCALCMETHOD: TStringField;
    cdsInterestINTERESTRATE: TFloatField;
    cdsInterestINTERESTTABLE: TStringField;
    cdsInterestCALCBASIS: TStringField;
    cdsInterestINTERESTDAY: TIntegerField;
    cdsInterestISACCRUE: TSmallintField;
    cdsInterestMODDA: TDateTimeField;
    cdsInterestMODUI: TStringField;
    cdsInterestAPPDA: TDateTimeField;
    cdsInterestAPPUI: TStringField;
    cdsInterestISDEL: TIntegerField;
    cdsInterestID: TLargeintField;
    gvwMasterINTERESTCODE: TcxGridDBBandedColumn;
    cdsInterestUNDER4Y: TIntegerField;
    cdsInterestUNDER4YDA: TDateTimeField;
    cdsInterestNOTES4Y: TStringField;
    cdsInterestListMODDA: TDateTimeField;
    cdsInterestListMODUI: TStringField;
    cdsInterestListAPPDA: TDateTimeField;
    cdsInterestListAPPUI: TStringField;
    cdsInterestListUNDER4Y: TIntegerField;
    cdsInterestListUNDER4YDA: TDateTimeField;
    cdsInterestListNOTES4Y: TStringField;
    cdsInterestListISDEL: TIntegerField;
    cdsInterestListID: TLargeintField;
    cdsInterestListPENALTYRATE: TFloatField;
    cdsInterestListPENALTYDAY: TIntegerField;
    cdsInterestListPENALTYCALC_DAY: TIntegerField;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterPENALTYRATE: TcxGridDBBandedColumn;
    gvwMasterPENALTYDAY: TcxGridDBBandedColumn;
    gvwMasterPENALTYCALC_DAY: TcxGridDBBandedColumn;
    cdsInterestPENALTYRATE: TFloatField;
    cdsInterestPENALTYDAY: TIntegerField;
    cdsInterestPENALTYCALC_DAY: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInterestList: TfrmInterestList;

implementation

{$R *.dfm}

uses DataGlobal, FormInterest;

procedure TfrmInterestList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmInterest;
end;

procedure TfrmInterestList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuInterestType.Close;
    cdsLuInterestType.Open;
  end;

  KeyField := cdsInterestListINTERESTCODE;
  cdsInterestList.Close;
  cdsInterestList.Open;
end;

Initialization
  RegisterClass(TfrmInterestList);

end.
