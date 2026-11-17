unit FormChangeNetAmount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxClasses, cxCurrencyEdit;

type
  TfrmChangeNetAmount = class(TForm)
    LayoutControlFooter: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    LayoutControlFooterItem2: TdxLayoutItem;
    LayoutControl: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    edComms: TcxCurrencyEdit;
    lcCommission: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    function ChangeNetProc(ACurrentNetProc: Double): Double;
  end;

var
  frmChangeNetAmount: TfrmChangeNetAmount;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmChangeCommission }

function TfrmChangeNetAmount.ChangeNetProc(ACurrentNetProc: Double): Double;
var
  oForm: TfrmChangeNetAmount;
begin
  Result := ACurrentNetProc;

  oForm := TfrmChangeNetAmount.Create(nil);
  Try
    oForm.edComms.EditValue := ACurrentNetProc;

    if oForm.ShowModal = mrOK then
    begin
      Result := StrToFloatDef(oForm.edComms.EditValue, ACurrentNetProc);
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
