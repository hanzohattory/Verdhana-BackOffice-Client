unit FormDTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Datasnap.DBClient, NClientDataset,
  Vcl.ActnList, NDatasetAction, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dxLayoutControl,
  NActionPermission, dbf, cxButtonEdit, cxSplitter, DBXJSON, Data.DBXJSONCommon,
  System.JSON, System.Actions, DateUtils, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmDTE = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    grdDTE: TcxGrid;
    gvwDTE: TcxGridDBBandedTableView;
    grdDTELevel1: TcxGridLevel;
    dtTransDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    aclDTE: TActionList;
    actViewData: TNAction;
    actImportDTE: TNAction;
    cdsDTE: TNClientDataset;
    dsDTE: TDataSource;
    popDTE: TPopupMenu;
    ImportDTE1: TMenuItem;
    dbfDTE: TDbf;
    cdsDTEDTEID: TLargeintField;
    cdsDTETRX_CODE: TIntegerField;
    cdsDTETRX_POST: TSmallintField;
    cdsDTETRX_NOTE: TStringField;
    cdsDTETRX_SESS: TLargeintField;
    cdsDTETRX_TYPE: TStringField;
    cdsDTEBRK_COD2: TStringField;
    cdsDTEINV_TYP2: TStringField;
    cdsDTEBRK_COD1: TStringField;
    cdsDTEINV_TYP1: TStringField;
    cdsDTESTK_CODE: TStringField;
    cdsDTESTK_VOLM: TLargeintField;
    cdsDTESTK_PRIC: TFloatField;
    cdsDTETRX_DATE: TDateField;
    cdsDTETRX_REF2: TStringField;
    cdsDTETRX_REF1: TStringField;
    cdsDTETRX_KOPUR: TFloatField;
    cdsDTETRX_TIME: TStringField;
    cdsDTETRX_USER: TStringField;
    cdsDTETRADING_ID: TStringField;
    cdsDTEMODDA: TDateTimeField;
    cdsDTEMODUI: TStringField;
    gvwDTETRX_CODE: TcxGridDBBandedColumn;
    gvwDTETRX_POST: TcxGridDBBandedColumn;
    gvwDTETRX_NOTE: TcxGridDBBandedColumn;
    gvwDTETRX_SESS: TcxGridDBBandedColumn;
    gvwDTETRX_TYPE: TcxGridDBBandedColumn;
    gvwDTEBRK_COD2: TcxGridDBBandedColumn;
    gvwDTEINV_TYP2: TcxGridDBBandedColumn;
    gvwDTEBRK_COD1: TcxGridDBBandedColumn;
    gvwDTEINV_TYP1: TcxGridDBBandedColumn;
    gvwDTESTK_CODE: TcxGridDBBandedColumn;
    gvwDTESTK_VOLM: TcxGridDBBandedColumn;
    gvwDTESTK_PRIC: TcxGridDBBandedColumn;
    gvwDTETRX_DATE: TcxGridDBBandedColumn;
    gvwDTETRX_ORD2: TcxGridDBBandedColumn;
    gvwDTETRX_ORD1: TcxGridDBBandedColumn;
    gvwDTETRX_REF2: TcxGridDBBandedColumn;
    gvwDTETRX_REF1: TcxGridDBBandedColumn;
    gvwDTETRX_KOPUR: TcxGridDBBandedColumn;
    gvwDTETRX_TIME: TcxGridDBBandedColumn;
    gvwDTETRX_USER: TcxGridDBBandedColumn;
    gvwDTETRADING_ID: TcxGridDBBandedColumn;
    gvwDTEMODDA: TcxGridDBBandedColumn;
    gvwDTEMODUI: TcxGridDBBandedColumn;
    txtDTEFile: TcxButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    OpenDialog: TOpenDialog;
    cxButton2: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    actUpdateDealTicketExecutionManual: TNAction;
    GenerateDealTicket1: TMenuItem;
    grdDTENonDeal: TcxGrid;
    gvwDTENonDeal: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    spMain: TcxSplitter;
    cdsDTENonDealTicket: TNClientDataset;
    cdsDTENonDealTicketDTEID: TLargeintField;
    cdsDTENonDealTicketTRX_CODE: TIntegerField;
    cdsDTENonDealTicketTRX_POST: TSmallintField;
    cdsDTENonDealTicketTRX_NOTE: TStringField;
    cdsDTENonDealTicketTRX_SESS: TLargeintField;
    cdsDTENonDealTicketTRX_TYPE: TStringField;
    cdsDTENonDealTicketBRK_COD2: TStringField;
    cdsDTENonDealTicketINV_TYP2: TStringField;
    cdsDTENonDealTicketBRK_COD1: TStringField;
    cdsDTENonDealTicketINV_TYP1: TStringField;
    cdsDTENonDealTicketSTK_CODE: TStringField;
    cdsDTENonDealTicketSTK_VOLM: TLargeintField;
    cdsDTENonDealTicketSTK_PRIC: TFloatField;
    cdsDTENonDealTicketTRX_DATE: TDateField;
    cdsDTENonDealTicketTRX_ORD2: TIntegerField;
    cdsDTENonDealTicketTRX_ORD1: TIntegerField;
    cdsDTENonDealTicketTRX_REF2: TStringField;
    cdsDTENonDealTicketTRX_REF1: TStringField;
    cdsDTENonDealTicketTRX_KOPUR: TFloatField;
    cdsDTENonDealTicketTRX_TIME: TStringField;
    cdsDTENonDealTicketTRX_USER: TStringField;
    cdsDTENonDealTicketTRADING_ID: TStringField;
    cdsDTENonDealTicketMODDA: TDateTimeField;
    cdsDTENonDealTicketMODUI: TStringField;
    dsDTENonDealTicket: TDataSource;
    gvwDTENonDealTRX_CODE: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_POST: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_NOTE: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_SESS: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_TYPE: TcxGridDBBandedColumn;
    gvwDTENonDealBRK_COD2: TcxGridDBBandedColumn;
    gvwDTENonDealINV_TYP2: TcxGridDBBandedColumn;
    gvwDTENonDealBRK_COD1: TcxGridDBBandedColumn;
    gvwDTENonDealINV_TYP1: TcxGridDBBandedColumn;
    gvwDTENonDealSTK_CODE: TcxGridDBBandedColumn;
    gvwDTENonDealSTK_VOLM: TcxGridDBBandedColumn;
    gvwDTENonDealSTK_PRIC: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_DATE: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_ORD2: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_ORD1: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_REF2: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_REF1: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_KOPUR: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_TIME: TcxGridDBBandedColumn;
    gvwDTENonDealTRX_USER: TcxGridDBBandedColumn;
    gvwDTENonDealTRADING_ID: TcxGridDBBandedColumn;
    gvwDTENonDealMODDA: TcxGridDBBandedColumn;
    gvwDTENonDealMODUI: TcxGridDBBandedColumn;
    actImportDTE2: TNAction;
    cdsUploadDTE: TNClientDataset;
    cdsUploadDTEROWNO: TIntegerField;
    cdsUploadDTETRX_CODE: TIntegerField;
    cdsUploadDTETRX_POST: TSmallintField;
    cdsUploadDTETRX_NOTE: TStringField;
    cdsUploadDTETRX_SESS: TLargeintField;
    cdsUploadDTETRX_TYPE: TStringField;
    cdsUploadDTEBRK_COD2: TStringField;
    cdsUploadDTEINV_TYP2: TStringField;
    cdsUploadDTEBRK_COD1: TStringField;
    cdsUploadDTEINV_TYP1: TStringField;
    cdsUploadDTESTK_CODE: TStringField;
    cdsUploadDTESTK_VOLM: TLargeintField;
    cdsUploadDTESTK_PRIC: TFloatField;
    cdsUploadDTETRX_DATE: TDateField;
    cdsUploadDTETRX_ORD2: TIntegerField;
    cdsUploadDTETRX_ORD1: TIntegerField;
    cdsUploadDTETRX_REF2: TStringField;
    cdsUploadDTETRX_REF1: TStringField;
    cdsUploadDTETRX_KOPUR: TFloatField;
    cdsUploadDTETRX_TIME: TStringField;
    cdsUploadDTETRX_USER: TStringField;
    cdsUploadDTETRADING_ID: TStringField;
    cdsDTETRX_ORD2: TIntegerField;
    cdsDTETRX_ORD1: TIntegerField;
    dbfDTETRX_CODE: TIntegerField;
    dbfDTETRX_POST: TSmallintField;
    dbfDTETRX_NOTE: TStringField;
    dbfDTETRX_SESS: TFloatField;
    dbfDTETRX_TYPE: TStringField;
    dbfDTEBRK_COD2: TStringField;
    dbfDTEINV_TYP2: TStringField;
    dbfDTEBRK_COD1: TStringField;
    dbfDTEINV_TYP1: TStringField;
    dbfDTESTK_VOLM: TFloatField;
    dbfDTESTK_PRIC: TFloatField;
    dbfDTETRX_DATE: TDateField;
    dbfDTETRX_ORD2: TFloatField;
    dbfDTETRX_ORD1: TFloatField;
    dbfDTETRX_REF2: TStringField;
    dbfDTETRX_REF1: TStringField;
    dbfDTETRX_KOPUR: TFloatField;
    dbfDTETRX_TIME: TStringField;
    dbfDTETRX_USER: TStringField;
    dbfDTETRADING_ID: TStringField;
    dbfDTESTK_CODE: TStringField;
    btnGenerateDealTocket: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    actGenerateDealTicket: TNAction;
    cxButton3: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    procedure actGenerateDealTicketExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actImportDTEUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actImportDTEExecute(Sender: TObject);
    procedure actGenerateDealTicketUpdate(Sender: TObject);
    procedure actUpdateDealTicketExecutionManualExecute(Sender: TObject);
    procedure actImportDTE2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDTE: TfrmDTE;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmDTE.actGenerateDealTicketExecute(Sender: TObject);
var
  sResult: String;
begin
  inherited;
  if MessageDlg('Do you want to generate deal ticket from this DTE?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.GenerateDealTicketFromDTE(dtTransDate.EditValue, sResult);
    ShowMessage(sResult);
  end;
end;

procedure TfrmDTE.actUpdateDealTicketExecutionManualExecute(Sender: TObject);
var
  sResult: String;
begin
  inherited;
  if MessageDlg('Do you want to update deal ticket manual execution from this DTE?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.GenerateUpdateDataExecutionFromDTE(dtTransDate.EditValue, sResult);
    ShowMessage(sResult);
  end;
end;

procedure TfrmDTE.actGenerateDealTicketUpdate(Sender: TObject);
begin
  inherited;
//  actGenerateDealTicket.Enabled := (cdsDTE.Active) and (not cdsDTE.IsEmpty);
end;

procedure TfrmDTE.actImportDTE2Execute(Sender: TObject);
var
  sFileName: String;
  oFileStream: TFileStream;
  oFileArray: TJSONArray;
begin
  inherited;

  sFileName := txtDTEFile.Text;
  if FileExists(sFileName) then
  begin
    oFileStream := TFileStream.Create(sFileName, fmOpenRead);
    oFileArray := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
    Screen.Cursor := crSQLWait;
    try
      if dmGlobal.RemoteServer.UploadDTE(oFileArray, ExtractFileName(sFileName)) then
      begin
        Screen.Cursor := crDefault;
        actViewData.Execute;
      end;
    finally
      Screen.Cursor := crDefault;
      FreeAndNil(oFileStream);
    end;
  end;

end;

procedure TfrmDTE.actImportDTEExecute(Sender: TObject);
var
  bContinue, bParticipant: Boolean;
  sMessage: String;
  oTargetField: TField;
  i, j, n, iError: Integer;
  sUser: String;
  dtProcessDateTime: TDateTime;
  oProgress: TfrmProgressBar;
  slBrokerCodeParticipant: TStringList;
  sUserID, sIPAddress, sCompName, sMsg, sProcess, sKey: String;
  editDate: TDateTime;
  sSQL: string;
begin
  inherited;
  bContinue := False;

  dbfDTE.Close;
  dbfDTE.TableName := txtDTEFile.Text;
  dbfDTE.Open;

  sMessage := 'System detect that DTE file already uploaded to Database' + #13 + #10 +
    'Do you want to insert existing DTE file?';

  if dbfDTE.IsEmpty then
  begin
    ShowMessage('Choose another DTE File! This DTE File is empty.');
    Exit;
  end
  else
  begin
    if DateOf(dbfDTE.FieldByName('TRX_DATE').AsDateTime) <> DateOf(dtTransDate.Date) then
    begin
      ShowMessage('This DTE transaction date ' + FormatDateTime('dd MMM yyyy', dbfDTE.FieldByName('TRX_DATE').AsDateTime)
        + ' different with your transaction date choosed.' + #13
        + 'Choose another DTE File with same transaction date!');
      Exit;
    end;
  end;

  actViewData.Execute;

  if (dbfDTE.FieldByName('TRX_DATE').AsDateTime = cdsDTETRX_DATE.AsDateTime) then
  begin
    if MessageDlg(sMessage, mtConfirmation, mbYesNo, 0) = mrYes then
      bContinue := True;
  end
  else
    bContinue := True;

  sProcess := 'main.B_DTE';
  sKey := FormatDateTime('YYYYMMDD', dtTransDate.Date);
  if not dmGlobal.RemoteServer.StartEditTable(sProcess, sKey, sUserID, sIPAddress, sCompName, editDate) then
  begin
    bContinue := False;
    sMsg := 'You can''t upload DTE for ' + FormatDateTime('dd MMM yyyy', dtTransDate.Date) + #13;
    sMsg := sMsg + 'This DTE data is currently uploading by ' + sUserID
      + ' from computer ' + sCompName + ' since '
      + FormatDateTime('dd MMM yyyy hh:nn:ss.zzz', editDate);
    ShowMessage(sMsg);
  end;

  if bContinue then
  begin
    cdsDTE.DisableControls;
    dbfDTE.DisableControls;
    oProgress := TfrmProgressBar.Create(Nil);
    slBrokerCodeParticipant := TStringList.Create;

    Try
      sUser := dmGlobal.UserID;
      dtProcessDateTime := dmGlobal.RemoteServer.GetServerTimeStamp;
      oProgress.Show;
      oProgress.ChangeBarCaption('Empty DTE Data For Transaction Date '
        + FormatDateTime('dd MMM yyyy', dtTransDate.Date));

      dmGlobal.RemoteServer.EmptyDTEByDate(dtTransDate.Date, sMessage);

      if not cdsDTE.Active then
      begin
        cdsDTE.Close;
        cdsDTE.Params[0].AsDate := dtTransDate.Date;
        cdsDTE.Open;
      end;

      sSQL := 'delete from main.B_DTE where TRX_DATE = '+ QuotedStr(FormatDateTime('yyyymmdd', dtTransDate.Date));
      dmGlobal.RemoteServer.RunningFreeSQLScript(sSQL);

      j := 1;
      n := dbfDTE.RecordCount;

      try
        dbfDTE.First;
        while not dbfDTE.Eof do
        begin
          oProgress.ChangeBar(trunc(j / n * 100), 'Processing DTE Data ' +
            QuotedStr(dbfDTE.FieldByName('TRX_CODE').AsString));


          cdsDTE.Append;

          cdsDTETRX_CODE.AsInteger  := dbfDTETRX_CODE.AsInteger;
          cdsDTETRX_POST.AsInteger  := dbfDTETRX_POST.AsInteger;
          cdsDTETRX_NOTE.AsString   := dbfDTETRX_NOTE.AsString;
          cdsDTETRX_SESS.AsFloat    := dbfDTETRX_SESS.AsFloat;
          cdsDTETRX_TYPE.AsString   := dbfDTETRX_TYPE.AsString;
          cdsDTEBRK_COD2.AsString   := dbfDTEBRK_COD2.AsString;
          cdsDTEINV_TYP2.AsString   := dbfDTEINV_TYP2.AsString;
          cdsDTEBRK_COD1.AsString   := dbfDTEBRK_COD1.AsString;
          cdsDTEINV_TYP1.AsString   := dbfDTEINV_TYP1.AsString;
          cdsDTESTK_CODE.AsString   := dbfDTESTK_CODE.AsString;
          cdsDTESTK_VOLM.AsLargeInt := dbfDTESTK_VOLM.AsLargeInt;
          cdsDTESTK_PRIC.AsFloat    := dbfDTESTK_PRIC.AsFloat;
          cdsDTETRX_DATE.AsDateTime := dbfDTETRX_DATE.AsDateTime;
          cdsDTETRX_ORD2.AsFloat    := dbfDTETRX_ORD2.AsFloat;
          cdsDTETRX_ORD1.AsFloat    := dbfDTETRX_ORD1.AsFloat;
          cdsDTETRX_REF2.AsString   := dbfDTETRX_REF2.AsString;
          cdsDTETRX_REF1.AsString   := dbfDTETRX_REF1.AsString;
          cdsDTETRX_KOPUR.AsFloat   := dbfDTETRX_KOPUR.AsFloat;
          cdsDTETRX_TIME.AsString   := dbfDTETRX_TIME.AsString;
          cdsDTETRX_USER.AsString   := dbfDTETRX_USER.AsString;
          cdsDTETRADING_ID.AsString := dbfDTETRADING_ID.AsString;

//          for i := 0 to dbfDTE.FieldCount - 1 do
//          begin
//            oTargetField := cdsDTE.FindField(dbfDTE.Fields[i].FieldName);
//            if oTargetField <> nil then
//            begin
//              oTargetField.Value := dbfDTE.Fields[i].Value;
//            end;
//          end;

          cdsDTEMODDA.AsDateTime := dtProcessDateTime;
          cdsDTEMODUI.AsString   := sUser;
          cdsDTE.Post;
//          cdsDTE.ApplyUpdates(-1);

          Inc(j);

          dbfDTE.Next;
      end;
      finally
        oProgress.ChangeBarCaption('Inserting Data Into Database...');
        cdsDTE.ApplyUpdates(-1);
      end;

      MessageDlg('Total Record Uploaded ' + FormatFloat('#,##0', cdsDTE.RecordCount - iError) + ' records.'
        , mtInformation, [mbOK], 0);
    Finally
      FreeAndNil(slBrokerCodeParticipant);
      FreeAndNil(oProgress);
      dbfDTE.EnableControls;
      cdsDTE.EnableControls;
      dmGlobal.RemoteServer.FinishEditTable(sProcess, sKey);
    End;
  end;

  dbfDTE.Close;
end;

procedure TfrmDTE.actImportDTEUpdate(Sender: TObject);
begin
  inherited;
  //actImportDTE.Enabled := cdsDTE.Active;
end;

procedure TfrmDTE.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsDTE.Close;
  cdsDTE.Params[0].AsDate := dtTransDate.Date;
  cdsDTE.Open;

//  cdsDTENonDealTicket.Close;
//  cdsDTENonDealTicket.Params[0].AsDate := dtTransDate.Date;
//  cdsDTENonDealTicket.Open;
end;

procedure TfrmDTE.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    txtDTEFile.Text := OpenDialog.FileName;
//    dbfDTE.Close;
//    dbfDTE.TableName := txtDTEFile.Text;
//    dbfDTE.Open;
  end;
end;

procedure TfrmDTE.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmDTE);

end.

