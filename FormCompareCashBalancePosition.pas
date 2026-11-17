unit FormCompareCashBalancePosition;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCalendar,
  cxBarEditItem, Datasnap.DBClient, NClientDataset;

type
  TfrmCompareCashBalancePosition = class(TfrmBrowseData)
    cdsCompareBalancePosition: TNClientDataset;
    cdsCompareBalancePositionACCID: TLargeintField;
    cdsCompareBalancePositionACCCODE: TStringField;
    cdsCompareBalancePositionACCNAME: TStringField;
    cdsCompareBalancePositionACCTYPE: TStringField;
    cdsCompareBalancePositionCASH_ONHAND: TFloatField;
    cdsCompareBalancePositionCSOA_BALANCE: TFloatField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    gvwMasterCSOA_BALANCE: TcxGridDBBandedColumn;
    dtValue: TcxBarEditItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompareCashBalancePosition: TfrmCompareCashBalancePosition;

implementation

uses DataGlobal;

{$R *.dfm}

procedure TfrmCompareCashBalancePosition.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsCompareBalancePosition.Close;
  cdsCompareBalancePosition.Params[0].AsDate := VarToDateTime(dtValue.EditValue);
  cdsCompareBalancePosition.Open;
end;

procedure TfrmCompareCashBalancePosition.FormCreate(Sender: TObject);
begin
  inherited;
  dtValue.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

end.
