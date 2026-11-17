unit FormReportTrialBalanceStock;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCalendar, cxCheckBox,
  cxSpinEdit, Datasnap.DBClient, NClientDataset, dxBar, cxBarEditItem,
  NReportClient, NDatasetContainer, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmReportTrialBalanceStock = class(TfrmBrowseData)
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    chkAllLine: TcxBarEditItem;
    edLineNo: TcxBarEditItem;
    cdsTrialBalanceStock: TNClientDataset;
    cdsTrialBalanceStockACCID: TLargeintField;
    cdsTrialBalanceStockACCNO: TStringField;
    cdsTrialBalanceStockACCNAME: TStringField;
    cdsTrialBalanceStockLDGTYPE: TStringField;
    cdsTrialBalanceStockLDGNAME: TStringField;
    cdsTrialBalanceStockINSTRUMENT_ID: TIntegerField;
    cdsTrialBalanceStockINSTRUMENT_CODE: TStringField;
    cdsTrialBalanceStockINSTRUMENT_NAME: TStringField;
    cdsTrialBalanceStockBEGBAL: TFloatField;
    cdsTrialBalanceStockDBAMT: TFloatField;
    cdsTrialBalanceStockCRAMT: TFloatField;
    cdsTrialBalanceStockENDBAL: TFloatField;
    cdsTrialBalanceStockMARKETCODE: TStringField;
    cdsTrialBalanceStockCUSTYPE: TStringField;
    cdsTrialBalanceStockVD57_LINE: TIntegerField;
    cdsTrialBalanceStockVD57_DESCRIPTION: TStringField;
    cdsTrialBalanceStockVD57_GROUP: TIntegerField;
    cdsTrialBalanceStockGROUP_VD57_DESCRIPTION: TStringField;
    cdsTrialBalanceStockCLOSEPRICE: TFloatField;
    cdsTrialBalanceStockMARKETVALUE: TFloatField;
    cdsTrialBalanceStockPRDCCODE: TStringField;
    cdsTrialBalanceStockACCTYPE: TStringField;
    cdsTrialBalanceStockAFFIL: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterLDGTYPE: TcxGridDBBandedColumn;
    gvwMasterLDGNAME: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_NAME: TcxGridDBBandedColumn;
    gvwMasterBEGBAL: TcxGridDBBandedColumn;
    gvwMasterDBAMT: TcxGridDBBandedColumn;
    gvwMasterCRAMT: TcxGridDBBandedColumn;
    gvwMasterENDBAL: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCUSTYPE: TcxGridDBBandedColumn;
    gvwMasterVD57_LINE: TcxGridDBBandedColumn;
    gvwMasterVD57_DESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterVD57_GROUP: TcxGridDBBandedColumn;
    gvwMasterGROUP_VD57_DESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterCLOSEPRICE: TcxGridDBBandedColumn;
    gvwMasterMARKETVALUE: TcxGridDBBandedColumn;
    gvwMasterPRDCCODE: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure chkAllLinePropertiesChange(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure edLineNoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTrialBalanceStock: TfrmReportTrialBalanceStock;

implementation

uses DataGlobal;

{$R *.dfm}

procedure TfrmReportTrialBalanceStock.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsTrialBalanceStock.Close;
  cdsTrialBalanceStock.Params[0].AsDate    := VarToDateTime(dtStart.EditValue);
  cdsTrialBalanceStock.Params[1].AsDate    := VarToDateTime(dtEnd.EditValue);
  cdsTrialBalanceStock.Params[2].asInteger := chkAllLine.EditValue;
  cdsTrialBalanceStock.Params[3].asInteger := edLineNo.EditValue;
  cdsTrialBalanceStock.Open;
end;

procedure TfrmReportTrialBalanceStock.chkAllLinePropertiesChange(Sender: TObject);
begin
  inherited;
  edLineNo.Enabled := chkAllLine.EditValue = 0;
end;

procedure TfrmReportTrialBalanceStock.edLineNoEnter(Sender: TObject);
begin
  inherited;
//  actRefresh.Execute;
end;

procedure TfrmReportTrialBalanceStock.FormShow(Sender: TObject);
var
  dDate: TDate;
begin
  inherited;
  dDate := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue    := dDate;
  dtEnd.EditValue      := dDate;
  chkAllLine.EditValue := 1;
  edLineNo.EditValue   := 0;

  edLineNo.Enabled := False;
end;

end.
