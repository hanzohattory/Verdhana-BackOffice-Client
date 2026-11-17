unit FormProjectList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmProjectList = class(TfrmBrowseData)
    cdsProjectList: TNClientDataset;
    cdsProjectListPROJECTID: TIntegerField;
    cdsProjectListPROJECTNAME: TStringField;
    cdsProjectListPROJECTDESC: TStringField;
    cdsProjectListISDEL: TBooleanField;
    gvwMasterPROJECTID: TcxGridDBBandedColumn;
    gvwMasterPROJECTNAME: TcxGridDBBandedColumn;
    gvwMasterPROJECTDESC: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    cdsProjectListPROJECTCODE: TStringField;
    gvwMasterPROJECTCODE: TcxGridDBBandedColumn;
    cdsProject: TNClientDataset;
    cdsProjectPROJECTID: TIntegerField;
    cdsProjectPROJECTCODE: TStringField;
    cdsProjectPROJECTNAME: TStringField;
    cdsProjectPROJECTDESC: TStringField;
    cdsProjectISDEL: TBooleanField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProjectList: TfrmProjectList;

implementation

{$R *.dfm}

uses DataGlobal, FormProject;

procedure TfrmProjectList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmProject;
end;

procedure TfrmProjectList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsProjectListPROJECTID;
end;

procedure TfrmProjectList.FormShow(Sender: TObject);
begin
  inherited;
  cdsProjectList.Close;
  cdsProjectList.Open;
end;

Initialization
  RegisterClass(TfrmProjectList);

end.
