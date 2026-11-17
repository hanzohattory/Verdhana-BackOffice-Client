unit FormModifyEntitlement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxClasses;

type
  TfrmModifyEntitlement = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnOk: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    edTaxRate: TcxDBCurrencyEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    txtTax: TcxCurrencyEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    txtTaxAmount: TcxCurrencyEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    procedure txtTaxExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModifyEntitlement: TfrmModifyEntitlement;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactEntitlement;

procedure TfrmModifyEntitlement.btnOkClick(Sender: TObject);
begin
  if MessageDlg('Change data entitlement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ModalResult := mrOk
  else
    ModalResult := mrNone;
end;

procedure TfrmModifyEntitlement.txtTaxExit(Sender: TObject);
begin
  txtTaxAmount.EditValue := cxDBCurrencyEdit2.EditValue * txtTax.EditValue / 100;
  edTaxRate.DataBinding.Field.AsFloat := txtTax.EditValue / 100;
end;

end.
