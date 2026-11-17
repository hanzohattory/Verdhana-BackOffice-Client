unit FormSetAllocToOneAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, cxClasses;

type
  TfrmSetAllocToOneAccount = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbAccID: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cbAccID2: TcxLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    procedure cbAccIDPropertiesEditValueChanged(Sender: TObject);
    procedure cbAccID2PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetAllocToOneAccount: TfrmSetAllocToOneAccount;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmSetAllocToOneAccount.cbAccID2PropertiesEditValueChanged(
  Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAllocAccount.Locate('ACCID', cbAccID2.EditValue, []) then
      cbAccID.EditValue := cdsLuAllocAccountACCID.AsInteger;
  end;
end;

procedure TfrmSetAllocToOneAccount.cbAccIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAllocAccount.Locate('ACCID', cbAccID.EditValue, []) then
      cbAccID2.EditValue := cdsLuAllocAccountACCID.AsInteger;
  end;
end;

end.
