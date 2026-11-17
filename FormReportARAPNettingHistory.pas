unit FormReportARAPNettingHistory;

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
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, dxDateRanges, System.Actions,
  System.ImageList, cxCalendar, cxBarEditItem;

type
  TfrmReportARAPNettingHistory = class(TfrmBrowseData)
    cdsARAPNetting: TNClientDataset;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterART0: TcxGridDBBandedColumn;
    gvwMasterART1: TcxGridDBBandedColumn;
    gvwMasterART2: TcxGridDBBandedColumn;
    gvwMasterARTOTAL: TcxGridDBBandedColumn;
    gvwMasterAPT0: TcxGridDBBandedColumn;
    gvwMasterAPT1: TcxGridDBBandedColumn;
    gvwMasterAPT2: TcxGridDBBandedColumn;
    gvwMasterAPTOTAL: TcxGridDBBandedColumn;
    grdMasterLevel2: TcxGridLevel;
    gvwMaster2: TcxGridDBBandedTableView;
    gvwMasterSIDE_ACC: TcxGridDBBandedColumn;
    dsARAPNetingDetail: TDataSource;
    cdsARAPNettingDetail: TNClientDataset;
    gvwMaster2ACCTYPE: TcxGridDBBandedColumn;
    gvwMaster2SIDE_ACC: TcxGridDBBandedColumn;
    gvwMaster2ACCNAME: TcxGridDBBandedColumn;
    gvwMaster2ART0: TcxGridDBBandedColumn;
    gvwMaster2ART1: TcxGridDBBandedColumn;
    gvwMaster2ART2: TcxGridDBBandedColumn;
    gvwMaster2ARTOTAL: TcxGridDBBandedColumn;
    gvwMaster2APT0: TcxGridDBBandedColumn;
    gvwMaster2APT1: TcxGridDBBandedColumn;
    gvwMaster2APT2: TcxGridDBBandedColumn;
    gvwMaster2APTOTAL: TcxGridDBBandedColumn;
    cdsARAPNettingACCTYPE: TStringField;
    cdsARAPNettingSIDE_ACC: TStringField;
    cdsARAPNettingART0: TFloatField;
    cdsARAPNettingART1: TFloatField;
    cdsARAPNettingART2: TFloatField;
    cdsARAPNettingAPT0: TFloatField;
    cdsARAPNettingAPT1: TFloatField;
    cdsARAPNettingAPT2: TFloatField;
    cdsARAPNettingARTOTAL: TFloatField;
    cdsARAPNettingAPTOTAL: TFloatField;
    cdsARAPNettingDetailACCTYPE: TStringField;
    cdsARAPNettingDetailSIDE_ACC: TStringField;
    cdsARAPNettingDetailACCNAME: TStringField;
    cdsARAPNettingDetailART0: TFloatField;
    cdsARAPNettingDetailART1: TFloatField;
    cdsARAPNettingDetailART2: TFloatField;
    cdsARAPNettingDetailAPT0: TFloatField;
    cdsARAPNettingDetailAPT1: TFloatField;
    cdsARAPNettingDetailAPT2: TFloatField;
    cdsARAPNettingDetailARTOTAL: TFloatField;
    cdsARAPNettingDetailAPTOTAL: TFloatField;
    cdsARAPNettingDetailBOARDID: TIntegerField;
    gvwMaster2BOARDID: TcxGridDBBandedColumn;
    cdsCashOutstanding: TNClientDataset;
    cdsCashOutstandingSIID: TLargeintField;
    cdsCashOutstandingSINO: TStringField;
    cdsCashOutstandingENTRYDATE: TDateField;
    cdsCashOutstandingTRDDATE: TDateField;
    cdsCashOutstandingDUEDATE: TDateField;
    cdsCashOutstandingSITYPE: TStringField;
    cdsCashOutstandingSETTLE_SIDE: TStringField;
    cdsCashOutstandingBASE_CCYCODE: TStringField;
    cdsCashOutstandingBASE_NETAMT: TFloatField;
    cdsCashOutstandingSETTLE_CCYCODE: TStringField;
    cdsCashOutstandingSETTLE_EXRATE: TFloatField;
    cdsCashOutstandingSETTLE_NETAMT: TFloatField;
    cdsCashOutstandingSETTLED_AMT: TFloatField;
    cdsCashOutstandingVOUCHERAMT: TFloatField;
    cdsCashOutstandingSI_DESC: TStringField;
    cdsCashOutstandingMODDA: TDateTimeField;
    cdsCashOutstandingMODUI: TStringField;
    cdsCashOutstandingSTAT: TStringField;
    cdsCashOutstandingPROCESSAMT: TFloatField;
    cdsCashOutstandingOUTSTANDAMT: TFloatField;
    cdsCashOutstandingPROCESSAMT_X: TFloatField;
    cdsCashOutstandingOUTSTANDAMT_X: TFloatField;
    cdsCashOutstandingBOARDID: TIntegerField;
    actViewDetailARAPNetting: TNAction;
    ViewDetailARAPNetting1: TMenuItem;
    cdsARAPNettingDetailACCID: TLargeintField;
    cdsARAPNettingDetailACCCODE: TStringField;
    cdsARAPNettingDetailSETTLE_CCYCODE: TStringField;
    gvwMaster2ACCID: TcxGridDBBandedColumn;
    gvwMaster2ACCCODE: TcxGridDBBandedColumn;
    gvwMaster2SETTLE_CCYCODE: TcxGridDBBandedColumn;
    cdsCashOutstandingAR: TFloatField;
    cdsCashOutstandingAP: TFloatField;
    cdsCashOutstandingACCID: TIntegerField;
    cdsCashOutstandingACCCODE: TStringField;
    cdsCashOutstandingACCNAME: TStringField;
    cdsCashOutstandingACCTYPE: TStringField;
    cdsCashOutstandingACC_TYPE: TStringField;
    dtReport: TcxBarEditItem;
    procedure cdsARAPNettingCalcFields(DataSet: TDataSet);
    procedure cdsARAPNettingDetailCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cdsCashOutstandingCalcFields(DataSet: TDataSet);
    procedure actViewDetailARAPNettingExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmReportARAPNettingHistory: TfrmReportARAPNettingHistory;

implementation

{$R *.dfm}

uses DataGlobal, FormDetailARAPNetting;

procedure TfrmReportARAPNettingHistory.actRefreshExecute(Sender: TObject);
begin
  RefreshData;
end;

procedure TfrmReportARAPNettingHistory.actViewDetailARAPNettingExecute(
  Sender: TObject);
var
  oForm: TForm;
  iAccID: Int64;
  iBoardid: Integer;
  iCcy,iSideacc,iAcctype: string;
begin
  inherited;
  if grdMasterLevel2.Active then
  begin
    if gvwMaster2.Controller.SelectedRecordCount = 1 then
    begin
      oForm := TfrmDetailARAPNetting.Create(Self);

      iAccID          := StrToInt64Def(gvwMaster2.Controller.SelectedRecords[0].Values[gvwMaster2ACCID.Index], 0);
      iCcy            := gvwMaster2.Controller.SelectedRecords[0].Values[gvwMaster2SETTLE_CCYCODE.Index];
      iBoardid        := StrToIntDef(gvwMaster2.Controller.SelectedRecords[0].Values[gvwMaster2BOARDID.Index], 0);
      iSideacc        := gvwMaster2.Controller.SelectedRecords[0].Values[gvwMaster2SIDE_ACC.Index];
      iAcctype        := gvwMaster2.Controller.SelectedRecords[0].Values[gvwMaster2ACCTYPE.Index];

//    case SIDE_ACC when 'B' then 'Broker Side' else 'Client Side' end SIDE_ACC
      if iSideacc = 'Broker Side' then iSideacc := 'B'
      else iSideacc := 'C';

//    case ACCTYPE when 'B' then 'Broker' when 'K' then 'Clearing House' when 'I' then 'Institution' when 'N' then 'Retail' end ACCTYPE
      if iAcctype = 'Broker' then iAcctype := 'B'
      else if iAcctype = 'Clearing House' then iAcctype := 'K'
      else if iAcctype = 'Institution' then iAcctype := 'I'
      else if iAcctype = 'Retail' then iAcctype := 'N';

      cdsCashOutstanding.Close;
      cdsCashOutstanding.Params[0].AsInteger  := iAccID;
      cdsCashOutstanding.Params[1].AsString   := iCcy;
      cdsCashOutstanding.Params[2].AsInteger  := iBoardid;
      cdsCashOutstanding.Params[3].AsString   := iSideacc;
      cdsCashOutstanding.Params[4].AsString   := iAcctype;
      cdsCashOutstanding.Open;

      oForm.ShowModal;
      oForm.Free;
    end;
  end;
end;

procedure TfrmReportARAPNettingHistory.cdsARAPNettingCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsARAPNettingARTotal.AsFloat := cdsARAPNettingART0.AsFloat + cdsARAPNettingART1.AsFloat + cdsARAPNettingART2.AsFloat;
  cdsARAPNettingAPTotal.AsFloat := cdsARAPNettingAPT0.AsFloat + cdsARAPNettingAPT1.AsFloat + cdsARAPNettingAPT2.AsFloat;
end;

procedure TfrmReportARAPNettingHistory.cdsARAPNettingDetailCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsARAPNettingDetailARTotal.AsFloat := cdsARAPNettingDetailART0.AsFloat + cdsARAPNettingDetailART1.AsFloat + cdsARAPNettingDetailART2.AsFloat;
  cdsARAPNettingDetailAPTotal.AsFloat := cdsARAPNettingDetailAPT0.AsFloat + cdsARAPNettingDetailAPT1.AsFloat + cdsARAPNettingDetailAPT2.AsFloat;
end;

procedure TfrmReportARAPNettingHistory.cdsCashOutstandingCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsCashOutstandingOUTSTANDAMT.AsFloat := cdsCashOutstandingSETTLE_NETAMT.AsFloat
  - cdsCashOutstandingSETTLED_AMT.AsFloat - cdsCashOutstandingVOUCHERAMT.AsFloat;

  if cdsCashOutstandingSETTLE_SIDE.AsString = 'P' then
  begin
    cdsCashOutstandingOUTSTANDAMT_X.AsFloat := cdsCashOutstandingOUTSTANDAMT.AsFloat * -1;
    cdsCashOutstandingPROCESSAMT_X.AsFloat := cdsCashOutstandingPROCESSAMT.AsFloat * -1;

    cdsCashOutstandingAP.AsFloat := cdsCashOutstandingOUTSTANDAMT.AsFloat;
    cdsCashOutstandingAR.AsFloat := 0 ;
  end
  else
  begin
    cdsCashOutstandingOUTSTANDAMT_X.AsFloat := cdsCashOutstandingOUTSTANDAMT.AsFloat;
    cdsCashOutstandingPROCESSAMT_X.AsFloat := cdsCashOutstandingPROCESSAMT.AsFloat;

    cdsCashOutstandingAP.AsFloat := 0;
    cdsCashOutstandingAR.AsFloat := cdsCashOutstandingOUTSTANDAMT.AsFloat ;
  end;


  if cdsCashOutstandingACCTYPE.AsString = 'B' then cdsCashOutstandingACC_TYPE.AsString := 'Broker'
  else if cdsCashOutstandingACCTYPE.AsString = 'K' then cdsCashOutstandingACC_TYPE.AsString := 'Clearing House'
  else if cdsCashOutstandingACCTYPE.AsString = 'I' then cdsCashOutstandingACC_TYPE.AsString := 'Institution'
  else if cdsCashOutstandingACCTYPE.AsString = 'N' then cdsCashOutstandingACC_TYPE.AsString := 'Retail';

end;

procedure TfrmReportARAPNettingHistory.FormShow(Sender: TObject);
begin
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;

  RefreshData;
end;

procedure TfrmReportARAPNettingHistory.RefreshData;
begin
  cdsARAPNetting.Close;
  cdsARAPNetting.Params[0].AsDate := VarToDateTime(dtReport.EditValue);
  cdsARAPNetting.Open;

  cdsARAPNettingDetail.Close;
  cdsARAPNettingDetail.Params[0].AsDate := VarToDateTime(dtReport.EditValue);
  cdsARAPNettingDetail.Open;

  gvwMasterART0.Caption := FormatDateTime('dd MMM yyyy', VarToDateTime(dtReport.EditValue));
  gvwMasterART1.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-1));
  gvwMasterART2.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-2));

  gvwMasterAPT0.Caption := FormatDateTime('dd MMM yyyy', VarToDateTime(dtReport.EditValue)); //dmGlobal.RemoteServer.GetTransDate);
  gvwMasterAPT1.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-1));
  gvwMasterAPT2.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-2));

  gvwMaster2ART0.Caption := FormatDateTime('dd MMM yyyy', VarToDateTime(dtReport.EditValue)); //dmGlobal.RemoteServer.GetTransDate);
  gvwMaster2ART1.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-1));
  gvwMaster2ART2.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-2));

  gvwMaster2APT0.Caption := FormatDateTime('dd MMM yyyy', VarToDateTime(dtReport.EditValue)); //dmGlobal.RemoteServer.GetTransDate);
  gvwMaster2APT1.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-1));
  gvwMaster2APT2.Caption := FormatDateTime('dd MMM yyyy', dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(VarToDateTime(dtReport.EditValue)),-2));
  inherited;

  with dmglobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.Open;
  end;

  gvwMaster.DataController.Groups.FullExpand;
  gvwMaster2.DataController.Groups.FullExpand;

  //gvwMaster.ApplyBestFit();
  //gvwMaster2.ApplyBestFit();
end;

end.
