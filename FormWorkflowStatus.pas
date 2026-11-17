unit FormWorkflowStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, Vcl.Menus, Vcl.ActnList, NDatasetAction,
  dxDateRanges, System.Actions, dxScrollbarAnnotations;

type
  TfrmWorkflowStatus = class(TForm)
    grdDataActivityStatus: TcxGrid;
    gvwDataActivityStatus: TcxGridDBBandedTableView;
    grdDataActivityStatusLevel1: TcxGridLevel;
    dsDataActivityStatus: TDataSource;
    cdsDataActivityStatus: TNClientDataset;
    grdWorkflowDataNotes: TcxGrid;
    gvwWorkflowDataNotes: TcxGridDBBandedTableView;
    grdWorkflowDataNotesLevel1: TcxGridLevel;
    cdsDataActivityStatusDATAID: TLargeintField;
    cdsDataActivityStatusACTIVITYID: TIntegerField;
    cdsDataActivityStatusSTATUS: TStringField;
    cdsDataActivityStatusDONE_BY: TStringField;
    cdsDataActivityStatusDONE_DATE: TDateTimeField;
    cdsDataActivityStatusNOTES: TMemoField;
    cdsDataActivityStatusDESCRIPTION: TStringField;
    cdsWorkflowDataNotes: TNClientDataset;
    cdsWorkflowDataNotesFLOWID: TIntegerField;
    cdsWorkflowDataNotesDATAID: TLargeintField;
    cdsWorkflowDataNotesNOTES_DATE: TDateTimeField;
    cdsWorkflowDataNotesNOTES: TMemoField;
    cdsWorkflowDataNotesNOTES_USER: TStringField;
    dsWorkflowDataNotes: TDataSource;
    gvwDataActivityStatusDATAID: TcxGridDBBandedColumn;
    gvwDataActivityStatusACTIVITYID: TcxGridDBBandedColumn;
    gvwDataActivityStatusSTATUS: TcxGridDBBandedColumn;
    gvwDataActivityStatusDONE_BY: TcxGridDBBandedColumn;
    gvwDataActivityStatusDONE_DATE: TcxGridDBBandedColumn;
    gvwDataActivityStatusNOTES: TcxGridDBBandedColumn;
    gvwDataActivityStatusDESCRIPTION: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesFLOWID: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesDATAID: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesNOTES_DATE: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesNOTES: TcxGridDBBandedColumn;
    gvwWorkflowDataNotesNOTES_USER: TcxGridDBBandedColumn;
    aclWorkflow: TActionList;
    popDataActivityStatus: TPopupMenu;
    actViewData: TNAction;
    actModifyData: TNAction;
    actComplete: TNAction;
    actBackProcess: TNAction;
    ViewData1: TMenuItem;
    ModifyData1: TMenuItem;
    Complete1: TMenuItem;
    BacktoPreviousProcess1: TMenuItem;
    actRefresh: TNAction;
    N1: TMenuItem;
    Refresh1: TMenuItem;
    procedure actCompleteExecute(Sender: TObject);
    procedure actBackProcessExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
    FDataID: Int64;
    FFlowID: Integer;

    procedure RefreshData;
  public
    { Public declarations }
    property FlowID: Integer read FFlowID write FFlowID;
    property DataID: Int64 read FDataID write FDataID;

    function ShowWorkflowDataStatus(AFlowID: Integer; ADataID: Int64): Boolean;
  end;

var
  frmWorkflowStatus: TfrmWorkflowStatus;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmWorkflowStatus }

procedure TfrmWorkflowStatus.actBackProcessExecute(Sender: TObject);
var
  sMsg: String;
begin
  if dmGlobal.RemoteServer.UpdateDataActivityStatusPrev(DataID
    , cdsDataActivityStatusACTIVITYID.AsInteger, '', sMsg) then
  begin
    RefreshData;
  end;

  ShowMessage(sMsg);
end;

procedure TfrmWorkflowStatus.actCompleteExecute(Sender: TObject);
var
  sMsg: String;
begin
  if dmGlobal.RemoteServer.UpdateDataActivityStatusDone(DataID
    , cdsDataActivityStatusACTIVITYID.AsInteger, '', sMsg) then
  begin
    RefreshData;
  end;

  ShowMessage(sMsg);
end;

procedure TfrmWorkflowStatus.actRefreshExecute(Sender: TObject);
begin
  RefreshData;
end;

procedure TfrmWorkflowStatus.RefreshData;
begin

  cdsDataActivityStatus.Close;
  cdsDataActivityStatus.Params[0].AsInteger := FlowID;
  cdsDataActivityStatus.Params[1].AsInteger := DataID;
  cdsDataActivityStatus.Open;

  cdsWorkflowDataNotes.Close;
  cdsWorkflowDataNotes.Params[0].AsInteger := FlowID;
  cdsWorkflowDataNotes.Params[1].AsInteger := DataID;
  cdsWorkflowDataNotes.Open;

end;

function TfrmWorkflowStatus.ShowWorkflowDataStatus(AFlowID: Integer;
  ADataID: Int64): Boolean;
begin
  Result := False;

  frmWorkflowStatus := TfrmWorkflowStatus.Create(Nil);
  Try
    with frmWorkflowStatus do
    begin
      FlowID := AFlowID;
      DataID := ADataID;
      RefreshData;
      ShowModal;
    end;

    Result := True;
  Finally
    FreeAndNil(frmWorkflowStatus);
  End;

end;

end.
