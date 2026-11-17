unit FormLetterOfConfirmation;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, Vcl.Menus, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCalendar, cxDBLookupComboBox, cxImageComboBox, cxBarEditItem,
  frxClass, frxDBSet, NReportRPC, Vcl.Grids, Vcl.DBGrids, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, cxCurrencyEdit, frxExportPDF,
  cxDBExtLookupComboBox, dxDateRanges, dxScrollbarAnnotations,
  frxExportBaseDialog, System.Actions, System.ImageList;

type
  TfrmLetterOfConfirmation = class(TfrmBrowseData)
    cdsLetterOfConfirm: TNClientDataset;
    gvwMasterBONDCONID: TcxGridDBBandedColumn;
    gvwMasterCONNO: TcxGridDBBandedColumn;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterFACEVALUE: TcxGridDBBandedColumn;
    gvwMasterPROCEED: TcxGridDBBandedColumn;
    gvwMasterINTERESTRATE: TcxGridDBBandedColumn;
    gvwMasterACCINTEREST: TcxGridDBBandedColumn;
    gvwMasterHOLDINTERESTTAX: TcxGridDBBandedColumn;
    gvwMasterACCINTERESTDAY: TcxGridDBBandedColumn;
    gvwMasterCAPGAINRATE: TcxGridDBBandedColumn;
    gvwMasterCAPGAIN: TcxGridDBBandedColumn;
    gvwMasterCAPGAINTAX: TcxGridDBBandedColumn;
    gvwMasterHOLDPERIOD: TcxGridDBBandedColumn;
    gvwMasterLASTCOUPONDATE: TcxGridDBBandedColumn;
    gvwMasterNEXTCOUPONDATE: TcxGridDBBandedColumn;
    gvwMasterMATURITYDATE: TcxGridDBBandedColumn;
    gvwMasterCTPREF: TcxGridDBBandedColumn;
    gvwMasterCOUPONPERIOD: TcxGridDBBandedColumn;
    gvwMasterCONSTS: TcxGridDBBandedColumn;
    gvwMasterNETPROCEED: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterINS_COMPFAX: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterISSUERNAME: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    BarMBrowseBar2: TdxBar;
    txtFromDate: TcxBarEditItem;
    txtUntilDate: TcxBarEditItem;
    txtAccID: TcxBarEditItem;
    dxBarButton2: TdxBarButton;
    txtBuySell: TcxBarEditItem;
    txtInstrument: TcxBarEditItem;
    cdsDetailAccuisition: TNClientDataset;
    cdsLetterOfConfirmCONBONID: TLargeintField;
    cdsLetterOfConfirmTRADEBOND_ID: TLargeintField;
    cdsLetterOfConfirmCONDATE: TDateTimeField;
    cdsLetterOfConfirmINSTRUMENT_CODE: TStringField;
    cdsLetterOfConfirmDUEDATE: TDateTimeField;
    cdsLetterOfConfirmCONBONID_DE: TLargeintField;
    cdsLetterOfConfirmCONBONID_1: TLargeintField;
    cdsLetterOfConfirmCONNO: TStringField;
    cdsLetterOfConfirmACCID: TLargeintField;
    cdsLetterOfConfirmACCNO: TStringField;
    cdsLetterOfConfirmBS: TStringField;
    cdsLetterOfConfirmPRICE: TFloatField;
    cdsLetterOfConfirmPROCEED: TFloatField;
    cdsLetterOfConfirmCAPGAIN_RATE: TFloatField;
    cdsLetterOfConfirmCAPGAIN: TFloatField;
    cdsLetterOfConfirmCAPGAIN_TAX: TFloatField;
    cdsLetterOfConfirmCTPREF: TStringField;
    cdsLetterOfConfirmNETPROCEED: TFloatField;
    cdsLetterOfConfirmMARKETCODE: TStringField;
    cdsLetterOfConfirmCCYCODE: TStringField;
    cdsLetterOfConfirmWHTAMT: TFloatField;
    cdsLetterOfConfirmSTAT: TStringField;
    cdsLetterOfConfirmMODDA: TDateTimeField;
    cdsLetterOfConfirmMODUI: TStringField;
    cdsLetterOfConfirmAPPDA: TDateTimeField;
    cdsLetterOfConfirmAPPUI: TStringField;
    cdsLetterOfConfirmID: TLargeintField;
    cdsLetterOfConfirmHOLDINTERESTTAX: TFloatField;
    cdsLetterOfConfirmCAPGAINRATE: TFloatField;
    cdsLetterOfConfirmSALESID: TLargeintField;
    cdsLetterOfConfirmHOLDINGINTEREST: TFloatField;
    cdsLetterOfConfirmCOST_PRICE: TFloatField;
    cdsLetterOfConfirmCOST_AMT: TFloatField;
    cdsLetterOfConfirmACQ_DATE: TDateTimeField;
    cdsLetterOfConfirmACCOUNTCODE: TStringField;
    cdsLetterOfConfirmACCNAME: TStringField;
    cdsLetterOfConfirmRET_HOMEFAX: TStringField;
    cdsLetterOfConfirmSHORTNAME: TStringField;
    cdsLetterOfConfirmISSUERNAME: TStringField;
    cdsLetterOfConfirmISINCODE: TStringField;
    cdsLetterOfConfirmRET_EMAIL: TStringField;
    cdsLetterOfConfirmCCY: TStringField;
    cdsLetterOfConfirmqryDetailAquisition: TDataSetField;
    cdsDetailAccuisitionTRADEBOND_ID: TLargeintField;
    cdsDetailAccuisitionSEQNO: TIntegerField;
    cdsDetailAccuisitionACQDATE: TDateField;
    cdsDetailAccuisitionACCID: TLargeintField;
    cdsDetailAccuisitionACCCODE: TStringField;
    cdsDetailAccuisitionINSTRUMENT_ID: TLargeintField;
    cdsDetailAccuisitionINSTRUMENT_CODE: TStringField;
    cdsDetailAccuisitionACQPRICE: TFloatField;
    cdsDetailAccuisitionACQVALUE: TFloatField;
    cdsDetailAccuisitionHOLDPERIOD: TIntegerField;
    cdsDetailAccuisitionMODDA: TDateTimeField;
    cdsDetailAccuisitionMODUI: TStringField;
    cdsDetailAccuisitionAPPDA: TDateTimeField;
    cdsDetailAccuisitionAPPUI: TStringField;
    cdsDetailAccuisitionISDEL: TIntegerField;
    cdsDetailAccuisitionID: TLargeintField;
    cdsLetterOfConfirmMATURITYDATE: TDateTimeField;
    cdsLetterOfConfirmINTEREST_RATE: TFloatField;
    cdsLetterOfConfirmACRINTERESTDAY: TIntegerField;
    cdsLetterOfConfirmACR_INTEREST: TFloatField;
    cdsLetterOfConfirmFACEVALUE: TFloatField;
    cdsLetterOfConfirmLASTCOUPONDATE: TDateTimeField;
    cdsLetterOfConfirmNEXTCOUPONDATE: TDateTimeField;
    cdsLetterOfConfirmCOUPONPERIOD: TIntegerField;
    cdsLetterOfConfirmCALCULATE_DAYS_METHOD: TIntegerField;
    cdsLetterOfConfirmHOLDTAX: TFloatField;
    cdsLetterOfConfirmHOLDPERIOD: TIntegerField;
    frxPDFExport2: TfrxPDFExport;
    SaveDialog1: TSaveDialog;
    txtAuthPerson: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure rcLetterOfConfirmPrepareData(AFormParam: TForm);
    procedure actPrintExecute(Sender: TObject);
  private
    procedure ViewBrowseData(AFromDate: TDateTime; AUntilDate: TDateTime);
  public
    { Public declarations }
  end;

var
  frmLetterOfConfirmation: TfrmLetterOfConfirmation;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmLetterOfConfirmation.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsString  := txtAuthPerson.EditValue;
  ReportContainer.Params[1].AsDate := dmGlobal.RemoteServer.GetTransDate;
  ReportContainer.Params[2].AsDate := dmGlobal.RemoteServer.GetTransDate;


  inherited;
  if MessageDlg('Save to pdf ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if SaveDialog1.Execute then
      frxPDFExport2.FileName := SaveDialog1.FileName;

    if frxPDFExport2.FileName <> '' then
      ReportContainer.ReportClient.Export(frxPDFExport2);
  end;
end;

procedure TfrmLetterOfConfirmation.dxBarButton2Click(Sender: TObject);
var
  sBS, sAccID,
  sInstrument: string;
begin
  inherited;
  ViewBrowseData(txtFromDate.EditValue, txtUntilDate.EditValue);
end;

procedure TfrmLetterOfConfirmation.FormCreate(Sender: TObject);
begin
  inherited;
  dmGlobal.IntDataLookup.cdsLuAuthPerson.Close;
  dmGlobal.IntDataLookup.cdsLuAuthPerson.Open;

  txtFromDate.EditValue  := dmGlobal.RemoteServer.GetTransDate;
  txtUntilDate.EditValue := dmGlobal.RemoteServer.GetTransDate;

  ViewBrowseData(dmGlobal.RemoteServer.GetTransDate, dmGlobal.RemoteServer.GetTransDate);
end;

procedure TfrmLetterOfConfirmation.rcLetterOfConfirmPrepareData(
  AFormParam: TForm);
var
  sBS, sAccID,
  sInstrument: string;
begin
  inherited;
//  if (txtBuySell.EditValue = '') or VarIsNull(txtBuySell.EditValue) then
//    sBS  := '%'
//  else
//    sBS  := txtBuySell.EditValue;
//
//  if VarIsNull(txtAccID.EditValue) then
//    sAccID := '%'
//  else
//    sAccID := IntToStr(txtAccID.EditValue);
//
//  if VarIsNull(txtInstrument.EditValue) then
//    sInstrument := '%'
//  else
//    sInstrument := IntToStr(txtInstrument.EditValue);
//
//  ViewBrowseData(sBS, sAccID, sInstrument, txtFromDate.EditValue, txtUntilDate.EditValue);
end;

procedure TfrmLetterOfConfirmation.ViewBrowseData(AFromDate, AUntilDate: TDateTime);
begin
  cdsLetterOfConfirm.Close;

  cdsLetterOfConfirm.Params[0].AsDate    := AFromDate;
  cdsLetterOfConfirm.Params[1].AsDate    := AUntilDate;
  cdsLetterOfConfirm.Open;

end;

Initialization
  RegisterClass(TfrmLetterOfConfirmation);

end.
