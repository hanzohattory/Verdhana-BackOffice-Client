unit FormAlternateCashSettlementList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCheckGroup, cxBarEditItem, cxCalendar;

type
  TfrmAlternateCashSettlementList = class(TfrmBrowseData)
    cdsAlternateCashSettlList: TNClientDataset;
    cdsAlternateCashSettlListACSID: TLargeintField;
    cdsAlternateCashSettlListACSCODE: TStringField;
    cdsAlternateCashSettlListACSDATE: TDateField;
    cdsAlternateCashSettlListDUEDATE: TDateField;
    cdsAlternateCashSettlListSTOCKID: TIntegerField;
    cdsAlternateCashSettlListCLIENT_ACCID: TIntegerField;
    cdsAlternateCashSettlListCLIENT_ACCCODE: TStringField;
    cdsAlternateCashSettlListCLIENT_ACCNAME: TStringField;
    cdsAlternateCashSettlListKPEI_ACCID: TIntegerField;
    cdsAlternateCashSettlListKPEI_ACCCODE: TStringField;
    cdsAlternateCashSettlListKPEI_ACCNAME: TStringField;
    cdsAlternateCashSettlListSTOCK_CODE: TStringField;
    cdsAlternateCashSettlListSTOCK_CODE_1: TStringField;
    cdsAlternateCashSettlListPRICE: TFloatField;
    cdsAlternateCashSettlListQUANTITY: TFloatField;
    cdsAlternateCashSettlListACS_RATE: TFloatField;
    cdsAlternateCashSettlListAMOUNT: TFloatField;
    cdsAlternateCashSettlListFEEAMOUNT: TFloatField;
    cdsAlternateCashSettlListNETAMOUNT: TFloatField;
    cdsAlternateCashSettlListSTAT: TStringField;
    cdsAlternateCashSettlListStatus: TStringField;
    cdsAlternateCashSettlListCLIENT_COCODE: TStringField;
    cdsAlternateCashSettlListKPEI_COCODE: TStringField;
    cdsAlternateCashSettlListCLIENT_SOCODE: TStringField;
    cdsAlternateCashSettlListKPEI_SOCODE: TStringField;
    cdsAlternateCashSettlListCREATED_DATE: TDateTimeField;
    cdsAlternateCashSettlListCREATED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlListCREATED_UI: TStringField;
    cdsAlternateCashSettlListPOSTED_DATE: TDateTimeField;
    cdsAlternateCashSettlListPOSTED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlListPOSTED_UI: TStringField;
    cdsAlternateCashSettlListREVERSED_DATE: TDateTimeField;
    cdsAlternateCashSettlListREVERSED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlListREVERSED_UI: TStringField;
    cdsAlternateCashSettlListCANCELED_DATE: TDateTimeField;
    cdsAlternateCashSettlListCANCELED_NOTES: TStringField;
    cdsAlternateCashSettlListCANCELED_SYSDATE: TDateTimeField;
    cdsAlternateCashSettlListCANCELED_UI: TStringField;
    gvwMasterACSID: TcxGridDBBandedColumn;
    gvwMasterACSCODE: TcxGridDBBandedColumn;
    gvwMasterACSDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterCLIENT_ACCID: TcxGridDBBandedColumn;
    gvwMasterCLIENT_ACCCODE: TcxGridDBBandedColumn;
    gvwMasterCLIENT_ACCNAME: TcxGridDBBandedColumn;
    gvwMasterKPEI_ACCID: TcxGridDBBandedColumn;
    gvwMasterKPEI_ACCCODE: TcxGridDBBandedColumn;
    gvwMasterKPEI_ACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCK_CODE: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterQUANTITY: TcxGridDBBandedColumn;
    gvwMasterACS_RATE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFEEAMOUNT: TcxGridDBBandedColumn;
    gvwMasterNETAMOUNT: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterStatus: TcxGridDBBandedColumn;
    gvwMasterCLIENT_COCODE: TcxGridDBBandedColumn;
    gvwMasterKPEI_COCODE: TcxGridDBBandedColumn;
    gvwMasterCLIENT_SOCODE: TcxGridDBBandedColumn;
    gvwMasterKPEI_SOCODE: TcxGridDBBandedColumn;
    gvwMasterCREATED_DATE: TcxGridDBBandedColumn;
    gvwMasterCREATED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCREATED_UI: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELED_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_NOTES: TcxGridDBBandedColumn;
    gvwMasterCANCELED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_UI: TcxGridDBBandedColumn;
    gvwMasterSTOCK_NAME: TcxGridDBBandedColumn;
    chStatus: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    actACSPost: TNAction;
    actACSCancel: TNAction;
    actACSReverse: TNAction;
    N1: TMenuItem;
    AlternateCashSettlementPost1: TMenuItem;
    AlternateCashSettlementCancel1: TMenuItem;
    AlternateCashSettlementReverse1: TMenuItem;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsAlternateCashSettlListLEDGERTRANSID: TLargeintField;
    cdsAlternateCashSettlListSTOCKTRANSID: TLargeintField;
    cdsAlternateCashSettlListACS_TYPE: TStringField;
    gvwMasterACS_TYPE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actACSPostExecute(Sender: TObject);
    procedure actACSCancelExecute(Sender: TObject);
    procedure actACSReverseExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlternateCashSettlementList: TfrmAlternateCashSettlementList;

implementation

{$R *.dfm}

uses App.Global.Info, DataGlobal, FormAlternateCashSettlement,
  FormViewTransaction;

procedure TfrmAlternateCashSettlementList.actACSCancelExecute(Sender: TObject);
var
  sMsg, sNotes: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iACSID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process alternate cash settlement !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process alternate cash settlement cancel ?') then
    begin
      sNotes := InputBox('Cancel alternate cash settlement', 'Cancel Reason', '');
      if sNotes = '' then
      begin
        MessageWarning('Cancel reason is empty, abort cancel process !');
        Exit;
      end;

      dmGlobal.RemoteServer.AlternateCashSettlCancel(cdsAlternateCashSettlListACSID.AsLargeInt, sNotes, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process alternate cash settlement cancel ?') then
    begin
      sNotes := InputBox('Cancel multiple alternate cash settlement', 'Cancel Reason', '');
      if sNotes = '' then
      begin
        MessageWarning('Cancel reason is empty, abort cancel process !');
        Exit;
      end;

      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iACSID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterACSID.Index];

          if dmGlobal.RemoteServer.AlternateCashSettlCancel(iACSID, sNotes, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Alternate cash settlement cancel has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully canceled and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsAlternateCashSettlList.Refresh;
end;

procedure TfrmAlternateCashSettlementList.actACSPostExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iACSID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process alternate cash settlement !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process alternate cash settlement post ?') then
    begin
      dmGlobal.RemoteServer.AlternateCashSettlPost(cdsAlternateCashSettlListACSID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process alternate cash settlement post ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iACSID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterACSID.Index];

          if dmGlobal.RemoteServer.AlternateCashSettlPost(iACSID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Alternate cash settlement post has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully posted and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsAlternateCashSettlList.Refresh;
end;

procedure TfrmAlternateCashSettlementList.actACSReverseExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iACSID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process alternate cash settlement !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process alternate cash settlement reverse ?') then
    begin
      dmGlobal.RemoteServer.AlternateCashSettlReverse(cdsAlternateCashSettlListACSID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process alternate cash settlement reverse ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iACSID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterACSID.Index];

          if dmGlobal.RemoteServer.AlternateCashSettlReverse(iACSID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Alternate cash settlement reverse has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully reversed and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsAlternateCashSettlList.Refresh;
end;

procedure TfrmAlternateCashSettlementList.actRefreshExecute(Sender: TObject);
var
  sStatus, sTempStatus: string;
begin
  //inherited;
  sTempStatus := chStatus.EditValue;
  sStatus     := '';

  // Status : Created
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '1';
  end;

  // Status : Posted
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '2';
  end;

  // Status : Reverse
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '3';
  end;

  // Status : Cancel
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '4';
  end;

  cdsAlternateCashSettlList.Close;
  cdsAlternateCashSettlList.Params[0].AsDate   := VarToDateTime(dtStart.EditValue);
  cdsAlternateCashSettlList.Params[1].AsDate   := VarToDateTime(dtEnd.EditValue);
  cdsAlternateCashSettlList.Params[2].AsString := sStatus;
  cdsAlternateCashSettlList.Open;
end;

procedure TfrmAlternateCashSettlementList.actViewTransactionExecute(
  Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsAlternateCashSettlListACSDATE.AsDateTime;
    iLedgerTransID := cdsAlternateCashSettlListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := cdsAlternateCashSettlListSTOCKTRANSID.AsLargeInt;
    iFundTransID   := -1;

    oForm := TfrmViewTransaction.Create(nil);

    TfrmViewTransaction(oForm).conDate       := dtConDate;
    TfrmViewTransaction(oForm).ledgerTransID := iLedgerTransID;
    TfrmViewTransaction(oForm).stockTransID  := iStockTransID;
    TfrmViewTransaction(oForm).fundTransID   := iFundTransID;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmAlternateCashSettlementList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAlternateCashSettlement;
end;

procedure TfrmAlternateCashSettlementList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '1111';
end;

procedure TfrmAlternateCashSettlementList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '0000';
end;

procedure TfrmAlternateCashSettlementList.FormCreate(Sender: TObject);
var
  dtSystem: TDateTime;
begin
  inherited;
  KeyField := cdsAlternateCashSettlListACSID;

  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;

  chStatus.EditValue := '1000';
end;

end.
