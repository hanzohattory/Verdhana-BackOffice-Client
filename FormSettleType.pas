unit FormSettleType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, dxLayoutContainer, cxClasses, Vcl.StdCtrls,
  cxButtons, dxLayoutControl;

type
  TfrmSettleType = class(TForm)
    LayoutControlFooter: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    LayoutControlFooterItem2: TdxLayoutItem;
    LayoutControl: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    cmbSettleType: TcxImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    function ChagetSettleType(var ASettleType: string): TModalResult;
  end;

var
  frmSettleType: TfrmSettleType;

implementation

{$R *.dfm}

{ TfrmSettleType }

function TfrmSettleType.ChagetSettleType(var ASettleType: string): TModalResult;
begin
  Result := mrNone;
  frmSettleType := TfrmSettleType.Create(Nil);
  Try
    with frmSettleType do
    begin
      cmbSettleType.EditValue := ASettleType;

      if ShowModal = mrOk then
      begin
        ASettleType := cmbSettleType.EditValue;

        Result := mrOK
      end;
    end;
  Finally
    FreeAndNil(frmSettleType);
  End;
end;

end.
