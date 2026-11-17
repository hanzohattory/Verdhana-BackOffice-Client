unit Model.Downloader;

interface

uses
    System.SysUtils
  , System.Classes
  , IdBaseComponent
  , IdComponent
  , IdTCPConnection
  , IdTCPClient
  , IdHTTP
  , IdMultipartFormData
  , IdIOHandler
  , IdIOHandlerSocket
  , IdIOHandlerStack
  , IdSSL
  , IdSSLOpenSSL
  , IdAuthentication
  ;

type
  TEventOnProcess = procedure(const AMsg: string) of object;
  TEventOnProgress = procedure(const AValue: Int64) of object;

  TNBasicAuth = class
  private
    FContentType: string;
    FPassword: string;
    FURL: string;
    FUser: string;
    FAuthenticated: Boolean;
    FHttpConnector: TIdHTTP;
    procedure OnAuth(Sender: TObject; Authentication: TIdAuthentication; var Handled: Boolean);
  public
    constructor Create(AHttpConnector: TIdHTTP);
    property Authenticated: Boolean read FAuthenticated write FAuthenticated;
    function Login: Boolean;
    function LoginForm: Boolean;
    property User: string read FUser write FUser;
    property Password: string read FPassword write FPassword;
    property ContentType: string read FContentType write FContentType;
    property URL: string read FURL write FURL;
  end;

  TNAutoUpdateHTTP__ = class
  private
    FHttpConnector: TIdHTTP;
    FContentType: string;
    FAllowCookie: Boolean;
    FAuth: TNBasicAuth;
    FLocalFileName: string;
    FURL: string;
    FOnProcess: TEventOnProcess;
    FOnProgress: TEventOnProgress;
    FPrefixVersion: string;
    procedure SetContentType(const Value: string);
    procedure SetLocalFile(const Value: string);
    procedure SetURL(const Value: string);
    procedure Download;
//    procedure IntEventOnProcess(const AMsg: string);

//    function GetServerVersion: string;
  public
    constructor Create(const AUseSSL: Boolean);
    destructor Destroy; override;
    procedure Execute;
    property AllowCookie: Boolean read FAllowCookie write FAllowCookie;
    property ContentType: string read FContentType write SetContentType;
    property Auth: TNBasicAuth read FAuth;
    property URL: string read FURL write SetURL;
    property LocalFileName: string read FLocalFileName write SetLocalFile;
    property PrefixVersion: string read FPrefixVersion write FPrefixVersion;
    property OnProcess: TEventOnProcess read FOnProcess write FOnProcess;
    property OnProgress: TEventOnProgress read FOnProgress write FOnProgress;
  end;

implementation

{ TNDownloader }

constructor TNAutoUpdateHTTP__.Create(const AUseSSL: Boolean);
begin
  FHttpConnector := TIdHTTP.Create(nil);

  FAuth := TNBasicAuth.Create(FHttpConnector);
  FHttpConnector.OnAuthorization := Auth.OnAuth;
end;

destructor TNAutoUpdateHTTP__.Destroy;
begin
  FHttpConnector.Free;
  FAuth.Free;
  inherited;
end;

procedure TNAutoUpdateHTTP__.Download;
var
  MS: TMemoryStream;
  oSL: TStringList;
  sContent: string;
begin
  MS := TMemoryStream.Create;
  oSL := TStringList.Create;
  try
    FHttpConnector.Request.ContentType := FContentType;
    try
      FHttpConnector.Get(FURL, MS);
      MS.Position := 0;
      oSl.LoadFromStream(MS);
      sContent := oSl.Text;

      MS.SaveToFile(FLocalFileName);
    except
      on E:Exception do
        raise E;
    end;
  finally
    oSl.Free;
    MS.Free;
  end
end;

procedure TNAutoUpdateHTTP__.Execute;
begin
  try
    if FAuth.Login then
    begin
      Download;
    end;
  except
    on E:Exception do
      raise E;
  end;
end;

//function TNAutoUpdateHTTP__.GetServerVersion: string;
//var
//  oList: TStringList;
//  sFileName: string;
//  sServerVer: string;
//begin
//  sFileName := '*'+'.'+FPrefixVersion+'ver';
//  sServerVer := '0.0.0.0';
//  Result := sServerVer;
//
//  if FAuth.Login then
//  begin
//    IntEventOnProcess('Getting file version...');
//    oList := TStringList.Create;
//    try
//      try
////        FTPClient.TransferType := ftASCII;
////        FTPClient.List(oList, sFileName, False);
//        if oList.Count > 0 then
//        begin
//          sServerVer := ChangeFileExt(oList[0], '');
//          IntEventOnProcess('Latest version on Server : '+sServerVer);
//        end
//        else
//          IntEventOnProcess('Error file version doesn''t exists in Server');
//
//        Result := sServerVer;
//      except
//
//      end;
//    finally
//      oList.Free;
//    end;
//  end;
//end;

//procedure TNAutoUpdateHTTP__.IntEventOnProcess(const AMsg: string);
//begin
//  if Assigned(FOnProcess) then FOnProcess(AMsg);
//end;

procedure TNAutoUpdateHTTP__.SetContentType(const Value: string);
begin
  FContentType := Value;
  FHttpConnector.Request.ContentType := Value;
end;

procedure TNAutoUpdateHTTP__.SetLocalFile(const Value: string);
begin
  FLocalFileName := Value;
end;

procedure TNAutoUpdateHTTP__.SetURL(const Value: string);
begin
  FURL := Value;
end;

{ TNBasicAuth }

constructor TNBasicAuth.Create(AHttpConnector: TIdHTTP);
begin
  FHttpConnector := AHttpConnector;
end;

function TNBasicAuth.Login: Boolean;
var
  objSSL  : TIdSSLIOHandlerSocketOpenSSL;
  oSL: TStringList;
  bRes: Boolean;
begin
  bRes := False;
  objSSL := TIdSSLIOHandlerSocketOpenSSL.Create(Nil);
  objSSL.Port := 0;
  objSSL.DefaultPort := 0;
  objSSL.SSLOptions.Method := sslvTLSv1_2;
  objSSL.SSLOptions.Mode := sslmUnassigned;
  objSSL.SSLOptions.VerifyMode := [];
  objSSL.SSLOptions.VerifyDepth := 0;

  oSL := TStringList.Create;
  try
    try
      FHttpConnector.IOHandler := objSSL;
      FHttpConnector.Request.Username := FUser;
      FHttpConnector.Request.Password := FPassword;
      FHttpConnector.AllowCookies := False;
      FHttpConnector.HandleRedirects := False;
      FHttpConnector.Request.ContentType := FContentType;
      FHttpConnector.Request.Connection := 'keep-alive';
      FHttpConnector.ProxyParams.BasicAuthentication := false;
      FHttpConnector.ProxyParams.ProxyPort := 0;
      FHttpConnector.Request.ContentLength := -1;
      FHttpConnector.Request.Accept := 'text/html, */*';
      FHttpConnector.Request.BasicAuthentication := false;

      FHttpConnector.Post(FURL, oSL);
      FHttpConnector.ResponseCode;
      Result := bRes;
    except
      on E:Exception do
      begin
        raise E;
      end;
    end;
  finally
    oSL.Free;
  end;
end;

function TNBasicAuth.LoginForm: Boolean;
Var
  objFORM : TIdMultiPartFormDataStream;
  objSSL  : TIdSSLIOHandlerSocketOpenSSL;
  objHTTP : TIdHTTP;
  sRes: string;
Begin
  Result := False;

  objSSL := TIdSSLIOHandlerSocketOpenSSL.Create(Nil);
  objSSL.Port := 0;
  objSSL.DefaultPort := 0;
  objSSL.SSLOptions.Method := sslvTLSv1_2;
  objSSL.SSLOptions.Mode := sslmUnassigned;
  objSSL.SSLOptions.VerifyMode := [];
  objSSL.SSLOptions.VerifyDepth := 0;

  objHTTP := TIdHTTP.Create(Nil);
  objHTTP.IOHandler := objSSL;
  objHTTP.AllowCookies := true;
  objHTTP.ProxyParams.BasicAuthentication := false;
  objHTTP.ProxyParams.ProxyPort := 0;
  objHTTP.Request.ContentLength := -1;
  objHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
  objHTTP.Request.Accept := 'text/html, */*';
  objHTTP.Request.BasicAuthentication := false;
  objHTTP.Request.UserAgent := 'Mozilla/3.0 (compatible; Indy Library)';
  objHTTP.HTTPOptions := [hoForceEncodeParams];
  objHTTP.HandleRedirects := true;

  objFORM  := TIdMultiPartFormDataStream.Create;
  objFORM.AddFormField('Username', 'user');
  objFORM.AddFormField('Password', '12345');

  try
     sRes := objHTTP.Put(Url, objFORM);
  except
     on E:Exception do
     begin
       if Pos('404' , E.Message) > 0 then
          E.Message := 'URL não encontrada ('+Url+')';

       Result:= False;
     end;
  end;
  FreeAndNil(objFORM);
  FreeAndNil(objSSL);
  FreeAndNil(objHTTP);

end;

procedure TNBasicAuth.OnAuth(Sender: TObject; Authentication: TIdAuthentication; var Handled: Boolean);
begin
  Authentication.Username := FUser;
  Authentication.Password := FPassword;
end;

end.
