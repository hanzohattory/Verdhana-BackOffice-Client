unit FormCorpactExerciseList;

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
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxBarEditItem, cxImageComboBox, dxDateRanges, ComObj, cxCheckBox,
  dxScrollbarAnnotations, cxCheckGroup;

type
  TfrmCorpactExerciseList = class(TfrmBrowseData)
    cdsCorpactExerciseList: TNClientDataset;
    dtStart: TcxBarEditItem;
    edPosted: TcxBarEditItem;
    edGenerateWT: TcxBarEditItem;
    actCorpactProcess: TNAction;
    ExerciseProcess1: TMenuItem;
    DistributionExercise1: TMenuItem;
    actGenerateWT: TNAction;
    actRejectFromFront: TNAction;
    actExerCancel: TNAction;
    ExerciseCancel1: TMenuItem;
    N1: TMenuItem;
    actExerReverse: TNAction;
    ExerciseReverse1: TMenuItem;
    OpenDialog: TOpenDialog;
    actUploadExcel: TNAction;
    cdsCorpactExercise: TNClientDataset;
    cdsCorpactExerciseAnno: TNClientDataset;
    cdsCorpactExerciseAnnoCAID: TLargeintField;
    cdsCorpactExerciseAnnoCANO: TStringField;
    cdsCorpactExerciseAnnoCATYPE: TStringField;
    cdsCorpactExerciseAnnoSTOCKID: TIntegerField;
    cdsCorpactExerciseAnnoSTOCKCODE: TStringField;
    cdsCorpactExerciseAnnoSTOCKNAME: TStringField;
    cdsCorpactExerciseAnnoISINCODE: TStringField;
    cdsCorpactExerciseAnnoBASE_STK_RATIO: TFloatField;
    cdsCorpactExerciseAnnoGET_STK_RT: TFloatField;
    cdsCorpactExerciseAnnoBASE_CASH_RATIO: TFloatField;
    cdsCorpactExerciseAnnoGET_CASH_RATIO: TFloatField;
    cdsCorpactExerciseAnnoBASE_QTY_PRICE_RATIO: TFloatField;
    cdsCorpactExerciseAnnoEXER_PRICE: TFloatField;
    cdsCorpactExerciseAnnoWR_QTY_PRICE_RATIO: TFloatField;
    cdsCorpactExerciseAnnoWR_EXER_PRICE: TFloatField;
    cdsCorpactExerciseAnnoRND_CALC_MODE: TStringField;
    cdsCorpactExerciseAnnoLOCAL_TAX: TFloatField;
    cdsCorpactExerciseAnnoFOR_TAX: TFloatField;
    cdsCorpactExerciseAnnoRIGHTID: TIntegerField;
    cdsCorpactExerciseAnnoRIGHTCODE: TStringField;
    cdsCorpactExerciseAnnoWARRANTID: TIntegerField;
    cdsCorpactExerciseAnnoWAARANTCODE: TStringField;
    cdsCorpactExerciseAnnoNGRG_CUMDATE: TDateField;
    cdsCorpactExerciseAnnoTN_CUMDATE: TDateField;
    cdsCorpactExerciseAnnoNGRG_EXDATE: TDateField;
    cdsCorpactExerciseAnnoTN_EXDATE: TDateField;
    cdsCorpactExerciseAnnoRECDATE: TDateField;
    cdsCorpactExerciseAnnoDISTDATE: TDateField;
    cdsCorpactExerciseAnnoPAYDATE: TDateField;
    cdsCorpactExerciseAnnoST_TRD_NOMDATE: TDateField;
    cdsCorpactExerciseAnnoLAST_OLD_NOMDATE: TDateField;
    cdsCorpactExerciseAnnoRI_STR_LISTDATE: TDateField;
    cdsCorpactExerciseAnnoRI_END_LISDATE: TDateField;
    cdsCorpactExerciseAnnoRI_STR_TRDDATE: TDateField;
    cdsCorpactExerciseAnnoRI_END_TRDDATE: TDateField;
    cdsCorpactExerciseAnnoRI_STR_EXERDATE: TDateField;
    cdsCorpactExerciseAnnoRI_END_EXERDATE: TDateField;
    cdsCorpactExerciseAnnoSTR_DISTDATE: TDateField;
    cdsCorpactExerciseAnnoEND_DISTDATE: TDateField;
    cdsCorpactExerciseAnnoRI_LASTPAY_DATE: TDateField;
    cdsCorpactExerciseAnnoALLOTMENT_DATE: TDateField;
    cdsCorpactExerciseAnnoREFUND_DATE: TDateField;
    cdsCorpactExerciseAnnoRGNG_WR_STR_TRDDATE: TDateField;
    cdsCorpactExerciseAnnoTN_WR_STR_TRDDATE: TDateField;
    cdsCorpactExerciseAnnoWR_STR_EXERDATE: TDateField;
    cdsCorpactExerciseAnnoWR_END_EXERDATE: TDateField;
    cdsCorpactExerciseAnnoWR_EXPDATE: TDateField;
    cdsCorpactExerciseAnnoCA_DESC: TStringField;
    cdsCorpactExerciseAnnoCASHDIV_RECVSTAT: TStringField;
    cdsCorpactExerciseAnnoCASHDIV_RCV: TDateField;
    cdsCorpactExerciseAnnoENTITLEMENT: TStringField;
    cdsCorpactExerciseAnnoEXERCISES_CLOSE: TStringField;
    cdsCorpactExerciseAnnoSTAT: TStringField;
    cdsCorpactExerciseAnnoRI_EXERCISES: TStringField;
    cdsCorpactExerciseAnnoRI_STOCK_DIST: TStringField;
    cdsCorpactExerciseAnnoRI_EXPIRED: TStringField;
    cdsCorpactExerciseAnnoRI_EXER_ADM_FEE: TFloatField;
    cdsCorpactExerciseAnnoRI_ISINCODE: TStringField;
    cdsCorpactExerciseAnnoWR_ISINCODE: TStringField;
    cdsCorpactExerciseAnnoWR_STR_TRDDATE: TDateField;
    cdsCorpactExerciseAnnoBASE_RI_QTY: TFloatField;
    cdsCorpactExerciseAnnoGET_RI_QTY: TFloatField;
    cdsCorpactExerciseAnnoRI_PRICE: TFloatField;
    cdsCorpactExerciseAnnoBASE_WR_QTY: TFloatField;
    cdsCorpactExerciseAnnoGET_WR_QTY: TFloatField;
    cdsCorpactExerciseAnnoWR_PRICE: TFloatField;
    cdsCorpactExerciseAnnoNEW_STOCKID: TIntegerField;
    cdsCorpactExerciseAnnoNEW_STOCKCODE: TStringField;
    cdsCorpactExerciseAnnoNEW_STOCKNAME: TStringField;
    cdsCorpactExerciseAnnoNEW_ISINCODE: TStringField;
    cdsCorpactExerciseAnnoRIGTHNAME: TStringField;
    cdsCorpactExerciseAnnoWARRANTNAME: TStringField;
    cdsCorpactExerciseAnnoLASTCOUPON_DATE: TDateField;
    cdsCorpactExerciseAnnoNEXTCOUPON_DATE: TDateField;
    cdsCorpactExerciseAnnoMATURITY_DATE: TDateField;
    cdsCorpactExerciseAnnoCOUPONDAYS: TIntegerField;
    cdsCorpactExerciseAnnoINTEREST_RATE: TFloatField;
    cdsCorpactExerciseAnnoVOUCHERDATE: TDateTimeField;
    cdsCorpactExerciseAnnoCCYCODE: TStringField;
    cdsCorpactExerciseAnnoSETTLE_CCYCODE: TStringField;
    cdsCorpactExerciseAnnoEXRATE: TFloatField;
    cdsCorpactExerciseAnnoBROKER_ACCBANKID: TLargeintField;
    cdsCorpactExerciseAnnoWR_END_TRDDATE: TDateField;
    cdsCorpactExerciseAnnoFIRST_HANDOVER_DATE: TDateField;
    cdsCorpactExerciseAnnoSCND_HANDOVER_DATE: TDateField;
    cdsCorpactExerciseAnnoCLOSING_PRICE: TFloatField;
    cdsCorpactExerciseAnnoCOMPLAIN_DATE: TDateField;
    cdsCorpactExerciseAnnoEFFECTIVE_DATE: TDateField;
    cdsCorpactExerciseAnnoRUPSLB_DATE: TDateField;
    cdsCorpactExerciseAnnoSTR_IMPL_DATE: TDateField;
    cdsCorpactExerciseAnnoEND_IMPL_DATE: TDateField;
    cdsCorpactExerciseAnnoSTR_TRADE_DATE: TDateField;
    cdsCorpactExerciseAnnoEND_TRADE_DATE: TDateField;
    cdsCorpactExerciseAnnoMERGE_TRADE_DATE: TDateField;
    cdsCorpactExerciseAnnoSTR_TRADE_MERGE: TDateField;
    cdsCorpactExerciseAnnoRECMERGE: TDateField;
    cdsCorpactExerciseAnnoSHAREHOLDER_DATE: TDateField;
    cdsCorpactExerciseAnnoREPORT_DATE: TDateField;
    cdsCorpactExerciseAnnoSTR_NEW_TRADE: TDateField;
    cdsCorpactExerciseAnnoEND_OLD_TRADE: TDateField;
    cdsCorpactExerciseAnnoANNO_DATE: TDateField;
    cdsCorpactExerciseAnnoSTR_RESCISSION_DATE: TDateField;
    cdsCorpactExerciseAnnoEND_RESCISSION_DATE: TDateField;
    cdsCorpactExerciseAnnoROUNDSTOCK: TIntegerField;
    cdsCorpactExerciseAnnoCASH_DVDPAY: TDateField;
    cdsCorpactExerciseAnnoPOSTED: TBooleanField;
    cdsCorpactExerciseAnnoLAST_JRNID: TLargeintField;
    cdsCorpactExerciseAnnoLAST_REVERSED_JRNID: TLargeintField;
    cdsCorpactExerciseAnnoCASH_STAT: TStringField;
    cdsCorpactExerciseAnnoSTOCK_STAT: TStringField;
    cdsCorpactExerciseAnnoCANCEL_EXERPAID: TStringField;
    cdsCorpactExerciseAnnoACCNO: TStringField;
    cdsCorpactExerciseAnnoFOREX_CASH_RATIO: TFloatField;
    cdsCorpactExerciseAnnoACCID: TIntegerField;
    cdsCorpactExerciseAnnoISSUERID: TLargeintField;
    cdsCorpactExerciseAnnoMODDA: TDateTimeField;
    cdsCorpactExerciseAnnoMODUI: TStringField;
    cdsCorpactExerciseAnnoAPPDA: TDateTimeField;
    cdsCorpactExerciseAnnoAPPUI: TStringField;
    cdsCorpactExerciseAnnoUNDER4Y: TIntegerField;
    cdsCorpactExerciseAnnoUNDER4YDA: TDateTimeField;
    cdsCorpactExerciseAnnoNOTES4Y: TStringField;
    cdsCorpactExerciseAnnoISDEL: TIntegerField;
    cdsCorpactExerciseAnnoID: TLargeintField;
    cdsCorpactExerciseAnnoGENERATE_ENT: TStringField;
    UploadFromExcelFile1: TMenuItem;
    dtEnd: TcxBarEditItem;
    cdsCorpactExerciseAnnoPRICE: TFloatField;
    cdsCorpactExerciseListCAID: TLargeintField;
    cdsCorpactExerciseListEXER_ID: TLargeintField;
    cdsCorpactExerciseListEXER_NO: TStringField;
    cdsCorpactExerciseListVALUEDATE: TDateField;
    cdsCorpactExerciseListACCID: TLargeintField;
    cdsCorpactExerciseListACCCODE: TStringField;
    cdsCorpactExerciseListACCNAME: TStringField;
    cdsCorpactExerciseListSTOCKID: TIntegerField;
    cdsCorpactExerciseListSTOCKCODE: TStringField;
    cdsCorpactExerciseListSTOCKNAME: TStringField;
    cdsCorpactExerciseListrightID: TIntegerField;
    cdsCorpactExerciseListrightCode: TStringField;
    cdsCorpactExerciseListrightName: TStringField;
    cdsCorpactExerciseListEXERCISE_QTY: TFloatField;
    cdsCorpactExerciseListexerPrice: TFloatField;
    cdsCorpactExerciseListEXERCISE_AMT: TFloatField;
    cdsCorpactExerciseListENTERED_DATE: TDateTimeField;
    cdsCorpactExerciseListENTERED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseListENTERED_UI: TStringField;
    cdsCorpactExerciseListEXERCISED_DATE: TDateTimeField;
    cdsCorpactExerciseListEXERCISED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseListEXERCISED_UI: TStringField;
    cdsCorpactExerciseListDISTRIBUTED_DATE: TDateTimeField;
    cdsCorpactExerciseListDISTRIBUTED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseListDISTRIBUTED_UI: TStringField;
    cdsCorpactExerciseListCANCELED_DATE: TDateTimeField;
    cdsCorpactExerciseListCANCELED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseListCANCELED_UI: TStringField;
    gvwMasterCAID: TcxGridDBBandedColumn;
    gvwMasterEXER_ID: TcxGridDBBandedColumn;
    gvwMasterEXER_NO: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterrightID: TcxGridDBBandedColumn;
    gvwMasterrightCode: TcxGridDBBandedColumn;
    gvwMasterrightName: TcxGridDBBandedColumn;
    gvwMasterEXERCISE_QTY: TcxGridDBBandedColumn;
    gvwMasterexerPrice: TcxGridDBBandedColumn;
    gvwMasterEXERCISE_AMT: TcxGridDBBandedColumn;
    gvwMasterENTERED_DATE: TcxGridDBBandedColumn;
    gvwMasterENTERED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterENTERED_UI: TcxGridDBBandedColumn;
    gvwMasterEXERCISED_DATE: TcxGridDBBandedColumn;
    gvwMasterEXERCISED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterEXERCISED_UI: TcxGridDBBandedColumn;
    gvwMasterDISTRIBUTED_DATE: TcxGridDBBandedColumn;
    gvwMasterDISTRIBUTED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterDISTRIBUTED_UI: TcxGridDBBandedColumn;
    gvwMasterCANCELED_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterCANCELED_UI: TcxGridDBBandedColumn;
    cdsCorpactExerciseListSTAT: TStringField;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    cdsCorpactExerciseListREVERSED_DATE: TDateTimeField;
    cdsCorpactExerciseListREVERSED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseListREVERSED_UI: TStringField;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_SYSTEMDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    chStatus: TcxBarEditItem;
    actDistributionExercise: TNAction;
    cdsCorpactExerciseCAID: TLargeintField;
    cdsCorpactExerciseEXER_ID: TLargeintField;
    cdsCorpactExerciseACCID: TLargeintField;
    cdsCorpactExerciseEXER_NO: TStringField;
    cdsCorpactExerciseVALUEDATE: TDateField;
    cdsCorpactExerciseCA_QTY: TFloatField;
    cdsCorpactExerciseEXERCISE_QTY: TFloatField;
    cdsCorpactExerciseEXERCISE_AMT: TFloatField;
    cdsCorpactExerciseEXERCISE_PRICE: TFloatField;
    cdsCorpactExerciseREF_EXER_ID: TStringField;
    cdsCorpactExerciseSUBREK001: TStringField;
    cdsCorpactExerciseSTAT: TStringField;
    cdsCorpactExerciseGENERATE_WT_SYSTEMDATE: TDateField;
    cdsCorpactExerciseGENERATE_WT_DATE: TDateTimeField;
    cdsCorpactExerciseGENERATE_WT_USER: TStringField;
    cdsCorpactExerciseCOID: TLargeintField;
    cdsCorpactExerciseKPEI_COID: TLargeintField;
    cdsCorpactExerciseLEDGERTRANSID: TLargeintField;
    cdsCorpactExerciseLEDGERTRANSID_REVERSED: TLargeintField;
    cdsCorpactExerciseSTOCKTRANSID: TLargeintField;
    cdsCorpactExerciseSTOCKTRANSID_REVERSED: TLargeintField;
    cdsCorpactExerciseENTERED_DATE: TDateTimeField;
    cdsCorpactExerciseENTERED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseENTERED_UI: TStringField;
    cdsCorpactExerciseEXERCISED_DATE: TDateTimeField;
    cdsCorpactExerciseEXERCISED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseEXERCISED_UI: TStringField;
    cdsCorpactExerciseDISTRIBUTED_DATE: TDateTimeField;
    cdsCorpactExerciseDISTRIBUTED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseDISTRIBUTED_UI: TStringField;
    cdsCorpactExerciseCANCELED_DATE: TDateTimeField;
    cdsCorpactExerciseCANCEL_REASON: TStringField;
    cdsCorpactExerciseCANCELED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseCANCELED_UI: TStringField;
    cdsCorpactExerciseREVERSED_DATE: TDateTimeField;
    cdsCorpactExerciseREVERSED_SYSTEMDATE: TDateTimeField;
    cdsCorpactExerciseREVERSED_UI: TStringField;
    cdsCorpactExerciseMODDA: TDateTimeField;
    cdsCorpactExerciseMODUI: TStringField;
    cdsCorpactExerciseAPPDA: TDateTimeField;
    cdsCorpactExerciseAPPUI: TStringField;
    cdsCorpactExerciseUNDER4Y: TIntegerField;
    cdsCorpactExerciseUNDER4YDA: TDateTimeField;
    cdsCorpactExerciseNOTES4Y: TStringField;
    cdsCorpactExerciseISDEL: TIntegerField;
    cdsCorpactExerciseID: TLargeintField;
    cdsCorpactExerciseListSTOCKTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    cdsCorpactExerciseListLEDGERTRANSID: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCorpactProcessExecute(Sender: TObject);
    procedure actDistributionExerciseExecute(Sender: TObject);
    procedure actExerCancelExecute(Sender: TObject);
    procedure actExerReverseExecute(Sender: TObject);
    procedure actUploadExcelExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorpactExerciseList: TfrmCorpactExerciseList;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar, FormViewTransaction;

procedure TfrmCorpactExerciseList.actCorpactProcessExecute(Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCAID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to process exercise !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Process exercise ?') then
    begin
      dmGlobal.RemoteServer.CorpactExerciseProcess(cdsCorpactExerciseListEXER_ID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Process selected exercise ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCAID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterEXER_ID.Index];

          if dmGlobal.RemoteServer.CorpactExerciseProcess(iCAID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Corporate action exercise has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully process and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCorpactExerciseList.Refresh;
end;

procedure TfrmCorpactExerciseList.actDistributionExerciseExecute(
  Sender: TObject);
var
  sMsg: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCAID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to distribute exercise !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Distribute exercise ?') then
    begin
      dmGlobal.RemoteServer.CorpactExerciseDistribution(cdsCorpactExerciseListEXER_ID.AsLargeInt, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Distribute selected exercise ?') then
    begin
      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCAID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterEXER_ID.Index];

          if dmGlobal.RemoteServer.CorpactExerciseDistribution(iCAID, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Corporate action exercise has been distribute '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully distribute and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCorpactExerciseList.Refresh;
end;

procedure TfrmCorpactExerciseList.actExerCancelExecute(Sender: TObject);
var
  sMsg, sNotes: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCAID: Int64;
  fAmount: Double;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to cancel exercise !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Cancel exercise ?') then
    begin
      sNotes := InputBox('Cancel Exercise', 'Cancel Reason', '');
      if sNotes = '' then
      begin
        MessageWarning('Cancel reason is empty, abort cancel process !');
        Exit;
      end;

      dmGlobal.RemoteServer.CorpactExerciseCancel(cdsCorpactExerciseListEXER_ID.AsLargeInt, sNotes, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Cancel selected exercise ?') then
    begin
      sNotes := InputBox('Multiple Cancel Exercise', 'Cancel Reason', '');
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
          iCAID   := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCAID.Index];

          if dmGlobal.RemoteServer.CorpactExerciseCancel(cdsCorpactExerciseListCAID.AsLargeInt, sNotes, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Cancel exercise has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully posted and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCorpactExerciseList.Refresh;
end;

procedure TfrmCorpactExerciseList.actExerReverseExecute(Sender: TObject);
var
  sMsg, sNotes: string;
  i: integer;
  slMsgDone, slMsgFail: TStringList;
  iCAID: Int64;
  fAmount: Double;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
  begin
    MessageWarning('Please select one or more to reverse exercise !');
    Exit;
  end;

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    if MessageQuestion('Reverse exercise ?') then
    begin
      sNotes := InputBox('Reverse Exercise', 'Cancel Reason', '');
      if sNotes = '' then
      begin
        MessageWarning('Reverse reason is empty, abort reverse process !');
        Exit;
      end;

      dmGlobal.RemoteServer.CorpactExerciseReverse(cdsCorpactExerciseListEXER_ID.AsLargeInt, sNotes, sMsg);
      MessageInformation(sMsg);
    end;
  end
  else if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageQuestion('Reverse selected exercise ?') then
    begin
      sNotes := InputBox('Multiple Reverse Exercise', 'Cancel Reason', '');
      if sNotes = '' then
      begin
        MessageWarning('Reverse reason is empty, abort multiple reverse process !');
        Exit;
      end;

      slMsgDone := TStringList.Create;
      slMsgFail := TStringList.Create;

      try
        for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
        begin
          iCAID   := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCAID.Index];

          if dmGlobal.RemoteServer.CorpactExerciseReverse(cdsCorpactExerciseListCAID.AsLargeInt, sNotes, sMsg) then
            slMsgDone.Add(sMsg)
          else
            slMsgFail.Add(sMsg);
        end;
      finally
        sMsg := 'Reverse exercise has been process '+ IntToStr(gvwMaster.Controller.SelectedRecordCount) +' data'+ #13#10 +
                IntToStr(slMsgDone.Count) +' data successfully posted and '+ IntToStr(slMsgDone.Count) +' data has been failed';

        if slMsgFail.Count > 0 then
          sMsg := sMsg + #13#10 + slMsgFail.Text;

        MessageInformation(sMsg);

        FreeAndNil(slMsgDone);
        FreeAndNil(slMsgFail);
      end;
    end;
  end;

  cdsCorpactExerciseList.Refresh;
end;

procedure TfrmCorpactExerciseList.actRefreshExecute(Sender: TObject);
var
  sStatus, sTempStatus: string;
begin
  //inherited;
  sTempStatus := chStatus.EditValue;
  sStatus     := '';

  // Status : Draft
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '0';
  end;

  // Status : Exercise
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '1';
  end;

  // Status : Distribute
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '2';
  end;

  // Status : Cancel
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '3';
  end;

  // Status : Reverse
  if copy(sTempStatus, 5, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + '4';
  end;

  cdsCorpactExerciseList.Close;
  cdsCorpactExerciseList.Params[0].AsDate   := VarToDateTime(dtStart.EditValue);
  cdsCorpactExerciseList.Params[1].AsDate   := VarToDateTime(dtEnd.EditValue);
  cdsCorpactExerciseList.Params[2].AsString := sStatus;
  cdsCorpactExerciseList.Open;
end;

procedure TfrmCorpactExerciseList.actUploadExcelExecute(Sender: TObject);
var
  sFileName: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iSDID: Integer;
  oProgress: TfrmProgressBar;
  sErrorMsg, sMessage: string;
  iError, iSuccess: Integer;
  oPros : Boolean;

  sStockCode, sAccNo, sSubRek001,
  sAccName: string;
  iStockID, iAccID: Integer;
  fQty: Double;
  dTradeDate: TDate;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;

  dTradeDate := dmGlobal.RemoteServer.GetTransDate;

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if FileExists(sFileName) then
  begin
    try
      cdsCorpactExercise.Close;
      cdsCorpactExercise.Open;

      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading Exercise');
      for i := 2 to iRows do
      begin
        sStockCode := UpperCase(oSheet.Cells[i, 1].Value);
        sAccNo     := UpperCase(oSheet.Cells[i, 2].Value); //FormatFloat('0000000' ,oSheet.Cells[i, 2].Value);
        fQty       := oSheet.Cells[i, 3].Value;

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing Exercise ' + QuotedStr(sStockCode));

        cdsCorpactExerciseAnno.Close;
        cdsCorpactExerciseAnno.Params[0].AsDate   := dTradeDate;
        cdsCorpactExerciseAnno.Params[1].asString := sStockCode;
        cdsCorpactExerciseAnno.Open;

        if cdsCorpactExerciseAnno.RecordCount <= 0 then
        begin
          Inc(iError);
          sErrorMsg := sErrorMsg + 'Unknown Corporate Action, Row : '+ IntToStr(i) + #13;
        end
        else
        begin
          with dmGlobal.IntDataLookup do
          begin
            if not cdsLuAccount.Active then
              cdsLuAccount.Open;
            if cdsLuAccount.Locate('ACCCODE', sAccNo, []) then
            begin
              iAccID   := cdsLuAccountACCID.AsInteger;
              sAccName := cdsLuAccountACCNAME.AsString;
            end;

            if not cdsLuAccountCustody.Active then
              cdsLuAccountCustody.Open;
            if cdsLuAccountCustody.Locate('ACCID', iAccID, []) then
              sSubRek001 := cdsLuAccountCustodyCUSTODYACCNO.AsString;
          end;

          cdsCorpactExercise.Append;
          cdsCorpactExerciseCAID.AsInteger       := cdsCorpactExerciseAnnoCAID.AsInteger;
          cdsCorpactExerciseEXER_ID.AsInteger    := dmGlobal.RemoteServer.GetSeq('TBL_B_CORPACT_EXER');
          cdsCorpactExerciseEXER_NO.AsString     := dmGlobal.RemoteServer.GetVoucherNo(dTradeDate, 'EX', 'TBL_CORPACT_EXER');
          cdsCorpactExerciseACCID.AsInteger      := iAccID;
          cdsCorpactExerciseCA_QTY.AsFloat       := fQty;
          cdsCorpactExerciseEXERCISE_QTY.AsFloat := fQty;
          cdsCorpactExerciseEXERCISE_AMT.AsFloat := cdsCorpactExerciseAnnoPRICE.AsFloat * fQty;
          cdsCorpactExerciseMODDA.AsDateTime     := Now;
          cdsCorpactExerciseMODUI.AsString       := dmGlobal.UserID;
          cdsCorpactExerciseSUBREK001.AsString   := sSubRek001;

          cdsCorpactExerciseENTERED_SYSTEMDATE.AsDateTime := dTradeDate;
          cdsCorpactExerciseENTERED_DATE.AsDateTime       := Now;
          cdsCorpactExerciseENTERED_UI.AsString           := dmGlobal.UserID;
          cdsCorpactExerciseSTAT.AsString                 := '0';

          cdsCorpactExercise.Post;

          Inc(iSuccess);
        end;
      end;

    finally
      cdsCorpactExercise.ApplyUpdates(-1);
      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sErrorMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      FreeAndNil(oProgress);
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      if not cdsCorpactExerciseList.Active then
        actRefresh.Execute
      else
        cdsCorpactExerciseList.Refresh;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmCorpactExerciseList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsCorpactExerciseListVALUEDATE.AsDateTime;
    iLedgerTransID := cdsCorpactExerciseListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := cdsCorpactExerciseListSTOCKTRANSID.AsLargeInt;
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

procedure TfrmCorpactExerciseList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '11111';
end;

procedure TfrmCorpactExerciseList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '00000';
end;

procedure TfrmCorpactExerciseList.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;

  dtStart.EditValue := dtSystem;
  dtEnd.EditValue   := dtSystem;

  chStatus.EditValue := '10000';
end;

end.
