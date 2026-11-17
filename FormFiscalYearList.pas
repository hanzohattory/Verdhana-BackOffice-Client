unit FormFiscalYearList;

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
  TfrmFiscalYearList = class(TfrmBrowseData)
    cdsFiscalYearList: TNClientDataset;
    cdsFiscalYearListFISCALYEARID: TLargeintField;
    cdsFiscalYearListFISCALYEARCODE: TStringField;
    cdsFiscalYearListFISCALYEARNAME: TStringField;
    cdsFiscalYearListSTARTDATE: TDateField;
    cdsFiscalYearListENDDATE: TDateField;
    cdsFiscalYearListSTATUS: TStringField;
    cdsFiscalYearListMODDA: TDateTimeField;
    cdsFiscalYearListMODUI: TStringField;
    cdsFiscalYearListAPPDA: TDateTimeField;
    cdsFiscalYearListAPPUI: TStringField;
    cdsFiscalYearListUNDER4Y: TIntegerField;
    cdsFiscalYearListUNDER4YDA: TDateTimeField;
    cdsFiscalYearListNOTES4Y: TStringField;
    cdsFiscalYearListISDEL: TIntegerField;
    cdsFiscalYearListID: TLargeintField;
    gvwMasterFISCALYEARCODE: TcxGridDBBandedColumn;
    gvwMasterFISCALYEARNAME: TcxGridDBBandedColumn;
    gvwMasterSTARTDATE: TcxGridDBBandedColumn;
    gvwMasterENDDATE: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiscalYearList: TfrmFiscalYearList;

implementation

{$R *.dfm}

uses DataGlobal, FormFiscalYear;

procedure TfrmFiscalYearList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmFiscalYear;
end;

procedure TfrmFiscalYearList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsFiscalYearListFISCALYEARID;
  cdsFiscalYearList.Close;
  cdsFiscalYearList.Open;
end;

Initialization
  RegisterClass(TfrmFiscalYearList);

end.
