unit FormDealTicketAllocation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxLabel, cxDBLabel, Data.DB,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  cxGrid, Vcl.StdCtrls, cxButtons, cxDBLookupComboBox, cxTextEdit,
  cxGridDBTableView, cxCheckBox;

type
  TfrmDealTicketAllocation = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsDealTiket: TDataSource;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    txtAccount: TcxLabel;
    dxLayoutControl1Item8: TdxLayoutItem;
    txtStock: TcxLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    txtBuySell: TcxLabel;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel7: TcxDBLabel;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBLabel8: TcxDBLabel;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Item1: TdxLayoutItem;
    btnOK: TcxButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    btnCancel: TcxButton;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dsAllocation: TDataSource;
    grdDealTicketAlloc: TcxGrid;
    gvwDealTicketAlloc: TcxGridDBTableView;
    gvwDealTicketAllocACCID: TcxGridDBColumn;
    gvwDealTicketAllocACCNAME: TcxGridDBColumn;
    gvwDealTicketAllocAQTY: TcxGridDBColumn;
    gvwDealTicketAllocAPRICE: TcxGridDBColumn;
    gvwDealTicketAllocAVALUE: TcxGridDBColumn;
    gvwDealTicketAllocADIFFVALUE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gvwDealTicketAllocCHKSELECTED: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDealTicketAllocation: TfrmDealTicketAllocation;

implementation

{$R *.dfm}

uses FormDealTickets, DataGlobal;

end.
