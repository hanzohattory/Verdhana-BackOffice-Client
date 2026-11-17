unit FormConSI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ActnList, Datasnap.DBClient,
  NClientDataset, NDatasetAction, Vcl.Menus, System.Actions;

type
  TfrmConSI = class(TForm)
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsConSI: TDataSource;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterSITYPE: TcxGridDBBandedColumn;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwMasterNETTYPE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterBANK_CHARGES: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_AMT: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLEDDATE: TcxGridDBBandedColumn;
    gvwMasterSI_DESC: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterOLD_SIID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERAMT: TcxGridDBBandedColumn;
    gvwMasterVOUCHERQTY: TcxGridDBBandedColumn;
    gvwMasterNO_INTRC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterSETTLED_QTY: TcxGridDBBandedColumn;
    gvwMasterTRF_PRVT_BANK: TcxGridDBBandedColumn;
    gvwMasterBANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterCP_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterUSE_ACS: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNAME: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNAME: TcxGridDBBandedColumn;
    aclConSI: TActionList;
    cdsSettlementInstruction: TNClientDataset;
    cdsSettlementInstructionSIID: TLargeintField;
    cdsSettlementInstructionSINO: TStringField;
    cdsSettlementInstructionVALUEDATE: TDateField;
    cdsSettlementInstructionSITYPE: TStringField;
    cdsSettlementInstructionCASH_STOCK: TStringField;
    cdsSettlementInstructionSETTLE_SIDE: TStringField;
    cdsSettlementInstructionINSTRUCTION_TYPE: TStringField;
    cdsSettlementInstructionNETTYPE: TStringField;
    cdsSettlementInstructionACCID: TLargeintField;
    cdsSettlementInstructionACCNO: TStringField;
    cdsSettlementInstructionACCNAME: TStringField;
    cdsSettlementInstructionTRANSFER_MODE: TStringField;
    cdsSettlementInstructionBASE_CCYCODE: TStringField;
    cdsSettlementInstructionBASE_NETAMT: TFloatField;
    cdsSettlementInstructionBANK_CHARGES: TFloatField;
    cdsSettlementInstructionSETTLE_CCYCODE: TStringField;
    cdsSettlementInstructionSETTLE_EXRATE: TFloatField;
    cdsSettlementInstructionSETTLE_NETAMT: TFloatField;
    cdsSettlementInstructionSETTLED_AMT: TFloatField;
    cdsSettlementInstructionSTOCKID: TIntegerField;
    cdsSettlementInstructionSTOCKCODE: TStringField;
    cdsSettlementInstructionQTY: TFloatField;
    cdsSettlementInstructionTRDDATE: TDateField;
    cdsSettlementInstructionDUEDATE: TDateField;
    cdsSettlementInstructionSETTLEDDATE: TDateField;
    cdsSettlementInstructionSTAT: TStringField;
    cdsSettlementInstructionOLD_SIID: TLargeintField;
    cdsSettlementInstructionMODDA: TDateTimeField;
    cdsSettlementInstructionMODUI: TStringField;
    cdsSettlementInstructionAPPDA: TDateTimeField;
    cdsSettlementInstructionAPPUI: TStringField;
    cdsSettlementInstructionUNDER4Y: TIntegerField;
    cdsSettlementInstructionUNDER4YDA: TDateTimeField;
    cdsSettlementInstructionNOTES4Y: TStringField;
    cdsSettlementInstructionISDEL: TIntegerField;
    cdsSettlementInstructionID: TLargeintField;
    cdsSettlementInstructionVOUCHERAMT: TFloatField;
    cdsSettlementInstructionVOUCHERQTY: TFloatField;
    cdsSettlementInstructionCCYRATE_TMP: TFloatField;
    cdsSettlementInstructionENTRYDATE: TDateField;
    cdsSettlementInstructionSI_DESC: TStringField;
    cdsSettlementInstructionNO_INTRC: TStringField;
    cdsSettlementInstructionSETTLED_QTY: TFloatField;
    cdsSettlementInstructionTRF_PRVT_BANK: TStringField;
    cdsSettlementInstructionBANKACCBRANCH: TStringField;
    cdsSettlementInstructionCP_BANKACCBRANCH: TStringField;
    cdsSettlementInstructionACCSOPID: TLargeintField;
    cdsSettlementInstructionUSE_ACS: TStringField;
    cdsSettlementInstructionSOURCE_ACCBANKID: TLargeintField;
    cdsSettlementInstructionSOURCE_ACCBANKCODE: TStringField;
    cdsSettlementInstructionSOURCE_ACCBANKNO: TStringField;
    cdsSettlementInstructionSOURCE_ACCBANKNAME: TStringField;
    cdsSettlementInstructionTARGET_ACCBANKID: TLargeintField;
    cdsSettlementInstructionTARGET_ACCBANKCODE: TStringField;
    cdsSettlementInstructionTARGET_ACCBANKNO: TStringField;
    cdsSettlementInstructionTARGET_ACCBANKNAME: TStringField;
    cdsSettleInstrSplit: TNClientDataset;
    cdsSettleInstrSplitSIID: TLargeintField;
    cdsSettleInstrSplitSINO: TStringField;
    cdsSettleInstrSplitVALUEDATE: TDateField;
    cdsSettleInstrSplitSITYPE: TStringField;
    cdsSettleInstrSplitCASH_STOCK: TStringField;
    cdsSettleInstrSplitSETTLE_SIDE: TStringField;
    cdsSettleInstrSplitINSTRUCTION_TYPE: TStringField;
    cdsSettleInstrSplitNETTYPE: TStringField;
    cdsSettleInstrSplitACCID: TLargeintField;
    cdsSettleInstrSplitACCNO: TStringField;
    cdsSettleInstrSplitACCNAME: TStringField;
    cdsSettleInstrSplitTRANSFER_MODE: TStringField;
    cdsSettleInstrSplitBASE_CCYCODE: TStringField;
    cdsSettleInstrSplitBASE_NETAMT: TFloatField;
    cdsSettleInstrSplitBANK_CHARGES: TFloatField;
    cdsSettleInstrSplitSETTLE_CCYCODE: TStringField;
    cdsSettleInstrSplitSETTLE_EXRATE: TFloatField;
    cdsSettleInstrSplitSETTLE_NETAMT: TFloatField;
    cdsSettleInstrSplitSETTLED_AMT: TFloatField;
    cdsSettleInstrSplitSTOCKID: TIntegerField;
    cdsSettleInstrSplitSTOCKCODE: TStringField;
    cdsSettleInstrSplitQTY: TFloatField;
    cdsSettleInstrSplitTRDDATE: TDateField;
    cdsSettleInstrSplitDUEDATE: TDateField;
    cdsSettleInstrSplitSETTLEDDATE: TDateField;
    cdsSettleInstrSplitSTAT: TStringField;
    cdsSettleInstrSplitOLD_SIID: TLargeintField;
    cdsSettleInstrSplitMODDA: TDateTimeField;
    cdsSettleInstrSplitMODUI: TStringField;
    cdsSettleInstrSplitAPPDA: TDateTimeField;
    cdsSettleInstrSplitAPPUI: TStringField;
    cdsSettleInstrSplitUNDER4Y: TIntegerField;
    cdsSettleInstrSplitUNDER4YDA: TDateTimeField;
    cdsSettleInstrSplitNOTES4Y: TStringField;
    cdsSettleInstrSplitISDEL: TIntegerField;
    cdsSettleInstrSplitID: TLargeintField;
    cdsSettleInstrSplitVOUCHERAMT: TFloatField;
    cdsSettleInstrSplitVOUCHERQTY: TFloatField;
    cdsSettleInstrSplitCCYRATE_TMP: TFloatField;
    cdsSettleInstrSplitENTRYDATE: TDateField;
    cdsSettleInstrSplitSI_DESC: TStringField;
    cdsSettleInstrSplitNO_INTRC: TStringField;
    cdsSettleInstrSplitSETTLED_QTY: TFloatField;
    cdsSettleInstrSplitTRF_PRVT_BANK: TStringField;
    cdsSettleInstrSplitBANKACCBRANCH: TStringField;
    cdsSettleInstrSplitCP_BANKACCBRANCH: TStringField;
    cdsSettleInstrSplitACCSOPID: TLargeintField;
    cdsSettleInstrSplitUSE_ACS: TStringField;
    cdsSettleInstrSplitSOURCE_ACCBANKID: TLargeintField;
    cdsSettleInstrSplitSOURCE_ACCBANKCODE: TStringField;
    cdsSettleInstrSplitSOURCE_ACCBANKNO: TStringField;
    cdsSettleInstrSplitSOURCE_ACCBANKNAME: TStringField;
    cdsSettleInstrSplitTARGET_ACCBANKID: TLargeintField;
    cdsSettleInstrSplitTARGET_ACCBANKCODE: TStringField;
    cdsSettleInstrSplitTARGET_ACCBANKNO: TStringField;
    cdsSettleInstrSplitTARGET_ACCBANKNAME: TStringField;
    actSplit: TNAction;
    popConSI: TPopupMenu;
    Split1: TMenuItem;
    cdsConSettleLink: TNClientDataset;
    cdsConSettleLinkSIID: TLargeintField;
    cdsConSettleLinkLINKID: TLargeintField;
    cdsConSettleLinkLINKNO: TStringField;
    cdsConSettleLinkLINKSEQID: TIntegerField;
    cdsConSettleLinkLINKTYPE: TStringField;
    cdsConSettleLinkSTAT: TStringField;
    cdsConSettleLinkMODDA: TDateTimeField;
    cdsConSettleLinkMODUI: TStringField;
    cdsConSettleLinkAPPDA: TDateTimeField;
    cdsConSettleLinkAPPUI: TStringField;
    cdsConSettleLinkUNDER4Y: TIntegerField;
    cdsConSettleLinkUNDER4YDA: TDateTimeField;
    cdsConSettleLinkNOTES4Y: TStringField;
    cdsConSettleLinkISDEL: TIntegerField;
    cdsConSettleLinkID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure actSplitExecute(Sender: TObject);
    procedure cdsSettleInstrSplitNewRecord(DataSet: TDataSet);
    procedure cdsSettleInstrSplitSOURCE_ACCBANKIDChange(Sender: TField);
    procedure cdsSettleInstrSplitTARGET_ACCBANKIDChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConSI: TfrmConSI;

implementation

{$R *.dfm}

uses FormContracts, DataGlobal, FormSplitSettleInstr;

procedure TfrmConSI.actSplitExecute(Sender: TObject);
var
  oForm: TfrmSplitSettleInstr;
  ProcessDateTime: TDateTime;
  OldID: Int64;
  oField: TField;
  i: Integer;
begin
  inherited;
  cdsSettlementInstruction.Close;
  cdsSettlementInstruction.Params[0].AsInteger := dsConSI.DataSet.FieldByName('SIID').AsInteger;
  cdsSettlementInstruction.Open;

  cdsSettleInstrSplit.Close;
  cdsSettleInstrSplit.CreateDataSet;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankAccount.Close;
    cdsLuBankAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankAccount.Open;

    cdsLuBankByAccount.Close;
    cdsLuBankByAccount.Params[0].AsInteger := cdsSettlementInstructionACCID.AsInteger;
    cdsLuBankByAccount.Open;
  end;

  oForm := TfrmSplitSettleInstr.Create(nil);
  Try
    if oForm.ShowModal = mrOk then
    begin
      if not cdsSettleInstrSplit.IsEmpty then
      begin
        ProcessDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
        OldID := cdsSettlementInstructionSIID.AsLargeInt;

        cdsSettlementInstruction.Edit;
        cdsSettlementInstructionSTAT.AsString := 'C';
        cdsSettlementInstructionMODDA.AsDateTime := ProcessDateTime;
        cdsSettlementInstructionMODUI.AsString := dmGlobal.UserID;
        cdsSettlementInstruction.Post;

        cdsSettleInstrSplit.First;
        while not cdsSettleInstrSplit.Eof do
        begin
          cdsSettlementInstruction.Append;

          for i := 0 to cdsSettlementInstruction.FieldCount - 1 do
          begin
            oField := cdsSettleInstrSplit.FindField(cdsSettlementInstruction.Fields[i].FieldName);
            if oField <> nil then
            begin
              cdsSettlementInstruction.Fields[i].Value := oField.Value;
            end;
          end;

          cdsSettlementInstructionSIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_SETTLE_INSTR');
          cdsSettlementInstructionSTAT.AsString := 'O';
          cdsSettlementInstructionMODDA.AsDateTime := ProcessDateTime;
          cdsSettlementInstructionMODUI.AsString := dmGlobal.UserID;
          cdsSettlementInstructionOLD_SIID.AsLargeInt := OldID;

          cdsSettlementInstruction.Post;

          cdsConSettleLink.Append;
          cdsConSettleLinkSIID.AsLargeInt := cdsSettlementInstructionSIID.AsLargeInt;
          cdsConSettleLinkLINKID.AsLargeInt := cdsConSettleLink.Params[0].AsLargeInt;
          cdsConSettleLinkLINKTYPE.AsString := 'CONID';
          cdsConSettleLinkSTAT.AsString := 'O';
          cdsConSettleLinkMODDA.AsDateTime := ProcessDateTime;
          cdsConSettleLinkMODUI.AsString := dmGlobal.UserID;
          cdsConSettleLink.Post;

          cdsSettleInstrSplit.Next;
        end;

        if cdsSettlementInstruction.ApplyUpdates(0) = 0 then
        begin
          cdsConSettleLink.ApplyUpdates(-1);

          dsConSI.DataSet.Close;
          dsConSI.DataSet.Open;
        end;

      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmConSI.cdsSettleInstrSplitNewRecord(DataSet: TDataSet);
var
  oField: TField;
  i: Integer;
begin
  for i := 0 to cdsSettleInstrSplit.FieldCount - 1 do
  begin
    oField := cdsSettlementInstruction.FindField(cdsSettleInstrSplit.Fields[i].FieldName);
    if (oField <> nil) then
    begin
      cdsSettleInstrSplit.Fields[i].Value := oField.Value;
    end;
  end;

end;

procedure TfrmConSI.cdsSettleInstrSplitSOURCE_ACCBANKIDChange(Sender: TField);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankByAccount.Locate('ACCBANKID', cdsSettleInstrSplitSOURCE_ACCBANKID.Value, []) then
    begin
      Sender.Tag := 1;
      cdsSettleInstrSplitSOURCE_ACCBANKCODE.AsString := cdsLuBankByAccountBNCODE.AsString;
      cdsSettleInstrSplitSOURCE_ACCBANKNO.AsString := cdsLuBankByAccountBANKACCNO.AsString;
      cdsSettleInstrSplitSOURCE_ACCBANKNAME.AsString := cdsLuBankByAccountBANKACCNAME.AsString;
      Sender.Tag := 0;
    end;
  end;
end;

procedure TfrmConSI.cdsSettleInstrSplitTARGET_ACCBANKIDChange(Sender: TField);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankAccount.Locate('ACCBANKID', cdsSettleInstrSplitTARGET_ACCBANKID.Value, []) then
    begin
      Sender.Tag := 1;
      cdsSettleInstrSplitTARGET_ACCBANKCODE.AsString := cdsLuBankAccountBNCODE.AsString;
      cdsSettleInstrSplitTARGET_ACCBANKNO.AsString := cdsLuBankAccountBANKACCNO.AsString;
      cdsSettleInstrSplitTARGET_ACCBANKNAME.AsString := cdsLuBankAccountBANKACCNAME.AsString;
      Sender.Tag := 0;
    end;
  end;
end;

procedure TfrmConSI.FormShow(Sender: TObject);
begin
  gvwMaster.ApplyBestFit();
end;

end.
