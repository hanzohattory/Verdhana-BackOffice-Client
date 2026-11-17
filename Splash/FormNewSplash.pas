unit FormNewSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, Vcl.ExtCtrls, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.StdCtrls, cxProgressBar,
  SplashCommUtils, cxLabel, JvExControls, JvGradient, FormSplashBase, dxSkinBasic,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TfrmNewSplash = class(TfrmSplashBase)
    pbProgress: TcxProgressBar;
    lblProgress: TLabel;
    pnlRight: TPanel;
    lblReleaseNotes: TcxLabel;
    pnlBottom: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
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
  frmNewSplash: TfrmNewSplash;

implementation


{$R *.dfm}

procedure TfrmNewSplash.FormCreate(Sender: TObject);
begin
  inherited;
  {Set Position Default}
  pnlRight.Visible := False;
//  imgCompany.Left := (Self.Width div 2) - (imgCompany.Width div 2);
  lblVersion.Left := (pnlBottom.Width) - (lblVersion.Width) - 10;

  {Set Gradient Color}
//  with dmSkinManager do
//  begin
//    if SkinController.SkinName = SKIN_DARK then
//    begin
//      pnlGradient.StartColor := $444444;
//      pnlGradient.EndColor := $333333;
//    end
//    else
//    begin
//      pnlGradient.StartColor := $F2F2F2;
//      pnlGradient.EndColor := $FFFFFF;
//    end;
//  end
end;

procedure TfrmNewSplash.RecvLabelProgressCaption(var AMessage: TMessage);
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

procedure TfrmNewSplash.RecvProgressBarMaxPosition(var AMessage: TMessage);
begin
  pbProgress.Position := 0;
  pbProgress.Properties.Max := AMessage.LParam;
end;

procedure TfrmNewSplash.RecvProgressBarPosition(var AMessage: TMessage);
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

procedure TfrmNewSplash.RecvReleaseNotes(var AMessage: TMessage);
var
  s: string;
begin
  s := String(PChar(AMessage.LParam));
  TThread.Synchronize(nil,
    procedure
    begin
//      imgCompany.Left := 112;
      lblVersion.Left := (pnlBottom.Width) - (lblVersion.Width) - 10;
      pnlRight.Visible := True;
      lblReleaseNotes.Caption := Format('New Version %s', [s]);
    end
  );
end;

procedure TfrmNewSplash.WndProc(var AMsg: TMessage);
begin
  inherited WndProc(AMsg);
end;

end.
