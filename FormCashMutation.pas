unit FormCashMutation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, dxLayoutControl, Data.DB, cxGroupBox, cxRadioGroup, cxClasses;

type
  TfrmCashMutation = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    cxDBDateEdit1: TcxDBDateEdit;
    cbAccount: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dbNav: TDBNavigator;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    lcNav: TdxLayoutItem;
    StatusBar: TdxStatusBar;
    cxDBRadioGroup2: TcxDBRadioGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashMutation: TfrmCashMutation;

implementation

{$R *.dfm}

uses DataGlobal, FormBankRecons;

end.
