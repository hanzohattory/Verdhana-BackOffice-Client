unit FormReportGroupTypes;

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
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TfrmReportGroupTypes = class(TfrmBrowseData)
    cdsRptGrpTypeList: TNClientDataset;
    cdsRptGrpTypeListRPTTYPEGRP: TStringField;
    cdsRptGrpTypeListRPTDESC: TStringField;
    cdsRptGrpTypeListCOUNTCOL: TIntegerField;
    cdsRptGrpTypeListFILENAME: TStringField;
    cdsRptGrpTypeListEXTFILE: TStringField;
    cdsRptGrpTypeListDELIMITER: TStringField;
    cdsRptGrpTypeListDATEFORMAT: TStringField;
    cdsRptGrpTypeListMODDA: TDateTimeField;
    cdsRptGrpTypeListMODUI: TWideStringField;
    cdsRptGrpTypeListAPPDA: TDateTimeField;
    cdsRptGrpTypeListAPPUI: TStringField;
    cdsRptGrpTypeListUNDER4Y: TIntegerField;
    cdsRptGrpTypeListUNDER4YDA: TDateTimeField;
    cdsRptGrpTypeListNOTES4Y: TStringField;
    cdsRptGrpTypeListISDEL: TIntegerField;
    cdsRptGrpTypeListID: TLargeintField;
    gvwMasterRPTTYPEGRP: TcxGridDBBandedColumn;
    gvwMasterRPTDESC: TcxGridDBBandedColumn;
    gvwMasterCOUNTCOL: TcxGridDBBandedColumn;
    gvwMasterFILENAME: TcxGridDBBandedColumn;
    gvwMasterEXTFILE: TcxGridDBBandedColumn;
    gvwMasterDELIMITER: TcxGridDBBandedColumn;
    gvwMasterDATEFORMAT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportGroupTypes: TfrmReportGroupTypes;

implementation

{$R *.dfm}

uses DataGlobal, FormReportGroupType;

procedure TfrmReportGroupTypes.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmReportGroupType;
end;

procedure TfrmReportGroupTypes.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsRptGrpTypeListRPTTYPEGRP;

  cdsRptGrpTypeList.Close;
  cdsRptGrpTypeList.Open;
end;

Initialization
  RegisterClass(TfrmReportGroupTypes);

end.
