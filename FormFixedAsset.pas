unit FormFixedAsset;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxImageComboBox, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxLabel,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmFixedAsset = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cbDeprecMethod: TcxDBImageComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    cbDeprecTable: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure cbDeprecMethodExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFixedAsset: TfrmFixedAsset;

implementation

{$R *.dfm}

uses FormFixedAssetList, DataGlobal;

procedure TfrmFixedAsset.cbDeprecMethodExit(Sender: TObject);
begin
  inherited;
  cbDeprecTable.Enabled := cbDeprecMethod.DataBinding.Field.AsInteger = 6;
  if cbDeprecMethod.DataBinding.Field.AsInteger <> 6 then
    cbDeprecTable.DataBinding.Field.Clear;
end;

procedure TfrmFixedAsset.FormShow(Sender: TObject);
begin
  inherited;
  cbDeprecTable.Enabled := cbDeprecMethod.DataBinding.Field.AsInteger = 6;
end;

end.
