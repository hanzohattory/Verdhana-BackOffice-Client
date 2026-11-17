unit FormSalesAgent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls,
  dxLayoutLookAndFeels, cxClasses;

type
  TfrmSalesAgent = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsSalesAgent: TNClientDataset;
    cdsSalesAgentAGENTID: TLargeintField;
    cdsSalesAgentAGENTCODE: TStringField;
    cdsSalesAgentAGENTNAME: TStringField;
    cdsSalesAgentBRANCHID: TLargeintField;
    cdsSalesAgentADDRESS1: TStringField;
    cdsSalesAgentADDRESS2: TStringField;
    cdsSalesAgentADDRESS3: TStringField;
    cdsSalesAgentPHONE: TStringField;
    cdsSalesAgentMOBILEPHONE: TStringField;
    cdsSalesAgentFAX: TStringField;
    cdsSalesAgentIDNUMBER: TStringField;
    cdsSalesAgentMODDA: TDateTimeField;
    cdsSalesAgentMODUI: TStringField;
    cdsSalesAgentAPPDA: TDateTimeField;
    cdsSalesAgentAPPUI: TStringField;
    cdsSalesAgentUNDER4Y: TIntegerField;
    cdsSalesAgentUNDER4YDA: TDateTimeField;
    cdsSalesAgentNOTES4Y: TStringField;
    cdsSalesAgentISDEL: TIntegerField;
    cdsSalesAgentID: TLargeintField;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsSalesAgentCPID: TLargeintField;
    procedure cdsSalesAgentNewRecord(DataSet: TDataSet);
    procedure cdsSalesAgentBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalesAgent: TfrmSalesAgent;

implementation

{$R *.dfm}

uses DataGlobal, FormSalesAgentList;

procedure TfrmSalesAgent.cdsSalesAgentBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsSalesAgent.State in [dsInsert] then
  begin
    if (cdsSalesAgentAGENTID.AsLargeInt = -1) or (cdsSalesAgentAGENTID.IsNull) then
      cdsSalesAgentAGENTID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_SALESAGENT');
  end;
end;

procedure TfrmSalesAgent.cdsSalesAgentNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSalesAgentAGENTID.AsLargeInt := -1;
end;

Initialization
  RegisterClass(TfrmSalesAgent);

end.
