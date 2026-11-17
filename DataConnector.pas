unit DataConnector;

interface

uses
  SysUtils, Classes, variants,
  Dialogs,
  NDataMemNonVisual,
  NLibraries,
  NFixException,
  NProEngine,
  NProMessage,
  NProDictionary,
  NProException;

type
  TdmConnector = class(TDataModule)
  private
    { Private declarations }
    FMQEngineClient: TNProSocketClient;
    FDictionary: TNProDictionary;
    procedure ProcOMGRecv(AMsg: TNProMessage);
    procedure ClientHandleError(AMsg: TNProMessage; AException: ENProException; ASession: TNProSession);
    procedure ClientHandleInitiatorConnecting(AText: string; AConnectionInfo: TNProConnectionInfo; ASession: TNProSession; ASuccesfullConnect: boolean);
    procedure ClientHandleSendLogon(AMsg: TNProMessage; ASession: TNProSession) ;
    procedure ClientHandleReceiveLogon(AMsg: TNProMessage; ASession: TNProSession; AReason: String);
    procedure ClientHandleLogonAuthentication(AMsg: TNProMessage; ASession: TNProSession;
      var ALogonResult: TNProAuthenticationResult; var ARejectReason: string; var AUserKeyPrefix: string);
    procedure ClientHandleInvalidLogon(AMsg: TNProMessage; ASession: TNProSession; AReason: String);
    procedure ClientHandleSendLogout(AMsg: TNProMessage; ASession: TNProSession; AReason: String);
    procedure ClientHandleReceiveLogout(AMsg: TNProMessage; ASession: TNProSession; AReason: String);
    procedure ClientHandleInMessage(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleOutMessage(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleSendResendRequest(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleReceiveResendRequest(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleSendReject(AMsg: TNProMessage; ASession: TNProSession; AReason: String);
    procedure ClientHandleReceiveReject(AMsg: TNProMessage; ASession: TNProSession; AReason: String);
    procedure ClientHandleSendSequenceReset(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleReceiveSequenceReset(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleSendHeartBeat(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleReceiveHeartBeat(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleSendTestMessage(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleReceiveTestMessage(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleSendTextOnSocket(AText: string; ASession: TNProSession);
    procedure ClientHandleReceiveTextOnSocket(AText: string; ASession: TNProSession);
    procedure ClientHandleSendPossibleDuplicate(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleReceivePossibleDuplicate(AMsg: TNProMessage; ASession: TNProSession);
    procedure ClientHandleSocketConnected(ASocketPeer: TNProSocketClientPeer);
    procedure ClientHandleSocketDisconnected(ASocketPeer: TNProSocketClientPeer);
    procedure ClientHandleFailedOnOpenSession(AMsg: string; ASession: TNProSession);
  public
    { Public declarations }
    property MQEngineClient: TNProSocketClient read FMQEngineClient;
    procedure EngineInitialize;
    procedure EngineDeinitialize;
    procedure LoadSessionsFromFile(AXMLFile: string);
    procedure StartClient;
    procedure StopClient;
  end;

var
  dmConnector: TdmConnector;

const
  OMG_NProMsgType_OMGEOResponse = 'O';
  OMG_NProMsgField_OMGEOResponse_Status = 0;
  OMG_NProMsgField_OMGEOResponse_Description = 1;

implementation

uses DataGlobal, FormOMGMonitor;

{$R *.dfm}

{ TdmOMGEOClient }

procedure TdmConnector.ClientHandleError(AMsg: TNProMessage;
  AException: ENProException; ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleFailedOnOpenSession(AMsg: string;
  ASession: TNProSession);
begin
  dmGlobal.Log(ltDebug, 'Failed To Connect Socket :: ' + AMsg);
end;

procedure TdmConnector.ClientHandleInitiatorConnecting(AText: string;
  AConnectionInfo: TNProConnectionInfo; ASession: TNProSession;
  ASuccesfullConnect: boolean);
begin

end;

procedure TdmConnector.ClientHandleInMessage(AMsg: TNProMessage;
  ASession: TNProSession);
begin
  if AMsg.MessageType = OMG_NProMsgType_OMGEOResponse then ProcOMGRecv(AMsg);
end;

procedure TdmConnector.ClientHandleInvalidLogon(AMsg: TNProMessage;
  ASession: TNProSession; AReason: String);
begin

end;

procedure TdmConnector.ClientHandleLogonAuthentication(AMsg: TNProMessage;
  ASession: TNProSession; var ALogonResult: TNProAuthenticationResult;
  var ARejectReason, AUserKeyPrefix: string);
begin

end;

procedure TdmConnector.ClientHandleOutMessage(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleReceiveHeartBeat(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleReceiveLogon(AMsg: TNProMessage;
  ASession: TNProSession; AReason: String);
begin
  if ASession.State.Connected then
  begin
    dmGlobal.Log(ltInfo, 'TdmOMGEOClient.ClientHandleReceiveLogon -> Connected to Nayaga OMGEO Server');
  end;

end;

procedure TdmConnector.ClientHandleReceiveLogout(AMsg: TNProMessage;
  ASession: TNProSession; AReason: String);
begin
  if not ASession.State.Connected then
  begin
    dmGlobal.Log(ltInfo, 'TdmOMGEOClient.ClientHandleReceiveLogon -> Disconnected from Nayaga OMGEO Server');
  end;
end;

procedure TdmConnector.ClientHandleReceivePossibleDuplicate(
  AMsg: TNProMessage; ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleReceiveReject(AMsg: TNProMessage;
  ASession: TNProSession; AReason: String);
begin

end;

procedure TdmConnector.ClientHandleReceiveResendRequest(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleReceiveSequenceReset(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleReceiveTestMessage(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleReceiveTextOnSocket(AText: string;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSendHeartBeat(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSendLogon(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSendLogout(AMsg: TNProMessage;
  ASession: TNProSession; AReason: String);
begin

end;

procedure TdmConnector.ClientHandleSendPossibleDuplicate(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSendReject(AMsg: TNProMessage;
  ASession: TNProSession; AReason: String);
begin

end;

procedure TdmConnector.ClientHandleSendResendRequest(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSendSequenceReset(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSendTestMessage(AMsg: TNProMessage;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSendTextOnSocket(AText: string;
  ASession: TNProSession);
begin

end;

procedure TdmConnector.ClientHandleSocketConnected(
  ASocketPeer: TNProSocketClientPeer);
begin

end;

procedure TdmConnector.ClientHandleSocketDisconnected(
  ASocketPeer: TNProSocketClientPeer);
begin

end;

procedure TdmConnector.EngineDeinitialize;
begin
  FMQEngineClient.RelationSession.Free;
end;

procedure TdmConnector.EngineInitialize;
var
  i: Integer;
begin
  try
    FMQEngineClient := TNProSocketClient.Create;

    FMQEngineClient.OnError := ClientHandleError;
    FMQEngineClient.OnSendLogon := ClientHandleSendLogon;
    FMQEngineClient.OnReceiveLogon := ClientHandleReceiveLogon;
    FMQEngineClient.OnSendLogout := ClientHandleSendLogout;
    FMQEngineClient.OnReceiveLogout := ClientHandleReceiveLogout;
    FMQEngineClient.OnReceivedMessage := ClientHandleInMessage;
    FMQEngineClient.OnSendMessage := ClientHandleOutMessage;
    FMQEngineClient.OnSendResendRequest := ClientHandleSendResendRequest;
    FMQEngineClient.OnReceiveResendRequest := ClientHandleReceiveResendRequest;
    FMQEngineClient.OnInvalidLogon := ClientHandleInvalidLogon;
    FMQEngineClient.OnSendReject := ClientHandleSendReject;
    FMQEngineClient.OnReceiveReject := ClientHandleReceiveReject;
    FMQEngineClient.OnSendSeqReset := ClientHandleSendSequenceReset;
    FMQEngineClient.OnReceiveSeqReset := ClientHandleReceiveSequenceReset;
    FMQEngineClient.OnSendHeartBeat := ClientHandleSendHeartBeat;
    FMQEngineClient.OnReceiveHeartBeat := ClientHandleReceiveHeartBeat;
    FMQEngineClient.OnSendTestMessage := ClientHandleSendTestMessage;
    FMQEngineClient.OnReceiveTestMessage := ClientHandleReceiveTestMessage;
    FMQEngineClient.OnSendTextOnSocket := ClientHandleSendTextOnSocket;
    FMQEngineClient.OnReceiveTextOnSocket := ClientHandleReceiveTextOnSocket;
    FMQEngineClient.OnSendPossibleDuplicate := ClientHandleSendPossibleDuplicate;
    FMQEngineClient.OnReceivePossibleDuplicate := ClientHandleReceivePossibleDuplicate;
    FMQEngineClient.OnFailedOpenSession := ClientHandleFailedOnOpenSession;

    LoadSessionsFromFile('ClientEngine.xml');
    dmGlobal.Log(ltDebug, 'TdmOMGEOClient.EngineInitialize -> Loaded Nayaga OMGEO Config File');

  except
    On E: Exception do
    begin
      dmGlobal.Log(ltError, 'TdmOMGEOClient.EngineInitialize -> ' + e.Message);
    end;
  end;

  StartClient;
end;

procedure TdmConnector.LoadSessionsFromFile(AXMLFile: string);
begin
  FMQEngineClient.LoadConnectionsFromXML(AXMLFile);
  FDictionary := FMQEngineClient.Dictionary;
end;

procedure TdmConnector.ProcOMGRecv(AMsg: TNProMessage);
begin
  with dmGlobal do
  begin
//    if secmGlobal.GroupBindary.GroupMembershipBindary.Locate(VarArrayOf([dmGlobal.CurrentUser, 'Settlement'])) or
//       secmGlobal.GroupBindary.GroupMembershipBindary.Locate(VarArrayOf([dmGlobal.CurrentUser, 'AppManager'])) or
//       secmGlobal.GroupBindary.GroupMembershipBindary.Locate(VarArrayOf([dmGlobal.CurrentUser, 'Admin'])) or
//       secmGlobal.GroupBindary.GroupMembershipBindary.Locate(VarArrayOf([dmGlobal.CurrentUser, 'Server Administrator'])) then
//    begin
      ShowOMGNotification;
//    end;
  end;
end;

procedure TdmConnector.StartClient;
begin
  try
    FMQEngineClient.Login(dmGlobal.UserID, 'xxx');
  except
    on E: Exception do
    begin
      dmGlobal.Log(ltError, 'TdmOMGEOClient.StartClient -> ' + E.Message);
    end;
  end;
end;

procedure TdmConnector.StopClient;
begin
  if FMQEngineClient.RelationSession.State.Connected then FMQEngineClient.Logout;
end;

end.
