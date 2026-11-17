unit FormBusTypes;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportRPC, NReportClient;

type
  TfrmBusTypes = class(TfrmBrowseData)
    cdsBusTypeList: TNClientDataset;
    cdsBusTypeListUpd: TNClientDataset;
    cdsBusTypeListBUSTYPEID: TLargeintField;
    cdsBusTypeListBUSTYPECODE: TStringField;
    cdsBusTypeListBUSTYPEDESC: TStringField;
    cdsBusTypeListMODDA: TDateTimeField;
    cdsBusTypeListMODUI: TStringField;
    cdsBusTypeListAPPDA: TDateTimeField;
    cdsBusTypeListAPPUI: TStringField;
    cdsBusTypeListUNDER4Y: TIntegerField;
    cdsBusTypeListUNDER4YDA: TDateTimeField;
    cdsBusTypeListNOTES4Y: TStringField;
    cdsBusTypeListISDEL: TIntegerField;
    cdsBusTypeListID: TLargeintField;
    cdsBusTypeListUpdBUSTYPEID: TLargeintField;
    cdsBusTypeListUpdBUSTYPECODE: TStringField;
    cdsBusTypeListUpdBUSTYPEDESC: TStringField;
    cdsBusTypeListUpdMODDA: TDateTimeField;
    cdsBusTypeListUpdMODUI: TStringField;
    cdsBusTypeListUpdAPPDA: TDateTimeField;
    cdsBusTypeListUpdAPPUI: TStringField;
    cdsBusTypeListUpdEDIT4YDA: TDateTimeField;
    cdsBusTypeListUpdEDIT4YUI: TStringField;
    cdsBusTypeListUpdUPDSTS: TStringField;
    cdsBusTypeListUpdFLOWSTS: TStringField;
    cdsBusTypeListUpdPROCESSNAME: TStringField;
    cdsBusTypeListUpdNOTES4Y: TStringField;
    cdsBusTypeListUpdNOTES4YAPP: TStringField;
    cdsBusTypeListUpdID: TLargeintField;
    cdsBusTypeListUpdUPDID: TLargeintField;
    cdsBusType: TNClientDataset;
    cdsBusTypeBUSTYPEID: TLargeintField;
    cdsBusTypeBUSTYPECODE: TStringField;
    cdsBusTypeBUSTYPEDESC: TStringField;
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
    cdsBusTypeUpd: TNClientDataset;
    cdsBusTypeUpdBUSTYPEID: TLargeintField;
    cdsBusTypeUpdBUSTYPECODE: TStringField;
    cdsBusTypeUpdBUSTYPEDESC: TStringField;
    cdsBusTypeUpdMODDA: TDateTimeField;
    cdsBusTypeUpdMODUI: TStringField;
    cdsBusTypeUpdAPPDA: TDateTimeField;
    cdsBusTypeUpdAPPUI: TStringField;
    cdsBusTypeUpdEDIT4YDA: TDateTimeField;
    cdsBusTypeUpdEDIT4YUI: TStringField;
    cdsBusTypeUpdUPDSTS: TStringField;
    cdsBusTypeUpdFLOWSTS: TStringField;
    cdsBusTypeUpdPROCESSNAME: TStringField;
    cdsBusTypeUpdNOTES4Y: TStringField;
    cdsBusTypeUpdNOTES4YAPP: TStringField;
    cdsBusTypeUpdID: TLargeintField;
    cdsBusTypeUpdUPDID: TLargeintField;
    cdsBusTypeUpdqryBusTypeCommUpd: TDataSetField;
    cdsBusTypeUpdqryBusTypeChargeUpd: TDataSetField;
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
    cdsBusTypeChargeUpd: TNClientDataset;
    cdsBusTypeChargeUpdBUSTYPEID: TLargeintField;
    cdsBusTypeChargeUpdMARKETCODE: TStringField;
    cdsBusTypeChargeUpdCHARGE_ID: TLargeintField;
    cdsBusTypeChargeUpdISUSED: TStringField;
    cdsBusTypeChargeUpdMODDA: TDateTimeField;
    cdsBusTypeChargeUpdMODUI: TStringField;
    cdsBusTypeChargeUpdAPPDA: TDateTimeField;
    cdsBusTypeChargeUpdAPPUI: TStringField;
    cdsBusTypeChargeUpdEDIT4YDA: TDateTimeField;
    cdsBusTypeChargeUpdEDIT4YUI: TStringField;
    cdsBusTypeChargeUpdUPDSTS: TStringField;
    cdsBusTypeChargeUpdFLOWSTS: TStringField;
    cdsBusTypeChargeUpdPROCESSNAME: TStringField;
    cdsBusTypeChargeUpdNOTES4Y: TStringField;
    cdsBusTypeChargeUpdNOTES4YAPP: TStringField;
    cdsBusTypeChargeUpdID: TLargeintField;
    cdsBusTypeChargeUpdUPDID: TLargeintField;
    cdsBusTypeComm: TNClientDataset;
    cdsBusTypeCommBUSTYPEID: TLargeintField;
    cdsBusTypeCommMARKETCODE: TStringField;
    cdsBusTypeCommCHANNELCODE: TStringField;
    cdsBusTypeCommCOMM_ID: TLargeintField;
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
    cdsBusTypeCommUpd: TNClientDataset;
    cdsBusTypeCommUpdBUSTYPEID: TLargeintField;
    cdsBusTypeCommUpdMARKETCODE: TStringField;
    cdsBusTypeCommUpdCHANNELCODE: TStringField;
    cdsBusTypeCommUpdCOMM_ID: TLargeintField;
    cdsBusTypeCommUpdCALC_METHOD: TStringField;
    cdsBusTypeCommUpdUSE_DAYTRADE: TStringField;
    cdsBusTypeCommUpdUSE_MINCOMM: TStringField;
    cdsBusTypeCommUpdWITH_SELLTAX: TStringField;
    cdsBusTypeCommUpdMODDA: TDateTimeField;
    cdsBusTypeCommUpdMODUI: TStringField;
    cdsBusTypeCommUpdAPPDA: TDateTimeField;
    cdsBusTypeCommUpdAPPUI: TStringField;
    cdsBusTypeCommUpdEDIT4YDA: TDateTimeField;
    cdsBusTypeCommUpdEDIT4YUI: TStringField;
    cdsBusTypeCommUpdUPDSTS: TStringField;
    cdsBusTypeCommUpdFLOWSTS: TStringField;
    cdsBusTypeCommUpdPROCESSNAME: TStringField;
    cdsBusTypeCommUpdNOTES4Y: TStringField;
    cdsBusTypeCommUpdNOTES4YAPP: TStringField;
    cdsBusTypeCommUpdID: TLargeintField;
    cdsBusTypeCommUpdUPDID: TLargeintField;
    gvwMasterBUSTYPECODE: TcxGridDBBandedColumn;
    gvwMasterBUSTYPEDESC: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwApprovalBUSTYPECODE: TcxGridDBBandedColumn;
    gvwApprovalBUSTYPEDESC: TcxGridDBBandedColumn;
    gvwApprovalEDIT4YDA: TcxGridDBBandedColumn;
    gvwApprovalEDIT4YUI: TcxGridDBBandedColumn;
    gvwApprovalUPDSTS: TcxGridDBBandedColumn;
    cdsBusTypeChargeDESCRIPTION: TStringField;
    cdsBusTypeChargeUpdDESCRIPTION: TStringField;
    cdsBusTypeCommDESCRIPTION: TStringField;
    cdsBusTypeCommUpdDESCRIPTION: TStringField;
    cdsBusTypeListALCLASSID: TIntegerField;
    cdsBusTypeListTLCLASSID: TIntegerField;
    cdsBusTypeListINTERESTCODE: TStringField;
    cdsBusTypeListUpdALCLASSID: TIntegerField;
    cdsBusTypeListUpdTLCLASSID: TIntegerField;
    cdsBusTypeListUpdINTERESTCODE: TStringField;
    cdsBusTypeALCLASSID: TIntegerField;
    cdsBusTypeTLCLASSID: TIntegerField;
    cdsBusTypeINTERESTCODE: TStringField;
    cdsBusTypeUpdALCLASSID: TIntegerField;
    cdsBusTypeUpdTLCLASSID: TIntegerField;
    cdsBusTypeUpdINTERESTCODE: TStringField;
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
    cdsBusTypeUpdTC_MODEL: TStringField;
    cdsBusTypeUpdPRDCODE: TStringField;
    cdsBusTypeUpdA_CLS_ORDER: TStringField;
    cdsBusTypeUpdAVGPRICEDEC: TSmallintField;
    cdsBusTypeUpdOMNIBUSTRADE: TStringField;
    cdsBusTypeUpdCASHKEEP: TStringField;
    cdsBusTypeUpdSTOCKKEEP: TStringField;
    cdsBusTypeUpdISWAPU: TStringField;
    cdsBusTypeUpdWAPUVALUE: TFloatField;
    cdsBusTypeUpdISAVGPRICE: TStringField;
    cdsBusTypeUpdISDEBETINTEREST: TStringField;
    cdsBusTypeUpdISCREDITINTEREST: TStringField;
    cdsBusTypeUpdISPENALTY: TStringField;
    cdsBusTypeUpdISUSEWHT: TStringField;
    cdsBusTypeUpdISUSEOTC: TStringField;
    cdsBusTypeUpdISOWNCONTACT: TStringField;
    cdsBusTypeUpdISTRDACCOUNT: TStringField;
    cdsBusTypeUpdIDX_CASHPAY_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_CASHPAY_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_CASHRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_CASHRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_CASHPAY_INSTR: TStringField;
    cdsBusTypeUpdIDX_CASHRCV_INSTR: TStringField;
    cdsBusTypeUpdCASHRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdCASHRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdCASHPAY_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdCASHPAY_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdCASHRCV_INSTR: TStringField;
    cdsBusTypeUpdCASHPAY_INSTR: TStringField;
    cdsBusTypeUpdIDX_STKDLV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_STKDLV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_STKRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_STKRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdCUST_STKDLV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdCUST_STKDLV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdCUST_STKRCV_SOURCE_LDGTYPE: TStringField;
    cdsBusTypeUpdCUST_STKRCV_TARGET_LDGTYPE: TStringField;
    cdsBusTypeUpdIDX_STKDLV_INSTR: TStringField;
    cdsBusTypeUpdIDX_STKRCV_INSTR: TStringField;
    cdsBusTypeUpdCUST_STKDLV_INSTR: TStringField;
    cdsBusTypeUpdCUST_STKRCV_INSTR: TStringField;
    cdsBusTypeCommNET_COMMID: TLargeintField;
    cdsBusTypeCommUpdNET_COMMID: TLargeintField;
    cdsBusTypeOMGUSE: TStringField;
    cdsBusTypeOMGEXREFFCODE: TStringField;
    cdsBusTypeOMGALERT: TStringField;
    cdsBusTypeOMGSENDSSI: TStringField;
    cdsBusTypeOMGSENDFEEINBLOCK: TStringField;
    cdsBusTypeUpdOMGUSE: TStringField;
    cdsBusTypeUpdOMGEXREFFCODE: TStringField;
    cdsBusTypeUpdOMGALERT: TStringField;
    cdsBusTypeUpdOMGSENDSSI: TStringField;
    cdsBusTypeUpdOMGSENDFEEINBLOCK: TStringField;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBusTypes: TfrmBusTypes;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormBusType;

procedure TfrmBusTypes.DataContainerGetEditorClass(var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmBusType;
end;

procedure TfrmBusTypes.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuChannel.Close;
    cdsLuChannel.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuCommission.Close;
    cdsLuCommission.Open;

    cdsLuCharge.Close;
    cdsLuCharge.Open;

    cdsLuAccLegClass.Close;
    cdsLuAccLegClass.Open;

    cdsLuActLedgerType.Close;
    cdsLuActLedgerType.Open;

    cdsLuTradingLimitClass.Close;
    cdsLuTradingLimitClass.Open;

    cdsLuInterest.Close;
    cdsLuInterest.Open;
  end;

  cdsBusTypeList.Close;
  cdsBusTypeList.Open;

  if DataContainer.Control4Eyes then
  begin
    cdsBusTypeListUpd.Close;
    cdsBusTypeListUpd.Open;
  end;
end;

Initialization
  RegisterClass(TfrmBusTypes);

end.
