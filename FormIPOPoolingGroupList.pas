unit FormIPOPoolingGroupList;

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
  TfrmIPOPoolingGroupList = class(TfrmBrowseData)
    cdsIPOPoolingGroupList: TNClientDataset;
    cdsIPOPoolingGroupListNETFEE: TFloatField;
    cdsIPOPoolingGroupListVAT: TFloatField;
    cdsIPOPoolingGroupListWHT: TFloatField;
    cdsIPOPoolingGroupListIPOID: TLargeintField;
    gvwMasterNETFEE: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    gvwMasterWHT: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    cdsIPOPoolingGroupListPOOLING_GROUPID: TLargeintField;
    cdsIPOPoolingGroupListPOOLING_GROUPNAME: TStringField;
    gvwMasterPOOLING_GROUPID: TcxGridDBBandedColumn;
    gvwMasterPOOLING_GROUPNAME: TcxGridDBBandedColumn;
    actIPOPooling: TNAction;
    IPOPooling1: TMenuItem;
    N1: TMenuItem;
    cdsIPOPoolingGroupListTRANSDATE: TDateField;
    cdsIPOPoolingGroupListDUEDATE: TDateField;
    gvwMasterTRANSDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actIPOPoolingExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FIPOID: Integer;
    { Private declarations }
  public
    { Public declarations }
    property IPOID : Integer read FIPOID write FIPOID;
  end;

var
  frmIPOPoolingGroupList: TfrmIPOPoolingGroupList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormIPOPoolingGroup, FormIPOPoolings;

procedure TfrmIPOPoolingGroupList.actEditExecute(Sender: TObject);
var
  oForm: TfrmIPOPoolingGroup;
begin
//  inherited;
  oForm := TfrmIPOPoolingGroup.Create(nil);
  TfrmIPOPoolingGroup(oForm).AddNew  := True;
  TfrmIPOPoolingGroup(oForm).GroupID := cdsIPOPoolingGroupListPOOLING_GROUPID.AsInteger;
  TfrmIPOPoolingGroup(oFOrm).IPOID   := FIPOID;
  oForm.ShowModal;
  FreeAndNil(oForm);

  cdsIPOPoolingGroupList.Refresh;
end;

procedure TfrmIPOPoolingGroupList.actIPOPoolingExecute(Sender: TObject);
var
  oForm: TfrmIPOPoolings;
begin
  inherited;
  oForm := TfrmIPOPoolings.Create(nil);
  try
    TfrmIPOPoolings(oForm).GroupID := cdsIPOPoolingGroupListPOOLING_GROUPID.AsInteger;
    TfrmIPOPoolings(oForm).IPOID   := FIPOID;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOPoolingGroupList.actNewExecute(Sender: TObject);
var
  oForm: TfrmIPOPoolingGroup;
begin
//  inherited;
  oForm := TfrmIPOPoolingGroup.Create(nil);
  TfrmIPOPoolingGroup(oForm).AddNew  := True;
  TfrmIPOPoolingGroup(oForm).GroupID := 0;
  TfrmIPOPoolingGroup(oFOrm).IPOID   := FIPOID;
  oForm.ShowModal;
  FreeAndNil(oForm);

  cdsIPOPoolingGroupList.Refresh;
end;

procedure TfrmIPOPoolingGroupList.FormShow(Sender: TObject);
begin
  inherited;
  cdsIPOPoolingGroupList.Close;
  cdsIPOPoolingGroupList.Params[0].AsInteger := FIPOID;
  cdsIPOPoolingGroupList.Open;
end;

end.
