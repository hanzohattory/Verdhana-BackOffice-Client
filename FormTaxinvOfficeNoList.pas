unit FormTaxinvOfficeNoList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset;

type
  TfrmTaxInvOfficeNoList = class(TfrmBrowseData)
    cdsTaxOfficeList: TNClientDataset;
    cdsTaxOfficeListTAXNO: TIntegerField;
    cdsTaxOfficeListTAX_NODATE: TDateField;
    cdsTaxOfficeListSTART_TAXNO: TStringField;
    cdsTaxOfficeListEND_TAXNO: TStringField;
    cdsTaxOfficeListTOTAL_TAXNO: TIntegerField;
    cdsTaxOfficeListUSED_TAXNO: TIntegerField;
    cdsTaxOfficeListLAST_TAXNO: TStringField;
    cdsTaxOfficeListMODDA: TDateTimeField;
    cdsTaxOfficeListMODUI: TStringField;
    cdsTaxOfficeListAPPDA: TDateTimeField;
    cdsTaxOfficeListAPPUI: TStringField;
    cdsTaxOfficeListISDEL: TIntegerField;
    cdsTaxOfficeListID: TLargeintField;
    gvwMasterTAXNO: TcxGridDBBandedColumn;
    gvwMasterTAX_NODATE: TcxGridDBBandedColumn;
    gvwMasterSTART_TAXNO: TcxGridDBBandedColumn;
    gvwMasterEND_TAXNO: TcxGridDBBandedColumn;
    gvwMasterTOTAL_TAXNO: TcxGridDBBandedColumn;
    gvwMasterUSED_TAXNO: TcxGridDBBandedColumn;
    gvwMasterLAST_TAXNO: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTaxInvOfficeNoList: TfrmTaxInvOfficeNoList;

implementation

{$R *.dfm}

uses FormTaxinvOfficeNo, DataGlobal;

procedure TfrmTaxInvOfficeNoList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmTaxInvOfficeNo;
end;

procedure TfrmTaxInvOfficeNoList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsTaxOfficeListTAXNO;

  cdsTaxOfficeList.Close;
  cdsTaxOfficeList.Open;
end;

Initialization
  RegisterClass(TfrmTaxInvOfficeNoList);

end.
