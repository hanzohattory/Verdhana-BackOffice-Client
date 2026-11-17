unit FormCashSettlementVoucherList;

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
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  Vcl.Menus, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Vcl.StdCtrls, cxButtons, Datasnap.DBClient,
  NClientDataset, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, NReportClient, NDatasetContainer, dxBar,
  cxClasses, Vcl.ActnList, NDatasetAction, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView, cxGrid,
  cxImageComboBox, cxGridChartView, cxGridDBChartView, ShellApi, StrUtils,
  System.Generics.Collections, ClassGeneral, NLibraries, System.DateUtils,
  System.Actions, System.ImageList, dxDateRanges, cxBarEditItem, cxCheckBox,Clipbrd,
  dxScrollbarAnnotations;

type
  TfrmCashSettlementVoucherList = class(TfrmBrowseData)
    cdsCashSettleVoucher: TNClientDataset;
    cdsCashSettleVoucherCSID: TLargeintField;
    cdsCashSettleVoucherCSNO: TStringField;
    cdsCashSettleVoucherCSDESC: TStringField;
    cdsCashSettleVoucherENTRYDATE: TDateField;
    cdsCashSettleVoucherVALUEDATE: TDateField;
    cdsCashSettleVoucherACCID: TIntegerField;
    cdsCashSettleVoucherACCCODE: TStringField;
    cdsCashSettleVoucherACCNAME: TStringField;
    cdsCashSettleVoucherACCINIT: TStringField;
    cdsCashSettleVoucherACCTYPE: TStringField;
    cdsCashSettleVoucherPRDCODE: TStringField;
    cdsCashSettleVoucherCCY: TStringField;
    cdsCashSettleVoucherAMOUNT: TFloatField;
    cdsCashSettleVoucherFX_CCY: TStringField;
    cdsCashSettleVoucherFX_EXRATE: TFloatField;
    cdsCashSettleVoucherFX_AMOUNT: TFloatField;
    cdsCashSettleVoucherSTAT: TStringField;
    gvwMasterCSID: TcxGridDBBandedColumn;
    gvwMasterCSNO: TcxGridDBBandedColumn;
    gvwMasterCSDESC: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFX_CCY: TcxGridDBBandedColumn;
    gvwMasterFX_EXRATE: TcxGridDBBandedColumn;
    gvwMasterFX_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    actViewData: TNAction;
    actSettleVoucher: TNAction;
    actReverseVoucher: TNAction;
    actCancelVoucher: TNAction;
    SettleVoucher1: TMenuItem;
    ReverseVoucher1: TMenuItem;
    CancelVoucher1: TMenuItem;
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
    cdsBankInstructionListTRANFER_TYPE: TStringField;
    cdsBankInstructionListCCY: TStringField;
    cdsBankInstructionListAMOUNT: TFloatField;
    cdsBankInstructionListCHARGES: TFloatField;
    cdsBankInstructionListNETAMOUNT: TFloatField;
    dsBankInstructionList: TDataSource;
    cdsBankInstructionListACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionListBNCODE_TARGET: TStringField;
    cdsBankInstructionListBNACCNO_TARGET: TStringField;
    cdsBankInstructionListBNACCNAME_TARGET: TStringField;
    cdsBankInstructionListBNBRANCH_TARGET: TStringField;
    cdsBankInstructionListBANK_SOURCE: TStringField;
    popBankInstruction: TPopupMenu;
    actGenerateBankInstructionFile: TNAction;
    GenerateBankInstructionFile1: TMenuItem;
    cdsBankInstructionListBNNAME_SOURCE: TStringField;
    cdsBankInstructionListINITIAL_NAME_SOURCE: TStringField;
    cdsBankInstructionListBICODE_SOURCE: TStringField;
    cdsBankInstructionListBNNAME_TARGET: TStringField;
    cdsBankInstructionListINITIAL_NAME_TARGET: TStringField;
    cdsBankInstructionListBICODE_TARGET: TStringField;
    actPrintPreview: TNAction;
    cbVoucherType: TcxBarEditItem;
    dtVoucherDate: TcxBarEditItem;
    cdsCashSettleVoucherSETTLE_WITH: TStringField;
    gvwMasterSETTLE_WITH: TcxGridDBBandedColumn;
    chkOpen: TcxBarEditItem;
    chkPosted: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    chkReversed: TcxBarEditItem;
    cdsCashSettleVoucherSETTLETYPE: TStringField;
    gvwMasterSETTLETYPE: TcxGridDBBandedColumn;
    actCopyCell: TNAction;
    CopyCell1: TMenuItem;
    actViewJournalDetail: TNAction;
    actPostingAllCashVoucher: TNAction;
    PostingAllCashSettlementVoucher1: TMenuItem;
    cdsCashSettleVoucherLEDGERTRANSID: TLargeintField;
    cdsCashSettleVoucherFUNDTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actSettleVoucherExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actReverseVoucherExecute(Sender: TObject);
    procedure actCancelVoucherExecute(Sender: TObject);
    procedure actOpenUpdate(Sender: TObject);
    procedure gvwBankChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure cdsBankInstructionListCalcFields(DataSet: TDataSet);
    procedure actGenerateBankInstructionFileExecute(Sender: TObject);
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCopyCellExecute(Sender: TObject);
    procedure actViewJournalDetailExecute(Sender: TObject);
    procedure actPostingAllCashVoucherExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
    FBankInstructions: TDictionary<String,TStringList>;
//    function GenerateBCAInstruction(BIID: Int64): String;
  public
    { Public declarations }
  end;

var
  frmCashSettlementVoucherList: TfrmCashSettlementVoucherList;

implementation

{$R *.dfm}

uses DataGlobal, FormCashSettleVoucherProcess, FormProgressBar, FormLedgerDetail,
  FormViewTransaction;

procedure TfrmCashSettlementVoucherList.actCancelVoucherExecute(
  Sender: TObject);
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
    if MessageDlg('Are you sure to cancel selected voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
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

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Cash Voucher ' +
            QuotedStr(cdsCashSettleVoucherCSNO.AsString));

          if cdsCashSettleVoucherSTAT.AsString = '1' then
          begin
            bRes := dmGlobal.RemoteServer.CancelCashVoucher(cdsCashSettleVoucherCSID.AsLargeInt, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsCashSettleVoucherCSNO.AsString + ': ' + sMsg;
          end
          else if cdsCashSettleVoucherSTAT.AsString = '2' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Settled.';
          end
          else if cdsCashSettleVoucherSTAT.AsString = '3' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Reversed.';
          end
          else if cdsCashSettleVoucherSTAT.AsString = '4' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Canceled.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Cash Voucher Canceled Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsCashSettleVoucher.Refresh;
    end;
  end;
end;

procedure TfrmCashSettlementVoucherList.actCopyCellExecute(Sender: TObject);
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

procedure TfrmCashSettlementVoucherList.actGenerateBankInstructionFileExecute(
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

procedure TfrmCashSettlementVoucherList.actOpenExecute(Sender: TObject);
begin
//  inherited;
  if frmCashSettleVoucherProcess.ProcessVoucher(True, cdsCashSettleVoucherACCID.AsInteger, cdsCashSettleVoucherCSID.AsLargeInt) then
  begin
    cdsCashSettleVoucher.Refresh;
  end;
end;

procedure TfrmCashSettlementVoucherList.actOpenUpdate(Sender: TObject);
begin
//  inherited;
  TAction(Sender).Enabled := (cdsCashSettleVoucher.Active) And (not cdsCashSettleVoucher.IsEmpty);
end;

procedure TfrmCashSettlementVoucherList.actPostingAllCashVoucherExecute(
  Sender: TObject);
var
  bRes: Boolean;
  sMsg: string;
begin
//  inherited;
  if MessageDlg('Posting All Cash Settlement Voucher ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    bRes := dmGlobal.RemoteServer.PararelPostingCashSettementVoucher(VarToDateTime(dtVoucherDate.EditValue), VarToStr(cbVoucherType.EditValue), sMsg);
    MessageDlg(sMsg, mtInformation,[mbOk], 0);

    if bRes then
      cdsCashSettleVoucher.Refresh;
  end;
end;

procedure TfrmCashSettlementVoucherList.actPrintExecute(Sender: TObject);
var
  iCSID: Integer;
begin
  if gvwMaster.Controller.SelectedRecordCount = 0 then
    MessageError('Please select which one be pinted')
  else
  begin
    iCSID := gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterCSID.Index];

    ReportContainer.Params[0].AsInteger := iCSID;
    inherited;
  end;
end;

procedure TfrmCashSettlementVoucherList.actPrintPreviewExecute(Sender: TObject);
var
  i: Integer;
  sCSID: string;
  iCSID: Integer;
begin
  inherited;
//  sCSID := '';
//  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
//    sCSID := sCSID + IntToStr(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCSID.Index]) + ',';

  iCSID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCSID.Index];

  ReportContainer.Params[0].AsInteger := iCSID;
  ReportContainer.PreviewReport;
end;

procedure TfrmCashSettlementVoucherList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsCashSettleVoucher.Close;
  cdsCashSettleVoucher.Params[0].AsDate := VarToDateTime(dtVoucherDate.EditValue);
  cdsCashSettleVoucher.Params[1].AsString := VarToStr(cbVoucherType.EditValue);
  cdsCashSettleVoucher.Params[2].AsString := chkOpen.EditValue+','+chkPosted.EditValue+','+
                                                chkReversed.EditValue+','+chkCanceled.EditValue;
  cdsCashSettleVoucher.Open;

//  cdsBankInstructionList.Close;
//  cdsBankInstructionList.Params[0].AsDate := VarToDateTime(dtVoucherDate.EditValue);
//  cdsBankInstructionList.Params[1].AsString := VarToStr(cbVoucherType.EditValue);
//  cdsBankInstructionList.Params[2].AsString := chkOpen.EditValue+','+chkPosted.EditValue+','+
//                                                chkReversed.EditValue+','+chkCanceled.EditValue;
//  cdsBankInstructionList.Open;
end;

procedure TfrmCashSettlementVoucherList.actReverseVoucherExecute(
  Sender: TObject);
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
    if MessageDlg('Are you sure to reverse selected voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
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

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Cash Voucher ' +
            QuotedStr(cdsCashSettleVoucherCSNO.AsString));

          if cdsCashSettleVoucherSTAT.AsString = '1' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Status Still Open.';
          end
          else if cdsCashSettleVoucherSTAT.AsString = '2' then
          begin
            bRes := dmGlobal.RemoteServer.ReverseCashVoucher(cdsCashSettleVoucherCSID.AsLargeInt, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsCashSettleVoucherCSNO.AsString + ': ' + sMsg;
          end
          else if cdsCashSettleVoucherSTAT.AsString = '3' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Reversed.';
          end
          else if cdsCashSettleVoucherSTAT.AsString = '4' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Canceled.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Cash Voucher Reversed Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsCashSettleVoucher.Refresh;
    end;
  end;
end;

procedure TfrmCashSettlementVoucherList.actSettleVoucherExecute(
  Sender: TObject);
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
    if MessageDlg('Are you sure to settle selected voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
//        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Cash Voucher ' +
            QuotedStr(cdsCashSettleVoucherCSNO.AsString));

          if cdsCashSettleVoucherSTAT.AsString = '1' then
          begin
            bRes := dmGlobal.RemoteServer.SettleCashVoucher(cdsCashSettleVoucherCSID.AsInteger, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsCashSettleVoucherCSNO.AsString + ': ' + sMsg;
          end
          else if cdsCashSettleVoucherSTAT.AsString = '2' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Settled.';
          end
          else if cdsCashSettleVoucherSTAT.AsString = '3' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Reversed.';
          end
          else if cdsCashSettleVoucherSTAT.AsString = '4' then
          begin
            sMsg := cdsCashSettleVoucherCSNO.AsString + ': Cash Voucher Have Been Canceled.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Cash Voucher Settled Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsCashSettleVoucher.Refresh;
    end;
  end;
end;

procedure TfrmCashSettlementVoucherList.actViewJournalDetailExecute(
  Sender: TObject);
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
  sLinkType := 'CSID';
  iLinkID   := cdsCashSettleVoucherCSID.AsInteger;
  sCCY      := cdsCashSettleVoucherCCY.AsString;
  iCPID     := 0;
  dExrate   := cdsCashSettleVoucherFX_EXRATE.asFloat;

  frmLedgerDetail.Run(sLinkType, sCCY, iLinkID,iCPID,dExrate);
end;

procedure TfrmCashSettlementVoucherList.actViewTransactionExecute(
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
    dtConDate      := cdsCashSettleVoucherVALUEDATE.AsDateTime;
    iLedgerTransID := cdsCashSettleVoucherLEDGERTRANSID.AsLargeInt;
    iStockTransID  := -1;
    iFundTransID   := cdsCashSettleVoucherFUNDTRANSID.AsLargeInt;

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

procedure TfrmCashSettlementVoucherList.cdsBankInstructionListCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsBankInstructionListBANK_SOURCE.AsString := cdsBankInstructionListBNCODE_SOURCE.AsString
    + ' : ' + cdsBankInstructionListBNACCNO_SOURCE.AsString;
end;

procedure TfrmCashSettlementVoucherList.FormCreate(Sender: TObject);
begin
  inherited;
  cbVoucherType.EditValue :='P';
  dtVoucherDate.EditValue := dmGlobal.RemoteServer.GetTransDate;

  chkOpen.EditValue     := '1';
  chkPosted.EditValue   := '0';
  chkReversed.EditValue := '0';
  chkCanceled.EditValue := '0';

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;
end;

procedure TfrmCashSettlementVoucherList.gvwBankChartSeries1GetValueDisplayText(
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

Initialization
  RegisterClass(TfrmCashSettlementVoucherList);

end.
