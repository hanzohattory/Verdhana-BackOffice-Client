unit FormPeriodList;

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
  cxGridCustomView, cxGrid, NReportClient;

type
  TfrmPeriodList = class(TfrmBrowseData)
    cdsPeriodList: TNClientDataset;
    cdsPeriodListPERIODID: TLargeintField;
    cdsPeriodListPERIODCODE: TStringField;
    cdsPeriodListPERIODNAME: TStringField;
    cdsPeriodListSTARTDATE: TDateField;
    cdsPeriodListENDDATE: TDateField;
    cdsPeriodListFISCALYEARID: TLargeintField;
    cdsPeriodListSTATUS: TStringField;
    cdsPeriodListSPECIAL: TStringField;
    cdsPeriodListMODDA: TDateTimeField;
    cdsPeriodListMODUI: TStringField;
    cdsPeriodListAPPDA: TDateTimeField;
    cdsPeriodListAPPUI: TStringField;
    cdsPeriodListUNDER4Y: TIntegerField;
    cdsPeriodListUNDER4YDA: TDateTimeField;
    cdsPeriodListNOTES4Y: TStringField;
    cdsPeriodListISDEL: TIntegerField;
    cdsPeriodListID: TLargeintField;
    gvwMasterPERIODCODE: TcxGridDBBandedColumn;
    gvwMasterPERIODNAME: TcxGridDBBandedColumn;
    gvwMasterSTARTDATE: TcxGridDBBandedColumn;
    gvwMasterENDDATE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterSPECIAL: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPeriodList: TfrmPeriodList;

implementation

{$R *.dfm}

uses DataGlobal, FormPeriod;

procedure TfrmPeriodList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmPeriod;
end;

procedure TfrmPeriodList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsPeriodListPERIODID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuFiscalYear.Close;
    cdsLuFiscalYear.Open;
  end;

  cdsPeriodList.Close;
  cdsPeriodList.Open;
end;

Initialization
  RegisterClass(TfrmPeriodList);

end.
