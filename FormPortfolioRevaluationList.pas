unit FormPortfolioRevaluationList;

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
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmPortfolioRevaluationList = class(TfrmBrowseData)
    cdsPortfoioRevaluation: TNClientDataset;
    cdsPortfoioRevaluationD: TNClientDataset;
    dsPortfoioRevaluationD: TDataSource;
    cdsPortfoioRevaluationPMID: TLargeintField;
    cdsPortfoioRevaluationPMCODE: TStringField;
    cdsPortfoioRevaluationENTRYDATE: TDateField;
    cdsPortfoioRevaluationPM_DATE: TDateField;
    cdsPortfoioRevaluationTOTAL_AVGSTOCK_VALUE: TFloatField;
    cdsPortfoioRevaluationTOTAL_MARKET_VALUE: TFloatField;
    cdsPortfoioRevaluationTOTAL_UNREAL_VALUE: TFloatField;
    cdsPortfoioRevaluationPOSTED: TBooleanField;
    cdsPortfoioRevaluationPOSTED_UI: TStringField;
    cdsPortfoioRevaluationLAST_JOURNALNO: TStringField;
    cdsPortfoioRevaluationREVERSED: TBooleanField;
    cdsPortfoioRevaluationREVERSED_UI: TStringField;
    cdsPortfoioRevaluationLAST_REV_JOURNALNO: TStringField;
    cdsPortfoioRevaluationDACCCODE: TStringField;
    cdsPortfoioRevaluationDACCNAME: TStringField;
    cdsPortfoioRevaluationDACQDATE: TDateField;
    cdsPortfoioRevaluationDAVGPRICE: TFloatField;
    cdsPortfoioRevaluationDCLOSEPRICE: TFloatField;
    cdsPortfoioRevaluationDQTY: TFloatField;
    cdsPortfoioRevaluationDAVGSTOCK_VALUE: TFloatField;
    cdsPortfoioRevaluationDMARKET_VALUE: TFloatField;
    cdsPortfoioRevaluationDUNREAL_VALUE: TFloatField;
    gvwMasterPMID: TcxGridDBBandedColumn;
    gvwMasterPMCODE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterPM_DATE: TcxGridDBBandedColumn;
    gvwMasterTOTAL_AVGSTOCK_VALUE: TcxGridDBBandedColumn;
    gvwMasterTOTAL_MARKET_VALUE: TcxGridDBBandedColumn;
    gvwMasterTOTAL_UNREAL_VALUE: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterLAST_JOURNALNO: TcxGridDBBandedColumn;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterLAST_REV_JOURNALNO: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtValue: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cbInstrumentType: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actGenerate: TNAction;
    actReverse: TNAction;
    ReversePortfolioRevaluation1: TMenuItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwRevaluation: TcxGridDBBandedTableView;
    gvwRevaluationACCCODE: TcxGridDBBandedColumn;
    gvwRevaluationACCNAME: TcxGridDBBandedColumn;
    gvwRevaluationACQDATE: TcxGridDBBandedColumn;
    gvwRevaluationAVGPRICE: TcxGridDBBandedColumn;
    gvwRevaluationCLOSEPRICE: TcxGridDBBandedColumn;
    gvwRevaluationQTY: TcxGridDBBandedColumn;
    gvwRevaluationAVGSTOCK_VALUE: TcxGridDBBandedColumn;
    gvwRevaluationMARKET_VALUE: TcxGridDBBandedColumn;
    gvwRevaluationUNREAL_VALUE: TcxGridDBBandedColumn;
    cxSplitter1: TcxSplitter;
    cdsPortfoioRevaluationDSTOCKCODE: TStringField;
    gvwRevaluationSTOCKCODE: TcxGridDBBandedColumn;
    cdsPortfoioRevaluationPOSTED_DATE: TDateTimeField;
    cdsPortfoioRevaluationREVERSED_DATE: TDateTimeField;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure actGenerateExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cbInstrumentTypePropertiesChange(Sender: TObject);
    procedure gvwMasterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gvwMasterKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GetDetailRevaluation;
  public
    { Public declarations }
  end;

var
  frmPortfolioRevaluationList: TfrmPortfolioRevaluationList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmPortfolioRevaluationList.actGenerateExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.RemoteServer.GeneratePortfolioMTM(dtValue.Date, cbInstrumentType.EditValue, sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  actRefresh.Execute;
end;

procedure TfrmPortfolioRevaluationList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsPortfoioRevaluation.Close;
  cdsPortfoioRevaluation.Params[0].AsDate   := dtValue.Date;
  cdsPortfoioRevaluation.Params[1].AsString := cbInstrumentType.EditValue;
  cdsPortfoioRevaluation.Open;

  cdsPortfoioRevaluationD.Close;
  cdsPortfoioRevaluationD.Params[0].AsInteger := 0;
  cdsPortfoioRevaluationD.Open;
end;

procedure TfrmPortfolioRevaluationList.actReverseExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.RemoteServer.ReversePortfolioRevaluation(cdsPortfoioRevaluationPMID.AsLargeInt, sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  actRefresh.Execute;
end;

procedure TfrmPortfolioRevaluationList.cbInstrumentTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  actRefresh.Execute;
end;

procedure TfrmPortfolioRevaluationList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentGroupType.Close;
    cdsLuInstrumentGroupType.Open;
  end;
end;

procedure TfrmPortfolioRevaluationList.FormShow(Sender: TObject);
begin
  inherited;
  dtValue.Date               := dmGlobal.RemoteServer.GetTransDate;
  cbInstrumentType.EditValue := 'S';
  actRefresh.Execute;
end;

procedure TfrmPortfolioRevaluationList.GetDetailRevaluation;
var
  iPMID: Int64;
begin
  iPMID := StrToInt64Def(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterPMID.Index], 0);

  cdsPortfoioRevaluationD.Close;
  cdsPortfoioRevaluationD.Params[0].AsInteger := iPMID;
  cdsPortfoioRevaluationD.Open;
end;

procedure TfrmPortfolioRevaluationList.gvwMasterCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  GetDetailRevaluation;
end;

procedure TfrmPortfolioRevaluationList.gvwMasterKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  GetDetailRevaluation;
end;

end.
