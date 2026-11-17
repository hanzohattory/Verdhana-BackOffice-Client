unit App.Global.Info;

interface

uses
  Winapi.Windows,
  WinAPI.SHFolder,
  System.SysUtils,
  Vcl.Forms,
  System.DateUtils;

type
  TAppGlobalInfo = class
  private
    FCompanyName: string;
    FAppName: string;
    FAppVersion: string;
    FScreenHeight: Integer;
    FScreenDPI: Integer;
    FScreenWidth: Integer;
    FUserDataDir: string;
    FUserId: string;
    FDeviceType: string;
    FLoginFinish: Boolean;
    FSessionId: string;
    FCarrierCode: string;
    FDeviceSeries: string;
    FDeviceId: string;
    FStartUp: Boolean;
    FUserFolderPath: string;
    FLastActiveAcc: string;
    function GetUserFolderPath: string;
    function GetAppVersion: string;
    function PrepareUserDir(const AUserId: string): string;
    function GetUserDataDir: string;
  public
    constructor Create;
    property CompanyName: string read FCompanyName;
    property AppName: string read FAppName;
    property AppVersion: string read FAppVersion;

    property ScreenHeight: Integer read FScreenHeight write FScreenHeight;
    property ScreenDPI: Integer read FScreenDPI write FScreenDPI;
    property ScreenWidth: Integer read FScreenWidth write FScreenWidth;
    property UserDataDir: string read GetUserDataDir write FUserDataDir;
    property UserId: string read FUserId write FUserId;
    property DeviceType: string read FDeviceType write FDeviceType;
    property LoginFinish: Boolean read FLoginFinish write FLoginFinish;
    property SessionId: string read FSessionId write FSessionId;
    property CarrierCode: string read FCarrierCode write FCarrierCode;
    property DeviceSeries: string read FDeviceSeries write FDeviceSeries;
    property DeviceId: string read FDeviceId write FDeviceId;
    property StartingUp: Boolean read FStartUp write FStartUp;
    property UserFolderPath: string read FUserFolderPath;


    property LastActiveAcc: string read FLastActiveAcc write FLastActiveAcc;
  end;

var
  AppGlobalInfo: TAppGlobalInfo;

implementation

{ TAppGlobalInfo }

constructor TAppGlobalInfo.Create;
begin
  FAppVersion := GetAppVersion;
  FUserFolderPath := GetUserFolderPath;

  FScreenHeight := Screen.Height;
  FScreenWidth := Screen.Width;
  FScreenDPI := Screen.PixelsPerInch;

  FDeviceId := GetEnvironmentVariable('COMPUTERNAME');
  FDeviceSeries := '';
  FDeviceType := 'PC';
  FCarrierCode := '';
end;

function TAppGlobalInfo.GetAppVersion: string;
type
  PLandCodepage = ^TLandCodepage;

  TLandCodepage = record
    wLanguage, wCodePage: word;
  end;
var
  Exe: string;
  dummy, len: cardinal;
  buf, pntr: pointer;
  lang: string;
  FixedPtr: PVSFixedFileInfo;
begin
  Exe := ParamStr(0);
  len := GetFileVersionInfoSize(PChar(Exe), dummy);
  if len = 0 then
    RaiseLastOSError;
  GetMem(buf, len);
  try
    if not GetFileVersionInfo(PChar(Exe), 0, len, buf) then
      RaiseLastOSError;

    if not VerQueryValue(buf, '\VarFileInfo\Translation\', pntr, len) then
      RaiseLastOSError;

    if not VerQueryValue(buf, '\', Pointer(FixedPtr), len) then
      RaiseLastOSError;

    lang := Format('%.4x%.4x', [PLandCodepage(pntr)^.wLanguage, PLandCodepage(pntr)^.wCodePage]);

    {Get App Name}
    FAppName := ChangeFileExt(ExtractFileName(Exe), '');

    {Get Company's name}
    if VerQueryValue(buf, PChar('\StringFileInfo\' + lang + '\CompanyName'), pntr, len){ and (@len <> nil)} then
      FCompanyName := PChar(pntr);

    {Get File Version}
    Result := Format('%d.%d.%d.%d', [LongRec(FixedPtr.dwFileVersionMS).Hi,  //major
      LongRec(FixedPtr.dwFileVersionMS).Lo,  //minor
      LongRec(FixedPtr.dwFileVersionLS).Hi, //release
      LongRec(FixedPtr.dwFileVersionLS).Lo //build
      ]);
  finally
    FreeMem(buf);
  end;
end;

function TAppGlobalInfo.GetUserDataDir: string;
begin
  if FUserDataDir = '' then
    FUserDataDir := PrepareUserDir(FUserId);

  Result := FUserDataDir;
end;

function TAppGlobalInfo.GetUserFolderPath: string;
const
  SHGFP_TYPE_CURRENT = 0;
var
  path: array[0..MAX_PATH] of char;
begin
  if SUCCEEDED(SHGetFolderPath(0, CSIDL_LOCAL_APPDATA, 0, SHGFP_TYPE_CURRENT, @path[0])) then
    Result := path
  else
    Result := '';
end;

function TAppGlobalInfo.PrepareUserDir(const AUserId: string): string;
begin
  FUserId := AUserId;

  Result := AppGlobalInfo.UserFolderPath;
  Result := Result + '\' + AppGlobalInfo.CompanyName;
  if not DirectoryExists(Result) then
    CreateDir(Result);

  Result := Result + '\' + AppGlobalInfo.AppName;
  if not DirectoryExists(Result) then
    CreateDir(Result);

  Result := Result + '\' + AUserId;
  if not DirectoryExists(Result) then
    CreateDir(Result);
end;

initialization
  AppGlobalInfo := TAppGlobalInfo.Create;


finalization
  AppGlobalInfo.Free;

end.

