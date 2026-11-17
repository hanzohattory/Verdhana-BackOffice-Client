unit FormCityList;

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
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, cxContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, NReportClient, dxDateRanges,
  dxScrollbarAnnotations, cxBarEditItem, System.Actions, System.ImageList;

type
  TfrmCityList = class(TfrmBrowseData)
    cdsCityList: TNClientDataset;
    cdsCityListCITYCODE: TStringField;
    cdsCityListCITYNAME: TStringField;
    cdsCityListPROVCODE: TStringField;
    cdsCityListMODDA: TDateTimeField;
    cdsCityListMODUI: TStringField;
    cdsCityListAPPDA: TDateTimeField;
    cdsCityListAPPUI: TStringField;
    cdsCityListUNDER4Y: TIntegerField;
    cdsCityListUNDER4YDA: TDateTimeField;
    cdsCityListNOTES4Y: TStringField;
    cdsCityListISDEL: TIntegerField;
    cdsCityListID: TLargeintField;
    gvwMasterCITYCODE: TcxGridDBBandedColumn;
    gvwMasterCITYNAME: TcxGridDBBandedColumn;
    gvwMasterPROVCODE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actViewData: TNAction;
    cbCountry: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCityList: TfrmCityList;

implementation

{$R *.dfm}

uses DataGlobal, FormCity;

procedure TfrmCityList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsCityList.Close;
  cdsCityList.Params[0].AsString := VarToStr(cbCountry.EditValue);
  cdsCityList.Open;
end;

procedure TfrmCityList.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCity;
end;

procedure TfrmCityList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open
    else
      cdsLuCounNation.Refresh;

    if not cdsLuProvince.Active then
      cdsLuProvince.Open
    else
      cdsLuProvince.Refresh;
  end;

  cbCountry.EditValue := dmGlobal.RemoteServer.GetDefaultCountry;
  KeyField := cdsCityListCITYCODE;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmCityList);

end.
