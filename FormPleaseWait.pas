unit FormPleaseWait;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel;

type
  TfrmPlaseWait = class(TForm)
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlaseWait: TfrmPlaseWait;

implementation

uses FormMain;

{$R *.dfm}

procedure TfrmPlaseWait.FormCreate(Sender: TObject);
begin
  frmMain.Enabled := False;
end;

procedure TfrmPlaseWait.FormDestroy(Sender: TObject);
begin
  frmMain.Enabled := True;
end;

end.
