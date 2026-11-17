unit FormChangeCalcCommission;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxTextEdit, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxClasses;

type
  TfrmChangeCalcCommission = class(TForm)
    LayoutControlFooter: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    LayoutControlFooterItem2: TdxLayoutItem;
    LayoutControl: TdxLayoutControl;
    edComm: TcxTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cmbCommission: TcxImageComboBox;
    LayoutControlItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    function ChangeCommission(ACalcComm: string; ACurrentComm: Double): string;
  end;

var
  frmChangeCalcCommission: TfrmChangeCalcCommission;

implementation

{$R *.dfm}

{ TfrmChangeCalcCommission }

function TfrmChangeCalcCommission.ChangeCommission(ACalcComm: string;
  ACurrentComm: Double): string;
var
  oForm: TfrmChangeCalcCommission;
  sCaclCom: string;
  dCommission: double;
begin
  Result := ACalcComm +'|'+ FloatToStr(ACurrentComm);

  oForm := TfrmChangeCalcCommission.Create(nil);
  try
    oForm.cmbCommission.EditValue := ACalcComm;
    oForm.edComm.EditValue        := ACurrentComm;

    if oForm.ShowModal = mrOK then
    begin
      sCaclCom    := oForm.cmbCommission.EditValue;
      dCommission := oForm.edComm.EditValue;

      Result := sCaclCom +'|'+ FloatToStr(dCommission);
    end;
  finally
    FreeAndNil(oForm);
  end;
end;

end.
