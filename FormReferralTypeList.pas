unit FormReferralTypeList;

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
  cxGridCustomView, cxGrid, System.Actions, System.ImageList;

type
  TfrmReferralTypeList = class(TfrmBrowseData)
    cdsReferralTypeList: TNClientDataset;
    cdsReferralTypeListREFERRAL_TYPE: TStringField;
    cdsReferralTypeListREFERRAL_TYPE_DESC: TStringField;
    cdsReferralTypeListMODDA: TDateTimeField;
    cdsReferralTypeListMODUI: TStringField;
    cdsReferralTypeListAPPDA: TDateTimeField;
    cdsReferralTypeListAPPUI: TStringField;
    cdsReferralTypeListUNDER4Y: TIntegerField;
    cdsReferralTypeListUNDER4YDA: TDateTimeField;
    cdsReferralTypeListNOTES4Y: TStringField;
    cdsReferralTypeListISDEL: TIntegerField;
    cdsReferralTypeListID: TLargeintField;
    gvwMasterREFERRAL_TYPE: TcxGridDBBandedColumn;
    gvwMasterREFERRAL_TYPE_DESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsReferralTypeListREFERRAL_TYPE_ID: TIntegerField;
    gvwMasterREFERRAL_TYPE_ID: TcxGridDBBandedColumn;
    cdsReferralTypeListREFERRAL_GROUP: TStringField;
    gvwMasterREFERRAL_GROUP: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReferralTypeList: TfrmReferralTypeList;

implementation

{$R *.dfm}

uses DataGlobal, FormReferralType;

procedure TfrmReferralTypeList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmReferralType;
end;

procedure TfrmReferralTypeList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsReferralTypeListREFERRAL_TYPE_ID;

  cdsReferralTypeList.Close;
  cdsReferralTypeList.Open;
end;

Initialization
  RegisterClass(TfrmReferralTypeList);

end.
