unit FormApprovalRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, Vcl.ActnList, cxPC,
  NActionPermission, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxClasses,
  Datasnap.DBClient, NClientDataset, NDatasetAction, dxBarBuiltInMenu,
  System.Actions, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges;

type
  TfrmApprovalRequest = class(TfrmBasic)
    pcApproval: TcxPageControl;
    tabModule: TcxTabSheet;
    tabFutureChanges: TcxTabSheet;
    aclApproval: TActionList;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    cdsApprovalList: TNClientDataset;
    dsApprovalList: TDataSource;
    cdsApprovalListMODULE: TStringField;
    cdsApprovalListKEYID: TStringField;
    cdsApprovalListSTATE: TStringField;
    cdsApprovalListNOTES: TMemoField;
    cdsApprovalListREQDA: TDateTimeField;
    cdsApprovalListREQUI: TStringField;
    gvwMasterMODULE: TcxGridDBBandedColumn;
    gvwMasterKEYID: TcxGridDBBandedColumn;
    gvwMasterSTATE: TcxGridDBBandedColumn;
    gvwMasterNOTES: TcxGridDBBandedColumn;
    gvwMasterREQDA: TcxGridDBBandedColumn;
    gvwMasterREQUI: TcxGridDBBandedColumn;
    popApproval: TPopupMenu;
    actApprove: TNAction;
    actReject: TNAction;
    actReModify: TNAction;
    cdsApprovalListDEFAULTFORM: TStringField;
    Approve1: TMenuItem;
    Reject1: TMenuItem;
    RequesttoReModify1: TMenuItem;
    actRefresh: TNAction;
    N1: TMenuItem;
    Refresh1: TMenuItem;
    actViewData: TNAction;
    ViewData1: TMenuItem;
    N2: TMenuItem;
    cdsApprovalListFORM: TStringField;
    cdsApprovalListDESCRIPTION: TStringField;
    gvwMasterFORM: TcxGridDBBandedColumn;
    gvwMasterDEFAULTFORM: TcxGridDBBandedColumn;
    gvwMasterDESCRIPTION: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actApproveExecute(Sender: TObject);
    procedure actRejectExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure actReModifyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApprovalRequest: TfrmApprovalRequest;

implementation

{$R *.dfm}

uses DataGlobal, ClassClientConst;

procedure TfrmApprovalRequest.actApproveExecute(Sender: TObject);
var
  sKey, sMsg: String;
begin
  inherited;
  if (not cdsApprovalListFORM.IsNull)
    and (Trim(cdsApprovalListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalListFORM.AsString, sKey, pkApprove);
  end
  else
  begin
    dmGlobal.RemoteServer.ApproveModule(cdsApprovalListMODULE.AsString, cdsApprovalListKEYID.AsString, 'A', '', sMsg);
    ShowMessage(sMsg);
  end;

  cdsApprovalList.Refresh;
end;

procedure TfrmApprovalRequest.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsApprovalList.Refresh;
end;

procedure TfrmApprovalRequest.actRejectExecute(Sender: TObject);
var
  sKey, sMsg: String;
begin
  inherited;
  if (not cdsApprovalListFORM.IsNull)
    and (Trim(cdsApprovalListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalListFORM.AsString, sKey, pkReject);
  end
  else
  begin
    dmGlobal.RemoteServer.ApproveModule(cdsApprovalListMODULE.AsString, cdsApprovalListKEYID.AsString, 'R', '', sMsg);
    ShowMessage(sMsg);
  end;

  cdsApprovalList.Refresh;
end;

procedure TfrmApprovalRequest.actReModifyExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (not cdsApprovalListFORM.IsNull)
    and (Trim(cdsApprovalListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalListFORM.AsString, sKey, pkRemodify);
  end;

  cdsApprovalList.Refresh;
end;

procedure TfrmApprovalRequest.actViewDataExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  if (not cdsApprovalListFORM.IsNull)
    and (Trim(cdsApprovalListFORM.AsString) <> '') then
  begin
    sKey := cdsApprovalListKEYID.AsString;
    dmGlobal.ViewEditorForm(cdsApprovalListFORM.AsString, sKey, pkReadApproval);
  end;
end;

procedure TfrmApprovalRequest.FormCreate(Sender: TObject);
begin
  inherited;
  cdsApprovalList.Close;
  cdsApprovalList.Params[0].AsString := dmGlobal.UserID;
  cdsApprovalList.Open;
end;

Initialization
  RegisterClass(TfrmApprovalRequest);

end.
