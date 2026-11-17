unit FormIPOAllotmentGroupList;

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
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset;

type
  TfrmIPOAllotmentGroupList = class(TfrmBrowseData)
    cdsIPOAllotmentGroupList: TNClientDataset;
    cdsIPOAllotmentGroupListALLOTMENT_GROUPID: TLargeintField;
    cdsIPOAllotmentGroupListALLOTMENT_GROUPNAME: TStringField;
    cdsIPOAllotmentGroupListNETFEE: TFloatField;
    cdsIPOAllotmentGroupListVAT: TFloatField;
    cdsIPOAllotmentGroupListWHT: TFloatField;
    cdsIPOAllotmentGroupListIPOID: TLargeintField;
    gvwMasterALLOTMENT_GROUPID: TcxGridDBBandedColumn;
    gvwMasterALLOTMENT_GROUPNAME: TcxGridDBBandedColumn;
    gvwMasterNETFEE: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    actIPOAllotment: TNAction;
    IPOAllotment1: TMenuItem;
    N1: TMenuItem;
    cdsIPOAllotmentGroupListTRANSDATE: TDateField;
    cdsIPOAllotmentGroupListDUEDATE: TDateField;
    gvwMasterTRANSDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actIPOAllotmentExecute(Sender: TObject);
  private
    FIPOID: integer;
    { Private declarations }
  public
    property IPOID: integer read FIPOID write FIPOID;
  end;

var
  frmIPOAllotmentGroupList: TfrmIPOAllotmentGroupList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormIPOAllotmentGroup, FormIPOAllotments, FormIPO,
  FormIPOList;

procedure TfrmIPOAllotmentGroupList.actEditExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotmentGroup;
begin
//  inherited;
  oForm := TfrmIPOAllotmentGroup.Create(nil);
  TfrmIPOAllotmentGroup(oForm).AddNew  := True;
  TfrmIPOAllotmentGroup(oForm).GroupID := cdsIPOAllotmentGroupListALLOTMENT_GROUPID.AsInteger;
  TfrmIPOAllotmentGroup(oForm).IPOID   := FIPOID;
  oForm.ShowModal;
  FreeAndNil(oForm);

  cdsIPOAllotmentGroupList.Refresh
end;

procedure TfrmIPOAllotmentGroupList.actIPOAllotmentExecute(Sender: TObject);
var
  oForm : TfrmIPOAllotments;
begin
  inherited;
  oForm := TfrmIPOAllotments.Create(nil);
  TfrmIPOAllotments(oForm).GroupID := cdsIPOAllotmentGroupListALLOTMENT_GROUPID.AsInteger;
  try
    TfrmIPOAllotments(oForm).IPOID   := FIPOID;
    TfrmIPOAllotments(oForm).GroupID := cdsIPOAllotmentGroupListALLOTMENT_GROUPID.AsInteger;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOAllotmentGroupList.actNewExecute(Sender: TObject);
var
  oForm: TfrmIPOAllotmentGroup;
begin
//  inherited;
  oForm := TfrmIPOAllotmentGroup.Create(nil);
  TfrmIPOAllotmentGroup(oForm).AddNew  := True;
  TfrmIPOAllotmentGroup(oForm).GroupID := 0;
  TfrmIPOAllotmentGroup(oForm).IPOID   := FIPOID;
  oForm.ShowModal;
  FreeAndNil(oForm);
  cdsIPOAllotmentGroupList.Refresh
end;

procedure TfrmIPOAllotmentGroupList.FormShow(Sender: TObject);
begin
  inherited;
  cdsIPOAllotmentGroupList.Close;
  cdsIPOAllotmentGroupList.Params[0].AsInteger := FIPOID;
  cdsIPOAllotmentGroupList.Open;
end;

end.
