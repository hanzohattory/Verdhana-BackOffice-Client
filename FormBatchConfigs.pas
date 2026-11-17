unit FormBatchConfigs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, Vcl.ActnList,
  NActionPermission, Vcl.Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  dxLayoutContainer, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxCalendar, cxTimeEdit,
  dxLayoutControlAdapters, NDatasetAction, Vcl.StdCtrls, cxButtons,
  cxCheckBox, System.Actions, cxGridDBTableView, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmBatchConfigs = class(TfrmBasic)
    ActionList: TActionList;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    glvBatchConfigs: TcxGridLevel;
    grdBatchConfigs: TcxGrid;
    gvwBatchConfigs: TcxGridDBBandedTableView;
    cdsBatchConfigs: TNClientDataset;
    cdsBatchConfigsBATCHID: TIntegerField;
    cdsBatchConfigsCAT_CODE: TStringField;
    cdsBatchConfigsCAT_DESC: TStringField;
    cdsBatchConfigsPROCTIME: TDateTimeField;
    cdsBatchConfigsPERIODIC: TStringField;
    cdsBatchConfigsPROCDATE: TStringField;
    cdsBatchConfigsMODDA: TDateTimeField;
    cdsBatchConfigsMODUI: TStringField;
    cdsBatchConfigsAPPDA: TDateTimeField;
    cdsBatchConfigsAPPUI: TStringField;
    cdsBatchConfigsUNDER4Y: TIntegerField;
    cdsBatchConfigsUNDER4YDA: TDateTimeField;
    cdsBatchConfigsNOTES4Y: TStringField;
    cdsBatchConfigsISDEL: TIntegerField;
    cdsBatchConfigsID: TLargeintField;
    cdsBatchConfigsAUTO: TStringField;
    cdsBatchConfigsDAYPROCTYPE: TStringField;
    cdsBatchConfigsREPEAT: TStringField;
    cdsBatchConfigsSEQNO: TIntegerField;
    cdsBatchConfigsNOTI_TIME: TDateTimeField;
    cdsBatchConfigsEMAILTYPE: TStringField;
    cdsBatchConfigsSCRIPT_TYPE: TStringField;
    cdsBatchConfigsEXEC_SCRIPT: TStringField;
    cdsBatchConfigsSCRIP_PARAM: TStringField;
    dsBatchConfigs: TDataSource;
    gvwBatchConfigsBATCHID: TcxGridDBBandedColumn;
    gvwBatchConfigsCAT_CODE: TcxGridDBBandedColumn;
    gvwBatchConfigsCAT_DESC: TcxGridDBBandedColumn;
    gvwBatchConfigsPROCTIME: TcxGridDBBandedColumn;
    gvwBatchConfigsPERIODIC: TcxGridDBBandedColumn;
    gvwBatchConfigsPROCDATE: TcxGridDBBandedColumn;
    gvwBatchConfigsAUTO: TcxGridDBBandedColumn;
    gvwBatchConfigsDAYPROCTYPE: TcxGridDBBandedColumn;
    gvwBatchConfigsREPEAT: TcxGridDBBandedColumn;
    gvwBatchConfigsSEQNO: TcxGridDBBandedColumn;
    gvwBatchConfigsNOTI_TIME: TcxGridDBBandedColumn;
    gvwBatchConfigsEMAILTYPE: TcxGridDBBandedColumn;
    gvwBatchConfigsSCRIPT_TYPE: TcxGridDBBandedColumn;
    gvwBatchConfigsEXEC_SCRIPT: TcxGridDBBandedColumn;
    gvwBatchConfigsSCRIP_PARAM: TcxGridDBBandedColumn;
    dtTransDate: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cmbPeriodic: TcxImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsBatchProcHis: TClientDataSet;
    cdsBatchProcHisBATCHID: TLargeintField;
    cdsBatchProcHisPROCESSDATE: TDateField;
    cdsBatchProcHisSTARTTIME: TDateTimeField;
    cdsBatchProcHisENDTIME: TDateTimeField;
    cdsBatchProcHisSTAT: TStringField;
    cdsBatchProcHisSEQNO: TLargeintField;
    dsBatchProcHis: TDataSource;
    dxLayoutControl1Group2: TdxLayoutGroup;
    actProcessBatch: TNAction;
    cdsBatchConfigsSTAT: TIntegerField;
    gvwBatchConfigsSTAT: TcxGridDBBandedColumn;
    cxButton2: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cmbAction: TcxImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsBacthStatus: TNClientDataset;
    cdsBacthStatus__COLUMN1: TIntegerField;
    cdsBatchConfigsLAST_STAT: TStringField;
    gvwBatchConfigsLAST_STAT: TcxGridDBBandedColumn;
    cdsBatchProcHisOUTPUT_MESSAGE: TStringField;
    cdsBatchConfigsMessage: TStringField;
    gvwBatchConfigsMessage: TcxGridDBBandedColumn;
    cdsBacthBatchStatus: TNClientDataset;
    IntegerField1: TIntegerField;
    dtNextTransDate: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    gvwBatchProcHis: TcxGridDBBandedTableView;
    gvwBatchProcHisBATCHID: TcxGridDBBandedColumn;
    gvwBatchProcHisPROCESSDATE: TcxGridDBBandedColumn;
    gvwBatchProcHisSTARTTIME: TcxGridDBBandedColumn;
    gvwBatchProcHisENDTIME: TcxGridDBBandedColumn;
    gvwBatchProcHisSTAT: TcxGridDBBandedColumn;
    gvwBatchProcHisSEQNO: TcxGridDBBandedColumn;
    gvwBatchProcHisOUTPUT_MESSAGE: TcxGridDBBandedColumn;
    glvBatchConfigHis: TcxGridLevel;
    gvwBatchConfigHis: TcxGridDBBandedTableView;
    gvwBatchConfigHisBATCHID: TcxGridDBBandedColumn;
    gvwBatchConfigHisPROCESSDATE: TcxGridDBBandedColumn;
    gvwBatchConfigHisSTARTTIME: TcxGridDBBandedColumn;
    gvwBatchConfigHisENDTIME: TcxGridDBBandedColumn;
    gvwBatchConfigHisSTAT: TcxGridDBBandedColumn;
    gvwBatchConfigHisSEQNO: TcxGridDBBandedColumn;
    gvwBatchConfigHisOUTPUT_MESSAGE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actProcessBatchExecute(Sender: TObject);
    procedure cmbActionPropertiesCloseUp(Sender: TObject);
    procedure cmbPeriodicPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;

    procedure BatchProcessing;
  public
    { Public declarations }
  end;

var
  frmBatchConfigs: TfrmBatchConfigs;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmBatchConfigs.actProcessBatchExecute(Sender: TObject);
begin
  inherited;
  dmGlobal.EndDayProcess := True;
  if not dmGlobal.EndDayProcess then
    Exit;

  Cursor := crHourGlass;
  try
    Application.ProcessMessages;
    try
      BatchProcessing;
    except
      on E: Exception do
      begin
        MessageDlg('Error : '+E.Message, mtError, [mbOk], 0);
      end;
    end;
  finally
    dmGlobal.EndDayProcess := False;
    Cursor := crDefault;
  end;
end;

procedure TfrmBatchConfigs.BatchProcessing;
var
  sStatus: string;
  tStartTime,
  tEndTime: TTime;
  oParamList: TStringList;
  sParameters, sParam: string;
  i: Integer;
  wDate, wMonth, wYear, wCurrYear: Word;
  sMsg: string;
  bCheck: Boolean;
begin
  inherited;
  DecodeDate(FTransDate, wYear, wMonth, wDate);
  wCurrYear := wYear;
  Inc(wYear);

  cdsBatchConfigs.First;
  while not cdsBatchConfigs.Eof do
  begin
    sMsg := '';

    if cdsBatchConfigsSCRIPT_TYPE.AsString = 'PROC' then
    begin
      //tambahan dari irvan 2019.04.29, proses batch akan diulang tanpa melihat hasil akhir di history
      bCheck := True;

      if cdsBatchConfigsPERIODIC.AsString <> 'D' then
      begin
        cdsBatchProcHis.Filter   := 'BATCHID = '+cdsBatchConfigsBATCHID.AsString+' and STAT = '+QuotedStr('S');
        cdsBatchProcHis.Filtered := True;

        if not cdsBatchProcHis.IsEmpty then
        begin
          sStatus := 'S';
          bCheck  := False;
        end
        else
          bCheck := True;
      end;

      if bCheck then
      begin
        try
          sParameters := '';
          oParamList  := TStringList.Create;
          dmGlobal.ParseDelimited(oParamList, cdsBatchConfigsSCRIP_PARAM.AsString, ';');

          for i := 0 to oParamList.Count -1 do
          begin
            if oParamList.Strings[i] = 'MODUI' then
              sParam := dmGlobal.UserID
            else if oParamList.Strings[i] = 'PERIOD' then
              sParam := FormatDateTime('YYYY', FTransDate)
            else if oParamList.Strings[i] = 'TRANSDATE' then
              sParam := FormatDateTime('YYYYMMDD', FTransDate)
            else if oParamList.Strings[i] = 'NEXTDATE' then
              sParam := FormatDateTime('YYYYMMDD', (FTransDate + 1))
//              sParam := FormatDateTime('YYYYMMDD', dmGlobal.RemoteServer.GetNextTradingDate(FTransDate, 1))
            else if oParamList.Strings[i] = 'NEXTMONTH' then
              sParam := FormatDateTime('mm', IncMonth(FTransDate))
            else if oParamList.Strings[i] = 'NEXTYEAR' then
              sParam := IntToStr(wYear)
            else if oParamList.Strings[i] = 'CURRYEAR' then
              sparam := IntToStr(wCurrYear);

            if sParameters = '' then sParameters := sParam else sParameters := sParameters +';'+ sParam;
          end;

          tStartTime := dmGlobal.RemoteServer.GetServerTimeStamp;
          sStatus    := dmGlobal.RemoteServer.BatchProcessing(cdsBatchConfigsBATCHID.AsInteger, sParameters, sMsg);
          tEndTime   := dmGlobal.RemoteServer.GetServerTimeStamp;
        finally
          FreeAndNil(oParamList);
        end;

        if sStatus <> '' then
        begin
          cdsBatchProcHis.Append;
          cdsBatchProcHisBATCHID.AsInteger       := cdsBatchConfigsBATCHID.AsInteger;
          cdsBatchProcHisPROCESSDATE.AsDateTime  := FTransDate;
          cdsBatchProcHisSTARTTIME.AsDateTime    := tStartTime;
          cdsBatchProcHisENDTIME.AsDateTime      := tEndTime;
          cdsBatchProcHisSTAT.AsString           := sStatus;
          cdsBatchProcHisSEQNO.AsInteger         := dmGlobal.RemoteServer.GetSeq('TBL_BATCH'+cdsBatchConfigsBATCHID.AsString+DateToStr(FTransDate));
          cdsBatchProcHisOUTPUT_MESSAGE.AsString := sMsg;
          cdsBatchProcHis.Post;
          cdsBatchProcHis.ApplyUpdates(-1);
        end;
      end;
    end;

    if cdsBatchConfigsSCRIPT_TYPE.AsString = 'DE' then
    begin
      cdsBacthStatus.Close;
      cdsBacthStatus.Params[0].AsDate := FTransDate;
      cdsBacthStatus.Open;

      if cdsBacthStatus.Fields[0].AsInteger = 0 then
      begin
        cdsBatchProcHis.Filter   := 'BATCHID = '+cdsBatchConfigsBATCHID.AsString+' and STAT = '+QuotedStr('S');
        cdsBatchProcHis.Filtered := True;

        if not cdsBatchProcHis.IsEmpty then
          sStatus := cdsBatchProcHisSTAT.AsString
        else
        begin
          tStartTime := dmGlobal.RemoteServer.GetServerTimeStamp;
          sMsg       := dmGlobal.RemoteServer.BatchNextTradingDay(FTransDate, dmGlobal.UserID);
          sStatus    := dmGlobal.GetStringDelimiter(sMsg, '|');
          tEndTime   := dmGlobal.RemoteServer.GetServerTimeStamp;

          if sStatus <> '' then
          begin
            cdsBatchProcHis.Append;
            cdsBatchProcHisBATCHID.AsInteger       := cdsBatchConfigsBATCHID.AsInteger;
            cdsBatchProcHisPROCESSDATE.AsDateTime  := FTransDate;
            cdsBatchProcHisSTARTTIME.AsDateTime    := tStartTime;
            cdsBatchProcHisENDTIME.AsDateTime      := tEndTime;
            cdsBatchProcHisSTAT.AsString           := sStatus;
            cdsBatchProcHisSEQNO.AsInteger         := dmGlobal.RemoteServer.GetSeq('TBL_BATCH'+cdsBatchConfigsBATCHID.AsString+DateToStr(FTransDate));
            cdsBatchProcHisOUTPUT_MESSAGE.AsString := sMsg;
            cdsBatchProcHis.Post;
            cdsBatchProcHis.ApplyUpdates(-1);

            if sStatus = 'S' then
              actProcessBatch.Enabled := False;
          end;
        end;
      end
      else
      begin
        sStatus := 'F';
        sMsg    := 'There is still fail process';
        MessageDlg('Please check status of batch process before next trading date', mtWarning, [mbOk], 0);
      end;
    end;

    cdsBatchConfigs.Edit;
    cdsBatchConfigsSTAT.AsInteger     := 1;
    cdsBatchConfigsLAST_STAT.AsString := sStatus;
    cdsBatchConfigsMessage.AsString   := sMsg;
    cdsBatchConfigs.Post;

    cdsBatchProcHis.Filtered := False;
    Application.ProcessMessages;
    cdsBatchConfigs.Next;
  end;

  cdsBatchProcHis.Close;
  cdsBatchProcHis.Params[0].AsDate := FTransDate;
  cdsBatchProcHis.Open;
end;

procedure TfrmBatchConfigs.cmbActionPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  if cmbAction.EditValue = 'B' then
  begin
    cdsBatchConfigs.Close;
    cdsBatchConfigs.Params[0].AsString := 'D';
    cdsBatchConfigs.Open;
  end
  else
  begin
    cdsBacthBatchStatus.Close;
    cdsBacthBatchStatus.Params[0].AsDate := FTransDate;
    cdsBacthBatchStatus.Open;

    if cdsBacthBatchStatus.Fields[0].AsInteger = 0 then
    begin
      cdsBatchConfigs.Close;
      cdsBatchConfigs.Params[0].AsString := 'X';
      cdsBatchConfigs.Open;
    end
    else
    begin
      MessageDlg('Please check status of batch process before process next trading date', mtWarning, [mbOk], 0);

      cmbAction.EditValue := 'B';
    end;
  end;
end;

procedure TfrmBatchConfigs.cmbPeriodicPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  cdsBatchConfigs.Close;
  cdsBatchConfigs.Params[0].AsString := cmbPeriodic.EditValue;
  cdsBatchConfigs.Open;

  cmbAction.Enabled := cmbPeriodic.EditValue = 'D'
end;

procedure TfrmBatchConfigs.FormCreate(Sender: TObject);
var
  iNextDate: Integer;
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;
  iNextDate  := DateTimeToFileDate(FTransDate);

  cdsBatchConfigs.Close;
  cdsBatchConfigs.Params[0].AsString := 'D';
  cdsBatchConfigs.Open;

  cdsBatchProcHis.Close;
  cdsBatchProcHis.Params[0].AsDate := FTransDate;
  cdsBatchProcHis.Open;

  dtTransDate.EditValue     := FormatDateTime('dd mmm yyyy', FTransDate);
  dtNextTransDate.EditValue := FormatDateTime('dd mmm yyyy', FTransDate + 1); //dmGlobal.RemoteServer.DateAppend(iNextDate, 1));
end;

Initialization
  RegisterClass(TfrmBatchConfigs);

end.
