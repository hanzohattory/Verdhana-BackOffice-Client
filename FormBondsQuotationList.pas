unit FormBondsQuotationList;

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
  TfrmBondsQuotationList = class(TfrmBrowseData)
    cdsBondsQuotationList: TNClientDataset;
    cdsBondsQuotationListTRADE_DATE: TDateTimeField;
    cdsBondsQuotationListINSTRUMENT_ID: TLargeintField;
    cdsBondsQuotationListINSTRUMENT_CODE: TStringField;
    cdsBondsQuotationListBOTTOM_BID_PRICE: TFloatField;
    cdsBondsQuotationListTOP_BID_PRICE: TFloatField;
    cdsBondsQuotationListBID_PRICE: TFloatField;
    cdsBondsQuotationListBOTTOM_OFFER_PRICE: TFloatField;
    cdsBondsQuotationListTOP_OFFER_PRICE: TFloatField;
    cdsBondsQuotationListOFFER_PRICE: TFloatField;
    cdsBondsQuotationListHARDLIMIT: TFloatField;
    cdsBondsQuotationListMODDA: TDateTimeField;
    cdsBondsQuotationListMODUI: TStringField;
    cdsBondsQuotationListAPPDA: TDateTimeField;
    cdsBondsQuotationListAPPUI: TStringField;
    cdsBondsQuotationListISDEL: TIntegerField;
    cdsBondsQuotationListID: TLargeintField;
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
    cdsBondsQuotation: TNClientDataset;
    dxBarButton2: TdxBarButton;
    actImportData: TNAction;
    odImportData: TOpenDialog;
    cdsBondsQuotationListSHORTNAME: TStringField;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    cdsBondsQuotationQUOTATION_ID: TLargeintField;
    cdsBondsQuotationTRADE_DATE: TDateTimeField;
    cdsBondsQuotationINSTRUMENT_ID: TLargeintField;
    cdsBondsQuotationINSTRUMENT_CODE: TStringField;
    cdsBondsQuotationSHORTNAME: TStringField;
    cdsBondsQuotationBOTTOM_BID_PRICE: TFloatField;
    cdsBondsQuotationTOP_BID_PRICE: TFloatField;
    cdsBondsQuotationBID_PRICE: TFloatField;
    cdsBondsQuotationBOTTOM_OFFER_PRICE: TFloatField;
    cdsBondsQuotationTOP_OFFER_PRICE: TFloatField;
    cdsBondsQuotationOFFER_PRICE: TFloatField;
    cdsBondsQuotationHARDLIMIT: TFloatField;
    cdsBondsQuotationMODDA: TDateTimeField;
    cdsBondsQuotationMODUI: TStringField;
    cdsBondsQuotationAPPDA: TDateTimeField;
    cdsBondsQuotationAPPUI: TStringField;
    cdsBondsQuotationISDEL: TIntegerField;
    cdsBondsQuotationID: TLargeintField;
    cdsImportBondsQuotation: TNClientDataset;
    cdsImportBondsQuotationTRADE_DATE: TDateTimeField;
    cdsImportBondsQuotationINSTRUMENT_ID: TLargeintField;
    cdsImportBondsQuotationINSTRUMENT_CODE: TStringField;
    cdsImportBondsQuotationSHORTNAME: TStringField;
    cdsImportBondsQuotationBOTTOM_BID_PRICE: TFloatField;
    cdsImportBondsQuotationTOP_BID_PRICE: TFloatField;
    cdsImportBondsQuotationBID_PRICE: TFloatField;
    cdsImportBondsQuotationBOTTOM_OFFER_PRICE: TFloatField;
    cdsImportBondsQuotationTOP_OFFER_PRICE: TFloatField;
    cdsImportBondsQuotationOFFER_PRICE: TFloatField;
    cdsImportBondsQuotationHARDLIMIT: TFloatField;
    cdsImportBondsQuotationMODDA: TDateTimeField;
    cdsImportBondsQuotationMODUI: TStringField;
    cdsImportBondsQuotationAPPDA: TDateTimeField;
    cdsImportBondsQuotationAPPUI: TStringField;
    cdsImportBondsQuotationISDEL: TIntegerField;
    cdsImportBondsQuotationID: TLargeintField;
    txtBottomBid: TcxBarEditItem;
    txtTopBid: TcxBarEditItem;
    dxBarButton3: TdxBarButton;
    txtBottomOffer: TcxBarEditItem;
    txtTopOffer: TcxBarEditItem;
    pbImportData: TPanel;
    cdsInstrumentBonds: TNClientDataset;
    pgInstrument: TcxProgressBar;
    BarMBrowseBar2: TdxBar;
    txtTradeDate: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    cdsSeq: TNClientDataset;
    cdsSeqSQNAME: TStringField;
    cdsSeqSQVALUE: TLargeintField;
    cdsBondsQuotationListYIELDBUY: TFloatField;
    cdsBondsQuotationListYIELDSELL: TFloatField;
    cdsBondsQuotationYIELDBUY: TFloatField;
    cdsBondsQuotationYIELDSELL: TFloatField;
    gvwMasterYIELDBUY: TcxGridDBBandedColumn;
    gvwMasterYIELDSELL: TcxGridDBBandedColumn;
    cdsImportBondsQuotationYIELDBUY: TFloatField;
    cdsImportBondsQuotationYIELDSELL: TFloatField;
    cdsDetailInstrumentBonds: TNClientDataset;
    cdsDetailInstrumentBondsINSTRUMENT_ID: TLargeintField;
    cdsDetailInstrumentBondsINSTRUMENT_CODE: TStringField;
    cdsDetailInstrumentBondsSHORTNAME: TStringField;
    cdsDetailInstrumentBondsMATURITYDATE: TDateTimeField;
    cdsDetailInstrumentBondsCCY: TStringField;
    cdsDetailInstrumentBondsCALCULATE_DAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsCOUNTINGDAYS_METHOD: TIntegerField;
    cdsDetailInstrumentBondsDAYSOFYEAR: TIntegerField;
    cdsDetailInstrumentBondsCOUPON_IN_YEAR: TIntegerField;
    cdsDetailInstrumentBondsMARKETCODE: TStringField;
    cdsDetailInstrumentBondsLASTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsNEXTCOUPONDATE: TDateTimeField;
    cdsDetailInstrumentBondsINTERESTRATE: TFloatField;
    cdsCalcYTM: TNClientDataset;
    cdsCalcYTMTRADE_DATE: TDateTimeField;
    cdsCalcYTMINSTRUMENT_ID: TLargeintField;
    cdsCalcYTMINSTRUMENT_CODE: TStringField;
    cdsCalcYTMSHORTNAME: TStringField;
    cdsCalcYTMBID_PRICE: TFloatField;
    cdsCalcYTMBOTTOM_BID_PRICE: TFloatField;
    cdsCalcYTMTOP_BID_PRICE: TFloatField;
    cdsCalcYTMOFFER_PRICE: TFloatField;
    cdsCalcYTMBOTTOM_OFFER_PRICE: TFloatField;
    cdsCalcYTMTOP_OFFER_PRICE: TFloatField;
    cdsCalcYTMHARDLIMIT: TFloatField;
    cdsCalcYTMYIELDBUY: TFloatField;
    cdsCalcYTMYIELDSELL: TFloatField;
    cdsCalcYTMMATURITYDATE: TDateTimeField;
    cdsCalcYTMINTERESTRATE: TFloatField;
    cdsCalcYTMCOUPONDATE: TDateTimeField;
    actCalcQuotation: TNAction;
    N5: TMenuItem;
    CalculateYieldQuotation1: TMenuItem;
    cdsInstrumentBondsINSTRUMENT_ID: TLargeintField;
    cdsInstrumentBondsINSTRUMENT_CODE: TStringField;
    cdsInstrumentBondsLOCALCODE: TStringField;
    cdsInstrumentBondsMARKETCODE: TStringField;
    cdsInstrumentBondsINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentBondsSHORTNAME: TStringField;
    cdsInstrumentBondsLONGNAME: TStringField;
    cdsInstrumentBondsISSUERNAME: TStringField;
    cdsInstrumentBondsCCY: TStringField;
    cdsInstrumentBondsISINCODE: TStringField;
    cdsInstrumentBondsISINDATE: TDateTimeField;
    cdsInstrumentBondsMARGIN: TIntegerField;
    cdsInstrumentBondsSTATUS: TStringField;
    cdsInstrumentBondsDELISTINGDATE: TDateTimeField;
    cdsInstrumentBondsLISTINGDATE: TDateTimeField;
    cdsInstrumentBondsLASTCLSPRICE: TFloatField;
    cdsInstrumentBondsLASTCPPRICEDATE: TDateField;
    cdsInstrumentBondsSECTOR: TStringField;
    cdsInstrumentBondsMODDA: TDateTimeField;
    cdsInstrumentBondsMODUI: TStringField;
    cdsInstrumentBondsAPPDA: TDateTimeField;
    cdsInstrumentBondsAPPUI: TStringField;
    cdsInstrumentBondsISDEL: TIntegerField;
    cdsInstrumentBondsID: TLargeintField;
    cdsInstrumentBondsCATEGORY: TStringField;
    cdsInstrumentBondsMATURITYDATE: TDateTimeField;
    cdsInstrumentBondsRATING: TStringField;
    cdsInstrumentBondsREMARKS: TStringField;
    cdsInstrumentBondsEFFECTIVEDATE: TDateTimeField;
    cdsInstrumentBondsOFFERING_PERIODBEG: TDateTimeField;
    cdsInstrumentBondsOFFERING_PERIODEND: TDateTimeField;
    cdsInstrumentBondsISSUEDATE: TDateTimeField;
    cdsInstrumentBondsNO_OFCERTIFICATES: TStringField;
    cdsInstrumentBondsLEAD_UNDERWRITER: TStringField;
    cdsInstrumentBondsSELLING_AGENT: TStringField;
    cdsInstrumentBondsTRUSTEE: TStringField;
    cdsInstrumentBondsCALCULATE_DAYS_METHOD: TIntegerField;
    cdsInstrumentBondsCOUPON_IN_YEAR: TIntegerField;
    cdsInstrumentBondsCOMMONCODE: TStringField;
    cdsInstrumentBondsDAYSOFYEAR: TIntegerField;
    cdsInstrumentBondsREGIONALBONDS: TIntegerField;
    cdsInstrumentBondsCOUNTINGDAYS_METHOD: TIntegerField;
    cdsInstrumentBondsACCRUEDDAYS_METHOD: TIntegerField;
    cdsInstrumentBondsDAYSPERYEAR_METHOD: TIntegerField;
    cdsInstrumentBondsACCRUEDTYPE: TStringField;
    cdsInstrumentBondsDECDIGIT: TIntegerField;
    xls: TXLSReadWriteII5;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure actImportDataExecute(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
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
  frmBondsQuotationList: TfrmBondsQuotationList;

implementation

{$R *.dfm}

uses DataGlobal, FormBondsQuotation, DataLookup, FormSimulateQuotation;

procedure TfrmBondsQuotationList.actCalcQuotationExecute(Sender: TObject);
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

procedure TfrmBondsQuotationList.actImportDataExecute(Sender: TObject);
var
  sFileName: string;
begin
  inherited;
  if odImportData.Execute then
    sFileName := odImportData.FileName;

  if sFileName <> '' then
    ImportFileData(sFileName);
end;

procedure TfrmBondsQuotationList.cdsBondsQuotationBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsBondsQuotationAPPDA.AsDateTime := Now;
  cdsBondsQuotationAPPUI.AsString   := dmGlobal.UserID;
end;

procedure TfrmBondsQuotationList.cdsImportBondsQuotationBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  cdsImportBondsQuotationAPPDA.AsDateTime := Now;
  cdsImportBondsQuotationAPPUI.AsString   := dmGlobal.UserID;
end;

procedure TfrmBondsQuotationList.cdsImportBondsQuotationReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmBondsQuotationList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBondsQuotation;
end;

procedure TfrmBondsQuotationList.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  dmGlobal.BottomBid   := txtBottomBid.EditValue;
  dmGlobal.TopBid      := txtTopBid.EditValue;
  dmGlobal.BottomOffer := txtBottomOffer.EditValue;
  dmGlobal.TopOffer    := txtTopOffer.EditValue;

  GetDefaultQuotation(1);
end;

procedure TfrmBondsQuotationList.FormCreate(Sender: TObject);
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

procedure TfrmBondsQuotationList.FormShow(Sender: TObject);
begin
  inherited;
  txtTradeDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmBondsQuotationList.GetDefaultQuotation(AAction: Integer);
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

procedure TfrmBondsQuotationList.ImportFileData(AFileName: string);
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

procedure TfrmBondsQuotationList.txtTradeDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  cdsBondsQuotationList.Close;
  cdsBondsQuotationList.Params[0].AsDateTime := txtTradeDate.EditValue;
  cdsBondsQuotationList.Open;
end;

Initialization
  RegisterClass(TfrmBondsQuotationList);

end.
