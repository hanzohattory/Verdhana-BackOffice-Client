unit FormActLedgerClassList;

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
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, System.ImageList;

type
  TfrmActLedgerClassList = class(TfrmBrowseData)
    cdsActLedgerClassList: TNClientDataset;
    cdsActLedgerClassListALCLASSID: TIntegerField;
    cdsActLedgerClassListALCLASSCODE: TStringField;
    cdsActLedgerClassListALCLASSDESC: TStringField;
    cdsActLedgerClassListMODDA: TDateTimeField;
    cdsActLedgerClassListMODUI: TStringField;
    cdsActLedgerClassListAPPDA: TDateTimeField;
    cdsActLedgerClassListAPPUI: TStringField;
    cdsActLedgerClassListUNDER4Y: TIntegerField;
    cdsActLedgerClassListUNDER4YDA: TDateTimeField;
    cdsActLedgerClassListNOTES4Y: TStringField;
    cdsActLedgerClassListISDEL: TIntegerField;
    cdsActLedgerClassListID: TLargeintField;
    cdsActLedgerClass: TNClientDataset;
    cdsActLedgerClassALCLASSID: TIntegerField;
    cdsActLedgerClassALCLASSCODE: TStringField;
    cdsActLedgerClassALCLASSDESC: TStringField;
    cdsActLedgerClassMODDA: TDateTimeField;
    cdsActLedgerClassMODUI: TStringField;
    cdsActLedgerClassAPPDA: TDateTimeField;
    cdsActLedgerClassAPPUI: TStringField;
    cdsActLedgerClassUNDER4Y: TIntegerField;
    cdsActLedgerClassUNDER4YDA: TDateTimeField;
    cdsActLedgerClassNOTES4Y: TStringField;
    cdsActLedgerClassISDEL: TIntegerField;
    cdsActLedgerClassID: TLargeintField;
    cdsActLedgerClassqryActLedgerClassDet: TDataSetField;
    cdsActLedgerClassDet: TNClientDataset;
    cdsActLedgerClassDetALCLASSID: TIntegerField;
    cdsActLedgerClassDetALTYPE: TStringField;
    cdsActLedgerClassDetCASH_STOCK: TStringField;
    cdsActLedgerClassDetMODDA: TDateTimeField;
    cdsActLedgerClassDetMODUI: TStringField;
    cdsActLedgerClassDetAPPDA: TDateTimeField;
    cdsActLedgerClassDetAPPUI: TStringField;
    cdsActLedgerClassDetUNDER4Y: TIntegerField;
    cdsActLedgerClassDetUNDER4YDA: TDateTimeField;
    cdsActLedgerClassDetNOTES4Y: TStringField;
    cdsActLedgerClassDetISDEL: TIntegerField;
    cdsActLedgerClassDetID: TLargeintField;
    gvwMasterALCLASSCODE: TcxGridDBBandedColumn;
    gvwMasterALCLASSDESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActLedgerClassList: TfrmActLedgerClassList;

implementation

{$R *.dfm}

uses DataGlobal, FormActLedgerClass;

procedure TfrmActLedgerClassList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmActLedgerClass;
end;

procedure TfrmActLedgerClassList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuActLedgerType.Close;
    cdsLuActLedgerType.Open;
  end;

  cdsActLedgerClassList.Close;
  cdsActLedgerClassList.Open;
end;

Initialization
  RegisterClass(TfrmActLedgerClassList);

end.
