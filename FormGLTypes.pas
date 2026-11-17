unit FormGLTypes;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxImageComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGrid, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, System.ImageList;

type
  TfrmGLTypes = class(TfrmBrowseData)
    cdsGLTypeList: TNClientDataset;
    cdsGLTypeListPRODUCTCODE: TStringField;
    cdsGLTypeListACCOUNTTYPE: TStringField;
    cdsGLTypeListAFFILIASI: TStringField;
    cdsGLTypeListALTYPE: TStringField;
    cdsGLTypeListGLACCOUNTID: TLargeintField;
    cdsGLTypeListUSEGL_ANALIZE: TStringField;
    cdsGLTypeListID: TLargeintField;
    gvwMasterPRODUCTCODE: TcxGridDBBandedColumn;
    gvwMasterACCOUNTTYPE: TcxGridDBBandedColumn;
    gvwMasterAFFILIASI: TcxGridDBBandedColumn;
    gvwMasterALTYPE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTID: TcxGridDBBandedColumn;
    gvwMasterUSEGL_ANALIZE: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterColumn1: TcxGridDBBandedColumn;
    cdsGLTypeListMODDA: TDateTimeField;
    cdsGLTypeListMODUI: TStringField;
    cdsGLTypeListCCYCODE: TStringField;
    cdsGLTypeListGLTYPEDESC: TStringField;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterGLTYPEDESC: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGLTypes: TfrmGLTypes;

implementation

{$R *.dfm}

uses DataGlobal, FormGLType;

procedure TfrmGLTypes.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmGLType;
end;

procedure TfrmGLTypes.FormCreate(Sender: TObject);
begin
  inherited;
  SetKeyFieldsLength(6);
  KeyFields[0] := cdsGLTypeListPRODUCTCODE;
  KeyFields[1] := cdsGLTypeListACCOUNTTYPE;
  KeyFields[2] := cdsGLTypeListAFFILIASI;
  KeyFields[3] := cdsGLTypeListALTYPE;
  KeyFields[4] := cdsGLTypeListGLACCOUNTID;
  KeyFields[5] := cdsGLTypeListCCYCODE;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuProduct.Active then
      cdsLuProduct.Open;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open;

    if not cdsLuActLedgerType.Active then
      cdsLuActLedgerType.Open;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;

  cdsGLTypeList.Close;
  cdsGLTypeList.Open;
end;

Initialization
  RegisterClass(TfrmGLTypes);

end.
