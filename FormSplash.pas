unit FormSplash;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ComCtrls,
  cxControls,
  cxContainer,
  cxEdit,
  cxProgressBar,
  ExtCtrls,
  StdCtrls,
  SplashCommunication,
  jpeg,
  NConstants,

  cxGraphics,
  cxVGrid,
  cxInplaceContainer, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxGDIPlusClasses, cxFilter, dxScrollbarAnnotations;

type
  TfrmNFECSplash = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    lblProgress: TLabel;
    pbProgress: TcxProgressBar;
    procedure mmSplashEnter(Sender: TObject);
    procedure mmSplashExit(Sender: TObject);
    procedure mmSplashChange(Sender: TObject);
  private
    { Private declarations }
    procedure RecvLabelProgressCaption(var AMessage: TMessage); message WM_SPLASH_PROGRESS_CAPTION;
    procedure RecvProgressBarPosition(var AMessage: TMessage); message WM_SPLASH_PROGRESS_POSITION;
    procedure RecvProgressBarMaxPosition(var AMessage: TMessage); message WM_SPLASH_PROGRESS_MAX_POSITION;
  public
    { Public declarations }
    CurrPos: integer;
    procedure WndProc(var AMsg: TMessage); override;
  end;

implementation

{$R *.dfm}

{ TfrmNFECSplash }

procedure TfrmNFECSplash.RecvLabelProgressCaption(var AMessage: TMessage);
var
  s: string;
begin
  s := String(PChar(AMessage.LParam));
  lblProgress.Caption := s;
//  mmSplash.Lines.Add(s);
end;

procedure TfrmNFECSplash.RecvProgressBarMaxPosition(
  var AMessage: TMessage);
begin
  pbProgress.Properties.Max := AMessage.LParam;
end;

procedure TfrmNFECSplash.RecvProgressBarPosition(var AMessage: TMessage);
begin
  CurrPos := CurrPos + AMessage.LParam;
  pbProgress.Position := CurrPos;
end;

procedure TfrmNFECSplash.mmSplashEnter(Sender: TObject);
begin
//  PostMessage(Handle, WM_HIDEMYMEMOCrARET, 0, 0);
end;

procedure TfrmNFECSplash.mmSplashExit(Sender: TObject);
begin
//  CreateCaret(mmSplash.handle,1,1,1);
end;

procedure TfrmNFECSplash.mmSplashChange(Sender: TObject);
begin
//  CreateCaret(mmSplash.handle,0,0,0);
end;

procedure TfrmNFECSplash.WndProc(var AMsg: TMessage);
begin
  if AMsg.Msg = WM_HIDEMYMEMOCARET then
  begin
//    CreateCaret(mmSplash.Handle,0,0,0);
  end
  else
    inherited WndProc(AMsg);
end;

end.
