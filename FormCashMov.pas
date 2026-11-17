unit FormCashMov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, DBClient, NClientDataset, NDatasetContainer, cxCurrencyEdit,
  dxLayoutLookAndFeels, cxImageComboBox, cxClasses;

type
  TfrmCashMov = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    edCashOnHand: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cdsCashMov: TNClientDataset;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
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
    cdsLuAccountBankDefaultTarget: TNClientDataset;
    cdsLuAccountBankDefaultTargetACCID: TIntegerField;
    cdsLuAccountBankDefaultTargetCCYCODE: TStringField;
    cdsLuAccountBankDefaultTargetACCBANKID: TIntegerField;
    cdsLuAccountBankDefaultTargetBNCODE: TStringField;
    cdsLuAccountBankDefaultTargetBANKACCNO: TStringField;
    cdsLuAccountBankDefaultTargetBANKACCNAME: TStringField;
    cdsLuAccountBankDefaultTargetBANKBRANCH: TStringField;
    cdsLuAccountBankDefaultTargetACCBANKID_1: TIntegerField;
    cdsLuAccountBankDefaultTargetBNCODE_1: TStringField;
    cdsLuAccountBankDefaultTargetBANKACCNO_1: TStringField;
    cdsLuAccountBankDefaultTargetBANKACCNAME_1: TStringField;
    cdsLuAccountBankDefaultTargetBANKBRANCH_1: TStringField;
    cdsCashMovCMID: TIntegerField;
    cdsCashMovCMCODE: TStringField;
    cdsCashMovENTRYDATE: TDateField;
    cdsCashMovVALUEDATE: TDateField;
    cdsCashMovMOV_TYPE: TStringField;
    cdsCashMovSOURCE_ACCID: TIntegerField;
    cdsCashMovTARGET_ACCID: TIntegerField;
    cdsCashMovCCYCODE: TStringField;
    cdsCashMovAMOUNT: TFloatField;
    cdsCashMovREMARK: TStringField;
    cdsCashMovFUNDTRANSID: TLargeintField;
    cdsCashMovFUNDTRANSID_REVERSED: TLargeintField;
    cdsCashMovLEDGERTRANSID: TLargeintField;
    cdsCashMovLEDGERTRANSID_REVERSED: TLargeintField;
    cdsCashMovSTATUS: TStringField;
    cdsCashMovENTRY_DATE: TDateTimeField;
    cdsCashMovENTRY_SYSDATE: TDateTimeField;
    cdsCashMovENTRY_UI: TStringField;
    cdsCashMovPOSTED_DATE: TDateTimeField;
    cdsCashMovPOSTED_SYSDATE: TDateTimeField;
    cdsCashMovPOSTED_UI: TStringField;
    cdsCashMovREVERSED_DATE: TDateTimeField;
    cdsCashMovREVERSED_SYSDATE: TDateTimeField;
    cdsCashMovREVERSED_UI: TStringField;
    cdsCashMovCANCELED_DATE: TDateTimeField;
    cdsCashMovCANCELED_SYSDATE: TDateTimeField;
    cdsCashMovCANCELED_NOTES: TStringField;
    cdsCashMovCANCELED_UI: TStringField;
    cdsCashMovAPPROVED_DATE: TDateTimeField;
    cdsCashMovAPPROVED_SYSDATE: TDateTimeField;
    cdsCashMovAPPROVED_UI: TStringField;
    cdsCashMovMODDA: TDateTimeField;
    cdsCashMovMODUI: TStringField;
    cdsCashMovAPPDA: TDateTimeField;
    cdsCashMovAPPUI: TStringField;
    cdsCashMovUNDER4Y: TIntegerField;
    cdsCashMovUNDER4YDA: TDateTimeField;
    cdsCashMovNOTES4Y: TStringField;
    cdsCashMovISDEL: TIntegerField;
    cdsCashMovID: TLargeintField;
    cdsCashMovsourceAccCode: TStringField;
    cdsCashMovsourceAccName: TStringField;
    cdsCashMovtargetAccCode: TStringField;
    cdsCashMovtargetAccName: TStringField;
    cdsCashMovCASH_ONHAND: TFloatField;
    cdsCashMovcashBalance: TFloatField;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    cdsCashLastPos: TNClientDataset;
    cdsCashLastPosACCID: TLargeintField;
    cdsCashLastPosCCYCODE: TStringField;
    cdsCashLastPosACCRUED_INTEREST: TFloatField;
    cdsCashLastPosCASH_ONHAND: TFloatField;
    cdsCashLastPosCASH_QQ: TFloatField;
    cdsCashLastPosCASH_SUBACC: TFloatField;
    cdsCashLastPosCASH_ONHOLD: TFloatField;
    cdsCashLastPosARAMT: TFloatField;
    cdsCashLastPosAPAMT: TFloatField;
    cdsCashLastPosCASH_OUTS: TFloatField;
    cdsCashLastPosBUY_AMT: TFloatField;
    cdsCashLastPosSELL_AMT: TFloatField;
    cdsCashLastPosCASH_WDR: TFloatField;
    cdsCashLastPosCASH_OTHERS: TFloatField;
    cdsCashLastPosCASH_BAL: TFloatField;
    cdsCashLastPoscashAvailable: TFloatField;
    dsCashLastPos: TDataSource;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsCashMovNewRecord(DataSet: TDataSet);
    procedure cdsCashMovSOURCE_ACCIDChange(Sender: TField);
    procedure cdsCashMovAMOUNTChange(Sender: TField);
    procedure cdsCashMovMOV_TYPEChange(Sender: TField);
    procedure cdsCashMovAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsCashMovBeforePost(DataSet: TDataSet);
    procedure cdsCashMovAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FEntityID: Integer;
  public
    { Public declarations }
    property EntityID: Integer read FEntityID write FEntityID;
  end;

var
  frmCashMov: TfrmCashMov;

implementation

{$R *.dfm}

uses DataGlobal, FormCashMovList, FormLuAccount, ClassClientConst;

procedure TfrmCashMov.btnOKClick(Sender: TObject);
begin
  if dsSubject.DataSet.State in [dsInsert, dsEdit] then
  begin
    if (dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger = dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger) then
    begin
      dmGlobal.ErrorMessage('Source Account and Target Account must be different!');
      Abort;
    end;

    if cdsCashLastPos.Active then
    begin
      if cdsCashMovCASH_ONHAND.AsFloat < cdsCashMovAMOUNT.AsFloat then
      begin
        dmGlobal.ErrorMessage('Account ' + cdsCashMovsourceAccCode.AsString +'-'+ cdsCashMovsourceAccName.AsString
          + ' Only Have ' + FormatFloat('#,##0.00;(#,##0.00);0.00', cdsCashLastPosCASH_ONHAND.AsFloat) + ' Cash OnHand.');
        Abort;
      end;
    end;

    if (dsSubject.DataSet.State in [dsBrowse]) and (dmGlobal.NeedToDelete) then
    begin
      cdsCashMov.Edit;
      cdsCashMov.FieldByName('ISDEL').AsInteger := 1;
      cdsCashMov.Post;
    end;

    inherited;
  end;

//  if (Self.State in [pkCreate]) then
//  begin
//    if cdsCashMov.State in dsEditModes then
//      cdsCashMov.Post;
//
//    if cdsCashMovMOV_TYPE.AsString = 'R' then
//    begin
//      cdsLuAccountBankDefault.Close;
//      cdsLuAccountBankDefault.Params[0].AsInteger := cdsCashMovSOURCE_ACCID.AsInteger;
//      cdsLuAccountBankDefault.Params[1].AsString := cdsCashMovCCYCODE.AsString;
//      cdsLuAccountBankDefault.Open;
//
//      if cdsLuAccountBankDefaultACCBANKID_1.IsNull then
//      begin
//        dmGlobal.ErrorMessage('Please set default RDN Bank for Account '
//          + dsSubject.DataSet.FieldByName('SOURCE_ACCNAME').AsString);
//        Abort;
//      end;
//    end;
//
//    cdsLuAccountBankDefaultTarget.Close;
//    cdsLuAccountBankDefaultTarget.Params[0].AsInteger := cdsCashMovTARGET_ACCID.AsInteger;
//    cdsLuAccountBankDefaultTarget.Params[1].AsString := cdsCashMovCCYCODE.AsString;
//    cdsLuAccountBankDefaultTarget.Open;
//
//    cdsBankInstruction.Close;
//    cdsBankInstruction.Params[0].AsInteger := -1;
//    cdsBankInstruction.Open;
//
//    //Bank Type di Bank Instruction
//    //1: Company Payment Bank
//    //2: Company QQ Bank
//    //3: Client RDN Bank
//    //4: Client Private Bank
//
//    if cdsCashMovMOV_TYPE.AsString = 'R' then
//    begin
//      cdsBankInstruction.Append;
//      cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
//      cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
//        cdsCashMovENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
//      cdsBankInstructionBITYPE.AsString := 'P';
//      cdsBankInstructionENTRYDATE.AsDateTime := cdsCashMovENTRYDATE.AsDateTime;
//      cdsBankInstructionVALUEDATE.AsDateTime := cdsCashMovVALUEDATE.AsDateTime;
//      cdsBankInstructionBIDESC.AsString := 'Cash Movement ' + cdsCashMovCMCODE.AsString;
//      cdsBankInstructionBANK_REF.AsString := '';
//      cdsBankInstructionTRANS_TYPE.AsString := 'CM';
//      cdsBankInstructionLINKID.AsLargeInt := cdsCashMovCMID.AsLargeInt;
//      cdsBankInstructionLINKNO.AsString := cdsCashMovCMCODE.AsString;
//      cdsBankInstructionSTAT.AsString := '1';
//      cdsBankInstructionACCID.AsInteger := cdsCashMovSOURCE_ACCID.AsInteger;
//
//      //Client RDN Bank Source
//      cdsBankInstructionBANKTYPE_SOURCE.AsString := '3';
//      cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsLuAccountBankDefaultACCBANKID_1.AsInteger;
//      cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuAccountBankDefaultBNCODE_1.AsString;
//      cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuAccountBankDefaultBANKACCNO_1.AsString;
//      cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuAccountBankDefaultBANKACCNAME_1.AsString;
//      cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuAccountBankDefaultBANKBRANCH_1.AsString;
//      cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuAccountBankDefaultCCYCODE.AsString;
//
//      if cdsLuAccountBankDefaultTargetACCBANKID_1.IsNull then
//      begin
//        cdsLuCompanyBankByBank.Close;
//        cdsLuCompanyBankByBank.Params[0].AsString := '1';//Company Payment Bank
//        cdsLuCompanyBankByBank.Params[1].AsString := cdsCashMovCCYCODE.AsString;
//        cdsLuCompanyBankByBank.Params[2].AsString := cdsLuAccountBankDefaultBNCODE_1.AsString;
//        cdsLuCompanyBankByBank.Open;
//
//        if not cdsLuCompanyBankByBank.IsEmpty then
//        begin
//          cdsBankInstructionBANKTYPE_TARGET.AsString := '1';
//          cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsLuCompanyBankByBankBANKID.AsInteger;
//          cdsBankInstructionBNCODE_TARGET.AsString := cdsLuCompanyBankByBankBNCODE.AsString;
//          cdsBankInstructionBNACCNO_TARGET.AsString := cdsLuCompanyBankByBankBANKACCNO.AsString;
//          cdsBankInstructionBNACCNAME_TARGET.AsString := cdsLuCompanyBankByBankBANKACCNAME.AsString;
//          cdsBankInstructionBNBRANCH_TARGET.AsString := cdsLuCompanyBankByBankBANKBRANCH.AsString;
//          cdsBankInstructionCCYCODE_TARGET.AsString := cdsLuCompanyBankByBankCCYCODE.AsString;
//        end
//        else
//        begin
//          cdsLuCompanyBankDefault.Close;
//          cdsLuCompanyBankDefault.Params[0].AsString := '1';
//          cdsLuCompanyBankDefault.Params[1].AsString := cdsCashMovCCYCODE.AsString;
//          cdsLuCompanyBankDefault.Open;
//
//          if not cdsLuCompanyBankDefault.IsEmpty then
//          begin
//            cdsBankInstructionBANKTYPE_TARGET.AsString := '1';
//            cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsLuCompanyBankDefaultBANKID.AsInteger;
//            cdsBankInstructionBNCODE_TARGET.AsString := cdsLuCompanyBankDefaultBNCODE.AsString;
//            cdsBankInstructionBNACCNO_TARGET.AsString := cdsLuCompanyBankDefaultBANKACCNO.AsString;
//            cdsBankInstructionBNACCNAME_TARGET.AsString := cdsLuCompanyBankDefaultBANKACCNAME.AsString;
//            cdsBankInstructionBNBRANCH_TARGET.AsString := cdsLuCompanyBankDefaultBANKBRANCH.AsString;
//            cdsBankInstructionCCYCODE_TARGET.AsString := cdsLuCompanyBankDefaultCCYCODE.AsString;
//          end
//          else
//          begin
//            dmGlobal.ErrorMessage('Please set default company payment bank');
//            Abort;
//          end;
//        end;
//      end
//      else
//      begin
//        cdsBankInstructionBANKTYPE_TARGET.AsString := '3';
//        cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsLuAccountBankDefaultTargetACCBANKID_1.AsInteger;
//        cdsBankInstructionBNCODE_TARGET.AsString := cdsLuAccountBankDefaultTargetBNCODE_1.AsString;
//        cdsBankInstructionBNACCNO_TARGET.AsString := cdsLuAccountBankDefaultTargetBANKACCNO_1.AsString;
//        cdsBankInstructionBNACCNAME_TARGET.AsString := cdsLuAccountBankDefaultTargetBANKACCNAME_1.AsString;
//        cdsBankInstructionBNBRANCH_TARGET.AsString := cdsLuAccountBankDefaultTargetBANKBRANCH_1.AsString;
//        cdsBankInstructionCCYCODE_TARGET.AsString := cdsLuAccountBankDefaultTargetCCYCODE.AsString;
//      end;
//
//      cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
//      cdsBankInstructionCCY.AsString := cdsCashMovCCYCODE.AsString;
//      cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashMovAMOUNT.AsFloat);
//      cdsBankInstructionCHARGES.AsFloat := 0;
//      cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashMovAMOUNT.AsFloat);
//      cdsBankInstruction.Post
//    end
//    else
//    begin
//      if not cdsLuAccountBankDefaultTargetACCBANKID_1.IsNull then
//      begin
//
//        cdsBankInstruction.Append;
//        cdsBankInstructionBIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_BANK_INSTRUCTION');
//        cdsBankInstructionBINO.AsString := dmGlobal.RemoteServer.GetVoucherNo(
//          cdsCashMovENTRYDATE.AsDateTime, 'BI', 'TBL_B_BANK_INSTRUCTION');
//        cdsBankInstructionBITYPE.AsString := 'P';
//        cdsBankInstructionENTRYDATE.AsDateTime := cdsCashMovENTRYDATE.AsDateTime;
//        cdsBankInstructionVALUEDATE.AsDateTime := cdsCashMovVALUEDATE.AsDateTime;
//        cdsBankInstructionBIDESC.AsString := 'Cash Movement ' + cdsCashMovCMCODE.AsString;
//        cdsBankInstructionBANK_REF.AsString := '';
//        cdsBankInstructionTRANS_TYPE.AsString := 'CM';
//        cdsBankInstructionLINKID.AsLargeInt := cdsCashMovCMID.AsLargeInt;
//        cdsBankInstructionLINKNO.AsString := cdsCashMovCMCODE.AsString;
//        cdsBankInstructionSTAT.AsString := '1';
//        cdsBankInstructionACCID.AsInteger := cdsCashMovTARGET_ACCID.AsInteger;
//
//        cdsLuCompanyBankByBank.Close;
//        cdsLuCompanyBankByBank.Params[0].AsString := '1';//Company Payment Bank
//        cdsLuCompanyBankByBank.Params[1].AsString := cdsCashMovCCYCODE.AsString;
//        cdsLuCompanyBankByBank.Params[2].AsString := cdsLuAccountBankDefaultTargetBNCODE_1.AsString;
//        cdsLuCompanyBankByBank.Open;
//
//        if not cdsLuCompanyBankByBank.IsEmpty then
//        begin
//          cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
//          cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsLuCompanyBankByBankBANKID.AsInteger;
//          cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuCompanyBankByBankBNCODE.AsString;
//          cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuCompanyBankByBankBANKACCNO.AsString;
//          cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuCompanyBankByBankBANKACCNAME.AsString;
//          cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuCompanyBankByBankBANKBRANCH.AsString;
//          cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuCompanyBankByBankCCYCODE.AsString;
//        end
//        else
//        begin
//          cdsLuCompanyBankDefault.Close;
//          cdsLuCompanyBankDefault.Params[0].AsString := '1';
//          cdsLuCompanyBankDefault.Params[1].AsString := cdsCashMovCCYCODE.AsString;
//          cdsLuCompanyBankDefault.Open;
//
//          if not cdsLuCompanyBankDefault.IsEmpty then
//          begin
//            cdsBankInstructionBANKTYPE_SOURCE.AsString := '1';
//            cdsBankInstructionACCBANKID_SOURCE.AsInteger := cdsLuCompanyBankDefaultBANKID.AsInteger;
//            cdsBankInstructionBNCODE_SOURCE.AsString := cdsLuCompanyBankDefaultBNCODE.AsString;
//            cdsBankInstructionBNACCNO_SOURCE.AsString := cdsLuCompanyBankDefaultBANKACCNO.AsString;
//            cdsBankInstructionBNACCNAME_SOURCE.AsString := cdsLuCompanyBankDefaultBANKACCNAME.AsString;
//            cdsBankInstructionBNBRANCH_SOURCE.AsString := cdsLuCompanyBankDefaultBANKBRANCH.AsString;
//            cdsBankInstructionCCYCODE_SOURCE.AsString := cdsLuCompanyBankDefaultCCYCODE.AsString;
//          end
//          else
//          begin
//            dmGlobal.ErrorMessage('Please set default company payment bank');
//            Abort;
//          end;
//        end;
//
//        //Client RDN Bank Target
//        cdsBankInstructionBANKTYPE_TARGET.AsString := '3';
//        cdsBankInstructionACCBANKID_TARGET.AsInteger := cdsLuAccountBankDefaultTargetACCBANKID_1.AsInteger;
//        cdsBankInstructionBNCODE_TARGET.AsString := cdsLuAccountBankDefaultTargetBNCODE_1.AsString;
//        cdsBankInstructionBNACCNO_TARGET.AsString := cdsLuAccountBankDefaultTargetBANKACCNO_1.AsString;
//        cdsBankInstructionBNACCNAME_TARGET.AsString := cdsLuAccountBankDefaultTargetBANKACCNAME_1.AsString;
//        cdsBankInstructionBNBRANCH_TARGET.AsString := cdsLuAccountBankDefaultTargetBANKBRANCH_1.AsString;
//        cdsBankInstructionCCYCODE_TARGET.AsString := cdsLuAccountBankDefaultTargetCCYCODE.AsString;
//
//        cdsBankInstructionTRANFER_TYPE.AsString := 'R';//R: Remiter, B: Beneficiary
//        cdsBankInstructionCCY.AsString := cdsCashMovCCYCODE.AsString;
//        cdsBankInstructionAMOUNT.AsFloat := Abs(cdsCashMovAMOUNT.AsFloat);
//        cdsBankInstructionCHARGES.AsFloat := 0;
//        cdsBankInstructionNETAMOUNT.AsFloat := Abs(cdsCashMovAMOUNT.AsFloat);
//        cdsBankInstruction.Post
//      end;
//    end;
//  end;
end;

procedure TfrmCashMov.cdsCashMovAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  inherited;
  if cdsBankInstruction.Active then
    cdsBankInstruction.ApplyUpdates(-1);
end;

procedure TfrmCashMov.cdsCashMovAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if cdsCashMovCASH_ONHAND.AsFloat <> 0 then
  begin
    cdsCashMov.Edit;
    cdsCashMovcashBalance.AsFloat := cdsCashMovCASH_ONHAND.AsFloat - cdsCashMovAMOUNT.AsFloat;
    cdsCashMov.Post;
  end;
end;

procedure TfrmCashMov.cdsCashMovAMOUNTChange(Sender: TField);
begin
  inherited;
  if cdsCashMovMOV_TYPE.AsString = 'R' then
    cdsCashMovCASH_ONHAND.AsFloat := cdsCashLastPosCASH_ONHAND.AsFloat
  else
    cdsCashMovCASH_ONHAND.AsFloat := cdsCashLastPosCASH_QQ.AsFloat;
  cdsCashMovcashBalance.AsFloat := cdsCashMovCASH_ONHAND.AsFloat - cdsCashMovAMOUNT.AsFloat;
end;

procedure TfrmCashMov.cdsCashMovBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCashMovCMID.AsLargeInt = -1 then
  begin
    cdsCashMovCMID.AsLargeInt          := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHMOV');
    cdsCashMovCMCODE.AsString          := dmGlobal.RemoteServer.GetVoucherNo(cdsCashMovENTRYDATE.AsDateTime, 'CM', 'TBL_B_CASHMOV');
    cdsCashMovENTRY_DATE.AsDateTime    := now;
    cdsCashMovENTRY_SYSDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    cdsCashMovENTRY_UI.AsString        := dmGlobal.UserID;
  end;
end;

procedure TfrmCashMov.cdsCashMovMOV_TYPEChange(Sender: TField);
begin
  inherited;
  if cdsCashMov.State in dsEditModes then
  begin
    if cdsCashLastPos.Active then
    begin
      if cdsCashMovMOV_TYPE.AsString = 'R' then
        cdsCashMovCASH_ONHAND.AsFloat := cdsCashLastPosCASH_ONHAND.AsFloat
      else
        cdsCashMovCASH_ONHAND.AsFloat := cdsCashLastPosCASH_QQ.AsFloat;
      cdsCashMovcashBalance.AsFloat := cdsCashMovCASH_ONHAND.AsFloat - cdsCashMovAMOUNT.AsFloat;
    end;
  end;
end;

procedure TfrmCashMov.cdsCashMovNewRecord(DataSet: TDataSet);
begin
//  inherited;
  cdsCashMovCMID.AsLargeInt      := -1; //dmGlobal.RemoteServer.GetSeq('TBL_B_CASHMOV');
  cdsCashMovENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCashMovVALUEDATE.AsDateTime := cdsCashMovENTRYDATE.AsDateTime;
  cdsCashMovCMCODE.AsString      := '<AUTO>'; //dmGlobal.RemoteServer.GetVoucherNo(cdsCashMovENTRYDATE.AsDateTime, 'CM', 'TBL_B_CASHMOV');
  cdsCashMovCCYCODE.AsString     := dmGlobal.RemoteServer.GetLocalCCY;
  cdsCashMovSTATUS.AsString      := '1';
  cdsCashMovMOV_TYPE.AsString    := 'R';
end;

procedure TfrmCashMov.cdsCashMovSOURCE_ACCIDChange(Sender: TField);
begin
  inherited;
  cdsCashLastPos.Close;
  cdsCashLastPos.Params[0].AsInteger := cdsCashMovSOURCE_ACCID.AsInteger;
  cdsCashLastPos.Open;

  if cdsCashMovMOV_TYPE.AsString = 'R' then
    cdsCashMovCASH_ONHAND.AsFloat := cdsCashLastPosCASH_ONHAND.AsFloat
  else
    cdsCashMovCASH_ONHAND.AsFloat := cdsCashLastPosCASH_QQ.AsFloat;
  cdsCashMovcashBalance.AsFloat := cdsCashMovCASH_ONHAND.AsFloat - cdsCashMovAMOUNT.AsFloat;
end;

procedure TfrmCashMov.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(cdsCashMovSOURCE_ACCID.AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        cdsCashMovSOURCE_ACCID.AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        cdsCashMovsourceAccCode.AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        cdsCashMovsourceAccName.AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmCashMov.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsCashMovSOURCE_ACCID.IsNull then
      begin
        dmGlobal.ErrorMessage('Please fill source account first!');
        exit;
      end;

      if frmLuAccount.Run(cdsCashMovTARGET_ACCID.AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        cdsCashMovTARGET_ACCID.AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        cdsCashMovtargetAccCode.AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        cdsCashMovtargetAccName.AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmCashMov.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuCcy.Active then
      cdsLuCcy.Open;
  end;
end;

end.
