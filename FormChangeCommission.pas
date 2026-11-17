unit FormChangeCommission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxClasses, cxCurrencyEdit;

type
  TfrmChangeCommission = class(TForm)
    LayoutControlFooter: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    LayoutControlFooterItem2: TdxLayoutItem;
    LayoutControl: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    edComm: TcxTextEdit;
    lcComm: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    function ChangeCommission(ACurrentComm: Double): Double;
  end;

var
  frmChangeCommission: TfrmChangeCommission;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmChangeCommission }

function TfrmChangeCommission.ChangeCommission(ACurrentComm: Double): Double;
var
  oForm: TfrmChangeCommission;
begin
  Result := ACurrentComm;

  oForm := TfrmChangeCommission.Create(nil);
  Try
    oForm.edComm.EditValue := ACurrentComm;

    if oForm.ShowModal = mrOK then
    begin
      Result := StrToFloatDef(oForm.edComm.EditValue, ACurrentComm);
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
