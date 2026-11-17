unit FormStockSettleVoucherProcess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxImageComboBox, cxCurrencyEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  Datasnap.DBClient, NClientDataset, Vcl.ActnList, NDatasetAction,
  System.Actions, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmStockSettleVoucherProcess = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    cdsStockSettleHProcess: TNClientDataset;
    cdsStockSettleDProcess: TNClientDataset;
    cdsStockSettleHProcessSSID: TLargeintField;
    cdsStockSettleHProcessSSNO: TStringField;
    cdsStockSettleHProcessSSDESC: TStringField;
    cdsStockSettleHProcessSETTLE_TYPE: TStringField;
    cdsStockSettleHProcessENTRYDATE: TDateField;
    cdsStockSettleHProcessVALUEDATE: TDateField;
    cdsStockSettleHProcessACCID: TLargeintField;
    cdsStockSettleHProcessSTOCKID: TLargeintField;
    cdsStockSettleHProcessQTY: TFloatField;
    cdsStockSettleHProcessSTAT: TStringField;
    cdsStockSettleHProcessMODDA: TDateTimeField;
    cdsStockSettleHProcessMODUI: TStringField;
    cdsStockSettleHProcessAPPDA: TDateTimeField;
    cdsStockSettleHProcessAPPUI: TStringField;
    cdsStockSettleHProcessUNDER4Y: TIntegerField;
    cdsStockSettleHProcessUDER4YDA: TDateTimeField;
    cdsStockSettleHProcessNOTES4Y: TStringField;
    cdsStockSettleHProcessISDEL: TIntegerField;
    cdsStockSettleHProcessID: TLargeintField;
    cdsStockSettleHProcessACCCODE: TStringField;
    cdsStockSettleHProcessACCNAME: TStringField;
    cdsStockSettleHProcessLOCALCODE: TStringField;
    cdsStockSettleHProcessSHORTNAME: TStringField;
    cdsStockSettleHProcessqryStockSettleDProcess: TDataSetField;
    dsStockSettleDProcess: TDataSource;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Item13: TdxLayoutItem;
    ActionList1: TActionList;
    actSettle: TNAction;
    actReverse: TNAction;
    actCancel: TNAction;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cdsStockSettleHProcessACCCUSTODYID: TLargeintField;
    cdsStockSettleHProcessAMOUNT: TFloatField;
    cdsStockSettleHProcessINSTRUCTION_TYPE: TStringField;
    cdsStockSettleHProcessCL_ACCID: TLargeintField;
    cdsStockSettleHProcessORIG_AMOUNT: TFloatField;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    cdsStockSettleHProcessCUSTODYCODE: TStringField;
    cdsStockSettleHProcessCUSTODYACCNO: TStringField;
    cdsStockSettleHProcessDIFF_AMOUNT: TFloatField;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cdsStockSettleHProcessSETTLE_MODE: TStringField;
    cdsStockSettleHProcessACS_PRICE: TFloatField;
    cdsStockSettleHProcessACS_PERCENT: TFloatField;
    cdsStockSettleHProcessSETTLE_AMOUNT: TFloatField;
    edSettleMode: TcxDBImageComboBox;
    dxLayoutItem2: TdxLayoutItem;
    edACSPrice: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edACSPercent: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    edSettleAmount: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cdsStockSettleHProcessSETTLEAMOUNT: TFloatField;
    cdsStockSettlementH: TNClientDataset;
    cdsStockSettlementHSSID: TLargeintField;
    cdsStockSettlementHSSNO: TStringField;
    cdsStockSettlementHSSDESC: TStringField;
    cdsStockSettlementHSETTLE_TYPE: TStringField;
    cdsStockSettlementHENTRYDATE: TDateField;
    cdsStockSettlementHVALUEDATE: TDateField;
    cdsStockSettlementHACCID: TLargeintField;
    cdsStockSettlementHCL_ACCID: TLargeintField;
    cdsStockSettlementHSTOCKID: TLargeintField;
    cdsStockSettlementHINSTRUCTION_TYPE: TStringField;
    cdsStockSettlementHQTY: TFloatField;
    cdsStockSettlementHORIG_AMOUNT: TFloatField;
    cdsStockSettlementHAMOUNT: TFloatField;
    cdsStockSettlementHACCCUSTODYID: TLargeintField;
    cdsStockSettlementHCASH_VOUCHER_CREATED: TStringField;
    cdsStockSettlementHSTAT: TStringField;
    cdsStockSettlementHCANCEL_DATE: TDateTimeField;
    cdsStockSettlementHCANCEL_UI: TStringField;
    cdsStockSettlementHPOSTED_DATE: TDateTimeField;
    cdsStockSettlementHPOSTED_UI: TStringField;
    cdsStockSettlementHREVERSED_DATE: TDateTimeField;
    cdsStockSettlementHREVERSED_UI: TStringField;
    cdsStockSettlementHMODDA: TDateTimeField;
    cdsStockSettlementHMODUI: TStringField;
    cdsStockSettlementHAPPDA: TDateTimeField;
    cdsStockSettlementHAPPUI: TStringField;
    cdsStockSettlementHUNDER4Y: TIntegerField;
    cdsStockSettlementHUDER4YDA: TDateTimeField;
    cdsStockSettlementHNOTES4Y: TStringField;
    cdsStockSettlementHISDEL: TIntegerField;
    cdsStockSettlementHID: TLargeintField;
    cdsStockSettlementHCSID: TLargeintField;
    cdsStockSettlementHSETTLE_CCYCODE: TStringField;
    cdsStockSettlementHCPACCID: TIntegerField;
    cdsStockSettlementHSALDO: TFloatField;
    cdsStockSettlementHSETTLE_MODE: TStringField;
    cdsStockSettlementHACS_PRICE: TFloatField;
    cdsStockSettlementHACS_PERCENT: TFloatField;
    cdsStockSettlementHSETTLE_AMOUNT: TFloatField;
    cdsStockSettlementHSTOCK_SETTLE_MODE: TStringField;
    cdsStockSettlementHqryStockSettlement_D: TDataSetField;
    dsStockSettlementH: TDataSource;
    cdsStockSettleDProcessSSID: TLargeintField;
    cdsStockSettleDProcessSOID: TLargeintField;
    cdsStockSettleDProcessSONO: TStringField;
    cdsStockSettleDProcessSODESC: TStringField;
    cdsStockSettleDProcessTRTYPE: TStringField;
    cdsStockSettleDProcessENTRYDATE: TDateField;
    cdsStockSettleDProcessTRDDATE: TDateField;
    cdsStockSettleDProcessDUEDATE: TDateField;
    cdsStockSettleDProcessSETTLESIDE: TStringField;
    cdsStockSettleDProcessPRICE: TFloatField;
    cdsStockSettleDProcessQTY: TFloatField;
    cdsStockSettleDProcessOUTS_QTY: TFloatField;
    cdsStockSettleDProcessSETTLEDQTY: TFloatField;
    cdsStockSettleDProcessVOUCHERQTY: TFloatField;
    cdsStockSettleDProcessSTAT: TStringField;
    cdsStockSettleDProcessTRADINGTYPE: TStringField;
    cdsStockSettleDProcessSIDE_ACC: TStringField;
    gvwMasterSSID: TcxGridDBBandedColumn;
    gvwMasterSOID: TcxGridDBBandedColumn;
    gvwMasterSONO: TcxGridDBBandedColumn;
    gvwMasterSODESC: TcxGridDBBandedColumn;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLESIDE: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterOUTS_QTY: TcxGridDBBandedColumn;
    gvwMasterSETTLEDQTY: TcxGridDBBandedColumn;
    gvwMasterVOUCHERQTY: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterTRADINGTYPE: TcxGridDBBandedColumn;
    gvwMasterSIDE_ACC: TcxGridDBBandedColumn;
    procedure actSettleExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actSettleUpdate(Sender: TObject);
    procedure actCancelUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure cdsStockSettleDProcessCalcFields(DataSet: TDataSet);
    procedure cdsStockSettleHProcessCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsStockSettlementHACS_PRICEChange(Sender: TField);
    procedure cdsStockSettlementHACS_PERCENTChange(Sender: TField);
    procedure cdsStockSettlementHSETTLE_MODEChange(Sender: TField);
  private
    { Private declarations }
    FChanged: Boolean;

    procedure CalcSettleAmount();
  public
    { Public declarations }
    property Changed: Boolean read FChanged;
    function ViewVoucher(ASingle: Boolean; ASSID: Integer; AACCID: Integer; ASTOCKID: Integer): Boolean;
    function EditVoucher(ASingle: Boolean; ASSID: Integer; AACCID: Integer; ASTOCKID: Integer): Boolean;
  end;

var
  frmStockSettleVoucherProcess: TfrmStockSettleVoucherProcess;

implementation

{$R *.dfm}

uses DataGlobal, FormStockSettleVoucher;

{ TfrmStockSettlemVoucherProcess }

procedure TfrmStockSettleVoucherProcess.actCancelExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to cancel this voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FCHanged := FChanged or dmGlobal.RemoteServer.StockSettleVoucherCancel(cdsStockSettleHProcessSSID.AsLargeInt, sMsg);
    cdsStockSettleHProcess.Refresh;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmStockSettleVoucherProcess.actCancelUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsStockSettleHProcessSTAT.AsString = 'O';
end;

procedure TfrmStockSettleVoucherProcess.actReverseExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to reverse this voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FCHanged := FChanged or dmGlobal.RemoteServer.StockSettleVoucherReverse(cdsStockSettleHProcessSSID.AsLargeInt, sMsg);
    cdsStockSettleHProcess.Refresh;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmStockSettleVoucherProcess.actReverseUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsStockSettleHProcessSTAT.AsString = 'S';
end;

procedure TfrmStockSettleVoucherProcess.actSettleExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to settle this voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if cdsStockSettlementH.State in dsEditModes then
    begin
      cdsStockSettlementH.Post;
      cdsStockSettlementH.ApplyUpdates(-1);
    end;

    FCHanged := FChanged or dmGlobal.RemoteServer.StockSettleVoucherPosting(cdsStockSettleHProcessSSID.AsLargeInt, sMsg);
    cdsStockSettleHProcess.Refresh;
    ShowMessage(sMsg);
  end;
end;

procedure TfrmStockSettleVoucherProcess.actSettleUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsStockSettleHProcessSTAT.AsString = 'O';
end;

procedure TfrmStockSettleVoucherProcess.CalcSettleAmount;
begin
  if cdsStockSettlementHSETTLE_MODE.AsString = 'A' then
  begin
    if (not VarIsNull(cdsStockSettlementHACS_PRICE.AsFloat) and
      not VarIsNull(cdsStockSettlementHACS_PERCENT.AsFloat)) or
      ((cdsStockSettlementHACS_PRICE.AsFloat <> 0) and
      (cdsStockSettlementHACS_PERCENT.AsFloat <> 0))
    then
    begin
      cdsStockSettlementHSETTLE_AMOUNT.AsFloat := cdsStockSettlementHQTY.AsFloat
        * cdsStockSettlementHACS_PRICE.AsFloat * (cdsStockSettlementHACS_PERCENT.AsFloat / 100);
    end;
  end
  else
  begin
    cdsStockSettlementHACS_PRICE.AsFloat     := 0;
    cdsStockSettlementHACS_PERCENT.AsFloat   := 0;
    cdsStockSettlementHSETTLE_AMOUNT.AsFloat := 0;
  end;
end;

procedure TfrmStockSettleVoucherProcess.cdsStockSettleDProcessCalcFields(
  DataSet: TDataSet);
begin
  inherited;
//  if cdsStockSettleDProcessSETTLESIDE.AsString = 'D' then
//  begin
//    cdsStockSettleDProcessPROCESSQTY.AsFloat  := cdsStockSettleDProcessQTY.AsFloat * -1;
//    cdsStockSettleDProcessOUTSTANDQTY.AsFloat := (cdsStockSettleDProcessORIGINAL_QTY.AsFloat - cdsStockSettleDProcessSETTLED_QTY.AsFloat) * -1;
//  end
//  else
//  begin
//    cdsStockSettleDProcessPROCESSQTY.AsFloat  := cdsStockSettleDProcessQTY.AsFloat;
//    cdsStockSettleDProcessOUTSTANDQTY.AsFloat := (cdsStockSettleDProcessORIGINAL_QTY.AsFloat - cdsStockSettleDProcessSETTLED_QTY.AsFloat);
//  end;
end;

procedure TfrmStockSettleVoucherProcess.cdsStockSettleHProcessCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockSettleHProcessDIFF_AMOUNT.AsFloat := Abs(cdsStockSettleHProcessAMOUNT.AsFloat) - Abs(cdsStockSettleHProcessORIG_AMOUNT.AsFloat);

//  if cdsStockSettleHProcessSETTLE_MODE.AsString = 'ACS' then
//  begin
//    cdsStockSettleHProcessSETTLEAMOUNT.AsFloat := cdsStockSettleHProcessQTY.AsFloat * cdsStockSettleHProcessACS_PRICE.AsFloat
//      * (cdsStockSettleHProcessACS_PERCENT.AsFloat / 100);
//  end
//  else
//  begin
//    cdsStockSettleHProcessACS_PRICE.AsFloat     := 0;
//    cdsStockSettleHProcessACS_PERCENT.AsFloat   := 0;
//    cdsStockSettleHProcessSETTLE_AMOUNT.AsFloat := 0;
//  end

end;

procedure TfrmStockSettleVoucherProcess.cdsStockSettlementHACS_PERCENTChange(
  Sender: TField);
begin
  inherited;
  CalcSettleAmount;
end;

procedure TfrmStockSettleVoucherProcess.cdsStockSettlementHACS_PRICEChange(
  Sender: TField);
begin
  inherited;
  CalcSettleAmount;
end;

procedure TfrmStockSettleVoucherProcess.cdsStockSettlementHSETTLE_MODEChange(
  Sender: TField);
var
  iPrice: Double;
begin
  inherited;
  iPrice := dmGlobal.RemoteServer.GetHighPrice(cdsStockSettlementHSTOCKID.AsInteger, 'IDX', cdsStockSettlementHENTRYDATE.AsDateTime
    , cdsStockSettlementHENTRYDATE.AsDateTime);

  cdsStockSettlementHACS_PRICE.AsFloat     := iPrice;
  cdsStockSettlementHACS_PERCENT.AsFloat   := dmGlobal.RemoteServer.GetGlobalParamFloat('019');
  cdsStockSettlementHSETTLE_AMOUNT.AsFloat := cdsStockSettlementHACS_PRICE.AsFloat * (cdsStockSettlementHACS_PERCENT.AsFloat / 100) *
    cdsStockSettlementHQTY.AsFloat;
end;

function TfrmStockSettleVoucherProcess.EditVoucher(ASingle: Boolean; ASSID,
  AACCID, ASTOCKID: Integer): Boolean;
begin
  Result := False;

  frmStockSettleVoucherProcess := TfrmStockSettleVoucherProcess.Create(nil);
  try
    with frmStockSettleVoucherProcess do
    begin
      cdsStockSettleHProcess.Close;
      cdsStockSettleHProcess.Params[0].AsBoolean := ASingle;
      cdsStockSettleHProcess.Params[1].AsInteger := AACCID;
      cdsStockSettleHProcess.Params[2].AsInteger := ASSID;
      cdsStockSettleHProcess.Params[3].AsInteger := ASTOCKID;
      cdsStockSettleHProcess.Open;

      cdsStockSettlementH.Close;
      cdsStockSettlementH.Params[0].AsInteger := ASSID;
      cdsStockSettlementH.Open;

      cdsStockSettlementH.Edit;
      if not cdsStockSettleHProcess.IsEmpty then
      begin
        lcNavLog.Visible := cdsStockSettleHProcess.RecordCount > 1;
        ShowModal;
        Result := Changed;
      end
      Else
      Begin
        ShowMessage('No Voucher Created For This Account!');
      End;
    end;
  finally
    FreeAndNil(frmStockSettleVoucherProcess);
  end;
end;

procedure TfrmStockSettleVoucherProcess.FormShow(Sender: TObject);
begin
  inherited;
  with dmglobal.IntDataLookup do
  begin
    if not cdsLuBoard.Active then
      cdsLuBoard.Open;
  end;

  edSettleMode.Properties.ReadOnly := cdsStockSettleHProcessSTAT.AsString <> 'O';
  edSettleMode.ParentColor         := cdsStockSettleHProcessSTAT.AsString <> 'O';

  edACSPrice.Properties.ReadOnly := cdsStockSettleHProcessSTAT.AsString <> 'O';
  edACSPrice.ParentColor         := cdsStockSettleHProcessSTAT.AsString <> 'O';

  edACSPercent.Properties.ReadOnly := cdsStockSettleHProcessSTAT.AsString <> 'O';
  edACSPercent.ParentColor         := cdsStockSettleHProcessSTAT.AsString <> 'O';
end;

function TfrmStockSettleVoucherProcess.ViewVoucher(ASingle: Boolean; ASSID, AACCID, ASTOCKID: Integer): Boolean;
begin
  Result := False;

  frmStockSettleVoucherProcess := TfrmStockSettleVoucherProcess.Create(nil);
  try
    with frmStockSettleVoucherProcess do
    begin
      cdsStockSettleHProcess.Close;
      cdsStockSettleHProcess.Params[0].AsBoolean := ASingle;
      cdsStockSettleHProcess.Params[1].AsInteger := AACCID;
      cdsStockSettleHProcess.Params[2].AsInteger := ASSID;
      cdsStockSettleHProcess.Params[3].AsInteger := ASTOCKID;
      cdsStockSettleHProcess.Open;

      cdsStockSettlementH.Close;
      cdsStockSettlementH.Params[0].AsInteger := ASSID;
      cdsStockSettlementH.Open;

      if not cdsStockSettleHProcess.IsEmpty then
      begin
        lcNavLog.Visible := cdsStockSettleHProcess.RecordCount > 1;
        ShowModal;
        Result := Changed;
      end
      Else
      Begin
        ShowMessage('No Voucher Created For This Account!');
      End;
    end;
  finally
    FreeAndNil(frmStockSettleVoucherProcess);
  end;
end;

Initialization
  RegisterClass(TfrmStockSettleVoucherProcess);

end.
