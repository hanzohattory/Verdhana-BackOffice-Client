unit FormWarehouseTrade;

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
  cxGridCustomView, cxGrid, NReportClient;

type
  TfrmWarehouseTrade = class(TfrmBrowseData)
    cdsWarehouseTradeList: TNClientDataset;
    cdsWarehouseTradeListWAREHOUSEID: TLargeintField;
    cdsWarehouseTradeListWAREHOUSECODE: TStringField;
    cdsWarehouseTradeListWAREHOUSEDESC: TStringField;
    cdsWarehouseTradeListDEALTICKETID: TLargeintField;
    cdsWarehouseTradeListDEALTICKETDATE: TDateField;
    cdsWarehouseTradeListACCID: TIntegerField;
    cdsWarehouseTradeListACCNO: TStringField;
    cdsWarehouseTradeListACCNAME: TStringField;
    cdsWarehouseTradeListSTOCKID: TLargeintField;
    cdsWarehouseTradeListSTOCKCODE: TStringField;
    cdsWarehouseTradeListSTOCKNAME: TStringField;
    cdsWarehouseTradeListBS: TStringField;
    cdsWarehouseTradeListMARKETCODE: TStringField;
    cdsWarehouseTradeListCCYCODE: TStringField;
    cdsWarehouseTradeListQTY: TLargeintField;
    cdsWarehouseTradeListPRICE: TFloatField;
    cdsWarehouseTradeListVALUE: TFloatField;
    cdsWarehouseTradeListCDUEDATE: TDateField;
    cdsWarehouseTradeListSDUEDATE: TDateField;
    cdsWarehouseTradeListLISTED_DATE: TDateField;
    cdsWarehouseTradeListBOOKED_DATE: TDateField;
    cdsWarehouseTradeListSTATUS: TStringField;
    cdsWarehouseTradeListMODDA: TDateTimeField;
    cdsWarehouseTradeListMODUI: TStringField;
    cdsWarehouseTradeListAPPDA: TDateTimeField;
    cdsWarehouseTradeListAPPUI: TStringField;
    cdsWarehouseTradeListISDEL: TIntegerField;
    cdsWarehouseTradeListID: TLargeintField;
    cdsWarehouseTrade: TNClientDataset;
    cdsWarehouseTradeWAREHOUSEID: TLargeintField;
    cdsWarehouseTradeWAREHOUSECODE: TStringField;
    cdsWarehouseTradeWAREHOUSEDESC: TStringField;
    cdsWarehouseTradeDEALTICKETID: TLargeintField;
    cdsWarehouseTradeDEALTICKETDATE: TDateField;
    cdsWarehouseTradeACCID: TIntegerField;
    cdsWarehouseTradeACCNO: TStringField;
    cdsWarehouseTradeACCNAME: TStringField;
    cdsWarehouseTradeSTOCKID: TLargeintField;
    cdsWarehouseTradeSTOCKCODE: TStringField;
    cdsWarehouseTradeSTOCKNAME: TStringField;
    cdsWarehouseTradeBS: TStringField;
    cdsWarehouseTradeMARKETCODE: TStringField;
    cdsWarehouseTradeCCYCODE: TStringField;
    cdsWarehouseTradeQTY: TLargeintField;
    cdsWarehouseTradePRICE: TFloatField;
    cdsWarehouseTradeVALUE: TFloatField;
    cdsWarehouseTradeCDUEDATE: TDateField;
    cdsWarehouseTradeSDUEDATE: TDateField;
    cdsWarehouseTradeLISTED_DATE: TDateField;
    cdsWarehouseTradeBOOKED_DATE: TDateField;
    cdsWarehouseTradeSTATUS: TStringField;
    cdsWarehouseTradeMODDA: TDateTimeField;
    cdsWarehouseTradeMODUI: TStringField;
    cdsWarehouseTradeAPPDA: TDateTimeField;
    cdsWarehouseTradeAPPUI: TStringField;
    cdsWarehouseTradeISDEL: TIntegerField;
    cdsWarehouseTradeID: TLargeintField;
    gvwMasterWAREHOUSECODE: TcxGridDBBandedColumn;
    gvwMasterWAREHOUSEDESC: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    gvwMasterCDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSDUEDATE: TcxGridDBBandedColumn;
    gvwMasterLISTED_DATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWarehouseTrade: TfrmWarehouseTrade;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmWarehouseTrade.FormCreate(Sender: TObject);
begin
  inherited;
  cdsWarehouseTradeList.Close;
  cdsWarehouseTradeList.Open;
end;

Initialization
  RegisterClass(TfrmWarehouseTrade);

end.
