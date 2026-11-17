unit FormCorpactEntitlementList;

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
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxBarEditItem, cxImageComboBox, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmCorpactEntitlementList = class(TfrmBrowseData)
    cdsCorpactEntitlementList: TNClientDataset;
    dtExer: TcxBarEditItem;
    edPosted: TcxBarEditItem;
    edGenerateWT: TcxBarEditItem;
    cdsCorpactEntitlementListCAID: TLargeintField;
    cdsCorpactEntitlementListCANO: TStringField;
    cdsCorpactEntitlementListCATYPE: TStringField;
    cdsCorpactEntitlementListSTOCKID: TIntegerField;
    cdsCorpactEntitlementListSTOCKCODE: TStringField;
    cdsCorpactEntitlementListSTOCKNAME: TStringField;
    cdsCorpactEntitlementListACCID: TLargeintField;
    cdsCorpactEntitlementListACCNO: TStringField;
    cdsCorpactEntitlementListACCNAME: TStringField;
    cdsCorpactEntitlementListRATIO_QTY: TStringField;
    cdsCorpactEntitlementListRATIO_CASH: TStringField;
    cdsCorpactEntitlementListENT_QTY: TFloatField;
    cdsCorpactEntitlementListCA_QTY: TFloatField;
    cdsCorpactEntitlementListCA_AMT: TFloatField;
    cdsCorpactEntitlementListTAXRATE: TFloatField;
    cdsCorpactEntitlementListCA_NETAMT: TFloatField;
    cdsCorpactEntitlementListINSERT_SYSTEMDATE: TDateField;
    cdsCorpactEntitlementListINSERT_DATE: TDateTimeField;
    cdsCorpactEntitlementListINSERT_USER: TStringField;
    cdsCorpactEntitlementListPOSTED_SYSTEMDATE: TDateField;
    cdsCorpactEntitlementListPOSTED_DATE: TDateTimeField;
    cdsCorpactEntitlementListPOSTED_USER: TStringField;
    cdsCorpactEntitlementListGENERATE_WT_SYSTEMDATE: TDateField;
    cdsCorpactEntitlementListGENERATE_WT_DATE: TDateTimeField;
    cdsCorpactEntitlementListGENERATE_WT_USER: TStringField;
    gvwMasterCAID: TcxGridDBBandedColumn;
    gvwMasterCANO: TcxGridDBBandedColumn;
    gvwMasterCATYPE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterRATIO_QTY: TcxGridDBBandedColumn;
    gvwMasterRATIO_CASH: TcxGridDBBandedColumn;
    gvwMasterENT_QTY: TcxGridDBBandedColumn;
    gvwMasterCA_QTY: TcxGridDBBandedColumn;
    gvwMasterCA_AMT: TcxGridDBBandedColumn;
    gvwMasterTAXRATE: TcxGridDBBandedColumn;
    gvwMasterCA_NETAMT: TcxGridDBBandedColumn;
    gvwMasterINSERT_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterINSERT_DATE: TcxGridDBBandedColumn;
    gvwMasterINSERT_USER: TcxGridDBBandedColumn;
    gvwMasterPOSTED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_USER: TcxGridDBBandedColumn;
    gvwMasterGENERATE_WT_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterGENERATE_WT_DATE: TcxGridDBBandedColumn;
    gvwMasterGENERATE_WT_USER: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpactEntitlementList: TfrmCorpactEntitlementList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCorpactEntitlementList.actRefreshExecute(Sender: TObject);
var
  iAllPosted, iAllGenerate: Integer;
  sPosted, sGenerate: string;
begin
  //inherited;
  iAllPosted    := 0;
  iAllGenerate  := 0;

  if edPosted.EditValue = '2' then
  begin
    iAllPosted := 1;
    sPosted    := '';
  end
  else
  begin
    iAllPosted := 0;
    sPosted    := edPosted.EditValue;
  end;

  if edGenerateWT.EditValue = '2' then
  begin
    iAllGenerate := 1;
    sGenerate    := '';
  end
  else
  begin
    iAllGenerate := 0;
    sGenerate    := edGenerateWT.EditValue;
  end;

  cdsCorpactEntitlementList.Close;
  cdsCorpactEntitlementList.Params[0].AsDate    := VarToDateTime(dtExer.EditValue);
  cdsCorpactEntitlementList.Params[1].AsInteger := iAllPosted;
  cdsCorpactEntitlementList.Params[2].AsString  := sPosted;
  cdsCorpactEntitlementList.Params[3].AsInteger := iAllGenerate;
  cdsCorpactEntitlementList.Params[4].AsString  := sGenerate;
  cdsCorpactEntitlementList.Open;
end;

procedure TfrmCorpactEntitlementList.FormCreate(Sender: TObject);
begin
  inherited;
  dtExer.EditValue       := dmGlobal.RemoteServer.GetTransDate;
  edPosted.EditValue     := '2';
  edGenerateWT.EditValue := '2';
end;

end.
