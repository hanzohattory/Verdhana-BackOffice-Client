unit FormSplitDealtcketByQty;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus,
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxClasses,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit;

type
  TfrmSplitDealticketByQty = class(TfrmEditor)
    edAccCode: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edAccName: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edStockCode: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edStockName: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edDealCode: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edBS: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edPrice: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edQty: TcxCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    gvwQty: TcxGridDBTableView;
    glvQty: TcxGridLevel;
    grdQty: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    edTransDate: TcxTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    gvwQtyQty: TcxGridDBColumn;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplitDealticketByQty: TfrmSplitDealticketByQty;

implementation

{$R *.dfm}

uses FormOmgeoMonitor;

procedure TfrmSplitDealticketByQty.btnOKClick(Sender: TObject);
var
  oDataSet: TDataSet;
  cSummary: Double;
begin
//  inherited;
  ModalResult := mrNone;
  cSummary    := gvwQty.DataController.Summary.FooterSummaryValues[0];

  if edQty.EditValue > cSummary then
    MessageDlg('Quantity Split is less than Deal Quantity', TMsgDlgType.mtError, [mbOk], 0)
  else if edQty.EditValue < cSummary then
    MessageDlg('Deal Quantity is less than Split Quantity', TMsgDlgType.mtError, [mbOk], 0)
  else
    ModalResult := mrOk;
end;

end.
