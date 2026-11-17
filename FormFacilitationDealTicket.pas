unit FormFacilitationDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxTextEdit,
  cxCurrencyEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxImageComboBox,
  Data.DB, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmFacilitationDealTicket = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    edFacPrice: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    edDealQty: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    dsSubject: TDataSource;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    edFacQty: TcxCurrencyEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    procedure btnOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFacilitationDealTicket: TfrmFacilitationDealTicket;

implementation

{$R *.dfm}

uses FormDealTickets, DataGlobal;

procedure TfrmFacilitationDealTicket.btnOKClick(Sender: TObject);
begin
  if edFacQty.EditValue < edDealQty.EditValue then
  begin
    MessageDlg('Facilitation Quantity Must Same Or More Than Deal Quantity!', mtError, [mbOK], 0);
    Abort;
  end;

  if edFacPrice.EditValue <= 0 then
  begin
    MessageDlg('Facilitation Price Must More Than 0!', mtError, [mbOK], 0);
    Abort;
  end;

  ModalResult := mrOK;
end;

procedure TfrmFacilitationDealTicket.FormActivate(Sender: TObject);
begin
  edFacPrice.SetFocus;
end;

end.
