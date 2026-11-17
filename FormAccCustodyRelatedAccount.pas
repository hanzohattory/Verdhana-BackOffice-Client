unit FormAccCustodyRelatedAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmAccCustodyRelatedAccount = class(TfrmEditorData)
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwCustody: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    gvwCustodyACCCUSTODYID: TcxGridDBColumn;
    gvwCustodyACCID: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH: TcxGridDBColumn;
    gvwCustodyCUSTODYTYPE: TcxGridDBColumn;
    gvwCustodyACTLED_SEQID: TcxGridDBColumn;
    gvwCustodyCBEST_ACCBANKID: TcxGridDBColumn;
    gvwCustodyCUSTODY_DEFAULT: TcxGridDBColumn;
    gvwCustodySTAT: TcxGridDBColumn;
    gvwCustodyMODDA: TcxGridDBColumn;
    gvwCustodyMODUI: TcxGridDBColumn;
    gvwCustodyAPPDA: TcxGridDBColumn;
    gvwCustodyAPPUI: TcxGridDBColumn;
    gvwCustodyUNDER4Y: TcxGridDBColumn;
    gvwCustodyUNDER4YDA: TcxGridDBColumn;
    gvwCustodyNOTES4Y: TcxGridDBColumn;
    gvwCustodyISDEL: TcxGridDBColumn;
    gvwCustodyID: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccCustodyRelatedAccount: TfrmAccCustodyRelatedAccount;

implementation

{$R *.dfm}

uses FormAccountCustody, DataGlobal;

end.
