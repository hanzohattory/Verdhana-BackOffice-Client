unit FormEODSupport;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxImageComboBox, cxSpinEdit,
  cxCalendar, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, dxBar, cxBarEditItem, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, cxClasses, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView, cxGrid,
  dxDateRanges, dxScrollbarAnnotations, System.Actions, System.ImageList,
  cxTextEdit, frxClass, frxServerClient, frxExportPDF,DateUtils, Vcl.ComCtrls, Vcl.StdCtrls;

type
  // jendela progress sederhana (dibuat lewat kode, tidak perlu DFM)
  TEODProgressForm = class(TForm)
  private
    FStage, FItem: TLabel;
    FBar: TProgressBar;
  public
    constructor CreateProgress(AOwner: TForm);
    procedure ShowMarquee(const AStage, AItem: string);
    procedure ShowStep(const AStage, AItem: string; ADone, ATotal: Integer);
  end;

  TfrmEODSupport = class(TfrmBrowseData)
    cdsEODSupport: TNClientDataset;
    cdsEODSupportDetail: TNClientDataset;
    dsEODSupportDetail: TDataSource;
    edReportDate: TcxBarEditItem;
    btnGenerate: TdxBarButton;
    gvwMasterNO: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    gvwMasterSTATUS_EXPORT_PDF: TcxGridDBBandedColumn;
    gvwMasterSTATUS_EXPORT_EXCEL: TcxGridDBBandedColumn;
    gvwMasterProcessDate: TcxGridDBBandedColumn;
    gvwMasterProcessUI: TcxGridDBBandedColumn;
    gvwMasterProcessMessage: TcxGridDBBandedColumn;
    gvwDetail: TcxGridDBBandedTableView;
    grdMasterLevel2: TcxGridLevel;
    gvwDetailID: TcxGridDBBandedColumn;
    gvwDetailPROCESS_DATE: TcxGridDBBandedColumn;
    gvwDetailPROCESS_TIME: TcxGridDBBandedColumn;
    gvwDetailSTATUS_EXPORT_PDF: TcxGridDBBandedColumn;
    gvwDetailSTATUS_EXPORT_EXCEL: TcxGridDBBandedColumn;
    gvwDetailPROCESS_MESSAGE: TcxGridDBBandedColumn;
    gvwDetailPROCESS_UI: TcxGridDBBandedColumn;
    ReportClient: TfrxReportClient;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure gvwMasterSTATUS_EXPORT_PDFGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    FProgress: TEODProgressForm;
    procedure Step(const AStage, AItem: string; ADone, ATotal: Integer);
    function ValidateOutputFolder(ADate: TDateTime; out AMsg: string): Boolean;
    function GetReportDate: TDateTime;
    function DateVarValue(ADate: TDateTime; const AMode: string): string;
    procedure GenerateClientFiles(ADate: TDateTime; out AFolder, AMsg: string);
    procedure cxGridDBColumnStatusGetDisplayText(Sender: TcxCustomGridTableItem;ARecord: TcxCustomGridRecord;var AText: string);
  public
    { Public declarations }
  end;

var
  frmEODSupport: TfrmEODSupport;

implementation

{$R *.dfm}

uses DataGlobal;

{ TEODProgressForm }

constructor TEODProgressForm.CreateProgress(AOwner: TForm);
begin
  inherited CreateNew(AOwner);
  BorderStyle := bsDialog;
  BorderIcons := [];
  Caption := 'Progress - Generate';
  ClientWidth := 240;
  ClientHeight := 52;


  if Assigned(Application.MainForm) then
  begin
    PopupMode := pmExplicit;
    PopupParent := Application.MainForm;
    Position := poDesigned;
    Left := Application.MainForm.Left + (Application.MainForm.Width - Width) div 2;
    Top := Application.MainForm.Top + (Application.MainForm.Height - Height) div 2;
  end
  else
    Position := poScreenCenter;

  FStage := TLabel.Create(Self);
  FStage.Parent := Self;
  FStage.AutoSize := False;
  FStage.SetBounds(8, 5, 224, 14);
  FStage.Font.Style := [];
  FStage.EllipsisPosition := epEndEllipsis;

  FBar := TProgressBar.Create(Self);
  FBar.Parent := Self;
  FBar.SetBounds(8, 21, 224, 10);

  FItem := TLabel.Create(Self);
  FItem.Parent := Self;
  FItem.AutoSize := False;
  FItem.EllipsisPosition := epEndEllipsis;
  FItem.SetBounds(8, 34, 224, 14);
end;

procedure TEODProgressForm.ShowMarquee(const AStage, AItem: string);
begin
  FBar.Style := pbstMarquee;
  FStage.Caption := AStage;
  FItem.Caption := AItem;
  Update;
  Application.ProcessMessages;
end;

procedure TEODProgressForm.ShowStep(const AStage, AItem: string; ADone, ATotal: Integer);
begin
  if ATotal < 1 then ATotal := 1;
  FBar.Style := pbstNormal;
  FBar.Max := ATotal;
  FBar.Position := ADone;
  FStage.Caption := Format('%s  (%d%%)', [AStage, (ADone * 100) div ATotal]);
  FItem.Caption := AItem;
  Update;
  Application.ProcessMessages;
end;

// Error koneksi sementara (mis. koneksi SQL di Report Server sudah basi setelah idle):
// layak dicoba ulang otomatis.
function IsTransientConnError(const AMsg: string): Boolean;
const
  KEYS: array[0..6] of string = (
    'General network error', 'ConnectionWrite', 'ConnectionRead', 'DBNETLIB',
    'Communication link failure', 'Unknown server side error', 'connection is broken');
var
  i: Integer;
begin
  Result := False;
  for i := Low(KEYS) to High(KEYS) do
    if Pos(LowerCase(KEYS[i]), LowerCase(AMsg)) > 0 then
    begin
      Result := True;
      Exit;
    end;
end;

procedure TfrmEODSupport.Step(const AStage, AItem: string; ADone, ATotal: Integer);
begin
  if Assigned(FProgress) then
    FProgress.ShowStep(AStage, AItem, ADone, ATotal)
  else
    Application.ProcessMessages;
end;

function TfrmEODSupport.GetReportDate: TDateTime;
begin
  if VarIsNull(edReportDate.EditValue) or VarIsEmpty(edReportDate.EditValue) then
    Result := Trunc(Date)
  else
    Result := Trunc(VarToDateTime(edReportDate.EditValue));
end;

procedure TfrmEODSupport.gvwMasterSTATUS_EXPORT_PDFGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
    if SameText(AText, 'OK') then
       AText := '✓'
  else if SameText(AText, 'N/A') then
         AText := '-';

end;

function TfrmEODSupport.DateVarValue( ADate: TDateTime;const AMode: string): string;
begin
  if SameText(AMode, 'DATE') then
    Result := Format(
      'EncodeDate(%d, %d, %d)',
      [
        YearOf(ADate),
        MonthOf(ADate),
        DayOf(ADate)
      ]
    )
  else if SameText(AMode, 'ISO') then
    Result := QuotedStr(FormatDateTime('yyyy-mm-dd', ADate))
  else
    Result := QuotedStr(FormatDateTime('yyyymmdd', ADate));
end;

procedure TfrmEODSupport.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsEODSupport.Close;
  cdsEODSupport.ParamByName('REPORTDATE').AsDate := GetReportDate;
  cdsEODSupport.Open;

  // detail diberi parameter tanggal supaya provider SELALU mengeksekusi ulang query-nya
  // (tanpa parameter, dataset server yang sudah terbuka bisa mengembalikan data lama / basi)
  cdsEODSupportDetail.Close;
  cdsEODSupportDetail.ParamByName('REPORTDATE').AsDate := GetReportDate;
  cdsEODSupportDetail.Open;
end;


procedure TfrmEODSupport.GenerateClientFiles(ADate: TDateTime; out AFolder, AMsg: string);
var
  sDate, sList, sClient, sName, sFr3, sPdf, sVar, sMode, sDesc, sFile, sErr, sStat, sLine: string;
  aLines, aF: TArray<string>;
  slPdf, slFiles: TStringList;
  i, nNo, nCnt, nTotal, nDone, nXls, nTry: Integer;
  oPdf: TfrxPDFExport;
  st: TStream;
  fs: TFileStream;
begin
  AMsg := '';
  AFolder := '';
  sDate := FormatDateTime('yyyymmdd', ADate);

  // 1) minta ke server: folder client (dbo.B_GBLPARAM PRMID 960), daftar PDF yang harus dibuat client,
  //    dan daftar file Excel hasil generate di server
  sList := dmGlobal.RemoteServer.GetEODSupportFileList(sDate);
  if (Pos('ERROR|', sList) = 1) or (Pos('Error|', sList) = 1) then
  begin
    AMsg := 'Client: ' + Copy(sList, Pos('|', sList) + 1, MaxInt);
    Exit;
  end;

  sClient := '';
  slPdf := TStringList.Create;
  slFiles := TStringList.Create;
  try
    aLines := sList.Split([#10]);
    for i := 0 to High(aLines) do
    begin
      sLine := Trim(aLines[i]);
      if sLine = '' then Continue;
      if Pos('CLIENTFOLDER|', sLine) = 1 then
        sClient := Trim(Copy(sLine, 14, MaxInt))
      else if Pos('PDF|', sLine) = 1 then
        slPdf.Add(Copy(sLine, 5, MaxInt))
      else
        slFiles.Add(sLine);
    end;

    if sClient = '' then
     begin
      AMsg := 'Client: output folder has not been set (dbo.B_GBLPARAM PRMID=960, column STRVAL).';
      Exit;
     end;
    AFolder := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(sClient) + sDate);
    if not ForceDirectories(AFolder) then
     begin
      AMsg := 'Client: cannot create folder ' + AFolder;
      AFolder := '';
      Exit;
     end;


    ReportClient.ShowProgress := False;


    nXls := 0;
    for i := 0 to slFiles.Count - 1 do
      if LowerCase(ExtractFileExt(slFiles[i].Split(['|'])[0])) = '.xlsx' then
        Inc(nXls);
    nTotal := slPdf.Count + nXls;
    nDone := 0;
    Step('Step 2/3 - Export PDF', 'Preparing ...', 0, nTotal);


    nCnt := 0;
    for i := 0 to slPdf.Count - 1 do
    begin
      aF := slPdf[i].Split(['|']);
      if Length(aF) < 6 then Continue;
      nNo   := StrToIntDef(aF[0], 0);
      sDesc := aF[1];
      sFr3  := aF[2];
      sPdf  := aF[3];
      sVar  := aF[4];
      sMode := aF[5];
      if sVar = '' then sVar := 'ReportDate';
      sFile := AFolder + sPdf;

      Inc(nCnt);
      Step('Step 2/3 - Export PDF', Format('PDF %d/%d : %s', [nCnt, slPdf.Count, sDesc]),
        nDone, nTotal);

      // Generate pertama setelah idle sering gagal (koneksi SQL Report Server basi:
      // "General network error");
      nTry := 0;
      while True do
      begin
        sErr  := '';
        sStat := 'OK';
        try
          if not Assigned(ReportClient.Connection) then
            raise Exception.Create('ReportClient.Connection has not been set');
          if FileExists(sFile) then DeleteFile(sFile);

          ReportClient.LoadFromFile(sFr3);
          ReportClient.Variables.Clear;
          ReportClient.Variables.Variables[sVar] := FormatDateTime('yyyymmdd', ADate); //DateVarValue(ADate, sMode);
          ReportClient.PrepareReport;

          if ReportClient.PreviewPages.Count = 0 then
            raise Exception.Create('The report produced no output pages.');

          oPdf := TfrxPDFExport.Create(nil);
          try
            oPdf.ShowDialog := False;
            oPdf.FileName   := sFile;
            oPdf.Background := True;
            ReportClient.Export(oPdf);
          finally
            FreeAndNil(oPdf);
          end;

          if not FileExists(sFile) then
            raise Exception.Create('No PDF file was generated.: ' + sFile);
        except
          on E: Exception do
          begin
            sStat := 'Fail';
            sErr  := 'PDF: ' + E.Message;
          end;
        end;

        if (sStat = 'Fail') and (nTry < 2) and IsTransientConnError(sErr) then
        begin
          Inc(nTry);
          Step('Step 2/3 - Export PDF',
            Format('PDF %d/%d : %s (retry %d/2)', [nCnt, slPdf.Count, sDesc, nTry]),
            nDone, nTotal);
          Sleep(1500);
          Continue;
        end;
        Break;
      end;

      if sStat = 'Fail' then
        AMsg := AMsg + '[' + IntToStr(nNo) + '] ' + sDesc + ' -> ' + sErr + sLineBreak;

      try
        dmGlobal.RemoteServer.SetEODSupportPdfStatus(sDate, nNo, sStat, sErr);
      except
        on E: Exception do
          AMsg := AMsg + '[' + IntToStr(nNo) + '] Failed to update PDF status.: ' + E.Message + sLineBreak;
      end;
      Inc(nDone);
    end;

    // 3) Excel : dibuat server, diunduh ke folder client yang sama
    nCnt := 0;
    for i := 0 to slFiles.Count - 1 do
    begin
      aF := slFiles[i].Split(['|']);
      sName := aF[0];
      if LowerCase(ExtractFileExt(sName)) <> '.xlsx' then Continue;

      Inc(nCnt);
      Step('Step 3/3 - Download Excel', Format('Excel %d/%d : %s', [nCnt, nXls, sName]),
        nDone, nTotal);
      try
        st := dmGlobal.RemoteServer.GetEODSupportFile(sDate, sName);
        fs := TFileStream.Create(AFolder + sName, fmCreate);
        try
          st.Position := 0;
          fs.CopyFrom(st, st.Size);
        finally
          fs.Free;
        end;
      except
        on E: Exception do
          AMsg := AMsg + 'Download ' + sName + ': ' + E.Message + sLineBreak;
      end;
      Inc(nDone);
    end;
    Step('Done', 'All files have been processed', nTotal, nTotal);

  finally
    slPdf.Free;
    slFiles.Free;
  end;
end;

function TfrmEODSupport.ValidateOutputFolder(ADate: TDateTime; out AMsg: string): Boolean;
var
  sList, sLine, sClient, sFolder, sTest: string;
  aLines: TArray<string>;
  fs: TFileStream;
  i: Integer;
begin
  Result := False;
  AMsg := '';
  sClient := '';

  // folder tujuan = dbo.B_GBLPARAM PRMID '960' (STRVAL); dibaca lewat server (baris CLIENTFOLDER)
  try
    sList := dmGlobal.RemoteServer.GetEODSupportFileList(FormatDateTime('yyyymmdd', ADate));
  except
    on E: Exception do
    begin
      AMsg := 'Failed to read the output folder setting from the server:' + sLineBreak + E.Message;
      Exit;
    end;
  end;

  if (Pos('ERROR|', sList) = 1) or (Pos('Error|', sList) = 1) then
  begin
    AMsg := 'Failed to read the output folder setting from the server:' + sLineBreak +
      Copy(sList, Pos('|', sList) + 1, MaxInt);
    Exit;
  end;

  aLines := sList.Split([#10]);
  for i := 0 to High(aLines) do
  begin
    sLine := Trim(aLines[i]);
    if Pos('CLIENTFOLDER|', sLine) = 1 then
    begin
      sClient := Trim(Copy(sLine, 14, MaxInt));
      Break;
    end;
  end;

  if sClient = '' then
  begin
    AMsg := 'The output folder for Generate has not been set.' + sLineBreak + sLineBreak +
      'Please set it first in table dbo.B_GBLPARAM:' + sLineBreak +
      '   PRMID  = ''960''' + sLineBreak +
      '   STRVAL = destination folder path on this PC (e.g. D:\EODSupport)' + sLineBreak + sLineBreak +
      'Then click Generate Report again.';
    Exit;
  end;

  // folder harus bisa dibuat dan ditulisi (drive tidak ada / tidak punya hak akses)
  sFolder := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(sClient) +
    FormatDateTime('yyyymmdd', ADate));
  if not ForceDirectories(sFolder) then
  begin
    AMsg := 'The output folder cannot be created or is not accessible:' + sLineBreak + sFolder +
      sLineBreak + sLineBreak + 'Please check the value of dbo.B_GBLPARAM PRMID = ''960'' and the folder permissions.';
    Exit;
  end;

  sTest := sFolder + '~eod_write_test.tmp';
  try
    fs := TFileStream.Create(sTest, fmCreate);
    fs.Free;
    DeleteFile(sTest);
  except
    on E: Exception do
    begin
      AMsg := 'Cannot write to the output folder:' + sLineBreak + sFolder + sLineBreak +
        sLineBreak + E.Message;
      Exit;
    end;
  end;

  Result := True;
end;

procedure TfrmEODSupport.btnGenerateClick(Sender: TObject);
var
  dtReport: TDateTime;
  sMsg, sClientMsg, sCaption, sFolder: string;
begin
  dtReport := GetReportDate;
  sFolder := '';

  // validasi lokasi folder dulu, sebelum proses di server berjalan
  if not ValidateOutputFolder(dtReport, sMsg) then
  begin
    MessageDlg(sMsg, mtWarning, [mbOK], 0);
    Exit;
  end;

  if MessageDlg(Format('Generate EOD Support (PDF + Excel)For Date %s ?',
    [FormatDateTime('dd-mmm-yyyy', dtReport)]),
    mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  // 1) SERVER : Excel semua item + catat log (PDF item ditandai 'Wait'); file Excel disimpan di server.
  // 2) CLIENT : PDF dirender Report Server lewat ReportClient, Excel diunduh dari server;
  //    semua disimpan di folder client sesuai dbo.B_GBLPARAM PRMID=960.
  sCaption := Caption;
  btnGenerate.Enabled := False;
  Screen.Cursor := crHourGlass;
  FProgress := TEODProgressForm.CreateProgress(Self);
  FProgress.Show;
  FProgress.ShowMarquee('Step 1/3 - Server process',
    'Generating data & Excel on the server ...');
  try
    try
      sMsg := dmGlobal.RemoteServer.GenerateEODSupport(dtReport);
    except
      on E: Exception do
        sMsg := E.Message + sLineBreak + sLineBreak +
          'The server process may still be in progress. Click Refresh to check the latest status.';
    end;

    sClientMsg := '';
    try
      GenerateClientFiles(dtReport, sFolder, sClientMsg);
    except
      on E: Exception do
        sClientMsg := 'Client: ' + E.Message;
    end;
    if sClientMsg <> '' then
      sMsg := Trim(sMsg + sLineBreak + sClientMsg);
  finally
    FreeAndNil(FProgress);
    Caption := sCaption;
    Screen.Cursor := crDefault;
    btnGenerate.Enabled := True;
  end;

  actRefresh.Execute;     // tampilkan status terbaru dari log

  if sMsg = '' then
    MessageDlg('Generate completed successfully.' + sLineBreak + 'File Save to: ' + sFolder,
      mtInformation, [mbOK], 0)
  else
    MessageDlg('Generate completed with the following notes:' + sLineBreak + sLineBreak + sMsg,
      mtWarning, [mbOK], 0);
end;

procedure TfrmEODSupport.cxGridDBColumnStatusGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if SameText(AText, 'OK') then
    AText := '✓'
  else if SameText(AText, 'N/A') then
    AText := '-';
end;

procedure TfrmEODSupport.FormCreate(Sender: TObject);
begin
  inherited;
  edReportDate.EditValue := Trunc(dmGlobal.RemoteServer.GetTransDate);
end;

Initialization
  RegisterClass(TfrmEODSupport);

end.
