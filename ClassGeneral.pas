unit ClassGeneral;

interface

uses
  classes, winsock, SysUtils, windows, FormEditorData, FormEditorBasic;

  function GetIPAddress: Integer;
  function GetIPAddressAsString: String;
  function MyComputerName : String;

Type
  TFormEditorClass = class of TfrmEditorData;
  TFormEditorBasicClass = class of TfrmEditorBasic;

  TNBackgroundProcess = class(TObject)
  private
    FExecuteDate: TDateTime;
    FDescription: String;
    FCategory: string;
    FTransDate: TDateTime;
    FUser: string;
    procedure SetCategory(const Value: string);
    procedure SetDescription(const Value: String);
    procedure SetExecuteDate(const Value: TDateTime);
    procedure SetTransDate(const Value: TDateTime);
    procedure SetUser(const Value: string);
  public
    property Category: string read FCategory write SetCategory;
    property Description: String read FDescription write SetDescription;
    property User: string read FUser write SetUser;
    property TransDate: TDateTime read FTransDate write SetTransDate;
    property ExecuteDate: TDateTime read FExecuteDate write SetExecuteDate;
  end;

  TBankInstruction = class
  private
    FNominal: Currency;
    FBankAccName: String;
    FBankAccNo: String;
    FBankCode: String;
    FInstruction: TStringList;
    FValueDate: TDate;
    FTranType: string;
    FCcy: String;
  public
    constructor Create;
    destructor Destroy;

    property BankCode: String read FBankCode write FBankCode;
    property BankAccNo: String read FBankAccNo write FBankAccNo;
    property BankAccName: String read FBankAccName write FBankAccName;
    property Ccy: String read FCcy write FCcy;
    property Nominal: Currency read FNominal write FNominal;
    property ValueDate: TDate read FValueDate write FValueDate;
    property TransType: string read FTranType write FTranType;
    property Instruction: TStringList read FInstruction;
  end;

implementation

function GetIPAddress: Integer;
var
  Buffer: array[0..255] of AnsiChar;
  RemoteHost: PHostEnt;
begin
  Winsock.GetHostName(@Buffer, 255);
  RemoteHost := Winsock.GetHostByName(Buffer);
  if RemoteHost = nil then
    Result := winsock.htonl($07000001) { 127.0.0.1 }
  else
    Result := longint(pointer(RemoteHost^.h_addr_list^)^);
    Result := Winsock.ntohl(Result);
end;// function GetIPAddress: Integer;

function GetIPAddressAsString: String;
var
  tempAddress: Integer;
  Buffer: array[0..3] of Byte absolute tempAddress;
begin
  tempAddress := GetIPAddress;
  Result := Format('%d.%d.%d.%d', [Buffer[3], Buffer[2], Buffer[1], Buffer[0]]);
end;// function GetIPAddressAsString: String;


function MyComputerName : String;
var
  buffer: array[0..255] of WideChar;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

{ TNBackgroundProcess }

procedure TNBackgroundProcess.SetCategory(const Value: string);
begin
  FCategory := Value;
end;

procedure TNBackgroundProcess.SetDescription(const Value: String);
begin
  FDescription := Value;
end;

procedure TNBackgroundProcess.SetExecuteDate(const Value: TDateTime);
begin
  FExecuteDate := Value;
end;

procedure TNBackgroundProcess.SetTransDate(const Value: TDateTime);
begin
  FTransDate := Value;
end;

procedure TNBackgroundProcess.SetUser(const Value: string);
begin
  FUser := Value;
end;

{ TBankInstruction }

constructor TBankInstruction.Create;
begin
  inherited Create;
  FInstruction := TStringList.Create;
  FNominal := 0;
end;

destructor TBankInstruction.Destroy;
begin
  FreeAndNil(FInstruction);
  inherited Destroy;
end;

end.
