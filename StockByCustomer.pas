unit StockByCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxDBEdit, cxDropDownEdit, cxCalendar, Datasnap.DBClient,
  NClientDataset;

type
  TfrmEditor1 = class(TfrmEditor)
    cdsCutomer: TNClientDataset;
    cdsDetailedStock: TNClientDataset;
    cxDBDateEdit1: TcxDBDateEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup2: TdxLayoutGroup;
    cdsCutomerENTRYDATE: TDateField;
    cdsCutomerTRANSDATE: TDateField;
    cdsCutomerSETTLEDATE: TDateField;
    cdsCutomerACCID: TLargeintField;
    cdsCutomerACCCODE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditor1: TfrmEditor1;

implementation

{$R *.dfm}

end.
