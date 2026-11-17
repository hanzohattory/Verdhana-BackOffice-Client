unit FormCustody;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Data.DB,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCustody = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsCustody: TNClientDataset;
    cdsCustodyCUSTODYCODE: TStringField;
    cdsCustodyCUSTODYNAME: TStringField;
    cdsCustodyADDRESS1: TStringField;
    cdsCustodyADDRESS2: TStringField;
    cdsCustodyADDRESS3: TStringField;
    cdsCustodyTELP: TStringField;
    cdsCustodyFAX: TStringField;
    cdsCustodyCONTACTPERSON: TStringField;
    cdsCustodyMODDA: TDateTimeField;
    cdsCustodyMODUI: TStringField;
    cdsCustodyAPPDA: TDateTimeField;
    cdsCustodyAPPUI: TStringField;
    cdsCustodyUNDER4Y: TIntegerField;
    cdsCustodyUNDER4YDA: TDateTimeField;
    cdsCustodyNOTES4Y: TStringField;
    cdsCustodyISDEL: TIntegerField;
    cdsCustodyID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCustody: TfrmCustody;

implementation

{$R *.dfm}

uses FormCustodyList;

Initialization
  RegisterClass(TfrmCustody);

end.
