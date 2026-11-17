unit FormBrowseDataWithPages;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, NDatasetContainer,
  NDatasetAction, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxBar, cxClasses, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, NDatasetGeneral,
  dxSkinsCore, NReportRPC, LMDDckSite, cxImageComboBox, cxLabel, cxTextEdit,
  cxBarEditItem, cxCalendar, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxFilterControl, Vcl.ExtCtrls,
  NReportClient, Datasnap.DBClient, NClientDataset, ClassGeneral,
  ClassClientConst, System.Actions, System.ImageList, dxDateRanges;

type
  TKeyFields = array of TField;

  TfrmBrowseDataWithPages = class(TfrmBasic)
    PropStore: TcxPropertiesStore;
    imlBrowse: TImageList;
    PrintComp: TdxComponentPrinter;
    PrintCompMainGrid: TdxGridReportLink;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    popMaster: TPopupMenu;
    N2: TMenuItem;
    View1: TMenuItem;
    actPrint1: TMenuItem;
    N3: TMenuItem;
    Insert1: TMenuItem;
    Edit1: TMenuItem;
    Delete1: TMenuItem;
    N4: TMenuItem;
    Refresh1: TMenuItem;
    CustomizeColumn2: TMenuItem;
    dsBrowseMaster: TDataSource;
    aclEditor: TActionList;
    actCustomize: TNAction;
    actSaveView: TNAction;
    actSaveGridView: TNAction;
    actPrint: TNAction;
    actView: TNAction;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuInsertNew: TdxBarButton;
    mnuEdit: TdxBarButton;
    mnuDelete: TdxBarButton;
    mnuPrint: TdxBarButton;
    mnuRefresh: TdxBarButton;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    DataContainer: TNMasterDetailData;
    mnuInsert: TdxBarSubItem;
    Insert2: TMenuItem;
    CopyFromSelectedData1: TMenuItem;
    mnuInsertCopyFromSelected: TdxBarButton;
    actApprove: TNAction;
    actReject: TNAction;
    mnuCustomFilter: TdxBarButton;
    actCustomizeFilter: TNAction;
    CustomizeFilter1: TMenuItem;
    ReportContainer: TNClientReportContainer;
    actViewAuditLog: TNAction;
    actViewAuditLogForm: TNAction;
    actOpen: TNAction;
    actNew: TNAction;
    actEdit: TNAction;
    actDelete: TNAction;
    actRefresh: TNAction;
    actCancel: TNAction;
    actInsertFromCurrentData: TNAction;
    ViewAuditLog1: TMenuItem;
    ViewAuditLogForm1: TMenuItem;
    actSaveGridExcel: TNAction;
    SaveDlg: TSaveDialog;
    SaveGridtoExcel1: TMenuItem;
    BarMBrowseBar3: TdxBar;
    procedure FormShow(Sender: TObject);
    procedure DataContainerGetUserID(var AUserID: string);
    procedure DataContainerAfterCreateEditorForm(AForm: TForm);
    procedure DataContainerGetServerDateTime(var AServerDateTime: TDateTime);
    procedure DataContainerGetSequence(ATableName: string;
      var ASeqNumber: Int64);
    procedure DataContainerCancelSequence(ATableName: string;
      ASeqNumber: Int64);
    procedure actInsertFromCurrentDataExecute(Sender: TObject);
    procedure actInsertFromCurrentDataUpdate(Sender: TObject);
    procedure actViewUpdate(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure actApproveUpdate(Sender: TObject);
    procedure actRejectUpdate(Sender: TObject);
    procedure DataContainerStartTransaction(Sender: TNMasterDetailData);
    procedure DataContainerCommitTransaction(Sender: TNMasterDetailData);
    procedure DataContainerRollbackTransaction(Sender: TNMasterDetailData);
    procedure FormCreate(Sender: TObject);
    procedure actCustomizeExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPrintExecute(Sender: TObject);
    procedure actOpenLog(var sAdditionalInfo: string);
    procedure gvwMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grdMasterEnter(Sender: TObject);
    procedure actCustomizeFilterExecute(Sender: TObject);
    procedure DataContainerAfterOpenEditorDataset(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure DataContainerAfterDestroyEditorForm(Sender: TNMasterDetailData);
    procedure actViewAuditLogExecute(Sender: TObject);
    procedure actViewAuditLogFormExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actSaveGridExcelExecute(Sender: TObject);
    procedure actPrintUpdate(Sender: TObject);
  private
    { Private declarations }
    FActiveGridTableView: TcxCustomGridTableView;
    FEditorForm: TForm;
    FKeyField: TField;
    FKeyFields: TKeyFields;
    FRecordCountCreated: Boolean;
    FDataSetBeforeClose: TDataSetNotifyEvent;
    FDataSetAfterOpen: TDataSetNotifyEvent;
    FDataSetActive: Boolean;
    FDataSetBookMark: TBookMark;
    FDataSetRecNo: Integer;
    procedure SetDataContainerTableNameProperty(ADataContainer: TNMasterDetailData);
    procedure DatasetBeforeClose(DataSet: TDataSet);
    procedure DatasetAfterOpen(DataSet: TDataSet);
  public
    { Public declarations }
    property ActiveGridTableView: TcxCustomGridTableView read FActiveGridTableView write FActiveGridTableView;
    property EditorForm: Tform read FEditorForm write FEditorForm;
    property KeyField: TField read FKeyField write FKeyField default Nil;
    property KeyFields: TKeyFields read FKeyFields write FKeyFields;

    procedure SetKeyFieldsLength(n: Integer);

    function GetEditorKey: String;
  end;

var
  frmBrowseDataWithPages: TfrmBrowseDataWithPages;

implementation

{$R *.dfm}

uses DataGlobal, FormEditorData, FormFilterInput, FormAuditLog, cxGridExportLink;

procedure TfrmBrowseDataWithPages.actApproveUpdate(Sender: TObject);
begin
  inherited;
//
//  if DataContainer.Control4Eyes then
//  begin
//    if Assigned(DataContainer.ListDataset) and Assigned(DataContainer.MasterDataset) and
//      Assigned(DataContainer.ListDatasetUpd) and Assigned(DataContainer.MasterDatasetUpd) then
//    begin
//      actApprove.Enabled := (DataContainer.ListDatasetUpd.Active) and (not DataContainer.ListDatasetUpd.IsEmpty);
//    end
//    else actApprove.Enabled := False;
//  end
//  else
//    actApprove.Enabled := False;

end;

procedure TfrmBrowseDataWithPages.actCancelExecute(Sender: TObject);
var
  oFormClass: TNFormClass;
  sKey: String;
begin
  inherited;
//  if DataContainer.Control4Eyes then
//    DataContainer.Cancel
//  else
  begin
    oFormClass := Nil;
    if Assigned(DataContainer.OnGetEditorClass) then
    begin
      DataContainer.OnGetEditorClass(oFormClass);
    end;

    if (oFormClass <> Nil) then
    begin
      if oFormClass.InheritsFrom(TfrmEditorData) then
      begin
        sKey := GetEditorKey;
        dmGlobal.ShowEditorForm(TFormEditorClass(oFormClass), sKey, pkCancel);
      end;
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actCustomizeExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.Controller.Customization := True;
end;

procedure TfrmBrowseDataWithPages.actCustomizeFilterExecute(Sender: TObject);
begin
  inherited;
  ActiveGridTableView.Filtering.RunCustomizeDialog();
end;

procedure TfrmBrowseDataWithPages.actDeleteExecute(Sender: TObject);
var
  oFormClass: TNFormClass;
  sKey: String;
begin
  inherited;
//  if DataContainer.Control4Eyes then
//    DataContainer.Delete
//  else
  begin
    oFormClass := Nil;
    if Assigned(DataContainer.OnGetEditorClass) then
    begin
      DataContainer.OnGetEditorClass(oFormClass);
    end;

    if (oFormClass <> Nil) then
    begin
      if oFormClass.InheritsFrom(TfrmEditorData) then
      begin
        sKey := GetEditorKey;
        dmGlobal.ShowEditorForm(TFormEditorClass(oFormClass), sKey, pkDelete);
      end;
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actEditExecute(Sender: TObject);
var
  oFormClass: TNFormClass;
  sKey: String;
  bMark: TBookMark;
begin
  inherited;
//  if DataContainer.Control4Eyes then
//    DataContainer.Edit
//  else
  begin
    oFormClass := Nil;
    if Assigned(DataContainer.OnGetEditorClass) then
    begin
      DataContainer.OnGetEditorClass(oFormClass);
    end;

    if (oFormClass <> Nil) then
    begin
      if oFormClass.InheritsFrom(TfrmEditorData) then
      begin
        sKey := GetEditorKey;
        if dmGlobal.ShowEditorForm(TFormEditorClass(oFormClass), sKey, pkUpdate) = mrOk then
        Begin
          bMark := dsBrowseMaster.DataSet.GetBookmark;
          Try
            dsBrowseMaster.DataSet.Close;
            dsBrowseMaster.DataSet.Open;
          Finally
            dsBrowseMaster.DataSet.GotoBookmark(bMark);
          End;
        End;
      end;
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actInsertFromCurrentDataExecute(Sender: TObject);
var
  oFormClass: TNFormClass;
  sKey: String;
begin
  inherited;
//  if DataContainer.Control4Eyes then
//    DataContainer.InsertFromCurrentData
//  else
  begin
    oFormClass := Nil;
    if Assigned(DataContainer.OnGetEditorClass) then
    begin
      DataContainer.OnGetEditorClass(oFormClass);
    end;

    if (oFormClass <> Nil) then
    begin
      if oFormClass.InheritsFrom(TfrmEditorData) then
      begin
        sKey := GetEditorKey;
        if dmGlobal.ShowEditorForm(TFormEditorClass(oFormClass), sKey, pkCreate) = mrOk then
        Begin
          if dsBrowseMaster.DataSet.Active then
          begin
            dsBrowseMaster.DataSet.Close;
            dsBrowseMaster.DataSet.Open;
          end;
        End;
      end;
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actInsertFromCurrentDataUpdate(Sender: TObject);
begin
  inherited;
  actInsertFromCurrentData.Enabled := (not DataContainer.ListDataset.IsEmpty);
end;

procedure TfrmBrowseDataWithPages.actNewExecute(Sender: TObject);
var
  oFormClass: TNFormClass;
  sKey: String;
begin
  inherited;
//  if DataContainer.Control4Eyes then
//    DataContainer.Insert
//  else
  begin
    oFormClass := Nil;
    if Assigned(DataContainer.OnGetEditorClass) then
    begin
      DataContainer.OnGetEditorClass(oFormClass);
    end;

    if (oFormClass <> Nil) then
    begin
      if oFormClass.InheritsFrom(TfrmEditorData) then
      begin
        sKey := '';
        if dmGlobal.ShowEditorForm(TFormEditorClass(oFormClass), sKey, pkCreate) = mrOk then
        Begin
          if dsBrowseMaster.DataSet.Active then
          Begin
            dsBrowseMaster.DataSet.Close;
            dsBrowseMaster.DataSet.Open;
          End;
        End;
      end;
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actOpenExecute(Sender: TObject);
var
  oFormClass: TNFormClass;
  sKey: String;
begin
  inherited;
//  DataContainer.Open;
  oFormClass := Nil;
  if Assigned(DataContainer.OnGetEditorClass) then
  begin
    DataContainer.OnGetEditorClass(oFormClass);
  end;

  if (oFormClass <> Nil) then
  begin
    if oFormClass.InheritsFrom(TfrmEditorData) then
    begin
      sKey := GetEditorKey;
      dmGlobal.ShowEditorForm(TFormEditorClass(oFormClass), sKey, pkRead);
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actOpenLog(var sAdditionalInfo: string);
var
  i: Integer;
  oField: TField;
begin
  inherited;
  for i := 0 to DataContainer.MasterDataset.Params.Count - 1 do
  begin
    oField := DataContainer.ListDataset.FindField(DataContainer.MasterDataset.Params[i].Name);
    if (oField <> nil) then
    begin
      sAdditionalInfo := sAdditionalInfo + ' ' + DataContainer.MasterDataset.Params[i].Name;
      sAdditionalInfo := sAdditionalInfo + ': ' + oField.AsString;
      if (i < DataContainer.MasterDataset.Params.Count - 1) and (i <> 0) then
        sAdditionalInfo := sAdditionalInfo + ',';
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.PreviewReport;
end;

procedure TfrmBrowseDataWithPages.actPrintUpdate(Sender: TObject);
begin
  inherited;
  actPrint.Enabled := Trim(ReportContainer.ReportName) <> '';
  actPrint.Visible := actPrint.Enabled;
end;

procedure TfrmBrowseDataWithPages.actRefreshExecute(Sender: TObject);
begin
  inherited;
//  DataContainer.Refresh;
  if (dsBrowseMaster.DataSet <> Nil) then
  begin
    dsBrowseMaster.DataSet.Close;
    dsBrowseMaster.DataSet.Open;
  end;
end;

procedure TfrmBrowseDataWithPages.actRejectUpdate(Sender: TObject);
begin
  inherited;
//
//  if DataContainer.Control4Eyes then
//  begin
//    if Assigned(DataContainer.ListDataset) and Assigned(DataContainer.MasterDataset) and
//      Assigned(DataContainer.ListDatasetUpd) and Assigned(DataContainer.MasterDatasetUpd) then
//    begin
//      actReject.Enabled := (DataContainer.ListDatasetUpd.Active) and (not DataContainer.ListDatasetUpd.IsEmpty);
//    end
//    else actReject.Enabled := False;
//  end
//  else
//    actReject.Enabled := False;

end;

procedure TfrmBrowseDataWithPages.actSaveGridExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, grdMaster);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actViewAuditLogExecute(Sender: TObject);
//var
//  sCommandText: WideString;
begin
  inherited;
//  if DataContainer.ListDataset.FindField('ID') <> nil then
//  begin
//    if not DataContainer.ListDataset.FieldByName('ID').IsNull then
//    begin
//      sCommandText := 'Select * From ' + DataContainer.AuditTableName +
//        ' Where ID = ' + DataContainer.ListDataset.FieldByName('ID').AsString +
//        ' ORDER BY LOGID ';
//      frmAuditLog.Run(sCommandText);
//    end;
//  end;
end;

procedure TfrmBrowseDataWithPages.actViewAuditLogFormExecute(Sender: TObject);
var
  sCommandText: WideString;
  oForm: TForm;
  oFormClass: TNFormClass;
  bGetFormClass: Boolean;
  cdsAudit: TClientDataset;
  oField: TField;
  i: Integer;
begin
  inherited;
  if (DataContainer.ListDataset.FindField('ID') <> nil) then
  begin
    if not DataContainer.ListDataset.FieldByName('ID').IsNull then
    begin
      sCommandText := 'Select * From ' + DataContainer.AuditTableName +
        ' Where ID = ' + DataContainer.ListDataset.FieldByName('ID').AsString +
        ' ORDER BY LOGID ';

      bGetFormClass := False;
      if Assigned(DataContainer.OnGetEditorClass) then
      begin
        DataContainer.OnGetEditorClass(oFormClass);
        bGetFormClass := True;
      end;

      if bGetFormClass then
      begin
        oForm := oFormClass.Create(nil);
        cdsAudit := TClientDataSet.Create(nil);
        Try
          if oForm is TfrmEditorData then
          begin
            with TfrmEditorData(oForm) do
            begin
              cdsAudit.RemoteServer := dmGlobal.dspConnection;
              cdsAudit.ProviderName := 'dspGlobal';
              cdsAudit.Close;
              cdsAudit.CommandText := sCommandText;
              cdsAudit.Open;

              if not cdsAudit.IsEmpty then
              begin
                if Self.DataContainer.MasterDataset <> nil then
                begin
                  for i := 0 to cdsAudit.FieldCount - 1 do
                  begin
                    oField := Self.DataContainer.MasterDataset.FindField(cdsAudit.Fields[i].FieldName);
                    if (oField <> nil) then
                    begin
                      if oField is TNumericField then
                      begin
                        TNumericField(cdsAudit.Fields[i]).DisplayFormat := TNumericField(oField).DisplayFormat;
                      end
                      else if oField is TDateTimeField then
                      begin
                        TDateTimeField(cdsAudit.Fields[i]).DisplayFormat := TDateTimeField(oField).DisplayFormat;
                      end;

                    end;
                  end;
                end;

                dsSubject.DataSet := cdsAudit;
                cdsAudit.First;

                IsLogView := True;
                lcNavLog.Visible := True;
                tabEditorData.Visible := False;
                Height := Height - tabEditorData.Height;

                Caption := 'Audit Log ' + Caption;
                StatusBar.Panels[0].Text := 'Audit Log 1';
                StatusBar.Panels[1].Text := 'Modified by ' + cdsAudit.FieldByName('MODUI').AsString + ' @ ' +
                  FormatDateTime('dd MMM yyyy hh:nn:ss', cdsAudit.FieldByName('MODDA').AsDateTime);

                ShowModal;
              end
              else
              begin
                ShowMessage('Audit Log Data is Empty!');
              end;

            end;
          end;
        Finally
          FreeAndNil(cdsAudit);
          FreeAndNil(oForm);
        End;

      end;

    end;
  end;
end;

procedure TfrmBrowseDataWithPages.actViewExecute(Sender: TObject);
begin
  inherited;
  DataContainer.View4EyesData;
end;

procedure TfrmBrowseDataWithPages.actViewUpdate(Sender: TObject);
begin
  inherited;
//  actView.Enabled := (DataContainer.Control4Eyes) and
//    (DataContainer.ListDatasetUpd.Active) and
//    (not DataContainer.ListDatasetUpd.IsEmpty);
end;

procedure TfrmBrowseDataWithPages.DataContainerAfterCreateEditorForm(AForm: TForm);
begin
  inherited;
  TfrmEditorData(AForm).DataContainer := DataContainer;
  TfrmEditorData(AForm).BrowserForm := Self;
end;

procedure TfrmBrowseDataWithPages.DataContainerAfterDestroyEditorForm(
  Sender: TNMasterDetailData);
begin
  inherited;
  if Sender.State in [mddsEdit, mddsDelete, mddsApprove, mddsReject, mddsCancel] then
  begin
    dmGlobal.RemoteServer.FinishEditTable(Sender.MasterTableName, Sender.DataTableKey);
  end;
end;

procedure TfrmBrowseDataWithPages.DataContainerAfterOpenEditorDataset(
  Sender: TNMasterDetailData; var AContinue: Boolean);
var
  sUserID, sIPAddress, sCompName, sMsg: String;
  editDate: TDateTime;
  i: Integer;
begin
  inherited;
  if Sender.State in [mddsEdit, mddsDelete, mddsApprove, mddsReject, mddsCancel] then
  begin

    editDate := Now;
    if not dmGlobal.RemoteServer.StartEditTable(Sender.MasterTableName, Sender.DataTableKey, sUserID, sIPAddress, sCompName, editDate) then
    begin
      AContinue := False;
      sMsg := 'You can''t changes this Data! Key: ' + QuotedStr(Sender.DataTableKey) + #13;
      sMsg := sMsg + 'This data is currently editing by ' + sUserID + ' from computer ' + sCompName + ' since ' + FormatDateTime('dd MMM yyyy hh:nn:ss.zzz', editDate);
      ShowMessage(sMsg);
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.DataContainerCancelSequence(ATableName: string;
  ASeqNumber: Int64);
begin
  inherited;
  dmGlobal.RemoteServer.CancelSeq(ATableName, ASeqNumber);
end;

procedure TfrmBrowseDataWithPages.DataContainerCommitTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.CommitTransaction;
end;

procedure TfrmBrowseDataWithPages.DataContainerGetSequence(ATableName: string;
  var ASeqNumber: Int64);
var
  iSeq: Int64;
begin
  inherited;
  iSeq := dmGlobal.RemoteServer.GetSeq(ATableName);
  ASeqNumber := iSeq;
end;

procedure TfrmBrowseDataWithPages.DataContainerGetServerDateTime(
  var AServerDateTime: TDateTime);
var
  floatDate: Double;
begin
  inherited;
  floatDate := dmGlobal.RemoteServer.GetServerTimeStamp;
  AServerDateTime := FloatToDateTime(floatDate);
end;

procedure TfrmBrowseDataWithPages.DataContainerGetUserID(var AUserID: string);
begin
  inherited;
  AUserID := dmGlobal.UserID;
end;

procedure TfrmBrowseDataWithPages.DataContainerRollbackTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.RollbackTransaction;
end;

procedure TfrmBrowseDataWithPages.DataContainerStartTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.StartTransaction;
end;

procedure TfrmBrowseDataWithPages.DatasetAfterOpen(DataSet: TDataSet);
begin
  if FDataSetActive then
  begin
    if FDataSetRecNo <= DataSet.RecordCount then
    begin
      DataSet.GotoBookmark(FDataSetBookMark);
    end;
  end;

  if Assigned(FDataSetAfterOpen) then
  begin
    FDataSetAfterOpen(DataSet);
  end;
end;

procedure TfrmBrowseDataWithPages.DatasetBeforeClose(DataSet: TDataSet);
begin
  FDataSetActive := DataSet.Active;

  if FDataSetActive then
  begin
    FDataSetBookMark := DataSet.GetBookmark;
    FDataSetRecNo := DataSet.RecNo;
  end;

  if Assigned(FDataSetBeforeClose) then
  begin
    FDataSetBeforeClose(DataSet);
  end;
end;

procedure TfrmBrowseDataWithPages.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  gvwMaster.Controller.Customization := False;
end;

procedure TfrmBrowseDataWithPages.FormCreate(Sender: TObject);
var
  oDataset: TDataset;
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;
  iRowPerPage: Integer;

  procedure SetDisplayFormat(ADataset: TDataset);
  var
    oField: TField;
  begin
    if ADataset <> nil then
    begin
      oField := ADataset.FindField(CONT_FIELD_MODDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;

      oField := ADataset.FindField(CONT_FIELD_APPDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;

      oField := ADataset.FindField(CONT_FIELD_EDIT4YDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;

      oField := ADataset.FindField(CONT_FIELD_UNDER4YDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;
    end;
  end;

begin
  inherited;
  //Paging grid
  iRowPerPage := dmGlobal.RemoteServer.GetGlobalParamInteger('040');

  gvwMaster.DataController.DataModeController.GridMode            := True;
  gvwMaster.DataController.DataModeController.GridModeBufferCount := iRowPerPage;

  FRecordCountCreated := False;
  //New Framework Model 20160430
  if (Assigned(DataContainer.MasterDataset)) And (DataContainer.MasterDataset is TNClientDataset) then
  begin
    TNClientDataset(DataContainer.MasterDataset).Control4Eyes := DataContainer.Control4Eyes;
  end;

  ActiveGridTableView := gvwMaster;

  dmGlobal.SetActionDescription(aclEditor);

  oDataset := dsBrowseMaster.DataSet;
  if oDataset <> Nil then
  begin
    //Sisipin perintah event before close
    if Assigned(oDataset.BeforeClose) then
    begin
      FDataSetBeforeClose := oDataset.BeforeClose;
    end
    else
    begin
      FDataSetBeforeClose := Nil;
    end;

    oDataset.BeforeClose := DatasetBeforeClose;

    //Sisipin perintah event after open
    if Assigned(oDataset.AfterOpen) then
    begin
      FDataSetAfterOpen := oDataset.AfterOpen;
    end
    else
    begin
      FDataSetAfterOpen := Nil;
    end;

    oDataset.AfterOpen := DatasetAfterOpen;
  end;

  if ReportContainer.Params.FindParam('USERID') = Nil then
  begin
    with ReportContainer.Params.AddParameter do
    begin
      Name := 'USERID';
      ParamType := ptInput;
      DataType := ftString;
      Value := dmGlobal.UserID;
    end;
  end;

  {
  oDataset := DataContainer.ListDataset;
  if oDataset <> nil then
  begin
    SetDisplayFormat(oDataset);
  end;

  oDataset := DataContainer.ListDatasetUpd;
  if oDataset <> nil then
  begin
    SetDisplayFormat(oDataset);
  end;

  oDataset := DataContainer.ListDatasetDel;
  if oDataset <> nil then
  begin
    SetDisplayFormat(oDataset);
  end;
  }

  if gvwMaster.Tag = 0 then
  begin
    for i := 0 to gvwMaster.ColumnCount - 1 do
    begin
      oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
      oPropStoreComponenItem.Component := gvwMaster.Columns[i];
      oPropStoreComponenItem.Properties.Add('GroupIndex');
      oPropStoreComponenItem.Properties.Add('Position.ColIndex');
      oPropStoreComponenItem.Properties.Add('Visible');
      oPropStoreComponenItem.Properties.Add('Width');
    end;

    with dmGlobal do
    begin
      OpenUserLayout(Self.Name);

      if cdsUserLayout.IsEmpty then
        exit;

      LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmRead);
      Try
        PropStore.StorageStream := LayoutStream;
        PropStore.RestoreFrom;
      Finally
        if Assigned(LayoutStream) then
          FreeAndNil(LayoutStream);
      End;
    end;
  end;

  SetDataContainerTableNameProperty(DataContainer);
end;

procedure TfrmBrowseDataWithPages.FormDestroy(Sender: TObject);
var
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;
begin
  if gvwMaster.Tag = 0 then
  begin
    for i := 0 to gvwMaster.ColumnCount - 1 do
    begin
      oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
      oPropStoreComponenItem.Component := gvwMaster.Columns[i];
      oPropStoreComponenItem.Properties.Add('GroupIndex');
      oPropStoreComponenItem.Properties.Add('Position.ColIndex');
      oPropStoreComponenItem.Properties.Add('Visible');
      oPropStoreComponenItem.Properties.Add('Width');
    end;

    with dmGlobal do
    begin
      OpenUserLayout(Self.Name);

      if cdsUserLayout.isEmpty then
        cdsUserLayout.Append
      else
        cdsUserLayout.Edit;

      LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmReadWrite);
      Try
        PropStore.StorageStream := LayoutStream;
        PropStore.StoreTo();
        cdsUserLayoutFORMNAME.AsString := Self.Name;
        cdsUserLayoutLAYOUTSETTING.LoadFromStream(LayoutStream);
        cdsUserLayout.Post;
      Finally
        if Assigned(LayoutStream) then
          FreeAndNil(LayoutStream);
      End;
    end;
  end;

  inherited;
end;

procedure TfrmBrowseDataWithPages.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if Key = VK_F10 then
//  begin
//    ShowMessage('Screen.ActiveForm.ActiveControl.Name: ' + Screen.ActiveForm.ActiveControl.Name);
//  end;
end;

procedure TfrmBrowseDataWithPages.FormShow(Sender: TObject);
var
  i, j: Integer;
  oGrid: TcxGridTableView;
begin
  inherited;
  if not FRecordCountCreated then
  begin

    for j := 0 to grdMaster.Levels.Count - 1 do
    begin
      if grdMaster.Levels.Items[j].GridView is TcxGridTableView then
      begin
        oGrid := TcxGridTableView(grdMaster.Levels.Items[j].GridView);

        for i := 0 to oGrid.ColumnCount - 1 do
        begin
          if oGrid.Columns[i].Visible then
          begin
            if (oGrid.Columns[i].Summary.FooterKind = skNone)
              or (oGrid.Columns[i].Summary.FooterKind = skCount) then
            begin
              oGrid.Columns[i].Summary.FooterKind := skCount;
              oGrid.Columns[i].Summary.FooterFormat := 'Record Count: #,##0';
              oGrid.Columns[i].Summary.GroupFooterKind := skCount;
              oGrid.Columns[i].Summary.GroupFooterFormat := 'Record Count: #,##0';
              Break;
            end;
          end;
        end;

        oGrid.OptionsView.Footer := True;
        oGrid.OptionsView.GroupFooterMultiSummaries := True;
        oGrid.OptionsView.GroupFooters := gfVisibleWhenExpanded;
      end;

    end;

//    for i := 0 to gvwMaster.ColumnCount - 1 do
//    begin
//      if gvwMaster.Columns[i].Visible then
//      begin
//        if (gvwMaster.Columns[i].Summary.FooterKind = skNone)
//          or (gvwMaster.Columns[i].Summary.FooterKind = skCount) then
//        begin
//          gvwMaster.Columns[i].Summary.FooterKind := skCount;
//          gvwMaster.Columns[i].Summary.FooterFormat := 'Record Count: #,##0';
//          gvwMaster.Columns[i].Summary.GroupFooterKind := skCount;
//          gvwMaster.Columns[i].Summary.GroupFooterFormat := 'Record Count: #,##0';
//          Break;
//        end;
//      end;
//    end;
//
//    gvwMaster.OptionsView.Footer := True;
//    gvwMaster.OptionsView.GroupFooterMultiSummaries := True;
//    gvwMaster.OptionsView.GroupFooters := gfVisibleWhenExpanded;
    FRecordCountCreated := True;

  end;

  Insert2.Visible := actNew.Visible or actInsertFromCurrentData.Visible;
  if actNew.Visible or actInsertFromCurrentData.Visible then
    mnuInsert.Visible := ivAlways
  else
    mnuInsert.Visible := ivNever;
end;

function TfrmBrowseDataWithPages.GetEditorKey: String;
var
  sKey: String;
  i: Integer;
  oKeyField: TField;
begin
  Try
    sKey := '';

    if (KeyField <> Nil) then
    begin
      if KeyField.DataType in [ftDate, ftDateTime, ftTimeStamp] then
        sKey := sKey + FormatDateTime('yyyyMMdd', KeyField.AsDateTime)
      else
        sKey := sKey + KeyField.AsString;
    end
    else if (Length(FKeyFields) > 0) then
    begin
      for i := 0 to High(FKeyFields) do
      begin
        if sKey <> '' then
          sKey := sKey + Chr(1);

        if KeyFields[i].DataType in [ftDate, ftDateTime, ftTimeStamp] then
          sKey := sKey + FormatDateTime('yyyyMMdd', KeyFields[i].AsDateTime)
        else
          sKey := sKey + KeyFields[i].AsString;
      end;
    end
    else
    begin
      for i := 0 to DataContainer.MasterDataset.Params.Count - 1 do
      begin
        oKeyField := DataContainer.ListDataset.FindField(DataContainer.MasterDataset.Params[i].Name);
        if (oKeyField <> nil) then
        begin
          if sKey <> '' then
            sKey := sKey + Chr(1);

          if oKeyField.DataType in [ftDate, ftDateTime, ftTimeStamp] then
            sKey := sKey + FormatDateTime('yyyyMMdd', oKeyField.AsDateTime)
          else
            sKey := sKey + oKeyField.AsString;
        end;
      end;
    end;
  Finally
    Result := sKey;
  End;
end;

procedure TfrmBrowseDataWithPages.grdMasterEnter(Sender: TObject);
begin
  inherited;
  ActiveGridTableView := gvwMaster;
end;

procedure TfrmBrowseDataWithPages.gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.gvwMasterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  oForm: TfrmFilterInput;
begin
  inherited;
  if (((Key >= Ord('A')) and (Key <= Ord('Z'))) or ((Key >= Ord('a')) and (Key <= Ord('a'))) or
    ((Key >= Ord('0')) and (Key <= Ord('9')))) and (shift = [])  then
  begin
//    oForm := TfrmFilterInput.Create(nil);
//    Try
//      oForm.PrepareFilter(gvwMaster.Controller.FocusedColumn, chr(Key));
//      if oForm.ShowModal = mrOK then
//      begin
//        if not VarIsNull(oForm.txtFilter.EditValue) then
//        begin
//          if gvwMaster.Controller.FocusedColumn.Filtered then gvwMaster.Controller.FocusedColumn.Filtered := False;
//
//          gvwMaster.DataController.Filter.Root.AddItem(gvwMaster.Controller.FocusedColumn, foLike, oForm.txtFilter.EditValue, oForm.txtFilter.EditValue);
//          if gvwMaster.DataController.Filter.Root.Count > 0 then gvwMaster.DataController.Filter.Active := True;
//
//        end;

//      end;
//    Finally
//      FreeAndNil(oForm);
//    End;
  end
  else if (Key = 27) then
  begin
    if gvwMaster.DataController.Filter.Root.Count > 0 then
      gvwMaster.DataController.Filter.Root[gvwMaster.DataController.Filter.Root.Count-1].Destroy;
  end
  else if (key = 187) and (Shift = [ssCtrl]) then
  begin
    if grdMaster.Font.Size < 14 then
    begin
      grdMaster.Font.Size := grdMaster.Font.Size + 1;
      gvwMaster.OptionsView.DataRowHeight := gvwMaster.OptionsView.DataRowHeight + 2;
    end;
  end
  else if (key = 189) and (Shift = [ssCtrl]) then
  begin
    if grdMaster.Font.Size > 8 then
    begin
      grdMaster.Font.Size := grdMaster.Font.Size - 1;
      gvwMaster.OptionsView.DataRowHeight := gvwMaster.OptionsView.DataRowHeight - 2;
    end;
  end;
end;

procedure TfrmBrowseDataWithPages.SetDataContainerTableNameProperty(
  ADataContainer: TNMasterDetailData);
var
  i: Integer;
  sDataModuleName, sDataModuleUpdateName: String;
  sTableName: String;
begin
    if (ADataContainer.MasterDataset <> nil) then
    begin
      ADataContainer.MasterTableName := dmGlobal.RemoteServer.GetMasterTableNameFromDatasetProvider(ADataContainer.MasterDataset.ProviderName);
      ADataContainer.AuditTableName := dmGlobal.RemoteServer.GetAuditTableNameFromDatasetProvider(ADataContainer.MasterDataset.ProviderName);
      sDataModuleName := ADataContainer.MasterDataset.ProviderName;
      Delete(sDataModuleName, 1, 5);
      i := AnsiPos('_', sDataModuleName);
      sDataModuleName := LeftStr(sDataModuleName, i -1);
    end;

    if (ADataContainer.MasterDatasetUpd <> nil) then
    begin
      ADataContainer.UpdateTableName := dmGlobal.RemoteServer.GetMasterTableNameFromDatasetProvider(ADataContainer.MasterDatasetUpd.ProviderName);
      sDataModuleUpdateName := ADataContainer.MasterDatasetUpd.ProviderName;
      Delete(sDataModuleUpdateName, 1, 5);
      i := AnsiPos('_', sDataModuleUpdateName);
      sDataModuleUpdateName := LeftStr(sDataModuleUpdateName, i-1);
    end;

  with ADataContainer do
  begin
    for i := 0 to DetailsData.Count - 1 do
    begin
      if DetailsData.Items[i].DetailDataset <> nil then
      begin
        if DetailsData.Items[i].DetailDataset.DataSetField <> nil then
        begin
          sTableName := dmGlobal.RemoteServer.GetTableNameFromDataset(sDataModuleName, DetailsData.Items[i].DetailDataset.DataSetField.FieldName);
          if sTableName <> '' then
            DetailsData.Items[i].DetailTableName := sTableName;

          DetailsData.Items[i].AuditTableName := dmGlobal.RemoteServer.GetAuditTableNameFromDataset(sDataModuleName, DetailsData.Items[i].DetailDataset.DataSetField.FieldName);
        end;
      end;

      if DetailsData.Items[i].DetailDatasetUpd <> nil then
      begin
        if DetailsData.Items[i].DetailDatasetUpd.DataSetField <> nil then
        begin
          sTableName := dmGlobal.RemoteServer.GetTableNameFromDataset(sDataModuleUpdateName, DetailsData.Items[i].DetailDatasetUpd.DataSetField.FieldName);
          if sTableName <> '' then
            DetailsData.Items[i].UpdateTableName := sTableName;
        end;
      end;
    end;
  end;

  //Additional information for new audit log model 20160425
  if (ADataContainer.MasterDataset is TNClientDataset) then
  begin
    dmGlobal.SetDataSetProperty(TNClientDataset(ADataContainer.MasterDataset));
  end;
end;

procedure TfrmBrowseDataWithPages.SetKeyFieldsLength(n: Integer);
begin
  SetLength(FKeyFields, n);
end;

end.
