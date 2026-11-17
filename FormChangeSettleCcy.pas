unit FormChangeSettleCcy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCurrencyEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxImageComboBox,
  cxClasses;

type
  TfrmChangeSettleCcy = class(TForm)
    lcBottom: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    lcBottomItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cbCcy: TcxLookupComboBox;
    lcMainItem1: TdxLayoutItem;
    edCcyRate: TcxCurrencyEdit;
    lcMainItem2: TdxLayoutItem;
    lcMainGroup1: TdxLayoutGroup;
    cbRateMode: TcxImageComboBox;
    lcMainItem4: TdxLayoutItem;
    procedure edCcyRateEditing(Sender: TObject; var CanEdit: Boolean);
    procedure cbCcyPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FFromCcy: String;
  public
    { Public declarations }
    function ChangeSettlementCurrency(AFromCurrency: String; var ACurrency, ARateMode: String; var ARate: Double): TModalResult;
  end;

var
  frmChangeSettleCcy: TfrmChangeSettleCcy;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmChangeSettleCcy }

procedure TfrmChangeSettleCcy.cbCcyPropertiesEditValueChanged(Sender: TObject);
var
  sCcy: String;
  fValue, fInverseValue: Double;
begin
  sCcy := VarToStr(cbCcy.EditValue);
  if (sCcy = FFromCcy) then
  begin
    edCcyRate.Value := 1;
  end
  else
  begin
    fValue := 1;
    fInverseValue := 1;
    dmGlobal.RemoteServer.GetCurrentCcyRate(sCcy, FFromCcy, fValue, fInverseValue);

    if VarToStrDef(cbRateMode.EditValue, '/') = '/' then
      edCcyRate.Value := fValue
    else
      edCcyRate.Value := fInverseValue;
  end;
end;

function TfrmChangeSettleCcy.ChangeSettlementCurrency(AFromCurrency: String; var ACurrency, ARateMode: String;
  var ARate: Double): TModalResult;
begin
  Result := mrNone;
  frmChangeSettleCcy := TfrmChangeSettleCcy.Create(Nil);
  Try
    with frmChangeSettleCcy do
    begin
      FFromCcy := AFromCurrency;
      cbCcy.EditValue := ACurrency;
      cbRateMode.EditValue := ARateMode;
      edCcyRate.Value := ARate;

      if ShowModal = mrOk then
      begin
        ACurrency := VarToStrDef(cbCcy.EditValue, ACurrency);
        ARateMode := VarToStrDef(cbRateMode.EditValue, ARateMode);
        ARate := StrToFloatDef(VarToStr(edCcyRate.EditValue), ARate);

        Result := mrOK
      end;
    end;
  Finally
    FreeAndNil(frmChangeSettleCcy);
  End;
end;

procedure TfrmChangeSettleCcy.edCcyRateEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  CanEdit := FFromCcy <> VarToStr(cbCcy.EditValue);
end;

end.
