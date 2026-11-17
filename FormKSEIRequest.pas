unit FormKSEIRequest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  Datasnap.DBClient, NClientDataset, NActionPermission, Vcl.Menus, Vcl.ActnList,
  NDatasetAction, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, ComObj, ShellAPI, System.Actions, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, dxLayoutControl, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons;

type
  TfrmKSEIRequest = class(TfrmBasic)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwKSEIRequest: TcxGridDBBandedTableView;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    Refresh1: TMenuItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edKSEIFileName: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    odKSEIFile: TOpenDialog;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    actUploadKSEI: TNAction;
    actRefresh: TNAction;
    cdsOAKSEIRequest: TNClientDataset;
    cdsOAKSEIRequestOAID: TIntegerField;
    cdsOAKSEIRequestOACODE: TStringField;
    cdsOAKSEIRequestCUST_TYPE: TIntegerField;
    cdsOAKSEIRequestENTNAME: TStringField;
    cdsOAKSEIRequestENTDESC: TStringField;
    cdsOAKSEIRequestCREATEDATE: TDateTimeField;
    cdsOAKSEIRequestINVESTORCAT: TStringField;
    cdsOAKSEIRequestENTACCTYPE: TStringField;
    cdsOAKSEIRequestPRDCODE: TStringField;
    cdsOAKSEIRequestACCID: TIntegerField;
    cdsOAKSEIRequestEXISTING_CLIENT: TStringField;
    cdsOAKSEIRequestPARENT_ACCID: TIntegerField;
    cdsOAKSEIRequestKSEI_CLIENT_CODE: TStringField;
    cdsOAKSEIRequestREQUEST_SUBREK: TStringField;
    cdsOAKSEIRequestISWEB: TStringField;
    cdsOAKSEIRequestSIDNO: TStringField;
    cdsOAKSEIRequestKSEI_001: TStringField;
    cdsOAKSEIRequestKSEI_004: TStringField;
    dsOAKSEIRequest: TDataSource;
    gvwKSEIRequestOAID: TcxGridDBBandedColumn;
    gvwKSEIRequestOACODE: TcxGridDBBandedColumn;
    gvwKSEIRequestCUST_TYPE: TcxGridDBBandedColumn;
    gvwKSEIRequestENTNAME: TcxGridDBBandedColumn;
    gvwKSEIRequestENTDESC: TcxGridDBBandedColumn;
    gvwKSEIRequestCREATEDATE: TcxGridDBBandedColumn;
    gvwKSEIRequestINVESTORCAT: TcxGridDBBandedColumn;
    gvwKSEIRequestENTACCTYPE: TcxGridDBBandedColumn;
    gvwKSEIRequestPRDCODE: TcxGridDBBandedColumn;
    gvwKSEIRequestACCID: TcxGridDBBandedColumn;
    gvwKSEIRequestEXISTING_CLIENT: TcxGridDBBandedColumn;
    gvwKSEIRequestPARENT_ACCID: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_CLIENT_CODE: TcxGridDBBandedColumn;
    gvwKSEIRequestREQUEST_SUBREK: TcxGridDBBandedColumn;
    gvwKSEIRequestISWEB: TcxGridDBBandedColumn;
    gvwKSEIRequestSIDNO: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_001: TcxGridDBBandedColumn;
    gvwKSEIRequestKSEI_004: TcxGridDBBandedColumn;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actRefreshExecute(Sender: TObject);
    procedure actUploadKSEIExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FRecordCount: Integer;

    function SaveAsExcelFile(AFileName: string): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKSEIRequest: TfrmKSEIRequest;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmKSEIRequest.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsOAKSEIRequest.Close;
  cdsOAKSEIRequest.Open;
end;

procedure TfrmKSEIRequest.actUploadKSEIExecute(Sender: TObject);
var
  sFileName: string;
  Cols: integer;
  Rows: integer;
  sKSEIClientNo, sSIDNo: string;
  oExcel, oSheet: Variant;
  i: Integer;
begin
  inherited;

  if cdsOAKSEIRequest.RecordCount = 0 then
  begin
    MessageDlg('There is no data can be updated', mtInformation, [mbOk], 0);
    Abort;
  end;

  sFileName := edKSEIFileName.Text;
  if sFileName <> '' then
  begin
    try
      MessageDlg('Upload data from KSEI', mtInformation, [mbOk], 0);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      Cols   := oSheet.Usedrange.Columns.Count;
      Rows   := oSheet.Usedrange.Rows.Count;

      i := 0;
      repeat
        Inc(i);

        sKSEIClientNo := oExcel.Cells.Item[i, 3].value;
        sSIDNo        := oExcel.Cells.Item[i, 13].value;

        dmGlobal.RemoteServer.UpdateKSEINo(sSIDNo, sKSEIClientNo);
      until (oExcel.cells.item[i, 1].value = '');

      oExcel.Quit;
      oExcel := Unassigned;
      oSheet := Unassigned;

      MessageDlg('Upload from KSEI data has been success', mtInformation, [mbOk], 0);
      cdsOAKSEIRequest.Refresh;
    except

    end;

  end;
end;

procedure TfrmKSEIRequest.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  if odKSEIFile.Execute then
    sFileName := odKSEIFile.FileName;

  if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
    edKSEIFileName.Text := sFileName;
end;

procedure TfrmKSEIRequest.FormCreate(Sender: TObject);
begin
  inherited;
  cdsOAKSEIRequest.Close;
  cdsOAKSEIRequest.Open;
end;

function TfrmKSEIRequest.SaveAsExcelFile(AFileName: string): Boolean;
const
  xlWBATWorksheet = -4167;
var
  Row, Col, x, i: Integer;
  GridPrevFile, sFileName: string;
  XLApp, Sheet,
  ColumnRange: OLEVariant;
  oField: TField;
  bCont: Boolean;
begin
  Result := False;

//  FRecordCount := 0;
//  XLApp := CreateOleObject('Excel.Application');
//  try
//    XLApp.Visible := False;
//    XLApp.Workbooks.Add(xlWBatWorkSheet);
//    Sheet := XLApp.Workbooks[1].WorkSheets[1];
//    Sheet.Name := 'FITS Auditrail';
//
//    col := 1;
//
//    Sheet.Cells[1, 1]  := 'action';
//    Sheet.Cells[1, 2]  := 'investorType';
//    Sheet.Cells[1, 3]  := 'investorClientType';
//    Sheet.Cells[1, 4]  := 'accountLocalCode';
//    Sheet.Cells[1, 5]  := 'accountClientCode';
//    Sheet.Cells[1, 6]  := 'accountTaxCode';
//    Sheet.Cells[1, 7]  := 'investorFirstName';
//    Sheet.Cells[1, 8]  := 'investorMiddleNamae';
//    Sheet.Cells[1, 9]  := 'investorLastName';
//    Sheet.Cells[1, 10] := 'investorNationality';
//    Sheet.Cells[1, 11] := 'investorKTPNumber';
//    Sheet.Cells[1, 12] := 'investorKTPExpiredDate';
//    Sheet.Cells[1, 13] := 'investorNPWPNumber';
//    Sheet.Cells[1, 14] := 'investorNPWPRegistrationDate';
//    Sheet.Cells[1, 15] := 'investorPassporNumber';
//    Sheet.Cells[1, 16] := 'investorKitasSKDNumber';
//    Sheet.Cells[1, 17] := 'investorKitasSKDExpiredDate';
//    Sheet.Cells[1, 18] := 'investorBirthPlace';
//    Sheet.Cells[1, 19] := 'investorBirthDate';
//    Sheet.Cells[1, 20] := 'investorAddress1';
//    Sheet.Cells[1, 21] := 'investorAddress2';
//    Sheet.Cells[1, 22] := 'investorAddress3';
//    Sheet.Cells[1, 23] := 'investorCity';
//    Sheet.Cells[1, 24] := 'investorProvince';
//    Sheet.Cells[1, 25] := 'investorPostalCode';
//    Sheet.Cells[1, 26] := 'investorCountry';
//    Sheet.Cells[1, 27] := 'investorHomePhone';
//    Sheet.Cells[1, 28] := 'investorMobilePhone';
//    Sheet.Cells[1, 29] := 'investorEmail';
//    Sheet.Cells[1, 30] := 'investorFax';
//    Sheet.Cells[1, 31] := 'investorOtherAddress1';
//    Sheet.Cells[1, 32] := 'investorOtherAddress2';
//    Sheet.Cells[1, 33] := 'investorOtherAddress3';
//    Sheet.Cells[1, 34] := 'investorOtherCity';
//    Sheet.Cells[1, 35] := 'investorOtherProvince';
//    Sheet.Cells[1, 36] := 'investorOtherPostalCode';
//    Sheet.Cells[1, 37] := 'investorOtherCountry';
//    Sheet.Cells[1, 38] := 'investorOtherHomePhone';
//    Sheet.Cells[1, 39] := 'investorOtherMobilePhone';
//    Sheet.Cells[1, 40] := 'investorOtherEmail';
//    Sheet.Cells[1, 41] := 'investorOtherFax';
//    Sheet.Cells[1, 42] := 'investorSex';
//    Sheet.Cells[1, 43] := 'investorMaritalStatus';
//    Sheet.Cells[1, 44] := 'investorSpouseName';
//    Sheet.Cells[1, 45] := 'investorHeirName';
//    Sheet.Cells[1, 46] := 'investorHeirRelation';
//    Sheet.Cells[1, 47] := 'investorEducationBackground';
//    Sheet.Cells[1, 48] := 'investorOccupation';
//    Sheet.Cells[1, 49] := 'investorOccupationText';
//    Sheet.Cells[1, 50] := 'investorNatureofBusiness';
//    Sheet.Cells[1, 51] := 'investorIncomePerAnnum';
//    Sheet.Cells[1, 52] := 'investorFundSource';
//    Sheet.Cells[1, 53] := 'investorFundSourceText';
//    Sheet.Cells[1, 54] := 'accountDescription';
//    Sheet.Cells[1, 55] := 'investorBankAccountName1';
//    Sheet.Cells[1, 56] := 'investorBankAccountNumber1';
//    Sheet.Cells[1, 57] := 'investorBankAccountBICCode1';
//    Sheet.Cells[1, 58] := 'investorBankAccountHoldername1';
//    Sheet.Cells[1, 59] := 'investorAccountCurrency1';
//    Sheet.Cells[1, 60] := 'investorBankAccountName2';
//    Sheet.Cells[1, 61] := 'investorBankAccountNumber2';
//    Sheet.Cells[1, 62] := 'investorBankAccountBICCode2';
//    Sheet.Cells[1, 63] := 'investorBankAccountHoldername2';
//    Sheet.Cells[1, 64] := 'investorAccountCurrency2';
//    Sheet.Cells[1, 65] := 'investorBankAccountName3';
//    Sheet.Cells[1, 66] := 'investorBankAccountNumber3';
//    Sheet.Cells[1, 67] := 'investorBankAccountBICCode3';
//    Sheet.Cells[1, 68] := 'investorBankAccountHoldername3';
//    Sheet.Cells[1, 69] := 'investorAccountCurrency3';
//    Sheet.Cells[1, 70] := 'investorInvesmentObjective';
//    Sheet.Cells[1, 71] := 'investorMothersMaidenName';
//    Sheet.Cells[1, 72] := 'DirectSid';
//    Sheet.Cells[1, 73] := 'AssetOwner';
//
//    for i := 1 to 73 do
//    begin
//      Sheet.Cells[1, i].font.Bold  := True;
//      Sheet.Cells[1, i].font.Color := clWhite;
//      Sheet.Cells[1, i].Interior.ColorIndex := 16;
//    end;
//
//    cdsKSEIRequest.First;
////    while not cdsKSEIRequest.Eof do
//    for i := 0 to gvwKSEIRequest.Controller.SelectedRowCount -1 do
//    begin
//      Inc(col);
//      Inc(FRecordCount);
//
//      cdsGenerateKSEItoExcelTmp.Close;
//      cdsGenerateKSEItoExcelTmp.Params[0].AsInteger := gvwKSEIRequest.Controller.SelectedRows[i].Values[gvwKSEIRequestCID.Index]; //cdsKSEIRequestCID.AsInteger;
//      cdsGenerateKSEItoExcelTmp.Open;
//
//      Sheet.Cells[col, 1]  := UpperCase(cdsGenerateKSEItoExcelTmpACTION.AsString);
//      Sheet.Cells[col, 2]  := UpperCase(cdsGenerateKSEItoExcelTmpINVTYPE.AsString);
//      Sheet.Cells[col, 3]  := UpperCase(cdsGenerateKSEItoExcelTmpINVCLIENTTYPE.AsString);
//      Sheet.Cells[col, 4]  := UpperCase(cdsGenerateKSEItoExcelTmpBRKLOCALCODE.AsString);
//      Sheet.Cells[col, 5]  := UpperCase(''''+cdsGenerateKSEItoExcelTmpCLIENTCODE.AsString);
//      Sheet.Cells[col, 6]  := UpperCase(cdsGenerateKSEItoExcelTmpTAXCODE.AsString);
//      Sheet.Cells[col, 7]  := UpperCase(cdsGenerateKSEItoExcelTmpNAME.AsString);
//      Sheet.Cells[col, 10] := UpperCase(cdsGenerateKSEItoExcelTmpINVSNATIONALITY.AsString);
//      Sheet.Cells[col, 11] := UpperCase(''''+cdsGenerateKSEItoExcelTmpID_NO.AsString);
//      Sheet.Cells[col, 12] := UpperCase(cdsGenerateKSEItoExcelTmpID_VALID.AsString);
//      Sheet.Cells[col, 13] := UpperCase(cdsGenerateKSEItoExcelTmpTAXPAYER_REG.AsString);
//      Sheet.Cells[col, 14] := UpperCase(cdsGenerateKSEItoExcelTmpTAXDATE.AsString);
//      Sheet.Cells[col, 18] := UpperCase(cdsGenerateKSEItoExcelTmpPOB.AsString);
//      Sheet.Cells[col, 19] := UpperCase(cdsGenerateKSEItoExcelTmpDOB.AsString);
//      Sheet.Cells[col, 20] := UpperCase(cdsGenerateKSEItoExcelTmpADDRESS.AsString);
//      Sheet.Cells[col, 24] := UpperCase(cdsGenerateKSEItoExcelTmpPROVINCE.AsString);
//      Sheet.Cells[col, 27] := UpperCase(''''+cdsGenerateKSEItoExcelTmpHOME_PHONE.AsString);
//      Sheet.Cells[col, 28] := UpperCase(''''+cdsGenerateKSEItoExcelTmpCELL_PHONE.AsString);
//      Sheet.Cells[col, 29] := UpperCase(cdsGenerateKSEItoExcelTmpEMAIL.AsString);
//      Sheet.Cells[col, 43] := UpperCase(cdsGenerateKSEItoExcelTmpMARITAL_STATUS.AsString);
//      Sheet.Cells[col, 44] := UpperCase(cdsGenerateKSEItoExcelTmpSPOUSE_NAME.AsString);
//      Sheet.Cells[col, 45] := UpperCase(cdsGenerateKSEItoExcelTmpHEIRNAME.AsString);
//      Sheet.Cells[col, 46] := UpperCase(cdsGenerateKSEItoExcelTmpHEIRRELATION.AsString);
//      Sheet.Cells[col, 47] := UpperCase(cdsGenerateKSEItoExcelTmpEDU_BACKGROUND.AsString);
//      Sheet.Cells[col, 48] := UpperCase(cdsGenerateKSEItoExcelTmpOCCUPATION.AsString);
//      Sheet.Cells[col, 51] := UpperCase(cdsGenerateKSEItoExcelTmpANNUAL_INCOME.AsString);
//      Sheet.Cells[col, 52] := UpperCase(cdsGenerateKSEItoExcelTmpFUND_SOURCE.AsString);
//      Sheet.Cells[col, 70] := UpperCase(cdsGenerateKSEItoExcelTmpINVS_OBJ.AsString);
//      Sheet.Cells[col, 71] := UpperCase(cdsGenerateKSEItoExcelTmpMOTHER_NAME.AsString);
//
//      cdsKSEIRequest.Next;
//    end;
//
//    ColumnRange := XLApp.WorkBooks[1].WorkSheets[1].Columns;
//    for i := 1 to 73 do
//      ColumnRange.Columns[i].EntireColumn.AutoFit;
//
//    try
//      XLApp.Workbooks[1].SaveAs(AFileName);
//
//      Result := True;
//    except
//      // Error ?
//    end;
//  finally
//    if not VarIsEmpty(XLApp) then
//    begin
//      XLApp.DisplayAlerts := False;
//      XLApp.Quit;
//      XLAPP := Unassigned;
//      Sheet := Unassigned;
//    end;
//  end;
end;

initialization
  RegisterClass(TfrmKSEIRequest);

end.
