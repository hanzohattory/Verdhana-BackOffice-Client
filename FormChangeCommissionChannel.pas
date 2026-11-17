unit FormChangeCommissionChannel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxClasses, dxLayoutControl;

type
  TfrmChangeCommissionChannel = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    edChannel: TcxLookupComboBox;
    edCommType: TdxLayoutItem;
    btnOk: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    btnCancel: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    function ChangeCommission(ACommID: integer): integer;
  end;

var
  frmChangeCommissionChannel: TfrmChangeCommissionChannel;

implementation

uses DataGlobal;

{$R *.dfm}

{ TForm1 }

function TfrmChangeCommissionChannel.ChangeCommission(ACommID: integer): integer;
var
  oForm: TfrmChangeCommissionChannel;
begin
  Result := 0;
  try
    if not dmGlobal.IntDataLookup.cdsLuCommission.Active then
      dmGlobal.IntDataLookup.cdsLuCommission.Open;

    oForm  := TfrmChangeCommissionChannel.Create(nil);
    TfrmChangeCommissionChannel(oForm).edChannel.EditValue := ACommID;
    if oForm.ShowModal = mrOk then
      Result := oForm.edChannel.EditValue
    else
      Result := -1;
  finally
    FreeAndNil(oForm);
  end;
end;

end.
