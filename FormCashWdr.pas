unit FormCashWdr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, cxTextEdit, cxMaskEdit,
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
  dxSkinsdxStatusBarPainter, cxCurrencyEdit, Datasnap.DBClient, NClientDataset,
  cxImageComboBox, Vcl.Grids, Vcl.DBGrids, cxButtonEdit, ClassClientConst,
  cxCheckBox, dxLayoutLookAndFeels, cxClasses, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxLabel, cxDBLabel, math;

type
  TfrmCashWdr = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cbBankTarget: TcxDBLookupComboBox;
    cmbBankPrivate: TdxLayoutItem;
    edBankBranchTarget: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    edBankBranchSource: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    lgPrivateBank: TdxLayoutGroup;
    edBankAccNoTarget: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    edBankAccNameTarget: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    edBankAccNoSource: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    edBankAccNameSource: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cdsBankCharges: TNClientDataset;
    cdsBankChargesBNCODE: TStringField;
    cdsBankChargesBNCHGTYPE: TStringField;
    cdsBankChargesCHARGE_AMT: TFloatField;
    cdsBankChargesCHARGE_MINTRANS: TFloatField;
    cdsBankChargesCHARGE_MAXTRANS: TFloatField;
    cdsBankChargesMODDA: TDateTimeField;
    cdsBankChargesMODUI: TStringField;
    cdsBankChargesAPPDA: TDateTimeField;
    cdsBankChargesAPPUI: TStringField;
    cdsBankChargesISDEL: TIntegerField;
    cdsBankChargesID: TLargeintField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    cdsCashPosition: TNClientDataset;
    dxLayoutControl1Group12: TdxLayoutGroup;
    DBGrid1: TDBGrid;
    dxLayoutControl1Item20: TdxLayoutItem;
    dsCashPosition: TDataSource;
    cdsCashPositionBranchID: TIntegerField;
    cdsCashPositionBranchCode: TStringField;
    cdsCashPositionBranchName: TStringField;
    cdsCashPositionSalesID: TIntegerField;
    cdsCashPositionSalesCode: TStringField;
    cdsCashPositionSalesName: TStringField;
    cdsCashPositionACCID: TLargeintField;
    cdsCashPositionACCNO: TStringField;
    cdsCashPositionACCNAME: TStringField;
    cdsCashPositionCCY: TStringField;
    cdsCashPositionCashOnHand: TFloatField;
    cdsCashPositionCashOnHold: TFloatField;
    cdsCashPositionARAmt: TFloatField;
    cdsCashPositionApAmt: TFloatField;
    cdsCashPositionNetARAP: TFloatField;
    cdsCashPositionCashPosition: TFloatField;
    cdsCashPositionSAVEKEEP: TStringField;
    cdsCashPositionBuyAmount: TFloatField;
    cdsCashPositionAvCashAmount: TFloatField;
    dxLayoutControl1Group13: TdxLayoutGroup;
    cbBankSource: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cdsCashWdr: TNClientDataset;
    cdsCashWdrCWID: TLargeintField;
    cdsCashWdrCWCODE: TStringField;
    cdsCashWdrCWDATE: TDateField;
    cdsCashWdrCWDESC: TStringField;
    cdsCashWdrACCID: TIntegerField;
    cdsCashWdrACCNO: TStringField;
    cdsCashWdrACTLED_ACCID: TIntegerField;
    cdsCashWdrACTLED_SEQID: TIntegerField;
    cdsCashWdrSOURCE_ACCBANKID: TIntegerField;
    cdsCashWdrTARGET_ACCBANKID: TIntegerField;
    cdsCashWdrCCY: TStringField;
    cdsCashWdrCWAMT: TFloatField;
    cdsCashWdrBNCHARGES: TFloatField;
    cdsCashWdrBNCHARGESTYPE: TStringField;
    cdsCashWdrPOSTED: TStringField;
    cdsCashWdrMODDA: TDateTimeField;
    cdsCashWdrMODUI: TStringField;
    cdsCashWdrAPPDA: TDateTimeField;
    cdsCashWdrAPPUI: TStringField;
    cdsCashWdrUNDER4Y: TIntegerField;
    cdsCashWdrUNDER4YDA: TDateTimeField;
    cdsCashWdrNOTES4Y: TStringField;
    cdsCashWdrISDEL: TIntegerField;
    cdsCashWdrID: TLargeintField;
    cdsCashWdrACCNAME: TStringField;
    cdsCashWdrSOURCE_BNCODE: TStringField;
    cdsCashWdrSOURCE_BNACCNO: TStringField;
    cdsCashWdrSOURCE_BNACCNAME: TStringField;
    cdsCashWdrSOURCE_BNBRANCH: TStringField;
    cdsCashWdrTARGET_BNCODE: TStringField;
    cdsCashWdrTARGET_BNACCNO: TStringField;
    cdsCashWdrTARGET_BNACCNAME: TStringField;
    cdsCashWdrTARGET_BNBRANCH: TStringField;
    cdsCashWdrTRANSTYPE: TStringField;
    cdsCashWdrTRANSFER_AMT: TFloatField;
    cdsCashWdrACCSOPID: TLargeintField;
    cdsCashWdrLINKTYPE: TStringField;
    cdsCashWdrLINKID: TLargeintField;
    cdsCashWdrPOSTED_DATE: TDateField;
    cdsCashWdrPOSTED_UI: TStringField;
    cdsCashWdrLINKNO: TStringField;
    cdsCashWdrENTRYDATE: TDateField;
    cdsCashWdrWDR_TYPE: TStringField;
    cdsCashWdrUPLOAD_TIME: TDateTimeField;
    cdsCashWdrCANCEL: TStringField;
    cdsCashWdrCANCEL_DATE: TDateField;
    cdsCashWdrCANCEL_UI: TStringField;
    cdsCashWdrAPPROVED: TStringField;
    cdsCashWdrAPPROVED_DATE: TDateField;
    cdsCashWdrAPPROVED_UI: TStringField;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cdsCashWdrSOURCE_CCYCODE: TStringField;
    cdsCashWdrTARGET_CCYCODE: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    edCcySource: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    edCcyTarget: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    cdsBankInstruction: TNClientDataset;
    cdsBankInstructionBIID: TLargeintField;
    cdsBankInstructionBINO: TStringField;
    cdsBankInstructionBITYPE: TStringField;
    cdsBankInstructionENTRYDATE: TDateField;
    cdsBankInstructionVALUEDATE: TDateField;
    cdsBankInstructionBIDESC: TStringField;
    cdsBankInstructionBANK_REF: TStringField;
    cdsBankInstructionTRANS_TYPE: TStringField;
    cdsBankInstructionLINKID: TLargeintField;
    cdsBankInstructionLINKNO: TStringField;
    cdsBankInstructionSTAT: TStringField;
    cdsBankInstructionACCID: TIntegerField;
    cdsBankInstructionACCBANKID_SOURCE: TIntegerField;
    cdsBankInstructionBNCODE_SOURCE: TStringField;
    cdsBankInstructionBNACCNO_SOURCE: TStringField;
    cdsBankInstructionBNACCNAME_SOURCE: TStringField;
    cdsBankInstructionBNBRANCH_SOURCE: TStringField;
    cdsBankInstructionACCBANKID_TARGET: TIntegerField;
    cdsBankInstructionBNCODE_TARGET: TStringField;
    cdsBankInstructionBNACCNO_TARGET: TStringField;
    cdsBankInstructionBNACCNAME_TARGET: TStringField;
    cdsBankInstructionBNBRANCH_TARGET: TStringField;
    cdsBankInstructionTRANFER_TYPE: TStringField;
    cdsBankInstructionCCY: TStringField;
    cdsBankInstructionAMOUNT: TFloatField;
    cdsBankInstructionCHARGES: TFloatField;
    cdsBankInstructionNETAMOUNT: TFloatField;
    cdsBankInstructionMODDA: TDateTimeField;
    cdsBankInstructionMODUI: TStringField;
    cdsBankInstructionAPPDA: TDateTimeField;
    cdsBankInstructionAPPUI: TStringField;
    cdsBankInstructionUNDER4Y: TIntegerField;
    cdsBankInstructionUNDER4YDA: TDateTimeField;
    cdsBankInstructionNOTES4Y: TStringField;
    cdsBankInstructionISDEL: TIntegerField;
    cdsBankInstructionID: TLargeintField;
    cdsBankInstructionBANKTYPE_SOURCE: TStringField;
    cdsBankInstructionCCYCODE_SOURCE: TStringField;
    cdsBankInstructionBANKTYPE_TARGET: TStringField;
    cdsBankInstructionCCYCODE_TARGET: TStringField;
    cdsLuCompanyBankByBank: TNClientDataset;
    cdsLuCompanyBankByBankBANKID: TIntegerField;
    cdsLuCompanyBankByBankCCYCODE: TStringField;
    cdsLuCompanyBankByBankBNCODE: TStringField;
    cdsLuCompanyBankByBankBANKACCNO: TStringField;
    cdsLuCompanyBankByBankBANKACCNAME: TStringField;
    cdsLuCompanyBankByBankBANKBRANCH: TStringField;
    cdsLuCompanyBankByBankBANKTYPE: TStringField;
    cdsLuCompanyBankByBankSTAT: TStringField;
    cdsLuCompanyBankByBankBNNAME: TStringField;
    cdsLuCompanyBankDefault: TNClientDataset;
    cdsLuCompanyBankDefaultBANKID: TIntegerField;
    cdsLuCompanyBankDefaultCCYCODE: TStringField;
    cdsLuCompanyBankDefaultBNCODE: TStringField;
    cdsLuCompanyBankDefaultBANKACCNO: TStringField;
    cdsLuCompanyBankDefaultBANKACCNAME: TStringField;
    cdsLuCompanyBankDefaultBANKBRANCH: TStringField;
    cdsLuCompanyBankDefaultBANKTYPE: TStringField;
    cdsLuCompanyBankDefaultSTAT: TStringField;
    cdsLuCompanyBankDefaultBNNAME: TStringField;
    cdsLuAccountBankDefault: TNClientDataset;
    cdsLuAccountBankDefaultACCID: TIntegerField;
    cdsLuAccountBankDefaultCCYCODE: TStringField;
    cdsLuAccountBankDefaultACCBANKID: TIntegerField;
    cdsLuAccountBankDefaultBNCODE: TStringField;
    cdsLuAccountBankDefaultBANKACCNO: TStringField;
    cdsLuAccountBankDefaultBANKACCNAME: TStringField;
    cdsLuAccountBankDefaultBANKBRANCH: TStringField;
    cdsLuAccountBankDefaultACCBANKID_1: TIntegerField;
    cdsLuAccountBankDefaultBNCODE_1: TStringField;
    cdsLuAccountBankDefaultBANKACCNO_1: TStringField;
    cdsLuAccountBankDefaultBANKACCNAME_1: TStringField;
    cdsLuAccountBankDefaultBANKBRANCH_1: TStringField;
    cdsCashPositionCASH_SUBACC: TFloatField;
    cdsCashPosByAccCcy: TNClientDataset;
    cdsCashPosByAccCcyVALUEDATE: TDateField;
    cdsCashPosByAccCcyACCID: TLargeintField;
    cdsCashPosByAccCcyACCSOPID: TLargeintField;
    cdsCashPosByAccCcyCCY: TStringField;
    cdsCashPosByAccCcyACCNO: TStringField;
    cdsCashPosByAccCcyACCRUED_INTEREST: TFloatField;
    cdsCashPosByAccCcyCASH_ONHAND: TFloatField;
    cdsCashPosByAccCcyCASH_QQ: TFloatField;
    cdsCashPosByAccCcyCASH_SUBACC: TFloatField;
    cdsCashPosByAccCcyCASH_ONHOLD: TFloatField;
    cdsCashPosByAccCcyARAMT: TFloatField;
    cdsCashPosByAccCcyAPAMT: TFloatField;
    cdsCashPosByAccCcyCASH_OUTS: TFloatField;
    cdsCashPosByAccCcyBUY_AMT: TFloatField;
    cdsCashPosByAccCcySELL_AMT: TFloatField;
    cdsCashPosByAccCcyCASH_WDR: TFloatField;
    cdsCashPosByAccCcyMODDA: TDateTimeField;
    cdsCashPosByAccCcyMODUI: TStringField;
    cdsCashPosByAccCcyAPPDA: TDateTimeField;
    cdsCashPosByAccCcyAPPUI: TStringField;
    cdsCashPosByAccCcyUNDER4Y: TIntegerField;
    cdsCashPosByAccCcyUNDER4YDA: TDateTimeField;
    cdsCashPosByAccCcyNOTES4Y: TStringField;
    cdsCashPosByAccCcyISDEL: TIntegerField;
    cdsCashPosByAccCcyID: TLargeintField;
    cdsCashPosByAccCcyCASH_OTHERS: TFloatField;
    cdsCashPositionAvailWdr: TFloatField;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem2: TdxLayoutItem;
    cdsBankChargesCCYCODE: TStringField;
    procedure cxDBCurrencyEdit1Exit(Sender: TObject);
    procedure cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
    procedure cxDBImageComboBox1Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsCashWdrBeforePost(DataSet: TDataSet);
    procedure cdsCashWdrACCIDChange(Sender: TField);
    procedure cdsCashWdrCCYChange(Sender: TField);
    procedure cdsCashWdrNewRecord(DataSet: TDataSet);
    procedure cdsCashWdrBNCHARGESChange(Sender: TField);
    procedure cdsCashWdrAfterOpen(DataSet: TDataSet);
    procedure cdsCashWdrAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsCashWdrTARGET_ACCBANKIDChange(Sender: TField);
    procedure cdsCashWdrSOURCE_ACCBANKIDChange(Sender: TField);
    procedure cdsCashPositionAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CalculateTransferAmount;
  public
    { Public declarations }
  end;

var
  frmCashWdr: TfrmCashWdr;

implementation

{$R *.dfm}

uses FormCashWdrList, DataGlobal, DataLookup, FormLuAccBankGroupByEntity,
  FormLuAccount;

procedure TfrmCashWdr.btnOKClick(Sender: TObject);
var
  dAvailWithdraw,
  dWithdrawAmount: Double;
  bCon: Boolean;
begin
  bCon := True;
  dAvailWithdraw  := cdsCashPositionAvailWdr.AsFloat;
  dWithdrawAmount := dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat + dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat;

//  if (Self.DataContainer.State in [mddsInsert, mddsEdit, mddsApprove]) or ((dsSubject.DataSet.FieldByName('UPDSTS').AsString = 'N') or (dsSubject.DataSet.FieldByName('UPDSTS').AsString = 'U')) then
  if (Self.State in [pkCreate, pkUpdate, pkApprove]) then
  begin
    if (dsSubject.DataSet.FieldByName('CWAMT').AsFloat <> 0) then
    begin
      if dAvailWithdraw >= dWithdrawAmount then
        inherited
      else
      begin
        MessageDlg('Not enough cash position to be withdrawed...', mtError, [mbOK], 0);
        bCon := False;
      end;
    end
    else
    begin
      MessageDlg('Plase fill the amount for withdrawed...', mtError, [mbOK], 0);
      bCon := False;
    end;
  end
  else
    inherited;

  if (Self.State in [pkCreate]) and (cdsCashWdrTARGET_ACCBANKID.AsInteger <> 0) and (bCon = True) then
  begin
    if cdsCashWdr.State in dsEditModes then
      cdsCashWdr.Post;

    cdsBankInstruction.Close;
    cdsBankInstruction.Params[0].AsInteger := -1;
    cdsBankInstruction.Open;

    //Bank Type di Bank Instruction
    //1: Company Payment Bank
    //2: Company QQ Bank
    //3: Client RDN Bank
    //4: Client Private Bank

    //Karena langsung dari RDN ke Private Bank, jadi yang if if-an dihilangkan saja
//    if cdsCashWdrSOURCE_BNCODE.AsString = cdsCashWdrTARGET_BNCODE.AsString then
//    begin
      //Client RDN Bank --> Client Private Bank
      cdsBankInstruction.Append;
      cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
      cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
        cdsCashWdrENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
      cdsBankInstructionBITYPE.AsString := 'P';
      cdsBankInstructionENTRYDATE.AsDateTime := cdsCashWdrENTRYDATE.AsDateTime;
      cdsBankInstructionVALUEDATE.AsDateTime := cdsCashWdrCWDATE.AsDateTime;
      cdsBankInstructionBIDESC.AsString := 'Cash Withdraw ' + cdsCashWdrCWCODE.AsString;
      cdsBankInstructionBANK_REF.AsString := '';
      cdsBankInstructionTRANS_TYPE.AsString := 'CW';
      cdsBankInstructionLINKID.AsLargeInt := cdsCashWdrCWID.AsLargeInt;
      cdsBankInstructionLINKNO.AsString := cdsCashWdrCWCODE.AsString;
      cdsBankInstructionSTAT.AsString := '1';
      cdsBankInstructionACCID.AsInteger := cdsCashWdrACCID.AsInteger;

      cdsBankInstructionBANKTYPE_SOURCE.AsString := '3';
      cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashWdrSOURCE_ACCBANKID.AsInteger;
      cdsBankInstructionBNCODE_SOURCE.AsString := cdsCashWdrSOURCE_BNCODE.AsString;
      cdsBankInstructionBNACCNO_SOURCE.AsString := cdsCashWdrSOURCE_BNACCNO.AsString;
      cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsCashWdrSOURCE_BNACCNAME.AsString;
      cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsCashWdrSOURCE_BNBRANCH.AsString;
      cdsBankInstructionCCYCODE_SOURCE.AsString := cdsCashWdrSOURCE_CCYCODE.AsString;

      cdsBankInstructionBANKTYPE_TARGET.AsString := '4';
      cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashWdrTARGET_ACCBANKID.AsInteger;
      cdsBankInstructionBNCODE_TARGET.AsString := cdsCashWdrTARGET_BNCODE.AsString;
      cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashWdrTARGET_BNACCNO.AsString;
      cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashWdrTARGET_BNACCNAME.AsString;
      cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashWdrTARGET_BNBRANCH.AsString;
      cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashWdrTARGET_CCYCODE.AsString;

      cdsBankInstructionTRANFER_TYPE.AsString := cdsCashWdrTRANSTYPE.AsString;//R: Remiter, B: Beneficiary
      cdsBankInstructionCCY.AsString := cdsCashWdrCCY.AsString;
      cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashWdrCWAMT.AsFloat);
      cdsBankInstructionCHARGES.AsFloat := Abs(cdsCashWdrBNCHARGES.AsFloat);
      cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashWdrTRANSFER_AMT.AsFloat);
      cdsBankInstruction.Post;
//    end
//    else
//    begin
//      //Client RDN Bank --> Company Payment Bank
//      cdsBankInstruction.Append;
//      cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
//      cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
//        cdsCashWdrENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
//      cdsBankInstructionBITYPE.AsString := 'P';
//      cdsBankInstructionENTRYDATE.AsDateTime := cdsCashWdrENTRYDATE.AsDateTime;
//      cdsBankInstructionVALUEDATE.AsDateTime := cdsCashWdrCWDATE.AsDateTime;
//      cdsBankInstructionBIDESC.AsString := 'Cash Withdraw ' + cdsCashWdrCWCODE.AsString;
//      cdsBankInstructionBANK_REF.AsString := '';
//      cdsBankInstructionTRANS_TYPE.AsString := 'CW';
//      cdsBankInstructionLINKID.AsLargeInt := cdsCashWdrCWID.AsLargeInt;
//      cdsBankInstructionLINKNO.AsString := cdsCashWdrCWCODE.AsString;
//      cdsBankInstructionSTAT.AsString := '1';
//      cdsBankInstructionACCID.AsInteger := cdsCashWdrACCID.AsInteger;
//
//      cdsBankInstructionBANKTYPE_SOURCE.AsString := '3';
//      cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsCashWdrSOURCE_ACCBANKID.AsInteger;
//      cdsBankInstructionBNCODE_SOURCE.AsString := cdsCashWdrSOURCE_BNCODE.AsString;
//      cdsBankInstructionBNACCNO_SOURCE.AsString := cdsCashWdrSOURCE_BNACCNO.AsString;
//      cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsCashWdrSOURCE_BNACCNAME.AsString;
//      cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsCashWdrSOURCE_BNBRANCH.AsString;
//      cdsBankInstructionCCYCODE_SOURCE.AsString := cdsCashWdrSOURCE_CCYCODE.AsString;
//
//      cdsLuCompanyBankByBank.Close;
//      cdsLuCompanyBankByBank.Params[0].AsString := '1';//Company Payment Bank
//      cdsLuCompanyBankByBank.Params[1].AsString := cdsCashWdrCCY.AsString;
//      cdsLuCompanyBankByBank.Params[2].AsString := cdsCashWdrSOURCE_BNCODE.AsString;
//      cdsLuCompanyBankByBank.Open;
//
//      if not cdsLuCompanyBankByBank.IsEmpty then
//      begin
//        cdsBankInstructionBANKTYPE_TARGET.AsString := '1';
//        cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsLuCompanyBankByBankBANKID.AsInteger;
//        cdsBankInstructionBNCODE_TARGET.AsString := cdsLuCompanyBankByBankBNCODE.AsString;
//        cdsBankInstructionBNACCNO_TARGET.AsString := cdsLuCompanyBankByBankBANKACCNO.AsString;
//        cdsBankInstructionBNACCNAME_TARGET.AsString := cdsLuCompanyBankByBankBANKACCNAME.AsString;
//        cdsBankInstructionBNBRANCH_TARGET.AsString := cdsLuCompanyBankByBankBANKBRANCH.AsString;
//        cdsBankInstructionCCYCODE_TARGET.AsString := cdsLuCompanyBankByBankCCYCODE.AsString;
//      end
//      else
//      begin
//        cdsLuCompanyBankDefault.Close;
//        cdsLuCompanyBankDefault.Params[0].AsString := '1';
//        cdsLuCompanyBankDefault.Params[1].AsString := cdsCashWdrCCY.AsString;
//        cdsLuCompanyBankDefault.Open;
//
//        if not cdsLuCompanyBankDefault.IsEmpty then
//        begin
//          cdsBankInstructionBANKTYPE_TARGET.AsString := '1';
//          cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsLuCompanyBankDefaultBANKID.AsInteger;
//          cdsBankInstructionBNCODE_TARGET.AsString := cdsLuCompanyBankDefaultBNCODE.AsString;
//          cdsBankInstructionBNACCNO_TARGET.AsString := cdsLuCompanyBankDefaultBANKACCNO.AsString;
//          cdsBankInstructionBNACCNAME_TARGET.AsString := cdsLuCompanyBankDefaultBANKACCNAME.AsString;
//          cdsBankInstructionBNBRANCH_TARGET.AsString := cdsLuCompanyBankDefaultBANKBRANCH.AsString;
//          cdsBankInstructionCCYCODE_TARGET.AsString := cdsLuCompanyBankDefaultCCYCODE.AsString;
//        end
//        else
//        begin
//          dmGlobal.ErrorMessage('Please set default company payment bank');
//          Abort;
//        end;
//      end;
//
//      cdsBankInstructionTRANFER_TYPE.AsString := cdsCashWdrTRANSTYPE.AsString;//R: Remiter, B: Beneficiary
//      cdsBankInstructionCCY.AsString := cdsCashWdrCCY.AsString;
//      cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashWdrCWAMT.AsFloat);
//      cdsBankInstructionCHARGES.AsFloat := Abs(cdsCashWdrBNCHARGES.AsFloat);
//      cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashWdrTRANSFER_AMT.AsFloat);
//      cdsBankInstruction.Post;
//
//      //Company Payment Bank --> Client Private Bank
//      cdsBankInstruction.Append;
//      cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
//      cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
//        cdsCashWdrENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
//      cdsBankInstructionBITYPE.AsString := 'P';
//      cdsBankInstructionENTRYDATE.AsDateTime := cdsCashWdrENTRYDATE.AsDateTime;
//      cdsBankInstructionVALUEDATE.AsDateTime := cdsCashWdrCWDATE.AsDateTime;
//      cdsBankInstructionBIDESC.AsString := 'Cash Withdraw ' + cdsCashWdrCWCODE.AsString;
//      cdsBankInstructionBANK_REF.AsString := '';
//      cdsBankInstructionTRANS_TYPE.AsString := 'CW';
//      cdsBankInstructionLINKID.AsLargeInt := cdsCashWdrCWID.AsLargeInt;
//      cdsBankInstructionLINKNO.AsString := cdsCashWdrCWCODE.AsString;
//      cdsBankInstructionSTAT.AsString := '1';
//      cdsBankInstructionACCID.AsInteger := cdsCashWdrACCID.AsInteger;
//
//      cdsLuCompanyBankByBank.Close;
//      cdsLuCompanyBankByBank.Params[0].AsString := '1';//Company Payment Bank
//      cdsLuCompanyBankByBank.Params[1].AsString := cdsCashWdrCCY.AsString;
//      cdsLuCompanyBankByBank.Params[2].AsString := cdsCashWdrTARGET_BNCODE.AsString;
//      cdsLuCompanyBankByBank.Open;
//
//      if not cdsLuCompanyBankByBank.IsEmpty then
//      begin
//        cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
//        cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsLuCompanyBankByBankBANKID.AsInteger;
//        cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuCompanyBankByBankBNCODE.AsString;
//        cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuCompanyBankByBankBANKACCNO.AsString;
//        cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuCompanyBankByBankBANKACCNAME.AsString;
//        cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuCompanyBankByBankBANKBRANCH.AsString;
//        cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuCompanyBankByBankCCYCODE.AsString;
//      end
//      else
//      begin
//        cdsLuCompanyBankDefault.Close;
//        cdsLuCompanyBankDefault.Params[0].AsString := '1';
//        cdsLuCompanyBankDefault.Params[1].AsString := cdsCashWdrCCY.AsString;
//        cdsLuCompanyBankDefault.Open;
//
//        if not cdsLuCompanyBankDefault.IsEmpty then
//        begin
//          cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
//          cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsLuCompanyBankDefaultBANKID.AsInteger;
//          cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuCompanyBankDefaultBNCODE.AsString;
//          cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuCompanyBankDefaultBANKACCNO.AsString;
//          cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuCompanyBankDefaultBANKACCNAME.AsString;
//          cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuCompanyBankDefaultBANKBRANCH.AsString;
//          cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuCompanyBankDefaultCCYCODE.AsString;
//        end
//        else
//        begin
//          dmGlobal.ErrorMessage('Please set default company payment bank');
//          Abort;
//        end;
//      end;
//
//      cdsBankInstructionBANKTYPE_TARGET.AsString := '4';
//      cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsCashWdrTARGET_ACCBANKID.AsInteger;
//      cdsBankInstructionBNCODE_TARGET.AsString := cdsCashWdrTARGET_BNCODE.AsString;
//      cdsBankInstructionBNACCNO_TARGET.AsString := cdsCashWdrTARGET_BNACCNO.AsString;
//      cdsBankInstructionBNACCNAME_TARGET.AsString := cdsCashWdrTARGET_BNACCNAME.AsString;
//      cdsBankInstructionBNBRANCH_TARGET.AsString := cdsCashWdrTARGET_BNBRANCH.AsString;
//      cdsBankInstructionCCYCODE_TARGET.AsString := cdsCashWdrTARGET_CCYCODE.AsString;
//
//      cdsBankInstructionTRANFER_TYPE.AsString := cdsCashWdrTRANSTYPE.AsString;//R: Remiter, B: Beneficiary
//      cdsBankInstructionCCY.AsString := cdsCashWdrCCY.AsString;
//      cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashWdrCWAMT.AsFloat);
//      cdsBankInstructionCHARGES.AsFloat := Abs(cdsCashWdrBNCHARGES.AsFloat);
//      cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashWdrTRANSFER_AMT.AsFloat);
//      cdsBankInstruction.Post;
//    end;
  end;
end;

procedure TfrmCashWdr.CalculateTransferAmount;
begin
  if dsSubject.DataSet.FieldByName('TRANSTYPE').AsString = 'R' then
    dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat := dsSubject.DataSet.FieldByName('CWAMT').AsFloat
  else if dsSubject.DataSet.FieldByName('TRANSTYPE').AsString = 'B' then
    dsSubject.DataSet.FieldByName('TRANSFER_AMT').AsFloat := dsSubject.DataSet.FieldByName('CWAMT').AsFloat - dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat;
end;

procedure TfrmCashWdr.cdsCashPositionAfterOpen(DataSet: TDataSet);
var
  dCashAvail: double;
begin
  inherited;
  dCashAvail := cdsCashPositionCashOnHand.AsFloat; //- cdsCashPositionCashOnHold.AsFloat;

  cdsCashPosition.Edit;
  if cdsCashPositionAvCashAmount.AsFloat > dCashAvail then
    cdsCashPositionAvailWdr.AsFloat := dCashAvail
  else
    cdsCashPositionAvailWdr.AsFloat := cdsCashPositionAvCashAmount.AsFloat;
  cdsCashPosition.Post;
end;

procedure TfrmCashWdr.cdsCashWdrACCIDChange(Sender: TField);
begin
  inherited;
  cdsCashPosition.Close;
  cdsCashPosition.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
  cdsCashPosition.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
  cdsCashPosition.Open;

  if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
  begin
    cdsLuAccountBankDefault.Close;
    cdsLuAccountBankDefault.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
    cdsLuAccountBankDefault.Params[1].AsString := cdsCashWdrCCY.AsString;
    cdsLuAccountBankDefault.Open;

    with dmGlobal.IntDataLookup do
    begin
      cdsLuRDNBankAcc.Close;
      cdsLuRDNBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuRDNBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
      cdsLuRDNBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
      cdsLuRDNBankAcc.Open;

      cdsLuPrivateBankAcc.Close;
      cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuPrivateBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Open;
    end;

    if not cdsLuAccountBankDefault.IsEmpty then
    begin
      cdsCashWdrSOURCE_ACCBANKID.AsInteger := cdsLuAccountBankDefaultACCBANKID_1.AsInteger;
      cdsCashWdrTARGET_ACCBANKID.AsInteger := cdsLuAccountBankDefaultACCBANKID.AsInteger;
    end
    else
    begin
      cdsCashWdrSOURCE_ACCBANKID.Clear;
      cdsCashWdrTARGET_ACCBANKID.AsInteger := 0;
    end;
  end;
end;

procedure TfrmCashWdr.cdsCashWdrAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if cdsBankInstruction.Active then
    cdsBankInstruction.ApplyUpdates(-1);
end;

procedure TfrmCashWdr.cdsCashWdrAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsCashWdr.IsEmpty then
  begin
    cdsCashPosition.Close;
    cdsCashPosition.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
    cdsCashPosition.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
    cdsCashPosition.Open;

    if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
    begin
      with dmGlobal.IntDataLookup do
      begin
        cdsLuRDNBankAcc.Close;
        cdsLuRDNBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
        cdsLuRDNBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
        cdsLuRDNBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
        cdsLuRDNBankAcc.Open;

        cdsLuPrivateBankAcc.Close;
        cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
        cdsLuPrivateBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
        cdsLuPrivateBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
        cdsLuPrivateBankAcc.Open;
      end;
    end;
  end;
end;

procedure TfrmCashWdr.cdsCashWdrBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCashWdr.State in [dsInsert] then
  begin
    cdsCashWdrCWID.AsLargeInt   := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHWDR');
    cdsCashWdrPOSTED.AsString   := '0';
    cdsCashWdrAPPROVED.AsString := '0';
    cdsCashWdrCWCODE.AsString   := dmGlobal.RemoteServer.GetVoucherNo(cdsCashWdrENTRYDATE.AsDateTime, 'CW', 'TBL_B_CASHWDR');
  end;

  cdsCashPosByAccCcy.Close;
  cdsCashPosByAccCcy.Params[0].AsDate    := cdsCashWdrENTRYDATE.AsDateTime;
  cdsCashPosByAccCcy.Params[1].AsInteger := cdsCashWdrACCID.AsInteger;
  cdsCashPosByAccCcy.Params[2].AsString  := cdsCashWdrCCY.AsString;
  cdsCashPosByAccCcy.Open;

  cdsCashPosByAccCcy.Edit;
  cdsCashPosByAccCcyCASH_ONHOLD.AsFloat := cdsCashPosByAccCcyCASH_ONHOLD.AsFloat - cdsCashWdrCWAMT.OldValue + cdsCashWdrCWAMT.NewValue;
  cdsCashPosByAccCcy.Post;

  cdsCashPosByAccCcy.ApplyUpdates(-1);
end;

procedure TfrmCashWdr.cdsCashWdrBNCHARGESChange(Sender: TField);
begin
  inherited;
  if cdsCashWdr.State in dsEditModes then
    cdsCashWdrTRANSFER_AMT.AsFloat := cdsCashWdrCWAMT.AsFloat - cdsCashWdrBNCHARGES.AsFloat;
end;

procedure TfrmCashWdr.cdsCashWdrCCYChange(Sender: TField);
begin
  inherited;
  if (not cdsCashWdrACCID.IsNull) And (not cdsCashWdrCCY.IsNull) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuRDNBankAcc.Close;
      cdsLuRDNBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuRDNBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
      cdsLuRDNBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
      cdsLuRDNBankAcc.Open;

      cdsLuPrivateBankAcc.Close;
      cdsLuPrivateBankAcc.Params[0].AsInteger := cdsCashWdrACCID.AsInteger;
      cdsLuPrivateBankAcc.Params[1].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Params[2].AsString := cdsCashWdrCCY.AsString;
      cdsLuPrivateBankAcc.Open;
    end;
  end;
end;

procedure TfrmCashWdr.cdsCashWdrNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCashWdrCWID.AsInteger := -1;
  cdsCashWdrTRANSTYPE.AsString := 'R';
  cdsCashWdrACTLED_ACCID.AsInteger     := 0;
  cdsCashWdrACTLED_SEQID.AsInteger     := 0;
  cdsCashWdrTARGET_ACCBANKID.AsInteger := 0;
  cdsCashWdrENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCashWdrCWDATE.AsDateTime := cdsCashWdrENTRYDATE.AsDateTime;
  cdsCashWdrCWCODE.AsString := '<AUTO>';
  cdsCashWdrWDR_TYPE.AsString := 'R';
  cdsCashWdrCCY.AsString := dmGlobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmCashWdr.cdsCashWdrSOURCE_ACCBANKIDChange(Sender: TField);
begin
  inherited;

  if Self.Visible then
  begin
    edCcySource.SetFocus;
    edBankBranchSource.SetFocus;
    edBankAccNoSource.SetFocus;
    edBankAccNameSource.SetFocus;
    cbBankSource.SetFocus;
  end;
end;

procedure TfrmCashWdr.cdsCashWdrTARGET_ACCBANKIDChange(Sender: TField);
begin
  inherited;
  if cdsCashWdrTARGET_ACCBANKID.IsNull then
    cdsCashWdrTARGET_ACCBANKID.AsInteger := 0;

  if Self.Visible then
  begin
    edCcyTarget.SetFocus;
    edBankBranchTarget.SetFocus;
    edBankAccNoTarget.SetFocus;
    edBankAccNameTarget.SetFocus;
    cbBankTarget.SetFocus;
  end;
end;

procedure TfrmCashWdr.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
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
        dsSubject.DataSet.FieldByName('ACCNO').AsString   := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmCashWdr.cxDBCurrencyEdit1Exit(Sender: TObject);
var
  sChargeMin,
  sChargeMax,
  sCCY: string;
begin
  inherited;
  with frmCashWdrList do
  begin
    if (dsSubject.DataSet.FieldByName('SOURCE_BNCODE').AsString <> dsSubject.DataSet.FieldByName('TARGET_BNCODE').AsString) and
       (not VarIsNull(dsSubject.DataSet.FieldByName('CWAMT').AsFloat) or not VarIsEmpty(dsSubject.DataSet.FieldByName('CWAMT').AsFloat))
    then
    begin
      sChargeMin := FloatToStr(dsSubject.DataSet.FieldByName('CWAMT').AsFloat);
      sChargeMax := FloatToStr(dsSubject.DataSet.FieldByName('CWAMT').AsFloat);
      sCCY       := dsSubject.DataSet.FieldByName('CCY').AsString;

      cdsBankCharges.Filtered := False;
      cdsBankCharges.Filter   := '(BNCODE = '+QuotedStr(dsSubject.DataSet.FieldByName('SOURCE_BNCODE').AsString)+
                                 ') AND (CHARGE_MINTRANS <= '+sChargeMin+
                                 ') AND (CHARGE_MAXTRANS >= '+sChargeMax+
                                 ') AND (CCYCODE = '+QuotedStr(sCCY)+')';
      cdsBankCharges.Filtered := True;

      dsSubject.DataSet.FieldByName('BNCHARGESTYPE').AsString := cdsBankChargesBNCHGTYPE.AsString;
      dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat      := cdsBankChargesCHARGE_AMT.AsFloat;
    end
    else
    begin
      dsSubject.DataSet.FieldByName('BNCHARGESTYPE').AsString := 'OB';
      dsSubject.DataSet.FieldByName('BNCHARGES').AsFloat      := 0;
    end;
  end;

  CalculateTransferAmount;
end;

procedure TfrmCashWdr.cxDBImageComboBox1Exit(Sender: TObject);
begin
  inherited;
  CalculateTransferAmount;
end;

procedure TfrmCashWdr.cxDBImageComboBox1PropertiesCloseUp(Sender: TObject);
begin
  inherited;
  CalculateTransferAmount;
end;

Initialization
  RegisterClass(TfrmCashWdr);

end.
