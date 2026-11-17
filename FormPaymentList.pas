unit FormPaymentList;

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
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxLabel, cxDBLabel, cxGridDBTableView, cxRadioGroup, StrUtils,
  cxImageComboBox, ShellApi, Vcl.ExtCtrls;

type
  TfrmPaymentList = class(TfrmBrowseData)
    cdsPayment_H: TNClientDataset;
    cdsPayment_D: TNClientDataset;
    dxLayoutControl1: TdxLayoutControl;
    dtVoucherDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    actViewData: TNAction;
    cbBank: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    edBankAccNo: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsPayment_HVOUCHERID: TLargeintField;
    cdsPayment_HVOUCHERNO: TStringField;
    cdsPayment_HVOUCHERTYPE: TStringField;
    cdsPayment_HENTRYDATE: TDateField;
    cdsPayment_HVOUCHERDATE: TDateField;
    cdsPayment_HBROKER_BANKID: TIntegerField;
    cdsPayment_HBROKER_BANKCODE: TStringField;
    cdsPayment_HBROKER_BANKACCNO: TStringField;
    cdsPayment_HBROKER_BANKACCNAME: TStringField;
    cdsPayment_HBROKER_BANKACCBRANCH: TStringField;
    cdsPayment_HVOUCHER_DESC: TStringField;
    cdsPayment_HCCYCODE: TStringField;
    cdsPayment_HEXRATE: TFloatField;
    cdsPayment_HTOTAL_AMOUNT: TFloatField;
    cdsPayment_HSTAT: TStringField;
    gvwMasterVOUCHERID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERNO: TcxGridDBBandedColumn;
    gvwMasterVOUCHERTYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVOUCHERDATE: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKID: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterVOUCHER_DESC: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterTOTAL_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    grdMasterLevel2: TcxGridLevel;
    gvwCashPaymentD: TcxGridDBBandedTableView;
    dsPayment_D: TDataSource;
    cdsPayment_DVOUCHERID: TLargeintField;
    cdsPayment_DSEQID: TLargeintField;
    cdsPayment_DTRANS_TYPE: TStringField;
    cdsPayment_DLINKTYPE: TStringField;
    cdsPayment_DLINKID: TLargeintField;
    cdsPayment_DLINKNO: TStringField;
    cdsPayment_DACCID: TLargeintField;
    cdsPayment_DACCNO: TStringField;
    cdsPayment_DACCNAME: TStringField;
    cdsPayment_DCUST_BANKID: TIntegerField;
    cdsPayment_DCUST_BANKCODE: TStringField;
    cdsPayment_DCUST_BANKACCNO: TStringField;
    cdsPayment_DCUST_BANKACCNAME: TStringField;
    cdsPayment_DCUST_BANKACCBRANCH: TStringField;
    cdsPayment_DTRDDATE: TDateField;
    cdsPayment_DDUEDATE: TDateField;
    cdsPayment_DCASH_DESC: TStringField;
    cdsPayment_DTRANS_AMT: TFloatField;
    cdsPayment_DCHARGESAMT: TFloatField;
    cdsPayment_DNETTYPE: TStringField;
    cdsPayment_DAMOUNT: TFloatField;
    gvwCashPaymentDVOUCHERID: TcxGridDBBandedColumn;
    gvwCashPaymentDSEQID: TcxGridDBBandedColumn;
    gvwCashPaymentDTRANS_TYPE: TcxGridDBBandedColumn;
    gvwCashPaymentDLINKTYPE: TcxGridDBBandedColumn;
    gvwCashPaymentDLINKID: TcxGridDBBandedColumn;
    gvwCashPaymentDLINKNO: TcxGridDBBandedColumn;
    gvwCashPaymentDACCID: TcxGridDBBandedColumn;
    gvwCashPaymentDACCNO: TcxGridDBBandedColumn;
    gvwCashPaymentDACCNAME: TcxGridDBBandedColumn;
    gvwCashPaymentDCUST_BANKID: TcxGridDBBandedColumn;
    gvwCashPaymentDCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwCashPaymentDCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwCashPaymentDCUST_BANKACCNAME: TcxGridDBBandedColumn;
    gvwCashPaymentDCUST_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwCashPaymentDTRDDATE: TcxGridDBBandedColumn;
    gvwCashPaymentDDUEDATE: TcxGridDBBandedColumn;
    gvwCashPaymentDCASH_DESC: TcxGridDBBandedColumn;
    gvwCashPaymentDTRANS_AMT: TcxGridDBBandedColumn;
    gvwCashPaymentDCHARGESAMT: TcxGridDBBandedColumn;
    gvwCashPaymentDNETTYPE: TcxGridDBBandedColumn;
    gvwCashPaymentDAMOUNT: TcxGridDBBandedColumn;
    cdsPayment_HTRANSFERMODE: TStringField;
    gvwMasterTRANSFERMODE: TcxGridDBBandedColumn;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    rbPaymentList: TcxRadioButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    rbReceiveList: TcxRadioButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    actGenerateBCAFile: TNAction;
    N5: TMenuItem;
    GeneratetoBCAFile1: TMenuItem;
    cdsPayment_DBICODE: TStringField;
    actGenerateCBest: TNAction;
    GenerateCBestFile1: TMenuItem;
    actPosting: TNAction;
    N6: TMenuItem;
    Posting1: TMenuItem;
    actCancelCash: TNAction;
    CancelCashVoucher1: TMenuItem;
    actGenerateMandiriFile: TNAction;
    GeneratetoBankFile1: TMenuItem;
    GeneratetoMandiriFile1: TMenuItem;
    actGeneratePermataFile: TNAction;
    actGenerateNiagaFile: TNAction;
    actGenerateBNIFile: TNAction;
    GeneratetoBNIFile1: TMenuItem;
    GeneratetoNiagaFile1: TMenuItem;
    GeneratetoPermataFile1: TMenuItem;
    cdsCashVoucher_H: TNClientDataset;
    cdsCashVoucher_D: TNClientDataset;
    cdsCashVoucher_HVOUCHERID: TLargeintField;
    cdsCashVoucher_HVOUCHERNO: TStringField;
    cdsCashVoucher_HVOUCHERTYPE: TStringField;
    cdsCashVoucher_HENTRYDATE: TDateField;
    cdsCashVoucher_HVOUCHERDATE: TDateField;
    cdsCashVoucher_HBROKER_BANKID: TIntegerField;
    cdsCashVoucher_HBROKER_BANKCODE: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNO: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNAME: TStringField;
    cdsCashVoucher_HBROKER_BANKACCBRANCH: TStringField;
    cdsCashVoucher_HBROKER_BANKPAYMENTID: TLargeintField;
    cdsCashVoucher_HVOUCHER_DESC: TStringField;
    cdsCashVoucher_HCCYCODE: TStringField;
    cdsCashVoucher_HEXRATE: TFloatField;
    cdsCashVoucher_HTRANSFERMODE: TStringField;
    cdsCashVoucher_HTOTAL_AMOUNT: TFloatField;
    cdsCashVoucher_HSTAT: TStringField;
    cdsCashVoucher_HPOSTED: TStringField;
    cdsCashVoucher_HJRNID: TLargeintField;
    cdsCashVoucher_HMODDA: TDateTimeField;
    cdsCashVoucher_HMODUI: TStringField;
    cdsCashVoucher_HAPPDA: TDateTimeField;
    cdsCashVoucher_HAPPUI: TStringField;
    cdsCashVoucher_HUNDER4Y: TIntegerField;
    cdsCashVoucher_HUNDER4YDA: TDateTimeField;
    cdsCashVoucher_HNOTES4Y: TStringField;
    cdsCashVoucher_HISDEL: TIntegerField;
    cdsCashVoucher_HID: TLargeintField;
    cdsCashVoucher_HqryCashVoucher_D: TDataSetField;
    cdsCashVoucher_DVOUCHERID: TLargeintField;
    cdsCashVoucher_DSEQID: TLargeintField;
    cdsCashVoucher_DTRANS_TYPE: TStringField;
    cdsCashVoucher_DLINKTYPE: TStringField;
    cdsCashVoucher_DLINKID: TLargeintField;
    cdsCashVoucher_DLINKNO: TStringField;
    cdsCashVoucher_DACCID: TLargeintField;
    cdsCashVoucher_DACCNO: TStringField;
    cdsCashVoucher_DACCNAME: TStringField;
    cdsCashVoucher_DCUST_BANKID: TIntegerField;
    cdsCashVoucher_DCUST_BANKCODE: TStringField;
    cdsCashVoucher_DCUST_BANKACCNO: TStringField;
    cdsCashVoucher_DCUST_BANKACCNAME: TStringField;
    cdsCashVoucher_DCUST_BANKACCBRANCH: TStringField;
    cdsCashVoucher_DTRDDATE: TDateField;
    cdsCashVoucher_DDUEDATE: TDateField;
    cdsCashVoucher_DCASH_DESC: TStringField;
    cdsCashVoucher_DTRANS_AMT: TFloatField;
    cdsCashVoucher_DCHARGESAMT: TFloatField;
    cdsCashVoucher_DNETTYPE: TStringField;
    cdsCashVoucher_DAMOUNT: TFloatField;
    cdsCashVoucher_DMODDA: TDateTimeField;
    cdsCashVoucher_DMODUI: TStringField;
    cdsCashVoucher_DAPPDA: TDateTimeField;
    cdsCashVoucher_DAPPUI: TStringField;
    cdsCashVoucher_DUNDER4Y: TIntegerField;
    cdsCashVoucher_DUNDER4YDA: TDateTimeField;
    cdsCashVoucher_DNOTES4Y: TStringField;
    cdsCashVoucher_DISDEL: TIntegerField;
    cdsCashVoucher_DID: TLargeintField;
    cdsCashVoucher_DOVERDUE: TStringField;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGenerateBCAFileExecute(Sender: TObject);
    procedure aclEditorExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actGenerateCBestExecute(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actCancelCashExecute(Sender: TObject);
    procedure actGenerateMandiriFileExecute(Sender: TObject);
    procedure actGeneratePermataFileExecute(Sender: TObject);
    procedure actGenerateNiagaFileExecute(Sender: TObject);
    procedure actGenerateBNIFileExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cbBankExit(Sender: TObject);
    procedure cdsCashVoucher_HNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    function ConvertComaToDot(AValue: string): string;

    procedure GenerateBCAChecksum(AFileName, ATransferMode: string);
  public
    { Public declarations }
  end;

var
  frmPaymentList: TfrmPaymentList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, DataCBest, FormPayment;

procedure TfrmPaymentList.aclEditorExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  actGenerateBCAFile.Enabled := False;
  actGenerateCBest.Enabled   := False;

  if cbBank.EditValue = 2 then
    actGenerateBCAFile.Enabled := True;
  if (cdsPayment_HTRANSFERMODE.AsString = 'COLDS') or (cdsPayment_HTRANSFERMODE.AsString = 'COLW') then
    actGenerateCBest.Enabled := True;

end;

procedure TfrmPaymentList.actCancelCashExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Are you sure to cancel cash voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dmGlobal.RemoteServer.CashVoucherCancel(cdsPayment_HVOUCHERID.AsLargeInt);
    ShowMessage('Finished Canceling Cash Voucher.');
  end;

  cdsPayment_H.Refresh;
end;

procedure TfrmPaymentList.actGenerateBCAFileExecute(Sender: TObject);
var
  sList : string;
  oBCAList : TStringList;
  iSeq: Integer;
  sTransferType: string;
  s1, s2, s3, s4, s5, s6, s7,
  s8, s9, s10, s11, s12, s13,
  s14, s15, s16 : string;
  sFileName, sFolderName: string;
begin
  inherited;
  oBCAList  := TStringList.Create;
  sFileName := '';

  cdsPayment_H.DisableControls;
  cdsPayment_D.DisableControls;

  cdsPayment_H.First;
  while not cdsPayment_H.Eof do
  begin
    cdsPayment_D.Filtered := False;
    cdsPayment_D.Filter   := 'VOUCHERID = '+cdsPayment_HVOUCHERID.AsString;
    cdsPayment_D.Filtered := True;

    sTransferType := cdsPayment_HTRANSFERMODE.AsString;
    if sTransferType = 'RTGS' then
      sTransferType := 'RTG'
    else if sTransferType = 'LOCAL' then
      sTransferType := 'BCA';

    s1  := '0|FT|';
    s3  := cdsPayment_HVOUCHERID.AsString+'|';
    s4  := '|';
    s5  := cdsPayment_HVOUCHERTYPE.AsString+'|';
    s6  := FormatDateTime('YYYYMMDD', cdsPayment_HVOUCHERDATE.AsDateTime)+'|';
    s7  := leftStr(dmGlobal.RemoteServer.GetGlobalParamString('754'), 10)+'|';
    s8  := FormatFloat('#.00', cdsPayment_HTOTAL_AMOUNT.AsFloat)+'|';
    s9  := IntToStr(cdsPayment_D.RecordCount)+'|';
    s10 := sTransferType+'|';
    s11 := cdsPayment_HCCYCODE.AsString+'|';

    sList := s1+s3+s4+s5+s6+s7+s8+s9+s10+s11;
    oBCAList.Add(sList);

    iSeq := 0;
    cdsPayment_D.First;
    while not cdsPayment_D.Eof do
    begin
      Inc(iSeq);
      s1  := '1|';
      s2  := IntToStr(iSeq)+'|';
      s3  := cdsPayment_DLINKNO.AsString+'|';
      s4  := cdsPayment_HBROKER_BANKACCNO.AsString+'|';
      s5  := cdsPayment_DCUST_BANKACCNO.AsString+'|';
      s6  := FormatFloat('#.00', cdsPayment_DAMOUNT.AsFloat)+'|';
      s7  := '|';
      s8  := '|';
      s9  := cdsPayment_DBICODE.AsString+'|';
      s10 := cdsPayment_DCUST_BANKACCNAME.AsString+'|';
      s11 := cdsPayment_DCUST_BANKACCBRANCH.AsString+'|';
      s12 := cdsPayment_DACCNAME.AsString+'|';
      s13 := '||||';

      sList := s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13;
      oBCAList.Add(sList);

      cdsPayment_D.Next;
    end;

    cdsPayment_H.Next;
  end;

  if DirectoryExists(dmGlobal.FITSBankInterfaceDir) then
  begin
    sFolderName := dmGlobal.FITSBankInterfaceDir+'BCA\';
    if not DirectoryExists(sFolderName) then
      CreateDir(sFolderName);

    if rbPaymentList.Checked then
      sFileName := sFolderName+'Payment_BCA_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.txt'
    else if rbReceiveList.Checked then
      sFileName := sFolderName+'Receive_BCA_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.txt';

    oBCAList.SaveToFile(sFileName);

    cdsPayment_D.Filtered := False;
    oBCAList.Free;

    cdsPayment_D.EnableControls;
    cdsPayment_H.EnableControls;

    MessageDlg('Generate BCA Bank Interface has done...', mtInformation, [mbOk], 0);
    MessageDlg('Execute BCA Check Sum...', mtInformation, [mbOk], 0);

    GenerateBCAChecksum(sFileName, sTransferType);
  end
  else
    MessageDlg(dmGlobal.FITSBankInterfaceDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);

end;

procedure TfrmPaymentList.actGenerateBNIFileExecute(Sender: TObject);
var
  oBNIList: TStringList;
  sFileName, sTransferType,
  sList, sFolderName: string;
begin
  inherited;
  oBNIList := TStringList.Create;

  cdsPayment_H.DisableControls;
  cdsPayment_D.DisableControls;

  cdsPayment_H.First;
  while not cdsPayment_H.Eof do
  begin
    cdsPayment_D.Filtered := False;
    cdsPayment_D.Filter   := 'VOUCHERID = '+cdsPayment_HVOUCHERID.AsString;
    cdsPayment_D.Filtered := True;

    sTransferType := cdsPayment_HTRANSFERMODE.AsString;
    if sTransferType = 'RTGS' then
      sTransferType := 'RTG'
    else if sTransferType = 'LOCAL' then
      sTransferType := 'BNI';

    cdsPayment_D.First;
    while not cdsPayment_D.Eof do
    begin
      sList := cdsPayment_DCUST_BANKACCNO.Value + ',"' + ConvertComaToDot(cdsPayment_DCUST_BANKACCNAME.Value) + '",'+
               FormatFloat('#.00', cdsPayment_DAMOUNT.Value) + ',Y:' + LeftStr('', 17) +
               ',,,,,,,,,,,,,Y,bsfinance@bahana.co.id,,N';
      oBNIList.Add(sList);

      cdsPayment_D.Next;
    end;

    oBNIList.Add('0, '+ FormatDateTime('dd/mm/yyyy hh:nn:ss', Now) + ',' + IntToStr(cdsPayment_D.RecordCount + 2) +',Payment,,,,,,,,,,,,,,,,,');
    oBNIList.Add('1, P,' + FormatDateTime('yyyymmdd', cdsPayment_HVOUCHERDATE.Value) + ',' + cdsPayment_HBROKER_BANKACCNO.Value + ',' + IntToStr(cdsPayment_D.RecordCount) + ',' + FormatFloat('#', cdsPayment_HTOTAL_AMOUNT.Value) +',,,,,,,,,,,,,,,');

    cdsPayment_H.Next;
  end;

  if DirectoryExists(dmGlobal.FITSBankInterfaceDir) then
  begin
    sFolderName := dmGlobal.FITSBankInterfaceDir+'BNI\';
    if not DirectoryExists(sFolderName) then
      CreateDir(sFolderName);

    if rbPaymentList.Checked then
      sFileName := sFolderName+'Payment_Niaga_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv'
    else if rbReceiveList.Checked then
      sFileName := sFolderName+'Receive_Niaga_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv';

    oBNIList.SaveToFile(sFileName);

    cdsPayment_D.Filtered := False;
    oBNIList.Free;

    cdsPayment_D.EnableControls;
    cdsPayment_H.EnableControls;

    MessageDlg('Generate BNI Interface has done...', mtInformation, [mbOk], 0);
  end
  else
    MessageDlg(dmGlobal.FITSBankInterfaceDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);

end;

procedure TfrmPaymentList.actGenerateCBestExecute(Sender: TObject);
var
  sFileName, sFolderName,
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9: string;
  oCBestList: TStringList;
begin
  inherited;
  oCBestList := TStringList.Create;

  sFolderName := dmGlobal.FITSCBestInterfaceDir;
  if not DirectoryExists(sFolderName) then
    MessageDlg(sFolderName + ' does not exist, please check configuration setting...', mtError, [mbOk], 0)
  else
  begin
    if cdsPayment_HTRANSFERMODE.AsString = 'COLDS' then
      sFileName := sFolderName+'\Deposit_Cash_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'xlsx'
    else if cdsPayment_HTRANSFERMODE.AsString = 'COLW' then
      sFileName := sFolderName+'\Withdraw_Cash_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'xlsx';

    cdsPayment_H.DisableControls;
    cdsPayment_D.DisableControls;

    cdsPayment_H.First;
    while not cdsPayment_H.Eof do
    begin
      cdsPayment_D.Filtered := False;
      cdsPayment_D.Filter   := 'VOUCHERID = '+cdsPayment_HVOUCHERID.AsString;
      cdsPayment_D.Filtered := True;

      cdsPayment_D.First;
      while not cdsPayment_D.Eof do
      begin
        s0 := cdsPayment_DLINKNO.AsString;
        s1 := dmGlobal.RemoteServer.GetGlobalParamString('009');
        s2 := cdsPayment_HBROKER_BANKCODE.AsString;
        s3 := cdsPayment_DACCNO.AsString;
        s4 := cdsPayment_HCCYCODE.AsString;
        s5 := '';
        s6 := '';
        s7 := cdsPayment_DAMOUNT.AsString;
        s8 := FormatDateTime('YYYYMMDD', cdsPayment_HVOUCHERDATE.AsDateTime);
        s9 := '';

        oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+
           s8+'|'+s9);
        cdsPayment_D.Next;
      end;

      cdsPayment_H.Next;
    end;
    dmGlobal.IntDataCBest.GenerateCOL(sFileName, oCBestList);

    MessageDlg('Generate CBest has done...', mtInformation, [mbOk], 0);
  end;

  oCBestList.Free;
end;

procedure TfrmPaymentList.actGenerateMandiriFileExecute(Sender: TObject);
var
  oMandiriList: TStringList;
  sFileName, sTransferType,
  sList, sFolderName: string;
begin
  inherited;
  oMandiriList := TStringList.Create;

  cdsPayment_H.DisableControls;
  cdsPayment_D.DisableControls;

  cdsPayment_H.First;
  while not cdsPayment_H.Eof do
  begin
    cdsPayment_D.Filtered := False;
    cdsPayment_D.Filter   := 'VOUCHERID = '+cdsPayment_HVOUCHERID.AsString;
    cdsPayment_D.Filtered := True;

    sTransferType := cdsPayment_HTRANSFERMODE.AsString;
    if sTransferType = 'RTGS' then
      sTransferType := 'RTG'
    else if sTransferType = 'LOCAL' then
      sTransferType := 'MANDIRI';

    sList := 'P,' + FormatDateTime('yyyymmdd', cdsPayment_HVOUCHERDATE.Value) + ',' + IntToStr(cdsPayment_D.RecordCount) + ',' + cdsPayment_HTOTAL_AMOUNT.AsString + ',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,';
    oMandiriList.Add(sList);

    cdsPayment_D.First;
    while not cdsPayment_D.Eof do
    begin
      sList := cdsPayment_DCUST_BANKACCNO.Value + ',' + ConvertComaToDot(cdsPayment_DCUST_BANKACCNAME.Value) + ',,,,IDR' + ',' +
            FormatFloat('#', cdsPayment_DAMOUNT.Value) + ',Y:' + LeftStr('', 17) + ',' +
            cdsPayment_DBICODE.Value + ',IBU,,Mandiri,,,,,N,Email,,,,,,,,,,,,,,,,,,,,,,,' + cdsPayment_DBICODE.Value;
      oMandiriList.Add(sList);

      cdsPayment_D.Next;
    end;

    cdsPayment_H.Next;
  end;

  if DirectoryExists(dmGlobal.FITSBankInterfaceDir) then
  begin
    sFolderName := dmGlobal.FITSBankInterfaceDir+'Mandiri\';
    if not DirectoryExists(sFolderName) then
      CreateDir(sFolderName);

    if rbPaymentList.Checked then
      sFileName := sFolderName+'Payment_Madiri_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv'
    else if rbReceiveList.Checked then
      sFileName := sFolderName+'Receive_Mandiri_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv';

    oMandiriList.SaveToFile(sFileName);

    cdsPayment_D.Filtered := False;
    oMandiriList.Free;

    cdsPayment_D.EnableControls;
    cdsPayment_H.EnableControls;

    MessageDlg('Generate Mandiri Bank Interface has done...', mtInformation, [mbOk], 0);
  end
  else
    MessageDlg(dmGlobal.FITSBankInterfaceDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);

end;

procedure TfrmPaymentList.actGenerateNiagaFileExecute(Sender: TObject);
var
  oNiagaList: TStringList;
  sFileName, sTransferType,
  sList, sFolderName: string;
begin
  inherited;
  oNiagaList := TStringList.Create;

  cdsPayment_H.DisableControls;
  cdsPayment_D.DisableControls;

  cdsPayment_H.First;
  while not cdsPayment_H.Eof do
  begin
    cdsPayment_D.Filtered := False;
    cdsPayment_D.Filter   := 'VOUCHERID = '+cdsPayment_HVOUCHERID.AsString;
    cdsPayment_D.Filtered := True;

    sTransferType := cdsPayment_HTRANSFERMODE.AsString;
    if sTransferType = 'RTGS' then
      sTransferType := 'RTG'
    else if sTransferType = 'LOCAL' then
      sTransferType := 'NIAGA';

    sList := cdsPayment_HBROKER_BANKACCNO.Value + ',' + cdsPayment_HBROKER_BANKACCNAME.Value + ',' + 'IDR' + ',' + FormatFloat('#', cdsPayment_HTOTAL_AMOUNT.Value) + ',' +
          cdsPayment_HBROKER_BANKACCBRANCH.Value + ',' + IntToStr(cdsPayment_D.RecordCount) + ',' + FormatDateTime('YYYYMMDD', cdsPayment_HVOUCHERDATE.Value) + ',bsfinance@bahana.co.id';
    oNiagaList.Add(sList);

    cdsPayment_D.First;
    while not cdsPayment_D.Eof do
    begin
      sList := cdsPayment_DCUST_BANKACCNO.Value + ',' + ConvertComaToDot(cdsPayment_DCUST_BANKACCNAME.Value) + ',IDR,' +
               FormatFloat('#.00', cdsPayment_DAMOUNT.Value) + ',Y:' + //remark
               ',' +'bsfinance@bahana.co.id';
      oNiagaList.Add(sList);

      cdsPayment_D.Next;
    end;

    cdsPayment_H.Next;
  end;

  if DirectoryExists(dmGlobal.FITSBankInterfaceDir) then
  begin
    sFolderName := dmGlobal.FITSBankInterfaceDir+'Mandiri\';
    if not DirectoryExists(sFolderName) then
      CreateDir(sFolderName);

    if rbPaymentList.Checked then
      sFileName := sFolderName+'Payment_Niaga_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv'
    else if rbReceiveList.Checked then
      sFileName := sFolderName+'Receive_Niaga_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv';

    oNiagaList.SaveToFile(sFileName);

    cdsPayment_D.Filtered := False;
    oNiagaList.Free;

    cdsPayment_D.EnableControls;
    cdsPayment_H.EnableControls;

    MessageDlg('Generate Niaga Bank Interface has done...', mtInformation, [mbOk], 0);
  end
  else
    MessageDlg(dmGlobal.FITSBankInterfaceDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);

end;

procedure TfrmPaymentList.actGeneratePermataFileExecute(Sender: TObject);
var
  oPermataList: TStringList;
  sFileName, sTransferType,
  sList, sFolderName: string;
begin
  inherited;
  oPermataList := TStringList.Create;

  cdsPayment_H.DisableControls;
  cdsPayment_D.DisableControls;

  cdsPayment_H.First;
  while not cdsPayment_H.Eof do
  begin
    cdsPayment_D.Filtered := False;
    cdsPayment_D.Filter   := 'VOUCHERID = '+cdsPayment_HVOUCHERID.AsString;
    cdsPayment_D.Filtered := True;

    sTransferType := cdsPayment_HTRANSFERMODE.AsString;
    if sTransferType = 'RTGS' then
      sTransferType := 'RTG'
    else if sTransferType = 'LOCAL' then
      sTransferType := 'PERMATA';

    cdsPayment_D.First;
    while not cdsPayment_D.Eof do
    begin
      sList := 'PermataBank,0,Jakarta,013,' + ConvertComaToDot(cdsPayment_DCUST_BANKACCNAME.Value) + ','+ cdsPayment_DCUST_BANKACCNO.Value +
               ',IDR,' + FormatFloat('#.00', cdsPayment_DAMOUNT.Value)  + ',Y:' +
               '' + ',0,,ovb,1,1,Bursa Efek Indonesia,' + RightStr(cdsPayment_DBICODE.Value, 10) + ',0,' + FormatDateTime('yyyymmdd', cdsPayment_HVOUCHERDATE.Value);
      oPermataList.Add(sList);

      cdsPayment_D.Next;
    end;

    cdsPayment_H.Next;
  end;

  if DirectoryExists(dmGlobal.FITSBankInterfaceDir) then
  begin
    sFolderName := dmGlobal.FITSBankInterfaceDir+'Permata\';
    if not DirectoryExists(sFolderName) then
      CreateDir(sFolderName);

    if rbPaymentList.Checked then
      sFileName := sFolderName+'Payment_Permata_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv'
    else if rbReceiveList.Checked then
      sFileName := sFolderName+'Receive_Permata_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv';

    oPermataList.SaveToFile(sFileName);

    cdsPayment_D.Filtered := False;
    oPermataList.Free;

    cdsPayment_D.EnableControls;
    cdsPayment_H.EnableControls;

    MessageDlg('Generate Permata Bank Interface has done...', mtInformation, [mbOk], 0);
  end
  else
    MessageDlg(dmGlobal.FITSBankInterfaceDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);

end;

procedure TfrmPaymentList.actPostingExecute(Sender: TObject);
begin
  inherited;
  if cdsPayment_HVOUCHERDATE.AsDateTime = dmGlobal.RemoteServer.GetTransDate then
  begin
    if MessageDlg('Are you sure to posting cash voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      dmGlobal.RemoteServer.PostCashVoucher(cdsPayment_HVOUCHERID.AsLargeInt);
      ShowMessage('Finished Posting Cash Voucher.');
    end;

    cdsPayment_H.Refresh;
  end
  else
    MessageDlg('Can not settle, it''s not due date...', mtError, [mbOk], 0);
end;

procedure TfrmPaymentList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsPayment_H.Close;
  cdsPayment_H.Params[0].AsDateTime := dtVoucherDate.Date;
  cdsPayment_H.Params[1].AsInteger  := cbBank.EditValue;

  if rbPaymentList.Checked then
    cdsPayment_H.Params[2].AsString := 'P'
  else
    cdsPayment_H.Params[2].AsString := 'R';

  cdsPayment_H.Open;

  cdsPayment_D.Close;
  cdsPayment_D.Params[0].AsDateTime := dtVoucherDate.Date;
  cdsPayment_D.Open;
end;

procedure TfrmPaymentList.cbBankExit(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankAccount.Locate('ACCBANKID', cbBank.EditValue, []) then
      edBankAccNo.Text := 'Bank Account No. ' +cdsLuBankAccountBANKACCNO.AsString+ ' a/c: '+ cdsLuBankAccountBANKACCNAME.AsString+
                          ', Branch: '+ cdsLuBankAccountBANKBRANCH.AsString;
  end;
end;

procedure TfrmPaymentList.cdsCashVoucher_HNewRecord(DataSet: TDataSet);
var
  sVoucherType: string;
begin
  inherited;
  if rbPaymentList.Checked then sVoucherType := 'P'
  else if rbReceiveList.Checked then sVoucherType := 'R';

  cdsCashVoucher_HVOUCHERDATE.AsDateTime    := dtVoucherDate.Date;
  cdsCashVoucher_HBROKER_BANKID.AsInteger   := cbBank.EditValue;
  cdsCashVoucher_HVOUCHERID.AsInteger       := dmGlobal.RemoteServer.GetSeq('main.B_CASH_VOUCHER_H');
  cdsCashVoucher_HVOUCHERNO.AsString        := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucher_HVOUCHERDATE.AsDateTime, sVoucherType,'CASH_VOUCHER_H');
  cdsCashVoucher_HCCYCODE.AsString          := 'IDR';
end;

function TfrmPaymentList.ConvertComaToDot(AValue: string): string;
begin
  Result := StringReplace(AValue, ',', '.', [rfReplaceAll, rfIgnoreCase]);
end;

procedure TfrmPaymentList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmPayment;
end;

procedure TfrmPaymentList.FormCreate(Sender: TObject);
var
  iBrokerAccount: Integer;
begin
  inherited;
  iBrokerAccount := dmGlobal.RemoteServer.GetBrokerAccount;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankAccount.Close;
    cdsLuBankAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankAccount.Open;

    cdsLuBankTrType.Close;
    cdsLuBankTrType.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuCashInstructionMode.Close;
    cdsLuCashInstructionMode.Open;
  end;
  dtVoucherDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmPaymentList.GenerateBCAChecksum(AFileName, ATransferMode: string);
  function Replace(AString: string): string;
  begin
    Result := ReplaceStr(AString, '\', '/');
  end;

var
  oTextFile: TextFile;
  sFileName,
  sCheckSumFileName,
  sCheckSumDir,
  sDataUpload,
  sTransMode: string;

  sTransFile, sCheckFile, sLogFile,
  sSource, sTarget: string;
begin
  sFileName         := ExtractFileName(AFileName);
  sCheckSumFileName := dmGlobal.BCACheckSum + '\Checksum.exe';
  sDataUpload       := dmGlobal.BCACheckSum + '\Dataupload\';

  Insert(' CS', sFileName, Pos('.', sFileName));

  sTransFile := ChangeFilePath(ExtractFileName(AFileName), sDataUpload);
  sCheckFile := sDataUpload + sFileName;
  sLogFile   := dmGlobal.BCACheckSum +'\checksum.log';

  sSource := Replace(AFileName);
  sTarget := Replace(sTransFile);
  CopyFile(pChar(sSource), pChar(sTarget), True);

  AssignFile(oTextFile, dmGlobal.BCACheckSum+'\Checksum.properties');
  Rewrite(oTextFile);
  Writeln(oTextFile, 'Is_Logged     = true');
  Writeln(oTextFile, 'Log_File_Path = ' + Replace(sLogFile));

  if ATransferMode = 'RTG' then
  begin
    sTransMode := 'atr';

    Writeln(oTextFile, 'Auto_Transfer_Rtgs_File_Path          = ' + Replace(sTransFile));
    Writeln(oTextFile, 'Auto_Transfer_Rtgs_Checksum_File_Path = ' + Replace(sCheckFile));
  end
  else if ATransferMode = 'BCA' then
  begin
    sTransMode := 'atb';

    Writeln(oTextFile, 'Auto_Transfer_Bca_File_Path          = ' + Replace(sTransFile));
    Writeln(oTextFile, 'Auto_Transfer_Bca_Checksum_File_Path = ' + Replace(sCheckFile));
  end;

  CloseFile(oTextFile);

  SetCurrentDir(dmGlobal.BCACheckSum);
  ShellExecute(Handle, 'open', PChar(sCheckSumFileName), PChar(sTransMode), nil, SW_SHOWNORMAL);
end;

Initialization
  RegisterClass(TfrmPaymentList);

end.
