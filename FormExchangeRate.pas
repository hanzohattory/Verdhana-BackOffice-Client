unit FormExchangeRate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutLookAndFeels, Vcl.ExtCtrls,
  Vcl.DBCtrls, cxClasses;

type
  TfrmExchangeRate = class(TfrmEditorData)
    cbCurrencyFrom: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edRate: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExchangeRate: TfrmExchangeRate;

implementation

{$R *.dfm}

uses FormExchangeRates, DataGlobal;

procedure TfrmExchangeRate.btnOKClick(Sender: TObject);
begin
  if edRate.DataBinding.Field.AsFloat <= 0 then
  begin
    dmGlobal.ErrorMessage('Rate value must be > 0!');
    edRate.SetFocus;
    Abort;
  end;

  inherited;
end;

end.
