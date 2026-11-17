unit FormEndOfDay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, NDatasetAction,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, NActionPermission, DateUtils, Vcl.ExtCtrls, MemDS, DBAccess,
  Uni, NDBDataset, Data.DBXJSON, System.JSON, System.Actions;

type
  TMyCallBack = class(TDBXCallback)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

  TfrmEndOfDay = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclEndOfDay: TActionList;
    cdsBatchProcess: TNClientDataset;
    cdsBatchProcessTRANSDATE: TDateField;
    cdsBatchProcessPROCESSID: TIntegerField;
    cdsBatchProcessPROCESSNAME: TStringField;
    cdsBatchProcessSCHEDULETIME: TDateTimeField;
    cdsBatchProcessAUTO: TStringField;
    cdsBatchProcessSTATUS: TStringField;
    cdsBatchProcessSTARTTIME: TDateTimeField;
    cdsBatchProcessENDTIME: TDateTimeField;
    cdsBatchProcessPROCESSUI: TStringField;
    dsBatchProcess: TDataSource;
    gvwMasterPROCESSNAME: TcxGridDBBandedColumn;
    gvwMasterSCHEDULETIME: TcxGridDBBandedColumn;
    gvwMasterAUTO: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterSTARTTIME: TcxGridDBBandedColumn;
    gvwMasterENDTIME: TcxGridDBBandedColumn;
    gvwMasterPROCESSUI: TcxGridDBBandedColumn;
    actViewList: TNAction;
    actRunProcess: TNAction;
    tmrRefresh: TTimer;
    actRunAllProcess: TNAction;
    popMaster: TPopupMenu;
    cdsBatchProcessPROCESSDESC: TStringField;
    gvwMasterPROCESSDESC: TcxGridDBBandedColumn;
    cdsBatchProcessCONCOUNT: TIntegerField;
    cdsBatchProcessPROSCOUNT: TIntegerField;
    cdsBatchProcessBATCH_CAT: TStringField;
    cdsBatchProcessREPEAT: TStringField;
    gvwMasterREPEAT: TcxGridDBBandedColumn;
    actCreateBatch: TNAction;
    N1: TMenuItem;
    CreateBatchProcess1: TMenuItem;
    cdsBatchProcessDetail: TNClientDataset;
    cdsBatchProcessDetailPROCESSID: TIntegerField;
    cdsBatchProcessDetailSEQID: TIntegerField;
    cdsBatchProcessDetailSTARTTIME: TDateTimeField;
    cdsBatchProcessDetailENDTIME: TDateTimeField;
    cdsBatchProcessDetailPROCESSUI: TStringField;
    cdsBatchProcessDetailPROCESSDESC: TStringField;
    cdsBatchProcessDetailSTATUS: TStringField;
    grdMasterLevel2: TcxGridLevel;
    gvwDetail: TcxGridDBBandedTableView;
    dsBatchProcessDetail: TDataSource;
    gvwDetailSTARTTIME: TcxGridDBBandedColumn;
    gvwDetailENDTIME: TcxGridDBBandedColumn;
    gvwDetailPROCESSUI: TcxGridDBBandedColumn;
    gvwDetailPROCESSDESC: TcxGridDBBandedColumn;
    gvwDetailSTATUS: TcxGridDBBandedColumn;
    gvwMasterBATCH_CAT: TcxGridDBBandedColumn;
    actRunSelectedProcess: TNAction;
    RunSelectedProcess1: TMenuItem;
    cdsBatchPermission: TNClientDataset;
    cdsBatchPermissionBATCHID: TIntegerField;
    cdsBatchProcessFLAGPERMISSION: TBooleanField;
    cdsBatchProcessBATCHID: TIntegerField;
    cdsBatchProcessDONE_FREQ: TIntegerField;
    gvwMasterFLAGPERMISSION: TcxGridDBBandedColumn;
    cdsBatchProcessNOTI_TIME: TDateTimeField;
    cdsBatchProcessEMAILTYPE: TStringField;
    cdsBatchProcessNOTIF: TStringField;
    procedure actViewListExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRunProcessExecute(Sender: TObject);
    procedure tmrRefreshTimer(Sender: TObject);
    procedure actRunAllProcessExecute(Sender: TObject);
    procedure cdsBatchProcessCalcFields(DataSet: TDataSet);
    procedure actCreateBatchExecute(Sender: TObject);
    procedure actRunProcessUpdate(Sender: TObject);
    procedure actRunSelectedProcessExecute(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actRunSelectedProcessUpdate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure RunSelectedProcess(ABatchCAT: string);
  public
    { Public declarations }
    procedure ProcessCallbackMessage(s: String);
    procedure ViewBatchProcess;
  end;

var
  frmEndOfDay: TfrmEndOfDay;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmEndOfDay.actCreateBatchExecute(Sender: TObject);
begin
  inherited;
//  tmrRefresh.Enabled := False;
  if cdsBatchProcess.IsEmpty then
    dmGlobal.RemoteServer.GenerateBatchProcess(dtTransDate.Date)
  else
    MessageDlg('It''s has been created...', mtError, [mbOK], 0);

  actViewList.Execute;
//  tmrRefresh.Enabled := True;
end;

procedure TfrmEndOfDay.actRunAllProcessExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to run all process for transaction date ' +
    FormatDateTime('dd MMM yyyy ?', cdsBatchProcessTRANSDATE.AsDateTime), mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.PostingAllDealTicket(DateTimeToFileDate(cdsBatchProcessTRANSDATE.AsDateTime));
    dmGlobal.RemoteServer.CloseAllContract(DateTimeToFileDate(cdsBatchProcessTRANSDATE.AsDateTime));
  end;
end;

procedure TfrmEndOfDay.actRunProcessExecute(Sender: TObject);
begin
  inherited;
  RunSelectedProcess(gvwMaster.DataController.Controller.SelectedRecords[0].Values[gvwMasterBATCH_CAT.Index]);
end;

procedure TfrmEndOfDay.actRunProcessUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not cdsBatchProcess.IsEmpty;
end;

procedure TfrmEndOfDay.actRunSelectedProcessExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to gvwMaster.DataController.Controller.SelectedRecordCount -1 do
    RunSelectedProcess(gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterBATCH_CAT.Index])

end;

procedure TfrmEndOfDay.actRunSelectedProcessUpdate(Sender: TObject);
begin
  inherited;
  if cdsBatchProcess.IsEmpty then
    TAction(Sender).Enabled := False
  else
  begin
    TAction(Sender).Enabled := cdsBatchProcessFLAGPERMISSION.AsBoolean;
  end;
end;

procedure TfrmEndOfDay.actViewListExecute(Sender: TObject);
begin
  inherited;
//  tmrRefresh.Enabled := False;

  cdsBatchProcess.Close;
  cdsBatchProcess.Params[0].AsDate := dtTransDate.Date;
  cdsBatchProcess.Open;

  cdsBatchProcessDetail.Close;
  cdsBatchProcessDetail.Params[0].AsDate := dtTransDate.Date;
  cdsBatchProcessDetail.Open;

  cdsBatchPermission.Close;
  cdsBatchPermission.Params[0].AsString := dmGlobal.UserID;
  cdsBatchPermission.Open;

  cdsBatchProcess.First;
  while not cdsBatchProcess.Eof do
  begin
    cdsBatchProcess.Edit;
    cdsBatchProcessFLAGPERMISSION.AsBoolean := cdsBatchPermission.Locate(
       'BATCHID', cdsBatchProcessBATCHID.AsInteger, []);
    cdsBatchProcess.Post;

    cdsBatchProcess.Next;
  end;

//  tmrRefresh.Enabled := True;
end;

procedure TfrmEndOfDay.cdsBatchProcessCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsBatchProcessPROCESSID.AsInteger = 1 then
  begin
    cdsBatchProcessCONCOUNT.AsInteger := dmGlobal.RemoteServer.ContractCount;
    cdsBatchProcessPROSCOUNT.AsInteger := dmGlobal.RemoteServer.ProcessCount;
  end;
end;

procedure TfrmEndOfDay.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
//  dmGlobal.GlobalCallbackManager.RegisterCallback('BatchProcessMonitoring',
//     TMyCallback.Create);
  actViewList.Execute;
end;

procedure TfrmEndOfDay.FormDestroy(Sender: TObject);
begin
  inherited;
//  dmGlobal.GlobalCallbackManager.UnregisterCallback('BatchProcessMonitoring');
end;

procedure TfrmEndOfDay.gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwMasterFLAGPERMISSION.Index] = False then
  begin
//    ACanvas.FrameRect(AViewInfo.Bounds, dmGlobal.ncDisableCOB.Color);
    ACanvas.Font.Color := dmGlobal.ncDisableCOB.TextColor;
    ACanvas.Font.Style := [fsItalic];
//  end
//  else
//  begin
//    ACanvas.Font.Style := [];
//    if AViewInfo.Selected then
//    begin
//      if AViewInfo.Item.Focused then
//      begin
//        ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
//        ACanvas.Font.Color := clWhite;
//      end;
//    end;
  end;
end;

procedure TfrmEndOfDay.ProcessCallbackMessage(s: String);
begin
  if s = '"UpdateBatchProcessView"' then
  begin
    TThread.Queue(nil,
      procedure
      begin
        ViewBatchProcess;
      end);
  end;
end;

procedure TfrmEndOfDay.RunSelectedProcess(ABatchCAT: string);
var
  dNextDate: TDateTime;
begin
  inherited;
  if not cdsBatchProcess.IsEmpty then
  begin
//    dNextDate := dmGlobal.RemoteServer.GetValueDate(dtTransDate.Date, 1);
//
//    if cdsBatchProcessBATCH_CAT.AsString = 'MK' then
//      dmGlobal.RemoteServer.GenerateToExtData(dtTransDate.Date)
//    else if cdsBatchProcessBATCH_CAT.AsString = 'CP' then
//      dmGlobal.RemoteServer.CashPosToNextDate(dtTransDate.Date, dNextDate)
//    else if cdsBatchProcessBATCH_CAT.AsString = 'SP' then
//      dmGlobal.RemoteServer.StockPosToNextDate(dtTransDate.Date, dNextDate);

    dmGlobal.RemoteServer.BatchProcess(ABatchCAT, dtTransDate.Date);
  end;
end;

procedure TfrmEndOfDay.tmrRefreshTimer(Sender: TObject);
var
  bPos, bPosDet: TBookmark;
begin
  inherited;

  if cdsBatchProcess.IsEmpty then bPos := nil
  else bPos := cdsBatchProcess.GetBookmark;

  cdsBatchProcess.Close;
  cdsBatchProcess.Open;

  if bPos <> nil then cdsBatchProcess.GotoBookmark(bPos);

  if cdsBatchProcessDetail.IsEmpty then bPosDet := nil
  else bPosDet := cdsBatchProcessDetail.GetBookmark;

  cdsBatchProcessDetail.Close;
  cdsBatchProcessDetail.Open;

  if bPosDet <> nil then cdsBatchProcessDetail.GotoBookmark(bPosDet);
end;

procedure TfrmEndOfDay.ViewBatchProcess;
begin
  cdsBatchProcess.Close;
  cdsBatchProcess.Params[0].AsDate := dtTransDate.Date;
  cdsBatchProcess.Open;

  cdsBatchProcessDetail.Close;
  cdsBatchProcessDetail.Params[0].AsDate := dtTransDate.Date;
  cdsBatchProcessDetail.Open;

  cdsBatchPermission.Close;
  cdsBatchPermission.Params[0].AsString := dmGlobal.UserID;
  cdsBatchPermission.Open;

  cdsBatchProcess.First;
  while not cdsBatchProcess.Eof do
  begin
    cdsBatchProcess.Edit;
    cdsBatchProcessFLAGPERMISSION.AsBoolean := cdsBatchPermission.Locate(
       'BATCHID', cdsBatchProcessBATCHID.AsInteger, []);
    cdsBatchProcess.Post;

    cdsBatchProcess.Next;
  end;

  gvwMaster.ApplyBestFit();
  gvwDetail.ApplyBestFit();
end;

{ TMyCallBack }

function TMyCallBack.Execute(const Arg: TJSONValue): TJSONValue;
var
  iRes: Integer;
  oForm: TfrmBasic;
begin
  Result := TJSONFalse.Create;
  iRes := dmGlobal.FormList.IndexOf('TfrmEndOfDay');
  if iRes <> - 1 then
  begin
    oForm  := TfrmBasic(dmGlobal.FormList.Objects[iRes]);

    if (oForm is TfrmEndOfDay) then
    begin
      TfrmEndOfDay(oForm).ProcessCallbackMessage(Arg.ToString);
      Result := TJSONTrue.Create;
    end;
  end;

end;

Initialization
  RegisterClass(TfrmEndOfDay);

end.

