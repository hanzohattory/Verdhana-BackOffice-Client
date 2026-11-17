unit FormInputJurnalBankList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxContainer, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, cxCheckBox, dxLayoutControl, Datasnap.DBClient,
  NClientDataset, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, NReportRPC, cxImageComboBox, cxLabel, cxBarEditItem,
  NReportClient, System.DateUtils, System.Actions, System.ImageList, ClassClientConst,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,Clipbrd,
  dxDateRanges;

type
  TJrnDetailUpdate = class(TObject)
  private
    FCCY: string;
    FDC: string;
    FAmount: Double;
  public
    property CCY: string read FCCY write FCCY;
    property DC: string read FDC write FDC;
    property Amount: double read FAmount write FAmount;
  end;

  TfrmInputJurnalBankList = class(TfrmBrowseData)
    cdsInputBankList: TNClientDataset;
    cdsInputBankListJRNID: TLargeintField;
    cdsInputBankListJRNCD: TStringField;
    cdsInputBankListVDATE: TDateTimeField;
    cdsInputBankListEDATE: TDateTimeField;
    cdsInputBankListREFFID: TLargeintField;
    cdsInputBankListACCID: TLargeintField;
    cdsInputBankListACCCODE: TStringField;
    cdsInputBankListACCNAME: TStringField;
    cdsInputBankListVPERIODID: TLargeintField;
    cdsInputBankListVPERIODCODE: TStringField;
    cdsInputBankListEPERIODID: TLargeintField;
    cdsInputBankListEPERIODCODE: TStringField;
    cdsInputBankListJRNTYPE: TStringField;
    cdsInputBankListHDESC: TStringField;
    cdsInputBankListTOTALDB: TFloatField;
    cdsInputBankListTOTALCR: TFloatField;
    cdsInputBankListCCYCODE: TStringField;
    cdsInputBankListEXRATE: TFloatField;
    cdsInputBankListMODDA: TDateTimeField;
    cdsInputBankListMODUI: TStringField;
    cdsInputBankListAPPDA: TDateTimeField;
    cdsInputBankListAPPUI: TStringField;
    cdsInputBankListUNDER4Y: TIntegerField;
    cdsInputBankListUNDER4YDA: TDateTimeField;
    cdsInputBankListNOTES4Y: TStringField;
    cdsInputBankListISDEL: TIntegerField;
    cdsInputBankListID: TLargeintField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    chkEDate: TcxCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    chkJrnType: TcxCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    luJrnType: TcxLookupComboBox;
    lcJrnType: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    actLoadData: TNAction;
    mnuLoadData: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    gvwMasterJRNCD: TcxGridDBBandedColumn;
    gvwMasterVDATE: TcxGridDBBandedColumn;
    gvwMasterEDATE: TcxGridDBBandedColumn;
    gvwMasterVPERIODCODE: TcxGridDBBandedColumn;
    gvwMasterEPERIODCODE: TcxGridDBBandedColumn;
    gvwMasterJRNTYPE: TcxGridDBBandedColumn;
    gvwMasterHDESC: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    chkValueDate: TcxCheckBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    VDateFrom: TcxDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    VDateTo: TcxDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    EDateTo: TcxDateEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    EDateFrom: TcxDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    lgEntryDate: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    lgValueDate: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    actPosting: TNAction;
    actPosting1: TMenuItem;
    cdsInputBankListPOSTED: TStringField;
    cdsInputBankListPOSTED_DATE: TDateField;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    cdsInputBankListCANCELED: TStringField;
    cdsInputBankListCANCEL_UI: TStringField;
    cdsInputBankListCANCELDATE: TDateField;
    cdsInputBankListCANCEL_REMARK: TStringField;
    Cancel1: TMenuItem;
    cdsJRNH: TNClientDataset;
    cdsJRNHJRNID: TLargeintField;
    cdsJRNHJRNCD: TStringField;
    cdsJRNHVDATE: TDateTimeField;
    cdsJRNHEDATE: TDateTimeField;
    cdsJRNHREFFID: TLargeintField;
    cdsJRNHACCID: TLargeintField;
    cdsJRNHACCCODE: TStringField;
    cdsJRNHACCNAME: TStringField;
    cdsJRNHVPERIODID: TLargeintField;
    cdsJRNHVPERIODCODE: TStringField;
    cdsJRNHEPERIODID: TLargeintField;
    cdsJRNHEPERIODCODE: TStringField;
    cdsJRNHJRNTYPE: TStringField;
    cdsJRNHHDESC: TStringField;
    cdsJRNHTOTALDB: TFloatField;
    cdsJRNHTOTALCR: TFloatField;
    cdsJRNHCCYCODE: TStringField;
    cdsJRNHEXRATE: TFloatField;
    cdsJRNHMODDA: TDateTimeField;
    cdsJRNHMODUI: TStringField;
    cdsJRNHAPPDA: TDateTimeField;
    cdsJRNHAPPUI: TStringField;
    cdsJRNHUNDER4Y: TIntegerField;
    cdsJRNHUNDER4YDA: TDateTimeField;
    cdsJRNHNOTES4Y: TStringField;
    cdsJRNHISDEL: TIntegerField;
    cdsJRNHID: TLargeintField;
    cdsJRNHPOSTED: TStringField;
    cdsJRNHqryJRNExRate: TDataSetField;
    cdsJRNHqryJRND: TDataSetField;
    cdsJRNHCANCELED: TStringField;
    cdsJRNHCANCEL_UI: TStringField;
    cdsJRNHCANCELDATE: TDateField;
    cdsJRNHCANCEL_REMARK: TStringField;
    gvwMasterCANCELED: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELDATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_REMARK: TcxGridDBBandedColumn;
    actReverse: TNAction;
    ReverseJournalInput1: TMenuItem;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    actUnpostJournal: TNAction;
    UnpostingJournal1: TMenuItem;
    cdsInputBankListREVERSED: TStringField;
    cdsInputBankListREVERSED_UI: TStringField;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterREFFID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterVPERIODID: TcxGridDBBandedColumn;
    gvwMasterEPERIODID: TcxGridDBBandedColumn;
    gvwMasterTOTALDB: TcxGridDBBandedColumn;
    gvwMasterTOTALCR: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actCopyCell: TNAction;
    CopyCell1: TMenuItem;
    procedure chkEDateClick(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure chkValueDateClick(Sender: TObject);
    procedure chkJrnTypeClick(Sender: TObject);
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actPostingUpdate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actCancelUpdate(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actUnpostJournalUpdate(Sender: TObject);
    procedure actUnpostJournalExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actCopyCellExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RedrawList;
  public
    { Public declarations }
  end;

var
  frmInputJurnalBankList: TfrmInputJurnalBankList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormInputJurnalBank , FormJournalReverse;

{ TfrmJournalInputList }

procedure TfrmInputJurnalBankList.actCancelExecute(Sender: TObject);
var
  sRes: string;
begin
//  inherited;
  if cdsInputBankListPOSTED.AsString = '1' then
    MessageError('Can not cancel posted journal')
  else
  begin
    if InputQuery('Cancel Journal Input', 'Reason', sRes) then
    begin
      cdsJRNH.Close;
      cdsJRNH.Params[0].AsInteger := cdsInputBankListJRNID.AsInteger;
      cdsJRNH.Open;

      cdsJRNH.Edit;
      cdsJRNHCANCELED.AsString      := '1';
      cdsJRNHCANCEL_UI.AsString     := dmGlobal.UserID;
      cdsJRNHCANCELDATE.AsDateTime  := dmGlobal.RemoteServer.GetTransDate;
      cdsJRNHCANCEL_REMARK.AsString := sRes;
      cdsJRNH.Post;
    end;

    actReject.Execute;
  end;

  actLoadData.Execute;
end;

procedure TfrmInputJurnalBankList.actCancelUpdate(Sender: TObject);
begin
  inherited;
  actCancel.Enabled := (cdsInputBankListPOSTED.AsString <> '1') and (cdsInputBankListCANCELED.AsString <> '1');
end;

procedure TfrmInputJurnalBankList.actCopyCellExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
begin
  inherited;
  LView := TcxGridDBBandedTableView(grdMaster.FocusedView);

  If Assigned(LView) Then
  Begin

    If LView.OptionsSelection.CellSelect Then
    Begin
      Clipboard.Clear;
      If Assigned(LView.Controller.FocusedRow) Then
        Clipboard.AsText :=
          LView.Controller.FocusedRow.DisplayTexts[LView.Controller.FocusedColumn.Index];
    End;
  End;

end;

procedure TfrmInputJurnalBankList.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Enabled := (cdsInputBankListPOSTED.AsString <> '1') and (cdsInputBankListCANCELED.AsString <> '1');

end;

procedure TfrmInputJurnalBankList.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  RedrawList;
end;

procedure TfrmInputJurnalBankList.actPostingExecute(Sender: TObject);
var
  sMsg, sMsgTmp: string;
  dSysDate: TDate;
  i, iIndex: Integer;
  bCon: Boolean;
begin
  inherited;
  sMsgTmp := '';
  sMsg    := '';

  bCon     := False;
  i        := gvwMaster.Controller.SelectedRecordCount;
  dSysDate := dmGlobal.RemoteServer.GetTransDate;

  if i > 1 then
  begin
    if MessageDlg('Are you sure to posting multiple Journal?', mtConfirmation, mbYesNo, 0) = mrYes then
      bCon := True;
  end
  else
  begin
    if MessageDlg('Are you sure to posting this Journal?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      if cdsInputBankListVDATE.AsDateTime > dSysDate then
      begin
        sMsgTmp := sMsgTmp + 'Value date can not bigger then system date' + #13;
        Abort;
      end;

      bCon := True;
    end;
  end;

  if bCon then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iIndex := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := iIndex;

      if cdsInputBankListCANCELED.AsString = '1' then
        sMsgTmp := sMsgTmp + 'Can not posting '+ cdsInputBankListJRNCD.AsString +' canceled journal' + #13
      else
      if cdsInputBankListPOSTED.AsString = '1' then
        sMsgTmp := sMsgTmp + 'Journal '+ cdsInputBankListJRNCD.AsString +' already posted' + #13
      else
      begin
        // catatan kang dhani untuk penambahan posting tidak lebih dari system date
        if cdsInputBankListVDATE.AsDateTime > dSysDate then
          sMsgTmp := sMsgTmp + 'Value date can not bigger then system date' + #13
        else
        begin
          dmGlobal.RemoteServer.PostJournal(cdsInputBankListJRNID.AsLargeInt, sMsg);
          sMsgTmp := sMsgTmp + cdsInputBankListJRNCD.AsString +' '+ sMsg + #13;
        end;
      end;
    end;
    MessageDlg(sMsgTmp, mtConfirmation, [mbOk], 0);
    cdsInputBankList.Refresh;
  end;
end;

procedure TfrmInputJurnalBankList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  actPosting.Enabled := (cdsInputBankListPOSTED.AsString <> '1') and (cdsInputBankListCANCELED.AsString <> '1');
end;

procedure TfrmInputJurnalBankList.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsInteger := cdsInputBankListJRNID.AsInteger;

  inherited;
end;

procedure TfrmInputJurnalBankList.actReverseExecute(Sender: TObject);
var
  oForm: TfrmJournalReverse;
  sKey: String;
  i: Integer;
  sMsg, sMsgTmp: string;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    MessageError('Can not reverse multiple journal, please selected just one journal to be reversed');
    Abort;
  end;

  sKey := cdsInputBankListJRNID.AsString;
  sMsg := '';

  dmGlobal.CreateJournalReverseList;
  if dmGlobal.ShowEditorForm(TfrmJournalReverse, sKey, pkUpdate) = mrOk then
  begin
    for i := 0 to dmGlobal.JournalReverseList.Count -1 do
    begin
      dmGlobal.RemoteServer.PostJournal(StrToInt64(dmGlobal.JournalReverseList.Strings[i]), sMsgTmp);
      sMsg := sMsg + sMsgTmp + #13;
    end;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
    cdsInputBankList.Refresh;
  end;
  dmGlobal.FreeJournalReverseList;
end;

procedure TfrmInputJurnalBankList.actReverseUpdate(Sender: TObject);
var
  bCon1, bCon2, bCon3: Boolean;
begin
  inherited;
  bCon1 := cdsInputBankListPOSTED.AsString = '1';
  bCon2 := cdsInputBankListCANCELED.AsString <> '1';
  bCon3 := cdsInputBankListREVERSED.AsString <> '1';
  actReverse.Enabled := bCon1 and (bCon2 and bCon3);
end;

procedure TfrmInputJurnalBankList.actUnpostJournalExecute(Sender: TObject);
var
  aMsg: string;
  aRes: Boolean;
begin
  inherited;
  aRes := dmGlobal.RemoteServer.UnpostingJournal(cdsInputBankListJRNID.AsLargeInt, aMsg);
  MessageDlg(aMsg, mtInformation, [mbOk], 0);

  cdsInputBankList.Refresh;
end;

procedure TfrmInputJurnalBankList.actUnpostJournalUpdate(Sender: TObject);
var
  bCon1, bCon2, bCon3: Boolean;
begin
  inherited;
  bCon1 := cdsInputBankListPOSTED.AsString = '1';
  bCon2 := cdsInputBankListCANCELED.AsString <> '1';
  bCon3 := cdsInputBankListREVERSED.AsString <> '1';
  actUnpostJournal.Enabled := bCon1 and (bCon2 and bCon3);
end;

procedure TfrmInputJurnalBankList.chkEDateClick(Sender: TObject);
begin
  inherited;
  lgEntryDate.Visible := chkEDate.Checked;
end;

procedure TfrmInputJurnalBankList.chkJrnTypeClick(Sender: TObject);
begin
  inherited;
  lcJrnType.Visible := chkJrnType.Checked;
end;

procedure TfrmInputJurnalBankList.chkValueDateClick(Sender: TObject);
begin
  inherited;
  lgValueDate.Visible := chkValueDate.Checked;
end;

procedure TfrmInputJurnalBankList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmInputJurnalBank;
end;

procedure TfrmInputJurnalBankList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsInputBankListJRNID;

  EDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  EDateTo.Date := EDateFrom.Date;
  VDateFrom.Date := EDateFrom.Date;
  VDateTo.Date := EDateFrom.Date;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuJournalBank.Active then
      cdsLuJournalBank.Open
    else
      cdsLuJournalBank.Refresh;

    if not cdsLuGLAccount.Active then
      cdsLuGLAccount.Open
    else
      cdsLuGLAccount.Refresh;

    if not cdsLuCPCenter.Active then
      cdsLuCPCenter.Open
    else
      cdsLuCPCenter.Refresh;
  end;
end;

procedure TfrmInputJurnalBankList.RedrawList;
begin
  if chkEDate.Checked or chkJrnType.Checked or chkValueDate.Checked then
  begin
    cdsInputBankList.Close;
    if chkValueDate.Checked then
      cdsInputBankList.Params[0].AsInteger := 1
    else
      cdsInputBankList.Params[0].AsInteger := 0;

    cdsInputBankList.Params[1].AsDate := DateOf(VDateFrom.Date);
    cdsInputBankList.Params[2].AsDate := DateOf(VDateTo.Date);

    if chkEDate.Checked then
      cdsInputBankList.Params[3].AsInteger := 1
    else
      cdsInputBankList.Params[3].AsInteger := 0;

    cdsInputBankList.Params[4].AsDate := DateOf(EDateFrom.Date);
    cdsInputBankList.Params[5].AsDate := DateOf(EDateTo.Date);

    if chkJrnType.Checked then
      cdsInputBankList.Params[6].AsInteger := 1
    else
      cdsInputBankList.Params[6].AsInteger := 0;

    if VarIsNull(luJrnType.EditValue) then
      cdsInputBankList.Params[7].AsString := EmptyStr
    else
      cdsInputBankList.Params[7].AsString := luJrnType.EditValue;
    cdsInputBankList.Open;

  end
  else
  begin
    ShowMessage('You must filter minimal by 1 criteria to open data!');
  end;

end;


initialization
  RegisterClass(TfrmInputJurnalBankList);

end.
