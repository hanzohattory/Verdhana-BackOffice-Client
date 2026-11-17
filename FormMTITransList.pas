unit FormMTITransList;

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
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, dxDateRanges, dxScrollbarAnnotations,
  System.Actions, System.ImageList;

type
  TfrmMTITransList = class(TfrmBrowseData)
    cdsMTITransList: TNClientDataset;
    cdsMTITrans: TNClientDataset;
    cdsMTITransListTRANSID: TIntegerField;
    cdsMTITransListTRANSCODE: TStringField;
    cdsMTITransListDESCRIPTION: TStringField;
    cdsMTITransListTRANSTYPE: TStringField;
    cdsMTITransListMODDA: TDateTimeField;
    cdsMTITransListMODUI: TStringField;
    cdsMTITransListAPPDA: TDateTimeField;
    cdsMTITransListAPPUI: TStringField;
    cdsMTITransListUNDER4Y: TIntegerField;
    cdsMTITransListUNDER4YDA: TDateTimeField;
    cdsMTITransListNOTES4Y: TStringField;
    cdsMTITransListISDEL: TIntegerField;
    cdsMTITransListID: TLargeintField;
    cdsMTITransTRANSID: TIntegerField;
    cdsMTITransTRANSCODE: TStringField;
    cdsMTITransDESCRIPTION: TStringField;
    cdsMTITransTRANSTYPE: TStringField;
    cdsMTITransMODDA: TDateTimeField;
    cdsMTITransMODUI: TStringField;
    cdsMTITransAPPDA: TDateTimeField;
    cdsMTITransAPPUI: TStringField;
    cdsMTITransUNDER4Y: TIntegerField;
    cdsMTITransUNDER4YDA: TDateTimeField;
    cdsMTITransNOTES4Y: TStringField;
    cdsMTITransISDEL: TIntegerField;
    cdsMTITransID: TLargeintField;
    gvwMasterTRANSID: TcxGridDBBandedColumn;
    gvwMasterTRANSCODE: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterTRANSTYPE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsMTITransRecord: TNClientDataset;
    cdsMTITransRecordTRANS_RECORD_ID: TIntegerField;
    cdsMTITransRecordTRANSID: TIntegerField;
    cdsMTITransRecordRECORDID: TIntegerField;
    cdsMTITransRecordSEQID: TIntegerField;
    cdsMTITransRecordMINREC: TIntegerField;
    cdsMTITransRecordMAXREC: TIntegerField;
    cdsMTITransRecordNUM_FIELDS: TIntegerField;
    cdsMTITransRecordREQ_FIELDS: TIntegerField;
    cdsMTITransRecordMODDA: TDateTimeField;
    cdsMTITransRecordMODUI: TStringField;
    cdsMTITransRecordAPPDA: TDateTimeField;
    cdsMTITransRecordAPPUI: TStringField;
    cdsMTITransRecordUNDER4Y: TIntegerField;
    cdsMTITransRecordUNDER4YDA: TDateTimeField;
    cdsMTITransRecordNOTES4Y: TStringField;
    cdsMTITransRecordISDEL: TIntegerField;
    cdsMTITransRecordID: TLargeintField;
    actSetTransRec: TNAction;
    SetMTITransactionRecord1: TMenuItem;
    cdsMTITransListSOURCEDATA: TMemoField;
    cdsMTITransSOURCEDATA: TMemoField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure actSetTransRecExecute(Sender: TObject);
    procedure cdsMTITransRecordNewRecord(DataSet: TDataSet);
    procedure cdsMTITransRecordBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMTITransList: TfrmMTITransList;

implementation

{$R *.dfm}

uses DataGlobal, FormMTITrans, FormMTITransRecord;

procedure TfrmMTITransList.actSetTransRecExecute(Sender: TObject);
var
  oForm: TfrmMTITransRecord;
begin
  inherited;
  cdsMTITrans.Close;
  cdsMTITrans.Params[0].AsInteger := cdsMTITransListTRANSID.AsInteger;
  cdsMTITrans.Open;

  cdsMTITransRecord.Close;
  cdsMTITransRecord.Params[0].AsInteger := cdsMTITransListTRANSID.AsInteger;
  cdsMTITransRecord.Open;

  oForm := TfrmMTITransRecord.Create(nil);
  Try
    if oForm.ShowModal = mrOk then
    begin
      cdsMTITransRecord.ApplyUpdates(0);
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmMTITransList.cdsMTITransRecordBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if cdsMTITransRecordTRANS_RECORD_ID.IsNull then
//    cdsMTITransRecordTRANS_RECORD_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_MTI_TRANS_RECORD');
end;

procedure TfrmMTITransList.cdsMTITransRecordNewRecord(DataSet: TDataSet);
begin
  inherited;
//  cdsMTITransRecordTRANSID.AsInteger := cdsMTITransRecord.Params[0].AsInteger;
end;

procedure TfrmMTITransList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmMTITrans;
end;

procedure TfrmMTITransList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsMTITransListTRANSID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMTIRecord.Close;
    cdsLuMTIRecord.Open;
  end;

  cdsMTITransList.Close;
  cdsMTITransList.Open;
end;

Initialization
  RegisterClass(TfrmMTITransList);

end.
