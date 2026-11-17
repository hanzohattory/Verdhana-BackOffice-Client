unit FormSOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxRadioGroup,
  cxDBEdit, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  cxCalendar, cxCheckBox, cxImageComboBox, Datasnap.DBClient,
  NClientDataset;

type
  TfrmSOP = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    dsLuBrokerBank: TDataSource;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSOP: TfrmSOP;

implementation

{$R *.dfm}

uses DataGlobal, FormSOPList;

end.
