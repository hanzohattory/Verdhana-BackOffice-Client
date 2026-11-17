unit FormProcessWait;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxActivityIndicator, Vcl.WinXCtrls, cxContainer,
  cxEdit, cxLabel, Vcl.ExtCtrls;

type
  TfrmProcessWait = class(TForm)
    lblInfo: TcxLabel;
    lblProcess: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChangeProcessCaption(newCaption: string);
  end;

var
  frmProcessWait: TfrmProcessWait;

implementation

{$R *.dfm}

uses FormMain;

procedure TfrmProcessWait.ChangeProcessCaption(newCaption: string);
begin
  lblProcess.Caption := newCaption;
  lblProcess.Visible := True;
  Application.ProcessMessages;
end;

procedure TfrmProcessWait.FormCreate(Sender: TObject);
begin
  if Assigned(frmMain) then
    frmMain.Enabled := False;
end;

procedure TfrmProcessWait.FormDestroy(Sender: TObject);
begin
  if Assigned(frmMain) then
    frmMain.Enabled := True;
end;

end.
