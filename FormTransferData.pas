unit FormTransferData;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmTransferData = class(TfrmBrowseData)
    cdsTransferData: TNClientDataset;
    cdsTransferDataREPORTDATE: TDateField;
    cdsTransferDataTRANSFERDATE_START: TDateTimeField;
    cdsTransferDataTRANSFERDATE_END: TDateTimeField;
    gvwMasterREPORTDATE: TcxGridDBBandedColumn;
    gvwMasterTRANSFERDATE_START: TcxGridDBBandedColumn;
    gvwMasterTRANSFERDATE_END: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransferData: TfrmTransferData;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmTransferData.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsTransferData.Close;
  cdsTransferData.Open;
end;

procedure TfrmTransferData.FormShow(Sender: TObject);
begin
  inherited;
  actReject.Execute;
end;

end.
