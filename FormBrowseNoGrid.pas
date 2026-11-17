unit FormBrowseNoGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  NReportRPC, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, System.Actions, System.ImageList;

type
  TfrmBrowseNoGrid = class(TfrmBasic)
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
    actOpen: TNDataActionOpen;
    actNew: TNDataActionInsert;
    actEdit: TNDataActionEdit;
    actDelete: TNDataActionDelete;
    actRefresh: TNDataActionRefresh;
    actCancel: TNDataActionCancel;
    DataContainer: TNMasterDetailData;
    dsBrowseApproval: TDataSource;
    popApproval: TPopupMenu;
    Approve1: TMenuItem;
    Reject1: TMenuItem;
    Cancel1: TMenuItem;
    mnuInsert: TdxBarSubItem;
    Insert2: TMenuItem;
    CopyFromSelectedData1: TMenuItem;
    actInsertFromCurrentData: TNDataActionInsertFromCurrentData;
    dxBarButton1: TdxBarButton;
    ViewApprovalData1: TMenuItem;
    N1: TMenuItem;
    actApprove: TNAction;
    actReject: TNAction;
    ReportContainer: TNReportContainer;
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
    procedure actApproveExecute(Sender: TObject);
    procedure actRejectExecute(Sender: TObject);
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
  private
    { Private declarations }
    FMasterGrid: TcxGridDBBandedTableView;
    FApprovalGrid: TcxGridDBBandedTableView;
    FActiveGrid: TcxCustomGridTableView;
  public
    { Public declarations }
    property MasterData: TcxGridDBBandedTableView read FMasterGrid write FMasterGrid;
    property ApprovalGrid: TcxGridDBBandedTableView read FApprovalGrid write FApprovalGrid;
    property ActiveGrid: TcxCustomGridTableView read FActiveGrid write FActiveGrid;
  end;

var
  frmBrowseNoGrid: TfrmBrowseNoGrid;

implementation

{$R *.dfm}

uses DataGlobal, FormEditorData;

procedure TfrmBrowseNoGrid.actApproveExecute(Sender: TObject);
var
  i, j, nKey, RecIdx: Integer;
  vFindList: Array of Variant;
  vFind: Variant;
begin
  inherited;
  if FApprovalGrid.Controller.SelectedRowCount = 1 then
    DataContainer.Approve
  else
  begin
    if MessageDlg('Are you sure to approve multiple data?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      FApprovalGrid.BeginUpdate;
      FApprovalGrid.DataController.BeginLocate;

      Try
        nKey := DataContainer.Keys.Count;
        vFind := VarArrayCreate([0, nKey - 1], varVariant);
        SetLength(vFindList, FApprovalGrid.Controller.SelectedRecordCount);

        for i := 0 to FApprovalGrid.Controller.SelectedRecordCount - 1 do
        begin
          RecIdx := FApprovalGrid.Controller.SelectedRecords[i].RecordIndex;
          FApprovalGrid.DataController.FocusedRecordIndex := RecIdx;
//          ShowMessage(gvwApproval.DataController.DataSet.Fields[0].AsString);

          for j := 0 to nKey - 1 do
          begin
            vFind[j] := FApprovalGrid.DataController.DataSet.FieldByName(DataContainer.Keys.Items[j].FieldName).Value;
          end;

          vFindList[i] := vFind;
        end;

        DataContainer.MultipleApprove(vFindList);
      Finally
        FApprovalGrid.DataController.EndLocate;
        FApprovalGrid.EndUpdate;
      End;

    end;

  end;
end;

procedure TfrmBrowseNoGrid.actApproveUpdate(Sender: TObject);
begin
  inherited;

  if DataContainer.Control4Eyes then
  begin
    if Assigned(DataContainer.ListDataset) and Assigned(DataContainer.MasterDataset) and
      Assigned(DataContainer.ListDatasetUpd) and Assigned(DataContainer.MasterDatasetUpd) then
    begin
      actApprove.Enabled := (DataContainer.ListDatasetUpd.Active) and (not DataContainer.ListDatasetUpd.IsEmpty);
    end
    else actApprove.Enabled := False;
  end
  else
    actApprove.Enabled := False;

end;

procedure TfrmBrowseNoGrid.actCustomizeExecute(Sender: TObject);
begin
  inherited;
  FActiveGrid.Controller.Customization := True;
end;

procedure TfrmBrowseNoGrid.actInsertFromCurrentDataExecute(Sender: TObject);
begin
  inherited;
  DataContainer.InsertFromCurrentData;
end;

procedure TfrmBrowseNoGrid.actInsertFromCurrentDataUpdate(Sender: TObject);
begin
  inherited;
  actInsertFromCurrentData.Enabled := (not DataContainer.ListDataset.IsEmpty);
end;

procedure TfrmBrowseNoGrid.actPrintExecute(Sender: TObject);
var
  sReportFile: string;
begin
  inherited;
  sReportFile := ExtractFilePath(Application.ExeName) +  ReportContainer.ReportFile;
  if not FileExists(sReportFile) then Exit;
  ReportContainer.ExecuteReport;
end;

procedure TfrmBrowseNoGrid.actRejectExecute(Sender: TObject);
var
  i, j, nKey, RecIdx: Integer;
  vFindList: Array of Variant;
  vFind: Variant;
begin
  inherited;
  if FApprovalGrid.Controller.SelectedRowCount = 1 then
    DataContainer.Reject
  else
  begin
    if MessageDlg('Are you sure to reject multiple data?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      FApprovalGrid.BeginUpdate;
      FApprovalGrid.DataController.BeginLocate;

      Try
        nKey := DataContainer.Keys.Count;
        vFind := VarArrayCreate([0, nKey - 1], varVariant);
        SetLength(vFindList, FApprovalGrid.Controller.SelectedRecordCount);

        for i := 0 to FApprovalGrid.Controller.SelectedRecordCount - 1 do
        begin
          RecIdx := FApprovalGrid.Controller.SelectedRecords[i].RecordIndex;
          FApprovalGrid.DataController.FocusedRecordIndex := RecIdx;
//          ShowMessage(gvwApproval.DataController.DataSet.Fields[0].AsString);

          for j := 0 to nKey - 1 do
          begin
            vFind[j] := FApprovalGrid.DataController.DataSet.FieldByName(DataContainer.Keys.Items[j].FieldName).Value;
          end;

          vFindList[i] := vFind;
        end;

        DataContainer.MultipleReject(vFindList);
      Finally
        FApprovalGrid.DataController.EndLocate;
        FApprovalGrid.EndUpdate;
      End;

    end;

  end;
end;

procedure TfrmBrowseNoGrid.actRejectUpdate(Sender: TObject);
begin
  inherited;

  if DataContainer.Control4Eyes then
  begin
    if Assigned(DataContainer.ListDataset) and Assigned(DataContainer.MasterDataset) and
      Assigned(DataContainer.ListDatasetUpd) and Assigned(DataContainer.MasterDatasetUpd) then
    begin
      actReject.Enabled := (DataContainer.ListDatasetUpd.Active) and (not DataContainer.ListDatasetUpd.IsEmpty);
    end
    else actReject.Enabled := False;
  end
  else
    actReject.Enabled := False;

end;

procedure TfrmBrowseNoGrid.actViewExecute(Sender: TObject);
begin
  inherited;
  DataContainer.View4EyesData;
end;

procedure TfrmBrowseNoGrid.actViewUpdate(Sender: TObject);
begin
  inherited;
  actView.Enabled := (DataContainer.Control4Eyes) and
    (DataContainer.ListDatasetUpd.Active) and
    (not DataContainer.ListDatasetUpd.IsEmpty);
end;

procedure TfrmBrowseNoGrid.DataContainerAfterCreateEditorForm(AForm: TForm);
begin
  inherited;
  TfrmEditorData(AForm).DataContainer := DataContainer;
  TfrmEditorData(AForm).BrowserForm := Self;
end;

procedure TfrmBrowseNoGrid.DataContainerCancelSequence(ATableName: string;
  ASeqNumber: Int64);
begin
  inherited;
  dmGlobal.RemoteServer.CancelSeq(ATableName, ASeqNumber);
end;

procedure TfrmBrowseNoGrid.DataContainerCommitTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.CommitTransaction;
end;

procedure TfrmBrowseNoGrid.DataContainerGetSequence(ATableName: string;
  var ASeqNumber: Int64);
var
  iSeq: Int64;
begin
  inherited;
  iSeq := dmGlobal.RemoteServer.GetSeq(ATableName);
  ASeqNumber := iSeq;
end;

procedure TfrmBrowseNoGrid.DataContainerGetServerDateTime(
  var AServerDateTime: TDateTime);
var
  floatDate: Double;
begin
  inherited;
  floatDate := dmGlobal.RemoteServer.GetServerTimeStamp;
  AServerDateTime := FloatToDateTime(floatDate);
end;

procedure TfrmBrowseNoGrid.DataContainerGetUserID(var AUserID: string);
begin
  inherited;
  AUserID := dmGlobal.UserID;
end;

procedure TfrmBrowseNoGrid.DataContainerRollbackTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.RollbackTransaction;
end;

procedure TfrmBrowseNoGrid.DataContainerStartTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  dmGlobal.RemoteServer.StartTransaction;
end;

procedure TfrmBrowseNoGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FActiveGrid.Controller.Customization := False;
end;

procedure TfrmBrowseNoGrid.FormCreate(Sender: TObject);
var
  oDataset: TDataset;
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;

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

  for i := 0 to FMasterGrid.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := FMasterGrid.Columns[i];
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

procedure TfrmBrowseNoGrid.FormDestroy(Sender: TObject);
var
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;
begin
  inherited;

  for i := 0 to FMasterGrid.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := FMasterGrid.Columns[i];
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

end.
