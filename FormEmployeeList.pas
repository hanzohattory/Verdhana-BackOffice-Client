unit FormEmployeeList;

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
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmEmployeeList = class(TfrmBrowseData)
    cdsEmployeeList: TNClientDataset;
    cdsEmployeeListEMPLOYEEID: TIntegerField;
    cdsEmployeeListEMPLOYEECODE: TStringField;
    cdsEmployeeListEMPLOYEENAME: TStringField;
    cdsEmployeeListISDEL: TBooleanField;
    gvwMasterEMPLOYEEID: TcxGridDBBandedColumn;
    gvwMasterEMPLOYEECODE: TcxGridDBBandedColumn;
    gvwMasterEMPLOYEENAME: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    cdsEmployee: TNClientDataset;
    cdsEmployeeEMPLOYEEID: TIntegerField;
    cdsEmployeeEMPLOYEECODE: TStringField;
    cdsEmployeeEMPLOYEENAME: TStringField;
    cdsEmployeeISDEL: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation

{$R *.dfm}

uses DataGlobal, FormEmployee;

procedure TfrmEmployeeList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmEmployee;
end;

procedure TfrmEmployeeList.FormShow(Sender: TObject);
begin
  inherited;
  cdsEmployeeList.Close;
  cdsEmployeeList.Open;
end;

end.
