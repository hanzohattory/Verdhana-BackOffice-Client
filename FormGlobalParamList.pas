unit FormGlobalParamList;

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
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmGlobalParamList = class(TfrmBrowseData)
    cdsGlobalParamList: TNClientDataset;
    cdsGlobalParamListPRMID: TStringField;
    cdsGlobalParamListPRMNAME: TStringField;
    cdsGlobalParamListPRMTY: TStringField;
    cdsGlobalParamListAPPTYPE: TStringField;
    cdsGlobalParamListINTVAL: TIntegerField;
    cdsGlobalParamListFLOATVAL: TFloatField;
    cdsGlobalParamListSTRVAL: TStringField;
    cdsGlobalParamListDATEVAL: TDateTimeField;
    cdsGlobalParamListMODDA: TDateTimeField;
    cdsGlobalParamListMODUI: TStringField;
    cdsGlobalParamListINSDA: TDateTimeField;
    cdsGlobalParamListINSUI: TStringField;
    cdsGlobalParamListSHOW: TStringField;
    cdsGlobalParamListEDIT: TStringField;
    cdsGlobalParamListAPPDA: TDateTimeField;
    cdsGlobalParamListAPPUI: TStringField;
    cdsGlobalParamListUNDER4Y: TIntegerField;
    cdsGlobalParamListUNDER4YDA: TDateTimeField;
    cdsGlobalParamListNOTES4Y: TStringField;
    cdsGlobalParamListISDEL: TIntegerField;
    cdsGlobalParamListID: TLargeintField;
    gvwMasterPRMID: TcxGridDBBandedColumn;
    gvwMasterPRMNAME: TcxGridDBBandedColumn;
    cdsGlobalParamListVALUES: TStringField;
    gvwMasterVALUES: TcxGridDBBandedColumn;
    gvwMasterEDIT: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsGlobalParamListAfterOpen(DataSet: TDataSet);
    procedure actEditUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGlobalParamList: TfrmGlobalParamList;

implementation

{$R *.dfm}

uses DataGlobal, FormGlobalParam;

procedure TfrmGlobalParamList.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Enabled := cdsGlobalParamListEDIT.AsString = '1';
end;

procedure TfrmGlobalParamList.cdsGlobalParamListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsGlobalParamList.First;
  while not cdsGlobalParamList.Eof do
  begin
    cdsGlobalParamList.Edit;

    if cdsGlobalParamListPRMTY.AsString = 'S' then
      cdsGlobalParamListVALUES.AsString := cdsGlobalParamListSTRVAL.AsString
    else if cdsGlobalParamListPRMTY.AsString = 'I' then
      cdsGlobalParamListVALUES.AsString := FormatFloat('#,##0;(#,##0);0', cdsGlobalParamListINTVAL.AsFloat)
    else if cdsGlobalParamListPRMTY.AsString = 'F' then
      cdsGlobalParamListVALUES.AsString := FormatFloat('#,##0.##;(#,##0.##);0.##', cdsGlobalParamListFLOATVAL.AsFloat)
    else if cdsGlobalParamListPRMTY.AsString = 'D' then
      cdsGlobalParamListVALUES.AsString := FormatDateTime('dd mmm yyyy', cdsGlobalParamListDATEVAL.AsFloat)
    else if cdsGlobalParamListPRMTY.AsString = 'T' then
      cdsGlobalParamListVALUES.AsString := FormatDateTime('hh:nn:ss.zzz', cdsGlobalParamListDATEVAL.AsFloat);
    cdsGlobalParamList.Post;

    cdsGlobalParamList.Next;
  end;

  cdsGlobalParamList.First;
end;

procedure TfrmGlobalParamList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmGlobalParam;
end;

procedure TfrmGlobalParamList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsGlobalParamListPRMID;

  cdsGlobalParamList.Close;
  cdsGlobalParamList.Open;
end;

Initialization
  RegisterClass(TfrmGlobalParamList);

end.
