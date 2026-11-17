unit FormOpenDormanList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, System.Actions, System.ImageList,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmOpenDormanList = class(TfrmBrowseData)
    cdsOpenDormanList: TNClientDataset;
    cdsOpenDormanListODID: TIntegerField;
    cdsOpenDormanListACCID: TIntegerField;
    cdsOpenDormanListACCNAME: TStringField;
    cdsOpenDormanListSIDNO: TStringField;
    cdsOpenDormanListPRDCODE: TStringField;
    cdsOpenDormanListACC_STS: TStringField;
    cdsOpenDormanListAccountType: TStringField;
    cdsOpenDormanListREMARK: TStringField;
    gvwMasterODID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterAccountType: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    cdsOpenDorman: TNClientDataset;
    cdsOpenDormanODID: TIntegerField;
    cdsOpenDormanACCID: TIntegerField;
    cdsOpenDormanREMARK: TStringField;
    cdsOpenDormanMODDA: TDateTimeField;
    cdsOpenDormanMODUI: TStringField;
    cdsOpenDormanAPPDA: TDateTimeField;
    cdsOpenDormanAPPUI: TStringField;
    cdsOpenDormanUNDER4Y: TIntegerField;
    cdsOpenDormanUNDER4YDA: TDateTimeField;
    cdsOpenDormanNOTES4Y: TStringField;
    cdsOpenDormanISDEL: TIntegerField;
    cdsOpenDormanID: TLargeintField;
    actViewData: TNAction;
    procedure cdsOpenDormanBeforePost(DataSet: TDataSet);
    procedure cdsOpenDormanNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpenDormanList: TfrmOpenDormanList;

implementation

{$R *.dfm}

uses DataGlobal, ClassRemoteServer, FormOpenDorman;

procedure TfrmOpenDormanList.cdsOpenDormanBeforePost(DataSet: TDataSet);
var
  iODID: Integer;
begin
  inherited;
  if cdsOpenDormanListODID.AsInteger = -1 then
  begin
    iODID := dmGlobal.RemoteServer.GetSeq('TBL_MAIN_OPEN_DORMAN');
    cdsOpenDormanODID.AsInteger := iODID;
  end;
end;

procedure TfrmOpenDormanList.cdsOpenDormanNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOpenDormanODID.AsInteger := -1;
end;

procedure TfrmOpenDormanList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmOpenDorman;
end;

procedure TfrmOpenDormanList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsOpenDormanList.Close;
  cdsOpenDormanList.Open;

  actViewData.Execute;
end;

procedure TfrmOpenDormanList.FormShow(Sender: TObject);
begin
  inherited;
  if ReportContainer.ReportName = '' then
    actPrint.Visible := False;

end;

Initialization
  RegisterClass(TfrmOpenDormanList);

end.
