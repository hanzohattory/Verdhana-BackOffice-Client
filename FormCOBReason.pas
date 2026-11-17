unit FormCOBReason;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMemo, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmCOBReason = class(TfrmEditor)
    mmReason: TcxMemo;
    LayoutControlItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCOBReason: TfrmCOBReason;

implementation

{$R *.dfm}

end.
