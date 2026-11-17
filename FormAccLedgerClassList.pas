unit FormAccLedgerClassList;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, NClientDataset,
  Datasnap.DBClient, NReportClient;

type
  TfrmAccLedgerClassList = class(TfrmBrowseData)
    cdsAccLegClass_D: TNClientDataset;
    cdsAccLegClass_DALCID: TIntegerField;
    cdsAccLegClass_DALTYPE: TStringField;
    cdsAccLegClass_DMODDA: TDateTimeField;
    cdsAccLegClass_DMODUI: TStringField;
    cdsAccLegClass_DAPPDA: TDateTimeField;
    cdsAccLegClass_DAPPUI: TStringField;
    cdsAccLegClass_DUNDER4Y: TIntegerField;
    cdsAccLegClass_DUNDER4YDA: TDateTimeField;
    cdsAccLegClass_DNOTES4Y: TStringField;
    cdsAccLegClass_DISDEL: TIntegerField;
    cdsAccLegClass_DID: TLargeintField;
    cdsAccLegClassList: TNClientDataset;
    cdsAccLegClassListALCID: TIntegerField;
    cdsAccLegClassListALCNAME: TStringField;
    cdsAccLegClassListMODDA: TDateTimeField;
    cdsAccLegClassListMODUI: TStringField;
    cdsAccLegClassListAPPDA: TDateTimeField;
    cdsAccLegClassListAPPUI: TStringField;
    cdsAccLegClassListUNDER4Y: TIntegerField;
    cdsAccLegClassListUNDER4YDA: TDateTimeField;
    cdsAccLegClassListNOTES4Y: TStringField;
    cdsAccLegClassListISDEL: TIntegerField;
    cdsAccLegClassListID: TLargeintField;
    gvwMasterALCID: TcxGridDBBandedColumn;
    gvwMasterALCNAME: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsAccLegClass_H: TNClientDataset;
    cdsAccLegClass_HALCID: TIntegerField;
    cdsAccLegClass_HALCNAME: TStringField;
    cdsAccLegClass_HMODDA: TDateTimeField;
    cdsAccLegClass_HMODUI: TStringField;
    cdsAccLegClass_HAPPDA: TDateTimeField;
    cdsAccLegClass_HAPPUI: TStringField;
    cdsAccLegClass_HUNDER4Y: TIntegerField;
    cdsAccLegClass_HUNDER4YDA: TDateTimeField;
    cdsAccLegClass_HNOTES4Y: TStringField;
    cdsAccLegClass_HISDEL: TIntegerField;
    cdsAccLegClass_HID: TLargeintField;
    cdsAccLegClass_HqryAccLegClass_D: TDataSetField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccLedgerClassList: TfrmAccLedgerClassList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccLedgerClass;

procedure TfrmAccLedgerClassList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccLedgerClass;
end;

procedure TfrmAccLedgerClassList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsAccLegClassList.Close;
  cdsAccLegClassList.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuActLedgerType.Close;
    cdsLuActLedgerType.Open;
  end;
end;

initialization
  RegisterClass(TfrmAccLedgerClassList);

end.
