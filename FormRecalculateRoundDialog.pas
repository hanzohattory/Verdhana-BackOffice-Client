unit FormRecalculateRoundDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl;

type
  TfrmRecalculateRoundDialog = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    Ok: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    Cancel: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    edNewRound: TcxCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecalculateRoundDialog: TfrmRecalculateRoundDialog;

implementation

{$R *.dfm}

end.
