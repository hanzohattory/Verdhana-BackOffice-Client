unit FormAMLSummary;

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
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCalendar, cxBarEditItem, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmAMLSummary = class(TfrmBrowseData)
    cdsBrowseMaster: TNClientDataset;
    gvwMasterCUST_NAME: TcxGridDBBandedColumn;
    gvwMasterASSESSMENT_DATE: TcxGridDBBandedColumn;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
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
    cdsBrowseMasterUNUSUAL_NONCASH: TStringField;
    cdsBrowseMasterUNUSUAL_CASH: TStringField;
    gvwMasterASSESSMENT_STATUS: TcxGridDBBandedColumn;
    gvwMasterUNUSUAL_NONCASH: TcxGridDBBandedColumn;
    gvwMasterUNUSUAL_CASH: TcxGridDBBandedColumn;
    cdsBrowseMasterASSET_PROFILE_STAT: TStringField;
    gvwMasterASSET_PROFILE_STAT: TcxGridDBBandedColumn;
    gvwMasterCUST_CODE: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
    fSysDate: TDate;
  public
    { Public declarations }
  end;

var
  frmAMLSummary: TfrmAMLSummary;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmAMLSummary.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  ReportContainer.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);

  inherited;
end;

procedure TfrmAMLSummary.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsBrowseMaster.Close;
  cdsBrowseMaster.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsBrowseMaster.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsBrowseMaster.Open;
end;

procedure TfrmAMLSummary.FormCreate(Sender: TObject);
begin
  inherited;
  fSysDate := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := fSysDate;
  dtEnd.EditValue   := fSysDate;
end;

end.
