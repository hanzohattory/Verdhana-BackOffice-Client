unit FormInstruments;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxCheckBox, System.Actions, System.ImageList,
  dxDateRanges, cxBarEditItem, cxSpinEdit, cxLabel;

type
  TfrmInstruments = class(TfrmBrowseData)
    cdsInstrumentList: TNClientDataset;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwMasterLONGNAME: TcxGridDBBandedColumn;
    gvwMasterISSUERNAME: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterISINCODE: TcxGridDBBandedColumn;
    gvwMasterISINDATE: TcxGridDBBandedColumn;
    gvwMasterMARGIN: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterDELISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterLISTINGDATE: TcxGridDBBandedColumn;
    gvwMasterLASTCLSPRICE: TcxGridDBBandedColumn;
    gvwMasterLASTCPPRICEDATE: TcxGridDBBandedColumn;
    gvwMasterSECTOR: TcxGridDBBandedColumn;
    cdsInstrumentListINSTRUMENT_ID: TLargeintField;
    cdsInstrumentListINSTRUMENT_CODE: TStringField;
    cdsInstrumentListLOCALCODE: TStringField;
    cdsInstrumentListMARKETCODE: TStringField;
    cdsInstrumentListINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentListSHORTNAME: TStringField;
    cdsInstrumentListLONGNAME: TStringField;
    cdsInstrumentListISSUERNAME: TStringField;
    cdsInstrumentListCCY: TStringField;
    cdsInstrumentListISINCODE: TStringField;
    cdsInstrumentListISINDATE: TDateTimeField;
    cdsInstrumentListMARGIN: TIntegerField;
    cdsInstrumentListSTATUS: TStringField;
    cdsInstrumentListDELISTINGDATE: TDateTimeField;
    cdsInstrumentListLISTINGDATE: TDateTimeField;
    cdsInstrumentListLASTCLSPRICE: TFloatField;
    cdsInstrumentListLASTCPPRICEDATE: TDateField;
    cdsInstrumentListSECTOR: TStringField;
    cdsInstrumentListMODDA: TDateTimeField;
    cdsInstrumentListMODUI: TStringField;
    cdsInstrumentListAPPDA: TDateTimeField;
    cdsInstrumentListAPPUI: TStringField;
    cdsInstrumentListISDEL: TIntegerField;
    cdsInstrumentListID: TLargeintField;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    cdsInstrumentListSEDOL: TStringField;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterSEDOL: TcxGridDBBandedColumn;
    cdsInstrumentListHCUT_MARGIN: TFloatField;
    cdsInstrumentListHCUT_REG: TFloatField;
    cdsInstrumentListHCUT_REPO: TFloatField;
    gvwMasterHCUT_MARGIN: TcxGridDBBandedColumn;
    gvwMasterHCUT_REG: TcxGridDBBandedColumn;
    gvwMasterHCUT_REPO: TcxGridDBBandedColumn;
    cdsInstrumentListAFFIL: TBooleanField;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    cdsInstrumentListHAIRCUT: TFloatField;
    cdsInstrumentListLASTHAIRCUTDATE: TDateField;
    gvwMasterHAIRCUT: TcxGridDBBandedColumn;
    gvwMasterLASTHAIRCUTDATE: TcxGridDBBandedColumn;
    edMarketCode: TcxBarEditItem;
    edStockCode: TcxBarEditItem;
    edStockName: TcxBarEditItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstruments: TfrmInstruments;

implementation

{$R *.dfm}

uses DataGlobal, FormInstrument;

procedure TfrmInstruments.actRefreshExecute(Sender: TObject);
var
  sStatus: string;
  sMarketCode: string;
  sStockCode: string;
  sStockName: string;
begin
//  inherited;
//
//  sMarketCode := edMarketCode.EditValue;
//  sStockCode  := edStockCode.EditValue;
//  sStockName  := edStockName.EditValue;
//
//  Query := 'select (count(*) / (select INTVAL from dbo.B_GBLPARAM where PRMID = ''040'')) + 1 from main.B_INSTRUMENT ' +
//            'where (INSTRUMENT_TYPE_CODE  <> ''B'') ' +
//            '  and (MARKETCODE = '+QuotedStr(sMarketCode) +') ' +
//            '  and (('+QuotedStr(sStockCode) +' = '''') or (LOCALCODE like '+ QuotedStr(sStockCode) +')) ' +
//            '  and (('+QuotedStr(sStockName) +' = '''') or (SHORTNAME like '+ QuotedStr(sStockName) +'))';
//  TotalPages := dmGlobal.RemoteServer.GetMaxPage(Query);
//
//   if TotalPages > 1 then
//  begin
//    BarPages.Visible     := True;
//    lbTotalPage.Caption := 'From '+ FormatFloat('#,##0', TotalPages) +' Pages';
//  end
//  else
//    BarPages.Visible := False;

  try
    cdsInstrumentList.DisableControls;

    cdsInstrumentList.Close;
    cdsInstrumentList.Params[0].AsInteger := 0;//spPage.EditValue;
    cdsInstrumentList.Params[1].AsString  := sMarketCode;
    cdsInstrumentList.Params[2].AsString  := sStockCode;
    cdsInstrumentList.Params[3].AsString  := sStockName;
    cdsInstrumentList.Open;
  finally
    cdsInstrumentList.EnableControls;
  end;
end;

procedure TfrmInstruments.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmInstrument;
end;

procedure TfrmInstruments.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsInstrumentListINSTRUMENT_ID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuInstrumentType.Close;
    cdsLuInstrumentType.Open;
  end;

  edMarketCode.EditValue  := dmGlobal.RemoteServer.GetDefaultMarket;
  edStockCode.EditValue   := '';
  edStockName.EditValue   := '';

  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmInstruments);

end.
