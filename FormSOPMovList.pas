unit FormSOPMovList;

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
  cxGridCustomView, cxGrid;

type
  TfrmSOPMovList = class(TfrmBrowseData)
    cdsSOPMovList: TNClientDataset;
    cdsSOPMovListREQID: TIntegerField;
    cdsSOPMovListREQCODE: TStringField;
    cdsSOPMovListREQDATE: TDateField;
    cdsSOPMovListSOPID: TIntegerField;
    cdsSOPMovListACCSOPID: TIntegerField;
    cdsSOPMovListACCID: TIntegerField;
    cdsSOPMovListSTATUS: TStringField;
    cdsSOPMovListMODDA: TDateTimeField;
    cdsSOPMovListMODUI: TStringField;
    cdsSOPMovListAPPDA: TDateTimeField;
    cdsSOPMovListAPPUI: TStringField;
    cdsSOPMovListUNDER4Y: TIntegerField;
    cdsSOPMovListUNDER4YDA: TDateTimeField;
    cdsSOPMovListNOTES4Y: TStringField;
    cdsSOPMovListISDEL: TIntegerField;
    cdsSOPMovListID: TLargeintField;
    cdsSOPMovListSOPCODE: TStringField;
    cdsSOPMovListSOPDESC: TStringField;
    cdsSOPMovListNIK: TStringField;
    cdsSOPMovListNAME: TStringField;
    cdsSOPMovListACC_CUSTCODE: TStringField;
    cdsSOPMovListACCCODE: TStringField;
    cdsSOPMovListACCNAME: TStringField;
    gvwMasterREQID: TcxGridDBBandedColumn;
    gvwMasterREQCODE: TcxGridDBBandedColumn;
    gvwMasterREQDATE: TcxGridDBBandedColumn;
    gvwMasterSOPID: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterSOPCODE: TcxGridDBBandedColumn;
    gvwMasterSOPDESC: TcxGridDBBandedColumn;
    gvwMasterNIK: TcxGridDBBandedColumn;
    gvwMasterNAME: TcxGridDBBandedColumn;
    gvwMasterACC_CUSTCODE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    actRefreshData: TNAction;
    actViewData: TNAction;
    cdsSOPMovListSTOCKID: TIntegerField;
    cdsSOPMovListSTOCKCODE: TStringField;
    cdsSOPMovListAVGPRICE: TFloatField;
    cdsSOPMovListQTY_ONHAND: TFloatField;
    cdsSOPMovListCCY: TStringField;
    cdsSOPMovListCASH_ONHAND: TFloatField;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY_ONHAND: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshDataExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSOPMovList: TfrmSOPMovList;

implementation

{$R *.dfm}

uses DataGlobal, FormSOPMovement;

procedure TfrmSOPMovList.actRefreshDataExecute(Sender: TObject);
begin
  inherited;
  cdsSOPMovList.Close;
  cdsSOPMovList.Open;
end;

procedure TfrmSOPMovList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  frmSOPMovement.View(cdsSOPMovListREQID.AsInteger, cdsSOPMovListSOPID.AsInteger);
end;

procedure TfrmSOPMovList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsSOPMovList.Close;
  cdsSOPMovList.Open;
end;

Initialization
  RegisterClass(TfrmSOPMovList);

end.
