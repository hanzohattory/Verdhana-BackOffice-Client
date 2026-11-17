unit FormAccBankRelatedAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl;

type
  TfrmAccBankRelatedAccount = class(TfrmEditorData)
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwBank: TcxGridDBTableView;
    gvwBankBNCODE: TcxGridDBColumn;
    gvwBankBANKACCNO: TcxGridDBColumn;
    gvwBankBANKACCNAME: TcxGridDBColumn;
    gvwBankBANKBRANCH: TcxGridDBColumn;
    gvwBankCCYCODE: TcxGridDBColumn;
    gvwBankISRDN: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccBankRelatedAccount: TfrmAccBankRelatedAccount;

implementation

{$R *.dfm}

uses FormAccountBank;

end.
