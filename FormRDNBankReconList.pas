unit FormRDNBankReconList;

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
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxDBLookupComboBox,
  cxBarEditItem, cxButtonEdit, NClientDataset, Datasnap.DBClient, cxCalendar,
  cxCheckBox, ComObj, System.StrUtils, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxDateRanges,
  dxScrollbarAnnotations, DateUtils;

type
  TfrmRDNBankReconList = class(TfrmBrowseData)
    edBankName: TcxBarEditItem;
    edFileName: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    ImportFilesDialog: TOpenDialog;
    cdsBankReconcileTmp: TClientDataSet;
    cdsBankReconcileTmpTRDATE: TDateField;
    cdsBankReconcileTmpBNCODE: TStringField;
    cdsBankReconcileTmpBNACCNO: TStringField;
    cdsBankReconcileTmpCCY: TStringField;
    cdsBankReconcileTmpSALDO: TFloatField;
    cdsBankReconcileTmpBNACCNAME: TStringField;
    cdsBankReconcileTmpRDNPOS: TFloatField;
    cdsBankReconcileTmpDIFF_AMOUNT: TFloatField;
    cdsBankReconcileTmpACCID: TIntegerField;
    cdsBankReconcileTmpACCCODE: TStringField;
    cdsBankReconcileTmpACCNAME: TStringField;
    cdsBankReconcileTmpACCINIT: TStringField;
    cdsBankReconcileTmpACCBANKID: TIntegerField;
    cdsBankReconcileTmpBANKACCNO: TStringField;
    cdsBankReconcileTmpBNINITIAL: TStringField;
    cdsRDNPosition: TNClientDataset;
    cdsRDNPositionACCID: TIntegerField;
    cdsRDNPositionLDGSEQID: TIntegerField;
    cdsRDNPositionACCNO: TStringField;
    cdsRDNPositionACCNAME: TStringField;
    cdsRDNPositionACCBANKID: TIntegerField;
    cdsRDNPositionBNCODE: TStringField;
    cdsRDNPositionBANKACCNO: TStringField;
    cdsRDNPositionBANKACCNAME: TStringField;
    cdsRDNPositionBANKBRANCH: TStringField;
    cdsRDNPositionCCY: TStringField;
    cdsRDNPositionRDNPOS: TFloatField;
    cdsRDNPositionACCBANKCODE: TStringField;
    cdsRDNPositionLDGTYPE: TStringField;
    cdsRDNPositionBNINITIAL: TStringField;
    gvwMasterTRDATE: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBNACCNO: TcxGridDBBandedColumn;
    gvwMasterCCY: TcxGridDBBandedColumn;
    gvwMasterSALDO: TcxGridDBBandedColumn;
    gvwMasterBNACCNAME: TcxGridDBBandedColumn;
    gvwMasterRDNPOS: TcxGridDBBandedColumn;
    gvwMasterDIFF_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBNINITIAL: TcxGridDBBandedColumn;
    dtTrade: TcxBarEditItem;
    chkDifferent: TcxBarEditItem;
    actSynchronize: TNAction;
    SynchronizeDatafromBank1: TMenuItem;
    cdsAccountBySIDNo: TNClientDataset;
    cdsAccountBySIDNoSIDNo: TStringField;
    cdsAccountBySIDNoACCCODE: TStringField;
    cdsAccountBySIDNoACCNAME: TStringField;
    cdsAccountBySIDNoACCTYPE: TStringField;
    cdsAccountBySIDNoACCID: TIntegerField;
    cdsAccountBanks: TNClientDataset;
    cdsAccountBanksACCBANKID: TIntegerField;
    cdsAccountBanksACCBANKCODE: TStringField;
    cdsAccountBanksCCYCODE: TStringField;
    cdsAccountBanksACCID: TIntegerField;
    cdsAccountBanksBNCODE: TStringField;
    cdsAccountBanksBANKACCNO: TStringField;
    cdsAccountBanksBANKACCNAME: TStringField;
    cdsAccountBanksBANKBRANCH: TStringField;
    cdsAccountBanksISRDN: TStringField;
    cdsAccountBanksBANKTYPE: TStringField;
    cdsAccountBanksBNCHGSTYPE: TStringField;
    cdsAccountBanksACTLED_SEQID: TIntegerField;
    cdsAccountBanksCBEST_CODE: TStringField;
    cdsAccountBanksBANK_DEFAULT: TStringField;
    cdsAccountBanksSTAT: TStringField;
    cdsAccountBanksMODDA: TDateTimeField;
    cdsAccountBanksMODUI: TStringField;
    cdsAccountBanksAPPDA: TDateTimeField;
    cdsAccountBanksAPPUI: TStringField;
    cdsAccountBanksUNDER4Y: TIntegerField;
    cdsAccountBanksUNDER4YDA: TDateTimeField;
    cdsAccountBanksNOTES4Y: TStringField;
    cdsAccountBanksISDEL: TIntegerField;
    cdsAccountBanksID: TLargeintField;
    cdsAccountBanksBNACCID: TStringField;
    cdsAccountBanksPAYMENT_BANK: TStringField;
    cdsAccountBankssidNo: TStringField;
    cdsAccountBanksACCCODE: TStringField;
    cdsAccountBanksACCNAME: TStringField;
    cdsAccountBanksACCTYPE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure edFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dtTradePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure edBankNameChange(Sender: TObject);
    procedure actSynchronizeExecute(Sender: TObject);
  private
    fSystemDate: TDateTime;

    procedure LoadRDNPosition;
    procedure FilterByZero;

    function GetDateLongformat(ADateString: string; out AYear: word; out AMonth: string; out ADay: word): string;

    procedure ProcessingUploadFromBMCsv(AfileName: string);
    procedure ProcessingUploadFromBMXls(AfileName: string);
    //New Format Bank Mandiri
    procedure ProcessingUploadFromMandiriCSV(AFile: string);
  public
    { Public declarations }
    procedure UploadByExcel(AFileName: string);
    procedure UploadFromBMRI(AfileName: string; AFileType: integer);
    procedure UploadFromBCA(AFileName: string);
  end;

var
  frmRDNBankReconList: TfrmRDNBankReconList;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar, FormPleaseWait, FormInboxRDNReconcile;

procedure TfrmRDNBankReconList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  LoadRDNPosition;
end;

procedure TfrmRDNBankReconList.actSynchronizeExecute(Sender: TObject);
var
  sDC: string;
  dAmount: Double;
  i, n, RecIdx: integer;
  oProgress: TfrmProgressBar;
  iDep, iWit, iReject: Integer;
  sErrorMsg, sErrorTmp: string;
  sDesc, sMsg, sErrMsg, sErrMsgTmp: string;
  iFailed: integer;
  bOk: Boolean;
  oInbox: TfrmInboxRDNRecon;
  dtValue: TDateTime;
begin
  inherited;
  iDep    := 0;
  iWit    := 0;
  iReject := 0;
  iFailed := 0;

  sErrorMsg := '';
  sErrMsg   := '';
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageQuestion('Synchronize RDN Bank Reconcile ???') then
    begin
      oInbox := TfrmInboxRDNRecon.Create(nil);
      TfrmInboxRDNRecon(oInbox).dtValue.EditValue       := fSystemDate;
      TfrmInboxRDNRecon(oInbox).edDescription.EditValue := '';

      if oInbox.ShowModal = mrOk then
      begin
        dtValue := TfrmInboxRDNRecon(oInbox).dtValue.EditValue;
        sDesc   := TfrmInboxRDNRecon(oInbox).edDescription.EditValue;
      end
      else
      begin
        FreeAndNil(oInbox);
        exit;
      end;

      try
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress := TfrmProgressBar.Create(nil);
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Voucher ' +
            QuotedStr(cdsBankReconcileTmpACCCODE.AsString+'-'+cdsBankReconcileTmpACCNAME.AsString));

          if cdsBankReconcileTmpDIFF_AMOUNT.AsFloat <> 0 then
          begin
            try
              if cdsBankReconcileTmpDIFF_AMOUNT.AsFloat > 0 then
              begin
                sDC     := 'D';
                dAmount := cdsBankReconcileTmpDIFF_AMOUNT.AsFloat;

                Inc(iDep);
              end
              else
              begin
                sDC := 'C';
                dAmount := cdsBankReconcileTmpDIFF_AMOUNT.AsFloat * -1;

                Inc(iWit);
              end;

              if not dmGlobal.RemoteServer.RDNSynchronize(cdsBankReconcileTmpACCID.AsLargeInt, sDC, dtValue, dAmount, sDesc, sErrMsgTmp) then
              begin
                inc(iFailed);
                if sErrMsg <> '' then
                  sErrMsg := sErrMsg + #13#10;
                sErrMsg := sErrMsg + sErrMsgTmp;
              end;
            except
              on E: Exception do
              begin
                if sErrorTmp <> E.Message then
                begin
                  sErrorTmp := E.Message;
                  if sErrorMsg <> '' then
                    sErrorMsg := sErrorMsg + #13#10;
                  sErrorMsg := sErrorMsg + sErrorTmp;
                end;

                Inc(iReject);
              end;
            end;
          end;
        end;

        MessageDlg('Deposit : '+ IntToStr(iDep) +', Withdraw : '+ IntToStr(iWit) +'Error : '+ IntToStr(iReject) +#13+
          'Error Message : '+ sErrorMsg, mtInformation, [MbOk], 0);
      finally
        FreeAndNil(oInbox);
        FreeAndNil(oProgress);
      end;
    end;
  end;
end;

procedure TfrmRDNBankReconList.dtTradePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//  LoadRDNPosition;
end;

procedure TfrmRDNBankReconList.dxBarButton1Click(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  i, j: Integer;
  sBankAccNo, sFileExt: string;
  dDate: Double;
  sMsg: string;
  bCon: Boolean;
begin
  inherited;
  LoadRDNPosition;
  bCon := True;

  if edFileName.EditValue = '' then
  begin
    MessageError('File name must not be empty');
    Abort;
  end;

  if not FileExists(edFileName.EditValue) then
  begin
    MessageError('File '+edFileName.EditValue+' not exist');
    Abort;
  end;

  sFileExt := ExtractFileExt(edFileName.EditValue);

  if (sFileExt = '.xls') or (sFileExt = '.xlsx') then
  begin
    if edBankName.EditValue = 'BMAN' then //Bank Mandiri
      UploadFromBMRI(edFileName.EditValue, 2)
    else
    UploadByExcel(sMsg);
  end
  else if (sFileExt = '.csv') then
  begin
    if edBankName.EditValue = 'BMAN' then //Bank Mandiri
      UploadFromBMRI(edFileName.EditValue, 1)
    else
      bCon := False;
  end
  else if (sFileExt = '.txt') then
  begin
    if edBankname.editValue = 'BCA' then
      UploadFromBCA(edFileName.EditValue)
    else
      bCon := False;
  end;

  if not bCon then
    MessageInformation('Unknown format upload by Bank Name !');
end;

procedure TfrmRDNBankReconList.edBankNameChange(Sender: TObject);
begin
  inherited;
  LoadRDNPosition;
end;

procedure TfrmRDNBankReconList.edFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
//  ImportFilesDialog.Filter := 'Excel File|*.xls';

  if ImportFilesDialog.Execute then
    sFileName := ImportFilesDialog.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    edFileName.EditValue := sFileName;
end;

procedure TfrmRDNBankReconList.FilterByZero;
begin
  if chkDifferent.EditValue = '1' then cdsBankReconcileTmp.Filtered := True else cdsBankReconcileTmp.Filtered := False;
end;

procedure TfrmRDNBankReconList.FormCreate(Sender: TObject);
begin
  inherited;
  fSystemDate := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankRDN.Close;
    cdsLuBankRDN.Open;
  end;
end;

procedure TfrmRDNBankReconList.FormShow(Sender: TObject);
begin
  inherited;
  dtTrade.EditValue := fSystemDate;
end;

function TfrmRDNBankReconList.GetDateLongformat(ADateString: string; out AYear: word; out AMonth: string; out ADay: word): string;
var
  sResult: TArray<string>;
begin
  sResult := aDateString.Split([' ']);

  AYear  := StrToInt(sResult[2]);
  AMonth := sResult[1];
  ADay   := StrToInt(sResult[0]);

  Result := sResult[0] +' '+ sResult[1] +' '+ sResult[2];
end;

procedure TfrmRDNBankReconList.LoadRDNPosition;
begin
  Screen.Cursor := crHourGlass;

  if not VarIsNull(dtTrade.EditValue) then
  begin
    cdsRDNPosition.Close;
    cdsRDNPosition.Params[0].AsDate   := dtTrade.EditValue;
    cdsRDNPosition.Params[1].AsString := edBankName.EditValue;
    cdsRDNPosition.Open;

    cdsBankReconcileTmp.Close;
    cdsBankReconcileTmp.CreateDataSet;

    cdsBankReconcileTmp.DisableControls;
    cdsRDNPosition.DisableControls;

    cdsRDNPosition.First;
    while not cdsRDNPosition.Eof do
    begin
      cdsBankReconcileTmp.Append;
      cdsBankReconcileTmpTRDATE.AsDateTime   := dtTrade.EditValue;
      cdsBankReconcileTmpBNCODE.AsString     := cdsRDNPositionBNCODE.AsString;
      cdsBankReconcileTmpACCID.AsInteger     := cdsRDNPositionACCID.AsInteger;
      cdsBankReconcileTmpACCCODE.AsString    := cdsRDNPositionACCNO.AsString;
      cdsBankReconcileTmpACCBANKID.AsInteger := cdsRDNPositionACCBANKID.AsInteger;
      cdsBankReconcileTmpRDNPOS.AsFloat      := cdsRDNPositionRDNPOS.AsFloat;
      cdsBankReconcileTmpACCNAME.AsString    := cdsRDNPositionACCNAME.AsString;
      cdsBankReconcileTmpBANKACCNO.AsString  := cdsRDNPositionBANKACCNO.AsString;
      cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := - cdsRDNPositionRDNPOS.AsFloat;
      cdsBankReconcileTmpBNINITIAL.AsString  := cdsRDNPositionBNINITIAL.AsString;
      cdsBankReconcileTmp.Post;

      cdsRDNPosition.Next;
    end;
    FilterByZero;

    cdsBankReconcileTmp.EnableControls;
    cdsRDNPosition.EnableControls;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmRDNBankReconList.UploadByExcel(AFileName: string);
var
  oExcel, oSheet: OleVariant;
  i, j, iErr, iSuc: Integer;
  sBankAccNo, sFileName, sMsg: string;
  dDate: Double;
  oErrMsg, oSucMsg: TStringList;
  bCon: Boolean;
begin
  iErr := 0;
  iSuc := 0;
  bCon := True;

  oErrMsg := TStringList.Create;
  oSucMsg := TStringList.Create;

  try
    Screen.Cursor := crHourGlass;
    cdsBankReconcileTmp.DisableControls;

    oExcel    := CreateOleObject('Excel.Application');
    oExcel.WorkBooks.Open(AFileName);
    oExcel.DisplayAlerts := False;

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    i := 2;

    dDate := oSheet.Cells[i, 1].Value;
    if dDate <> dtTrade.EditValue then
      bCon := MessageQuestion('Upload date is not same as filtered date, Continue ?');

    if bCon then
    begin
      repeat
        dDate := oSheet.Cells[i, 1].Value;

        if dDate = dtTrade.EditValue then
        begin
          sBankAccNo := oSheet.Cells[i, 2].Value;

          try
            if cdsBankReconcileTmp.Locate('BANKACCNO', sBankAccNo, []) then
            begin
              cdsBankReconcileTmp.Edit;
              cdsBankReconcileTmpTRDATE.AsDateTime   := dDate;
              cdsBankReconcileTmpBNCODE.AsString     := edBankName.EditValue;
              cdsBankReconcileTmpBNACCNO.AsString    := sBankAccNo;
              cdsBankReconcileTmpCCY.AsString        := dmGlobal.RemoteServer.GetLocalCCY;
              cdsBankReconcileTmpSALDO.AsFloat       := StrToFloatDef(ReplaceStr(oSheet.Cells[i, 5].Value, ',', ''), 0);
              cdsBankReconcileTmpBNACCNAME.AsString  := '';
              cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
              cdsBankReconcileTmp.Post;
            end
            else
            begin
              cdsBankReconcileTmp.Append;
              cdsBankReconcileTmpTRDATE.AsDateTime   := dDate;
              cdsBankReconcileTmpBNCODE.AsString     := edBankName.EditValue;
              cdsBankReconcileTmpBNACCNO.AsString    := sBankAccNo;
              cdsBankReconcileTmpCCY.AsString        := dmGlobal.RemoteServer.GetLocalCCY;
              cdsBankReconcileTmpSALDO.AsFloat       := StrToFloatDef(ReplaceStr(oSheet.Cells[i, 5].Value, ',', ''), 0);
              cdsBankReconcileTmpBNACCNAME.AsString  := '';
              cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
              cdsBankReconcileTmp.Post;
            end;
          except
            on e:exception do
            begin
              oErrMsg.Add('   - '+ sBankAccNo +' failed to upload, error : '+ e.Message);
            end;
          end;
        end;

        Inc(i);
        sBankAccNo := oSheet.Cells[i, 2].Value;
      until (sBankAccNo = '');
    end;

  finally
    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    cdsBankReconcileTmp.EnableControls;
    Screen.Cursor := crDefault;

    FreeAndNil(oErrMsg);
    FreeAndNil(oSucMsg);

    if oSucMsg.Count > 0 then
      sMsg   := FormatFloat('#,##0', oSucMsg.Count) +' data has been Upload';

    if oErrMsg.Count > 0 then
    begin
      if sMsg <> '' then
        sMsg := sMsg +#10#13;
      sMsg := sMsg + FormatFloat('#,##0', oErrMsg.Count) +' data failed Upload'+#10#13+ oErrMsg.Text;
    end;
  end;

end;

procedure TfrmRDNBankReconList.UploadFromBCA(AFileName: string);
var
  oDataList, oData, oFailedMsg: TStringList;
  i, iCount: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dtDate, dtDateTime: TDateTime;
  sDate, sDateTime: string;
  sBankAccNo, sAmount, sSIDNo,
  sCustodyName, sCustodyCode,
  sMsg, sErrorMsg: string;
  fAmount: Double;
  bCon: Boolean;
  iFailed, iDone: Integer;
  oPleaseWait: TfrmPlaseWait;
begin
  try
    bCon       := True;
    iCount     := 0;
    iFailed    := 0;
    iDone      := 0;
    sMsg       := '';
    sErrorMsg  := '';
    oDataList  := TStringList.Create;
    oData      := TStringList.Create;
    oFailedMsg := TStringList.Create;

    oPleaseWait := TfrmPlaseWait.Create(nil);
    oPleaseWait.Show;
    Application.ProcessMessages;

    oDataList.LoadFromFile(AfileName);
    //Check date before uploading
    dmGlobal.ParseDelimited(oData, oDataList.Strings[0], ';');
    sDate      := oData.Strings[8];
    sDateTime  := oData.Strings[9];
    iYear      := StrToIntDef(Copy(sDate, 1, 4), 0);
    iMonth     := StrToIntDef(Copy(sDate, 5, 2), 0);
    iDay       := StrToIntDef(Copy(sDate, 7, 2), 0);
    dtDate     := EncodeDate(iYear, iMonth, iDay);

    if dtDate <> dtTrade.EditValue then
      bCon := MessageQuestion('Upload date is not same as filtered date, Continue ?');

    if bCon then
    begin
      dtDate     := EncodeDate(iYear, iMonth, iDay);
      for i := 0 to oDataList.Count -1 do
      begin
        if oDataList.Strings[i] <> '' then
        begin
          oData.Clear;
          dmGlobal.ParseDelimited(oData, oDataList.Strings[i], ';');

          sDate      := oData.Strings[8];
          sDateTime  := oData.Strings[9];
          iYear      := StrToIntDef(Copy(sDate, 1, 4), 0);
          iMonth     := StrToIntDef(Copy(sDate, 5, 2), 0);
          iDay       := StrToIntDef(Copy(sDate, 7, 2), 0);
          iHour      := StrToIntDef(Copy(sDateTime, 10, 2), 0);
          iMinute    := StrToIntDef(Copy(sDateTime, 12, 2), 0);
          iSecond    := StrToIntDef(Copy(sDateTime, 14, 2), 0);

          dtDate     := EncodeDate(iYear, iMonth, iDay);
          sSIDNo     := oData.Strings[3];

          sCustodyName := oData.Strings[1];
          sCustodyCode := oData.Strings[4];
          sBankAccNo   := oData.Strings[2];
          fAmount      := StrToFloatDef(ReplaceStr(oData.Strings[7], ',','.'), 0);

          bCon := True;
          if cdsBankReconcileTmp.Locate('BANKACCNO', sBankAccNo, []) then
            cdsBankReconcileTmp.Edit
          else
          begin
            cdsAccountBySIDNo.Close;
            cdsAccountBySIDNo.Params[0].AsString := sSIDNo;
            cdsAccountBySIDNo.Open;

            bCon := not cdsAccountBySIDNo.IsEmpty;
            if bCon then
            begin
              cdsBankReconcileTmp.Append;
              cdsBankReconcileTmpACCID.AsInteger := cdsAccountBySIDNoACCID.AsInteger;
              cdsBankReconcileTmpACCCODE.AsString := cdsAccountBySIDNoACCCODE.AsString;
              cdsBankReconcileTmpACCNAME.AsString := cdsAccountBySIDNoACCNAME.AsString;
            end
            else
            begin
              Inc(iFailed);
              if sErrorMsg <> '' then
                sErrorMsg := sErrorMsg + #13#10;
              sErrorMsg := sErrorMsg +' >> unregistered SID No : '+ sSIDNo;
            end;
          end;

          if bCon then
          begin
            cdsBankReconcileTmpTRDATE.AsDateTime   := dtDate;
            cdsBankReconcileTmpBNCODE.AsString     := edBankName.EditValue;
            cdsBankReconcileTmpBNACCNO.AsString    := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString        := oData.Strings[6];
            cdsBankReconcileTmpSALDO.AsFloat       := fAmount;
            cdsBankReconcileTmpBNACCNAME.AsString  := oData.Strings[5];
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;

            Inc(iDone);
          end;

          Inc(iCount);
        end;
      end;
    end;
  finally
    FreeAndNil(oDataList);
    FreeAndNil(oData);
    FreeAndNil(ofailedmsg);
    FreeAndNil(oPleaseWait);

    if iDone > 0 then
      sMsg := formatFloat('#,##0', iDone) +' data has been uploaded';

    if iFailed > 0 then
    begin
      if sMsg <> '' then
        sMsg := sMsg + #13#10;
      sMsg := sMsg + formatFloat('#,##0', iFailed) +' data unabled to uploaded'+ #13#10 + sErrorMsg;
    end;

    MessageInformation(sMsg);
  end;
end;

procedure TfrmRDNBankReconList.UploadFromBMRI(AfileName: string;
  AFileType: integer);
begin
  {
    File Type 1: csv; 2: xls/xlsx
  }

  if AFileType = 1 then
    ProcessingUploadFromMandiriCSV(AfileName)
//    ProcessingUploadFromBMCsv(AfileName)
  else
    ProcessingUploadFromBMXls(AfileName);
end;

procedure TfrmRDNBankReconList.ProcessingUploadFromBMCsv(AfileName: string);
var
  oDataList, oData: TStringList;
  i, iCount: Integer;
  iYear, iMonth, iDay,
  iHour, iMinute, iSecond: Integer;
  dtDate, dtDateTime: TDateTime;
  sDate, sDateTime: string;
  sBankAccNo, sAmount, sSIDNo,
  sCustodyName, sCustodyCode,
  sMsg, sErrorMsg: string;
  fAmount: Double;
  bCon: Boolean;
  iFailed, iDone: Integer;
  oPleaseWait: TfrmPlaseWait;
begin
  try
    bCon       := True;
    iCount     := 0;
    iFailed    := 0;
    iDone      := 0;
    sMsg       := '';
    sErrorMsg  := '';
    oDataList  := TStringList.Create;
    oData      := TStringList.Create;

    oPleaseWait := TfrmPlaseWait.Create(nil);
    oPleaseWait.Show;
    Application.ProcessMessages;

    oDataList.LoadFromFile(AfileName);
    //Check date before uploading
    dmGlobal.ParseDelimited(oData, oDataList.Strings[0], '||');

    sDate      := oData.Strings[5];
    sDateTime  := oData.Strings[6];
    iYear      := StrToIntDef(Copy(sDate, 1, 4), 0);
    iMonth     := StrToIntDef(Copy(sDate, 5, 2), 0);
    iDay       := StrToIntDef(Copy(sDate, 7, 2), 0);
    dtDate     := EncodeDate(iYear, iMonth, iDay);

    if dtDate <> dtTrade.EditValue then
      bCon := MessageQuestion('Upload date is not same as filtered date, Continue ?');

    if bCon then
    begin
      for i := 0 to oDataList.Count -1 do
      begin
        if oDataList.Strings[i] <> '' then
        begin
          oData.Clear;
          dmGlobal.ParseDelimited(oData, oDataList.Strings[i], '||');

          sDate      := oData.Strings[5];
          sDateTime  := oData.Strings[6];
          iYear      := StrToIntDef(Copy(sDate, 1, 4), 0);
          iMonth     := StrToIntDef(Copy(sDate, 5, 2), 0);
          iDay       := StrToIntDef(Copy(sDate, 7, 2), 0);
          iHour      := StrToIntDef(Copy(sDateTime, 10, 2), 0);
          iMinute    := StrToIntDef(Copy(sDateTime, 12, 2), 0);
          iSecond    := StrToIntDef(Copy(sDateTime, 14, 2), 0);

          dtDate     := EncodeDate(iYear, iMonth, iDay);
  //        dtDateTime := EncodeDateTime(iYear, iMonth, iDay, iHour, iMinute, iSecond, 0);

          sCustodyName := oData.Strings[0];
          sCustodyCode := oData.Strings[8];
          sBankAccNo   := oData.Strings[2];
          fAmount      := StrToFloatDef(ReplaceStr(oData.Strings[4], ',','.'), 0);
          sSIDNo       := trim(oData.Strings[7]);

          bCon := True;
          if cdsBankReconcileTmp.Locate('BANKACCNO', sBankAccNo, []) then
            cdsBankReconcileTmp.Edit
          else
          begin
            cdsAccountBySIDNo.Close;
            cdsAccountBySIDNo.Params[0].AsString := sSIDNo;
            cdsAccountBySIDNo.Open;

            bCon := not cdsAccountBySIDNo.IsEmpty;
            if bCon then
            begin
              cdsBankReconcileTmp.Append;
              cdsBankReconcileTmpACCID.AsInteger  := cdsAccountBySIDNoACCID.AsInteger;
              cdsBankReconcileTmpACCCODE.AsString := cdsAccountBySIDNoACCCODE.AsString;
              cdsBankReconcileTmpACCNAME.AsString := cdsAccountBySIDNoACCNAME.AsString;
            end
            else
            begin
              Inc(iFailed);
              if sErrorMsg <> '' then
                sErrorMsg := sErrorMsg + #13#10;
              sErrorMsg := sErrorMsg +' >> unregistered SID No : '+ sSIDNo;
            end;
          end;

          if bCon then
          begin
            cdsBankReconcileTmpTRDATE.AsDateTime   := dtDate;
            cdsBankReconcileTmpBNCODE.AsString     := edBankName.EditValue;
            cdsBankReconcileTmpBNACCNO.AsString    := sBankAccNo;
            cdsBankReconcileTmpCCY.AsString        := oData.Strings[3];
            cdsBankReconcileTmpSALDO.AsFloat       := fAmount;
            cdsBankReconcileTmpBNACCNAME.AsString  := oData.Strings[1];
            cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
            cdsBankReconcileTmp.Post;

            Inc(iDone);
          end;

          Inc(iCount);
        end;
      end;
    end;
  finally
    FreeAndNil(oDataList);
    FreeAndNil(oData);
    FreeAndNil(oPleaseWait);

    if iDone > 0 then
      sMsg := formatFloat('#,##0', iDone) +' data has been uploaded';

    if iFailed > 0 then
    begin
      if sMsg <> '' then
        sMsg := sMsg + #13#10;
      sMsg := sMsg + formatFloat('#,##0', iFailed) +' data unabled to uploaded'+ #13#10 + sErrorMsg;
    end;

    MessageInformation(sMsg);
  end;
end;

procedure TfrmRDNBankReconList.ProcessingUploadFromBMXls(AfileName: string);
var
  oExcel, oSheet: OleVariant;
  oErrMsg, oSucMsg: TStringList;
  iFailed, iDone, i: integer;
  sCcy, sAccType, sBankAccNo, sAvailBalance,
  sDate, sTime, sMsg: string;
  bCon: Boolean;
begin
  iFailed := 0;
  iDone   := 0;
  bCon    := True;

  oErrMsg := TStringList.Create;
  oSucMsg := TStringList.Create;

  try
    Screen.Cursor := crHourGlass;
    cdsBankReconcileTmp.DisableControls;

    oExcel    := CreateOleObject('Excel.Application');
    oExcel.WorkBooks.Open(AFileName);
    oExcel.DisplayAlerts := False;

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    i      := 9;
    sDate  := oSheet.Cells[4, 5].Value;

    //Check date before uploading
    if sDate <> FormatDateTime('dd mmmm yyyy', dtTrade.EditValue) then
      bCon := MessageQuestion('Upload date is not same as filtered date, Continue ?');

    if bCOn then
    begin
      repeat
//        if sDate = FormatDateTime('dd mmmm yyyy', dtTrade.EditValue) then
  //      begin
          sCcy          := oSheet.Cells[i, 3].value;
          sAccType      := oSheet.Cells[i, 4].value;
          sBankAccNo    := oSheet.Cells[i, 6].Value;
          sAvailBalance := oSheet.Cells[i, 10].value;

          if (sAccType = 'Saving Account') then
          begin
            try
              if cdsBankReconcileTmp.Locate('BANKACCNO', sBankAccNo, []) then
              begin
                cdsBankReconcileTmp.Edit;
                cdsBankReconcileTmpTRDATE.AsDateTime   := dtTrade.EditValue;
                cdsBankReconcileTmpBNCODE.AsString     := edBankName.EditValue;
                cdsBankReconcileTmpBNACCNO.AsString    := sBankAccNo;
                cdsBankReconcileTmpCCY.AsString        := dmGlobal.RemoteServer.GetLocalCCY;
                cdsBankReconcileTmpSALDO.AsFloat       := StrToFloatDef(ReplaceStr(sAvailBalance, ',', ''), 0);
                cdsBankReconcileTmpBNACCNAME.AsString  := '';
                cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
                cdsBankReconcileTmp.Post;
              end
              else
              begin
                cdsBankReconcileTmp.Append;
                cdsBankReconcileTmpTRDATE.AsDateTime   := dtTrade.EditValue;
                cdsBankReconcileTmpBNCODE.AsString     := edBankName.EditValue;
                cdsBankReconcileTmpBNACCNO.AsString    := sBankAccNo;
                cdsBankReconcileTmpCCY.AsString        := dmGlobal.RemoteServer.GetLocalCCY;
                cdsBankReconcileTmpSALDO.AsFloat       := StrToFloatDef(ReplaceStr(sAvailBalance, ',', ''), 0);
                cdsBankReconcileTmpBNACCNAME.AsString  := '';
                cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
                cdsBankReconcileTmp.Post;
              end;
            except
              on e:exception do
              begin
                oErrMsg.Add('   - '+ sBankAccNo +' failed to upload, error : '+ e.Message);
              end;
            end;
          end;
  //      end;

        i := i + 2;
        sBankAccNo := oSheet.Cells[i, 6].Value;
      until (sBankAccNo = '');
    end;

  finally
    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    cdsBankReconcileTmp.EnableControls;
    Screen.Cursor := crDefault;

    if oSucMsg.Count > 0 then
      sMsg := FormatFloat('#,##0', oSucMsg.Count) +' data has been Upload';

    if oErrMsg.Count > 0 then
    begin
      if sMsg <> '' then
        sMsg := sMsg +#10#13;
      sMsg := sMsg + FormatFloat('#,##0', oErrMsg.Count) +' data failed Upload'+#10#13+ oErrMsg.Text;
    end;

    FreeAndNil(oErrMsg);
    FreeAndNil(oSucMsg);
  end;
end;

procedure TfrmRDNBankReconList.ProcessingUploadFromMandiriCSV(AFile: string);
  function GetAccountBank(AAccountNo: string; ACcy: string): Boolean;
  begin
    cdsAccountBanks.Close;
    cdsaccountBanks.Params[0].AsString := AAccountNo;
    cdsAccountBanks.Params[1].AsString := ACcy;
    cdsAccountBanks.Open;

    Result := (not cdsAccountBanks.IsEmpty) and
              ((cdsAccountBanksBNCODE.AsString = 'BMAN') or (cdsAccountBanksBNCODE.AsString = 'MAN'));
  end;

  function GetMonthNo(AMonthString: string): word;
  begin
    Result := IndexStr(LowerCase(AMonthString),
       ['january', 'february', 'march', 'april', 'may', 'june',
           'july', 'august', 'september', 'october', 'november', 'december']
        ) + 1;
  end;
var
  oDataList, oDataString: TStringList;
  i, iCount, iDone, iFailed: integer;
  oPleaseWait: TfrmPlaseWait;
  bCon: Boolean;
  sBankAccountNo, sPostDate, sCcy: string;
  fCloseBalance: Double;
  sMsg, sErrorMsg: string;
  iYear, iDay: word;
  sMonth: string;
begin
  bCon       := False;
  iCount     := 0;
  iFailed    := 0;
  iDone      := 0;
  sMsg       := '';
  sErrorMsg  := '';

  try
    oPleaseWait := TfrmPlaseWait.Create(nil);
    oPleaseWait.Show;
    Application.ProcessMessages;

    oDataList   := TStringList.Create;
    oDataString := TStringList.Create;

    oDataList.LoadFromFile(AFile);
    for i := 1 to oDataList.Count -1 do
    begin
      if oDataList.Strings[i] <> '' then
      begin
        oDataString.Clear;
        dmGlobal.ParseDelimited(oDataString, oDataList.Strings[i], ';');

        sBankAccountNo := oDataString.Strings[0];
        sCcy           := oDataString.Strings[1];
        sPostDate      := GetDateLongformat(oDataString.Strings[2], iYear, sMonth, iDay);
        fCloseBalance  := StrToFloatDef(ReplaceStr(oDataString.Strings[7], ',','.'), 0);

        bCon := True;
        if GetAccountBank(sBankAccountNo, sCcy) then
        begin
          if cdsBankReconcileTmp.Locate('BANKACCNO', sBankAccountNo, []) then
            cdsBankReconcileTmp.Edit
          else
          begin
            cdsBankReconcileTmp.Append;
            cdsBankReconcileTmpACCID.AsInteger  := cdsAccountBySIDNoACCID.AsInteger;
            cdsBankReconcileTmpACCCODE.AsString := cdsAccountBySIDNoACCCODE.AsString;
            cdsBankReconcileTmpACCNAME.AsString := cdsAccountBySIDNoACCNAME.AsString;
          end;
        end
        else
        begin
          if cdsAccountBankssidNo.AsString <> '' then
          begin
            cdsBankReconcileTmp.Append;
            cdsBankReconcileTmpACCID.AsInteger  := cdsAccountBySIDNoACCID.AsInteger;
            cdsBankReconcileTmpACCCODE.AsString := cdsAccountBySIDNoACCCODE.AsString;
            cdsBankReconcileTmpACCNAME.AsString := cdsAccountBySIDNoACCNAME.AsString;
          end
          else
          begin
            bCon := False;

            Inc(iFailed);
            if sErrorMsg <> '' then
              sErrorMsg := sErrorMsg + #13#10;
            sErrorMsg := sErrorMsg +' >> unregistered Bank Account No : '+ sBankAccountNo;
          end;
        end;

        if bCon then
        begin
          cdsBankReconcileTmpTRDATE.AsDateTime   := EncodeDate(iYear, GetMonthNo(sMonth), iDay);;
          cdsBankReconcileTmpBNCODE.AsString     := cdsAccountBanksBNCODE.AsString;
          cdsBankReconcileTmpBNACCNO.AsString    := sBankAccountNo;
          cdsBankReconcileTmpCCY.AsString        := sCcy;
          cdsBankReconcileTmpSALDO.AsFloat       := fCloseBalance;
          cdsBankReconcileTmpBNACCNAME.AsString  := cdsAccountBanksBANKACCNAME.AsString;
          cdsBankReconcileTmpDIFF_AMOUNT.AsFloat := dmGlobal.RoundFloatNumber(cdsBankReconcileTmpSALDO.AsFloat - cdsBankReconcileTmpRDNPOS.AsFloat, 2);
          cdsBankReconcileTmp.Post;

          Inc(iDone);
        end;
      end;
    end;
  finally
    sMsg := IntToStr(iDone) +' data has been recon and '+ IntToStr(iFailed) +' has failed to recon';
    if iFailed > 0 then
      sMsg := sMsg + #13#10 + sErrorMsg;

    MessageInformation(sMsg);

    FreeAndNil(oDataList);
    FreeAndNil(oDataString);
    FreeAndNil(oPleaseWait);
  end;
end;

end.
