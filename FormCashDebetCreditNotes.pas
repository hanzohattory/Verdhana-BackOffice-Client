unit FormCashDebetCreditNotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, Data.DB, Datasnap.DBClient,
  NClientDataset, cxImageComboBox, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxButtonEdit,
  cxTextEdit, dxLayoutLookAndFeels, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxClasses,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxScrollbarAnnotations;

type
  TfrmCashDebetCreditNotes = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsDebetCreditNotes: TNClientDataset;
    cdsDebetCreditNotesDCID: TIntegerField;
    cdsDebetCreditNotesDCCODE: TStringField;
    cdsDebetCreditNotesCBID: TIntegerField;
    cdsDebetCreditNotesACCID: TIntegerField;
    cdsDebetCreditNotesENTRYDATE: TDateField;
    cdsDebetCreditNotesTRDATE: TDateField;
    cdsDebetCreditNotesDUEDATE: TDateField;
    cdsDebetCreditNotesDC: TStringField;
    cdsDebetCreditNotesCCY: TStringField;
    cdsDebetCreditNotesAMOUNT: TFloatField;
    cdsDebetCreditNotesREMARK: TStringField;
    cdsDebetCreditNotesCANCEL_DATE: TDateTimeField;
    cdsDebetCreditNotesCANCEL_UI: TStringField;
    cdsDebetCreditNotesPOSTED_DATE: TDateTimeField;
    cdsDebetCreditNotesPOSTED_UI: TStringField;
    cdsDebetCreditNotesREVERSED_DATE: TDateTimeField;
    cdsDebetCreditNotesREVERSED_UI: TStringField;
    cdsDebetCreditNotesSTATUS: TStringField;
    cdsDebetCreditNotesSIID: TLargeintField;
    cdsDebetCreditNotesMODDA: TDateTimeField;
    cdsDebetCreditNotesMODUI: TStringField;
    cdsDebetCreditNotesAPPDA: TDateTimeField;
    cdsDebetCreditNotesAPPUI: TStringField;
    cdsDebetCreditNotesUNDER4Y: TIntegerField;
    cdsDebetCreditNotesUNDER4YDA: TDateTimeField;
    cdsDebetCreditNotesNOTES4Y: TStringField;
    cdsDebetCreditNotesISDEL: TIntegerField;
    cdsDebetCreditNotesID: TLargeintField;
    cdsDebetCreditNotesqryDebetCreditNotes_D: TDataSetField;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    cdsCashDebetCreditNote: TNClientDataset;
    dsCashDebetCreditNote: TDataSource;
    cdsDebetCreditNotesACCCODE: TStringField;
    cdsDebetCreditNotesACCNAME: TStringField;
    PopupMenu1: TPopupMenu;
    ViewLedgerDetail1: TMenuItem;
    cdsCashDebetCreditNoteDCID: TLargeintField;
    cdsCashDebetCreditNoteDCDID: TLargeintField;
    cdsCashDebetCreditNoteCBID: TIntegerField;
    cdsCashDebetCreditNoteREMARK: TStringField;
    cdsCashDebetCreditNoteDC: TStringField;
    cdsCashDebetCreditNoteAMOUNT: TFloatField;
    gvwMasterDCID: TcxGridDBBandedColumn;
    gvwMasterDCDID: TcxGridDBBandedColumn;
    gvwMasterCBID: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cdsDebetCreditNotesNewRecord(DataSet: TDataSet);
    procedure cdsDebetCreditNotesBeforePost(DataSet: TDataSet);
    procedure cdsDebetCreditNotesCBIDChange(Sender: TField);
    procedure cdsCashDebetCreditNoteNewRecord(DataSet: TDataSet);
    procedure cdsCashDebetCreditNoteBeforePost(DataSet: TDataSet);
    procedure ViewLedgerDetail1Click(Sender: TObject);
    procedure cdsCashDebetCreditNoteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashDebetCreditNotes: TfrmCashDebetCreditNotes;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount, FormLedgerDetail;

procedure TfrmCashDebetCreditNotes.cdsCashDebetCreditNoteAfterPost(
  DataSet: TDataSet);
var
  fSum, fAmount: Double;
begin
  inherited;
  fSum := 0;

  cdsCashDebetCreditNote.DisableControls;
  cdsCashDebetCreditNote.First;
  while not cdsCashDebetCreditNote.Eof do
  begin
    if cdsCashDebetCreditNoteAMOUNT.IsNull then
      fAmount := 0
    else
      fAmount := cdsCashDebetCreditNoteAMOUNT.AsFloat;
    fSum := fSum + fAmount;

    cdsCashDebetCreditNote.Next;
  end;
  cdsDebetCreditNotesAMOUNT.AsFloat := fSum;

  cdsCashDebetCreditNote.EnableControls;
end;

procedure TfrmCashDebetCreditNotes.cdsCashDebetCreditNoteBeforePost(
  DataSet: TDataSet);
var
  fAmount, fSumAmount: Double;
begin
  inherited;
//  if not cdsDebetCreditNotes.State in [dsInsert, dsEdit] then
    cdsDebetCreditNotes.Edit;

//  if cdsDebetCreditNotesDC.AsString = 'C' then
//    fAmount := -cdsDebetCreditNotesAMOUNT.AsFloat
//  else
//    fAmount := cdsDebetCreditNotesAMOUNT.AsFloat;

//  if cdsCashDebetCreditNoteDC.AsString = 'D' then
//    fSumAmount := fAmount + cdsCashDebetCreditNoteAMOUNT.AsFloat
//  else
//    fSumAmount := fAmount - cdsCashDebetCreditNoteAMOUNT.AsFloat;

//  if fSumAmount >= 0 then
//    cdsDebetCreditNotesDC.AsString := 'D'
//  else
//    cdsDebetCreditNotesDC.AsString := 'C';

//  cdsDebetCreditNotesAMOUNT.AsFloat := abs(fSumAmount);

//  cdsDebetCreditNotesAMOUNT.AsFloat := gvwMaster.DataController.Summary.FooterSummaryValues[0];
end;

procedure TfrmCashDebetCreditNotes.cdsCashDebetCreditNoteNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsCashDebetCreditNoteDCDID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_DEBET_CREDIT_NOTES_D');
  cdsCashDebetCreditNoteREMARK.AsString := cdsDebetCreditNotesREMARK.AsString;

  if cdsDebetCreditNotesDC.AsString = 'D' then
    cdsCashDebetCreditNoteDC.AsString := 'C'
  else
    cdsCashDebetCreditNoteDC.AsString := 'D';
end;

procedure TfrmCashDebetCreditNotes.cdsDebetCreditNotesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if cdsDebetCreditNotes.State = dsInsert then
  begin
    cdsDebetCreditNotesDCID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_DEBET_CREDIT_NOTES');
    cdsDebetCreditNotesDCCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
      cdsDebetCreditNotesENTRYDATE.AsDateTime, 'DC', 'TBL_B_CASH_DEBET_CREDIT_NOTES');
  end;
end;

procedure TfrmCashDebetCreditNotes.cdsDebetCreditNotesCBIDChange(
  Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuCashBook.Locate('CBID', cdsDebetCreditNotesCBID.AsInteger, []) then
    begin
      cdsDebetCreditNotesCCY.AsString := cdsLuCashBookCCYCODE.AsString;
    end
    else
    begin
      cdsDebetCreditNotesCCY.Clear;
    end;
  end;
end;

procedure TfrmCashDebetCreditNotes.cdsDebetCreditNotesNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  cdsDebetCreditNotesDCID.AsInteger := -1;
  cdsDebetCreditNotesDCCODE.AsString := '<AUTO>';
  cdsDebetCreditNotesENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsDebetCreditNotesTRDATE.AsDateTime := cdsDebetCreditNotesENTRYDATE.AsDateTime;
  cdsDebetCreditNotesDUEDATE.AsDateTime := cdsDebetCreditNotesENTRYDATE.AsDateTime;
  cdsDebetCreditNotesSTATUS.AsString := '1';

  cdsDebetCreditNotesAMOUNT.AsFloat := 0;
  cdsDebetCreditNotesCBID.AsInteger := -1;
  cdsDebetCreditNotesDC.Asstring    := '';
  cdsDebetCreditNotesCCY.AsString   := dmGlobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmCashDebetCreditNotes.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
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
      end;
    end;
  end;
end;

procedure TfrmCashDebetCreditNotes.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
      cdsLuAccount.Open
    else
      cdsLuAccount.Refresh;

    if not cdsLuCashBook.Active then
      cdsLuCashBook.Open
    else
      cdsLuCashBook.Refresh;
  end;
end;

procedure TfrmCashDebetCreditNotes.ViewLedgerDetail1Click(Sender: TObject);
var
  iLinkID: Int64;
  sLinkType: string;
  sCCY : string;
  iCPID : Integer;
  dExrate : double;
begin
  inherited;
//  sLinkType := gvwBrowse.Controller.SelectedRecords[0].Values[gvwBrowseLINKTYPE.Index];
//  iLinkID   := gvwBrowse.Controller.SelectedRecords[0].Values[gvwBrowseLINKID.Index];
  sLinkType := 'DCID';
  iLinkID   := cdsCashDebetCreditNoteDCDID.AsInteger;
  sCCY      := 'IDR';
  iCPID     := 0;
  dExrate   := 1;

  frmLedgerDetail.Run(sLinkType, sCCY, iLinkID,iCPID,dExrate);
end;

Initialization
  RegisterClass(TfrmCashDebetCreditNotes);

end.
