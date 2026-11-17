unit FormAmlAccountList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCheckBox, dxBar,
  cxBarEditItem, NReportClient, NDatasetContainer, cxClasses, System.Actions,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  System.ImageList, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxCalendar,
  Datasnap.DBClient, NClientDataset, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAmlAccountList = class(TfrmBrowseData)
    dtReport: TcxBarEditItem;
    gvwMasterCUST_CODE: TcxGridDBBandedColumn;
    gvwMasterCUST_NAME: TcxGridDBBandedColumn;
    gvwMasterNO_ID: TcxGridDBBandedColumn;
    gvwMasterNPWP: TcxGridDBBandedColumn;
    gvwMasterSOURCE_INC: TcxGridDBBandedColumn;
    gvwMasterINCOME: TcxGridDBBandedColumn;
    gvwMasterOCCUPATION: TcxGridDBBandedColumn;
    gvwMasterWORK_PLACE: TcxGridDBBandedColumn;
    gvwMasterOA_DATE: TcxGridDBBandedColumn;
    gvwMasterHRC_STATUS: TcxGridDBBandedColumn;
    gvwMasterHRC_REMARKS: TcxGridDBBandedColumn;
    gvwMasterASSESSMENT_STATUS: TcxGridDBBandedColumn;
    gvwMasterASSESSMENT_DATE: TcxGridDBBandedColumn;
    cdsBrowseMaster: TNClientDataset;
    cdsBrowseMasterCUST_CODE: TStringField;
    cdsBrowseMasterCUST_NAME: TStringField;
    cdsBrowseMasterNO_ID: TStringField;
    cdsBrowseMasterNPWP: TStringField;
    cdsBrowseMasterSOURCE_INC: TStringField;
    cdsBrowseMasterOCCUPATION: TStringField;
    cdsBrowseMasterWORK_PLACE: TStringField;
    cdsBrowseMasterINCOME: TFloatField;
    cdsBrowseMasterOA_DATE: TDateTimeField;
    cdsBrowseMasterHRC_STATUS: TStringField;
    cdsBrowseMasterHRC_REMARKS: TStringField;
    cdsBrowseMasterASSESSMENT_STATUS: TStringField;
    cdsBrowseMasterASSESSMENT_DATE: TDateTimeField;
    cdsBrowseMasterSOURCE_NAME: TStringField;
    gvwMasterSOURCE_NAME: TcxGridDBBandedColumn;
    cdsBrowseMasterASSET_PROFILE_STAT: TStringField;
    cdsBrowseMasterUNUSUAL_NONCASH: TStringField;
    cdsBrowseMasterUNUSUAL_CASH: TStringField;
    gvwMasterASSET_PROFILE_STAT: TcxGridDBBandedColumn;
    gvwMasterUNUSUAL_NONCASH: TcxGridDBBandedColumn;
    gvwMasterUNUSUAL_CASH: TcxGridDBBandedColumn;
    cdsBrowseMasterGRSSANNINC_DESCRIPTION: TStringField;
    cdsBrowseMasterGRSSANNINC_VALUE: TFloatField;
    gvwMasterGRSSANNINC_DESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterGRSSANNINC_VALUE: TcxGridDBBandedColumn;
    chkAsset: TcxBarEditItem;
    chkCash: TcxBarEditItem;
    chkNoncash: TcxBarEditItem;
    cdsBrowseMasterCUST_ID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actOpenExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAmlAccountList: TfrmAmlAccountList;

implementation

{$R *.dfm}

uses DataGlobal, FormAmlAccount;

procedure TfrmAmlAccountList.actOpenExecute(Sender: TObject);
begin
//  inherited;
  AmlCustomer(cdsBrowseMasterCUST_ID.AsInteger, cdsBrowseMasterASSESSMENT_DATE.AsDateTime);
end;

procedure TfrmAmlAccountList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsBrowseMaster.Close;
  cdsBrowseMaster.Params[0].AsDate := VarToDateTime(dtReport.EditValue);
  cdsBrowseMaster.Open;

  cdsBrowseMaster.Filter := '';
  if chkAsset.EditValue = '1' then
    cdsBrowseMaster.Filter := 'ASSET_PROFILE_STAT = ''1''';
  if chkCash.EditValue = '1' then
  begin
    if cdsBrowseMaster.Filter <> '' then
      cdsBrowseMaster.Filter := cdsBrowseMaster.Filter + ' OR UNUSUAL_CASH = ''1'''
    else
      cdsBrowseMaster.Filter := 'UNUSUAL_CASH = ''1''';
  end;
  if chkNoncash.EditValue = '1' then
  begin
    if cdsBrowseMaster.Filter <> '' then
      cdsBrowseMaster.Filter := cdsBrowseMaster.Filter + ' OR UNUSUAL_NONCASH = ''1'''
    else
      cdsBrowseMaster.Filter := 'UNUSUAL_NONCASH = ''1''';
  end;

  cdsBrowseMaster.Filtered := True;

//  dmGlobal.ReportDate := VarToDateTime(dtReport.EditValue);
end;

procedure TfrmAmlAccountList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAMLAccount;
end;

procedure TfrmAmlAccountList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsBrowseMasterCUST_ID;

  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;
  actReject.Execute;
end;

end.
