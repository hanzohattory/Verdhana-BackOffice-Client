unit FormTradingLimitClassList;

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
  cxGridCustomView, cxGrid, NReportRPC, NReportClient;

type
  TfrmTradingLimitClassList = class(TfrmBrowseData)
    cdsTradingLimitList: TNClientDataset;
    cdsTradingLimitListTLCLASSID: TIntegerField;
    cdsTradingLimitListTLCLASSCODE: TStringField;
    cdsTradingLimitListTLCLASSDESC: TStringField;
    cdsTradingLimitListPRDCODE: TStringField;
    cdsTradingLimitListPRDTYPE: TStringField;
    cdsTradingLimitListTLB_CHK: TStringField;
    cdsTradingLimitListTLB_CHK_MODEL: TStringField;
    cdsTradingLimitListTLB_CHK_STOCK: TStringField;
    cdsTradingLimitListTLB_CHK_OVERLIMIT: TStringField;
    cdsTradingLimitListTLB_CHK_OVERDUE: TStringField;
    cdsTradingLimitListTLB_CHK_STSNOTVALID: TStringField;
    cdsTradingLimitListTLB_CHK_MRGNONMRG: TStringField;
    cdsTradingLimitListTLS_CHK: TStringField;
    cdsTradingLimitListTLS_CHK_MODEL: TStringField;
    cdsTradingLimitListTLS_CHK_SHORTSELL: TStringField;
    cdsTradingLimitListTLS_SSNONSS: TStringField;
    cdsTradingLimitListTLS_CHK_OVERDUE: TStringField;
    cdsTradingLimitListTLS_CHK_STSNOTVALID: TStringField;
    cdsTradingLimitListCASH_VAL: TFloatField;
    cdsTradingLimitListSTOCK_VAL: TFloatField;
    cdsTradingLimitListMODDA: TDateTimeField;
    cdsTradingLimitListMODUI: TStringField;
    cdsTradingLimitListAPPDA: TDateTimeField;
    cdsTradingLimitListAPPUI: TStringField;
    cdsTradingLimitListUNDER4Y: TIntegerField;
    cdsTradingLimitListUNDER4YDA: TDateTimeField;
    cdsTradingLimitListNOTES4Y: TStringField;
    cdsTradingLimitListISDEL: TIntegerField;
    cdsTradingLimitListID: TLargeintField;
    gvwMasterTLCLASSCODE: TcxGridDBBandedColumn;
    gvwMasterTLCLASSDESC: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterPRDTYPE: TcxGridDBBandedColumn;
    gvwMasterTLB_CHK: TcxGridDBBandedColumn;
    gvwMasterTLB_CHK_MODEL: TcxGridDBBandedColumn;
    gvwMasterTLB_CHK_STOCK: TcxGridDBBandedColumn;
    gvwMasterTLB_CHK_OVERLIMIT: TcxGridDBBandedColumn;
    gvwMasterTLB_CHK_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterTLB_CHK_STSNOTVALID: TcxGridDBBandedColumn;
    gvwMasterTLB_CHK_MRGNONMRG: TcxGridDBBandedColumn;
    gvwMasterTLS_CHK: TcxGridDBBandedColumn;
    gvwMasterTLS_CHK_MODEL: TcxGridDBBandedColumn;
    gvwMasterTLS_CHK_SHORTSELL: TcxGridDBBandedColumn;
    gvwMasterTLS_SSNONSS: TcxGridDBBandedColumn;
    gvwMasterTLS_CHK_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterTLS_CHK_STSNOTVALID: TcxGridDBBandedColumn;
    gvwMasterCASH_VAL: TcxGridDBBandedColumn;
    gvwMasterSTOCK_VAL: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPrdType: String;
  public
    { Public declarations }
  end;

var
  frmTradingLimitClassList: TfrmTradingLimitClassList;

implementation

{$R *.dfm}

uses DataGlobal, FormTradingLimitClass;

procedure TfrmTradingLimitClassList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmTradingLimitClass;
end;

procedure TfrmTradingLimitClassList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsTradingLimitListTLCLASSID;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuProductType.Active then
      cdsLuProductType.Open
    else
      cdsLuProductType.Refresh;
  end;

  cdsTradingLimitList.Close;
  cdsTradingLimitList.Open;
end;

Initialization
  RegisterClass(TfrmTradingLimitClassList);

end.
