unit FormAccountList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportRPC, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxCheckBox, cxImageComboBox, cxLabel,
  cxBarEditItem, NReportClient, dxSkinsCore, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, XLSSheetData5, XLSReadWriteII5, ComObj, System.Actions,
  System.ImageList, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, XMLIntf, XMLDoc, dxDateRanges, dxBarCode, cxSpinEdit,
  cxCheckGroup, dxScrollbarAnnotations;

type
  TfrmAccountList = class(TfrmBrowseData)
    cdsAccountList: TNClientDataset;
    actViewData: TNAction;
    actCreateFacilitationAccount: TNAction;
    actCreateWarehouseAccount: TNAction;
    actCreateCrossTomAccount: TNAction;
    actCreateNegoTomAccount: TNAction;
    actCreateSettleAccount: TNAction;
    actCreateTradingErrorAccount: TNAction;
    CreateSubAccount1: TMenuItem;
    FacilitationAccount1: TMenuItem;
    WarehouseAccount1: TMenuItem;
    CrossTomAccount1: TMenuItem;
    NegoTomAccount1: TMenuItem;
    SettleAccount1: TMenuItem;
    radingErrorAccount1: TMenuItem;
    actSetBankAccount: TNAction;
    SetBankAccount1: TMenuItem;
    actViewBankAccount: TNAction;
    ViewBankAccount1: TMenuItem;
    cdsKSEI_SDI_Individual: TNClientDataset;
    cdsKSEI_SDI_Institutional: TNClientDataset;
    cdsKSEI_SDIB: TNClientDataset;
    cdsKSEI_SDIAP: TNClientDataset;
    actCreateSDI: TNAction;
    actCreateSDIB: TNAction;
    actCreateSDIAP: TNAction;
    actCreateExcel: TNAction;
    CreateKSEIExcelFileSubRek0011: TMenuItem;
    CreateKSEISDIFileSubRek0011: TMenuItem;
    SaveDialog: TSaveDialog;
    actSetCustodyAccount: TNAction;
    actViewCustodyAccount: TNAction;
    SetCustodyAccount1: TMenuItem;
    ViewCustodyAccount1: TMenuItem;
    actCreateAllocationAccount: TNAction;
    AllocationAccount1: TMenuItem;
    actCreateREPOAccount: TNAction;
    REPOAccount1: TMenuItem;
    actCreateMarginAccount: TNAction;
    MarginAccount1: TMenuItem;
    actActOLT: TNAction;
    ActivateOnlineTradingAccount1: TMenuItem;
    barSearchAccount: TdxBar;
    edAccNo: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    edEntityCode: TcxBarEditItem;
    edEntityName: TcxBarEditItem;
    BarPages: TdxBar;
    edPages: TcxBarEditItem;
    lbTotalPages: TcxBarEditItem;
    edAccStatus: TcxBarEditItem;
    BarMBrowseBar2: TdxBar;
    cdsAccountListENTTID: TLargeintField;
    cdsAccountListENTTCODE: TStringField;
    cdsAccountListENTNAME: TStringField;
    cdsAccountListACCID: TLargeintField;
    cdsAccountListACCCODE: TStringField;
    cdsAccountListACCNAME: TStringField;
    cdsAccountListACCTYPEDESC: TStringField;
    cdsAccountListISOLT: TStringField;
    cdsAccountListCASHKEEP: TStringField;
    cdsAccountListSTOCKKEEP: TStringField;
    cdsAccountListPRDCODE: TStringField;
    cdsAccountListACC_STS: TStringField;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterISOLT: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    edSearchBy: TcxBarEditItem;
    edAccType: TcxBarEditItem;
    actUploadDataAccount: TNAction;
    cdsUploadDataAccounts: TNClientDataset;
    cdsUploadDataAccountssalesName: TStringField;
    cdsUploadDataAccountsaccountName: TStringField;
    cdsUploadDataAccountsnomerKTP: TStringField;
    cdsUploadDataAccountsnpwp: TStringField;
    cdsUploadDataAccountsaddress1: TStringField;
    cdsUploadDataAccountsaddress2: TStringField;
    cdsUploadDataAccountsaddress3: TStringField;
    cdsUploadDataAccountsprovince: TStringField;
    cdsUploadDataAccountskota: TStringField;
    cdsUploadDataAccountsnegara: TStringField;
    cdsUploadDataAccountskodePos: TStringField;
    cdsUploadDataAccountsnomerTelp: TStringField;
    cdsUploadDataAccountseMail: TStringField;
    cdsUploadDataAccountskodeBankRDN: TStringField;
    cdsUploadDataAccountsbankAccNoRDN: TStringField;
    cdsUploadDataAccountsbankAccNameRDN: TStringField;
    cdsUploadDataAccountsbankBranchRDN: TStringField;
    cdsUploadDataAccountskodeBankPrivate: TStringField;
    cdsUploadDataAccountsbankAccNoPrivate: TStringField;
    cdsUploadDataAccountsbankAccNamePrivate: TStringField;
    cdsUploadDataAccountsbankBranchPrivate: TStringField;
    cdsUploadDataAccountssidNo: TStringField;
    cdsUploadDataAccountsKSEI001: TStringField;
    cdsUploadDataAccountsKSEI004: TStringField;
    cdsUploadDataAccountsstatus: TStringField;
    cdsUploadDataAccountsmodda: TDateTimeField;
    cdsUploadDataAccountsmodui: TStringField;
    OpenDialog: TOpenDialog;
    cdsUploadDataAccountsaccountInit: TStringField;
    UploadDataAccountFromExcelFile1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure DataContainerBeforeOpenEditorDataset(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure actCreateFacilitationAccountExecute(Sender: TObject);
    procedure actCreateWarehouseAccountExecute(Sender: TObject);
    procedure actCreateCrossTomAccountExecute(Sender: TObject);
    procedure actCreateNegoTomAccountExecute(Sender: TObject);
    procedure actCreateSettleAccountExecute(Sender: TObject);
    procedure actCreateTradingErrorAccountExecute(Sender: TObject);
    procedure actSetBankAccountExecute(Sender: TObject);
    procedure actViewBankAccountExecute(Sender: TObject);
    procedure actCreateExcelExecute(Sender: TObject);
    procedure actCreateSDIExecute(Sender: TObject);
    procedure actSetCustodyAccountExecute(Sender: TObject);
    procedure actViewCustodyAccountExecute(Sender: TObject);
    procedure actCreateAllocationAccountExecute(Sender: TObject);
    procedure actCreateAllocationAccountUpdate(Sender: TObject);
    procedure actCreateREPOAccountExecute(Sender: TObject);
    procedure actCreateMarginAccountExecute(Sender: TObject);
    procedure actActOLTExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure edAccNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edAccNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edEntityCodeKeyDown(Sender: TObject; var Key: Word; Shift:
        TShiftState);
    procedure edEntityNameKeyDown(Sender: TObject; var Key: Word; Shift:
        TShiftState);
    procedure cdsAccountListACC_STSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edSearchByPropertiesEditValueChanged(Sender: TObject);
    procedure actUploadDataAccountExecute(Sender: TObject);
  private
    { Private declarations }
    TotalPages: Integer;
    FUsePage: string;
  public
    { Public declarations }
    procedure CreateKSEIExcelFile(AFileName, ACCID: String;
      Out AIndividualFileName, AInstitutionalFileName: String);
    procedure CreateKSEISDIFile(AFileName, ACCID: String;
      Out AIndividualFileName, AInstitutionalFileName: String);
  end;

var
  frmAccountList: TfrmAccountList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccount, DataLookup, FormAccountBank, ClassClientConst, StrUtils,
  FormAccountCustody, FormProgressBar;

procedure TfrmAccountList.actActOLTExecute(Sender: TObject);
begin
  inherited;
  if MessageQuestion('Activated Online Trading Account ?') then
  begin
    if cdsAccountListISOLT.AsString = '1' then
      MessageError('It''s already set as Online Trading Account')
    else
    begin
      if dmGlobal.RemoteServer.CheckChannelOLT(cdsAccountListACCID.AsLargeInt) then
      begin
        dmGlobal.RemoteServer.InitialAccountOLT(cdsAccountListACCID.AsLargeInt);

        MessageDlg('Client has been set as Online Trading Account', mtInformation, [mbOk], 0);
        cdsAccountList.Refresh;
      end
      else
        MessageError('Account must have Online Channel before set as Online Trading Account');
    end;
  end;
end;

procedure TfrmAccountList.actCreateAllocationAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 1;
  sKey := cdsAccountListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountList.actCreateAllocationAccountUpdate(Sender: TObject);
begin
  inherited;
//  TNAction(Sender).Enabled := (cdsAccountListACCSUBTYPE.AsString = 'M')
//    And (cdsAccountListPRDCODE.AsString = 'EQ');
end;

procedure TfrmAccountList.actCreateCrossTomAccountExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if dmGlobal.RemoteServer.CreateSubAccount(cdsAccountListACCID.AsInteger, 'X', sMsg) then
    cdsAccountList.Refresh;

  ShowMessage(sMsg);
end;

procedure TfrmAccountList.actCreateExcelExecute(Sender: TObject);
var
  sFileName, sACCID, sIndividualFileName, sInstitutionalFileName: String;
  i, RecIdx: Integer;
begin
  inherited;
  SaveDialog.DefaultExt := '.xls';
  SaveDialog.Filter := 'Excel File|*.xls';
  if SaveDialog.Execute then
  begin
    sFileName   := SaveDialog.FileName;

    sACCID := '';
    for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
    begin
      RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := RecIdx;

      if sACCID <> '' then sACCID := sACCID + ',';

      sACCID := sACCID + cdsAccountListACCID.AsString;
    end;

    if sACCID <> '' then
    begin
      CreateKSEIExcelFile(sFileName, sACCID, sIndividualFileName, sInstitutionalFileName);

      if sIndividualFileName <> '' then
        dmGlobal.OpenFile(sIndividualFileName);

      if sInstitutionalFileName <> '' then
        dmGlobal.OpenFile(sInstitutionalFileName);
    end;
  end;
end;

procedure TfrmAccountList.actCreateFacilitationAccountExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if dmGlobal.RemoteServer.CreateSubAccount(cdsAccountListACCID.AsInteger, 'F', sMsg) then
    cdsAccountList.Refresh;

  ShowMessage(sMsg);
end;

procedure TfrmAccountList.actCreateMarginAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 5;
  sKey := cdsAccountListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountList.actCreateNegoTomAccountExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if dmGlobal.RemoteServer.CreateSubAccount(cdsAccountListACCID.AsInteger, 'N', sMsg) then
    cdsAccountList.Refresh;

  ShowMessage(sMsg);
end;

procedure TfrmAccountList.actCreateREPOAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 3;
  sKey := cdsAccountListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountList.actCreateSDIExecute(Sender: TObject);
var
  sFileName, sACCID, sIndividualFileName, sInstitutionalFileName: String;
  i, RecIdx: Integer;
begin
  inherited;
  SaveDialog.DefaultExt := '.sdi';
  SaveDialog.Filter := 'Static Data Investor File (SubRek 001)|*.sdi';
  if SaveDialog.Execute then
  begin
    sFileName   := SaveDialog.FileName;

    sACCID := '';
    for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
    begin
      RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := RecIdx;

      if sACCID <> '' then sACCID := sACCID + ',';

      sACCID := sACCID + cdsAccountListACCID.AsString;
    end;

    if sACCID <> '' then
    begin
      CreateKSEISDIFile(sFileName, sACCID, sIndividualFileName, sInstitutionalFileName);

      if sIndividualFileName <> '' then
        dmGlobal.OpenFile(sIndividualFileName);

      if sInstitutionalFileName <> '' then
        dmGlobal.OpenFile(sInstitutionalFileName);
    end;
  end;
end;

procedure TfrmAccountList.actCreateSettleAccountExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if dmGlobal.RemoteServer.CreateSubAccount(cdsAccountListACCID.AsInteger, 'S', sMsg) then
    cdsAccountList.Refresh;

  ShowMessage(sMsg);
end;

procedure TfrmAccountList.actCreateTradingErrorAccountExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if dmGlobal.RemoteServer.CreateSubAccount(cdsAccountListACCID.AsInteger, 'E', sMsg) then
    cdsAccountList.Refresh;

  ShowMessage(sMsg);
end;

procedure TfrmAccountList.actCreateWarehouseAccountExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if dmGlobal.RemoteServer.CreateSubAccount(cdsAccountListACCID.AsInteger, 'W', sMsg) then
    cdsAccountList.Refresh;

  ShowMessage(sMsg);
end;

procedure TfrmAccountList.actRefreshExecute(Sender: TObject);
var
  sQuery: string;
  sStatus: string;
  sAccNo: string;
  sAccName: string;
  sEntityNo: string;
  sEntityName: string;
  sSearchBy: string;
  iPages: Integer;
  sAccType: string;
begin
//  inherited;
  sStatus     := '';
  sSearchBy   := '';
  sAccType    := '';

  if Copy(edAccStatus.EditValue, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'A';
  end;

  if Copy(edAccStatus.EditValue, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'B';
  end;

  if Copy(edAccStatus.EditValue, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'S';
  end;

  if Copy(edAccStatus.EditValue, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'T';
  end;

  if Copy(edAccStatus.EditValue, 5, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'D';
  end;

  if Copy(edAccStatus.EditValue, 6, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
    sStatus := sStatus + 'C';
  end;

  if Copy(edAccType.EditValue, 1, 1) = '1' then
  begin
    if sAccType <> '' then
      sAccType := sAccType + ';';
    sAccType := sAccType + 'I';
  end;

  if Copy(edAccType.EditValue, 2, 1) = '1' then
  begin
    if sAccType <> '' then
      sAccType := sAccType + ';';
    sAccType := sAccType + 'N';
  end;

  if FUsePage = 'Y' then
  begin
    sAccNo      := edAccNo.EditValue;
    sAccName    := edAccName.EditValue;
    sEntityNo   := edEntityCode.EditValue;
    sEntityName := edEntityName.EditValue;
    sSearchBy   := edSearchBy.EditValue;
    iPages      := StrToIntDef(edPages.EditValue, 1);

    TotalPages := dmGlobal.RemoteServer.GetAccountListTotalPages(sStatus, sSearchBy, sAccNo, sAccName, sEntityNo, sEntityName);

    if TotalPages > 1 then
    begin
      BarPages.Visible     := True;
      lbTotalPages.Caption := 'From '+ FormatFloat('#,##0', TotalPages) +' Pages';
    end
    else
      BarPages.Visible := False;

    if edPages.EditValue > TotalPages then
      edPages.EditValue := TotalPages;
  end;

  cdsAccountList.DisableControls;
  try
    cdsAccountList.Close;
    cdsAccountList.Params[0].AsString  := sStatus;
    cdsAccountList.Params[1].AsInteger := iPages;
    cdsAccountList.Params[2].AsString  := sSearchBy;
    cdsAccountList.Params[3].AsString  := sAccNo;
    cdsAccountList.Params[4].AsString  := sAccName;
    cdsAccountList.Params[5].AsString  := sEntityNo;
    cdsAccountList.Params[6].AsString  := sEntityName;
    cdsAccountList.Params[7].AsString  := sAccType;
    cdsAccountList.Open;
  finally
    cdsAccountList.EnableControls;
  end;
end;

procedure TfrmAccountList.actSetBankAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccountListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountBank, sKey, pkUpdate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountList.actSetCustodyAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccountListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountCustody, sKey, pkUpdate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountList.actUploadDataAccountExecute(Sender: TObject);
var
  sMsg: string;
  oProgress: TfrmProgressBar;
  sFileName, sErrorMsg, sMessage: string;
  oExcel, oSheet: OleVariant;
  iRows, i, iSDID: Integer;
  iError, iSuccess: Integer;
  sAccName: string;
  iRowNo: integer;
begin
  inherited;
  dmGlobal.RemoteServer.EmptyTable('upload.Accounts', sMsg);

  cdsUploadDataAccounts.Close;
  cdsUploadDataAccounts.Open;

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if sFileName = '' then
    exit;

  try
    iError    := 0;
    iSuccess  := 0;
    iRowNo    := 0;

    if FileExists(sFileName) then
    begin
      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading data accounts from excel file');

      for i := 3 to iRows do
      begin
        iRowNo   := iRowNo + 1;
        sAccName := oSheet.Cells[i, 2].Value;

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing data accounts '+ QuotedStr(sAccName));

        cdsUploadDataAccounts.Append;
        cdsUploadDataAccountssalesName.AsString           := oSheet.Cells[i, 1].Value;
        cdsUploadDataAccountsaccountName.AsString         := sAccName;
        cdsUploadDataAccountsaccountInit.AsString         := oSheet.Cells[i, 3].Value;
        cdsUploadDataAccountsnomerKTP.Asstring            := oSheet.Cells[i, 4].Value;
        cdsUploadDataAccountsnpwp.Asstring                := oSheet.Cells[i, 5].Value;
        cdsUploadDataAccountsaddress1.Asstring            := oSheet.Cells[i, 6].Value;
        cdsUploadDataAccountsaddress2.Asstring            := oSheet.Cells[i, 7].Value;
        cdsUploadDataAccountsaddress3.Asstring            := oSheet.Cells[i, 8].Value;
        cdsUploadDataAccountsprovince.Asstring            := oSheet.Cells[i, 9].Value;
        cdsUploadDataAccountskota.Asstring                := oSheet.Cells[i, 10].Value;
        cdsUploadDataAccountsnegara.Asstring              := oSheet.Cells[i, 11].Value;
        cdsUploadDataAccountskodePos.Asstring             := oSheet.Cells[i, 12].Value;
        cdsUploadDataAccountsnomerTelp.Asstring           := oSheet.Cells[i, 13].Value;
        cdsUploadDataAccountseMail.Asstring               := oSheet.Cells[i, 14].Value;
        cdsUploadDataAccountskodeBankRDN.Asstring         := oSheet.Cells[i, 15].Value;
        cdsUploadDataAccountsbankAccNoRDN.Asstring        := oSheet.Cells[i, 16].Value;
        cdsUploadDataAccountsbankAccNameRDN.Asstring      := oSheet.Cells[i, 17].Value;
        cdsUploadDataAccountsbankBranchRDN.Asstring       := oSheet.Cells[i, 18].Value;
        cdsUploadDataAccountskodeBankPrivate.Asstring     := oSheet.Cells[i, 19].Value;
        cdsUploadDataAccountsbankAccNoPrivate.Asstring    := oSheet.Cells[i, 20].Value;
        cdsUploadDataAccountsbankAccNamePrivate.Asstring  := oSheet.Cells[i, 21].Value;
        cdsUploadDataAccountsbankBranchPrivate.Asstring   := oSheet.Cells[i, 22].Value;
        cdsUploadDataAccountssidNo.Asstring               := oSheet.Cells[i, 23].Value;
        cdsUploadDataAccountsKSEI001.Asstring             := oSheet.Cells[i, 24].Value;
        cdsUploadDataAccountsKSEI004.Asstring             := oSheet.Cells[i, 25].Value;
        cdsUploadDataAccounts.Post;
      end;
    end;
  finally
    cdsUploadDataAccounts.ApplyUpdates(-1);
    oProgress.ChangeBarCaption('Saving data accounts into database');
    dmGlobal.RemoteServer.CopyDataAccountFromUpload;
    FreeAndNil(oProgress);
    oExcel.Quit;

    sMessage := IntToStr(iRowNo) + ' data successfully uploaded';
    MessageDlg(sMessage, mtInformation, [mbOk], 0);

    oExcel := Unassigned;
    oSheet := Unassigned;

    if cdsAccountList.Active then
      cdsAccountList.Refresh;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmAccountList.actViewBankAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccountListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountBank, sKey, pkRead) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountList.actViewCustodyAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccountListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountCustody, sKey, pkRead) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountList.cdsAccountListACC_STSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsString = 'A' then Text := 'Active'
  else if sender.AsString = 'C' then Text := 'Closed'
  else if sender.AsString = 'B' then Text := 'Suspend Buy'
  else if sender.AsString = 'S' then Text := 'Suspend Sell'
  else if sender.AsString = 'T' then Text := 'Suspend Trade'
  else if sender.AsString = 'D' then Text := 'Dorman';
end;

procedure TfrmAccountList.CreateKSEIExcelFile(AFileName, ACCID: String;
  out AIndividualFileName, AInstitutionalFileName: String);
var
  i, iRow: Integer;
  oExcel, oSheet: OleVariant;
  sFileName, sFilePath, sFileNames: String;
begin
  sFilePath := ExtractFilePath(AFileName);
  sFileName := ExtractFileName(AFileName);
  i := Pos('.', sFileName);
  if i > 0 then
    sFileName := LeftStr(sFileName, i - 1);
  AIndividualFileName    := '';
  AInstitutionalFileName := '';

  //Individual KSEI File
  cdsKSEI_SDI_Individual.Close;
  cdsKSEI_SDI_Individual.Params[0].AsString := ACCID;
  cdsKSEI_SDI_Individual.Params[1].AsString := '1';//Excel Model
  cdsKSEI_SDI_Individual.Open;

  if not cdsKSEI_SDI_Individual.IsEmpty then
  begin
    try
      sFileNames := sFilePath + sFileName + '_Individual.xlsx';

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;

      oExcel.WorkBooks.Add;
      oExcel.WorkBooks[1].WorkSheets[1].Name := 'Individual';

      oSheet := oExcel.WorkBooks[1].WorkSheets['Individual'];
      for i := 0 to cdsKSEI_SDI_Individual.FieldCount - 1 do
      begin
        oSheet.Cells[1, i+1] := cdsKSEI_SDI_Individual.Fields[i].FieldName;
      end;

      iRow := 2;
      cdsKSEI_SDI_Individual.First;
      while not cdsKSEI_SDI_Individual.Eof do
      begin
        for i := 0 to cdsKSEI_SDI_Individual.FieldCount - 1 do
        begin
          oSheet.Cells[iRow, i+1] := UpperCase(cdsKSEI_SDI_Individual.Fields[i].AsString);
        end;

        Inc(iRow);
        cdsKSEI_SDI_Individual.Next;
      end;

      AIndividualFileName := sFileNames;
    finally
      oExcel.Workbooks[1].SaveAs(sFileNames);
      oExcel.Visible := False;

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end;

  //Institutional KSEI File
  cdsKSEI_SDI_Institutional.Close;
  cdsKSEI_SDI_Institutional.Params[0].AsString := ACCID;
  cdsKSEI_SDI_Institutional.Params[1].AsString := '1';//Excel Model
  cdsKSEI_SDI_Institutional.Open;

  if not cdsKSEI_SDI_Institutional.IsEmpty then
  begin
    try
      sFileNames := sFilePath + sFileName + '_Institutional.xlsx';

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;

      oExcel.WorkBooks.Add;
      oExcel.WorkBooks[1].WorkSheets[1].Name := 'Institutional';

      oSheet := oExcel.WorkBooks[1].WorkSheets['Institutional'];
      for i := 0 to cdsKSEI_SDI_Institutional.FieldCount - 1 do
      begin
        oSheet.Cells[1, i+1] := cdsKSEI_SDI_Institutional.Fields[i].FieldName;
      end;

      iRow := 2;
      cdsKSEI_SDI_Institutional.First;
      while not cdsKSEI_SDI_Institutional.Eof do
      begin
        for i := 0 to cdsKSEI_SDI_Institutional.FieldCount - 1 do
        begin
          oSheet.Cells[iRow, i+1] := UpperCase(cdsKSEI_SDI_Institutional.Fields[i].AsString);
        end;

        Inc(iRow);
        cdsKSEI_SDI_Institutional.Next;
      end;

      AInstitutionalFileName := sFileNames;
    finally
      oExcel.Workbooks[1].SaveAs(sFileNames);
      oExcel.Visible := False;

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;
    end;
  end;
end;

procedure TfrmAccountList.CreateKSEISDIFile(AFileName, ACCID: String;
  out AIndividualFileName, AInstitutionalFileName: String);
var
  i: Integer;
  sFileName, sFilePath, sSDIFileName: String;
  slSDIFile: TStringList;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  sExt: string;
begin
  sFilePath := ExtractFilePath(AFileName);
  sFileName := ExtractFileName(AFileName);
  i := Pos('.', sFileName);
  if i > 0 then
    sFileName := LeftStr(sFileName, i - 1);
  AIndividualFileName := '';
  AInstitutionalFileName := '';

  //Individual KSEI File
  cdsKSEI_SDI_Individual.Close;
  cdsKSEI_SDI_Individual.Params[0].AsString := ACCID;
  cdsKSEI_SDI_Individual.Params[1].AsString := '2';//SDI Model
  cdsKSEI_SDI_Individual.Open;

  if not cdsKSEI_SDI_Individual.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEI_SDI_Individual.First;
      while not cdsKSEI_SDI_Individual.Eof do
      begin
        for i := 0 to cdsKSEI_SDI_Individual.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEI_SDI_Individual.Fields[i].FieldName;
          oCNode.Text               := cdsKSEI_SDI_Individual.Fields[i].AsString;
        end;

        cdsKSEI_SDI_Individual.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '_Individual.sdi', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);
      AIndividualFileName := sSDIFileName;

      dmGlobal.ReplaceXMLstring(sFileName);
//      FreeAndNil(oXML);
    end;

//    slSDIFile := TStringList.Create;
//    Try
//      slSDIFile.Add('<Message>');
//
//      cdsKSEI_SDI_Individual.First;
//      while not cdsKSEI_SDI_Individual.Eof do
//      begin
//        slSDIFile.Add('<Record name="data">');
//
//        for i := 0 to cdsKSEI_SDI_Individual.FieldCount - 1 do
//        begin
//          slSDIFile.Add('<Field name="' + cdsKSEI_SDI_Individual.Fields[i].FieldName
//            + '">' + cdsKSEI_SDI_Individual.Fields[i].AsString +'</Field>')
//        end;
//
//        slSDIFile.Add('</Record>');
//
//        cdsKSEI_SDI_Individual.Next;
//      end;
//
//      slSDIFile.Add('</Message>');
//      sSDIFileName := sFilePath + sFileName + '_INDIVIDUAL.sdi';
//      slSDIFile.SaveToFile(sSDIFileName);
//      AIndividualFileName := sSDIFileName;
//    Finally
//      FreeAndNil(slSDIFile);
//
//      dmGlobal.ReplaceXMLstring(sSDIFileName);
//    End;
  end;

  //Institutional KSEI File
  cdsKSEI_SDI_Institutional.Close;
  cdsKSEI_SDI_Institutional.Params[0].AsString := ACCID;
  cdsKSEI_SDI_Institutional.Params[1].AsString := '2';//SDI Model
  cdsKSEI_SDI_Institutional.Open;

  if not cdsKSEI_SDI_Institutional.IsEmpty then
  begin
    try
      oXML         := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode    := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      cdsKSEI_SDI_Institutional.First;
      while not cdsKSEI_SDI_Institutional.Eof do
      begin
        for i := 0 to cdsKSEI_SDI_Institutional.FieldCount -1 do
        begin
          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsKSEI_SDI_Institutional.Fields[i].FieldName;
          oCNode.Text               := cdsKSEI_SDI_Institutional.Fields[i].AsString;
        end;

        cdsKSEI_SDI_Institutional.Next;
      end;
    finally
      sExt      := ExtractFileExt(AFileName);
      sFileName := StringReplace(AFileName, sExt, '_Institution.sdi', [rfReplaceAll, rfIgnoreCase]);
      oXML.SaveToFile(sFileName);
      AInstitutionalFileName := sSDIFileName;

      dmGlobal.ReplaceXMLstring(sFileName);
    end;

//    slSDIFile := TStringList.Create;
//    Try
//      slSDIFile.Add('<Message>');
//
//      cdsKSEI_SDI_Institutional.First;
//      while not cdsKSEI_SDI_Institutional.Eof do
//      begin
//        slSDIFile.Add('<Record name="data">');
//
//        for i := 0 to cdsKSEI_SDI_Institutional.FieldCount - 1 do
//        begin
//          slSDIFile.Add('<Field name="' + cdsKSEI_SDI_Institutional.Fields[i].FieldName
//            + '">' + cdsKSEI_SDI_Institutional.Fields[i].AsString +'</Field>')
//        end;
//
//        slSDIFile.Add('</Record>');
//
//        cdsKSEI_SDI_Institutional.Next;
//      end;
//
//      slSDIFile.Add('</Message>');
//      sSDIFileName := sFilePath + sFileName + '_INSTITUTIONAL.sdi';
//      slSDIFile.SaveToFile(sSDIFileName);
//      AInstitutionalFileName := sSDIFileName;
//    Finally
//      FreeAndNil(slSDIFile);
//
//      dmGlobal.ReplaceXMLstring(sSDIFileName);
//    End;
  end;

  MessageDlg('Create Static Data Investor has been done', mtInformation, [mbOk], 0);

end;

procedure TfrmAccountList.DataContainerBeforeOpenEditorDataset(
  Sender: TNMasterDetailData; var AContinue: Boolean);
var
  AccID: Integer;
begin
  inherited;
  if Sender.State in [mddsView4Eyes, mddsApprove, mddsReject, mddsCancel] then
//    AccID := cdsAccountListUpdACCID.AsInteger
//  else
    AccID := cdsAccountListACCID.AsInteger;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccBankGroupByEntity.Close;
    cdsLuAccBankGroupByEntity.Params[0].AsInteger := AccID;
    cdsLuAccBankGroupByEntity.Open;

    cdsLuAccCustodyGroupByEntity.Close;
    cdsLuAccCustodyGroupByEntity.Params[0].AsInteger := AccID;
    cdsLuAccCustodyGroupByEntity.Open;
  end;
end;

procedure TfrmAccountList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmAccount;
end;

procedure TfrmAccountList.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  edPages.EditValue := 1;
  actReject.Execute;
end;

procedure TfrmAccountList.dxBarButton4Click(Sender: TObject);
begin
  inherited;
  if edPages.EditValue > 1 then
  begin
    edPages.EditValue := edPages.EditValue - 1;
    actRefresh.Execute;
  end;
end;

procedure TfrmAccountList.dxBarButton5Click(Sender: TObject);
begin
  inherited;
  edPages.EditValue := edPages.EditValue + 1;
  if edPages.EditValue > TotalPages then
    edPages.EditValue := TotalPages;
  actRefresh.Execute;
end;

procedure TfrmAccountList.dxBarButton6Click(Sender: TObject);
begin
  inherited;
  edPages.EditValue := TotalPages;
  actRefresh.Execute;
end;

procedure TfrmAccountList.edAccNameKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
  sValue: string;
begin
  inherited;
  sValue := TcxBarEditItem(sender).CurEditValue;
  if Key = VK_Return then
  begin
    edAccName.EditValue := sValue;
    actRefresh.Execute;
  end;
end;

procedure TfrmAccountList.edAccNoKeyDown(Sender: TObject; var Key: Word; Shift:
    TShiftState);
var
  sValue: string;
begin
  inherited;
  sValue := TcxBarEditItem(sender).CurEditValue;
  if Key = VK_Return then
  begin
    edAccNo.EditValue := sValue;
    actRefresh.Execute;
  end;
end;

procedure TfrmAccountList.edEntityCodeKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
  sValue: string;
begin
  inherited;
  sValue := TcxBarEditItem(sender).CurEditValue;
  if Key = VK_Return then
  begin
    edEntityCode.EditValue := sValue;
    actRefresh.Execute;
  end;
end;

procedure TfrmAccountList.edEntityNameKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
  sValue: string;
begin
  inherited;
  sValue := TcxBarEditItem(sender).CurEditValue;
  if Key = VK_Return then
  begin
    edEntityName.EditValue := sValue;
    actRefresh.Execute;
  end;
end;

procedure TfrmAccountList.edSearchByPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if edSearchBy.EditValue = 'A' then
  begin
    edAccNo.Visible   := ivNever;
    edAccName.Visible := ivNever;

    edEntityCode.Visible := ivNever;
    edEntityName.Visible := ivNever;
  end
  else if edSearchBy.EditValue = 'E' then
  begin
    edAccNo.Visible   := ivNever;
    edAccName.Visible := ivNever;

    edEntityCode.Visible := ivAlways;
    edEntityName.Visible := ivAlways;
  end
  else if edSearchBy.EditValue = 'C' then
  begin
    edAccNo.Visible   := ivAlways;
    edAccName.Visible := ivAlways;

    edEntityCode.Visible := ivNever;
    edEntityName.Visible := ivNever;
  end
end;

procedure TfrmAccountList.FormCreate(Sender: TObject);
begin
  inherited;
  FUsePage := dmGlobal.RemoteServer.GetGlobalParamString('041');
  if FUsePage = '' then
    FUsePage := 'N';

  BarPages.Visible := False;

  edAccNo.EditValue   := '';
  edAccName.EditValue := '';

  edEntityCode.EditValue := '';
  edEntityName.EditValue := '';
  edAccStatus.EditValue  := '100000';
  edacctype.EditValue    := '11';

  gvwMaster.FilterRow.Visible := FUsePage = 'N';
  barSearchAccount.Visible    := FUsePage = 'Y';

  KeyField := cdsAccountListACCID;
//  actRefresh.Execute;
end;

procedure TfrmAccountList.FormShow(Sender: TObject);
begin
  inherited;
  edSearchBy.EditValue := 'A';

  edAccNo.Visible   := ivNever;
  edAccName.Visible := ivNever;

  edEntityCode.Visible := ivNever;
  edEntityName.Visible := ivNever;
end;

Initialization
  RegisterClass(TfrmAccountList);

end.
