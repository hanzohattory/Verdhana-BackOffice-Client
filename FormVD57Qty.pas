unit FormVD57Qty;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons;

type
  TfrmVD57Qty = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtValueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsVD57Qty: TNClientDataset;
    cdsVD57QtyVALUEDATE: TDateField;
    cdsVD57QtyROWNO: TIntegerField;
    cdsVD57QtyREMARKS1: TStringField;
    cdsVD57QtyREMARKS2: TStringField;
    cdsVD57QtyREMARKS3: TStringField;
    cdsVD57QtyREMARKS4: TStringField;
    cdsVD57QtyREMARKS5: TStringField;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterROWNO: TcxGridDBBandedColumn;
    gvwMasterREMARKS1: TcxGridDBBandedColumn;
    gvwMasterREMARKS2: TcxGridDBBandedColumn;
    gvwMasterREMARKS3: TcxGridDBBandedColumn;
    gvwMasterREMARKS4: TcxGridDBBandedColumn;
    gvwMasterREMARKS5: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure RefreshData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVD57Qty: TfrmVD57Qty;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmVD57Qty.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmVD57Qty.cxButton1Click(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmVD57Qty.FormShow(Sender: TObject);
begin
  inherited;
  dtValueDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmVD57Qty.RefreshData;
begin
  cdsVD57Qty.Close;
  cdsVD57Qty.Params[0].AsDate := dtValueDate.EditValue;
  cdsVD57Qty.Open;
end;

end.
