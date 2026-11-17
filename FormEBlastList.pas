unit FormEBlastList;

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
  Datasnap.DBClient, NClientDataset;

type
  TfrmEBlastList = class(TfrmBrowseData)
    cdsEBlastList: TNClientDataset;
    cdsEBlastListEBLAST_ID: TLargeintField;
    cdsEBlastListEMAILSUBJECT: TStringField;
    cdsEBlastListEMAILMESSAGE: TMemoField;
    cdsEBlastListEMAIL_OBJECT_FILENAME: TStringField;
    cdsEBlastListEMAIL_OBJECT_FILE: TBlobField;
    cdsEBlastListEMAILTYPE: TStringField;
    gvwMasterEBLAST_ID: TcxGridDBBandedColumn;
    gvwMasterEMAILTYPE: TcxGridDBBandedColumn;
    gvwMasterEMAILSUBJECT: TcxGridDBBandedColumn;
    gvwMasterEMAILMESSAGE: TcxGridDBBandedColumn;
    gvwMasterEMAIL_OBJECT_FILENAME: TcxGridDBBandedColumn;
    gvwMasterEMAIL_OBJECT_FILE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEBlastList: TfrmEBlastList;

implementation

{$R *.dfm}

uses DataGlobal, FormEBlast;

procedure TfrmEBlastList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmEBlast;
end;

procedure TfrmEBlastList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsEBlastListEBLAST_ID;

  cdsEBlastList.Close;
  cdsEBlastList.Open;
end;

end.
