unit FormVD55MonthlySupport;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxImageComboBox, cxSpinEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, dxBar, cxBarEditItem, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, cxClasses, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView, cxGrid;

type
  TfrmVD55MonthlySupport = class(TfrmBrowseData)
    cdsVD55MonthlySupport: TNClientDataset;
    cdsVD55MonthlySupportNO: TStringField;
    cdsVD55MonthlySupportREPORT_DESC: TStringField;
    cdsVD55MonthlySupportACCCODE: TStringField;
    cdsVD55MonthlySupportACCNAME: TStringField;
    cdsVD55MonthlySupportAFFIL: TBooleanField;
    cdsVD55MonthlySupportINVTYPE: TStringField;
    cdsVD55MonthlySupportCCYCODE: TStringField;
    cdsVD55MonthlySupportVALUE: TFloatField;
    cdsVD55MonthlySupportBOARD: TStringField;
    cdsVD55MonthlySupportMARKET: TBooleanField;
    cdsVD55MonthlySupportSUBREKNO: TStringField;
    cbMonth: TcxBarEditItem;
    edYear: TcxBarEditItem;
    gvwMasterNO: TcxGridDBBandedColumn;
    gvwMasterREPORT_DESC: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterVALUE: TcxGridDBBandedColumn;
    gvwMasterBOARD: TcxGridDBBandedColumn;
    gvwMasterMARKET: TcxGridDBBandedColumn;
    gvwMasterSUBREKNO: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVD55MonthlySupport: TfrmVD55MonthlySupport;

implementation

{$R *.dfm}

uses DataGlobal, FormMKBDSupportingReportFilter;

procedure TfrmVD55MonthlySupport.actPrintExecute(Sender: TObject);
var
  sCaption: String;
  iFrom, iTo: Integer;
begin
  sCaption := 'VD55 Monthly Support';
  iFrom := 7;
  iTo := 24;

  if frmMKBDSupportReportFilter.FilterRow(sCaption, iFrom, iTo) <> mrOk then
    Exit;

  ReportContainer.Params[0].AsInteger := StrToIntDef(VarToStr(cbMonth.EditValue), 12);
  ReportContainer.Params[1].AsInteger := StrToIntDef(VarToStr(edYear.EditValue), 1900);
  ReportContainer.Params[2].AsInteger := iFrom;
  ReportContainer.Params[3].AsInteger := iTo;
  inherited;
end;

procedure TfrmVD55MonthlySupport.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsVD55MonthlySupport.Close;
  cdsVD55MonthlySupport.Params[0].AsInteger := StrToIntDef(VarToStr(cbMonth.EditValue), 12);
  cdsVD55MonthlySupport.Params[1].AsInteger := StrToIntDef(VarToStr(edYear.EditValue), 1900);
  cdsVD55MonthlySupport.Open;
end;

procedure TfrmVD55MonthlySupport.FormCreate(Sender: TObject);
var
  dtTrans: TDateTime;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtTrans := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtTrans, iYear, iMonth, iDay);
  cbMonth.EditValue := iMonth;
  edYear.EditValue := iYear;
end;

Initialization
  RegisterClass(TfrmVD55MonthlySupport);

end.
