unit FormCOBInstitutionBahana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxPCdxBarPopupMenu, cxPC,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMemo, cxDBEdit, cxCheckBox,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxCalendar, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridLevel, cxGrid, cxCurrencyEdit,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCOBInstitutionBahana = class(TfrmEditorData)
    PageControl: TcxPageControl;
    pgClientData: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    cbAccSecType: TcxDBImageComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cmbParentID: TcxDBLookupComboBox;
    cmbParentAccID: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl3Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl3Item7: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl3Item8: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutControl3Item9: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl3Item10: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl3Item11: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    cxDBMemo2: TcxDBMemo;
    dxLayoutControl3Item13: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl3Item14: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl3Item15: TdxLayoutItem;
    dxLayoutControl3Group6: TdxLayoutGroup;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    dxLayoutControl3Item16: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl3Item17: TdxLayoutItem;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl3Item18: TdxLayoutItem;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    dxLayoutControl3Item19: TdxLayoutItem;
    cxDBMemo3: TcxDBMemo;
    dxLayoutControl3Item20: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl3Item21: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl3Item22: TdxLayoutItem;
    dxLayoutControl3Group9: TdxLayoutGroup;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl3Item23: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl3Item24: TdxLayoutItem;
    dxLayoutControl3Group10: TdxLayoutGroup;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dxLayoutControl4Group1: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    gvwShareHolders: TcxGridDBBandedTableView;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl4Item3: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl4Item4: TdxLayoutItem;
    dxLayoutControl4Group4: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl4Item5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl4Item6: TdxLayoutItem;
    cxGrid2: TcxGrid;
    gvwBOD: TcxGridDBBandedTableView;
    gvwBODCUST_REG_NO: TcxGridDBBandedColumn;
    gvwBODBOD_NAME: TcxGridDBBandedColumn;
    gvwBODBOD_POSITION: TcxGridDBBandedColumn;
    gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn;
    gvwBODBOD_EMAIL: TcxGridDBBandedColumn;
    gvwBODBOD_NATIONALITY: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dsCOBBOD: TDataSource;
    gvwBODBOD_ID_NO: TcxGridDBBandedColumn;
    gvwBODBOD_VALID_ID: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    dxLayoutControl4Group5: TdxLayoutGroup;
    dxLayoutControl4Group6: TdxLayoutGroup;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl4Item7: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    CompanyTypeOthers: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl4Item9: TdxLayoutItem;
    dxLayoutControl4Group7: TdxLayoutGroup;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    dxLayoutControl4Item10: TdxLayoutItem;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    dxLayoutControl5Group1: TdxLayoutGroup;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Group3: TdxLayoutGroup;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dxLayoutControl5Item1: TdxLayoutItem;
    gvwAuthorizedPerson: TcxGridDBBandedTableView;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl5Item2: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    dxLayoutControl5Item3: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    secto: TdxLayoutItem;
    dxLayoutControl5Group4: TdxLayoutGroup;
    cxDBTextEdit16: TcxDBTextEdit;
    cashto: TdxLayoutItem;
    dxLayoutControl5Group5: TdxLayoutGroup;
    cxTabSheet5: TcxTabSheet;
    dsCOBBankAcc: TDataSource;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutControl6: TdxLayoutControl;
    dxLayoutControl6Group1: TdxLayoutGroup;
    cxDBImageComboBox5: TcxDBImageComboBox;
    dxLayoutControl6Item1: TdxLayoutItem;
    cxDBImageComboBox6: TcxDBImageComboBox;
    dxLayoutControl6Item2: TdxLayoutItem;
    cxDBImageComboBox7: TcxDBImageComboBox;
    dxLayoutControl6Item3: TdxLayoutItem;
    cxDBImageComboBox8: TcxDBImageComboBox;
    dxLayoutControl6Item4: TdxLayoutItem;
    cxDBImageComboBox9: TcxDBImageComboBox;
    dxLayoutControl6Item5: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    InvObj_Other: TdxLayoutItem;
    dxLayoutControl6Group2: TdxLayoutGroup;
    cxDBTextEdit18: TcxDBTextEdit;
    invExpOther: TdxLayoutItem;
    dxLayoutControl6Group3: TdxLayoutGroup;
    cxDBImageComboBox10: TcxDBImageComboBox;
    dxLayoutControl6Item8: TdxLayoutItem;
    cxDBTextEdit19: TcxDBTextEdit;
    SourceFund_Other: TdxLayoutItem;
    dxLayoutControl6Group4: TdxLayoutGroup;
    chkIsSubAcc: TcxDBCheckBox;
    dxLayoutControl3Item25: TdxLayoutItem;
    dsCOBShareHolder: TDataSource;
    dsCOBAuthPerson: TDataSource;
    gvwShareHoldersCID: TcxGridDBBandedColumn;
    gvwShareHoldersSHAREID: TcxGridDBBandedColumn;
    gvwShareHoldersNAME_SHAREHOLDER: TcxGridDBBandedColumn;
    gvwShareHoldersSHARE_PERCENTAGE: TcxGridDBBandedColumn;
    gvwShareHoldersMODDA: TcxGridDBBandedColumn;
    gvwShareHoldersMODUI: TcxGridDBBandedColumn;
    gvwShareHoldersAPPDA: TcxGridDBBandedColumn;
    gvwShareHoldersAPPUI: TcxGridDBBandedColumn;
    gvwShareHoldersUNDER4Y: TcxGridDBBandedColumn;
    gvwShareHoldersUNDER4YDA: TcxGridDBBandedColumn;
    gvwShareHoldersNOTES4Y: TcxGridDBBandedColumn;
    gvwShareHoldersISDEL: TcxGridDBBandedColumn;
    gvwShareHoldersID: TcxGridDBBandedColumn;
    gvwAuthorizedPersonCID: TcxGridDBBandedColumn;
    gvwAuthorizedPersonAUTHID: TcxGridDBBandedColumn;
    gvwAuthorizedPersonNAME_AUTHORIZED: TcxGridDBBandedColumn;
    gvwAuthorizedPersonLEGAL_RELATION: TcxGridDBBandedColumn;
    gvwAuthorizedPersonID_NO: TcxGridDBBandedColumn;
    gvwAuthorizedPersonHOME_PHONE: TcxGridDBBandedColumn;
    gvwAuthorizedPersonCELL_PHONE: TcxGridDBBandedColumn;
    gvwAuthorizedPersonFAX_NO: TcxGridDBBandedColumn;
    gvwAuthorizedPersonEMAIL: TcxGridDBBandedColumn;
    gvwAuthorizedPersonADDRESS: TcxGridDBBandedColumn;
    gvwAuthorizedPersonCITIZENSHIP: TcxGridDBBandedColumn;
    gvwAuthorizedPersonMODDA: TcxGridDBBandedColumn;
    gvwAuthorizedPersonMODUI: TcxGridDBBandedColumn;
    gvwAuthorizedPersonAPPDA: TcxGridDBBandedColumn;
    gvwAuthorizedPersonAPPUI: TcxGridDBBandedColumn;
    gvwAuthorizedPersonUNDER4Y: TcxGridDBBandedColumn;
    gvwAuthorizedPersonUNDER4YDA: TcxGridDBBandedColumn;
    gvwAuthorizedPersonNOTES4Y: TcxGridDBBandedColumn;
    gvwAuthorizedPersonISDEL: TcxGridDBBandedColumn;
    gvwAuthorizedPersonID: TcxGridDBBandedColumn;
    cxDBTextEdit20: TcxDBTextEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item5: TdxLayoutItem;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutControl6Item6: TdxLayoutItem;
    cxGrid4: TcxGrid;
    gvwCOBBank: TcxGridDBBandedTableView;
    gvwCOBBankCUST_REG_NO: TcxGridDBBandedColumn;
    gvwCOBBankACC_NO: TcxGridDBBandedColumn;
    gvwCOBBankBANK_NAME: TcxGridDBBandedColumn;
    gvwCOBBankBANK_BRANCH: TcxGridDBBandedColumn;
    gvwCOBBankBENEFICIARY: TcxGridDBBandedColumn;
    gvwCOBBankACCID: TcxGridDBBandedColumn;
    gvwCOBBankCCY: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    dsCOBBankCustody: TDataSource;
    dxLayoutControl6Item7: TdxLayoutItem;
    cxGrid5: TcxGrid;
    gvwCOBBankCustody: TcxGridDBBandedTableView;
    gvwCOBBankCustodyACCID: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYCODE: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYACCNAME: TcxGridDBBandedColumn;
    gvwCOBBankCustodyCUSTODYBRANCH: TcxGridDBBandedColumn;
    gvwCOBBankCustodyACTLED_SEQID: TcxGridDBBandedColumn;
    gvwCOBBankCustodyMODDA: TcxGridDBBandedColumn;
    gvwCOBBankCustodyMODUI: TcxGridDBBandedColumn;
    gvwCOBBankCustodyAPPDA: TcxGridDBBandedColumn;
    gvwCOBBankCustodyAPPUI: TcxGridDBBandedColumn;
    gvwCOBBankCustodyUNDER4Y: TcxGridDBBandedColumn;
    gvwCOBBankCustodyUNDER4YDA: TcxGridDBBandedColumn;
    gvwCOBBankCustodyNOTES4Y: TcxGridDBBandedColumn;
    gvwCOBBankCustodyISDEL: TcxGridDBBandedColumn;
    gvwCOBBankCustodyID: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxDBTextEdit21: TcxDBTextEdit;
    dxLayoutControl3Item26: TdxLayoutItem;
    cxDBTextEdit22: TcxDBTextEdit;
    dxLayoutControl3Item27: TdxLayoutItem;
    gvwCOBBankBANK_CODE: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure chkIsSubAccClick(Sender: TObject);
    procedure cxDBImageComboBox3PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox4PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox2Exit(Sender: TObject);
    procedure cxDBImageComboBox5Exit(Sender: TObject);
    procedure cxDBImageComboBox6Exit(Sender: TObject);
    procedure cxDBImageComboBox10Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    FValidateMessage: String;
    function CheckMandatoryData: Boolean;
    function ValidateFields(AFieldList: Variant; AFieldNames: Variant): Boolean;
  public
    { Public declarations }
  end;

var
  frmCOBInstitutionBahana: TfrmCOBInstitutionBahana;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal, ClassClientConst, NDatasetContainer;

procedure TfrmCOBInstitutionBahana.btnOKClick(Sender: TObject);
begin
  inherited;
  if TfrmCOBList(BrowserForm).UserAction = COB_FACT_DONE_INPUT then
  begin
    if CheckMandatoryData then
      ModalResult := mrOk
    else
      ModalResult := mrNone;
  end
  else
    ModalResult := mrOk;

end;

function TfrmCOBInstitutionBahana.CheckMandatoryData: Boolean;
var
  oDataSet: TDataSet;
  IsValidData: Boolean;
begin
  Result := False;

  oDataSet := dsSubject.DataSet;

  FValidateMessage := '';

  IsValidData := ValidateFields(VarArrayOf(['ACC_TYPE_SEC', 'PRD_CODE', 'BRANCHID', 'NAME', 'OFFC_ADDR_ASSKDP', 'TAXPAYER_REG',
                                               'CITY', 'COUNTRY', 'OFFC_PHONE_NO']),
                                   VarArrayOf(['Type Of Securities Account', 'Product Code', 'Branch', 'Name', 'Address', 'Tax Registration Number',
                                               'City', 'Country', 'Phone / Fax No.']));

  if FValidateMessage <> '' then
  begin
    if MessageDlg('Fields "' + FValidateMessage+'" Can not be empty!' + #13 +
      'Do you want to add this Information to Notes?', mtError, mbYesNo, 0) = mrYes then
    begin
      TfrmCOBList(BrowserForm).AddNotes('Fields "' + FValidateMessage+'" Can not be empty!');
    end;

  end;

  Result := IsValidData;

end;

procedure TfrmCOBInstitutionBahana.chkIsSubAccClick(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if chkIsSubAcc.Checked then
    begin
      cmbParentAccID.Visible := True;
      dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 3;
    end
    else
    begin
      cmbParentAccID.Visible := False;
      dsSubject.DataSet.FieldByName('PACCID').AsString := '';
      dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 2;
    end;
  end;
end;

procedure TfrmCOBInstitutionBahana.cxDBImageComboBox10Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('FUND_SOURCE').AsInteger = 0 then
    SourceFund_Other.Visible := True
  else
    SourceFund_Other.Visible := False;
end;

procedure TfrmCOBInstitutionBahana.cxDBImageComboBox2Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if dsSubject.DataSet.FieldByName('COMPANY_CHARACTER_CHK').AsInteger = 0 then
      CompanyTypeOthers.Visible := True
    else
      CompanyTypeOthers.Visible := False;
  end;
end;

procedure TfrmCOBInstitutionBahana.cxDBImageComboBox3PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if cxDBImageComboBox3.EditValue = '1' then
      secto.Visible := True
    else
    begin
      secto.Visible := False;
      dsSubject.DataSet.FieldByName('SEC_SETTLEMENT_TO').AsString := '';
    end;
  end;
end;

procedure TfrmCOBInstitutionBahana.cxDBImageComboBox4PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if cxDBImageComboBox4.EditValue = '1' then
      cashto.Visible := True
    else
    begin
      cashto.Visible := False;
      dsSubject.DataSet.FieldByName('CASH_SETTLEMENT_TO').AsString := '';
    end;
  end;
end;

procedure TfrmCOBInstitutionBahana.cxDBImageComboBox5Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('INVEST_OBJECTIVE').AsInteger = 0 then
    InvObj_Other.Visible := True
  else
    InvObj_Other.Visible := False;
end;

procedure TfrmCOBInstitutionBahana.cxDBImageComboBox6Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('INVEST_EXPERIENCE').AsInteger = 0 then
    invExpOther.Visible := True
  else
    invExpOther.Visible := False;
end;

procedure TfrmCOBInstitutionBahana.FormShow(Sender: TObject);
begin
  inherited;
  PageControl.Properties.ActivePage := pgClientData;

//  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
//    dsSubject.DataSet.FieldByName('CUST_TYPE').AsInteger := 2;

  if dsSubject.DataSet.State in [dsEdit] then
  begin
    if dsSubject.DataSet.FieldByName('ISPACC').AsString = 'Y' then
      cmbParentAccID.Visible := True
    else
      cmbParentAccID.Visible := False;


    if dsSubject.DataSet.FieldByName('SEC_SETTLEMENT').AsString = '1' then
      secto.Visible := True
    else
      secto.Visible := False;

    if dsSubject.DataSet.FieldByName('CASH_SETTLEMENT').AsString = '1' then
      cashto.Visible := True
    else
      cashto.Visible := False;
  end;

  cbAccSecType.Enabled := DataContainer.State = mddsInsert;

end;

function TfrmCOBInstitutionBahana.ValidateFields(AFieldList,
  AFieldNames: Variant): Boolean;
var
  IsEmpty: Boolean;
  i, j: Integer;
begin
  Result := True;
  IsEmpty := False;

  j := VarArrayHighBound(AFieldList, 1);


  for i := 0 to VarArrayHighBound(AFieldList, 1) do
  begin
    if (dsSubject.DataSet.FieldValues[AFieldList[i]] = NULL) or (Trim(dsSubject.DataSet.FieldValues[AFieldList[i]]) = '') then
    begin
      IsEmpty := True;
      Result := False;
    end
    else
      IsEmpty := False;

    if IsEmpty then
    begin
      if FValidateMessage <> '' then FValidateMessage := FValidateMessage + ', ';

      FValidateMessage := FValidateMessage + AFieldNames[i];
//      MessageDlg(AFieldNames[i]+' Can not be empty', mtError, [mbOk], 0);
    end;
  end;

//  Result := not IsEmpty;

end;

end.
