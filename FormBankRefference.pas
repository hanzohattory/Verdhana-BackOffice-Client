unit FormBankRefference;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, dxLayoutControl;

type
  TfrmBankRefference = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtRefference: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBankRefference: TfrmBankRefference;

implementation

{$R *.dfm}

procedure TfrmBankRefference.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ModalResult := mrOk;
end;

end.
