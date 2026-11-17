unit FormFixedAssetGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, cxMemo, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmFixedAssetGroup = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cbDeprecMethod: TcxDBImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cbDeprecTable: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure cbDeprecMethodExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFixedAssetGroup: TfrmFixedAssetGroup;

implementation

{$R *.dfm}

uses FormFixedAssetGroupList, DataGlobal;

procedure TfrmFixedAssetGroup.cbDeprecMethodExit(Sender: TObject);
begin
  inherited;
  cbDeprecTable.Enabled := cbDeprecMethod.DataBinding.Field.AsInteger = 6;
end;

procedure TfrmFixedAssetGroup.FormShow(Sender: TObject);
begin
  inherited;
  cbDeprecTable.Enabled := cbDeprecMethod.DataBinding.Field.AsInteger = 6;
end;

end.
