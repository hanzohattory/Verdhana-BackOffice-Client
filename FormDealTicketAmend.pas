unit FormDealTicketAmend;

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
  NClientDataset, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmDealTicketAmend = class(TfrmEditorData)
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
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
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
    dxLayoutControl1Group11: TdxLayoutGroup;
    ActionList1: TActionList;
    actAddNew: TAction;
    actAccount: TAction;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cdsDealTicket: TNClientDataset;
    cdsDealTicketDEALTICKETID: TLargeintField;
    cdsDealTicketDEALTICKETCODE: TStringField;
    cdsDealTicketDEALTICKETDATE: TDateField;
    cdsDealTicketACCNO: TStringField;
    cdsDealTicketACCNAME: TStringField;
    cdsDealTicketSTOCKID: TLargeintField;
    cdsDealTicketSTOCKCODE: TStringField;
    cdsDealTicketSTOCKNAME: TStringField;
    cdsDealTicketBS: TStringField;
    cdsDealTicketMARKETCODE: TStringField;
    cdsDealTicketCCYCODE: TStringField;
    cdsDealTicketCHANNELCODE: TStringField;
    cdsDealTicketOMNIBUSTRADE: TStringField;
    cdsDealTicketDEALQTY: TLargeintField;
    cdsDealTicketDEALPRICE: TFloatField;
    cdsDealTicketDEALVALUE: TFloatField;
    cdsDealTicketALLOCQTY: TLargeintField;
    cdsDealTicketSALESID: TLargeintField;
    cdsDealTicketDEALERID: TLargeintField;
    cdsDealTicketDUESTOCK: TIntegerField;
    cdsDealTicketPOSTED: TStringField;
    cdsDealTicketMODDA: TDateTimeField;
    cdsDealTicketMODUI: TStringField;
    cdsDealTicketAPPDA: TDateTimeField;
    cdsDealTicketAPPUI: TStringField;
    cdsDealTicketDUECASH: TIntegerField;
    cdsDealTicketISDEL: TIntegerField;
    cdsDealTicketID: TLargeintField;
    cdsDealTicketqryDealTicketExec: TDataSetField;
    cdsDealTicketqryDealTicketAlloc: TDataSetField;
    cdsDealTicketACCID: TIntegerField;
    cdsDealTicketDAYTRADE: TStringField;
    cdsDealTicketCONID: TLargeintField;
    cdsDealTicketSTAT: TStringField;
    cdsDealTicketCDUEDATE: TDateField;
    cdsDealTicketSDUEDATE: TDateField;
    cdsDealTicketSTATUS: TStringField;
    cdsDealTicketOLD_DEALTICKETID: TLargeintField;
    cdsDealTicketCALC_METHOD: TStringField;
    cdsDealTicketCOMM_RATE: TFloatField;
    cdsDealTicketROUNDPRICE: TFloatField;
    cdsDealTicketROUNDVALUE: TFloatField;
    cdsDealTicketDIFFVALUE: TFloatField;
    cdsDealTicketACCSOPID: TLargeintField;
    cdsDealTicketAUTO_ALLOC: TStringField;
    cdsDealTicketSETTLE_CCYCODE: TStringField;
    cdsDealTicketDCCYAMT: TFloatField;
    cdsDealTicketCNNO: TStringField;
    cdsDealTicketRVSD: TStringField;
    cdsDealTicketCXLD: TStringField;
    cdsDealTicketRVSD_DTID: TIntegerField;
    cdsDealTicketRVSDDATE: TDateTimeField;
    cdsDealTicketRVS: TStringField;
    cdsDealTicketRVS_STS: TStringField;
    cdsDealTicketEXTERNALID: TStringField;
    cdsDealTicketSALES_BRANCHID: TLargeintField;
    cdsDealTicketISOMG: TStringField;
    cdsDealTicketLASTDEALPRICECHANGED: TFloatField;
    cdsDealTicketPRDCODE: TStringField;
    cdsDealTicketExec: TNClientDataset;
    cdsDealTicketExecDEALTICKETID: TLargeintField;
    cdsDealTicketExecSEQID: TIntegerField;
    cdsDealTicketExecBOARDID: TLargeintField;
    cdsDealTicketExecBROKERCODE: TStringField;
    cdsDealTicketExecEXQTY: TLargeintField;
    cdsDealTicketExecEXPRICE: TFloatField;
    cdsDealTicketExecEXVALUE: TFloatField;
    cdsDealTicketExecEXTIME: TTimeField;
    cdsDealTicketExecTRDID: TStringField;
    cdsDealTicketExecMODDA: TDateTimeField;
    cdsDealTicketExecMODUI: TStringField;
    cdsDealTicketExecAPPDA: TDateTimeField;
    cdsDealTicketExecAPPUI: TStringField;
    cdsDealTicketExecISDEL: TIntegerField;
    cdsDealTicketExecID: TLargeintField;
    cdsDealTicketExecCPACCID: TIntegerField;
    cdsDealTicketExecDUECASH: TDateTimeField;
    cdsDealTicketExecDUESTOCK: TDateTimeField;
    cdsDealTicketExecCPTYPE: TStringField;
    cdsDealTicketExecORDSOURCE: TStringField;
    cdsDealTicketExecORDID: TStringField;
    cxPageControl1: TcxPageControl;
    tabExecution: TcxTabSheet;
    grdDealTicketExec: TcxGrid;
    gvwDealTicketExec: TcxGridDBTableView;
    gvwDealTicketExecBOARDID: TcxGridDBColumn;
    gvwDealTicketExecEXQTY: TcxGridDBColumn;
    gvwDealTicketExecEXPRICE: TcxGridDBColumn;
    gvwDealTicketExecEXVALUE: TcxGridDBColumn;
    gvwDealTicketExecEXTIME: TcxGridDBColumn;
    gvwDealTicketExecBROKERCODE: TcxGridDBColumn;
    gvwDealTicketExecCPACCID: TcxGridDBColumn;
    gvwDealTicketExecDUESTOCK: TcxGridDBColumn;
    gvwDealTicketExecDUECASH: TcxGridDBColumn;
    gvwDealTicketExecORDSOURCE: TcxGridDBColumn;
    grdDealTicketExecLevel1: TcxGridLevel;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsDealTicketTmp: TNClientDataset;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    StringField3: TStringField;
    LargeintField2: TLargeintField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    LargeintField3: TLargeintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    LargeintField6: TLargeintField;
    IntegerField1: TIntegerField;
    StringField11: TStringField;
    DateTimeField1: TDateTimeField;
    StringField12: TStringField;
    DateTimeField2: TDateTimeField;
    StringField13: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    LargeintField7: TLargeintField;
    IntegerField4: TIntegerField;
    StringField14: TStringField;
    LargeintField8: TLargeintField;
    StringField15: TStringField;
    DateField2: TDateField;
    DateField3: TDateField;
    StringField16: TStringField;
    LargeintField9: TLargeintField;
    StringField17: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    LargeintField10: TLargeintField;
    StringField18: TStringField;
    StringField19: TStringField;
    FloatField7: TFloatField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField5: TIntegerField;
    DateTimeField3: TDateTimeField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    LargeintField11: TLargeintField;
    StringField26: TStringField;
    FloatField8: TFloatField;
    StringField27: TStringField;
    cdsDealTicketExecTmp: TNClientDataset;
    LargeintField12: TLargeintField;
    IntegerField6: TIntegerField;
    LargeintField13: TLargeintField;
    StringField28: TStringField;
    LargeintField14: TLargeintField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    TimeField1: TTimeField;
    StringField29: TStringField;
    DateTimeField4: TDateTimeField;
    StringField30: TStringField;
    DateTimeField5: TDateTimeField;
    StringField31: TStringField;
    IntegerField7: TIntegerField;
    LargeintField15: TLargeintField;
    IntegerField8: TIntegerField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    cdsDealTicketORIG_DTID: TLargeintField;
    cdsDealTicketAlloc: TNClientDataset;
    cdsDealTicketAllocDEALTICKETID: TLargeintField;
    cdsDealTicketAllocSEQID: TIntegerField;
    cdsDealTicketAllocACCNAME: TStringField;
    cdsDealTicketAllocAQTY: TLargeintField;
    cdsDealTicketAllocAPRICE: TFloatField;
    cdsDealTicketAllocAVALUE: TFloatField;
    cdsDealTicketAllocMODDA: TDateTimeField;
    cdsDealTicketAllocMODUI: TStringField;
    cdsDealTicketAllocAPPDA: TDateTimeField;
    cdsDealTicketAllocAPPUI: TStringField;
    cdsDealTicketAllocISDEL: TIntegerField;
    cdsDealTicketAllocID: TLargeintField;
    cdsDealTicketAllocACCID: TIntegerField;
    cdsDealTicketAllocADIFFVALUE: TFloatField;
    cdsDealTicketAllocEXT_REF: TStringField;
    cdsDealTicketAllocACCSOPID: TLargeintField;
    cdsDealTicketAllocCCY: TStringField;
    cdsDealTicketAllocCALC_METHOD: TStringField;
    cdsDealTicketAllocCOMM_RATE: TFloatField;
    cdsDealTicketAllocACCNO: TStringField;
    cdsDealTicketAllocTmp: TNClientDataset;
    cdsDealTicketAllocTmpDEALTICKETID: TLargeintField;
    cdsDealTicketAllocTmpSEQID: TIntegerField;
    cdsDealTicketAllocTmpACCNAME: TStringField;
    cdsDealTicketAllocTmpAQTY: TLargeintField;
    cdsDealTicketAllocTmpAPRICE: TFloatField;
    cdsDealTicketAllocTmpAVALUE: TFloatField;
    cdsDealTicketAllocTmpMODDA: TDateTimeField;
    cdsDealTicketAllocTmpMODUI: TStringField;
    cdsDealTicketAllocTmpAPPDA: TDateTimeField;
    cdsDealTicketAllocTmpAPPUI: TStringField;
    cdsDealTicketAllocTmpISDEL: TIntegerField;
    cdsDealTicketAllocTmpID: TLargeintField;
    cdsDealTicketAllocTmpACCID: TIntegerField;
    cdsDealTicketAllocTmpADIFFVALUE: TFloatField;
    cdsDealTicketAllocTmpEXT_REF: TStringField;
    cdsDealTicketAllocTmpACCSOPID: TLargeintField;
    cdsDealTicketAllocTmpCCY: TStringField;
    cdsDealTicketAllocTmpCALC_METHOD: TStringField;
    cdsDealTicketAllocTmpCOMM_RATE: TFloatField;
    cdsDealTicketAllocTmpACCNO: TStringField;
    cdsDealTicketCPBROKER: TStringField;
    cdsDealTicketTmpCPBROKER: TStringField;
    cdsDealTicketCPACCID: TLargeintField;
    cdsDealTicketTmpCPACCID: TLargeintField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cdsDealTicketCOMM_ID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actAccountExecute(Sender: TObject);
    procedure dsDealTicketAllocDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure cbStockExit(Sender: TObject);
    procedure cbStockEnter(Sender: TObject);
    procedure gvwDealTicketExecInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure btnEmptyAllocationClick(Sender: TObject);
    procedure cdsDealTicketAfterOpen(DataSet: TDataSet);
  private
    FMergeCondition: Boolean;
    FFacilitationCondition: Boolean;
    FWarehouseCondition: Boolean;
    FSavedChanges: Boolean;
    FIndex: Integer;
    FAccID: Integer;
    FOldAllocQty: Int64;
    { Private declarations }
  public
    { Public declarations }
    property MergeCondition: Boolean read FMergeCondition write FMergeCondition;
    property FacilitationCondition: Boolean read FFacilitationCondition write FFacilitationCondition;
    property WarehouseCondition: Boolean read FWarehouseCondition write FWarehouseCondition;
  end;

var
  frmDealTicketAmend: TfrmDealTicketAmend;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount, DataLookup, cxLookupDBGrid;

procedure TfrmDealTicketAmend.actAccountExecute(Sender: TObject);
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

procedure TfrmDealTicketAmend.btnEmptyAllocationClick(Sender: TObject);
var
  oDataSet: TClientDataSet;
  bReadOnly: Boolean;
begin
  inherited;

end;

procedure TfrmDealTicketAmend.btnOKClick(Sender: TObject);
var
  oDatasetDT, oDatasetDTExec: TClientDataset;
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
  iNotNG: Integer;
  iBoardNGID: integer;
begin
  oDatasetDT := TClientDataset(dsSubject.DataSet);
  oDatasetDTExec := TClientDataset(dsDealTicketExec.DataSet);

  if oDatasetDT.ChangeCount > 0 then
  begin
    cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(dmGlobal.RemoteServer.GetTransDate, 'DT', 'TBL_B_DEALTICKET');
    cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');

    if (cdsDealTicketDUESTOCK.AsInteger < 2) or (cdsDealTicketDUECASH.AsInteger < 2) then
    begin
      if not dmGlobal.IntDataLookup.cdsLuBoard.Active then
        dmGlobal.IntDataLookup.cdsLuBoard.Open;

      if dmGlobal.IntDataLookup.cdsLuBoard.Locate('BOARDCODE', 'NG', []) then
        iBoardNGID := dmGlobal.IntDataLookup.cdsLuBoardBOARDID.AsInteger;

      iNotNG := 0;

      cdsDealTicketExec.First;
      while not cdsDealTicketExec.Eof do
      begin
        if cdsDealTicketExecBOARDID.AsInteger <> iBoardNGID then
          Inc(iNotNG);
        cdsDealTicketExec.Next;
      end;

      if iNotNG > 0 then
        MessageDlg('There is no board Nego can be changed to T+1', mtError, [mbOk], 0)
      else
      begin
        if cdsDealTicketDUESTOCK.AsInteger = 0 then
          cdsDealTicketSDUEDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime
        else
          cdsDealTicketSDUEDATE.AsDateTime := dmGlobal.RemoteServer.GetNextTradingDate(cdsDealTicketDEALTICKETDATE.AsDateTime, cdsDealTicketDUESTOCK.AsInteger);

        if cdsDealTicketDUECASH.AsInteger = 0 then
          cdsDealTicketCDUEDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime
        else
          cdsDealTicketCDUEDATE.AsDateTime := dmGlobal.RemoteServer.GetNextTradingDate(cdsDealTicketDEALTICKETDATE.AsDateTime, cdsDealTicketDUECASH.AsInteger);

        cdsDealTicketExec.DisableControls;
        cdsDealTicketExec.First;
        while not cdsDealTicketExec.Eof do
        begin
          if not (cdsDealTicketExec.State in dsEditModes) then
            cdsDealTicketExec.Edit;

          cdsDealTicketExecDUESTOCK.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
          cdsDealTicketExecDUECASH.AsDateTime  := cdsDealTicketCDUEDATE.AsDateTime;

          cdsDealTicketExec.Next;
        end;

        cdsDealTicketExec.EnableControls;
      end;
    end;

    cdsDealTicket.Post;
  end;

  inherited;
end;

procedure TfrmDealTicketAmend.cbStockEnter(Sender: TObject);
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

procedure TfrmDealTicketAmend.cbStockExit(Sender: TObject);
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

procedure TfrmDealTicketAmend.cdsDealTicketAfterOpen(DataSet: TDataSet);
var
  oField: TField;
  i: Integer;
  DTID: Integer;
  DTNO: String;
  ORIG_DTID : Integer;
begin
  inherited;
  if cdsDealTicket.IsEmpty then
    Exit;

  if not cdsDealTicket.IsEmpty then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuAllocAccount.Close;
      cdsLuAllocAccount.Params[0].AsString := cdsDealTicketMARKETCODE.AsString;
      cdsLuAllocAccount.Params[1].AsString := cdsDealTicketCHANNELCODE.AsString;
      cdsLuAllocAccount.Params[2].AsString := cdsDealTicketCCYCODE.AsString;
      cdsLuAllocAccount.Params[3].AsInteger := cdsDealTicketACCID.AsInteger;
      cdsLuAllocAccount.Open;
    end;
  end;

  cdsDealTicketTmp.Close;
  cdsDealTicketExecTmp.Close;
  cdsDealTicketAllocTmp.Close;

  cdsDealTicketTmp.CreateDataSet;
  cdsDealTicketExecTmp.CreateDataSet;
  cdsDealTicketAllocTmp.CreateDataSet;

  cdsDealTicket.First;
  while not cdsDealTicket.Eof do
  begin
    cdsDealTicketTmp.Append;
    for i := 0 to cdsDealTicket.FieldCount - 1 do
    begin
      oField := cdsDealTicketTmp.FindField(cdsDealTicket.Fields[i].FieldName);
      if (oField <> nil) and (oField.FieldKind = fkData) then
        oField.Value := cdsDealTicket.Fields[i].Value;
    end;
    cdsDealTicketTmp.Post;

    cdsDealTicket.Next;
  end;

  cdsDealTicketExec.First;
  while not cdsDealTicketExec.Eof do
  begin
    cdsDealTicketExecTmp.Append;
    for i := 0 to cdsDealTicketExec.FieldCount - 1 do
    begin
      oField := cdsDealTicketExecTmp.FindField(cdsDealTicketExec.Fields[i].FieldName);
      if (oField <> nil) and (oField.FieldKind = fkData) then
        oField.Value := cdsDealTicketExec.Fields[i].Value;
    end;
    cdsDealTicketExecTmp.Post;

    cdsDealTicketExec.Next;
  end;

  cdsDealTicketAlloc.First;
  while not cdsDealTicketAlloc.Eof do
  begin
    cdsDealTicketAllocTmp.Append;
    for i := 0 to cdsDealTicketAlloc.FieldCount - 1 do
    begin
      oField := cdsDealTicketAllocTmp.FindField(cdsDealTicketAlloc.Fields[i].FieldName);
      if (oField <> nil) and (oField.FieldKind = fkData) then
        oField.Value := cdsDealTicketAlloc.Fields[i].Value;
    end;
    cdsDealTicketAllocTmp.Post;

    cdsDealTicketAlloc.Next;
  end;

  //ganti status dealticket sebelumnya menjadi amend
  cdsDealTicket.Edit;
  cdsDealTicketSTAT.AsString := 'A';
  cdsDealTicketSTATUS.AsString := 'A';
  cdsDealTicket.Post;

  ORIG_DTID := cdsDealTicketDEALTICKETID.AsInteger;

  //create id dan no dealticket baru
  DTID := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
  //DTNO := dmGlobal.RemoteServer.GetVoucherNo(dmGlobal.RemoteServer.GetTransDate, 'DT', 'TBL_B_DEALTICKET');
  //append data baru ke main dataset
  cdsDealTicket.Append;
  cdsDealTicketTmp.First;
  while not cdsDealTicketTmp.Eof do
  begin
    cdsDealTicket.Append;
    for i := 0 to cdsDealTicketTmp.FieldCount - 1 do
    begin
      oField := cdsDealTicket.FindField(cdsDealTicketTmp.Fields[i].FieldName);
      if (cdsDealTicketTmp.Fields[i].FieldName = 'DEALTICKETID') then
      begin
        oField.Value := DTID;
      end
//      else if (cdsDealTicketTmp.Fields[i].FieldName = 'DEALTICKETCODE') then
//      begin
//        oField.Value := DTNO;
//      end
      else
        if (oField <> nil) and (oField.FieldKind = fkData) then
          oField.Value := cdsDealTicketTmp.Fields[i].Value;
    end;

    cdsDealTicketORIG_DTID.AsInteger := ORIG_DTID;

    cdsDealTicket.Post;

    cdsDealTicketTmp.Next;
  end;

  cdsDealTicketExec.Append;
  cdsDealTicketExecTmp.First;
  while not cdsDealTicketExecTmp.Eof do
  begin
    cdsDealTicketExec.Append;
    for i := 0 to cdsDealTicketExecTmp.FieldCount - 1 do
    begin
      oField := cdsDealTicketExec.FindField(cdsDealTicketExecTmp.Fields[i].FieldName);
      if (cdsDealTicketExecTmp.Fields[i].FieldName <> 'DEALTICKETID') then
//      begin
//        oField.Value := 0;
//      end
//      else
        if (oField <> nil) and (oField.FieldKind = fkData) then
          oField.Value := cdsDealTicketExecTmp.Fields[i].Value;
    end;
    cdsDealTicketExec.Post;
    cdsDealTicketExecTmp.Next;
  end;

  cdsDealTicketAlloc.Append;
  cdsDealTicketAllocTmp.First;
  while not cdsDealTicketAllocTmp.Eof do
  begin
    cdsDealTicketAlloc.Append;
    for i := 0 to cdsDealTicketAllocTmp.FieldCount - 1 do
    begin
      oField := cdsDealTicketAlloc.FindField(cdsDealTicketAllocTmp.Fields[i].FieldName);
      if (cdsDealTicketAllocTmp.Fields[i].FieldName <> 'DEALTICKETID') then
        if (oField <> nil) and (oField.FieldKind = fkData) then
          oField.Value := cdsDealTicketAllocTmp.Fields[i].Value;
    end;
    cdsDealTicketAlloc.Post;
    cdsDealTicketAllocTmp.Next;
  end;
end;

procedure TfrmDealTicketAmend.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
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
        dsSubject.DataSet.FieldByName('ACCNO').AsString := cdsLuAccountMultiFilterACCCODE.AsString ;
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmDealTicketAmend.dsDealTicketAllocDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FSavedChanges := True;
end;

procedure TfrmDealTicketAmend.FormDestroy(Sender: TObject);
var
  oCds: TClientDataSet;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuInstrument.Filtered := False;
  end;
end;

procedure TfrmDealTicketAmend.FormKeyPress(Sender: TObject; var Key: Char);
var
  iYesNo: Integer;
begin
  inherited;
  if Key = #27 then
  begin
    if (dsSubject.DataSet.State in [dsInsert, dsEdit]) or (FSavedChanges) then
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

procedure TfrmDealTicketAmend.FormShow(Sender: TObject);
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
    StatusBar.Panels[0].Text := 'Warehouse Trade';

  FSavedChanges := False;
end;

procedure TfrmDealTicketAmend.gvwDealTicketExecInitEdit(
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
  RegisterClass(TfrmDealTicketAmend);

end.
