unit FormEditAmountOmgeoContract;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGrid;

type
  TfrmEditAmountOmgeoContract = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    edDate: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edDealID: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edAccNo: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edAccName: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edStockCode: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edStockName: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    edBS: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    edPrice: TcxCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edQty: TcxCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem13: TdxLayoutItem;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Description: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LastValue: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NewValue: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditAmountOmgeoContract: TfrmEditAmountOmgeoContract;

implementation

{$R *.dfm}

uses FormOmgeoMonitor;

end.
