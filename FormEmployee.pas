unit FormEmployee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  Datasnap.DBClient, NClientDataset;

type
  TfrmEmployee = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cdsEmployee: TNClientDataset;
    cdsEmployeeEMPLOYEEID: TIntegerField;
    cdsEmployeeEMPLOYEECODE: TStringField;
    cdsEmployeeEMPLOYEENAME: TStringField;
    cdsEmployeeISDEL: TBooleanField;
    procedure cdsEmployeeBeforePost(DataSet: TDataSet);
    procedure cdsEmployeeNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmployee: TfrmEmployee;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmEmployee.cdsEmployeeBeforePost(DataSet: TDataSet);
var
  sSeqName: string;
  iSeq: Int64;
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    sSeqName := 'TBL_B_PROJECT';
    iSeq := dmGlobal.RemoteServer.GetSeq(sSeqName);
    cdsEmployeeEMPLOYEEID.AsInteger := iSeq;
    cdsEmployeeEMPLOYEECODE.AsString := 'EMPLY' +
      FormatFloat('00000', iSeq);
  end;
end;

procedure TfrmEmployee.cdsEmployeeNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEmployeeEMPLOYEECODE.AsString := '<AUTO>';
end;

end.
