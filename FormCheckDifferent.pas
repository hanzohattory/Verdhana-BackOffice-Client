unit FormCheckDifferent;

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
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, System.Actions, System.ImageList, dxDateRanges;

type
  TfrmCheckDifferent = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    cbReportGroupType: TcxLookupComboBox;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsCheckDifferent: TNClientDataset;
    cdsCheckDifferentSource_Data: TStringField;
    cdsCheckDifferentDifferent_Value: TFloatField;
    gvwMasterSource_Data: TcxGridDBBandedColumn;
    gvwMasterDifferent_Value: TcxGridDBBandedColumn;
    actViewData: TNAction;
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckDifferent: TfrmCheckDifferent;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCheckDifferent.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCheckDifferent.Close;
  cdsCheckDifferent.Params[0].AsString := VarToStr(cbReportGroupType.EditValue);
  cdsCheckDifferent.Open;
end;

procedure TfrmCheckDifferent.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuRptGrpType.Close;
    cdsLuRptGrpType.Open;
  end;
end;

procedure TfrmCheckDifferent.FormShow(Sender: TObject);
begin
  inherited;
  if Trim(dmGlobal.ReportTypeDifferent) <> '' then
  begin
    cbReportGroupType.EditValue := dmGlobal.ReportTypeDifferent;
    actViewData.Execute;
  end;
end;

Initialization
  RegisterClass(TfrmCheckDifferent);

end.
