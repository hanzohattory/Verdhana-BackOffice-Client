unit FormGLDetail;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxLayoutContainer,
  dxLayoutControl, cxContainer, dxLayoutcxEditAdapters, Datasnap.DBClient,
  NClientDataset, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, System.Actions, System.ImageList, dxDateRanges;

type
  TfrmGLDetail = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cdsGLDetail: TNClientDataset;
    cdsGLDetailJRNID: TLargeintField;
    cdsGLDetailJRNCD: TStringField;
    cdsGLDetailEDATE: TDateTimeField;
    cdsGLDetailVDATE: TDateTimeField;
    cdsGLDetailGLACCOUNTID: TIntegerField;
    cdsGLDetailGLACCOUNTCODE: TStringField;
    cdsGLDetailGLACCOUNTNAME: TStringField;
    cdsGLDetailJRNTYPE: TStringField;
    cdsGLDetailJRNDDESC: TStringField;
    cdsGLDetailCCYCODE: TStringField;
    cdsGLDetailDBAMOUNT: TFloatField;
    cdsGLDetailCRAMOUNT: TFloatField;
    cdsGLDetailFXDBAMOUNT: TFloatField;
    cdsGLDetailFXCRAMOUNT: TFloatField;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    gvwMasterJRNCD: TcxGridDBBandedColumn;
    gvwMasterEDATE: TcxGridDBBandedColumn;
    gvwMasterVDATE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTID: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterJRNTYPE: TcxGridDBBandedColumn;
    gvwMasterJRNDDESC: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterDBAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCRAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXDBAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXCRAMOUNT: TcxGridDBBandedColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cdsGLDetailHDESC: TStringField;
    cdsGLDetailCONVERSION_VALUE: TFloatField;
    gvwMasterHDESC: TcxGridDBBandedColumn;
    gvwMasterCONVERSION_VALUE: TcxGridDBBandedColumn;
    edReffNo: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
  private

    { Private declarations }
  public
    function createForm(AJRNID : integer; AReffNo: string):Boolean;
    { Public declarations }
  end;

var
  frmGLDetail: TfrmGLDetail;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmGLDetail }


{ TfrmGLDetail }

function TfrmGLDetail.createForm(AJRNID: integer; AReffNo: string): Boolean;
var
  bError: Boolean;
  sMsg: String;
begin
  Result := False;

  frmGLDetail := TfrmGLDetail.Create(Nil);
  Try
    with frmGLDetail do
    begin
      edReffNo.EditValue := AReffNo;

      cdsGLDetail.Close;
      cdsGLDetail.Params[0].AsInteger := AJRNID;
      cdsGLDetail.Open;

      ShowModal;


      Result := true;
    end;
  Finally
    FreeAndNil(frmGLDetail);
  End;
end;

end.
