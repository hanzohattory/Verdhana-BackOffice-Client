unit FormIPOAllotmentCustody;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxCheckBox;

type
  TfrmIPOAllotmentCustody = class(TfrmEditor)
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    LayoutControlItem4: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIPOAllotmentCustody: TfrmIPOAllotmentCustody;

implementation

{$R *.dfm}

uses FormIPOAllotments;

end.
