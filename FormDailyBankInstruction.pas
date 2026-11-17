unit FormDailyBankInstruction;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxImageComboBox, cxCalendar, cxBarEditItem,
  cxGridChartView, cxGridDBChartView, System.Actions, System.ImageList,
  dxDateRanges, cxCheckBox, dxScrollbarAnnotations;

type
  TfrmDailyBankInstruction = class(TfrmBrowseData)
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
    cdsBankInstructionListBNNAME_SOURCE: TStringField;
    cdsBankInstructionListINITIAL_NAME_SOURCE: TStringField;
    cdsBankInstructionListBICODE_SOURCE: TStringField;
    cdsBankInstructionListACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionListBNCODE_TARGET: TStringField;
    cdsBankInstructionListBNACCNO_TARGET: TStringField;
    cdsBankInstructionListBNACCNAME_TARGET: TStringField;
    cdsBankInstructionListBNBRANCH_TARGET: TStringField;
    cdsBankInstructionListBNNAME_TARGET: TStringField;
    cdsBankInstructionListINITIAL_NAME_TARGET: TStringField;
    cdsBankInstructionListBICODE_TARGET: TStringField;
    cdsBankInstructionListTRANFER_TYPE: TStringField;
    cdsBankInstructionListCCY: TStringField;
    cdsBankInstructionListAMOUNT: TFloatField;
    cdsBankInstructionListCHARGES: TFloatField;
    cdsBankInstructionListNETAMOUNT: TFloatField;
    cdsBankInstructionListFILE_CREATED: TStringField;
    cdsBankInstructionListMODDA: TDateTimeField;
    cdsBankInstructionListMODUI: TStringField;
    gvwMasterBIID: TcxGridDBBandedColumn;
    gvwMasterBINO: TcxGridDBBandedColumn;
    gvwMasterBITYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterBIDESC: TcxGridDBBandedColumn;
    gvwMasterBANK_REF: TcxGridDBBandedColumn;
    gvwMasterTRANS_TYPE: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterLINKNO: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterACCBANKID_SOURCE: TcxGridDBBandedColumn;
    gvwMasterBNCODE_SOURCE: TcxGridDBBandedColumn;
    gvwMasterBNACCNO_SOURCE: TcxGridDBBandedColumn;
    gvwMasterBNACCNAME_SOURCE: TcxGridDBBandedColumn;
    gvwMasterBNBRANCH_SOURCE: TcxGridDBBandedColumn;
    gvwMasterBNNAME_SOURCE: TcxGridDBBandedColumn;
    gvwMasterINITIAL_NAME_SOURCE: TcxGridDBBandedColumn;
    gvwMasterBICODE_SOURCE: TcxGridDBBandedColumn;
    gvwMasterACCBANKID_TARGET: TcxGridDBBandedColumn;
    gvwMasterBNCODE_TARGET: TcxGridDBBandedColumn;
    gvwMasterBNACCNO_TARGET: TcxGridDBBandedColumn;
    gvwMasterBNACCNAME_TARGET: TcxGridDBBandedColumn;
    gvwMasterBNBRANCH_TARGET: TcxGridDBBandedColumn;
    gvwMasterBNNAME_TARGET: TcxGridDBBandedColumn;
    gvwMasterINITIAL_NAME_TARGET: TcxGridDBBandedColumn;
    gvwMasterBICODE_TARGET: TcxGridDBBandedColumn;
    gvwMasterTRANFER_TYPE: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCHARGES: TcxGridDBBandedColumn;
    gvwMasterNETAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFILE_CREATED: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    cdsBankInstructionListBANKTYPE_SOURCE: TStringField;
    cdsBankInstructionListCCYCODE_SOURCE: TStringField;
    cdsBankInstructionListBANKTYPE_TARGET: TStringField;
    cdsBankInstructionListCCYCODE_TARGET: TStringField;
    gvwMasterBANKTYPE_SOURCE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE_SOURCE: TcxGridDBBandedColumn;
    gvwMasterBANKTYPE_TARGET: TcxGridDBBandedColumn;
    gvwMasterCCYCODE_TARGET: TcxGridDBBandedColumn;
    cbBIType: TcxBarEditItem;
    cbFilter: TcxBarEditItem;
    dtFilter: TcxBarEditItem;
    actGenerateBankInstructionFile: TNAction;
    GenerateBankInstructionFile1: TMenuItem;
    grdMasterLevel2: TcxGridLevel;
    gvwBankChart: TcxGridDBChartView;
    gvwBankChartSeries1: TcxGridDBChartSeries;
    gvwBankChartDataGroup1: TcxGridDBChartDataGroup;
    cdsBankInstructionListBANK_SOURCE: TStringField;
    gvwBankChartSeries2: TcxGridDBChartSeries;
    cdsSumBank: TNClientDataset;
    cdsSumBankBANKID: TIntegerField;
    cdsSumBankBNCODE: TStringField;
    cdsSumBankBNACCNO: TStringField;
    cdsSumBankBNDESC: TStringField;
    cdsSumBankDEBET: TFloatField;
    cdsSumBankCREDIT: TFloatField;
    cdsSumBankNETAMOUNT: TFloatField;
    dsSumBank: TDataSource;
    gvwBankChartSeries3: TcxGridDBChartSeries;
    ReverseGenerate1: TMenuItem;
    actCancelBankInstr: TNAction;
    actOpenGenerateFile: TNAction;
    OpenGenerateFile1: TMenuItem;
    chkOpen: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    chkCreated: TcxBarEditItem;
    chkReversed: TcxBarEditItem;
    cdsBankInstructionListSTAT_BI: TStringField;
    gvwMasterSTAT_BI: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actGenerateBankInstructionFileExecute(Sender: TObject);
    procedure cdsBankInstructionListCalcFields(DataSet: TDataSet);
    procedure cdsBankInstructionListAfterOpen(DataSet: TDataSet);
    procedure cdsSumBankCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actCancelBankInstrExecute(Sender: TObject);
    procedure actOpenGenerateFileExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDailyBankInstruction: TfrmDailyBankInstruction;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar, ClassGeneral, StrUtils,
  FormCashSettlementVoucherList;

procedure TfrmDailyBankInstruction.actCancelBankInstrExecute(Sender: TObject);
var
  i, iRec, iErr, iSuc: Integer;
  sMsg: string;
begin
  inherited;
  iSuc := 0;
  iErr := 0;

  if MessageQuestion('Cancel Generate Bank Instruction ?') then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iRec := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := iRec;

      if cdsBankInstructionListFILE_CREATED.AsString <> '1' then
      begin
        dmGlobal.RemoteServer.UpdateBankReff('C' ,cdsBankInstructionListBIID.AsInteger);
        Inc(iSuc);
      end
      else
        Inc(iErr);

    end;

    sMsg := IntToStr(iSuc) + ' Success to cancel generete fail' + #13;
    if iErr > 0 then
    begin
      sMsg := IntToStr(iErr) + ' Fail to cancel generete fail' + #13;
      sMsg := sMsg + 'Bank Instruction(s) has been generate';
    end;

    MessageDlg(sMsg, mtInformation, [mbOk], 0);
    cdsBankInstructionList.Refresh;
  end;
end;

procedure TfrmDailyBankInstruction.actGenerateBankInstructionFileExecute(
  Sender: TObject);
var
  oProgress: TfrmProgressBar;
  i, j, n, RecIdx, x, iErr, iSuc: Integer;
  oList: TStringList;
  oBankInstruction: TBankInstruction;
  sBank, sDir, sExt, sFolderName, sFileName, sTransferType,
  sBrokerCode, sBankRef_tmp, sBankRef, sMsg, sResultMsg, sStat: String;
  dtValue, dtSystem: TDate;
  bCon: Boolean;
begin
  inherited;
  if (cdsBankInstructionList.IsEmpty) or (not cdsBankInstructionList.Active) then
    Exit;

  sDir := dmGlobal.FITSBankInterfaceDir;
  if not DirectoryExists(sDir) then
  begin
    MessageDlg(sDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);
    Exit;
  end;

  if MessageDlg('Are you sure to generate bank instruction file for selected records?', mtConfirmation, mbYesNo, 0) <> mrYes then
  begin
    Exit;
  end;

  sBrokerCode  := dmGlobal.RemoteServer.GetBrokerCode;
  sBankRef_tmp := dmglobal.RemoteServer.GetBankRefference;
//  sBankRef     := cdsBankInstructionListTRANS_TYPE.AsString +'_'+ sBankRef_tmp;
  iErr         := 0;
  iSuc         := 0;

  oList := TStringList.Create;
  oProgress := TfrmProgressBar.Create(Nil);
  Try
    i := 0;
    n := gvwMaster.Controller.SelectedRecordCount;
    dtSystem := dmGlobal.RemoteServer.GetTransDate;

    oProgress.Show;
    oProgress.ChangeBar(0, 'Generate Bank Instruction File');
    sResultMsg := '';

    for i := 0 to n -1 do
    begin
      RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := RecIdx;

      sMsg := '';

      oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Bank Instruction '
        + QuotedStr(cdsBankInstructionListBINO.AsString));

      if (cdsBankInstructionListSTAT_BI.AsString = 'O') then
      begin
        sBankRef := cdsBankInstructionListTRANS_TYPE.AsString +'_'+ sBankRef_tmp;

        if dmGlobal.RemoteServer.GenerateBankInstructionFile(cdsBankInstructionListBIID.AsLargeInt, sBankRef, sMsg) then
        begin
          Inc(iSuc);

          if (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BNGA')
            or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMRI')
            or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMAN')
            or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'SCB') then
          begin
            //Ini khusus dibuat untuk kebutuhan CIMB Multi Source
            sBank := cdsBankInstructionListBNCODE_SOURCE.AsString +'_'+ cdsBankInstructionListTRANS_TYPE.AsString;//+ '_' + FormatDateTime('ddMMyyyy', dtSystem);
          end
          else
          begin
            sBank := cdsBankInstructionListBNCODE_SOURCE.AsString +'_'+ cdsBankInstructionListTRANS_TYPE.AsString; //+ cdsBankInstructionListBNACCNO_SOURCE.AsString;
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
            oBankInstruction.TransType := cdsBankInstructionListTRANS_TYPE.AsString;

            oList.AddObject(sBank, oBankInstruction);
          end
          else
          begin
            oBankInstruction := TBankInstruction(oList.Objects[j]);
          end;

          oBankInstruction.Nominal := oBankInstruction.Nominal + cdsBankInstructionListNETAMOUNT.AsFloat;

          //Bank Mandiri
          if (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMRI')
            or (cdsBankInstructionListBNCODE_SOURCE.AsString = 'BMAN') then
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
              oBankInstruction.Instruction.Add('M;1;' + FormatDateTime('yyyyMMdd', oBankInstruction.ValueDate)
                + ';1;;;;'
                + cdsBankInstructionListBNACCNO_SOURCE.AsString + ';'
                + cdsBankInstructionListBNACCNO_TARGET.AsString + ';'
                + StringReplace(cdsBankInstructionListBNACCNAME_TARGET.AsString, ';', '', [rfReplaceAll, rfIgnoreCase]) + ';;;;'
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
                + StringReplace(cdsBankInstructionListBNACCNAME_TARGET.AsString, ',', '', [rfReplaceAll, rfIgnoreCase]) + ','
                + cdsBankInstructionListCCY.AsString + ','
                + cdsBankInstructionListNETAMOUNT.AsString + ','
                + StringReplace(dmGlobal.BankDefDesc + cdsBankInstructionListBIDESC.AsString, ',', '', [rfReplaceAll, rfIgnoreCase]) + ','
                + 'finance@cimb.co.id');
            end
            //Ini Instruksi Untuk Multi Source, biasa dipake CIMB
            else
            begin
              oBankInstruction.Instruction.Add(cdsBankInstructionListBNACCNO_SOURCE.AsString + ','
                + cdsBankInstructionListBNACCNO_TARGET.AsString + ','
                + StringReplace(cdsBankInstructionListBNACCNAME_TARGET.AsString, ',', '', [rfReplaceAll, rfIgnoreCase]) + ','
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
              + StringReplace(cdsBankInstructionListBNACCNAME_TARGET.AsString, ',', '', [rfReplaceAll, rfIgnoreCase]) + ','
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
              + StringReplace(cdsBankInstructionListBNACCNAME_SOURCE.AsString, ',', '', [rfReplaceAll, rfIgnoreCase]) + ','
              + cdsBankInstructionListCCY.AsString + ',"'
              + cdsBankInstructionListNETAMOUNT.AsString + '",'
              + cdsBankInstructionListBIDESC.AsString + ',ACH,'
              + cdsBankInstructionListBINO.AsString + ','
              + StringReplace(cdsBankInstructionListBNACCNAME_TARGET.AsString, ',', '', [rfReplaceAll, rfIgnoreCase]) + ','
              + cdsBankInstructionListBNACCNO_TARGET.AsString + ',ID,JKT,'
              + cdsBankInstructionListBICODE_TARGET.AsString);
          end;

        end;
      end
      else
      begin
        Inc(iErr);
        if (cdsBankInstructionListSTAT_BI.AsString = 'C') then sStat := 'canceled'
        else if (cdsBankInstructionListSTAT_BI.AsString = 'F') then sStat := 'created'
        else if (cdsBankInstructionListSTAT_BI.AsString = 'R') then sStat := 'reversed';

        sMsg := sMsg+'Bank Instruction ' + QuotedStr(cdsBankInstructionListBINO.AsString)
          + ' file have been '+ sStat +' by ' + cdsBankInstructionListMODUI.AsString
          + ' @ ' + FormatDateTime('dd MMM yyyy hh:nn:ss', cdsBankInstructionListMODDA.AsDateTime);
      end;

      if sResultMsg <> '' then
        sResultMsg := sResultMsg + #10#13;

      sResultMsg := sResultMsg + sMsg;
    end;

    if iSuc > 0 then
    begin
      //Save File to Bank Inteerface Directory
      oProgress.ChangeBarCaption('Saving Bank Instruction File');

      if DirectoryExists(sDir) then
      begin
        while oList.Count > 0 do
        begin
          oBankInstruction := TBankInstruction(oList.Objects[0]);

          sFolderName := sDir + oBankInstruction.BankCode + '\';
          if not DirectoryExists(sFolderName) then
            CreateDir(sFolderName);

          if (oBankInstruction.BankCode = 'BMRI') or (oBankInstruction.BankCode = 'BMAN') then
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
            or (oBankInstruction.BankCode = 'BMAN')
            or (oBankInstruction.BankCode = 'BMRI')
            or (oBankInstruction.BankCode = 'SCB') then
          begin
            //Ini khusus dibuat untuk kebutuhan CIMB
            sFileName := sFolderName + oBankInstruction.TransType +'_'+ sBankRef_tmp +'_'+ FormatDateTime('YYYYMMDD', dtSystem) +sExt;
            x := 0;

            while FileExists(sFileName) do
            begin
              Inc(x);
              sFileName :=  sFolderName + oBankInstruction.TransType + '_' + sBankRef_tmp + '_' + FormatDateTime('YYYYMMDD', dtSystem) + '_' + IntToStr(x) + sExt;
            end;
          end
          else
          begin
            sFileName := sFolderName + oBankInstruction.TransType +'_'+ sBankRef_tmp + '_' + FormatDateTime('YYYYMMDD', dtSystem) + sExt;
          end;

          oBankInstruction.Instruction.SaveToFile(sFileName);

          if oBankInstruction.BankCode = 'BCA' then
            dmGlobal.GenerateBCAChecksum(sFileName, sTransferType);

          //Free List Object
          oList.Delete(0);
          FreeAndNil(oBankInstruction);
        end;

        ShowMessage(IntToStr(iSuc) +' Success Generate and '+ IntToStr(iErr) +' Failed To Generate and '+ #10#13
          + 'Please Check Bank Instruction File in Directory ' + QuotedStr(sDir) + #10#13 + #10#13
          + sResultMsg);
      end
      else
      begin
        MessageDlg(sDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);
      end;

    end
    else
    begin
      ShowMessage(IntToStr(iSuc) +' Success Generate and '+ IntToStr(iErr) +' Failed To Generate and '+ #10#13
          + sResultMsg);
    end;

  Finally
    FreeAndNil(oProgress);
    FreeAndNil(oList);
    actRefresh.Execute;
  End;

end;

procedure TfrmDailyBankInstruction.actOpenGenerateFileExecute(Sender: TObject);
var
  i, iRec, iErr, iSuc: Integer;
  sMsg, sResMsg, sStat: string;
begin
  inherited;
  iSuc := 0;
  iErr := 0;

  if MessageQuestion('Open Status Generate Bank Instruction ?') then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iRec := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := iRec;

      if cdsBankInstructionListFILE_CREATED.AsString = '1' then
      begin
        dmGlobal.RemoteServer.UpdateBankReff('S' ,cdsBankInstructionListBIID.AsInteger);
        Inc(iSuc);
      end
      else
      begin
        Inc(iErr);
        if (cdsBankInstructionListSTAT_BI.AsString = 'C') then sStat := 'canceled'
        else if (cdsBankInstructionListSTAT_BI.AsString = 'O') then sStat := 'opened'
        else if (cdsBankInstructionListSTAT_BI.AsString = 'R') then sStat := 'reversed';

        sMsg := sMsg + cdsBankInstructionListBINO.AsString +' status '+ sStat + #10#13
      end;

    end;

    sResMsg := IntToStr(iSuc) + ' Success to open generete' + #13;
    if iErr > 0 then
    begin
      sResMsg := sResMsg + IntToStr(iErr) + ' Fail to cancel generete' + #10#13 + sMsg;
    end;

    MessageDlg(sResMsg, mtInformation, [mbOk], 0);
    cdsBankInstructionList.Refresh;
  end;
end;

procedure TfrmDailyBankInstruction.actPrintExecute(Sender: TObject);
var
  sBINo: String;
  i, RecIdx: Integer;
begin
  if cdsBankInstructionList.IsEmpty then
    Exit;

  sBINo := '';
  for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    if sBINo <> '' then
      sBINo := sBINo + ';';

    sBINo := sBINo + cdsBankInstructionListBIID.AsString;
  end;

  ReportContainer.Params[0].AsString := sBINo;
  inherited;
end;

procedure TfrmDailyBankInstruction.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsBankInstructionList.Close;
  cdsBankInstructionList.Params[0].AsString := VarToStrDef(cbBIType.EditValue, 'P');
  cdsBankInstructionList.Params[1].AsString := VarToStrDef(cbFilter.EditValue, 'V');
  cdsBankInstructionList.Params[2].AsDate   := VarToDateTime(dtFilter.EditValue);
  cdsBankInstructionList.Params[3].AsString := chkOpen.EditValue;
  cdsBankInstructionList.Params[4].AsString := chkCanceled.EditValue;
  cdsBankInstructionList.Params[5].AsString := chkCreated.EditValue;
  cdsBankInstructionList.Params[6].AsString := chkReversed.EditValue;
  cdsBankInstructionList.Open;
end;

procedure TfrmDailyBankInstruction.cdsBankInstructionListAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  cdsSumBank.Close;
  cdsSumBank.CreateDataSet;

  cdsBankInstructionList.DisableControls;
  Try
    if not cdsBankInstructionList.IsEmpty then
    begin
      cdsBankInstructionList.First;

      while not cdsBankInstructionList.Eof do
      begin
        if (cdsBankInstructionListBANKTYPE_SOURCE.AsString = '1')
          or (cdsBankInstructionListBANKTYPE_SOURCE.AsString = '2') then
        begin
          if cdsSumBank.Locate('BANKID', cdsBankInstructionListACCBANKID_SOURCE.AsInteger, []) then
          begin
            cdsSumBank.Edit;
            cdsSumBankDEBET.AsFloat := cdsSumBankDEBET.AsFloat + cdsBankInstructionListNETAMOUNT.AsFloat;
            cdsSumBank.Post;
          end
          else
          begin
            cdsSumBank.Append;
            cdsSumBankBANKID.AsInteger := cdsBankInstructionListACCBANKID_SOURCE.AsInteger;
            cdsSumBankBNCODE.AsString := cdsBankInstructionListBNCODE_SOURCE.AsString;
            cdsSumBankBNACCNO.AsString := cdsBankInstructionListBNACCNO_SOURCE.AsString;
            cdsSumBankBNDESC.AsString := cdsSumBankBNCODE.AsString + ' : ' + cdsSumBankBNACCNO.AsString;
            cdsSumBankDEBET.AsFloat := cdsSumBankDEBET.AsFloat + cdsBankInstructionListNETAMOUNT.AsFloat;
            cdsSumBankCREDIT.AsFloat := 0;
            cdsSumBank.Post;
          end;
        end;

        if (cdsBankInstructionListBANKTYPE_TARGET.AsString = '1')
          or (cdsBankInstructionListBANKTYPE_TARGET.AsString = '2') then
        begin
          if cdsSumBank.Locate('BANKID', cdsBankInstructionListACCBANKID_TARGET.AsInteger, []) then
          begin
            cdsSumBank.Edit;
            cdsSumBankCREDIT.AsFloat := cdsSumBankCREDIT.AsFloat + cdsBankInstructionListNETAMOUNT.AsFloat;
            cdsSumBank.Post;
          end
          else
          begin
            cdsSumBank.Append;
            cdsSumBankBANKID.AsInteger := cdsBankInstructionListACCBANKID_SOURCE.AsInteger;
            cdsSumBankBNCODE.AsString := cdsBankInstructionListBNCODE_SOURCE.AsString;
            cdsSumBankBNACCNO.AsString := cdsBankInstructionListBNACCNO_SOURCE.AsString;
            cdsSumBankBNDESC.AsString := cdsSumBankBNCODE.AsString + ' : ' + cdsSumBankBNACCNO.AsString;
            cdsSumBankDEBET.AsFloat := 0;
            cdsSumBankCREDIT.AsFloat := cdsSumBankCREDIT.AsFloat + cdsBankInstructionListNETAMOUNT.AsFloat;
            cdsSumBank.Post;
          end;
        end;

        cdsBankInstructionList.Next;
      end;
    end;
  Finally
    cdsBankInstructionList.EnableControls;
  End;
end;

procedure TfrmDailyBankInstruction.cdsBankInstructionListCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsBankInstructionListBANK_SOURCE.AsString := cdsBankInstructionListBNCODE_SOURCE.AsString
    + ' : ' + cdsBankInstructionListBNACCNO_SOURCE.AsString;
end;

procedure TfrmDailyBankInstruction.cdsSumBankCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsSumBankNETAMOUNT.AsFloat := cdsSumBankDEBET.AsFloat - cdsSumBankCREDIT.AsFloat;
end;

procedure TfrmDailyBankInstruction.FormCreate(Sender: TObject);
begin
  inherited;
  cbBIType.EditValue := 'P';
  cbFilter.EditValue := 'V';
  dtFilter.EditValue := dmGlobal.RemoteServer.GetTransDate;

  chkOpen.EditValue     := '1';
  chkCanceled.EditValue := '0';
  chkCreated.EditValue  := '0';
  chkReversed.EditValue := '0';

  actRefresh.Execute;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmDailyBankInstruction);

end.
