unit FormChangeQtySplitExec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormSingleEditor, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxCurrencyEdit, cxTextEdit, cxDBEdit, Data.DB, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient, NClientDataset;

type
  TfrmChangeQtySplitExec = class(TfrmSingleEditor)
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    edSplitQty: TcxCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsDealTicketPerExec: TNClientDataset;
    cdsDealTicketPerExecEXQTY: TLargeintField;
  private
    { Private declarations }
  public
    function createForm(ADTID,ASEQID : integer; out AQTYSplit : int64 ):Boolean;
    { Public declarations }
  end;

var
  frmChangeQtySplitExec: TfrmChangeQtySplitExec;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTickets;

{ TfrmChangeQtySplitExec }


{ TfrmChangeQtySplitExec }

function TfrmChangeQtySplitExec.createForm(ADTID, ASEQID: integer;
  out AQTYSplit: int64): Boolean;
var
  bError: Boolean;
  sMsg: String;
begin
  Result := False;

  frmChangeQtySplitExec := TfrmChangeQtySplitExec.Create(Nil);
  Try
    with frmChangeQtySplitExec do
    begin
        cdsDealTicketPerExec.Close;
        cdsDealTicketPerExec.Params[0].AsInteger := ADTID;
        cdsDealTicketPerExec.Params[1].AsInteger := ASEQID;
        cdsDealTicketPerExec.Open;

      if frmChangeQtySplitExec.ShowModal = mrOk then
      begin
        Result := true;
        AQTYSplit := edSplitQty.EditValue;
      end;
    end;
  Finally
    FreeAndNil(frmChangeQtySplitExec);
  End;
end;

end.
