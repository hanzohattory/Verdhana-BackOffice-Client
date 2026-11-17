unit FormAccountOmgeoList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, System.Actions,
  System.ImageList, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAccountOmgeoList = class(TfrmBrowseData)
    cdsAccOmgeoList: TNClientDataset;
    cdsAccountOmgeo: TNClientDataset;
    cdsAccOmgeoConfig: TNClientDataset;
    cdsAccOmgeoConfigACCID: TIntegerField;
    cdsAccOmgeoConfigTRANSID: TIntegerField;
    cdsAccOmgeoConfigCONFIGID: TIntegerField;
    cdsAccOmgeoConfigMODDA: TDateTimeField;
    cdsAccOmgeoConfigMODUI: TStringField;
    cdsAccOmgeoConfigAPPDA: TDateTimeField;
    cdsAccOmgeoConfigAPPUI: TStringField;
    cdsAccOmgeoConfigUNDER4Y: TIntegerField;
    cdsAccOmgeoConfigUNDER4YDA: TDateTimeField;
    cdsAccOmgeoConfigNOTES4Y: TStringField;
    cdsAccOmgeoConfigISDEL: TIntegerField;
    cdsAccOmgeoConfigID: TLargeintField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterBUSSTYPE: TcxGridDBBandedColumn;
    gvwMasterTC_MODEL: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterA_CLS_ORDER: TcxGridDBBandedColumn;
    gvwMasterAVGPRICEDEC: TcxGridDBBandedColumn;
    gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterOMGUSE: TcxGridDBBandedColumn;
    gvwMasterOMGEXREFFCODE: TcxGridDBBandedColumn;
    gvwMasterOMGALERT: TcxGridDBBandedColumn;
    gvwMasterOMGSENDSSI: TcxGridDBBandedColumn;
    gvwMasterOMGSENDFEEINBLOCK: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterKSEI_SID: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterENTTDESC: TcxGridDBBandedColumn;
    actSetOmgeoConfig: TNAction;
    SetOmgeoConfiguration1: TMenuItem;
    cdsAccOmgeoListACCID: TIntegerField;
    cdsAccOmgeoListENTTID: TIntegerField;
    cdsAccOmgeoListACCCODE: TStringField;
    cdsAccOmgeoListACCNAME: TStringField;
    cdsAccOmgeoListACCINIT: TStringField;
    cdsAccOmgeoListACCTYPE: TStringField;
    cdsAccOmgeoListACCSUBTYPE: TStringField;
    cdsAccOmgeoListBRANCHID: TLargeintField;
    cdsAccOmgeoListINVTYPE: TStringField;
    cdsAccOmgeoListBUSSTYPE: TLargeintField;
    cdsAccOmgeoListTC_MODEL: TStringField;
    cdsAccOmgeoListPRDCODE: TStringField;
    cdsAccOmgeoListA_CLS_ORDER: TStringField;
    cdsAccOmgeoListAVGPRICEDEC: TSmallintField;
    cdsAccOmgeoListOMNIBUSTRADE: TStringField;
    cdsAccOmgeoListCASHKEEP: TStringField;
    cdsAccOmgeoListSTOCKKEEP: TStringField;
    cdsAccOmgeoListISWAPU: TStringField;
    cdsAccOmgeoListISUSEWHT: TStringField;
    cdsAccOmgeoListISUSEOTC: TStringField;
    cdsAccOmgeoListISOWNCONTACT: TStringField;
    cdsAccOmgeoListISTRDACCOUNT: TStringField;
    cdsAccOmgeoListAUTO_SETTLE: TStringField;
    cdsAccOmgeoListSALESID: TLargeintField;
    cdsAccOmgeoListACC_STS: TStringField;
    cdsAccOmgeoListOMGUSE: TStringField;
    cdsAccOmgeoListOMGEXREFFCODE: TStringField;
    cdsAccOmgeoListOMGALERT: TStringField;
    cdsAccOmgeoListOMGSENDSSI: TStringField;
    cdsAccOmgeoListOMGSENDFEEINBLOCK: TStringField;
    cdsAccOmgeoListSI_SPLIT: TStringField;
    cdsAccOmgeoListALCID: TIntegerField;
    cdsAccOmgeoListTALCID: TIntegerField;
    cdsAccOmgeoListLASTTR_DATE: TDateTimeField;
    cdsAccOmgeoListTRF_PRVT_BANK: TStringField;
    cdsAccOmgeoListTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccOmgeoListCCCLS_ID: TLargeintField;
    cdsAccOmgeoListCC_TYPE: TStringField;
    cdsAccOmgeoListCR_VAL: TFloatField;
    cdsAccOmgeoListBUY_LIMIT: TFloatField;
    cdsAccOmgeoListSELL_LIMIT: TFloatField;
    cdsAccOmgeoListIS_IDX_TRX: TStringField;
    cdsAccOmgeoListTLCLASSID: TIntegerField;
    cdsAccOmgeoListDEFTRDPARAM: TStringField;
    cdsAccOmgeoListKSEI_SID: TStringField;
    cdsAccOmgeoListRATIO_MRGCALL: TFloatField;
    cdsAccOmgeoListRATIO_MRGWARING: TFloatField;
    cdsAccOmgeoListRATIO_FORCESELL: TFloatField;
    cdsAccOmgeoListFORCESELL_DAY: TIntegerField;
    cdsAccOmgeoListTL_CASHVALUATE: TFloatField;
    cdsAccOmgeoListTL_STOCKVALUATE: TFloatField;
    cdsAccOmgeoListACCPASSWORD: TStringField;
    cdsAccOmgeoListCPID: TIntegerField;
    cdsAccOmgeoListBUS_CAT: TLargeintField;
    cdsAccOmgeoListINIT_DEPOSIT_FUND: TFloatField;
    cdsAccOmgeoListINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccOmgeoListALLOC_TYPE: TStringField;
    cdsAccOmgeoListTC_BASE: TStringField;
    cdsAccOmgeoListAUTO_ALLOC: TStringField;
    cdsAccOmgeoListDT_AUTOAVGPRICE: TStringField;
    cdsAccOmgeoListSETTLE_MODE: TStringField;
    cdsAccOmgeoListNET_SETTLE: TStringField;
    cdsAccOmgeoListSETTLE_TYPE: TStringField;
    cdsAccOmgeoListDIVIDEN_TAX: TFloatField;
    cdsAccOmgeoListDORMANT: TStringField;
    cdsAccOmgeoListMODDA: TDateTimeField;
    cdsAccOmgeoListMODUI: TStringField;
    cdsAccOmgeoListAPPDA: TDateTimeField;
    cdsAccOmgeoListAPPUI: TStringField;
    cdsAccOmgeoListUNDER4Y: TIntegerField;
    cdsAccOmgeoListUNDER4YDA: TDateTimeField;
    cdsAccOmgeoListNOTES4Y: TStringField;
    cdsAccOmgeoListISDEL: TIntegerField;
    cdsAccOmgeoListID: TLargeintField;
    cdsAccOmgeoListRISK: TStringField;
    cdsAccOmgeoListEXCELL_CLASS: TIntegerField;
    cdsAccOmgeoListSPRESID: TLargeintField;
    cdsAccOmgeoListMCALLDAY: TIntegerField;
    cdsAccOmgeoListAFFIL: TBooleanField;
    cdsAccOmgeoListREFERRAL_ID_INT: TIntegerField;
    cdsAccOmgeoListREFERRAL_ID_EXT: TIntegerField;
    cdsAccOmgeoListENTTCODE: TStringField;
    cdsAccOmgeoListENTNAME: TStringField;
    cdsAccOmgeoListENTTDESC: TStringField;
    cdsAccountOmgeoACCID: TIntegerField;
    cdsAccountOmgeoENTTID: TIntegerField;
    cdsAccountOmgeoACCCODE: TStringField;
    cdsAccountOmgeoACCNAME: TStringField;
    cdsAccountOmgeoACCINIT: TStringField;
    cdsAccountOmgeoACCTYPE: TStringField;
    cdsAccountOmgeoACCSUBTYPE: TStringField;
    cdsAccountOmgeoBRANCHID: TLargeintField;
    cdsAccountOmgeoINVTYPE: TStringField;
    cdsAccountOmgeoBUSSTYPE: TLargeintField;
    cdsAccountOmgeoTC_MODEL: TStringField;
    cdsAccountOmgeoPRDCODE: TStringField;
    cdsAccountOmgeoA_CLS_ORDER: TStringField;
    cdsAccountOmgeoAVGPRICEDEC: TSmallintField;
    cdsAccountOmgeoOMNIBUSTRADE: TStringField;
    cdsAccountOmgeoCASHKEEP: TStringField;
    cdsAccountOmgeoSTOCKKEEP: TStringField;
    cdsAccountOmgeoISWAPU: TStringField;
    cdsAccountOmgeoISUSEWHT: TStringField;
    cdsAccountOmgeoISUSEOTC: TStringField;
    cdsAccountOmgeoISOWNCONTACT: TStringField;
    cdsAccountOmgeoISTRDACCOUNT: TStringField;
    cdsAccountOmgeoAUTO_SETTLE: TStringField;
    cdsAccountOmgeoSALESID: TLargeintField;
    cdsAccountOmgeoACC_STS: TStringField;
    cdsAccountOmgeoOMGUSE: TStringField;
    cdsAccountOmgeoOMGEXREFFCODE: TStringField;
    cdsAccountOmgeoOMGALERT: TStringField;
    cdsAccountOmgeoOMGSENDSSI: TStringField;
    cdsAccountOmgeoOMGSENDFEEINBLOCK: TStringField;
    cdsAccountOmgeoSI_SPLIT: TStringField;
    cdsAccountOmgeoALCID: TIntegerField;
    cdsAccountOmgeoTALCID: TIntegerField;
    cdsAccountOmgeoLASTTR_DATE: TDateTimeField;
    cdsAccountOmgeoTRF_PRVT_BANK: TStringField;
    cdsAccountOmgeoTRF_PRVT_BANK_TARGET: TIntegerField;
    cdsAccountOmgeoCCCLS_ID: TLargeintField;
    cdsAccountOmgeoCC_TYPE: TStringField;
    cdsAccountOmgeoCR_VAL: TFloatField;
    cdsAccountOmgeoBUY_LIMIT: TFloatField;
    cdsAccountOmgeoSELL_LIMIT: TFloatField;
    cdsAccountOmgeoIS_IDX_TRX: TStringField;
    cdsAccountOmgeoTLCLASSID: TIntegerField;
    cdsAccountOmgeoDEFTRDPARAM: TStringField;
    cdsAccountOmgeoKSEI_SID: TStringField;
    cdsAccountOmgeoRATIO_MRGCALL: TFloatField;
    cdsAccountOmgeoRATIO_MRGWARING: TFloatField;
    cdsAccountOmgeoRATIO_FORCESELL: TFloatField;
    cdsAccountOmgeoFORCESELL_DAY: TIntegerField;
    cdsAccountOmgeoTL_CASHVALUATE: TFloatField;
    cdsAccountOmgeoTL_STOCKVALUATE: TFloatField;
    cdsAccountOmgeoACCPASSWORD: TStringField;
    cdsAccountOmgeoCPID: TIntegerField;
    cdsAccountOmgeoBUS_CAT: TLargeintField;
    cdsAccountOmgeoINIT_DEPOSIT_FUND: TFloatField;
    cdsAccountOmgeoINIT_DEPOSIT_SHARES: TFloatField;
    cdsAccountOmgeoALLOC_TYPE: TStringField;
    cdsAccountOmgeoTC_BASE: TStringField;
    cdsAccountOmgeoAUTO_ALLOC: TStringField;
    cdsAccountOmgeoDT_AUTOAVGPRICE: TStringField;
    cdsAccountOmgeoSETTLE_MODE: TStringField;
    cdsAccountOmgeoNET_SETTLE: TStringField;
    cdsAccountOmgeoSETTLE_TYPE: TStringField;
    cdsAccountOmgeoDIVIDEN_TAX: TFloatField;
    cdsAccountOmgeoDORMANT: TStringField;
    cdsAccountOmgeoMODDA: TDateTimeField;
    cdsAccountOmgeoMODUI: TStringField;
    cdsAccountOmgeoAPPDA: TDateTimeField;
    cdsAccountOmgeoAPPUI: TStringField;
    cdsAccountOmgeoUNDER4Y: TIntegerField;
    cdsAccountOmgeoUNDER4YDA: TDateTimeField;
    cdsAccountOmgeoNOTES4Y: TStringField;
    cdsAccountOmgeoISDEL: TIntegerField;
    cdsAccountOmgeoID: TLargeintField;
    cdsAccountOmgeoRISK: TStringField;
    cdsAccountOmgeoEXCELL_CLASS: TIntegerField;
    cdsAccountOmgeoSPRESID: TLargeintField;
    cdsAccountOmgeoMCALLDAY: TIntegerField;
    cdsAccountOmgeoAFFIL: TBooleanField;
    cdsAccountOmgeoREFERRAL_ID_INT: TIntegerField;
    cdsAccountOmgeoREFERRAL_ID_EXT: TIntegerField;
    procedure actSetOmgeoConfigExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsAccOmgeoConfigNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountOmgeoList: TfrmAccountOmgeoList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccountList, FormAccOmgeoConfig;

procedure TfrmAccountOmgeoList.actSetOmgeoConfigExecute(Sender: TObject);
var
  oForm: TfrmAccOmgeoConfig;
begin
  inherited;
  cdsAccountOmgeo.Close;
  cdsAccountOmgeo.Params[0].AsInteger := cdsAccOmgeoListACCID.AsInteger;
  cdsAccountOmgeo.Open;

  if not cdsAccountOmgeo.IsEmpty then
  begin
    cdsAccOmgeoConfig.Close;
    cdsAccOmgeoConfig.Params[0].AsInteger := cdsAccOmgeoListACCID.AsInteger;
    cdsAccOmgeoConfig.Open;

    oForm := TfrmAccOmgeoConfig.Create(nil);
    Try
      if oForm.ShowModal = mrOK then
      begin
        if cdsAccOmgeoConfig.ChangeCount > 0 then
        begin
          cdsAccOmgeoConfig.ApplyUpdates(0);
        end;
      end;
    Finally
      FreeAndNil(oForm);
    End;
  end;
end;

procedure TfrmAccountOmgeoList.cdsAccOmgeoConfigNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccOmgeoConfigACCID.AsInteger := cdsAccOmgeoConfig.Params[0].AsInteger;
end;

procedure TfrmAccountOmgeoList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBussCat.Close;
    cdsLuBussCat.Open;

    cdsLuSales.Close;
    cdsLuSales.Open;

    cdsLuBranch.Close;
    cdsLuBranch.Open;

    cdsLuProduct.Close;
    cdsLuProduct.Open;

    cdsLuMTITrans.Close;
    cdsLuMTITrans.Open;

    cdsLuMTIConfig.Close;
    cdsLuMTIConfig.Open;
  end;

  cdsAccOmgeoList.Close;
  cdsAccOmgeoList.Open;
end;

Initialization
  RegisterClass(TfrmAccountOmgeoList);

end.
