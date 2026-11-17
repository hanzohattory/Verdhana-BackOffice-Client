unit FormTrialBalanceStock;

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
  TfrmTrialBalanceStock = class(TfrmBrowseData)
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
    procedure FormShow(Sender: TObject);
    procedure chkAllLinePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrialBalanceStock: TfrmTrialBalanceStock;

implementation

uses DataGlobal;

{$R *.dfm}

procedure TfrmTrialBalanceStock.chkAllLinePropertiesChange(Sender: TObject);
begin
  inherited;
  edLineNo.Enabled := chkAllLine.EditValue = 0;
end;

procedure TfrmTrialBalanceStock.FormShow(Sender: TObject);
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
