unit FormSetQtySplitExec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCurrencyEdit, cxTextEdit,
  cxDBEdit, Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxStatusBar, dxLayoutControl, cxClasses;

type
  TfrmSetQtySplitExec = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxStatusBar1: TdxStatusBar;
    btnOK: TcxButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    btnCancel: TcxButton;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dsSubject: TDataSource;
    cdsDealTicketPerExec: TNClientDataset;
    cdsDealTicketPerExecEXQTY: TLargeintField;
    edSplitQty: TcxCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    edCurrQty: TcxCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure edSplitQtyPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FQTYCurr : integer;
  public
    function createForm(AQTYCurr: int64; out AQTYSplit : int64 ):Boolean;
    { Public declarations }
  end;

var
  frmSetQtySplitExec: TfrmSetQtySplitExec;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmSetQtySplitExec }

function TfrmSetQtySplitExec.createForm(AQTYCurr: int64; out AQTYSplit : int64): Boolean;
var
  bError: Boolean;
  sMsg: String;
begin
  Result := False;

  frmSetQtySplitExec := TfrmSetQtySplitExec.Create(Nil);
  Try
    with frmSetQtySplitExec do
    begin
      FQTYCurr := AQTYCurr;

      if frmSetQtySplitExec.ShowModal = mrOk then
      begin
        Result := true;
        AQTYSplit := edSplitQty.EditValue;
      end;
    end;
  Finally
    FreeAndNil(frmSetQtySplitExec);
  End;
end;

procedure TfrmSetQtySplitExec.edSplitQtyPropertiesChange(Sender: TObject);
begin
  if edSplitQty.EditValue > FQTYCurr then
  begin
    showMessage('Split quantity is larger than current quantity!');
    edSplitQty.EditValue := FQTYCurr;
  end;
end;

procedure TfrmSetQtySplitExec.FormShow(Sender: TObject);
begin
    edCurrQty.EditValue := FQTYCurr;
    edSplitQty.EditValue := FQTYCurr;

    edSplitQty.SetFocus;
end;

end.
