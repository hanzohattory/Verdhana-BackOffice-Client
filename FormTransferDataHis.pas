unit FormTransferDataHis;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCalendar,
  cxBarEditItem, Datasnap.DBClient, NClientDataset;

type
  TfrmTransferDataHis = class(TfrmBrowseData)
    cdsTransferDataHis: TNClientDataset;
    cdsTransferDataHisREPORTDATE: TDateField;
    cdsTransferDataHisTRANSFERDATE_START: TDateTimeField;
    cdsTransferDataHisTRANSFERDATE_END: TDateTimeField;
    gvwMasterREPORTDATE: TcxGridDBBandedColumn;
    gvwMasterTRANSFERDATE_START: TcxGridDBBandedColumn;
    gvwMasterTRANSFERDATE_END: TcxGridDBBandedColumn;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransferDataHis: TfrmTransferDataHis;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmTransferDataHis.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsTransferDataHis.Close;
  cdsTransferDataHis.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsTransferDataHis.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsTransferDataHis.Open;
end;

procedure TfrmTransferDataHis.FormCreate(Sender: TObject);
begin
  inherited;
  dtStart.EditValue := dmGlobal.RemoteServer.GetServerTimeStamp;
  dtEnd.EditValue   := dtStart.EditValue;
end;

end.
