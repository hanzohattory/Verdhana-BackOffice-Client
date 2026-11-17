unit FormWorkflow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Vcl.ActnList, cxPC,
  dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, NDatasetAction,
  Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters, cxContainer, cxLabel,
  Vcl.ExtCtrls,
  ClassClientConst, Datasnap.DBClient, Vcl.DBCtrls, Vcl.ImgList, ClassGeneral,
  FormEditorData, NClientDataset, cxScrollBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxMemo, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomLayoutView, NReportClient, dxBarBuiltInMenu, System.ImageList,
  System.Actions, cxGridViewLayoutContainer, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxDateRanges, dxScrollbarAnnotations;

type
  TNotifyOnChangeActivityContinue = procedure(AFlowID, AActivityID: Integer; ADataID: Int64; var AContinue: Boolean) of Object;
  TNotifyOnChangeActivity = procedure(AFlowID, AActivityID: Integer; ADataID: Int64) of Object;
  TNotifyGetEditorFormClass = procedure (var AFormClass: TFormEditorClass) of Object;

  TfrmWorkflow = class(TfrmBasic)
    pgWorkflow: TcxPageControl;
    tabBrowse: TcxTabSheet;
    tabEditor: TcxTabSheet;
    aclWorkflow: TActionList;
    grdBrowse: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    grdBrowseLevel1: TcxGridLevel;
    lcTopMenu: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    lcTopMenuGroup1: TdxLayoutGroup;
    actCreate: TNAction;
    actEdit: TNAction;
    actPrint: TNAction;
    actMore: TNAction;
    actList: TNAction;
    actSingle: TNAction;
    lblRecordInfo: TcxLabel;
    lcTopMenuItem9: TdxLayoutItem;
    dsBrowse: TDataSource;
    lcNavBrowse: TdxLayoutItem;
    dbNavBrowse: TDBNavigator;
    lcTopMenuGroup2: TdxLayoutGroup;
    popPrint: TPopupMenu;
    popMore: TPopupMenu;
    actDelete: TNAction;
    actDuplicate: TNAction;
    Duplicate1: TMenuItem;
    imlWorkflow: TImageList;
    pnlView: TPanel;
    lcTopMenuItem10: TdxLayoutItem;
    btnList: TcxButton;
    btnSingle: TcxButton;
    pnlCentre: TPanel;
    lcTopMenuItem1: TdxLayoutItem;
    btnMore: TcxButton;
    btnPrint: TcxButton;
    pnlLeft: TPanel;
    lcTopMenuItem4: TdxLayoutItem;
    btnCreate: TcxButton;
    lcEditorTopGroup_Root: TdxLayoutGroup;
    lcEditorTop: TdxLayoutControl;
    lcEditor: TdxLayoutControl;
    lcEditorMain: TdxLayoutGroup;
    lcEditorItem1: TdxLayoutItem;
    grdDataActivityStatus: TcxGrid;
    gvwDataActivityStatus: TcxGridDBBandedTableView;
    gvwDataActivityStatusDATAID: TcxGridDBBandedColumn;
    gvwDataActivityStatusACTIVITYID: TcxGridDBBandedColumn;
    gvwDataActivityStatusSTATUS: TcxGridDBBandedColumn;
    gvwDataActivityStatusDONE_BY: TcxGridDBBandedColumn;
    gvwDataActivityStatusDONE_DATE: TcxGridDBBandedColumn;
    gvwDataActivityStatusNOTES: TcxGridDBBandedColumn;
    gvwDataActivityStatusDESCRIPTION: TcxGridDBBandedColumn;
    grdDataActivityStatusLevel1: TcxGridLevel;
    lcEditorForm: TdxLayoutGroup;
    lcEditorItem2: TdxLayoutItem;
    grdWorkflowDataNotes: TcxGrid;
    gvwWorkflowDataNotes: TcxGridDBBandedTableView;
    gvwWorkflowDataNotesFLOWID: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesDATAID: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesNOTES_DATE: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesNOTES: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesNOTES_USER: TcxGridDBBandedColumn;
    grdWorkflowDataNotesLevel1: TcxGridLevel;
    lcEditorGroup1: TdxLayoutGroup;
    lcEditorSplitterItem1: TdxLayoutSplitterItem;
    cdsDataActivityStatus: TNClientDataset;
    cdsDataActivityStatusDATAID: TLargeintField;
    cdsDataActivityStatusACTIVITYID: TIntegerField;
    cdsDataActivityStatusSTATUS: TStringField;
    cdsDataActivityStatusDONE_BY: TStringField;
    cdsDataActivityStatusDONE_DATE: TDateTimeField;
    cdsDataActivityStatusNOTES: TMemoField;
    cdsDataActivityStatusDESCRIPTION: TStringField;
    dsDataActivityStatus: TDataSource;
    cdsWorkflowDataNotes: TNClientDataset;
    cdsWorkflowDataNotesFLOWID: TIntegerField;
    cdsWorkflowDataNotesDATAID: TLargeintField;
    cdsWorkflowDataNotesNOTES_DATE: TDateTimeField;
    cdsWorkflowDataNotesNOTES: TMemoField;
    cdsWorkflowDataNotesNOTES_USER: TStringField;
    dsWorkflowDataNotes: TDataSource;
    popStatus: TPopupMenu;
    actComplete: TNAction;
    Complete1: TMenuItem;
    actBackToPreviousProcess: TNAction;
    BackToPreviousProcess1: TMenuItem;
    actRefreshList: TNAction;
    actRefreshSingle: TNAction;
    Refresh1: TMenuItem;
    popBrowse: TPopupMenu;
    Refresh2: TMenuItem;
    lcBrowseTopGroup_Root: TdxLayoutGroup;
    lcBrowseTop: TdxLayoutControl;
    cbWorkflowActivity: TcxImageComboBox;
    lcBrowseTopItem1: TdxLayoutItem;
    btnViewData: TcxButton;
    lcBrowseTopItem2: TdxLayoutItem;
    lcBrowseTopGroup1: TdxLayoutGroup;
    actViewListData: TNAction;
    cdsWorkflowActivity: TNClientDataset;
    cdsWorkflowActivityACTIVITYID: TIntegerField;
    cdsWorkflowActivityDESCRIPTION: TStringField;
    cdsWorkflowActivityFLOWID: TIntegerField;
    actAckActivity: TNAction;
    actOpenAckActivity: TNAction;
    N1: TMenuItem;
    Acknowledge1: TMenuItem;
    OpenAcknowledge1: TMenuItem;
    cdsDataActivityStatusACK_DATE: TDateTimeField;
    gvwDataActivityStatusACK_DATE: TcxGridDBBandedColumn;
    cdsDataActivivtyLastStatus: TNClientDataset;
    cdsDataActivivtyLastStatusFLOWID: TIntegerField;
    cdsDataActivivtyLastStatusDATAID: TLargeintField;
    cdsDataActivivtyLastStatusLAST_ACTIVITYID: TIntegerField;
    cdsDataActivivtyLastStatusLAST_ACTIVITY_USER: TStringField;
    cdsDataActivivtyLastStatusLAST_ACTIVITY_DATE: TDateTimeField;
    cdsDataActivivtyLastStatusNOTES: TMemoField;
    cdsDataActivivtyLastStatusDESCRIPTION: TStringField;
    cdsDataActivityFinishStatus: TNClientDataset;
    cdsDataActivityFinishStatusFLOWID: TIntegerField;
    cdsDataActivityFinishStatusDATAID: TLargeintField;
    actCreateFromSelectedData: TNAction;
    glvWorkflowDataNotesGroup_Root: TdxLayoutGroup;
    glvWorkflowDataNotes: TcxGridDBLayoutView;
    glvWorkflowDataNotesLayoutItem1: TcxGridLayoutItem;
    glvWorkflowDataNotesFLOWID: TcxGridDBLayoutViewItem;
    glvWorkflowDataNotesLayoutItem2: TcxGridLayoutItem;
    glvWorkflowDataNotesDATAID: TcxGridDBLayoutViewItem;
    glvWorkflowDataNotesLayoutItem3: TcxGridLayoutItem;
    glvWorkflowDataNotesNOTES_DATE: TcxGridDBLayoutViewItem;
    glvWorkflowDataNotesLayoutItem4: TcxGridLayoutItem;
    glvWorkflowDataNotesNOTES: TcxGridDBLayoutViewItem;
    glvWorkflowDataNotesLayoutItem5: TcxGridLayoutItem;
    glvWorkflowDataNotesNOTES_USER: TcxGridDBLayoutViewItem;
    glvWorkflowDataNotesGroup1: TdxLayoutGroup;
    ReportContainer: TNClientReportContainer;
    procedure FormCreate(Sender: TObject);
    procedure actListExecute(Sender: TObject);
    procedure actSingleExecute(Sender: TObject);
    procedure pgWorkflowPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure dbNavBrowseClick(Sender: TObject; Button: TNavigateBtn);
    procedure btnMoreClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure actCreateExecute(Sender: TObject);
    procedure actDuplicateExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actCompleteExecute(Sender: TObject);
    procedure actBackToPreviousProcessExecute(Sender: TObject);
    procedure actRefreshListExecute(Sender: TObject);
    procedure actRefreshSingleExecute(Sender: TObject);
    procedure actViewListDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAckActivityExecute(Sender: TObject);
    procedure OpenAcknowledge1Click(Sender: TObject);
    procedure actOpenAckActivityExecute(Sender: TObject);
    procedure cdsDataActivityStatusBeforeClose(DataSet: TDataSet);
    procedure cdsDataActivityStatusAfterOpen(DataSet: TDataSet);
    procedure cdsDataActivityFinishStatusAfterOpen(DataSet: TDataSet);
    procedure actCreateFromSelectedDataExecute(Sender: TObject);
    procedure actCreateFromSelectedDataUpdate(Sender: TObject);
  private
    { Private declarations }
    FState: TWorkflowState;
    FDataID: Int64;
    FFlowID: Integer;
    FFormEditorClass: TFormEditorClass;
    FFormEditor: TfrmEditorData;
    FKeyField: TField;
    FFormEditorList: TStringList;
    FOnAfterCompleteActivity: TNotifyOnChangeActivity;
    FOnBackToPreviousActivity: TNotifyOnChangeActivity;
    FOnGetFormEditorClass: TNotifyGetEditorFormClass;
    FOnBeforeCompleteActivity: TNotifyOnChangeActivityContinue;

    function GetState: TWorkflowState;
    procedure SetState(const Value: TWorkflowState);
  public
    { Public declarations }
    property State: TWorkflowState read GetState write SetState;
    property FlowID: Integer read FFlowID write FFlowID;
    property DataID: Int64 read FDataID write FDataID;
    property FormEditorClass: TFormEditorClass read FFormEditorClass write FFormEditorClass default Nil;
    property FormEditor: TfrmEditorData read FFormEditor write FFormEditor;
    property KeyField: TField read FKeyField write FKeyField default Nil;
    property FormEditorList: TStringList read FFormEditorList write FFormEditorList;
    property OnBeforeCompleteActivity: TNotifyOnChangeActivityContinue read FOnBeforeCompleteActivity write FOnBeforeCompleteActivity;
    property OnAfterCompleteActivity: TNotifyOnChangeActivity read FOnAfterCompleteActivity write FOnAfterCompleteActivity;
    property OnBackToPreviousActivity: TNotifyOnChangeActivity read FOnBackToPreviousActivity write FOnBackToPreviousActivity;
    property OnGetFormEditorClass: TNotifyGetEditorFormClass read FOnGetFormEditorClass write FOnGetFormEditorClass;

    procedure RefreshListData;
    procedure ViewSingleData(ADataID: Int64);
    procedure ViewListData;
    procedure DrawWorkflowActivity;
    procedure ViewWorkflowData;

    function GetEditorKey: Int64;
  end;

var
  frmWorkflow: TfrmWorkflow;

implementation

{$R *.dfm}

uses DataGlobal, FormAccount;

procedure TfrmWorkflow.actAckActivityExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg: String;
begin
  inherited;
  if cdsDataActivityStatusSTATUS.AsString <> '1' then
    exit;

  bRes := dmGlobal.RemoteServer.AcknowledgeDataActivity(
    cdsDataActivityStatusDATAID.AsLargeInt,
    cdsDataActivityStatusACTIVITYID.AsInteger,
    sMsg);

  ViewWorkflowData;
  if not bRes then
    ShowMessage(sMsg);
end;

procedure TfrmWorkflow.actBackToPreviousProcessExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sNotes: String;
begin
  inherited;
  if (cdsDataActivityStatusSTATUS.AsString <> '1')
    or (UpperCase(cdsDataActivityStatusDONE_BY.AsString) <> UpperCase(dmGlobal.UserID)) then
    exit;

  if MessageDlg('Are you sure to back to previous activity from activity ' +
    QuotedStr(cdsDataActivityStatusDESCRIPTION.AsString) + '?',
    mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    sNotes := InputBox('Back to Previous Activity from Activity ' + cdsDataActivityStatusDESCRIPTION.AsString, 'Notes : ', sNotes);
    bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusPrev(
      cdsDataActivityStatusDATAID.AsLargeInt,
      cdsDataActivityStatusACTIVITYID.AsInteger,
      sNotes, sMsg);

    if bRes then
    begin
      if Assigned(FOnBackToPreviousActivity) then
        FOnBackToPreviousActivity(FlowID, cdsDataActivityStatusACTIVITYID.AsInteger, cdsDataActivityStatusDATAID.AsLargeInt);
    end;

    ViewSingleData(cdsDataActivityStatusDATAID.AsLargeInt);
    ShowMessage(sMsg);
  end;
end;

procedure TfrmWorkflow.actCompleteExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sNotes: String;
begin
  inherited;
  if (cdsDataActivityStatusSTATUS.AsString <> '1')
    or (UpperCase(cdsDataActivityStatusDONE_BY.AsString) <> UpperCase(dmGlobal.UserID)) then
    exit;

  if MessageDlg('Are you sure to complete activity ' +
    QuotedStr(cdsDataActivityStatusDESCRIPTION.AsString) + '?',
    mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    bRes := True;

    if Assigned(FOnBeforeCompleteActivity) then
      FOnBeforeCompleteActivity(FlowID, cdsDataActivityStatusACTIVITYID.AsInteger, cdsDataActivityStatusDATAID.AsLargeInt, bRes);

    if not bRes then
      Exit;

    sNotes := InputBox('Complete Activity ' + cdsDataActivityStatusDESCRIPTION.AsString, 'Notes : ', sNotes);
    bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusDone(
      cdsDataActivityStatusDATAID.AsLargeInt,
      cdsDataActivityStatusACTIVITYID.AsInteger,
      sNotes, sMsg);

    if bRes then
    begin
      if Assigned(FOnAfterCompleteActivity) then
        FOnAfterCompleteActivity(FlowID, cdsDataActivityStatusACTIVITYID.AsInteger, cdsDataActivityStatusDATAID.AsLargeInt);
    end;

    ViewSingleData(cdsDataActivityStatusDATAID.AsLargeInt);

//    ShowMessage(sMsg);
  end;
end;

procedure TfrmWorkflow.actCreateExecute(Sender: TObject);
var
  sKey, sMsg: String;
begin
  inherited;
  if (FormEditorClass <> Nil) then
  begin
    sKey := '';
    if dmGlobal.ShowEditorForm(FormEditorClass, sKey, pkCreate) = mrOk then
    begin
      DataID := StrToInt64Def(sKey, -1);
      if DataID <> -1 then
        dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);

      if not dsBrowse.DataSet.Active then
      begin
        actViewListData.Execute;
      end
      else
      begin
        RefreshListData;
      end;
      dsBrowse.DataSet.Locate(KeyField.FieldName, DataID, []);
      ViewSingleData(DataID);
    end;
  end;
end;

procedure TfrmWorkflow.actCreateFromSelectedDataExecute(Sender: TObject);
var
  sKey, sMsg: String;
  AFormEditorClass: TFormEditorClass;
  bCustomEditor: Boolean;
begin
  inherited;

  bCustomEditor := False;
  AFormEditorClass := Nil;
  if Assigned(FOnGetFormEditorClass) then
  begin
    FOnGetFormEditorClass(AFormEditorClass);
    bCustomEditor := True;
  end;

  if bCustomEditor then
  begin
    if (AFormEditorClass <> Nil) then
    begin
      sKey := IntToStr(GetEditorKey);
      if dmGlobal.ShowEditorForm(AFormEditorClass, sKey, pkCreate) = mrOk then
      begin
        DataID := StrToInt64Def(sKey, -1);
        if DataID <> -1 then
          dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);

        RefreshListData;
        dsBrowse.DataSet.Locate(KeyField.FieldName, DataID, []);
        ViewSingleData(DataID);
      end;
    end;
  end
  else
  begin
    if (FormEditorClass <> Nil) then
    begin
      sKey := IntToStr(GetEditorKey);
      if dmGlobal.ShowEditorForm(FormEditorClass, sKey, pkCreate) = mrOk then
      begin
        DataID := StrToInt64Def(sKey, -1);
        if DataID <> -1 then
          dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);

        RefreshListData;
        dsBrowse.DataSet.Locate(KeyField.FieldName, DataID, []);
        ViewSingleData(DataID);
      end;
    end;
  end;
end;

procedure TfrmWorkflow.actCreateFromSelectedDataUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := dsBrowse.DataSet.Active and (not dsBrowse.DataSet.IsEmpty);
end;

procedure TfrmWorkflow.actDeleteExecute(Sender: TObject);
var
  sKey: String;
  AFormEditorClass: TFormEditorClass;
begin
  inherited;

  if Assigned(FOnGetFormEditorClass) then
  begin
    FOnGetFormEditorClass(AFormEditorClass);
  end;

  if (AFormEditorClass <> Nil) then
  begin
    sKey := IntToStr(GetEditorKey);
    if dmGlobal.ShowEditorForm(AFormEditorClass, sKey, pkDelete) = mrOk then
    begin
//
    end;
  end;
end;

procedure TfrmWorkflow.actDuplicateExecute(Sender: TObject);
var
  sKey, sMsg: String;
  AFormEditorClass: TFormEditorClass;
  bCustomEditor: Boolean;
begin
  inherited;

  bCustomEditor := False;
  AFormEditorClass := Nil;
  if Assigned(FOnGetFormEditorClass) then
  begin
    FOnGetFormEditorClass(AFormEditorClass);
    bCustomEditor := True;
  end;

  if bCustomEditor then
  begin
    if (AFormEditorClass <> Nil) then
    begin
      sKey := IntToStr(GetEditorKey);
      if dmGlobal.ShowEditorForm(AFormEditorClass, sKey, pkCreate) = mrOk then
      begin
        DataID := StrToInt64Def(sKey, -1);
        if DataID <> -1 then
          dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);

        RefreshListData;
        dsBrowse.DataSet.Locate(KeyField.FieldName, DataID, []);
        ViewSingleData(DataID);
      end;
    end;
  end
  else
  begin
    if (FormEditorClass <> Nil) then
    begin
      sKey := IntToStr(GetEditorKey);
      if dmGlobal.ShowEditorForm(FormEditorClass, sKey, pkCreate) = mrOk then
      begin
        DataID := StrToInt64Def(sKey, -1);
        if DataID <> -1 then
          dmGlobal.RemoteServer.CreateDataActivity(FlowID, DataID, sMsg);

        RefreshListData;
        dsBrowse.DataSet.Locate(KeyField.FieldName, DataID, []);
        ViewSingleData(DataID);
      end;
    end;
  end;
end;

procedure TfrmWorkflow.actEditExecute(Sender: TObject);
var
  sKey: String;
  AFormEditorClass: TFormEditorClass;
  bCustomEditor: Boolean;
begin
  inherited;

  bCustomEditor := False;
  AFormEditorClass := Nil;
  if Assigned(FOnGetFormEditorClass) then
  begin
    FOnGetFormEditorClass(AFormEditorClass);
    bCustomEditor := True;
  end;

  if bCustomEditor then
  begin
    if (AFormEditorClass <> Nil) then
    begin
      sKey := IntToStr(GetEditorKey);
      if dmGlobal.ShowEditorForm(AFormEditorClass, sKey, pkUpdate) = mrOk then
      begin
        DataID := StrToInt64Def(sKey, -1);
        ViewSingleData(DataID);
      end;
    end;
  end
  else
  begin
    if (FormEditorClass <> Nil) then
    begin
      sKey := IntToStr(GetEditorKey);
      if dmGlobal.ShowEditorForm(FormEditorClass, sKey, pkUpdate) = mrOk then
      begin
        DataID := StrToInt64Def(sKey, -1);
        ViewSingleData(DataID);
      end;
    end;
  end;
end;

procedure TfrmWorkflow.actListExecute(Sender: TObject);
begin
  inherited;
  ViewListData;
end;

procedure TfrmWorkflow.actOpenAckActivityExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg: String;
begin
  inherited;
  if cdsDataActivityStatusSTATUS.AsString <> '1' then
    exit;

  bRes := dmGlobal.RemoteServer.OpenAcknowledgeDataActivity(
    cdsDataActivityStatusDATAID.AsLargeInt,
    cdsDataActivityStatusACTIVITYID.AsInteger,
    sMsg);

  ViewWorkflowData;
  if not bRes then
    ShowMessage(sMsg);
end;

procedure TfrmWorkflow.actRefreshListExecute(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Close;
  dsBrowse.DataSet.Open;
end;

procedure TfrmWorkflow.actRefreshSingleExecute(Sender: TObject);
begin
  inherited;
  ViewSingleData(DataID);
end;

procedure TfrmWorkflow.actSingleExecute(Sender: TObject);
begin
  inherited;
  ViewSingleData(GetEditorKey);
end;

procedure TfrmWorkflow.actViewListDataExecute(Sender: TObject);
var
  oCds: TClientDataSet;
  iAct: Integer;
begin
  inherited;
  if (dsBrowse.DataSet <> Nil) and (dsBrowse.DataSet is TClientDataSet) then
  begin
    oCds := TClientDataSet(dsBrowse.DataSet);
    iAct := StrToIntDef(VarToStr(cbWorkflowActivity.EditValue), 0);

    oCds.Close;
    if iAct = 0 then
      oCds.Params[0].AsString := '1'
    else if iAct = 1 then
      oCds.Params[0].AsString := '2'
    else
      oCds.Params[0].AsString := '0';
    oCds.Params[1].AsInteger := iAct;
    oCds.Open;

    ViewListData;
  end;
end;

procedure TfrmWorkflow.btnMoreClick(Sender: TObject);
begin
  inherited;
  with btnMore.ClientToScreen(point(0, btnMore.Height)) do
    popMore.Popup(X, Y);
end;

procedure TfrmWorkflow.btnPrintClick(Sender: TObject);
begin
  inherited;
  with btnPrint.ClientToScreen(point(0, btnPrint.Height)) do
    popPrint.Popup(X, Y);
end;

procedure TfrmWorkflow.cdsDataActivityFinishStatusAfterOpen(DataSet: TDataSet);
begin
  inherited;
  actAckActivity.Visible := cdsDataActivityFinishStatus.IsEmpty;
  actOpenAckActivity.Visible := cdsDataActivityFinishStatus.IsEmpty;
  actComplete.Visible := cdsDataActivityFinishStatus.IsEmpty;
  actBackToPreviousProcess.Visible := cdsDataActivityFinishStatus.IsEmpty;
end;

procedure TfrmWorkflow.cdsDataActivityStatusAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsDataActivityStatus.Locate('ACTIVITYID', cdsDataActivityStatus.Tag, []);
end;

procedure TfrmWorkflow.cdsDataActivityStatusBeforeClose(DataSet: TDataSet);
begin
  inherited;
  if cdsDataActivityStatus.Active then
    cdsDataActivityStatus.Tag := cdsDataActivityStatusACTIVITYID.AsInteger;
end;

procedure TfrmWorkflow.dbNavBrowseClick(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  lblRecordInfo.Caption := FormatFloat('#,##0', dsBrowse.DataSet.RecNo)
    + ' / ' + FormatFloat('#,##0', dsBrowse.DataSet.RecordCount);

  if (Button = nbPrior) And (dsBrowse.DataSet.RecNo = 1) then
  begin
    dsBrowse.DataSet.First;
  end
  else if (Button = nbNext) And (dsBrowse.DataSet.RecNo = dsBrowse.DataSet.RecordCount) then
  begin
    dsBrowse.DataSet.Last;
  end;

  ViewSingleData(GetEditorKey);
end;

procedure TfrmWorkflow.DrawWorkflowActivity;
begin
  cbWorkflowActivity.Properties.Items.Clear;
  cdsWorkflowActivity.Close;
  cdsWorkflowActivity.Params[0].AsInteger := FlowID;
  cdsWorkflowActivity.Open;

  lcBrowseTop.Visible := not cdsWorkflowActivity.IsEmpty;

  with cbWorkflowActivity.Properties.Items.Add do
  begin
    Description := 'All Activity';
    Value := 0;
  end;

  cdsWorkflowActivity.First;
  while not cdsWorkflowActivity.Eof do
  begin
    with cbWorkflowActivity.Properties.Items.Add do
    begin
      Description := cdsWorkflowActivityDESCRIPTION.AsString;
      Value := cdsWorkflowActivityACTIVITYID.AsInteger;
    end;
    cdsWorkflowActivity.Next;
  end;

  with cbWorkflowActivity.Properties.Items.Add do
  begin
    Description := 'All Activate Accounts';
    Value := 1;
  end;

  cbWorkflowActivity.EditValue := 0;
end;

procedure TfrmWorkflow.FormCreate(Sender: TObject);
begin
  inherited;
  FFormEditorList := TStringList.Create;
  pgWorkflow.Properties.HideTabs := True;
  actList.Execute;
  State := wsBrowse;
end;

procedure TfrmWorkflow.FormDestroy(Sender: TObject);
//var
//  ALayoutItem: TdxLayoutItem;
//  AFormEditor: TfrmEditorData;
begin
//  while FormEditorList.Count > 0 do
//  begin
//    ALayoutItem := TdxLayoutItem(FormEditorList.Objects[0]);
//    AFormEditor := TfrmEditorData(ALayoutItem.Control);
//    FreeAndNil(AFormEditor);
//    FreeAndNil(ALayoutItem);
//    FormEditorList.Delete(0);
//  end;

  FreeAndNil(FFormEditorList);
  inherited;
end;

procedure TfrmWorkflow.FormShow(Sender: TObject);
begin
  inherited;
  if Self.Tag = 0 then
  begin
    DrawWorkflowActivity;

    Self.Tag := 1;
  end;
end;

function TfrmWorkflow.GetEditorKey: Int64;
begin
  Result := -1;
  if (KeyField <> Nil) then
  begin
    Result := KeyField.AsLargeInt;
  end;
end;

function TfrmWorkflow.GetState: TWorkflowState;
begin
  Result := FState;
end;

procedure TfrmWorkflow.OpenAcknowledge1Click(Sender: TObject);
var
  bRes: Boolean;
  sMsg: String;
begin
  inherited;
  if cdsDataActivityStatusSTATUS.AsString <> '1' then
    exit;

  bRes := dmGlobal.RemoteServer.OpenAcknowledgeDataActivity(
    cdsDataActivityStatusDATAID.AsLargeInt,
    cdsDataActivityStatusACTIVITYID.AsInteger,
    sMsg);

  ViewWorkflowData;
  if not bRes then
    ShowMessage(sMsg);
end;

procedure TfrmWorkflow.pgWorkflowPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  lcNavBrowse.Visible := (FState = wsBrowse) And (NewPage = tabEditor);
end;

procedure TfrmWorkflow.RefreshListData;
begin
  dsBrowse.DataSet.Close;
  dsBrowse.DataSet.Open;
end;

procedure TfrmWorkflow.SetState(const Value: TWorkflowState);
begin
  FState := Value;
  if Value = wsBrowse then
  begin
//    lcCenter.Visible := pgWorkflow.ActivePage = tabEditor;
  end
  else if (Value = wsEdit) or (Value = wsInsert) then
  begin

  end;

  lcNavBrowse.Visible := (FState = wsBrowse) And (pgWorkflow.ActivePage = tabEditor);
end;

procedure TfrmWorkflow.ViewListData;
begin
  if (dsBrowse.DataSet.Active) And (not dsBrowse.DataSet.IsEmpty) then
  begin
    lblRecordInfo.Caption := FormatFloat('#,##0', dsBrowse.DataSet.RecordCount)
      + ' records.';
  end
  else
    lblRecordInfo.Caption := '';

//  lcCenter.Visible := False;

  pgWorkflow.ActivePage := tabBrowse;
  actList.Enabled := False;
  actSingle.Enabled := True;
end;

procedure TfrmWorkflow.ViewSingleData(ADataID: Int64);
var
  ALayoutItem, ALayoutItemLast: TdxLayoutItem;
  AFormEditorClass: TFormEditorClass;
  AFormEditor: TfrmEditorData;
  iLastEditor, iCurrentEditor: Integer;
  bCustomEditor: Boolean;
  sEditorClassName: String;
begin
  if (dsBrowse.DataSet.Active) And (not dsBrowse.DataSet.IsEmpty) then
  begin
    lblRecordInfo.Caption := FormatFloat('#,##0', dsBrowse.DataSet.RecNo)
      + ' / ' + FormatFloat('#,##0', dsBrowse.DataSet.RecordCount);
  end
  else
    lblRecordInfo.Caption := '';

//  lcCenter.Visible := True;

  AFormEditorClass := FormEditorClass;
  AFormEditor := FormEditor;

  bCustomEditor := False;
  if (ADataID = KeyField.AsLargeInt) then
  begin
    if Assigned(FOnGetFormEditorClass) then
    begin
      FOnGetFormEditorClass(AFormEditorClass);
      bCustomEditor := True;
    end;
  end;

  if (bCustomEditor) then
  begin
//    if AFormEditorClass <> FormEditorClass then
    if (FormEditor <> Nil) then
      sEditorClassName := FormEditor.ClassName
    else
      sEditorClassName := '';

    if AFormEditorClass.ClassName <> sEditorClassName then
    begin
      iCurrentEditor := FormEditorList.IndexOf(sEditorClassName);
      if iCurrentEditor <> -1 then
      begin
        ALayoutItemLast := TdxLayoutItem(FormEditorList.Objects[iCurrentEditor]);
        ALayoutItemLast.Visible := False;
      end;

      iLastEditor := FormEditorList.IndexOf(AFormEditorClass.ClassName);
      if iLastEditor <> -1 then
      begin
        ALayoutItemLast := TdxLayoutItem(FormEditorList.Objects[iLastEditor]);
        ALayoutItemLast.Visible := True;
        FormEditor := TfrmEditorData(ALayoutItemLast.Control);
      end
      else
      begin
        FormEditor := Nil;
      end;

      FormEditorClass := AFormEditorClass;
    end;
  end;

  DataID := ADataID;
  if (FormEditor = Nil) then
  begin
    FormEditor := FormEditorClass.Create(Self);

    with FormEditor do
    begin
      ALayoutItem := lcEditorForm.CreateItemForControl(FormEditor);
      ALayoutItem.AlignHorz := ahCenter;
      FormEditorList.AddObject(FormEditor.ClassName, ALayoutItem);

      dxLayoutControl2.Visible := False;
      tabEditorData.Visible := False;
//      StatusBar.Visible := False;
      StatusBar.Panels[0].Visible := False;
      Height := Height - dxLayoutControl2.Height - StatusBar.Height - tabEditorData.Height;
      BorderStyle := bsNone;
      Position := poDefault;
//      Top := 0;
//      Left := 0;
      View(IntToStr(ADataID));
      Show;
    end;
  end
  else
  begin
    FormEditor.OpenDataSet(IntToStr(ADataID));
  end;

  ViewWorkflowData;
  pgWorkflow.ActivePage := tabEditor;
  actList.Enabled := True;
  actSingle.Enabled := False;
end;

procedure TfrmWorkflow.ViewWorkflowData;
begin
  cdsWorkflowDataNotes.Close;
  cdsWorkflowDataNotes.Params[0].AsInteger := FlowID;
  cdsWorkflowDataNotes.Params[1].AsInteger := DataID;
  cdsWorkflowDataNotes.Open;

  cdsDataActivityStatus.Close;
  cdsDataActivityStatus.Params[0].AsInteger := FlowID;
  cdsDataActivityStatus.Params[1].AsInteger := DataID;
  cdsDataActivityStatus.Open;

  cdsDataActivityFinishStatus.Close;
  cdsDataActivityFinishStatus.Params[0].AsInteger := FlowID;
  cdsDataActivityFinishStatus.Params[1].AsInteger := DataID;
  cdsDataActivityFinishStatus.Open;
end;

end.
