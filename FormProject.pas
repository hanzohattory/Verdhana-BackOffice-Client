unit FormProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, Data.DB, Datasnap.DBClient,
  NClientDataset, cxTextEdit, cxDBEdit, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxClasses, dxLayoutControl;

type
  TfrmProject = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cdsProject: TNClientDataset;
    cdsProjectPROJECTID: TIntegerField;
    cdsProjectPROJECTCODE: TStringField;
    cdsProjectPROJECTNAME: TStringField;
    cdsProjectPROJECTDESC: TStringField;
    cdsProjectISDEL: TBooleanField;
    procedure cdsProjectBeforePost(DataSet: TDataSet);
    procedure cdsProjectNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProject: TfrmProject;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmProject.cdsProjectBeforePost(DataSet: TDataSet);
var
  sSeqName: string;
  iSeq: Int64;
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    sSeqName := 'TBL_B_PROJECT';
    iSeq := dmGlobal.RemoteServer.GetSeq(sSeqName);
    cdsProjectPROJECTID.AsInteger := iSeq;
    cdsProjectPROJECTCODE.AsString := 'PROJ' +
      FormatFloat('00000', iSeq);

  end;
end;

procedure TfrmProject.cdsProjectNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsProjectPROJECTCODE.AsString := '<AUTO>';
end;

end.
