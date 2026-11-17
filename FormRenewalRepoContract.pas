unit FormRenewalRepoContract;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormWorkflow, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Datasnap.DBClient, NClientDataset,
  Vcl.ImgList, Vcl.ActnList, NDatasetAction, NActionPermission, Vcl.ExtCtrls,
  Vcl.DBCtrls, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, cxMemo,
  cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView;

type
  TfrmRenewalRepoContract = class(TfrmWorkflow)
    cdsRCRList: TNClientDataset;
    cdsRCRListCONTRACT_NO: TStringField;
    cdsRCRListTRXDATE: TDateTimeField;
    cdsRCRListACCCODE: TStringField;
    cdsRCRListACCNAME: TStringField;
    cdsRCRListSETTDATE: TDateTimeField;
    cdsRCRListSETTDAY: TIntegerField;
    cdsRCRListMATURDATE: TDateTimeField;
    cdsRCRListCCY: TStringField;
    cdsRCRListLOAN_AMT: TFloatField;
    cdsRCRListDUE_AMT: TFloatField;
    cdsRCRListINTERESTCODE: TStringField;
    cdsRCRListINTERESTRATE: TFloatField;
    cdsRCRListCOLL_AMT: TFloatField;
    cdsRCRListREPO_AMT: TFloatField;
    gvwBrowseCONTRACT_NO: TcxGridDBBandedColumn;
    gvwBrowseTRXDATE: TcxGridDBBandedColumn;
    gvwBrowseACCCODE: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseSETTDATE: TcxGridDBBandedColumn;
    gvwBrowseSETTDAY: TcxGridDBBandedColumn;
    gvwBrowseMATURDATE: TcxGridDBBandedColumn;
    gvwBrowseCCY: TcxGridDBBandedColumn;
    gvwBrowseLOAN_AMT: TcxGridDBBandedColumn;
    gvwBrowseDUE_AMT: TcxGridDBBandedColumn;
    gvwBrowseINTERESTRATE: TcxGridDBBandedColumn;
    gvwBrowseCOLL_AMT: TcxGridDBBandedColumn;
    gvwBrowseREPO_AMT: TcxGridDBBandedColumn;
    cdsRCRListCONRID: TLargeintField;
    lcEditorTopItem1: TdxLayoutItem;
    btnAction1: TcxButton;
    lcEditorTopItem2: TdxLayoutItem;
    btnAction2: TcxButton;
    lcEditorTopGroup1: TdxLayoutGroup;
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
    cdsRCRListENTTID: TIntegerField;
    cdsRCRListENTTCODE: TStringField;
    cdsRCRListENTTNAME: TStringField;
    cdsRCRListTRXTYPE: TStringField;
    cdsRCRListACCID: TIntegerField;
    cdsRCRListRACCID: TIntegerField;
    cdsRCRListRACCCODE: TStringField;
    cdsRCRListRACCNAME: TStringField;
    cdsRCRListDISCOUNT: TSmallintField;
    cdsRCRListAPR_COLL: TFloatField;
    cdsRCRListFORCESELL: TFloatField;
    cdsRCRListCOLL_CALL: TFloatField;
    cdsRCRListCORPACT: TSmallintField;
    cdsRCR: TNClientDataset;
    cdsRCRCONRID: TLargeintField;
    cdsRCRCONTRACT_NO: TStringField;
    cdsRCRENTTID: TIntegerField;
    cdsRCRENTTCODE: TStringField;
    cdsRCRENTTNAME: TStringField;
    cdsRCRTRXDATE: TDateTimeField;
    cdsRCRTRXTYPE: TStringField;
    cdsRCRACCID: TIntegerField;
    cdsRCRACCCODE: TStringField;
    cdsRCRACCNAME: TStringField;
    cdsRCRRACCID: TIntegerField;
    cdsRCRRACCCODE: TStringField;
    cdsRCRRACCNAME: TStringField;
    cdsRCRSETTDATE: TDateTimeField;
    cdsRCRSETTDAY: TIntegerField;
    cdsRCRMATURDATE: TDateTimeField;
    cdsRCRCCY: TStringField;
    cdsRCRLOAN_AMT: TFloatField;
    cdsRCRDUE_AMT: TFloatField;
    cdsRCRINTERESTCODE: TStringField;
    cdsRCRINTERESTDESC: TStringField;
    cdsRCRINTERESTRATE: TFloatField;
    cdsRCRINTERESTTABLE: TStringField;
    cdsRCRINTERESTDAY: TIntegerField;
    cdsRCRCALCMETHOD: TStringField;
    cdsRCRCALCBASIS: TStringField;
    cdsRCRAPR_COLL: TFloatField;
    cdsRCRFORCESELL: TFloatField;
    cdsRCRCOLL_CALL: TFloatField;
    cdsRCRISACCRUE: TSmallintField;
    cdsRCRISMONTHBASIS: TSmallintField;
    cdsRCRMODDA: TDateTimeField;
    cdsRCRMODUI: TStringField;
    cdsRCRAPPDA: TDateTimeField;
    cdsRCRAPPUI: TStringField;
    cdsRCRUNDER4Y: TIntegerField;
    cdsRCRUNDER4YDA: TDateTimeField;
    cdsRCRNOTES4Y: TStringField;
    cdsRCRISDEL: TIntegerField;
    cdsRCRID: TLargeintField;
    cdsRCRCON_DATE: TDateTimeField;
    cdsRCRTOPUP: TFloatField;
    cdsRCRDUE_DATE: TDateTimeField;
    cdsRCRORG_AMT: TFloatField;
    cdsRCRINTEREST_AMT: TFloatField;
    cdsRCRREPO_AMT: TFloatField;
    cdsRCRCOLL_AMT: TFloatField;
    cdsRCRCONTRACTNO_OLD: TStringField;
    cdsRCRNOTE: TStringField;
    cdsRCRqryRCR_D: TDataSetField;
    cdsRCRDISCOUNT: TSmallintField;
    cdsRCRCORPACT: TSmallintField;
    cdsRCR_D: TNClientDataset;
    cdsRCR_DCONRID: TLargeintField;
    cdsRCR_DSEQNO: TIntegerField;
    cdsRCR_DSTOCKID: TIntegerField;
    cdsRCR_DSTOCKCODE: TStringField;
    cdsRCR_DSTOCKNAME: TStringField;
    cdsRCR_DSHARES: TFloatField;
    cdsRCR_DTODAY_VAL: TFloatField;
    cdsRCR_DINSERT_DATE: TDateField;
    cdsRCR_DMODDA: TDateTimeField;
    cdsRCR_DMODUI: TStringField;
    cdsRCR_DAPPDA: TDateTimeField;
    cdsRCR_DAPPUI: TStringField;
    cdsRCR_DUNDER4Y: TIntegerField;
    cdsRCR_DUNDER4YDA: TDateTimeField;
    cdsRCR_DNOTES4Y: TStringField;
    cdsRCR_DISDEL: TIntegerField;
    cdsRCR_DID: TLargeintField;
    cdsRCR_DQTY: TLargeintField;
    cdsRCR_DCLS_PRICE: TFloatField;
    cdsRCR_DACCID: TLargeintField;
    cdsRCR_DACCCODE: TStringField;
    cdsRCR_DCOLL_AMT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure CustomOnBeforeCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
    procedure CustomOnAfterCompleteActivity(AFlowID, AActivityID: Integer; ADataID: Int64);
    procedure CustomOnBackToPreviousActivity(AFlowID, AActivityID: Integer; ADataID: Int64);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRenewalRepoContract: TfrmRenewalRepoContract;

implementation

{$R *.dfm}
uses DataGlobal, FormRenewalRepoContractEditor,
  ClassClientConst;

procedure TfrmRenewalRepoContract.FormCreate(Sender: TObject);
begin
  inherited;
  FormEditorClass := TfrmRenewalRepoContractEditor;
  FlowID := 5;
  KeyField := cdsRCRListCONRID;
  OnBeforeCompleteActivity := CustomOnBeforeCompleteActivity;
end;

procedure TfrmRenewalRepoContract.CustomOnBackToPreviousActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
begin
  //Create Custom Procedure here if Back To Previous Activity
end;

procedure TfrmRenewalRepoContract.CustomOnBeforeCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64; var AContinue: Boolean);
var
  dtServer: TDateTime;
  sMsg: String;
  bRes: Boolean;
begin
//Create Custom Procedure here if Before Complete Activity
  if (AActivityID = 5001) then
  begin
    //insert into main.B_CONTRACT_REPO
      cdsRCR.Close;
      cdsRCR.Params[0].AsInteger := cdsRCRListCONRID.AsInteger;
      cdsRCR.Open;

      cdsRepoMaster.Close;
      cdsRepoMaster.Open;

      cdsRepoMaster.Append;
      cdsRepoMasterCONRID.AsLargeint := cdsRCRCONRID.AsLargeint;
      cdsRepoMasterCONTRACT_NO.AsString := cdsRCRCONTRACT_NO.AsString;
      cdsRepoMasterENTTID.AsInteger := cdsRCRENTTID.AsInteger;
      cdsRepoMasterENTTCODE.AsString := cdsRCRENTTCODE.AsString;
      cdsRepoMasterENTTNAME.AsString := cdsRCRENTTNAME.AsString;
      cdsRepoMasterTRXDATE.AsDateTime := cdsRCRTRXDATE.AsDateTime;
      cdsRepoMasterTRXTYPE.AsString := cdsRCRTRXTYPE.AsString;
      cdsRepoMasterACCID.AsInteger := cdsRCRACCID.AsInteger;
      cdsRepoMasterACCCODE.AsString := cdsRCRACCCODE.AsString;
      cdsRepoMasterACCNAME.AsString := cdsRCRACCNAME.AsString;
      cdsRepoMasterRACCID.AsInteger := cdsRCRRACCID.AsInteger;
      cdsRepoMasterRACCCODE.AsString := cdsRCRRACCCODE.AsString;
      cdsRepoMasterRACCNAME.AsString := cdsRCRRACCNAME.AsString;
      cdsRepoMasterSETTDATE.AsDateTime := cdsRCRSETTDATE.AsDateTime;
      cdsRepoMasterSETTDAY.AsInteger := cdsRCRSETTDAY.AsInteger;
      cdsRepoMasterMATURDATE.AsDateTime := cdsRCRMATURDATE.AsDateTime;
      cdsRepoMasterCCY.AsString := cdsRCRCCY.AsString;
      cdsRepoMasterLOAN_AMT.AsFloat := cdsRCRLOAN_AMT.AsFloat;
      cdsRepoMasterDUE_AMT.AsFloat := cdsRCRDUE_AMT.AsFloat;
      cdsRepoMasterDISCOUNT.AsInteger := cdsRCRDISCOUNT.AsInteger;
      cdsRepoMasterINTERESTCODE.AsString := cdsRCRINTERESTCODE.AsString;
      cdsRepoMasterINTERESTRATE.AsFloat := cdsRCRINTERESTRATE.AsFloat;
      cdsRepoMasterINTERESTDAY.AsInteger := cdsRCRINTERESTDAY.AsInteger;
      cdsRepoMasterAPR_COLL.AsFloat := cdsRCRAPR_COLL.AsFloat;
      cdsRepoMasterFORCESELL.AsFloat := cdsRCRFORCESELL.AsFloat;
      cdsRepoMasterCOLL_CALL.AsFloat := cdsRCRCOLL_CALL.AsFloat;
      cdsRepoMasterINTEREST_AMT.AsFloat := cdsRCRINTEREST_AMT.AsFloat;
      cdsRepoMasterORG_AMT.AsFloat := cdsRCRORG_AMT.AsFloat;
      cdsRepoMasterREPO_AMT.AsFloat := cdsRCRREPO_AMT.AsFloat;
      cdsRepoMasterCOLL_AMT.AsFloat := cdsRCRCOLL_AMT.AsFloat;
      cdsRepoMasterCORPACT.AsInteger := cdsRCRCORPACT.AsInteger;
      cdsRepoMasterDUE_DATE.AsDateTime := cdsRCRDUE_DATE.AsDateTime;
      cdsRepoMasterREPO_STATUS.AsString := 'P';
      cdsRepoMaster.Post;

    //insert into main.B_CONTRACT_REPO_D
      cdsRepoMaster_D.Close;
      cdsRepoMaster_D.Open;
      cdsRepoMaster_D.Append;
      cdsRepoMaster_DCONRID.AsLargeint := cdsRCR_DCONRID.AsLargeint;
      cdsRepoMaster_DSEQNO.AsInteger := cdsRCR_DSEQNO.AsInteger;
      cdsRepoMaster_DSTOCKID.AsInteger := cdsRCR_DSTOCKID.AsInteger;
      cdsRepoMaster_DSTOCKCODE.AsString := cdsRCR_DSTOCKCODE.AsString;
      cdsRepoMaster_DSTOCKNAME.AsString := cdsRCR_DSTOCKNAME.AsString;
      cdsRepoMaster_DSHARES.AsFloat := cdsRCR_DSHARES.AsFloat;
      cdsRepoMaster_DTODAY_VAL.AsFloat := cdsRCR_DTODAY_VAL.AsFloat;
      cdsRepoMaster_DINSERT_DATE.AsDateTime := cdsRCR_DINSERT_DATE.AsDateTime;
      cdsRepoMaster_DID.AsLargeint := cdsRCR_DID.AsLargeint;
      cdsRepoMaster_DQTY.AsLargeint := cdsRCR_DQTY.AsLargeint;
      cdsRepoMaster_DCLS_PRICE.AsFloat := cdsRCR_DCLS_PRICE.AsFloat;
      cdsRepoMaster_DCOLL_AMT.AsFloat := cdsRCR_DCOLL_AMT.AsFloat;
      cdsRepoMaster_DACCID.AsLargeint := cdsRCR_DACCID.AsLargeint;
      cdsRepoMaster_DACCCODE.AsString := cdsRCR_DACCCODE.AsString;
      cdsRepoMaster_D.Post;

    //generate repo contract confirmation pdf.file

    //send confirmation to client by auto email engine

  end;

  if (AActivityID = 5002) then
  begin
  //Generate Stock Movement Instruction

  end;

  if (AActivityID = 5003) then
  begin
  //Generate Cash Movement Instruction

  end;

  if (AActivityID = 5004) then
  begin
    //Update Repo Status tobe "A" for Active
    cdsRepoMaster.Close;
    cdsRepoMaster.Params[0].AsInteger := cdsRCRListCONRID.AsInteger;
    cdsRepoMaster.Open;

    cdsRepoMaster.Edit;
    cdsRepoMasterREPO_STATUS.AsString := 'A';
    cdsRepoMaster.Post;
  end;

end;

procedure TfrmRenewalRepoContract.CustomOnAfterCompleteActivity(AFlowID,
  AActivityID: Integer; ADataID: Int64);
var
  sMsg: String;
  bRes: Boolean;
begin
//Create Custom Procedure here if After Complete Activity

end;

//procedure TfrmRenewalRepoContract.gvwDataActivityStatusFocusedRecordChanged(
//  Sender: TcxCustomGridTableView; APrevFocusedRecord,
//  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
//begin
//  inherited;
//  actEdit.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1001)
//    And (cdsDataActivityStatusSTATUS.AsString = '1')
//    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));
//
//  actCancelRequest.Visible := actEdit.Visible;
//
//  actApprove.Visible := ((cdsDataActivityStatusACTIVITYID.AsInteger = 1002)
//      or (cdsDataActivityStatusACTIVITYID.AsInteger = 1003)
//      or (cdsDataActivityStatusACTIVITYID.AsInteger = 1004))
//    And (cdsDataActivityStatusSTATUS.AsString = '1')
//    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));
//
//  actReject.Visible := actApprove.Visible;
//
//  actUpdateKSEIAccount.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1005)
//    And (cdsDataActivityStatusSTATUS.AsString = '1')
//    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));
//
//  actUpdateRDNAccount.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1006)
//    And (cdsDataActivityStatusSTATUS.AsString = '1')
//    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));
//
//  actAccountConfig.Visible := (cdsDataActivityStatusACTIVITYID.AsInteger = 1008)
//    And (cdsDataActivityStatusSTATUS.AsString = '1')
//    And (UpperCase(cdsDataActivityStatusDONE_BY.AsString) = UpperCase(dmGlobal.UserID));
//
//  if actEdit.Visible then
//  begin
//    btnAction1.Action := actEdit;
//    btnAction2.Action := actCancelRequest;
//  end;
//
//  if actApprove.Visible then
//  begin
//    btnAction1.Action := actApprove;
//    btnAction2.Action := actReject;
//  end;
//
//  if actUpdateKSEIAccount.Visible then
//  begin
//    btnAction1.Action := actUpdateKSEIAccount;
//  end;
//
//  if actUpdateRDNAccount.Visible then
//  begin
//    btnAction1.Action := actUpdateRDNAccount;
//  end;
//
//  if actAccountConfig.Visible then
//  begin
//    btnAction1.Action := actAccountConfig;
//  end;
//
//  actComplete.Visible := not actApprove.Visible;
//
//  lcEditorTopItem1.Visible := TAction(btnAction1.Action).Visible;
//  lcEditorTopItem2.Visible := TAction(btnAction2.Action).Visible;
//  lcEditorTop.Visible := actEdit.Visible
//    or actApprove.Visible or actReject.Visible
//    or actUpdateKSEIAccount.Visible or actUpdateRDNAccount.Visible
//    or actAccountConfig.Visible;
//end;

Initialization
  RegisterClass(TfrmRenewalRepoContract);

end.
