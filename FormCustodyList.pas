unit FormCustodyList;

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
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient;

type
  TfrmCustodyList = class(TfrmBrowseData)
    cdsCustodyList: TNClientDataset;
    cdsCustody: TNClientDataset;
    cdsCustodyListCUSTODYCODE: TStringField;
    cdsCustodyListCUSTODYNAME: TStringField;
    cdsCustodyListADDRESS1: TStringField;
    cdsCustodyListADDRESS2: TStringField;
    cdsCustodyListADDRESS3: TStringField;
    cdsCustodyListTELP: TStringField;
    cdsCustodyListFAX: TStringField;
    cdsCustodyListCONTACTPERSON: TStringField;
    cdsCustodyListMODDA: TDateTimeField;
    cdsCustodyListMODUI: TStringField;
    cdsCustodyListAPPDA: TDateTimeField;
    cdsCustodyListAPPUI: TStringField;
    cdsCustodyListUNDER4Y: TIntegerField;
    cdsCustodyListUNDER4YDA: TDateTimeField;
    cdsCustodyListNOTES4Y: TStringField;
    cdsCustodyListISDEL: TIntegerField;
    cdsCustodyListID: TLargeintField;
    cdsCustodyCUSTODYCODE: TStringField;
    cdsCustodyCUSTODYNAME: TStringField;
    cdsCustodyADDRESS1: TStringField;
    cdsCustodyADDRESS2: TStringField;
    cdsCustodyADDRESS3: TStringField;
    cdsCustodyTELP: TStringField;
    cdsCustodyFAX: TStringField;
    cdsCustodyCONTACTPERSON: TStringField;
    cdsCustodyMODDA: TDateTimeField;
    cdsCustodyMODUI: TStringField;
    cdsCustodyAPPDA: TDateTimeField;
    cdsCustodyAPPUI: TStringField;
    cdsCustodyUNDER4Y: TIntegerField;
    cdsCustodyUNDER4YDA: TDateTimeField;
    cdsCustodyNOTES4Y: TStringField;
    cdsCustodyISDEL: TIntegerField;
    cdsCustodyID: TLargeintField;
    gvwMasterCUSTODYCODE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYNAME: TcxGridDBBandedColumn;
    gvwMasterADDRESS1: TcxGridDBBandedColumn;
    gvwMasterADDRESS2: TcxGridDBBandedColumn;
    gvwMasterADDRESS3: TcxGridDBBandedColumn;
    gvwMasterTELP: TcxGridDBBandedColumn;
    gvwMasterFAX: TcxGridDBBandedColumn;
    gvwMasterCONTACTPERSON: TcxGridDBBandedColumn;
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
  frmCustodyList: TfrmCustodyList;

implementation

{$R *.dfm}

uses DataGlobal, FormCustody;

procedure TfrmCustodyList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCustody;
end;

procedure TfrmCustodyList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCustodyList.Close;
  cdsCustodyList.Open;
end;

Initialization
  RegisterClass(TfrmCustodyList);

end.
