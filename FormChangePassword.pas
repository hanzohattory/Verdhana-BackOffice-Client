unit FormChangePassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxClasses,
  dxLayoutControl, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmChangePassword = class(TForm)
    Panel1: TPanel;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    Panel2: TPanel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edOldPwd: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edNewPwd: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edConfirm: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangePassword: TfrmChangePassword;

implementation

{$R *.dfm}

procedure TfrmChangePassword.btnOKClick(Sender: TObject);
begin
  ModalResult := mrNone;
  if edNewPwd.Text = edConfirm.Text then
    ModalResult := mrOk
  else
    ShowMessage('Invalid New Password');
end;

end.
