unit FormEditAqcPrice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  cxCurrencyEdit, cxDBEdit, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, Data.DB, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmEditAqcPrice = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    dsAqcBondHis: TDataSource;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditAqcPrice: TfrmEditAqcPrice;

implementation

{$R *.dfm}

uses FormBondsMultiDealTicket;

end.
