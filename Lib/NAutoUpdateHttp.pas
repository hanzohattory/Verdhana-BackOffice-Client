unit NAutoUpdateHttp;

interface

uses
  System.Classes,
  Winapi.Windows,
  System.ZLib,
  System.Zip,
  System.StrUtils,
  System.Hash,
  Vcl.Forms,
  System.SysUtils,
  OverbyteIcsWndControl,
  OverbyteIcsHttpProt,
  OverbyteIcsWSocket,
  OverbyteIcsUtils,
  Inifiles,
  Vcl.Dialogs;

type
  TEventOnProcess = procedure(const AMsg: string) of object;

  TEventOnProgress = procedure(const AValue: Int64) of object;

  TFileVersionInfo = class
  private
    FPriority: string;
    FFileLocalName: string;
    FFileUrlName: string;
    FFileUrlVersion: string;
    FFileUrlHash: string;
    FFileUrlPatch: string;
    FLocalpatch: string;
    FReleaseNote: string;
    FReleaseNotes: TStringList;
    FFileCount: Integer;
    FDownloadCount: Integer;
    FCrashDownloadCount: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    procedure ReadVerInfo(const AText: string);
//    function GetVersionExe: String;
    function GetHashSHA2(const AFileName: string): string;
//    function IsVersionDifferent(const AVersion: string) : Boolean;
    function IsFVersionDifferent(const AServerVer, ALocalFileName, ALocalFilePatch: string): Boolean;

    property FileURLPatch: string read FFileURLPatch write FFileURLPatch;
    property FileURLName: string read FFileURLName write FFileURLName;
    property FileLocalName: string read FFileLocalName write FFileLocalName;
    property Priority: string read FPriority write FPriority;
    property FileURLVersion: string read FFileURLVersion write FFileURLVersion;
    property FileURLHash: string read FFileURLHash write FFileURLHash;
    property LocalPatch: string read FLocalPatch write FLocalPatch;
    property FileCount: integer read FFileCount write FFileCount;
    property DownloadCount: integer read FDownloadCount write FDownloadCount;
    property CrashDownloadCount: integer read FCrashDownloadCount write FCrashDownloadCount;
    property ReleaseNote: string read FReleaseNote write FReleaseNote;
    property ReleaseNotes: TStringList read FReleaseNotes;
  end;

  TNAutoUpdateHttp = class
  private
    FHttpClient: TSslHttpCli;
    FSslContext: TSslContext;
    FPassword: string;
    FUser: string;
    FVersionFileURL: string;
    FOnSetMaxProgress: TEventOnProgress;
    FOnProcess: TEventOnProcess;
    FOnGetReleaseNotes: TEventOnProcess;
    FOnProgress: TEventOnProgress;
    procedure SetPassword(const Value: string);
    procedure SetUser(const Value: string);
    procedure IntEventOnProcess(const AMsg: string);
    procedure IntEventOnProgress(const AValue: Int64);
    procedure IntEventOnSetMaxProgress(const AValue: Int64);
    procedure IntEventOnGetReleaseNotes(const AMsg: string);
    procedure UpdateMessageInfo(AMsgInfo: string);
//    procedure TerminateHttpClient;

    procedure GetFileVersion(var AFileInfo: TFileVersionInfo);
    procedure DownloadNeedPatch(var AFileInfo: TFileVersionInfo);
    procedure ExtractNeedPatch(var AFileInfo: TFileVersionInfo);
    procedure VerifyNeedPatch(var AFileInfo: TFileVersionInfo);
    procedure ExtractCrashPatch(var AFileInfo: TFileVersionInfo);
    procedure ReplaceNeedPatch(var AFileInfo: TFileVersionInfo);

    function GetFileVersionInfo: string;
    function SetFileToDownload(var AFileInfo: TFileVersionInfo; FileName: string): Boolean;
    function GetFilePatch(var AFileInfo: TFileVersionInfo): string;
    function ReadFileVersionInfo(const FileName: TFileName; var AFileInfo: TFileVersionInfo): Boolean;
    function GetReleaseNote(var AFileInfo: TFileVersionInfo; FileName: string): Boolean;

  public
    constructor Create;
    destructor Destroy; override;

    property User: string read FUser write SetUser;
    property Password: string read FPassword write SetPassword;
    property VersionFileURL: string read FVersionFileURL write FVersionFileURL;
    property OnProcess: TEventOnProcess read FOnProcess write FOnProcess;
    property OnProgress: TEventOnProgress read FOnProgress write FOnProgress;
    property OnSetMaxProgress: TEventOnProgress read FOnSetMaxProgress write FOnSetMaxProgress;
    property OnGetReleaseNotes: TEventOnProcess read FOnGetReleaseNotes write FOnGetReleaseNotes;

    procedure Execute;
  end;

implementation

uses
  sevenzip;

{ TNAutoUpdateHttp }

function GetFileVersion(const FileName: TFileName): string;
var
  VerInfoSize: Cardinal;
  VerValueSize: Cardinal;
  Dummy: Cardinal;
  PVerInfo: Pointer;
  PVerValue: PVSFixedFileInfo;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(FileName), Dummy);
  GetMem(PVerInfo, VerInfoSize);
  try
    if GetFileVersionInfo(PChar(FileName), 0, VerInfoSize, PVerInfo) then
      if VerQueryValue(PVerInfo, '\', Pointer(PVerValue), VerValueSize) then
        with PVerValue^ do
          Result := Format('%d.%d.%d.%d', [HiWord(dwFileVersionMS), //Major
            LoWord(dwFileVersionMS), //Minor
            HiWord(dwFileVersionLS), //Release
            LoWord(dwFileVersionLS)]); //Build
  finally
    FreeMem(PVerInfo, VerInfoSize);
  end;
end;

function GetTmpDir: string;
var
  pc: PChar;
begin
  pc := StrAlloc(MAX_PATH + 1);
  GetTempPath(MAX_PATH, pc);
  Result := string(pc);
  StrDispose(pc);
end;

function GetTmpFileName(ext: string): string;
var
  pc: PChar;
  sTemp: string;
begin
  pc := StrAlloc(MAX_PATH + 1);
  GetTempFileName(PChar(GetTmpDir), 'EZC', 0, pc);
  sTemp := string(pc);
  Result := ChangeFileExt(sTemp, ext);
  DeleteFile(pchar(sTemp));
  StrDispose(pc);
end;

procedure UnPacking(AFileName: TFileName; ADirDest, AFileDest: AnsiString);
resourcestring
  EDecompressionErrorMessage = 'Archive %s corrupted';
var
  FileOutName, FileOutFullName: AnsiString;
  FileIn, FileOut: TFileStream;
  Zip: TDecompressionStream;
  iNumFile, I, Len, Size: Integer;
  Fim: Byte;
begin
  FileOutName := '';
  if ADirDest = '' then
    ADirDest := AnsiString(GetCurrentDir);
  FileIn := TFileStream.Create(AFileName, fmOpenRead and fmShareExclusive);
  Zip := TDecompressionStream.Create(FileIn);
  Zip.Read(iNumFile, SizeOf(iNumFile));
  try
    for I := 0 to iNumFile - 1 do
    begin
      Zip.Read(Len, SizeOf(Len));
      SetLength(FileOutName, Len);
      Zip.Read(FileOutName[1], Len);
      Zip.Read(Size, SizeOf(Size));

      FileOutFullName := AnsiString(IncludeTrailingPathDelimiter(string(ADirDest))) + AFileDest;
      ForceDirectories(ExtractFileDir(string(FileOutFullName)));
      FileOut := TFileStream.Create(string(FileOutFullName), fmCreate or fmShareExclusive);
      try
        FileOut.CopyFrom(Zip, Size);
      finally
        FileOut.Free;
      end;
      Zip.Read(Fim, SizeOf(Byte));
      if Fim <> 0 then
        raise Exception.CreateFmt(EDecompressionErrorMessage, [AFileName]);
    end;
  finally
    Zip.Free;
    FileIn.Free;
  end;
end;

function ZibExtractFilePatch(const AFileName: string): string;
var
  sExeName: string;
  TmpDir: string;
begin
  TmpDir := GetTmpDir;

  UnPacking(AFileName, AnsiString(TmpDir), AnsiString(ExtractFileName(Application.ExeName)));
  sExeName := ChangeFileExt(AFileName, '.exe');
  DeleteFile(pchar(AFileName));

  Result := sExeName;
end;

procedure ZipExtractFilePatch(const AFileName: string);
var
  oZip: TZipFile;
begin
  oZip := TZipFile.Create;
  try
    oZip.Open(AFileName, zmRead);
    oZip.ExtractZipFile(AFileName, GetTmpDir, nil, nil);
    oZip.Close;
  finally
    oZip.Free;
  end;
  DeleteFile(pchar(AFileName));
end;

procedure SevenZipExtractFilePatch(const AFileName: string);
begin
  with CreateInArchive(CLSID_CFormat7z) do
  begin
    OpenFile(AFileName);
    ExtractTo(GetTmpDir);
    Close;
  end;
  DeleteFile(pchar(AFileName));
end;

constructor TNAutoUpdateHttp.Create;
begin
  FHttpClient := TSslHttpCli.Create(nil);
  FSslContext := TSslContext.Create(nil);

  with FHttpClient do
  begin
    Accept := 'image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*';
    ContentTypePost := 'application/x-www-form-urlencoded';
    NoCache := False;
    ServerAuth := httpAuthBasic;
    MultiThreaded := False;
    BandwidthLimit := 1000000;
    Timeout := 30;
    SslContext := FSslContext;
  end;

end;

destructor TNAutoUpdateHttp.Destroy;
begin
  FHttpClient.Free;
  FSslContext.Free;
  inherited;
end;

procedure TNAutoUpdateHttp.Execute;
var
  oFileVerInfo: TFileVersionInfo;
begin
  oFileVerInfo := TFileVersionInfo.Create;
  try
    try
      GetFileVersion(oFileVerInfo);
      UpdateMessageInfo(Format('%s file updates found...', [IntToStr(oFileVerInfo.FDownloadCount)]));
      if oFileVerInfo.FDownloadCount > 0 then
      begin
        DownloadNeedPatch(oFileVerInfo);
        ExtractNeedPatch(oFileVerInfo);
        VerifyNeedPatch(oFileVerInfo);

        if oFileVerInfo.FDownloadCount > 0 then
          ReplaceNeedPatch(oFileVerInfo)
        else
          DeleteFile(GetTmpDir + 'olt_desktop.tmp')
      end
      else
        DeleteFile(GetTmpDir + 'olt_desktop.tmp')
    except
      on E: Exception do
        raise E;
    end;
  finally
    oFileVerInfo.Free;
  end;
end;

function TNAutoUpdateHttp.GetFilePatch(var AFileInfo: TFileVersionInfo): string;
var
  tempFile, TmpDir: string;
  oFileStream: TFileStream;
begin
  Result := '';

  TmpDir := GetTmpDir;
  tempFile := TmpDir + AFileInfo.FileURLName;

  oFileStream := TFileStream.Create(tempFile, fmCreate);
  FHttpClient.RcvdStream := oFileStream;
  try
    try
      FHttpClient.URL := AFileInfo.FileURLPatch;
      FHttpClient.Get;
    except
      on E: EHttpException do
      begin
        raise E;
      end
    end;
  finally
    FlushFileBuffers(oFileStream.Handle);
    FreeAndNil(oFileStream);
    FHttpClient.RcvdStream := nil;
  end;

  Result := tempFile;
end;

function TNAutoUpdateHttp.GetReleaseNote(var AFileInfo: TFileVersionInfo; FileName: string): Boolean;
var
  TmpDir: string;
  tempFile: string;
begin
  TmpDir := GetTmpDir;
  tempFile := TmpDir + FileName;

  Result := ReadFileVersionInfo(tempFile, AFileInfo);
end;

function TNAutoUpdateHttp.GetFileVersionInfo: string;
var
  TmpDir: string;
  tempFile: string;
  oFileStream: TFileStream;
begin
  Result := '';
  TmpDir := GetTmpDir;
  tempFile := TmpDir + 'olt_desktop.tmp';
  oFileStream := TFileStream.Create(tempFile, fmCreate);

  FHttpClient.RcvdStream := oFileStream;
  try
    try
      FHttpClient.URL := FVersionFileURL;
      FHttpClient.Get;
    except
      on E: EHttpException do
      begin
        raise E;
      end
    end;
  finally
    FlushFileBuffers(oFileStream.Handle);
    FreeAndNil(oFileStream);
    FHttpClient.RcvdStream := nil;
  end;

  Result := tempFile;
end;

function TNAutoUpdateHttp.SetFileToDownload(var AFileInfo: TFileVersionInfo; FileName: string): Boolean;
var
  TmpDir: string;
  tempFile: string;
  oFileNote: TextFile;
begin
  Result := False;
  TmpDir := GetTmpDir;
  tempFile := TmpDir + FileName;
  AssignFile(oFileNote, tempFile);
  Rewrite(oFileNote);
  try
    Writeln(oFileNote, '[]');
    Writeln(oFileNote, 'priority=' + AFileInfo.Priority);
    Writeln(oFileNote, 'localname=' + AFileInfo.FileLocalName);
    Writeln(oFileNote, 'servername=' + AFileInfo.FileURLName);
    Writeln(oFileNote, 'serverversion=' + AFileInfo.FileURLVersion);
    Writeln(oFileNote, 'serverhash=' + AFileInfo.FileURLHash);
    Writeln(oFileNote, 'serverpatch=' + AFileInfo.FileURLPatch);
    Writeln(oFileNote, 'localpatch=' + AFileInfo.LocalPatch);
    Writeln(oFileNote, 'releasenotes=' + AFileInfo.ReleaseNote);
  finally
    CloseFile(oFileNote);
  end;
end;

procedure TNAutoUpdateHttp.IntEventOnGetReleaseNotes(const AMsg: string);
begin
  if Assigned(FOnGetReleaseNotes) then
    FOnGetReleaseNotes(AMsg);
end;

procedure TNAutoUpdateHttp.IntEventOnProcess(const AMsg: string);
begin
  if Assigned(FOnProcess) then
    FOnProcess(AMsg);
end;

procedure TNAutoUpdateHttp.IntEventOnProgress(const AValue: Int64);
begin
  if Assigned(FOnProgress) then
    FOnProgress(AValue);
end;

procedure TNAutoUpdateHttp.IntEventOnSetMaxProgress(const AValue: Int64);
begin
  if Assigned(FOnSetMaxProgress) then
    FOnSetMaxProgress(AValue);
end;

function TNAutoUpdateHttp.ReadFileVersionInfo(const FileName: TFileName; var AFileInfo: TFileVersionInfo): Boolean;
var
  FileStream: TFileStream;
  Bytes: TBytes;
  sText: string;
begin
  Result := False;
  FileStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    if FileStream.Size > 0 then
    begin
      SetLength(Bytes, FileStream.Size);
      FileStream.Read(Bytes[0], FileStream.Size);
    end;
    sText := TEncoding.ASCII.GetString(Bytes);

    AFileInfo.ReadVerInfo(sText);
  finally
    FileStream.Free;
  end;
end;

procedure TNAutoUpdateHttp.SetPassword(const Value: string);
begin
  FPassword := Value;
  FHttpClient.Password := FPassword;
end;

procedure TNAutoUpdateHttp.SetUser(const Value: string);
begin
  FUser := Value;
  FHttpClient.Username := FUser;
end;

//procedure TNAutoUpdateHttp.TerminateHttpClient;
//begin
//  FHttpClient.Terminated := True;
//end;

procedure TNAutoUpdateHttp.UpdateMessageInfo(AMsgInfo: string);
begin
  IntEventOnProcess(AMsgInfo);
end;

procedure TNAutoUpdateHttp.GetFileVersion(var AFileInfo: TFileVersionInfo);
var
  FileIni: Tinifile;
  I: Integer;
begin
  try
    UpdateMessageInfo('Getting file update info...');
    FileIni := TIniFile.Create(GetFileVersionInfo);
//    Fileini := TIniFile.Create(GetTmpDir+'oltdesktop.ver');
    try
      AFileInfo.FileCount := FileIni.ReadInteger('', 'filecount', AFileInfo.FileCount);
      for I := 1 to AFileInfo.FileCount do
      begin
        AFileInfo.FPriority := FileIni.ReadString('file' + IntToStr(I), 'priority', AFileInfo.FPriority);
        AFileInfo.FFileLocalName := FileIni.ReadString('file' + IntToStr(I), 'localname', AFileInfo.FFileLocalName);
        AFileInfo.FFileURLName := FileIni.ReadString('file' + IntToStr(I), 'servername', AFileInfo.FFileURLName);
        AFileInfo.FFileURLVersion := FileIni.ReadString('file' + IntToStr(I), 'serverversion', AFileInfo.FFileURLVersion);
        AFileInfo.FFileURLHash := FileIni.ReadString('file' + IntToStr(I), 'serverhash', AFileInfo.FFileURLHash);
        AFileInfo.FFileURLPatch := FileIni.ReadString('file' + IntToStr(I), 'serverpatch', AFileInfo.FFileURLPatch);
        AFileInfo.FLocalPatch := FileIni.ReadString('file' + IntToStr(I), 'localpatch', AFileInfo.FLocalPatch);
        AFileInfo.FReleaseNote := FileIni.ReadString('file' + IntToStr(I), 'releasenotes', AFileInfo.FReleaseNote);

        if LowerCase(AFileInfo.LocalPatch) = 'exedir' then
          AFileInfo.LocalPatch := ExtractFilePath(Application.ExeName)
        else
          AFileInfo.LocalPatch := ExtractFilePath(Application.ExeName) + AFileInfo.LocalPatch;

        if AFileInfo.IsFVersionDifferent(AFileInfo.FileURLVersion, AFileInfo.FileLocalName, AFileInfo.LocalPatch) then
        begin
          AFileInfo.FDownloadCount := AFileInfo.FDownloadCount + 1;

          SetFileToDownload(AFileInfo, 'needpatch' + IntToStr(AFileInfo.DownloadCount) + '.tmp');
          GetReleaseNote(AFileInfo, 'needpatch' + IntToStr(AFileInfo.DownloadCount) + '.tmp');
        end;
      end;
      IntEventOnGetReleaseNotes(AFileInfo.ReleaseNotes.Text);
      IntEventOnSetMaxProgress(4);
    finally
      FileIni.Free;
    end;

  except
    on E: Exception do
      raise E;
  end;
end;

procedure TNAutoUpdateHttp.DownloadNeedPatch(var AFileInfo: TFileVersionInfo);
var
  FileIni: Tinifile;
  I: Integer;
  TmpDir: string;
  tempFile: string;
begin
  UpdateMessageInfo('Downloading The Latest Application...');
  IntEventOnProgress(1);
  for I := 1 to AFileInfo.FDownloadCount do
  begin
    TmpDir := GetTmpDir;
    tempFile := TmpDir + 'needpatch' + IntToStr(I) + '.tmp';
    FileIni := TIniFile.Create(tempFile);
    try
      AFileInfo.FFileURLName := FileIni.ReadString('', 'servername', AFileInfo.FFileURLName);
      AFileInfo.FFileURLPatch := FileIni.ReadString('', 'serverpatch', AFileInfo.FFileURLPatch);
      GetFilePatch(AFileInfo);
    finally
      FileIni.Free;
    end;
  end;
end;

procedure TNAutoUpdateHttp.ExtractNeedPatch(var AFileInfo: TFileVersionInfo);
var
  FileIni: Tinifile;
  I: Integer;
  tempFile: string;
  tempPatch, locPatch: string;
begin
  UpdateMessageInfo('Decompressing file...');
  IntEventOnProgress(2);

  for I := 1 to AFileInfo.DownloadCount do
  begin
    tempFile := GetTmpDir + 'needpatch' + IntToStr(I) + '.tmp';
    FileIni := TIniFile.Create(tempFile);
    try
      AFileInfo.FileURLName := FileIni.ReadString('', 'servername', AFileInfo.FileURLName);
      AFileInfo.FileLocalName := FileIni.ReadString('', 'localname', AFileInfo.FileLocalName);
      AFileInfo.LocalPatch := FileIni.ReadString('', 'localpatch', AFileInfo.LocalPatch);
      AFileInfo.priority := FileIni.ReadString('', 'priority', AFileInfo.Priority);

      tempPatch := GetTmpDir + AFileInfo.FileURLName;
      locPatch := AFileInfo.FLocalPatch + AFileInfo.FileLocalName;

      if not (FileExists(AFileInfo.LocalPatch, False)) then
      begin
        CreateDir(PChar(AFileInfo.LocalPatch));
      end;

      if AFileInfo.Priority = '1' then
      begin
        if FileExists(PChar(locPatch), False) then
        begin
          if DeleteFile(PChar(locPatch)) then
            CopyFile(PChar(tempPatch), PChar(locPatch), false);
        end
        else
          CopyFile(PChar(tempPatch), PChar(locPatch), false);
      end;

      if ExtractFileExt(AFileInfo.FileURLName) <> ExtractFileExt(AFileInfo.FileLocalName) then
      begin
        if ExtractFileExt(AFileInfo.FileURLName) = '.zib' then
          ZibExtractFilePatch(tempPatch)
        else if ExtractFileExt(AFileInfo.FileURLName) = '.zip' then
          ZipExtractFilePatch(tempPatch)
        else if ExtractFileExt(AFileInfo.FileURLName) = '.7z' then
          SevenZipExtractFilePatch(tempPatch);
      end;

    finally
      FileIni.Free;
    end;
  end;
end;

procedure TNAutoUpdateHttp.VerifyNeedPatch(var AFileInfo: TFileVersionInfo);
var
  FileIni: Tinifile;
  I, CountVerify: Integer;
  tempFile: string;
  tempPatch: string;
label
  verify;
begin
  UpdateMessageInfo('Verify file patch...');
  IntEventOnProgress(3);
  for I := 1 to AFileInfo.DownloadCount do
  begin
    tempFile := GetTmpDir + 'needpatch' + IntToStr(I) + '.tmp';
    FileIni := TIniFile.Create(tempFile);
    try
      AFileInfo.FileURLHash := FileIni.ReadString('', 'serverhash', AFileInfo.FileURLHash);
      AFileInfo.FileLocalName := FileIni.ReadString('', 'localname', AFileInfo.FileLocalName);
      AFileInfo.FileURLName := FileIni.ReadString('', 'servername', AFileInfo.FileURLName);
      AFileInfo.FileURLPatch := FileIni.ReadString('', 'serverpatch', AFileInfo.FileURLPatch);

      tempPatch := GetTmpDir + AFileInfo.FileLocalName;

      CountVerify := 1;
verify:
      if FileExists(tempPatch, False) then
      begin
        if AFileInfo.FileURLHash <> AFileInfo.GetHashSHA2(tempPatch) then
        begin
          CountVerify := CountVerify + 1;
          if CountVerify < 3 then
          begin
            DeleteFile(pchar(tempPatch));
            GetFilePatch(AFileInfo);
            ExtractCrashPatch(AFileInfo);
            goto verify;
          end
          else
          begin
            DeleteFile(pchar(tempFile));
            DeleteFile(pchar(tempPatch));
            AFileInfo.FDownloadCount := AFileInfo.FDownloadCount - 1;
            AFileInfo.FCrashDownloadCount := AFileInfo.FCrashDownloadCount + 1;
            Showmessage(format(' "%s"  file download crash', [ExtractFileName(tempPatch)]));
          end;
        end;
      end;

    finally
      FileIni.Free;
    end;
  end;
end;

procedure TNAutoUpdateHttp.ExtractCrashPatch(var AFileInfo: TFileVersionInfo);
var
  tempPatch, locPatch: string;
begin
  tempPatch := GetTmpDir + AFileInfo.FileURLName;
  locPatch := AFileInfo.FLocalPatch + AFileInfo.FileLocalName;

  if not (FileExists(AFileInfo.LocalPatch, False)) then
  begin
    CreateDir(PChar(AFileInfo.LocalPatch));
  end;

  if AFileInfo.Priority = '1' then
  begin
    if FileExists(PChar(locPatch), False) then
    begin
      if DeleteFile(PChar(locPatch)) then
        CopyFile(PChar(tempPatch), PChar(locPatch), false);
    end
    else
      CopyFile(PChar(tempPatch), PChar(locPatch), false);
  end;

  if ExtractFileExt(AFileInfo.FileURLName) <> ExtractFileExt(AFileInfo.FileLocalName) then
  begin
    if ExtractFileExt(AFileInfo.FileURLName) = '.zib' then
      ZibExtractFilePatch(tempPatch)
    else if ExtractFileExt(AFileInfo.FileURLName) = '.zip' then
      ZipExtractFilePatch(tempPatch)
    else if ExtractFileExt(AFileInfo.FileURLName) = '.7z' then
      SevenZipExtractFilePatch(tempPatch);
  end;

end;

procedure TNAutoUpdateHttp.ReplaceNeedPatch(var AFileInfo: TFileVersionInfo);
var
  FileIni: Tinifile;
  I: Integer;
  TmpDir: string;
  tempFile: string;
  batchName, sDOSName, sFileName: string;
  oSL: TStringList;
begin
  TmpDir := GetTmpDir;
  oSL := TStringList.Create;
  try
    UpdateMessageInfo('Creating batch file...');
    IntEventOnProgress(4);

    batchName := GetTmpFileName('.bat');
    {$WARN SYMBOL_PLATFORM OFF}
    FileSetAttr(ParamStr(0), 0);
    {$WARN SYMBOL_PLATFORM ON}
    oSL.Add(':Start');
    oSL.Add('@echo off');
    oSL.Add('pushd "%~dp0"');
    oSL.Add('ECHO ********DON''T CLOSE THIS WINDOW UNTIL THE UPDATE PROCESS IS COMPLETE********  2>&1');
    oSL.Add('ECHO Stopping current application... 2>&1');
    oSL.Add('taskkill /f /im ' + ExtractFileName(Application.ExeName));
    oSL.Add('ECHO Done 2>&1');
    oSL.Add('timeout 1 > NUL');
    oSL.Add('ECHO Deleting current file application... 2>&1');

    AFileInfo.FDownloadCount := AFileInfo.FDownloadCount + AFileInfo.FCrashDownloadCount;
    for I := 1 to AFileInfo.DownloadCount do
    begin
      tempFile := TmpDir + 'needpatch' + IntToStr(I) + '.tmp';
      if FileExists(tempFile) then
      begin
        FileIni := TIniFile.Create(tempFile);
        try
          AFileInfo.FileLocalName := FileIni.ReadString('', 'localname', AFileInfo.FileLocalName);
          AFileInfo.LocalPatch := FileIni.ReadString('', 'localpatch', AFileInfo.LocalPatch);
          sDOSName := AFileInfo.LocalPatch + AFileInfo.FileLocalName;
          sFileName := TmpDir + AFileInfo.FileLocalName;

          oSL.Add(':DEL' + IntToStr(I));
          oSL.Add('if Exist ' + string(AnsiQuotedStr(sDOSName, '"')) + ' DEL ' + AnsiQuotedStr(sDOSName, '"') + ' /F /Q');
  //        oSL.Add('DEL ' + AnsiQuotedStr(sDOSName, '"')+' /F /Q');
          oSL.Add('ECHO Done 2>&1');
          oSL.Add('timeout 1 > NUL');
          oSL.Add('if Exist ' + string(AnsiQuotedStr(sDOSName, '"')) + ' goto DEL' + IntToStr(I));
          oSL.Add('ECHO Moving ' + AnsiQuotedStr(AFileInfo.FileLocalName, '"') + ' file to current app folder... 2>&1');
          oSL.Add('Move ' + AnsiQuotedStr(sFileName, '"') + ' ' + AnsiQuotedStr(sDOSName, '"'));
        finally
          FileIni.Free;
        end;
      end;
    end;
    oSL.Add('ECHO Done 2>&1');
    oSL.Add('timeout 1 > NUL');
    oSL.Add('ECHO Starting Application... 2>&1');
    oSL.Add('START /B /D ' + AnsiQuotedStr(ExtractFilePath(Application.ExeName), '"') + ' ' + ExtractFileName(Application.ExeName));
    oSL.Add('ECHO Done 2>&1');
    oSL.Add('timeout 1 > NUL');
    oSL.Add('ECHO Deleting temp file version info... 2>&1');
    for I := 1 to AFileInfo.DownloadCount do
    begin
      tempFile := TmpDir + 'needpatch' + IntToStr(I) + '.tmp';
      if FileExists(tempFile) then
        oSL.Add('DEL /F /S ' + AnsiQuotedStr(tempFile, '"'))
    end;
    oSL.Add('DEL /F /S ' + AnsiQuotedStr(TmpDir + 'olt_desktop.tmp', '"'));
    oSL.Add('ECHO Done 2>&1');
    oSL.Add('timeout 1 > NUL');
    oSL.Add('ECHO Deleting batch file... 2>&1');
    oSL.Add('DEL /F ' + AnsiQuotedStr(batchName, '"'));
    oSL.Add('ECHO Done 2>&1');
    oSL.Add('popd');
    oSL.SaveToFile(batchName);
    ChDir(TmpDir);
    UpdateMessageInfo('Running batch file');
    WinExec(PAnsiChar(UTF8String(batchName)), SW_SHOWNORMAL);
  finally
    oSL.Free;
    Application.Terminate;
  end;
end;

{ TFileVersionInfo }

constructor TFileVersionInfo.Create;
begin
  FReleaseNotes := TStringList.Create;
  FDownloadCount := 0;
  FCrashDownloadCount := 0;
end;

destructor TFileVersionInfo.Destroy;
begin
  FReleaseNotes.Free;
  inherited;
end;

//function TFileVersionInfo.GetVersionExe: String;
//type
//  PFFI = ^vs_FixedFileInfo;
//var
//  F       : PFFI;
//  Handle  : Dword;
//  Len     : Longint;
//  Data    : Pchar;
//  Buffer  : Pointer;
//  iSize   : Dword;
//  pDownload: Pchar;
//  sArchive : String;
//begin
//  sArchive  := Application.ExeName;
//  pDownload := StrAlloc(Length(sArchive) + 1);
//  StrPcopy(pDownload, sArchive);
//  Len := GetFileVersionInfoSize(pDownload, Handle);
//  Result := '';
//  if Len > 0 then
//  begin
//     Data:=StrAlloc(Len+1);
//     if GetFileVersionInfo(pDownload,Handle,Len,Data) then
//     begin
//        VerQueryValue(Data, '\',Buffer,iSize);
//        F := PFFI(Buffer);
//        Result := Format('%d.%d.%d',
//                         [HiWord(F^.dwFileVersionMs),
//                          LoWord(F^.dwFileVersionMs),
//                          HiWord(F^.dwFileVersionLs)]
//                        );
//     end;
//     StrDispose(Data);
//  end;
//  StrDispose(pDownload);
//end;

//function TFileVersionInfo.IsVersionDifferent(const AVersion: string): Boolean;
//var
//  sExeVer: string;
//begin
//  sExeVer := GetVersionExe;
//  Result  := (AVersion <> sExeVer);
//end;

function TFileVersionInfo.IsFVersionDifferent(const AServerVer, ALocalFileName, ALocalFilePatch: string): Boolean;
var
  sLocalVer, sFileName, sLocalPatch: string;
begin
  sFileName := FileSearch(ALocalFileName, ALocalFilePatch);
  sLocalPatch := ALocalFilePatch + ALocalFileName;

  if sFileName <> '' then
    sLocalVer := GetFileVersion(sLocalPatch)
  else
    sLocalVer := '';
  Result := (AServerVer <> sLocalVer);
end;

procedure TFileVersionInfo.ReadVerInfo(const AText: string);
var
  oSL: TStringList;
  oSLContainer: TStringList;
  I, J: Integer;
  sTextLine, sRelInfo: string;
begin
  oSL := TStringList.Create;
  oSLContainer := TStringList.Create;
  try
    oSL.StrictDelimiter := True;
    oSL.Delimiter := '-';

    oSLContainer.StrictDelimiter := True;
    oSLContainer.Delimiter := Char(13);
    oSLContainer.DelimitedText := AText;
    for I := 0 to oSLContainer.Count - 1 do
    begin
      sTextLine := ReplaceStr(oSLContainer.Strings[I], #10, '');
      if LeftStr(sTextLine, 13) = 'releasenotes=' then
      begin
        sRelInfo := RightStr(sTextLine, Length(sTextLine) - 13);
        oSL.DelimitedText := sRelInfo;
        for J := 0 to oSL.Count - 1 do
          if Length(oSL.Strings[J]) > 1 then
            FReleaseNotes.Add('-' + oSL.Strings[J]);
      end;
    end;
  finally
    oSL.Free;
    oSLContainer.Free;
  end;
end;

function TFileVersionInfo.GetHashSHA2(const AFileName: string): string;
var
  fs: TFileStream;
begin
  fs := TFileStream.Create(AFileName, fmOpenRead);
  try
    Result := THashSHA2.GetHashString(fs);
  finally
    fs.Free;
  end;
end;

end.

