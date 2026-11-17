unit FormAccountCompany;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxPCdxBarPopupMenu, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxTextEdit, cxDBLookupComboBox, cxDBEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxGroupBox, cxPC, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxBlobEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  Vcl.ExtCtrls, Vcl.DBCtrls, Datasnap.DBClient, NClientDataset;

type
  TfrmAccountCompany = class(TfrmEditorData)
    pageAccount: TcxPageControl;
    tabGeneral: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    cxGroupBox2: TcxGroupBox;
    dxLayoutControl5: TdxLayoutControl;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutControl5Group2: TdxLayoutGroup;
    dxLayoutControl5Item2: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    tabCharges: TcxTabSheet;
    grdCharge: TcxGrid;
    gvwCharge: TcxGridDBTableView;
    gvwChargeMARKETCODE: TcxGridDBColumn;
    gvwChargeCHARGE_ID: TcxGridDBColumn;
    gvwChargeDESCRIPTION: TcxGridDBColumn;
    gvwChargeISUSED: TcxGridDBColumn;
    grdChargeLevel1: TcxGridLevel;
    tabBank: TcxTabSheet;
    tabLedgerAcc: TcxTabSheet;
    tabTransSetting: TcxTabSheet;
    dsCharge: TDataSource;
    dsLedgerAcc: TDataSource;
    dsTransLedger: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dsBank: TDataSource;
    dsCustody: TDataSource;
    cxGrid2: TcxGrid;
    gvwLedgerAcc: TcxGridDBTableView;
    gvwLedgerAccALTYPE: TcxGridDBColumn;
    gvwLedgerAccALCODE: TcxGridDBColumn;
    gvwLedgerAccBANKCODE: TcxGridDBColumn;
    gvwLedgerAccBANKACCNO: TcxGridDBColumn;
    gvwLedgerAccBANKACCNAME: TcxGridDBColumn;
    gvwLedgerAccBANKBRANCH: TcxGridDBColumn;
    gvwLedgerAccCALCINTEREST: TcxGridDBColumn;
    gvwLedgerAccINTERESTCODE: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1TRANSTYPE_CODE: TcxGridDBColumn;
    cxGridDBTableView1ACTLED_SEQID: TcxGridDBColumn;
    cxGridDBTableView1DC: TcxGridDBColumn;
    cxGridDBTableView1INSTRUCTION_TYPE: TcxGridDBColumn;
    cxGridDBTableView1BROKER_ACCID: TcxGridDBColumn;
    cxGridDBTableView1BROKER_ACTLED_SEQID: TcxGridDBColumn;
    cxGridDBTableView1USE_INSTRUCTION: TcxGridDBColumn;
    cxGridDBTableView1ACCBANKID: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    tabContact: TcxTabSheet;
    dsContact: TDataSource;
    cxGrid5: TcxGrid;
    gvwContact: TcxGridDBBandedTableView;
    gvwContactCUSGID: TcxGridDBBandedColumn;
    gvwContactCOUNTCODE: TcxGridDBBandedColumn;
    gvwContactCONTNAME: TcxGridDBBandedColumn;
    gvwContactCONTPHONE: TcxGridDBBandedColumn;
    gvwContactCONTMOBILE: TcxGridDBBandedColumn;
    gvwContactCONTADDRESS: TcxGridDBBandedColumn;
    gvwContactCONTEMAIL: TcxGridDBBandedColumn;
    gvwContactCONTFAX: TcxGridDBBandedColumn;
    gvwContactIDCARDTYPE: TcxGridDBBandedColumn;
    gvwContactIDCARDNO: TcxGridDBBandedColumn;
    gvwContactIDCARDEXPIRE: TcxGridDBBandedColumn;
    gvwContactSENDBYEMAIL: TcxGridDBBandedColumn;
    gvwContactSENDBYFAX: TcxGridDBBandedColumn;
    gvwContactSENDBYSMS: TcxGridDBBandedColumn;
    gvwContactSENDBYPOSTMAIL: TcxGridDBBandedColumn;
    gvwContactUPDSTS: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwBank: TcxGridDBTableView;
    gvwBankBNCODE: TcxGridDBColumn;
    gvwBankBANKACCNO: TcxGridDBColumn;
    gvwBankBANKACCNAME: TcxGridDBColumn;
    gvwBankBANKBRANCH: TcxGridDBColumn;
    gvwBankCCYCODE: TcxGridDBColumn;
    gvwBankISRDN: TcxGridDBColumn;
    gvwBankBNCHGSTYPE: TcxGridDBColumn;
    gvwBankACTLED_SEQID: TcxGridDBColumn;
    gvwBankBN_CHGMODE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid6: TcxGrid;
    gvwCustody: TcxGridDBTableView;
    gvwCustodyACCCUSTODYID: TcxGridDBColumn;
    gvwCustodyACCID: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE: TcxGridDBColumn;
    gvwCustodyCUSTODYTYPE: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH: TcxGridDBColumn;
    gvwCustodyACTLED_SEQID: TcxGridDBColumn;
    gvwCustodyMODDA: TcxGridDBColumn;
    gvwCustodyMODUI: TcxGridDBColumn;
    gvwCustodyAPPDA: TcxGridDBColumn;
    gvwCustodyAPPUI: TcxGridDBColumn;
    gvwCustodyUNDER4Y: TcxGridDBColumn;
    gvwCustodyUNDER4YDA: TcxGridDBColumn;
    gvwCustodyNOTES4Y: TcxGridDBColumn;
    gvwCustodyISDEL: TcxGridDBColumn;
    gvwCustodyID: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cdsAccCompany: TNClientDataset;
    cdsAccCompanyACCID: TIntegerField;
    cdsAccCompanyENTTID: TIntegerField;
    cdsAccCompanyACCCODE: TStringField;
    cdsAccCompanyACCNAME: TStringField;
    cdsAccCompanyACCINIT: TStringField;
    cdsAccCompanyACCTYPE: TStringField;
    cdsAccCompanyACCSUBTYPE: TStringField;
    cdsAccCompanyBRANCHID: TLargeintField;
    cdsAccCompanyINVTYPE: TStringField;
    cdsAccCompanyBUSSTYPE: TLargeintField;
    cdsAccCompanyTC_MODEL: TStringField;
    cdsAccCompanyPRDCODE: TStringField;
    cdsAccCompanyA_CLS_ORDER: TStringField;
    cdsAccCompanyAVGPRICEDEC: TSmallintField;
    cdsAccCompanyOMNIBUSTRADE: TStringField;
    cdsAccCompanyCASHKEEP: TStringField;
    cdsAccCompanySTOCKKEEP: TStringField;
    cdsAccCompanyISWAPU: TStringField;
    cdsAccCompanyWAPUVALUE: TFloatField;
    cdsAccCompanyISAVGPRICE: TStringField;
    cdsAccCompanyISDEBETINTEREST: TStringField;
    cdsAccCompanyISCREDITINTEREST: TStringField;
    cdsAccCompanyISPENALTY: TStringField;
    cdsAccCompanyISUSEWHT: TStringField;
    cdsAccCompanyISUSEOTC: TStringField;
    cdsAccCompanyISOWNCONTACT: TStringField;
    cdsAccCompanySALESID: TLargeintField;
    cdsAccCompanyACC_STS: TStringField;
    cdsAccCompanyOMGUSE: TStringField;
    cdsAccCompanyOMGEXREFFCODE: TStringField;
    cdsAccCompanyOMGALERT: TStringField;
    cdsAccCompanyOMGSENDSSI: TStringField;
    cdsAccCompanyOMGSENDFEEINBLOCK: TStringField;
    cdsAccCompanyMODDA: TDateTimeField;
    cdsAccCompanyMODUI: TStringField;
    cdsAccCompanyAPPDA: TDateTimeField;
    cdsAccCompanyAPPUI: TStringField;
    cdsAccCompanyUNDER4Y: TIntegerField;
    cdsAccCompanyUNDER4YDA: TDateTimeField;
    cdsAccCompanyNOTES4Y: TStringField;
    cdsAccCompanyISDEL: TIntegerField;
    cdsAccCompanyID: TLargeintField;
    cdsAccCompanyISTRDACCOUNT: TStringField;
    cdsAccCompanySI_SPLIT: TStringField;
    cdsAccCompanyALCID: TIntegerField;
    cdsAccCompanyTALCID: TIntegerField;
    cdsAccCompanyLASTTR_DATE: TDateTimeField;
    cdsAccCompanyCCCLS_ID: TLargeintField;
    cdsAccCompanyCC_TYPE: TStringField;
    cdsAccCompanyCR_VAL: TFloatField;
    cdsAccCompanyBUY_LIMIT: TFloatField;
    cdsAccCompanySELL_LIMIT: TFloatField;
    cdsAccCompanyqryAccountCustody: TDataSetField;
    cdsAccCompanyqryAccountContact: TDataSetField;
    cdsAccCompanyqryAccountExtRef: TDataSetField;
    cdsAccCompanyqryAccountTransLedger: TDataSetField;
    cdsAccCompanyqryAccountBank: TDataSetField;
    cdsAccCompanyqryAccountLedger: TDataSetField;
    cdsAccCompanyqryAccountCharge: TDataSetField;
    cdsAccCompanyqryAccountComm: TDataSetField;
    cdsAccCompCharge: TNClientDataset;
    cdsAccCompChargeACCID: TIntegerField;
    cdsAccCompChargeMARKETCODE: TStringField;
    cdsAccCompChargeCHARGE_ID: TLargeintField;
    cdsAccCompChargeISUSED: TStringField;
    cdsAccCompChargeMODDA: TDateTimeField;
    cdsAccCompChargeMODUI: TStringField;
    cdsAccCompChargeAPPDA: TDateTimeField;
    cdsAccCompChargeAPPUI: TStringField;
    cdsAccCompChargeUNDER4Y: TIntegerField;
    cdsAccCompChargeUNDER4YDA: TDateTimeField;
    cdsAccCompChargeNOTES4Y: TStringField;
    cdsAccCompChargeISDEL: TIntegerField;
    cdsAccCompChargeID: TLargeintField;
    cdsAccCompLedger: TNClientDataset;
    cdsAccCompLedgerACCID: TIntegerField;
    cdsAccCompLedgerSEQID: TIntegerField;
    cdsAccCompLedgerALTYPE: TStringField;
    cdsAccCompLedgerALCODE: TStringField;
    cdsAccCompLedgerALDESC: TStringField;
    cdsAccCompLedgerUSE_CLIENTACC: TStringField;
    cdsAccCompLedgerBANKCODE: TStringField;
    cdsAccCompLedgerBANKACCNO: TStringField;
    cdsAccCompLedgerBANKACCNAME: TStringField;
    cdsAccCompLedgerBANKBRANCH: TStringField;
    cdsAccCompLedgerCALCINTEREST: TStringField;
    cdsAccCompLedgerINTERESTCODE: TStringField;
    cdsAccCompLedgerGLACCOUNTID: TLargeintField;
    cdsAccCompLedgerCCY: TStringField;
    cdsAccCompLedgerMODDA: TDateTimeField;
    cdsAccCompLedgerMODUI: TStringField;
    cdsAccCompLedgerAPPDA: TDateTimeField;
    cdsAccCompLedgerAPPUI: TStringField;
    cdsAccCompLedgerUNDER4Y: TIntegerField;
    cdsAccCompLedgerUNDER4YDA: TDateTimeField;
    cdsAccCompLedgerNOTES4Y: TStringField;
    cdsAccCompLedgerISDEL: TIntegerField;
    cdsAccCompLedgerID: TLargeintField;
    cdsAccCompTransLedger: TNClientDataset;
    cdsAccCompTransLedgerACCID: TIntegerField;
    cdsAccCompTransLedgerTRANSTYPE_CODE: TStringField;
    cdsAccCompTransLedgerACTLED_SEQID: TIntegerField;
    cdsAccCompTransLedgerDC: TStringField;
    cdsAccCompTransLedgerACCBANKID: TIntegerField;
    cdsAccCompTransLedgerUSE_CPCLIENTACC: TStringField;
    cdsAccCompTransLedgerBROKER_ACCID: TIntegerField;
    cdsAccCompTransLedgerBROKER_ACTLED_SEQID: TIntegerField;
    cdsAccCompTransLedgerUSE_INSTRUCTION: TStringField;
    cdsAccCompTransLedgerINSTRUCTION_TYPE: TStringField;
    cdsAccCompTransLedgerMODDA: TDateTimeField;
    cdsAccCompTransLedgerMODUI: TStringField;
    cdsAccCompTransLedgerAPPDA: TDateTimeField;
    cdsAccCompTransLedgerAPPUI: TStringField;
    cdsAccCompTransLedgerUNDER4Y: TIntegerField;
    cdsAccCompTransLedgerUNDER4YDA: TDateTimeField;
    cdsAccCompTransLedgerNOTES4Y: TStringField;
    cdsAccCompTransLedgerISDEL: TIntegerField;
    cdsAccCompTransLedgerID: TLargeintField;
    cdsAccCompBank: TNClientDataset;
    cdsAccCompBankACCBANKID: TIntegerField;
    cdsAccCompBankACCID: TIntegerField;
    cdsAccCompBankBNCODE: TStringField;
    cdsAccCompBankBANKACCNO: TStringField;
    cdsAccCompBankBANKACCNAME: TStringField;
    cdsAccCompBankBANKBRANCH: TStringField;
    cdsAccCompBankISRDN: TStringField;
    cdsAccCompBankBNCHGSTYPE: TStringField;
    cdsAccCompBankACTLED_SEQID: TIntegerField;
    cdsAccCompBankMODDA: TDateTimeField;
    cdsAccCompBankMODUI: TStringField;
    cdsAccCompBankAPPDA: TDateTimeField;
    cdsAccCompBankAPPUI: TStringField;
    cdsAccCompBankUNDER4Y: TIntegerField;
    cdsAccCompBankUNDER4YDA: TDateTimeField;
    cdsAccCompBankNOTES4Y: TStringField;
    cdsAccCompBankISDEL: TIntegerField;
    cdsAccCompBankID: TLargeintField;
    cdsAccCompBankCCYCODE: TStringField;
    cdsAccCompBankBN_CHGMODE: TStringField;
    cdsAccCompCustody: TNClientDataset;
    cdsAccCompCustodyACCCUSTODYID: TIntegerField;
    cdsAccCompCustodyACCID: TIntegerField;
    cdsAccCompCustodyCUSTODYCODE: TStringField;
    cdsAccCompCustodyCUSTODYACCNO: TStringField;
    cdsAccCompCustodyCUSTODYACCNAME: TStringField;
    cdsAccCompCustodyCUSTODYBRANCH: TStringField;
    cdsAccCompCustodyCUSTODYTYPE: TStringField;
    cdsAccCompCustodyACTLED_SEQID: TIntegerField;
    cdsAccCompCustodyMODDA: TDateTimeField;
    cdsAccCompCustodyMODUI: TStringField;
    cdsAccCompCustodyAPPDA: TDateTimeField;
    cdsAccCompCustodyAPPUI: TStringField;
    cdsAccCompCustodyUNDER4Y: TIntegerField;
    cdsAccCompCustodyUNDER4YDA: TDateTimeField;
    cdsAccCompCustodyNOTES4Y: TStringField;
    cdsAccCompCustodyISDEL: TIntegerField;
    cdsAccCompCustodyID: TLargeintField;
    cdsAccCompContact: TNClientDataset;
    cdsAccCompContactACCID: TIntegerField;
    cdsAccCompContactCUSGID: TIntegerField;
    cdsAccCompContactCOUNTCODE: TStringField;
    cdsAccCompContactCONTNAME: TStringField;
    cdsAccCompContactCONTPHONE: TStringField;
    cdsAccCompContactCONTMOBILE: TStringField;
    cdsAccCompContactCONTADDRESS: TStringField;
    cdsAccCompContactCONTEMAIL: TStringField;
    cdsAccCompContactCONTFAX: TStringField;
    cdsAccCompContactIDCARDTYPE: TStringField;
    cdsAccCompContactIDCARDNO: TStringField;
    cdsAccCompContactIDCARDEXPIRE: TDateField;
    cdsAccCompContactSENDBYEMAIL: TStringField;
    cdsAccCompContactSENDBYFAX: TStringField;
    cdsAccCompContactSENDBYSMS: TStringField;
    cdsAccCompContactSENDBYPOSTMAIL: TStringField;
    cdsAccCompContactMODDA: TDateTimeField;
    cdsAccCompContactMODUI: TStringField;
    cdsAccCompContactAPPDA: TDateTimeField;
    cdsAccCompContactAPPUI: TStringField;
    cdsAccCompContactUNDER4Y: TIntegerField;
    cdsAccCompContactUNDER4YDA: TDateTimeField;
    cdsAccCompContactNOTES4Y: TStringField;
    cdsAccCompContactISDEL: TIntegerField;
    cdsAccCompContactID: TLargeintField;
    procedure cdsAccCompLedgerBeforePost(DataSet: TDataSet);
    procedure cdsAccCompCustodyBeforePost(DataSet: TDataSet);
    procedure cdsAccCompBankBeforePost(DataSet: TDataSet);
    procedure cdsAccCompanyNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountCompany: TfrmAccountCompany;

implementation

{$R *.dfm}

uses FormAccountCompanyList, DataGlobal;

procedure TfrmAccountCompany.cdsAccCompanyNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccCompanyACCID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNT');
end;

procedure TfrmAccountCompany.cdsAccCompBankBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccCompBankACCBANKID.IsNull then
    cdsAccCompBankACCBANKID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTBANK_ID');
end;

procedure TfrmAccountCompany.cdsAccCompCustodyBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccCompCustodyACCCUSTODYID.IsNull then
    cdsAccCompCustodyACCCUSTODYID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTCUSTODY_ID');
end;

procedure TfrmAccountCompany.cdsAccCompLedgerBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsAccCompLedgerALCODE.IsNull then
    cdsAccCompLedgerALCODE.AsString := cdsAccCompLedgerACCID.AsString + '-' +
      cdsAccCompLedgerALTYPE.AsString + '-' + cdsAccCompLedgerSEQID.AsString;
end;

Initialization
  RegisterClass(TfrmAccountCompany);

end.
