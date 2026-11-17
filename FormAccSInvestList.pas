unit FormAccSInvestList;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxDBLookupComboBox;

type
  TfrmAccSInvestList = class(TfrmBrowseData)
    cdsAccSInvestList: TNClientDataset;
    cdsAccSInvestListACCID: TIntegerField;
    cdsAccSInvestListENTTID: TIntegerField;
    cdsAccSInvestListACCCODE: TStringField;
    cdsAccSInvestListACCNAME: TStringField;
    cdsAccSInvestListACCINIT: TStringField;
    cdsAccSInvestListACCTYPE: TStringField;
    cdsAccSInvestListACCSUBTYPE: TStringField;
    cdsAccSInvestListBRANCHID: TLargeintField;
    cdsAccSInvestListINVTYPE: TStringField;
    cdsAccSInvestListBUSSTYPE: TLargeintField;
    cdsAccSInvestListTC_MODEL: TStringField;
    cdsAccSInvestListPRDCODE: TStringField;
    cdsAccSInvestListA_CLS_ORDER: TStringField;
    cdsAccSInvestListAVGPRICEDEC: TSmallintField;
    cdsAccSInvestListOMNIBUSTRADE: TStringField;
    cdsAccSInvestListCASHKEEP: TStringField;
    cdsAccSInvestListSTOCKKEEP: TStringField;
    cdsAccSInvestListISWAPU: TStringField;
    cdsAccSInvestListISUSEWHT: TStringField;
    cdsAccSInvestListISUSEOTC: TStringField;
    cdsAccSInvestListISOWNCONTACT: TStringField;
    cdsAccSInvestListISTRDACCOUNT: TStringField;
    cdsAccSInvestListAUTO_SETTLE: TStringField;
    cdsAccSInvestListSALESID: TLargeintField;
    cdsAccSInvestListACC_STS: TStringField;
    cdsAccSInvestListOMGUSE: TStringField;
    cdsAccSInvestListOMGEXREFFCODE: TStringField;
    cdsAccSInvestListOMGALERT: TStringField;
    cdsAccSInvestListOMGSENDSSI: TStringField;
    cdsAccSInvestListOMGSENDFEEINBLOCK: TStringField;
    cdsAccSInvestListSI_SPLIT: TStringField;
    cdsAccSInvestListALCID: TIntegerField;
    cdsAccSInvestListTALCID: TIntegerField;
    cdsAccSInvestListLASTTR_DATE: TDateTimeField;
    cdsAccSInvestListTRF_PRVT_BANK: TStringField;
    cdsAccSInvestListTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccSInvestListCCCLS_ID: TLargeintField;
    cdsAccSInvestListCC_TYPE: TStringField;
    cdsAccSInvestListCR_VAL: TFloatField;
    cdsAccSInvestListBUY_LIMIT: TFloatField;
    cdsAccSInvestListSELL_LIMIT: TFloatField;
    cdsAccSInvestListIS_IDX_TRX: TStringField;
    cdsAccSInvestListTLCLASSID: TIntegerField;
    cdsAccSInvestListDEFTRDPARAM: TStringField;
    cdsAccSInvestListKSEI_SID: TStringField;
    cdsAccSInvestListRATIO_MRGCALL: TFloatField;
    cdsAccSInvestListRATIO_MRGWARING: TFloatField;
    cdsAccSInvestListRATIO_FORCESELL: TFloatField;
    cdsAccSInvestListFORCESELL_DAY: TIntegerField;
    cdsAccSInvestListTL_CASHVALUATE: TFloatField;
    cdsAccSInvestListTL_STOCKVALUATE: TFloatField;
    cdsAccSInvestListACCPASSWORD: TStringField;
    cdsAccSInvestListCPID: TIntegerField;
    cdsAccSInvestListBUS_CAT: TLargeintField;
    cdsAccSInvestListINIT_DEPOSIT_FUND: TFloatField;
    cdsAccSInvestListINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccSInvestListALLOC_TYPE: TStringField;
    cdsAccSInvestListTC_BASE: TStringField;
    cdsAccSInvestListAUTO_ALLOC: TStringField;
    cdsAccSInvestListDT_AUTOAVGPRICE: TStringField;
    cdsAccSInvestListSETTLE_MODE: TStringField;
    cdsAccSInvestListNET_SETTLE: TStringField;
    cdsAccSInvestListSETTLE_TYPE: TStringField;
    cdsAccSInvestListDIVIDEN_TAX: TFloatField;
    cdsAccSInvestListDORMANT: TStringField;
    cdsAccSInvestListMODDA: TDateTimeField;
    cdsAccSInvestListMODUI: TStringField;
    cdsAccSInvestListAPPDA: TDateTimeField;
    cdsAccSInvestListAPPUI: TStringField;
    cdsAccSInvestListUNDER4Y: TIntegerField;
    cdsAccSInvestListUNDER4YDA: TDateTimeField;
    cdsAccSInvestListNOTES4Y: TStringField;
    cdsAccSInvestListISDEL: TIntegerField;
    cdsAccSInvestListID: TLargeintField;
    cdsAccSInvestListRISK: TStringField;
    cdsAccSInvestListEXCELL_CLASS: TIntegerField;
    cdsAccSInvestListSPRESID: TLargeintField;
    cdsAccSInvestListMCALLDAY: TIntegerField;
    cdsAccSInvestListAFFIL: TBooleanField;
    cdsAccSInvestListTRANSFER_STATUS: TStringField;
    cdsAccSInvestListSYNC: TStringField;
    cdsAccSInvestListYNC: TStringField;
    cdsAccSInvestListREFERRAL_ID_INT: TIntegerField;
    cdsAccSInvestListREFERRAL_ID_EXT: TIntegerField;
    cdsAccSInvestListCREATED_DATE: TDateField;
    cdsAccSInvestListCHKDUEDAYEXP: TStringField;
    cdsAccSInvestListDUEBUYSTOCK: TIntegerField;
    cdsAccSInvestListDUESELLSTOCK: TIntegerField;
    cdsAccSInvestListDUEBUYCASH: TIntegerField;
    cdsAccSInvestListDUESELLCASH: TIntegerField;
    cdsAccSInvestListSINVUSE: TStringField;
    cdsAccSInvestListENTTCODE: TStringField;
    cdsAccSInvestListENTNAME: TStringField;
    cdsAccSInvestListENTTDESC: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterBUSSTYPE: TcxGridDBBandedColumn;
    gvwMasterTC_MODEL: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterA_CLS_ORDER: TcxGridDBBandedColumn;
    gvwMasterAVGPRICEDEC: TcxGridDBBandedColumn;
    gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterISWAPU: TcxGridDBBandedColumn;
    gvwMasterISUSEWHT: TcxGridDBBandedColumn;
    gvwMasterISUSEOTC: TcxGridDBBandedColumn;
    gvwMasterISOWNCONTACT: TcxGridDBBandedColumn;
    gvwMasterISTRDACCOUNT: TcxGridDBBandedColumn;
    gvwMasterAUTO_SETTLE: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterOMGUSE: TcxGridDBBandedColumn;
    gvwMasterOMGEXREFFCODE: TcxGridDBBandedColumn;
    gvwMasterOMGALERT: TcxGridDBBandedColumn;
    gvwMasterOMGSENDSSI: TcxGridDBBandedColumn;
    gvwMasterOMGSENDFEEINBLOCK: TcxGridDBBandedColumn;
    gvwMasterSI_SPLIT: TcxGridDBBandedColumn;
    gvwMasterALCID: TcxGridDBBandedColumn;
    gvwMasterTALCID: TcxGridDBBandedColumn;
    gvwMasterLASTTR_DATE: TcxGridDBBandedColumn;
    gvwMasterTRF_PRVT_BANK: TcxGridDBBandedColumn;
    gvwMasterTRF_PRVT_BANK_TARGET: TcxGridDBBandedColumn;
    gvwMasterCCCLS_ID: TcxGridDBBandedColumn;
    gvwMasterCC_TYPE: TcxGridDBBandedColumn;
    gvwMasterCR_VAL: TcxGridDBBandedColumn;
    gvwMasterBUY_LIMIT: TcxGridDBBandedColumn;
    gvwMasterSELL_LIMIT: TcxGridDBBandedColumn;
    gvwMasterIS_IDX_TRX: TcxGridDBBandedColumn;
    gvwMasterTLCLASSID: TcxGridDBBandedColumn;
    gvwMasterDEFTRDPARAM: TcxGridDBBandedColumn;
    gvwMasterKSEI_SID: TcxGridDBBandedColumn;
    gvwMasterRATIO_MRGCALL: TcxGridDBBandedColumn;
    gvwMasterRATIO_MRGWARING: TcxGridDBBandedColumn;
    gvwMasterRATIO_FORCESELL: TcxGridDBBandedColumn;
    gvwMasterFORCESELL_DAY: TcxGridDBBandedColumn;
    gvwMasterTL_CASHVALUATE: TcxGridDBBandedColumn;
    gvwMasterTL_STOCKVALUATE: TcxGridDBBandedColumn;
    gvwMasterACCPASSWORD: TcxGridDBBandedColumn;
    gvwMasterCPID: TcxGridDBBandedColumn;
    gvwMasterBUS_CAT: TcxGridDBBandedColumn;
    gvwMasterINIT_DEPOSIT_FUND: TcxGridDBBandedColumn;
    gvwMasterINIT_DEPOSIT_SHARES: TcxGridDBBandedColumn;
    gvwMasterALLOC_TYPE: TcxGridDBBandedColumn;
    gvwMasterTC_BASE: TcxGridDBBandedColumn;
    gvwMasterAUTO_ALLOC: TcxGridDBBandedColumn;
    gvwMasterDT_AUTOAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_MODE: TcxGridDBBandedColumn;
    gvwMasterNET_SETTLE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_TYPE: TcxGridDBBandedColumn;
    gvwMasterDIVIDEN_TAX: TcxGridDBBandedColumn;
    gvwMasterDORMANT: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterRISK: TcxGridDBBandedColumn;
    gvwMasterEXCELL_CLASS: TcxGridDBBandedColumn;
    gvwMasterSPRESID: TcxGridDBBandedColumn;
    gvwMasterMCALLDAY: TcxGridDBBandedColumn;
    gvwMasterAFFIL: TcxGridDBBandedColumn;
    gvwMasterTRANSFER_STATUS: TcxGridDBBandedColumn;
    gvwMasterSYNC: TcxGridDBBandedColumn;
    gvwMasterYNC: TcxGridDBBandedColumn;
    gvwMasterREFERRAL_ID_INT: TcxGridDBBandedColumn;
    gvwMasterREFERRAL_ID_EXT: TcxGridDBBandedColumn;
    gvwMasterCREATED_DATE: TcxGridDBBandedColumn;
    gvwMasterCHKDUEDAYEXP: TcxGridDBBandedColumn;
    gvwMasterDUEBUYSTOCK: TcxGridDBBandedColumn;
    gvwMasterDUESELLSTOCK: TcxGridDBBandedColumn;
    gvwMasterDUEBUYCASH: TcxGridDBBandedColumn;
    gvwMasterDUESELLCASH: TcxGridDBBandedColumn;
    gvwMasterSINVUSE: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTTDESC: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccSInvestList: TfrmAccSInvestList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;


procedure TfrmAccSInvestList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBusinessType.Close;
    cdsLuBusinessType.Open;

    cdsLuAccType.Close;
    cdsLuAccType.Open;
  end;

  cdsAccSInvestList.Close;
  cdsAccSInvestList.Open;
end;

Initialization
  RegisterClass(TfrmAccSInvestList);

end.
