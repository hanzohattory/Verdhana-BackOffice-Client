unit FormReportTypes;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmReportTypes = class(TfrmBrowseData)
    cdsRptTypeList: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbReportGroupType: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsRptTypeListRPTTYPE: TStringField;
    cdsRptTypeListRPTTYPEGRP: TStringField;
    cdsRptTypeListRTPTYPEDESC: TStringField;
    cdsRptTypeListUSECHECKVAL: TBooleanField;
    cdsRptTypeListREPORT_ROWNO: TIntegerField;
    cdsRptTypeListGENERATE_ROWNO: TIntegerField;
    cdsRptTypeListDFLTCONT_FORMAT: TStringField;
    cdsRptTypeListSTART_COL: TIntegerField;
    cdsRptTypeListLNNUM: TIntegerField;
    cdsRptTypeListMODDA: TDateTimeField;
    cdsRptTypeListMODUI: TStringField;
    cdsRptTypeListAPPDA: TDateTimeField;
    cdsRptTypeListAPPUI: TStringField;
    cdsRptTypeListUNDER4Y: TIntegerField;
    cdsRptTypeListUNDER4YDA: TDateTimeField;
    cdsRptTypeListNOTES4Y: TStringField;
    cdsRptTypeListISDEL: TIntegerField;
    cdsRptTypeListID: TLargeintField;
    actViewData: TNAction;
    gvwMasterRPTTYPE: TcxGridDBBandedColumn;
    gvwMasterRPTTYPEGRP: TcxGridDBBandedColumn;
    gvwMasterRTPTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterUSECHECKVAL: TcxGridDBBandedColumn;
    gvwMasterREPORT_ROWNO: TcxGridDBBandedColumn;
    gvwMasterGENERATE_ROWNO: TcxGridDBBandedColumn;
    gvwMasterDFLTCONT_FORMAT: TcxGridDBBandedColumn;
    gvwMasterSTART_COL: TcxGridDBBandedColumn;
    gvwMasterLNNUM: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTypes: TfrmReportTypes;

implementation

{$R *.dfm}

uses DataGlobal, FormReportType;

procedure TfrmReportTypes.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsRptTypeList.Close;
  cdsRptTypeList.Params[0].AsString := VarToStr(cbReportGroupType.EditValue);
  cdsRptTypeList.Open;
end;

procedure TfrmReportTypes.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmReportType;
end;

procedure TfrmReportTypes.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsRptTypeListRPTTYPE;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuRptGrpType.Close;
    cdsLuRptGrpType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportTypes);

end.
