unit FormEIPOAllotmentList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCalendar, dxBar,
  cxBarEditItem, NReportClient, NDatasetContainer, cxClasses, System.Actions,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  System.ImageList, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxButtonEdit,
  Datasnap.DBClient, NClientDataset, ComObj, cxImageComboBox, cxCheckBox,
  dxScrollbarAnnotations;

type
  TfrmEIPOAllotmentList = class(TfrmBrowseData)
    dtTrans: TcxBarEditItem;
    actUpload: TNAction;
    cdsEIPOList: TNClientDataset;
    cdsEIPO: TNClientDataset;
    cdsEIPOListINSTTYPE: TStringField;
    cdsEIPOListEXTREF: TStringField;
    cdsEIPOListSHARE: TStringField;
    cdsEIPOListTRANSDATE: TDateField;
    cdsEIPOListCLIENTACC: TStringField;
    cdsEIPOListSENT_TO_FROM: TStringField;
    cdsEIPOListNOTEDESC: TStringField;
    cdsEIPOListQTY: TFloatField;
    cdsEIPOListAMOUNT: TFloatField;
    cdsEIPOListSETTLEDATE: TDateField;
    cdsEIPOListREASON: TStringField;
    cdsEIPOListSTATUS: TStringField;
    cdsEIPOListINSTRUCTION_TYPE_DESC: TStringField;
    cdsEIPOListREASONINSTRDETAIL: TStringField;
    gvwMasterINSTTYPE: TcxGridDBBandedColumn;
    gvwMasterEXTREF: TcxGridDBBandedColumn;
    gvwMasterSHARE: TcxGridDBBandedColumn;
    gvwMasterCLIENTACC: TcxGridDBBandedColumn;
    gvwMasterSENT_TO_FROM: TcxGridDBBandedColumn;
    gvwMasterNOTEDESC: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterREASON: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE_DESC: TcxGridDBBandedColumn;
    gvwMasterREASONINSTRDETAIL: TcxGridDBBandedColumn;
    OpenDialog: TOpenDialog;
    cdsStockByLocalCode: TNClientDataset;
    cdsStockByLocalCodeINSTRUMENT_ID: TLargeintField;
    cdsStockByLocalCodeINSTRUMENT_CODE: TStringField;
    cdsStockByLocalCodeLOCALCODE: TStringField;
    cdsStockByLocalCodeMARKETCODE: TStringField;
    cdsStockByLocalCodeINSTRUMENT_TYPE_CODE: TStringField;
    cdsStockByLocalCodeSHORTNAME: TStringField;
    cdsStockByLocalCodeLONGNAME: TStringField;
    cdsStockByLocalCodeISSUERNAME: TStringField;
    cdsStockByLocalCodeCCY: TStringField;
    cdsStockByLocalCodeISINCODE: TStringField;
    cdsStockByLocalCodeISINDATE: TDateTimeField;
    cdsStockByLocalCodeMARGIN: TIntegerField;
    cdsStockByLocalCodeSTATUS: TStringField;
    cdsStockByLocalCodeDELISTINGDATE: TDateTimeField;
    cdsStockByLocalCodeLISTINGDATE: TDateTimeField;
    cdsStockByLocalCodeLASTCLSPRICE: TFloatField;
    cdsStockByLocalCodeLASTCPPRICEDATE: TDateField;
    cdsStockByLocalCodeSECTOR: TStringField;
    cdsStockByLocalCodeMODDA: TDateTimeField;
    cdsStockByLocalCodeMODUI: TStringField;
    cdsStockByLocalCodeAPPDA: TDateTimeField;
    cdsStockByLocalCodeAPPUI: TStringField;
    cdsStockByLocalCodeISDEL: TIntegerField;
    cdsStockByLocalCodeID: TLargeintField;
    cdsStockByLocalCodeCATEGORY: TStringField;
    cdsStockByLocalCodeMATURITYDATE: TDateTimeField;
    cdsStockByLocalCodeRATING: TStringField;
    cdsStockByLocalCodeREMARKS: TStringField;
    cdsStockByLocalCodeEFFECTIVEDATE: TDateTimeField;
    cdsStockByLocalCodeOFFERING_PERIODBEG: TDateTimeField;
    cdsStockByLocalCodeOFFERING_PERIODEND: TDateTimeField;
    cdsStockByLocalCodeISSUEDATE: TDateTimeField;
    cdsStockByLocalCodeNO_OFCERTIFICATES: TStringField;
    cdsStockByLocalCodeLEAD_UNDERWRITER: TStringField;
    cdsStockByLocalCodeSELLING_AGENT: TStringField;
    cdsStockByLocalCodeTRUSTEE: TStringField;
    cdsStockByLocalCodeCALCULATE_DAYS_METHOD: TIntegerField;
    cdsStockByLocalCodeCOUPON_IN_YEAR: TIntegerField;
    cdsStockByLocalCodeCOMMONCODE: TStringField;
    cdsStockByLocalCodeDAYSOFYEAR: TIntegerField;
    cdsStockByLocalCodeREGIONALBONDS: TIntegerField;
    cdsStockByLocalCodeCOUNTINGDAYS_METHOD: TIntegerField;
    cdsStockByLocalCodeACCRUEDDAYS_METHOD: TIntegerField;
    cdsStockByLocalCodeDAYSPERYEAR_METHOD: TIntegerField;
    cdsStockByLocalCodeACCRUEDTYPE: TStringField;
    cdsStockByLocalCodeDECDIGIT: TIntegerField;
    cdsStockByLocalCodeSEDOL: TStringField;
    cdsStockByLocalCodeHAIRCUT: TFloatField;
    cdsStockByLocalCodeLIQUIDITY: TFloatField;
    cdsStockByLocalCodeLASTHAIRCUTDATE: TDateField;
    cdsStockByLocalCodeISSUERID: TLargeintField;
    cdsStockByLocalCodeHCUT_REPO: TFloatField;
    cdsStockByLocalCodeHCUT_MARGIN: TFloatField;
    cdsStockByLocalCodeHCUT_REG: TFloatField;
    cdsStockByLocalCodeAFFIL: TBooleanField;
    cdsEIPOListIPOCODE: TStringField;
    cdsEIPOListSTOCKID: TLargeintField;
    cdsEIPOListACCID: TLargeintField;
    cdsEIPOListPRICE: TFloatField;
    cdsEIPOListSTAT_IPO: TStringField;
    cdsEIPOListAPPDATE: TDateTimeField;
    cdsEIPOListAPPTIME: TDateTimeField;
    cdsEIPOListAPPUI: TStringField;
    cdsEIPOListALLDATE: TDateTimeField;
    cdsEIPOListALLTIME: TDateTimeField;
    cdsEIPOListALLUI: TStringField;
    cdsEIPOListDISDATE: TDateTimeField;
    cdsEIPOListDISTIME: TDateTimeField;
    cdsEIPOListDISUI: TStringField;
    cdsEIPOListCCLDATE: TDateTimeField;
    cdsEIPOListCCLTIME: TDateTimeField;
    cdsEIPOListCCLUI: TStringField;
    gvwMasterIPOCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterSTAT_IPO: TcxGridDBBandedColumn;
    gvwMasterAPPDATE: TcxGridDBBandedColumn;
    gvwMasterAPPTIME: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterALLDATE: TcxGridDBBandedColumn;
    gvwMasterALLTIME: TcxGridDBBandedColumn;
    gvwMasterALLUI: TcxGridDBBandedColumn;
    gvwMasterDISDATE: TcxGridDBBandedColumn;
    gvwMasterDISTIME: TcxGridDBBandedColumn;
    gvwMasterDISUI: TcxGridDBBandedColumn;
    gvwMasterCCLDATE: TcxGridDBBandedColumn;
    gvwMasterCCLTIME: TcxGridDBBandedColumn;
    gvwMasterCCLUI: TcxGridDBBandedColumn;
    cdsEIPOListINSDATE: TDateTimeField;
    cdsEIPOListINSTIME: TDateTimeField;
    cdsEIPOListINSUI: TStringField;
    cdsEIPOListALLOTEDQTY: TFloatField;
    cdsEIPOListALLOTEDPRICE: TFloatField;
    cdsEIPOListALLOTEDAMOUNT: TFloatField;
    gvwMasterINSDATE: TcxGridDBBandedColumn;
    gvwMasterINSTIME: TcxGridDBBandedColumn;
    gvwMasterINSUI: TcxGridDBBandedColumn;
    gvwMasterALLOTEDQTY: TcxGridDBBandedColumn;
    gvwMasterALLOTEDPRICE: TcxGridDBBandedColumn;
    gvwMasterALLOTEDAMOUNT: TcxGridDBBandedColumn;
    cdsEIPOListACCNAME: TStringField;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    actApprovedSelected: TNAction;
    actApprovedAll: TNAction;
    cdsEIPOListIPOID: TLargeintField;
    gvwMasterTRANSDATE: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    ApprovedAll1: TMenuItem;
    N1: TMenuItem;
    actEIPOAlloted: TNAction;
    eIPOAlloted1: TMenuItem;
    actAllotedProcess: TNAction;
    actDistributionProcess: TNAction;
    AllotedProcess1: TMenuItem;
    DistributionProcess1: TMenuItem;
    actCancelEIPO: TNAction;
    CanceleIPO1: TMenuItem;
    cdsEIPOListSTATUS_DESC: TStringField;
    gvwMasterSTATUS_DESC: TcxGridDBBandedColumn;
    cdsEIPOIPOID: TLargeintField;
    cdsEIPOIPOCODE: TStringField;
    cdsEIPOINSTTYPE: TStringField;
    cdsEIPOEXTREF: TStringField;
    cdsEIPOSTOCKID: TLargeintField;
    cdsEIPOSHARE: TStringField;
    cdsEIPOTRANSDATE: TDateField;
    cdsEIPOACCID: TLargeintField;
    cdsEIPOCLIENTACC: TStringField;
    cdsEIPOSENT_TO_FROM: TStringField;
    cdsEIPONOTEDESC: TStringField;
    cdsEIPOQTY: TFloatField;
    cdsEIPOPRICE: TFloatField;
    cdsEIPOAMOUNT: TFloatField;
    cdsEIPOSETTLEDATE: TDateField;
    cdsEIPOREASON: TStringField;
    cdsEIPOALLOTEDQTY: TFloatField;
    cdsEIPOALLOTEDPRICE: TFloatField;
    cdsEIPOALLOTEDAMOUNT: TFloatField;
    cdsEIPOSTATUS: TStringField;
    cdsEIPOSTAT_IPO: TStringField;
    cdsEIPOINSDATE: TDateTimeField;
    cdsEIPOINSTIME: TDateTimeField;
    cdsEIPOINSUI: TStringField;
    cdsEIPOAPPDATE: TDateTimeField;
    cdsEIPOAPPTIME: TDateTimeField;
    cdsEIPOAPPUI: TStringField;
    cdsEIPOALLDATE: TDateTimeField;
    cdsEIPOALLTIME: TDateTimeField;
    cdsEIPOALLUI: TStringField;
    cdsEIPODISDATE: TDateTimeField;
    cdsEIPODISTIME: TDateTimeField;
    cdsEIPODISUI: TStringField;
    cdsEIPOCCLDATE: TDateTimeField;
    cdsEIPOCCLTIME: TDateTimeField;
    cdsEIPOCCLUI: TStringField;
    actEIPOOrder: TNAction;
    actEIPOAllotment: TNAction;
    N5: TMenuItem;
    UploadOrdereIPO1: TMenuItem;
    eIPOAlloted2: TMenuItem;
    N6: TMenuItem;
    chkOpen: TcxBarEditItem;
    chkApproved: TcxBarEditItem;
    chkAlloted: TcxBarEditItem;
    chkDistributed: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actApprovedAllExecute(Sender: TObject);
    procedure actEIPOAllotedExecute(Sender: TObject);
    procedure actCancelEIPOExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actEIPOOrderExecute(Sender: TObject);
    procedure actEIPOAllotmentExecute(Sender: TObject);
    procedure actAllotedProcessExecute(Sender: TObject);
    procedure actDistributionProcessExecute(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDate;
  public
    { Public declarations }
  end;

var
  frmEIPOAllotmentList: TfrmEIPOAllotmentList;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar, FormEIPOPenjatahan;

procedure TfrmEIPOAllotmentList.actCancelEIPOExecute(Sender: TObject);
var
  RecIdx: Integer;
  iSuc, iErr: Integer;
  n, i: Integer;
  sMsg, sMsgTemp: string;
begin
  inherited;
  sMsgTemp := '';

  if MessageQuestion('Cancel Selected e-IPO ?') then
  begin
    try
      iSuc := 0;
      iErr := 0;
      n    := gvwMaster.Controller.SelectedRecordCount;
      for i := 0 to n -1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        dmGlobal.RemoteServer.EIPOCanceled(cdsEIPOListIPOID.AsInteger, sMsg);
        sMsgTemp := sMsgTemp + #13 + sMsg;
      end;
    finally
      MessageDlg(sMsgTemp, mtInformation, [mbOk], 0);
      cdsEIPOList.Refresh;
    end;
  end;
end;

procedure TfrmEIPOAllotmentList.actDistributionProcessExecute(Sender: TObject);
var
  sMsg: string;
  dTrans: TDateTime;
begin
  inherited;
  dTrans := VarToDateTime(dtTrans.EditValue);

  if MessageQuestion('Process All Alloted e-IPO ?') then
  begin
    dmglobal.RemoteServer.EIPODistribution(dTrans, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmEIPOAllotmentList.actEIPOAllotedExecute(Sender: TObject);
var
  oForm: TfrmEIPOAlloted;
begin
  inherited;
  try
    oForm := TfrmEIPOAlloted.Create(nil);

    with TfrmEIPOAlloted(oForm) do
    begin
      if not dmGlobal.IntDataLookup.cdsLuAccount.Active then
        dmGlobal.IntDataLookup.cdsLuAccount.Open;

      if not dmGlobal.IntDataLookup.cdsLuInstrumentAll.Active then
        dmGlobal.IntDataLookup.cdsLuInstrumentAll.Open;

      cdsSubject.Close;
      cdsSubject.Params[0].AsInteger := cdsEIPOListIPOID.AsInteger;
      cdsSubject.Open;

      cdsSubject.Edit;
      cdsSubjectALLOTEDQTY.AsFloat    := cdsSubjectQTY.AsFloat;
      cdsSubjectALLOTEDPRICE.AsFloat  := cdsSubjectPRICE.AsFloat;
      cdsSubjectALLOTEDAMOUNT.AsFloat := cdsSubjectAMOUNT.AsFloat;
      cdsSubjectALLDATE.AsDateTime    := FTransDate;
      cdsSubjectALLTIME.AsDateTime    := Now;
      cdsSubjectALLUI.AsString        := dmGlobal.UserID;

      if oForm.ShowModal = mrOk then
      begin
        cdsSubject.Post;
        cdsSubject.ApplyUpdates(-1);

        cdsEIPOList.Refresh;
      end
      else
        cdsSubject.Cancel;
    end;

  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmEIPOAllotmentList.actEIPOAllotmentExecute(Sender: TObject);
var
  sFileName: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iAccID, iStockID: Integer;
  oProgress: TfrmProgressBar;
  sErrorMsg: string;
  sAccNo, sStockCode: string;
  sMsg: string;
  iErr, iSuc: Integer;
  iID, iIDNew: integer;
  iIDNo, iIDNoNew: integer;
  dQTY, dPrice, dAmount: Double;

begin
  inherited;
  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if sFileName = '' then
  begin
    MessageError('There no file can be uploaded...!');
    exit;
  end;

  if FileExists(sFileName) then
  begin
    try
      iSuc := 0;
      iErr := 0;

      if not cdsEIPO.Active then
      begin
        cdsEIPO.Close;
 //       cdsEIPO.Params[0].AsDate    := FTransDate;
        cdsEIPO.Params[0].AsInteger := -1;
        cdsEIPO.Open;
      end;

      oProgress := TfrmProgressBar.Create(Nil);

      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      sStockCode := oSheet.Cells[2, 3].Value;

      cdsStockByLocalCode.Close;
      cdsStockByLocalCode.Params[0].AsString := sStockCode;
      cdsStockByLocalCode.Open;

      if cdsStockByLocalCode.RecordCount = 0 then
      begin
        MessageError('Unregistered Stock Code...!');
        Exit;
      end;

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading E-IPO Data...');
      for i := 2 to iRows do
      begin
        sAccNo := oSheet.Cells[i, 5].Value;

        dmGlobal.IntDataLookup.cdsluAccountByCode.Close;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Params[0].AsString := sAccNo;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Open;

        if not dmGlobal.IntDataLookup.cdsluAccountByCode.IsEmpty then
        begin
          iAccID := dmGlobal.IntDataLookup.cdsluAccountByCodeACCID.AsInteger;

          dQTY    := oSheet.Cells[i, 8].Value;
          dPrice  := oSheet.Cells[i, 9].Value / oSheet.Cells[i, 8].Value;
          dAmount := oSheet.Cells[i, 9].Value;

          if dmGlobal.RemoteServer.EIPOAllotmentUpdate(VarToDateTime(oSheet.Cells[i, 4].Value), iAccID
              , cdsStockByLocalCodeINSTRUMENT_ID.AsInteger, dQTY, dPrice, dAmount, sMsg) then
          begin
            Inc(iSuc);
          end
          else
          begin
            Inc(iErr);
            sErrorMsg := sMsg;
          end;
        end
        else
        begin
          Inc(iErr);
          sErrorMsg := sErrorMsg +' Unregistered Account No '+ sAccNo + #13;
        end;
      end;
    finally
      oProgress.ChangeBarCaption('Updating E-IPO Data...');
      Application.ProcessMessages;
      cdsEIPO.ApplyUpdates(-1);

      Screen.Cursor := crDefault;
      FreeAndNil(oProgress);

      sMsg := IntToStr(iSuc) + ' data successfully uploaded';
      if iErr > 0 then
        sMsg := sMsg +#13+ IntToStr(iErr) + ' fail to upload with error : '+#13+ sErrorMsg;

      MessageDlg(sMsg, mtInformation, [mbOk], 0);
      cdsEIPOList.Refresh;
    end;

  end;
end;

procedure TfrmEIPOAllotmentList.actEIPOOrderExecute(Sender: TObject);
var
  sFileName: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iAccID, iStockID: Integer;
  oProgress: TfrmProgressBar;
  sErrorMsg: string;
  sAccNo, sStockCode: string;
  sMsg: string;
  iErr, iSuc: Integer;
  iID, iIDNew: integer;
  iIDNo, iIDNoNew: integer;
begin
  inherited;
  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if sFileName = '' then
  begin
    MessageError('There no file can be uploaded...!');
    exit;
  end;

  if FileExists(sFileName) then
  begin
    try
      iSuc := 0;
      iErr := 0;

      if not cdsEIPO.Active then
      begin
        cdsEIPO.Close;
//        cdsEIPO.Params[0].AsDate    := FTransDate;
        cdsEIPO.Params[0].AsInteger := -1;
        cdsEIPO.Open;
      end;

      oProgress := TfrmProgressBar.Create(Nil);

      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      sStockCode := oSheet.Cells[2, 3].Value;

      cdsStockByLocalCode.Close;
      cdsStockByLocalCode.Params[0].AsString := sStockCode;
      cdsStockByLocalCode.Open;

      if cdsStockByLocalCode.RecordCount = 0 then
      begin
        MessageError('Unregistered Stock Code...!');
        Exit;
      end;

      iID      := dmGlobal.RemoteServer.GetSeq('TBL_E_IPO_DATA');
      iIDNew   := iID + iRows - 2;
      iIDNo    := dmGlobal.RemoteServer.GetSeq('TBL_E_IPO_DATA_'+ sStockCode);
      iIDNoNew := iIDNo + iRows - 2;

      dmGlobal.RemoteServer.UpdateSeq('TBL_E_IPO_DATA', iIDNew);
//      dmGlobal.RemoteServer.UpdateSeq('TBL_E_IPO_DATA_'+ sStockCode, iIDNew);
      dmGlobal.RemoteServer.UpdateSeq('TBL_E_IPO_DATA_'+ sStockCode,iIDNoNew);

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading E-IPO Data...');
      for i := 2 to iRows do
      begin
        Inc(iID);
        Inc(iIDNo);

        sAccNo := oSheet.Cells[i, 5].Value;
        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing EIPO for account : ' + QuotedStr(sAccNo));

        dmGlobal.IntDataLookup.cdsluAccountByCode.Close;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Params[0].AsString := sAccNo;
        dmGlobal.IntDataLookup.cdsluAccountByCode.Open;

        if not dmGlobal.IntDataLookup.cdsluAccountByCode.IsEmpty then
        begin
          iAccID := dmGlobal.IntDataLookup.cdsluAccountByCodeACCID.AsInteger;

          cdsEIPO.Append;
          cdsEIPOIPOID.AsInteger       := iID;
          cdsEIPOIPOCODE.AsString      := sStockCode +'-PB-'+ FormatFloat('0000000000', iIDNo);
          cdsEIPOINSTTYPE.AsString     := oSheet.Cells[i, 1].Value;
          cdsEIPOEXTREF.AsString       := oSheet.Cells[i, 2].Value;
          cdsEIPOSTOCKID.AsInteger     := cdsStockByLocalCodeINSTRUMENT_ID.AsInteger;
          cdsEIPOSHARE.AsString        := sStockCode;
          cdsEIPOTRANSDATE.AsDateTime  := VarToDateTime(oSheet.Cells[i, 4].Value);
          cdsEIPOACCID.AsInteger       := iAccID;
          cdsEIPOCLIENTACC.AsString    := sAccno;
          cdsEIPOSENT_TO_FROM.AsString := oSheet.Cells[i, 6].Value;
          cdsEIPONOTEDESC.AsString     := oSheet.Cells[i, 7].Value;
          cdsEIPOQTY.AsFloat           := oSheet.Cells[i, 8].Value;
          cdsEIPOPRICE.AsFloat         := oSheet.Cells[i, 9].Value / oSheet.Cells[i, 8].Value;
          cdsEIPOAMOUNT.AsFloat        := oSheet.Cells[i, 9].Value;
          cdsEIPOSETTLEDATE.AsDateTime := VarToDateTime(oSheet.Cells[i, 10].Value);
          cdsEIPOREASON.AsString       := oSheet.Cells[i, 11].Value;
          cdsEIPOSTATUS.AsString       := oSheet.Cells[i, 12].Value;
          cdsEIPOSTAT_IPO.AsString     := '1';
          cdsEIPOINSDATE.AsDateTime    := FTransDate;
          cdsEIPOINSTIME.AsDateTime    := Now;
          cdsEIPOINSUI.AsString        := dmGlobal.UserID;
          cdsEIPO.Post;

          Inc(iSuc);

        end
        else
        begin
          Inc(iErr);
          sErrorMsg := sErrorMsg +' Unregistered Account No '+ sAccNo + #13;
        end;
      end;
    finally
      oProgress.ChangeBarCaption('Saving E-IPO Data...');
      Application.ProcessMessages;
      cdsEIPO.ApplyUpdates(-1);

      Screen.Cursor := crDefault;
      FreeAndNil(oProgress);

      sMsg := IntToStr(iSuc) + ' data successfully uploaded';
      if iErr > 0 then
        sMsg := sMsg +#13+ IntToStr(iErr) + ' fail to upload with error : '+#13+ sErrorMsg;

//      MessageDlg(sMsg, mtInformation, [mbOk], 0);
//      cdsEIPOList.Refresh;
      if MessageDlg(sMsg, mtInformation, [mbOk], 0) = mrOk then
        begin
          if not cdsEIPOList.Active then
           actRefresh.Execute;
        end;
    end;

  end;
end;

procedure TfrmEIPOAllotmentList.actAllotedProcessExecute(Sender: TObject);
var
  sMsg: string;
  dTrans: TDateTime;
begin
  inherited;
  dTrans := VarToDateTime(dtTrans.EditValue);

  if MessageQuestion('Process All Alloted e-IPO ?') then
  begin
    dmglobal.RemoteServer.EIPOAllotment(dTrans, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);

    cdsEIPOList.Refresh;
  end;
end;

procedure TfrmEIPOAllotmentList.actApprovedAllExecute(Sender: TObject);
var
  sMsg: string;
  dTrans: TDateTime;
begin
  inherited;
  dTrans := VarToDateTime(dtTrans.EditValue);

  if MessageQuestion('Process All Opening e-IPO ?') then
  begin
    dmglobal.RemoteServer.EIPOApproved(dTrans, sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);

    cdsEIPOList.Refresh;
  end;
end;

procedure TfrmEIPOAllotmentList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsEIPOList.Close;
  cdsEIPOList.Params[0].AsDate   := VarToDateTime(dtTrans.EditValue);
  cdsEIPOList.Params[1].AsString := chkOpen.EditValue;
  cdsEIPOList.Params[2].AsString := chkApproved.EditValue;
  cdsEIPOList.Params[3].AsString := chkAlloted.EditValue;
  cdsEIPOList.Params[4].AsString := chkDistributed.EditValue;
  cdsEIPOList.Params[5].AsString := chkCanceled.EditValue;
  cdsEIPOList.Open;
end;

procedure TfrmEIPOAllotmentList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  //
end;

procedure TfrmEIPOAllotmentList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField   := cdsEIPOListIPOID;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  dtTrans.EditValue := FTransDate;

  chkOpen.EditValue        := 1;
  chkApproved.EditValue    := 0;
  chkAlloted.EditValue     := 0;
  chkDistributed.EditValue := 0;
  chkCanceled.EditValue    := 0;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuEIPOTikcerList.Active then
      cdsLuEIPOTikcerList.Open;

    if not cdsluEIPOInstrType.Active then
      cdsluEIPOInstrType.Open;
  end;
end;

end.
