unit FormCurrencyList;

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
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, System.Actions,
  System.ImageList;

type
  TfrmCurrencyList = class(TfrmBrowseData)
    cdsCcyList: TNClientDataset;
    gvwMasterCCYNAME: TcxGridDBBandedColumn;
    gvwMasterSPCONACC: TcxGridDBBandedColumn;
    gvwMasterSPPOSACC: TcxGridDBBandedColumn;
    cdsCcy: TNClientDataset;
    cdsCcyListCCYCODE: TStringField;
    cdsCcyListCCYNAME: TStringField;
    cdsCcyListSPCONACC: TStringField;
    cdsCcyListSPPOSACC: TStringField;
    cdsCcyCCYCODE: TStringField;
    cdsCcyCCYNAME: TStringField;
    cdsCcySPCONACC: TStringField;
    cdsCcySPPOSACC: TStringField;
    cdsCcyMODDA: TDateTimeField;
    cdsCcyMODUI: TStringField;
    cdsCcyAPPDA: TDateTimeField;
    cdsCcyAPPUI: TStringField;
    cdsCcyISDEL: TIntegerField;
    cdsCcyID: TLargeintField;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    cdsGLAccount: TNClientDataset;
    cdsGLAccountGLACCOUNTID: TIntegerField;
    cdsGLAccountGLACCOUNTCODE: TStringField;
    cdsGLAccountGLACCOUNTNAME: TStringField;
    cdsCcyListSPCONACCNO: TStringField;
    cdsCcyListSPPOSACCNO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCurrencyList: TfrmCurrencyList;

implementation

{$R *.dfm}

uses DataGlobal, FormCurrency;

procedure TfrmCurrencyList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCurrency;
end;

procedure TfrmCurrencyList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCcyListCCYCODE;
  cdsCcyList.Close;
  cdsCcyList.Open;
end;

procedure TfrmCurrencyList.FormShow(Sender: TObject);
begin
  inherited;
  cdsGLAccount.Close;
  cdsGLAccount.Open;
end;

Initialization
  RegisterClass(TfrmCurrencyList);

end.
