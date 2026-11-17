unit FormSplitAllocDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters, Vcl.Menus,
  cxGridDBTableView, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox,
  cxDBEdit, cxImageComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, dxLayoutControl, Vcl.ExtCtrls;

type
  TfrmSplitAllocDealTicket = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    grdSplitDealTicket: TcxGrid;
    gvwSplitDetail: TcxGridDBBandedTableView;
    grdSplitDealTicketLevel1: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dsSplitDetailAlloc: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dsDealTicketAlloc: TDataSource;
    dxLayoutControl1Item1: TdxLayoutItem;
    grdDealTicketAlloc: TcxGrid;
    gvwDealTicketAlloc: TcxGridDBTableView;
    gvwDealTicketAllocACCID: TcxGridDBColumn;
    gvwDealTicketAllocACCNAME: TcxGridDBColumn;
    gvwDealTicketAllocAQTY: TcxGridDBColumn;
    gvwDealTicketAllocAPRICE: TcxGridDBColumn;
    gvwDealTicketAllocAVALUE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutControl1Item20: TdxLayoutItem;
    btnAdd: TButton;
    btnRemove: TButton;
    gvwSplitDetailACCNO: TcxGridDBBandedColumn;
    gvwSplitDetailACCNAME: TcxGridDBBandedColumn;
    gvwSplitDetailAQTY: TcxGridDBBandedColumn;
    gvwSplitDetailAPRICE: TcxGridDBBandedColumn;
    gvwSplitDetailAVALUE: TcxGridDBBandedColumn;
    gvwSplitDetailDUESTOCK: TcxGridDBBandedColumn;
    gvwSplitDetailDUECASH: TcxGridDBBandedColumn;
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplitAllocDealTicket: TfrmSplitAllocDealTicket;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTickets;

procedure TfrmSplitAllocDealTicket.btnAddClick(Sender: TObject);
var
  dtSource, dtTarget: TDataSet;
  i: Integer;
  oField: TField;
begin
  dtSource := dsDealTicketAlloc.DataSet;
  dtTarget := dsSplitDetailAlloc.DataSet;

  if not dtSource.IsEmpty then
  begin
    dtTarget.Append;
    for i := 0 to dtSource.FieldCount - 1 do
    begin
      oField := dtTarget.FindField(dtSource.Fields[i].FieldName);
      if (oField <> Nil) and (oField.FieldKind = fkData) then
        oField.Value := dtSource.Fields[i].Value;
    end;
    dtTarget.Post;

    dtSource.Delete;
  end;

end;

procedure TfrmSplitAllocDealTicket.btnRemoveClick(Sender: TObject);
var
  dtSource, dtTarget: TDataSet;
  i: Integer;
  oField: TField;
begin
  dtSource := dsSplitDetailAlloc.DataSet;
  dtTarget := dsDealTicketAlloc.DataSet;

  if not dtSource.IsEmpty then
  begin
    dtTarget.Append;
    dtTarget.FieldByName('ACCID').AsInteger := dtSource.FieldByName('ACCID').AsInteger;
    dtTarget.FieldByName('AQTY').AsInteger := dtSource.FieldByName('AQTY').AsInteger;
    dtTarget.FieldByName('APRICE').AsFloat := dtSource.FieldByName('APRICE').AsFloat;
    dtTarget.Post;

    dtSource.Delete;
  end;
end;

end.
