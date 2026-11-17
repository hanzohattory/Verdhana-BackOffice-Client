unit FormBranchList;

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
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, System.Actions,
  System.ImageList;

type
  TfrmBranchList = class(TfrmBrowseData)
    cdsBranchList: TNClientDataset;
    cdsBranchListBRANCHID: TLargeintField;
    cdsBranchListBRANCHCODE: TStringField;
    cdsBranchListBRANCHNAME: TStringField;
    cdsBranchListADDRESS: TStringField;
    cdsBranchListPHONE: TStringField;
    cdsBranchListFAX: TStringField;
    cdsBranchListMANAGER: TStringField;
    cdsBranchListSALESAGENT: TStringField;
    cdsBranchListREVSHARE: TFloatField;
    cdsBranchListMODDA: TDateTimeField;
    cdsBranchListMODUI: TStringField;
    cdsBranchListUNDER4Y: TIntegerField;
    cdsBranchListUNDER4YDA: TDateTimeField;
    cdsBranch: TNClientDataset;
    cdsBranchBRANCHID: TLargeintField;
    cdsBranchBRANCHCODE: TStringField;
    cdsBranchBRANCHNAME: TStringField;
    cdsBranchADDRESS1: TStringField;
    cdsBranchADDRESS2: TStringField;
    cdsBranchADDRESS3: TStringField;
    cdsBranchPHONE: TStringField;
    cdsBranchFAX: TStringField;
    cdsBranchMANAGER: TStringField;
    cdsBranchSALESAGENT: TStringField;
    cdsBranchREVSHARE: TFloatField;
    cdsBranchCPCD: TStringField;
    cdsBranchMODDA: TDateTimeField;
    cdsBranchMODUI: TStringField;
    cdsBranchAPPDA: TDateTimeField;
    cdsBranchAPPUI: TStringField;
    cdsBranchUNDER4Y: TIntegerField;
    cdsBranchUNDER4YDA: TDateTimeField;
    cdsBranchNOTES4Y: TStringField;
    cdsBranchISDEL: TIntegerField;
    cdsBranchID: TLargeintField;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterADDRESS: TcxGridDBBandedColumn;
    gvwMasterPHONE: TcxGridDBBandedColumn;
    gvwMasterFAX: TcxGridDBBandedColumn;
    gvwMasterMANAGER: TcxGridDBBandedColumn;
    gvwMasterSALESAGENT: TcxGridDBBandedColumn;
    gvwMasterREVSHARE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    cdsBranchListCPID: TLargeintField;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterCPID: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBranchList: TfrmBranchList;

implementation

{$R *.dfm}

uses DataGlobal, FormBranch;

procedure TfrmBranchList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBranch;
end;

procedure TfrmBranchList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCPCenter.Active then
      cdsLuCPCenter.Open
    else
      cdsLuCPCenter.Refresh;
  end;

  cdsBranchList.Close;
  cdsBranchList.Open;
end;

Initialization
  RegisterClass(TfrmBranchList);

end.
