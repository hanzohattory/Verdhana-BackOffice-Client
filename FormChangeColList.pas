unit FormChangeColList;

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
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxSkinsCore,
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
  dxSkinsdxRibbonPainter;

type
  TfrmChangeColList = class(TfrmBrowseData)
    cdsChangeColList: TNClientDataset;
    cdsChangeColListCCOLID: TLargeintField;
    cdsChangeColListTRXDATE: TDateTimeField;
    cdsChangeColListACCID: TLargeintField;
    cdsChangeColListACCCODE: TStringField;
    cdsChangeColListCONRID: TLargeintField;
    cdsChangeColListCONTRACT_NO: TStringField;
    cdsChangeColListEXISTCOLLATERAL: TFloatField;
    cdsChangeColListNEWCOLLATERAL: TFloatField;
    cdsChangeColListINPUTBY: TStringField;
    cdsChangeColListINPUTDATE: TDateTimeField;
    cdsChangeColListAPPROVEBY: TStringField;
    cdsChangeColListAPPROVEDATE: TDateTimeField;
    cdsChangeColListPOSTINGBY: TStringField;
    cdsChangeColListPOSTINGDATE: TDateTimeField;
    cdsChangeColListCCOLSTATUS: TStringField;
    cdsChangeColListMODDA: TDateTimeField;
    cdsChangeColListMODUI: TStringField;
    cdsChangeColListAPPDA: TDateTimeField;
    cdsChangeColListAPPUI: TStringField;
    cdsChangeColListUNDER4Y: TIntegerField;
    cdsChangeColListUNDER4YDA: TDateTimeField;
    cdsChangeColListNOTES4Y: TStringField;
    cdsChangeColListISDEL: TIntegerField;
    cdsChangeColListID: TLargeintField;
    gvwMasterCCOLID: TcxGridDBBandedColumn;
    gvwMasterTRXDATE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterCONTRACT_NO: TcxGridDBBandedColumn;
    gvwMasterEXISTCOLLATERAL: TcxGridDBBandedColumn;
    gvwMasterNEWCOLLATERAL: TcxGridDBBandedColumn;
    gvwMasterCCOLSTATUS: TcxGridDBBandedColumn;
    cdsChangeColListACCNAME: TStringField;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    cdsChangeColListAPPROVE: TStringField;
    cdsChangeColListPOSTED: TStringField;
    actPosting: TNAction;
    Posting1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actPostingExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangeColList: TfrmChangeColList;

implementation

{$R *.dfm}

uses DataGlobal, FormChangeCol;

procedure TfrmChangeColList.actPostingExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if (Not cdsChangeColList.Active) or (cdsChangeColList.IsEmpty) then
    Exit;

  if MessageDlg('Are you sure to posting this Change Collateral ' +
    QuotedStr(cdsChangeColListCCOLID.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostingChangeRepoCollateral(cdsChangeColListCCOLID.AsLargeInt, sMsg);
    cdsChangeColList.Close;
    cdsChangeColList.Open;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmChangeColList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmChangeCol;
end;

procedure TfrmChangeColList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsChangeColListCCOLID;
  cdsChangeColList.Close;
  cdsChangeColList.Open;
end;

end.
