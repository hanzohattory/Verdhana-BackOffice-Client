unit FormLoginDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxMaskEdit, dxLayoutControl, cxContainer, cxEdit,
  cxTextEdit, dxLayoutLookAndFeels, cxControls, dxGDIPlusClasses, ExtCtrls,
  cxGraphics, cxLookAndFeels, dxLayoutcxEditAdapters, cxLabel, Menus,
  Vcl.Buttons;

type
  TfrmLoginDialog = class(TForm)
    Panel3: TPanel;
    Image1: TImage;
    txtUserID: TcxTextEdit;
    txtPassword: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    procedure txtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure txtUserIDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginDialog: TfrmLoginDialog;

implementation

{$R *.dfm}

procedure TfrmLoginDialog.txtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnOK.Click;
  end;
end;

procedure TfrmLoginDialog.txtUserIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    txtPassword.SetFocus;
  end;
end;

end.
