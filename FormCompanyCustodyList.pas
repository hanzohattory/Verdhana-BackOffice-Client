unit FormCompanyCustodyList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxImageComboBox;

type
  TfrmCompanyCustodyList = class(TfrmBrowseData)
    cdsCompanyCustodyList: TNClientDataset;
    cdsCompanyCustodyListCUSTODYID: TIntegerField;
    cdsCompanyCustodyListCUSTODYTYPE: TStringField;
    cdsCompanyCustodyListCUSTODYCODE: TStringField;
    cdsCompanyCustodyListCUSTODYACCNO: TStringField;
    cdsCompanyCustodyListCUSTODYACCNAME: TStringField;
    cdsCompanyCustodyListCUSTODYBRANCH: TStringField;
    cdsCompanyCustodyListSTAT: TStringField;
    cdsCompanyCustodyListMODDA: TDateTimeField;
    cdsCompanyCustodyListMODUI: TStringField;
    cdsCompanyCustodyListAPPDA: TDateTimeField;
    cdsCompanyCustodyListAPPUI: TStringField;
    cdsCompanyCustodyListUNDER4Y: TIntegerField;
    cdsCompanyCustodyListUNDER4YDA: TDateTimeField;
    cdsCompanyCustodyListNOTES4Y: TStringField;
    cdsCompanyCustodyListISDEL: TIntegerField;
    cdsCompanyCustodyListID: TLargeintField;
    cdsCompanyCustodyListcustodyTypeDesc: TStringField;
    gvwMasterCUSTODYID: TcxGridDBBandedColumn;
    gvwMasterCUSTODYTYPE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYCODE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUSTODYBRANCH: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMastercustodyTypeDesc: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompanyCustodyList: TfrmCompanyCustodyList;

implementation

{$R *.dfm}

uses DataGlobal, FormCompanyCustody;

procedure TfrmCompanyCustodyList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCompanyCustody;
end;

procedure TfrmCompanyCustodyList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCompanyCustodyListCUSTODYID;
end;

end.
