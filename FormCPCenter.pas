unit FormCPCenter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutLookAndFeels, Vcl.ExtCtrls,
  Vcl.DBCtrls, Datasnap.DBClient, NClientDataset;

type
  TfrmCPCenter = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsCPCenter: TNClientDataset;
    cdsCPCenterCPID: TLargeintField;
    cdsCPCenterCPCODE: TStringField;
    cdsCPCenterCPDESC: TStringField;
    cdsCPCenterMODDA: TDateTimeField;
    cdsCPCenterMODUI: TStringField;
    cdsCPCenterAPPDA: TDateTimeField;
    cdsCPCenterAPPUI: TStringField;
    cdsCPCenterUNDER4Y: TIntegerField;
    cdsCPCenterUNDER4YDA: TDateTimeField;
    cdsCPCenterNOTES4Y: TStringField;
    cdsCPCenterISDEL: TIntegerField;
    cdsCPCenterID: TLargeintField;
    procedure cdsCPCenterNewRecord(DataSet: TDataSet);
    procedure cdsCPCenterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCPCenter: TfrmCPCenter;

implementation

{$R *.dfm}

uses FormCPCenterList, DataGlobal;

procedure TfrmCPCenter.cdsCPCenterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCPCenter.State = dsInsert then
    cdsCPCenterCPID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CPCENTER');
end;

procedure TfrmCPCenter.cdsCPCenterNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCPCenterCPID.AsLargeInt := -1;
end;

Initialization
  RegisterClass(TfrmCPCenter);

end.
