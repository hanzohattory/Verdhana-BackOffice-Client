unit FormBondsLastPriceList;

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
  XLSReadWriteII5;

type
  TfrmBondsLastPriceList = class(TfrmBrowseData)
    cdsBondsLastPriceList: TNClientDataset;
    gvwMasterTRADE_DATE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterBOTTOM_BID_PRICE: TcxGridDBBandedColumn;
    gvwMasterTOP_BID_PRICE: TcxGridDBBandedColumn;
    gvwMasterBID_PRICE: TcxGridDBBandedColumn;
    gvwMasterBOTTOM_OFFER_PRICE: TcxGridDBBandedColumn;
    gvwMasterTOP_OFFER_PRICE: TcxGridDBBandedColumn;
    gvwMasterOFFER_PRICE: TcxGridDBBandedColumn;
    gvwMasterHARDLIMIT: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    actImportData: TNAction;
    odImportData: TOpenDialog;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    txtBottomOffer: TcxBarEditItem;
    txtTopOffer: TcxBarEditItem;
    BarMBrowseBar2: TdxBar;
    txtTradeDate: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    gvwMasterYIELDBUY: TcxGridDBBandedColumn;
    gvwMasterYIELDSELL: TcxGridDBBandedColumn;
    actCalcQuotation: TNAction;
    N5: TMenuItem;
    CalculateYieldQuotation1: TMenuItem;
    xls: TXLSReadWriteII5;
    cdsBondsLastPriceListLPID: TLargeintField;
    cdsBondsLastPriceListINSERTDATE: TDateField;
    cdsBondsLastPriceListLPDATE: TDateField;
    cdsBondsLastPriceListINSTRUMENT_ID: TLargeintField;
    cdsBondsLastPriceListINSTRUMENT_CODE: TStringField;
    cdsBondsLastPriceListISINCODE: TVarBytesField;
    cdsBondsLastPriceListRATING: TStringField;
    cdsBondsLastPriceListCOUPON_RATE: TFloatField;
    cdsBondsLastPriceListMATURITY_DATE: TDateField;
    cdsBondsLastPriceListTTM: TFloatField;
    cdsBondsLastPriceListTODAY_FAIR_YIELD: TFloatField;
    cdsBondsLastPriceListTODAY_LOW_PRICE: TFloatField;
    cdsBondsLastPriceListTODAY_FAIR_PRICE: TFloatField;
    cdsBondsLastPriceListTODAY_HIGH_PRICE: TFloatField;
    cdsBondsLastPriceListBPS: TFloatField;
    cdsBondsLastPriceListYESTERDAY_FAIR_YIELD: TFloatField;
    cdsBondsLastPriceListYESTERDAY_FAIR_PRICE: TFloatField;
    cdsBondsLastPriceListLASTWEEK_FAIR_YIELD: TFloatField;
    cdsBondsLastPriceListLASTWEEK_FAIR_PRICE: TFloatField;
    cdsBondsLastPriceListLASTMONTH_FAIR_YIELD: TFloatField;
    cdsBondsLastPriceListLASTMONTH_FAIR_PRICE: TFloatField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure actImportDataExecute(Sender: TObject);
    procedure cdsImportBondsQuotationReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cdsImportBondsQuotationBeforePost(DataSet: TDataSet);
    procedure cdsBondsQuotationBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure txtTradeDatePropertiesCloseUp(Sender: TObject);
    procedure actCalcQuotationExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ImportFileData(AFileName: string);
    procedure GetDefaultQuotation(AAction: Integer);
  public
    { Public declarations }
  end;

var
  frmBondsLastPriceList: TfrmBondsLastPriceList;

implementation

{$R *.dfm}

uses DataGlobal, FormBondsQuotation, DataLookup, FormSimulateQuotation;

procedure TfrmBondsLastPriceList.actCalcQuotationExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  cdsCalcYTM.Close;
  cdsCalcYTM.Params[0].AsInteger  := cdsBondsQuotationListINSTRUMENT_ID.AsInteger;
  cdsCalcYTM.Params[1].AsDateTime := cdsBondsQuotationListTRADE_DATE.AsDateTime;
  cdsCalcYTM.Open;

  cdsCalcYTM.Edit;
  oForm := TfrmSimulateQuotation.Create(nil);
  oForm.ShowModal;
  cdsCalcYTM.Cancel;
  oForm.Free;
end;

procedure TfrmBondsLastPriceList.actImportDataExecute(Sender: TObject);
var
  sFileName: string;
begin
  inherited;
  if odImportData.Execute then
    sFileName := odImportData.FileName;

  if sFileName <> '' then
    ImportFileData(sFileName);
end;

procedure TfrmBondsLastPriceList.cdsBondsQuotationBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsBondsQuotationAPPDA.AsDateTime := Now;
  cdsBondsQuotationAPPUI.AsString   := dmGlobal.UserID;
end;

procedure TfrmBondsLastPriceList.cdsImportBondsQuotationBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsImportBondsQuotationAPPDA.AsDateTime := Now;
  cdsImportBondsQuotationAPPUI.AsString   := dmGlobal.UserID;
end;

procedure TfrmBondsLastPriceList.cdsImportBondsQuotationReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmBondsLastPriceList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBondsQuotation;
end;

procedure TfrmBondsLastPriceList.FormCreate(Sender: TObject);
begin
  inherited;
  GetDefaultQuotation(0);
  txtBottomBid.EditValue   := dmGlobal.BottomBid;
  txtTopBid.EditValue      := dmGlobal.TopBid;
  txtBottomOffer.EditValue := dmGlobal.BottomOffer;
  txtTopOffer.EditValue    := dmGlobal.TopOffer;

  cdsBondsQuotationList.Close;
  cdsBondsQuotationList.Params[0].AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsBondsQuotationList.Open;
end;

procedure TfrmBondsLastPriceList.FormShow(Sender: TObject);
begin
  inherited;
  txtTradeDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmBondsLastPriceList.GetDefaultQuotation(AAction: Integer);
var
  oDefault: TIniFile;
begin
  oDefault := TIniFile.Create(GetCurrentDir+'\DefaultQuotation.ini');

  if AAction = 0 then
  begin
    dmGlobal.BottomBid   := oDefault.ReadFloat('Quotation', 'BottomBid', 0);
    dmGlobal.TopBid      := oDefault.ReadFloat('Quotation', 'TopBid', 0);
    dmGlobal.BottomOffer := oDefault.ReadFloat('Quotation', 'BottomOffer', 0);
    dmGlobal.TopOffer    := oDefault.ReadFloat('Quotation', 'TopOffer', 0);
  end
  else
  begin
    oDefault.WriteFloat('Quotation', 'BottomBid', dmGlobal.BottomBid);
    oDefault.WriteFloat('Quotation', 'TopBid', dmGlobal.TopBid);
    oDefault.WriteFloat('Quotation', 'BottomOffer', dmGlobal.BottomOffer);
    oDefault.WriteFloat('Quotation', 'TopOffer', dmGlobal.TopOffer);
  end;

  oDefault.Free;
end;

procedure TfrmBondsLastPriceList.ImportFileData(AFileName: string);
var
  oXlsApps: OleVariant;
  iMaxRow,
  iMaxCol,
  i, j: Integer;
  oSheet,
  vArrData: Variant;
  sLocalCode: string;
  dTransDate,
  dLastCouponDate,
  dNextCouponDate,
  dMaturityDate: TDateTime;
  iBasis, iCouponInYear : Integer;
  iCouponRate: Double;
  sMessage: string;
begin
  pbImportData.Visible := True;
  dTransDate := dmGlobal.RemoteServer.GetTransDate;
  Application.ProcessMessages;
  dmGlobal.RemoteServer.ClearBondsQuotation;

  cdsImportBondsQuotation.Close;
  cdsImportBondsQuotation.Params[0].AsDateTime := dTransDate;
  cdsImportBondsQuotation.Open;

  xls.Filename := Trim(AFileName);
  xls.Read;

  for i := xls[0].FirstRow + 1 to xls[0].LastRow do
  begin
    sLocalCode := xls[0].AsString[0, i];

    cdsInstrumentBonds.Close;
    cdsInstrumentBonds.Params[0].AsString := sLocalCode;
    cdsInstrumentBonds.Open;

    if not cdsInstrumentBonds.IsEmpty then
      begin
        cdsDetailInstrumentBonds.Close;
        cdsDetailInstrumentBonds.Params[0].AsInteger  := cdsInstrumentBondsINSTRUMENT_ID.AsInteger;
        cdsDetailInstrumentBonds.Params[1].AsDateTime := dTransDate;
        cdsDetailInstrumentBonds.Open;

        dLastCouponDate := cdsDetailInstrumentBondsLASTCOUPONDATE.AsDateTime;
        dNextCouponDate := cdsDetailInstrumentBondsNEXTCOUPONDATE.AsDateTime;
        dMaturityDate   := cdsDetailInstrumentBondsMATURITYDATE.AsDateTime;
        iBasis          := cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD.AsInteger;
        iCouponInYear   := cdsDetailInstrumentBondsCOUPON_IN_YEAR.AsInteger;
        iCouponRate     := cdsDetailInstrumentBondsINTERESTRATE.AsFloat;

        cdsImportBondsQuotation.Append;
        cdsImportBondsQuotationINSTRUMENT_ID.AsLargeInt   := cdsInstrumentBondsINSTRUMENT_ID.AsLargeInt;
        cdsImportBondsQuotationINSTRUMENT_CODE.AsString   := cdsInstrumentBondsINSTRUMENT_CODE.AsString;
        cdsImportBondsQuotationSHORTNAME.AsString         := cdsInstrumentBondsSHORTNAME.AsString;
        cdsImportBondsQuotationTRADE_DATE.AsDateTime      := dTransDate;
        cdsImportBondsQuotationOFFER_PRICE.AsFloat        := xls[0].AsFloat[5, i];
        cdsImportBondsQuotationBOTTOM_OFFER_PRICE.AsFloat := cdsImportBondsQuotationOFFER_PRICE.AsFloat - dmGlobal.BottomOffer;
        cdsImportBondsQuotationTOP_OFFER_PRICE.AsFloat    := cdsImportBondsQuotationOFFER_PRICE.AsFloat + dmGlobal.TopOffer;
        cdsImportBondsQuotationBID_PRICE.AsFloat          := xls[0].AsFloat[4, i];
        cdsImportBondsQuotationBOTTOM_BID_PRICE.AsFloat   := cdsImportBondsQuotationBID_PRICE.AsFloat - dmGlobal.BottomBid;
        cdsImportBondsQuotationTOP_BID_PRICE.AsFloat      := cdsImportBondsQuotationBID_PRICE.AsFloat + dmGlobal.TopBid;
        cdsImportBondsQuotationHARDLIMIT.AsFloat          := xls[0].AsFloat[6, i];
        cdsImportBondsQuotationYIELDBUY.AsFloat           := dmGlobal.RemoteServer.GetYieldQuotation(dLastCouponDate, dNextCouponDate, dTransDate, iBasis, iCouponInYear, dMaturityDate, iCouponRate, cdsImportBondsQuotationBID_PRICE.AsFloat);
        cdsImportBondsQuotationYIELDSELL.AsFloat          := dmGlobal.RemoteServer.GetYieldQuotation(dLastCouponDate, dNextCouponDate, dTransDate, iBasis, iCouponInYear, dMaturityDate, iCouponRate, cdsImportBondsQuotationOFFER_PRICE.AsFloat);
        cdsImportBondsQuotation.Post;
    end;

    Application.ProcessMessages;
  end;

  dmGlobal.RemoteServer.StartTransaction;
  cdsImportBondsQuotation.ApplyUpdates(-1);
  dmGlobal.RemoteServer.CommitTransaction;

  DataContainer.Refresh;

  pbImportData.Visible := False;
  Application.ProcessMessages;
end;

procedure TfrmBondsLastPriceList.txtTradeDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  cdsBondsQuotationList.Close;
  cdsBondsQuotationList.Params[0].AsDateTime := txtTradeDate.EditValue;
  cdsBondsQuotationList.Open;
end;

Initialization
  RegisterClass(TfrmBondsLastPriceList);

end.
