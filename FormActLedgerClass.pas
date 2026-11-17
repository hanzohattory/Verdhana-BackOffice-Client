unit FormActLedgerClass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxTextEdit,
  cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmActLedgerClass = class(TfrmEditorData)
    grdActLedgerClassDet: TcxGrid;
    gvwActLedgerClassDet: TcxGridDBTableView;
    grdActLedgerClassDetLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsActLedgerClassDet: TDataSource;
    gvwActLedgerClassDetALTYPE: TcxGridDBColumn;
    gvwActLedgerClassDetCASH_STOCK: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActLedgerClass: TfrmActLedgerClass;

implementation

{$R *.dfm}

uses DataGlobal, FormActLedgerClassList;

end.
