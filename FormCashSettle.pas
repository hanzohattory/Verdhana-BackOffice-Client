unit FormCashSettle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, DataGlobal, FormCashSettleInstruction,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxMaskEdit,
  cxCalendar, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, Vcl.ExtCtrls, Vcl.DBCtrls, dxLayoutLookAndFeels;

type
  TfrmCashSettle = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashSettle: TfrmCashSettle;

implementation

{$R *.dfm}

end.
