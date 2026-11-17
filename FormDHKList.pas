unit FormDHKList;

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
  cxGridDBBandedTableView, cxGrid, cxContainer, ComObj,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxButtonEdit, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxCheckBox, Math,
  System.DateUtils, System.Actions, System.ImageList, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmDHKList = class(TfrmBrowseData)
    actUploadFile: TNAction;
    cdsDHK: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTradeDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtFileName: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    rbCash: TRadioButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    rbStock: TRadioButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    chkUnMatch: TcxCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cdsDHKList: TNClientDataset;
    cdsDHKListHEAD: TLargeintField;
    cdsDHKListSTOCKCODE: TStringField;
    cdsDHKListNETTYPE: TStringField;
    cdsDHKListQTY_BOFIS: TFloatField;
    cdsDHKListACCCODE: TStringField;
    cdsDHKListACCNAME: TStringField;
    cdsDHKListSIDNO: TStringField;
    cdsDHKListVALUEDATE: TDateField;
    cdsDHKListCBEST_01: TStringField;
    cdsDHKListCBEST_04: TStringField;
    cdsDHKListDAY: TDateField;
    cdsDHKListSID_CODE: TStringField;
    cdsDHKListCF_ACCT_1: TStringField;
    cdsDHKListCF_ACCT_4: TStringField;
    cdsDHKListSECURITY_CODE: TStringField;
    cdsDHKListBS: TStringField;
    cdsDHKListQTY_DHK: TFloatField;
    gvwMasterHEAD: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterNETTYPE: TcxGridDBBandedColumn;
    gvwMasterQTY_BOFIS: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSIDNO: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterCBEST_01: TcxGridDBBandedColumn;
    gvwMasterCBEST_04: TcxGridDBBandedColumn;
    gvwMasterDAY: TcxGridDBBandedColumn;
    gvwMasterSID_CODE: TcxGridDBBandedColumn;
    gvwMasterCF_ACCT_1: TcxGridDBBandedColumn;
    gvwMasterCF_ACCT_4: TcxGridDBBandedColumn;
    gvwMasterSECURITY_CODE: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterQTY_DHK: TcxGridDBBandedColumn;
    OpenDialog: TOpenDialog;
    gvwMasterX: TcxGridDBBandedColumn;
    gvwMasterXX: TcxGridDBBandedColumn;
    actGenerateCOLDS: TNAction;
    SaveDialog: TSaveDialog;
    actGenerateCOLW: TNAction;
    cdsGenerateCOLWCOLDS: TNClientDataset;
    cdsGenerateCOLWCOLDSCUSTODY_INSTRID: TLargeintField;
    cdsGenerateCOLWCOLDSCUSTODY_EXTREF: TStringField;
    cdsGenerateCOLWCOLDSEXCHANGE: TStringField;
    cdsGenerateCOLWCOLDSACCID: TLargeintField;
    cdsGenerateCOLWCOLDSACCNO: TStringField;
    cdsGenerateCOLWCOLDSACCNAME: TStringField;
    cdsGenerateCOLWCOLDSVALUEDATE: TDateField;
    cdsGenerateCOLWCOLDSTRDDATE: TDateField;
    cdsGenerateCOLWCOLDSSETTLEDATE: TDateField;
    cdsGenerateCOLWCOLDSSETTLE_SIDE: TStringField;
    cdsGenerateCOLWCOLDSINSTRUCTION_TYPE: TStringField;
    cdsGenerateCOLWCOLDSPARTY_ID: TLargeintField;
    cdsGenerateCOLWCOLDSPARTY_CODE: TStringField;
    cdsGenerateCOLWCOLDSPARTY_ACC: TStringField;
    cdsGenerateCOLWCOLDSCOUNTER_ID: TLargeintField;
    cdsGenerateCOLWCOLDSCOUNTER_CODE: TStringField;
    cdsGenerateCOLWCOLDSCOUNTER_ACC: TStringField;
    cdsGenerateCOLWCOLDSSECURITYCODE_TYPE: TStringField;
    cdsGenerateCOLWCOLDSSTOCKID: TLargeintField;
    cdsGenerateCOLWCOLDSSTOCKCODE: TStringField;
    cdsGenerateCOLWCOLDSQTY: TFloatField;
    cdsGenerateCOLWCOLDSCCY: TStringField;
    cdsGenerateCOLWCOLDSORIGINAL_AMT: TFloatField;
    cdsGenerateCOLWCOLDSSETTLE_AMOUNT: TFloatField;
    cdsGenerateCOLWCOLDSSALDO: TFloatField;
    cdsGenerateCOLWCOLDSSALDO_TYPE: TStringField;
    cdsGenerateCOLWCOLDSISMULTICCY: TStringField;
    cdsGenerateCOLWCOLDSFOREIGN_CCYCODE: TStringField;
    cdsGenerateCOLWCOLDSFOREIGN_EXRATE: TFloatField;
    cdsGenerateCOLWCOLDSFOREIGN_SETTTLEAMT: TFloatField;
    cdsGenerateCOLWCOLDSCUSTODY_DESC: TStringField;
    cdsGenerateCOLWCOLDSREMARKS: TStringField;
    cdsGenerateCOLWCOLDSPURPOSE: TStringField;
    cdsGenerateCOLWCOLDSTRADE_REF: TStringField;
    cdsGenerateCOLWCOLDSSETTLE_REASON: TStringField;
    cdsGenerateCOLWCOLDSBENEFICIARYCODE: TStringField;
    cdsGenerateCOLWCOLDSBENEFICIARYACC: TStringField;
    cdsGenerateCOLWCOLDSCORPACT_TYPE: TStringField;
    cdsGenerateCOLWCOLDSLINKTYPE: TStringField;
    cdsGenerateCOLWCOLDSLINKID: TLargeintField;
    cdsGenerateCOLWCOLDSCONFIRM_BY: TStringField;
    cdsGenerateCOLWCOLDSCONFIRM_WITH: TStringField;
    cdsGenerateCOLWCOLDSCREATE_FILE: TStringField;
    cdsGenerateCOLWCOLDSCOUNT_CREATE_FILE: TIntegerField;
    cdsGenerateCOLWCOLDSCBEST_UPLOAD: TStringField;
    cdsGenerateCOLWCOLDSSID_NO: TStringField;
    cdsGenerateCOLWCOLDSSTAT: TStringField;
    cdsGenerateCOLWCOLDSMATCH: TStringField;
    cdsGenerateCOLWCOLDSKSEI_RECON: TStringField;
    cdsGenerateCOLWCOLDSCLIENT_ACCID: TLargeintField;
    cdsGenerateCOLWCOLDSMODDA: TDateTimeField;
    cdsGenerateCOLWCOLDSMODUI: TStringField;
    cdsGenerateCOLWCOLDSAPPDA: TDateTimeField;
    cdsGenerateCOLWCOLDSAPPUI: TStringField;
    cdsGenerateCOLWCOLDSUNDER4Y: TIntegerField;
    cdsGenerateCOLWCOLDSUNDER4YDA: TDateTimeField;
    cdsGenerateCOLWCOLDSNOTES4Y: TStringField;
    cdsGenerateCOLWCOLDSISDEL: TIntegerField;
    cdsGenerateCOLWCOLDSID: TLargeintField;
    cdsGenerateCOLWCOLDSBS: TStringField;
    cdsGenerateCOLWCOLDSDHKID: TLargeintField;
    cdsGenerateCOLWCOLDSNEW_CUSTODY_INSTRID: TLargeintField;
    cdsGenerateCOLWCOLDSMERGE_ID: TIntegerField;
    cdsGenerateCOLWCOLDSSPLIT_ID: TIntegerField;
    cdsGenerateCOLWCOLDSIS_MERGE: TBooleanField;
    cdsGenerateCOLWCOLDSIS_SPLIT: TBooleanField;
    cdsDHKColWDS: TNClientDataset;
    cdsDHKColWDSDHKID: TLargeintField;
    cdsDHKColWDSDHKNO: TStringField;
    cdsDHKColWDSDAY: TDateField;
    cdsDHKColWDSSID_CODE: TStringField;
    cdsDHKColWDSCBEST_ACC_01: TStringField;
    cdsDHKColWDSCBEST_ACC_04: TStringField;
    cdsDHKColWDSSECURITY_CODE: TStringField;
    cdsDHKColWDSRIGHTS: TFloatField;
    cdsDHKColWDSOBLIGATION: TFloatField;
    cdsDHKColWDSMEMBER_ID: TStringField;
    cdsDHKColWDSWTNO: TStringField;
    GenerateFile1: TMenuItem;
    cdsDHKDHKID: TLargeintField;
    cdsDHKDHKNO: TStringField;
    cdsDHKDAY: TDateField;
    cdsDHKCS_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKCS_PAYMENT_TOTAL_RIGHT: TFloatField;
    cdsDHKCF_PAYMENT_TOTAL: TFloatField;
    cdsDHKCF_PAYMENT_TOTAL_OBL: TFloatField;
    cdsDHKMEMBER_NAME: TStringField;
    cdsDHKMEMBER_ID: TStringField;
    cdsDHKID_ACCT: TStringField;
    cdsDHKSID_CODE: TStringField;
    cdsDHKCF_ACCT_4: TStringField;
    cdsDHKCF_ACCT_1: TStringField;
    cdsDHKSORT_ORDER: TStringField;
    cdsDHKSECURITY_CODE: TStringField;
    cdsDHKSECURITY_ID: TStringField;
    cdsDHKRIGHTS: TFloatField;
    cdsDHKOBLIGATION: TFloatField;
    cdsDHKSECURITY: TStringField;
    cdsDHKOBLIGATION_CASH: TFloatField;
    cdsDHKRIGHT_CASH: TFloatField;
    cdsDHKCF_IDR_VALUE: TFloatField;
    cdsDHKCF_OBLIGATION_CASH: TFloatField;
    cdsDHKCF_OBLIGATION: TFloatField;
    cdsDHKSTAT: TStringField;
    cdsDHKMODDA: TDateTimeField;
    cdsDHKMODUI: TStringField;
    cdsDHKAPPDA: TDateTimeField;
    cdsDHKAPPUI: TStringField;
    cdsDHKUNDER4Y: TIntegerField;
    cdsDHKUNDER4YDA: TDateTimeField;
    cdsDHKNOTES4Y: TStringField;
    cdsDHKISDEL: TIntegerField;
    cdsDHKID: TLargeintField;
    cdsDHKWTNO: TStringField;
    cdsDHKColWDSCUSTCODE04: TStringField;
    cdsDHKColWDSCUSTCODE01: TStringField;
    cdsDHKColWDSTRDDATE: TDateField;
    actGenerateColdsFile: TNAction;
    cdsDHKColWDSACCCODE: TStringField;
    cdsDHKColWDSACCNAME: TStringField;
    actGenerateColwFile: TNAction;
    GenerateColdsFile2: TMenuItem;
    GenerateColwFile1: TMenuItem;
    cdsDHKColWDSPORTOFOLIOACCCODE: TStringField;
    cdsUploadDHK: TNClientDataset;
    cdsUploadDHKDAY: TDateField;
    cdsUploadDHKCS_PAYMENT_TOTAL_OBL: TFloatField;
    cdsUploadDHKCS_PAYMENT_TOTAL_RIGHT: TFloatField;
    cdsUploadDHKCF_PAYMENT_TOTAL: TFloatField;
    cdsUploadDHKCF_PAYMENT_TOTAL_OBL: TFloatField;
    cdsUploadDHKMEMBER_NAME: TStringField;
    cdsUploadDHKMEMBER_ID: TStringField;
    cdsUploadDHKID_ACCT: TStringField;
    cdsUploadDHKSID_CODE: TStringField;
    cdsUploadDHKCF_ACCT_4: TStringField;
    cdsUploadDHKCF_ACCT_1: TStringField;
    cdsUploadDHKSORT_ORDER: TStringField;
    cdsUploadDHKSECURITY_CODE: TStringField;
    cdsUploadDHKSECURITY_ID: TStringField;
    cdsUploadDHKRIGHTS: TFloatField;
    cdsUploadDHKOBLIGATION: TFloatField;
    cdsUploadDHKSECURITY: TStringField;
    cdsUploadDHKOBLIGATION_CASH: TFloatField;
    cdsUploadDHKRIGHT_CASH: TFloatField;
    cdsUploadDHKCF_IDR_VALUE: TFloatField;
    cdsUploadDHKCF_OBLIGATION_CASH: TFloatField;
    cdsUploadDHKCF_OBLIGATION: TFloatField;
    cdsUploadDHKROWNO: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure txtFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure rbStockClick(Sender: TObject);
    procedure rbCashClick(Sender: TObject);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure chkUnMatchClick(Sender: TObject);
    procedure actGenerateCOLDSExecute(Sender: TObject);
    procedure actGenerateCOLWExecute(Sender: TObject);
    procedure actGenerateColdsFileExecute(Sender: TObject);
    procedure actGenerateColwFileExecute(Sender: TObject);
  private
    { Private declarations }
    FFilter: string;

    procedure UploadDHKExcel(AFileName: string);
    procedure UploadDHKText(AFileName: string);
    procedure RefreshData;
    procedure GenerateCOLWDS(ACOLWDS: Integer);

    procedure UploadFileDHK(AFileName: string; AFileType: string);

    function IsValidDateCheck(const AValue: String; out AResult: TDate): Boolean;
  public
    { Public declarations }
  end;

var
  frmDHKList: TfrmDHKList;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmDHKList.actGenerateCOLDSExecute(Sender: TObject);
begin
  inherited;
  GenerateCOLWDS(0);
end;

procedure TfrmDHKList.actGenerateColdsFileExecute(Sender: TObject);
var
  sFileName: string;
  sColds, sExRef, sDesc: string;
  oStringList: TStringList;
  iCol: Integer;
  oExcel, oSheet: OleVariant;
  sSecCode, sCcy: string;
  sAccKSEISubRek, sPorKSEISubRek: string;
  iCountRow: Integer;
begin
  inherited;
  try
    oStringList := TStringList.Create;
    sCcy        := dmGlobal.RemoteServer.GetLocalCCY;
    iCountRow   := 0;

    if rbCash.Checked then
    begin
      sFileName := dmGlobal.RemoteServer.GetBrokerCode + FormatDateTime('yyyymmdd', dtTradeDate.Date) +'-IDR';
      sSecCode  := 'IDR';
    end
    else
    begin
      sFileName := dmGlobal.RemoteServer.GetBrokerCode + FormatDateTime('yyyymmdd', dtTradeDate.Date);
      sSecCode  := '';
    end;

    cdsDHKColWDS.Close;
    cdsDHKColWDS.Params[0].AsDate   := dtTradeDate.Date;
    cdsDHKColWDS.Params[1].AsString := sSecCode;
    cdsDHKColWDS.Params[2].AsString := 'D';
    cdsDHKColWDS.Open;
    cdsDHKColWDS.First;

    iCol := 1;

    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    oExcel.WorkBooks[1].WorkSheets[1].Name := sFileName +'-cds';
    oSheet := oExcel.WorkBooks[1].WorkSheets[sFileName +'-cds'];

    SaveDialog.FileName := sFileName;
    if SaveDialog.Execute then
      sFileName := SaveDialog.FileName;

    oSheet.Cells[1, 1]  := 'External Reference';
    oSheet.Cells[1, 2]  := 'Participant Code';
    oSheet.Cells[1, 3]  := 'Source Account';
    oSheet.Cells[1, 4]  := 'Target Account';
    oSheet.Cells[1, 5]  := 'Security Code Type';
    oSheet.Cells[1, 6]  := 'Security Code';
    oSheet.Cells[1, 7]  := 'Instrument Quantity';
    oSheet.Cells[1, 8]  := 'Settlement Date';
    oSheet.Cells[1, 9]  := 'Description';
    oSheet.Cells[1, 10] := 'Customer Code';
    oSheet.Cells[1, 11] := 'Req-Del';
    oSheet.Cells[1, 12] := 'Transaction Date';
    oSheet.Cells[1, 13] := 'Date Proof';
    oSheet.Cells[1, 14] := 'Currency';

    oStringList.Add('<Message>');
    while not cdsDHKColWDS.Eof do
    begin
      Inc(iCol);
      if rbCash.Checked then
      begin
        if cdsDHKColWDSOBLIGATION.AsFloat <> 0 then
        begin
          sAccKSEISubRek := Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4) + Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 13, 2);
          sPorKSEISubRek := Copy(cdsDHKColWDSCUSTCODE01.AsString, 6, 4) + Copy(cdsDHKColWDSCUSTCODE01.AsString, 13, 2);
          sExRef         := FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +
                            '('+ sPorKSEISubRek +'-'+ sAccKSEISubRek +')';

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCUSTCODE01.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="securityCodeType"></Field>');
          oStringList.Add('   <Field name="securityCode"></Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSOBLIGATION.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCUSTCODE01.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 5]  := '';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSOBLIGATION.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 10] := ''''+ sAccKSEISubRek;
          oSheet.Cells[iCol, 11] := 'D';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := '';
        end
        else
        begin
          sAccKSEISubRek := Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4) + Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 13, 2);
          sPorKSEISubRek := Copy(cdsDHKColWDSCUSTCODE01.AsString, 6, 4) + Copy(cdsDHKColWDSCUSTCODE01.AsString, 13, 2);
          sExRef         := FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +
                            '('+ sPorKSEISubRek +'-'+ sAccKSEISubRek +')';

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCUSTCODE01.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="securityCodeType"></Field>');
          oStringList.Add('   <Field name="securityCode"></Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSRIGHTS.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCUSTCODE01.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 5]  := '';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSRIGHTS.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 10] := ''''+ sAccKSEISubRek;
          oSheet.Cells[iCol, 11] := 'D';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := '';
        end;
      end
      else
      begin
        Inc(iCountRow);

        if cdsDHKColWDSOBLIGATION.AsFloat <> 0 then
        begin
          sExRef := FormatFloat('000', iCountRow) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime)+'-'+
                    FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +'-'+ cdsDHKColWDSSECURITY_CODE.AsString +'-'+
                    FormatFloat('#,##0;(#,##0);0', cdsDHKColWDSOBLIGATION.AsFloat);
          sDesc  := cdsDHKColWDSACCCODE.AsString +'-'+ cdsDHKColWDSACCNAME.AsString;

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCBEST_ACC_01.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode"></Field>');
          oStringList.Add('   <Field name="securityCodeType">LOCAL</Field>');
          oStringList.Add('   <Field name="securityCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSOBLIGATION.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ sDesc +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCBEST_ACC_01.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 5]  := 'LOCAL';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSOBLIGATION.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := sDesc;
          oSheet.Cells[iCol, 10] := ''''+cdsDHKColWDSACCCODE.AsString;
          oSheet.Cells[iCol, 11] := 'D';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := sCcy;
        end
        else
        begin
          sExRef := FormatFloat('000', iCountRow) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime)+'-'+
                    FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +'-'+ cdsDHKColWDSSECURITY_CODE.AsString +'-'+
                    FormatFloat('#,##0;(#,##0);0', cdsDHKColWDSRIGHTS.AsFloat);
          sDesc  := cdsDHKColWDSACCCODE.AsString +'-'+ cdsDHKColWDSACCNAME.AsString;

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCBEST_ACC_01.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode"></Field>');
          oStringList.Add('   <Field name="securityCodeType">LOCAL</Field>');
          oStringList.Add('   <Field name="securityCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSRIGHTS.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ sDesc +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCBEST_ACC_01.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 5]  := 'LOCAL';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSRIGHTS.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := sDesc;
          oSheet.Cells[iCol, 10] := ''''+cdsDHKColWDSACCCODE.AsString;
          oSheet.Cells[iCol, 11] := 'D';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := sCcy;
        end;
      end;

        cdsDHKColWDS.Next;
    end;
    oStringList.Add('</Message>');

  finally
    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFileName +'-CDS.xlsx');

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    oStringList.SaveToFile(sFileName +'.cds');
    FreeAndNil(oStringList);

    MessageDlg('File Colds has been generated !', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmDHKList.actGenerateCOLWExecute(Sender: TObject);
begin
  inherited;
  GenerateCOLWDS(1);
end;

procedure TfrmDHKList.actGenerateColwFileExecute(Sender: TObject);
var
  sFileName: string;
  sColds, sExRef, sDesc: string;
  oStringList: TStringList;
  sSecCode: string;
  iCol: Integer;
  oExcel, oSheet: OleVariant;
  sCcy: string;
  sAccKSEISubRek, sPorKSEISubRek: string;
begin
  inherited;
  try
    oStringList := TStringList.Create;
    sCcy        := dmGlobal.RemoteServer.GetLocalCCY;

    if rbCash.Checked then
    begin
      sFileName := dmGlobal.RemoteServer.GetBrokerCode + FormatDateTime('yyyymmdd', dtTradeDate.Date) +'-IDR.clw';
      sSecCode  := 'IDR';
    end
    else
    begin
      sFileName := dmGlobal.RemoteServer.GetBrokerCode + FormatDateTime('yyyymmdd', dtTradeDate.Date) +'.clw';
      sSecCode  := '';
    end;

    cdsDHKColWDS.Close;
    cdsDHKColWDS.Params[0].AsDate   := dtTradeDate.Date;
    cdsDHKColWDS.Params[1].AsString := sSecCode;
    cdsDHKColWDS.Params[2].AsString := 'W';
    cdsDHKColWDS.Open;
    cdsDHKColWDS.First;

    iCol := 1;

    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    oExcel.WorkBooks[1].WorkSheets[1].Name := sFileName +'-clw';
    oSheet := oExcel.WorkBooks[1].WorkSheets[sFileName +'-clw'];

    SaveDialog.FileName := sFileName;
    if SaveDialog.Execute then
      sFileName := SaveDialog.FileName;

    oSheet.Cells[1, 1]  := 'External Reference';
    oSheet.Cells[1, 2]  := 'Participant Code';
    oSheet.Cells[1, 3]  := 'Source Account';
    oSheet.Cells[1, 4]  := 'Target Account';
    oSheet.Cells[1, 5]  := 'Security Code Type';
    oSheet.Cells[1, 6]  := 'Security Code';
    oSheet.Cells[1, 7]  := 'Instrument Quantity';
    oSheet.Cells[1, 8]  := 'Settlement Date';
    oSheet.Cells[1, 9]  := 'Description';
    oSheet.Cells[1, 10] := 'Customer Code';
    oSheet.Cells[1, 11] := 'Req-Del';
    oSheet.Cells[1, 12] := 'Transaction Date';
    oSheet.Cells[1, 13] := 'Date Proof';
    oSheet.Cells[1, 14] := 'Currency';

    oStringList.Add('<Message>');
    while not cdsDHKColWDS.Eof do
    begin
      Inc(iCol);

      if rbCash.Checked then
      begin
        if cdsDHKColWDSOBLIGATION.AsFloat <> 0 then
        begin
          sAccKSEISubRek := Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4) + Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 13, 2);
          sPorKSEISubRek := Copy(cdsDHKColWDSCUSTCODE01.AsString, 6, 4) + Copy(cdsDHKColWDSCUSTCODE01.AsString, 13, 2);
          sExRef         := FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +
                            '('+ sAccKSEISubRek +'-'+ sPorKSEISubRek +')';

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCUSTCODE01.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="securityCodeType"></Field>');
          oStringList.Add('   <Field name="securityCode"></Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSOBLIGATION.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCUSTCODE01.AsString;
          oSheet.Cells[iCol, 5]  := '';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSOBLIGATION.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 10] := ''''+ sAccKSEISubRek;
          oSheet.Cells[iCol, 11] := 'R';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := '';
        end
        else
        begin
          sAccKSEISubRek := Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4) + Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 13, 2);
          sPorKSEISubRek := Copy(cdsDHKColWDSCUSTCODE01.AsString, 6, 4) + Copy(cdsDHKColWDSCUSTCODE01.AsString, 13, 2);
          sExRef         := FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +
                            '('+ sAccKSEISubRek +'-'+ sPorKSEISubRek +')';

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCUSTCODE01.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="securityCodeType"></Field>');
          oStringList.Add('   <Field name="securityCode"></Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSRIGHTS.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCUSTCODE01.AsString;
          oSheet.Cells[iCol, 5]  := '';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSRIGHTS.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 10] := ''''+ sAccKSEISubRek;
          oSheet.Cells[iCol, 11] := 'R';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := '';
        end;
      end
      else
      begin
        if cdsDHKColWDSOBLIGATION.AsFloat <> 0 then
        begin
          sExRef := FormatFloat('000000', cdsDHKColWDSDHKID.AsFloat) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime)+'-'+
                    FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +'-'+ cdsDHKColWDSSECURITY_CODE.AsString +'-'+
                    FormatFloat('#,##0;(#,##0);0', cdsDHKColWDSOBLIGATION.AsFloat);
          sDesc  := cdsDHKColWDSACCCODE.AsString;

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCBEST_ACC_01.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode"></Field>');
          oStringList.Add('   <Field name="securityCodeType">LOCAL</Field>');
          oStringList.Add('   <Field name="securityCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSOBLIGATION.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ sDesc +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCBEST_ACC_01.AsString;
          oSheet.Cells[iCol, 5]  := 'LOCAL';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSOBLIGATION.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := sDesc;
          oSheet.Cells[iCol, 10] := ''''+cdsDHKColWDSACCCODE.AsString;
          oSheet.Cells[iCol, 11] := 'R';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := sCcy;
        end
        else
        begin
          sExRef := FormatFloat('000000', cdsDHKColWDSDHKID.AsFloat) +'-'+ FormatDateTime('yymmdd', cdsDHKColWDSDAY.AsDateTime)+'-'+
                    FormatDateTime('yymmdd', cdsDHKColWDSTRDDATE.AsDateTime) +'-'+ cdsDHKColWDSSECURITY_CODE.AsString +'-'+
                    FormatFloat('#,##0;(#,##0);0', cdsDHKColWDSRIGHTS.AsFloat);
          sDesc  := cdsDHKColWDSACCCODE.AsString;

          oStringList.Add(' <Record name="data">');
          oStringList.Add('   <Field name="externalReference">'+ sExRef +'</Field>');
          oStringList.Add('   <Field name="participantCode">'+ cdsDHKColWDSMEMBER_ID.AsString +'</Field>');
          oStringList.Add('   <Field name="sourceAccount">'+ cdsDHKColWDSCBEST_ACC_04.AsString +'</Field>');
          oStringList.Add('   <Field name="targetAccount">'+ cdsDHKColWDSCBEST_ACC_01.AsString +'</Field>');
          oStringList.Add('   <Field name="currencyCode"></Field>');
          oStringList.Add('   <Field name="securityCodeType">LOCAL</Field>');
          oStringList.Add('   <Field name="securityCode">'+ cdsDHKColWDSSECURITY_CODE.AsString +'</Field>');
          oStringList.Add('   <Field name="instrumentQuantity">'+ cdsDHKColWDSRIGHTS.AsString +'</Field>');
          oStringList.Add('   <Field name="settlementDate">'+ FormatDateTime('yyyymmdd', cdsDHKColWDSDAY.AsDateTime) +'</Field>');
          oStringList.Add('   <Field name="description">'+ sDesc +'</Field>');
          oStringList.Add(' </Record>');

          oSheet.Cells[iCol, 1]  := sExRef;
          oSheet.Cells[iCol, 2]  := cdsDHKColWDSMEMBER_ID.AsString;
          oSheet.Cells[iCol, 3]  := cdsDHKColWDSCBEST_ACC_04.AsString;
          oSheet.Cells[iCol, 4]  := cdsDHKColWDSCBEST_ACC_01.AsString;
          oSheet.Cells[iCol, 5]  := 'LOCAL';
          oSheet.Cells[iCol, 6]  := cdsDHKColWDSSECURITY_CODE.AsString;
          oSheet.Cells[iCol, 7]  := cdsDHKColWDSRIGHTS.AsFloat;
          oSheet.Cells[iCol, 8]  := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 9]  := sDesc;
          oSheet.Cells[iCol, 10] := ''''+cdsDHKColWDSACCCODE.AsString;
          oSheet.Cells[iCol, 11] := 'R';
          oSheet.Cells[iCol, 12] := cdsDHKColWDSTRDDATE.AsDateTime;
          oSheet.Cells[iCol, 13] := cdsDHKColWDSDAY.AsDateTime;
          oSheet.Cells[iCol, 14] := sCcy;
        end;
      end;

      cdsDHKColWDS.Next;
    end;
    oStringList.Add('</Message>');

  finally
    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFileName +'.xlsx');

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    oStringList.SaveToFile(sFileName);
    FreeAndNil(oStringList);

    MessageDlg('File Colds has been generated !', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmDHKList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  RefreshData;
end;

procedure TfrmDHKList.cxButton1Click(Sender: TObject);
var
  sFileName,
  sFileExt,
  sMsg: string;
begin
  inherited;

  if MessageDlg('Update data DHK ?', mtInformation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  sFileName := txtFileName.Text;
  if FileExists(sFileName) then
  begin
    Application.ProcessMessages;

    sFileExt := ExtractFileExt(sFileName);
    UploadFileDHK(sFileName, sFileExt);

//    if LowerCase(sFileExt) = '.txt' then
//      UploadDHKText(sFileName)
//    else if (LowerCase(sFileExt) = '.xls') or (LowerCase(sFileExt) = '.xlsx') then
//      UploadDHKExcel(sFileName);

    //dmGlobal.RemoteServer.GenerateCOLWCOLDS(dtTradeDate.Date, sMsg);
    sMsg := 'DHK has been successfully uploaded!';
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
    RefreshData;
  end
  else
    MessageError('Invalid file name '+ sFileName);
end;

procedure TfrmDHKList.chkUnMatchClick(Sender: TObject);
begin
  inherited;
  if FFilter = '' then
    FFilter := cdsDHKList.Filter;

  if chkUnMatch.Checked then
    cdsDHKList.Filter := 'QTY_BOFIS <> QTY_DHK or QTY_BOFIS is null or QTY_DHK is null'
  else
  begin
    cdsDHKList.Filter := '';
    FFilter := '';
  end;
  cdsDHKList.Filtered := True;
end;

procedure TfrmDHKList.FormShow(Sender: TObject);
begin
  inherited;
  dtTradeDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmDHKList.GenerateCOLWDS(ACOLWDS: Integer);
var
  sFileName, sFolderName,
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9,
  s10, s11, s12, s13, s14,
  s15: string;
  oCBestList: TStringList;
  iCreateFile: Integer;
  i : Integer;
  sFilter, sSheetName: string;
  iTrdDate: integer;
  dDueDate: TDate;
  sDesc: string;
begin
  inherited;
  iTrdDate := DateTimeToFileDate(dtTradeDate.Date);
  dDueDate := dmGlobal.RemoteServer.DateAppend(iTrdDate, 2);

  cursor     := crHourGlass;

  if ACOLWDS = 0 then
  begin
    if rbStock.Checked then
      SaveDialog.FileName := 'STOCK_COLDS_'+FormatDateTime('YYYYMMDD', dtTradeDate.Date)
    else
      SaveDialog.FileName := 'CASH_COLDS_'+FormatDateTime('YYYYMMDD', dtTradeDate.Date);
  end
  else if ACOLWDS = 1 then
  begin
    if rbStock.Checked then
      SaveDialog.FileName := 'STOCK_COLW_'+FormatDateTime('YYYYMMDD', dtTradeDate.Date)
    else
      SaveDialog.FileName := 'CASH_COLW_'+FormatDateTime('YYYYMMDD', dtTradeDate.Date);
  end;

  if SaveDialog.Execute(Handle) then
    sFileName := SaveDialog.FileName
  else
    sFileName := '';

  if sFileName <> '' then
  begin
    oCBestList := TStringList.Create;

    if rbStock.Checked then
    begin
      sSheetName := 'DHK Stock Reconcile';

      cdsDHKColWDS.Close;
      cdsDHKColWDS.Params[0].AsDate   := dtTradeDate.Date; // dDueDate;
      cdsDHKColWDS.Params[1].AsString := '';
      cdsDHKColWDS.Open;

      if cdsDHKColWDS.IsEmpty then
      begin
        MessageError('There is no data can be generated');

        FreeAndNil(oCBestList);
        Abort;
      end;

//      sDesc := 'Peny trans '+ FormatDateTime('dd/mm-yy', dmGlobal.RemoteServer.GetNextTradingDate(cdsDHKColWDSTRDDATE.AsDateTime, -2)) +
//               ' settdate '+ FormatDateTime('dd/mm-yy', dtTradeDate.Date);

      if ACOLWDS = 0 then
        sSheetName := 'COLDS'
      else if ACOLWDS = 1 then
        sSheetName := 'COLW';

      cdsDHKColWDS.First;
      while not cdsDHKColWDS.Eof do
      begin
        sDesc := 'Peny trans '+ FormatDateTime('dd/mm-yy', cdsDHKColWDSTRDDATE.AsDateTime) +
                 ' settdate '+ FormatDateTime('dd/mm-yy', dtTradeDate.Date);

        if ACOLWDS = 0 then
        begin
          if cdsDHKColWDSOBLIGATION.AsFloat <> 0 then
          begin
//            s0 := 'COLDS_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+Copy(cdsDHKColWDSDHKNO.AsString, 4, Length(cdsDHKColWDSDHKNO.AsString)); //Request Corpus Jul 11, 2019
            s0 := 'COLDS_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+FormatDateTime('ddmmyy', cdsDHKColWDSTRDDATE.AsDateTime)+'_'+FormatDateTime('ddmmyy', dtTradeDate.Date)+'_'+Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4);
            s1 := cdsDHKColWDSMEMBER_ID.AsString;
            s2 := cdsDHKColWDSCBEST_ACC_01.AsString;
            s3 := cdsDHKColWDSCBEST_ACC_04.AsString;
            s4 := '';
            s5 := 'LOCAL';
            s6 := cdsDHKColWDSSECURITY_CODE.AsString;
            s7 := cdsDHKColWDSOBLIGATION.AsString;
            s8 := FormatDateTime('YYYYMMDD', cdsDHKColWDSDAY.AsDateTime);
            s9 := sDesc; // cdsDHKColWDSSID_CODE.AsString;

            oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+s8+'|'+s9);
          end;
        end
        else
        begin
          if cdsDHKColWDSRIGHTS.AsFloat <> 0 then
          begin
//            s0 := 'COLW_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+Copy(cdsDHKColWDSDHKNO.AsString, 4, Length(cdsDHKColWDSDHKNO.AsString)); //Request Corpus Jul 11, 2019
            s0 := 'COLW_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+FormatDateTime('ddmmyy', cdsDHKColWDSTRDDATE.AsDateTime)+'_'+FormatDateTime('ddmmyy', dtTradeDate.Date)+'_'+Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4);
            s1 := cdsDHKColWDSMEMBER_ID.AsString;
            s2 := cdsDHKColWDSCBEST_ACC_04.AsString;
            s3 := cdsDHKColWDSCBEST_ACC_01.AsString;
            s4 := '';
            s5 := 'LOCAL';
            s6 := cdsDHKColWDSSECURITY_CODE.AsString;
            s7 := cdsDHKColWDSRIGHTS.AsString;
            s8 := FormatDateTime('YYYYMMDD', cdsDHKColWDSDAY.AsDateTime);
            s9 := sDesc; // cdsDHKColWDSSID_CODE.AsString;

            oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+s8+'|'+s9);
          end;
        end;

        cdsDHKColWDS.Next;
      end;
    end
    else if rbCash.Checked then
    begin
      sSheetName := 'DHK Cash Reconcile';

      cdsDHKColWDS.Close;
      cdsDHKColWDS.Params[0].AsDate   := dtTradeDate.Date; // dDueDate;
      cdsDHKColWDS.Params[1].AsString := 'IDR';
      cdsDHKColWDS.Open;

      sDesc := 'Peny trans '+ FormatDateTime('dd/mm-yy', cdsDHKColWDSTRDDATE.AsDateTime) +
               ' settdate '+ FormatDateTime('dd/mm-yy', cdsDHKColWDSDAY.AsDateTime);

      cdsDHKColWDS.First;
      while not cdsDHKColWDS.Eof do
      begin
        if ACOLWDS = 0 then
        begin
          if cdsDHKColWDSOBLIGATION.AsFloat <> 0 then
          begin
//            s0 := 'COLDS_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+Copy(cdsDHKColWDSDHKNO.AsString, 4, Length(cdsDHKColWDSDHKNO.AsString)); //Request Corpus Jul 11, 2019
            s0 := 'COLDS_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+FormatDateTime('ddmmyy', cdsDHKColWDSTRDDATE.AsDateTime)+'_'+FormatDateTime('ddmmyy', dtTradeDate.Date)+'_'+Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4);
            s1 := cdsDHKColWDSMEMBER_ID.AsString;
            s2 := cdsDHKColWDSCUSTCODE04.AsString; //Req Corpus June 18,2019
            s3 := cdsDHKColWDSCBEST_ACC_04.AsString;
            s4 := cdsDHKColWDSSECURITY_CODE.AsString;
            s5 := '';
            s6 := '';
            s7 := cdsDHKColWDSOBLIGATION.AsString;
            s8 := FormatDateTime('YYYYMMDD', cdsDHKColWDSDAY.AsDateTime);
            s9 := sDesc; //cdsDHKColWDSSID_CODE.AsString;

            oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+s8+'|'+s9);
          end;
        end
        else
        begin
          if cdsDHKColWDSRIGHTS.AsFloat <> 0 then
          begin
//            s0 := 'COLW_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+Copy(cdsDHKColWDSDHKNO.AsString, 4, Length(cdsDHKColWDSDHKNO.AsString)); //Request Corpus Jul 11, 2019
            s0 := 'COLW_'+cdsDHKColWDSSECURITY_CODE.AsString+'_'+FormatDateTime('ddmmyy', cdsDHKColWDSTRDDATE.AsDateTime)+'_'+FormatDateTime('ddmmyy', dtTradeDate.Date)+'_'+Copy(cdsDHKColWDSCBEST_ACC_04.AsString, 6, 4);
            s1 := cdsDHKColWDSMEMBER_ID.AsString;
            s2 := cdsDHKColWDSCBEST_ACC_04.AsString;
            s3 := cdsDHKColWDSCUSTCODE04.AsString; //Req Corpus June 18,2019
            s4 := cdsDHKColWDSSECURITY_CODE.AsString;
            s5 := '';
            s6 := '';
            s7 := cdsDHKColWDSRIGHTS.AsString;
            s8 := FormatDateTime('YYYYMMDD', cdsDHKColWDSDAY.AsDateTime);
            s9 := sDesc; // cdsDHKColWDSSID_CODE.AsString;

            oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+s8+'|'+s9);
          end;
        end;

        cdsDHKColWDS.Next;
      end;
    end;


    if oCBestList.Count > 0 then
    begin
      oCBestList.SaveToFile(sFileName+'.txt');
      if ACOLWDS = 0 then
        dmGlobal.IntDataCBest.GenerateCOL(sFileName+'.xlsx', oCBestList, sSheetName, True)
      else
        dmGlobal.IntDataCBest.GenerateCOL(sFileName+'.xlsx', oCBestList, sSheetName, False);

      cdsGenerateCOLWCOLDS.Filtered := False;
      ShowMessage('Generate file has done');
    end
    else
      MessageError('There is no data can be generated');
    FreeAndNil(oCBestList);
  end;
end;

procedure TfrmDHKList.gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
//  if AViewInfo.GridRecord.Values[gvwMasterQTY_BOFIS.Index] <> AViewInfo.GridRecord.Values[gvwMasterQTY_DHK.Index] then
//    ACanvas.Font.Color := clRed;
end;

function TfrmDHKList.IsValidDateCheck(const AValue: String;
  out AResult: TDate): Boolean;
var
  dtTemp: TDateTime;
  dtDate : String;
  iYear, iMonth, iDay: Word;
  slDate: TStringList;
  sValue: String;
begin
  Result := False;
  AResult := MinDateTime;

  slDate := TStringList.Create;
  Try
    sValue := Trim(AValue);
//    dmGlobal.ParseDelimited(slDate, sValue, ' ');
    dmGlobal.ParseDelimited(slDate, sValue, '-');

    if slDate.Count = 3 then
    begin
      iDay := StrToIntDef(slDate.Strings[0], -1);

      if UpperCase(slDate.Strings[1]) = 'JAN' then iMonth := 1
      else if UpperCase(slDate.Strings[1]) = 'FEB' then iMonth := 2
      else if UpperCase(slDate.Strings[1]) = 'MAR' then iMonth := 3
      else if UpperCase(slDate.Strings[1]) = 'APR' then iMonth := 4
      else if UpperCase(slDate.Strings[1]) = 'MAY' then iMonth := 5
      else if UpperCase(slDate.Strings[1]) = 'JUN' then iMonth := 6
      else if UpperCase(slDate.Strings[1]) = 'JUL' then iMonth := 7
      else if UpperCase(slDate.Strings[1]) = 'AUG' then iMonth := 8
      else if UpperCase(slDate.Strings[1]) = 'SEP' then iMonth := 9
      else if UpperCase(slDate.Strings[1]) = 'OCT' then iMonth := 10
      else if UpperCase(slDate.Strings[1]) = 'NOV' then iMonth := 11
      else if UpperCase(slDate.Strings[1]) = 'DEC' then iMonth := 12;

      iYear := StrToIntDef(slDate.Strings[2], -1);
      if (iYear < 100) And (iYear >= 0) then
        iYear := iYear + 2000;

      AResult := EncodeDate(iYear, iMonth, iDay);
      Result := True;
    end;
  Finally
    FreeAndNil(slDate);
  End;
end;

procedure TfrmDHKList.rbCashClick(Sender: TObject);
begin
  inherited;
//  cdsDHKList.Filter   := '(STOCKCODE = '+QuotedStr('IDR')+'or STOCKCODE = '+QuotedStr('')+')';
//  cdsDHKList.Filtered := True;

  chkUnMatch.Checked := False;
  cdsDHKList.Close;
  cdsDHKList.Params[0].AsDate := dtTradeDate.Date;
  cdsDHKList.Params[1].AsString := 'IDR';
  cdsDHKList.Open;
end;

procedure TfrmDHKList.rbStockClick(Sender: TObject);
begin
  inherited;
//  cdsDHKList.Filter   := '(STOCKCODE <> '+QuotedStr('IDR')+'or STOCKCODE = '+QuotedStr('')+')';
//  cdsDHKList.Filtered := True;

  chkUnMatch.Checked := False;
  cdsDHKList.Close;
  cdsDHKList.Params[0].AsDate := dtTradeDate.Date;
  cdsDHKList.Params[1].AsString := '';
  cdsDHKList.Open;
end;

procedure TfrmDHKList.RefreshData;
var
  TrdDateFile: Integer;
begin
  TrdDateFile := DateTimeToFileDate(dtTradeDate.Date);

  cdsDHKList.Close;
  cdsDHKList.Params[0].AsDate := dtTradeDate.Date;
  if rbStock.Checked then
  begin
    cdsDHKList.Params[1].AsString := '';
    //cdsDHKList.Filter   := '(STOCKCODE <> '+QuotedStr('IDR')+'or STOCKCODE = '+QuotedStr('')+')';
  end
  else
  begin
    cdsDHKList.Params[1].AsString := 'IDR';
    //cdsDHKList.Filter   := '(STOCKCODE = '+QuotedStr('IDR') +'or STOCKCODE = '+QuotedStr('')+')';
  end;
  cdsDHKList.Open;
  //cdsDHKList.Filtered := True;

  cdsGenerateCOLWCOLDS.Close;
  cdsGenerateCOLWCOLDS.Params[0].AsDate := dtTradeDate.Date;
  cdsGenerateCOLWCOLDS.Open;
end;

procedure TfrmDHKList.txtFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: String;
begin
  inherited;
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;
    if FileExists(sFileName) then
      txtFileName.Text := sFileName;
  end;
end;

procedure TfrmDHKList.UploadDHKExcel(AFileName: string);
var
  i, iID, iRow: Integer;
  oExcel, oSheet: OleVariant;
  dtDHK, dtDue: TDate;
  sMsg: string;
begin
  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Open(AFileName);

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    iRow   := oSheet.Usegdrange.Rows.Count;

    try
      dtDHK := oSheet.AsDateTime[0, 1];
      dtDue := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtDHK), 2);

//      dmGlobal.RemoteServer.EmptyTable('main.B_DHK', sMsg);

      cdsDHK.Close;
      cdsDHK.Params[0].AsDate := dtTradeDate.Date;
      cdsDHK.Open;

      iID := 1;
      for i := 1 to oSheet.LastRow -2 do
      begin
        if (DateOf(oSheet.AsDateTime[0, i]) = DateOf(dtDue)) then
        begin
          cdsDHK.Append;
          cdsDHKDHKNO.AsString                 := dmGlobal.RemoteServer.GetVoucherNo(cdsDHKDAY.AsDateTime, 'DH', 'TBL_B_DHK');
          cdsDHKDAY.AsDateTime                 := oSheet.Cells[i, 1].Value;
          cdsDHKCS_PAYMENT_TOTAL_OBL.AsFloat   := oSheet.Cells[i, 2].Value;
          cdsDHKCS_PAYMENT_TOTAL_RIGHT.AsFloat := oSheet.Cells[i, 3].Value;
          cdsDHKCF_PAYMENT_TOTAL.AsFloat       := oSheet.Cells[i, 4].Value;
          cdsDHKCF_PAYMENT_TOTAL_OBL.AsFloat   := oSheet.Cells[i, 5].Value;
          cdsDHKMEMBER_NAME.AsString           := oSheet.Cells[i, 6].Value;
          cdsDHKMEMBER_ID.AsString             := oSheet.Cells[i, 7].Value;
          cdsDHKID_ACCT.AsString               := oSheet.Cells[i, 8].Value;
          cdsDHKSID_CODE.AsString              := oSheet.Cells[i, 9].Value;
          cdsDHKCF_ACCT_4.AsString             := oSheet.Cells[i, 10].Value;
          cdsDHKCF_ACCT_1.AsString             := oSheet.Cells[i, 11].Value;
          cdsDHKSORT_ORDER.AsString            := oSheet.Cells[i, 12].Value;
          cdsDHKSECURITY_CODE.AsString         := oSheet.Cells[i, 13].Value;
          cdsDHKSECURITY_ID.AsString           := oSheet.Cells[i, 14].Value;
          cdsDHKRIGHTS.AsFloat                 := oSheet.Cells[i, 15].Value;
          cdsDHKOBLIGATION.AsFloat             := oSheet.Cells[i, 16].Value;
          cdsDHKSECURITY.AsString              := oSheet.Cells[i, 17].Value;
          cdsDHKOBLIGATION_CASH.AsFloat        := oSheet.Cells[i, 18].Value;
          cdsDHKRIGHT_CASH.AsFloat             := oSheet.Cells[i, 19].Value;
          cdsDHKCF_IDR_VALUE.AsFloat           := oSheet.Cells[i, 10].Value;
          cdsDHKCF_OBLIGATION_CASH.AsFloat     := oSheet.Cells[i, 21].Value;
          cdsDHKCF_OBLIGATION.AsFloat          := oSheet.Cells[i, 22].Value;
          cdsDHKSTAT.AsString                  := '0';
          cdsDHK.Post;

          Inc(iID);
        end;
      end;

      cdsDHK.ApplyUpdates(-1);
    except
      on E: Exception do
        MessageDlg('Error : '+E.Message, mtError, [mbOk], 0);
    end;
  finally
    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;

end;

procedure TfrmDHKList.UploadDHKText(AFileName: string);
var
  oAllDataList, oDataList: TStringList;
  sTemp: string;
  RecNo, n: Integer;
  i, j, iID: Integer;
  TrdDateFile: Integer;
  oProgress: TfrmProgressBar;
  dtResult: TDate;
  sMsg: string;
begin
  inherited;
  Cursor := crHourGlass;

  try
    TrdDateFile := DateTimeToFileDate(dtTradeDate.Date);

    if FileExists(AFileName) then
    begin
      dmGlobal.RemoteServer.EmptyTable('main.B_DHK', sMsg);

      cdsDHK.Close;
      cdsDHK.Params[0].AsDate := dtTradeDate.Date;
      cdsDHK.Open;

      oAllDataList := TStringList.Create;
      cdsDHK.DisableControls;
      oProgress := TfrmProgressBar.Create(Nil);
      try
        oAllDataList.LoadFromFile(AFileName);
        oProgress.Show;
        n := oAllDataList.Count;
        for i := 0 to oAllDataList.Count-1 do
        begin
          oDataList := TStringList.Create;

          sTemp := StringReplace(oAllDataList.Strings[i], #9, '|', [rfReplaceAll]);
          dmGlobal.ParseDelimited(oDataList, sTemp, '|');

          if(IsValidDateCheck(oDataList.Strings[0], dtResult) = False) then
          begin
            Continue;
            oProgress.ChangeBar(trunc(i / n-1 * 100), 'Processing DHK Upload');
          end
          else
          begin
            oProgress.ChangeBar(trunc((i / (n-1)) * 100), 'Processing DHK: '
              + QuotedStr(oDataList.Strings[0])
              + ', ' + QuotedStr(oDataList.Strings[6])
              + ', ' + QuotedStr(oDataList.Strings[8])
              + ', ' + QuotedStr(oDataList.Strings[7])
              + ', ' + QuotedStr(oDataList.Strings[12]));
          end;

          cdsDHK.Append;
          cdsDHKDHKID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DHK');
          cdsDHKDHKNO.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsDHKDAY.AsDateTime, 'DH', 'TBL_B_DHK');
          cdsDHKDAY.AsDateTime := dtResult;
          cdsDHKMEMBER_ID.AsString := oDataList.Strings[6];
          cdsDHKID_ACCT.AsString := oDataList.Strings[7];
          cdsDHKSID_CODE.AsString := oDataList.Strings[8];
          cdsDHKSECURITY_CODE.AsString := oDataList.Strings[12];
          cdsDHKSTAT.AsString :=  '0';
          cdsDHKCS_PAYMENT_TOTAL_OBL.AsFloat := StrToFloat(oDataList.Strings[1]);
          cdsDHKCS_PAYMENT_TOTAL_RIGHT.AsFloat := StrToFloat(oDataList.Strings[2]);
          cdsDHKCF_PAYMENT_TOTAL.AsFloat := StrToFloat(oDataList.Strings[3]);
          cdsDHKCF_PAYMENT_TOTAL_OBL.AsFloat := StrToFloat(oDataList.Strings[4]);
          cdsDHKMEMBER_NAME.AsString := StringReplace(oDataList.Strings[5], '"', '', [rfReplaceAll]);
          cdsDHKCF_ACCT_4.AsString := oDataList.Strings[9];
          cdsDHKCF_ACCT_1.AsString := oDataList.Strings[10];
          cdsDHKSORT_ORDER.AsString := oDataList.Strings[11];
          cdsDHKSECURITY_ID.AsString := oDataList.Strings[13];
          cdsDHKRIGHTS.AsFloat := StrToFloat(oDataList.Strings[14]);
          cdsDHKOBLIGATION.AsFloat := StrToFloat(oDataList.Strings[15]);
          cdsDHKSECURITY.AsString := oDataList.Strings[16];
          cdsDHKOBLIGATION_CASH.AsFloat := StrToFloat(oDataList.Strings[17]);
          cdsDHKRIGHT_CASH.AsFloat := StrToFloat(oDataList.Strings[18]);
          cdsDHKCF_IDR_VALUE.AsFloat := StrToFloat(oDataList.Strings[19]);
          cdsDHKCF_OBLIGATION_CASH.AsFloat := StrToFloat(oDataList.Strings[20]);
          cdsDHKCF_OBLIGATION.AsFloat := StrToFloat(oDataList.Strings[2]);
          cdsDHK.Post;

//          cdsDHK.ApplyUpdates(-1);
        end;

      finally
        cdsDHK.ApplyUpdates(-1);

        FreeAndNil(oProgress);
        cdsDHK.EnableControls;
        FreeAndNil(oAllDataList);
        FreeAndNil(oDataList);
      end;
    end;
  except
    on E: Exception do
      MessageDlg('Error : '+e.Message, mtError, [mbOk], 0);
  end;

  Cursor := crDefault;
end;

procedure TfrmDHKList.UploadFileDHK(AFileName, AFileType: string);
var
  oAllDataList, oDataList: TStringList;
  sTemp: string;
  RecNo, n: Integer;
  i, j, iID: Integer;
  TrdDateFile: Integer;
  oProgress: TfrmProgressBar;
  dtResult: TDate;
  sMsg: string;

  iRow: Integer;
  oExcel, oSheet: OleVariant;
  dtDHK, dtDue: TDate;
begin
  inherited;
  Cursor := crHourGlass;

  try
    TrdDateFile := DateTimeToFileDate(dtTradeDate.Date);
    iID         := 0;

    if FileExists(AFileName) then
    begin
      dmGlobal.RemoteServer.EmptyTable('main.B_DHK', sMsg);
      dmGlobal.RemoteServer.EmptyTable('upload.DHK', sMsg);

      cdsUploadDHK.Close;
      cdsUploadDHK.Open;

      try
        oProgress := TfrmProgressBar.Create(Nil);

        if AFileType = '.txt' then
        begin
          try
            oAllDataList := TStringList.Create;
            oAllDataList.LoadFromFile(AFileName);

            oProgress.Show;
            n := oAllDataList.Count;
            for i := 0 to oAllDataList.Count-1 do
            begin
              oDataList := TStringList.Create;
              iID       := iID + 1;

              sTemp := StringReplace(oAllDataList.Strings[i], #9, '|', [rfReplaceAll]);
              dmGlobal.ParseDelimited(oDataList, sTemp, '|');

              if(IsValidDateCheck(oDataList.Strings[0], dtResult) = False) then
              begin
                Continue;
                oProgress.ChangeBar(trunc(i / n-1 * 100), 'Processing DHK Upload');
              end
              else
              begin
                oProgress.ChangeBar(trunc((i / (n-1)) * 100), 'Processing DHK: '
                  + QuotedStr(oDataList.Strings[0])
                  + ', ' + QuotedStr(oDataList.Strings[6])
                  + ', ' + QuotedStr(oDataList.Strings[8])
                  + ', ' + QuotedStr(oDataList.Strings[7])
                  + ', ' + QuotedStr(oDataList.Strings[12]));
              end;

              cdsUploadDHK.Append;
              cdsUploadDHKROWNO.AsInteger                := iID;
              cdsuploadDHKDAY.AsDateTime                 := dtResult;
              cdsuploadDHKMEMBER_ID.AsString             := oDataList.Strings[6];
              cdsuploadDHKID_ACCT.AsString               := oDataList.Strings[7];
              cdsuploadDHKSID_CODE.AsString              := oDataList.Strings[8];
              cdsuploadDHKSECURITY_CODE.AsString         := oDataList.Strings[12];
              cdsuploadDHKCS_PAYMENT_TOTAL_OBL.AsFloat   := StrToFloat(oDataList.Strings[1]);
              cdsuploadDHKCS_PAYMENT_TOTAL_RIGHT.AsFloat := StrToFloat(oDataList.Strings[2]);
              cdsuploadDHKCF_PAYMENT_TOTAL.AsFloat       := StrToFloat(oDataList.Strings[3]);
              cdsuploadDHKCF_PAYMENT_TOTAL_OBL.AsFloat   := StrToFloat(oDataList.Strings[4]);
              cdsuploadDHKMEMBER_NAME.AsString           := StringReplace(oDataList.Strings[5], '"', '', [rfReplaceAll]);
              cdsuploadDHKCF_ACCT_4.AsString             := oDataList.Strings[9];
              cdsuploadDHKCF_ACCT_1.AsString             := oDataList.Strings[10];
              cdsuploadDHKSORT_ORDER.AsString            := oDataList.Strings[11];
              cdsuploadDHKSECURITY_ID.AsString           := oDataList.Strings[13];
              cdsuploadDHKRIGHTS.AsFloat                 := StrToFloat(oDataList.Strings[14]);
              cdsuploadDHKOBLIGATION.AsFloat             := StrToFloat(oDataList.Strings[15]);
              cdsuploadDHKSECURITY.AsString              := oDataList.Strings[16];
              cdsuploadDHKOBLIGATION_CASH.AsFloat        := StrToFloat(oDataList.Strings[17]);
              cdsuploadDHKRIGHT_CASH.AsFloat             := StrToFloat(oDataList.Strings[18]);
              cdsuploadDHKCF_IDR_VALUE.AsFloat           := StrToFloat(oDataList.Strings[19]);
              cdsuploadDHKCF_OBLIGATION_CASH.AsFloat     := StrToFloat(oDataList.Strings[20]);
              cdsuploadDHKCF_OBLIGATION.AsFloat          := StrToFloat(oDataList.Strings[2]);
              cdsuploadDHK.Post;
            end;
          finally
            FreeAndNil(oAllDataList);
            FreeAndNil(oDataList);
          end;
        end
        else
        begin
          try
              oExcel := CreateOleObject('Excel.Application');
              oExcel.DisplayAlerts := False;
              oExcel.WorkBooks.Open(AFileName);

              oSheet := oExcel.WorkBooks[1].WorkSheets[1];
              iRow   := oSheet.Usegdrange.Rows.Count;

              try
                dtDHK := oSheet.AsDateTime[0, 1];
                dtDue := dmGlobal.RemoteServer.DateAppend(DateTimeToFileDate(dtDHK), 2);

                for i := 1 to oSheet.LastRow -2 do
                begin
                  if (DateOf(oSheet.AsDateTime[0, i]) = DateOf(dtDue)) then
                  begin
                    oProgress.ChangeBar(trunc((i / (n-1)) * 100), 'Processing DHK: '
                      + QuotedStr(oSheet.Cells[i, 1].Value)
                      + ', ' + QuotedStr(oSheet.Cells[i, 7].Value)
                      + ', ' + QuotedStr(oSheet.Cells[i, 9].Value)
                      + ', ' + QuotedStr(oSheet.Cells[i, 8].Value)
                      + ', ' + QuotedStr(oSheet.Cells[i, 13].Value));

                    iID := iID + 1;

                    cdsuploadDHK.Append;
                    cdsUploadDHKROWNO.AsInteger                := iID;
                    cdsuploadDHKDAY.AsDateTime                 := oSheet.Cells[i, 1].Value;
                    cdsuploadDHKCS_PAYMENT_TOTAL_OBL.AsFloat   := oSheet.Cells[i, 2].Value;
                    cdsuploadDHKCS_PAYMENT_TOTAL_RIGHT.AsFloat := oSheet.Cells[i, 3].Value;
                    cdsuploadDHKCF_PAYMENT_TOTAL.AsFloat       := oSheet.Cells[i, 4].Value;
                    cdsuploadDHKCF_PAYMENT_TOTAL_OBL.AsFloat   := oSheet.Cells[i, 5].Value;
                    cdsuploadDHKMEMBER_NAME.AsString           := oSheet.Cells[i, 6].Value;
                    cdsuploadDHKMEMBER_ID.AsString             := oSheet.Cells[i, 7].Value;
                    cdsuploadDHKID_ACCT.AsString               := oSheet.Cells[i, 8].Value;
                    cdsuploadDHKSID_CODE.AsString              := oSheet.Cells[i, 9].Value;
                    cdsuploadDHKCF_ACCT_4.AsString             := oSheet.Cells[i, 10].Value;
                    cdsuploadDHKCF_ACCT_1.AsString             := oSheet.Cells[i, 11].Value;
                    cdsuploadDHKSORT_ORDER.AsString            := oSheet.Cells[i, 12].Value;
                    cdsuploadDHKSECURITY_CODE.AsString         := oSheet.Cells[i, 13].Value;
                    cdsuploadDHKSECURITY_ID.AsString           := oSheet.Cells[i, 14].Value;
                    cdsuploadDHKRIGHTS.AsFloat                 := oSheet.Cells[i, 15].Value;
                    cdsuploadDHKOBLIGATION.AsFloat             := oSheet.Cells[i, 16].Value;
                    cdsuploadDHKSECURITY.AsString              := oSheet.Cells[i, 17].Value;
                    cdsuploadDHKOBLIGATION_CASH.AsFloat        := oSheet.Cells[i, 18].Value;
                    cdsuploadDHKRIGHT_CASH.AsFloat             := oSheet.Cells[i, 19].Value;
                    cdsuploadDHKCF_IDR_VALUE.AsFloat           := oSheet.Cells[i, 10].Value;
                    cdsuploadDHKCF_OBLIGATION_CASH.AsFloat     := oSheet.Cells[i, 21].Value;
                    cdsuploadDHKCF_OBLIGATION.AsFloat          := oSheet.Cells[i, 22].Value;
                    cdsuploadDHK.Post;
                  end;
                end;
              except
                on E: Exception do
                  MessageDlg('Error : '+E.Message, mtError, [mbOk], 0);
              end;
            finally
              oExcel.Quit;
              oExcel := Unassigned;
              oSheet := Unassigned;
            end;
        end;
      finally
        oProgress.ChangeBarCaption('Saving data into database');
        cdsUploadDHK.ApplyUpdates(-1);
        dmGlobal.RemoteServer.CopyDHKFromUpload;
        FreeAndNil(oProgress);

        MessageDlg(IntToStr(iID) + ' data successfully uploaded', mtInformation, [mbOk], 0);
      end;

    end;
  except
    on E: Exception do
      MessageDlg('Error : '+e.Message, mtError, [mbOk], 0);
  end;

  Cursor := crDefault;
end;

end.
