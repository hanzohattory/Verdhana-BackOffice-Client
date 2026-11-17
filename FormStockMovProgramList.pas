unit FormStockMovProgramList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmStockMovementProgramList = class(TfrmBrowseData)
    cdsStockMoveProgramList: TNClientDataset;
    cdsStockMoveProgramListprog_id: TLargeintField;
    cdsStockMoveProgramListprogName: TStringField;
    cdsStockMoveProgramListprogDesc: TStringField;
    cdsStockMoveProgramListINSDA: TDateField;
    cdsStockMoveProgramListINSUI: TStringField;
    cdsStockMoveProgramListMODDA: TDateField;
    cdsStockMoveProgramListMODUI: TStringField;
    gvwMasterprog_id: TcxGridDBBandedColumn;
    gvwMasterprogName: TcxGridDBBandedColumn;
    gvwMasterprogDesc: TcxGridDBBandedColumn;
    gvwMasterINSDA: TcxGridDBBandedColumn;
    gvwMasterINSUI: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockMovementProgramList: TfrmStockMovementProgramList;

implementation

{$R *.dfm}

uses DataGlobal, FormStockMovProgram;

procedure TfrmStockMovementProgramList.actRefreshExecute(Sender: TObject);
begin
  //inherited;
  cdsStockMoveProgramList.Close;
  cdsStockMoveProgramList.Open;
end;

procedure TfrmStockMovementProgramList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmStockMovementProgram;
end;

procedure TfrmStockMovementProgramList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsStockMoveProgramListprog_id;

  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmStockMovementProgramList);

end.
