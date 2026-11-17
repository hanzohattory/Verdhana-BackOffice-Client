unit FormBAEList;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmBAEList = class(TfrmBrowseData)
    cdsBAEList: TNClientDataset;
    cdsBAEListBAEID: TIntegerField;
    cdsBAEListBAECODE: TStringField;
    cdsBAEListBAENAME: TStringField;
    cdsBAEListBAEADDRESS: TStringField;
    cdsBAEListBAEPHONE: TStringField;
    cdsBAEListBAEFAX: TStringField;
    cdsBAEListMODDA: TDateTimeField;
    cdsBAEListMODUI: TStringField;
    cdsBAEListAPPDA: TDateTimeField;
    cdsBAEListAPPUI: TStringField;
    cdsBAEListUNDER4Y: TIntegerField;
    cdsBAEListUNDER4YDA: TDateTimeField;
    cdsBAEListNOTES4Y: TStringField;
    cdsBAEListISDEL: TIntegerField;
    cdsBAEListID: TLargeintField;
    gvwMasterBAEID: TcxGridDBBandedColumn;
    gvwMasterBAECODE: TcxGridDBBandedColumn;
    gvwMasterBAENAME: TcxGridDBBandedColumn;
    gvwMasterBAEADDRESS: TcxGridDBBandedColumn;
    gvwMasterBAEPHONE: TcxGridDBBandedColumn;
    gvwMasterBAEFAX: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAEList: TfrmBAEList;

implementation

{$R *.dfm}

uses DataGlobal, FormBAE;

procedure TfrmBAEList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBAE;
end;

procedure TfrmBAEList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBAEListBAEID;
  cdsBAEList.Close;
  cdsBAEList.Open;
end;

Initialization
  RegisterClass(TfrmBAEList);

end.
