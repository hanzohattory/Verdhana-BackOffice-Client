unit FormDHKs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmDHKs = class(TfrmEditor)
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    LayoutControlItem4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    LayoutControlItem5: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    LayoutControlItem7: TdxLayoutItem;
    txtValue: TcxDBTextEdit;
    LayoutControlItem8: TdxLayoutItem;
    cmbCBestAcc01: TcxLookupComboBox;
    LayoutControlItem6: TdxLayoutItem;
    cmbCBestAcc04: TcxLookupComboBox;
    LayoutControlItem9: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
  private
    FCashStock: string;
    { Private declarations }
  public
    { Public declarations }
    property CashStock: string read FCashStock write FCashStock;
  end;

var
  frmDHKs: TfrmDHKs;

implementation

{$R *.dfm}

uses FormDHK, DataGlobal, DataLookup;

procedure TfrmDHKs.FormShow(Sender: TObject);
begin
  inherited;
  if FCashStock = 'Cash' then
    txtValue.DataBinding.DataField := 'VALUE'
  else
    txtValue.DataBinding.DataField := 'QTY';
end;

end.
