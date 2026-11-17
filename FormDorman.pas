unit FormDorman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, Datasnap.DBClient, NClientDataset, NReportClient,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  System.Actions, System.ImageList, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmDorman = class(TfrmBrowseData)
    cdsDorman: TNClientDataset;
    cdsDormanACCID: TIntegerField;
    cdsDormanENTTID: TIntegerField;
    cdsDormanACCCODE: TStringField;
    cdsDormanACCNAME: TStringField;
    cdsDormanACCINIT: TStringField;
    cdsDormanACC_STS: TStringField;
    cdsDormanACCTYPE: TStringField;
    cdsDormanACCSUBTYPE: TStringField;
    cdsDormanBRANCHID: TLargeintField;
    cdsDormanSALESID: TLargeintField;
    cdsDormanINVTYPE: TStringField;
    cdsDormanPRDCODE: TStringField;
    cdsDormanLASTTR_DATE: TDateTimeField;
    cdsDormanDORMANDAY: TIntegerField;
    cdsDormanBRANCHCODE: TStringField;
    cdsDormanBRANCHNAME: TStringField;
    cdsDormanSALESCODE: TStringField;
    cdsDormanSALESNAME: TStringField;
    cdsDormanPRDDESC: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterLASTTR_DATE: TcxGridDBBandedColumn;
    gvwMasterDORMANDAY: TcxGridDBBandedColumn;
    gvwMasterBRANCHCODE: TcxGridDBBandedColumn;
    gvwMasterBRANCHNAME: TcxGridDBBandedColumn;
    gvwMasterSALESCODE: TcxGridDBBandedColumn;
    gvwMasterSALESNAME: TcxGridDBBandedColumn;
    gvwMasterPRDDESC: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDorman: TfrmDorman;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmDorman.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsDorman.Close;
  cdsDorman.Open;
end;

procedure TfrmDorman.FormCreate(Sender: TObject);
begin
  inherited;
  cdsDorman.Close;
  cdsDorman.Open;

//  dmGlobal.RemoteServer.UpdateAccountDorman;
end;

procedure TfrmDorman.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Color := clBlack;

  if AViewInfo.GridRecord.Values[gvwMasterDORMANDAY.Index] >= 150 then
  begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color  := clWhite;
  end
  else if AViewInfo.GridRecord.Values[gvwMasterDORMANDAY.Index] >= 120 then
    ACanvas.Brush.Color := clRed
  else if AViewInfo.GridRecord.Values[gvwMasterDORMANDAY.Index] >= 90 then
    ACanvas.Brush.Color := clYellow

end;

Initialization
  RegisterClass(TfrmDorman);

end.
