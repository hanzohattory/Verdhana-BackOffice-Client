unit FormAuthPerson;

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
  TfrmAuthPerson = class(TfrmBrowseData)
    cdsAuthPersonList: TNClientDataset;
    cdsAuthPersonListAUTH_ID: TLargeintField;
    cdsAuthPersonListAUTH_NAME: TStringField;
    cdsAuthPersonListJABATAN: TStringField;
    cdsAuthPersonListMODDA: TDateTimeField;
    cdsAuthPersonListMODUI: TStringField;
    cdsAuthPersonListAPPDA: TDateTimeField;
    cdsAuthPersonListAPPUI: TStringField;
    cdsAuthPersonListUNDER4Y: TIntegerField;
    cdsAuthPersonListUNDER4YDA: TDateTimeField;
    cdsAuthPersonListNOTES4Y: TStringField;
    cdsAuthPersonListISDEL: TIntegerField;
    cdsAuthPersonListID: TLargeintField;
    gvwMasterAUTH_ID: TcxGridDBBandedColumn;
    gvwMasterAUTH_NAME: TcxGridDBBandedColumn;
    gvwMasterJABATAN: TcxGridDBBandedColumn;
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
  frmAuthPerson: TfrmAuthPerson;

implementation

{$R *.dfm}

uses DataGlobal, FormAuthPersons;

procedure TfrmAuthPerson.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAuthPersons;
end;

procedure TfrmAuthPerson.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsAuthPersonListAUTH_ID;
  cdsAuthPersonList.Close;
  cdsAuthPersonList.Open;
end;

Initialization
  RegisterClass(TfrmAuthPerson);

end.
