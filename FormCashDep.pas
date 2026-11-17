unit FormCashDep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, NDatasetContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, cxCurrencyEdit, cxButtonEdit, Datasnap.DBClient,
  NClientDataset, dxLayoutLookAndFeels, cxClasses, cxCheckBox;

type
  TfrmCashDep = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cbBank: TcxDBLookupComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cdsCashDep: TNClientDataset;
    cxDBButtonEdit1: TcxDBButtonEdit;
    AccName: TdxLayoutItem;
    cdsCashDepCDID: TLargeintField;
    cdsCashDepCDCODE: TStringField;
    cdsCashDepCDDATE: TDateField;
    cdsCashDepCDDESC: TStringField;
    cdsCashDepACCSOPID: TLargeintField;
    cdsCashDepACCID: TIntegerField;
    cdsCashDepACCNO: TStringField;
    cdsCashDepACTLED_ACCID: TIntegerField;
    cdsCashDepACTLED_SEQID: TIntegerField;
    cdsCashDepACCBANKID: TIntegerField;
    cdsCashDepCCY: TStringField;
    cdsCashDepCDAMT: TFloatField;
    cdsCashDepLINKTYPE: TStringField;
    cdsCashDepLINKID: TLargeintField;
    cdsCashDepPOSTED: TStringField;
    cdsCashDepPOSTED_DATE: TDateField;
    cdsCashDepPOSTED_UI: TStringField;
    cdsCashDepMODDA: TDateTimeField;
    cdsCashDepMODUI: TStringField;
    cdsCashDepAPPDA: TDateTimeField;
    cdsCashDepAPPUI: TStringField;
    cdsCashDepUNDER4Y: TIntegerField;
    cdsCashDepUNDER4YDA: TDateTimeField;
    cdsCashDepNOTES4Y: TStringField;
    cdsCashDepISDEL: TIntegerField;
    cdsCashDepID: TLargeintField;
    cdsCashDepLINKNO: TStringField;
    cdsCashDepENTRYDATE: TDateField;
    cdsCashDepCANCEL: TStringField;
    cdsCashDepCANCEL_DATE: TDateField;
    cdsCashDepCANCEL_UI: TStringField;
    cdsCashDepDEP_TYPE: TStringField;
    cdsCashDepUPLOAD_TIME: TDateTimeField;
    cdsCashDepACCNAME: TStringField;
    cdsCashDepBNCODE: TStringField;
    cdsCashDepBNACCNO: TStringField;
    cdsCashDepBNACCNAME: TStringField;
    cdsCashDepBNBRANCH: TStringField;
    cdsCashDepCCY_TMP: TStringField;
    txtAccName: TcxTextEdit;
    AccountName: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsCashDepBANKCCYCODE: TStringField;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cdsCashDepISRDN: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsCashDepACCIDChange(Sender: TField);
    procedure cdsCashDepACCBANKIDChange(Sender: TField);
    procedure cdsCashDepNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsCashDepBeforePost(DataSet: TDataSet);
    procedure cdsCashDepAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashDep: TfrmCashDep;

implementation

{$R *.dfm}

uses FormCashDepList, DataGlobal, DataLookup, FormLuAccBankGroupByEntity,
  FormLuAccount;

procedure TfrmCashDep.btnOKClick(Sender: TObject);
begin
  if (VarIsNull(dsSubject.DataSet.FieldByName('ACCBANKID').AsInteger)) and (VarIsEmpty(dsSubject.DataSet.FieldByName('ACCBANKID').AsInteger)) then
    MessageDlg('Please fill amount for deposit...', mtError, [mbOK], 0)
  else
  begin
    if (dsSubject.DataSet.FieldByName('CDAMT').AsFloat <> 0) then
      inherited
    else
      MessageDlg('Please fill amount for deposit...', mtError, [mbOK], 0);
  end;
end;

procedure TfrmCashDep.cdsCashDepACCBANKIDChange(Sender: TField);
begin
  inherited;
  cdsCashDepCCY.AsString := cdsCashDepBANKCCYCODE.AsString;
end;

procedure TfrmCashDep.cdsCashDepACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', cdsCashDepACCID.Value, []) then
    begin
      cdsCashDepACCNO.AsString := cdsLuAccountACCCODE.AsString;
      cdsCashDepACCNAME.AsString := cdsLuAccountACCNAME.AsString;
    end;
  end;
end;

procedure TfrmCashDep.cdsCashDepAfterPost(DataSet: TDataSet);
begin
  inherited;
  dmGlobal.CashDepID        := cdsCashDepCDID.AsInteger;
  dmGlobal.DefaultAccountID := -1;
end;

procedure TfrmCashDep.cdsCashDepBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCashDep.State in [dsInsert] then
  begin
    if (cdsCashDepCDCODE.IsNull) or (cdsCashDepCDCODE.AsString = '<AUTO>') then
    begin
      cdsCashDepCDCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCashDepENTRYDATE.AsDateTime, 'CD', 'TBL_B_CASHDEP');
    end;

    cdsCashDepCDID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHDEP');
  end;
end;

procedure TfrmCashDep.cdsCashDepNewRecord(DataSet: TDataSet);
var
  LocalCcy: String;
  fValue, fInverseValue: Double;
begin
  inherited;
  LocalCcy                       := dmGlobal.RemoteServer.GetLocalCCY;
  cdsCashDepCDID.AsLargeInt      := -1;
  cdsCashDepPOSTED.AsString      := '0';
  cdsCashDepENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCashDepCDDATE.AsDateTime    := cdsCashDepENTRYDATE.AsDateTime;
  cdsCashDepCDCODE.AsString      := '<AUTO>';

  cdsCashDepACCBANKID.AsInteger    := 0;
  cdsCashDepACTLED_ACCID.AsInteger := 0;
  cdsCashDepACTLED_SEQID.AsInteger := 0;
  cdsCashDepCCY.AsString           := LocalCcy;
  cdsCashDepISRDN.AsString         := '0';

  if dmGlobal.DefaultAccountID <> -1 then
  begin
    cdsCashDepACCID.AsInteger := dmGlobal.DefaultAccountID;
    cdsCashDepCCY.AsString    := dmGlobal.DefaultCurrency;
    cdsCashDepCDAMT.AsFloat   := dmGlobal.DefaultAmount;
  end;

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankCompany.Locate('CCYCODE', cdsCashDepCCY.AsString, []) then
      cdsCashDepACCBANKID.AsInteger := cdsLuBankCompanyBANKID.AsInteger
    else
    begin
      if cdsCashDepCDAMT.AsFloat > 0 then
      begin
        dmGlobal.RemoteServer.GetCurrentCcyRate(cdsCashDepCCY.AsString, LocalCcy, fValue, fInverseValue);
        cdsCashDepCDAMT.AsFloat := cdsCashDepCDAMT.AsFloat * fValue;
      end
      else
        cdsCashDepCDAMT.AsFloat := 0;

      if cdsLuBankCompany.Locate('CCYCODE', cdsCashDepCCY.AsString, []) then
        cdsCashDepACCBANKID.AsInteger := cdsLuBankCompanyBANKID.AsInteger;
    end;
  end;

end;

procedure TfrmCashDep.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
//        dsSubject.DataSet.FieldByName('ACCNO').AsString   := cdsLuAccountMultiFilterACCCODE.AsString;
//        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;

      end;
    end;
  end;
end;

procedure TfrmCashDep.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuBankCompany.Active then
      cdsLuBankCompany.Open;
  end;
end;

procedure TfrmCashDep.FormShow(Sender: TObject);
var
  sSeqNo: string;
begin
  inherited;
  AccName.Visible     := True;
  AccountName.Visible := False;

  with dmGlobal.IntDataLookup do
  begin

    if not cdsLuAccount.Active then
      cdsLuAccount.Open;

    if cdsLuAccount.Locate('ACCID', cdsCashDepACCID.AsInteger, []) then
    begin
      if dsSubject.DataSet.State in [dsBrowse] then
      begin
        AccName.Visible     := False;
        AccountName.Visible := True;
        txtAccName.Text     := cdsLuAccountACCNAME.AsString;
      end
      else
        cdsCashDepACCNAME.AsString := cdsLuAccountACCNAME.AsString;
    end;
  end;

end;

Initialization
  RegisterClass(TfrmCashDep);

end.
