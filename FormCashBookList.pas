unit FormCashBookList;

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
  cxGridCustomView, cxGrid, dxDateRanges, dxScrollbarAnnotations,
  System.Actions, System.ImageList;

type
  TfrmCashBookList = class(TfrmBrowseData)
    cdsCashBookList: TNClientDataset;
    cdsCashBookListCBID: TIntegerField;
    cdsCashBookListCBCODE: TStringField;
    cdsCashBookListCBDESC: TStringField;
    cdsCashBookListCCYCODE: TStringField;
    cdsCashBookListGLACCOUNTID: TLargeintField;
    cdsCashBookListSTAT: TStringField;
    cdsCashBookListMODDA: TDateTimeField;
    cdsCashBookListMODUI: TStringField;
    cdsCashBookListAPPDA: TDateTimeField;
    cdsCashBookListAPPUI: TStringField;
    cdsCashBookListUNDER4Y: TIntegerField;
    cdsCashBookListUNDER4YDA: TDateTimeField;
    cdsCashBookListNOTES4Y: TStringField;
    cdsCashBookListISDEL: TIntegerField;
    cdsCashBookListID: TLargeintField;
    gvwMasterCBID: TcxGridDBBandedColumn;
    gvwMasterCBCODE: TcxGridDBBandedColumn;
    gvwMasterCBDESC: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTID: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsCashBookListCOA: TStringField;
    gvwMasterCOA: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashBookList: TfrmCashBookList;

implementation

{$R *.dfm}

uses DataGlobal, FormCashBook;

procedure TfrmCashBookList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCashBook;
end;

procedure TfrmCashBookList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCashBookListCBID;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open;
  end;

  cdsCashBookList.Close;
  cdsCashBookList.Open;
end;

Initialization
  RegisterClass(TfrmCashBookList);

end.
