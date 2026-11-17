unit FormClosingProcessList;

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
  dxSkinsdxRibbonPainter, Datasnap.DBClient, NClientDataset, NReportRPC,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  NReportClient, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  System.ImageList;

type
  TfrmClosingProcessList = class(TfrmBrowseData)
    cdsClosingProcessList: TNClientDataset;
    cdsClosingProcessListCLSID: TLargeintField;
    cdsClosingProcessListACCID: TLargeintField;
    cdsClosingProcessListACCNO: TStringField;
    cdsClosingProcessListACCNAME: TStringField;
    cdsClosingProcessListCLSDATE: TDateTimeField;
    cdsClosingProcessListCLSBY: TStringField;
    cdsClosingProcessListCLSNOTE: TStringField;
    cdsClosingProcessListCLSSTAT: TStringField;
    cdsClosingProcessListMODDA: TDateTimeField;
    cdsClosingProcessListMODUI: TStringField;
    cdsClosingProcessListAPPDA: TDateTimeField;
    cdsClosingProcessListAPPUI: TStringField;
    cdsClosingProcessListUNDER4Y: TIntegerField;
    cdsClosingProcessListUNDER4YDA: TDateTimeField;
    cdsClosingProcessListNOTES4Y: TStringField;
    cdsClosingProcessListISDEL: TIntegerField;
    cdsClosingProcessListID: TLargeintField;
    gvwMasterCLSID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCLSDATE: TcxGridDBBandedColumn;
    gvwMasterCLSBY: TcxGridDBBandedColumn;
    gvwMasterCLSNOTE: TcxGridDBBandedColumn;
    gvwMasterCLSSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsClosingProcess: TNClientDataset;
    cdsClosingProcessUpdList: TNClientDataset;
    cdsClosingProcessUpd: TNClientDataset;
    cdsClosingProcessCLSID: TLargeintField;
    cdsClosingProcessACCID: TLargeintField;
    cdsClosingProcessACCNO: TStringField;
    cdsClosingProcessACCNAME: TStringField;
    cdsClosingProcessCLSDATE: TDateTimeField;
    cdsClosingProcessCLSBY: TStringField;
    cdsClosingProcessCLSNOTE: TStringField;
    cdsClosingProcessCLSSTAT: TStringField;
    cdsClosingProcessMODDA: TDateTimeField;
    cdsClosingProcessMODUI: TStringField;
    cdsClosingProcessAPPDA: TDateTimeField;
    cdsClosingProcessAPPUI: TStringField;
    cdsClosingProcessUNDER4Y: TIntegerField;
    cdsClosingProcessUNDER4YDA: TDateTimeField;
    cdsClosingProcessNOTES4Y: TStringField;
    cdsClosingProcessISDEL: TIntegerField;
    cdsClosingProcessID: TLargeintField;
    cdsClosingProcessUpdListCLSID: TLargeintField;
    cdsClosingProcessUpdListACCID: TLargeintField;
    cdsClosingProcessUpdListACCNO: TStringField;
    cdsClosingProcessUpdListACCNAME: TStringField;
    cdsClosingProcessUpdListCLSDATE: TDateTimeField;
    cdsClosingProcessUpdListCLSBY: TStringField;
    cdsClosingProcessUpdListCLSNOTE: TStringField;
    cdsClosingProcessUpdListCLSSTAT: TStringField;
    cdsClosingProcessUpdListMODDA: TDateTimeField;
    cdsClosingProcessUpdListMODUI: TStringField;
    cdsClosingProcessUpdListAPPDA: TDateTimeField;
    cdsClosingProcessUpdListAPPUI: TStringField;
    cdsClosingProcessUpdListEDIT4YDA: TDateTimeField;
    cdsClosingProcessUpdListEDIT4YUI: TStringField;
    cdsClosingProcessUpdListUPDSTS: TStringField;
    cdsClosingProcessUpdListFLOWSTS: TStringField;
    cdsClosingProcessUpdListPROCESSNAME: TStringField;
    cdsClosingProcessUpdListNOTES4Y: TStringField;
    cdsClosingProcessUpdListNOTES4YAPP: TStringField;
    cdsClosingProcessUpdListID: TLargeintField;
    cdsClosingProcessUpdListUPDID: TLargeintField;
    cdsClosingProcessUpdCLSID: TLargeintField;
    cdsClosingProcessUpdACCID: TLargeintField;
    cdsClosingProcessUpdACCNO: TStringField;
    cdsClosingProcessUpdACCNAME: TStringField;
    cdsClosingProcessUpdCLSDATE: TDateTimeField;
    cdsClosingProcessUpdCLSBY: TStringField;
    cdsClosingProcessUpdCLSNOTE: TStringField;
    cdsClosingProcessUpdCLSSTAT: TStringField;
    cdsClosingProcessUpdMODDA: TDateTimeField;
    cdsClosingProcessUpdMODUI: TStringField;
    cdsClosingProcessUpdAPPDA: TDateTimeField;
    cdsClosingProcessUpdAPPUI: TStringField;
    cdsClosingProcessUpdEDIT4YDA: TDateTimeField;
    cdsClosingProcessUpdEDIT4YUI: TStringField;
    cdsClosingProcessUpdUPDSTS: TStringField;
    cdsClosingProcessUpdFLOWSTS: TStringField;
    cdsClosingProcessUpdPROCESSNAME: TStringField;
    cdsClosingProcessUpdNOTES4Y: TStringField;
    cdsClosingProcessUpdNOTES4YAPP: TStringField;
    cdsClosingProcessUpdID: TLargeintField;
    cdsClosingProcessUpdUPDID: TLargeintField;
    cdsAccountByAccID: TNClientDataset;
    cdsAccountByAccIDACCID: TIntegerField;
    cdsAccountByAccIDENTTID: TIntegerField;
    cdsAccountByAccIDACCCODE: TStringField;
    cdsAccountByAccIDACCNAME: TStringField;
    cdsAccountByAccIDACCINIT: TStringField;
    cdsAccountByAccIDACC_STS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsClosingProcessUpdAfterPost(DataSet: TDataSet);
    procedure cdsClosingProcessUpdNewRecord(DataSet: TDataSet);
    procedure cdsClosingProcessNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClosingProcessList: TfrmClosingProcessList;

implementation

{$R *.dfm}

uses DataGlobal, FormClosingProcess;

procedure TfrmClosingProcessList.cdsClosingProcessNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsClosingProcessCLSSTAT.AsString := 'C';
end;

procedure TfrmClosingProcessList.cdsClosingProcessUpdAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  cdsAccountByAccID.Close;
  cdsAccountByAccID.Params[0].AsInteger := cdsClosingProcessUpdACCID.AsInteger;
  cdsAccountByAccID.Open;

  cdsAccountByAccID.Edit;
  if cdsClosingProcessUpdFLOWSTS.AsString = 'W' then
    cdsAccountByAccIDACC_STS.AsString := 'P'
  else if cdsClosingProcessUpdFLOWSTS.AsString <> 'W' then
    cdsAccountByAccIDACC_STS.AsString := 'C';
  cdsAccountByAccID.Post;
end;

procedure TfrmClosingProcessList.cdsClosingProcessUpdNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsClosingProcessUpdCLSBY.AsString := dmGlobal.UserID;
end;

procedure TfrmClosingProcessList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmClosingProcess;
end;

procedure TfrmClosingProcessList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsClosingProcessList.Close;
  cdsClosingProcessList.open;

  cdsClosingProcessUpdList.Close;
  cdsClosingProcessUpdList.Open;

  dmGlobal.IntDataLookUp.cdsLuAccount.Close;
  dmGlobal.IntDataLookUp.cdsLuAccount.Open;
end;

Initialization
  RegisterClass(TfrmClosingProcessList);
end.
