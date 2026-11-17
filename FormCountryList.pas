unit FormCountryList;

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
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, cxImageComboBox, NReportClient, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, System.Actions, System.ImageList;

type
  TfrmCountryList = class(TfrmBrowseData)
    cdsCountryList: TNClientDataset;
    cdsCountry: TNClientDataset;
    cdsCountryListCODE: TStringField;
    cdsCountryListCOUNTNAME: TStringField;
    cdsCountryListNATIONALITY: TStringField;
    cdsCountryListMODDA: TDateTimeField;
    cdsCountryListMODUI: TStringField;
    cdsCountryListAPPDA: TDateTimeField;
    cdsCountryListAPPUI: TStringField;
    cdsCountryListUNDER4Y: TIntegerField;
    cdsCountryListUNDER4YDA: TDateTimeField;
    cdsCountryListNOTES4Y: TStringField;
    cdsCountryListISDEL: TIntegerField;
    cdsCountryListID: TLargeintField;
    cdsCountryCODE: TStringField;
    cdsCountryCOUNTNAME: TStringField;
    cdsCountryNATIONALITY: TStringField;
    cdsCountryMODDA: TDateTimeField;
    cdsCountryMODUI: TStringField;
    cdsCountryAPPDA: TDateTimeField;
    cdsCountryAPPUI: TStringField;
    cdsCountryUNDER4Y: TIntegerField;
    cdsCountryUNDER4YDA: TDateTimeField;
    cdsCountryNOTES4Y: TStringField;
    cdsCountryISDEL: TIntegerField;
    cdsCountryID: TLargeintField;
    gvwMasterCODE: TcxGridDBBandedColumn;
    gvwMasterCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterNATIONALITY: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsCountryRISK: TStringField;
    cdsCountryListRISK: TStringField;
    gvwMasterRISK: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCountryList: TfrmCountryList;

implementation

{$R *.dfm}

uses DataGlobal, FormCountry;

procedure TfrmCountryList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCountry;
end;

procedure TfrmCountryList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCountryList.Close;
  cdsCountryList.Open;
end;

Initialization
  RegisterClass(TfrmCountryList);

end.
