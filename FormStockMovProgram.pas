unit FormStockMovProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  cxClasses, dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TfrmStockMovementProgram = class(TfrmEditorData)
    cdsStockMovProgram: TNClientDataset;
    cdsStockMovProgramprog_id: TLargeintField;
    cdsStockMovProgramprogName: TStringField;
    cdsStockMovProgramprogDesc: TStringField;
    cdsStockMovProgramINSDA: TDateField;
    cdsStockMovProgramINSUI: TStringField;
    cdsStockMovProgramMODDA: TDateField;
    cdsStockMovProgramMODUI: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    procedure cdsStockMovProgramNewRecord(DataSet: TDataSet);
    procedure cdsStockMovProgramBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockMovementProgram: TfrmStockMovementProgram;

implementation

{$R *.dfm}

uses DataGlobal, FormStockMovProgramList;

procedure TfrmStockMovementProgram.cdsStockMovProgramBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsStockMovProgramprog_id.AsInteger = -1 then
  begin
    cdsStockMovProgramprog_id.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKMOVEPROGRAM');
    cdsStockMovProgramINSDA.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
    cdsStockMovProgramINSUI.AsString    := dmGlobal.UserID;
  end
  else
  begin
    cdsStockMovProgramMODDA.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
    cdsStockMovProgramMODUI.AsString    := dmGlobal.UserID;
  end;
end;

procedure TfrmStockMovementProgram.cdsStockMovProgramNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockMovProgramprog_id.AsInteger := -1;
end;

Initialization
  RegisterClass(TfrmStockMovementProgram);

end.
