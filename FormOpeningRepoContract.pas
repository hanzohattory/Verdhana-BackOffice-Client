unit FormOpeningRepoContract;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormWorkflow, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  cxMemo, Datasnap.DBClient, NClientDataset, Vcl.ImgList, Vcl.ActnList,
  NDatasetAction, NActionPermission, Vcl.ExtCtrls, Vcl.DBCtrls, cxLabel,
  cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, cxPCdxBarPopupMenu,
  NReportClient;

type
  TfrmOpeningRepoContract = class(TfrmWorkflow)
    cdsRepoMaster: TNClientDataset;
    cdsRepoMasterCONRID: TLargeintField;
    cdsRepoMasterCONTRACT_NO: TStringField;
    cdsRepoMasterENTTID: TIntegerField;
    cdsRepoMasterENTTCODE: TStringField;
    cdsRepoMasterENTTNAME: TStringField;
    cdsRepoMasterTRXDATE: TDateTimeField;
    cdsRepoMasterTRXTYPE: TStringField;
    cdsRepoMasterACCID: TIntegerField;
    cdsRepoMasterACCCODE: TStringField;
    cdsRepoMasterACCNAME: TStringField;
    cdsRepoMasterRACCID: TIntegerField;
    cdsRepoMasterRACCCODE: TStringField;
    cdsRepoMasterRACCNAME: TStringField;
    cdsRepoMasterSETTDATE: TDateTimeField;
    cdsRepoMasterSETTDAY: TIntegerField;
    cdsRepoMasterMATURDATE: TDateTimeField;
    cdsRepoMasterCCY: TStringField;
    cdsRepoMasterLOAN_AMT: TFloatField;
    cdsRepoMasterDUE_AMT: TFloatField;
    cdsRepoMasterDISCOUNT: TSmallintField;
    cdsRepoMasterINTERESTCODE: TStringField;
    cdsRepoMasterINTERESTDESC: TStringField;
    cdsRepoMasterINTERESTRATE: TFloatField;
    cdsRepoMasterINTERESTTABLE: TStringField;
    cdsRepoMasterINTERESTDAY: TIntegerField;
    cdsRepoMasterCALCMETHOD: TStringField;
    cdsRepoMasterCALCBASIS: TStringField;
    cdsRepoMasterAPR_COLL: TFloatField;
    cdsRepoMasterFORCESELL: TFloatField;
    cdsRepoMasterCOLL_CALL: TFloatField;
    cdsRepoMasterINTEREST_AMT: TFloatField;
    cdsRepoMasterORG_AMT: TFloatField;
    cdsRepoMasterREPO_AMT: TFloatField;
    cdsRepoMasterCOLL_AMT: TFloatField;
    cdsRepoMasterCORPACT: TSmallintField;
    cdsRepoMasterISACCRUE: TSmallintField;
    cdsRepoMasterISMONTHBASIS: TSmallintField;
    cdsRepoMasterMODDA: TDateTimeField;
    cdsRepoMasterMODUI: TStringField;
    cdsRepoMasterAPPDA: TDateTimeField;
    cdsRepoMasterAPPUI: TStringField;
    cdsRepoMasterUNDER4Y: TIntegerField;
    cdsRepoMasterUNDER4YDA: TDateTimeField;
    cdsRepoMasterNOTES4Y: TStringField;
    cdsRepoMasterISDEL: TIntegerField;
    cdsRepoMasterID: TLargeintField;
    cdsRepoMasterCON_DATE: TDateTimeField;
    cdsRepoMasterTOPUP: TFloatField;
    cdsRepoMasterDUE_DATE: TDateTimeField;
    cdsRepoMasterREPO_STATUS: TStringField;
    cdsRepoMasterqryCONTRACT_REPO_D: TDataSetField;
    cdsRepoMaster_D: TNClientDataset;
    cdsRepoMaster_DCONRID: TLargeintField;
    cdsRepoMaster_DSEQNO: TIntegerField;
    cdsRepoMaster_DSTOCKID: TIntegerField;
    cdsRepoMaster_DSTOCKCODE: TStringField;
    cdsRepoMaster_DSTOCKNAME: TStringField;
    cdsRepoMaster_DSHARES: TFloatField;
    cdsRepoMaster_DTODAY_VAL: TFloatField;
    cdsRepoMaster_DINSERT_DATE: TDateField;
    cdsRepoMaster_DMODDA: TDateTimeField;
    cdsRepoMaster_DMODUI: TStringField;
    cdsRepoMaster_DAPPDA: TDateTimeField;
    cdsRepoMaster_DAPPUI: TStringField;
    cdsRepoMaster_DUNDER4Y: TIntegerField;
    cdsRepoMaster_DUNDER4YDA: TDateTimeField;
    cdsRepoMaster_DNOTES4Y: TStringField;
    cdsRepoMaster_DISDEL: TIntegerField;
    cdsRepoMaster_DID: TLargeintField;
    cdsRepoMaster_DQTY: TLargeintField;
    cdsRepoMaster_DCLS_PRICE: TFloatField;
    cdsRepoMaster_DACCID: TLargeintField;
    cdsRepoMaster_DCOLL_AMT: TFloatField;
    cdsRepoMaster_DACCCODE: TStringField;
    cdsOCRList: TNClientDataset;
    cdsOCRListCONRID: TLargeintField;
    cdsOCRListCONTRACT_NO: TStringField;
    cdsOCRListENTTID: TIntegerField;
    cdsOCRListENTTCODE: TStringField;
    cdsOCRListENTTNAME: TStringField;
    cdsOCRListTRXDATE: TDateTimeField;
    cdsOCRListTRXTYPE: TStringField;
    cdsOCRListACCID: TIntegerField;
    cdsOCRListACCCODE: TStringField;
    cdsOCRListACCNAME: TStringField;
    cdsOCRListRACCID: TIntegerField;
    cdsOCRListRACCCODE: TStringField;
    cdsOCRListRACCNAME: TStringField;
    cdsOCRListREPO_AMT: TFloatField;
    cdsOCRListSETTDATE: TDateTimeField;
    cdsOCRListSETTDAY: TIntegerField;
    cdsOCRListMATURDATE: TDateTimeField;
    cdsOCRListCCY: TStringField;
    cdsOCRListLOAN_AMT: TFloatField;
    cdsOCRListDUE_AMT: TFloatField;
    cdsOCRListINTERESTCODE: TStringField;
    cdsOCRListINTERESTRATE: TFloatField;
    cdsOCRListCOLL_AMT: TFloatField;
    cdsOCRListAPR_COLL: TFloatField;
    cdsOCRListFORCESELL: TFloatField;
    cdsOCRListCOLL_CALL: TFloatField;
    cdsOCRListDISCOUNT: TSmallintField;
    cdsOCRListCORPACT: TSmallintField;
    gvwBrowseCONTRACT_NO: TcxGridDBBandedColumn;
    gvwBrowseTRXDATE: TcxGridDBBandedColumn;
    gvwBrowseACCCODE: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseREPO_AMT: TcxGridDBBandedColumn;
    gvwBrowseSETTDATE: TcxGridDBBandedColumn;
    gvwBrowseSETTDAY: TcxGridDBBandedColumn;
    gvwBrowseMATURDATE: TcxGridDBBandedColumn;
    gvwBrowseCCY: TcxGridDBBandedColumn;
    gvwBrowseDUE_AMT: TcxGridDBBandedColumn;
    gvwBrowseINTERESTRATE: TcxGridDBBandedColumn;
    gvwBrowseCOLL_AMT: TcxGridDBBandedColumn;
    btnEdit: TcxButton;
    lcEdit: TdxLayoutItem;
    ReportTC: TNClientReportContainer;
    cxButton1: TcxButton;
    lcPrint: TdxLayoutItem;
    lcEditorTopGroup1: TdxLayoutGroup;
    cdsOCRListOLD_CONRID: TLargeintField;
    cdsOCRListOLD_CONTRACT_NO: TStringField;
    cdsOCRListRENEWAL: TBooleanField;
    gvwBrowseOLD_CONTRACT_NO: TcxGridDBBandedColumn;
    gvwBrowseRENEWAL: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure CustomOnBeforeCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
    procedure CustomOnAfterCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64);
    procedure gvwDataActivityStatusFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actPrintExecute(Sender: TObject);
    procedure cdsOCRListCalcFields(DataSet: TDataSet);
    procedure actCreateExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CopyToMasterContractREPO;
    function Validation : Boolean;
    function PostingRepo(out AMessage: string; ADataID: Int64) : Boolean;
    function GenerateREPOInterest(out AMessage: string; ADataID: Int64) : Boolean;
    function REPOStockMovement(out AMessage: string; ADataID: Int64) : Boolean;
    function CreateREPOPaymentVoucher(out AMessage: string; ADataID: Int64) : Boolean;

  public
    { Public declarations }
  end;

var
  frmOpeningRepoContract: TfrmOpeningRepoContract;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormOpeningRepoContractEditor;

procedure TfrmOpeningRepoContract.actCreateExecute(Sender: TObject);
begin
  dmGlobal.OldRepoContractID := -1;
  inherited;
end;

procedure TfrmOpeningRepoContract.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportTC.Params[0].AsInteger := cdsOCRListCONRID.AsInteger;
  ReportTC.PreviewReport;
end;

procedure TfrmOpeningRepoContract.cdsOCRListCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsOCRListRENEWAL.AsBoolean := Not cdsOCRListOLD_CONRID.IsNull;
end;

procedure TfrmOpeningRepoContract.CopyToMasterContractREPO;
var
  bRes: Boolean;
  sMsg: String;
begin

  with TfrmOpeningRepoContractEditor(FormEditor) do
  begin

    cdsRepoMaster.Close;
//    cdsRepoMaster.Params[0].AsLargeInt := cdsOCRCONRID.AsLargeint;
    cdsRepoMaster.Open;

    cdsOCR.DisableControls;
    cdsCOLLATERAL.DisableControls;


    cdsRepoMaster.Append;

    cdsRepoMasterCONRID.AsLargeint := cdsOCRCONRID.AsLargeint;
    cdsRepoMasterCONTRACT_NO.AsString := cdsOCRCONTRACT_NO.AsString;
    cdsRepoMasterENTTID.AsInteger := cdsOCRENTTID.AsInteger;
    cdsRepoMasterENTTCODE.AsString := cdsOCRENTTCODE.AsString;
    cdsRepoMasterENTTNAME.AsString := cdsOCRENTTNAME.AsString;
    cdsRepoMasterTRXDATE.AsDateTime := cdsOCRTRXDATE.AsDateTime;
    cdsRepoMasterTRXTYPE.AsString := cdsOCRTRXTYPE.AsString;
    cdsRepoMasterACCID.AsInteger := cdsOCRACCID.AsInteger;
    cdsRepoMasterACCCODE.AsString := cdsOCRACCCODE.AsString;
    cdsRepoMasterACCNAME.AsString := cdsOCRACCNAME.AsString;
    cdsRepoMasterRACCID.AsInteger := cdsOCRRACCID.AsInteger;
    cdsRepoMasterRACCCODE.AsString := cdsOCRRACCCODE.AsString;
    cdsRepoMasterRACCNAME.AsString := cdsOCRRACCNAME.AsString;
    cdsRepoMasterSETTDATE.AsDateTime := cdsOCRSETTDATE.AsDateTime;
    cdsRepoMasterSETTDAY.AsInteger := cdsOCRSETTDAY.AsInteger;
    cdsRepoMasterMATURDATE.AsDateTime := cdsOCRMATURDATE.AsDateTime;
    cdsRepoMasterCCY.AsString := cdsOCRCCY.AsString;
    cdsRepoMasterLOAN_AMT.AsFloat := cdsOCRLOAN_AMT.AsFloat;
    cdsRepoMasterDUE_AMT.AsFloat := cdsOCRDUE_AMT.AsFloat;
    cdsRepoMasterDISCOUNT.AsInteger := cdsOCRDISCOUNT.AsInteger;
    cdsRepoMasterINTERESTCODE.AsString := cdsOCRINTERESTCODE.AsString;
    cdsRepoMasterINTERESTRATE.AsFloat := cdsOCRINTERESTRATE.AsFloat;
    cdsRepoMasterINTERESTDAY.AsInteger := cdsOCRINTERESTDAY.AsInteger;
    cdsRepoMasterAPR_COLL.AsFloat := cdsOCRAPR_COLL.AsFloat;
    cdsRepoMasterFORCESELL.AsFloat := cdsOCRFORCESELL.AsFloat;
    cdsRepoMasterCOLL_CALL.AsFloat := cdsOCRCOLL_CALL.AsFloat;
    cdsRepoMasterINTEREST_AMT.AsFloat := cdsOCRINTEREST_AMT.AsFloat;
    cdsRepoMasterORG_AMT.AsFloat := cdsOCRORG_AMT.AsFloat;
    cdsRepoMasterREPO_AMT.AsFloat := cdsOCRREPO_AMT.AsFloat;
    cdsRepoMasterCOLL_AMT.AsFloat := cdsOCRCOLL_AMT.AsFloat;
    cdsRepoMasterCORPACT.AsInteger := cdsOCRCORPACT.AsInteger;
    cdsRepoMasterDUE_DATE.AsDateTime := cdsOCRDUE_DATE.AsDateTime;
    cdsRepoMasterREPO_STATUS.AsString := 'P';
    cdsRepoMasterISACCRUE.AsInteger := 0;

    cdsRepoMaster.Post;

    cdsCOLLATERAL.First;

    while not cdsCOLLATERAL.Eof do
    begin

      cdsRepoMaster_D.Append;
      cdsRepoMaster_DCONRID.AsLargeint := cdsCOLLATERALCONRID.AsLargeint;
      cdsRepoMaster_DSEQNO.AsInteger := cdsCOLLATERALSEQNO.AsInteger;
      cdsRepoMaster_DSTOCKID.AsInteger := cdsCOLLATERALSTOCKID.AsInteger;
      cdsRepoMaster_DSTOCKCODE.AsString := cdsCOLLATERALSTOCKCODE.AsString;
      cdsRepoMaster_DSTOCKNAME.AsString := cdsCOLLATERALSTOCKNAME.AsString;
      cdsRepoMaster_DSHARES.AsFloat := cdsCOLLATERALSHARES.AsFloat;
      cdsRepoMaster_DTODAY_VAL.AsFloat := cdsCOLLATERALTODAY_VAL.AsFloat;
      cdsRepoMaster_DINSERT_DATE.AsDateTime := cdsCOLLATERALINSERT_DATE.AsDateTime;
      cdsRepoMaster_DID.AsLargeint := cdsCOLLATERALID.AsLargeint;
      cdsRepoMaster_DQTY.AsLargeint := cdsCOLLATERALQTY.AsLargeint;
      cdsRepoMaster_DCLS_PRICE.AsFloat := cdsCOLLATERALCLS_PRICE.AsFloat;
      cdsRepoMaster_DCOLL_AMT.AsFloat := cdsCOLLATERALCOLL_AMT.AsFloat;
      cdsRepoMaster_DACCID.AsLargeint := cdsCOLLATERALACCID.AsLargeint;
      cdsRepoMaster_DACCCODE.AsString := cdsCOLLATERALACCCODE.AsString;
      cdsRepoMaster_D.Post;

      cdsCOLLATERAL.Next;

    end;

    cdsRepoMaster.ApplyUpdates(-1);

    cdsCOLLATERAL.EnableControls;
    cdsOCR.EnableControls;

  end;

end;

function TfrmOpeningRepoContract.CreateREPOPaymentVoucher(out AMessage: string;
  ADataID: Int64): Boolean;
begin
  Result := False;
  cdsRepoMaster.Close;
  cdsRepoMaster.Params[0].AsInteger := ADataID;
  cdsRepoMaster.Open;

  if not cdsRepoMaster.IsEmpty then
  begin
    result := dmGlobal.RemoteServer.CreateREPOPaymentVoucher(cdsRepoMasterCONRID.AsLargeInt, AMessage);
  end;

end;

procedure TfrmOpeningRepoContract.CustomOnAfterCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
begin
  if (AActivityID = 4003) then
  begin
    ViewSingleData(ADataID);

  end;

end;

procedure TfrmOpeningRepoContract.CustomOnBeforeCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
var
  dtServer: TDateTime;
  sMsg: String;
  bRes: Boolean;
begin
//Create Custom Procedure here if Before Complete Activity
  if (AActivityID = 4002) then
  begin

    if not Validation then
    begin
      dmGlobal.ErrorMessage('Not enough volume to REPO');
      AContinue := False;
      Abort;
    end
    else
    begin
      CopyToMasterContractREPO;
    end;


    //insert into main.B_CONTRACT_REPO

    //generate repo contract confirmation pdf.file

    //send confirmation to client by auto email engine

  end
  else if (AActivityID = 4003) then
  begin
    if not Validation then
    begin
      dmGlobal.ErrorMessage('Not enough volume to REPO');
      AContinue := False;
      Abort;
    end
    else
    begin

    end;

  //Generate Stock Movement Instruction

  //Generate Cash Movement Instruction
  end
  else if (AActivityID = 4004) then
  begin
    if not Validation then
    begin
      dmGlobal.ErrorMessage('Not enough volume to REPO');
      AContinue := False;
      Abort;
    end
    else
    begin
      REPOStockMovement(sMsg, ADataID);
    end;
  end;

  if (AActivityID = 4005) then
  begin
  //Posting Execute Cash Movement Instruction
//    if not Validation then
//    begin
//      dmGlobal.ErrorMessage('Not enough volume to REPO');
//      AContinue := False;
//      Abort;
//    end
//    else
    begin
      GenerateREPOInterest(sMsg, ADataID);
      PostingRepo(sMsg, ADataID);
//      CreateREPOPaymentVoucher(sMsg, ADataID);//Confirm By Irvan 20170518 tidak usah create payment voucher
    end;

  end;

  if (AActivityID = 4006) then
  begin
  //Update Repo Status tobe "A" for Active
    cdsRepoMaster.Close;
    cdsRepoMaster.Params[0].AsInteger := cdsOCRListCONRID.AsInteger;
    cdsRepoMaster.Open;

    cdsRepoMaster.Edit;
    cdsRepoMasterREPO_STATUS.AsString := 'A';
    cdsRepoMaster.Post;
    cdsRepoMaster.ApplyUpdates(-1);
  end;
end;

procedure TfrmOpeningRepoContract.FormCreate(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmOpeningRepoContractEditor;
  FlowID := 4;
  KeyField := cdsOCRListCONRID;
  OnBeforeCompleteActivity := CustomOnBeforeCompleteActivity;
  OnAfterCompleteActivity := CustomOnAfterCompleteActivity;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBranch.Active then
      cdsLuBranch.Open
    else
      cdsLuBranch.Refresh;

    if not cdsLuSales.Active then
      cdsLuSales.Open
    else
      cdsLuSales.Refresh;

    if not cdsLuBusinessType.Active then
      cdsLuBusinessType.Open
    else
      cdsLuBusinessType.Refresh;

    if not cdsLuBank.Active then
      cdsLuBank.Open
    else
      cdsLuBank.Refresh;

    if not cdsLuCounNation.Active then
      cdsLuCounNation.Open
    else
      cdsLuCounNation.Refresh;

    if not cdsLuProvince.Active then
      cdsLuProvince.Open
    else
      cdsLuProvince.Refresh;

    if not cdsLuCity.Active then
      cdsLuCity.Open
    else
      cdsLuCity.Refresh;
  end;

end;

function TfrmOpeningRepoContract.GenerateREPOInterest(
  out AMessage: string; ADataID: Int64): Boolean;
begin
  result := dmGlobal.RemoteServer.GenerateRepoInterest(ADataID, AMessage);
end;

procedure TfrmOpeningRepoContract.gvwDataActivityStatusFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  actEdit.Visible := (((cdsDataActivityStatusACTIVITYID.AsInteger = 4001) and (cdsDataActivityStatusSTATUS.AsString = '1')) or
    ((cdsDataActivityStatusACTIVITYID.AsInteger = 4002) and (cdsDataActivityStatusSTATUS.AsString = '1')) or
    ((cdsDataActivityStatusACTIVITYID.AsInteger = 4003) and (cdsDataActivityStatusSTATUS.AsString = '1')) or
    ((cdsDataActivityStatusACTIVITYID.AsInteger = 4004) and (cdsDataActivityStatusSTATUS.AsString = '1')) or
    ((cdsDataActivityStatusACTIVITYID.AsInteger = 4005) and (cdsDataActivityStatusSTATUS.AsString = '1')))
    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));

  actPrint.Visible := ((cdsDataActivityStatusACTIVITYID.AsInteger = 4005) or (cdsDataActivityStatusACTIVITYID.AsInteger = 4006))
    And (cdsDataActivityStatusSTATUS.AsString = '2')
    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));

  actBackToPreviousProcess.Visible := False;

  lcEdit.Visible := (actEdit.Visible);
  lcPrint.Visible := (actPrint.Visible);
//  lcEditorTopItem2.Visible := TAction(btnAction2.Action).Visible;
  lcEditorTop.Visible := (actEdit.Visible) or (actPrint.Visible);
//    or actApprove.Visible or actReject.Visible
//    or actUpdateKSEIAccount.Visible or actUpdateRDNAccount.Visible
//    or actAccountConfig.Visible;

end;

function TfrmOpeningRepoContract.PostingRepo(out AMessage: string; ADataID: Int64): Boolean;
begin
  Result := False;
  cdsRepoMaster.Close;
  cdsRepoMaster.Params[0].AsInteger := ADataID;
  cdsRepoMaster.Open;

  if not cdsRepoMaster.IsEmpty then
  begin
    result := dmGlobal.RemoteServer.PostingRepo(cdsRepoMasterCONRID.AsLargeInt, AMessage);
  end;
end;

function TfrmOpeningRepoContract.REPOStockMovement(
  out AMessage: string; ADataID: Int64): Boolean;
begin
  result := dmGlobal.RemoteServer.RepoStockMovement(ADataID, AMessage);

end;

function TfrmOpeningRepoContract.Validation: Boolean;
var
  bValid: Boolean;
begin
  with TfrmOpeningRepoContractEditor(FormEditor) do
  begin
    bValid := True;
    cdsSTOCKONHAND_Edit.DisableControls;

    cdsSTOCKONHAND_Edit.First;

    while not cdsSTOCKONHAND_Edit.Eof do
    begin
      if cdsSTOCKONHAND_EditMOVEPLAN.AsFloat > 0 then
      begin
        if cdsSTOCKONHAND_EditREMQTY.AsFloat < 0 then
        begin
          bValid := False;
        end;
      end;

      cdsSTOCKONHAND_Edit.Next;
    end;

    cdsSTOCKONHAND_Edit.EnableControls;

  end;

  Result := bValid;

end;

end.
