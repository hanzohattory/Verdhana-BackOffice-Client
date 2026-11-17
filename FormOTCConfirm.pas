unit FormOTCConfirm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, dxLayoutControl, Vcl.ExtCtrls,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit;

type
  TfrmOTCConfirm = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    Panel2: TPanel;
    lbCustCode: TLabel;
    lbStockCode: TLabel;
    lbQty: TLabel;
    lbCCYAmount: TLabel;
    Panel3: TPanel;
    txtConfirmWith: TcxTextEdit;
    txtConfirmBy: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    lbSID: TLabel;
    lbInstrType: TLabel;
    lbDateTime: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOTCConfirm: TfrmOTCConfirm;

implementation

{$R *.dfm}

end.
