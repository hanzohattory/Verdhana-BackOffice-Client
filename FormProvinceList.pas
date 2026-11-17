unit FormProvinceList;

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
  cxGridCustomView, cxGrid, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, NReportClient;

type
  TfrmProvinceList = class(TfrmBrowseData)
    cdsProvinceList: TNClientDataset;
    cdsProvinceListPROVCODE: TStringField;
    cdsProvinceListPROVNAME: TStringField;
    cdsProvinceListMODDA: TDateTimeField;
    cdsProvinceListMODUI: TStringField;
    cdsProvinceListAPPDA: TDateTimeField;
    cdsProvinceListAPPUI: TStringField;
    cdsProvinceListUNDER4Y: TIntegerField;
    cdsProvinceListUNDER4YDA: TDateTimeField;
    cdsProvinceListNOTES4Y: TStringField;
    cdsProvinceListISDEL: TIntegerField;
    cdsProvinceListID: TLargeintField;
    gvwMasterPROVCODE: TcxGridDBBandedColumn;
    gvwMasterPROVNAME: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    dxLayoutControl1: TdxLayoutControl;
    btnViewData: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cbCountry: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    actViewData: TNAction;
    cdsProvinceListCOUNTCODE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actViewDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProvinceList: TfrmProvinceList;

implementation

{$R *.dfm}

uses DataGlobal, FormProvince;

procedure TfrmProvinceList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsProvinceList.Close;
  cdsProvinceList.Params[0].AsString := VarToStr(cbCountry.EditValue);
  cdsProvinceList.Open;
end;

procedure TfrmProvinceList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmProvince;
end;

procedure TfrmProvinceList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open
    else
      cdsLuCounNation.Refresh;
  end;

  cbCountry.EditValue := dmGlobal.RemoteServer.GetDefaultCountry;
  KeyField := cdsProvinceListPROVCODE;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmProvinceList);

end.
