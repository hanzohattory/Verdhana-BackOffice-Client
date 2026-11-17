unit FormCashMovList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxDropDownEdit, cxImageComboBox, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxCalendar, dxLayoutControl, cxGridChartView,
  cxGridDBChartView, System.Actions, System.ImageList, dxDateRanges,
  cxBarEditItem, cxCheckBox, dxScrollbarAnnotations, cxCheckGroup;

type
  TfrmCashMovList = class(TfrmBrowseData)
    cdsCashMovList: TNClientDataset;
    actViewData: TNAction;
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
    popBankInstruction: TPopupMenu;
    GenerateBankInstructionFile1: TMenuItem;
    grdMasterLevel2: TcxGridLevel;
    grdMasterLevel3: TcxGridLevel;
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
    gvwBankChart: TcxGridDBChartView;
    gvwBankChartSeries1: TcxGridDBChartSeries;
    gvwBankChartDataGroup1: TcxGridDBChartDataGroup;
    actGenerateBankInstructionFile: TNAction;
    cdsBankInstructionListBNNAME_SOURCE: TStringField;
    cdsBankInstructionListINITIAL_NAME_SOURCE: TStringField;
    cdsBankInstructionListBICODE_SOURCE: TStringField;
    cdsBankInstructionListBNNAME_TARGET: TStringField;
    cdsBankInstructionListINITIAL_NAME_TARGET: TStringField;
    cdsBankInstructionListBICODE_TARGET: TStringField;
    dtStartDate: TcxBarEditItem;
    dtEndDate: TcxBarEditItem;
    cdsCashMovListSTATUS: TStringField;
    cdsCashMovListCMID: TIntegerField;
    cdsCashMovListCMCODE: TStringField;
    cdsCashMovListENTRYDATE: TDateField;
    cdsCashMovListmoveType: TStringField;
    cdsCashMovListSOURCE_ACCID: TIntegerField;
    cdsCashMovListsourceAccCode: TStringField;
    cdsCashMovListsourceAccName: TStringField;
    cdsCashMovListTARGET_ACCID: TIntegerField;
    cdsCashMovListtargetAccCode: TStringField;
    cdsCashMovListtargetAccName: TStringField;
    cdsCashMovListCCYCODE: TStringField;
    cdsCashMovListAMOUNT: TFloatField;
    cdsCashMovListENTRY_DATE: TDateTimeField;
    cdsCashMovListENTRY_SYSDATE: TDateTimeField;
    cdsCashMovListENTRY_UI: TStringField;
    cdsCashMovListAPPROVED_DATE: TDateTimeField;
    cdsCashMovListAPPROVED_SYSDATE: TDateTimeField;
    cdsCashMovListAPPROVED_UI: TStringField;
    cdsCashMovListPOSTED_DATE: TDateTimeField;
    cdsCashMovListPOSTED_SYSDATE: TDateTimeField;
    cdsCashMovListPOSTED_UI: TStringField;
    cdsCashMovListREVERSED_DATE: TDateTimeField;
    cdsCashMovListREVERSED_SYSDATE: TDateTimeField;
    cdsCashMovListREVERSED_UI: TStringField;
    cdsCashMovListCANCELED_DATE: TDateTimeField;
    cdsCashMovListCANCELED_SYSDATE: TDateTimeField;
    cdsCashMovListCANCELED_UI: TStringField;
    cdsCashMovListCANCELED_NOTES: TStringField;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterCMID: TcxGridDBBandedColumn;
    gvwMasterCMCODE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMastermoveType: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCID: TcxGridDBBandedColumn;
    gvwMastersourceAccCode: TcxGridDBBandedColumn;
    gvwMastersourceAccName: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCID: TcxGridDBBandedColumn;
    gvwMastertargetAccCode: TcxGridDBBandedColumn;
    gvwMastertargetAccName: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterENTRY_DATE: TcxGridDBBandedColumn;
    gvwMasterENTRY_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterENTRY_UI: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_UI: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELED_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELED_NOTES: TcxGridDBBandedColumn;
    chStatus: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    actCashMovementApprove: TNAction;
    actCashMovementCancel: TNAction;
    actCashMovementPost: TNAction;
    actCashMovementReverse: TNAction;
    N1: TMenuItem;
    CashMovementApprove1: TMenuItem;
    CashMovementPost1: TMenuItem;
    CashMovementCancel1: TMenuItem;
    CashMovementReverse1: TMenuItem;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsCashMovListLEDGERTRANSID: TLargeintField;
    cdsCashMovListFUNDTRANSID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actEditUpdate(Sender: TObject);
    procedure gvwBankChartSeries1GetValueDisplayText(Sender: TObject;
      const AValue: Variant; var ADisplayText: string);
    procedure actGenerateBankInstructionFileExecute(Sender: TObject);
    procedure cdsCashMovListAfterOpen(DataSet: TDataSet);
    procedure cdsCashMovListAfterRefresh(DataSet: TDataSet);
    procedure actRefreshExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure actCashMovementApproveExecute(Sender: TObject);
    procedure actCashMovementPostExecute(Sender: TObject);
    procedure actCashMovementCancelExecute(Sender: TObject);
    procedure actCashMovementReverseExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashMovList: TfrmCashMovList;

implementation

{$R *.dfm}

uses DataGlobal, FormCashMov, FormCashDepList, ClassGeneral, FormProgressBar, StrUtils,
  FormViewTransaction;

procedure TfrmCashMovList.actGenerateBankInstructionFileExecute(Sender: TObject);
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

procedure TfrmCashMovList.actCashMovementApproveExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCMID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash movement approve !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash movement approve ?') then
    begin
      dmGlobal.RemoteServer.CashMovementApproved(cdsCashMovListCMID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash movement approve ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCMID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCMID.Index];

          if dmGlobal.RemoteServer.CashMovementApproved(iCMID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash movement approve has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully approved and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashMovList.Refresh;
end;

procedure TfrmCashMovList.actCashMovementCancelExecute(Sender: TObject);
var
  sMsg, sNotes: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCMID: Int64;
  fAmount: Double;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash movement cancel !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash movement cancel ?') then
    begin
      sNotes := InputBox('Cash Movement Cancel', 'Cancel Reason', '');
      if sNotes = '' then
      begin
        MessageWarning('Cancel reason is empty, abort cancel process !');
        Exit;
      end;

      dmGlobal.RemoteServer.CashMovementCancel(cdsCashMovListCMID.AsLargeInt, sNotes, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash movement approve ?') then
    begin
      sNotes := InputBox('Multiple Cash Movement Cancel', 'Cancel Reason', '');
      if sNotes = '' then
      begin
        MessageWarning('Cancel reason is empty, abort multiple cancel process !');
        Exit;
      end;

      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCMID   := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCMID.Index];
          fAmount := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterAMOUNT.Index];

          if dmGlobal.RemoteServer.CashMovementCancel(cdsCashMovListCMID.AsLargeInt, sNotes, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash movement cancel has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully posted and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashMovList.Refresh;
end;

procedure TfrmCashMovList.actCashMovementPostExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCMID: Int64;
  fAmount: Double;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash movement post !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash movement post ?') then
    begin
      dmGlobal.RemoteServer.CashMovementPost(cdsCashMovListCMID.AsLargeInt, cdsCashMovListAMOUNT.AsFloat, cdsCashMovListAMOUNT.AsFloat, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash movement approve ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCMID   := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCMID.Index];
          fAmount := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterAMOUNT.Index];

          if dmGlobal.RemoteServer.CashMovementPost(iCMID, fAmount, fAmount, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash movement post has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully posted and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashMovList.Refresh;
end;

procedure TfrmCashMovList.actCashMovementReverseExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCMID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process cash movement reverse !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process cash movement reverse ?') then
    begin
      dmGlobal.RemoteServer.CashMovementReverse(cdsCashMovListCMID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected cash movement reverse ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCMID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCMID.Index];

          if dmGlobal.RemoteServer.CashMovementReverse(iCMID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cash movement reverse has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully approved and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCashMovList.Refresh;
end;

procedure TfrmCashMovList.actEditUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsCashMovListSTATUS.AsString = 'O';
end;

procedure TfrmCashMovList.actRefreshExecute(Sender: TObject);
var
  sTempStatus, sStatus: string;
begin
  sTempStatus := chStatus.EditValue;
  sStatus     := '';

  // Status : Created
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '1';
  end;

  // Status : Approved
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '5';
  end;

  // Status : Posted
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '2';
  end;

  // Status : Reversed
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '3';
  end;

  // Status : Canceled
  if copy(sTempStatus, 5, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '4';
  end;

  cdsCashMovList.Close;
  cdsCashMovList.Params[0].AsDate   := VarToDateTime(dtStartDate.EditValue);
  cdsCashMovList.Params[1].AsDate   := VarToDateTime(dtEndDate.EditValue);
  cdsCashMovList.Params[2].AsString := sStatus;
  cdsCashMovList.Open;

//  inherited;
end;

procedure TfrmCashMovList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsCashMovListENTRYDATE.AsDateTime;
    iLedgerTransID := cdsCashMovListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := -1;
    iFundTransID   := cdsCashMovListFUNDTRANSID.AsLargeInt;

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

procedure TfrmCashMovList.cdsCashMovListAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsBankInstructionList.Close;
  cdsBankInstructionList.Params[0].AsDate := cdsCashMovList.Params[0].AsDate;
  cdsBankInstructionList.Params[1].AsDate := cdsCashMovList.Params[1].AsDate;
  cdsBankInstructionList.Open;
end;

procedure TfrmCashMovList.cdsCashMovListAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  cdsBankInstructionList.Refresh;
end;

procedure TfrmCashMovList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmCashMov;
end;

procedure TfrmCashMovList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '11111';
end;

procedure TfrmCashMovList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '00000';
end;

procedure TfrmCashMovList.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
begin
  inherited;
  KeyField := cdsCashMovListCMID;

  dtSystem              := dmGlobal.RemoteServer.GetTransDate;
  dtStartDate.EditValue := dtSystem;
  dtEndDate.EditValue   := dtSystem;
  chStatus.EditValue    := '10000';

  dmGlobal.NeedToDelete := False;
end;

procedure TfrmCashMovList.gvwBankChartSeries1GetValueDisplayText(
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
  RegisterClass(TfrmCashMovList);

end.
