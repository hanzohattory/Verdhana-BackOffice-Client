unit FormClosingPriceList;

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
  dxLayoutControlAdapters, dxLayoutContainer, cxButtonEdit, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, Datasnap.DBClient, NClientDataset, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, dxPSCore,
  dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, dbf, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, XLSSheetData5, XLSReadWriteII5,
  System.Actions, System.ImageList, ComObj, dxDateRanges,DateUtils,
  dxScrollbarAnnotations;

type
  TfrmClosingPriceList = class(TfrmBrowseData)
    cdsClosingPrice: TNClientDataset;
    cdsClosingPriceSTK_DATE: TDateField;
    cdsClosingPriceSTK_CODE: TStringField;
    cdsClosingPriceSTK_NAME: TStringField;
    cdsClosingPriceSTK_PREV: TFloatField;
    cdsClosingPriceSTK_HIGH: TFloatField;
    cdsClosingPriceSTK_LOW: TFloatField;
    cdsClosingPriceSTK_CLOS: TFloatField;
    cdsClosingPriceSTK_VOLM: TFloatField;
    cdsClosingPriceSTK_AMNT: TFloatField;
    cdsClosingPriceSTK_INDX: TFloatField;
    cdsClosingPriceSTK_PIDX: TFloatField;
    cdsClosingPriceSTK_ASKP: TFloatField;
    cdsClosingPriceSTK_ASKV: TFloatField;
    cdsClosingPriceSTK_ASKF: TStringField;
    cdsClosingPriceSTK_BIDP: TFloatField;
    cdsClosingPriceSTK_BIDV: TFloatField;
    cdsClosingPriceSTK_BIDF: TStringField;
    cdsClosingPriceSTK_FHIG: TFloatField;
    cdsClosingPriceSTK_FLOW: TFloatField;
    cdsClosingPriceSTK_FCLO: TFloatField;
    cdsClosingPriceSTK_OPEN: TFloatField;
    cdsClosingPriceMODDA: TDateTimeField;
    cdsClosingPriceMODUI: TStringField;
    cdsClosingPriceMARKETCODE: TStringField;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    txtSSFile: TcxButtonEdit;
    cxButton2: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    actViewData: TNAction;
    actImportSS: TNAction;
    dbfClosingPrice: TDbf;
    dbfClosingPriceSTK_DATE: TDateField;
    dbfClosingPriceSTK_CODE: TStringField;
    dbfClosingPriceSTK_NAME: TStringField;
    dbfClosingPriceSTK_PREV: TFloatField;
    dbfClosingPriceSTK_HIGH: TFloatField;
    dbfClosingPriceSTK_LOW: TFloatField;
    dbfClosingPriceSTK_CLOS: TFloatField;
    dbfClosingPriceSTK_AMNT: TFloatField;
    dbfClosingPriceSTK_INDX: TFloatField;
    dbfClosingPriceSTK_PIDX: TFloatField;
    dbfClosingPriceSTK_ASKP: TFloatField;
    dbfClosingPriceSTK_ASKF: TStringField;
    dbfClosingPriceSTK_BIDP: TFloatField;
    dbfClosingPriceSTK_BIDF: TStringField;
    dbfClosingPriceSTK_FHIG: TFloatField;
    dbfClosingPriceSTK_FLOW: TFloatField;
    dbfClosingPriceSTK_FCLO: TFloatField;
    dbfClosingPriceSTK_OPEN: TFloatField;
    OpenDialog: TOpenDialog;
    cbMarket: TcxLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsClosePrice: TNClientDataset;
    cdsClosePriceSTK_DATE: TDateField;
    cdsClosePriceMARKETCODE: TStringField;
    cdsClosePriceSTK_CODE: TStringField;
    cdsClosePriceSTK_NAME: TStringField;
    cdsClosePriceSTK_PREV: TFloatField;
    cdsClosePriceSTK_HIGH: TFloatField;
    cdsClosePriceSTK_LOW: TFloatField;
    cdsClosePriceSTK_CLOS: TFloatField;
    cdsClosePriceSTK_VOLM: TFloatField;
    cdsClosePriceSTK_AMNT: TFloatField;
    cdsClosePriceSTK_INDX: TFloatField;
    cdsClosePriceSTK_PIDX: TFloatField;
    cdsClosePriceSTK_ASKP: TFloatField;
    cdsClosePriceSTK_ASKV: TFloatField;
    cdsClosePriceSTK_ASKF: TStringField;
    cdsClosePriceSTK_BIDP: TFloatField;
    cdsClosePriceSTK_BIDV: TFloatField;
    cdsClosePriceSTK_BIDF: TStringField;
    cdsClosePriceSTK_FHIG: TFloatField;
    cdsClosePriceSTK_FLOW: TFloatField;
    cdsClosePriceSTK_FCLO: TFloatField;
    cdsClosePriceSTK_OPEN: TFloatField;
    cdsClosePriceMODDA: TDateTimeField;
    cdsClosePriceMODUI: TStringField;
    gvwMasterSTK_DATE: TcxGridDBBandedColumn;
    gvwMasterSTK_CODE: TcxGridDBBandedColumn;
    gvwMasterSTK_NAME: TcxGridDBBandedColumn;
    gvwMasterSTK_PREV: TcxGridDBBandedColumn;
    gvwMasterSTK_HIGH: TcxGridDBBandedColumn;
    gvwMasterSTK_LOW: TcxGridDBBandedColumn;
    gvwMasterSTK_CLOS: TcxGridDBBandedColumn;
    gvwMasterSTK_VOLM: TcxGridDBBandedColumn;
    gvwMasterSTK_AMNT: TcxGridDBBandedColumn;
    gvwMasterSTK_INDX: TcxGridDBBandedColumn;
    gvwMasterSTK_PIDX: TcxGridDBBandedColumn;
    gvwMasterSTK_ASKP: TcxGridDBBandedColumn;
    gvwMasterSTK_ASKV: TcxGridDBBandedColumn;
    gvwMasterSTK_ASKF: TcxGridDBBandedColumn;
    gvwMasterSTK_BIDP: TcxGridDBBandedColumn;
    gvwMasterSTK_BIDV: TcxGridDBBandedColumn;
    gvwMasterSTK_BIDF: TcxGridDBBandedColumn;
    gvwMasterSTK_FHIG: TcxGridDBBandedColumn;
    gvwMasterSTK_FLOW: TcxGridDBBandedColumn;
    gvwMasterSTK_FCLO: TcxGridDBBandedColumn;
    gvwMasterSTK_OPEN: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    dbfClosingPriceSTK_VOLM: TFloatField;
    dbfClosingPriceSTK_ASKV: TFloatField;
    dbfClosingPriceSTK_BIDV: TFloatField;
    cdsInstrumentByLocalCode: TNClientDataset;
    cdsInstrumentByLocalCodeINSTRUMENT_ID: TLargeintField;
    cdsInstrumentByLocalCodeINSTRUMENT_CODE: TStringField;
    cdsInstrumentByLocalCodeLOCALCODE: TStringField;
    cdsInstrumentByLocalCodeMARKETCODE: TStringField;
    cdsInstrumentByLocalCodeINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentByLocalCodeSHORTNAME: TStringField;
    cdsInstrumentByLocalCodeLONGNAME: TStringField;
    cdsInstrumentByLocalCodeISSUERNAME: TStringField;
    cdsInstrumentByLocalCodeCCY: TStringField;
    cdsInstrumentByLocalCodeISINCODE: TStringField;
    cdsInstrumentByLocalCodeISINDATE: TDateTimeField;
    cdsInstrumentByLocalCodeMARGIN: TIntegerField;
    cdsInstrumentByLocalCodeSTATUS: TStringField;
    cdsInstrumentByLocalCodeDELISTINGDATE: TDateTimeField;
    cdsInstrumentByLocalCodeLISTINGDATE: TDateTimeField;
    cdsInstrumentByLocalCodeLASTCLSPRICE: TFloatField;
    cdsInstrumentByLocalCodeLASTCPPRICEDATE: TDateField;
    cdsInstrumentByLocalCodeSECTOR: TStringField;
    cdsInstrumentByLocalCodeMODDA: TDateTimeField;
    cdsInstrumentByLocalCodeMODUI: TStringField;
    cdsInstrumentByLocalCodeAPPDA: TDateTimeField;
    cdsInstrumentByLocalCodeAPPUI: TStringField;
    cdsInstrumentByLocalCodeISDEL: TIntegerField;
    cdsInstrumentByLocalCodeID: TLargeintField;
    cdsInstrumentByLocalCodeCATEGORY: TStringField;
    cdsInstrumentByLocalCodeMATURITYDATE: TDateTimeField;
    cdsInstrumentByLocalCodeRATING: TStringField;
    cdsInstrumentByLocalCodeREMARKS: TStringField;
    cdsInstrumentByLocalCodeEFFECTIVEDATE: TDateTimeField;
    cdsInstrumentByLocalCodeOFFERING_PERIODBEG: TDateTimeField;
    cdsInstrumentByLocalCodeOFFERING_PERIODEND: TDateTimeField;
    cdsInstrumentByLocalCodeISSUEDATE: TDateTimeField;
    cdsInstrumentByLocalCodeNO_OFCERTIFICATES: TStringField;
    cdsInstrumentByLocalCodeLEAD_UNDERWRITER: TStringField;
    cdsInstrumentByLocalCodeSELLING_AGENT: TStringField;
    cdsInstrumentByLocalCodeTRUSTEE: TStringField;
    cdsInstrumentByLocalCodeCALCULATE_DAYS_METHOD: TIntegerField;
    cdsInstrumentByLocalCodeCOUPON_IN_YEAR: TIntegerField;
    cdsInstrumentByLocalCodeCOMMONCODE: TStringField;
    cdsInstrumentByLocalCodeDAYSOFYEAR: TIntegerField;
    cdsInstrumentByLocalCodeREGIONALBONDS: TIntegerField;
    cdsInstrumentByLocalCodeCOUNTINGDAYS_METHOD: TIntegerField;
    cdsInstrumentByLocalCodeACCRUEDDAYS_METHOD: TIntegerField;
    cdsInstrumentByLocalCodeDAYSPERYEAR_METHOD: TIntegerField;
    cdsInstrumentByLocalCodeACCRUEDTYPE: TStringField;
    cdsInstrumentByLocalCodeDECDIGIT: TIntegerField;
    cdsInstrumentByLocalCodeSEDOL: TStringField;
    cdsInstrumentByLocalCodeHAIRCUT: TFloatField;
    cdsInstrumentByLocalCodeLIQUIDITY: TFloatField;
    cdsInstrumentByLocalCodeLASTHAIRCUTDATE: TDateField;
    cdsInstrumentByLocalCodeISSUERID: TLargeintField;
    cdsInstrumentByLocalCodeHCUT_REPO: TFloatField;
    cdsInstrumentByLocalCodeHCUT_MARGIN: TFloatField;
    cdsInstrumentByLocalCodeHCUT_REG: TFloatField;
    cdsInstrumentByLocalCodeAFFIL: TBooleanField;
    cdsInstrumentNoStock: TNClientDataset;
    cdsInstrumentNoStockINSTRUMENT_ID: TLargeintField;
    cdsInstrumentNoStockINSTRUMENT_CODE: TStringField;
    cdsInstrumentNoStockLOCALCODE: TStringField;
    cdsInstrumentNoStockMARKETCODE: TStringField;
    cdsInstrumentNoStockINSTRUMENT_TYPE_CODE: TStringField;
    cdsInstrumentNoStockSHORTNAME: TStringField;
    cdsInstrumentNoStockLONGNAME: TStringField;
    cdsInstrumentNoStockASPARENT: TStringField;
    cdsInstrumentNoStockINSTRUMENTGROUPID: TLargeintField;
    cdsInstrumentNoStockISSUERID: TLargeintField;
    cdsInstrumentNoStockISSUERNAME: TStringField;
    cdsInstrumentNoStockCCY: TStringField;
    cdsInstrumentNoStockISINCODE: TStringField;
    cdsInstrumentNoStockISINDATE: TDateTimeField;
    cdsInstrumentNoStockMARGIN: TIntegerField;
    cdsInstrumentNoStockSTATUS: TStringField;
    cdsInstrumentNoStockDELISTINGDATE: TDateTimeField;
    cdsInstrumentNoStockLISTINGDATE: TDateTimeField;
    cdsInstrumentNoStockLASTCLSPRICE: TFloatField;
    cdsInstrumentNoStockLASTCPPRICEDATE: TDateField;
    cdsInstrumentNoStockSECTOR: TStringField;
    cdsInstrumentNoStockCATEGORY: TStringField;
    cdsInstrumentNoStockMATURITYDATE: TDateTimeField;
    cdsInstrumentNoStockRATING: TStringField;
    cdsInstrumentNoStockREMARKS: TStringField;
    cdsInstrumentNoStockEFFECTIVEDATE: TDateTimeField;
    cdsInstrumentNoStockOFFERING_PERIODBEG: TDateTimeField;
    cdsInstrumentNoStockOFFERING_PERIODEND: TDateTimeField;
    cdsInstrumentNoStockISSUEDATE: TDateTimeField;
    cdsInstrumentNoStockNO_OFCERTIFICATES: TStringField;
    cdsInstrumentNoStockLEAD_UNDERWRITER: TStringField;
    cdsInstrumentNoStockSELLING_AGENT: TStringField;
    cdsInstrumentNoStockTRUSTEE: TStringField;
    cdsInstrumentNoStockCALCULATE_DAYS_METHOD: TIntegerField;
    cdsInstrumentNoStockCOUPON_IN_YEAR: TIntegerField;
    cdsInstrumentNoStockCOMMONCODE: TStringField;
    cdsInstrumentNoStockDAYSOFYEAR: TIntegerField;
    cdsInstrumentNoStockREGIONALBONDS: TIntegerField;
    cdsInstrumentNoStockCOUNTINGDAYS_METHOD: TIntegerField;
    cdsInstrumentNoStockACCRUEDDAYS_METHOD: TIntegerField;
    cdsInstrumentNoStockDAYSPERYEAR_METHOD: TIntegerField;
    cdsInstrumentNoStockACCRUEDTYPE: TStringField;
    cdsInstrumentNoStockDECDIGIT: TIntegerField;
    cdsInstrumentNoStockSEDOL: TStringField;
    cdsInstrumentNoStockHAIRCUT: TFloatField;
    cdsInstrumentNoStockLIQUIDITY: TFloatField;
    cdsInstrumentNoStockLASTHAIRCUTDATE: TDateField;
    cdsInstrumentNoStockHCUT_REPO: TFloatField;
    cdsInstrumentNoStockHCUT_MARGIN: TFloatField;
    cdsInstrumentNoStockHCUT_REG: TFloatField;
    cdsInstrumentNoStockAFFIL: TBooleanField;
    cdsInstrumentNoStockLASTHCUT_REPODATE: TDateField;
    cdsInstrumentNoStockLASTHCUT_MARGINDATE: TDateField;
    cdsInstrumentNoStockLASTHCUT_REGDATE: TDateField;
    cdsInstrumentNoStockMODDA: TDateTimeField;
    cdsInstrumentNoStockMODUI: TStringField;
    cdsInstrumentNoStockAPPDA: TDateTimeField;
    cdsInstrumentNoStockAPPUI: TStringField;
    cdsInstrumentNoStockISDEL: TIntegerField;
    cdsInstrumentNoStockID: TLargeintField;
    procedure actViewDataExecute(Sender: TObject);
    procedure actImportSSExecute(Sender: TObject);
    procedure txtSSFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    fPrevDate: TDate;
    fNonStockList: TStringList;

    procedure ImportFromDBF;
    procedure ImportFromXls;
  public
    { Public declarations }
  end;

var
  frmClosingPriceList: TfrmClosingPriceList;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar, FormClosingPriceEdit;

procedure TfrmClosingPriceList.actEditExecute(Sender: TObject);
var
  sStockCode: string;
  iRes: Integer;
begin
  sStockCode := cdsClosingPriceSTK_CODE.AsString;
  iRes       := fNonStockList.IndexOf(sStockCode);

  if iRes <> -1 then
  begin
    inherited;
    cdsClosingPrice.Refresh;
  end;
end;

procedure TfrmClosingPriceList.actImportSSExecute(Sender: TObject);
var
  sFileName,
  sExe: string;
begin
  inherited;
//  fPrevDate := dmGlobal.RemoteServer.DateAppend(dtTransDate.EditValue, -1);

  sFileName := txtSSFile.Text;

  sExe := ExtractFileExt(sFileName);
  if LowerCase(sExe) = '.dbf' then
    ImportFromDBF
  else if LowerCase(sExe) = '.xls' then
    ImportFromXls;

  actViewData.Execute;
end;

procedure TfrmClosingPriceList.actNewExecute(Sender: TObject);
begin
  inherited;
  cdsClosingPrice.Refresh;
end;

procedure TfrmClosingPriceList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsClosingPrice.Close;
  cdsClosingPrice.Params[0].AsDate := dtTransDate.Date;
  cdsClosingPrice.Params[1].AsString := VarToStr(cbMarket.EditValue);
  cdsClosingPrice.Open;
end;

procedure TfrmClosingPriceList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmClosingPriceEit;
end;

procedure TfrmClosingPriceList.FormCreate(Sender: TObject);
begin
  inherited;
  SetKeyFieldsLength(2);
  KeyFields[0] := cdsClosingPriceSTK_DATE;
  KeyFields[1] := cdsClosingPriceSTK_CODE;

  dtTransDate.Date   := dmGlobal.RemoteServer.GetTransDate;
  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuMarket.Active then
      cdsLuMarket.Open;
  end;

  cdsInstrumentNoStock.Close;
  cdsInstrumentNoStock.Open;

  fNonStockList := TStringList.Create;

  cdsInstrumentNoStock.First;
  while not cdsInstrumentNoStock.Eof do
  begin
    fNonStockList.Add(cdsInstrumentNoStockLOCALCODE.AsString);
    cdsInstrumentNoStock.Next;
  end;
end;

procedure TfrmClosingPriceList.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fNonStockList);

  inherited;
end;

procedure TfrmClosingPriceList.ImportFromDBF;
var
  oTargetField: TField;
  i, RecNo, n: Integer;
  oProgress: TfrmProgressBar;
  sMarketCode,
  sStockCode, sLastCode,
  sInstrumentType, sMessage: string;
  bContinue: Boolean;
begin
  inherited;
  bContinue := False;

  sMessage := 'System detect that closing price file already uploaded to Database' + #13 + #10 +
    'Do you want to update existing closing price file?';

  if dbfClosingPrice.IsEmpty then
  begin
    ShowMessage('Choose another Closing Price File! This Closing Price File is empty.');
    Exit;
  end
  else
  begin
    if DateOf(dbfClosingPrice.FieldByName('STK_DATE').AsDateTime) <> DateOf(dtTransDate.Date) then
    begin
      ShowMessage('This closing price transaction date ' + FormatDateTime('dd MMM yyyy', dbfClosingPrice.FieldByName('STK_DATE').AsDateTime)
        + ' different with your transaction date choosed.' + #13
        + 'Choose another closing price File with same transaction date!');
      Exit;
    end;
  end;

  actViewData.Execute;

  if (dbfClosingPrice.FieldByName('STK_DATE').AsDateTime = cdsClosingPriceSTK_DATE.AsDateTime) then
  begin
    if MessageDlg(sMessage, mtConfirmation, mbYesNo, 0) = mrYes then
      bContinue := True;
  end
  else
    bContinue := True;


  if bContinue then
  begin
    dbfClosingPrice.DisableControls;
    oProgress := TfrmProgressBar.Create(Nil);
    Try
//      sMsg    := '';

      oProgress.Show;
      n := dbfClosingPrice.RecordCount;
      dbfClosingPrice.First;

      sMarketCode := dmGlobal.RemoteServer.GetDefaultMarket;

      while not dbfClosingPrice.Eof do
      begin
        RecNo := dbfClosingPrice.RecNo;

        oProgress.ChangeBar(trunc(RecNo / n * 100), 'Processing Stock ' + dbfClosingPriceSTK_CODE.AsString
          + ' for Date ' + FormatDateTime('dd MMM yyyy', dbfClosingPriceSTK_DATE.AsDateTime));

        Try
          cdsClosePrice.Close;
          cdsClosePrice.Params[0].AsDate := dbfClosingPriceSTK_DATE.AsDateTime;
          cdsClosePrice.Params[1].AsString := VarToStr(cbMarket.EditValue);
          cdsClosePrice.Params[2].AsString := dbfClosingPriceSTK_CODE.AsString;
          cdsClosePrice.Open;

          if cdsClosePrice.IsEmpty then
            cdsClosePrice.Append
          else
            cdsClosePrice.Edit;

          cdsClosePriceMARKETCODE.AsString := cdsClosePrice.Params[1].AsString;

          for i := 0 to dbfClosingPrice.FieldCount - 1 do
          begin
            oTargetField := cdsClosePrice.FindField(dbfClosingPrice.Fields[i].FieldName);
            if oTargetField <> nil then
            begin
              oTargetField.Value := dbfClosingPrice.Fields[i].Value;
            end;
          end;

          cdsClosePrice.Post;
          cdsClosePrice.ApplyUpdates(-1);

        Except
          on E: Exception do
          begin
            oProgress.ChangeBarCaption('Error Processing Stock '
              + dbfClosingPriceSTK_CODE.AsString + ' for date '
              + FormatDateTime('dd MMM yyyy', dbfClosingPriceSTK_DATE.AsDateTime));

            if cdsClosePrice.State in dsEditModes then
              cdsClosePrice.Cancel;
          end;
        End;

        dbfClosingPrice.Next;
      end;

    Finally
      FreeAndNil(oProgress);
      dbfClosingPrice.EnableControls;
      ShowMessage('Upload closing price finished.');

    End;
  end;
end;

procedure TfrmClosingPriceList.ImportFromXls;
var
  oExcel, oSheet: OleVariant;
  i, iRows: Integer;
  oProgress: TfrmProgressBar;
  dtClosingPrice: TDateTime;
  sMarket, sStockCode, sStockName: string;
  fLastPrice: Double;
  sMarketCode,
  sStockCodeX, sLastCode,
  sInstrumentType, sMsg: string;
begin
  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Open(txtSSFile.EditValue);

    oSheet := oExcel.WorkBooks[1].WorkSheet[1];
    iRows  := oSheet.Usedrange.Rows.Count;

    oProgress := TfrmProgressBar.Create(nil);
    oProgress.Show;

    iRows := oSheet.LastRow;
    for i := 2 to iRows do
    begin
      oProgress.ChangeBarCaption('Processing Record '
        + IntToStr(i) + ' '
        + oSheet.Cells[i, 1].Value + ' '
        + oSheet.Cells[i, 2].Value + ' '
        + oSheet.Cells[i, 3].Value + ' ');

      Try
        dtClosingPrice  := oSheet.Cells[i, 1].Value;
        sMarket         := oSheet.Cells[i, 2].Value;
        sStockCode      := oSheet.Cells[i, 3].Value;
        sStockName      := oSheet.Cells[i, 4].Value;

        if (TryStrToFloat(oSheet.Cells[i, 6].Value, fLastPrice))
          And (sMarket <> '') And (sStockCode <> '') then
        begin
          cdsClosePrice.Close;
          cdsClosePrice.Params[0].AsDate    := dtClosingPrice;
          cdsClosePrice.Params[1].AsString  := sMarket;
          cdsClosePrice.Params[2].AsString  := sStockCode;
          cdsClosePrice.Open;

          oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing Stock ' + sStockCode
            + ' from Market ' + sMarket
            + ' for Date ' + FormatDateTime('dd MMM yyyy', dtClosingPrice));

          if cdsClosePrice.IsEmpty then
            cdsClosePrice.Append
          else
            cdsClosePrice.Edit;

          cdsClosePriceSTK_DATE.AsDateTime  := dtClosingPrice;
          cdsClosePriceMARKETCODE.AsString  := sMarket;
          cdsClosePriceSTK_CODE.AsString    := sStockCode;
          cdsClosePriceSTK_NAME.AsString    := sStockName;
          cdsClosePriceSTK_CLOS.AsFloat     := fLastPrice;
          cdsClosePrice.Post;
          cdsClosePrice.ApplyUpdates(-1);
        end;

      Except
        on E: Exception do
        begin
          oProgress.ChangeBarCaption('Error Processing Record '
            + IntToStr(i) + ' '
            + oSheet.Cells[i, 1].Value + ' '
            + oSheet.Cells[i, 2] + ' '
            + oSheet.Cells[i, 3] + ' ');

          if cdsClosePrice.State in dsEditModes then
            cdsClosePrice.Cancel;
        end;
      End;

    end;
  finally
    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    FreeAndNil(oProgress);
    MessageDlg('Upload closing price finished.', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmClosingPriceList.txtSSFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sExe, sFileName: string;
begin
  inherited;
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;
    sExe      := ExtractFileExt(sFileName);

    txtSSFile.Text := sFileName;
    if LowerCase(sExe) = '.dbf' then
    begin
      dbfClosingPrice.Close;
      dbfClosingPrice.TableName := txtSSFile.Text;
      dbfClosingPrice.Open;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmClosingPriceList);

end.
