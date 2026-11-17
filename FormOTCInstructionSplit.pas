unit FormOTCInstructionSplit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxImageComboBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Datasnap.DBClient, NClientDataset, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxClasses,
  cxGridLevel, cxGrid, cxDBData, cxGridDBBandedTableView,
  cxEditRepositoryItems, cxCurrencyEdit, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxLayoutLookAndFeels, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmOTCInstructionSplit = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsOTCSplit: TNClientDataset;
    dsOTCSplit: TDataSource;
    gvwOTCSplit: TcxGridDBBandedTableView;
    cxEditRepository1: TcxEditRepository;
    ImageDeliver: TcxEditRepositoryImageComboBoxItem;
    ImageReceive: TcxEditRepositoryImageComboBoxItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsOTCSplitCUSTODY_INSTRID: TLargeintField;
    cdsOTCSplitCUSTODY_EXTREF: TStringField;
    cdsOTCSplitACCID: TLargeintField;
    cdsOTCSplitACCNO: TStringField;
    cdsOTCSplitACCNAME: TStringField;
    cdsOTCSplitVALUEDATE: TDateField;
    cdsOTCSplitTRDDATE: TDateField;
    cdsOTCSplitSETTLEDATE: TDateField;
    cdsOTCSplitSETTLE_SIDE: TStringField;
    cdsOTCSplitINSTRUCTION_TYPE: TStringField;
    cdsOTCSplitPARTY_CODE: TStringField;
    cdsOTCSplitPARTY_ACC: TStringField;
    cdsOTCSplitCOUNTER_CODE: TStringField;
    cdsOTCSplitCOUNTER_ACC: TStringField;
    cdsOTCSplitSECURITYCODE_TYPE: TStringField;
    cdsOTCSplitSTOCKID: TLargeintField;
    cdsOTCSplitSTOCKCODE: TStringField;
    cdsOTCSplitQTY: TFloatField;
    cdsOTCSplitCCY: TStringField;
    cdsOTCSplitORIGINAL_AMT: TFloatField;
    cdsOTCSplitSETTLE_AMOUNT: TFloatField;
    cdsOTCSplitREMARKS: TStringField;
    cdsOTCSplitPURPOSE: TStringField;
    cdsOTCSplitTRADE_REF: TStringField;
    cdsOTCSplitSETTLE_REASON: TStringField;
    cdsOTCSplitBENEFICIARYCODE: TStringField;
    cdsOTCSplitBENEFICIARYACC: TStringField;
    cdsOTCSplitCORPACT_TYPE: TStringField;
    cdsOTCSplitLINKTYPE: TStringField;
    cdsOTCSplitLINKID: TLargeintField;
    cdsOTCSplitCONFIRM_BY: TStringField;
    cdsOTCSplitCREATE_FILE: TStringField;
    cdsOTCSplitCOUNT_CREATE_FILE: TIntegerField;
    cdsOTCSplitCBEST_UPLOAD: TStringField;
    cdsOTCSplitSTAT: TStringField;
    cdsOTCSplitMODDA: TDateTimeField;
    cdsOTCSplitMODUI: TStringField;
    cdsOTCSplitAPPDA: TDateTimeField;
    cdsOTCSplitAPPUI: TStringField;
    cdsOTCSplitUNDER4Y: TIntegerField;
    cdsOTCSplitUNDER4YDA: TDateTimeField;
    cdsOTCSplitNOTES4Y: TStringField;
    cdsOTCSplitISDEL: TIntegerField;
    cdsOTCSplitID: TLargeintField;
    gvwOTCSplitCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwOTCSplitCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwOTCSplitACCID: TcxGridDBBandedColumn;
    gvwOTCSplitACCNO: TcxGridDBBandedColumn;
    gvwOTCSplitACCNAME: TcxGridDBBandedColumn;
    gvwOTCSplitVALUEDATE: TcxGridDBBandedColumn;
    gvwOTCSplitTRDDATE: TcxGridDBBandedColumn;
    gvwOTCSplitSETTLEDATE: TcxGridDBBandedColumn;
    gvwOTCSplitSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwOTCSplitINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwOTCSplitPARTY_CODE: TcxGridDBBandedColumn;
    gvwOTCSplitPARTY_ACC: TcxGridDBBandedColumn;
    gvwOTCSplitCOUNTER_CODE: TcxGridDBBandedColumn;
    gvwOTCSplitCOUNTER_ACC: TcxGridDBBandedColumn;
    gvwOTCSplitSECURITYCODE_TYPE: TcxGridDBBandedColumn;
    gvwOTCSplitSTOCKID: TcxGridDBBandedColumn;
    gvwOTCSplitSTOCKCODE: TcxGridDBBandedColumn;
    gvwOTCSplitQTY: TcxGridDBBandedColumn;
    gvwOTCSplitCCY: TcxGridDBBandedColumn;
    gvwOTCSplitORIGINAL_AMT: TcxGridDBBandedColumn;
    gvwOTCSplitSETTLE_AMOUNT: TcxGridDBBandedColumn;
    gvwOTCSplitREMARKS: TcxGridDBBandedColumn;
    gvwOTCSplitPURPOSE: TcxGridDBBandedColumn;
    gvwOTCSplitTRADE_REF: TcxGridDBBandedColumn;
    gvwOTCSplitSETTLE_REASON: TcxGridDBBandedColumn;
    gvwOTCSplitBENEFICIARYCODE: TcxGridDBBandedColumn;
    gvwOTCSplitBENEFICIARYACC: TcxGridDBBandedColumn;
    gvwOTCSplitCORPACT_TYPE: TcxGridDBBandedColumn;
    gvwOTCSplitLINKTYPE: TcxGridDBBandedColumn;
    gvwOTCSplitLINKID: TcxGridDBBandedColumn;
    gvwOTCSplitCONFIRM_BY: TcxGridDBBandedColumn;
    gvwOTCSplitCREATE_FILE: TcxGridDBBandedColumn;
    gvwOTCSplitCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwOTCSplitCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwOTCSplitSTAT: TcxGridDBBandedColumn;
    cdsOTCSplitCUSTODY_DESC: TStringField;
    gvwOTCSplitCUSTODY_DESC: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    AddSplit1: TMenuItem;
    EditSplit1: TMenuItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Quantity: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dsOTCInstruction: TDataSource;
    cdsCustodyLink: TNClientDataset;
    cdsCustodyLinkCUSTODY_INSTRID: TLargeintField;
    cdsCustodyLinkSIID: TLargeintField;
    cdsCustodyLinkQTY: TFloatField;
    cdsCustodyLinkSETTLE_AMT: TFloatField;
    cdsCustodyLinkTmp: TNClientDataset;
    cdsCustodyLinkTmpCUSTODY_INSTRID: TLargeintField;
    cdsCustodyLinkTmpSIID: TLargeintField;
    cdsCustodyLinkTmpQTY: TFloatField;
    cdsCustodyLinkTmpSETTLE_AMT: TFloatField;
    cdsOTCSplitPARTY_ID: TLargeintField;
    cdsOTCSplitCOUNTER_ID: TLargeintField;
    cdsOTCSplitISMULTICCY: TStringField;
    cdsOTCSplitFOREIGN_CCYCODE: TStringField;
    cdsOTCSplitFOREIGN_EXRATE: TFloatField;
    cdsOTCSplitFOREIGN_SETTTLEAMT: TFloatField;
    cdsOTCSplitSID_NO: TStringField;
    cdsOTCSplitKSEI_RECON: TStringField;
    cdsOTCSplitSALDO: TFloatField;
    cdsOTCSplitSALDO_TYPE: TStringField;
    cdsOTCSplitMATCH: TStringField;
    cdsOTCSplitEXCHANGE: TStringField;
    cdsOTCSplitCONFIRM_WITH: TStringField;
    gvwOTCSplitSALDO_TYPE: TcxGridDBBandedColumn;
    gvwOTCSplitSALDO: TcxGridDBBandedColumn;
    cdsOTCSplitCLIENT_ACCID: TLargeintField;
    cdsOTCSplitBS: TStringField;
    cdsOTCSplitNEW_CUSTODY_INSTRID: TLargeintField;
    cdsOTCSplitDHKID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsOTCSplitNewRecord(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsOTCSplitBeforePost(DataSet: TDataSet);
    procedure AddSplit1Click(Sender: TObject);
    procedure EditSplit1Click(Sender: TObject);
  private
    { Private declarations }
    FTmpQty: Double;
    FOriginalQty: Double;
    FOriginalAmt: Double;
    fResultQty,
    fResultAmt: Double;
  public
    { Public declarations }
  end;

var
  frmOTCInstructionSplit: TfrmOTCInstructionSplit;

implementation

{$R *.dfm}

uses FormOTCInstruction, DataLookup, DataGlobal, FormSplitOTCInstr;

procedure TfrmOTCInstructionSplit.AddSplit1Click(Sender: TObject);
var
  oForm: TForm;
  DSumQty,
  DSumAmt: Double;
begin
  inherited;
  if varisnull(gvwOTCSplit.DataController.Summary.FooterSummaryValues[0]) then
    DSumQty := 0
  else
    dSumQty := gvwOTCSplit.DataController.Summary.FooterSummaryValues[0];

  if varisnull(gvwOTCSplit.DataController.Summary.FooterSummaryValues[2]) then
    DSumAmt := 0
  else
    DSumAmt := gvwOTCSplit.DataController.Summary.FooterSummaryValues[2];

  cdsOTCSplit.Append;
  oForm := TfrmSplitOTCInstr.Create(nil);
  TfrmSplitOTCInstr(oForm).OriginalQTy := dsSubject.DataSet.FieldByName('QTY').AsFloat - DSumQty;
  TfrmSplitOTCInstr(oForm).OriginalAmt := dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat - DSumAmt;
  if oForm.ShowModal = mrOk then
  begin
    cdsOTCSplitORIGINAL_AMT.AsFloat := TfrmSplitOTCInstr(oForm).SettleAmt;
    cdsOTCSplit.Post;

    FOriginalQty := dsSubject.DataSet.FieldByName('QTY').AsFloat - gvwOTCSplit.DataController.Summary.FooterSummaryValues[0];
    FOriginalAmt := dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat - gvwOTCSplit.DataController.Summary.FooterSummaryValues[2];
  end
  else
    cdsOTCSplit.Cancel;
  oForm.Free;
end;

procedure TfrmOTCInstructionSplit.btnOKClick(Sender: TObject);
var
  i, sLinkID : Integer;
  dTotalQty, dTotalAmt, dDiffAmt: double;
  bContinue: Boolean;
  dCustInstr: Int64;
  sMessage: string;
  sStringData: string;
begin
    cdsOTCSplit.First;
  dDiffAmt  := 0;
  bContinue := false;
  sStringData := '';

  if gvwOTCSplit.DataController.Summary.FooterSummaryValues[0] < dsOTCInstruction.DataSet.FieldByName('QTY').AsFloat then
    MessageDlg('Original quantity can not bigger than summary split quantity', mtError, [mbOk], 0)
  else if gvwOTCSplit.DataController.Summary.FooterSummaryValues[1] < dsOTCInstruction.DataSet.FieldByName('AMOUNT').AsFloat then
  begin
    dDiffAmt := dsOTCInstruction.DataSet.FieldByName('AMOUNT').AsFloat - gvwOTCSplit.DataController.Summary.FooterSummaryValues[1];
    if MessageDlg('Original amount less than summary split amount'+#13+'Difference Amount '+FormatFloat('#,##0', dDiffAmt), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      bContinue := True;
  end
  else
    bContinue := True;

  cdsOTCSplit.DisableControls;
  cdsOTCSplit.First;
  while not cdsOTCSplit.Eof do
  begin
    if (cdsOTCSplitSALDO.AsFloat <> 0) and (VarIsEmpty(cdsOTCSplitSALDO_TYPE.AsString)) then
    begin
      bContinue := False;
      cdsOTCSplit.Last;
      MessageDlg('Saldo type can not empty', mtError, [mbOk], 0);
    end
    else
      cdsOTCSplit.Next;
  end;
  cdsOTCSplit.First;
  cdsOTCSplit.EnableControls;

  if bContinue then
  begin
//    dsSubject.DataSet.Edit;
//    dsSubject.DataSet.FieldByName('STAT').AsString := 'C';
//    dsSubject.DataSet.Post;

    while not cdsOTCSplit.Eof do
    begin
      sStringData := sStringData+'#'+cdsOTCSplitQTY.AsString+';'+cdsOTCSplitORIGINAL_AMT.AsString+';'+cdsOTCSplitCCY.AsString+';'+
                     cdsOTCSplitSETTLE_AMOUNT.AsString+';'+cdsOTCSplitSALDO.AsString+';'+cdsOTCSplitSALDO_TYPE.AsString+';'+cdsOTCSplitISMULTICCY.AsString+';'+cdsOTCSplitFOREIGN_CCYCODE.AsString+';'+
                     cdsOTCSplitFOREIGN_EXRATE.AsString+';'+cdsOTCSplitFOREIGN_SETTTLEAMT.AsString+';'+cdsOTCSplitINSTRUCTION_TYPE.AsString+';'+cdsOTCSplitCOUNTER_CODE.AsString+';'+
                     cdsOTCSplitCOUNTER_CODE.AsString+';'+cdsOTCSplitREMARKS.AsString+';';

      cdsOTCSplit.Next;
    end;
    sMessage := dmGlobal.RemoteServer.OTCForSplit(dsSubject.DataSet.FieldByName('CUSTODY_INSTRID').AsLargeInt, sStringData);
    MessageDlg(sMessage, mtInformation, [mbOk], 0);
//    cdsCustodyLink.ApplyUpdates(-1);
    inherited;
  end;
end;

procedure TfrmOTCInstructionSplit.cdsOTCSplitBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsOTCSplit.State in [dsInsert] then
  begin
//    cdsOTCSplitORIGINAL_AMT.AsFloat       := cdsOTCSplitSETTLE_AMOUNT.AsFloat;
    cdsOTCSplitCUSTODY_INSTRID.AsLargeInt := dsSubject.DataSet.FieldByName('CUSTODY_INSTRID').AsLargeInt;
  end;

//  FOriginalQty := FOriginalQty - cdsOTCSplitQTY.AsFloat;
//  FOriginalAmt := FOriginalAmt - cdsOTCSplitSETTLE_AMOUNT.AsFloat;

//  dsSubject.DataSet.Edit;
//  dsSubject.DataSet.FieldByName('QTY').AsFloat           := fResultQty;
//  dsSubject.DataSet.FieldByName('SETTLE_AMOUNT').AsFloat := fResultAmt;
//  dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat  := fResultAmt;
//  dsSubject.DataSet.Post;

//  cdsCustodyLinkTmp.First;
//  while not cdsCustodyLinkTmp.Eof do
//  begin
//    cdsCustodyLink.Append;
//    cdsCustodyLinkCUSTODY_INSTRID.AsLargeInt := cdsOTCSplitCUSTODY_INSTRID.AsLargeInt;
//    cdsCustodyLinkSIID.AsLargeInt            := cdsCustodyLinkTmpSIID.AsLargeInt;
//    cdsCustodyLinkQTY.AsFloat                := Round(cdsCustodyLinkTmpQTY.AsFloat * cdsOTCSplitQTY.AsFloat / dsOTCInstruction.DataSet.FieldByName('QTY').AsFloat);
//    cdsCustodyLinkSETTLE_AMT.AsFloat         := Round(cdsCustodyLinkTmpSETTLE_AMT.AsFloat * cdsOTCSplitSETTLE_AMOUNT.AsFloat / dsOTCInstruction.DataSet.FieldByName('AMOUNT').AsFloat);
//    cdsCustodyLink.Post;
//
//    cdsCustodyLinkTmp.Next;
//  end;
end;

procedure TfrmOTCInstructionSplit.cdsOTCSplitNewRecord(DataSet: TDataSet);
var
  i, iCustInstrID: Integer;
  sString: string;
  dTotalAmount, dTotalQty: Double;
  sInstructioMode: string;
  dtTrans: TDateTime;
  dtDue: TDateTime;
  sSeqName: string;
  sRefNo: string;
  sStockCode: string;
begin
  inherited;

  if VarIsNull(gvwOTCSplit.DataController.Summary.FooterSummaryValues[0]) then
    dTotalQty := 0
  else
    dTotalQty := gvwOTCSplit.DataController.Summary.FooterSummaryValues[0];

  for i := 0 to dsSubject.DataSet.FieldCount -1 do
    cdsOTCSplit.Fields[i].Value := dsSubject.DataSet.Fields[i].Value;

  cdsOTCSplitQTY.AsFloat           := FOriginalQty;
  cdsOTCSplitSETTLE_AMOUNT.AsFloat := FOriginalAmt;
  cdsOTCSplitORIGINAL_AMT.AsFloat  := FOriginalAmt;

  iCustInstrID := dmGlobal.RemoteServer.GetSeq('TBL_B_CUSTODY_INSTR');

  sInstructioMode := dsOTCInstruction.DataSet.FieldByName('INSTRUCTION').AsString;
  dtTrans         := dsOTCInstruction.DataSet.FieldByName('TRDDATE').AsDateTime;
  dtDue           := dsOTCInstruction.DataSet.FieldByName('DUEDATE').AsDateTime;
  sSeqName        := 'TBL_B_CUSTODY_INSTRUCTION';
  sRefNo          := '';
  sStockCode      := dsOTCInstruction.DataSet.FieldByName('STOCKCODE').AsString;;

  cdsOTCSplitCUSTODY_INSTRID.AsInteger := iCustInstrID;
  cdsOTCSplitCUSTODY_EXTREF.AsString   := dmGlobal.RemoteServer.CustodyExternalRef(sInstructioMode, dtTrans, dtDue, sSeqName, sRefNo, sStockCode);
//  cdsOTCSplitCUSTODY_EXTREF.AsString   := dmGlobal.RemoteServer.GenerateCustdInstrNo(cdsOTCSplitTRDDATE.AsDateTime, cdsOTCSplitINSTRUCTION_TYPE.AsString, 'TBL_B_CUSTODY_INSTRUCTION');
end;

procedure TfrmOTCInstructionSplit.EditSplit1Click(Sender: TObject);
var
  oForm: TForm;

  DSumQty,
  DSumAmt: Double;
begin
  inherited;
  if varisnull(gvwOTCSplit.DataController.Summary.FooterSummaryValues[0]) then
    DSumQty := 0
  else
    dSumQty := gvwOTCSplit.DataController.Summary.FooterSummaryValues[0];

  if varisnull(gvwOTCSplit.DataController.Summary.FooterSummaryValues[2]) then
    DSumAmt := 0
  else
    DSumAmt := gvwOTCSplit.DataController.Summary.FooterSummaryValues[2];

  cdsOTCSplit.Edit;

  oForm := TfrmSplitOTCInstr.Create(nil);

  TfrmSplitOTCInstr(oForm).OriginalQTy := dsSubject.DataSet.FieldByName('QTY').AsFloat - DSumQty + cdsOTCSplitQTY.AsFloat;
  TfrmSplitOTCInstr(oForm).OriginalAmt := dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat - DSumAmt + cdsOTCSplitSETTLE_AMOUNT.AsFloat;
  if oForm.ShowModal = mrOk then
  begin
    cdsOTCSplitORIGINAL_AMT.AsFloat := TfrmSplitOTCInstr(oForm).SettleAmt;
    cdsOTCSplit.Post;

    FOriginalQty := dsSubject.DataSet.FieldByName('QTY').AsFloat - gvwOTCSplit.DataController.Summary.FooterSummaryValues[0];
    FOriginalAmt := dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat - gvwOTCSplit.DataController.Summary.FooterSummaryValues[2];
  end
  else
    cdsOTCSplit.Cancel;
  oForm.Free;
end;

procedure TfrmOTCInstructionSplit.FormCreate(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    cdsOTCSplit.Close;
    cdsOTCSplit.CreateDataSet;
  end;

//  cdsCustodyLinkTmp.Close;
//  cdsCustodyLinkTmp.CreateDataSet;
end;

procedure TfrmOTCInstructionSplit.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  FOriginalQty := dsSubject.DataSet.FieldByName('QTY').AsFloat;
  FOriginalAmt := dsSubject.DataSet.FieldByName('ORIGINAL_AMT').AsFloat;

  if dsSubject.DataSet.FieldByName('SETTLE_SIDE').AsString = 'D' then
    gvwOTCSplitINSTRUCTION_TYPE.RepositoryItem := ImageDeliver
  else
    gvwOTCSplitINSTRUCTION_TYPE.RepositoryItem := ImageReceive;

//  cdsCustodyLink.Close;
//  cdsCustodyLink.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CUSTODY_INSTRID').AsInteger;
//  cdsCustodyLink.Open;
//
//  cdsCustodyLink.First;
//  while not cdsCustodyLink.Eof do
//  begin
//    cdsCustodyLinkTmp.Append;
//    for i := 0 to cdsCustodyLink.FieldCount -1 do
//      cdsCustodyLinkTmp.Fields[i].Value := cdsCustodyLink.Fields[i].Value;
//    cdsCustodyLinkTmp.Post;
//
//    cdsCustodyLink.Next;
//  end;
end;

end.
