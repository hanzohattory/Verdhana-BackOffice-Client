unit FormUserMonitoring;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, Vcl.ActnList, NDatasetAction,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, NActionPermission, Vcl.Menus,
  Data.DBXJSON, System.JSON, System.Actions, dxDateRanges,
  dxScrollbarAnnotations;

type
  TMyCallBack = class(TDBXCallback)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

  TfrmUserMonitoring = class(TfrmBasic)
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    aclUserMonitoring: TActionList;
    actCloseSession: TNAction;
    cdsUserMonitoring: TClientDataSet;
    cdsUserMonitoringSESSION: TStringField;
    cdsUserMonitoringIPADDRESS: TStringField;
    cdsUserMonitoringCLIENTPORT: TStringField;
    cdsUserMonitoringPROTOCOL: TStringField;
    cdsUserMonitoringAPPNAME: TStringField;
    cdsUserMonitoringUSERID: TStringField;
    cdsUserMonitoringISMYSESSION: TBooleanField;
    cdsUserMonitoringCOMPNAME: TStringField;
    dsUserMonitoring: TDataSource;
    gvwMasterSESSION: TcxGridDBBandedColumn;
    gvwMasterIPADDRESS: TcxGridDBBandedColumn;
    gvwMasterCLIENTPORT: TcxGridDBBandedColumn;
    gvwMasterPROTOCOL: TcxGridDBBandedColumn;
    gvwMasterAPPNAME: TcxGridDBBandedColumn;
    gvwMasterUSERID: TcxGridDBBandedColumn;
    gvwMasterISMYSESSION: TcxGridDBBandedColumn;
    gvwMasterCOMPNAME: TcxGridDBBandedColumn;
    popBrowse: TPopupMenu;
    CloseSession1: TMenuItem;
    actRefresh: TNAction;
    Refresh1: TMenuItem;
    gvwMasterSTARTDATE: TcxGridDBBandedColumn;
    gvwMasterLASTACTIVITY: TcxGridDBBandedColumn;
    cdsUserMonitoringCLIENTID: TStringField;
    cdsUserMonitoringCALLBACKID: TStringField;
    cdsUserMonitoringSTARTDATE: TStringField;
    cdsUserMonitoringLASTACTIVITY: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCloseSessionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ProcessCallbackMessage(s: String);
    procedure GetConnectionInfo;
    function RandomId: String;
  end;

var
  frmUserMonitoring: TfrmUserMonitoring;

implementation

{$R *.dfm}

uses DataGlobal;

{ TMyCallBack }

function TMyCallBack.Execute(const Arg: TJSONValue): TJSONValue;
var
  iRes: Integer;
  oForm: TfrmBasic;
begin
  Result := TJSONFalse.Create;
  iRes := dmGlobal.FormList.IndexOf('TfrmUserMonitoring');
  if iRes <> - 1 then
  begin
    oForm  := TfrmBasic(dmGlobal.FormList.Objects[iRes]);

    if (oForm is TfrmUserMonitoring) then
    begin
      TfrmUserMonitoring(oForm).ProcessCallbackMessage(Arg.ToString);
      Result := TJSONTrue.Create;
    end;
  end;
end;

{ TfrmUserMonitoring }

procedure TfrmUserMonitoring.actCloseSessionExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  slSessionID: TStringList;
begin
  inherited;

  if MessageDlg('Are you sure to close selected session?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    slSessionID := TStringList.Create;
    Try
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.Controller.FocusedRecordIndex := RecIdx;

        slSessionID.Add(gvwMaster.DataController.DataSet.FieldByName('SESSION').AsString);
      end;

      dmGlobal.RemoteServer.CloseSession(slSessionID.Text);
    Finally
      FreeAndNil(slSessionID);
    End;

    cdsUserMonitoring.Refresh;
  end;
end;

procedure TfrmUserMonitoring.actRefreshExecute(Sender: TObject);
begin
  inherited;
  GetConnectionInfo;
end;

procedure TfrmUserMonitoring.FormCreate(Sender: TObject);
begin
  inherited;
  dmGlobal.GlobalCallbackManager.RegisterCallback('UserMonitoring', TMyCallback.Create);
  GetConnectionInfo;
end;

procedure TfrmUserMonitoring.FormDestroy(Sender: TObject);
begin
  inherited;
  dmGlobal.GlobalCallbackManager.UnregisterCallback('UserMonitoring');
end;

procedure TfrmUserMonitoring.GetConnectionInfo;
var
  slConnectionInfo, slCurrentConnectionInfo: TStringList;
  i, j: Integer;
  wDate, wMonth, wYear,
  wHour, wMinute, wSecond, wMiliSecond: Word;
  dtStart: TDateTime;
begin
  cdsUserMonitoring.Close;
  cdsUserMonitoring.CreateDataSet;
  cdsUserMonitoring.DisableControls;
  slConnectionInfo := TStringList.Create;
  slCurrentConnectionInfo := TStringList.Create;
  Try
    slConnectionInfo.Text := dmGlobal.RemoteServer.GetAllClientConnectionInfo;
    for i := 0 to slConnectionInfo.Count - 1 do
    begin
      cdsUserMonitoring.Append;
      dmGlobal.ParseDelimited(slCurrentConnectionInfo, slConnectionInfo[i], ';');
      for j := 0 to slCurrentConnectionInfo.Count - 1 do
      begin
        dtStart := EncodeDate(StrToInt(Copy(slCurrentConnectionInfo[8],1,4)),
          StrToInt(Copy(slCurrentConnectionInfo[8],5,2)),
          StrToInt(Copy(slCurrentConnectionInfo[8],7,2)));

        cdsUserMonitoringSESSION.AsString := slCurrentConnectionInfo[0];
        cdsUserMonitoringIPADDRESS.AsString := slCurrentConnectionInfo[1];
        cdsUserMonitoringCLIENTPORT.AsString := slCurrentConnectionInfo[2];
        cdsUserMonitoringPROTOCOL.AsString := slCurrentConnectionInfo[3];
        cdsUserMonitoringAPPNAME.AsString := slCurrentConnectionInfo[4];
        cdsUserMonitoringUSERID.AsString := slCurrentConnectionInfo[5];
        cdsUserMonitoringISMYSESSION.AsBoolean := slCurrentConnectionInfo[6] = '1';
        cdsUserMonitoringCOMPNAME.AsString := slCurrentConnectionInfo[7];
        cdsUserMonitoringSTARTDATE.AsString := FormatDateTime('dd mmm yyyy', dtStart);
        cdsUserMonitoringLASTACTIVITY.AsString := Copy(slCurrentConnectionInfo[9],9,2) +':'+
          Copy(slCurrentConnectionInfo[9],11,2)+'.'+ Copy(slCurrentConnectionInfo[9],13,4);//slCurrentConnectionInfo[9];
        cdsUserMonitoringCLIENTID.AsString := slCurrentConnectionInfo[10];
        cdsUserMonitoringCALLBACKID.AsString := slCurrentConnectionInfo[11];
      end;
      cdsUserMonitoring.Post;
    end;
  Finally
    FreeAndNil(slCurrentConnectionInfo);
    FreeAndNil(slConnectionInfo);
    cdsUserMonitoring.EnableControls;
    gvwMaster.ApplyBestFit();
  end;
end;

procedure TfrmUserMonitoring.ProcessCallbackMessage(s: String);
begin
  if s = '"UpdateConnectionListInfo"' then
  begin
    TThread.Queue(nil,
      procedure
      begin
        GetConnectionInfo;
      end);
  end;
end;

function TfrmUserMonitoring.RandomId: String;
begin
  Result := IntToStr(Random(10000)) + '.' + IntToStr(Random(10000)) + '.' + IntToStr(Random(10000));
end;

Initialization
  RegisterClass(TfrmUserMonitoring);

end.
