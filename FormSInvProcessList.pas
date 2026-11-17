unit FormSInvProcessList;

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
  TfrmSInvProcessList = class(TfrmBrowseData)
    cdsSInvProcess: TNClientDataset;
    cdsSInvProcessSIP_ID: TLargeintField;
    cdsSInvProcessSIP_CODE: TStringField;
    cdsSInvProcessSIP_NAME: TStringField;
    cdsSInvProcessDELIMITERCHAR: TStringField;
    cdsSInvProcessFORMAT1: TStringField;
    cdsSInvProcessFORMAT2: TStringField;
    cdsSInvProcessFORMAT3: TStringField;
    cdsSInvProcessDESCRIPTION: TStringField;
    cdsSInvProcessMODDA: TDateTimeField;
    cdsSInvProcessMODUI: TStringField;
    cdsSInvProcessAPPDA: TDateTimeField;
    cdsSInvProcessAPPUI: TStringField;
    cdsSInvProcessUNDER4Y: TIntegerField;
    cdsSInvProcessUNDER4YDA: TDateTimeField;
    cdsSInvProcessNOTES4Y: TStringField;
    cdsSInvProcessISDEL: TIntegerField;
    cdsSInvProcessID: TLargeintField;
    gvwMasterSIP_ID: TcxGridDBBandedColumn;
    gvwMasterSIP_CODE: TcxGridDBBandedColumn;
    gvwMasterSIP_NAME: TcxGridDBBandedColumn;
    gvwMasterDELIMITERCHAR: TcxGridDBBandedColumn;
    gvwMasterFORMAT1: TcxGridDBBandedColumn;
    gvwMasterFORMAT2: TcxGridDBBandedColumn;
    gvwMasterFORMAT3: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsSInvProcessGENERATEFOLDER: TStringField;
    gvwMasterGENERATEFOLDER: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSInvProcessList: TfrmSInvProcessList;

implementation

{$R *.dfm}

uses DataGlobal, FormSInvProcessConf;

procedure TfrmSInvProcessList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmSInvProcessConfig;
end;

procedure TfrmSInvProcessList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsSInvProcessSIP_ID;

  cdsSInvProcess.Close;
  cdsSInvProcess.Open;
end;

Initialization
  RegisterClass(TfrmSInvProcessList);

end.
