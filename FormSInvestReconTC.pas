unit FormSInvestReconTC;

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
  dxPScxExtEditorProducers, Datasnap.DBClient, NClientDataset, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxButtonEdit,
  cxBarEditItem, XLSSheetData5, XLSReadWriteII5, cxCalendar;

type
  TfrmSInvestReconTC = class(TfrmBrowseData)
    cdsSInvestReconTCList: TNClientDataset;
    BarMBrowseBar2: TdxBar;
    edFileName: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    OpenDlg: TOpenDialog;
    actUpload: TNAction;
    cdsSInvestReconTC: TNClientDataset;
    cdsSInvestReconTCTA_REF_NO: TStringField;
    cdsSInvestReconTCTRADE_DATE: TDateTimeField;
    cdsSInvestReconTCSETTLEMENT_DATE: TDateTimeField;
    cdsSInvestReconTCIM_CODE: TStringField;
    cdsSInvestReconTCIM_NAME: TStringField;
    cdsSInvestReconTCFUND_CODE: TStringField;
    cdsSInvestReconTCFUND_NAME: TStringField;
    cdsSInvestReconTCSTOCK_CODE: TStringField;
    cdsSInvestReconTCSTOCK_NAME: TStringField;
    cdsSInvestReconTCBUY_SELL: TStringField;
    cdsSInvestReconTCCCY: TStringField;
    cdsSInvestReconTCPRICE: TFloatField;
    cdsSInvestReconTCQTY: TFloatField;
    cdsSInvestReconTCTRADE_AMT: TFloatField;
    cdsSInvestReconTCCOMMISSION: TFloatField;
    cdsSInvestReconTCSALES_TAX: TFloatField;
    cdsSInvestReconTCLEVY: TFloatField;
    cdsSInvestReconTCVAT: TFloatField;
    cdsSInvestReconTCOTHER_CHARGES: TFloatField;
    cdsSInvestReconTCGROSS_SETTLEMET_AMT: TFloatField;
    cdsSInvestReconTCWHT_ON_COMMISSION: TFloatField;
    cdsSInvestReconTCNET_SETTLEMENT_AMT: TFloatField;
    cdsSInvestReconTCSETTLEMENT_TYPE: TStringField;
    cdsSInvestReconTCREMARK: TStringField;
    cdsSInvestReconTCTAReferenceID: TStringField;
    cdsSInvestReconTCCheckStatus: TStringField;
    cdsSInvestReconTCMatchStatus: TStringField;
    edTradeDare: TcxBarEditItem;
    cdsSInvestReconTCNo: TIntegerField;
    cdsSInvestReconTCListCONID: TLargeintField;
    cdsSInvestReconTCListSEQID: TIntegerField;
    cdsSInvestReconTCListAccountCode: TStringField;
    cdsSInvestReconTCListAccountName: TStringField;
    cdsSInvestReconTCListFundCode: TStringField;
    cdsSInvestReconTCListBuySell: TStringField;
    cdsSInvestReconTCListStockCode: TStringField;
    cdsSInvestReconTCListNayagaDealQty: TFloatField;
    cdsSInvestReconTCListNayagaGrossProceed: TFloatField;
    cdsSInvestReconTCListNayagaCommission: TFloatField;
    cdsSInvestReconTCListNayagaVAT: TFloatField;
    cdsSInvestReconTCListNayagaLevy: TFloatField;
    cdsSInvestReconTCListNayagaSellTax: TFloatField;
    cdsSInvestReconTCListNayagaWht: TFloatField;
    cdsSInvestReconTCListNayagaNetProceed: TFloatField;
    cdsSInvestReconTCListSInvestGrossProceed: TFloatField;
    cdsSInvestReconTCListSInvestCommission: TFloatField;
    cdsSInvestReconTCListSInvestVAT: TFloatField;
    cdsSInvestReconTCListSInvestLevy: TFloatField;
    cdsSInvestReconTCListSInvestSellTax: TFloatField;
    cdsSInvestReconTCListSInvestWht: TFloatField;
    cdsSInvestReconTCListSInvestNetProceed: TFloatField;
    cdsSInvestReconTCListDifferent: TFloatField;
    gvwMasterCONID: TcxGridDBBandedColumn;
    gvwMasterSEQID: TcxGridDBBandedColumn;
    gvwMasterAccountCode: TcxGridDBBandedColumn;
    gvwMasterAccountName: TcxGridDBBandedColumn;
    gvwMasterFundCode: TcxGridDBBandedColumn;
    gvwMasterBuySell: TcxGridDBBandedColumn;
    gvwMasterStockCode: TcxGridDBBandedColumn;
    gvwMasterNayagaDealQty: TcxGridDBBandedColumn;
    gvwMasterNayagaGrossProceed: TcxGridDBBandedColumn;
    gvwMasterNayagaCommission: TcxGridDBBandedColumn;
    gvwMasterNayagaVAT: TcxGridDBBandedColumn;
    gvwMasterNayagaLevy: TcxGridDBBandedColumn;
    gvwMasterNayagaSellTax: TcxGridDBBandedColumn;
    gvwMasterNayagaWht: TcxGridDBBandedColumn;
    gvwMasterNayagaNetProceed: TcxGridDBBandedColumn;
    gvwMasterSInvestGrossProceed: TcxGridDBBandedColumn;
    gvwMasterSInvestCommission: TcxGridDBBandedColumn;
    gvwMasterSInvestVAT: TcxGridDBBandedColumn;
    gvwMasterSInvestLevy: TcxGridDBBandedColumn;
    gvwMasterSInvestSellTax: TcxGridDBBandedColumn;
    gvwMasterSInvestWht: TcxGridDBBandedColumn;
    gvwMasterSInvestNetProceed: TcxGridDBBandedColumn;
    gvwMasterDifferent: TcxGridDBBandedColumn;
    actSInvestReconTCSelected: TNAction;
    GenerateSelectedSInvestReconTC1: TMenuItem;
    cdsSInvestReconTCSelect: TNClientDataset;
    cdsSInvestReconTCSelectTransactionStatus: TStringField;
    cdsSInvestReconTCSelectTCReferenceID: TStringField;
    cdsSInvestReconTCSelectTradeDate: TStringField;
    cdsSInvestReconTCSelectSettlementDate: TStringField;
    cdsSInvestReconTCSelectBRCode: TStringField;
    cdsSInvestReconTCSelectIMCode: TStringField;
    cdsSInvestReconTCSelectFundCode: TStringField;
    cdsSInvestReconTCSelectSecurityCode: TStringField;
    cdsSInvestReconTCSelectBuySell: TStringField;
    cdsSInvestReconTCSelectPrice: TFloatField;
    cdsSInvestReconTCSelectQuantity: TFloatField;
    cdsSInvestReconTCSelectTradeAmount: TFloatField;
    cdsSInvestReconTCSelectCommission: TFloatField;
    cdsSInvestReconTCSelectSalesTax: TFloatField;
    cdsSInvestReconTCSelectlevy: TFloatField;
    cdsSInvestReconTCSelectVAT: TFloatField;
    cdsSInvestReconTCSelectOtherCharges: TIntegerField;
    cdsSInvestReconTCSelectGrossSettlementAmount: TFloatField;
    cdsSInvestReconTCSelectWHTonCommission: TFloatField;
    cdsSInvestReconTCSelectNetSettlementAmount: TFloatField;
    cdsSInvestReconTCSelectTCReferenceNo: TStringField;
    cdsSInvestReconTCSelectSecuritiesAccountNo: TStringField;
    cdsSInvestReconTCSelectAdditionalInformationifany: TStringField;
    cdsSInvestReconTCSelectAuthorizedPersonName: TStringField;
    cdsSInvestReconTCSelectAuthorizedPersonPosition: TStringField;
    cdsSInvestReconTCSelectPlaceofTradeType: TStringField;
    cdsSInvestReconTCSelectRepoTriPartyAgent: TStringField;
    cdsSInvestReconTCSelectCalculationAgent: TStringField;
    cdsSInvestReconTCSelectRepoRate: TStringField;
    cdsSInvestReconTCSelectPurchaseLendingBorrowingDate: TStringField;
    cdsSInvestReconTCSelectRePurchaseReturnDate: TStringField;
    cdsSInvestReconTCListNayagaPrice: TFloatField;
    cdsSInvestReconTCListCommissionRate: TFloatField;
    cdsSInvestReconTCListSalesPersonName: TStringField;
    gvwMasterNayagaPrice: TcxGridDBBandedColumn;
    gvwMasterCommissionRate: TcxGridDBBandedColumn;
    gvwMasterSalesPersonName: TcxGridDBBandedColumn;
    cdsSInvestReconTCListSInvestTradeAmount: TFloatField;
    cdsSInvestReconTCListSInvestPrice: TFloatField;
    cdsSInvestReconTCListSInvestQty: TFloatField;
    gvwMasterSInvestTradeAmount: TcxGridDBBandedColumn;
    gvwMasterSInvestPrice: TcxGridDBBandedColumn;
    gvwMasterSInvestQty: TcxGridDBBandedColumn;
    cdsSInvestReconTCListIMCode: TStringField;
    cdsSInvestReconTCListSInvestOthers: TFloatField;
    cdsSInvestReconTCListTradeDate: TDateTimeField;
    cdsSInvestReconTCListSettleDate: TDateTimeField;
    gvwMasterIMCode: TcxGridDBBandedColumn;
    gvwMasterSInvestOthers: TcxGridDBBandedColumn;
    gvwMasterTradeDate: TcxGridDBBandedColumn;
    gvwMasterSettleDate: TcxGridDBBandedColumn;
    actChangeCommission: TNAction;
    pmChangeCommission: TMenuItem;
    cdsSInvestReconTCListdealticketid: TLargeintField;
    gvwMasterdealticketid: TcxGridDBBandedColumn;
    procedure actChangeCommissionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actUploadExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSInvestReconTCSelectedExecute(Sender: TObject);
  private
    { Private declarations }
    function GetSaveExt(AFilterIndex: integer): string;

    function SaveToCSV(AFileName: string): string;
    function SaveToXls(AFileName: string): string;
  public
    { Public declarations }
  end;

var
  frmSInvestReconTC: TfrmSInvestReconTC;

implementation

uses DataGlobal, FormProgressBar;

{$R *.dfm}

procedure TfrmSInvestReconTC.actChangeCommissionExecute(Sender: TObject);
var
  sMsg, sTempMsg: string;
  iSelected: Integer;
  bCon: Boolean;
  i: Integer;
  iDone, iFail: integer;
  iContractID, iDealticketID: Int64;
begin
  inherited;
  bCon     := False;
  iDone    := 0;
  iFail    := 0;
  stempMsg := '';

  iSelected := gvwMaster.Controller.SelectedRecordCount;
  if iSelected = 1 then
    bCon := MessageQuestion('Change Commission '+ cdsSInvestReconTCListAccountCode.AsString +' ?')
  else
    bCon := MessageQuestion('Multiple Change Commission ?');

  if bCon then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iContractID   := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONID.Index];
      iDealticketID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterdealticketid.Index];

      if dmGlobal.RemoteServer.ChangeCommission(edTradeDare.EditValue, iContractID, iDealticketID, sMsg) then
        Inc(iDone)
      else
        Inc(iFail);

      if sTempMsg <> '' then
        sTempMsg := sTempMsg + #13#10;
      sTempMsg := sTempMsg + sMsg;
    end;

    MessageInformation(sTempMsg);
    if iDone > 0 then
      cdsSInvestReconTCList.Refresh;
  end;

end;

procedure TfrmSInvestReconTC.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsSInvestReconTCList.Close;
  cdsSInvestReconTCList.Params[0].AsDate := VarToDateTime(edTradeDare.EditValue);
  cdsSInvestReconTCList.Open;
end;

procedure TfrmSInvestReconTC.actUploadExecute(Sender: TObject);
var
  sFileName: string;
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  i, j, iRow: Integer;
  oProgress: TfrmProgressBar;
  sEmtyMsg, sMsg, sTmpMsg: string;
begin
  inherited;
  if not MessageQuestion('Upload file S-Invest Recon TC ?') then
    exit;

  sFileName := edFileName.EditValue;
  if sFileName = '' then
    exit;

  if not FileExists(sFileName) then
  begin
    MessageError(sFileName +' does not exist !');
    exit;
  end;

  try
    Cursor := crHourGlass;
    dmGlobal.RemoteServer.RunningFreeSQLScript('delete from main.S_INVEST_TC where TRADE_DATE = '+ QuotedStr(FormatDateTime('yyyymmdd', VarToDateTime(edTradeDare.EditValue))));

    cdsSInvestReconTC.Close;
    cdsSInvestReconTC.Params[0].AsDate := VarToDateTime(edTradeDare.EditValue);
    cdsSInvestReconTC.Open;

    oProgress := TfrmProgressBar.Create(nil);

    oXls          := TXLSReadWriteII5.Create(self);
    oXls.Filename := sFileName;
    oXls.Read;

    oSheet := oXls.Sheets[0];
    iRow   := oSheet.LastRow;
    for i := 1 to iRow do
    begin
      cdsSInvestReconTC.Append;
      cdsSInvestReconTCTA_REF_NO.AsString         := oSheet.AsString[1, i];
      cdsSInvestReconTCTRADE_DATE.AsDateTime      := EncodeDate(StrToInt(Copy(oSheet.AsString[2, i], 1, 4)), StrToInt(Copy(oSheet.AsString[2, i], 5, 2)), StrToInt(Copy(oSheet.AsString[2, i], 7, 2)));
      cdsSInvestReconTCSETTLEMENT_DATE.AsDateTime := EncodeDate(StrToInt(Copy(oSheet.AsString[3, i], 1, 4)), StrToInt(Copy(oSheet.AsString[3, i], 5, 2)), StrToInt(Copy(oSheet.AsString[3, i], 7, 2)));
      cdsSInvestReconTCIM_CODE.AsString           := oSheet.AsString[4, i];
      cdsSInvestReconTCIM_NAME.AsString           := oSheet.AsString[5, i];
      cdsSInvestReconTCFUND_CODE.AsString         := oSheet.AsString[6, i];
      cdsSInvestReconTCFUND_NAME.AsString         := oSheet.AsString[7, i];
      cdsSInvestReconTCSTOCK_CODE.AsString        := oSheet.AsString[8, i];
      cdsSInvestReconTCSTOCK_NAME.AsString        := oSheet.AsString[9, i];
      cdsSInvestReconTCBUY_SELL.AsString          := oSheet.AsString[10, i];
      cdsSInvestReconTCCCY.AsString               := oSheet.AsString[11, i];
      cdsSInvestReconTCPRICE.AsFloat              := StrToFloatDef(oSheet.AsString[12, i], 0);
      cdsSInvestReconTCQTY.AsFloat                := StrToFloatDef(oSheet.AsString[13, i], 0);
      cdsSInvestReconTCTRADE_AMT.AsFloat          := StrToFloatDef(oSheet.AsString[14, i], 0);
      cdsSInvestReconTCCOMMISSION.AsFloat         := StrToFloatDef(oSheet.AsString[15, i], 0);
      cdsSInvestReconTCSALES_TAX.AsFloat          := StrToFloatDef(oSheet.AsString[16, i], 0);
      cdsSInvestReconTCLEVY.AsFloat               := StrToFloatDef(oSheet.AsString[17, i], 0);
      cdsSInvestReconTCVAT.asFloat                := StrToFloatDef(oSheet.AsString[18, i], 0);
      cdsSInvestReconTCOTHER_CHARGES.AsFloat      := StrToFloatDef(oSheet.AsString[19, i], 0);
      cdsSInvestReconTCGROSS_SETTLEMET_AMT.AsFloat:= StrToFloatDef(oSheet.AsString[20, i], 0);
      cdsSInvestReconTCWHT_ON_COMMISSION.AsFloat  := StrToFloatDef(oSheet.AsString[21, i], 0);
      cdsSInvestReconTCNET_SETTLEMENT_AMT.AsFloat := StrToFloatDef(oSheet.AsString[22, i], 0);
      cdsSInvestReconTCSETTLEMENT_TYPE.AsString   := oSheet.AsString[23, i];
      cdsSInvestReconTCREMARK.AsString            := oSheet.AsString[24, i];
      cdsSInvestReconTCTAReferenceID.AsString     := oSheet.AsString[25, i];
      cdsSInvestReconTCCheckStatus.AsString       := oSheet.AsString[26, i];
      cdsSInvestReconTCMatchStatus.AsString       := oSheet.AsString[27, i];
      cdsSInvestReconTC.Post;

//      cdsSInvestReconTC.ApplyUpdates(-1);
    end;

  finally
    FreeAndNil(oXls);
    FreeAndNil(oProgress);
    Cursor := crDefault;

    MessageDlg('Data S-Invest Recon TC has been uploaded', TMsgDlgType.mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmSInvestReconTC.edFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;

  if OpenDlg.Execute then
    edFileName.EditValue := OpenDlg.FileName;
end;

procedure TfrmSInvestReconTC.FormCreate(Sender: TObject);
begin
  inherited;
  edTradeDare.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

function TfrmSInvestReconTC.GetSaveExt(AFilterIndex: integer): string;
var
  sRes: string;
begin
  sRes := '';

  if AFilterIndex = 1 then
    sRes := 'csv'
  else if AFilterIndex = 2 then
    sRes := 'xlsx'
  else if AFilterIndex = 3 then
    sRes := 'xls';

  Result := sRes;
end;

function TfrmSInvestReconTC.SaveToCSV(AFileName: string): string;
var
  i, j, iRec: Integer;
  oSInvList: TStringList;
  sList: string;
begin
  try
    oSinvList := TStringList.Create;

    for j := 0 to cdsSInvestReconTCSelect.FieldCount -1 do
    begin
      if j = cdsSInvestReconTCSelect.FieldCount - 1 then
        sList := sList + cdsSInvestReconTCSelect.Fields[j].FieldName
      else
        sList := sList + cdsSInvestReconTCSelect.Fields[j].FieldName +',';
    end;

    oSinvList.Add(sList);

    cdsSInvestReconTCSelect.First;
    while not cdsSInvestReconTCSelect.Eof do
    begin
      sList := '';
      for j := 0 to cdsSInvestReconTCSelect.FieldCount -1 do
      begin
        if j = cdsSInvestReconTCSelect.FieldCount -1 then
          sList := sList + cdsSInvestReconTCSelect.Fields[j].AsString
        else
          sList := sList + cdsSInvestReconTCSelect.Fields[j].AsString +',';
      end;

      oSinvList.Add(sList);
      cdsSInvestReconTCSelect.Next;
    end;

    oSInvList.SaveToFile(AFileName);
  finally
    FreeAndNil(oSInvList);
    Result := 'S-Invest recon TC has been generated to coma separator value file !';
  end;
end;

function TfrmSInvestReconTC.SaveToXls(AFileName: string): string;
var
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  sList: string;
  i, j: Integer;
begin
  try
    oXls          := TXLSReadWriteII5.Create(self);
    oXls.Filename := AFileName;

    oSheet := oXls.Sheets[0];
    oSheet.Clear;

    for i := 0 to cdsSInvestReconTCSelect.FieldCount -1 do
      oSheet.AsString[i, 0] := cdsSInvestReconTCSelect.Fields[i].FieldName;

    j := 0;
    cdsSInvestReconTCSelect.First;
    while not cdsSInvestReconTCSelect.Eof do
    begin
      Inc(j);
      for i := 0 to cdsSInvestReconTCSelect.FieldCount -1 do
        oSheet.AsString[i, j] := cdsSInvestReconTCSelect.Fields[i].AsVariant;
      cdsSInvestReconTCSelect.Next;
    end;

    oXls.Write;
  finally
    FreeAndNil(oXls);
    Result := 'S-Invest recon TC has been generated to excel file!';
  end;
end;

procedure TfrmSInvestReconTC.actSInvestReconTCSelectedExecute(Sender: TObject);
var
  bCon: Boolean;
  sFileName,
  sMsg,
  sSeqID,
  sConID,
  sList,
  sExt,
  sDefExt: string;
  iSeq, i, j, iRec: integer;
begin
  inherited;
  if not MessageQuestion('Generate S-Invest Recon TC ?') then
    exit;

  SaveDlg.FileName := 'TC_sINVEST_'+ FormatDateTime('yyyymmdd', now);
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
    if sFileName = '' then
      exit;
  end
  else
    Exit;

  bCon    := False;
  iSeq    := 0;
  sConID  := '';
  sSeqID  := '';
  sDefExt := GetSaveExt(SaveDlg.FilterIndex);

  sExt := ExtractFileExt(sFileName);
  if sExt = '' then
  begin
    sExt      := sDefExt;
    sFileName := sFileName + '.' + sExt;
  end;

  for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
  begin
    sConID := sConID + IntToStr(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterCONID.Index]) + ';';
    sSeqID := sSeqID + IntToStr(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterSEQID.Index]) + ';';
  end;

  cdsSInvestReconTCSelect.Close;
  cdsSInvestReconTCSelect.Params[0].AsDate   := VarToDateTime(edTradeDare.EditValue);
  cdsSInvestReconTCSelect.Params[1].AsString := sConID;
  cdsSInvestReconTCSelect.Params[2].AsString := sSeqID;
  cdsSInvestReconTCSelect.Open;

  if cdsSInvestReconTCSelect.IsEmpty then
  begin
    MessageError('There is no data can be generated !');
    exit;
  end;

  if FileExists(sFileName) then
  begin
    if not MessageQuestion('Replace existing file ?') then
      exit;
  end;

  if (sExt = 'csv') or (sExt = '.csv') then
    sMsg := SaveToCSV(sFileName)
  else if (sExt = 'xlsx') or (sExt = 'xls') or (sExt = '.xlsx') or (sExt = '.xls') then
    sMsg := SaveToXls(sFileName);

  MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
end;

end.
