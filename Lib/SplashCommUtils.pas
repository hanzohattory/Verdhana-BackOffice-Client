unit SplashCommUtils;

interface

uses
  Windows,
  Messages,
  Forms;

const
  WM_SPLASH_PROGRESS_CAPTION = WM_USER + 14444;
  WM_SPLASH_PROGRESS_POSITION = WM_USER + 14445;
  WM_SPLASH_PROGRESS_MAX_POSITION = WM_USER + 14446;
  WM_SPLASH_SET_RELEASE_NOTES = WM_USER + 14447;


//  CSPLASHCLASSNAME = 'TfrmSplash';
  CSPLASHCAPTION = 'Nayaga OMS Client';
var
  CSPLASHCLASSNAME: PWideChar;

procedure SetSplashClassName(const AWindowName: string);
procedure ChangeSplashLabelProgressCaption(const Text: string);
procedure ChangeSplashProgressBarPosition(const Position: integer);
procedure SetSplashProgressBarMaxPosition(const MaxPos: integer);
procedure SetSplashReleaseNotes(const Text: string);
function GetSplashWindowHandle: HWND;

implementation

function GetSplashWindowHandle: HWND;
begin
  Result := Windows.FindWindow(CSPLASHCLASSNAME, CSPLASHCAPTION);
end;

procedure SetSplashClassName(const AWindowName: string);
begin
  CSPLASHCLASSNAME := PWideChar(AWindowName);
end;

procedure ChangeSplashLabelProgressCaption(const Text: string);
var
  SplashWnd: HWND;
begin
  SplashWnd := Windows.FindWindow(CSPLASHCLASSNAME, CSPLASHCAPTION);

  if Windows.IsWindow(SplashWnd) then
  begin
    Windows.SendMessage(
        SplashWnd,
        WM_SPLASH_PROGRESS_CAPTION,
        0,
        Integer(PChar(Text))
        );
    Application.ProcessMessages;
  end;
end;


procedure ChangeSplashProgressBarPosition(const Position: integer);
var
  SplashWnd: HWND;
begin
  SplashWnd := Windows.FindWindow(CSPLASHCLASSNAME, CSPLASHCAPTION);

  if Windows.IsWindow(SplashWnd) then
  begin
    Windows.SendMessage(
        SplashWnd,
        WM_SPLASH_PROGRESS_POSITION,
        0,
        Position
        );
    Application.ProcessMessages;
  end;
end;

procedure SetSplashProgressBarMaxPosition(const MaxPos: integer);
var
  SplashWnd: HWND;
begin
  SplashWnd := Windows.FindWindow(CSPLASHCLASSNAME, CSPLASHCAPTION);

  if Windows.IsWindow(SplashWnd) then
  begin
    Windows.SendMessage(
        SplashWnd,
        WM_SPLASH_PROGRESS_MAX_POSITION,
        0,
        MaxPos
        );
    Application.ProcessMessages;
  end;
end;

procedure SetSplashReleaseNotes(const Text: string);
var
  SplashWnd: HWND;
begin
  SplashWnd := Windows.FindWindow(CSPLASHCLASSNAME, CSPLASHCAPTION);

  if Windows.IsWindow(SplashWnd) then
  begin
    Windows.SendMessage(
        SplashWnd,
        WM_SPLASH_SET_RELEASE_NOTES,
        0,
        Integer(PChar(Text))
        );
    Application.ProcessMessages;
  end;
end;


end.
