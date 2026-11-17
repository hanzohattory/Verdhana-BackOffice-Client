unit FormAccSInvest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxButtonEdit;

type
  TfrmAccSInvest = class(TfrmEditorData)
    cdsAccSInvest: TNClientDataset;
    cdsAccSInvestACCID: TIntegerField;
    cdsAccSInvestENTTID: TIntegerField;
    cdsAccSInvestACCCODE: TStringField;
    cdsAccSInvestACCNAME: TStringField;
    cdsAccSInvestACCINIT: TStringField;
    cdsAccSInvestACCTYPE: TStringField;
    cdsAccSInvestACCSUBTYPE: TStringField;
    cdsAccSInvestBRANCHID: TLargeintField;
    cdsAccSInvestINVTYPE: TStringField;
    cdsAccSInvestBUSSTYPE: TLargeintField;
    cdsAccSInvestTC_MODEL: TStringField;
    cdsAccSInvestPRDCODE: TStringField;
    cdsAccSInvestA_CLS_ORDER: TStringField;
    cdsAccSInvestAVGPRICEDEC: TSmallintField;
    cdsAccSInvestOMNIBUSTRADE: TStringField;
    cdsAccSInvestCASHKEEP: TStringField;
    cdsAccSInvestSTOCKKEEP: TStringField;
    cdsAccSInvestISWAPU: TStringField;
    cdsAccSInvestISUSEWHT: TStringField;
    cdsAccSInvestISUSEOTC: TStringField;
    cdsAccSInvestISOWNCONTACT: TStringField;
    cdsAccSInvestISTRDACCOUNT: TStringField;
    cdsAccSInvestAUTO_SETTLE: TStringField;
    cdsAccSInvestSALESID: TLargeintField;
    cdsAccSInvestACC_STS: TStringField;
    cdsAccSInvestOMGUSE: TStringField;
    cdsAccSInvestOMGEXREFFCODE: TStringField;
    cdsAccSInvestOMGALERT: TStringField;
    cdsAccSInvestOMGSENDSSI: TStringField;
    cdsAccSInvestOMGSENDFEEINBLOCK: TStringField;
    cdsAccSInvestSI_SPLIT: TStringField;
    cdsAccSInvestALCID: TIntegerField;
    cdsAccSInvestTALCID: TIntegerField;
    cdsAccSInvestLASTTR_DATE: TDateTimeField;
    cdsAccSInvestTRF_PRVT_BANK: TStringField;
    cdsAccSInvestTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccSInvestCCCLS_ID: TLargeintField;
    cdsAccSInvestCC_TYPE: TStringField;
    cdsAccSInvestCR_VAL: TFloatField;
    cdsAccSInvestBUY_LIMIT: TFloatField;
    cdsAccSInvestSELL_LIMIT: TFloatField;
    cdsAccSInvestIS_IDX_TRX: TStringField;
    cdsAccSInvestTLCLASSID: TIntegerField;
    cdsAccSInvestDEFTRDPARAM: TStringField;
    cdsAccSInvestKSEI_SID: TStringField;
    cdsAccSInvestRATIO_MRGCALL: TFloatField;
    cdsAccSInvestRATIO_MRGWARING: TFloatField;
    cdsAccSInvestRATIO_FORCESELL: TFloatField;
    cdsAccSInvestFORCESELL_DAY: TIntegerField;
    cdsAccSInvestTL_CASHVALUATE: TFloatField;
    cdsAccSInvestTL_STOCKVALUATE: TFloatField;
    cdsAccSInvestACCPASSWORD: TStringField;
    cdsAccSInvestCPID: TIntegerField;
    cdsAccSInvestBUS_CAT: TLargeintField;
    cdsAccSInvestINIT_DEPOSIT_FUND: TFloatField;
    cdsAccSInvestINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccSInvestALLOC_TYPE: TStringField;
    cdsAccSInvestTC_BASE: TStringField;
    cdsAccSInvestAUTO_ALLOC: TStringField;
    cdsAccSInvestDT_AUTOAVGPRICE: TStringField;
    cdsAccSInvestSETTLE_MODE: TStringField;
    cdsAccSInvestNET_SETTLE: TStringField;
    cdsAccSInvestSETTLE_TYPE: TStringField;
    cdsAccSInvestDIVIDEN_TAX: TFloatField;
    cdsAccSInvestDORMANT: TStringField;
    cdsAccSInvestMODDA: TDateTimeField;
    cdsAccSInvestMODUI: TStringField;
    cdsAccSInvestAPPDA: TDateTimeField;
    cdsAccSInvestAPPUI: TStringField;
    cdsAccSInvestUNDER4Y: TIntegerField;
    cdsAccSInvestUNDER4YDA: TDateTimeField;
    cdsAccSInvestNOTES4Y: TStringField;
    cdsAccSInvestISDEL: TIntegerField;
    cdsAccSInvestID: TLargeintField;
    cdsAccSInvestRISK: TStringField;
    cdsAccSInvestEXCELL_CLASS: TIntegerField;
    cdsAccSInvestSPRESID: TLargeintField;
    cdsAccSInvestMCALLDAY: TIntegerField;
    cdsAccSInvestAFFIL: TBooleanField;
    cdsAccSInvestTRANSFER_STATUS: TStringField;
    cdsAccSInvestSYNC: TStringField;
    cdsAccSInvestYNC: TStringField;
    cdsAccSInvestREFERRAL_ID_INT: TIntegerField;
    cdsAccSInvestREFERRAL_ID_EXT: TIntegerField;
    cdsAccSInvestCREATED_DATE: TDateField;
    cdsAccSInvestCHKDUEDAYEXP: TStringField;
    cdsAccSInvestDUEBUYSTOCK: TIntegerField;
    cdsAccSInvestDUESELLSTOCK: TIntegerField;
    cdsAccSInvestDUEBUYCASH: TIntegerField;
    cdsAccSInvestDUESELLCASH: TIntegerField;
    cdsAccSInvestSINVUSE: TStringField;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccSInvest: TfrmAccSInvest;

implementation

{$R *.dfm}

uses DataGlobal;

end.
