unit FormBranch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxTextEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset,
  dxLayoutLookAndFeels, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxClasses;

type
  TfrmBranch = class(TfrmEditorData)
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
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cdsBranch: TNClientDataset;
    cdsBranchBRANCHID: TLargeintField;
    cdsBranchBRANCHCODE: TStringField;
    cdsBranchBRANCHNAME: TStringField;
    cdsBranchADDRESS1: TStringField;
    cdsBranchADDRESS2: TStringField;
    cdsBranchADDRESS3: TStringField;
    cdsBranchPHONE: TStringField;
    cdsBranchFAX: TStringField;
    cdsBranchMANAGER: TStringField;
    cdsBranchSALESAGENT: TStringField;
    cdsBranchREVSHARE: TFloatField;
    cdsBranchCPCD: TStringField;
    cdsBranchMODDA: TDateTimeField;
    cdsBranchMODUI: TStringField;
    cdsBranchAPPDA: TDateTimeField;
    cdsBranchAPPUI: TStringField;
    cdsBranchUNDER4Y: TIntegerField;
    cdsBranchUNDER4YDA: TDateTimeField;
    cdsBranchNOTES4Y: TStringField;
    cdsBranchISDEL: TIntegerField;
    cdsBranchID: TLargeintField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cdsBranchCPID: TLargeintField;
    procedure cdsBranchBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBranch: TfrmBranch;

implementation

{$R *.dfm}

uses DataGlobal, FormBranchList;

procedure TfrmBranch.cdsBranchBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    if cdsBranchBRANCHID.IsNull then
      cdsBranchBRANCHID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BRANCH');
  end;
end;

procedure TfrmBranch.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCPCenter.Active then
      cdsLuCPCenter.Open
    else
      cdsLuCPCenter.Refresh;
  end;
end;

Initialization
  RegisterClass(TfrmBranch);

end.
