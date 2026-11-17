unit FormGLTypeList;

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
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGrid, System.Actions, System.ImageList, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmGLTypeList = class(TfrmBrowseData)
    cdsGLTypeHList: TNClientDataset;
    cdsGLTypeHListGLTYPE_ID: TIntegerField;
    cdsGLTypeHListGLTYPE_CODE: TStringField;
    cdsGLTypeHListGLTYPE_DESC: TStringField;
    cdsGLTypeHListMODDA: TDateTimeField;
    cdsGLTypeHListMODUI: TStringField;
    cdsGLTypeHListAPPDA: TDateTimeField;
    cdsGLTypeHListAPPUI: TStringField;
    cdsGLTypeHListUNDER4Y: TIntegerField;
    cdsGLTypeHListUNDER4YDA: TDateTimeField;
    cdsGLTypeHListNOTES4Y: TStringField;
    cdsGLTypeHListISDEL: TIntegerField;
    cdsGLTypeHListID: TLargeintField;
    gvwMasterGLTYPE_ID: TcxGridDBBandedColumn;
    gvwMasterGLTYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterGLTYPE_DESC: TcxGridDBBandedColumn;
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
  frmGLTypeList: TfrmGLTypeList;

implementation

{$R *.dfm}

uses DataGlobal, FormGLType1;

procedure TfrmGLTypeList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmGLType1;
end;

procedure TfrmGLTypeList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsGLTypeHListGLTYPE_ID;

  cdsGLTypeHList.Close;
  cdsGLTypeHList.Open;
end;

Initialization
  RegisterClass(TfrmGLTypeList);

end.
