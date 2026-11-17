unit FormAuthPersons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels;

type
  TfrmAuthPersons = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsAuthPerson: TNClientDataset;
    cdsAuthPersonAUTH_ID: TLargeintField;
    cdsAuthPersonAUTH_NAME: TStringField;
    cdsAuthPersonJABATAN: TStringField;
    cdsAuthPersonMODDA: TDateTimeField;
    cdsAuthPersonMODUI: TStringField;
    cdsAuthPersonAPPDA: TDateTimeField;
    cdsAuthPersonAPPUI: TStringField;
    cdsAuthPersonUNDER4Y: TIntegerField;
    cdsAuthPersonUNDER4YDA: TDateTimeField;
    cdsAuthPersonNOTES4Y: TStringField;
    cdsAuthPersonISDEL: TIntegerField;
    cdsAuthPersonID: TLargeintField;
    procedure cdsAuthPersonBeforePost(DataSet: TDataSet);
    procedure cdsAuthPersonNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuthPersons: TfrmAuthPersons;

implementation

{$R *.dfm}

uses FormAuthPerson, DataGlobal;

procedure TfrmAuthPersons.cdsAuthPersonBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    if (cdsAuthPersonAUTH_ID.AsLargeInt = -1) or (cdsAuthPersonAUTH_ID.IsNull) then
      cdsAuthPersonAUTH_ID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_AUTH_PERSON');
  end;
end;

procedure TfrmAuthPersons.cdsAuthPersonNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAuthPersonAUTH_ID.AsLargeInt := -1;
end;

Initialization
  RegisterClass(TfrmAuthPersons);

end.
