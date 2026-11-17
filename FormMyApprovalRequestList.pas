unit FormMyApprovalRequestList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  cxPC, Datasnap.DBClient, NClientDataset, Vcl.Menus, cxClasses, Vcl.ActnList,
  NDatasetAction, NActionPermission, dxBarBuiltInMenu, System.Actions;

type
  TfrmMyApprovalRequestList = class(TfrmBasic)
    aclApproval: TActionList;
    actCancel: TNAction;
    actRefresh: TNAction;
    actViewData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    popApproval: TPopupMenu;
    ViewData1: TMenuItem;
    Approve1: TMenuItem;
    N1: TMenuItem;
    Refresh1: TMenuItem;
    cdsApprovalRequestList: TNClientDataset;
    cdsApprovalRequestListMODULE: TStringField;
    cdsApprovalRequestListKEYID: TStringField;
    cdsApprovalRequestListSTATE: TStringField;
    cdsApprovalRequestListNOTES: TMemoField;
    cdsApprovalRequestListREQDA: TDateTimeField;
    cdsApprovalRequestListREQUI: TStringField;
    cdsApprovalRequestListDEFAULTFORM: TStringField;
    dsApprovaRequestlList: TDataSource;
    pcApproval: TcxPageControl;
    tabModule: TcxTabSheet;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterMODULE: TcxGridDBBandedColumn;
    gvwMasterKEYID: TcxGridDBBandedColumn;
    gvwMasterSTATE: TcxGridDBBandedColumn;
    gvwMasterNOTES: TcxGridDBBandedColumn;
    gvwMasterREQDA: TcxGridDBBandedColumn;
    gvwMasterREQUI: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    tabFutureChanges: TcxTabSheet;
    cdsApprovalRequestListAPPDA: TDateTimeField;
    cdsApprovalRequestListAPPUI: TStringField;
    cdsApprovalRequestListAPPSTATE: TStringField;
    cdsApprovalRequestListAPPNOTES: TMemoField;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterAPPSTATE: TcxGridDBBandedColumn;
    gvwMasterAPPNOTES: TcxGridDBBandedColumn;
    N2: TMenuItem;
    actModify: TNAction;
    Modify1: TMenuItem;
    cdsApprovalRequestListFORM: TStringField;
    cdsApprovalRequestListDESCRIPTION: TStringField;
    gvwMasterFORM: TcxGridDBBandedColumn;
    gvwMasterDEFAULTFORM: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actModifyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMyApprovalRequestList: TfrmMyApprovalRequestList;

implementation

{$R *.dfm}

uses DataGlobal, ClassClientConst;

procedure TfrmMyApprovalRequestList.actCancelExecute(Sender: TObject);
var
  sKey, sMsg: String;
begin
  inherited;
  if (not cdsApprovalRequestListFORM.IsNull)
    and (Trim(cdsApprovalRequestListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalRequestListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalRequestListFORM.AsString, sKey, pkCancel);
  end
  else
  begin
    dmGlobal.RemoteServer.ApproveModule(cdsApprovalRequestListMODULE.AsString, cdsApprovalRequestListKEYID.AsString, 'C', '', sMsg);
    ShowMessage(sMsg);
  end;
end;

procedure TfrmMyApprovalRequestList.actModifyExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (not cdsApprovalRequestListFORM.IsNull)
    and (Trim(cdsApprovalRequestListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalRequestListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalRequestListFORM.AsString, sKey, pkModifyApproval);
  end;
end;

procedure TfrmMyApprovalRequestList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsApprovalRequestList.Refresh;
end;

procedure TfrmMyApprovalRequestList.actViewDataExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (not cdsApprovalRequestListFORM.IsNull)
    and (Trim(cdsApprovalRequestListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalRequestListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalRequestListFORM.AsString, sKey, pkReadApproval);
  end;
end;

procedure TfrmMyApprovalRequestList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsApprovalRequestList.Close;
  cdsApprovalRequestList.Params[0].AsString := dmGlobal.UserID;
  cdsApprovalRequestList.Open;
end;

Initialization
  RegisterClass(TfrmMyApprovalRequestList);

end.
