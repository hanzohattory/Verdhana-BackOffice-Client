unit FormEmailConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMemo, cxRichEdit, cxDBRichEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Data.DB,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, DBClient, cxPCdxBarPopupMenu,
  cxPC, Vcl.ExtCtrls, Vcl.DBCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxLayoutLookAndFeels, cxClasses;

type
  TfrmEmailConfig = class(TfrmEditorData)
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmailConfig: TfrmEmailConfig;

implementation

{$R *.dfm}

uses FormEmailConfigList, DataGlobal;

procedure TfrmEmailConfig.btnOKClick(Sender: TObject);

begin
  dmGlobal.IntDataLookup.cdsLuContactUsage.Filtered := False;
  inherited;
end;

end.
