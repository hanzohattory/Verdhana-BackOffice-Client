unit FormRDNCashDepositList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGrid, cxCheckBox, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, System.Actions, System.ImageList, ComObj,
  dxDateRanges, cxBarEditItem, DateUtils,System.Math,Clipbrd, cxSpinEdit,
  cxLabel, Vcl.ExtCtrls, dxScrollbarAnnotations, cxImageComboBox;

type
  TfrmRDNCashDepositList = class(TfrmBrowseData)
    cdsRDNCashDepositList: TNClientDataset;
    cdsRDNCashDepositListCMID: TLargeintField;
    cdsRDNCashDepositListCMCODE: TStringField;
    cdsRDNCashDepositListCMDATE: TDateField;
    cdsRDNCashDepositListCMTYPE: TStringField;
    cdsRDNCashDepositListCMDESC: TStringField;
    cdsRDNCashDepositListACCID: TIntegerField;
    cdsRDNCashDepositListACCNO: TStringField;
    cdsRDNCashDepositListACCBANKID: TIntegerField;
    cdsRDNCashDepositListDC: TStringField;
    cdsRDNCashDepositListCCY: TStringField;
    cdsRDNCashDepositListCMAMT: TFloatField;
    cdsRDNCashDepositListPOSTED: TStringField;
    cdsRDNCashDepositListPOSTED_UI: TStringField;
    cdsRDNCashDepositListCANCEL: TStringField;
    cdsRDNCashDepositListCANCEL_DATE: TDateField;
    cdsRDNCashDepositListCANCEL_UI: TStringField;
    gvwMasterCMID: TcxGridDBBandedColumn;
    gvwMasterCMCODE: TcxGridDBBandedColumn;
    gvwMasterCMDATE: TcxGridDBBandedColumn;
    gvwMasterCMTYPE: TcxGridDBBandedColumn;
    gvwMasterCMDESC: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterDC: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterCMAMT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCEL: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    cdsRDNCashDeposit: TNClientDataset;
    cdsRDNCashDepositCMID: TLargeintField;
    cdsRDNCashDepositCMCODE: TStringField;
    cdsRDNCashDepositCMDATE: TDateField;
    cdsRDNCashDepositCMTYPE: TStringField;
    cdsRDNCashDepositCMDESC: TStringField;
    cdsRDNCashDepositACCID: TIntegerField;
    cdsRDNCashDepositACCNO: TStringField;
    cdsRDNCashDepositACCBANKID: TIntegerField;
    cdsRDNCashDepositDC: TStringField;
    cdsRDNCashDepositCCY: TStringField;
    cdsRDNCashDepositCMAMT: TFloatField;
    cdsRDNCashDepositPOSTED: TStringField;
    cdsRDNCashDepositMODDA: TDateTimeField;
    cdsRDNCashDepositMODUI: TStringField;
    cdsRDNCashDepositAPPDA: TDateTimeField;
    cdsRDNCashDepositAPPUI: TStringField;
    cdsRDNCashDepositUNDER4Y: TIntegerField;
    cdsRDNCashDepositUNDER4YDA: TDateTimeField;
    cdsRDNCashDepositNOTES4Y: TStringField;
    cdsRDNCashDepositISDEL: TIntegerField;
    cdsRDNCashDepositID: TLargeintField;
    cdsRDNCashDepositPOSTED_DATE: TDateField;
    cdsRDNCashDepositPOSTED_UI: TStringField;
    cdsRDNCashDepositCANCEL: TStringField;
    cdsRDNCashDepositCANCEL_DATE: TDateField;
    cdsRDNCashDepositCANCEL_UI: TStringField;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNACCNO: TcxGridDBBandedColumn;
    gvwMasterBNACCNAME: TcxGridDBBandedColumn;
    gvwMasterBNBRANCH: TcxGridDBBandedColumn;
    actCashMutationPosting: TNAction;
    actCashMutationReverse: TNAction;
    N1: TMenuItem;
    Posting1: TMenuItem;
    Reverse1: TMenuItem;
    actUploadDataDeposit: TNAction;
    actUploadDeposit: TMenuItem;
    N5: TMenuItem;
    opDialog: TOpenDialog;
    cdsAccountsByAccNo: TNClientDataset;
    cdsAccountsByAccNoACCID: TIntegerField;
    cdsAccountsByAccNoACCNAME: TStringField;
    cdsAccountsByAccNoACCCODE: TStringField;
    cdsAccountsByAccNoACCBANKID: TIntegerField;
    cdsAccountsByAccNoACCBANKCODE: TStringField;
    Cancel1: TMenuItem;
    dtTrans: TcxBarEditItem;
    actPostingAll: TNAction;
    dxBarButton1: TdxBarButton;
    cdsRDNCashDepositListREVERSED: TStringField;
    cdsRDNCashDepositListREVERSED_DATE: TDateField;
    cdsRDNCashDepositListREVERSED_UI: TStringField;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    chkOpen: TcxBarEditItem;
    chkPosted: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    chkReversed: TcxBarEditItem;
    actCopySelected: TNAction;
    Copygirdwithheader1: TMenuItem;
    cdsRDNCashDepositListPOSTED_TIME: TDateTimeField;
    cdsRDNCashDepositListCANCEL_TIME: TDateTimeField;
    cdsRDNCashDepositListREVERSED_TIME: TDateTimeField;
    gvwMasterPOSTED_TIME: TcxGridDBBandedColumn;
    gvwMasterCANCEL_TIME: TcxGridDBBandedColumn;
    gvwMasterREVERSED_TIME: TcxGridDBBandedColumn;
    dtTo: TcxBarEditItem;
    cdsUploadRDN: TNClientDataset;
    cdsUploadRDNCMID: TLargeintField;
    cdsUploadRDNCMCODE: TStringField;
    cdsUploadRDNCMDATE: TDateField;
    cdsUploadRDNCMTYPE: TStringField;
    cdsUploadRDNCMDESC: TStringField;
    cdsUploadRDNACCID: TIntegerField;
    cdsUploadRDNACCNO: TStringField;
    cdsUploadRDNACCBANKID: TIntegerField;
    cdsUploadRDNDC: TStringField;
    cdsUploadRDNCCY: TStringField;
    cdsUploadRDNCMAMT: TFloatField;
    cdsUploadRDNPOSTED: TStringField;
    cdsUploadRDNMODDA: TDateTimeField;
    cdsUploadRDNMODUI: TStringField;
    cdsUploadRDNAPPDA: TDateTimeField;
    cdsUploadRDNAPPUI: TStringField;
    cdsUploadRDNUNDER4Y: TIntegerField;
    cdsUploadRDNUNDER4YDA: TDateTimeField;
    cdsUploadRDNNOTES4Y: TStringField;
    cdsUploadRDNISDEL: TIntegerField;
    cdsUploadRDNID: TLargeintField;
    cdsUploadRDNPOSTED_DATE: TDateField;
    cdsUploadRDNPOSTED_UI: TStringField;
    cdsUploadRDNCANCEL: TStringField;
    cdsUploadRDNCANCEL_DATE: TDateField;
    cdsUploadRDNCANCEL_UI: TStringField;
    cdsRDNCashDepositListACCNAME: TStringField;
    cdsRDNCashDepositListBNCODE: TStringField;
    cdsRDNCashDepositListBNACCNO: TStringField;
    cdsRDNCashDepositListBNACCNAME: TStringField;
    cdsRDNCashDepositListBNBRANCH: TStringField;
    cdsRDNCashDepositListSTAT: TStringField;
    actUploadRDNCashFromExcel: TNAction;
    cdsUploadCashRDN: TNClientDataset;
    cdsUploadCashRDNROWNO: TIntegerField;
    cdsUploadCashRDNTRANS_DATE: TDateField;
    cdsUploadCashRDNACCNO: TStringField;
    cdsUploadCashRDNACCNAME: TStringField;
    cdsUploadCashRDNPRIV_BANK_ACCNO: TStringField;
    cdsUploadCashRDNAMOUNT: TFloatField;
    cdsUploadCashRDNBANK_CHARGE: TFloatField;
    cdsUploadCashRDNDESCRIPTION: TStringField;
    PagesBar: TdxBar;
    dxBarButton2: TdxBarButton;
    edPage: TcxBarEditItem;
    lbTotalPages: TcxBarEditItem;
    edAccNo: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    edH2H: TcxBarEditItem;
    cdsCashMutationToExcel: TNClientDataset;
    cdsCashMutationToExcelCMID: TLargeintField;
    cdsCashMutationToExcelCMCODE: TStringField;
    cdsCashMutationToExcelCMDATE: TDateField;
    cdsCashMutationToExcelCMTYPE: TStringField;
    cdsCashMutationToExcelCMDESC: TStringField;
    cdsCashMutationToExcelACCID: TIntegerField;
    cdsCashMutationToExcelACCNO: TStringField;
    cdsCashMutationToExcelACCBANKID: TIntegerField;
    cdsCashMutationToExcelDC: TStringField;
    cdsCashMutationToExcelCCY: TStringField;
    cdsCashMutationToExcelCMAMT: TFloatField;
    cdsCashMutationToExcelPOSTED: TStringField;
    cdsCashMutationToExcelPOSTED_DATE: TDateField;
    cdsCashMutationToExcelPOSTED_UI: TStringField;
    cdsCashMutationToExcelCANCEL: TStringField;
    cdsCashMutationToExcelCANCEL_DATE: TDateField;
    cdsCashMutationToExcelCANCEL_UI: TStringField;
    cdsCashMutationToExcelREVERSED: TStringField;
    cdsCashMutationToExcelREVERSED_DATE: TDateField;
    cdsCashMutationToExcelREVERSED_UI: TStringField;
    cdsCashMutationToExcelPOSTED_TIME: TDateTimeField;
    cdsCashMutationToExcelCANCEL_TIME: TDateTimeField;
    cdsCashMutationToExcelREVERSED_TIME: TDateTimeField;
    cdsCashMutationToExcelACCNAME: TStringField;
    cdsCashMutationToExcelBNCODE: TStringField;
    cdsCashMutationToExcelBNACCNO: TStringField;
    cdsCashMutationToExcelBNACCNAME: TStringField;
    cdsCashMutationToExcelBNBRANCH: TStringField;
    cdsCashMutationToExcelSTAT: TStringField;
    dsCashMutationToExcel: TDataSource;
    pnlProgress: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    actViewTransaction: TNAction;
    cdsRDNCashDepositListFUNDTRANSID: TLargeintField;
    ViewTransaction1: TMenuItem;
    cdsRDNCashDepositListPOSTED_DATE: TDateTimeField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actCashMutationPostingExecute(Sender: TObject);
    procedure actCashMutationReverseExecute(Sender: TObject);
    procedure actCashMutationPostingUpdate(Sender: TObject);
    procedure actCashMutationReverseUpdate(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actUploadDataDepositExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelUpdate(Sender: TObject);
    procedure actPostingAllExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
    procedure actUploadRDNCashFromExcelExecute(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure edPageKeyPress(Sender: TObject; var Key: Char);
    procedure actSaveGridExcelExecute(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;
    TotalPages: Integer;
  public
    { Public declarations }
  end;

var
  frmRDNCashDepositList: TfrmRDNCashDepositList;

implementation

{$R *.dfm}

uses DataGlobal, FormRDNCashDeposit, FormProgressBar, cxGridExportLink,
  FormViewTransaction;

procedure TfrmRDNCashDepositList.actCancelExecute(Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
//  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to cancel selected rdn cash deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
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

          oProgress.ChangeBar(trunc((i + 1) / n * 100), 'Processing Cancel Cash Deposit ' +
            QuotedStr(cdsRDNCashDepositListCMCODE.AsString));

          bRes := dmGlobal.RemoteServer.CashMutationCancel(cdsRDNCashDepositListCMID.AsInteger, sMsg);

          if bRes then
          begin
            iSuccess := iSuccess + 1;
          end
          Else
          begin
            iReject := iReject + 1;
          end;

          sMsg := cdsRDNCashDepositListCMCODE.AsString + ': ' + sMsg;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'RDN Cash Deposit Canceled Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsRDNCashDepositList.Refresh;
    end;
  end;
end;

procedure TfrmRDNCashDepositList.actCancelUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (cdsRDNCashDepositListCANCEL.AsString <> '1') and (cdsRDNCashDepositListPOSTED.AsString <> '1')
    and (cdsRDNCashDepositListREVERSED.AsString <> '1');
end;

procedure TfrmRDNCashDepositList.actCashMutationPostingExecute(Sender: TObject);
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
    if MessageDlg('Are you sure to posting selected rdn cash deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
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

          oProgress.ChangeBar(trunc((i + 1) / n * 100), 'Processing Post Cash Deposit ' +
            QuotedStr(cdsRDNCashDepositListCMCODE.AsString));

          bRes :=  dmGlobal.RemoteServer.CashMutationPosting(cdsRDNCashDepositListCMID.AsInteger, sMsg);

          if bRes then
          begin
            iSuccess := iSuccess + 1;
          end
          Else
          begin
            iReject := iReject + 1;
          end;

          sMsg := cdsRDNCashDepositListCMCODE.AsString + ': ' + sMsg;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'RDN Cash Deposit Posted Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsRDNCashDepositList.Refresh;
    end;
  end;
end;

procedure TfrmRDNCashDepositList.actCashMutationPostingUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsRDNCashDepositListPOSTED.AsString <> '1';
end;

procedure TfrmRDNCashDepositList.actCashMutationReverseExecute(Sender: TObject);
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
    if MessageDlg('Are you sure to reverse selected rdn cash deposit?', mtConfirmation, mbYesNo, 0) = mrYes then
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

          oProgress.ChangeBar(trunc((i + 1) / n * 100), 'Processing Reverse Cash Deposit ' +
            QuotedStr(cdsRDNCashDepositListCMCODE.AsString));

          bRes := dmGlobal.RemoteServer.CashMutationReverse(cdsRDNCashDepositListCMID.AsInteger, sMsg);

          if bRes then
          begin
            iSuccess := iSuccess + 1;
          end
          Else
          begin
            iReject := iReject + 1;
          end;

          sMsg := cdsRDNCashDepositListCMCODE.AsString + ': ' + sMsg;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'RDN Cash Deposit Reversed Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsRDNCashDepositList.Refresh;
    end;
  end;
end;

procedure TfrmRDNCashDepositList.actCashMutationReverseUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (cdsRDNCashDepositListPOSTED.AsString = '1') and (cdsRDNCashDepositListCANCEL.AsString <> '1') and (cdsRDNCashDepositListREVERSED.AsString <> '1');
end;

procedure TfrmRDNCashDepositList.actCopySelectedExecute(Sender: TObject);
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

procedure TfrmRDNCashDepositList.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Enabled := cdsRDNCashDepositListPOSTED.AsString <> '1';
end;

procedure TfrmRDNCashDepositList.actNewExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;

//  if dmGlobal.RemoteServer.CashMutationPosting(dmGlobal.CashDepRDNID, sMsg) then
//  begin
//    MessageDlg(sMsg, mtInformation, [mbOk], 0);
//    cdsRDNCashDepositList.Refresh;
//
//    dmGlobal.CashDepRDNID := 0;
//  end;
end;

procedure TfrmRDNCashDepositList.actPostingAllExecute(Sender: TObject);
var
  i, iErr, iSuc: Integer;
  slMsg: TStringList;
  sMsg: string;
  bCon: Boolean;
begin
  inherited;
  if not MessageQuestion('Are you sure to proceess posting  all ?') then
    exit;

  try
    pnlProgress .Top     := Round((Self.Height / 2) - (pnlProgress.Height / 2));
    pnlProgress.Left    := Round((Self.Width / 2) - (pnlProgress.Width / 2));
    pnlProgress.Visible := True;
    Application.ProcessMessages;

    cdsCashMutationToExcel.Close;
    cdsCashMutationToExcel.Params[0].AsDateTime := DateOf(dtTrans.EditValue);
    cdsCashMutationToExcel.Params[1].AsDateTime := DateOf(dtTo.EditValue);
    cdsCashMutationToExcel.Params[2].AsString   := dmGlobal.UserID;
    cdsCashMutationToExcel.Params[3].AsString   := chkOpen.EditValue;
    cdsCashMutationToExcel.Params[4].AsString   := chkPosted.EditValue;
    cdsCashMutationToExcel.Params[5].AsString   := chkCanceled.EditValue;
    cdsCashMutationToExcel.Params[6].AsString   := chkReversed.EditValue;

    cdsCashMutationToExcel.Params[7].AsString   := edAccNo.EditValue;
    cdsCashMutationToExcel.Params[8].AsString   := edAccName.EditValue;
    cdsCashMutationToExcel.Params[9].AsString   := edH2H.EditValue;
    cdsCashMutationToExcel.Open;

    cdsCashMutationToExcel.DisableControls;
    slMsg := TStringList.Create;
    iErr  := 0;
    iSuc  := 0;

    cdsCashMutationToExcel.First;
    while not cdsCashMutationToExcel.Eof do
    begin
      bCon := dmGlobal.RemoteServer.CashMutationPosting(cdsCashMutationToExcelCMID.AsInteger, sMsg);
      if bCon then
        Inc(iSuc)
      else
      begin
        Inc(iErr);
        slMsg.Add(sMsg);
      end;

      cdsCashMutationToExcel.Next;
    end;
  finally
    pnlProgress.Visible := False;

    cdsCashMutationToExcel.EnableControls;
    if iErr > 0 then
      slMsg.Add(intToStr(iErr) + ' Record(s) Fail To Posting Cash Deposit');
    if iSuc > 0 then
      slMsg.Add(intToStr(iSuc) + ' Record(s) Success Posting Cash Deposit');

    if slMsg.Count > 0 then
    begin
      MessageDlg(slMsg.Text, mtInformation, [mbOk], 0);
      FreeAndNil(slMsg);
    end;
    cdsRDNCashDepositList.Refresh;
  end;
end;

procedure TfrmRDNCashDepositList.actRefreshExecute(Sender: TObject);
var
  sStatus: string;
begin
//  inherited;
  sStatus := chkOpen.EditValue +','+
             chkPosted.EditValue +','+
             chkCanceled.EditValue +','+
             chkReversed.EditValue;

  cdsRDNCashDepositList.Close;
  cdsRDNCashDepositList.Params[0].AsDate   := VarToDateTime(dtTrans.EditValue);
  cdsRDNCashDepositList.Params[1].AsDate   := VarToDateTime(dtTo.EditValue);
  cdsRDNCashDepositList.Params[2].AsString := sStatus;
  cdsRDNCashDepositList.Open;
end;

procedure TfrmRDNCashDepositList.actSaveGridExcelExecute(Sender: TObject);
var
  sFileName, sFileExt: String;
begin
//  inherited;
  if SaveDlg.Execute then
  begin
    cdsCashMutationToExcel.Close;

    cdsCashMutationToExcel.Params[0].AsDateTime := DateOf(dtTrans.EditValue);
    cdsCashMutationToExcel.Params[1].AsDateTime := DateOf(dtTo.EditValue);
    cdsCashMutationToExcel.Params[2].AsString   := dmGlobal.UserID;
    cdsCashMutationToExcel.Params[3].AsString   := chkOpen.EditValue;
    cdsCashMutationToExcel.Params[4].AsString   := chkPosted.EditValue;
    cdsCashMutationToExcel.Params[5].AsString   := chkCanceled.EditValue;
    cdsCashMutationToExcel.Params[6].AsString   := chkReversed.EditValue;

    cdsCashMutationToExcel.Params[7].AsString   := edAccNo.EditValue;
    cdsCashMutationToExcel.Params[8].AsString   := edAccName.EditValue;
    cdsCashMutationToExcel.Params[9].AsString   := edH2H.EditValue;
    cdsCashMutationToExcel.Open;

    sFileName := SaveDlg.FileName;
    ExportGridToXLSX(sFileName, cxGrid1);

    if FileExists(sFileName) then
    begin
      ShowMessage('Data Save to ' + QuotedStr(sFileName) + ' Successfully.');
    end;
  end;
end;

procedure TfrmRDNCashDepositList.actUploadDataDepositExecute(
  Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName: string;
  i, sSeqID: Integer;
  iCols, iRows: Integer;
  iError, iSuccess: Integer;
  sMsg,sMessage,sAmount: string;
  oPros,oCheckDate: Boolean;
  oProgress: TfrmProgressBar;
  sSeqNo: string;
  iSeqNo: Integer;
  iSeqID, iSeqNoID: Integer;
  iRepeat: Boolean;

  sCode: string;
  sUploadDate: TDateTime;
  iAccID: Int64;
  sAccNo: string;
  sCcy: string;
  fAmount: Double;
  sDesc: string;
  iAccBankID: Int64;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;

  if opDialog.Execute(Application.Handle) then
    sFileName := opDialog.FileName;

  if sFileName <> '' then
  begin
//     source yang dibawah diganti lagi karena terjadi locking ketika melalukan upload RDN
//     impact yang terjadi adalah lebih lambat ketika melakukan upload [Hanzo 16 March 2022]

    try
      oProgress := TfrmProgressBar.Create(Nil);

      cdsUploadRDN.Close;
      cdsUploadRDN.Params[0].AsInteger := 0;
      cdsUploadRDN.Open;

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iCols  := oSheet.Usedrange.Columns.Count;
      iRows  := oSheet.Usedrange.Rows.Count;

      iRepeat  := False;
      sMsg     := '';
      iSuccess := 0;
      iError   := 0;

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading cash deposit');
      for i := 2 to iRows do
      begin
        sSeqID := dmGlobal.RemoteServer.GetSeq('main.B_CASH_MUTATION');
        iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_MUTATION_' + FormatDateTime('YYYYMM',FTransDate));

        sAccNo      := oSheet.Cells[i, 2].Value;
        sCode       := 'CM-'+ FormatDateTime('YYYYMM',FTransDate) +'-'+ FormatFloat('000000000', iSeqNo);
        sUploadDate := oSheet.Cells[i, 1].Value;
        sCcy        := 'IDR';
        fAmount     := oSheet.Cells[i, 5].Value;
        sDesc       := oSheet.Cells[i, 7].Value;

        cdsAccountsByAccNo.Close;
        cdsAccountsByAccNo.Params[0].AsString := sAccNo;
        cdsAccountsByAccNo.Open;

        iAccID      := cdsAccountsByAccNoACCID.AsInteger;
        iAccBankID  := cdsAccountsByAccNoACCBANKID.AsInteger;

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing cash deposit ' + sAccNo);

        if not cdsAccountsByAccNo.IsEmpty then
        begin
          oPros :=True;
          oCheckDate := Iszero(oSheet.Cells[i, 1].Value);
          if oCheckDate then
          begin
            inc(iError);
            sMsg := sMsg + ' Transaction Date Is Empty' +#13;
          end
          else
          begin
            sAmount := oSheet.Cells[i, 5].Value;
            if sAmount <> '' then
            begin

              repeat
                iRepeat := false;

                try
                  cdsUploadRDN.Append;
                  cdsUploadRDNCMID.AsInteger             := sSeqID;
                  cdsUploadRDNCMCODE.AsString            := 'CM-'+ FormatDateTime('YYYYMM',FTransDate) +'-'+ FormatFloat('000000000', iSeqNo);
                  cdsUploadRDNCMDATE.AsDateTime          := oSheet.Cells[i, 1].Value;
                  cdsUploadRDNACCID.AsLargeInt           := cdsAccountsByAccNoACCID.AsLargeInt;
                  cdsUploadRDNACCNO.AsString             := oSheet.Cells[i, 2].Value;
                  cdsUploadRDNCCY.AsString               := 'IDR'; //oSheet.Cells[i, 14].Value;
                  cdsUploadRDNCMAMT.AsFloat              := oSheet.Cells[i, 5].Value;
                  cdsUploadRDNCMDESC.AsString            := oSheet.Cells[i, 7].Value;
                  cdsUploadRDNACCBANKID.AsInteger        := cdsAccountsByAccNoACCBANKID.AsInteger;
                  cdsUploadRDNDC.AsString                := 'D';
                  cdsUploadRDN.Post;

                  cdsUploadRDN.ApplyUpdates(-1);
                except
                  begin
                    iRepeat := True;
                    oProgress.ChangeBar(trunc(i / iRows * 100), 'Repeating upload cash deposit ' + sAccNo);
                  end;
                end;

              until iRepeat = false;

              inc(iSuccess);
            end
            else
            begin
              Inc(iError);
              sMsg := sMsg +' '+ sAccNo + ' Value Amount Is Empty' +#13;
            end;
          end;
        end;
      end;

    finally
      FreeAndNil(oProgress);
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      if cdsRDNCashDepositList.Active then
        cdsRDNCashDepositList.Refresh;
    end;


//    try
//      oProgress := TfrmProgressBar.Create(Nil);
//
//      cdsUploadRDN.Close;
//      cdsUploadRDN.Params[0].AsInteger := 0;
//      cdsUploadRDN.Open;
//
//      oExcel := CreateOleObject('Excel.Application');
//      oExcel.DisplayAlerts := False;
//      oExcel.WorkBooks.Open(sFileName);
//
//      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
//      iCols  := oSheet.Usedrange.Columns.Count;
//      iRows  := oSheet.Usedrange.Rows.Count;
//
//      sSeqID := dmGlobal.RemoteServer.GetSeq('main.B_CASH_MUTATION');
//      iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_MUTATION_' + FormatDateTime('YYYYMM',FTransDate));
//
//      dmGlobal.RemoteServer.UpdateSeq('main.B_CASH_MUTATION', sSeqID + iRows);
//      dmGlobal.RemoteServer.UpdateSeq('TBL_B_CASH_MUTATION_' + FormatDateTime('YYYYMM',FTransDate), iSeqNo + iRows);
//
//      oProgress.Show;
//      oProgress.ChangeBarCaption('Uploading cash deposit');
//      for i := 2 to iRows do
//      begin
//        Inc(sSeqID);
//        Inc(iSeqNo);
//
//        cdsAccountsByAccNo.Close;
//        cdsAccountsByAccNo.Params[0].AsString := oSheet.Cells[i, 2].Value; //StrToFloatDef(oSheet.Cells[i, 2].Value, 0);
//        cdsAccountsByAccNo.Open;
//
//        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing cash deposit ' + QuotedStr(oSheet.Cells[i, 2].Value));
//
//        if not cdsAccountsByAccNo.IsEmpty then
//        begin
//          oPros :=True;
//          oCheckDate := Iszero(oSheet.Cells[i, 1].Value);
//          if oCheckDate then
//          begin
//            inc(iError);
//            sMsg := sMsg + 'Transaction Date Is Empty' +#13;
//          end
//          else
//          begin
//            sAmount := oSheet.Cells[i, 5].Value;
//            if sAmount <> '' then
//            begin
////              sSeqID := dmGlobal.RemoteServer.GetSeq('main.B_CASH_MUTATION');
////              sSeqNo := dmGlobal.RemoteServer.GetVoucherNo(dmGlobal.RemoteServer.GetTransDate, 'CM', 'TBL_B_CASH_MUTATION_' + FormatDateTime('YYYYMM',FTransDate));
//
//              cdsUploadRDN.Append;
//              cdsUploadRDNCMID.AsInteger             := sSeqID;
//              cdsUploadRDNCMCODE.AsString            := 'CM-'+ FormatDateTime('YYYYMM',FTransDate) +'-'+ FormatFloat('000000000', iSeqNo);
//              cdsUploadRDNCMDATE.AsDateTime          := oSheet.Cells[i, 1].Value;
//              cdsUploadRDNACCID.AsLargeInt           := cdsAccountsByAccNoACCID.AsLargeInt;
//              cdsUploadRDNACCNO.AsString             := oSheet.Cells[i, 2].Value;
//              cdsUploadRDNCCY.AsString               := 'IDR'; //oSheet.Cells[i, 14].Value;
//              cdsUploadRDNCMAMT.AsFloat              := oSheet.Cells[i, 5].Value;
//              cdsUploadRDNCMDESC.AsString            := oSheet.Cells[i, 7].Value;
//              cdsUploadRDNACCBANKID.AsInteger        := cdsAccountsByAccNoACCBANKID.AsInteger;
//              cdsUploadRDNDC.AsString                := 'D';
//
//              cdsUploadRDN.Post;
//              Inc(iSuccess);
//            end
//            else
//            begin
//              Inc(iError);
//              sMsg := sMsg + 'Value Amount Is Empty' +#13;
//            end;
//
//
//          end;
//        end
//        else
//        begin
//          Inc(iError);
//          sMsg := sMsg + 'Unregistered Account' + oSheet.Cells[i, 2].Value +#13;
//        end;
//      end;
//
//    finally
//      FreeAndNil(oProgress);
//      oExcel.Quit;
//
//      oExcel := Unassigned;
//      oSheet := Unassigned;
//
//      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
//      if iError > 0 then
//        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sMsg;
//
//      MessageDlg(sMessage, mtInformation, [mbOk], 0);
//
////      MessageDlg('Upload data customer withdraw is done', mtInformation, [mbOk], 0);
//      cdsUploadRDN.ApplyUpdates(-1);
//
//      if cdsRDNCashDepositList.Active then
//        cdsRDNCashDepositList.Refresh;
//    end;
  end;
end;

procedure TfrmRDNCashDepositList.actUploadRDNCashFromExcelExecute(
  Sender: TObject);
var
  sFileName, sAccNo: string;
  oExcel, oSheet: OleVariant;
  i, iRowNo: integer;
  iCols, iRows: Integer;
  oProgress: TfrmProgressBar;
  sMsg: string;
begin
  inherited;
  if opDialog.Execute then
    sFileName := opDialog.FileName;

  if sFileName = '' then
    Exit;

  try
    dmGlobal.RemoteServer.EmptyTable('upload.CashUpload', sMsg);

    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Open(sFileName);

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    iCols  := oSheet.Usedrange.Columns.Count;
    iRows  := oSheet.Usedrange.Rows.Count;

    oProgress := TfrmProgressBar.Create(Nil);
    iRowNo    := 0;

    cdsUploadCashRDN.Close;
    cdsUploadCashRDN.Open;

    oProgress.Show;
    oProgress.ChangeBarCaption('Uploading cash deposit');
    for i := 2 to iRows do
    begin
      sAccNo := oSheet.Cells[i, 2].Value;
      iRowNo := iRowNo + 1;
      oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing cash deposit ' + sAccNo);

      cdsUploadCashRDN.append;
      cdsUploadCashRDNROWNO.AsInteger          := iRowNo;
      cdsUploadCashRDNTRANS_DATE.AsDateTime    := oSheet.Cells[i, 1].Value;
      cdsUploadCashRDNACCNO.AsString           := sAccNo;
      cdsUploadCashRDNACCNAME.AsString         := oSheet.Cells[i, 3].Value;
      cdsUploadCashRDNPRIV_BANK_ACCNO.AsString := oSheet.Cells[i, 4].Value;
      cdsUploadCashRDNAMOUNT.AsFloat           := oSheet.Cells[i, 5].Value;
      cdsUploadCashRDNBANK_CHARGE.AsFloat      := oSheet.Cells[i, 6].Value;
      cdsUploadCashRDNDESCRIPTION.AsString     := oSheet.Cells[i, 7].Value;
      cdsUploadCashRDN.Post;
    end;
  finally
    oProgress.ChangeBarCaption('Saving data into database');
    cdsUploadCashRDN.ApplyUpdates(-1);

    dmGlobal.RemoteServer.CopyCashDepFromUpload;
    FreeAndNil(oProgress);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    MessageDlg(IntToStr(iRowNo) + ' data successfully uploaded', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmRDNCashDepositList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsRDNCashDepositListCMDATE.AsDateTime;
    iLedgerTransID := -1;
    iStockTransID  := -1;
    iFundTransID   := cdsRDNCashDepositListFUNDTRANSID.AsLargeInt;

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

procedure TfrmRDNCashDepositList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmRDNCashDeposit;
end;

procedure TfrmRDNCashDepositList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  if edPage.EditValue > 1 then
  begin
    edPage.EditValue := edPage.EditValue - 1;
    actRefresh.Execute;
  end;
end;

procedure TfrmRDNCashDepositList.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  edPage.EditValue := edPage.EditValue + 1;
  actRefresh.Execute;
end;

procedure TfrmRDNCashDepositList.dxBarButton4Click(Sender: TObject);
begin
  inherited;
  edPage.EditValue := 1;
  actReject.Execute;
end;

procedure TfrmRDNCashDepositList.dxBarButton5Click(Sender: TObject);
begin
  inherited;
  edPage.EditValue := TotalPages;
  actRefresh.Execute;
end;

procedure TfrmRDNCashDepositList.edPageKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = chr(13) then
    actRefresh.Execute;
end;

procedure TfrmRDNCashDepositList.FormCreate(Sender: TObject);
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  chkOpen.EditValue     := '1';
  chkPosted.EditValue   := '-';
  chkCanceled.EditValue := '-';
  chkReversed.EditValue := '-';

  dtTrans.EditValue := FTransDate;
  dtTo.EditValue    := FTransDate;

  edAccNo.EditValue   := '';
  edAccName.EditValue := '';
  edH2H.EditValue     := '0';

  PagesBar.Visible    := False;
  pnlProgress.Visible := False;
  edPage.EditValue    := 1;

  PagesBar.Visible := False;
end;

end.
