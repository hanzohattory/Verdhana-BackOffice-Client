unit FormGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, Menus, StdCtrls, cxButtons,
  ExtCtrls, dxLayoutControl, cxTextEdit, cxDBEdit, DB;

type
  TfrmGroup = class(TForm)
    layMain: TdxLayoutControl;
    txtGroupId: TcxDBTextEdit;
    txtGroupDescription: TcxDBTextEdit;
    laygMain: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    layMainItem2: TdxLayoutItem;
    pnlNav: TPanel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    dsGroups: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGroup: TfrmGroup;

implementation

{$R *.dfm}

end.
