unit FormReferralList;

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
  cxGridCustomView, cxGrid;

type
  TfrmReferralList = class(TfrmBrowseData)
    cdsReferralList: TNClientDataset;
    cdsReferralListREFERRAL_ID: TIntegerField;
    cdsReferralListREFERRAL_CODE: TStringField;
    cdsReferralListREFERRAL_DESC: TStringField;
    cdsReferralListMODDA: TDateTimeField;
    cdsReferralListMODUI: TStringField;
    cdsReferralListAPPDA: TDateTimeField;
    cdsReferralListAPPUI: TStringField;
    cdsReferralListUNDER4Y: TIntegerField;
    cdsReferralListUNDER4YDA: TDateTimeField;
    cdsReferralListNOTES4Y: TStringField;
    cdsReferralListISDEL: TIntegerField;
    cdsReferralListID: TLargeintField;
    gvwMasterREFERRAL_ID: TcxGridDBBandedColumn;
    gvwMasterREFERRAL_CODE: TcxGridDBBandedColumn;
    gvwMasterREFERRAL_TYPE_ID: TcxGridDBBandedColumn;
    gvwMasterREFERRAL_DESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsReferralListREFERRAL_TYPE_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsReferralListBeforeRefresh(DataSet: TDataSet);
    procedure cdsReferralListBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReferralList: TfrmReferralList;

implementation

{$R *.dfm}

uses DataGlobal, FormReferral;

procedure TfrmReferralList.cdsReferralListBeforeOpen(DataSet: TDataSet);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuReferralType.Active then
      cdsLuReferralType.Open
    else
      cdsLuReferralType.Refresh;
  end;

  inherited;
end;

procedure TfrmReferralList.cdsReferralListBeforeRefresh(DataSet: TDataSet);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuReferralType.Active then
      cdsLuReferralType.Open
    else
      cdsLuReferralType.Refresh;
  end;

  inherited;
end;

procedure TfrmReferralList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmReferral;
end;

procedure TfrmReferralList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsReferralListREFERRAL_ID;

  cdsReferralList.Close;
  cdsReferralList.Open;
end;

Initialization
  RegisterClass(TfrmReferralList);

end.
