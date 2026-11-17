unit FormDealer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmDealer = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsDealer: TNClientDataset;
    cdsDealerDEALERID: TLargeintField;
    cdsDealerDEALERCODE: TStringField;
    cdsDealerDEALERNAME: TStringField;
    cdsDealerMODDA: TDateTimeField;
    cdsDealerMODUI: TStringField;
    cdsDealerAPPDA: TDateTimeField;
    cdsDealerAPPUI: TStringField;
    cdsDealerUNDER4Y: TIntegerField;
    cdsDealerUNDER4YDA: TDateTimeField;
    cdsDealerNOTES4Y: TStringField;
    cdsDealerISDEL: TIntegerField;
    cdsDealerID: TLargeintField;
    procedure cdsDealerBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDealer: TfrmDealer;

implementation

{$R *.dfm}

uses DataGlobal, FormDealerList;

procedure TfrmDealer.cdsDealerBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    if cdsDealerDEALERID.IsNull then
      cdsDealerDEALERID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALER');
  end;
end;

Initialization
  RegisterClass(TfrmDealer);

end.
