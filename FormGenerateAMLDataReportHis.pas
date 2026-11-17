unit FormGenerateAMLDataReportHis;

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
  TfrmGenerateAMLDataReportHis = class(TfrmBrowseData)
    cdsBrowseData: TNClientDataset;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    cdsBrowseDataGENERATEDATE: TDateField;
    cdsBrowseDataGEN_REPORTDATE_START: TDateTimeField;
    cdsBrowseDataGEN_REPORTDATE_END: TDateTimeField;
    cdsBrowseDataGENERATEBY: TStringField;
    cdsBrowseDataGEN_REPORTSTATUS: TStringField;
    cdsBrowseDataFAILDESC: TMemoField;
    cdsBrowseDataREPORT_VLD: TDateTimeField;
    cdsBrowseDataVALIDATEBY: TStringField;
    gvwMasterGENERATEDATE: TcxGridDBBandedColumn;
    gvwMasterGEN_REPORTDATE_START: TcxGridDBBandedColumn;
    gvwMasterGEN_REPORTDATE_END: TcxGridDBBandedColumn;
    gvwMasterGENERATEBY: TcxGridDBBandedColumn;
    gvwMasterGEN_REPORTSTATUS: TcxGridDBBandedColumn;
    gvwMasterFAILDESC: TcxGridDBBandedColumn;
    gvwMasterREPORT_VLD: TcxGridDBBandedColumn;
    gvwMasterVALIDATEBY: TcxGridDBBandedColumn;
    cdsValidateHis: TNClientDataset;
    cdsValidateHisREPORTDATE: TDateField;
    cdsValidateHisREPORT_VLD: TDateTimeField;
    cdsValidateHisUSERID: TStringField;
    cdsValidateHisGEN_REPORTDATE_START: TDateTimeField;
    actValidateReport: TNAction;
    dxBarButton1: TdxBarButton;
    ValidateReport1: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actValidateReportExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerateAMLDataReportHis: TfrmGenerateAMLDataReportHis;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGenerateAMLDataReportHis.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsBrowseData.Close;
  cdsBrowseData.Params[0].AsDate := VarToDateTime(dtStart.EditValue);
  cdsBrowseData.Params[1].AsDate := VarToDateTime(dtEnd.EditValue);
  cdsBrowseData.Open;

  cdsValidateHis.Close;
  cdsValidateHis.Open;

end;

procedure TfrmGenerateAMLDataReportHis.actValidateReportExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Valid Report ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if cdsBrowseData.IsEmpty then
      MessageError('There is no data can be validate')
    else
    begin
      if cdsBrowseDataVALIDATEBY.AsString <> '' then
        MessageError('Generate report has been validated by '+ cdsBrowseDataVALIDATEBY.AsString+' at '+FormatDateTime('dd mmm yyyy hh:nn:ss.zzz', cdsBrowseDataREPORT_VLD.AsDateTime))
      else if UpperCase(cdsBrowseDataGEN_REPORTSTATUS.AsString) = 'FAIL' then
        MessageError('Can not validate failed generate report')
      else
      begin
        cdsValidateHis.Append;
        cdsValidateHisREPORTDATE.AsDateTime           := Now;
        cdsValidateHisREPORT_VLD.AsDateTime           := Now;
        cdsValidateHisUSERID.AsString                 := dmGlobal.UserID;
        cdsValidateHisGEN_REPORTDATE_START.AsDateTime := cdsBrowseDataGEN_REPORTDATE_START.AsDateTime;
        cdsValidateHis.Post;
        cdsValidateHis.ApplyUpdates(-1);

        MessageDlg('Report has been validate by user '+ dmGlobal.UserID, mtInformation, [mbOk], 0);

        actRefresh.Execute;
      end;
    end;
  end;
end;

procedure TfrmGenerateAMLDataReportHis.FormCreate(Sender: TObject);
begin
  inherited;
  dtStart.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEnd.EditValue   := dtStart.EditValue;
end;

end.
