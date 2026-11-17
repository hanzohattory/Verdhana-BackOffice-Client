unit FormDealTicket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxPCdxBarPopupMenu, cxPC, cxImageComboBox, cxCheckBox, dxSkinsCore,
  Datasnap.DBClient, Vcl.ExtCtrls, Vcl.DBCtrls, NDatasetContainer, cxButtonEdit,
  Vcl.ActnList, dxLayoutLookAndFeels, dxBarBuiltInMenu, System.Actions,
  dxDateRanges, NDatasetAction, dxScrollbarAnnotations, NClientDataset;

type
  TfrmDealTicket = class(TfrmEditorData)
    dsDealTicketExec: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cbStock: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cbMarket: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    tabExecution: TcxTabSheet;
    tabAllocation: TcxTabSheet;
    grdDealTicketExec: TcxGrid;
    gvwDealTicketExec: TcxGridDBTableView;
    gvwDealTicketExecBOARDID: TcxGridDBColumn;
    gvwDealTicketExecEXQTY: TcxGridDBColumn;
    gvwDealTicketExecEXPRICE: TcxGridDBColumn;
    gvwDealTicketExecEXVALUE: TcxGridDBColumn;
    gvwDealTicketExecEXTIME: TcxGridDBColumn;
    gvwDealTicketExecBROKERCODE: TcxGridDBColumn;
    grdDealTicketExecLevel1: TcxGridLevel;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    edDealQty: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    edAllocQty: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    dsDealTicketAlloc: TDataSource;
    grdDealTicketAlloc: TcxGrid;
    gvwDealTicketAlloc: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    gvwDealTicketAllocACCNAME: TcxGridDBColumn;
    gvwDealTicketAllocAQTY: TcxGridDBColumn;
    gvwDealTicketAllocAPRICE: TcxGridDBColumn;
    gvwDealTicketAllocAVALUE: TcxGridDBColumn;
    gvwDealTicketExecCPACCID: TcxGridDBColumn;
    gvwDealTicketAllocACCID: TcxGridDBColumn;
    gvwDealTicketExecDUECASH: TcxGridDBColumn;
    gvwDealTicketExecDUESTOCK: TcxGridDBColumn;
    txtAccount: TcxDBButtonEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    gvwDealTicketAllocADIFFVALUE: TcxGridDBColumn;
    ActionList1: TActionList;
    actAddNew: TAction;
    gvwDealTicketAllocEXT_REF: TcxGridDBColumn;
    gvwDealTicketAllocCALC_METHOD: TcxGridDBColumn;
    gvwDealTicketAllocCOMM_RATE: TcxGridDBColumn;
    actAccount: TAction;
    gvwDealTicketExecORDSOURCE: TcxGridDBColumn;
    btnEmptyAllocation: TcxButton;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    actChangeCommission: TNAction;
    gvwDealTicketAllocCOMM_ID: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actAddNewExecute(Sender: TObject);
    procedure actAccountExecute(Sender: TObject);
    procedure actChangeCommissionExecute(Sender: TObject);
    procedure actChangeCommissionUpdate(Sender: TObject);
    procedure dsDealTicketAllocDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure cbStockExit(Sender: TObject);
    procedure cbStockEnter(Sender: TObject);
    procedure gvwDealTicketExecInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure btnEmptyAllocationClick(Sender: TObject);
  private
    FMergeCondition: Boolean;
    FFacilitationCondition: Boolean;
    FWarehouseCondition: Boolean;
    FSavedChanges: Boolean;
    FIndex: Integer;
    { Private declarations }
  public
    { Public declarations }
    property MergeCondition: Boolean read FMergeCondition write FMergeCondition;
    property FacilitationCondition: Boolean read FFacilitationCondition write FFacilitationCondition;
    property WarehouseCondition: Boolean read FWarehouseCondition write FWarehouseCondition;
  end;

var
  frmDealTicket: TfrmDealTicket;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTickets, FormLuAccount, DataLookup, cxLookupDBGrid, FormChangeCommissionChannel;

procedure TfrmDealTicket.actAccountExecute(Sender: TObject);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        dsSubject.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('ACCNO').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmDealTicket.actAddNewExecute(Sender: TObject);
begin
  inherited;
  grdDealTicketAlloc.SetFocus;
  dsDealTicketAlloc.DataSet.Append;
end;

procedure TfrmDealTicket.actChangeCommissionExecute(Sender: TObject);
//var
//  iChannel: Integer;
//  i, iAccID, RecIdx: Integer;
//  oDataSet: TDataSet;
begin
  inherited;
//  if MessageDlg('Change Commission channel ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
//    exit;
//
//  iChannel := frmChangeCommissionChannel.ChangeCommission;
//  oDataSet := dsDealTicketAlloc.DataSet;
//
//  for i := 0 to gvwDealTicketAlloc.Controller.SelectedRowCount -1 do
//  begin
//    RecIdx := gvwDealTicketAlloc.Controller.SelectedRecords[i].RecordIndex;
//    gvwDealTicketAlloc.DataController.FocusedRecordIndex := RecIdx;
//
//    oDataSet.Edit;
//    oDataSet.FieldByName('COMM_ID').AsInteger := iChannel;
//    oDataSet.Post;
//  end;
//
// 1 MessageDlg('Change commission has been done !', mtInformation, [mbOk], 0);
end;

procedure TfrmDealTicket.actChangeCommissionUpdate(Sender: TObject);
var
  oDataSet: TDataSet;
begin
  inherited;
  oDataSet := dsSubject.DataSet;

  actChangeCommission.EnablePermission := (oDataSet.FieldByName('AUTO_ALLOC').AsString = '0') and
    (oDataSet.State in dsEditModes);
end;

procedure TfrmDealTicket.btnEmptyAllocationClick(Sender: TObject);
var
  oDataSet: TClientDataSet;
  bReadOnly: Boolean;
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    oDataSet := TClientDataSet(dsDealTicketAlloc.DataSet);

    bReadOnly := oDataSet.ReadOnly;
    Try
      oDataSet.ReadOnly := False;
      while not oDataSet.IsEmpty do
      begin
        oDataSet.Delete;
      end;
    Finally
      oDataSet.ReadOnly := bReadOnly;
    End;
  end;
end;

procedure TfrmDealTicket.btnOKClick(Sender: TObject);
var
  oDatasetDT, oDatasetDTExec, oDatasetDTAlloc: TClientDataset;
  FQty: Int64;
  FPrice: Double;
  sMsg: String;
  i: Integer;
  oField: TField;
  processDateTime: TDateTime;
  sUser: String;
  OldAvgPrice: Double;
  OldID, tempSplitQty, sisaSplitQty: Int64;
  tempQty: Int64;
begin
  oDatasetDT := TClientDataset(dsSubject.DataSet);
  oDatasetDTExec := TClientDataset(dsDealTicketExec.DataSet);
  oDatasetDTAlloc := TClientDataSet(dsDealTicketAlloc.DataSet);

  if not oDatasetDTAlloc.IsEmpty then
  begin
    if oDatasetDTExec.State in dsEditModes then
      oDatasetDTExec.Post;

    if oDatasetDTAlloc.State in dsEditModes then
      oDatasetDTAlloc.Post;

    //Request By Irvan 2015, 11 August --> Change from ">" --> "<>"
    //Request By Bos 2015, 12 August --> Change Again from "<>" --> ">"

    if edAllocQty.DataBinding.Field.AsFloat > edDealQty.DataBinding.Field.AsFloat then
    begin
      dmGlobal.ErrorMessage('Allocation Quantity must be same or less than Deal Quantity!');
      Abort;
    end;

    {
    with TfrmDealTickets(BrowserForm) do
    begin
      if DataContainer.State in [mddsInsert, mddsEdit] then
      begin
        cdsSplitDetailAlloc.Close;
        cdsSplitDetailAlloc.CreateDataSet;

        sMsg := '';
        oDatasetDTAlloc.First;
        while not oDatasetDTAlloc.Eof do
        begin
          if oDatasetDTAlloc.FieldByName('APRICE').AsFloat <> oDatasetDT.FieldByName('ROUNDPRICE').AsFloat then
          begin
            sMsg := sMsg + 'Allocation Price for Account ' + oDatasetDTAlloc.FieldByName('ACCNAME').AsString +
              ' different with Average Price. ' + #10#13;

            cdsSplitDetailAlloc.Append;
            for i := 0 to oDatasetDTAlloc.FieldCount - 1 do
            begin
              oField := cdsSplitDetailAlloc.FindField(oDatasetDTAlloc.Fields[i].FieldName);
              if (oField <> nil) and (oField.FieldKind = fkData) then
                oField.Value := oDatasetDTAlloc.Fields[i].Value;
            end;
            cdsSplitDetailAlloc.Post;
          end;

          oDatasetDTAlloc.Next;
        end;

        if sMsg <> '' then
        begin
          sMsg := sMsg + 'This Deal Ticket will be split Automatically, Do you want to continue?';
          if MessageDlg(sMsg, mtConfirmation, mbYesNo, 0) <> mrYes then
          begin
            Abort;
          end;

          cdsDealTicketTemp.Close;
          cdsDealTicketTemp.CreateDataSet;

          cdsDealTicketTemp.Append;
          for i := 0 to cdsDealTicket.FieldCount - 1 do
          begin
            oField := cdsDealTicketTemp.FindField(cdsDealTicket.Fields[i].FieldName);
            if (oField <> nil) and (oField.FieldKind = fkData) then
              oField.Value := cdsDealTicket.Fields[i].Value;
          end;
          cdsDealTicketTemp.Post;
        end;

        OldID := cdsDealTicketDEALTICKETID.AsLargeInt;

        cdsSplitDetailAlloc.First;
        while not cdsSplitDetailAlloc.Eof do
        begin
          tempSplitQty := cdsSplitDetailAllocAQTY.AsLargeInt;
          sisaSplitQty := cdsSplitDetailAllocAQTY.AsLargeInt;

          cdsDealTicketExecTemp.Close;
          cdsDealTicketExecTemp.CreateDataSet;

          if cdsDealTicket.Locate('DEALTICKETID', OldID, []) then
          begin
            if cdsDealTicketAlloc.Locate('SEQID', cdsSplitDetailAllocSEQID.Value, []) then
              cdsDealTicketAlloc.Delete;

            cdsDealTicketExec.Last;

            while (not cdsDealTicketExec.Bof) and (sisaSplitQty > 0) do
            begin
              if (cdsDealTicketExecEXQTY.AsLargeInt <= sisaSplitQty) then
              begin
                cdsDealTicketExecTemp.Append;
                for i := 0 to cdsDealTicketExec.FieldCount - 1 do
                begin
                  oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[i].FieldName);
                  if (oField <> nil) and (oField.FieldKind = fkData) then
                    oField.Value := cdsDealTicketExec.Fields[i].Value;
                end;
                cdsDealTicketExecTemp.Post;

                sisaSplitQty := sisaSplitQty - cdsDealTicketExecEXQTY.AsLargeInt;

                cdsDealTicketExec.Delete;
                cdsDealTicketExec.Last;
              end
              else
              begin
                cdsDealTicketExecTemp.Append;
                for i := 0 to cdsDealTicketExec.FieldCount - 1 do
                begin
                  oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[i].FieldName);
                  if (oField <> nil) and (oField.FieldKind = fkData) then
                    oField.Value := cdsDealTicketExec.Fields[i].Value;
                end;
                cdsDealTicketExecTempEXQTY.AsLargeInt := sisaSplitQty;
                cdsDealTicketExecTempEXVALUE.AsFloat := cdsDealTicketExecTempEXQTY.AsLargeInt * cdsDealTicketExecTempEXPRICE.AsFloat;
                cdsDealTicketExecTemp.Post;

                cdsDealTicketExec.Edit;
                cdsDealTicketExecEXQTY.AsLargeInt := cdsDealTicketExecEXQTY.AsLargeInt - sisaSplitQty;
                cdsDealTicketExec.Post;

                sisaSplitQty := 0;
              end;
            end;
          end;

          cdsDealTicketDEALTICKETID.ReadOnly := False;

          cdsDealTicket.Append;
          cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
//          cdsDealTicketDEALTICKETCODE.AsString := Format('%.20d', [cdsDealTicketDEALTICKETID.Value]);
          cdsDealTicketDEALTICKETDATE.AsDateTime := cdsDealTicketTemp.FieldByName('DEALTICKETDATE').AsDateTime;
          cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
              cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'DEALTICKETCODE');
          cdsDealTicketACCID.AsInteger := cdsDealTicketTemp.FieldByName('ACCID').AsInteger;
          cdsDealTicketACCNO.AsString := cdsDealTicketTemp.FieldByName('ACCNO').AsString;
          cdsDealTicketACCNAME.AsString := cdsDealTicketTemp.FieldByName('ACCNAME').AsString;
          cdsDealTicketSTOCKID.AsLargeInt := cdsDealTicketTemp.FieldByName('STOCKID').AsLargeInt;
          cdsDealTicketSTOCKCODE.AsString := cdsDealTicketTemp.FieldByName('STOCKCODE').AsString;
          cdsDealTicketSTOCKNAME.AsString := cdsDealTicketTemp.FieldByName('STOCKNAME').AsString;
          cdsDealTicketBS.AsString := cdsDealTicketTemp.FieldByName('BS').AsString;
          cdsDealTicketMARKETCODE.AsString := cdsDealTicketTemp.FieldByName('MARKETCODE').AsString;
          cdsDealTicketCCYCODE.AsString := cdsDealTicketTemp.FieldByName('CCYCODE').AsString;
          cdsDealTicketCHANNELCODE.AsString := cdsDealTicketTemp.FieldByName('CHANNELCODE').AsString;
          cdsDealTicketOMNIBUSTRADE.AsString := cdsDealTicketTemp.FieldByName('OMNIBUSTRADE').AsString;
          cdsDealTicketSALESID.AsLargeInt := cdsDealTicketTemp.FieldByName('SALESID').AsLargeInt;
          cdsDealTicketDEALERID.AsLargeInt := cdsDealTicketTemp.FieldByName('DEALERID').AsLargeInt;
          cdsDealTicketDUESTOCK.AsInteger := cdsDealTicketTemp.FieldByName('DUESTOCK').AsInteger;
          cdsDealTicketDUECASH.AsInteger := cdsDealTicketTemp.FieldByName('DUECASH').AsInteger;
          cdsDealTicketCALC_METHOD.AsString := cdsDealTicketTemp.FieldByName('CALC_METHOD').AsString;
          cdsDealTicketCOMM_RATE.AsFloat := cdsDealTicketTemp.FieldByName('COMM_RATE').AsFloat;
          cdsDealTicketMODDA.AsDateTime := processDateTime;
          cdsDealTicketMODUI.AsString := sUser;
          cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
          cdsDealTicketSTAT.AsString := 'O';
          cdsDealTicketSTATUS.AsString := 'S';//Split Deal Ticket
          cdsDealTicketOLD_DEALTICKETID.AsLargeInt := OldID;
          cdsDealTicket.Post;

          cdsDealTicketExecTemp.First;
          while not cdsDealTicketExecTemp.Eof do
          begin
            cdsDealTicketExec.Append;
            cdsDealTicketExecBOARDID.AsLargeInt := cdsDealTicketExecTemp.FieldByName('BOARDID').AsLargeInt;
            cdsDealTicketExecBROKERCODE.AsString := cdsDealTicketExecTemp.FieldByName('BROKERCODE').AsString;
            cdsDealTicketExecEXQTY.AsLargeInt := cdsDealTicketExecTemp.FieldByName('EXQTY').AsLargeInt;
            cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketExecTemp.FieldByName('EXPRICE').AsFloat;
            cdsDealTicketExecEXTIME.AsDateTime := cdsDealTicketExecTemp.FieldByName('EXTIME').AsDateTime;
            cdsDealTicketExecTRDID.AsString := cdsDealTicketExecTemp.FieldByName('TRDID').AsString;
            cdsDealTicketExecCPACCID.AsInteger := cdsDealTicketExecTemp.FieldByName('CPACCID').AsInteger;
            cdsDealTicketExecDUECASH.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUECASH').AsDateTime;
            cdsDealTicketExecDUESTOCK.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUESTOCK').AsDateTime;
            cdsDealTicketExecCPTYPE.AsString := cdsDealTicketExecTemp.FieldByName('CPTYPE').AsString;
            cdsDealTicketExecMODDA.AsDateTime := processDateTime;
            cdsDealTicketExecMODUI.AsString := sUser;
            cdsDealTicketExecID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET_EXECS');
            cdsDealTicketExec.Post;

            cdsDealTicketExecTemp.Next;
          end;

          if cdsDealTicketDEALPRICE.AsFloat <> cdsSplitDetailAllocAPRICE.AsFloat then
          begin
            with dmGlobal.IntDataLookup do
            begin
              if cdsLuTradingAccount.Locate('ACCID', cdsDealTicketACCID.AsInteger, []) then
              begin
                cdsLuAccountByEntity.Close;
                cdsLuAccountByEntity.Params[0].AsInteger := cdsLuTradingAccountENTTID.AsInteger;
                cdsLuAccountByEntity.Open;
              end;

              if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
              begin
                if not cdsLuMarketFACILITATION_BOARD.IsNull then
                begin
                  if cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'F', []) then
                  begin
                    cdsDealTicketExec.Append;
                    cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                    cdsDealTicketExecEXQTY.AsLargeInt := cdsSplitDetailAllocAQTY.AsLargeInt * -1;
                    cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketDEALPRICE.AsFloat;
                    cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                    cdsDealTicketExec.Post;

                    cdsDealTicketExec.Append;
                    cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                    cdsDealTicketExecEXQTY.AsLargeInt := cdsSplitDetailAllocAQTY.AsLargeInt;
                    cdsDealTicketExecEXPRICE.AsFloat := cdsSplitDetailAllocAPRICE.AsFloat;
                    cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                    cdsDealTicketExec.Post;

                    if not cdsFacilitationTrade.Active then
                    begin
                      cdsFacilitationTrade.Close;
                      cdsFacilitationTrade.Params[0].AsInteger := -1;
                      cdsFacilitationTrade.Open;
                    end;

                    cdsFacilitationTrade.Append;
                    cdsFacilitationTradeFACILITATIONID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_FACILITATION_TRADE');
                    cdsFacilitationTradeFACILITATIONCODE.AsString := cdsDealTicketDEALTICKETCODE.AsString;
                    cdsFacilitationTradeFACILITATIONDESC.AsString := 'Facilitated for trading ' +
                      cdsDealTicketDEALTICKETCODE.AsString + ' @ ' + FormatDateTime('dd MMM yyyy', cdsDealTicketDEALTICKETDATE.AsDateTime);
                    cdsFacilitationTradeDEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
                    cdsFacilitationTradeSEQID.AsInteger := cdsDealTicketExecSEQID.AsInteger;
                    cdsFacilitationTradeDEALTICKETDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
                    cdsFacilitationTradeACCID.AsInteger := cdsDealTicketACCID.AsInteger;
                    cdsFacilitationTradeACCNO.AsString := cdsDealTicketACCNO.AsString;
                    cdsFacilitationTradeACCNAME.AsString := cdsDealTicketACCNAME.AsString;
                    cdsFacilitationTradeSTOCKID.AsLargeInt := cdsDealTicketSTOCKID.AsLargeInt;
                    cdsFacilitationTradeSTOCKCODE.AsString := cdsDealTicketSTOCKCODE.AsString;
                    cdsFacilitationTradeSTOCKNAME.AsString := cdsDealTicketSTOCKNAME.AsString;
                    cdsFacilitationTradeBS.AsString := cdsDealTicketBS.AsString;
                    cdsFacilitationTradeMARKETCODE.AsString := cdsDealTicketMARKETCODE.AsString;
                    cdsFacilitationTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
                    cdsFacilitationTradeQTY.AsLargeInt := cdsDealTicketExecEXQTY.AsLargeInt;
                    cdsFacilitationTradePRICE.AsFloat := cdsDealTicketExecEXPRICE.AsFloat;
                    cdsFacilitationTradeVALUE.AsFloat := cdsDealTicketExecEXVALUE.AsFloat;
                    cdsFacilitationTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
                    cdsFacilitationTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
                    cdsFacilitationTradeLISTED_DATE.AsDateTime := processDateTime;
                    cdsFacilitationTradeSTATUS.AsString := 'O'; //Open
                    cdsFacilitationTradeMODDA.AsDateTime := processDateTime;
                    cdsFacilitationTradeMODUI.AsString := dmGlobal.UserID;
                    cdsFacilitationTradeISDEL.AsInteger := 0;
                    cdsFacilitationTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_FACILITATION_TRADE');
                    cdsFacilitationTrade.Post;
                  end;
                end;
              end;
            end;
          end;

          cdsDealTicketAlloc.Append;
          cdsDealTicketAllocACCID.AsInteger := cdsSplitDetailAllocACCID.AsInteger;
          cdsDealTicketAllocAQTY.AsLargeInt := cdsSplitDetailAllocAQTY.AsLargeInt;
          cdsDealTicketAllocAPRICE.AsFloat := cdsSplitDetailAllocAPRICE.AsFloat;
          cdsDealTicketAllocAVALUE.AsFloat := cdsSplitDetailAllocAVALUE.AsFloat;
          cdsDealTicketAllocMODDA.AsDateTime := processDateTime;
          cdsDealTicketAllocMODUI.AsString := sUser;
          cdsDealTicketAllocID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET_ALLOC');
          cdsDealTicketAlloc.Post;


          cdsSplitDetailAlloc.Next;
        end;

        cdsDealTicket.Locate('DEALTICKETID', OldID, []);
      end;
    end;

    }
  end;

  {
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuTradingAccount.Locate('ACCID', oDatasetDT.FieldByName('ACCID').Value, [])) and
      (not oDatasetDT.ReadOnly) then
    begin
      if not cdsLuTradingAccountAVGPRICEDEC.IsNull then
      begin
        if dmGlobal.CountDecimalPoint(oDatasetDT.FieldByName('DEALPRICE').AsFloat) > cdsLuTradingAccountAVGPRICEDEC.AsInteger then
        begin
          cdsLuAccountByEntity.Close;
          cdsLuAccountByEntity.Params[0].AsInteger := cdsLuTradingAccountENTTID.AsInteger;
          cdsLuAccountByEntity.Open;

          if not cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'F', []) then
          begin
            MessageDlg('This Account don''t have Facilitation Account.' + #13 +
              'Please create Facilitation Account for this related Account first!', mtWarning, [mbOK], 0);
          end
          else
          begin
            if cdsLuMarket.Locate('MARKETCODE', oDatasetDT.FieldByName('MARKETCODE').Value, []) then
            begin
              oDatasetDTExec.Filter := 'BOARDID = ' + cdsLuMarketFACILITATION_BOARD.AsString;
              oDatasetDTExec.Filtered := True;

              if oDatasetDTExec.IsEmpty then
              begin
                FQty := oDatasetDT.FieldByName('DEALQTY').AsLargeInt;
                FPrice := oDatasetDT.FieldByName('DEALPRICE').AsFloat;

                oDatasetDTExec.Append;
                oDatasetDTExec.FieldByName('BOARDID').AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                oDatasetDTExec.FieldByName('EXQTY').AsLargeInt := FQty * -1;
                oDatasetDTExec.FieldByName('EXPRICE').AsFloat := FPrice;
                oDatasetDTExec.FieldByName('CPACCID').AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                oDatasetDTExec.Post;

                oDatasetDTExec.Append;
                oDatasetDTExec.FieldByName('BOARDID').AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                oDatasetDTExec.FieldByName('EXQTY').AsLargeInt := FQty;
                oDatasetDTExec.FieldByName('EXPRICE').AsFloat := dmGlobal.RoundFloatNumber(FPrice, cdsLuTradingAccountAVGPRICEDEC.AsInteger);
                oDatasetDTExec.FieldByName('CPACCID').AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                oDatasetDTExec.Post;
              end;

              oDatasetDTExec.Filtered := False;
              oDatasetDTExec.Filter := EmptyStr;
            end;

          end;

        end;
      end;

    end;

  end;
  }

  inherited;
end;

procedure TfrmDealTicket.cbStockEnter(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbStock.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.AddItem(LGrid.Columns[1], foEqual, cbMarket.EditValue, VarToStr(cbMarket.EditValue));
    if dsSubject.DataSet.FieldByName('PRDCODE').AsString = 'MG' then
    begin
      Root.AddItem(LGrid.Columns[3], foEqual, '1', '1');
    end;
    Active := True;
  end;
end;

procedure TfrmDealTicket.cbStockExit(Sender: TObject);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  LGrid := cbStock.ActiveProperties.Grid;
  with LGrid.DataController.Filter do
  begin
    Root.Clear;
    Active := False;
  end;
end;

procedure TfrmDealTicket.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('ACCNO').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmDealTicket.dsDealTicketAllocDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FSavedChanges := True;
end;

procedure TfrmDealTicket.FormDestroy(Sender: TObject);
var
  oCds: TClientDataSet;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrument.Filtered := False;
  end;

  //For Auto Allocation Deal Ticket Data, User Can''t input allocation data
  if dsSubject.DataSet.FieldByName('AUTO_ALLOC').AsString = '1' then
  begin
    oCds := TClientDataSet(dsDealTicketAlloc.DataSet);
    oCds.ReadOnly := False;
  end;
end;

procedure TfrmDealTicket.FormKeyPress(Sender: TObject; var Key: Char);
var
  iYesNo: Integer;
begin
  inherited;
  if Key = #27 then
  begin
    if (dsDealTicketAlloc.DataSet.State in [dsInsert, dsEdit]) or (FSavedChanges) then
    begin
      iYesNo := MessageDlg('Save changes ?', mtConfirmation, [mbYes, mbNo], 0);

      if iYesNo = mrYes then
        btnOK.Click
      else if iYesNo = mrNo then
        ModalResult := mrCancel;
    end
    else
      ModalResult := mrCancel;
  end;
end;

procedure TfrmDealTicket.FormShow(Sender: TObject);
var
  oCds: TClientDataSet;
begin
  inherited;
//  TcxLookupComboBoxProperties(cbAccount.RepositoryItem.Properties).ListSource.Name;

  if MergeCondition then
    StatusBar.Panels[0].Text := 'Merge';

  if FacilitationCondition then
    StatusBar.Panels[0].Text := 'Facilitation Trade';

  if WarehouseCondition then
  begin
    StatusBar.Panels[0].Text := 'Warehouse Trade';
    dsSubject.DataSet.FieldByName('ACCNO').ReadOnly := true;
    dsSubject.DataSet.FieldByName('ACCNAME').ReadOnly := true;

    gvwDealTicketAlloc.OptionsData.Appending := false;
    gvwDealTicketAlloc.OptionsData.Deleting := false;
    gvwDealTicketAlloc.OptionsData.Editing := false;
    gvwDealTicketAlloc.OptionsData.Inserting := false;
  end;

  FSavedChanges := False;

  //For Auto Allocation Deal Ticket Data, User Can''t input allocation data

  if dsSubject.DataSet.FieldByName('AUTO_ALLOC').AsString = '1' then
  begin
//    oCds := TClientDataSet(dsDealTicketAlloc.DataSet);
//    oCds.ReadOnly := True;
//    grdDealTicketAlloc.Enabled := False;
    gvwDealTicketAlloc.OptionsData.Appending := False;
    gvwDealTicketAlloc.OptionsData.CancelOnExit := False;
    gvwDealTicketAlloc.OptionsData.Deleting := False;
    gvwDealTicketAlloc.OptionsData.DeletingConfirmation := False;
    gvwDealTicketAlloc.OptionsData.Editing := False;
  end;
end;

procedure TfrmDealTicket.gvwDealTicketExecInitEdit(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
var
  LGrid: TcxCustomLookupDBGrid;
begin
  inherited;
  if AItem = gvwDealTicketExecCPACCID then
  begin
    if gvwDealTicketExec.DataController.DataSource.DataSet.FieldByName('CPTYPE').AsString = 'BRK' then
    Begin
      lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
      with LGrid.DataController.Filter do
      begin
        Root.AddItem(LGrid.Columns[3], foEqual, 'B', 'B');
        Active := True;
      end;
    End;
  end
  else if AItem = gvwDealTicketExecBOARDID then
  begin
    lGrid := TcxLookupComboBox(AEdit).ActiveProperties.Grid;
    with LGrid.DataController.Filter do
    begin
      Root.AddItem(LGrid.Columns[1], foEqual, dsSubject.DataSet.FieldByName('MARKETCODE').AsString, dsSubject.DataSet.FieldByName('MARKETCODE').AsString);
      Active := True;
    end;
  end;

end;

Initialization
  RegisterClass(TfrmDealTicket);

end.
