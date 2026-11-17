unit FormCOBGeneral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
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
  Data.DB, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxCheckBox,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Datasnap.DBClient, NClientDataset;

type
  TfrmCOBGeneral = class(TfrmEditor)
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem2: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    LayoutControlGroup2: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    LayoutControlItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup3: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    LayoutControlItem5: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    LayoutControlItem6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    LayoutControlItem7: TdxLayoutItem;
    LayoutControlGroup5: TdxLayoutGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    LayoutControlItem8: TdxLayoutItem;
    LayoutControlGroup4: TdxLayoutGroup;
    cxDBCheckBox4: TcxDBCheckBox;
    LayoutControlItem9: TdxLayoutItem;
    LayoutControlGroup6: TdxLayoutGroup;
    cxDBCheckBox5: TcxDBCheckBox;
    LayoutControlItem10: TdxLayoutItem;
    LayoutControlGroup7: TdxLayoutGroup;
    cxDBCheckBox6: TcxDBCheckBox;
    LayoutControlItem11: TdxLayoutItem;
    cxDBCheckBox7: TcxDBCheckBox;
    LayoutControlItem12: TdxLayoutItem;
    cxDBCheckBox8: TcxDBCheckBox;
    LayoutControlItem13: TdxLayoutItem;
    cxDBCheckBox9: TcxDBCheckBox;
    LayoutControlItem14: TdxLayoutItem;
    cxDBCheckBox10: TcxDBCheckBox;
    LayoutControlItem15: TdxLayoutItem;
    cxDBCheckBox11: TcxDBCheckBox;
    LayoutControlItem16: TdxLayoutItem;
    btnGenerate: TcxButton;
    LayoutControlItem18: TdxLayoutItem;
    LayoutControlGroup8: TdxLayoutGroup;
    LayoutControlItem17: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cdsBusType: TNClientDataset;
    cdsBusTypeBUSTYPEID: TLargeintField;
    cdsBusTypeBUSTYPECODE: TStringField;
    cdsBusTypeBUSTYPEDESC: TStringField;
    cdsBusTypeALCLASSID: TIntegerField;
    cdsBusTypeTLCLASSID: TIntegerField;
    cdsBusTypeINTERESTCODE: TStringField;
    cdsBusTypeTC_MODEL: TStringField;
    cdsBusTypePRDCODE: TStringField;
    cdsBusTypeA_CLS_ORDER: TStringField;
    cdsBusTypeAVGPRICEDEC: TSmallintField;
    cdsBusTypeOMNIBUSTRADE: TStringField;
    cdsBusTypeCASHKEEP: TStringField;
    cdsBusTypeSTOCKKEEP: TStringField;
    cdsBusTypeISWAPU: TStringField;
    cdsBusTypeWAPUVALUE: TFloatField;
    cdsBusTypeISAVGPRICE: TStringField;
    cdsBusTypeISDEBETINTEREST: TStringField;
    cdsBusTypeISCREDITINTEREST: TStringField;
    cdsBusTypeISPENALTY: TStringField;
    cdsBusTypeISUSEWHT: TStringField;
    cdsBusTypeISUSEOTC: TStringField;
    cdsBusTypeISOWNCONTACT: TStringField;
    cdsBusTypeISTRDACCOUNT: TStringField;
    cdsBusTypeIDX_CASHPAY_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeIDX_CASHPAY_TARGET_LDGTYPE: TStringField;
    cdsBusTypeIDX_CASHRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeIDX_CASHRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeIDX_CASHPAY_INSTR: TStringField;
    cdsBusTypeIDX_CASHRCV_INSTR: TStringField;
    cdsBusTypeCASHRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeCASHRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeCASHPAY_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeCASHPAY_TARGET_LDGTYPE: TStringField;
    cdsBusTypeCASHRCV_INSTR: TStringField;
    cdsBusTypeCASHPAY_INSTR: TStringField;
    cdsBusTypeIDX_STKDLV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeIDX_STKDLV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeIDX_STKRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeIDX_STKRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeCUST_STKDLV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeCUST_STKDLV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeCUST_STKRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeCUST_STKRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeIDX_STKDLV_INSTR: TStringField;
    cdsBusTypeIDX_STKRCV_INSTR: TStringField;
    cdsBusTypeCUST_STKDLV_INSTR: TStringField;
    cdsBusTypeCUST_STKRCV_INSTR: TStringField;
    cdsBusTypeOMGUSE: TStringField;
    cdsBusTypeOMGEXREFFCODE: TStringField;
    cdsBusTypeOMGALERT: TStringField;
    cdsBusTypeOMGSENDSSI: TStringField;
    cdsBusTypeOMGSENDFEEINBLOCK: TStringField;
    cdsBusTypeMODDA: TDateTimeField;
    cdsBusTypeMODUI: TStringField;
    cdsBusTypeAPPDA: TDateTimeField;
    cdsBusTypeAPPUI: TStringField;
    cdsBusTypeUNDER4Y: TIntegerField;
    cdsBusTypeUNDER4YDA: TDateTimeField;
    cdsBusTypeNOTES4Y: TStringField;
    cdsBusTypeISDEL: TIntegerField;
    cdsBusTypeID: TLargeintField;
    cdsBusTypeqryBusTypeComm: TDataSetField;
    cdsBusTypeqryBusTypeCharge: TDataSetField;
    cdsBusTypeCharge: TNClientDataset;
    cdsBusTypeChargeBUSTYPEID: TLargeintField;
    cdsBusTypeChargeMARKETCODE: TStringField;
    cdsBusTypeChargeCHARGE_ID: TLargeintField;
    cdsBusTypeChargeISUSED: TStringField;
    cdsBusTypeChargeMODDA: TDateTimeField;
    cdsBusTypeChargeMODUI: TStringField;
    cdsBusTypeChargeAPPDA: TDateTimeField;
    cdsBusTypeChargeAPPUI: TStringField;
    cdsBusTypeChargeUNDER4Y: TIntegerField;
    cdsBusTypeChargeUNDER4YDA: TDateTimeField;
    cdsBusTypeChargeNOTES4Y: TStringField;
    cdsBusTypeChargeISDEL: TIntegerField;
    cdsBusTypeChargeID: TLargeintField;
    cdsBusTypeComm: TNClientDataset;
    cdsBusTypeCommBUSTYPEID: TLargeintField;
    cdsBusTypeCommMARKETCODE: TStringField;
    cdsBusTypeCommCHANNELCODE: TStringField;
    cdsBusTypeCommCOMM_ID: TLargeintField;
    cdsBusTypeCommNET_COMMID: TLargeintField;
    cdsBusTypeCommCALC_METHOD: TStringField;
    cdsBusTypeCommUSE_DAYTRADE: TStringField;
    cdsBusTypeCommUSE_MINCOMM: TStringField;
    cdsBusTypeCommWITH_SELLTAX: TStringField;
    cdsBusTypeCommMODDA: TDateTimeField;
    cdsBusTypeCommMODUI: TStringField;
    cdsBusTypeCommAPPDA: TDateTimeField;
    cdsBusTypeCommAPPUI: TStringField;
    cdsBusTypeCommUNDER4Y: TIntegerField;
    cdsBusTypeCommUNDER4YDA: TDateTimeField;
    cdsBusTypeCommNOTES4Y: TStringField;
    cdsBusTypeCommISDEL: TIntegerField;
    cdsBusTypeCommID: TLargeintField;
    cdsCrdConClassByParam: TNClientDataset;
    cdsCrdConClassByParamCCCLS_ID: TLargeintField;
    cdsCrdConClassByParamCCLSSNAME: TStringField;
    cdsCrdConClassByParamCC_TYPE: TStringField;
    cdsCrdConClassByParamTL_CASHVALUATE: TFloatField;
    cdsCrdConClassByParamTL_STOCKVALUATE: TFloatField;
    cdsCrdConClassByParamTLB_OVERLIMIT: TStringField;
    cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField;
    cdsCrdConClassByParamTLB_OVERDUE: TStringField;
    cdsCrdConClassByParamTLS_SHORTSELL: TStringField;
    cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField;
    cdsCrdConClassByParamTLS_OVERDUE: TStringField;
    cdsCrdConClassByParamRATIO_MRGCALL: TFloatField;
    cdsCrdConClassByParamRATIO_MRGWARING: TFloatField;
    cdsCrdConClassByParamRATIO_FORCESELL: TFloatField;
    cdsCrdConClassByParamFORCESELL_DAY: TIntegerField;
    cdsCrdConClassByParamCR_VAL: TFloatField;
    cdsCrdConClassByParamBUY_LIMIT: TFloatField;
    cdsCrdConClassByParamSELL_LIMIT: TFloatField;
    procedure btnGenerateClick(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
    FFormParent: TForm;
  public
    { Public declarations }
    procedure PrepareData(AForm: TForm);
  end;

var
  frmCOBGeneral: TfrmCOBGeneral;

implementation

{$R *.dfm}

uses DataGlobal, FormCOBList, DataLookup;

{ TfrmCOBGeneral }

procedure TfrmCOBGeneral.btnGenerateClick(Sender: TObject);
var
  sKey: String;
  vFind: Variant;
  sALRDN, sAL001, sAL004, sDefaultCustody, sALCustBank: String;
  BrokerACCID: Integer;
begin
  inherited;

  with TfrmCOBList(FFormParent) do
  begin
    cdsBusType.Close;
    cdsBusType.Params[0].AsInteger := cdsAccountBUSSTYPE.AsInteger;
    cdsBusType.Open;

    if not cdsBusType.IsEmpty then
    begin
      if not (cdsAccount.State in dsEditModes) then
        cdsAccount.Edit;
      cdsAccountTC_MODEL.AsString           := cdsBusTypeTC_MODEL.AsString;
      cdsAccountAVGPRICEDEC.AsInteger       := cdsBusTypeAVGPRICEDEC.AsInteger;
      cdsAccountISWAPU.AsString             := cdsBusTypeISWAPU.AsString;
      cdsAccountISAVGPRICE.AsString         := cdsBusTypeISAVGPRICE.AsString;
      cdsAccountISPENALTY.AsString          := cdsBusTypeISPENALTY.AsString;
      cdsAccountISUSEWHT.AsString           := cdsBusTypeISUSEWHT.AsString;
      cdsAccountISUSEOTC.AsString           := cdsBusTypeISUSEOTC.AsString;
      cdsAccountA_CLS_ORDER.AsString        := cdsBusTypeA_CLS_ORDER.AsString;
      cdsAccountWAPUVALUE.AsFloat           := cdsBusTypeWAPUVALUE.AsFloat;
      cdsAccountISTRDACCOUNT.AsString       := cdsBusTypeISTRDACCOUNT.AsString;
      cdsAccountOMNIBUSTRADE.AsString       := cdsBusTypeOMNIBUSTRADE.AsString;
      cdsAccountISDEBETINTEREST.AsString    := cdsBusTypeISDEBETINTEREST.AsString;
      cdsAccountISCREDITINTEREST.AsString   := cdsBusTypeISCREDITINTEREST.AsString;
      cdsAccountALCID.AsInteger             := cdsBusTypeALCLASSID.AsInteger;//Account Ledger Class
      cdsAccountTLCLASSID.AsInteger         := cdsBusTypeTLCLASSID.AsInteger;
      cdsAccountCASHKEEP.AsString           := cdsBusTypeCASHKEEP.AsString;
      cdsAccountSTOCKKEEP.AsString          := cdsBusTypeSTOCKKEEP.AsString;
      cdsAccountISOWNCONTACT.AsString       := cdsBusTypeISOWNCONTACT.AsString;
      cdsAccountIDX_CASHPAY_INSTR.AsString  := cdsBusTypeIDX_CASHPAY_INSTR.AsString;
      cdsAccountIDX_CASHRCV_INSTR.AsString  := cdsBusTypeIDX_CASHRCV_INSTR.AsString;
      cdsAccountCASHRCV_INSTR.AsString      := cdsBusTypeCASHRCV_INSTR.AsString;
      cdsAccountCASHPAY_INSTR.AsString      := cdsBusTypeCASHPAY_INSTR.AsString;
      cdsAccountIDX_STKDLV_INSTR.AsString   := cdsBusTypeIDX_STKDLV_INSTR.AsString;
      cdsAccountIDX_STKRCV_INSTR.AsString   := cdsBusTypeIDX_STKRCV_INSTR.AsString;
      cdsAccountCUST_STKDLV_INSTR.AsString  := cdsBusTypeCUST_STKDLV_INSTR.AsString;
      cdsAccountCUST_STKRCV_INSTR.AsString  := cdsBusTypeCUST_STKRCV_INSTR.AsString;
      cdsAccountOMGUSE.AsString             := cdsBusTypeOMGUSE.AsString;
      cdsAccountOMGEXREFFCODE.AsString      := cdsBusTypeOMGEXREFFCODE.AsString;
      cdsAccountOMGALERT.AsString           := cdsBusTypeOMGALERT.AsString;
      cdsAccountOMGSENDSSI.AsString         := cdsBusTypeOMGSENDSSI.AsString;
      cdsAccountOMGSENDFEEINBLOCK.AsString  := cdsBusTypeOMGSENDFEEINBLOCK.AsString;

//      cdsAccount.FieldByName('CCCLS_ID').AsInteger        := cdsBusTypeCCCLS_ID.AsInteger;
//      cdsAccount.FieldByName('CC_TYPE').AsString          := cdsBusTypeCC_TYPE.AsString;
//      cdsAccount.FieldByName('CR_VAL').AsFloat            := cdsBusTypeCR_VAL.AsFloat;
//      cdsAccount.FieldByName('BUY_LIMIT').AsFloat         := cdsBusTypeBUY_LIMIT.AsFloat;
//      cdsAccount.FieldByName('SELL_LIMIT').AsFloat        := cdsBusTypeSELL_LIMIT.AsFloat;
      cdsAccount.Post;

      //Setting for Account Commission
      if not cdsBusTypeComm.IsEmpty then
      begin
        sKey := 'MARKETCODE;CHANNELCODE';
        vFind := VarArrayCreate([0, 1], varVariant);

        cdsBusTypeComm.First;
        while not cdsBusTypeComm.Eof do
        begin
          vFind[0] := cdsBusTypeCommMARKETCODE.Value;
          vFind[1] := cdsBusTypeCommCHANNELCODE.Value;

          if cdsCommission.Locate(sKey, vFind, []) then
            cdsCommission.Edit
          else
            cdsCommission.Append;

          with dmGlobal.IntDataLookup do
          begin
            if cdsLuMarket.Locate('MARKETCODE', cdsBusTypeCommMARKETCODE.AsString, []) then
            begin
              if not cdsLuMarketCCY.IsNull then
                cdsCommissionCCYCODE.AsString := cdsLuMarketCCY.AsString;
            end;
          end;

          if cdsCommissionCCYCODE.IsNull then
            cdsCommissionCCYCODE.AsString := dmGlobal.RemoteServer.GetLocalCCY;

          cdsCommissionMARKETCODE.AsString := cdsBusTypeCommMARKETCODE.AsString;
          cdsCommissionCHANNELCODE.AsString := cdsBusTypeCommCHANNELCODE.AsString;
          cdsCommissionCOMM_ID.AsLargeInt := cdsBusTypeCommCOMM_ID.AsLargeInt;
          cdsCommissionNET_COMMID.AsLargeInt := cdsBusTypeCommNET_COMMID.AsLargeInt;
          cdsCommissionCALC_METHOD.AsString := cdsBusTypeCommCALC_METHOD.AsString;
          cdsCommissionUSE_DAYTRADE.AsString := cdsBusTypeCommUSE_DAYTRADE.AsString;
          cdsCommissionUSE_MINCOMM.AsString := cdsBusTypeCommUSE_MINCOMM.AsString;
          cdsCommissionWITH_SELLTAX.AsString := cdsBusTypeCommWITH_SELLTAX.AsString;
          cdsCommission.Post;

          cdsBusTypeComm.Next;
        end;
      end;

      //Setting for Account Charge
      if not cdsBusTypeCharge.IsEmpty then
      begin
        sKey := 'MARKETCODE;CHARGE_ID';
        vFind := VarArrayCreate([0, 1], varVariant);

        cdsBusTypeCharge.First;
        while not cdsBusTypeCharge.Eof do
        begin
          vFind[0] := cdsBusTypeChargeMARKETCODE.Value;
          vFind[1] := cdsBusTypeChargeCHARGE_ID.Value;

          if cdsCharges.Locate(sKey, vFind, []) then
            cdsCharges.Edit
          else
            cdsCharges.Append;

          cdsChargesMARKETCODE.AsString := cdsBusTypeChargeMARKETCODE.AsString;
          cdsChargesCHARGE_ID.AsInteger := cdsBusTypeChargeCHARGE_ID.AsInteger;
          cdsChargesISUSED.AsString := cdsBusTypeChargeISUSED.AsString;
          cdsCharges.Post;

          cdsBusTypeCharge.Next;
        end;
      end;

      //Generate Account Ledger
      cdsCOBAccLedgerClass.Close;
      cdsCOBAccLedgerClass.Params[0].AsInteger := cdsAccountALCID.AsInteger;
      cdsCOBAccLedgerClass.Open;

      if not cdsCOBAccLedgerClass.IsEmpty then
      begin
        while not cdsAccountLedger.IsEmpty do
        begin
          cdsAccountLedger.Delete;
        end;

        cdsCOBAccLedgerClass.First;
        while not cdsCOBAccLedgerClass.Eof do
        begin
          cdsAccountLedger.Append;
          cdsAccountLedgerACCID.AsInteger := cdsAccountACCID.AsInteger;
          cdsAccountLedgerALTYPE.AsString := cdsCOBAccLedgerClassALTYPE.AsString;
          cdsAccountLedgerALCODE.AsString := cdsAccountACCID.AsString+'-'+cdsCOBAccLedgerClassALTYPE.AsString+'-'+cdsAccountLedgerSEQID.AsString;
          cdsAccountLedger.Post;

          cdsCOBAccLedgerClass.Next;
        end;
      end;

      //Generate Credit Limit Setting
      cdsCrdConClassByParam.Close;
      cdsCrdConClassByParam.Params[0].AsInteger := cdsBusTypeTLCLASSID.AsInteger;
      cdsCrdConClassByParam.Open;

      if not cdsCrdConClassByParam.IsEmpty then
      begin
        cdsAccCreditLimit.Close;
        cdsAccCreditLimit.Params[0].AsInteger := cdsAccountACCID.AsInteger;
        cdsAccCreditLimit.Open;

        if cdsAccCreditLimit.IsEmpty then
          cdsAccCreditLimit.Append
        else
          cdsAccCreditLimit.Edit;

        cdsAccCreditLimitACCID.AsInteger := cdsAccountACCID.AsInteger;
        cdsAccCreditLimitCCCLS_ID.AsLargeInt := cdsCrdConClassByParamCCCLS_ID.AsLargeInt;
        cdsAccCreditLimitCCLSSNAME.AsString := cdsCrdConClassByParamCCLSSNAME.AsString;
        cdsAccCreditLimitCC_TYPE.AsString := cdsCrdConClassByParamCC_TYPE.AsString;
        cdsAccCreditLimitRATIO_MRGCALL.Value := cdsCrdConClassByParamRATIO_MRGCALL.Value;
        cdsAccCreditLimitRATIO_MRGWARING.Value := cdsCrdConClassByParamRATIO_MRGWARING.Value;
        cdsAccCreditLimitRATIO_FORCESELL.Value := cdsCrdConClassByParamRATIO_FORCESELL.Value;
        cdsAccCreditLimitFORCESELL_DAY.Value := cdsCrdConClassByParamFORCESELL_DAY.Value;
        cdsAccCreditLimitTL_CASHVALUATE.Value := cdsCrdConClassByParamTL_CASHVALUATE.Value;
        cdsAccCreditLimitTL_STOCKVALUATE.Value := cdsCrdConClassByParamTL_STOCKVALUATE.Value;
        cdsAccCreditLimitCR_VAL.Value := cdsCrdConClassByParamCR_VAL.Value;
        cdsAccCreditLimitBUY_LIMIT.Value := cdsCrdConClassByParamBUY_LIMIT.Value;
        cdsAccCreditLimitSELL_LIMIT.Value := cdsCrdConClassByParamSELL_LIMIT.Value;
        cdsAccCreditLimitTLB_OVERLIMIT.AsString := cdsCrdConClassByParamTLB_OVERLIMIT.AsString;
        cdsAccCreditLimitTLB_NOTVALIDSTATUS.AsString := cdsCrdConClassByParamTLB_NOTVALIDSTATUS.AsString;
        cdsAccCreditLimitTLB_MRG_NONVALSTOCK.AsString := cdsCrdConClassByParamTLB_MRG_NONVALSTOCK.AsString;
        cdsAccCreditLimitTLB_OVERDUE.AsString := cdsCrdConClassByParamTLB_OVERDUE.AsString;
        cdsAccCreditLimitTLS_SHORTSELL.AsString := cdsCrdConClassByParamTLS_SHORTSELL.AsString;
        cdsAccCreditLimitTLS_NOTVALIDSTATUS.AsString := cdsCrdConClassByParamTLS_NOTVALIDSTATUS.AsString;
        cdsAccCreditLimitTLS_OVERDUE.AsString := cdsCrdConClassByParamTLS_OVERDUE.AsString;
        cdsAccCreditLimit.Post;
      end;


      //Update Account Bank
      sDefaultCustody := dmGlobal.RemoteServer.GetGlobalParamString('009');
      sALRDN := dmGlobal.RemoteServer.GetGlobalParamString('751');
      sAL001 := dmGlobal.RemoteServer.GetGlobalParamString('752');
      sAL004 := dmGlobal.RemoteServer.GetGlobalParamString('753');
      sALCustBank := dmGlobal.RemoteServer.GetGlobalParamString('754');

      if cdsAccBank.Locate('ISRDN', '1', []) then
      begin
        if cdsAccBankACTLED_SEQID.IsNull then
        begin
          if cdsAccountLedger.Locate('ALTYPE', sALRDN, []) then
          begin
            cdsAccBank.Edit;
            cdsAccBankACTLED_SEQID.AsInteger := cdsAccountLedgerSEQID.AsInteger;
            cdsAccBank.Post;
          end;
        end;
      end;

      //Update Account Custody
      if not cdsAccCustody.IsEmpty then
      begin
        cdsAccCustody.First;

        while not cdsAccCustody.Eof do
        begin
          cdsAccCustody.Edit;

          if (cdsAccCustodyCUSTODYCODE.IsNull) or (cdsAccCustodyCUSTODYCODE.AsString = '') then
            cdsAccCustodyCUSTODYCODE.AsString := sDefaultCustody;

          if (cdsAccCustodyACTLED_SEQID.IsNull) then
          begin
            if cdsAccCustodyCUSTODYTYPE.AsString = 'D' then //001
            begin
              if cdsAccountLedger.Locate('ALTYPE', sAL001, []) then
                cdsAccCustodyACTLED_SEQID.AsInteger := cdsAccountLedgerSEQID.AsInteger;
            end
            else if cdsAccCustodyCUSTODYTYPE.AsString = 'C' then //004
            begin
              if cdsAccountLedger.Locate('ALTYPE', sAL004, []) then
                cdsAccCustodyACTLED_SEQID.AsInteger := cdsAccountLedgerSEQID.AsInteger;
            end
            else if cdsAccCustodyCUSTODYTYPE.AsString = 'B' then //Custodian Bank
            begin
              if cdsAccountLedger.Locate('ALTYPE', sALCustBank, []) then
                cdsAccCustodyACTLED_SEQID.AsInteger := cdsAccountLedgerSEQID.AsInteger;
            end;
          end;

          cdsAccCustody.Post;

          cdsAccCustody.Next;
        end;

      end;

      //Update Settlement Configuration
      BrokerACCID := dmGlobal.RemoteServer.GetBrokerAccount;
      with dmGlobal.IntDataLookup do
      begin
        cdsLuCustodyAccount.Close;
        cdsLuCustodyAccount.Params[0].AsInteger := BrokerACCID;
        cdsLuCustodyAccount.Open;

        cdsLuBankAccount.Close;
        cdsLuBankAccount.Params[0].AsInteger := BrokerACCID;
        cdsLuBankAccount.Open;

        cdsAccount.Edit;

        if cdsLuCustodyAccount.Locate('ALTYPE', cdsBusTypeIDX_CASHPAY_SOURCE_LDGTYPE.AsString, []) then
          cdsAccountIDX_CASHPAY_SOURCE.AsInteger := cdsLuCustodyAccountACCCUSTODYID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeIDX_CASHPAY_TARGET_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountIDX_CASHPAY_TARGET.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeIDX_CASHRCV_SOURCE_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountIDX_CASHRCV_SOURCE.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsLuCustodyAccount.Locate('ALTYPE', cdsBusTypeIDX_CASHRCV_TARGET_LDGTYPE.AsString, []) then
          cdsAccountIDX_CASHRCV_TARGET.AsInteger := cdsLuCustodyAccountACCCUSTODYID.AsInteger;



        if cdsLuBankAccount.Locate('ALTYPE', cdsBusTypeCASHPAY_SOURCE_LDGTYPE.AsString, []) then
          cdsAccountCASHPAY_SOURCE.AsInteger := cdsLuBankAccountACCBANKID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeCASHPAY_TARGET_LDGTYPE.AsString, []) then
          if cdsAccBank.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountCASHPAY_TARGET.AsInteger := cdsAccBankACCBANKID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeCASHRCV_SOURCE_LDGTYPE.AsString, []) then
          if cdsAccBank.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountCASHRCV_SOURCE.AsInteger := cdsAccBankACCBANKID.AsInteger;

        if cdsLuBankAccount.Locate('ALTYPE', cdsBusTypeCASHRCV_TARGET_LDGTYPE.AsString, []) then
          cdsAccountCASHRCV_TARGET.AsInteger := cdsLuBankAccountACCBANKID.AsInteger;



        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeIDX_STKDLV_SOURCE_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountIDX_STKDLV_SOURCE.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeIDX_STKDLV_TARGET_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountIDX_STKDLV_TARGET.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeIDX_STKRCV_SOURCE_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountIDX_STKRCV_SOURCE.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeIDX_STKRCV_TARGET_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountIDX_STKRCV_TARGET.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;


//        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeCUST_STKDLV_SOURCE_LDGTYPE.AsString, []) then
//          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
//            cdsAccountCUST_STKDLV_SOURCE.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsLuCustodyAccount.Locate('ALTYPE', cdsBusTypeCUST_STKDLV_SOURCE_LDGTYPE.AsString, []) then
          cdsAccountCUST_STKDLV_SOURCE.AsInteger := cdsLuCustodyAccountACCCUSTODYID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeCUST_STKDLV_TARGET_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountCUST_STKDLV_TARGET.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeCUST_STKRCV_SOURCE_LDGTYPE.AsString, []) then
          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
            cdsAccountCUST_STKRCV_SOURCE.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

//        if cdsAccountLedger.Locate('ALTYPE', cdsBusTypeCUST_STKRCV_TARGET_LDGTYPE.AsString, []) then
//          if cdsAccCustody.Locate('ACTLED_SEQID', cdsAccountLedgerSEQID.AsInteger, []) then
//            cdsAccountCUST_STKRCV_TARGET.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;

        if cdsLuCustodyAccount.Locate('ALTYPE', cdsBusTypeCUST_STKRCV_TARGET_LDGTYPE.AsString, []) then
          cdsAccountCUST_STKRCV_TARGET.AsInteger := cdsLuCustodyAccountACCCUSTODYID.AsInteger;

        cdsAccount.Post;
      end;

    end
    else
    begin
      dmGlobal.ErrorMessage('Please Choose Business Type!');
    end;

  end;
end;

procedure TfrmCOBGeneral.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  btnGenerate.Click;
end;

procedure TfrmCOBGeneral.PrepareData(AForm: TForm);
begin
  FFormParent := AForm;
end;

end.
