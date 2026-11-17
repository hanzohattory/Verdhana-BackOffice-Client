unit FormContractSettlementInstruction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxClasses, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  dxLayoutcxEditAdapters, cxContainer, cxDBEdit, cxCurrencyEdit,
  cxImageComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxDateRanges;

type
  TfrmContractSettlementInstruction = class(TfrmEditorData)
    cdsContractAllocH: TNClientDataset;
    cdsContractAllocD: TNClientDataset;
    dsContractAllocD: TDataSource;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cdsContractAllocHCONID: TLargeintField;
    cdsContractAllocHSTOCKID: TLargeintField;
    cdsContractAllocHLOCALCODE: TStringField;
    cdsContractAllocHSHORTNAME: TStringField;
    cdsContractAllocHQTY: TFloatField;
    cdsContractAllocHCCYCODE: TStringField;
    cdsContractAllocHSETTLEAMT: TFloatField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    glvContractSettleDetail: TcxGridLevel;
    grdContractSettleDetail: TcxGrid;
    gvwContractSettleDetail: TcxGridDBBandedTableView;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsContractAllocDCONID: TLargeintField;
    cdsContractAllocDSTOCKID: TIntegerField;
    cdsContractAllocDSEQNO: TIntegerField;
    cdsContractAllocDCUSTODYCODE: TStringField;
    cdsContractAllocDQTY: TFloatField;
    cdsContractAllocDCCY: TStringField;
    cdsContractAllocDSETTLE_AMT: TFloatField;
    cdsContractAllocDINSTRUCTION: TStringField;
    cdsContractAllocDREMARKS: TStringField;
    gvwContractSettleDetailCONID: TcxGridDBBandedColumn;
    gvwContractSettleDetailSTOCKID: TcxGridDBBandedColumn;
    gvwContractSettleDetailSEQNO: TcxGridDBBandedColumn;
    gvwContractSettleDetailCUSTODYCODE: TcxGridDBBandedColumn;
    gvwContractSettleDetailQTY: TcxGridDBBandedColumn;
    gvwContractSettleDetailCCY: TcxGridDBBandedColumn;
    gvwContractSettleDetailSETTLE_AMT: TcxGridDBBandedColumn;
    gvwContractSettleDetailINSTRUCTION: TcxGridDBBandedColumn;
    gvwContractSettleDetailREMARKS: TcxGridDBBandedColumn;
    cdsContractAllocHSALDO: TFloatField;
    cdsContractAllocHBS: TStringField;
    cdsContractAllocHDIFFERENT: TFloatField;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cdsContract: TNClientDataset;
    cdsContractCONID: TLargeintField;
    cdsContractCONCODE: TStringField;
    cdsContractENTRYDATE: TDateField;
    cdsContractCONDATE: TDateField;
    cdsContractCASHSETTLEDATE: TDateField;
    cdsContractSTOCKSETTLEDATE: TDateField;
    cdsContractCASHMOVEDATE: TDateField;
    cdsContractSTOCKMOVEDATE: TDateField;
    cdsContractMARKETCODE: TStringField;
    cdsContractAGCTYPE: TStringField;
    cdsContractACCID: TLargeintField;
    cdsContractACCNO: TStringField;
    cdsContractACCNAME: TStringField;
    cdsContractACCSOPID: TLargeintField;
    cdsContractCON_ADDR: TStringField;
    cdsContractCITY: TStringField;
    cdsContractZIPCODE: TStringField;
    cdsContractSTOCKID: TLargeintField;
    cdsContractSTOCKCODE: TStringField;
    cdsContractSTOCKNAME: TStringField;
    cdsContractAVGPRICE: TFloatField;
    cdsContractQTY: TFloatField;
    cdsContractTC_MODEL: TStringField;
    cdsContractTC_SENDBY: TStringField;
    cdsContractSALESID: TLargeintField;
    cdsContractDEALERID: TLargeintField;
    cdsContractCCYCODE: TStringField;
    cdsContractNETTYPE: TStringField;
    cdsContractVALUEAMT: TFloatField;
    cdsContractNETVALUE: TFloatField;
    cdsContractCHARGEAMT: TFloatField;
    cdsContractCOMMAMT: TFloatField;
    cdsContractOTC: TFloatField;
    cdsContractROUND_AMT: TFloatField;
    cdsContractNETAMT: TFloatField;
    cdsContractCUSTODYCODE: TStringField;
    cdsContractSIDNO: TStringField;
    cdsContractBNCODE: TStringField;
    cdsContractBANKACCNO: TStringField;
    cdsContractBANKACCNAME: TStringField;
    cdsContractSETT_CLEARACC: TStringField;
    cdsContractSETT_CLEARSUBACC: TStringField;
    cdsContractFINALSTS: TStringField;
    cdsContractCONSTS: TStringField;
    cdsContractISOMG: TStringField;
    cdsContractISMULTICCY: TStringField;
    cdsContractFOREIGN_CCYCODE: TStringField;
    cdsContractFOREIGN_CURREXRATE: TFloatField;
    cdsContractFOREIGN_EXRATE: TFloatField;
    cdsContractFOREIGN_NETAMT: TFloatField;
    cdsContractC_SETTLEMODE: TStringField;
    cdsContractS_SETTLEMODE: TStringField;
    cdsContractCASHKEEP: TStringField;
    cdsContractSTOCKKEEP: TStringField;
    cdsContractEXRATE: TFloatField;
    cdsContractSALES_BRANCHID: TLargeintField;
    cdsContractPOSTED: TStringField;
    cdsContractJRNID: TLargeintField;
    cdsContractSETTLE_CASH: TStringField;
    cdsContractSETTLE_STOCK: TStringField;
    cdsContractMODDA: TDateTimeField;
    cdsContractMODUI: TStringField;
    cdsContractAPPDA: TDateTimeField;
    cdsContractAPPUI: TStringField;
    cdsContractUNDER4Y: TIntegerField;
    cdsContractUNDER4YDA: TDateTimeField;
    cdsContractNOTES4Y: TStringField;
    cdsContractISDEL: TIntegerField;
    cdsContractID: TLargeintField;
    cdsContractS_STS: TStringField;
    cdsContractC_STS: TStringField;
    cdsContractEMAILID: TLargeintField;
    cdsContractMOVE_CSET: TStringField;
    cdsContractSENDID: TLargeintField;
    cdsContractFOREIGN_EXRATE_MODE: TStringField;
    cdsContractSALDO: TFloatField;
    cdsContractqryConChargeSum: TDataSetField;
    cdsContractqryConAllocExec: TDataSetField;
    cdsContractqryConAlloc: TDataSetField;
    procedure FormCreate(Sender: TObject);
    procedure cdsContractAllocDQTYChange(Sender: TField);
    procedure btnOKClick(Sender: TObject);
    procedure cdsContractAllocDNewRecord(DataSet: TDataSet);
    procedure cdsContractAllocDAfterPost(DataSet: TDataSet);
    procedure cdsContractAllocDBeforePost(DataSet: TDataSet);
    procedure cdsContractAllocDCUSTODYCODEChange(Sender: TField);
    procedure cdsContractAllocDAfterOpen(DataSet: TDataSet);
    procedure gvwContractSettleDetailFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gvwContractSettleDetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
  private
    { Private declarations }
    fSummary, fOldSettleAmount: Double;
  public
    { Public declarations }
  end;

var
  frmContractSettlementInstruction: TfrmContractSettlementInstruction;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmContractSettlementInstruction.btnOKClick(Sender: TObject);
var
  iQty, iSettle: Integer;
  sMsg: string;
begin
  ModalResult := mrNone;

  if gvwContractSettleDetail.DataController.Summary.FooterSummaryValues[0] <> cdsContractAllocHQTY.AsFloat then
    MessageDlg('Summary quantity is different with quantity contract', mtError, [mbOK], 0)
  else if cdsContractAllocHDIFFERENT.AsFloat < 0 then
    MessageDlg('Different can not less than zero (0)', mtError, [mbOK], 0)
  else
  begin
    iQty    := 0;
    iSettle := 0;
    sMsg    := '';

    cdsContractAllocD.DisableControls;
    cdsContractAllocD.First;
    while not cdsContractAllocD.Eof do
    begin
      if cdsContractAllocDQTY.AsFloat < 0 then
        Inc(iQty);

      if cdsContractAllocDSETTLE_AMT.AsFloat < 0 then
        Inc(iSettle);

      cdsContractAllocD.Next;
    end;
    cdsContractAllocD.EnableControls;

    if (iQty > 0) then
      sMsg := 'There is no minus quantity allowed ';

    if (iSettle > 0) then
      sMsg := sMsg +#13+ 'There is no minus settle amount allowed ';

    if sMsg <> '' then
      MessageDlg(sMsg, mtError, [mbOK], 0)
    else
    begin
      cdsContract.Edit;
      cdsContractSALDO.AsFloat := cdsContractAllocHDIFFERENT.AsFloat;
      cdsContract.Post;

      cdsContract.ApplyUpdates(-1);
      cdsContractAllocD.ApplyUpdates(-1);

      ModalResult := mrOk;
  //    inherited;
    end;
  end;
end;

procedure TfrmContractSettlementInstruction.cdsContractAllocDAfterOpen(
  DataSet: TDataSet);
var
  fSaldo: Double;
begin
  inherited;
  fSummary := 0;

  if not cdsContractAllocD.IsEmpty then
  begin
    cdsContractAllocD.First;
    while not cdsContractAllocD.Eof do
    begin
      fSummary := fSummary + cdsContractAllocDSETTLE_AMT.AsFloat;

      cdsContractAllocD.Next;
    end;
  end;

  if cdsContractAllocHBS.AsString = 'B' then
    fSaldo := fSummary - cdsContractAllocHSETTLEAMT.AsFloat
  else if cdsContractAllocHBS.AsString = 'S' then
    fSaldo := cdsContractAllocHSETTLEAMT.AsFloat - fSummary;

  cdsContractAllocH.Edit;
  cdsContractAllocHDIFFERENT.AsFloat := fSaldo;
  cdsContractAllocH.Post;
end;

procedure TfrmContractSettlementInstruction.cdsContractAllocDAfterPost(
  DataSet: TDataSet);
var
  fSaldo: Double;
begin
  inherited;
//  fSummary := fSummary + cdsContractAllocDSETTLE_AMT.AsFloat;
//
//  if cdsContractAllocHBS.AsString = 'B' then
//    fSaldo := fSummary - cdsContractAllocHSETTLEAMT.AsFloat
//  else if cdsContractAllocHBS.AsString = 'S' then
//    fSaldo := cdsContractAllocHSETTLEAMT.AsFloat - fSummary;
//
//  cdsContractAllocH.Edit;
//  cdsContractAllocHDIFFERENT.AsFloat := fSaldo;
//  cdsContractAllocH.Post;
end;

procedure TfrmContractSettlementInstruction.cdsContractAllocDBeforePost(
  DataSet: TDataSet);
var
  iSeqID: Integer;
begin
  inherited;
  iSeqID := dmGlobal.RemoteServer.GetSeq('TBL_B_CON_SETTLE_INSTR');

  cdsContractAllocDSEQNO.AsString    := FormatFloat('0000000', iSeqID);
  cdsContractAllocDSTOCKID.AsInteger := cdsContractAllocHSTOCKID.AsInteger;
end;

procedure TfrmContractSettlementInstruction.cdsContractAllocDCUSTODYCODEChange(
  Sender: TField);
begin
  inherited;
  cdsContractAllocDQTY.AsFloat          := cdsContractAllocHQTY.AsFloat - gvwContractSettleDetail.DataController.Summary.FooterSummaryValues[0];
  cdsContractAllocDCCY.AsString         := 'IDR'; //defaultnya aja
  cdsContractAllocDINSTRUCTION.AsString := 'VP'; //default aja
end;

procedure TfrmContractSettlementInstruction.cdsContractAllocDNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsContractAllocDCONID.AsInteger := cdsContractAllocHCONID.AsInteger;
end;

procedure TfrmContractSettlementInstruction.cdsContractAllocDQTYChange(
  Sender: TField);
begin
  inherited;
  if gvwContractSettleDetail.DataController.Summary.FooterSummaryValues[0] > cdsContractAllocHQTY.AsFloat then
    MessageDlg('Summary quantity is biger than quantity contract', mtError, [mbOK], 0)
  else
    cdsContractAllocDSETTLE_AMT.AsFloat := (cdsContractAllocDQTY.AsFloat / cdsContractAllocHQTY.AsFloat)
      * cdsContractAllocHSETTLEAMT.AsFloat;
end;

procedure TfrmContractSettlementInstruction.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuCustody.Close;
    cdsLuCustody.Open;
  end;
end;

procedure TfrmContractSettlementInstruction.gvwContractSettleDetailFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  fOldSettleAmount := cdsContractAllocDSETTLE_AMT.AsFloat;
end;

procedure TfrmContractSettlementInstruction.gvwContractSettleDetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
var
  fSaldo: Double;
begin
  inherited;

  if AText <> '' then
  begin
    fSummary := gvwContractSettleDetail.DataController.Summary.FooterSummaryValues[1];

    if cdsContractAllocHBS.AsString = 'B' then
      fSaldo := fSummary - cdsContractAllocHSETTLEAMT.AsFloat
    else if cdsContractAllocHBS.AsString = 'S' then
      fSaldo := cdsContractAllocHSETTLEAMT.AsFloat - fSummary;

    cdsContractAllocH.Edit;
    cdsContractAllocHDIFFERENT.AsFloat := fSaldo;
    cdsContractAllocH.Post;
  end;
end;

end.
