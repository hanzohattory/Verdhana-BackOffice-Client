unit FormLuAccounts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, dxLayoutContainer, dxLayoutControl;

type
  TfrmLuAccounts = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    glvLuAccount: TcxGridLevel;
    grdLuAccount: TcxGrid;
    gvwLuAccount: TcxGridDBBandedTableView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLuAccounts: TfrmLuAccounts;

implementation

{$R *.dfm}

end.
