unit FormClosingAccountList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormWorkflow, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Datasnap.DBClient, NClientDataset,
  Vcl.ImgList, Vcl.ActnList, NDatasetAction, NActionPermission, Vcl.ExtCtrls,
  Vcl.DBCtrls, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, cxMemo,
  cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView,
  dxBarBuiltInMenu, NReportClient, System.ImageList, System.Actions,
  cxGridViewLayoutContainer, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmClosingAccountList = class(TfrmWorkflow)
    cdsCloseAccountList: TNClientDataset;
    cdsCloseAccountListCAID: TIntegerField;
    cdsCloseAccountListREQCODE: TStringField;
    cdsCloseAccountListREQDATE: TDateField;
    cdsCloseAccountListACCID: TIntegerField;
    cdsCloseAccountListNOTES: TStringField;
    cdsCloseAccountListPRDCODE: TStringField;
    cdsCloseAccountListACCCODE: TStringField;
    cdsCloseAccountListACCNAME: TStringField;
    cdsCloseAccountListACC_STS: TStringField;
    cdsCloseAccountListSALESCODE: TStringField;
    cdsCloseAccountListSALESNAME: TStringField;
    cdsCloseAccountListBRANCHCODE: TStringField;
    cdsCloseAccountListBRANCHNAME: TStringField;
    gvwBrowseCAID: TcxGridDBBandedColumn;
    gvwBrowseREQCODE: TcxGridDBBandedColumn;
    gvwBrowseREQDATE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseNOTES: TcxGridDBBandedColumn;
    gvwBrowsePRDCODE: TcxGridDBBandedColumn;
    gvwBrowseACCCODE: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseACC_STS: TcxGridDBBandedColumn;
    gvwBrowseSALESCODE: TcxGridDBBandedColumn;
    gvwBrowseSALESNAME: TcxGridDBBandedColumn;
    gvwBrowseBRANCHCODE: TcxGridDBBandedColumn;
    gvwBrowseBRANCHNAME: TcxGridDBBandedColumn;
    actCancelRequest: TNAction;
    btnAction1: TcxButton;
    lcEditorTopItem1: TdxLayoutItem;
    btnAction2: TcxButton;
    lcEditorTopItem2: TdxLayoutItem;
    lcEditorTopGroup1: TdxLayoutGroup;
    cdsAccountCashPos: TNClientDataset;
    cdsAccountStockPos: TNClientDataset;
    cdsAccountCashPosACCID: TLargeintField;
    cdsAccountCashPosCCYCODE: TStringField;
    cdsAccountCashPosACCRUED_INTEREST: TFloatField;
    cdsAccountCashPosCASH_ONHAND: TFloatField;
    cdsAccountCashPosCASH_QQ: TFloatField;
    cdsAccountCashPosCASH_SUBACC: TFloatField;
    cdsAccountCashPosCASH_ONHOLD: TFloatField;
    cdsAccountCashPosARAMT: TFloatField;
    cdsAccountCashPosAPAMT: TFloatField;
    cdsAccountCashPosCASH_OUTS: TFloatField;
    cdsAccountCashPosBUY_AMT: TFloatField;
    cdsAccountCashPosSELL_AMT: TFloatField;
    cdsAccountCashPosCASH_WDR: TFloatField;
    cdsAccountCashPosCASH_OTHERS: TFloatField;
    cdsAccountCashPosCASH_BAL: TFloatField;
    cdsAccountStockPosACCID: TLargeintField;
    cdsAccountStockPosSTOCKID: TIntegerField;
    cdsAccountStockPosAVGPRICE: TFloatField;
    cdsAccountStockPosQTY_CORPACT: TFloatField;
    cdsAccountStockPosQTY_ONHAND: TFloatField;
    cdsAccountStockPosQTY_OUTS: TFloatField;
    cdsAccountStockPosQTY_ONHOLD: TFloatField;
    cdsAccountStockPosQTY_OVERDUE: TFloatField;
    cdsAccountStockPosQTY_DLV: TFloatField;
    cdsAccountStockPosQTY_RCV: TFloatField;
    cdsAccountStockPosPROFIT_LOSS: TFloatField;
    cdsAccountStockPosBUY_VAL: TFloatField;
    cdsAccountStockPosSELL_VAL: TFloatField;
    cdsAccountStockPosQTY_WARKAT: TFloatField;
    cdsAccountStockPosSTK_WDR: TFloatField;
    cdsAccountStockPosBUY_QTY: TFloatField;
    cdsAccountStockPosSELL_QTY: TFloatField;
    cdsAccountStockPosQTY_VOUCHER: TFloatField;
    cdsAccountStockPosQTY_REPO: TFloatField;
    cdsAccountStockPosAVGPRICE_FEE: TFloatField;
    cdsAccountStockPosQTY_OLD_DLV: TFloatField;
    cdsAccountStockPosQTY_OLD_RCV: TFloatField;
    cdsAccountStockPosQTY_BAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure CustomOnBeforeCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
    procedure CustomOnAfterCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64);
    procedure actCancelRequestExecute(Sender: TObject);
    procedure gvwDataActivityStatusFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClosingAccountList: TfrmClosingAccountList;

implementation

{$R *.dfm}

uses DataGlobal, FormClosingAccount;

procedure TfrmClosingAccountList.actCancelRequestExecute(Sender: TObject);
var
  bRes: Boolean;
  sMsg, sNotes: String;
begin
  inherited;
  if (cdsDataActivityStatusSTATUS.AsString <> '1')
    or (UpperCase(cdsDataActivityStatusDONE_BY.AsString) <> UpperCase(dmGlobal.UserID)) then
    exit;

  if MessageDlg('Are you sure to cancel closing account request?',
    mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    sNotes := InputBox('Cancel Reason ', 'Notes : ', sNotes);
    bRes := dmGlobal.RemoteServer.UpdateDataActivityStatusDone(
      cdsDataActivityStatusDATAID.AsLargeInt,
      cdsDataActivityStatusACTIVITYID.AsInteger,
      sNotes, sMsg);

    if bRes then
    begin
      if Assigned(OnAfterCompleteActivity) then
        OnAfterCompleteActivity(FlowID, cdsDataActivityStatusACTIVITYID.AsInteger, cdsDataActivityStatusDATAID.AsLargeInt);
    end;

    dmGlobal.RemoteServer.FinishDataActivity(FlowID, cdsDataActivityStatusDATAID.AsLargeInt, sMsg);
    ViewSingleData(cdsDataActivityStatusDATAID.AsLargeInt);
  end;
end;

procedure TfrmClosingAccountList.CustomOnAfterCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
begin
//
end;

procedure TfrmClosingAccountList.CustomOnBeforeCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
var
  sMsg: String;
  bRes: Boolean;
  AccID: Integer;
begin
  AccID := TfrmClosingAccount(FormEditor).cdsCloseAccountACCID.AsInteger;
  if (AActivityID = 3003) then
  begin
    cdsAccountCashPos.Close;
    cdsAccountCashPos.Params[0].AsInteger := AccID;
    cdsAccountCashPos.Open;

    if not cdsAccountCashPos.IsEmpty then
    begin
      cdsAccountCashPos.First;
        //untuk sementara di non-active-kan
//      while not cdsAccountCashPos.Eof do
//      begin
//        if (cdsAccountCashPosCASH_ONHAND.AsFloat > 0)
//          or (cdsAccountCashPosCASH_OUTS.AsFloat > 0) then
//        begin
//          AContinue := False;
//          Break;
//        end;

//        cdsAccountCashPos.Next;
//      end;

      if not AContinue then
      begin
        sMsg := 'This Account Have Cash Position or Cash Outstanding!';
        dmGlobal.ErrorMessage(sMsg);
        Abort;
      end;
    end;
  end
  else if (AActivityID = 3004) then
  begin
    cdsAccountStockPos.Close;
    cdsAccountStockPos.Params[0].AsInteger := AccID;
    cdsAccountStockPos.Open;

    if not cdsAccountStockPos.IsEmpty then
    begin
        //untuk sementara di non-active-kan
//      cdsAccountStockPos.First;
//      while not cdsAccountStockPos.Eof do
//      begin
//        if (cdsAccountStockPosQTY_ONHAND.AsFloat > 0)
//          or (cdsAccountStockPosQTY_OUTS.AsFloat > 0) then
//        begin
//          AContinue := False;
//          Break;
//        end;
//
//        cdsAccountStockPos.Next;
//      end;

      if not AContinue then
      begin
        sMsg := 'This Account Have Stock Position or Stock Outstanding!';
        dmGlobal.ErrorMessage(sMsg);
        Abort;
      end;
    end;
  end
  else if (AActivityID = 3007) then
  begin
    bRes := dmGlobal.RemoteServer.ApproveClosingAccount(ADataID, sMsg);
    if not bRes then
    begin
      AContinue := False;
      dmGlobal.ErrorMessage(sMsg);
      Abort;
    end;
  end;
end;

procedure TfrmClosingAccountList.FormCreate(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmClosingAccount;
  FlowID := 3;
  KeyField := cdsCloseAccountListCAID;
  OnBeforeCompleteActivity := CustomOnBeforeCompleteActivity;
end;

procedure TfrmClosingAccountList.gvwDataActivityStatusFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  actEdit.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 3001)
    And (cdsDataActivityStatusSTATUS.AsString = '1')
    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));

  actCancelRequest.Visible := actEdit.Visible;

  lcEditorTopItem1.Visible := TAction(btnAction1.Action).Visible;
  lcEditorTopItem2.Visible := TAction(btnAction2.Action).Visible;
  lcEditorTop.Visible := actEdit.Visible;
end;

Initialization
  RegisterClass(TfrmClosingAccountList);

end.
