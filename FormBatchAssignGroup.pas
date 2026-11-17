unit FormBatchAssignGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Datasnap.DBClient, NClientDataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Vcl.ActnList;

type
  TfrmBatchAssignGroup = class(TForm)
    pnlTop: TPanel;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    Panel1: TPanel;
    pnlLeft: TPanel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    gvwGroupList: TcxGridDBTableView;
    gvwGroupListGROUPID: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pnlCenter: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    pnlRight: TPanel;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    gvwAssignedGroupList: TcxGridDBTableView;
    gvwAssignedGroupListGROUPID: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    dxLayoutControl2Item1: TdxLayoutItem;
    btnCancel: TcxButton;
    cdsBatchGroup: TNClientDataset;
    cdsBatchGroupBATCHID: TIntegerField;
    cdsBatchGroupGROUPID: TStringField;
    cdsBatchGroupMODDA: TDateTimeField;
    cdsBatchGroupMODUI: TStringField;
    cdsBatchGroupAPPDA: TDateTimeField;
    cdsBatchGroupAPPUI: TStringField;
    cdsBatchGroupUNDER4Y: TIntegerField;
    cdsBatchGroupUNDER4YDA: TDateTimeField;
    cdsBatchGroupNOTES4Y: TStringField;
    cdsBatchGroupISDEL: TIntegerField;
    cdsBatchGroupID: TLargeintField;
    dsBatchGroup: TDataSource;
    cdsGroupList: TNClientDataset;
    dsGroupList: TDataSource;
    cdsGroupListGROUPID: TStringField;
    cdsGroupListAPPID: TStringField;
    cdsGroupListGROUPDESC: TStringField;
    ActionList1: TActionList;
    actAdd: TAction;
    actRemove: TAction;
    procedure actAddExecute(Sender: TObject);
    procedure actAddUpdate(Sender: TObject);
    procedure actRemoveUpdate(Sender: TObject);
    procedure actRemoveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(ABatchID: Integer; AProcessName: String);
  end;

var
  frmBatchAssignGroup: TfrmBatchAssignGroup;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmBatchAssignGroup }

procedure TfrmBatchAssignGroup.actAddExecute(Sender: TObject);
begin
  cdsBatchGroup.DisableControls;
  cdsGroupList.DisableControls;

  Try
    cdsBatchGroup.Append;
    cdsBatchGroupBATCHID.AsInteger := cdsBatchGroup.Params[0].AsInteger;
    cdsBatchGroupGROUPID.AsString := cdsGroupListGROUPID.AsString;
    cdsBatchGroup.Post;

    cdsGroupList.Delete;
  Finally
    cdsGroupList.EnableControls;
    cdsBatchGroup.EnableControls;
  End;
end;

procedure TfrmBatchAssignGroup.actAddUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (not cdsGroupList.IsEmpty);
end;

procedure TfrmBatchAssignGroup.actRemoveExecute(Sender: TObject);
begin
  cdsBatchGroup.DisableControls;
  cdsGroupList.DisableControls;

  Try
    cdsGroupList.Append;
    cdsGroupListGROUPID.AsString := cdsBatchGroupGROUPID.AsString;
    cdsGroupListAPPID.AsString := 'Nayaga';
    cdsGroupList.Post;

    cdsBatchGroup.Delete;
  Finally
    cdsGroupList.EnableControls;
    cdsBatchGroup.EnableControls;
  End;
end;

procedure TfrmBatchAssignGroup.actRemoveUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (not cdsBatchGroup.IsEmpty);
end;

procedure TfrmBatchAssignGroup.Run(ABatchID: Integer; AProcessName: String);
var
  oForm: TfrmBatchAssignGroup;
begin
  oForm := TfrmBatchAssignGroup.Create(nil);
  Try
    with oForm do
    begin
      cdsBatchGroup.Close;
      cdsBatchGroup.Params[0].AsInteger := ABatchID;
      cdsBatchGroup.Open;

      cdsGroupList.Close;
      cdsGroupList.Open;

      cdsGroupList.First;
      while not cdsGroupList.Eof do
      begin
        if cdsBatchGroup.Locate('GROUPID', cdsGroupListGROUPID.AsString, []) then
          cdsGroupList.Delete
        else
          cdsGroupList.Next;
      end;

      pnlTop.Caption := AProcessName;

      if ShowModal = mrOk then
      begin
        cdsBatchGroup.ApplyUpdates(-1);
      end;

      cdsGroupList.CancelUpdates;

    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
