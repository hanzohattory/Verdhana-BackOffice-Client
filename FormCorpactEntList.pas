unit FormCorpactEntList;

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
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportClient, cxCurrencyEdit, dxLayoutContainer,
  dxLayoutControl, cxImageComboBox;

type
  TfrmCorpactEntList = class(TfrmBrowseData)
    cdsCorpActEntList: TNClientDataset;
    cdsCorpActEntListCAID: TLargeintField;
    cdsCorpActEntListACCID: TLargeintField;
    cdsCorpActEntListACCNO: TStringField;
    cdsCorpActEntListACCNAME: TStringField;
    cdsCorpActEntListCUSTODYNO: TStringField;
    cdsCorpActEntListSTOCKID: TIntegerField;
    cdsCorpActEntListSTOCKCODE: TStringField;
    cdsCorpActEntListACCTYPE: TStringField;
    cdsCorpActEntListAV_QTY: TFloatField;
    cdsCorpActEntListCA_QTY: TFloatField;
    cdsCorpActEntListCA_AMT: TFloatField;
    cdsCorpActEntListTAXRATE: TFloatField;
    cdsCorpActEntListTAXAMT: TFloatField;
    cdsCorpActEntListCA_NETAMT: TFloatField;
    cdsCorpActEntListCDIV_PAYDATE: TDateField;
    cdsCorpActEntListSTAT: TStringField;
    cdsCorpActEntListDIV_PAID: TStringField;
    cdsCorpActEntListMODDA: TDateTimeField;
    cdsCorpActEntListMODUI: TStringField;
    cdsCorpActEntListAPPDA: TDateTimeField;
    cdsCorpActEntListAPPUI: TStringField;
    cdsCorpActEntListUNDER4Y: TIntegerField;
    cdsCorpActEntListUNDER4YDA: TDateTimeField;
    cdsCorpActEntListNOTES4Y: TStringField;
    cdsCorpActEntListISDEL: TIntegerField;
    cdsCorpActEntListID: TLargeintField;
    cdsCorpActEntListAVGPRICE: TFloatField;
    cdsCorpActEntListCA_PRICE: TFloatField;
    gvwMasterCAID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUSTODYNO: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterAV_QTY: TcxGridDBBandedColumn;
    gvwMasterCA_QTY: TcxGridDBBandedColumn;
    gvwMasterCA_AMT: TcxGridDBBandedColumn;
    gvwMasterTAXRATE: TcxGridDBBandedColumn;
    gvwMasterTAXAMT: TcxGridDBBandedColumn;
    gvwMasterCA_NETAMT: TcxGridDBBandedColumn;
    gvwMasterCDIV_PAYDATE: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterDIV_PAID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterCA_PRICE: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpactEntList: TfrmCorpactEntList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCorpactEntList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCorpActEntList.Close;
  cdsCorpActEntList.Open;
end;

Initialization
  RegisterClass(TfrmCorpactEntList);

end.
