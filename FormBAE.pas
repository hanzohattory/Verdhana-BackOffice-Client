unit FormBAE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMemo, cxDBEdit, cxTextEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient, NClientDataset;

type
  TfrmBAE = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsBAE: TNClientDataset;
    cdsBAEBAEID: TIntegerField;
    cdsBAEBAECODE: TStringField;
    cdsBAEBAENAME: TStringField;
    cdsBAEBAEADDRESS: TStringField;
    cdsBAEBAEPHONE: TStringField;
    cdsBAEBAEFAX: TStringField;
    cdsBAEMODDA: TDateTimeField;
    cdsBAEMODUI: TStringField;
    cdsBAEAPPDA: TDateTimeField;
    cdsBAEAPPUI: TStringField;
    cdsBAEUNDER4Y: TIntegerField;
    cdsBAEUNDER4YDA: TDateTimeField;
    cdsBAENOTES4Y: TStringField;
    cdsBAEISDEL: TIntegerField;
    cdsBAEID: TLargeintField;
    procedure cdsBAENewRecord(DataSet: TDataSet);
    procedure cdsBAEBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBAE: TfrmBAE;

implementation

{$R *.dfm}

uses DataGlobal, FormBAEList;

procedure TfrmBAE.cdsBAEBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsBAE.State in [dsInsert] then
  begin
    if (cdsBAEBAEID.AsInteger = -1) or (cdsBAEBAEID.IsNull) then
      cdsBAEBAEID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_BAE');
  end;
end;

procedure TfrmBAE.cdsBAENewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsBAEBAEID.AsInteger := -1;
end;

Initialization
  RegisterClass(TfrmBAEList);

end.
