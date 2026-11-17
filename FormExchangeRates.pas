unit FormExchangeRates;

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
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Datasnap.DBClient, NClientDataset,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxCalendar, dxLayoutControl, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient, System.Actions, System.ImageList,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmExchangeRates = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsExchangeRateList: TNClientDataset;
    cdsExchangeRate: TNClientDataset;
    cdsExchangeRateCCY_CODE_FROM: TStringField;
    cdsExchangeRateCCY_CODE_TO: TStringField;
    cdsExchangeRateEFFECTIVE_DATE: TDateField;
    cdsExchangeRateCONVERSION_VALUE: TFloatField;
    cdsExchangeRateINVERSE_CONVERSION_VALUE: TFloatField;
    cdsExchangeRateMODDA: TDateTimeField;
    cdsExchangeRateMODUI: TStringField;
    cdsExchangeRateAPPDA: TDateTimeField;
    cdsExchangeRateAPPUI: TStringField;
    cdsExchangeRateUNDER4Y: TIntegerField;
    cdsExchangeRateUNDER4YDA: TDateTimeField;
    cdsExchangeRateNOTES4Y: TStringField;
    cdsExchangeRateISDEL: TIntegerField;
    cdsExchangeRateID: TLargeintField;
    actViewListData: TNAction;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwRevaluation: TcxGridDBBandedTableView;
    cdsRevaluationCurrency: TNClientDataset;
    cdsRevaluationCurrencyENTRYDATE: TDateField;
    cdsRevaluationCurrencyVOUCHERDATE: TDateField;
    cdsRevaluationCurrencyREFFERENCE: TStringField;
    cdsRevaluationCurrencyDESCRIPTION: TStringField;
    cdsRevaluationCurrencyGLACCOUNTCODE: TStringField;
    cdsRevaluationCurrencyGLACCOUNTNAME: TStringField;
    cdsRevaluationCurrencyCCYCODE: TStringField;
    cdsRevaluationCurrencyEXRATE: TFloatField;
    cdsRevaluationCurrencyDEBET: TFloatField;
    cdsRevaluationCurrencyCREDIT: TFloatField;
    dsRevaluationCurrency: TDataSource;
    gvwRevaluationENTRYDATE: TcxGridDBBandedColumn;
    gvwRevaluationVOUCHERDATE: TcxGridDBBandedColumn;
    gvwRevaluationREFFERENCE: TcxGridDBBandedColumn;
    gvwRevaluationDESCRIPTION: TcxGridDBBandedColumn;
    gvwRevaluationGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwRevaluationGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwRevaluationCCYCODE: TcxGridDBBandedColumn;
    gvwRevaluationEXRATE: TcxGridDBBandedColumn;
    gvwRevaluationDEBET: TcxGridDBBandedColumn;
    gvwRevaluationCREDIT: TcxGridDBBandedColumn;
    actGenerateCurrencyRevaluation: TNAction;
    cxButton2: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsExchangeRateListCCY_CODE: TStringField;
    cdsExchangeRateListEXCHANGE_DATE: TDateField;
    cdsExchangeRateListEXCHAGE_RATE: TFloatField;
    gvwMasterCCY_CODE: TcxGridDBBandedColumn;
    gvwMasterEXCHANGE_DATE: TcxGridDBBandedColumn;
    gvwMasterEXCHAGE_RATE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actViewListDataExecute(Sender: TObject);
    procedure DataContainerCommitTransaction(Sender: TNMasterDetailData);
    procedure cdsExchangeRateBeforePost(DataSet: TDataSet);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsExchangeRateNewRecord(DataSet: TDataSet);
    procedure actGenerateCurrencyRevaluationExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExchangeRates: TfrmExchangeRates;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormExchangeRate;

procedure TfrmExchangeRates.actGenerateCurrencyRevaluationExecute(
  Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := dmGlobal.RemoteServer.GenerateRevaluationCurrency(dtTransDate.Date);
  MessageDlg(sMessage, mtInformation, [mbOK], 0);

  cdsRevaluationCurrency.Refresh;
end;

procedure TfrmExchangeRates.actViewListDataExecute(Sender: TObject);
begin
  inherited;
  cdsExchangeRateList.Close;
  cdsExchangeRateList.Params[0].AsDate := dtTransDate.Date;
  cdsExchangeRateList.Open;

  cdsRevaluationCurrency.Close;
  cdsRevaluationCurrency.Params[0].AsDate := dtTransDate.Date;
  cdsRevaluationCurrency.Open;
end;

procedure TfrmExchangeRates.cdsExchangeRateBeforePost(DataSet: TDataSet);
var
  inverseValue: Double;
begin
  cdsExchangeRateCONVERSION_VALUE.AsFloat := dmGlobal.RoundFloatNumber(cdsExchangeRateCONVERSION_VALUE.AsFloat, 2);//2 Digit dibelakang koma
  inverseValue := 1 / cdsExchangeRateCONVERSION_VALUE.AsFloat;
  cdsExchangeRateINVERSE_CONVERSION_VALUE.AsFloat := dmGlobal.RoundFloatNumber(inverseValue, 2);

  inherited;
end;

procedure TfrmExchangeRates.cdsExchangeRateNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsExchangeRateEFFECTIVE_DATE.AsDateTime := cdsExchangeRateList.Params[0].AsDate;
  cdsExchangeRateCCY_CODE_TO.AsString      := dmGlobal.RemoteServer.GetLocalCCY;

  cdsExchangeRateINVERSE_CONVERSION_VALUE.AsFloat := 0;
end;

procedure TfrmExchangeRates.DataContainerCommitTransaction(
  Sender: TNMasterDetailData);
var
  oTempDataset: TClientDataset;
  oField: TField;
begin
  oTempDataset := TClientDataset.Create(nil);
  Try
    oTempDataset.Data := cdsExchangeRate.Data;

    cdsExchangeRate.Close;
    cdsExchangeRate.Params[0].AsString := oTempDataset.FieldByName('CCY_CODE_FROM').AsString;
    cdsExchangeRate.Params[1].AsDate := oTempDataset.FieldByName('EFFECTIVE_DATE').AsDateTime;
    cdsExchangeRate.Open;

    cdsExchangeRate.HoldAllDatasetEvent := True;

    if cdsExchangeRate.IsEmpty then
      cdsExchangeRate.Append
    else
      cdsExchangeRate.Edit;

    cdsExchangeRateCCY_CODE_FROM.AsString := oTempDataset.FieldByName('CCY_CODE_TO').AsString;
    cdsExchangeRateCCY_CODE_TO.AsString := oTempDataset.FieldByName('CCY_CODE_FROM').AsString;
    cdsExchangeRateEFFECTIVE_DATE.AsDateTime := oTempDataset.FieldByName('EFFECTIVE_DATE').AsDateTime;
    cdsExchangeRateCONVERSION_VALUE.AsFloat := oTempDataset.FieldByName('INVERSE_CONVERSION_VALUE').AsFloat;
    cdsExchangeRateINVERSE_CONVERSION_VALUE.AsFloat := oTempDataset.FieldByName('CONVERSION_VALUE').AsFloat;
    cdsExchangeRateMODDA.AsDateTime := oTempDataset.FieldByName('MODDA').AsDateTime;
    cdsExchangeRateMODUI.AsString := oTempDataset.FieldByName('MODUI').AsString;
    cdsExchangeRateAPPDA.AsDateTime := oTempDataset.FieldByName('APPDA').AsDateTime;
    cdsExchangeRateAPPUI.AsString := oTempDataset.FieldByName('APPUI').AsString;
    cdsExchangeRateUNDER4Y.AsInteger := oTempDataset.FieldByName('UNDER4Y').AsInteger;
    cdsExchangeRateUNDER4YDA.AsDateTime := oTempDataset.FieldByName('UNDER4YDA').AsDateTime;
    cdsExchangeRateNOTES4Y.AsString := oTempDataset.FieldByName('NOTES4Y').AsString;
    cdsExchangeRateISDEL.AsInteger := oTempDataset.FieldByName('ISDEL').AsInteger;

    if cdsExchangeRate.State in [dsInsert] then
    begin
      cdsExchangeRateID.AsLargeInt := dmGlobal.RemoteServer.GetSeq(Sender.MasterTableName);
    end;

    cdsExchangeRate.Post;
    cdsExchangeRate.ApplyUpdates(-1);
  Finally
    FreeAndNil(oTempDataset);
    cdsExchangeRate.HoldAllDatasetEvent := False;
    inherited;
  End;
end;

procedure TfrmExchangeRates.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmExchangeRate;
end;

procedure TfrmExchangeRates.FormCreate(Sender: TObject);
begin
  inherited;
  SetKeyFieldsLength(2);
  KeyFields[0] := cdsExchangeRateListCCY_CODE;
  KeyFields[1] := cdsExchangeRateListEXCHANGE_DATE;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

  cdsRevaluationCurrency.Close;
  cdsRevaluationCurrency.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
  cdsRevaluationCurrency.Open;

  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  actViewListData.Execute;
end;

Initialization
  RegisterClass(TfrmExchangeRates);

end.
