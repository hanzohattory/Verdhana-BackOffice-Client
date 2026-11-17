unit FormSOPAccBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid,
  dxLayoutContainer, cxTextEdit, dxLayoutControl, Datasnap.DBClient,
  NClientDataset, cxCheckBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls;

type
  TfrmSOPAccBank = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtNIK: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtAccCode: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    txtAccName: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwSOPAccBank: TcxGridDBBandedTableView;
    dsAccSOPBank: TDataSource;
    gvwSOPAccBankACCSOPID: TcxGridDBBandedColumn;
    gvwSOPAccBankMSOP_BANKID: TcxGridDBBandedColumn;
    gvwSOPAccBankACCBANKCODE: TcxGridDBBandedColumn;
    gvwSOPAccBankBNCODE: TcxGridDBBandedColumn;
    gvwSOPAccBankBANKACCNO: TcxGridDBBandedColumn;
    gvwSOPAccBankBANKACCNAME: TcxGridDBBandedColumn;
    gvwSOPAccBankBANKBRANCH: TcxGridDBBandedColumn;
    gvwSOPAccBankREMARKS: TcxGridDBBandedColumn;
    gvwSOPAccBankASDEFAULT: TcxGridDBBandedColumn;
    Panel1: TPanel;
    Ok: TcxButton;
    Cancel: TcxButton;
    procedure OkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSOPAccBank: TfrmSOPAccBank;

implementation

{$R *.dfm}

uses DataGlobal, FormSOPMember;

procedure TfrmSOPAccBank.OkClick(Sender: TObject);
var
  iDataCount: Integer;
begin
  dsAccSOPBank.DataSet.DisableControls;

  dsAccSOPBank.DataSet.Filter   := 'ASDEFAULT = '+QuotedStr('1');
  dsAccSOPBank.DataSet.Filtered := True;

  iDataCount := dsAccSOPBank.DataSet.RecordCount;
  dsAccSOPBank.DataSet.EnableControls;

  if iDataCount > 1 then
  begin
    MessageDlg('Default bank can not more than 1 bank...', mtError, [mbYes], 0);
    ModalResult := mrNone;
  end
  else
    ModalResult := mrOk;
end;

end.
