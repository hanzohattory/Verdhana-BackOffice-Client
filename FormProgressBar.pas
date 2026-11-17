unit FormProgressBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxProgressBar, dxLayoutControl,
  cxClasses;

type
  TfrmProgressBar = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    barProses: TcxProgressBar;
    pbProses: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ChangeBar(newPos: Integer; newCaption: String);
    procedure ChangeBarPos(newPos: Integer);
    procedure ChangeBarCaption(newCaption: String);
  end;

var
  frmProgressBar: TfrmProgressBar;

implementation

uses FormMain;

{$R *.dfm}

procedure TfrmProgressBar.ChangeBarCaption(newCaption: String);
begin
  pbProses.CaptionOptions.Text := newCaption;
  Application.ProcessMessages;
end;

procedure TfrmProgressBar.ChangeBar(newPos: Integer; newCaption: String);
begin
  barProses.Position := newPos;
  pbProses.CaptionOptions.Text := newCaption;
  Application.ProcessMessages;
end;

procedure TfrmProgressBar.ChangeBarPos(newPos: Integer);
begin
  barProses.Position := newPos;
  Application.ProcessMessages;
end;

procedure TfrmProgressBar.FormCreate(Sender: TObject);
begin
  frmMain.Enabled := False;
end;

procedure TfrmProgressBar.FormDestroy(Sender: TObject);
begin
  frmMain.Enabled := True;
end;

end.
