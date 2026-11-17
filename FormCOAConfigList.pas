unit FormCOAConfigList;

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
  TfrmCOAConfigList = class(TfrmBrowseData)
    cdsCOAConfigList: TNClientDataset;
    cdsCOAConfigListparamID: TStringField;
    cdsCOAConfigListparamName: TStringField;
    cdsCOAConfigListcoa_id: TIntegerField;
    cdsCOAConfigListentrySystemDate: TDateField;
    cdsCOAConfigListentryDate: TDateTimeField;
    cdsCOAConfigListentryUser: TStringField;
    cdsCOAConfigListmodSystemDate: TDateField;
    cdsCOAConfigListmodDate: TDateTimeField;
    cdsCOAConfigListmodUser: TStringField;
    gvwMasterparamID: TcxGridDBBandedColumn;
    gvwMasterparamName: TcxGridDBBandedColumn;
    gvwMastercoa_id: TcxGridDBBandedColumn;
    gvwMasterentrySystemDate: TcxGridDBBandedColumn;
    gvwMasterentryDate: TcxGridDBBandedColumn;
    gvwMasterentryUser: TcxGridDBBandedColumn;
    gvwMastermodSystemDate: TcxGridDBBandedColumn;
    gvwMastermodDate: TcxGridDBBandedColumn;
    gvwMastermodUser: TcxGridDBBandedColumn;
    cdsCOAConfigListGLACCOUNTCODE: TStringField;
    cdsCOAConfigListGLACCOUNTNAME: TStringField;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOAConfigList: TfrmCOAConfigList;

implementation

{$R *.dfm}

uses DataGlobal, FormCOAConfig;

procedure TfrmCOAConfigList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCOAConfig;
end;

procedure TfrmCOAConfigList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCOAConfigListparamID;

  cdsCOAConfigList.Close;
  cdsCOAConfigList.Open;
end;

Initialization
  RegisterClass(TfrmCOAConfigList);

end.
