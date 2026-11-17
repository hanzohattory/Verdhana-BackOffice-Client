unit FormBondsClosePriceList;

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
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, Vcl.Menus, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxCurrencyEdit,
  cxCalendar, ComObj, cxBarEditItem, IniFiles, Vcl.ExtCtrls, cxContainer,
  cxProgressBar, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NReportClient, XLSSheetData5,
  XLSReadWriteII5, DateUtils, System.Actions, System.ImageList,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TfrmBondsClosePriceList = class(TfrmBrowseData)
    cdsBondsClosePriceList: TNClientDataset;
    dxBarButton2: TdxBarButton;
    actImportData: TNAction;
    odImportData: TOpenDialog;
    txtBottomOffer: TcxBarEditItem;
    txtTopOffer: TcxBarEditItem;
    BarMBrowseBar2: TdxBar;
    txtTradeDate: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    cdsBondsClosePriceListCPDATE: TDateField;
    cdsBondsClosePriceListINSTRUMENT_CODE: TStringField;
    cdsBondsClosePriceListISINCODE: TStringField;
    cdsBondsClosePriceListRATING: TStringField;
    cdsBondsClosePriceListCOUPON_RATE: TFloatField;
    cdsBondsClosePriceListMATURITY_DATE: TDateField;
    cdsBondsClosePriceListTTM: TFloatField;
    cdsBondsClosePriceListTODAY_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceListTODAY_LOW_PRICE: TFloatField;
    cdsBondsClosePriceListTODAY_FAIR_PRICE: TFloatField;
    cdsBondsClosePriceListTODAY_HIGH_PRICE: TFloatField;
    cdsBondsClosePriceListCNHG_BPS: TFloatField;
    cdsBondsClosePriceListYESTERDAY_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceListYESTERDAY_FAIR_PRICE: TFloatField;
    cdsBondsClosePriceListLASTWEEK_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceListLASTWEEK_FAIR_PRICE: TFloatField;
    cdsBondsClosePriceListLASTMONTH_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceListLASTMONTH_FAIR_PRICE: TFloatField;
    gvwMasterCPDATE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    gvwMasterRATING: TcxGridDBBandedColumn;
    gvwMasterCOUPON_RATE: TcxGridDBBandedColumn;
    gvwMasterMATURITY_DATE: TcxGridDBBandedColumn;
    gvwMasterTTM: TcxGridDBBandedColumn;
    gvwMasterTODAY_FAIR_YIELD: TcxGridDBBandedColumn;
    gvwMasterTODAY_LOW_PRICE: TcxGridDBBandedColumn;
    gvwMasterTODAY_FAIR_PRICE: TcxGridDBBandedColumn;
    gvwMasterTODAY_HIGH_PRICE: TcxGridDBBandedColumn;
    gvwMasterCNHG_BPS: TcxGridDBBandedColumn;
    gvwMasterYESTERDAY_FAIR_YIELD: TcxGridDBBandedColumn;
    gvwMasterYESTERDAY_FAIR_PRICE: TcxGridDBBandedColumn;
    gvwMasterLASTWEEK_FAIR_YIELD: TcxGridDBBandedColumn;
    gvwMasterLASTWEEK_FAIR_PRICE: TcxGridDBBandedColumn;
    gvwMasterLASTMONTH_FAIR_YIELD: TcxGridDBBandedColumn;
    gvwMasterLASTMONTH_FAIR_PRICE: TcxGridDBBandedColumn;
    cdsBondsClosePrice: TNClientDataset;
    dxBarButton3: TdxBarButton;
    cdsBondsClosePriceListSHORTNAME: TStringField;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    cdsBondsClosePriceCPDATE: TDateField;
    cdsBondsClosePriceINSTRUMENT_CODE: TStringField;
    cdsBondsClosePriceISINCODE: TStringField;
    cdsBondsClosePriceRATING: TStringField;
    cdsBondsClosePriceCOUPON_RATE: TFloatField;
    cdsBondsClosePriceMATURITY_DATE: TDateField;
    cdsBondsClosePriceTTM: TFloatField;
    cdsBondsClosePriceTODAY_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceTODAY_LOW_PRICE: TFloatField;
    cdsBondsClosePriceTODAY_FAIR_PRICE: TFloatField;
    cdsBondsClosePriceTODAY_HIGH_PRICE: TFloatField;
    cdsBondsClosePriceCNHG_BPS: TFloatField;
    cdsBondsClosePriceYESTERDAY_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceYESTERDAY_FAIR_PRICE: TFloatField;
    cdsBondsClosePriceLASTWEEK_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceLASTWEEK_FAIR_PRICE: TFloatField;
    cdsBondsClosePriceLASTMONTH_FAIR_YIELD: TFloatField;
    cdsBondsClosePriceLASTMONTH_FAIR_PRICE: TFloatField;
    cdsBondsClosePriceListTMPTODAYFAIRPRICE: TFloatField;
    cdsBondsClosePriceListTMPTODAYLOWPRICE: TFloatField;
    cdsBondsClosePriceListTMPTODAYHIGHPRICE: TFloatField;
    cdsBondsClosePriceListTMPYESTERDAYFAIRPRICE: TFloatField;
    cdsBondsClosePriceListTMPLASTWEEKFAIRPRICE: TFloatField;
    cdsBondsClosePriceListTMPLASTMONTHFAIRPRICE: TFloatField;
    gvwMasterTMPTODAYLOWPRICE: TcxGridDBBandedColumn;
    gvwMasterTMPTODAYFAIRPRICE: TcxGridDBBandedColumn;
    gvwMasterTMPTODAYHIGHPRICE: TcxGridDBBandedColumn;
    gvwMasterTMPYESTERDAYFAIRPRICE: TcxGridDBBandedColumn;
    gvwMasterTMPLASTWEEKFAIRPRICE: TcxGridDBBandedColumn;
    gvwMasterTMPLASTMONTHFAIRPRICE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actImportDataExecute(Sender: TObject);
    procedure cdsImportBondsQuotationReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure FormShow(Sender: TObject);
    procedure txtTradeDatePropertiesCloseUp(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cdsBondsClosePriceListCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ImportFileData(AFileName: string);
  public
    { Public declarations }
  end;

var
  frmBondsClosePriceList: TfrmBondsClosePriceList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormProgressBar;

procedure TfrmBondsClosePriceList.actImportDataExecute(Sender: TObject);
var
  sFileName: string;
begin
  inherited;
  if odImportData.Execute then
    sFileName := odImportData.FileName;

  if sFileName <> '' then
    ImportFileData(sFileName);
end;

procedure TfrmBondsClosePriceList.cdsBondsClosePriceListCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsBondsClosePriceListTMPTODAYLOWPRICE.AsFloat      := cdsBondsClosePriceListTODAY_LOW_PRICE.AsFloat / 100;
  cdsBondsClosePriceListTMPTODAYFAIRPRICE.AsFloat     := cdsBondsClosePriceListTODAY_FAIR_PRICE.AsFloat / 100;
  cdsBondsClosePriceListTMPTODAYHIGHPRICE.AsFloat     := cdsBondsClosePriceListTODAY_HIGH_PRICE.AsFloat / 100;
  cdsBondsClosePriceListTMPYESTERDAYFAIRPRICE.AsFloat := cdsBondsClosePriceListYESTERDAY_FAIR_PRICE.AsFloat / 100;
  cdsBondsClosePriceListTMPLASTWEEKFAIRPRICE.AsFloat  := cdsBondsClosePriceListLASTWEEK_FAIR_PRICE.AsFloat / 100;
  cdsBondsClosePriceListTMPLASTMONTHFAIRPRICE.AsFloat := cdsBondsClosePriceListLASTMONTH_FAIR_PRICE.AsFloat / 100;
end;

procedure TfrmBondsClosePriceList.cdsImportBondsQuotationReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmBondsClosePriceList.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  cdsBondsClosePriceList.Close;
  cdsBondsClosePriceList.Params[0].AsDateTime := txtTradeDate.EditValue;
  cdsBondsClosePriceList.Open;

  gvwMaster.ApplyBestFit();
end;

procedure TfrmBondsClosePriceList.FormCreate(Sender: TObject);
begin
//  inherited;
  cdsBondsClosePriceList.Close;
  cdsBondsClosePriceList.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsBondsClosePriceList.Open;
end;

procedure TfrmBondsClosePriceList.FormShow(Sender: TObject);
begin
//  inherited;
  txtTradeDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmBondsClosePriceList.ImportFileData(AFileName: string);
  function GetDate(ADate: string): TDateTime;
  var
    iYear, iMonth, iDay: Word;
    sDate: string;
  begin
    sDate  := ADate;
    iYear  := StrToInt(Copy(sDate, 0, 4));
    iMonth := StrToInt(Copy(sDate, 5, 2));
    iDay   := StrToInt(Copy(sDate, 7, 2));

    Result := EncodeDate(iYear, iMonth, iDay);
  end;

  function GetFloat(AData: string): Double;
  var
    sVal : string;
    dVal : Double;
  begin
    sVal := ReplaceSubStr(AData, '.', '');
    dVal := StrToFloatDef(sVal, 0) / 1000000;

    Result := dVal;
  end;
var
  oProgress: TfrmProgressBar;
  i, iCount: Integer;
  oFileList, oData: TStringList;
  sMsg: string;
begin
  cdsBondsClosePrice.DisableControls;

  if MessageDlg('Import Closing Price Bond ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    oProgress := TfrmProgressBar.Create(Nil);
    try
      oProgress.Show;
      oFileList := TStringList.Create;
      oFileList.LoadFromFile(AFileName);

      oData := TStringList.Create;
      oData.StrictDelimiter := True;
      oData.Delimiter       := ';';//Change ; --> , 1 November 2017; Rechange --> 18 Feb 2020
      oData.DelimitedText   := oFileList.Strings[1];

      cdsBondsClosePrice.Close;
      cdsBondsClosePrice.Params[0].AsDateTime := GetDate(oData.Strings[0]);
      cdsBondsClosePrice.Open;
      FreeAndNil(oData);

      iCount := oFileList.Count;
      for i := 1 to iCount -1 do
      begin
        oData := TStringList.Create;
        oData.StrictDelimiter := True;
        oData.Delimiter       := ';';//Change ; --> , 1 November 2017; Rechange --> 18 Feb 2020
        oData.DelimitedText   := oFileList.Strings[i];

        cdsBondsClosePrice.Append;
        cdsBondsClosePriceCPDATE.AsDateTime            := GetDate(oData.Strings[0]);
        cdsBondsClosePriceINSTRUMENT_CODE.AsString     := oData.Strings[1];
        cdsBondsClosePriceISINCODE.AsString            := oData.Strings[2];
        cdsBondsClosePriceRATING.AsString              := oData.Strings[4];
        cdsBondsClosePriceCOUPON_RATE.AsFloat          := GetFloat(oData.Strings[5]);
        cdsBondsClosePriceMATURITY_DATE.AsDateTime     := GetDate(oData.Strings[6]);
        cdsBondsClosePriceTTM.AsFloat                  := GetFloat(oData.Strings[7]);
        cdsBondsClosePriceTODAY_FAIR_YIELD.AsFloat     := GetFloat(oData.Strings[8]);
        cdsBondsClosePriceTODAY_LOW_PRICE.AsFloat      := GetFloat(oData.Strings[9]);
        cdsBondsClosePriceTODAY_FAIR_PRICE.AsFloat     := GetFloat(oData.Strings[10]);
        cdsBondsClosePriceTODAY_HIGH_PRICE.AsFloat     := GetFloat(oData.Strings[11]);
        cdsBondsClosePriceCNHG_BPS.AsFloat             := GetFloat(oData.Strings[12]);
        cdsBondsClosePriceYESTERDAY_FAIR_YIELD.AsFloat := GetFloat(oData.Strings[13]);
        cdsBondsClosePriceYESTERDAY_FAIR_PRICE.AsFloat := GetFloat(oData.Strings[14]);
        cdsBondsClosePriceLASTWEEK_FAIR_YIELD.AsFloat  := GetFloat(oData.Strings[15]);
        cdsBondsClosePriceLASTWEEK_FAIR_PRICE.AsFloat  := GetFloat(oData.Strings[16]);
        cdsBondsClosePriceLASTMONTH_FAIR_YIELD.AsFloat := GetFloat(oData.Strings[17]);
        cdsBondsClosePriceLASTMONTH_FAIR_PRICE.AsFloat := GetFloat(oData.Strings[18]);
        cdsBondsClosePrice.Post;

        oProgress.ChangeBar(trunc(i / iCount * 100), 'Processing Stock ' + cdsBondsClosePriceINSTRUMENT_CODE.AsString);
        FreeAndNil(oData);
      end;

      cdsBondsClosePrice.ApplyUpdates(-1);
    finally
      FreeAndNil(oFileList);
      FreeAndNil(oProgress);
      ShowMessage('Import Closing price bond has done');
      cdsBondsClosePriceList.Refresh;
    end;
  end;
  cdsBondsClosePrice.EnableControls;
end;

procedure TfrmBondsClosePriceList.txtTradeDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  cdsBondsClosePriceList.Close;
  cdsBondsClosePriceList.Params[0].AsDateTime := txtTradeDate.EditValue;
  cdsBondsClosePriceList.Open;

  gvwMaster.ApplyBestFit();
end;

Initialization
  RegisterClass(TfrmBondsClosePriceList);

end.
