unit FormCompanyBankList;

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
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, System.Actions, System.ImageList,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCompanyBankList = class(TfrmBrowseData)
    cdsCompanyBankList: TNClientDataset;
    cdsCompanyBankListBANKID: TIntegerField;
    cdsCompanyBankListCCYCODE: TStringField;
    cdsCompanyBankListBNCODE: TStringField;
    cdsCompanyBankListBANKACCNO: TStringField;
    cdsCompanyBankListBANKACCNAME: TStringField;
    cdsCompanyBankListBANKBRANCH: TStringField;
    cdsCompanyBankListSTAT: TStringField;
    cdsCompanyBankListMODDA: TDateTimeField;
    cdsCompanyBankListMODUI: TStringField;
    cdsCompanyBankListAPPDA: TDateTimeField;
    cdsCompanyBankListAPPUI: TStringField;
    cdsCompanyBankListUNDER4Y: TIntegerField;
    cdsCompanyBankListUNDER4YDA: TDateTimeField;
    cdsCompanyBankListNOTES4Y: TStringField;
    cdsCompanyBankListISDEL: TIntegerField;
    cdsCompanyBankListID: TLargeintField;
    gvwMasterBANKID: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBANKBRANCH: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsCompanyBankListBANKTYPE: TStringField;
    cdsCompanyBankListBNNAME: TStringField;
    gvwMasterBANKTYPE: TcxGridDBBandedColumn;
    gvwMasterBNNAME: TcxGridDBBandedColumn;
    cdsCompanyBankListDEFAULT_BANK: TIntegerField;
    gvwMasterDEFAULT_BANK: TcxGridDBBandedColumn;
    cdsCompanyBankListGLACCOUNTID: TIntegerField;
    gvwMasterGLACCOUNTID: TcxGridDBBandedColumn;
    cdsCompanyBankListCOA: TStringField;
    gvwMasterCOA: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompanyBankList: TfrmCompanyBankList;

implementation

{$R *.dfm}

uses DataGlobal, FormCompanyBank;

procedure TfrmCompanyBankList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCompanyBank;
end;

procedure TfrmCompanyBankList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCompanyBankListBANKID;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBank.Active then
      cdsLuBank.Open;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open;
  end;

  cdsCompanyBankList.Close;
  cdsCompanyBankList.Open;
end;

Initialization
  RegisterClass(TfrmCompanyBankList);

end.
