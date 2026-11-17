unit FormSplashBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.StrUtils, Vcl.Imaging.pngimage, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxImage;

type
  TfrmSplashBase = class(TForm)
    lblVersion: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplashBase: TfrmSplashBase;

implementation

uses
  App.Global.Info;


{$R *.dfm}

procedure TfrmSplashBase.FormCreate(Sender: TObject);
begin
  lblVersion.Caption := 'Version ' + AppGlobalInfo.AppVersion;
end;

end.
