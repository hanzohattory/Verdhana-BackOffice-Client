unit FormDealTicketAlloc;

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
  TfrmDealTicketAlloc = class(TfrmEditorData)
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
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
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
    cdsDealTicketAllocCOMM_ID: TLargeintField;
    gvwDealTicketAllocCOMM_ID: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cdsDealTicketCOMM_ID: TLargeintField;
    cdsOmgAlloc: TNClientDataset;
    cdsOmgAllocDEALTICKETID: TLargeintField;
    cdsOmgAllocOMG_ALLOC: TIntegerField;
    cdsOmgAllocALLOC_QTY: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actAddNewExecute(Sender: TObject);
    procedure actAccountExecute(Sender: TObject);
    procedure dsDealTicketAllocDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure cbStockExit(Sender: TObject);
    procedure cbStockEnter(Sender: TObject);
    procedure gvwDealTicketExecInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure btnEmptyAllocationClick(Sender: TObject);
    procedure cdsDealTicketAfterOpen(DataSet: TDataSet);
    procedure cdsDealTicketAllocACCIDChange(Sender: TField);
    procedure cdsDealTicketAllocAQTYChange(Sender: TField);
    procedure cdsDealTicketAllocBeforeDelete(DataSet: TDataSet);
    procedure cdsDealTicketAllocBeforeEdit(DataSet: TDataSet);
    procedure cdsDealTicketAllocAfterOpen(DataSet: TDataSet);
    procedure cdsDealTicketAllocBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketAllocNewRecord(DataSet: TDataSet);
    procedure cdsDealTicketAllocAPRICEChange(Sender: TField);
    procedure cdsDealTicketROUNDPRICEChange(Sender: TField);
    procedure cdsDealTicketROUNDVALUEChange(Sender: TField);
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
  frmDealTicketAlloc: TfrmDealTicketAlloc;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount, DataLookup, cxLookupDBGrid;

procedure TfrmDealTicketAlloc.actAccountExecute(Sender: TObject);
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

procedure TfrmDealTicketAlloc.actAddNewExecute(Sender: TObject);
begin
  inherited;
  grdDealTicketAlloc.SetFocus;
  dsDealTicketAlloc.DataSet.Append;
end;

procedure TfrmDealTicketAlloc.btnEmptyAllocationClick(Sender: TObject);
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

procedure TfrmDealTicketAlloc.btnOKClick(Sender: TObject);
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
  cdsOmgAlloc.Close;
  cdsOmgAlloc.Params[0].AsInteger := cdsDealTicketDEALTICKETID.AsInteger;
  cdsOmgAlloc.Open;

  if cdsOmgAllocOMG_ALLOC.AsInteger = 1 then
  begin
    MessageDlg('Dealticket already allocate by Omgeo upload !', TMsgDlgType.mtInformation, [mbOk], 0);
    exit;
  end;

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

  end;

  inherited;
end;

procedure TfrmDealTicketAlloc.cbStockEnter(Sender: TObject);
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

procedure TfrmDealTicketAlloc.cbStockExit(Sender: TObject);
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

procedure TfrmDealTicketAlloc.cdsDealTicketAfterOpen(DataSet: TDataSet);
begin
  inherited;
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
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAllocAccount.Locate('ACCID', Sender.Value, []) then
    begin
      cdsDealTicketAllocACCNO.AsString    := cdsLuAllocAccountACCCODE.AsString;
      cdsDealTicketAllocACCNAME.AsString  := cdsLuAllocAccountACCNAME.AsString;
      cdsDealTicketAllocEXT_REF.AsString  := cdsLuAllocAccountEXTREF_CODE.AsString;
      cdsDealTicketAllocCOMM_ID.AsInteger := cdsLuAllocAccountCOMM_ID.AsInteger;
      if (cdsLuAllocAccountCALC_METHOD.IsNull) or (cdsLuAllocAccountCOMM_RATE.IsNull) then
      begin
        cdsDealTicketAllocCALC_METHOD.AsString := cdsDealTicketCALC_METHOD.AsString;
        cdsDealTicketAllocCOMM_RATE.AsFloat := cdsDealTicketCOMM_RATE.AsFloat;
      end
      else
      begin
        cdsDealTicketAllocCALC_METHOD.AsString := cdsLuAllocAccountCALC_METHOD.AsString;
        cdsDealTicketAllocCOMM_RATE.AsFloat := cdsLuAllocAccountCOMM_RATE.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FAccID := -1;
  if not cdsDealTicketAlloc.IsEmpty then
  begin
    cdsDealTicketAlloc.Last;
    FAccID := cdsDealTicketAllocACCID.AsInteger;
  end;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocAPRICEChange(Sender: TField);
begin
  inherited;
  if cdsDealTicketAllocAPrice.AsFloat >= 0 then
  begin
    cdsDealTicketAllocAVALUE.AsFloat := Round(cdsDealTicketAllocAQTY.AsFloat * cdsDealTicketAllocAPRICE.AsFloat);
    cdsDealTicketAllocADIFFVALUE.AsFloat := cdsDealTicketAllocAVALUE.AsFloat - Round(cdsDealTicketAllocAQTY.AsFloat * cdsDealTicketDEALPRICE.AsFloat);
  end
  else
  begin
    ShowMessage('Price must higher than 0 (zero)');
    cdsDealTicketAllocAPrice.AsFloat := cdsDealTicketDEALPRICE.AsFloat;
  end;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocAQTYChange(Sender: TField);
begin
  inherited;
  if cdsDealTicketAllocAQTY.AsFloat >= 0 then
  begin
    cdsDealTicketAllocAVALUE.AsFloat := Round(cdsDealTicketAllocAQTY.AsFloat * cdsDealTicketAllocAPRICE.AsFloat);
    cdsDealTicketAllocADIFFVALUE.AsFloat := cdsDealTicketAllocAVALUE.AsFloat - Round(cdsDealTicketAllocAQTY.AsFloat * cdsDealTicketDEALPRICE.AsFloat);
  end
  else
  begin
    ShowMessage('Quantity must higher than 0 (zero)');
    cdsDealTicketAllocAQTY.AsFloat := 0;
  end;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicket.State in dsEditModes) then
    cdsDealTicket.Edit;

  cdsDealTicketALLOCQTY.AsLargeInt := cdsDealTicketALLOCQTY.AsLargeInt - cdsDealTicketAllocAQTY.AsLargeInt;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldAllocQty := cdsDealTicketAllocAQTY.AsLargeInt;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicket.State in dsEditModes) then
    cdsDealTicket.Edit;

  if cdsDealTicketAlloc.State in [dsInsert] then
  begin
    cdsDealTicketALLOCQTY.AsLargeInt := cdsDealTicketALLOCQTY.AsLargeInt + cdsDealTicketAllocAQTY.AsLargeInt;
    FAccID := cdsDealTicketAllocACCID.AsInteger;
  end
  else if cdsDealTicketAlloc.State in [dsEdit] then
  begin
    cdsDealTicketALLOCQTY.AsLargeInt := cdsDealTicketALLOCQTY.AsLargeInt - FOldAllocQty + cdsDealTicketAllocAQTY.AsLargeInt;
  end;

  cdsDealTicketAllocAVALUE.AsFloat     := Round(cdsDealTicketAllocAQTY.AsLargeInt * cdsDealTicketAllocAPRICE.AsFloat);
  cdsDealTicketAllocADIFFVALUE.AsFloat := cdsDealTicketAllocAVALUE.AsFloat - Round(cdsDealTicketDEALPRICE.AsFloat * cdsDealTicketAllocAQTY.AsLargeInt);
end;

procedure TfrmDealTicketAlloc.cdsDealTicketAllocNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDealTicketAllocAQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt - cdsDealTicketALLOCQTY.AsLargeInt;
  cdsDealTicketAllocAPRICE.AsFloat  := cdsDealTicketROUNDPRICE.AsFloat;
  cdsDealTicketAllocACCID.AsInteger := FAccID;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketROUNDPRICEChange(Sender: TField);
begin
  inherited;
  cdsDealTicketROUNDVALUE.AsFloat := cdsDealTicketDEALQTY.AsFloat * cdsDealTicketROUNDPRICE.AsFloat;
end;

procedure TfrmDealTicketAlloc.cdsDealTicketROUNDVALUEChange(Sender: TField);
begin
  inherited;
  cdsDealTicketDIFFVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat - cdsDealTicketROUNDVALUE.AsFloat;
end;

procedure TfrmDealTicketAlloc.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
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

procedure TfrmDealTicketAlloc.dsDealTicketAllocDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  FSavedChanges := True;
end;

procedure TfrmDealTicketAlloc.FormDestroy(Sender: TObject);
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

procedure TfrmDealTicketAlloc.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmDealTicketAlloc.FormShow(Sender: TObject);
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

procedure TfrmDealTicketAlloc.gvwDealTicketExecInitEdit(
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
  RegisterClass(TfrmDealTicketAlloc);

end.
