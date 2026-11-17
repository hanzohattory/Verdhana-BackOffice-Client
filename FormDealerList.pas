unit FormDealerList;

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
  cxGridCustomView, cxGrid, NReportClient, System.Actions, System.ImageList;

type
  TfrmDealerList = class(TfrmBrowseData)
    cdsDealerList: TNClientDataset;
    cdsDealerListDEALERID: TLargeintField;
    cdsDealerListDEALERCODE: TStringField;
    cdsDealerListDEALERNAME: TStringField;
    cdsDealerListMODDA: TDateTimeField;
    cdsDealerListMODUI: TStringField;
    cdsDealerListUNDER4Y: TIntegerField;
    cdsDealerListUNDER4YDA: TDateTimeField;
    cdsDealer: TNClientDataset;
    cdsDealerDEALERID: TLargeintField;
    cdsDealerDEALERCODE: TStringField;
    cdsDealerDEALERNAME: TStringField;
    cdsDealerMODDA: TDateTimeField;
    cdsDealerMODUI: TStringField;
    cdsDealerAPPDA: TDateTimeField;
    cdsDealerAPPUI: TStringField;
    cdsDealerUNDER4Y: TIntegerField;
    cdsDealerUNDER4YDA: TDateTimeField;
    cdsDealerNOTES4Y: TStringField;
    cdsDealerISDEL: TIntegerField;
    cdsDealerID: TLargeintField;
    gvwMasterDEALERCODE: TcxGridDBBandedColumn;
    gvwMasterDEALERNAME: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDealerList: TfrmDealerList;

implementation

{$R *.dfm}

uses DataGlobal, FormDealer;

procedure TfrmDealerList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmDealer;
end;

procedure TfrmDealerList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsDealerList.Close;
  cdsDealerList.Open;
end;

Initialization
  RegisterClass(TfrmDealerList);

end.
