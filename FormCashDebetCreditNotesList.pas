unit FormCashDebetCreditNotesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCalendar,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, dxBar,
  cxBarEditItem, NReportClient, NDatasetContainer, cxClasses, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView, cxGrid,
  System.Actions, System.ImageList, cxCheckBox, dxDateRanges,ComObj,Clipbrd,
  dxScrollbarAnnotations;

type
  TfrmCashDebetCreditNotesList = class(TfrmBrowseData)
    dtStart: TcxBarEditItem;
    dtEnd: TcxBarEditItem;
    cdsDebetCreditNotesList: TNClientDataset;
    cdsDebetCreditNotesListDCID: TIntegerField;
    cdsDebetCreditNotesListDCCODE: TStringField;
    cdsDebetCreditNotesListCBID: TIntegerField;
    cdsDebetCreditNotesListACCID: TIntegerField;
    cdsDebetCreditNotesListENTRYDATE: TDateField;
    cdsDebetCreditNotesListTRDATE: TDateField;
    cdsDebetCreditNotesListDUEDATE: TDateField;
    cdsDebetCreditNotesListDC: TStringField;
    cdsDebetCreditNotesListCCY: TStringField;
    cdsDebetCreditNotesListAMOUNT: TFloatField;
    cdsDebetCreditNotesListREMARK: TStringField;
    cdsDebetCreditNotesListCANCEL_DATE: TDateTimeField;
    cdsDebetCreditNotesListCANCEL_UI: TStringField;
    cdsDebetCreditNotesListPOSTED_DATE: TDateTimeField;
    cdsDebetCreditNotesListPOSTED_UI: TStringField;
    cdsDebetCreditNotesListREVERSED_DATE: TDateTimeField;
    cdsDebetCreditNotesListREVERSED_UI: TStringField;
    cdsDebetCreditNotesListSTATUS: TStringField;
    cdsDebetCreditNotesListMODDA: TDateTimeField;
    cdsDebetCreditNotesListMODUI: TStringField;
    cdsDebetCreditNotesListAPPDA: TDateTimeField;
    cdsDebetCreditNotesListAPPUI: TStringField;
    cdsDebetCreditNotesListUNDER4Y: TIntegerField;
    cdsDebetCreditNotesListUNDER4YDA: TDateTimeField;
    cdsDebetCreditNotesListNOTES4Y: TStringField;
    cdsDebetCreditNotesListISDEL: TIntegerField;
    cdsDebetCreditNotesListID: TLargeintField;
    cdsDebetCreditNotesListACCCODE: TStringField;
    cdsDebetCreditNotesListACCNAME: TStringField;
    cdsDebetCreditNotesListACCINIT: TStringField;
    cdsDebetCreditNotesListACCTYPE: TStringField;
    cdsDebetCreditNotesListPRDCODE: TStringField;
    gvwMasterDCID: TcxGridDBBandedColumn;
    gvwMasterDCCODE: TcxGridDBBandedColumn;
    gvwMasterCBID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterTRDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    actPosting: TNAction;
    actReverse: TNAction;
    actCancelDC: TNAction;
    Posting1: TMenuItem;
    Reverse1: TMenuItem;
    Cancel1: TMenuItem;
    chkOpen: TcxBarEditItem;
    chkPosted: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    chkReversed: TcxBarEditItem;
    cdsAccountsByAccNo: TNClientDataset;
    cdsAccountsByAccNoACCID: TIntegerField;
    cdsAccountsByAccNoACCNAME: TStringField;
    cdsAccountsByAccNoACCCODE: TStringField;
    cdsAccountsByAccNoACCBANKID: TIntegerField;
    cdsAccountsByAccNoACCBANKCODE: TStringField;
    cdsDebetCreditNotes: TNClientDataset;
    actUploadDataDebetCreditNotes: TNAction;
    actUploadDebetCreditNotes: TMenuItem;
    N1: TMenuItem;
    opDialog: TOpenDialog;
    cdsCashBookGetId: TNClientDataset;
    cdsCashBookGetIdCBID: TIntegerField;
    cdsCashBookGetIdCBCODE: TStringField;
    cdsCashBookGetIdCBDESC: TStringField;
    cdsCashBookGetIdCCYCODE: TStringField;
    cdsCashBookGetIdSTAT: TStringField;
    cdsDebetCreditNotesListAMOUNT_TMP: TFloatField;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
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
    cdsCashDebetCreditNote: TNClientDataset;
    cdsCashDebetCreditNoteDCID: TLargeintField;
    cdsCashDebetCreditNoteDCDID: TLargeintField;
    cdsCashDebetCreditNoteCBID: TIntegerField;
    cdsCashDebetCreditNoteREMARK: TStringField;
    cdsCashDebetCreditNoteDC: TStringField;
    cdsCashDebetCreditNoteAMOUNT: TFloatField;
    cdsDebetCreditNotesListLEDGERTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actPostingExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actCancelDCExecute(Sender: TObject);
    procedure actUploadDataDebetCreditNotesExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actCancelDCUpdate(Sender: TObject);
    procedure actPostingUpdate(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;
  public
    { Public declarations }
  end;

var
  frmCashDebetCreditNotesList: TfrmCashDebetCreditNotesList;

implementation

{$R *.dfm}

uses DataGlobal, DateUtils, FormCashDebetCreditNotes, FormProgressBar,
  FormViewTransaction;

procedure TfrmCashDebetCreditNotesList.actCancelDCExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to cancel selected data?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Cash Debet/Credit Notes ' +
            QuotedStr(cdsDebetCreditNotesListDCCODE.AsString));

          if cdsDebetCreditNotesListSTATUS.AsString = '1' then
          begin
            bRes := dmGlobal.RemoteServer.CashDebetCreditNotesCancel(cdsDebetCreditNotesListDCID.AsInteger, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': ' + sMsg;
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '2' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Posted.';
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '3' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Reversed.';
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '4' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Canceled.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Cash Debet/Credit Notes Canceled Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsDebetCreditNotesList.Refresh;
    end;
  end;
end;

procedure TfrmCashDebetCreditNotesList.actCancelDCUpdate(Sender: TObject);
begin
  inherited;
  actCancelDC.Enabled := cdsDebetCreditNotesListSTATUS.AsString = '1';
end;

procedure TfrmCashDebetCreditNotesList.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
begin
  inherited;
  LView := TcxGridDBBandedTableView(grdMaster.FocusedView);

  If Assigned(LView) Then
  begin
    Clipboard.Clear;
    sValues := '';

    if LView.OptionsSelection.CellMultiSelect then
    begin
      for iRow := 0 to Pred(LView.Controller.SelectedRecordCount) do
      begin
        for iCol := 0 to Pred(LView.Controller.SelectedColumnCount) do
        begin
          if iRow = 0 then
          begin
            if sHeader = '' then sHeader := LView.Controller.SelectedColumns[iCol].Caption + #9
            else sHeader := sHeader + LView.Controller.SelectedColumns[iCol].Caption + #9;
          end;

          if sValues = '' then
            sValues := VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) + #9
          else
            sValues := sValues + VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) +#9;
        end;
        sValues := sValues + sLineBreak ;
      end;
    end;
    Clipboard.AsText := sHeader + sLineBreak + sValues;
  end;

end;

procedure TfrmCashDebetCreditNotesList.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Enabled := cdsDebetCreditNotesListSTATUS.AsString = '1';
end;

procedure TfrmCashDebetCreditNotesList.actPostingExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to posting selected data?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Cash Debet/Credit Notes ' +
            QuotedStr(cdsDebetCreditNotesListDCCODE.AsString));

          if cdsDebetCreditNotesListSTATUS.AsString = '1' then
          begin
            bRes := dmGlobal.RemoteServer.CashDebetCreditNotesPosting(cdsDebetCreditNotesListDCID.AsInteger, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': ' + sMsg;
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '2' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Posted.';
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '3' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Reversed.';
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '4' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Canceled.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Cash Debet/Credit Notes Posted Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsDebetCreditNotesList.Refresh;
    end;
  end;
end;

procedure TfrmCashDebetCreditNotesList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  actPosting.Enabled := cdsDebetCreditNotesListSTATUS.AsString = '1';
end;

procedure TfrmCashDebetCreditNotesList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsDebetCreditNotesList.Close;
  cdsDebetCreditNotesList.Params[0].AsDate   := VarToDateTime(dtStart.EditValue);
  cdsDebetCreditNotesList.Params[1].AsDate   := VarToDateTime(dtEnd.EditValue);
  cdsDebetCreditNotesList.Params[2].AsString := chkOpen.EditValue+','+chkPosted.EditValue+','+
    chkReversed.EditValue+','+chkCanceled.EditValue;
  cdsDebetCreditNotesList.Open;
end;

procedure TfrmCashDebetCreditNotesList.actReverseExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to reverse selected data?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Cash Debet/Credit Notes ' +
            QuotedStr(cdsDebetCreditNotesListDCCODE.AsString));

          if cdsDebetCreditNotesListSTATUS.AsString = '2' then
          begin
            bRes := dmGlobal.RemoteServer.CashDebetCreditNotesReverse(cdsDebetCreditNotesListDCID.AsInteger, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': ' + sMsg;
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '1' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Status Still Open.';
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '3' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Reversed.';
          end
          else if cdsDebetCreditNotesListSTATUS.AsString = '4' then
          begin
            sMsg := cdsDebetCreditNotesListDCCODE.AsString + ': Cash Debet/Credit Notes Have Been Canceled.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Cash Debet/Credit Notes Reversed Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsDebetCreditNotesList.Refresh;
    end;
  end;
end;

procedure TfrmCashDebetCreditNotesList.actReverseUpdate(Sender: TObject);
begin
  inherited;
  actReverse.Enabled := cdsDebetCreditNotesListSTATUS.AsString = '2';
end;

procedure TfrmCashDebetCreditNotesList.actUploadDataDebetCreditNotesExecute(
  Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName, sDebetCredit,
  sAmount, sDC: string;
  i, sSeqID, sSeqDID: Integer;
  iCols, iRows: Integer;
  iError, iSuccess: Integer;
  sMessage, sRemark: string;
  sErrorMsg: string;
  oPros : Boolean;
  dTransDate, dDueDate: TDate;
  sAccCode: string;
  fAmount, fSumAmount: Double;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;

  sAccCode    := '';
  dTransDate  := dmGlobal.RemoteServer.GetTransDate;
  dDueDate    := dTransDate;

  if opDialog.Execute(Application.Handle) then
    sFileName := opDialog.FileName;

  if sFileName <> '' then
  begin
    try
      sRemark := InputBox('Cash Debet Credit Notes', 'Cash Debet Credit Notes Remark', '');

      cdsDebetCreditNotes.Close;
      cdsDebetCreditNotes.Params[0].AsInteger := 0;
      cdsDebetCreditNotes.Open;

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iCols  := oSheet.Usedrange.Columns.Count;
      iRows  := oSheet.Usedrange.Rows.Count;

      for i := 2 to iRows do
      begin

        if (sAccCode = oSheet.Cells[i, 3].Value) and (dTransDate = oSheet.Cells[i, 1].Value) and (dDueDate = oSheet.Cells[i, 2].Value) then
        begin
          dmGlobal.IntDataLookup.cdsluAccountByCode.Close;
          dmGlobal.IntDataLookup.cdsluAccountByCode.Params[0].AsString := oSheet.Cells[i, 3].Value;
          dmGlobal.IntDataLookup.cdsluAccountByCode.Open;

          if not dmGlobal.IntDataLookup.cdsluAccountByCode.IsEmpty then
          begin
            cdsCashBookGetId.Close;
            cdsCashBookGetId.Params[0].AsString := oSheet.Cells[i, 5].Value;
            cdsCashBookGetId.Open;

            if not cdsCashBookGetId.IsEmpty then
            begin
              oPros := True;
              sDebetCredit := UpperCase(oSheet.Cells[i, 6].Value);
              if sDebetCredit = 'DEBET' then sDebetCredit := 'D'
              else if sDebetCredit = 'CREDIT' then sDebetCredit := 'C'
              else
              begin
                Inc(iError);
                sErrorMsg := sErrorMsg + 'Wrong Debet/Credit '+ oSheet.Cells[i, 6].Value +#13;
                oPros := False;
              end;

              if oPros then
              begin
                sAmount := oSheet.Cells[i, 7].Value ;
                if sAmount <> '' then
                begin
                  sSeqDID := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_DEBET_CREDIT_NOTES_D');

                  cdsDebetCreditNotes.Last;
                  sDC := cdsDebetCreditNotesDC.AsString;
                  if sDC = 'D' then
                    fAmount := cdsDebetCreditNotesAMOUNT.AsFloat
                  else
                    fAmount := - cdsDebetCreditNotesAMOUNT.AsFloat;

                  if sDebetCredit = 'D' then
                    fSumAmount := fAmount + oSheet.Cells[i, 7].Value
                  else
                    fSumAmount := fAmount - oSheet.Cells[i, 7].Value;

                  if fSumAmount > 0 then
                    sDC := 'D'
                  else
                    sDC := 'C';

                  cdsDebetCreditNotes.Edit;
                  cdsDebetCreditNotesDC.AsString     := sDC;
                  cdsDebetCreditNotesAMOUNT.AsFloat  := abs(fSumAmount);
                  cdsDebetCreditNotesSTATUS.AsString := '1';

                  cdsCashDebetCreditNote.Append;
                  cdsCashDebetCreditNoteDCID.AsInteger  := sSeqID;
                  cdsCashDebetCreditNoteDCDID.AsInteger := sSeqDID;
                  cdsCashDebetCreditNoteCBID.AsInteger  := cdsCashBookGetIdCBID.AsInteger;
                  cdsCashDebetCreditNoteREMARK.AsString := oSheet.Cells[i, 8].Value;
                  cdsCashDebetCreditNoteDC.AsString     := sDebetCredit;
                  cdsCashDebetCreditNoteAMOUNT.AsFloat  := oSheet.Cells[i, 7].Value;
                  cdsCashDebetCreditNote.Post;

                  cdsDebetCreditNotes.Post;
                  Inc(iSuccess);
                end
                else
                begin
                  Inc(iError);
                  sErrorMsg := sErrorMsg + 'Value Amount Is Empty '+ oSheet.Cells[i, 7].Value +#13;
                end;
              end;
            end
            else
            begin
              Inc(iError);
              sErrorMsg := sErrorMsg + 'Unregistered Cash Book Code '+ oSheet.Cells[i, 5].Value +#13;
            end;
          end
          else
          begin
            Inc(iError);
            sErrorMsg := sErrorMsg + 'Unregistered Account '+ oSheet.Cells[i, 3].Value +#13;
          end;
        end
        else
        begin
          sAccCode    := oSheet.Cells[i, 3].Value;
          dTransDate  := oSheet.Cells[i, 1].Value;
          dDueDate    := oSheet.Cells[i, 2].Value;

          dmGlobal.IntDataLookup.cdsluAccountByCode.Close;
          dmGlobal.IntDataLookup.cdsluAccountByCode.Params[0].AsString := oSheet.Cells[i, 3].Value;
          dmGlobal.IntDataLookup.cdsluAccountByCode.Open;

          if not dmGlobal.IntDataLookup.cdsluAccountByCode.IsEmpty then
          begin
            cdsCashBookGetId.Close;
            cdsCashBookGetId.Params[0].AsString := oSheet.Cells[i, 5].Value;
            cdsCashBookGetId.Open;

            if not cdsCashBookGetId.IsEmpty then
            begin
              oPros := True;
              sDebetCredit := UpperCase(oSheet.Cells[i, 6].Value);
              if sDebetCredit = 'DEBET' then sDebetCredit := 'D'
              else if sDebetCredit = 'CREDIT' then sDebetCredit := 'C'
              else
              begin
                Inc(iError);
                sErrorMsg := sErrorMsg + 'Wrong Debet/Credit '+ oSheet.Cells[i, 6].Value +#13;
                oPros := False;
              end;

              if oPros then
              begin
                sAmount := oSheet.Cells[i, 7].Value ;
                if sAmount <> '' then
                begin
                  sSeqID  := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_DEBET_CREDIT_NOTES');
                  sSeqDID := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_DEBET_CREDIT_NOTES_D');

                  cdsDebetCreditNotes.Append;
                  cdsDebetCreditNotesDCID.AsInteger       := sSeqID;
                  cdsDebetCreditNotesDCCODE.AsString      := 'DC-'+FormatDateTime('MMYYYY', FTransDate)+'-'+FormatFloat('000000', sSeqID);
                  cdsDebetCreditNotesTRDATE.AsDateTime    := oSheet.Cells[i, 1].Value;
                  cdsDebetCreditNotesENTRYDATE.AsDateTime := FTransDate;
                  cdsDebetCreditNotesDUEDATE.AsDateTime   := oSheet.Cells[i, 2].Value;
                  cdsDebetCreditNotesACCID.AsLargeInt     := dmGlobal.IntDataLookup.cdsluAccountByCodeACCID.AsLargeInt;
                  cdsDebetCreditNotesDC.AsString          := sDebetCredit;
                  cdsDebetCreditNotesAMOUNT.AsFloat       := oSheet.Cells[i, 7].Value;
                  cdsDebetCreditNotesREMARK.AsString      := sRemark;
                  cdsDebetCreditNotesCCY.AsString         := 'IDR';
                  cdsDebetCreditNotesCBID.AsInteger       := -1;
                  cdsDebetCreditNotesSTATUS.AsString      := '1';

                  cdsCashDebetCreditNote.Append;
                  cdsCashDebetCreditNoteDCID.AsInteger  := sSeqID;
                  cdsCashDebetCreditNoteDCDID.AsInteger := sSeqDID;
                  cdsCashDebetCreditNoteCBID.AsInteger  := cdsCashBookGetIdCBID.AsInteger;
                  cdsCashDebetCreditNoteREMARK.AsString := oSheet.Cells[i, 8].Value;
                  cdsCashDebetCreditNoteDC.AsString     := sDebetCredit;
                  cdsCashDebetCreditNoteAMOUNT.AsFloat  := oSheet.Cells[i, 7].Value;
                  cdsCashDebetCreditNote.Post;

                  cdsDebetCreditNotes.Post;
                  Inc(iSuccess);
                end
                else
                begin
                  Inc(iError);
                  sErrorMsg := sErrorMsg + 'Value Amount Is Empty '+ oSheet.Cells[i, 7].Value +#13;
                end;
              end;
            end
            else
            begin
              Inc(iError);
              sErrorMsg := sErrorMsg + 'Unregistered Cash Book Code '+ oSheet.Cells[i, 5].Value +#13;
            end;
          end
          else
          begin
            Inc(iError);
            sErrorMsg := sErrorMsg + 'Unregistered Account '+ oSheet.Cells[i, 3].Value +#13;
          end;
        end;

      end;

    finally
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sErrorMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);

//      if iError > 0 then
//        MessageDlg('There some error while uploading cash debit credit notes '+#13+sErrorMsg, mtInformation, [mbOk], 0);
//      MessageDlg('Upload data customer withdraw is done', mtInformation, [mbOk], 0);
      cdsDebetCreditNotes.ApplyUpdates(-1);
      cdsDebetCreditNotesList.Refresh;
    end;
  end;
end;

procedure TfrmCashDebetCreditNotesList.actViewTransactionExecute(
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
    dtConDate      := cdsDebetCreditNotesListTRDATE.AsDateTime;
    iLedgerTransID := cdsDebetCreditNotesListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := -1;
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

procedure TfrmCashDebetCreditNotesList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCashDebetCreditNotes;
end;

procedure TfrmCashDebetCreditNotesList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField   := cdsDebetCreditNotesListDCID;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := FTransDate;
  dtEnd.EditValue   := FTransDate;

  chkOpen.EditValue     := '1';
  chkPosted.EditValue   := '0';
  chkReversed.EditValue := '0';
  chkCanceled.EditValue := '0';

  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmCashDebetCreditNotesList);

end.
