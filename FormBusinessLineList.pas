unit FormBusinessLineList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmBusinessLineList = class(TfrmBrowseData)
    cdsBusinessLineList: TNClientDataset;
    cdsBusinessLineListBUSSLINE_ID: TIntegerField;
    cdsBusinessLineListBUSSINESS_NAME: TStringField;
    cdsBusinessLineListBTAX: TFloatField;
    cdsBusinessLineListSTAX: TFloatField;
    cdsBusinessLineListMODDA: TDateTimeField;
    cdsBusinessLineListMODUI: TStringField;
    cdsBusinessLineListAPPDA: TDateTimeField;
    cdsBusinessLineListAPPUI: TStringField;
    cdsBusinessLineListUNDER4Y: TIntegerField;
    cdsBusinessLineListUNDER4YDA: TDateTimeField;
    cdsBusinessLineListNOTES4Y: TStringField;
    cdsBusinessLineListISDEL: TIntegerField;
    cdsBusinessLineListID: TLargeintField;
    gvwMasterBUSSLINE_ID: TcxGridDBBandedColumn;
    gvwMasterBUSSINESS_NAME: TcxGridDBBandedColumn;
    gvwMasterBTAX: TcxGridDBBandedColumn;
    gvwMasterSTAX: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsBusinessLineListBUSSLINE_CODE: TStringField;
    cdsBusinessLineListRISK: TStringField;
    gvwMasterBUSSLINE_CODE: TcxGridDBBandedColumn;
    gvwMasterRISK: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBusinessLineList: TfrmBusinessLineList;

implementation

{$R *.dfm}

uses FormBusinessLine, DataGlobal;

procedure TfrmBusinessLineList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBusinessLine;
end;

procedure TfrmBusinessLineList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBusinessLineListBUSSLINE_ID;
  cdsBusinessLineList.Close;
  cdsBusinessLineList.Open;
end;

Initialization
  RegisterClass(TfrmBusinessLineList);

end.
