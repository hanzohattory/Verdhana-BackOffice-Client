unit FormChannel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmChannel = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsChannel: TNClientDataset;
    cdsChannelCHANNELCODE: TStringField;
    cdsChannelCHANNELDESC: TStringField;
    cdsChannelMODDA: TDateTimeField;
    cdsChannelMODUI: TStringField;
    cdsChannelAPPDA: TDateTimeField;
    cdsChannelAPPUI: TStringField;
    cdsChannelISDEL: TIntegerField;
    cdsChannelID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChannel: TfrmChannel;

implementation

{$R *.dfm}

uses FormChannels;

Initialization
  RegisterClass(TfrmChannel);

end.
