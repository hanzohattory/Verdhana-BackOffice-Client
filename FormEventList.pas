unit FormEventList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxImageComboBox, NReportRPC, NReportClient, System.Actions,
  System.ImageList, dxDateRanges;

type
  TfrmEventList = class(TfrmBrowseData)
    cdsEventList: TNClientDataset;
    cdsEventListEVID: TIntegerField;
    cdsEventListEVSTARTDATE: TDateField;
    cdsEventListEVENDDATE: TDateField;
    cdsEventListEVSTATUS: TStringField;
    cdsEventListPIC: TStringField;
    cdsEventListEVDESCRIPTION: TStringField;
    cdsEventListMODDA: TDateTimeField;
    cdsEventListMODUI: TStringField;
    cdsEventListAPPDA: TDateTimeField;
    cdsEventListAPPUI: TStringField;
    cdsEventListUNDER4Y: TIntegerField;
    cdsEventListUNDER4YDA: TDateTimeField;
    cdsEventListNOTES4Y: TStringField;
    cdsEventListISDEL: TIntegerField;
    cdsEventListID: TLargeintField;
    gvwMasterEVSTARTDATE: TcxGridDBBandedColumn;
    gvwMasterEVENDDATE: TcxGridDBBandedColumn;
    gvwMasterEVSTATUS: TcxGridDBBandedColumn;
    gvwMasterPIC: TcxGridDBBandedColumn;
    gvwMasterEVDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    cdsEventListEVNAME: TStringField;
    gvwMasterEVID: TcxGridDBBandedColumn;
    gvwMasterEVNAME: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEventList: TfrmEventList;

implementation

{$R *.dfm}

uses DataGlobal, FormEvent;

procedure TfrmEventList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmEvent;
end;

procedure TfrmEventList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsEventListEVID;
  cdsEventList.Close;
  cdsEventList.Open;
end;

Initialization
  RegisterClass(TfrmEventList);


end.
