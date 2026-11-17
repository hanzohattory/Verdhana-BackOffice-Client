unit FormGenerateAMLDataReport;

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
  NClientDataset, cxCalendar, cxBarEditItem, Vcl.ExtCtrls, cxTextEdit,
  dxLayoutContainer, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridViewLayoutContainer, dxDateTimeWheelPicker,
  cxButtonEdit, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmGenerateAMLDataReport = class(TfrmBrowseData)
    cdsBrowseData: TNClientDataset;
    dxBarButton1: TdxBarButton;
    actGenerateReport: TNAction;
    dtReport: TcxBarEditItem;
    gvwMasterREPORTDATE: TcxGridDBBandedColumn;
    gvwMasterTRANSFERDATE_START: TcxGridDBBandedColumn;
    gvwMasterTRANSFERDATE_END: TcxGridDBBandedColumn;
    gvwMasterREPORTDATE_1: TcxGridDBBandedColumn;
    gvwMasterGEN_REPORTDATE_START: TcxGridDBBandedColumn;
    gvwMasterGEN_REPORTDATE_END: TcxGridDBBandedColumn;
    gvwMasterGEN_REPORTSTATUS: TcxGridDBBandedColumn;
    gvwMasterFAILDESC: TcxGridDBBandedColumn;
    gvwMasterREPORTDATE_2: TcxGridDBBandedColumn;
    gvwMasterREPORT_VLD: TcxGridDBBandedColumn;
    gvwMasterUSERID: TcxGridDBBandedColumn;
    cdsValidate: TNClientDataset;
    cdsValidateREPORTDATE: TDateField;
    cdsValidateREPORT_VLD: TDateTimeField;
    actValidateReport: TNAction;
    cdsValidateHis: TNClientDataset;
    ValidateTransferReport1: TMenuItem;
    cdsValidateUSERID: TStringField;
    cdsValidateHisREPORTDATE: TDateField;
    cdsValidateHisREPORT_VLD: TDateTimeField;
    cdsValidateHisUSERID: TStringField;
    edWait: TcxBarEditItem;
    grdMasterDBLayoutView1Group_Root: TdxLayoutGroup;
    grdMasterDBLayoutView1: TcxGridDBLayoutView;
    grdMasterDBLayoutView1Group2: TdxLayoutGroup;
    grdMasterDBLayoutView1Group3: TdxLayoutGroup;
    dxBarButton2: TdxBarButton;
    cdsValidateHisGEN_REPORTDATE_START: TDateTimeField;
    cdsValidateGEN_REPORTDATE_START: TDateTimeField;
    cdsBrowseDataGENERATEDATE: TDateField;
    cdsBrowseDataGEN_REPORTDATE_START: TDateTimeField;
    cdsBrowseDataGEN_REPORTDATE_END: TDateTimeField;
    cdsBrowseDataGENERATEBY: TStringField;
    cdsBrowseDataGEN_REPORTSTATUS: TStringField;
    cdsBrowseDataFAILDESC: TMemoField;
    cdsBrowseDataREPORT_VLD: TDateTimeField;
    cdsBrowseDataVALIDATEBY: TStringField;
    grdMasterDBLayoutView1LayoutItem4: TcxGridLayoutItem;
    grdMasterDBLayoutView1GENERATEDATE: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem5: TcxGridLayoutItem;
    grdMasterDBLayoutView1GEN_REPORTDATE_START: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem6: TcxGridLayoutItem;
    grdMasterDBLayoutView1GEN_REPORTDATE_END: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem7: TcxGridLayoutItem;
    grdMasterDBLayoutView1GENERATEBY: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem8: TcxGridLayoutItem;
    grdMasterDBLayoutView1GEN_REPORTSTATUS: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem9: TcxGridLayoutItem;
    grdMasterDBLayoutView1FAILDESC: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem10: TcxGridLayoutItem;
    grdMasterDBLayoutView1REPORT_VLD: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1LayoutItem11: TcxGridLayoutItem;
    grdMasterDBLayoutView1VALIDATEBY: TcxGridDBLayoutViewItem;
    grdMasterDBLayoutView1Group4: TdxLayoutAutoCreatedGroup;
    grdMasterDBLayoutView1Group5: TdxLayoutAutoCreatedGroup;
    procedure actRefreshExecute(Sender: TObject);
    procedure actGenerateReportExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actValidateReportExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fSysdate: TDateTime;

    dTransferDate: TDateTime;
  public
    { Public declarations }
  end;

var
  frmGenerateAMLDataReport: TfrmGenerateAMLDataReport;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGenerateAMLDataReport.actGenerateReportExecute(Sender: TObject);
var
  sMsg: string;
  bCon: Boolean;
begin
  inherited;
  bCon := False;

  if MessageQuestion('Generate Data AML Report ?') then
  begin
    if cdsBrowseDataVALIDATEBY.AsString <> '' then
        MessageError('This report has been validate by '+cdsBrowseDataVALIDATEBY.AsString+#13+
          'Can not be regenerate, please contact admin')
    else if UpperCase(cdsBrowseDataGEN_REPORTSTATUS.AsString) = 'DONE' then
    begin
      if MessageQuestion('Generate status has been done, regenerate report ?') then
        bCon := True;
    end
    else
      bCon := True;

    if bCon then
    begin
      edWait.Visible := ivAlways;
      Cursor         := crHourGlass;

      Application.ProcessMessages;
      dmGlobal.RemoteServer.GenerateAMLReport(fSysdate, sMsg);

      edWait.Visible := ivNever;
      Cursor         := crDefault;
      MessageDlg(sMsg, mtInformation, [mbOk], 0);

      actRefresh.Execute;
    end;
  end;
end;

procedure TfrmGenerateAMLDataReport.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsBrowseData.Close;
  cdsBrowseData.Open;

  cdsValidate.Close;
  cdsValidate.Open;

  cdsValidateHis.Close;
  cdsValidateHis.Open;

end;

procedure TfrmGenerateAMLDataReport.actValidateReportExecute(Sender: TObject);
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
      else
      begin
        if not cdsValidate.IsEmpty then
        begin
          cdsValidate.Edit;
          cdsValidateREPORT_VLD.AsDateTime           := Now;
          cdsValidateUSERID.AsString                 := dmGlobal.UserID;
          cdsValidateGEN_REPORTDATE_START.AsDateTime := cdsBrowseDataGEN_REPORTDATE_START.AsDateTime;
          cdsValidate.Post;
        end
        else
        begin
          cdsValidate.Append;
          cdsValidateREPORTDATE.AsDateTime           := dmGlobal.RemoteServer.GetTransDate;
          cdsValidateREPORT_VLD.AsDateTime           := Now;
          cdsValidateUSERID.AsString                 := dmGlobal.UserID;
          cdsValidateGEN_REPORTDATE_START.AsDateTime := cdsBrowseDataGEN_REPORTDATE_START.AsDateTime;
          cdsValidate.Post;
        end;

        cdsValidateHis.Append;
        cdsValidateHisREPORTDATE.AsDateTime           := cdsValidateREPORTDATE.AsDateTime;
        cdsValidateHisREPORT_VLD.AsDateTime           := cdsValidateREPORT_VLD.AsDateTime;
        cdsValidateHisUSERID.AsString                 := cdsValidateUSERID.AsString;
        cdsValidateHisGEN_REPORTDATE_START.AsDateTime := cdsValidateGEN_REPORTDATE_START.AsDateTime;
        cdsValidateHis.Post;

        cdsValidate.ApplyUpdates(-1);
        cdsValidateHis.ApplyUpdates(-1);

        MessageDlg('Report has been validate by user '+ dmGlobal.UserID, mtInformation, [mbOk], 0);

        actRefresh.Execute;
      end;
    end;
  end;
end;

procedure TfrmGenerateAMLDataReport.FormCreate(Sender: TObject);
begin
  inherited;
  fSysdate := dmGlobal.RemoteServer.GetTransDate;
  actRefresh.Execute;
end;

procedure TfrmGenerateAMLDataReport.FormShow(Sender: TObject);
begin
  inherited;
  edWait.Visible := ivNever;
end;

end.
