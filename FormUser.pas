unit FormUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, DB, dxLayoutControl, dxLayoutContainer,
  cxTextEdit,
  cxDBEdit, StdCtrls, cxButtons, ExtCtrls, cxClasses, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox;

type
  TfrmUser = class(TForm)
    pnlNav: TPanel;
    btnOk: TcxButton;
    btnCancel: TcxButton;
    layMain: TdxLayoutControl;
    txtUserId: TcxDBTextEdit;
    txtUserName: TcxDBTextEdit;
    laygMain: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    layMainItem2: TdxLayoutItem;
    dsUser: TDataSource;
    txtPwd: TcxTextEdit;
    layMainItem3: TdxLayoutItem;
    edStatus: TcxImageComboBox;
    dxLayoutItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}

end.
