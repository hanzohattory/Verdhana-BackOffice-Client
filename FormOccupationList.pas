unit FormOccupationList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxImageComboBox;

type
  TfrmOccupationList = class(TfrmBrowseData)
    cdsOccupationList: TNClientDataset;
    cdsOccupationListOC_CODE: TLargeintField;
    cdsOccupationListOCCUPATION: TStringField;
    cdsOccupationListMODDA: TDateTimeField;
    cdsOccupationListMODUI: TStringField;
    cdsOccupationListAPPDA: TDateTimeField;
    cdsOccupationListAPPUI: TStringField;
    cdsOccupationListUNDER4Y: TIntegerField;
    cdsOccupationListUNDER4YDA: TDateTimeField;
    cdsOccupationListNOTES4Y: TStringField;
    cdsOccupationListISDEL: TIntegerField;
    cdsOccupationListID: TLargeintField;
    cdsOccupationListRISK: TStringField;
    cdsOccupationListOCCUPATION_EN: TStringField;
    cdsOccupationListOCCUPATION_ID: TStringField;
    gvwMasterOC_CODE: TcxGridDBBandedColumn;
    gvwMasterOCCUPATION: TcxGridDBBandedColumn;
    gvwMasterOC_DESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterRISK: TcxGridDBBandedColumn;
    gvwMasterOCCUPATION_EN: TcxGridDBBandedColumn;
    gvwMasterOCCUPATION_ID: TcxGridDBBandedColumn;
    cdsOccupationListOC_DESC: TStringField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOccupationList: TfrmOccupationList;

implementation

{$R *.dfm}

uses DataGlobal, FormOccupation;

procedure TfrmOccupationList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmOccupation;
end;

procedure TfrmOccupationList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsOccupationListOC_CODE;

  cdsOccupationList.Close;
  cdsOccupationList.Open;
end;

end.
