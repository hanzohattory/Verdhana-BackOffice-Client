unit FormCashDepList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, NReportRPC, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, NReportClient,
  dxSkinsCore, cxGridChartView, cxGridDBChartView, ClassGeneral,
  System.Generics.Collections, System.StrUtils, Winapi.ShellAPI,
  ClassClientConst, System.DateUtils, System.Actions, System.ImageList,
  dxDateRanges, cxBarEditItem, cxCheckBox,Clipbrd, dxScrollbarAnnotations,
  cxImageComboBox, cxCheckGroup;

type
  TfrmCashDepList = class(TfrmBrowseData)
    cdsCashDepList: TNClientDataset;
    cdsCashDep: TNClientDataset;
    actViewList: TNAction;
    cdsCashDepACCNAME: TStringField;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterCDDESC: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCDAMT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCDCODE: TcxGridDBBandedColumn;
    cdsCashDepCDID: TLargeintField;
    cdsCashDepCDCODE: TStringField;
    cdsCashDepCDDATE: TDateField;
    cdsCashDepACCNO: TStringField;
    cdsCashDepCDDESC: TStringField;
    cdsCashDepCCY: TStringField;
    cdsCashDepCDAMT: TFloatField;
    cdsCashDepPOSTED: TStringField;
    cdsCashDepMODDA: TDateTimeField;
    cdsCashDepMODUI: TStringField;
    cdsCashDepAPPDA: TDateTimeField;
    cdsCashDepAPPUI: TStringField;
    cdsCashDepUNDER4Y: TIntegerField;
    cdsCashDepUNDER4YDA: TDateTimeField;
    cdsCashDepNOTES4Y: TStringField;
    cdsCashDepISDEL: TIntegerField;
    cdsCashDepID: TLargeintField;
    actCashDepPosting: TNAction;
    cdsCashDepACCID: TIntegerField;
    cdsCashDepACTLED_ACCID: TIntegerField;
    cdsCashDepACTLED_SEQID: TIntegerField;
    cdsCashDepACCBANKID: TIntegerField;
    cdsCashDepBNCODE: TStringField;
    cdsCashDepBNACCNO: TStringField;
    cdsCashDepBNACCNAME: TStringField;
    cdsCashDepBNBRANCH: TStringField;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNACCNO: TcxGridDBBandedColumn;
    gvwMasterBNACCNAME: TcxGridDBBandedColumn;
    gvwMasterBNBRANCH: TcxGridDBBandedColumn;
    cdsCashDepCCY_TMP: TStringField;
    N5: TMenuItem;
    actCashDepReverse: TNAction;
    gvwMasterCDID: TcxGridDBBandedColumn;
    ReverseDeposit1: TMenuItem;
    cdsBankInstructionList: TNClientDataset;
    cdsBankInstructionListBIID: TLargeintField;
    cdsBankInstructionListBINO: TStringField;
    cdsBankInstructionListBITYPE: TStringField;
    cdsBankInstructionListENTRYDATE: TDateField;
    cdsBankInstructionListVALUEDATE: TDateField;
    cdsBankInstructionListBIDESC: TStringField;
    cdsBankInstructionListBANK_REF: TStringField;
    cdsBankInstructionListTRANS_TYPE: TStringField;
    cdsBankInstructionListLINKID: TLargeintField;
    cdsBankInstructionListLINKNO: TStringField;
    cdsBankInstructionListACCID: TIntegerField;
    cdsBankInstructionListACCCODE: TStringField;
    cdsBankInstructionListACCNAME: TStringField;
    cdsBankInstructionListACCINIT: TStringField;
    cdsBankInstructionListACCTYPE: TStringField;
    cdsBankInstructionListPRDCODE: TStringField;
    cdsBankInstructionListACCBANKID_SOURCE: TIntegerField;
    cdsBankInstructionListBNCODE_SOURCE: TStringField;
    cdsBankInstructionListBNACCNO_SOURCE: TStringField;
    cdsBankInstructionListBNACCNAME_SOURCE: TStringField;
    cdsBankInstructionListBNBRANCH_SOURCE: TStringField;
    cdsBankInstructionListACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionListBNCODE_TARGET: TStringField;
    cdsBankInstructionListBNACCNO_TARGET: TStringField;
    cdsBankInstructionListBNACCNAME_TARGET: TStringField;
    cdsBankInstructionListBNBRANCH_TARGET: TStringField;
    cdsBankInstructionListTRANFER_TYPE: TStringField;
    cdsBankInstructionListCCY: TStringField;
    cdsBankInstructionListAMOUNT: TFloatField;
    cdsBankInstructionListCHARGES: TFloatField;
    cdsBankInstructionListNETAMOUNT: TFloatField;
    cdsBankInstructionListBANK_SOURCE: TStringField;
    dsBankInstructionList: TDataSource;
    grdMasterLevel2: TcxGridLevel;
    gvwBankInstruction: TcxGridDBBandedTableView;
    gvwBankInstructionBIID: TcxGridDBBandedColumn;
    gvwBankInstructionBINO: TcxGridDBBandedColumn;
    gvwBankInstructionBITYPE: TcxGridDBBandedColumn;
    gvwBankInstructionENTRYDATE: TcxGridDBBandedColumn;
    gvwBankInstructionVALUEDATE: TcxGridDBBandedColumn;
    gvwBankInstructionBIDESC: TcxGridDBBandedColumn;
    gvwBankInstructionBANK_REF: TcxGridDBBandedColumn;
    gvwBankInstructionTRANS_TYPE: TcxGridDBBandedColumn;
    gvwBankInstructionLINKID: TcxGridDBBandedColumn;
    gvwBankInstructionLINKNO: TcxGridDBBandedColumn;
    gvwBankInstructionACCID: TcxGridDBBandedColumn;
    gvwBankInstructionACCCODE: TcxGridDBBandedColumn;
    gvwBankInstructionACCNAME: TcxGridDBBandedColumn;
    gvwBankInstructionACCINIT: TcxGridDBBandedColumn;
    gvwBankInstructionACCTYPE: TcxGridDBBandedColumn;
    gvwBankInstructionPRDCODE: TcxGridDBBandedColumn;
    gvwBankInstructionACCBANKID_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNCODE_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNO_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNAME_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionBNBRANCH_SOURCE: TcxGridDBBandedColumn;
    gvwBankInstructionACCBANKID_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNCODE_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNO_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNACCNAME_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionBNBRANCH_TARGET: TcxGridDBBandedColumn;
    gvwBankInstructionTRANFER_TYPE: TcxGridDBBandedColumn;
    gvwBankInstructionCCY: TcxGridDBBandedColumn;
    gvwBankInstructionAMOUNT: TcxGridDBBandedColumn;
    gvwBankInstructionCHARGES: TcxGridDBBandedColumn;
    gvwBankInstructionNETAMOUNT: TcxGridDBBandedColumn;
    gvwBankInstructionBANK_SOURCE: TcxGridDBBandedColumn;
    popBankInstruction: TPopupMenu;
    GenerateBankInstructionFile1: TMenuItem;
    actGenerateBankInstructionFile: TNAction;
    grdMasterLevel3: TcxGridLevel;
    gvwBankChart: TcxGridDBChartView;
    gvwBankChartSeries1: TcxGridDBChartSeries;
    gvwBankChartDataGroup1: TcxGridDBChartDataGroup;
    cdsBankInstructionListBNNAME_SOURCE: TStringField;
    cdsBankInstructionListINITIAL_NAME_SOURCE: TStringField;
    cdsBankInstructionListBICODE_SOURCE: TStringField;
    cdsBankInstructionListBNNAME_TARGET: TStringField;
    cdsBankInstructionListINITIAL_NAME_TARGET: TStringField;
    cdsBankInstructionListBICODE_TARGET: TStringField;
    OpenDialog: TOpenDialog;
    dtTransDate: TcxBarEditItem;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    dtTo: TcxBarEditItem;
    gvwMasterCDDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACTLED_ACCID: TcxGridDBBandedColumn;
    gvwMasterACTLED_SEQID: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterLINKTYPE: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterLINKNO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL: TcxGridDBBandedColumn;
    gvwMasterLEDGERTRANSID: TcxGridDBBandedColumn;
    gvwMasterLEDGERTRANSID_REVERSED: TcxGridDBBandedColumn;
    gvwMasterFUNDTRANSID: TcxGridDBBandedColumn;
    gvwMasterFUNDTRANSID_REVERSED: TcxGridDBBandedColumn;
    gvwMasterDEP_TYPE: TcxGridDBBandedColumn;
    gvwMasterUPLOAD_TIME: TcxGridDBBandedColumn;
    gvwMasterISCCBEST: TcxGridDBBandedColumn;
    gvwMasterPOSTED_TIME: TcxGridDBBandedColumn;
    gvwMasterCANCEL_TIME: TcxGridDBBandedColumn;
    gvwMasterREVERSED_TIME: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    Posting1: TMenuItem;
    actCashDepCancel: TNAction;
    CashDepositCancel1: TMenuItem;
    cdsCashDepENTRYDATE: TDateField;
    cdsCashDepACCSOPID: TLargeintField;
    cdsCashDepLEDGERTRANSID: TLargeintField;
    cdsCashDepLEDGERTRANSID_REVERSED: TLargeintField;
    cdsCashDepFUNDTRANSID: TLargeintField;
    cdsCashDepFUNDTRANSID_REVERSED: TLargeintField;
    cdsCashDepLINKNO: TStringField;
    cdsCashDepDEP_TYPE: TStringField;
    cdsCashDepUPLOAD_TIME: TDateTimeField;
    cdsCashDepISCCBEST: TStringField;
    cdsCashDepPOSTED_TIME: TDateTimeField;
    cdsCashDepCANCEL_TIME: TDateTimeField;
    cdsCashDepREVERSED_TIME: TDateTimeField;
    cdsCashDepLINKTYPE: TStringField;
    cdsCashDepLINKID: TLargeintField;
    cdsCashDepPOSTED_DATE: TDateTimeField;
    cdsCashDepPOSTED_SYSDATE: TDateTimeField;
    cdsCashDepPOSTED_UI: TStringField;
    cdsCashDepCANCEL: TStringField;
    cdsCashDepCANCEL_DATE: TDateTimeField;
    cdsCashDepCANCEL_SYSDATE: TDateTimeField;
    cdsCashDepCANCEL_UI: TStringField;
    cdsCashDepREVERSED: TStringField;
    cdsCashDepREVERSED_DATE: TDateTimeField;
    cdsCashDepREVERSED_SYSDATE: TDateTimeField;
    cdsCashDepREVERSED_UI: TStringField;
    cdsCashDepSTAT: TStringField;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    chStatus: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cdsCashDepListCDID: TLargeintField;
    cdsCashDepListCDCODE: TStringField;
    cdsCashDepListCDDATE: TDateField;
    cdsCashDepListCDDESC: TStringField;
    cdsCashDepListACCID: TIntegerField;
    cdsCashDepListISRDN: TStringField;
    cdsCashDepListBANKID: TLargeintField;
    cdsCashDepListACCBANKID: TIntegerField;
    cdsCashDepListCCY: TStringField;
    cdsCashDepListCDAMT: TFloatField;
    cdsCashDepListLEDGERTRANSID: TLargeintField;
    cdsCashDepListLEDGERTRANSID_REVERSED: TLargeintField;
    cdsCashDepListFUNDTRANSID: TLargeintField;
    cdsCashDepListFUNDTRANSID_REVERSED: TLargeintField;
    cdsCashDepListDEP_TYPE: TStringField;
    cdsCashDepListUPLOAD_TIME: TDateTimeField;
    cdsCashDepListISCCBEST: TStringField;
    cdsCashDepListENTRYDATE: TDateTimeField;
    cdsCashDepListENTRY_SYSDATE: TDateTimeField;
    cdsCashDepListENTRY_UI: TStringField;
    cdsCashDepListSTAT: TStringField;
    cdsCashDepListPOSTED_DATE: TDateTimeField;
    cdsCashDepListPOSTED_SYSDATE: TDateTimeField;
    cdsCashDepListPOSTED_UI: TStringField;
    cdsCashDepListCANCEL_DATE: TDateTimeField;
    cdsCashDepListCANCEL_SYSDATE: TDateTimeField;
    cdsCashDepListCANCEL_UI: TStringField;
    cdsCashDepListREVERSED_DATE: TDateTimeField;
    cdsCashDepListREVERSED_SYSDATE: TDateTimeField;
    cdsCashDepListREVERSED_UI: TStringField;
    cdsCashDepListMODDA: TDateTimeField;
    cdsCashDepListMODUI: TStringField;
    cdsCashDepListAPPDA: TDateTimeField;
    cdsCashDepListAPPUI: TStringField;
    cdsCashDepListUNDER4Y: TIntegerField;
    cdsCashDepListUNDER4YDA: TDateTimeField;
    cdsCashDepListNOTES4Y: TStringField;
    cdsCashDepListISDEL: TIntegerField;
    cdsCashDepListID: TLargeintField;
    cdsCashDepListLINKTYPE: TStringField;
    cdsCashDepListLINKID: TLargeintField;
    cdsCashDepListLINKNO: TStringField;
    cdsCashDepListPOSTED_TIME: TDateTimeField;
    cdsCashDepListCANCEL_TIME: TDateTimeField;
    cdsCashDepListREVERSED_TIME: TDateTimeField;
    cdsCashDepListACCNO: TStringField;
    cdsCashDepListACCSOPID: TLargeintField;
    cdsCashDepListPOSTED: TStringField;
    cdsCashDepListCANCEL: TStringField;
    cdsCashDepListREVERSED: TStringField;
    cdsCashDepListACTLED_ACCID: TIntegerField;
    cdsCashDepListACTLED_SEQID: TIntegerField;
    cdsCashDepListACCNAME: TStringField;
    cdsCashDepListBNCODE: TStringField;
    cdsCashDepListBANKACCNO: TStringField;
    cdsCashDepListBANKACCNAME: TStringField;
    cdsCashDepListBANKBRANCH: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsCashDepACCIDChange(Sender: TField);
    procedure actCashDepPostingExecute(Sender: TObject);
    procedure actCashDepPostingAllExecute(Sender: TObject);
    procedure cdsCashDepListACCIDChange(Sender: TField);
    procedure dslubank(Sender: TField);
    procedure DataContainerBeforePost(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure actEditUpdate(Sender: TObject);
    procedure DataContainerAfterOpenEditorDataset(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure popMasterPopup(Sender: TObject);
    procedure actCashDepReverseExecute(Sender: TObject);
    procedure cdsBankInstructionListCalcFields(DataSet: TDataSet);
    procedure actGenerateBankInstructionFileExecute(Sender: TObject);
    procedure gvwBankChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure actNewExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
    procedure actCashDepReverseUpdate(Sender: TObject);
    procedure actCashDepCancelExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
  private
    { Private declarations }
    FBankInstructions: TDictionary<String,TStringList>;
  public
    { Public declarations }
  end;

var
  frmCashDepList: TfrmCashDepList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormCashDep, FormCashSettlementVoucherList,
  FormProgressBar, FormViewTransaction;

procedure TfrmCashDepList.actCashDepReverseExecute(Sender: TObject);
var
  bCon: Boolean;
  sMsg: string;
  slMsgD: TStringList;
  slMsgR: TStringList;
  i, iRowCount: integer;
  iCashDepID: Int64;
  oProgress: TfrmProgressBar;
begin
  inherited;
  bCon   := False;
  slMsgD := TStringList.Create;
  slMsgR := TStringList.Create;

  if gvwMaster.Controller.SelectedRowCount = 1 then
  begin
    if MessageQuestion('Are you sure to reverse cash deposit?') then
    begin
      dmGlobal.RemoteServer.CashDepositReverse(cdsCashDepListCDID.AsInteger, sMsg);
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
    end;
  end
  else if gvwMaster.Controller.SelectedRowCount > 1 then
  begin
    if MessageQuestion('Are you sure to reverse selected cash deposit?') then
      bCon := True;
  end;

  if bCon then
  begin
    try
      iRowCount := gvwMaster.Controller.SelectedRowCount;
      oProgress := TfrmProgressBar.Create(Nil);
      oProgress.Show;

      for i := 0 to iRowCount -1 do
      begin
        iCashDepID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterCDID.Index];

        oProgress.ChangeBar(trunc((i + 1) / iRowCount * 100), 'Processing Reverse Cash Deposit '+  QuotedStr(IntToStr(iCashDepID)));

        if dmGlobal.RemoteServer.CashDepositReverse(iCashDepID, sMsg) then
          slMsgD.Add(sMsg)
        else
          slMsgR.Add('   - '+ sMsg);
      end;
    finally
      FreeAndNil(oProgress);

      sMsg := 'Cash deposit reverse has been done, ' +#13+#10+
        FormatFloat('#,##', slMsgD.Count) +' successfully reversed and ' +
        FormatFloat('#,##', slMsgD.Count) +' failed to reverse';

      if slMsgR.Count > 0 then
        sMsg := sMsg +#13#10+ slMsgR.Text;

      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

      FreeAndNil(slMsgD);
      FreeAndNil(slMsgR);

      if slMsgD.Count > 0 then
        actRefresh.Execute;
    end;
  end;
end;

procedure TfrmCashDepList.actCashDepReverseUpdate(Sender: TObject);
begin
  inherited;
  actCashDepReverse.Enabled := cdsCashDepListCANCEL.AsString = '0';
end;

procedure TfrmCashDepList.actCopySelectedExecute(Sender: TObject);
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

procedure TfrmCashDepList.actEditUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := (cdsCashDepListPOSTED.AsString <> '1') and (not VarIsNull( cdsCashDepListACCID.AsLargeInt));
  end;
end;

procedure TfrmCashDepList.actGenerateBankInstructionFileExecute(
  Sender: TObject);
var
  oProgress: TfrmProgressBar;
  i, j, n: Integer;
  oList: TStringList;
  oBankInstruction: TBankInstruction;
  sBank, sDir, sExt, sFolderName, sFileName, sTransferType, sBrokerCode, sFutureTransfer: String;
  dtValue, dtSystem: TDate;
begin
  inherited;
  if (cdsBankInstructionList.IsEmpty) or (not cdsBankInstructionList.Active) then
    Exit;

  oList := TStringList.Create;
  oProgress := TfrmProgressBar.Create(Nil);
  Try
    i := 0;
    n := cdsBankInstructionList.RecordCount;
    dtSystem := dmGlobal.RemoteServer.GetTransDate;
    sBrokerCode := dmGlobal.RemoteServer.GetBrokerCode;

    oProgress.Show;
    oProgress.ChangeBar(0, 'Generate Bank Instruction File');

    cdsBankInstructionList.First;
    while not cdsBankInstructionList.Eof do
    begin
      oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Bank Instruction '
        + QuotedStr(cdsBankInstructionListBINO.AsString));

      if (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BNGA')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMRI')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BM')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'SCB') then
      begin
        //Ini khusus dibuat untuk kebutuhan CIMB Multi Source
        sBank := cdsBankInstructionListBNCODE_SOURCE.AsString + '_' + FormatDateTime('ddMMyyyy', dtSystem);
      end
      else
      begin
        sBank := cdsBankInstructionListBNCODE_SOURCE.AsString + cdsBankInstructionListBNACCNO_SOURCE.AsString;
      end;

      j := oList.IndexOf(sBank);
      if j = -1 then
      begin
        dtValue := cdsBankInstructionListVALUEDATE.AsDateTime;
        if dtValue < dtSystem then
          dtValue := dtSystem;

        oBankInstruction := TBankInstruction.Create;
        oBankInstruction.BankCode := cdsBankInstructionListBNCODE_SOURCE.AsString;
        oBankInstruction.BankAccNo := cdsBankInstructionListBNACCNO_SOURCE.AsString;
        oBankInstruction.BankAccName := cdsBankInstructionListBNACCNAME_SOURCE.AsString;
        oBankInstruction.Ccy := cdsBankInstructionListCCY.AsString;
        oBankInstruction.ValueDate := dtValue;

        oList.AddObject(sBank, oBankInstruction);
      end
      else
      begin
        oBankInstruction := TBankInstruction(oList.Objects[j]);
      end;

      oBankInstruction.Nominal := oBankInstruction.Nominal + cdsBankInstructionListNETAMOUNT.AsFloat;

      //Bank Mandiri
      if (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMRI')
        or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BM') then
      begin
        //Ini Instruksi Untuk Single Source, biasa dipake oleh Bahana
        if sBrokerCode = 'DX' then
        begin
          oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_TARGET.AsString + ','
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ',,,,'
            + cdsBankInstructionListCCY.AsString + ','
            + cdsBankInstructionListNETAMOUNT.AsString + ','
            + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ','
            + cdsBankInstructionListBINO.AsString + ',IBU,,Mandiri,,,,,N,Email,,,,,,,,,,,,,,,,,,,,,,,'
            + cdsBankInstructionListBINO.AsString);
        end
        //Ini Instruksi Untuk Multi Source, biasa dipake CIMB
        else
        begin
          if cdsBankInstructionListVALUEDATE.AsDateTime > dtSystem then
            sFutureTransfer := '2'
          else
            sFutureTransfer := '1';

          oBankInstruction.Instruction.Add('M;' + sFutureTransfer + ';'
            + FormatDateTime('yyyyMMdd', cdsBankInstructionListVALUEDATE.AsDateTime)
            + ';1;;;;'
            + cdsBankInstructionListBNACCNO_SOURCE.AsString + ';'
            + cdsBankInstructionListBNACCNO_TARGET.AsString + ';'
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ';;;;'
            + cdsBankInstructionListCCY.AsString + ';'
            + cdsBankInstructionListNETAMOUNT.AsString + ';;N;;'
            + LeftStr(cdsBankInstructionListBIDESC.AsString, 20) + ';'
            + LeftStr(dmGlobal.BankDefDesc + cdsBankInstructionListBIID.AsString, 16)
            + ';IBU;;BANK MANDIRI;;;;INDONESIA;N;;;N;N;N;;;;;;;;;;;;;;;;;OUR;SPI;;;;;;;;;;;;;;;;;;;;;E;');
          oBankInstruction.Instruction.Add('');
          oBankInstruction.Instruction.Add(';');
        end;
      end
      //Bank CIMB Niaga
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BNGA' then
      begin
        //Ini Instruksi Untuk Single Source, biasa dipake oleh Bahana
        if sBrokerCode = 'DX' then
        begin
          oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_TARGET.AsString + ','
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
            + cdsBankInstructionListCCY.AsString + ','
            + cdsBankInstructionListNETAMOUNT.AsString + ','
            + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ','
            + 'finance@cimb.co.id');
        end
        //Ini Instruksi Untuk Multi Source, biasa dipake CIMB
        else
        begin
          oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_SOURCE.AsString + ','
            + cdsBankInstructionListBNACCNO_TARGET.AsString + ','
            + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
            + cdsBankInstructionListNETAMOUNT.AsString + ','
            + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ','
            + 'CIMB,BANK CIMB NIAGA');
        end;
      end
      //Bank BCA
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BCA' then
      begin
        oBankInstruction.Instruction.Add('1|' + IntToStr(oBankInstruction.Instruction.Count + 1) + '|'
          + cdsBankInstructionListBINO.AsString + '|'
          + cdsBankInstructionListBNACCNO_SOURCE.AsString + '|'
          + cdsBankInstructionListBNACCNO_TARGET.AsString + '|'
          + cdsBankInstructionListNETAMOUNT.AsString + '|||014||'
          + cdsBankInstructionListBNBRANCH_TARGET.AsString + '|'
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + '|||||');
      end
      //Bank Permata
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BNLI' then
      begin
        oBankInstruction.Instruction.Add('PermataBank,0,Jakarta,'
          + cdsBankInstructionListBICODE_TARGET.AsString + ','
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
          + cdsBankInstructionListBNACCNO_TARGET.AsString + ','
          + cdsBankInstructionListCCY.AsString + ','
          + FormatFloat('#.00', cdsBankInstructionListNETAMOUNT.AsFloat) + ','
          + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString + ',0,,ovb,1,1,Bursa Efek Indonesia,'
          + cdsBankInstructionListBINO.AsString + ',0,'
          + cdsBankInstructionListBNACCNO_SOURCE.AsString);
      end
      //Bank BNI
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'BBNI' then
      begin
        oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_TARGET.AsString + ',"'
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + '",'
          + cdsBankInstructionListNETAMOUNT.AsString + ','
          + dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString
          + ',,,,,,,,,,,,,Y,bsfinance@cimb.co.id,,N');
      end
      //Bank Standard Chartered
      else if cdsBankInstructionListBNCODE_SOURCE.AsString = 'SCB' then
      begin
        oBankInstruction.Instruction.Add(IntToStr(oBankInstruction.Instruction.Count + 1) + ',P,'
          + cdsBankInstructionListBNACCNO_SOURCE.AsString + ','
          + cdsBankInstructionListBNACCNAME_SOURCE.AsString + ','
          + cdsBankInstructionListCCY.AsString + ',"'
          + cdsBankInstructionListNETAMOUNT.AsString + '",'
          + cdsBankInstructionListBIDESC.AsString + ',ACH,'
          + cdsBankInstructionListBINO.AsString + ','
          + cdsBankInstructionListBNACCNAME_TARGET.AsString + ','
          + cdsBankInstructionListBNACCNO_TARGET.AsString + ',ID,JKT,'
          + cdsBankInstructionListBICODE_TARGET.AsString);
      end;

      i := i + 1;
      cdsBankInstructionList.Next;
    end;

    //Save File to Bank Inteerface Directory
    oProgress.ChangeBarCaption('Saving Bank Instruction File');
    sDir := dmGlobal.FITSBankInterfaceDir;

    if DirectoryExists(sDir) then
    begin
      while oList.Count > 0 do
      begin
        oBankInstruction := TBankInstruction(oList.Objects[0]);

        sFolderName := sDir + oBankInstruction.BankCode + '\';
        if not DirectoryExists(sFolderName) then
          CreateDir(sFolderName);

        if (oBankInstruction.BankCode = 'BMRI') or (oBankInstruction.BankCode = 'BM') then
        begin
          sExt := '.txt';
          if sBrokerCode = 'DX' then
          begin
            oBankInstruction.Instruction.Insert(0, 'P,'
              + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + ','
              + oBankInstruction.BankAccNo + ','
              + IntToStr(oBankInstruction.Instruction.Count) + ','
              + FloatToStr(oBankInstruction.Nominal) + ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,');
          end;
        end
        else if (oBankInstruction.BankCode = 'BNGA') then
        begin
          sExt := '.csv';
          //Ini Instruksi Untuk Single Source, biasa dipake oleh Bahana
          if sBrokerCode = 'DX' then
          begin
            oBankInstruction.Instruction.Insert(0, oBankInstruction.BankAccNo + ','
              + oBankInstruction.BankAccName + ','
              + oBankInstruction.Ccy + ','
              + FloatToStr(oBankInstruction.Nominal) + ',CIMB 1,'
              + IntToStr(oBankInstruction.Instruction.Count) + ','
              + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + ',finance@cimb.co.id');
          end;
        end
        else if (oBankInstruction.BankCode = 'BCA') then
        begin
          sExt := '.txt';
          sTransferType := 'BCA';
          oBankInstruction.Instruction.Insert(0, '0|FT|'
            + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + '_'
            + IntToStr(oBankInstruction.Instruction.Count) + '||P|'
            + FormatDateTime('YYYYMMDD', oBankInstruction.ValueDate) + '||'
            + FormatCurr('#.00', oBankInstruction.Nominal) + '|'
            + IntToStr(oBankInstruction.Instruction.Count) + '|BCA|'
            + oBankInstruction.Ccy + '|');
        end
        else if (oBankInstruction.BankCode = 'BBNI') then
        begin
          sExt := '.csv';
          oBankInstruction.Instruction.Insert(0, FormatDateTime('dd/mm/yyyy hh:nn', oBankInstruction.ValueDate) + ','
            + IntToStr(oBankInstruction.Instruction.Count + 2) + ',Payment,,,,,,,,,,,,,,,,,');


          oBankInstruction.Instruction.Insert(1, 'P,' + FormatDateTime('yyyymmdd', oBankInstruction.ValueDate) + ','
            + oBankInstruction.BankAccNo + ','
            + IntToStr(oBankInstruction.Instruction.Count) + ','
            + FloatToStr(oBankInstruction.Nominal) + ',,,,,,,,,,,,,,,');
        end
        else if (oBankInstruction.BankCode = 'SCB') then
        begin
          sExt := '.csv';
          oBankInstruction.Instruction.Insert(0, 'No,TYPE,DEBIT AC,NAME,CCY,AMOUNT,DESCRIPTION,PAY-TYPE,REF NO,BENEFICIARY NAME,PAYEE A/C,COUNTRY,CITY,BANK CODE');
          oBankInstruction.Instruction.Add('TOTAL,,,,,"'
            + FloatToStr(oBankInstruction.Nominal) + '",,,,,,,,');
        end;

        if (oBankInstruction.BankCode = 'BNGA')
          or (oBankInstruction.BankCode = 'BM')
          or (oBankInstruction.BankCode = 'BMRI')
          or (oBankInstruction.BankCode = 'SCB') then
        begin
          //Ini khusus dibuat untuk kebutuhan CIMB
          sFileName := sFolderName + oBankInstruction.BankCode + '_' + FormatDateTime('YYYYMMDD', dtSystem) + sExt;
        end
        else
        begin
          sFileName := sFolderName + oBankInstruction.BankAccNo + '_' + FormatDateTime('YYYYMMDD', dtSystem) + sExt;
        end;

        oBankInstruction.Instruction.SaveToFile(sFileName);

        if oBankInstruction.BankCode = 'BCA' then
          dmGlobal.GenerateBCAChecksum(sFileName, sTransferType);

        //Free List Object
        oList.Delete(0);
        FreeAndNil(oBankInstruction);
      end;

    end
    else
      MessageDlg(sDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);

  Finally
    FreeAndNil(oProgress);
    FreeAndNil(oList);
  End;

  ShowMessage('Please Check Bank Instruction File in Directory ' + QuotedStr(sDir));
end;

procedure TfrmCashDepList.actNewExecute(Sender: TObject);
var
  sKey, sMsg: String;
  CDID: Int64;
begin
//  inherited;

  //Request By Irvan 20170430 untuk cash deposit auto posting setelah data insert
  sKey := '';
  dmGlobal.DefaultAccountID := -1;
  if dmGlobal.ShowEditorForm(TfrmCashDep, sKey, pkCreate) = mrOk then
  Begin
    CDID := StrToInt64Def(sKey, Low(Int64));
    if CDID <> Low(Int64) then
    begin
      if dmGlobal.RemoteServer.PostCashDep(CDID, sMsg) then
        ShowMessage(sMsg);
    end;

    if dsBrowseMaster.DataSet.Active then
    Begin
      dsBrowseMaster.DataSet.Close;
      dsBrowseMaster.DataSet.Open;
    End;
  End;

end;

procedure TfrmCashDepList.actCashDepCancelExecute(Sender: TObject);
var
  bCon: Boolean;
  sMsg: string;
  slMsgD: TStringList;
  slMsgR: TStringList;
  i, iRowCount: integer;
  iCashDepID: Int64;
  oProgress: TfrmProgressBar;
begin
  inherited;
  bCon   := False;
  slMsgD := TStringList.Create;
  slMsgR := TStringList.Create;

  if gvwMaster.Controller.SelectedRowCount = 1 then
  begin
    if MessageQuestion('Are you sure to cancel cash deposit?') then
    begin
      dmGlobal.RemoteServer.CashDepCancel(cdsCashDepListCDID.AsInteger, sMsg);
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
    end;
  end
  else if gvwMaster.Controller.SelectedRowCount > 1 then
  begin
    if MessageQuestion('Are you sure to cancel selected cash deposit?') then
      bCon := True;
  end;

  if bCon then
  begin
    try
      iRowCount := gvwMaster.Controller.SelectedRowCount;
      oProgress := TfrmProgressBar.Create(Nil);
      oProgress.Show;

      for i := 0 to iRowCount -1 do
      begin
        iCashDepID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterCDID.Index];

        oProgress.ChangeBar(trunc((i + 1) / iRowCount * 100), 'Processing Cancel Cash Deposit '+  QuotedStr(IntToStr(iCashDepID)));

        if dmGlobal.RemoteServer.CashDepCancel(iCashDepID, sMsg) then
          slMsgD.Add(sMsg)
        else
          slMsgR.Add('   - '+ sMsg);
      end;
    finally
      FreeAndNil(oProgress);

      sMsg := 'Cash deposit cancel has been done, ' +#13+#10+
        FormatFloat('#,##', slMsgD.Count) +' successfully canceled and ' +
        FormatFloat('#,##', slMsgD.Count) +' failed to cancel';

      if slMsgR.Count > 0 then
        sMsg := sMsg +#13#10+ slMsgR.Text;

      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

      FreeAndNil(slMsgD);
      FreeAndNil(slMsgR);

      if slMsgD.Count > 0 then
        actRefresh.Execute;
    end;
  end;
end;

procedure TfrmCashDepList.actCashDepPostingAllExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Are you sure to posting all cash deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.CashDepositPostAll(VarToDateTime(dtTransDate.EditValue), sMsg);
    MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCashDepList.actCashDepPostingExecute(Sender: TObject);
var
  bCon: Boolean;
  sMsg: string;
  slMsgD: TStringList;
  slMsgR: TStringList;
  i, iRowCount: integer;
  iCashDepID: Int64;
  oProgress: TfrmProgressBar;
begin
  inherited;
  bCon   := False;
  slMsgD := TStringList.Create;
  slMsgR := TStringList.Create;

  if gvwMaster.Controller.SelectedRowCount = 1 then
  begin
    if MessageQuestion('Are you sure to posting cash deposit?') then
    begin
      dmGlobal.RemoteServer.CashDepPosting(cdsCashDepListCDID.AsInteger, sMsg);
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
    end;
  end
  else if gvwMaster.Controller.SelectedRowCount > 1 then
  begin
    if MessageQuestion('Are you sure to posting selected cash deposit?') then
      bCon := True;
  end;

  if bCon then
  begin
    try
      iRowCount := gvwMaster.Controller.SelectedRowCount;
      oProgress := TfrmProgressBar.Create(Nil);
      oProgress.Show;

      for i := 0 to iRowCount -1 do
      begin
        iCashDepID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterCDID.Index];

        oProgress.ChangeBar(trunc((i + 1) / iRowCount * 100), 'Processing Posting Cash Deposit '+  QuotedStr(IntToStr(iCashDepID)));

        if dmGlobal.RemoteServer.PostCashDep(iCashDepID, sMsg) then
          slMsgD.Add(sMsg)
        else
          slMsgR.Add('   - '+ sMsg);
      end;
    finally
      FreeAndNil(oProgress);

      sMsg := 'Cash deposit posting has been done, ' +#13+#10+
        FormatFloat('#,##', slMsgD.Count) +' successfully posted and ' +
        FormatFloat('#,##', slMsgD.Count) +' failed to posting';

      if slMsgR.Count > 0 then
        sMsg := sMsg +#13#10+ slMsgR.Text;

      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

      FreeAndNil(slMsgD);
      FreeAndNil(slMsgR);

      if slMsgD.Count > 0 then
        actRefresh.Execute;
    end;
  end;
end;

procedure TfrmCashDepList.actRefreshExecute(Sender: TObject);
var
  sTempStatus, sStatus: string;
begin
//  inherited;
  sTempStatus := chStatus.EditValue;
  sStatus     := '';

  // Status : Created
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '1';
  end;

  // Status : Posted
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '2';
  end;

  // Status : Reversed
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '3';
  end;

  // Status : Canceled
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '4';
  end;

  cdsCashDepList.Close;
  cdsCashdepList.Params[0].AsDate   := dtTransDate.EditValue;
  cdsCashdepList.Params[1].AsDate   := dtTo.EditValue;
  cdsCashdepList.Params[2].AsString := sStatus;
  cdsCashDepList.Open;
end;

procedure TfrmCashDepList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsCashDepListCDDATE.AsDateTime;
    iLedgerTransID := cdsCashDepListLEDGERTRANSID.AsLargeInt;
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

procedure TfrmCashDepList.dslubank(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankRDNByAccount.Locate('ACCBANKID', cdsCashDepACCBANKID.Value, []) then
    begin
      cdsCashDepACTLED_ACCID.AsInteger := cdsLuBankRDNByAccountACCID.AsInteger;
      cdsCashDepACTLED_SEQID.AsInteger := cdsLuBankRDNByAccountACTLED_SEQID.AsInteger;
      cdsCashDepCCY.AsString           := cdsLuBankRDNByAccountCCYCODE.AsString;
    end;
  end;
end;

procedure TfrmCashDepList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '1111';
end;

procedure TfrmCashDepList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '0000';
end;

procedure TfrmCashDepList.cdsBankInstructionListCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsBankInstructionListBANK_SOURCE.AsString := cdsBankInstructionListBNCODE_SOURCE.AsString
    + ' : ' + cdsBankInstructionListBNACCNO_SOURCE.AsString;
end;

procedure TfrmCashDepList.cdsCashDepACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuActLedCashByAccount.Params[0].AsInteger <> cdsCashDepACCID.AsInteger) or (not cdsLuActLedCashByAccount.Active) then
    begin
      cdsLuActLedCashByAccount.Close;
      cdsLuActLedCashByAccount.Params[0].AsInteger := cdsCashDepACCID.AsInteger;
      cdsLuActLedCashByAccount.Open;
    end;

    if (cdsLuBankRDNByAccount.Params[0].AsInteger <> cdsCashDepACCID.AsInteger) or (not cdsLuBankRDNByAccount.Active) then
    begin
      cdsLuBankRDNByAccount.Close;
      cdsLuBankRDNByAccount.Params[0].AsInteger := cdsCashDepACCID.AsInteger;
      cdsLuBankRDNByAccount.Params[1].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
      cdsLuBankRDNByAccount.Open;

      cdsCashDepACTLED_ACCID.Clear;
      cdsCashDepACTLED_SEQID.Clear;
    end;

    if cdsLuAccount.Locate('ACCID', cdsCashDepACCID.Value, []) then
      cdsCashDepACCNO.AsString := cdsLuAccountACCCODE.AsString;
  end;
end;

procedure TfrmCashDepList.cdsCashDepListACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuBankRDNByAccount.Params[0].AsInteger <> cdsCashDepACCID.AsInteger) or
      (not cdsLuBankRDNByAccount.Active) then
    begin
      cdsLuBankRDNByAccount.Close;
      cdsLuBankRDNByAccount.Params[0].AsInteger := cdsCashDepACCID.AsInteger;
      cdsLuBankRDNByAccount.Params[1].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
      cdsLuBankRDNByAccount.Open;

      cdsCashDepACCBANKID.Clear;
      cdsCashDepACTLED_ACCID.Clear;
      cdsCashDepACTLED_SEQID.Clear;
    end;

    if cdsLuAccount.Locate('ACCID', cdsCashDepACCID.Value, []) then
      cdsCashDepACCNO.AsString := cdsLuAccountACCCODE.AsString;

  end;
end;

procedure TfrmCashDepList.DataContainerAfterOpenEditorDataset(
  Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  if (Sender.MasterDataset.FieldByName('POSTED').AsString = '1') and (Sender.State = mddsEdit) then
  begin
    AContinue := False;
    MessageDlg('This data was posted.' + #13 + 'You Can''t change this data.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmCashDepList.DataContainerBeforePost(Sender: TNMasterDetailData;
  var AContinue: Boolean);
begin
  inherited;
  if Sender.State = mddsInsert then
  begin
    if Sender.Control4Eyes then
      Sender.MasterDatasetUpd.FieldByName('POSTED').Clear
    else
      Sender.MasterDataset.FieldByName('POSTED').Clear;
  end;
end;

procedure TfrmCashDepList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCashDep;
end;

procedure TfrmCashDepList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsCashDepListCDID;
  dtTransDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtTo.EditValue        := dtTransDate.EditValue;
  chStatus.EditValue    := '1000';
end;

procedure TfrmCashDepList.gvwBankChartSeries1GetValueDisplayText(
  Sender: TObject; const AValue: Variant; var ADisplayText: string);
var
  sValue: String;
  fValue: Currency;
begin
  inherited;
  sValue := VarToStr(AValue);
  fValue := StrToCurrDef(sValue, MinCurrency);

  if fValue <> MinCurrency then
  begin
    ADisplayText := FormatCurr('#,##0.00', fValue);
  end;
end;

procedure TfrmCashDepList.popMasterPopup(Sender: TObject);
begin
  inherited;
  if cdsCashDepListPOSTED.AsString = '1' then
    actCashDepPosting.Enabled := False
  else
    actCashDepPosting.Enabled := True;
end;

Initialization
  RegisterClass(TfrmCashDepList);

end.
