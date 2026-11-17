unit FormProcessUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormSplashBase, Vcl.StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxLabel, cxProgressBar, SplashCommUtils;

type
  TfrmProcessUpdate = class(TfrmSplashBase)
    lblInfo: TcxLabel;
    pbProgress: TcxProgressBar;
    lblProgress: TcxLabel;
  private
    { Private declarations }
    procedure RecvLabelProgressCaption(var AMessage: TMessage); message WM_SPLASH_PROGRESS_CAPTION;
    procedure RecvProgressBarPosition(var AMessage: TMessage); message WM_SPLASH_PROGRESS_POSITION;
    procedure RecvProgressBarMaxPosition(var AMessage: TMessage); message WM_SPLASH_PROGRESS_MAX_POSITION;
    procedure RecvReleaseNotes(var AMessage: TMessage); message WM_SPLASH_SET_RELEASE_NOTES;
  public
    { Public declarations }
    CurrPos: integer;
    procedure WndProc(var AMsg: TMessage); override;
  end;

var
  frmProcessUpdate: TfrmProcessUpdate;

implementation

{$R *.dfm}

{ TfrmSplashBase1 }

procedure TfrmProcessUpdate.RecvLabelProgressCaption(var AMessage: TMessage);
var
  s: string;
begin
  s := String(PChar(AMessage.LParam));
  TThread.Synchronize(nil,
    procedure
    begin
      lblProgress.Caption := s;
    end
  );
end;

procedure TfrmProcessUpdate.RecvProgressBarMaxPosition(var AMessage: TMessage);
begin
  pbProgress.Position := 0;
  pbProgress.Properties.Max := AMessage.LParam;
end;

procedure TfrmProcessUpdate.RecvProgressBarPosition(var AMessage: TMessage);
begin
  CurrPos := CurrPos + AMessage.LParam;
  TThread.Synchronize(nil,
    procedure
    begin
      pbProgress.Position := CurrPos;
    end
  );
  inherited;
end;

procedure TfrmProcessUpdate.RecvReleaseNotes(var AMessage: TMessage);
var
  s: string;
begin
  s := String(PChar(AMessage.LParam));
  TThread.Synchronize(nil,
    procedure
    begin
      lblVersion.Caption := Format('Version %s', [s]);
    end
  );
end;


procedure TfrmProcessUpdate.WndProc(var AMsg: TMessage);
begin
  inherited WndProc(AMsg);
end;

end.
