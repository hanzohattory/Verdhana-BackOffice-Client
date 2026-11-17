unit FormAccCustodyNo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxImageComboBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmAccCustodyNo = class(TfrmEditorData)
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccCustodyNo: TfrmAccCustodyNo;

implementation

{$R *.dfm}

uses FormAccountCustody, DataGlobal;

end.
