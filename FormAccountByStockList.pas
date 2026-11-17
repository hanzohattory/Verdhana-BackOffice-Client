unit FormAccountByStockList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Datasnap.DBClient, NClientDataset,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid;

type
  TfrmAccountByStockList = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwTOTradeTmp: TcxGridDBBandedTableView;
    dsTenderOfferTradeTmp: TDataSource;
    gvwTOTradeTmpTRANSDATE: TcxGridDBBandedColumn;
    gvwTOTradeTmpIS_EXTEND: TcxGridDBBandedColumn;
    gvwTOTradeTmpACCID: TcxGridDBBandedColumn;
    gvwTOTradeTmpACCNO: TcxGridDBBandedColumn;
    gvwTOTradeTmpQTY: TcxGridDBBandedColumn;
    gvwTOTradeTmpVALUE: TcxGridDBBandedColumn;
    gvwTOTradeTmpSelected: TcxGridDBBandedColumn;
    gvwTOTradeTmpACCNAME: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    function Run: TModalResult;
  end;

var
  frmAccountByStockList: TfrmAccountByStockList;

implementation

{$R *.dfm}

uses DataGlobal, FormTenderOfferTrade;

{ TfrmAccountByStockList }

function TfrmAccountByStockList.Run: TModalResult;
var
  oForm: TfrmAccountByStockList;
begin
  Result     := mrCancel;

  oForm := TfrmAccountByStockList.Create(nil);
  try
    if oForm.ShowModal = mrOk then
      Result := mrOk;

  finally
    FreeAndNil(oForm);
  end;
end;

end.
