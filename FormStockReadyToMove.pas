unit FormStockReadyToMove;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxBar,
  Vcl.ImgList, cxClasses, Vcl.ActnList, NDatasetAction, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, NActionPermission,
  Vcl.Menus, Datasnap.DBClient, NClientDataset;

type
  TfrmStockReadyToMove = class(TfrmBasic)
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterREQID: TcxGridDBBandedColumn;
    gvwMasterREQCODE: TcxGridDBBandedColumn;
    gvwMasterREQDATE: TcxGridDBBandedColumn;
    gvwMasterSOPID: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterSOPCODE: TcxGridDBBandedColumn;
    gvwMasterSOPDESC: TcxGridDBBandedColumn;
    gvwMasterNIK: TcxGridDBBandedColumn;
    gvwMasterNAME: TcxGridDBBandedColumn;
    gvwMasterACC_CUSTCODE: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY_ONHAND: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    grdBrowse: TcxGrid;
    gvwBrowse: TcxGridDBBandedTableView;
    grdBrowseLevel1: TcxGridLevel;
    aclBrowse: TActionList;
    actRefreshData: TNAction;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    imlBrowse: TImageList;
    dxBarButton1: TdxBarButton;
    actAdminCheck: TNAction;
    actProcessSettle: TNAction;
    cdsStockReadyToMove: TNClientDataset;
    dsBrowse: TDataSource;
    cdsStockReadyToMoveVALUEDATE: TDateField;
    cdsStockReadyToMoveACCID: TLargeintField;
    cdsStockReadyToMoveACCCODE: TStringField;
    cdsStockReadyToMoveACCNAME: TStringField;
    cdsStockReadyToMoveSTOCKID: TIntegerField;
    cdsStockReadyToMoveSTOCKCODE: TStringField;
    cdsStockReadyToMoveAVGPRICE: TFloatField;
    cdsStockReadyToMoveQTY_ONHAND: TFloatField;
    cdsStockReadyToMoveCUSTODYCODE: TStringField;
    cdsStockReadyToMoveCUSTODYACCNO: TStringField;
    cdsStockReadyToMoveACCSOPID: TIntegerField;
    cdsStockReadyToMoveNIK: TStringField;
    cdsStockReadyToMoveNAME: TStringField;
    cdsStockReadyToMoveBNCODE: TStringField;
    cdsStockReadyToMoveBANKACCNO: TStringField;
    cdsStockReadyToMoveBANKACCNAME: TStringField;
    cdsStockReadyToMoveSOPCODE: TStringField;
    cdsStockReadyToMoveSOPDESC: TStringField;
    cdsStockReadyToMoveCHECK_ADMIN: TStringField;
    cdsStockReadyToMoveCHECK_DATE: TDateTimeField;
    cdsStockReadyToMoveCHECK_UI: TStringField;
    cdsStockReadyToMoveSETTLE: TStringField;
    cdsStockReadyToMoveSETTLE_DATE: TDateTimeField;
    cdsStockReadyToMoveSETTLE_UI: TStringField;
    cdsStockReadyToMoveEXTREF_CODE: TStringField;
    cdsStockReadyToMoveACCID_1: TIntegerField;
    cdsStockReadyToMoveACCCODE_1: TStringField;
    cdsStockReadyToMoveACCNAME_1: TStringField;
    gvwBrowseVALUEDATE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseACCCODE: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseSTOCKID: TcxGridDBBandedColumn;
    gvwBrowseSTOCKCODE: TcxGridDBBandedColumn;
    gvwBrowseAVGPRICE: TcxGridDBBandedColumn;
    gvwBrowseQTY_ONHAND: TcxGridDBBandedColumn;
    gvwBrowseCUSTODYCODE: TcxGridDBBandedColumn;
    gvwBrowseCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwBrowseACCSOPID: TcxGridDBBandedColumn;
    gvwBrowseNIK: TcxGridDBBandedColumn;
    gvwBrowseNAME: TcxGridDBBandedColumn;
    gvwBrowseBNCODE: TcxGridDBBandedColumn;
    gvwBrowseBANKACCNO: TcxGridDBBandedColumn;
    gvwBrowseBANKACCNAME: TcxGridDBBandedColumn;
    gvwBrowseSOPCODE: TcxGridDBBandedColumn;
    gvwBrowseSOPDESC: TcxGridDBBandedColumn;
    gvwBrowseCHECK_ADMIN: TcxGridDBBandedColumn;
    gvwBrowseCHECK_DATE: TcxGridDBBandedColumn;
    gvwBrowseCHECK_UI: TcxGridDBBandedColumn;
    gvwBrowseSETTLE: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_DATE: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_UI: TcxGridDBBandedColumn;
    gvwBrowseEXTREF_CODE: TcxGridDBBandedColumn;
    gvwBrowseACCID_1: TcxGridDBBandedColumn;
    gvwBrowseACCCODE_1: TcxGridDBBandedColumn;
    gvwBrowseACCNAME_1: TcxGridDBBandedColumn;
    popBrowse: TPopupMenu;
    Refresh1: TMenuItem;
    AdminCheck1: TMenuItem;
    SettlementProcess1: TMenuItem;
    procedure actRefreshDataExecute(Sender: TObject);
    procedure actAdminCheckExecute(Sender: TObject);
    procedure actProcessSettleExecute(Sender: TObject);
    procedure actAdminCheckUpdate(Sender: TObject);
    procedure actProcessSettleUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockReadyToMove: TfrmStockReadyToMove;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmStockReadyToMove.actAdminCheckExecute(Sender: TObject);
var
  sMsg: String;
  bRes: Boolean;
begin
  inherited;
  bRes := dmGlobal.RemoteServer.SOPStockMoveAdminCheck(cdsStockReadyToMoveACCSOPID.AsInteger, sMsg);
  ShowMessage(sMsg);
  if bRes then
  begin
    actRefreshData.Execute;
  end;
end;

procedure TfrmStockReadyToMove.actAdminCheckUpdate(Sender: TObject);
begin
  inherited;
  actAdminCheck.Enabled := (not cdsStockReadyToMove.IsEmpty)
    and (cdsStockReadyToMoveCHECK_ADMIN.AsString <> '1');
end;

procedure TfrmStockReadyToMove.actProcessSettleExecute(Sender: TObject);
var
  sMsg: String;
  bRes: Boolean;
begin
  inherited;
  bRes := dmGlobal.RemoteServer.SOPStockMoveSettle(cdsStockReadyToMoveACCSOPID.AsInteger, sMsg);
  ShowMessage(sMsg);
  if bRes then
  begin
    actRefreshData.Execute;
  end;
end;

procedure TfrmStockReadyToMove.actProcessSettleUpdate(Sender: TObject);
begin
  inherited;
  actProcessSettle.Enabled := (not cdsStockReadyToMove.IsEmpty)
    and (cdsStockReadyToMoveCHECK_ADMIN.AsString = '1')
    and (cdsStockReadyToMoveSETTLE.AsString <> '1');
end;

procedure TfrmStockReadyToMove.actRefreshDataExecute(Sender: TObject);
begin
  inherited;
  cdsStockReadyToMove.Close;
  cdsStockReadyToMove.Open;
end;

procedure TfrmStockReadyToMove.FormCreate(Sender: TObject);
begin
  inherited;
  actRefreshData.Execute;
end;

Initialization
  RegisterClass(TfrmStockReadyToMove);

end.
