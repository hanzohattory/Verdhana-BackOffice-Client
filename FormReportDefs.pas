unit FormReportDefs;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Datasnap.DBClient,
  NClientDataset, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControl, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid;

type
  TfrmReportDefs = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    cbReportGroupType: TcxLookupComboBox;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsRptDefList: TNClientDataset;
    cdsRptDefListRPTTYPE: TStringField;
    cdsRptDefListROWNO: TIntegerField;
    cdsRptDefListCOLNO: TIntegerField;
    cdsRptDefListDATATYPE: TStringField;
    cdsRptDefListROWTEXT: TStringField;
    cdsRptDefListCOLTEXT: TStringField;
    cdsRptDefListUSEFORML: TBooleanField;
    cdsRptDefListVALTYPE: TStringField;
    cdsRptDefListFORMULAMODE: TStringField;
    cdsRptDefListTEXTITEM: TStringField;
    cdsRptDefListDATAUPLD: TBooleanField;
    cdsRptDefListUSE_NODTL: TBooleanField;
    cdsRptDefListONLYSHOWRPT: TBooleanField;
    cdsRptDefListKEYRPTTYPECOL: TBooleanField;
    cdsRptDefListKEYROWCOL: TBooleanField;
    cdsRptDefListSET_DATAFORMAT: TBooleanField;
    cdsRptDefListDATAFORMATKEY: TStringField;
    cdsRptDefListDATAFORMATVAL: TStringField;
    cdsRptDefListSTRRPTHDR: TStringField;
    cdsRptDefListSTRRPTHVAL: TStringField;
    cdsRptDefListSTRHVALCOL: TIntegerField;
    cdsRptDefListHDR_VAL_UPLD: TStringField;
    cdsRptDefListHDR_COL_UPLD: TIntegerField;
    cdsRptDefListCAN_EDIT: TStringField;
    cdsRptDefListMODDA: TDateTimeField;
    cdsRptDefListMODUI: TStringField;
    cdsRptDefListAPPDA: TDateTimeField;
    cdsRptDefListAPPUI: TStringField;
    cdsRptDefListUNDER4Y: TIntegerField;
    cdsRptDefListUNDER4YDA: TDateTimeField;
    cdsRptDefListNOTES4Y: TStringField;
    cdsRptDefListISDEL: TIntegerField;
    cdsRptDefListID: TLargeintField;
    cdsRptDefListRPTTYPE_1: TStringField;
    cdsRptDefListRPTTYPEGRP: TStringField;
    cdsRptDefListRTPTYPEDESC: TStringField;
    cdsRptDefListUSECHECKVAL: TBooleanField;
    cdsRptDefListREPORT_ROWNO: TIntegerField;
    cdsRptDefListGENERATE_ROWNO: TIntegerField;
    cdsRptDefListDFLTCONT_FORMAT: TStringField;
    cdsRptDefListSTART_COL: TIntegerField;
    cdsRptDefListLNNUM: TIntegerField;
    cdsRptDefListMODDA_1: TDateTimeField;
    cdsRptDefListMODUI_1: TStringField;
    cdsRptDefListAPPDA_1: TDateTimeField;
    cdsRptDefListAPPUI_1: TStringField;
    cdsRptDefListUNDER4Y_1: TIntegerField;
    cdsRptDefListUNDER4YDA_1: TDateTimeField;
    cdsRptDefListNOTES4Y_1: TStringField;
    cdsRptDefListISDEL_1: TIntegerField;
    cdsRptDefListID_1: TLargeintField;
    actViewData: TNAction;
    gvwMasterRPTTYPE: TcxGridDBBandedColumn;
    gvwMasterROWNO: TcxGridDBBandedColumn;
    gvwMasterCOLNO: TcxGridDBBandedColumn;
    gvwMasterDATATYPE: TcxGridDBBandedColumn;
    gvwMasterROWTEXT: TcxGridDBBandedColumn;
    gvwMasterCOLTEXT: TcxGridDBBandedColumn;
    gvwMasterUSEFORML: TcxGridDBBandedColumn;
    gvwMasterVALTYPE: TcxGridDBBandedColumn;
    gvwMasterFORMULAMODE: TcxGridDBBandedColumn;
    gvwMasterTEXTITEM: TcxGridDBBandedColumn;
    gvwMasterDATAUPLD: TcxGridDBBandedColumn;
    gvwMasterUSE_NODTL: TcxGridDBBandedColumn;
    gvwMasterONLYSHOWRPT: TcxGridDBBandedColumn;
    gvwMasterKEYRPTTYPECOL: TcxGridDBBandedColumn;
    gvwMasterKEYROWCOL: TcxGridDBBandedColumn;
    gvwMasterSET_DATAFORMAT: TcxGridDBBandedColumn;
    gvwMasterDATAFORMATKEY: TcxGridDBBandedColumn;
    gvwMasterDATAFORMATVAL: TcxGridDBBandedColumn;
    gvwMasterSTRRPTHDR: TcxGridDBBandedColumn;
    gvwMasterSTRRPTHVAL: TcxGridDBBandedColumn;
    gvwMasterSTRHVALCOL: TcxGridDBBandedColumn;
    gvwMasterHDR_VAL_UPLD: TcxGridDBBandedColumn;
    gvwMasterHDR_COL_UPLD: TcxGridDBBandedColumn;
    gvwMasterCAN_EDIT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterRPTTYPE_1: TcxGridDBBandedColumn;
    gvwMasterRPTTYPEGRP: TcxGridDBBandedColumn;
    gvwMasterRTPTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterUSECHECKVAL: TcxGridDBBandedColumn;
    gvwMasterREPORT_ROWNO: TcxGridDBBandedColumn;
    gvwMasterGENERATE_ROWNO: TcxGridDBBandedColumn;
    gvwMasterDFLTCONT_FORMAT: TcxGridDBBandedColumn;
    gvwMasterSTART_COL: TcxGridDBBandedColumn;
    gvwMasterLNNUM: TcxGridDBBandedColumn;
    gvwMasterMODDA_1: TcxGridDBBandedColumn;
    gvwMasterMODUI_1: TcxGridDBBandedColumn;
    gvwMasterAPPDA_1: TcxGridDBBandedColumn;
    gvwMasterAPPUI_1: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y_1: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA_1: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y_1: TcxGridDBBandedColumn;
    gvwMasterISDEL_1: TcxGridDBBandedColumn;
    gvwMasterID_1: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportDefs: TfrmReportDefs;

implementation

{$R *.dfm}

uses DataGlobal, FormReportDef;

procedure TfrmReportDefs.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsRptDefList.Close;
  cdsRptDefList.Params[0].AsString := VarToStr(cbReportGroupType.EditValue);
  cdsRptDefList.Open;
end;

procedure TfrmReportDefs.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmReportDef;
end;

procedure TfrmReportDefs.FormCreate(Sender: TObject);
begin
  inherited;
  SetKeyFieldsLength(3);
  KeyFields[0] := cdsRptDefListRPTTYPE;
  KeyFields[1] := cdsRptDefListROWNO;
  KeyFields[2] := cdsRptDefListCOLNO;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuRptGrpType.Close;
    cdsLuRptGrpType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmReportDefs);

end.
