unit FormDealTickets;

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
  cxGridCustomView, cxGrid, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, dxSkinsCore, NReportRPC, Vcl.ExtCtrls, cxImageComboBox,
  cxLabel, cxBarEditItem, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, NReportClient;

type
  TfrmDealTickets = class(TfrmBrowseData)
    cdsDealTicketList: TNClientDataset;
    cdsDealTicketListDEALTICKETID: TLargeintField;
    cdsDealTicketListDEALTICKETCODE: TStringField;
    cdsDealTicketListACCNO: TStringField;
    cdsDealTicketListACCNAME: TStringField;
    cdsDealTicketListSTOCKID: TLargeintField;
    cdsDealTicketListSTOCKCODE: TStringField;
    cdsDealTicketListSTOCKNAME: TStringField;
    cdsDealTicketListBS: TStringField;
    cdsDealTicketListMARKETCODE: TStringField;
    cdsDealTicketListCCYCODE: TStringField;
    cdsDealTicketListCHANNELCODE: TStringField;
    cdsDealTicketListOMNIBUSTRADE: TStringField;
    cdsDealTicketListDEALQTY: TLargeintField;
    cdsDealTicketListDEALPRICE: TFloatField;
    cdsDealTicketListDEALVALUE: TFloatField;
    cdsDealTicketListALLOCQTY: TLargeintField;
    cdsDealTicketListDUESTOCK: TIntegerField;
    cdsDealTicketListDUECASH: TIntegerField;
    cdsDealTicketListPOSTED: TStringField;
    cdsDealTicketListMODDA: TDateTimeField;
    cdsDealTicketListMODUI: TStringField;
    cdsDealTicketListAPPDA: TDateTimeField;
    cdsDealTicketListAPPUI: TStringField;
    cdsDealTicketListISDEL: TIntegerField;
    cdsDealTicketListID: TLargeintField;
    cdsDealTicket: TNClientDataset;
    cdsDealTicketDEALTICKETID: TLargeintField;
    cdsDealTicketDEALTICKETCODE: TStringField;
    cdsDealTicketACCNO: TStringField;
    cdsDealTicketACCNAME: TStringField;
    cdsDealTicketSTOCKID: TLargeintField;
    cdsDealTicketSTOCKCODE: TStringField;
    cdsDealTicketSTOCKNAME: TStringField;
    cdsDealTicketBS: TStringField;
    cdsDealTicketMARKETCODE: TStringField;
    cdsDealTicketCCYCODE: TStringField;
    cdsDealTicketCHANNELCODE: TStringField;
    cdsDealTicketOMNIBUSTRADE: TStringField;
    cdsDealTicketDEALQTY: TLargeintField;
    cdsDealTicketDEALPRICE: TFloatField;
    cdsDealTicketDEALVALUE: TFloatField;
    cdsDealTicketALLOCQTY: TLargeintField;
    cdsDealTicketDUESTOCK: TIntegerField;
    cdsDealTicketDUECASH: TIntegerField;
    cdsDealTicketPOSTED: TStringField;
    cdsDealTicketMODDA: TDateTimeField;
    cdsDealTicketMODUI: TStringField;
    cdsDealTicketAPPDA: TDateTimeField;
    cdsDealTicketAPPUI: TStringField;
    cdsDealTicketISDEL: TIntegerField;
    cdsDealTicketID: TLargeintField;
    cdsDealTicketqryDealTicketExec: TDataSetField;
    cdsDealTicketExec: TNClientDataset;
    cdsDealTicketExecDEALTICKETID: TLargeintField;
    cdsDealTicketExecSEQID: TIntegerField;
    cdsDealTicketExecBOARDID: TLargeintField;
    cdsDealTicketExecBROKERCODE: TStringField;
    cdsDealTicketExecEXQTY: TLargeintField;
    cdsDealTicketExecEXPRICE: TFloatField;
    cdsDealTicketExecEXVALUE: TFloatField;
    cdsDealTicketExecEXTIME: TTimeField;
    cdsDealTicketExecTRDID: TStringField;
    cdsDealTicketExecMODDA: TDateTimeField;
    cdsDealTicketExecMODUI: TStringField;
    cdsDealTicketExecAPPDA: TDateTimeField;
    cdsDealTicketExecAPPUI: TStringField;
    cdsDealTicketExecISDEL: TIntegerField;
    cdsDealTicketExecID: TLargeintField;
    gvwMasterDEALTICKETCODE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterCHANNELCODE: TcxGridDBBandedColumn;
    gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwMasterDEALQTY: TcxGridDBBandedColumn;
    gvwMasterDEALPRICE: TcxGridDBBandedColumn;
    gvwMasterDEALVALUE: TcxGridDBBandedColumn;
    gvwMasterALLOCQTY: TcxGridDBBandedColumn;
    gvwMasterDUESTOCK: TcxGridDBBandedColumn;
    gvwMasterDUECASH: TcxGridDBBandedColumn;
    cdsDealTicketqryDealTicketAlloc: TDataSetField;
    cdsDealTicketAlloc: TNClientDataset;
    cdsDealTicketAllocDEALTICKETID: TLargeintField;
    cdsDealTicketAllocSEQID: TIntegerField;
    cdsDealTicketAllocACCNO: TStringField;
    cdsDealTicketAllocACCNAME: TStringField;
    cdsDealTicketAllocAQTY: TLargeintField;
    cdsDealTicketAllocAPRICE: TFloatField;
    cdsDealTicketAllocAVALUE: TFloatField;
    cdsDealTicketAllocMODDA: TDateTimeField;
    cdsDealTicketAllocMODUI: TStringField;
    cdsDealTicketAllocAPPDA: TDateTimeField;
    cdsDealTicketAllocAPPUI: TStringField;
    cdsDealTicketAllocISDEL: TIntegerField;
    cdsDealTicketAllocID: TLargeintField;
    cdsDealTicketSALESID: TLargeintField;
    cdsDealTicketDEALERID: TLargeintField;
    cdsDealTicketListSALESID: TLargeintField;
    cdsDealTicketListDEALERID: TLargeintField;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterDEALERID: TcxGridDBBandedColumn;
    cdsDealTicketListACCID: TIntegerField;
    cdsDealTicketListDAYTRADE: TStringField;
    cdsDealTicketListCONID: TLargeintField;
    cdsDealTicketACCID: TIntegerField;
    cdsDealTicketDAYTRADE: TStringField;
    cdsDealTicketCONID: TLargeintField;
    cdsDealTicketAllocACCID: TIntegerField;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDateStart: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    actViewListData: TNAction;
    cdsDealTicketListDEALTICKETDATE: TDateField;
    cdsDealTicketDEALTICKETDATE: TDateField;
    actPostingAll: TNAction;
    cdsDealTicketExecCPACCID: TIntegerField;
    cdsDealTicketExecDUECASH: TDateTimeField;
    cdsDealTicketExecDUESTOCK: TDateTimeField;
    cdsDealTicketExecCPTYPE: TStringField;
    cdsDealTicketListSTAT: TStringField;
    cdsDealTicketListCDUEDATE: TDateField;
    cdsDealTicketListSDUEDATE: TDateField;
    cdsDealTicketListSTATUS: TStringField;
    cdsDealTicketListOLD_DEALTICKETID: TLargeintField;
    cdsDealTicketSTAT: TStringField;
    cdsDealTicketCDUEDATE: TDateField;
    cdsDealTicketSDUEDATE: TDateField;
    cdsDealTicketSTATUS: TStringField;
    cdsDealTicketOLD_DEALTICKETID: TLargeintField;
    actMerge: TNAction;
    actSplit: TNAction;
    Merge1: TMenuItem;
    cdsDealTicketTemp: TNClientDataset;
    cdsDealTicketExecTemp: TNClientDataset;
    cdsDealTicketAllocTemp: TNClientDataset;
    cdsDealTicketTempDEALTICKETID: TLargeintField;
    cdsDealTicketTempDEALTICKETCODE: TStringField;
    cdsDealTicketTempDEALTICKETDATE: TDateField;
    cdsDealTicketTempACCNO: TStringField;
    cdsDealTicketTempACCNAME: TStringField;
    cdsDealTicketTempSTOCKID: TLargeintField;
    cdsDealTicketTempSTOCKCODE: TStringField;
    cdsDealTicketTempSTOCKNAME: TStringField;
    cdsDealTicketTempBS: TStringField;
    cdsDealTicketTempMARKETCODE: TStringField;
    cdsDealTicketTempCCYCODE: TStringField;
    cdsDealTicketTempCHANNELCODE: TStringField;
    cdsDealTicketTempOMNIBUSTRADE: TStringField;
    cdsDealTicketTempDEALQTY: TLargeintField;
    cdsDealTicketTempDEALPRICE: TFloatField;
    cdsDealTicketTempDEALVALUE: TFloatField;
    cdsDealTicketTempALLOCQTY: TLargeintField;
    cdsDealTicketTempSALESID: TLargeintField;
    cdsDealTicketTempDEALERID: TLargeintField;
    cdsDealTicketTempDUESTOCK: TIntegerField;
    cdsDealTicketTempDUECASH: TIntegerField;
    cdsDealTicketTempPOSTED: TStringField;
    cdsDealTicketTempMODDA: TDateTimeField;
    cdsDealTicketTempMODUI: TStringField;
    cdsDealTicketTempAPPDA: TDateTimeField;
    cdsDealTicketTempAPPUI: TStringField;
    cdsDealTicketTempISDEL: TIntegerField;
    cdsDealTicketTempID: TLargeintField;
    cdsDealTicketTempACCID: TIntegerField;
    cdsDealTicketTempDAYTRADE: TStringField;
    cdsDealTicketTempCONID: TLargeintField;
    cdsDealTicketTempSTAT: TStringField;
    cdsDealTicketTempCDUEDATE: TDateField;
    cdsDealTicketTempSDUEDATE: TDateField;
    cdsDealTicketTempSTATUS: TStringField;
    cdsDealTicketTempOLD_DEALTICKETID: TLargeintField;
    cdsDealTicketExecTempDEALTICKETID: TLargeintField;
    cdsDealTicketExecTempSEQID: TIntegerField;
    cdsDealTicketExecTempBOARDID: TLargeintField;
    cdsDealTicketExecTempBROKERCODE: TStringField;
    cdsDealTicketExecTempEXQTY: TLargeintField;
    cdsDealTicketExecTempEXPRICE: TFloatField;
    cdsDealTicketExecTempEXVALUE: TFloatField;
    cdsDealTicketExecTempEXTIME: TTimeField;
    cdsDealTicketExecTempTRDID: TStringField;
    cdsDealTicketExecTempMODDA: TDateTimeField;
    cdsDealTicketExecTempMODUI: TStringField;
    cdsDealTicketExecTempAPPDA: TDateTimeField;
    cdsDealTicketExecTempAPPUI: TStringField;
    cdsDealTicketExecTempISDEL: TIntegerField;
    cdsDealTicketExecTempID: TLargeintField;
    cdsDealTicketExecTempCPACCID: TIntegerField;
    cdsDealTicketExecTempDUECASH: TDateTimeField;
    cdsDealTicketExecTempDUESTOCK: TDateTimeField;
    cdsDealTicketExecTempCPTYPE: TStringField;
    cdsDealTicketAllocTempDEALTICKETID: TLargeintField;
    cdsDealTicketAllocTempSEQID: TIntegerField;
    cdsDealTicketAllocTempACCNO: TStringField;
    cdsDealTicketAllocTempACCNAME: TStringField;
    cdsDealTicketAllocTempAQTY: TLargeintField;
    cdsDealTicketAllocTempAPRICE: TFloatField;
    cdsDealTicketAllocTempAVALUE: TFloatField;
    cdsDealTicketAllocTempMODDA: TDateTimeField;
    cdsDealTicketAllocTempMODUI: TStringField;
    cdsDealTicketAllocTempAPPDA: TDateTimeField;
    cdsDealTicketAllocTempAPPUI: TStringField;
    cdsDealTicketAllocTempISDEL: TIntegerField;
    cdsDealTicketAllocTempID: TLargeintField;
    cdsDealTicketAllocTempACCID: TIntegerField;
    Split1: TMenuItem;
    cdsSplitDetail: TNClientDataset;
    cdsSplitDetailSPLITQTY: TLargeintField;
    cdsDealTicketExecTempSPLITQTY: TLargeintField;
    actFacilitation: TNAction;
    MakeFacilitationTrade1: TMenuItem;
    actWarehouse: TNAction;
    MakeWarehouseTrade1: TMenuItem;
    cdsFacilitationTrade: TNClientDataset;
    cdsWarehouseTrade: TNClientDataset;
    cdsFacilitationTradeFACILITATIONID: TLargeintField;
    cdsFacilitationTradeFACILITATIONCODE: TStringField;
    cdsFacilitationTradeFACILITATIONDESC: TStringField;
    cdsFacilitationTradeDEALTICKETID: TLargeintField;
    cdsFacilitationTradeSEQID: TIntegerField;
    cdsFacilitationTradeDEALTICKETDATE: TDateField;
    cdsFacilitationTradeACCID: TIntegerField;
    cdsFacilitationTradeACCNO: TStringField;
    cdsFacilitationTradeACCNAME: TStringField;
    cdsFacilitationTradeSTOCKID: TLargeintField;
    cdsFacilitationTradeSTOCKCODE: TStringField;
    cdsFacilitationTradeSTOCKNAME: TStringField;
    cdsFacilitationTradeBS: TStringField;
    cdsFacilitationTradeMARKETCODE: TStringField;
    cdsFacilitationTradeCCYCODE: TStringField;
    cdsFacilitationTradeQTY: TLargeintField;
    cdsFacilitationTradePRICE: TFloatField;
    cdsFacilitationTradeVALUE: TFloatField;
    cdsFacilitationTradeCDUEDATE: TDateField;
    cdsFacilitationTradeSDUEDATE: TDateField;
    cdsFacilitationTradeLISTED_DATE: TDateField;
    cdsFacilitationTradeBOOKED_DATE: TDateField;
    cdsFacilitationTradeSTATUS: TStringField;
    cdsFacilitationTradeMODDA: TDateTimeField;
    cdsFacilitationTradeMODUI: TStringField;
    cdsFacilitationTradeAPPDA: TDateTimeField;
    cdsFacilitationTradeAPPUI: TStringField;
    cdsFacilitationTradeISDEL: TIntegerField;
    cdsFacilitationTradeID: TLargeintField;
    cdsWarehouseTradeWAREHOUSEID: TLargeintField;
    cdsWarehouseTradeWAREHOUSECODE: TStringField;
    cdsWarehouseTradeWAREHOUSEDESC: TStringField;
    cdsWarehouseTradeDEALTICKETID: TLargeintField;
    cdsWarehouseTradeDEALTICKETDATE: TDateField;
    cdsWarehouseTradeACCID: TIntegerField;
    cdsWarehouseTradeACCNO: TStringField;
    cdsWarehouseTradeACCNAME: TStringField;
    cdsWarehouseTradeSTOCKID: TLargeintField;
    cdsWarehouseTradeSTOCKCODE: TStringField;
    cdsWarehouseTradeSTOCKNAME: TStringField;
    cdsWarehouseTradeBS: TStringField;
    cdsWarehouseTradeMARKETCODE: TStringField;
    cdsWarehouseTradeCCYCODE: TStringField;
    cdsWarehouseTradeQTY: TLargeintField;
    cdsWarehouseTradePRICE: TFloatField;
    cdsWarehouseTradeVALUE: TFloatField;
    cdsWarehouseTradeCDUEDATE: TDateField;
    cdsWarehouseTradeSDUEDATE: TDateField;
    cdsWarehouseTradeLISTED_DATE: TDateField;
    cdsWarehouseTradeBOOKED_DATE: TDateField;
    cdsWarehouseTradeSTATUS: TStringField;
    cdsWarehouseTradeMODDA: TDateTimeField;
    cdsWarehouseTradeMODUI: TStringField;
    cdsWarehouseTradeAPPDA: TDateTimeField;
    cdsWarehouseTradeAPPUI: TStringField;
    cdsWarehouseTradeISDEL: TIntegerField;
    cdsWarehouseTradeID: TLargeintField;
    actCrossTom: TNAction;
    MakeCrossingTomorrowTrade1: TMenuItem;
    N5: TMenuItem;
    cdsCrossTomChooseList: TNClientDataset;
    cdsCrossTomChooseListDEALTICKETID: TLargeintField;
    cdsCrossTomChooseListDEALTICKETCODE: TStringField;
    cdsCrossTomChooseListACCNO: TStringField;
    cdsCrossTomChooseListACCNAME: TStringField;
    cdsCrossTomChooseListSTOCKCODE: TStringField;
    cdsCrossTomChooseListSTOCKNAME: TStringField;
    cdsCrossTomChooseListMARKETCODE: TStringField;
    cdsCrossTomChooseListCCYCODE: TStringField;
    cdsCrossTomChooseListDEALQTY: TLargeintField;
    cdsCrossTomChooseListDEALPRICE: TFloatField;
    cdsCrossTomChooseListDEALVALUE: TFloatField;
    cdsCrossTomTrade: TNClientDataset;
    cdsCrossTomTradeCROSSTOMID: TLargeintField;
    cdsCrossTomTradeCROSSTOMCODE: TStringField;
    cdsCrossTomTradeCROSSTOMDESC: TStringField;
    cdsCrossTomTradeDEALTICKETID_BUY: TLargeintField;
    cdsCrossTomTradeSEQID_BUY: TIntegerField;
    cdsCrossTomTradeDEALTICKETID_SELL: TLargeintField;
    cdsCrossTomTradeSEQID_SELL: TIntegerField;
    cdsCrossTomTradeDEALTICKETDATE: TDateField;
    cdsCrossTomTradeACCID_BUY: TIntegerField;
    cdsCrossTomTradeACCNO_BUY: TStringField;
    cdsCrossTomTradeACCNAME_BUY: TStringField;
    cdsCrossTomTradeACCID_SELL: TIntegerField;
    cdsCrossTomTradeACCNO_SELL: TStringField;
    cdsCrossTomTradeACCNAME_SELL: TStringField;
    cdsCrossTomTradeSTOCKID: TLargeintField;
    cdsCrossTomTradeSTOCKCODE: TStringField;
    cdsCrossTomTradeSTOCKNAME: TStringField;
    cdsCrossTomTradeMARKETCODE: TStringField;
    cdsCrossTomTradeCCYCODE: TStringField;
    cdsCrossTomTradeQTY: TLargeintField;
    cdsCrossTomTradePRICE: TFloatField;
    cdsCrossTomTradeVALUE: TFloatField;
    cdsCrossTomTradeCDUEDATE: TDateField;
    cdsCrossTomTradeSDUEDATE: TDateField;
    cdsCrossTomTradeLISTED_DATE: TDateField;
    cdsCrossTomTradeBOOKED_DATE: TDateField;
    cdsCrossTomTradeSTATUS: TStringField;
    cdsCrossTomTradeMODDA: TDateTimeField;
    cdsCrossTomTradeMODUI: TStringField;
    cdsCrossTomTradeAPPDA: TDateTimeField;
    cdsCrossTomTradeAPPUI: TStringField;
    cdsCrossTomTradeISDEL: TIntegerField;
    cdsCrossTomTradeID: TLargeintField;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    Shape2: TShape;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    Shape1: TShape;
    Shape3: TShape;
    dxLayoutControl1Item4: TdxLayoutItem;
    Shape4: TShape;
    dxLayoutControl1Item5: TdxLayoutItem;
    actCloseDealTicket: TNAction;
    CloseDealTicket1: TMenuItem;
    cdsDealTicketListDCCYAMT: TFloatField;
    cdsDealTicketListCNNO: TStringField;
    cdsDealTicketListCXLD: TStringField;
    cdsDealTicketListRVSD: TStringField;
    cdsDealTicketListRVSD_DTID: TIntegerField;
    cdsDealTicketListRVSDDATE: TDateTimeField;
    cdsDealTicketListEXTERNALID: TStringField;
    cdsDealTicketListSALES_BRANCHID: TLargeintField;
    cdsDealTicketListENTTID: TIntegerField;
    cdsDealTicketListENTTCODE: TStringField;
    cdsDealTicketListENTNAME: TStringField;
    dtTransDateEnd: TcxDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    chkFilterByEntity: TcxCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    luEntity: TcxLookupComboBox;
    lcEntity: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    actCancelDealTicket: TNAction;
    CancelDealTicket1: TMenuItem;
    cdsBookedOutWarehouseTrade: TNClientDataset;
    cdsBookedOutWarehouseTradeWAREHOUSEID: TLargeintField;
    cdsBookedOutWarehouseTradeWAREHOUSECODE: TStringField;
    cdsBookedOutWarehouseTradeWAREHOUSEDESC: TStringField;
    cdsBookedOutWarehouseTradeDEALTICKETID: TLargeintField;
    cdsBookedOutWarehouseTradeDEALTICKETDATE: TDateField;
    cdsBookedOutWarehouseTradeACCID: TIntegerField;
    cdsBookedOutWarehouseTradeACCNO: TStringField;
    cdsBookedOutWarehouseTradeACCNAME: TStringField;
    cdsBookedOutWarehouseTradeSTOCKID: TLargeintField;
    cdsBookedOutWarehouseTradeSTOCKCODE: TStringField;
    cdsBookedOutWarehouseTradeSTOCKNAME: TStringField;
    cdsBookedOutWarehouseTradeBS: TStringField;
    cdsBookedOutWarehouseTradeMARKETCODE: TStringField;
    cdsBookedOutWarehouseTradeCCYCODE: TStringField;
    cdsBookedOutWarehouseTradeQTY: TLargeintField;
    cdsBookedOutWarehouseTradePRICE: TFloatField;
    cdsBookedOutWarehouseTradeVALUE: TFloatField;
    cdsBookedOutWarehouseTradeCDUEDATE: TDateField;
    cdsBookedOutWarehouseTradeSDUEDATE: TDateField;
    cdsBookedOutWarehouseTradeLISTED_DATE: TDateField;
    cdsBookedOutWarehouseTradeBOOKED_DATE: TDateField;
    cdsBookedOutWarehouseTradeBOOKED_DEALTICKETID: TLargeintField;
    cdsBookedOutWarehouseTradeBOOKED_DEALTICKETSEQID: TIntegerField;
    cdsBookedOutWarehouseTradeSTATUS: TStringField;
    cdsBookedOutWarehouseTradeMODDA: TDateTimeField;
    cdsBookedOutWarehouseTradeMODUI: TStringField;
    cdsBookedOutWarehouseTradeAPPDA: TDateTimeField;
    cdsBookedOutWarehouseTradeAPPUI: TStringField;
    cdsBookedOutWarehouseTradeISDEL: TIntegerField;
    cdsBookedOutWarehouseTradeID: TLargeintField;
    actBookOutWarehouse: TNAction;
    BookOutWarehouse1: TMenuItem;
    cdsWarehouseTradeByDealTicket: TNClientDataset;
    cdsWarehouseTradeByDealTicketWAREHOUSEID: TLargeintField;
    cdsWarehouseTradeByDealTicketWAREHOUSECODE: TStringField;
    cdsWarehouseTradeByDealTicketWAREHOUSEDESC: TStringField;
    cdsWarehouseTradeByDealTicketDEALTICKETID: TLargeintField;
    cdsWarehouseTradeByDealTicketDEALTICKETDATE: TDateField;
    cdsWarehouseTradeByDealTicketACCID: TIntegerField;
    cdsWarehouseTradeByDealTicketACCNO: TStringField;
    cdsWarehouseTradeByDealTicketACCNAME: TStringField;
    cdsWarehouseTradeByDealTicketSTOCKID: TLargeintField;
    cdsWarehouseTradeByDealTicketSTOCKCODE: TStringField;
    cdsWarehouseTradeByDealTicketSTOCKNAME: TStringField;
    cdsWarehouseTradeByDealTicketBS: TStringField;
    cdsWarehouseTradeByDealTicketMARKETCODE: TStringField;
    cdsWarehouseTradeByDealTicketCCYCODE: TStringField;
    cdsWarehouseTradeByDealTicketQTY: TLargeintField;
    cdsWarehouseTradeByDealTicketPRICE: TFloatField;
    cdsWarehouseTradeByDealTicketVALUE: TFloatField;
    cdsWarehouseTradeByDealTicketCDUEDATE: TDateField;
    cdsWarehouseTradeByDealTicketSDUEDATE: TDateField;
    cdsWarehouseTradeByDealTicketLISTED_DATE: TDateField;
    cdsWarehouseTradeByDealTicketBOOKED_DATE: TDateField;
    cdsWarehouseTradeByDealTicketBOOKED_DEALTICKETID: TLargeintField;
    cdsWarehouseTradeByDealTicketBOOKED_DEALTICKETSEQID: TIntegerField;
    cdsWarehouseTradeByDealTicketSTATUS: TStringField;
    cdsWarehouseTradeByDealTicketMODDA: TDateTimeField;
    cdsWarehouseTradeByDealTicketMODUI: TStringField;
    cdsWarehouseTradeByDealTicketAPPDA: TDateTimeField;
    cdsWarehouseTradeByDealTicketAPPUI: TStringField;
    cdsWarehouseTradeByDealTicketISDEL: TIntegerField;
    cdsWarehouseTradeByDealTicketID: TLargeintField;
    cdsSplitDetailSPLITPRICE: TFloatField;
    cdsDealTicketListALLOCSTAT: TStringField;
    gvwMasterALLOCSTAT: TcxGridDBBandedColumn;
    cdsDealTicketListAUTO_ALLOC: TStringField;
    cdsDealTicketListTC_BASE: TStringField;
    gvwMasterAUTO_ALLOC: TcxGridDBBandedColumn;
    cdsSplitDetailAlloc: TNClientDataset;
    cdsSplitDetailAllocDEALTICKETID: TLargeintField;
    cdsSplitDetailAllocSEQID: TIntegerField;
    cdsSplitDetailAllocACCNO: TStringField;
    cdsSplitDetailAllocACCNAME: TStringField;
    cdsSplitDetailAllocAQTY: TLargeintField;
    cdsSplitDetailAllocAPRICE: TFloatField;
    cdsSplitDetailAllocAVALUE: TFloatField;
    cdsSplitDetailAllocMODDA: TDateTimeField;
    cdsSplitDetailAllocMODUI: TStringField;
    cdsSplitDetailAllocAPPDA: TDateTimeField;
    cdsSplitDetailAllocAPPUI: TStringField;
    cdsSplitDetailAllocISDEL: TIntegerField;
    cdsSplitDetailAllocID: TLargeintField;
    cdsSplitDetailAllocACCID: TIntegerField;
    actSplitAlloc: TNAction;
    SplitAllocation1: TMenuItem;
    cdsDealTicketCALC_METHOD: TStringField;
    cdsDealTicketCOMM_RATE: TFloatField;
    cdsDealTicketTempCALC_METHOD: TStringField;
    cdsDealTicketTempCOMM_RATE: TFloatField;
    cdsDealTicketAllocList: TNClientDataset;
    cdsDealTicketAllocListDEALTICKETID: TLargeintField;
    cdsDealTicketAllocListSEQID: TIntegerField;
    cdsDealTicketAllocListACCID: TIntegerField;
    cdsDealTicketAllocListACCNO: TStringField;
    cdsDealTicketAllocListACCNAME: TStringField;
    cdsDealTicketAllocListAQTY: TLargeintField;
    cdsDealTicketAllocListAPRICE: TFloatField;
    cdsDealTicketAllocListCCY: TStringField;
    cdsDealTicketAllocListAVALUE: TFloatField;
    cdsDealTicketAllocListRVSD: TStringField;
    cdsDealTicketAllocListRVSD_DTID: TLargeintField;
    cdsDealTicketAllocListCOR_DTID: TLargeintField;
    cdsDealTicketAllocListRVSDDATE: TDateField;
    cdsDealTicketAllocListCONID: TLargeintField;
    cdsDealTicketAllocListMODDA: TDateTimeField;
    cdsDealTicketAllocListMODUI: TStringField;
    cdsDealTicketAllocListAPPDA: TDateTimeField;
    cdsDealTicketAllocListAPPUI: TStringField;
    cdsDealTicketAllocListISDEL: TIntegerField;
    cdsDealTicketAllocListID: TLargeintField;
    dsDealTicketAllocList: TDataSource;
    grdMasterLevel2: TcxGridLevel;
    gvwMasterAlloc: TcxGridDBBandedTableView;
    gvwMasterAllocDEALTICKETID: TcxGridDBBandedColumn;
    gvwMasterAllocSEQID: TcxGridDBBandedColumn;
    gvwMasterAllocACCID: TcxGridDBBandedColumn;
    gvwMasterAllocACCNO: TcxGridDBBandedColumn;
    gvwMasterAllocACCNAME: TcxGridDBBandedColumn;
    gvwMasterAllocAQTY: TcxGridDBBandedColumn;
    gvwMasterAllocAPRICE: TcxGridDBBandedColumn;
    gvwMasterAllocCCY: TcxGridDBBandedColumn;
    gvwMasterAllocAVALUE: TcxGridDBBandedColumn;
    gvwMasterAllocRVSD: TcxGridDBBandedColumn;
    gvwMasterAllocRVSD_DTID: TcxGridDBBandedColumn;
    gvwMasterAllocCOR_DTID: TcxGridDBBandedColumn;
    gvwMasterAllocRVSDDATE: TcxGridDBBandedColumn;
    gvwMasterAllocCONID: TcxGridDBBandedColumn;
    gvwMasterAllocMODDA: TcxGridDBBandedColumn;
    gvwMasterAllocMODUI: TcxGridDBBandedColumn;
    gvwMasterAllocAPPDA: TcxGridDBBandedColumn;
    gvwMasterAllocAPPUI: TcxGridDBBandedColumn;
    gvwMasterAllocISDEL: TcxGridDBBandedColumn;
    gvwMasterAllocID: TcxGridDBBandedColumn;
    cdsSplitDetailAllocDUESTOCK: TIntegerField;
    cdsSplitDetailAllocDUECASH: TIntegerField;
    cdsCrossTomChooseListACCID: TIntegerField;
    cdsDealTicketROUNDPRICE: TFloatField;
    cdsDealTicketROUNDVALUE: TFloatField;
    cdsDealTicketDIFFVALUE: TFloatField;
    cdsDealTicketTempROUNDPRICE: TFloatField;
    cdsDealTicketTempROUNDVALUE: TFloatField;
    cdsDealTicketTempDIFFVALUE: TFloatField;
    cdsSplitDetailACCNO: TStringField;
    cdsSplitDetailACCNAME: TStringField;
    cdsSplitDetailACCID: TIntegerField;
    cdsDealTicketListCALC_METHOD: TStringField;
    cdsDealTicketListCOMM_RATE: TFloatField;
    cdsDealTicketListSETTLE_CCYCODE: TStringField;
    cdsDealTicketListROUNDPRICE: TFloatField;
    cdsDealTicketListROUNDVALUE: TFloatField;
    cdsDealTicketListDIFFVALUE: TFloatField;
    cdsDealTicketListRVS: TStringField;
    cdsDealTicketListRVS_STS: TStringField;
    gvwMasterROUNDPRICE: TcxGridDBBandedColumn;
    gvwMasterROUNDVALUE: TcxGridDBBandedColumn;
    gvwMasterDIFFVALUE: TcxGridDBBandedColumn;
    actCreateCrossTom: TNAction;
    CreateNewCrossingTomorrowTrade1: TMenuItem;
    cdsCrossTom: TNClientDataset;
    cdsCrossTomSTOCKID: TLargeintField;
    cdsCrossTomSTOCKCODE: TStringField;
    cdsCrossTomSTOCKNAME: TStringField;
    cdsCrossTomMARKETCODE: TStringField;
    cdsCrossTomCCYCODE: TStringField;
    cdsCrossTomCHANNELCODE: TStringField;
    cdsCrossTomDEALQTY: TLargeintField;
    cdsCrossTomDEALPRICE: TFloatField;
    cdsCrossTomDEALVALUE: TFloatField;
    cdsCrossTomBUYACCID: TIntegerField;
    cdsCrossTomBUYACCNO: TStringField;
    cdsCrossTomBUYACCNAME: TStringField;
    cdsCrossTomSELLACCID: TIntegerField;
    cdsCrossTomSELLACCNO: TStringField;
    cdsCrossTomSELLACCNAME: TStringField;
    cdsCrossTomDEALTICKETDATE: TDateField;
    cdsCrossTomDUESTOCK: TIntegerField;
    cdsCrossTomDUECASH: TIntegerField;
    actCreateNegoTom: TNAction;
    cdsNegoTom: TNClientDataset;
    cdsNegoTomDEALTICKETDATE: TDateField;
    cdsNegoTomACCNO: TStringField;
    cdsNegoTomACCNAME: TStringField;
    cdsNegoTomSTOCKID: TLargeintField;
    cdsNegoTomSTOCKCODE: TStringField;
    cdsNegoTomSTOCKNAME: TStringField;
    cdsNegoTomBS: TStringField;
    cdsNegoTomMARKETCODE: TStringField;
    cdsNegoTomCCYCODE: TStringField;
    cdsNegoTomCHANNELCODE: TStringField;
    cdsNegoTomOMNIBUSTRADE: TStringField;
    cdsNegoTomDEALQTY: TLargeintField;
    cdsNegoTomDEALPRICE: TFloatField;
    cdsNegoTomDEALVALUE: TFloatField;
    cdsNegoTomSALESID: TLargeintField;
    cdsNegoTomDEALERID: TLargeintField;
    cdsNegoTomDUESTOCK: TIntegerField;
    cdsNegoTomDUECASH: TIntegerField;
    cdsNegoTomACCID: TIntegerField;
    cdsNegoTomCALC_METHOD: TStringField;
    cdsNegoTomCOMM_RATE: TFloatField;
    CreateNewNegoTomorrow1: TMenuItem;
    cdsDealTicketAllocADIFFVALUE: TFloatField;
    cdsDealTicketListACCINIT: TStringField;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    cdsDealTicketListACCSOPID: TLargeintField;
    actCloseAllDealTicket: TNAction;
    actAllocDealTicket: TNAction;
    cdsDealTicketAllocTmp: TNClientDataset;
    cdsDealTicketAllocTmpACCNO: TStringField;
    cdsDealTicketAllocTmpACCNAME: TStringField;
    cdsDealTicketAllocTmpAQTY: TLargeintField;
    cdsDealTicketAllocTmpAPRICE: TFloatField;
    cdsDealTicketAllocTmpAVALUE: TFloatField;
    cdsDealTicketAllocTmpACCID: TIntegerField;
    cdsDealTicketAllocTmpADIFFVALUE: TFloatField;
    cdsDealTicketAllocTmpCHKSELECTED: TStringField;
    actMergeNew: TNAction;
    cdsMergeDealTicket: TNClientDataset;
    cdsMergeDealTicketACCID: TIntegerField;
    cdsMergeDealTicketSTOCKID: TLargeintField;
    cdsMergeDealTicketBS: TStringField;
    cdsMergeDealTicketMARKETCODE: TStringField;
    cdsMergeDealTicketCHANNELCODE: TStringField;
    cdsMergeDealTicketQTY: TLargeintField;
    cdsMergeDealTicketPRICE: TFloatField;
    cdsMergeDealTicketVALUE: TFloatField;
    cdsMergeDealTicketACCCODE: TStringField;
    cdsMergeDealTicketACCNAME: TStringField;
    cdsMergeDealTicketSTOCKCODE: TStringField;
    cdsMergeDealTicketSTOCKNAME: TStringField;
    actCancelMerge: TNAction;
    CancelMerge1: TMenuItem;
    cdsDealTicketListSOP_MEMBER: TStringField;
    gvwMasterSOP_MEMBER: TcxGridDBBandedColumn;
    cdsUpdateAutoAlloc: TNClientDataset;
    actUpdateAutoAlloc: TNAction;
    gvwMasterACCID: TcxGridDBBandedColumn;
    AllocationDealTicket1: TMenuItem;
    cdsDealTicketAllocEXT_REF: TStringField;
    cdsCrossTomBUYCALC_METHOD: TStringField;
    cdsCrossTomBUYCOMM_RATE: TFloatField;
    cdsCrossTomSELLCALC_METHOD: TStringField;
    cdsCrossTomSELLCOMM_RATE: TFloatField;
    gvwMasterDEALTICKETID: TcxGridDBBandedColumn;    
	actChangeCommission: TNAction;
    ChangeCommission1: TMenuItem;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterDAYTRADE: TcxGridDBBandedColumn;
    gvwMasterCONID: TcxGridDBBandedColumn;
    gvwMasterCDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSDUEDATE: TcxGridDBBandedColumn;
    gvwMasterOLD_DEALTICKETID: TcxGridDBBandedColumn;
    gvwMasterDCCYAMT: TcxGridDBBandedColumn;
    gvwMasterCNNO: TcxGridDBBandedColumn;
    gvwMasterCXLD: TcxGridDBBandedColumn;
    gvwMasterRVSD: TcxGridDBBandedColumn;
    gvwMasterRVSD_DTID: TcxGridDBBandedColumn;
    gvwMasterRVSDDATE: TcxGridDBBandedColumn;
    gvwMasterEXTERNALID: TcxGridDBBandedColumn;
    gvwMasterSALES_BRANCHID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterTC_BASE: TcxGridDBBandedColumn;
    gvwMasterCALC_METHOD: TcxGridDBBandedColumn;
    gvwMasterCOMM_RATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterRVS: TcxGridDBBandedColumn;
    gvwMasterRVS_STS: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    cdsDealTicketACCSOPID: TLargeintField;
    cdsDealTicketAUTO_ALLOC: TStringField;
    cdsDealTicketSETTLE_CCYCODE: TStringField;
    cdsDealTicketDCCYAMT: TFloatField;
    cdsDealTicketCNNO: TStringField;
    cdsDealTicketCXLD: TStringField;
    cdsDealTicketRVSD: TStringField;
    cdsDealTicketRVSD_DTID: TIntegerField;
    cdsDealTicketRVSDDATE: TDateTimeField;
    cdsDealTicketRVS: TStringField;
    cdsDealTicketRVS_STS: TStringField;
    cdsDealTicketEXTERNALID: TStringField;
    cdsDealTicketSALES_BRANCHID: TLargeintField;
    cdsDealTicketISOMG: TStringField;
    cdsDealTicketTempACCSOPID: TLargeintField;
    cdsDealTicketTempAUTO_ALLOC: TStringField;
    cdsDealTicketTempSETTLE_CCYCODE: TStringField;
    cdsDealTicketTempDCCYAMT: TFloatField;
    cdsDealTicketTempCNNO: TStringField;
    cdsDealTicketTempCXLD: TStringField;
    cdsDealTicketTempRVSD: TStringField;
    cdsDealTicketTempRVSD_DTID: TIntegerField;
    cdsDealTicketTempRVSDDATE: TDateTimeField;
    cdsDealTicketTempRVS: TStringField;
    cdsDealTicketTempRVS_STS: TStringField;
    cdsDealTicketTempEXTERNALID: TStringField;
    cdsDealTicketTempSALES_BRANCHID: TLargeintField;
    cdsDealTicketTempISOMG: TStringField;
    actSplitExec: TNAction;
    SplitExecution1: TMenuItem;
    cdsSplitExecDeal: TNClientDataset;
    cdsSplitExecDealDEALTICKETID: TLargeintField;
    cdsSplitExecDealDEALTICKETCODE: TStringField;
    cdsSplitExecDealDEALTICKETDATE: TDateField;
    cdsSplitExecDealACCNO: TStringField;
    cdsSplitExecDealACCNAME: TStringField;
    cdsSplitExecDealSTOCKID: TLargeintField;
    cdsSplitExecDealSTOCKCODE: TStringField;
    cdsSplitExecDealSTOCKNAME: TStringField;
    cdsSplitExecDealBS: TStringField;
    cdsSplitExecDealMARKETCODE: TStringField;
    cdsSplitExecDealCCYCODE: TStringField;
    cdsSplitExecDealCHANNELCODE: TStringField;
    cdsSplitExecDealOMNIBUSTRADE: TStringField;
    cdsSplitExecDealDEALQTY: TLargeintField;
    cdsSplitExecDealDEALPRICE: TFloatField;
    cdsSplitExecDealDEALVALUE: TFloatField;
    cdsSplitExecDealALLOCQTY: TLargeintField;
    cdsSplitExecDealSALESID: TLargeintField;
    cdsSplitExecDealDEALERID: TLargeintField;
    cdsSplitExecDealDUESTOCK: TIntegerField;
    cdsSplitExecDealDUECASH: TIntegerField;
    cdsSplitExecDealPOSTED: TStringField;
    cdsSplitExecDealMODDA: TDateTimeField;
    cdsSplitExecDealMODUI: TStringField;
    cdsSplitExecDealAPPDA: TDateTimeField;
    cdsSplitExecDealAPPUI: TStringField;
    cdsSplitExecDealISDEL: TIntegerField;
    cdsSplitExecDealID: TLargeintField;
    cdsSplitExecDealACCID: TIntegerField;
    cdsSplitExecDealDAYTRADE: TStringField;
    cdsSplitExecDealCONID: TLargeintField;
    cdsSplitExecDealSTAT: TStringField;
    cdsSplitExecDealCDUEDATE: TDateField;
    cdsSplitExecDealSDUEDATE: TDateField;
    cdsSplitExecDealSTATUS: TStringField;
    cdsSplitExecDealOLD_DEALTICKETID: TLargeintField;
    cdsSplitExecDealCALC_METHOD: TStringField;
    cdsSplitExecDealCOMM_RATE: TFloatField;
    cdsSplitExecDealROUNDPRICE: TFloatField;
    cdsSplitExecDealROUNDVALUE: TFloatField;
    cdsSplitExecDealDIFFVALUE: TFloatField;
    cdsSplitExecDealACCSOPID: TLargeintField;
    cdsSplitExecDealAUTO_ALLOC: TStringField;
    cdsSplitExecDealSETTLE_CCYCODE: TStringField;
    cdsSplitExecDealDCCYAMT: TFloatField;
    cdsSplitExecDealCNNO: TStringField;
    cdsSplitExecDealCXLD: TStringField;
    cdsSplitExecDealRVSD: TStringField;
    cdsSplitExecDealRVSD_DTID: TIntegerField;
    cdsSplitExecDealRVSDDATE: TDateTimeField;
    cdsSplitExecDealRVS: TStringField;
    cdsSplitExecDealRVS_STS: TStringField;
    cdsSplitExecDealEXTERNALID: TStringField;
    cdsSplitExecDealSALES_BRANCHID: TLargeintField;
    cdsSplitExecDealISOMG: TStringField;
    cdsSplitExec: TNClientDataset;
    cdsSplitExecDEALTICKETID: TLargeintField;
    cdsSplitExecSEQID: TIntegerField;
    cdsSplitExecBOARDID: TLargeintField;
    cdsSplitExecBROKERCODE: TStringField;
    cdsSplitExecEXQTY: TLargeintField;
    cdsSplitExecEXPRICE: TFloatField;
    cdsSplitExecEXVALUE: TFloatField;
    cdsSplitExecEXTIME: TTimeField;
    cdsSplitExecTRDID: TStringField;
    cdsSplitExecMODDA: TDateTimeField;
    cdsSplitExecMODUI: TStringField;
    cdsSplitExecAPPDA: TDateTimeField;
    cdsSplitExecAPPUI: TStringField;
    cdsSplitExecISDEL: TIntegerField;
    cdsSplitExecID: TLargeintField;
    cdsSplitExecCPACCID: TIntegerField;
    cdsSplitExecDUECASH: TDateTimeField;
    cdsSplitExecDUESTOCK: TDateTimeField;
    cdsSplitExecCPTYPE: TStringField;
    cdsDealTicketAllocACCSOPID: TLargeintField;
    cdsDealTicketAllocCCY: TStringField;
    cdsDealTicketAllocCALC_METHOD: TStringField;
    cdsDealTicketAllocCOMM_RATE: TFloatField;
    cdsDealTicketAllocTempADIFFVALUE: TFloatField;
    cdsDealTicketAllocTempEXT_REF: TStringField;
    cdsDealTicketAllocTempACCSOPID: TLargeintField;
    cdsDealTicketAllocTempCCY: TStringField;
    cdsDealTicketAllocTempCALC_METHOD: TStringField;
    cdsDealTicketAllocTempCOMM_RATE: TFloatField;
    cdsDealTicketX: TNClientDataset;
    cdsDealTicketExecX: TNClientDataset;
    cdsDealTicketXDEALTICKETID: TLargeintField;
    cdsDealTicketXDEALTICKETCODE: TStringField;
    cdsDealTicketXDEALTICKETDATE: TDateField;
    cdsDealTicketXACCID: TIntegerField;
    cdsDealTicketXACCNO: TStringField;
    cdsDealTicketXACCNAME: TStringField;
    cdsDealTicketXSTOCKID: TLargeintField;
    cdsDealTicketXSTOCKCODE: TStringField;
    cdsDealTicketXSTOCKNAME: TStringField;
    cdsDealTicketXACCSOPID: TLargeintField;
    cdsDealTicketXAUTO_ALLOC: TStringField;
    cdsDealTicketXCALC_METHOD: TStringField;
    cdsDealTicketXCOMM_RATE: TFloatField;
    cdsDealTicketXBS: TStringField;
    cdsDealTicketXMARKETCODE: TStringField;
    cdsDealTicketXCCYCODE: TStringField;
    cdsDealTicketXSETTLE_CCYCODE: TStringField;
    cdsDealTicketXCHANNELCODE: TStringField;
    cdsDealTicketXOMNIBUSTRADE: TStringField;
    cdsDealTicketXDEALQTY: TLargeintField;
    cdsDealTicketXDEALPRICE: TFloatField;
    cdsDealTicketXDEALVALUE: TFloatField;
    cdsDealTicketXALLOCQTY: TLargeintField;
    cdsDealTicketXROUNDPRICE: TFloatField;
    cdsDealTicketXROUNDVALUE: TFloatField;
    cdsDealTicketXDIFFVALUE: TFloatField;
    cdsDealTicketXDCCYAMT: TFloatField;
    cdsDealTicketXSALESID: TLargeintField;
    cdsDealTicketXDEALERID: TLargeintField;
    cdsDealTicketXDUESTOCK: TIntegerField;
    cdsDealTicketXDUECASH: TIntegerField;
    cdsDealTicketXPOSTED: TStringField;
    cdsDealTicketXDAYTRADE: TStringField;
    cdsDealTicketXCONID: TLargeintField;
    cdsDealTicketXCNNO: TStringField;
    cdsDealTicketXCXLD: TStringField;
    cdsDealTicketXRVSD: TStringField;
    cdsDealTicketXRVSD_DTID: TIntegerField;
    cdsDealTicketXRVSDDATE: TDateTimeField;
    cdsDealTicketXRVS: TStringField;
    cdsDealTicketXRVS_STS: TStringField;
    cdsDealTicketXCDUEDATE: TDateField;
    cdsDealTicketXSDUEDATE: TDateField;
    cdsDealTicketXSTATUS: TStringField;
    cdsDealTicketXOLD_DEALTICKETID: TLargeintField;
    cdsDealTicketXEXTERNALID: TStringField;
    cdsDealTicketXSALES_BRANCHID: TLargeintField;
    cdsDealTicketXSTAT: TStringField;
    cdsDealTicketXMODDA: TDateTimeField;
    cdsDealTicketXMODUI: TStringField;
    cdsDealTicketXAPPDA: TDateTimeField;
    cdsDealTicketXAPPUI: TStringField;
    cdsDealTicketXISDEL: TIntegerField;
    cdsDealTicketXID: TLargeintField;
    cdsDealTicketXISOMG: TStringField;
    cdsDealTicketXqryDealTicketAlloc: TDataSetField;
    cdsDealTicketXqryDealTicketExec: TDataSetField;
    cdsDealTicketExecXDEALTICKETID: TLargeintField;
    cdsDealTicketExecXSEQID: TIntegerField;
    cdsDealTicketExecXBOARDID: TLargeintField;
    cdsDealTicketExecXBROKERCODE: TStringField;
    cdsDealTicketExecXEXQTY: TLargeintField;
    cdsDealTicketExecXEXPRICE: TFloatField;
    cdsDealTicketExecXEXVALUE: TFloatField;
    cdsDealTicketExecXEXTIME: TTimeField;
    cdsDealTicketExecXDUECASH: TDateTimeField;
    cdsDealTicketExecXDUESTOCK: TDateTimeField;
    cdsDealTicketExecXTRDID: TStringField;
    cdsDealTicketExecXMODDA: TDateTimeField;
    cdsDealTicketExecXMODUI: TStringField;
    cdsDealTicketExecXAPPDA: TDateTimeField;
    cdsDealTicketExecXAPPUI: TStringField;
    cdsDealTicketExecXISDEL: TIntegerField;
    cdsDealTicketExecXID: TLargeintField;
    cdsDealTicketExecXCPACCID: TIntegerField;
    cdsDealTicketExecXSTAT: TStringField;
    cdsDealTicketExecXCPTYPE: TStringField;
    cdsPermanentAlloc: TNClientDataset;
    actSetAllocToOneAccount: TNAction;
    SetAllocationintoOneAccount1: TMenuItem;
    cdsSplitExecDealISAVGPRICE: TStringField;
    cdsDealTicketAllocX: TNClientDataset;
    cdsDealTicketAllocXDEALTICKETID: TLargeintField;
    cdsDealTicketAllocXSEQID: TIntegerField;
    cdsDealTicketAllocXACCID: TIntegerField;
    cdsDealTicketAllocXACCNO: TStringField;
    cdsDealTicketAllocXACCNAME: TStringField;
    cdsDealTicketAllocXACCSOPID: TLargeintField;
    cdsDealTicketAllocXAQTY: TLargeintField;
    cdsDealTicketAllocXAPRICE: TFloatField;
    cdsDealTicketAllocXCCY: TStringField;
    cdsDealTicketAllocXAVALUE: TFloatField;
    cdsDealTicketAllocXMODDA: TDateTimeField;
    cdsDealTicketAllocXMODUI: TStringField;
    cdsDealTicketAllocXAPPDA: TDateTimeField;
    cdsDealTicketAllocXAPPUI: TStringField;
    cdsDealTicketAllocXISDEL: TIntegerField;
    cdsDealTicketAllocXID: TLargeintField;
    cdsDealTicketAllocXADIFFVALUE: TFloatField;
    cdsDealTicketAllocXEXT_REF: TStringField;
    cdsDealTicketAllocXCALC_METHOD: TStringField;
    cdsDealTicketAllocXCOMM_RATE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsDealTicketSTOCKIDChange(Sender: TField);
    procedure cdsDealTicketExecEXQTYChange(Sender: TField);
    procedure cdsDealTicketExecBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketMARKETCODEChange(Sender: TField);
    procedure cdsDealTicketExecBeforeDelete(DataSet: TDataSet);
    procedure cdsDealTicketACCIDChange(Sender: TField);
    procedure actViewListDataExecute(Sender: TObject);
    procedure actPostingAllExecute(Sender: TObject);
    procedure cdsDealTicketExecBOARDIDChange(Sender: TField);
    procedure cdsDealTicketExecBROKERCODEChange(Sender: TField);
    procedure actMergeExecute(Sender: TObject);
    procedure DataContainerAfterCreateEditorForm(AForm: TForm);
    procedure DataContainerCommitTransaction(Sender: TNMasterDetailData);
    procedure DataContainerRollbackTransaction(Sender: TNMasterDetailData);
    procedure DataContainerAfterInsert(Sender: TNMasterDetailData);
    procedure DataContainerAfterEdit(Sender: TNMasterDetailData);
    procedure actSplitExecute(Sender: TObject);
    procedure actFacilitationExecute(Sender: TObject);
    procedure DataContainerBeforeEdit(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure actWarehouseExecute(Sender: TObject);
    procedure actCrossTomExecute(Sender: TObject);
    procedure DataContainerStartTransaction(Sender: TNMasterDetailData);
    procedure cdsDealTicketAllocACCIDChange(Sender: TField);
    procedure cdsDealTicketAllocAQTYChange(Sender: TField);
    procedure cdsDealTicketAfterOpen(DataSet: TDataSet);
    procedure gvwMasterCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actSplitUpdate(Sender: TObject);
    procedure DataContainerBeforePost(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure cdsDealTicketExecBeforeEdit(DataSet: TDataSet);
    procedure cdsDealTicketAllocBeforeDelete(DataSet: TDataSet);
    procedure cdsDealTicketAllocBeforeEdit(DataSet: TDataSet);
    procedure cdsDealTicketAllocBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketDEALPRICEChange(Sender: TField);
    procedure cdsDealTicketNewRecord(DataSet: TDataSet);
    procedure actCloseDealTicketExecute(Sender: TObject);
    procedure chkFilterByEntityClick(Sender: TObject);
    procedure actCancelDealTicketExecute(Sender: TObject);
    procedure DataContainerAfterOpenEditorDataset(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure actBookOutWarehouseExecute(Sender: TObject);
    procedure cdsSplitDetailNewRecord(DataSet: TDataSet);
    procedure cdsSplitDetailBeforePost(DataSet: TDataSet);
    procedure cdsSplitDetailBeforeDelete(DataSet: TDataSet);
    procedure cdsSplitDetailBeforeEdit(DataSet: TDataSet);
    procedure cdsDealTicketListCalcFields(DataSet: TDataSet);
    procedure actSplitAllocExecute(Sender: TObject);
    procedure cdsSplitDetailAllocAPRICEChange(Sender: TField);
    procedure cdsDealTicketCHANNELCODEChange(Sender: TField);
    procedure cdsDealTicketAllocNewRecord(DataSet: TDataSet);
    procedure DataContainerAfterDestroyEditorForm(Sender: TNMasterDetailData);
    procedure cdsCrossTomDEALQTYChange(Sender: TField);
    procedure cdsCrossTomSTOCKIDChange(Sender: TField);
    procedure cdsCrossTomNewRecord(DataSet: TDataSet);
    procedure actCreateCrossTomExecute(Sender: TObject);
    procedure cdsNegoTomACCIDChange(Sender: TField);
    procedure cdsNegoTomSTOCKIDChange(Sender: TField);
    procedure cdsNegoTomNewRecord(DataSet: TDataSet);
    procedure actCreateNegoTomExecute(Sender: TObject);
    procedure cdsNegoTomDEALQTYChange(Sender: TField);
    procedure cdsSplitDetailAllocNewRecord(DataSet: TDataSet);
    procedure actAllocDealTicketExecute(Sender: TObject);
    procedure actMergeNewExecute(Sender: TObject);
    procedure actCancelMergeUpdate(Sender: TObject);
    procedure actCancelMergeExecute(Sender: TObject);
    procedure actUpdateAutoAllocExecute(Sender: TObject);
    procedure cdsCrossTomBUYACCIDChange(Sender: TField);
    procedure cdsCrossTomSELLACCIDChange(Sender: TField);
    procedure cdsDealTicketROUNDPRICEChange(Sender: TField);
    procedure actSplitExecExecute(Sender: TObject);
    procedure cdsDealTicketExecXBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketExecXBeforeEdit(DataSet: TDataSet);
    procedure cdsDealTicketExecXBeforeDelete(DataSet: TDataSet);
    procedure cdsDealTicketExecXBOARDIDChange(Sender: TField);
    procedure cdsDealTicketExecXEXQTYChange(Sender: TField);
    procedure cdsDealTicketExecXBROKERCODEChange(Sender: TField);
    procedure cdsDealTicketXBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketXNewRecord(DataSet: TDataSet);
    procedure cdsDealTicketXSTOCKIDChange(Sender: TField);
    procedure cdsDealTicketXACCIDChange(Sender: TField);
    procedure cdsDealTicketXDEALPRICEChange(Sender: TField);
    procedure actChangeCommissionExecute(Sender: TObject);
    procedure actUpdateAutoAllocUpdate(Sender: TObject);
    procedure actSetAllocToOneAccountExecute(Sender: TObject);
    procedure cdsDealTicketDUECASHChange(Sender: TField);
    procedure cdsDealTicketDUESTOCKChange(Sender: TField);
    procedure cdsDealTicketAllocXACCIDChange(Sender: TField);
    procedure cdsDealTicketAllocXAQTYChange(Sender: TField);
    procedure cdsDealTicketAllocXBeforePost(DataSet: TDataSet);
    procedure cdsDealTicketAllocXBeforeEdit(DataSet: TDataSet);
    procedure cdsDealTicketAllocXBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FMergeCondition: Boolean;
    FSplitCondition: Boolean;
    FFacilitationCondition: Boolean;
    FWarehouseCondition: Boolean;
    FCrossTomCondition: Boolean;
    FBookOutWarehouseCondition: Boolean;
    FFacilitationQty: Int64;
    FFacilitationPrice: Double;
    FCrossTomDealTicketID: Int64;
    FCrossTomQty: Int64;
    FCrossTomPrice: Double;
    FCrossTomSeqID: Integer;

    FOldQty: Int64;
    FOldValue: Double;
    FOldAllocQty: Int64;
    FOldQtyX: Int64;
    FOldValueX: Double;
    FOldAllocQtyX: Int64;

    FSplitQtyRest: Int64;
    FOldSplitQty: Int64;
  public
    { Public declarations }
  end;

var
  frmDealTickets: TfrmDealTickets;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTicket, DataLookup, FormSplitDealTicket,
  FormFacilitationDealTicket, FormCrossTomChoose, FormCrossTomDealTicket,
  FormSplitAllocDealTicket, FormCrossTom, FormNegoTom,
  FormDealTicketAllocation, FormDealTicketMerge, FormSplitExecDealTicket, FormChangeCommission,
  FormChangeCalcCommission, FormSetAllocToOneAccount;

procedure TfrmDealTickets.actAllocDealTicketExecute(Sender: TObject);
var
  oForm : TfrmDealTicketAllocation;
begin
  inherited;
  oForm := TfrmDealTicketAllocation.Create(nil);

  cdsDealTicketAllocTmp.Close;
  cdsDealTicketAllocTmp.CreateDataSet;

  cdsDealTicket.Close;
  cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
  cdsDealTicket.Open;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAllocAccount.Close;
    cdsLuAllocAccount.Params[0].AsString := cdsDealTicketMARKETCODE.AsString;
    cdsLuAllocAccount.Params[1].AsString := cdsDealTicketCHANNELCODE.AsString;
    cdsLuAllocAccount.Params[2].AsString := cdsDealTicketCCYCODE.AsString;
    cdsLuAllocAccount.Params[3].AsInteger := cdsDealTicketACCID.AsInteger;
    cdsLuAllocAccount.Open;

    cdsLuAllocAccount.First;
    while not cdsLuAccount.Eof do
    begin
      cdsDealTicketAllocTmp.Append;
      cdsDealTicketAllocTmpACCID.AsString   := cdsLuAllocAccountACCID.AsString;
      cdsDealTicketAllocTmpACCNO.AsString   := cdsLuAllocAccountACCCODE.AsString;
      cdsDealTicketAllocTmpACCNAME.AsString := cdsLuAllocAccountACCNAME.AsString;
      cdsDealTicketAllocTmp.Post;

      cdsLuAllocAccount.Next;
    end;
  end;

  TfrmDealTicketAllocation(oForm).txtAccount.EditValue := '[ '+cdsDealTicketACCNO.AsString+' ] - '+ cdsDealTicketACCNAME.AsString;
  TfrmDealTicketAllocation(oForm).txtStock.EditValue   := '[ '+cdsDealTicketSTOCKCODE.AsString+' ] - '+ cdsDealTicketSTOCKNAME.AsString;
  if cdsDealTicketBS.AsString = 'B' then TfrmDealTicketAllocation(oForm).txtBuySell.EditValue := 'Buy' else
  if cdsDealTicketBS.AsString = 'S' then TfrmDealTicketAllocation(oForm).txtBuySell.EditValue := 'Sell';

  if oForm.ShowModal = mrOk then
    ShowMessage('OK');
  oForm.Free;
end;

procedure TfrmDealTickets.actBookOutWarehouseExecute(Sender: TObject);
begin
  inherited;
  cdsBookedOutWarehouseTrade.Close;
  cdsBookedOutWarehouseTrade.Params[0].AsInteger := cdsDealTicketListENTTID.AsInteger;
  cdsBookedOutWarehouseTrade.Params[1].AsDate := cdsDealTicketListDEALTICKETDATE.AsDateTime;
  cdsBookedOutWarehouseTrade.Params[2].AsInteger := cdsDealTicketListSTOCKID.AsInteger;
  cdsBookedOutWarehouseTrade.Params[3].AsString := cdsDealTicketListBS.AsString;
  cdsBookedOutWarehouseTrade.Open;

  if not cdsBookedOutWarehouseTrade.IsEmpty then
  begin
    FBookOutWarehouseCondition := True;
    DataContainer.Edit;
  end
  else
  begin
    ShowMessage('This Account don''t have outstanding warehouse trade.');
  end;
end;

procedure TfrmDealTickets.actCancelDealTicketExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sMessage: String;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to cancel multiple Deal Ticket?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (cdsDealTicketListSTAT.IsNull) or (cdsDealTicketListSTAT.AsString = 'O') then
          dmGlobal.RemoteServer.CancelDealTicket(cdsDealTicketListDEALTICKETID.AsLargeInt);
      end;

      actViewListData.Execute;
      ShowMessage('Finished Cancel Multiple Deal Tickets.');
    end;
  end
  else
  begin
    if MessageDlg('Are you sure to cancel deal ticket ' +
      QuotedStr(cdsDealTicketListDEALTICKETCODE.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      sMessage := dmGlobal.RemoteServer.CancelDealTicket(cdsDealTicketListDEALTICKETID.AsLargeInt);
      actViewListData.Execute;
      ShowMessage(sMessage);
    end;
  end;
end;

procedure TfrmDealTickets.actCancelMergeExecute(Sender: TObject);
var
  sMsg: String;
begin
  inherited;
  if MessageDlg('Are you sure to cancel merged Deal Ticket?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    sMsg := dmGlobal.RemoteServer.CancelMergeDealTicket(cdsDealTicketListDEALTICKETID.AsLargeInt);
    ShowMessage(sMsg);
  end;
end;

procedure TfrmDealTickets.actCancelMergeUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := (cdsDealTicketListSTAT.AsString = 'O')
      and (cdsDealTicketListSTATUS.AsString = 'M');
  end;
end;

procedure TfrmDealTickets.actChangeCommissionExecute(Sender: TObject);
var
  CommRate: string;
  i, iAccID, RecIdx: Integer;
  sCalcComm: string;
  dCommission: Double;
begin
  inherited;
  for i := 0 to gvwMaster.Controller.SelectedRowCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    if (i = 0) then iAccID := cdsDealTicketListACCID.AsInteger;

    if (cdsDealTicketListSTAT.AsString <> 'O') and (cdsDealTicketListACCID.AsInteger <> iAccID) then
    begin
      ShowMessage('You can''t change commission except open data and same account.' + #13 +
        'Please check again the data you want to change!');
      Exit;
    end;
  end;

  CommRate := frmChangeCalcCommission.ChangeCommission(gvwMaster.Controller.SelectedRows[0].Values[gvwMasterCALC_METHOD.Index], StrToFloatDef(gvwMaster.Controller.SelectedRows[0].Values[gvwMasterCOMM_RATE.Index], 0));
  sCalcComm   := dmGlobal.GetStringDelimiter(CommRate, '|');
  dCommission := StrToFloatDef(CommRate, 0);

  for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsDealTicket.Close;
    cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
    cdsDealTicket.Open;

    if not cdsDealTicket.IsEmpty then
    begin
      cdsDealTicket.Edit;
      cdsDealTicketCALC_METHOD.AsString := sCalcComm;
      cdsDealTicketCOMM_RATE.AsFloat    := dCommission;
      cdsDealTicket.Post;
      cdsDealTicket.ApplyUpdates(-1);
    end;
  end;
end;

procedure TfrmDealTickets.actCloseDealTicketExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sMessage: String;
begin
  inherited;
  //History Changed
  //Request By Irvan 20151102
  //Protect Deal Ticket With No Auto Allocation Can't close if Alloc Qty <> Deal Qty

  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to close multiple Deal Ticket?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      sMessage := '';

      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (cdsDealTicketListAUTO_ALLOC.AsString = '1') or (cdsDealTicketListDEALQTY.AsLargeInt = cdsDealTicketListALLOCQTY.AsLargeInt) then
        begin
          if (cdsDealTicketListSTAT.IsNull) or (cdsDealTicketListSTAT.AsString = 'O') then
            sMessage := sMessage + QuotedStr(cdsDealTicketListDEALTICKETCODE.AsString) + ': ' +
              dmGlobal.RemoteServer.CloseDealTicket(cdsDealTicketListDEALTICKETID.AsLargeInt) + #13#10;
        end
        else
        begin
          sMessage := sMessage + QuotedStr(cdsDealTicketListDEALTICKETCODE.AsString) +
            ': Deal Ticket Allocation Quantity Must be same with Deal Quantity.' + #13#10;
        end;
      end;

      actViewListData.Execute;
//      ShowMessage('Finished Closed Multiple Deal Tickets.');
      ShowMessage(sMessage);
    end;
  end
  else
  begin
    if (cdsDealTicketListAUTO_ALLOC.AsString = '1') or (cdsDealTicketListDEALQTY.AsLargeInt = cdsDealTicketListALLOCQTY.AsLargeInt) then
    begin
      if MessageDlg('Are you sure to close deal ticket ' +
        QuotedStr(cdsDealTicketListDEALTICKETCODE.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        sMessage := dmGlobal.RemoteServer.CloseDealTicket(cdsDealTicketListDEALTICKETID.AsLargeInt);
        actViewListData.Execute;
        ShowMessage(sMessage);
      end;
    end
    else
    begin
      sMessage := 'Deal Ticket Allocation Quantity Must be same with Deal Quantity.' + #13#10 +
        'Please complete your Allocation!';
      dmGlobal.ErrorMessage(sMessage);
    end;
  end;
end;

procedure TfrmDealTickets.actCreateCrossTomExecute(Sender: TObject);
var
  oForm: TfrmCrossTom;
  processDate: TDateTime;
  BoardCrossTom: Int64;
  useCPAcc: Boolean;
  CPAccID: Integer;
  DT_Sell, DT_Buy: Int64;
  sDT_Sell, sDT_Buy: String;
  Seq_Sell, Seq_Buy: Int64;
begin
  inherited;
  oForm := TfrmCrossTom.Create(nil);
  Try
    cdsCrossTom.Close;
    cdsCrossTom.CreateDataSet;

    cdsCrossTom.Append;

    if oForm.ShowModal = mrOk then
    begin
      useCPAcc := False;

      with dmGlobal.IntDataLookup do
      begin
        if cdsLuMarket.Locate('MARKETCODE', cdsCrossTomMARKETCODE.AsString, []) then
          BoardCrossTom := cdsLuMarketCROSSTOM_BOARD.AsLargeInt;

        if cdsLuBoard.Locate('BOARDID', BoardCrossTom, []) then
        begin
          if cdsLuBoardCPTYPE.AsString = 'ACT' then
          begin
            useCPAcc := True;
            CPAccID := cdsLuBoardCPVALUE.AsInteger;
          end;
        end;
      end;

      cdsDealTicketDEALTICKETID.ReadOnly := False;

      cdsDealTicket.Close;
      cdsDealTicket.Params[0].AsInteger := 0;
      cdsDealTicket.Open;

      processDate := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

      //Buy Cross Tom
      cdsDealTicket.Append;
      cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCrossTomDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETDATE.AsDateTime := cdsCrossTomDEALTICKETDATE.AsDateTime;
      cdsDealTicketBS.AsString := 'B';
      cdsDealTicketMARKETCODE.AsString := cdsCrossTomMARKETCODE.AsString;
      cdsDealTicketCHANNELCODE.AsString := cdsCrossTomCHANNELCODE.AsString;
      cdsDealTicketACCID.AsInteger := cdsCrossTomBUYACCID.AsInteger;
      cdsDealTicketACCNO.AsString := cdsCrossTomBUYACCNO.AsString;
      cdsDealTicketACCNAME.AsString := cdsCrossTomBUYACCNAME.AsString;
      cdsDealTicketSTOCKID.AsLargeInt := cdsCrossTomSTOCKID.AsLargeInt;
      cdsDealTicketSTOCKCODE.AsString := cdsCrossTomSTOCKCODE.AsString;
      cdsDealTicketSTOCKNAME.AsString := cdsCrossTomSTOCKNAME.AsString;
      cdsDealTicketDUESTOCK.AsInteger := cdsCrossTomDUESTOCK.AsInteger;
      cdsDealTicketDUECASH.AsInteger := cdsCrossTomDUECASH.AsInteger;
      cdsDealTicketSTAT.AsString := 'O';
      cdsDealTicketMODDA.AsDateTime := processDate;
      cdsDealTicketMODUI.AsString := dmGlobal.UserID;
      cdsDealTicketISDEL.AsInteger := 0;
      cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
      cdsDealTicketCALC_METHOD.AsString := cdsCrossTomBUYCALC_METHOD.AsString;
      cdsDealTicketCOMM_RATE.AsFloat    := cdsCrossTomBUYCOMM_RATE.AsFloat;
      cdsDealTicket.Post;

      if not useCPAcc then
      begin
        with dmGlobal.IntDataLookup do
        begin
          cdsLuAccountBySubType.Close;
          cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
          cdsLuAccountBySubType.Params[1].AsString := 'X';//Cross Tom Account
          cdsLuAccountBySubType.Open;

          if not cdsLuAccountBySubType.IsEmpty then
          begin
            CPAccID := cdsLuAccountBySubTypeACCID.AsInteger;
          end;
        end;
      end;

      cdsDealTicketExec.Append;
      cdsDealTicketExecBOARDID.AsLargeInt := BoardCrossTom;
      cdsDealTicketExecEXQTY.AsLargeInt := cdsCrossTomDEALQTY.AsLargeInt;
      cdsDealTicketExecEXPRICE.AsFloat := cdsCrossTomDEALPRICE.AsFloat;
      cdsDealTicketExecEXTIME.AsDateTime := processDate;
      cdsDealTicketExecCPACCID.AsInteger := CPAccID;
      cdsDealTicketExecMODDA.AsDateTime := processDate;
      cdsDealTicketExecMODUI.AsString := dmGlobal.UserID;
      cdsDealTicketExecISDEL.AsInteger := 0;
      cdsDealTicketExecID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET_EXECS');
      cdsDealTicketExec.Post;

      //Additional Req By Irvan 20160215 start
      with dmGlobal.IntDataLookup do
      begin
        if cdsLuAccount.Locate('ACCID', cdsCrossTomBUYACCID.AsInteger, []) then
        begin

          if cdsLuAccountACCSUBTYPE.AsString <> 'M' then
          begin
            cdsLuAccountBySubType.Close;
            cdsLuAccountBySubType.Params[0].AsInteger := cdsCrossTomBUYACCID.AsInteger;
            cdsLuAccountBySubType.Params[1].AsString := 'M';//Main Account
            cdsLuAccountBySubType.Open;

            cdsDealTicket.Edit;
            cdsDealTicketACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
            cdsDealTicketACCNO.AsString := cdsLuAccountBySubTypeACCCODE.AsString;
            cdsDealTicketACCNAME.AsString := cdsLuAccountBySubTypeACCNAME.AsString;
            cdsDealTicketAUTO_ALLOC.AsString := cdsLuAccountBySubTypeAUTO_ALLOC.AsString;
            cdsDealTicket.Post;

            cdsDealTicketAlloc.Append;
            cdsDealTicketAllocACCID.AsInteger := cdsCrossTomBUYACCID.AsInteger;
            cdsDealTicketAllocACCNO.AsString := cdsCrossTomBUYACCNO.AsString;
            cdsDealTicketAllocACCNAME.AsString := cdsCrossTomBUYACCNAME.AsString;
            cdsDealTicketAllocAQTY.AsLargeInt := cdsCrossTomDEALQTY.AsLargeInt;
            cdsDealTicketAllocAPRICE.AsFloat := cdsCrossTomDEALPRICE.AsFloat;
            cdsDealTicketAlloc.Post;
          end;

        end;
      end;
      //Additional Req By Irvan 20160215 end

      DT_Buy := cdsDealTicketExecDEALTICKETID.AsLargeInt;
      Seq_Buy := cdsDealTicketExecSEQID.AsInteger;
      sDT_Buy := cdsDealTicketDEALTICKETCODE.AsString;

      //Sell Cross Tom
      cdsDealTicket.Append;
      cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCrossTomDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETDATE.AsDateTime := cdsCrossTomDEALTICKETDATE.AsDateTime;
      cdsDealTicketBS.AsString := 'S';
      cdsDealTicketMARKETCODE.AsString := cdsCrossTomMARKETCODE.AsString;
      cdsDealTicketCHANNELCODE.AsString := cdsCrossTomCHANNELCODE.AsString;
      cdsDealTicketACCID.AsInteger := cdsCrossTomSELLACCID.AsInteger;
      cdsDealTicketACCNO.AsString := cdsCrossTomSELLACCNO.AsString;
      cdsDealTicketACCNAME.AsString := cdsCrossTomSELLACCNAME.AsString;
      cdsDealTicketSTOCKID.AsLargeInt := cdsCrossTomSTOCKID.AsLargeInt;
      cdsDealTicketSTOCKCODE.AsString := cdsCrossTomSTOCKCODE.AsString;
      cdsDealTicketSTOCKNAME.AsString := cdsCrossTomSTOCKNAME.AsString;
      cdsDealTicketDUESTOCK.AsInteger := cdsCrossTomDUESTOCK.AsInteger;
      cdsDealTicketDUECASH.AsInteger := cdsCrossTomDUECASH.AsInteger;
      cdsDealTicketSTAT.AsString := 'O';
      cdsDealTicketMODDA.AsDateTime := processDate;
      cdsDealTicketMODUI.AsString := dmGlobal.UserID;
      cdsDealTicketISDEL.AsInteger := 0;
      cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
      cdsDealTicketCALC_METHOD.AsString := cdsCrossTomSELLCALC_METHOD.AsString;
      cdsDealTicketCOMM_RATE.AsFloat    := cdsCrossTomSELLCOMM_RATE.AsFloat;
      cdsDealTicket.Post;

      if not useCPAcc then
      begin
        with dmGlobal.IntDataLookup do
        begin
          cdsLuAccountBySubType.Close;
          cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
          cdsLuAccountBySubType.Params[1].AsString := 'X';//Cross Tom Account
          cdsLuAccountBySubType.Open;

          if not cdsLuAccountBySubType.IsEmpty then
          begin
            CPAccID := cdsLuAccountBySubTypeACCID.AsInteger;
          end;
        end;
      end;

      cdsDealTicketExec.Append;
      cdsDealTicketExecBOARDID.AsLargeInt := BoardCrossTom;
      cdsDealTicketExecEXQTY.AsLargeInt := cdsCrossTomDEALQTY.AsLargeInt;
      cdsDealTicketExecEXPRICE.AsFloat := cdsCrossTomDEALPRICE.AsFloat;
      cdsDealTicketExecEXTIME.AsDateTime := processDate;
      cdsDealTicketExecCPACCID.AsInteger := CPAccID;
      cdsDealTicketExecMODDA.AsDateTime := processDate;
      cdsDealTicketExecMODUI.AsString := dmGlobal.UserID;
      cdsDealTicketExecISDEL.AsInteger := 0;
      cdsDealTicketExecID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET_EXECS');
      cdsDealTicketExec.Post;

      //Additional Req By Irvan 20160215 start
      with dmGlobal.IntDataLookup do
      begin
        if cdsLuAccount.Locate('ACCID', cdsCrossTomSELLACCID.AsInteger, []) then
        begin

          if cdsLuAccountACCSUBTYPE.AsString <> 'M' then
          begin
            cdsLuAccountBySubType.Close;
            cdsLuAccountBySubType.Params[0].AsInteger := cdsCrossTomSELLACCID.AsInteger;
            cdsLuAccountBySubType.Params[1].AsString := 'M';//Main Account
            cdsLuAccountBySubType.Open;

            cdsDealTicket.Edit;
            cdsDealTicketACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
            cdsDealTicketACCNO.AsString := cdsLuAccountBySubTypeACCCODE.AsString;
            cdsDealTicketACCNAME.AsString := cdsLuAccountBySubTypeACCNAME.AsString;
            cdsDealTicketAUTO_ALLOC.AsString := cdsLuAccountBySubTypeAUTO_ALLOC.AsString;
            cdsDealTicket.Post;

            cdsDealTicketAlloc.Append;
            cdsDealTicketAllocACCID.AsInteger := cdsCrossTomSELLACCID.AsInteger;
            cdsDealTicketAllocACCNO.AsString := cdsCrossTomSELLACCNO.AsString;
            cdsDealTicketAllocACCNAME.AsString := cdsCrossTomSELLACCNAME.AsString;
            cdsDealTicketAllocAQTY.AsLargeInt := cdsCrossTomDEALQTY.AsLargeInt;
            cdsDealTicketAllocAPRICE.AsFloat := cdsCrossTomDEALPRICE.AsFloat;
            cdsDealTicketAlloc.Post;
          end;

        end;
      end;
      //Additional Req By Irvan 20160215 end

      DT_Sell := cdsDealTicketExecDEALTICKETID.AsLargeInt;
      Seq_Sell := cdsDealTicketExecSEQID.AsInteger;
      sDT_Sell := cdsDealTicketDEALTICKETCODE.AsString;

      if cdsDealTicket.ApplyUpdates(0) = 0 then
      begin
        //Create Cross Tom Monitoring
        cdsCrossTomTrade.Close;
        cdsCrossTomTrade.Params[0].AsInteger := 0;
        cdsCrossTomTrade.Open;

        cdsCrossTomTrade.Append;
        cdsCrossTomTradeCROSSTOMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CROSSTOM_TRADE');
        cdsCrossTomTradeCROSSTOMCODE.AsString := IntToStr(DT_Buy) + ' Crossing With ' + IntToStr(DT_Sell);
        cdsCrossTomTradeCROSSTOMDESC.AsString := sDT_Buy + ' Crossing With ' + sDT_Sell;
        cdsCrossTomTradeDEALTICKETID_BUY.AsLargeInt := DT_Buy;
        cdsCrossTomTradeSEQID_BUY.AsInteger := Seq_Buy;
        cdsCrossTomTradeDEALTICKETID_SELL.AsLargeInt := DT_Sell;
        cdsCrossTomTradeSEQID_SELL.AsInteger := Seq_Sell;
        cdsCrossTomTradeACCID_BUY.AsInteger := cdsCrossTomBUYACCID.AsInteger;
        cdsCrossTomTradeACCNO_BUY.AsString := cdsCrossTomBUYACCNO.AsString;
        cdsCrossTomTradeACCNAME_BUY.AsString := cdsCrossTomBUYACCNAME.AsString;
        cdsCrossTomTradeACCID_SELL.AsInteger := cdsCrossTomSELLACCID.AsInteger;
        cdsCrossTomTradeACCNO_SELL.AsString := cdsCrossTomSELLACCNO.AsString;
        cdsCrossTomTradeACCNAME_SELL.AsString := cdsCrossTomSELLACCNAME.AsString;
        cdsCrossTomTradeDEALTICKETDATE.AsDateTime := cdsCrossTomDEALTICKETDATE.AsDateTime;
        cdsCrossTomTradeSTOCKID.AsLargeInt := cdsCrossTomSTOCKID.AsLargeInt;
        cdsCrossTomTradeSTOCKCODE.AsString := cdsCrossTomSTOCKCODE.AsString;
        cdsCrossTomTradeSTOCKNAME.AsString := cdsCrossTomSTOCKNAME.AsString;
        cdsCrossTomTradeMARKETCODE.AsString := cdsCrossTomMARKETCODE.AsString;
        cdsCrossTomTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
        cdsCrossTomTradeQTY.AsLargeInt := cdsCrossTomDEALQTY.AsLargeInt;
        cdsCrossTomTradePRICE.AsFloat := cdsCrossTomDEALPRICE.AsFloat;
        cdsCrossTomTradeVALUE.AsFloat := cdsCrossTomDEALVALUE.AsFloat;
        cdsCrossTomTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
        cdsCrossTomTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
        cdsCrossTomTradeLISTED_DATE.AsDateTime := processDate;
        cdsCrossTomTradeSTATUS.AsString := 'O'; //open
        cdsCrossTomTradeMODDA.AsDateTime := processDate;
        cdsCrossTomTradeMODUI.AsString := dmGlobal.UserID;
        cdsCrossTomTradeISDEL.AsInteger := 0;
        cdsCrossTomTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CROSSTOM_TRADE');
        cdsCrossTomTrade.Post;

        cdsCrossTomTrade.ApplyUpdates(-1);

        if (cdsCrossTomDEALTICKETDATE.AsDateTime >= dtTransDateStart.Date)
          and (cdsCrossTomDEALTICKETDATE.AsDateTime <= dtTransDateEnd.Date) then
        begin
          actViewListData.Execute;
        end;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmDealTickets.actCreateNegoTomExecute(Sender: TObject);
var
  oForm: TfrmNegoTom;
  processDate: TDateTime;
  BoardNegoTom: Int64;
  useCPAcc: Boolean;
  CPAccID: Integer;

label
  Selesai;
begin
  inherited;
  oForm := TfrmNegoTom.Create(nil);
  Try
    cdsNegoTom.Close;
    cdsNegoTom.CreateDataSet;

    cdsNegoTom.Append;

    if oForm.ShowModal = mrOk then
    begin
      useCPAcc := False;

      with dmGlobal.IntDataLookup do
      begin
        if cdsLuMarket.Locate('MARKETCODE', cdsNegoTomMARKETCODE.AsString, []) then
          BoardNegoTom := cdsLuMarketNEGOTOM_BOARD.AsLargeInt;

        if cdsLuBoard.Locate('BOARDID', BoardNegoTom, []) then
        begin
          if cdsLuBoardCPTYPE.AsString = 'ACT' then
          begin
            useCPAcc := True;
            CPAccID := cdsLuBoardCPVALUE.AsInteger;
          end;
        end;

        if not useCPAcc then
        begin
          cdsLuAccountBySubType.Close;
          cdsLuAccountBySubType.Params[0].AsInteger := cdsNegoTomACCID.AsInteger;
          cdsLuAccountBySubType.Params[1].AsString := 'N';//Nego Tom Account
          cdsLuAccountBySubType.Open;

          if not cdsLuAccountBySubType.IsEmpty then
          begin
            CPAccID := cdsLuAccountBySubTypeACCID.AsInteger;
          end
          else
          begin
            dmGlobal.ErrorMessage('This Account don''t have Nego Tom Account.' + #13#10
              + 'Process abort!');
            Goto Selesai;
          end;
        end;
      end;

      cdsDealTicketDEALTICKETID.ReadOnly := False;

      cdsDealTicket.Close;
      cdsDealTicket.Params[0].AsInteger := 0;
      cdsDealTicket.Open;

      processDate := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

      cdsDealTicket.Append;
      cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsNegoTomDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
      cdsDealTicketDEALTICKETDATE.AsDateTime := cdsNegoTomDEALTICKETDATE.AsDateTime;
      cdsDealTicketBS.AsString := cdsNegoTomBS.AsString;
      cdsDealTicketMARKETCODE.AsString := cdsNegoTomMARKETCODE.AsString;
      cdsDealTicketCHANNELCODE.AsString := cdsNegoTomCHANNELCODE.AsString;
      cdsDealTicketACCID.AsInteger := cdsNegoTomACCID.AsInteger;
      cdsDealTicketACCNO.AsString := cdsNegoTomACCNO.AsString;
      cdsDealTicketACCNAME.AsString := cdsNegoTomACCNAME.AsString;
      cdsDealTicketSTOCKID.AsLargeInt := cdsNegoTomSTOCKID.AsLargeInt;
      cdsDealTicketSTOCKCODE.AsString := cdsNegoTomSTOCKCODE.AsString;
      cdsDealTicketSTOCKNAME.AsString := cdsNegoTomSTOCKNAME.AsString;
      cdsDealTicketDUESTOCK.AsInteger := cdsNegoTomDUESTOCK.AsInteger;
      cdsDealTicketDUECASH.AsInteger := cdsNegoTomDUECASH.AsInteger;
      cdsDealTicketDEALERID.AsLargeInt := cdsNegoTomDEALERID.AsLargeInt;
      cdsDealTicketSALESID.AsLargeInt := cdsNegoTomSALESID.AsLargeInt;
      cdsDealTicketCALC_METHOD.AsString := cdsNegoTomCALC_METHOD.AsString;
      cdsDealTicketCOMM_RATE.AsFloat := cdsNegoTomCOMM_RATE.AsFloat;
      cdsDealTicketSTAT.AsString := 'O';
      cdsDealTicketMODDA.AsDateTime := processDate;
      cdsDealTicketMODUI.AsString := dmGlobal.UserID;
      cdsDealTicketISDEL.AsInteger := 0;
      cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
      cdsDealTicket.Post;

      cdsDealTicketExec.Append;
      cdsDealTicketExecBOARDID.AsLargeInt := BoardNegoTom;
      cdsDealTicketExecEXQTY.AsLargeInt := cdsNegoTomDEALQTY.AsLargeInt;
      cdsDealTicketExecEXPRICE.AsFloat := cdsNegoTomDEALPRICE.AsFloat;
      cdsDealTicketExecEXTIME.AsDateTime := processDate;
      cdsDealTicketExecCPACCID.AsInteger := CPAccID;
      cdsDealTicketExecMODDA.AsDateTime := processDate;
      cdsDealTicketExecMODUI.AsString := dmGlobal.UserID;
      cdsDealTicketExecISDEL.AsInteger := 0;
      cdsDealTicketExecID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET_EXECS');
      cdsDealTicketExec.Post;

      if cdsDealTicket.ApplyUpdates(0) = 0 then
      begin
        if (cdsNegoTomDEALTICKETDATE.AsDateTime >= dtTransDateStart.Date)
          and (cdsNegoTomDEALTICKETDATE.AsDateTime <= dtTransDateEnd.Date) then
        begin
          actViewListData.Execute;
        end;
      end;
    end;

    Selesai:

  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmDealTickets.actCrossTomExecute(Sender: TObject);
var
  useCPAcc: Boolean;
  CPAccID: Integer;
  bMark: TBookmark;
  ctAccID, ctStockID: Integer;
  ctBS, ctMarket: String;
  oForm: TfrmCrossTomChoose;
  oFormEdit: TfrmCrossTomDealTicket;
  i: Integer;
  oField: TField;
  dtProcess: TDateTime;
  DT_Buy, DT_Sell: Int64;
  Seq_Buy, Seq_Sell: Integer;
  sDT_Buy, sDT_Sell: String;
begin
  inherited;
  FCrossTomCondition := True;
//  DataContainer.Edit;

  //Change Reuqest 20160216 cause performance issue
  if FCrossTomCondition then
  begin
    useCPAcc := False;

    cdsDealTicket.Close;
    cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
    cdsDealTicket.Open;

    with dmGlobal.IntDataLookup do
    begin
      if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.AsString, []) then
      begin
        if cdsLuBoard.Locate('BOARDID', cdsLuMarketCROSSTOM_BOARD.Value, []) then
        begin
          if cdsLuBoardCPTYPE.AsString = 'ACT' then
          begin
            useCPAcc := True;
            CPAccID := cdsLuBoardCPVALUE.AsInteger;
          end;
        end;
      end;

      if not useCPAcc then
      begin
        cdsLuAccountBySubType.Close;
        cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
        cdsLuAccountBySubType.Params[1].AsString := 'X';//Cross Tom Account
        cdsLuAccountBySubType.Open;

        if cdsLuAccountBySubType.IsEmpty then
        begin
          MessageDlg('This Account don''t have Crossing Tomorrow Account.' + #13 +
            'Please create Crossing Tomorrow Account for this related Account first!', mtWarning, [mbOK], 0);
          FCrossTomCondition := False;
          Exit;
        end;
      end;

    end;

    cdsCrossTomChooseList.Close;
    cdsCrossTomChooseList.CreateDataSet;

    cdsDealTicketList.DisableControls;
    bMark := cdsDealTicketList.GetBookmark;
    Try
      ctACCID := cdsDealTicketACCID.AsInteger;
      ctSTOCKID := cdsDealTicketSTOCKID.AsLargeInt;
      ctBS := cdsDealTicketBS.AsString;
      ctMarket := cdsDealTicketMARKETCODE.AsString;

      cdsDealTicketList.Refresh;
      cdsDealTicketList.First;
      while not cdsDealTicketList.Eof do
      begin
        if (cdsDealTicketListACCID.AsInteger <> ctACCID)
          and (cdsDealTicketListSTOCKID.AsLargeInt = ctSTOCKID)
          and (cdsDealTicketListBS.AsString <> ctBS)
          and (cdsDealTicketListMARKETCODE.AsString = ctMarket)
          and (cdsDealTicketListSTAT.AsString = 'O') then
        begin
          cdsCrossTomChooseList.Append;
          cdsCrossTomChooseListDEALTICKETID.AsLargeInt := cdsDealTicketListDEALTICKETID.AsLargeInt;
          cdsCrossTomChooseListDEALTICKETCODE.AsString := cdsDealTicketListDEALTICKETCODE.AsString;
          cdsCrossTomChooseListACCID.AsInteger := cdsDealTicketListACCID.AsInteger;
          cdsCrossTomChooseListACCNO.AsString := cdsDealTicketListACCNO.AsString;
          cdsCrossTomChooseListACCNAME.AsString := cdsDealTicketListACCNAME.AsString;
          cdsCrossTomChooseListSTOCKCODE.AsString := cdsDealTicketListSTOCKCODE.AsString;
          cdsCrossTomChooseListSTOCKNAME.AsString := cdsDealTicketListSTOCKNAME.AsString;
          cdsCrossTomChooseListMARKETCODE.AsString := cdsDealTicketListMARKETCODE.AsString;
          cdsCrossTomChooseListCCYCODE.AsString := cdsDealTicketListCCYCODE.AsString;
          cdsCrossTomChooseListDEALQTY.AsLargeInt := cdsDealTicketListDEALQTY.AsLargeInt;
          cdsCrossTomChooseListDEALPRICE.AsFloat := cdsDealTicketListDEALPRICE.AsFloat;
          cdsCrossTomChooseListDEALVALUE.AsFloat := cdsDealTicketListDEALVALUE.AsFloat;
          cdsCrossTomChooseList.Post;
        end;

        cdsDealTicketList.Next;
      end;
    Finally
      cdsDealTicketList.GotoBookmark(bMark);
      cdsDealTicketList.EnableControls;
    End;

    oForm := TfrmCrossTomChoose.Create(nil);
    Try
      if cdsCrossTomChooseList.IsEmpty then
      begin
        TfrmCrossTomChoose(oForm).rgBased.EditValue := 'N';
        TfrmCrossTomChoose(oForm).lcNewAccount.Visible := True;
        TfrmCrossTomChoose(oForm).lcCurrentAccount.Visible := False;
      end;

      TfrmCrossTomChoose(oForm).useCPAcc := useCPAcc;

      if oForm.ShowModal = mrOK then
      begin
        FCrossTomDealTicketID := TfrmCrossTomChoose(oForm).cbCrossAccount.EditValue;
        FCrossTomQty := TfrmCrossTomChoose(oForm).edCrossQty.EditValue;
        FCrossTomPrice := TfrmCrossTomChoose(oForm).edCrossPrice.EditValue;

        if TfrmCrossTomChoose(oForm).rgBased.EditValue = 'C' then
        begin
          cdsDealTicketX.Close;
          cdsDealTicketX.Params[0].AsInteger := FCrossTomDealTicketID;
          cdsDealTicketX.Open;
        end
        else if TfrmCrossTomChoose(oForm).rgBased.EditValue = 'N' then
        begin
          cdsDealTicketX.Close;
          cdsDealTicketX.Params[0].AsInteger := 0;
          cdsDealTicketX.Open;

          cdsDealTicketX.Append;
          for i := 0 to cdsDealTicket.FieldCount - 1 do
          begin
            oField := cdsDealTicketX.FindField(cdsDealTicket.Fields[i].FieldName);
            if (oField <> nil) and (oField.FieldKind = fkData)
              and (oField.DataType <> ftDataSet) then
            begin
              oField.Value := cdsDealTicket.Fields[i].Value;
            end;
          end;
          cdsDealTicketXDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
          cdsDealTicketXDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsDealTicketXDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
          if cdsDealTicketBS.AsString = 'B' then
            cdsDealTicketXBS.AsString := 'S'
          else
            cdsDealTicketXBS.AsString := 'B';
          cdsDealTicketXSTAT.AsString := 'O';
          cdsDealTicketXISDEL.AsInteger := 0;
          cdsDealTicketXID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
          cdsDealTicketXACCID.AsInteger := TfrmCrossTomChoose(oForm).AccID;
          cdsDealTicketXACCNO.AsString := TfrmCrossTomChoose(oForm).AccNo;
          cdsDealTicketXACCNAME.AsString := TfrmCrossTomChoose(oForm).edAccountName.Text;
          cdsDealTicketXDEALQTY.AsLargeInt := 0;
          cdsDealTicketXDEALPRICE.AsFloat := 0;
          cdsDealTicketXDEALVALUE.AsFloat := 0;
          cdsDealTicketXALLOCQTY.AsLargeInt := 0;
          cdsDealTicketXROUNDPRICE.AsFloat := 0;
          cdsDealTicketXROUNDVALUE.AsFloat := 0;
          cdsDealTicketXDIFFVALUE.AsFloat := 0;
          cdsDealTicketX.Post;

          //Additional Req By Irvan 20160215 start
          with dmGlobal.IntDataLookup do
          begin
            if cdsLuAccount.Locate('ACCID', cdsDealTicketXACCID.AsInteger, []) then
            begin

              if cdsLuAccountACCSUBTYPE.AsString <> 'M' then
              begin
                cdsDealTicketAllocX.Append;
                cdsDealTicketAllocXACCID.AsInteger := cdsDealTicketXACCID.AsInteger;
                cdsDealTicketAllocXACCNO.AsString := cdsDealTicketXACCNO.AsString;
                cdsDealTicketAllocXACCNAME.AsString := cdsDealTicketXACCNAME.AsString;
                cdsDealTicketAllocXAQTY.AsLargeInt := FCrossTomQty;
                cdsDealTicketAllocXAPRICE.AsFloat := FCrossTomPrice;
                cdsDealTicketAllocX.Post;

                cdsLuAccountBySubType.Close;
                cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketXACCID.AsInteger;
                cdsLuAccountBySubType.Params[1].AsString := 'M';//Main Account
                cdsLuAccountBySubType.Open;

                if not cdsLuAccountBySubType.IsEmpty then
                begin
                  cdsDealTicketX.Edit;
                  cdsDealTicketXACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
                  cdsDealTicketXACCNO.AsString := cdsLuAccountBySubTypeACCCODE.AsString;
                  cdsDealTicketXACCNAME.AsString := cdsLuAccountBySubTypeACCNAME.AsString;
                  cdsDealTicketXAUTO_ALLOC.AsString := cdsLuAccountBySubTypeAUTO_ALLOC.AsString;
                  cdsDealTicketX.Post;
                end;
              end;

            end;
          end;
          //Additional Req By Irvan 20160215 end
        end;

        if not cdsDealTicketX.IsEmpty then
        begin
          with dmGlobal.IntDataLookup do
          begin
            if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketXMARKETCODE.Value, []) then
            begin
              cdsDealTicketExec.Append;
              cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketCROSSTOM_BOARD.AsLargeInt;
              cdsDealTicketExecEXQTY.AsLargeInt := FCrossTomQty;
              cdsDealTicketExecEXPRICE.AsFloat := FCrossTomPrice;
              if useCPAcc then
                cdsDealTicketExecCPACCID.AsInteger := CPAccID
              else
                cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
              cdsDealTicketExec.Post;

              cdsDealTicketExecX.Append;
              cdsDealTicketExecXBOARDID.AsLargeInt := cdsLuMarketCROSSTOM_BOARD.AsLargeInt;
              cdsDealTicketExecXEXQTY.AsLargeInt := FCrossTomQty;
              cdsDealTicketExecXEXPRICE.AsFloat := FCrossTomPrice;
              if useCPAcc then
                cdsDealTicketExecXCPACCID.AsInteger := CPAccID
              else
              begin
                cdsLuAccountBySubType.Close;
                cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketXACCID.AsInteger;
                cdsLuAccountBySubType.Params[1].AsString := 'X';//Cross Tom Account
                cdsLuAccountBySubType.Open;

                if cdsLuAccountBySubType.IsEmpty then
                begin
                  MessageDlg('This Account don''t have Crossing Tomorrow Account.' + #13 +
                    'Please create Crossing Tomorrow Account for this related Account first!', mtWarning, [mbOK], 0);
                  FCrossTomCondition := False;
                  Exit;
                end;

                cdsDealTicketExecXCPACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
              end;
              cdsDealTicketExecX.Post;
            end;
          end;

          if cdsDealTicketBS.AsString = 'B' then
          begin
            DT_Buy := cdsDealTicketDEALTICKETID.AsLargeInt;
            DT_Sell := cdsDealTicketXDEALTICKETID.AsLargeInt;
            sDT_Buy := cdsDealTicketDEALTICKETCODE.AsString;
            sDT_Sell := cdsDealTicketXDEALTICKETCODE.AsString;
            Seq_Buy := cdsDealTicketExecSEQID.AsInteger;
            Seq_Sell := cdsDealTicketExecXSEQID.AsInteger;
          end
          else
          begin
            DT_Buy := cdsDealTicketXDEALTICKETID.AsLargeInt;
            DT_Sell := cdsDealTicketDEALTICKETID.AsLargeInt;
            sDT_Buy := cdsDealTicketXDEALTICKETCODE.AsString;
            sDT_Sell := cdsDealTicketDEALTICKETCODE.AsString;
            Seq_Buy := cdsDealTicketExecXSEQID.AsInteger;
            Seq_Sell := cdsDealTicketExecSEQID.AsInteger;
          end;


          oFormEdit := TfrmCrossTomDealTicket.Create(nil);
          Try
            oFormEdit.DataContainer := Self.DataContainer;
            if oFormEdit.ShowModal = mrOk then
            begin
              dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

              cdsDealTicket.Edit;
              cdsDealTicketMODDA.AsDateTime := dtProcess;
              cdsDealTicketMODUI.AsString := dmGlobal.UserID;
              cdsDealTicket.Post;

              cdsDealTicketX.Edit;
              cdsDealTicketXMODDA.AsDateTime := dtProcess;
              cdsDealTicketXMODUI.AsString := dmGlobal.UserID;
              cdsDealTicketX.Post;

              dmGlobal.RemoteServer.StartTransaction;
              if (cdsDealTicket.ApplyUpdates(0) = 0)
                and (cdsDealTicketX.ApplyUpdates(0) = 0) then
              begin
                //Create Cross Tom Monitoring
                cdsCrossTomTrade.Close;
                cdsCrossTomTrade.Params[0].AsInteger := 0;
                cdsCrossTomTrade.Open;

                cdsCrossTomTrade.Append;
                cdsCrossTomTradeCROSSTOMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CROSSTOM_TRADE');
                cdsCrossTomTradeCROSSTOMCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(dtProcess, 'CT', 'TBL_B_CROSSTOM_TRADE');
                cdsCrossTomTradeCROSSTOMDESC.AsString := sDT_Buy + ' Crossing With ' + sDT_Sell;
                cdsCrossTomTradeDEALTICKETID_BUY.AsLargeInt := DT_Buy;
                cdsCrossTomTradeSEQID_BUY.AsInteger := Seq_Buy;
                cdsCrossTomTradeDEALTICKETID_SELL.AsLargeInt := DT_Sell;
                cdsCrossTomTradeSEQID_SELL.AsInteger := Seq_Sell;
                if cdsDealTicketBS.AsString = 'B' then
                begin
                  cdsCrossTomTradeACCID_BUY.AsInteger := cdsDealTicketACCID.AsInteger;
                  cdsCrossTomTradeACCNO_BUY.AsString := cdsDealTicketACCNO.AsString;
                  cdsCrossTomTradeACCNAME_BUY.AsString := cdsDealTicketACCNAME.AsString;
                  cdsCrossTomTradeACCID_SELL.AsInteger := cdsDealTicketXACCID.AsInteger;
                  cdsCrossTomTradeACCNO_SELL.AsString := cdsDealTicketXACCNO.AsString;
                  cdsCrossTomTradeACCNAME_SELL.AsString := cdsDealTicketXACCNAME.AsString;
                end
                else
                begin
                  cdsCrossTomTradeACCID_BUY.AsInteger := cdsDealTicketXACCID.AsInteger;
                  cdsCrossTomTradeACCNO_BUY.AsString := cdsDealTicketXACCNO.AsString;
                  cdsCrossTomTradeACCNAME_BUY.AsString := cdsDealTicketXACCNAME.AsString;
                  cdsCrossTomTradeACCID_SELL.AsInteger := cdsDealTicketACCID.AsInteger;
                  cdsCrossTomTradeACCNO_SELL.AsString := cdsDealTicketACCNO.AsString;
                  cdsCrossTomTradeACCNAME_SELL.AsString := cdsDealTicketACCNAME.AsString;
                end;
                cdsCrossTomTradeDEALTICKETDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
                cdsCrossTomTradeSTOCKID.AsLargeInt := cdsDealTicketSTOCKID.AsLargeInt;
                cdsCrossTomTradeSTOCKCODE.AsString := cdsDealTicketSTOCKCODE.AsString;
                cdsCrossTomTradeSTOCKNAME.AsString := cdsDealTicketSTOCKNAME.AsString;
                cdsCrossTomTradeMARKETCODE.AsString := cdsDealTicketMARKETCODE.AsString;
                cdsCrossTomTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
                cdsCrossTomTradeQTY.AsLargeInt := FCrossTomQty;
                cdsCrossTomTradePRICE.AsFloat := FCrossTomPrice;
                cdsCrossTomTradeVALUE.AsFloat := FCrossTomQty * FCrossTomPrice;
                cdsCrossTomTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
                cdsCrossTomTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
                cdsCrossTomTradeLISTED_DATE.AsDateTime := dtProcess;
                cdsCrossTomTradeSTATUS.AsString := 'O'; //open
                cdsCrossTomTradeMODDA.AsDateTime := dtProcess;
                cdsCrossTomTradeMODUI.AsString := dmGlobal.UserID;
                cdsCrossTomTradeISDEL.AsInteger := 0;
                cdsCrossTomTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CROSSTOM_TRADE');
                cdsCrossTomTrade.Post;

                cdsCrossTomTrade.ApplyUpdates(-1);

                dmGlobal.RemoteServer.CommitTransaction;
                cdsDealTicketList.Refresh;
              end
              else
              begin
                dmGlobal.RemoteServer.RollbackTransaction;
              end;
            end;
          Finally
            FreeAndNil(oForm);
          End;
        end;
      end
      else
      begin
        FCrossTomCondition := False;
      end;

    Finally
      FCrossTomCondition := False;
      oForm.Free;
    End;
  end;
end;

procedure TfrmDealTickets.actFacilitationExecute(Sender: TObject);
begin
  inherited;
  FFacilitationCondition := True;
  DataContainer.Edit;
end;

procedure TfrmDealTickets.actMergeExecute(Sender: TObject);
var
  i, j, RecIdx: Integer;
  oField: TField;
begin
  inherited;
  if gvwMaster.Controller.SelectedRowCount <= 1 then exit;

  cdsDealTicketTemp.Close;
  cdsDealTicketTemp.CreateDataSet;

  cdsDealTicketExecTemp.Close;
  cdsDealTicketExecTemp.CreateDataSet;

  cdsDealTicketAllocTemp.Close;
  cdsDealTicketAllocTemp.CreateDataSet;

  for i := 0 to gvwMaster.Controller.SelectedRowCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    cdsDealTicket.Close;
    cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
    cdsDealTicket.Open;

    if cdsDealTicketSTAT.AsString <> 'O' then
    begin
      ShowMessage('You can''t merge except open data.' + #13 +
        'Please check again the data you want to merge!');
      Exit;
    end;

    if (i = 0) then
    begin
      cdsDealTicketTemp.Append;
      for j := 0 to cdsDealTicket.FieldCount - 1 do
      begin
        oField := cdsDealTicketTemp.FindField(cdsDealTicket.Fields[j].FieldName);
        if (oField <> nil) and (oField.FieldKind = fkData) then
          oField.Value := cdsDealTicket.Fields[j].Value;
      end;
      cdsDealTicketTemp.Post;

      cdsDealTicketExec.First;
      while not cdsDealTicketExec.Eof do
      begin
        cdsDealTicketExecTemp.Append;
        for j := 0 to cdsDealTicketExec.FieldCount - 1 do
        begin
          oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[j].FieldName);
          if (oField <> nil) and (oField.FieldKind = fkData) then
            oField.Value := cdsDealTicketExec.Fields[j].Value;
        end;
        cdsDealTicketExecTemp.Post;

        cdsDealTicketExec.Next;
      end;
    end
    else
    begin
      if (cdsDealTicketACCID.AsInteger = cdsDealTicketTemp.FieldByName('ACCID').AsInteger) and
        (cdsDealTicketSTOCKID.AsInteger = cdsDealTicketTemp.FieldByName('STOCKID').AsInteger) and
        (cdsDealTicketBS.AsString = cdsDealTicketTemp.FieldByName('BS').AsString) and
        (cdsDealTicketMARKETCODE.AsString = cdsDealTicketTemp.FieldByName('MARKETCODE').AsString) and
        (cdsDealTicketCHANNELCODE.AsString = cdsDealTicketTemp.FieldByName('CHANNELCODE').AsString) then
      begin
        cdsDealTicketExec.First;
        while not cdsDealTicketExec.Eof do
        begin
          cdsDealTicketExecTemp.Append;
          for j := 0 to cdsDealTicketExec.FieldCount - 1 do
          begin
            oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[j].FieldName);
            if (oField <> nil) and (oField.FieldKind = fkData) then
              oField.Value := cdsDealTicketExec.Fields[j].Value;
          end;
          cdsDealTicketExecTemp.Post;

          cdsDealTicketExec.Next;
        end;
      end
      else
      begin
        ShowMessage('You can''t merge data with different account or stock or buy/sell or channel.' + #13 +
          'Please check again the data you want to merge!');
        Exit;
      end;

    end;
  end;

  FMergeCondition := True;
  DataContainer.Insert;
end;

procedure TfrmDealTickets.actMergeNewExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sDTID, sMsg: String;
  oForm: TfrmDealTicketMerge;
begin
  inherited;
  if gvwMaster.Controller.SelectedRowCount <= 1 then exit;

  sDTID := '';
  for i := 0 to gvwMaster.Controller.SelectedRowCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    if cdsDealTicketListSTAT.AsString <> 'O' then
    begin
      ShowMessage('You can''t merge except open data.' + #13 +
        'Please check again the data you want to merge!');
      Abort;
    end;

    if sDTID <> '' then sDTID := sDTID + ',';
    sDTID := sDTID + cdsDealTicketListDEALTICKETID.AsString;
  end;

  if (sDTID <> '') then
  begin
    cdsMergeDealTicket.Close;
    cdsMergeDealTicket.Params[0].AsString := sDTID;
    cdsMergeDealTicket.Open;

    if cdsMergeDealTicket.RecordCount = 1 then
    begin
      oForm := TfrmDealTicketMerge.Create(nil);
      Try
        if oForm.ShowModal = mrOk then
        begin
          sMsg := dmGlobal.RemoteServer.MergeDealTicket(sDTID);
          ShowMessage(sMsg);
          cdsDealTicketList.Close;
          cdsDealTicketList.Open;
        end;
      Finally
        FreeAndNil(oForm);
      End;
    end
    else
    begin
      ShowMessage('You can''t merge data with different account or stock or buy/sell or channel.' + #13 +
        'Please check again the data you want to merge!');
    end;
  end;

end;

procedure TfrmDealTickets.actPostingAllExecute(Sender: TObject);
var
  sResult: String;
  dtDealTicket: TDateTime;
begin
  inherited;
  dtDealTicket := cdsDealTicketList.Params[0].AsDate;
  if MessageDlg('Are you sure to posting deal ticket ' +
    FormatDateTime('dd MMM yyyy ?', dtDealTicket), mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    sResult := dmGlobal.RemoteServer.PostingAllDealTicket(DateTimeToFileDate(dtDealTicket));
    ShowMessage(sResult);
  end;
end;

procedure TfrmDealTickets.actSetAllocToOneAccountExecute(Sender: TObject);
var
  oForm: TfrmSetAllocToOneAccount;
  iAccID, iAllocAccID: Integer;
  iDealTicketID: Integer;
  i, RecIdx: Integer;
  sAccCode, sAccName: string;

  iAccID1, iAccID2: integer;
  bEnable: Boolean;
  sStatus, sBuySell1, sBuySell2: string;
begin
  inherited;
  for i := 0 to gvwMaster.Controller.SelectedRowCount - 1 do
  begin
    RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
    gvwMaster.DataController.FocusedRecordIndex := RecIdx;

    if (i = 0) then iAccID := cdsDealTicketListACCID.AsInteger;

    if (cdsDealTicketListSTAT.AsString <> 'O') and (cdsDealTicketListACCID.AsInteger <> iAccID) then
    begin
      ShowMessage('You can''t modified data except open data and same account.' + #13 +
        'Please check again the data you want to modified!');
      Exit;
    end;
  end;

  dmGlobal.IntDataLookup.cdsLuAllocAccount.Close;
  dmGlobal.IntDataLookup.cdsLuAllocAccount.Params[0].AsString := cdsDealTicketListMARKETCODE.AsString;
  dmGlobal.IntDataLookup.cdsLuAllocAccount.Params[1].AsString := cdsDealTicketListCHANNELCODE.AsString;
  dmGlobal.IntDataLookup.cdsLuAllocAccount.Params[2].AsString := cdsDealTicketListCCYCODE.AsString;
  dmGlobal.IntDataLookup.cdsLuAllocAccount.Params[3].AsInteger := iAccID;
  dmGlobal.IntDataLookup.cdsLuAllocAccount.Open;

  oForm := TfrmSetAllocToOneAccount.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    iAllocAccID := TfrmSetAllocToOneAccount(oForm).cbAccID.EditValue;
    if dmGlobal.IntDataLookup.cdsLuAllocAccount.Locate('ACCID', iAllocAccID, []) then
    begin
      sAccCode := dmGlobal.IntDataLookup.cdsLuAllocAccountACCCODE.AsString;
      sAccName := dmGlobal.IntDataLookup.cdsLuAllocAccountACCNAME.AsString;
    end;

    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iDealTicketID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterDEALTICKETID.Index];

      cdsDealTicket.Close;
      cdsDealTicket.Params[0].AsInteger := iDealTicketID;
      cdsDealTicket.Open;

      cdsDealTicketAlloc.Append;
      cdsDealTicketAllocDEALTICKETID.AsInteger := iDealTicketID;
      cdsDealTicketAllocACCID.AsInteger        := iAllocAccID;
      cdsDealTicketAllocACCNO.AsString         := sAccCode;
      cdsDealTicketAllocACCNAME.AsString       := sAccName;
      cdsDealTicketAllocAQTY.AsInteger         := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterDEALQTY.Index];
      cdsDealTicketAllocAPRICE.AsFloat         := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterROUNDPRICE.Index];
      cdsDealTicketAllocAVALUE.AsFloat         := cdsDealTicketAllocAQTY.AsInteger * cdsDealTicketAllocAPRICE.AsFloat;
      cdsDealTicketAlloc.Post;

      cdsDealTicket.Edit;
      cdsDealTicketALLOCQTY.AsFloat := cdsDealTicketDEALQTY.AsFloat;
      cdsDealTicket.Post;

      cdsDealTicket.ApplyUpdates(-1);
    end;

    MessageDlg('Allocation has been done', mtConfirmation, [mbOk], 0);
  end;
end;

procedure TfrmDealTickets.actSplitAllocExecute(Sender: TObject);
var
  oForm: TForm;
  i: Integer;
  oField: TField;
  processDateTime: TDateTime;
  sUser: String;
  OldAvgPrice: Double;
  OldID, tempSplitQty, sisaSplitQty: Int64;
  tempQty: Int64;
begin
  inherited;
  cdsDealTicket.Close;
  cdsDealTicket.Params[0].AsInteger := -1;
  cdsDealTicket.Open;

  cdsDealTicket.Close;
  cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
  cdsDealTicket.Open;

  if cdsDealTicketAlloc.IsEmpty then
  begin
    dmGlobal.ErrorMessage('This Deal Ticket doesn''t have Allocation!');
    Exit;
  end;

  cdsSplitDetailAlloc.Close;
  cdsSplitDetailAlloc.CreateDataSet;

  oForm := TfrmSplitAllocDealTicket.Create(nil);
  Try
    cdsDealTicketTemp.Close;
    cdsDealTicketTemp.CreateDataSet;

//    cdsDealTicketExecTemp.Close;
//    cdsDealTicketExecTemp.CreateDataSet;
//
//    cdsDealTicketAllocTemp.Close;
//    cdsDealTicketAllocTemp.CreateDataSet;

    cdsDealTicketTemp.Append;
    for i := 0 to cdsDealTicket.FieldCount - 1 do
    begin
      oField := cdsDealTicketTemp.FindField(cdsDealTicket.Fields[i].FieldName);
      if (oField <> nil) and (oField.FieldKind = fkData) then
        oField.Value := cdsDealTicket.Fields[i].Value;
    end;
    cdsDealTicketTemp.Post;

//    cdsDealTicketExec.First;
//    while not cdsDealTicketExec.Eof do
//    begin
//      cdsDealTicketExecTemp.Append;
//      for i := 0 to cdsDealTicketExec.FieldCount - 1 do
//      begin
//        oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[i].FieldName);
//        if (oField <> nil) and (oField.FieldKind = fkData) then
//          oField.Value := cdsDealTicketExec.Fields[i].Value;
//      end;
//      cdsDealTicketExecTemp.Post;
//
//      cdsDealTicketExec.Next;
//    end;
//
//    cdsDealTicketAlloc.First;
//    while not cdsDealTicketAlloc.Eof do
//    begin
//      cdsDealTicketAllocTemp.Append;
//      for i := 0 to cdsDealTicketAlloc.FieldCount - 1 do
//      begin
//        oField := cdsDealTicketAllocTemp.FindField(cdsDealTicketAlloc.Fields[i].FieldName);
//        if (oField <> nil) and (oField.FieldKind = fkData) then
//          oField.Value := cdsDealTicketAlloc.Fields[i].Value;
//      end;
//      cdsDealTicketAllocTemp.Post;
//
//      cdsDealTicketAlloc.Next;
//    end;

    OldAvgPrice := cdsDealTicketDEALPRICE.AsFloat;
    OldID := cdsDealTicketDEALTICKETID.AsLargeInt;

    cdsDealTicket.Edit;
    if oForm.ShowModal = mrOK then
    begin
      with dmGlobal.IntDataLookup do
      begin
        if cdsLuTradingAccount.Locate('ACCID', cdsDealTicketACCID.AsInteger, []) then
        begin
          cdsLuAccountByEntity.Close;
          cdsLuAccountByEntity.Params[0].AsInteger := cdsLuTradingAccountENTTID.AsInteger;
          cdsLuAccountByEntity.Open;
        end;
      end;

      cdsFacilitationTrade.Close;
      cdsFacilitationTrade.Params[0].AsInteger := -1;
      cdsFacilitationTrade.Open;

      cdsDealTicketDEALTICKETID.ReadOnly := False;

      sUser := dmGlobal.UserID;
      processDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

      cdsSplitDetailAlloc.First;
      while not cdsSplitDetailAlloc.Eof do
      begin
        tempSplitQty := cdsSplitDetailAllocAQTY.AsLargeInt;
        sisaSplitQty := cdsSplitDetailAllocAQTY.AsLargeInt;

        cdsDealTicketExecTemp.Close;
        cdsDealTicketExecTemp.CreateDataSet;

        if cdsDealTicket.Locate('DEALTICKETID', OldID, []) then
        begin
          cdsDealTicketExec.Last;

          while (not cdsDealTicketExec.Bof) and (sisaSplitQty > 0) do
          begin
            if (cdsDealTicketExecEXQTY.AsLargeInt <= sisaSplitQty) then
            begin
              cdsDealTicketExecTemp.Append;
              for i := 0 to cdsDealTicketExec.FieldCount - 1 do
              begin
                oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[i].FieldName);
                if (oField <> nil) and (oField.FieldKind = fkData) then
                  oField.Value := cdsDealTicketExec.Fields[i].Value;
              end;
              cdsDealTicketExecTemp.Post;

              sisaSplitQty := sisaSplitQty - cdsDealTicketExecEXQTY.AsLargeInt;

              cdsDealTicketExec.Delete;
              cdsDealTicketExec.Last;
            end
            else
            begin
              cdsDealTicketExecTemp.Append;
              for i := 0 to cdsDealTicketExec.FieldCount - 1 do
              begin
                oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[i].FieldName);
                if (oField <> nil) and (oField.FieldKind = fkData) then
                  oField.Value := cdsDealTicketExec.Fields[i].Value;
              end;
              cdsDealTicketExecTempEXQTY.AsLargeInt := sisaSplitQty;
              cdsDealTicketExecTempEXVALUE.AsFloat := cdsDealTicketExecTempEXQTY.AsLargeInt * cdsDealTicketExecTempEXPRICE.AsFloat;
              cdsDealTicketExecTemp.Post;

              cdsDealTicketExec.Edit;
              cdsDealTicketExecEXQTY.AsLargeInt := cdsDealTicketExecEXQTY.AsLargeInt - sisaSplitQty;
              cdsDealTicketExec.Post;

              sisaSplitQty := 0;
            end;
          end;
        end;

        cdsDealTicket.Append;
        cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
//        cdsDealTicketDEALTICKETCODE.AsString := Format('%.20d', [cdsDealTicketDEALTICKETID.Value]);
        cdsDealTicketDEALTICKETDATE.AsDateTime := cdsDealTicketTemp.FieldByName('DEALTICKETDATE').AsDateTime;
        cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
          cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
        cdsDealTicketACCID.AsInteger := cdsDealTicketTemp.FieldByName('ACCID').AsInteger;
        cdsDealTicketACCNO.AsString := cdsDealTicketTemp.FieldByName('ACCNO').AsString;
        cdsDealTicketACCNAME.AsString := cdsDealTicketTemp.FieldByName('ACCNAME').AsString;
        cdsDealTicketSTOCKID.AsLargeInt := cdsDealTicketTemp.FieldByName('STOCKID').AsLargeInt;
        cdsDealTicketSTOCKCODE.AsString := cdsDealTicketTemp.FieldByName('STOCKCODE').AsString;
        cdsDealTicketSTOCKNAME.AsString := cdsDealTicketTemp.FieldByName('STOCKNAME').AsString;
        cdsDealTicketBS.AsString := cdsDealTicketTemp.FieldByName('BS').AsString;
        cdsDealTicketMARKETCODE.AsString := cdsDealTicketTemp.FieldByName('MARKETCODE').AsString;
        cdsDealTicketCCYCODE.AsString := cdsDealTicketTemp.FieldByName('CCYCODE').AsString;
        cdsDealTicketCHANNELCODE.AsString := cdsDealTicketTemp.FieldByName('CHANNELCODE').AsString;
        cdsDealTicketOMNIBUSTRADE.AsString := cdsDealTicketTemp.FieldByName('OMNIBUSTRADE').AsString;
        cdsDealTicketSALESID.AsLargeInt := cdsDealTicketTemp.FieldByName('SALESID').AsLargeInt;
        cdsDealTicketDEALERID.AsLargeInt := cdsDealTicketTemp.FieldByName('DEALERID').AsLargeInt;
        cdsDealTicketDUESTOCK.AsInteger := cdsSplitDetailAllocDUESTOCK.AsInteger;
        cdsDealTicketDUECASH.AsInteger := cdsSplitDetailAllocDUECASH.AsInteger;
        cdsDealTicketCALC_METHOD.AsString := cdsDealTicketTemp.FieldByName('CALC_METHOD').AsString;
        cdsDealTicketCOMM_RATE.AsFloat := cdsDealTicketTemp.FieldByName('COMM_RATE').AsFloat;
        cdsDealTicketMODDA.AsDateTime := processDateTime;
        cdsDealTicketMODUI.AsString := sUser;
        cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
        cdsDealTicketSTAT.AsString := 'O';
        cdsDealTicketSTATUS.AsString := 'S';//Split Deal Ticket
        cdsDealTicketOLD_DEALTICKETID.AsLargeInt := OldID;
        cdsDealTicket.Post;

        cdsDealTicketExecTemp.First;
        while not cdsDealTicketExecTemp.Eof do
        begin
          cdsDealTicketExec.Append;
          cdsDealTicketExecBOARDID.AsLargeInt := cdsDealTicketExecTemp.FieldByName('BOARDID').AsLargeInt;
          cdsDealTicketExecBROKERCODE.AsString := cdsDealTicketExecTemp.FieldByName('BROKERCODE').AsString;
          cdsDealTicketExecEXQTY.AsLargeInt := cdsDealTicketExecTemp.FieldByName('EXQTY').AsLargeInt;
          cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketExecTemp.FieldByName('EXPRICE').AsFloat;
          cdsDealTicketExecEXTIME.AsDateTime := cdsDealTicketExecTemp.FieldByName('EXTIME').AsDateTime;
          cdsDealTicketExecTRDID.AsString := cdsDealTicketExecTemp.FieldByName('TRDID').AsString;
          cdsDealTicketExecCPACCID.AsInteger := cdsDealTicketExecTemp.FieldByName('CPACCID').AsInteger;
          cdsDealTicketExecDUECASH.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUECASH').AsDateTime;
          cdsDealTicketExecDUESTOCK.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUESTOCK').AsDateTime;
          cdsDealTicketExecCPTYPE.AsString := cdsDealTicketExecTemp.FieldByName('CPTYPE').AsString;
          cdsDealTicketExecMODDA.AsDateTime := processDateTime;
          cdsDealTicketExecMODUI.AsString := sUser;
          cdsDealTicketExecID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET_EXECS');
          cdsDealTicketExec.Post;

          cdsDealTicketExecTemp.Next;
        end;

        {
        if cdsDealTicketDEALPRICE.AsFloat <> cdsSplitDetailAllocAPRICE.AsFloat then
        begin
          with dmGlobal.IntDataLookup do
          begin
            if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
            begin
              if not cdsLuMarketFACILITATION_BOARD.IsNull then
              begin
                if cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'F', []) then
                begin
                  cdsDealTicketExec.Append;
                  cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                  cdsDealTicketExecEXQTY.AsLargeInt := cdsSplitDetailAllocAQTY.AsLargeInt * -1;
                  cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketDEALPRICE.AsFloat;
                  cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                  cdsDealTicketExec.Post;

                  cdsDealTicketExec.Append;
                  cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                  cdsDealTicketExecEXQTY.AsLargeInt := cdsSplitDetailAllocAQTY.AsLargeInt;
                  cdsDealTicketExecEXPRICE.AsFloat := cdsSplitDetailAllocAPRICE.AsFloat;
                  cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                  cdsDealTicketExec.Post;

                  cdsFacilitationTrade.Append;
                  cdsFacilitationTradeFACILITATIONID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_FACILITATION_TRADE');
                  cdsFacilitationTradeFACILITATIONCODE.AsString := cdsDealTicketDEALTICKETCODE.AsString;
                  cdsFacilitationTradeFACILITATIONDESC.AsString := 'Facilitated for trading ' +
                    cdsDealTicketDEALTICKETCODE.AsString + ' @ ' + FormatDateTime('dd MMM yyyy', cdsDealTicketDEALTICKETDATE.AsDateTime);
                  cdsFacilitationTradeDEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
                  cdsFacilitationTradeSEQID.AsInteger := cdsDealTicketExecSEQID.AsInteger;
                  cdsFacilitationTradeDEALTICKETDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
                  cdsFacilitationTradeACCID.AsInteger := cdsDealTicketACCID.AsInteger;
                  cdsFacilitationTradeACCNO.AsString := cdsDealTicketACCNO.AsString;
                  cdsFacilitationTradeACCNAME.AsString := cdsDealTicketACCNAME.AsString;
                  cdsFacilitationTradeSTOCKID.AsLargeInt := cdsDealTicketSTOCKID.AsLargeInt;
                  cdsFacilitationTradeSTOCKCODE.AsString := cdsDealTicketSTOCKCODE.AsString;
                  cdsFacilitationTradeSTOCKNAME.AsString := cdsDealTicketSTOCKNAME.AsString;
                  cdsFacilitationTradeBS.AsString := cdsDealTicketBS.AsString;
                  cdsFacilitationTradeMARKETCODE.AsString := cdsDealTicketMARKETCODE.AsString;
                  cdsFacilitationTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
                  cdsFacilitationTradeQTY.AsLargeInt := cdsDealTicketExecEXQTY.AsLargeInt;
                  cdsFacilitationTradePRICE.AsFloat := cdsDealTicketExecEXPRICE.AsFloat;
                  cdsFacilitationTradeVALUE.AsFloat := cdsDealTicketExecEXVALUE.AsFloat;
                  cdsFacilitationTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
                  cdsFacilitationTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
                  cdsFacilitationTradeLISTED_DATE.AsDateTime := processDateTime;
                  cdsFacilitationTradeSTATUS.AsString := 'O'; //Open
                  cdsFacilitationTradeMODDA.AsDateTime := processDateTime;
                  cdsFacilitationTradeMODUI.AsString := dmGlobal.UserID;
                  cdsFacilitationTradeISDEL.AsInteger := 0;
                  cdsFacilitationTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_FACILITATION_TRADE');
                  cdsFacilitationTrade.Post;
                end;
              end;
            end;
          end;
        end;
        }

        cdsDealTicketAlloc.Append;
        cdsDealTicketAllocACCID.AsInteger := cdsSplitDetailAllocACCID.AsInteger;
        cdsDealTicketAllocAQTY.AsLargeInt := cdsSplitDetailAllocAQTY.AsLargeInt;
        cdsDealTicketAllocAPRICE.AsFloat := cdsSplitDetailAllocAPRICE.AsFloat;
        cdsDealTicketAllocAVALUE.AsFloat := cdsSplitDetailAllocAVALUE.AsFloat;
        cdsDealTicketAllocMODDA.AsDateTime := processDateTime;
        cdsDealTicketAllocMODUI.AsString := sUser;
        cdsDealTicketAllocID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET_ALLOC');
        cdsDealTicketAlloc.Post;

        cdsSplitDetailAlloc.Next;
      end;

      {
      if cdsDealTicket.Locate('DEALTICKETID', OldID, []) then
      begin
        if cdsDealTicketDEALPRICE.AsFloat <> OldAvgPrice then
        begin
          with dmGlobal.IntDataLookup do
          begin
            if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
            begin
              if not cdsLuMarketFACILITATION_BOARD.IsNull then
              begin
                if cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'F', []) then
                begin
                  tempQty := cdsDealTicketDEALQTY.AsLargeInt;

                  cdsDealTicketExec.Append;
                  cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                  cdsDealTicketExecEXQTY.AsLargeInt := tempQty * -1;
                  cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketDEALPRICE.AsFloat;
                  cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                  cdsDealTicketExec.Post;

                  cdsDealTicketExec.Append;
                  cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
                  cdsDealTicketExecEXQTY.AsLargeInt := tempQty;
                  cdsDealTicketExecEXPRICE.AsFloat := OldAvgPrice;
                  cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
                  cdsDealTicketExec.Post;

                  cdsFacilitationTrade.Append;
                  cdsFacilitationTradeFACILITATIONID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_FACILITATION_TRADE');
                  cdsFacilitationTradeFACILITATIONCODE.AsString := cdsDealTicketDEALTICKETCODE.AsString;
                  cdsFacilitationTradeFACILITATIONDESC.AsString := 'Facilitated for trading ' +
                    cdsDealTicketDEALTICKETCODE.AsString + ' @ ' + FormatDateTime('dd MMM yyyy', cdsDealTicketDEALTICKETDATE.AsDateTime);
                  cdsFacilitationTradeDEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
                  cdsFacilitationTradeSEQID.AsInteger := cdsDealTicketExecSEQID.AsInteger;
                  cdsFacilitationTradeDEALTICKETDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
                  cdsFacilitationTradeACCID.AsInteger := cdsDealTicketACCID.AsInteger;
                  cdsFacilitationTradeACCNO.AsString := cdsDealTicketACCNO.AsString;
                  cdsFacilitationTradeACCNAME.AsString := cdsDealTicketACCNAME.AsString;
                  cdsFacilitationTradeSTOCKID.AsLargeInt := cdsDealTicketSTOCKID.AsLargeInt;
                  cdsFacilitationTradeSTOCKCODE.AsString := cdsDealTicketSTOCKCODE.AsString;
                  cdsFacilitationTradeSTOCKNAME.AsString := cdsDealTicketSTOCKNAME.AsString;
                  cdsFacilitationTradeBS.AsString := cdsDealTicketBS.AsString;
                  cdsFacilitationTradeMARKETCODE.AsString := cdsDealTicketMARKETCODE.AsString;
                  cdsFacilitationTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
                  cdsFacilitationTradeQTY.AsLargeInt := cdsDealTicketExecEXQTY.AsLargeInt;
                  cdsFacilitationTradePRICE.AsFloat := cdsDealTicketExecEXPRICE.AsFloat;
                  cdsFacilitationTradeVALUE.AsFloat := cdsDealTicketExecEXVALUE.AsFloat;
                  cdsFacilitationTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
                  cdsFacilitationTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
                  cdsFacilitationTradeLISTED_DATE.AsDateTime := processDateTime;
                  cdsFacilitationTradeSTATUS.AsString := 'O'; //Open
                  cdsFacilitationTradeMODDA.AsDateTime := processDateTime;
                  cdsFacilitationTradeMODUI.AsString := dmGlobal.UserID;
                  cdsFacilitationTradeISDEL.AsInteger := 0;
                  cdsFacilitationTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_FACILITATION_TRADE');
                  cdsFacilitationTrade.Post;
                end;
              end;
            end;
          end;
        end;
      end;
      }

      if cdsDealTicket.ApplyUpdates(0) = 0 then
      begin
        cdsFacilitationTrade.ApplyUpdates(-1);
        actViewListData.Execute;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmDealTickets.actSplitExecExecute(Sender: TObject);
var
  oForm: TfrmSplitExecDealTicket;
  i: Integer;
  oField: TField;
  processDateTime: TDateTime;
  OldID, tempSplitQty, sisaSplitQty: Int64;
begin
  inherited;
  cdsDealTicket.Close;
  cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
  cdsDealTicket.Open;

  if not cdsDealTicketAlloc.IsEmpty then
  begin
    dmGlobal.ErrorMessage('Deal Ticket Allocated!' + #13 +
      'Please delete all allocation before split this order!');
    Exit;
  end;

  cdsSplitExecDeal.Close;
  cdsSplitExecDeal.CreateDataSet;

  cdsSplitExec.Close;
  cdsSplitExec.CreateDataSet;

  oForm := TfrmSplitExecDealTicket.Create(nil);
  Try
    if oForm.ShowModal = mrOk then
    begin
      if not cdsSplitExecDeal.IsEmpty then
      begin
        cdsDealTicketDEALTICKETID.ReadOnly := False;

        if cdsDealTicket.State in dsEditModes then cdsDealTicket.Post;

        cdsSplitExecDeal.First;
        while not cdsSplitExecDeal.Eof do
        begin
          cdsDealTicket.Append;
          for i := 0 to cdsSplitExecDeal.FieldCount - 1 do
          begin
            oField := cdsDealTicket.FindField(cdsSplitExecDeal.Fields[i].FieldName);
            if (oField <> nil) and (oField.FieldKind = fkData)
              and (oField.DataType <> ftDataSet) then
            begin
              oField.Value := cdsSplitExecDeal.Fields[i].Value;
            end;
          end;
          cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
          cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
            cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
          cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
          cdsDealTicketSTAT.AsString := 'O';
          cdsDealTicketSTATUS.Clear;
          cdsDealTicketOLD_DEALTICKETID.Clear;
          cdsDealTicketDEALQTY.AsLargeInt := 0;
          cdsDealTicketDEALPRICE.AsFloat := 0;
          cdsDealTicketDEALVALUE.AsFloat := 0;
          cdsDealTicketALLOCQTY.AsLargeInt := 0;
          cdsDealTicketROUNDPRICE.AsFloat := 0;
          cdsDealTicketROUNDVALUE.AsFloat := 0;
          cdsDealTicketDIFFVALUE.AsFloat := 0;
          cdsDealTicket.Post;

          cdsSplitExec.Filter := 'DEALTICKETID = ' + cdsSplitExecDealDEALTICKETID.AsString;
          cdsSplitExec.Filtered := True;

          cdsSplitExec.First;
          while not cdsSplitExec.Eof do
          begin
            cdsDealTicketExec.Append;
            for i := 0 to cdsSplitExec.FieldCount - 1 do
            begin
              oField := cdsDealTicketExec.FindField(cdsSplitExec.Fields[i].FieldName);
              if (oField <> nil) and (oField.FieldKind = fkData)
                and (oField.DataType <> ftDataSet) and (oField.FieldName <> 'DEALTICKETID') then
              begin
                oField.Value := cdsSplitExec.Fields[i].Value;
              end;
            end;
            cdsDealTicketExec.Post;

            cdsSplitExec.Next;
          end;

          cdsSplitExecDeal.Next;
        end;

        if cdsDealTicket.ApplyUpdates(0) = 0 then
        begin
          cdsDealTicketList.Refresh;
        end;
      end;
    end;
  Finally
    cdsSplitExec.Filtered := False;
    FreeAndNil(oForm);
  End;
end;

procedure TfrmDealTickets.actSplitExecute(Sender: TObject);
var
  oForm: TForm;
  i: Integer;
  oField: TField;
  processDateTime: TDateTime;
  OldID, tempSplitQty, sisaSplitQty: Int64;
label
  Finish;
begin
  inherited;
  cdsDealTicket.Close;
  cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
  cdsDealTicket.Open;

  FSplitQtyRest := cdsDealTicketDEALQTY.AsLargeInt;

  //Request by Irvan 9 Agustus 2015 start
  if not cdsDealTicketAlloc.IsEmpty then
  begin
    dmGlobal.ErrorMessage('Deal Ticket Allocated!' + #13 +
      'Please delete all allocation before split this order!');
    Exit;
  end;
  //Request by Irvan 9 Agustus 2015 end

  cdsSplitDetail.Close;
  cdsSplitDetail.CreateDataSet;

  cdsDealTicket.ReadOnly := True;
  oForm := TfrmSplitDealTicket.Create(nil);
  Try
    if oForm.ShowModal = mrOk then
    begin
      cdsDealTicket.ReadOnly := False;

      cdsDealTicketTemp.Close;
      cdsDealTicketTemp.CreateDataSet;

      cdsDealTicketExecTemp.Close;
      cdsDealTicketExecTemp.CreateDataSet;

      for i := 0 to DataContainer.Keys.Count - 1 do
      begin
        oField := DataContainer.MasterDataset.FindField(DataContainer.Keys[i].FieldName);
        if (oField <> nil) then
          oField.ReadOnly := False;
      end;

      cdsDealTicketTemp.Append;
      for i := 0 to cdsDealTicket.FieldCount - 1 do
      begin
        oField := cdsDealTicketTemp.FindField(cdsDealTicket.Fields[i].FieldName);
        if (oField <> nil) and (oField.FieldKind = fkData) then
          oField.Value := cdsDealTicket.Fields[i].Value;
      end;
      cdsDealTicketTemp.Post;

      cdsDealTicketExec.First;
      while not cdsDealTicketExec.Eof do
      begin
        cdsDealTicketExecTemp.Append;
        for i := 0 to cdsDealTicketExec.FieldCount - 1 do
        begin
          oField := cdsDealTicketExecTemp.FindField(cdsDealTicketExec.Fields[i].FieldName);
          if (oField <> nil) and (oField.FieldKind = fkData) then
            oField.Value := cdsDealTicketExec.Fields[i].Value;
        end;
        cdsDealTicketExecTemp.Post;

        cdsDealTicketExec.Next;
      end;

      processDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
      OldID := cdsDealTicketDEALTICKETID.AsLargeInt;

      cdsDealTicket.Edit;
      cdsDealTicketSTAT.AsString := 'C';
      cdsDealTicketSTATUS.AsString := 'S';
      cdsDealTicketMODDA.AsDateTime := processDateTime;
      cdsDealTicketMODUI.AsString := dmGlobal.UserID;
      cdsDealTicket.Post;

      cdsSplitDetail.First;
      while not cdsSplitDetail.Eof do
      begin
        sisaSplitQty := cdsSplitDetailSPLITQTY.AsLargeInt;

        cdsDealTicket.Append;
        cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
        cdsDealTicketDEALTICKETDATE.AsDateTime := cdsDealTicketTemp.FieldByName('DEALTICKETDATE').AsDateTime;
        cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
          cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
        {Request By Irvan 18 November 2015 Split with different account start}
//        cdsDealTicketACCID.AsInteger := cdsDealTicketTemp.FieldByName('ACCID').AsInteger;
//        cdsDealTicketACCNO.AsString := cdsDealTicketTemp.FieldByName('ACCNO').AsString;
//        cdsDealTicketACCNAME.AsString := cdsDealTicketTemp.FieldByName('ACCNAME').AsString;
        cdsDealTicketACCID.AsInteger := cdsSplitDetailACCID.AsInteger;
        cdsDealTicketACCNO.AsString := cdsSplitDetailACCNO.AsString;
        cdsDealTicketACCNAME.AsString := cdsSplitDetailACCNAME.AsString;
//        cdsDealTicketOMNIBUSTRADE.AsString := cdsDealTicketTemp.FieldByName('OMNIBUSTRADE').AsString;
//        cdsDealTicketSALESID.AsLargeInt := cdsDealTicketTemp.FieldByName('SALESID').AsLargeInt;
        {Request By Irvan 18 November 2015 Split with different account end}
        cdsDealTicketSTOCKID.AsLargeInt := cdsDealTicketTemp.FieldByName('STOCKID').AsLargeInt;
        cdsDealTicketSTOCKCODE.AsString := cdsDealTicketTemp.FieldByName('STOCKCODE').AsString;
        cdsDealTicketSTOCKNAME.AsString := cdsDealTicketTemp.FieldByName('STOCKNAME').AsString;
        cdsDealTicketBS.AsString := cdsDealTicketTemp.FieldByName('BS').AsString;
        cdsDealTicketMARKETCODE.AsString := cdsDealTicketTemp.FieldByName('MARKETCODE').AsString;
        cdsDealTicketCCYCODE.AsString := cdsDealTicketTemp.FieldByName('CCYCODE').AsString;
        cdsDealTicketCHANNELCODE.AsString := cdsDealTicketTemp.FieldByName('CHANNELCODE').AsString;
        cdsDealTicketDEALERID.AsLargeInt := cdsDealTicketTemp.FieldByName('DEALERID').AsLargeInt;
        cdsDealTicketDUESTOCK.AsInteger := cdsDealTicketTemp.FieldByName('DUESTOCK').AsInteger;
        cdsDealTicketDUECASH.AsInteger := cdsDealTicketTemp.FieldByName('DUECASH').AsInteger;
        cdsDealTicketCALC_METHOD.AsString := cdsDealTicketTemp.FieldByName('CALC_METHOD').AsString;
        cdsDealTicketCOMM_RATE.AsFloat := cdsDealTicketTemp.FieldByName('COMM_RATE').AsFloat;
        cdsDealTicketMODDA.AsDateTime := processDateTime;
        cdsDealTicketMODUI.AsString := dmGlobal.UserID;
        cdsDealTicketID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_DEALTICKET');
        cdsDealTicketSTAT.AsString := 'O';
        cdsDealTicketSTATUS.AsString := 'S';//Split Deal Ticket
        cdsDealTicketOLD_DEALTICKETID.AsLargeInt := OldID;
        cdsDealTicketROUNDPRICE.AsFloat := cdsSplitDetailSPLITPRICE.AsFloat;
        cdsDealTicket.Post;

        cdsDealTicketExecTemp.First;

        while (not cdsDealTicketExecTemp.Eof) and (cdsDealTicketDEALQTY.AsLargeInt < cdsSplitDetailSPLITQTY.AsLargeInt) do
        begin
          if (cdsDealTicketExecTempSPLITQTY.AsLargeInt < cdsDealTicketExecTempEXQTY.AsLargeInt) then
          begin
            tempSplitQty := cdsDealTicketExecTempEXQTY.AsLargeInt - cdsDealTicketExecTempSPLITQTY.AsLargeInt;

            cdsDealTicketExec.Append;
            cdsDealTicketExecBOARDID.AsLargeInt := cdsDealTicketExecTemp.FieldByName('BOARDID').AsLargeInt;
            cdsDealTicketExecBROKERCODE.AsString := cdsDealTicketExecTemp.FieldByName('BROKERCODE').AsString;
            if tempSplitQty < sisaSplitQty then
            begin
              cdsDealTicketExecEXQTY.AsLargeInt := tempSplitQty;
              cdsDealTicketExecTemp.Edit;
              cdsDealTicketExecTempSPLITQTY.AsLargeInt := cdsDealTicketExecTempSPLITQTY.AsLargeInt + tempSplitQty;
              cdsDealTicketExecTemp.Post;
              sisaSplitQty := sisaSplitQty - tempSplitQty;
            end
            else
            begin
              cdsDealTicketExecEXQTY.AsLargeInt := sisaSplitQty;
              cdsDealTicketExecTemp.Edit;
              cdsDealTicketExecTempSPLITQTY.AsLargeInt := cdsDealTicketExecTempSPLITQTY.AsLargeInt + sisaSplitQty;
              cdsDealTicketExecTemp.Post;
              sisaSplitQty := 0;
            end;
            cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketExecTemp.FieldByName('EXPRICE').AsFloat;
            cdsDealTicketExecEXTIME.AsDateTime := cdsDealTicketExecTemp.FieldByName('EXTIME').AsDateTime;
            cdsDealTicketExecTRDID.AsString := cdsDealTicketExecTemp.FieldByName('TRDID').AsString;
            cdsDealTicketExecCPACCID.AsInteger := cdsDealTicketExecTemp.FieldByName('CPACCID').AsInteger;
            cdsDealTicketExecDUECASH.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUECASH').AsDateTime;
            cdsDealTicketExecDUESTOCK.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUESTOCK').AsDateTime;
            cdsDealTicketExecCPTYPE.AsString := cdsDealTicketExecTemp.FieldByName('CPTYPE').AsString;
            cdsDealTicketExec.Post;
          end;

          cdsDealTicketExecTemp.Next;
        end;

        //Request 2015, 11 August start
        //Testing hermawan, March 01, 2016
//        if (cdsDealTicketROUNDPRICE.AsFloat <> cdsSplitDetailSPLITPRICE.AsFloat) then
//        begin
//          with dmGlobal.IntDataLookup do
//          begin
//            if cdsLuTradingAccount.Locate('ACCID', cdsDealTicketACCID.AsInteger, []) then
//            begin
//              cdsLuAccountByEntity.Close;
//              cdsLuAccountByEntity.Params[0].AsInteger := cdsLuTradingAccountENTTID.AsInteger;
//              cdsLuAccountByEntity.Open;
//
//              if cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'F', []) then
//              begin
//                cdsDealTicketExec.Append;
//                cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
//                cdsDealTicketExecEXQTY.AsLargeInt := cdsSplitDetailSPLITQTY.AsLargeInt * -1;
//                cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketDEALPRICE.AsFloat;
//                cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
//                cdsDealTicketExec.Post;
//
//                cdsDealTicketExec.Append;
//                cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
//                cdsDealTicketExecEXQTY.AsLargeInt := cdsSplitDetailSPLITQTY.AsLargeInt;
//                cdsDealTicketExecEXPRICE.AsFloat := cdsSplitDetailSPLITPRICE.AsFloat;
//                cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
//                cdsDealTicketExec.Post;
//              end
//              else
//              begin
//                if MessageDlg('Price will be set based on split trade execution, cause this account don''t have facilitation!' +
//                  'Do you want to continue?', mtConfirmation, mbYesNo, 0) <> mrYes then
//                begin
//                  Goto Finish;
//                end;
//              end;
//
//            end;
//          end;
//
//        end;
        //Request 2015, 11 August end

        cdsSplitDetail.Next;

      end;

      if cdsDealTicket.ApplyUpdates(0) = 0 then
        actViewListData.Execute;

    end;

    Finish:

  Finally
    oForm.Free;
    cdsDealTicket.ReadOnly := False;
  End;
end;

procedure TfrmDealTickets.actSplitUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := cdsDealTicketListSTAT.AsString = 'O';
  end;
end;

procedure TfrmDealTickets.actUpdateAutoAllocExecute(Sender: TObject);
var
  sAccID, sDealTicketID: string;
  iAccID, iDealTicketID: Integer;
  i: Integer;
  oDealTicketIDList: TStringList;
  bPermanent: Boolean;
begin
  inherited;

  sAccID        := '';
  sDealTicketID := '';
  iAccID        := 0;
  iDealTicketID := 0;
  bPermanent    := False;

  if MessageDlg('Make the changes into permanent ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then bPermanent := True;

  for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
  begin
    if gvwMaster.Controller.SelectedRows[i].Values[gvwMasterAUTO_ALLOC.Index] = '0' then
    begin
      if bPermanent then
      begin
        if iAccID <> gvwMaster.Controller.SelectedRows[i].Values[gvwMasterACCID.Index] then
        begin
          iAccID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterACCID.Index];

          cdsPermanentAlloc.Close;
          cdsPermanentAlloc.Params[0].AsInteger := iAccID;
          cdsPermanentAlloc.Execute;
        end;
      end;

      if iDealTicketID <> gvwMaster.Controller.SelectedRows[i].Values[gvwMasterDEALTICKETID.Index] then
      begin
        iDealTicketID := gvwMaster.Controller.SelectedRows[i].Values[gvwMasterDEALTICKETID.Index];

        cdsUpdateAutoAlloc.Close;
        cdsUpdateAutoAlloc.Params[0].AsInteger := iDealTicketID;
        cdsUpdateAutoAlloc.Execute;
      end;
    end;
  end;

  cdsDealTicketList.Refresh;
end;

procedure TfrmDealTickets.actUpdateAutoAllocUpdate(Sender: TObject);
begin
  inherited;
  if Sender is TAction then
  begin
    TAction(Sender).Enabled := (cdsDealTicketListAUTO_ALLOC.AsString = '0')
      and (cdsDealTicketListSTAT.AsString = 'O');
  end;
end;

procedure TfrmDealTickets.actViewListDataExecute(Sender: TObject);
begin
  inherited;
  cdsDealTicketList.Close;
  cdsDealTicketList.Params[0].AsDate := DateOf(dtTransDateStart.Date);
  cdsDealTicketList.Params[1].AsDate := DateOf(dtTransDateEnd.Date);

  if VarIsNull(chkFilterByEntity.EditValue) then
    cdsDealTicketList.Params[2].AsInteger := 0
  else
    cdsDealTicketList.Params[2].AsInteger := chkFilterByEntity.EditValue;

  if VarIsNull(luEntity.EditValue) then
    cdsDealTicketList.Params[3].AsInteger := 0
  else
    cdsDealTicketList.Params[3].AsInteger := luEntity.EditValue;

  cdsDealTicketList.Params[4].AsString := dmGlobal.UserID;
  cdsDealTicketList.Open;

//  cdsDealTicketAllocList.Close;
//  cdsDealTicketAllocList.Params[0].AsDate := cdsDealTicketList.Params[0].AsDate;
//  cdsDealTicketAllocList.Params[1].AsDate := cdsDealTicketList.Params[1].AsDate;
//  cdsDealTicketAllocList.Params[2].AsInteger := cdsDealTicketList.Params[2].AsInteger;
//  cdsDealTicketAllocList.Params[3].AsInteger := cdsDealTicketList.Params[3].AsInteger;
//  cdsDealTicketAllocList.Params[4].AsString := cdsDealTicketList.Params[4].AsString;
//  cdsDealTicketAllocList.Open;

end;

procedure TfrmDealTickets.actWarehouseExecute(Sender: TObject);
begin
  inherited;
  FWarehouseCondition := True;
  DataContainer.Edit;
end;

procedure TfrmDealTickets.cdsCrossTomBUYACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccountComm.Close;
    cdsLuAccountComm.Params[0].AsInteger := cdsCrossTomBUYACCID.AsInteger;
    cdsLuAccountComm.Open;

    if cdsLuAccountComm.Locate('MARKETCODE;CHANNELCODE', VarArrayOf([cdsCrossTomMARKETCODE.AsString, cdsCrossTomCHANNELCODE.AsString]), []) then
    begin
      cdsCrossTomBUYCALC_METHOD.AsString := cdsLuAccountCommCALC_METHOD.AsString;
      cdsCrossTomBUYCOMM_RATE.AsFloat    := cdsLuAccountCommCOMM_RATE.AsFloat;
    end;
  end;
end;

procedure TfrmDealTickets.cdsCrossTomDEALQTYChange(Sender: TField);
begin
  inherited;
  if (not cdsCrossTomDEALQTY.IsNull) and (not cdsCrossTomDEALPRICE.IsNull) then
  begin
    cdsCrossTomDEALVALUE.AsFloat := cdsCrossTomDEALQTY.AsFloat * cdsCrossTomDEALPRICE.AsFloat;
  end;
end;

procedure TfrmDealTickets.cdsCrossTomNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCrossTomDEALTICKETDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCrossTomMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
  cdsCrossTomCHANNELCODE.AsString := 'NT';
  cdsCrossTomDUESTOCK.AsInteger := 3;
  cdsCrossTomDUECASH.AsInteger := 3;
end;

procedure TfrmDealTickets.cdsCrossTomSELLACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccountComm.Close;
    cdsLuAccountComm.Params[0].AsInteger := cdsCrossTomSELLACCID.AsInteger;
    cdsLuAccountComm.Open;

    if cdsLuAccountComm.Locate('MARKETCODE;CHANNELCODE', VarArrayOf([cdsCrossTomMARKETCODE.AsString, cdsCrossTomCHANNELCODE.AsString]), []) then
    begin
      cdsCrossTomSELLCALC_METHOD.AsString := cdsLuAccountCommCALC_METHOD.AsString;
      cdsCrossTomSELLCOMM_RATE.AsFloat    := cdsLuAccountCommCOMM_RATE.AsFloat;
    end;
  end;
end;

procedure TfrmDealTickets.cdsCrossTomSTOCKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrument.Locate('INSTRUMENT_ID', Sender.Value, []) then
    begin
      cdsCrossTomSTOCKCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsCrossTomSTOCKNAME.AsString := cdsLuInstrumentSHORTNAME.AsString;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuTradingAccount.Locate('ACCID', Sender.Value, []) then
    begin
      cdsDealTicketACCNO.AsString := cdsLuTradingAccountACCCODE.AsString;
      cdsDealTicketACCNAME.AsString := cdsLuTradingAccountACCNAME.AsString;
      cdsDealTicketOMNIBUSTRADE.AsString := cdsLuTradingAccountOMNIBUSTRADE.AsString;
      cdsDealTicketSALESID.AsLargeInt := cdsLuTradingAccountSALESID.AsLargeInt;
      cdsDealTicketAUTO_ALLOC.AsString := cdsLuTradingAccountAUTO_ALLOC.AsString;
    end;

    cdsLuAllocAccount.Close;
    cdsLuAllocAccount.Params[0].AsString := cdsDealTicketMARKETCODE.AsString;
    cdsLuAllocAccount.Params[1].AsString := cdsDealTicketCHANNELCODE.AsString;
    cdsLuAllocAccount.Params[2].AsString := cdsDealTicketCCYCODE.AsString;
    cdsLuAllocAccount.Params[3].AsInteger := cdsDealTicketACCID.AsInteger;
    cdsLuAllocAccount.Open;

    if (not cdsDealTicketACCID.IsNull) and (not cdsDealTicketCHANNELCODE.IsNull) and (not cdsDealTicketMARKETCODE.IsNull) then
    begin
      if (not cdsLuAccountComm.Active) or (cdsLuAccountComm.Params[0].AsInteger <> cdsDealTicketACCID.AsInteger) then
      begin
        cdsLuAccountComm.Close;
        cdsLuAccountComm.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
        cdsLuAccountComm.Open;
      end;

      if cdsLuAccountComm.Locate('MARKETCODE;CHANNELCODE', VarArrayOf([cdsDealTicketMARKETCODE.AsString, cdsDealTicketCHANNELCODE.AsString]), []) then
      begin
        cdsDealTicketCALC_METHOD.AsString := cdsLuAccountCommCALC_METHOD.AsString;
        cdsDealTicketCOMM_RATE.AsFloat := cdsLuAccountCommCOMM_RATE.AsFloat;
      end;
    end;

  end;
end;

procedure TfrmDealTickets.cdsDealTicketAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsDealTicket.IsEmpty then
  begin
    with dmGlobal.IntDataLookup do
    begin
      cdsLuAllocAccount.Close;
      cdsLuAllocAccount.Params[0].AsString := cdsDealTicketMARKETCODE.AsString;
      cdsLuAllocAccount.Params[1].AsString := cdsDealTicketCHANNELCODE.AsString;
      cdsLuAllocAccount.Params[2].AsString := cdsDealTicketCCYCODE.AsString;
      cdsLuAllocAccount.Params[3].AsInteger := cdsDealTicketACCID.AsInteger;
      cdsLuAllocAccount.Open;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketAllocACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAllocAccount.Locate('ACCID', Sender.Value, []) then
    begin
      cdsDealTicketAllocACCNO.AsString   := cdsLuAllocAccountACCCODE.AsString;
      cdsDealTicketAllocACCNAME.AsString := cdsLuAllocAccountACCNAME.AsString;
      cdsDealTicketAllocEXT_REF.AsString := cdsLuAllocAccountEXTREF_CODE.AsString;
      if (cdsLuAllocAccountCALC_METHOD.IsNull) or (cdsLuAllocAccountCOMM_RATE.IsNull) then
      begin
        cdsDealTicketAllocCALC_METHOD.AsString := cdsDealTicketCALC_METHOD.AsString;
        cdsDealTicketAllocCOMM_RATE.AsFloat := cdsDealTicketCOMM_RATE.AsFloat;
      end
      else
      begin
        cdsDealTicketAllocCALC_METHOD.AsString := cdsLuAllocAccountCALC_METHOD.AsString;
        cdsDealTicketAllocCOMM_RATE.AsFloat := cdsLuAllocAccountCOMM_RATE.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketAllocAQTYChange(Sender: TField);
begin
  inherited;
  cdsDealTicketAllocAVALUE.AsFloat := Round(cdsDealTicketAllocAQTY.AsFloat * cdsDealTicketAllocAPRICE.AsFloat);
  cdsDealTicketAllocADIFFVALUE.AsFloat := cdsDealTicketAllocAVALUE.AsFloat - Round(cdsDealTicketAllocAQTY.AsFloat * cdsDealTicketDEALPRICE.AsFloat);
end;

procedure TfrmDealTickets.cdsDealTicketAllocBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicket.State in dsEditModes) then
    cdsDealTicket.Edit;

  cdsDealTicketALLOCQTY.AsLargeInt := cdsDealTicketALLOCQTY.AsLargeInt - cdsDealTicketAllocAQTY.AsLargeInt;
end;

procedure TfrmDealTickets.cdsDealTicketAllocBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldAllocQty := cdsDealTicketAllocAQTY.AsLargeInt;
end;

procedure TfrmDealTickets.cdsDealTicketAllocBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicket.State in dsEditModes) then
    cdsDealTicket.Edit;

  if cdsDealTicketAlloc.State in [dsInsert] then
  begin
    cdsDealTicketALLOCQTY.AsLargeInt := cdsDealTicketALLOCQTY.AsLargeInt + cdsDealTicketAllocAQTY.AsLargeInt;
  end
  else if cdsDealTicketAlloc.State in [dsEdit] then
  begin
    cdsDealTicketALLOCQTY.AsLargeInt := cdsDealTicketALLOCQTY.AsLargeInt - FOldAllocQty + cdsDealTicketAllocAQTY.AsLargeInt;
  end;

  cdsDealTicketAllocAVALUE.AsFloat := Round(cdsDealTicketAllocAQTY.AsLargeInt * cdsDealTicketAllocAPRICE.AsFloat);

  cdsDealTicketAllocADIFFVALUE.AsFloat := cdsDealTicketAllocAVALUE.AsFloat - Round(cdsDealTicketDEALPRICE.AsFloat * cdsDealTicketAllocAQTY.AsLargeInt);
end;

procedure TfrmDealTickets.cdsDealTicketAllocNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDealTicketAllocAQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt - cdsDealTicketALLOCQTY.AsLargeInt;
  cdsDealTicketAllocAPRICE.AsFloat := cdsDealTicketROUNDPRICE.AsFloat;
end;

procedure TfrmDealTickets.cdsDealTicketAllocXACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (not cdsLuAllocAccount.Active)
      or (cdsLuAllocAccount.Params[0].AsString <> cdsDealTicketXMARKETCODE.AsString)
      or (cdsLuAllocAccount.Params[1].AsString <> cdsDealTicketXCHANNELCODE.AsString)
      or (cdsLuAllocAccount.Params[2].AsString <> cdsDealTicketXCCYCODE.AsString)
      or (cdsLuAllocAccount.Params[3].AsInteger <> cdsDealTicketXACCID.AsInteger) then
    begin
      cdsLuAllocAccount.Close;
      cdsLuAllocAccount.Params[0].AsString := cdsDealTicketXMARKETCODE.AsString;
      cdsLuAllocAccount.Params[1].AsString := cdsDealTicketXCHANNELCODE.AsString;
      cdsLuAllocAccount.Params[2].AsString := cdsDealTicketXCCYCODE.AsString;
      cdsLuAllocAccount.Params[3].AsInteger := cdsDealTicketXACCID.AsInteger;
      cdsLuAllocAccount.Open;
    end;

    if cdsLuAllocAccount.Locate('ACCID', Sender.Value, []) then
    begin
      cdsDealTicketAllocXACCNO.AsString   := cdsLuAllocAccountACCCODE.AsString;
      cdsDealTicketAllocXACCNAME.AsString := cdsLuAllocAccountACCNAME.AsString;
      cdsDealTicketAllocXEXT_REF.AsString := cdsLuAllocAccountEXTREF_CODE.AsString;
      if (cdsLuAllocAccountCALC_METHOD.IsNull) or (cdsLuAllocAccountCOMM_RATE.IsNull) then
      begin
        cdsDealTicketAllocXCALC_METHOD.AsString := cdsDealTicketXCALC_METHOD.AsString;
        cdsDealTicketAllocXCOMM_RATE.AsFloat := cdsDealTicketXCOMM_RATE.AsFloat;
      end
      else
      begin
        cdsDealTicketAllocXCALC_METHOD.AsString := cdsLuAllocAccountCALC_METHOD.AsString;
        cdsDealTicketAllocXCOMM_RATE.AsFloat := cdsLuAllocAccountCOMM_RATE.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketAllocXAQTYChange(Sender: TField);
begin
  inherited;
  cdsDealTicketAllocXAVALUE.AsFloat := Round(cdsDealTicketAllocXAQTY.AsFloat * cdsDealTicketAllocXAPRICE.AsFloat);
  cdsDealTicketAllocXADIFFVALUE.AsFloat := cdsDealTicketAllocXAVALUE.AsFloat - Round(cdsDealTicketAllocXAQTY.AsFloat * cdsDealTicketXDEALPRICE.AsFloat);
end;

procedure TfrmDealTickets.cdsDealTicketAllocXBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicketX.State in dsEditModes) then
    cdsDealTicketX.Edit;

  cdsDealTicketXALLOCQTY.AsLargeInt := cdsDealTicketXALLOCQTY.AsLargeInt - cdsDealTicketAllocXAQTY.AsLargeInt;
end;

procedure TfrmDealTickets.cdsDealTicketAllocXBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldAllocQtyX := cdsDealTicketAllocXAQTY.AsLargeInt;
end;

procedure TfrmDealTickets.cdsDealTicketAllocXBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicketX.State in dsEditModes) then
    cdsDealTicketX.Edit;

  if cdsDealTicketAllocX.State in [dsInsert] then
  begin
    cdsDealTicketXALLOCQTY.AsLargeInt := cdsDealTicketXALLOCQTY.AsLargeInt + cdsDealTicketAllocXAQTY.AsLargeInt;
  end
  else if cdsDealTicketAllocX.State in [dsEdit] then
  begin
    cdsDealTicketXALLOCQTY.AsLargeInt := cdsDealTicketXALLOCQTY.AsLargeInt - FOldAllocQtyX + cdsDealTicketAllocXAQTY.AsLargeInt;
  end;

  cdsDealTicketAllocXAVALUE.AsFloat := Round(cdsDealTicketAllocXAQTY.AsLargeInt * cdsDealTicketAllocXAPRICE.AsFloat);

  cdsDealTicketAllocXADIFFVALUE.AsFloat := cdsDealTicketAllocXAVALUE.AsFloat - Round(cdsDealTicketXDEALPRICE.AsFloat * cdsDealTicketAllocXAQTY.AsLargeInt);

end;

procedure TfrmDealTickets.cdsDealTicketCHANNELCODEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (not cdsDealTicketACCID.IsNull) and (not cdsDealTicketCHANNELCODE.IsNull) and (not cdsDealTicketMARKETCODE.IsNull) then
    begin

      cdsLuAllocAccount.Close;
      cdsLuAllocAccount.Params[0].AsString := cdsDealTicketMARKETCODE.AsString;
      cdsLuAllocAccount.Params[1].AsString := cdsDealTicketCHANNELCODE.AsString;
      cdsLuAllocAccount.Params[2].AsString := cdsDealTicketCCYCODE.AsString;
      cdsLuAllocAccount.Params[3].AsInteger := cdsDealTicketACCID.AsInteger;
      cdsLuAllocAccount.Open;

      if (not cdsLuAccountComm.Active) or (cdsLuAccountComm.Params[0].AsInteger <> cdsDealTicketACCID.AsInteger) then
      begin
        cdsLuAccountComm.Close;
        cdsLuAccountComm.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
        cdsLuAccountComm.Open;
      end;

      if cdsLuAccountComm.Locate('MARKETCODE;CHANNELCODE', VarArrayOf([cdsDealTicketMARKETCODE.AsString, cdsDealTicketCHANNELCODE.AsString]), []) then
      begin
        cdsDealTicketCALC_METHOD.AsString := cdsLuAccountCommCALC_METHOD.AsString;
        cdsDealTicketCOMM_RATE.AsFloat := cdsLuAccountCommCOMM_RATE.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketDEALPRICEChange(Sender: TField);
var
  isRound: Boolean;
begin
  inherited;
  isRound := False;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuTradingAccount.Locate('ACCID', cdsDealTicketACCID.Value, [])) and
      (not cdsDealTicket.ReadOnly) then
    begin
      if not cdsLuTradingAccountAVGPRICEDEC.IsNull then
      begin
        if dmGlobal.CountDecimalPoint(cdsDealTicketDEALPRICE.AsFloat) > cdsLuTradingAccountAVGPRICEDEC.AsInteger then
        begin
          cdsDealTicketROUNDPRICE.AsFloat := dmGlobal.RoundFloatNumber(cdsDealTicketDEALPRICE.AsFloat, cdsLuTradingAccountAVGPRICEDEC.AsInteger);
          isRound := True;
        end;
      end;
    end;

    if not isRound then
      cdsDealTicketROUNDPRICE.AsFloat := cdsDealTicketDEALPRICE.AsFloat;

    if not cdsDealTicketAlloc.IsEmpty then
    begin
      cdsDealTicketAlloc.First;
      while not cdsDealTicketAlloc.Eof do
      begin
        cdsDealTicketAlloc.Edit;
        cdsDealTicketAllocADIFFVALUE.AsFloat := cdsDealTicketAllocAVALUE.AsFloat - Round(cdsDealTicketDEALPRICE.AsFloat * cdsDealTicketAllocAQTY.AsLargeInt);
        cdsDealTicketAlloc.Post;

        cdsDealTicketAlloc.Next;
      end;
    end;
  end;

//  cdsDealTicketROUNDVALUE.AsFloat := Round(cdsDealTicketROUNDPRICE.AsFloat * cdsDealTicketDEALQTY.AsLargeInt);
//  cdsDealTicketDIFFVALUE.AsFloat := cdsDealTicketROUNDVALUE.AsFloat - cdsDealTicketDEALVALUE.AsFloat;
//
//
//  if not cdsDealTicketAlloc.IsEmpty then
//  begin
//    cdsDealTicketAlloc.First;
//    while not cdsDealTicketAlloc.Eof do
//    begin
//      cdsDealTicketAlloc.Edit;
//      cdsDealTicketAllocADIFFVALUE.AsFloat := cdsDealTicketAllocAVALUE.AsFloat - Round(cdsDealTicketAllocAQTY.AsLargeInt * cdsDealTicketROUNDPRICE.AsFloat);
//      cdsDealTicketAlloc.Post;
//      cdsDealTicketAlloc.Next;
//    end;
//  end;

end;

procedure TfrmDealTickets.cdsDealTicketDUECASHChange(Sender: TField);
var
  TrdDateFile: Integer;
begin
  inherited;
  TrdDateFile := DateTimeToFileDate(cdsDealTicketDEALTICKETDATE.AsDateTime);
  cdsDealTicketCDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketDUECASH.AsInteger);
end;

procedure TfrmDealTickets.cdsDealTicketDUESTOCKChange(Sender: TField);
var
  TrdDateFile: Integer;
begin
  inherited;
  TrdDateFile := DateTimeToFileDate(cdsDealTicketDEALTICKETDATE.AsDateTime);
  cdsDealTicketSDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketDUESTOCK.AsInteger);
end;

procedure TfrmDealTickets.cdsDealTicketExecBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicket.State in dsEditModes) then
    cdsDealTicket.Edit;

  cdsDealTicketDEALQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt - cdsDealTicketExecEXQTY.AsLargeInt;
  cdsDealTicketDEALVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat - cdsDealTicketExecEXVALUE.AsLargeInt;

  if cdsDealTicketDEALQTY.AsLargeInt > 0 then
    cdsDealTicketDEALPRICE.AsFloat := cdsDealTicketDEALVALUE.AsFloat / cdsDealTicketDEALQTY.AsFloat
  else
    cdsDealTicketDEALPRICE.AsFloat := 0;
end;

procedure TfrmDealTickets.cdsDealTicketExecBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldQty := cdsDealTicketExecEXQTY.AsLargeInt;
  FOldValue := cdsDealTicketExecEXVALUE.AsFloat;
end;

procedure TfrmDealTickets.cdsDealTicketExecBeforePost(DataSet: TDataSet);
var
  TrdDateFile: Integer;
begin
  inherited;
  if not (cdsDealTicket.State in dsEditModes) then
    cdsDealTicket.Edit;

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBoard.Locate('BOARDID', cdsDealTicketExecBOARDID.Value, []) then
    begin
      if (cdsDealTicketExec.RecordCount > 1)
        or ((cdsDealTicketExec.RecordCount = 1) and (cdsDealTicketExec.State in [dsInsert])) then
      begin
        if (cdsDealTicketCDUEDATE.IsNull) or (cdsDealTicketSDUEDATE.IsNull) then
        begin
          TrdDateFile := DateTimeToFileDate(cdsDealTicketDEALTICKETDATE.AsDateTime);
          cdsDealTicketSDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketDUESTOCK.AsInteger);
          cdsDealTicketCDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketDUECASH.AsInteger);
        end;

        if (cdsDealTicketExecDUECASH.AsDateTime <> cdsDealTicketCDUEDATE.AsDateTime)
          or (cdsDealTicketExecDUESTOCK.AsDateTime <> cdsDealTicketSDUEDATE.AsDateTime) then
        begin
          dmGlobal.ErrorMessage('Execution Trade Due Date must be same with Deal Due Date!');
          Abort;
        end;
      end
      else
      begin
        if cdsDealTicketBS.AsString = 'B' then
        begin
          cdsDealTicketDUESTOCK.AsInteger := cdsLuBoardDUEBUYSTOCK.AsInteger;
          cdsDealTicketDUECASH.AsInteger := cdsLuBoardDUEBUYCASH.AsInteger;
        end
        else
        begin
          cdsDealTicketDUESTOCK.AsInteger := cdsLuBoardDUESELLSTOCK.AsInteger;
          cdsDealTicketDUECASH.AsInteger := cdsLuBoardDUESELLCASH.AsInteger;
        end;
      end;

      if cdsLuBoardCPTYPE.AsString = 'BRK' then
      begin
        if cdsLuAccount.Locate('ACCINIT', cdsDealTicketExecBROKERCODE.Value, []) then
          cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountACCID.AsInteger;
      end
      else
        if cdsDealTicketExecCPACCID.IsNull then
          cdsDealTicketExecCPACCID.AsInteger := cdsLuBoardCPVALUE.AsInteger;
    end;
  end;

  if cdsDealTicketExec.State in [dsInsert] then
  begin
    cdsDealTicketDEALQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt + cdsDealTicketExecEXQTY.AsLargeInt;
    cdsDealTicketDEALVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat + cdsDealTicketExecEXVALUE.AsFloat;
  end
  else if cdsDealTicketExec.State in [dsEdit] then
  begin
    cdsDealTicketDEALQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt - FOldQty + cdsDealTicketExecEXQTY.AsLargeInt;
    cdsDealTicketDEALVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat - FOldValue + cdsDealTicketExecEXVALUE.AsFloat;
  end;

  if cdsDealTicketDEALQTY.AsLargeInt > 0 then
    cdsDealTicketDEALPRICE.AsFloat := cdsDealTicketDEALVALUE.AsFloat / cdsDealTicketDEALQTY.AsFloat
  else
    cdsDealTicketDEALPRICE.AsFloat := 0;

  cdsDealTicketExecEXTIME.AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
end;

procedure TfrmDealTickets.cdsDealTicketExecBOARDIDChange(Sender: TField);
var
  trdDateFile: Integer;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsDealTicketExecCPTYPE.AsString = 'ACT' then
    begin
      if cdsLuBoard.Locate('BOARDID', cdsDealTicketExecBOARDID.Value, []) then
      begin
        cdsDealTicketExecBROKERCODE.Clear;
        cdsDealTicketExecCPACCID.AsInteger := cdsLuBoardCPVALUE.AsInteger;
      end;
    end;

    if cdsLuBoard.Locate('BOARDID', cdsDealTicketExecBOARDID.Value, []) then
    begin
      trdDateFile := DateTimeToFileDate(cdsDealTicketDEALTICKETDATE.AsDateTime);
      if cdsDealTicketBS.AsString = 'B' then
      begin
        cdsDealTicketExecDUECASH.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUEBUYCASH.AsInteger);
        cdsDealTicketExecDUESTOCK.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUEBUYSTOCK.AsInteger);
      end
      else if cdsDealTicketBS.AsString = 'S' then
      begin
        cdsDealTicketExecDUECASH.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUESELLCASH.AsInteger);
        cdsDealTicketExecDUESTOCK.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUESELLSTOCK.AsInteger);
      end;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketExecBROKERCODEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsDealTicketExecCPTYPE.AsString <> 'ACT' then
    begin
      if not cdsLuAccount.Active then
      begin
        cdsLuAccount.Close;
        cdsLuAccount.Open;
      end;

      if not cdsDealTicketExecBROKERCODE.IsNull then
      begin
        if cdsLuAccount.Locate('ACCINIT', cdsDealTicketExecBROKERCODE.Value, []) then
        begin
          cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountACCID.AsInteger;
        end;
      end;

    end;

  end;
end;

procedure TfrmDealTickets.cdsDealTicketExecEXQTYChange(Sender: TField);
begin
  inherited;
  cdsDealTicketExecEXVALUE.AsFloat := cdsDealTicketExecEXQTY.AsFloat * cdsDealTicketExecEXPRICE.AsFloat;
end;

procedure TfrmDealTickets.cdsDealTicketExecXBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicketX.State in dsEditModes) then
    cdsDealTicketX.Edit;

  cdsDealTicketXDEALQTY.AsLargeInt := cdsDealTicketXDEALQTY.AsLargeInt - cdsDealTicketExecXEXQTY.AsLargeInt;
  cdsDealTicketXDEALVALUE.AsFloat := cdsDealTicketXDEALVALUE.AsFloat - cdsDealTicketExecXEXVALUE.AsLargeInt;

  if cdsDealTicketXDEALQTY.AsLargeInt > 0 then
    cdsDealTicketXDEALPRICE.AsFloat := cdsDealTicketXDEALVALUE.AsFloat / cdsDealTicketXDEALQTY.AsFloat
  else
    cdsDealTicketXDEALPRICE.AsFloat := 0;
end;

procedure TfrmDealTickets.cdsDealTicketExecXBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldQtyX := cdsDealTicketExecXEXQTY.AsLargeInt;
  FOldValueX := cdsDealTicketExecXEXVALUE.AsFloat;
end;

procedure TfrmDealTickets.cdsDealTicketExecXBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not (cdsDealTicketX.State in dsEditModes) then
    cdsDealTicketX.Edit;

  cdsDealTicketExecXEXTIME.AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBoard.Locate('BOARDID', cdsDealTicketExecXBOARDID.Value, []) then
    begin
      if cdsLuBoardCPTYPE.AsString = 'BRK' then
      begin
        if cdsLuAccount.Locate('ACCINIT', cdsDealTicketExecXBROKERCODE.Value, []) then
          cdsDealTicketExecXCPACCID.AsInteger := cdsLuAccountACCID.AsInteger;
      end
      else
        if cdsDealTicketExecXCPACCID.IsNull then
          cdsDealTicketExecXCPACCID.AsInteger := cdsLuBoardCPVALUE.AsInteger;
    end;
  end;

  if cdsDealTicketExecX.State in [dsInsert] then
  begin
    cdsDealTicketXDEALQTY.AsLargeInt := cdsDealTicketXDEALQTY.AsLargeInt + cdsDealTicketExecXEXQTY.AsLargeInt;
    cdsDealTicketXDEALVALUE.AsFloat := cdsDealTicketXDEALVALUE.AsFloat + cdsDealTicketExecXEXVALUE.AsFloat;
  end
  else if cdsDealTicketExecX.State in [dsEdit] then
  begin
    cdsDealTicketXDEALQTY.AsLargeInt := cdsDealTicketXDEALQTY.AsLargeInt - FOldQtyX + cdsDealTicketExecXEXQTY.AsLargeInt;
    cdsDealTicketXDEALVALUE.AsFloat := cdsDealTicketXDEALVALUE.AsFloat - FOldValueX + cdsDealTicketExecXEXVALUE.AsFloat;
  end;

  if cdsDealTicketXDEALQTY.AsLargeInt > 0 then
    cdsDealTicketXDEALPRICE.AsFloat := cdsDealTicketXDEALVALUE.AsFloat / cdsDealTicketXDEALQTY.AsFloat
  else
    cdsDealTicketXDEALPRICE.AsFloat := 0;
end;

procedure TfrmDealTickets.cdsDealTicketExecXBOARDIDChange(Sender: TField);
var
  trdDateFile: Integer;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsDealTicketExecXCPTYPE.AsString = 'ACT' then
    begin
      if cdsLuBoard.Locate('BOARDID', cdsDealTicketExecXBOARDID.Value, []) then
      begin
        cdsDealTicketExecXBROKERCODE.Clear;
        cdsDealTicketExecXCPACCID.AsInteger := cdsLuBoardCPVALUE.AsInteger;
      end;
    end;

    if cdsLuBoard.Locate('BOARDID', cdsDealTicketExecXBOARDID.Value, []) then
    begin
      trdDateFile := DateTimeToFileDate(cdsDealTicketXDEALTICKETDATE.AsDateTime);
      if cdsDealTicketXBS.AsString = 'B' then
      begin
        cdsDealTicketExecXDUECASH.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUEBUYCASH.AsInteger);
        cdsDealTicketExecXDUESTOCK.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUEBUYSTOCK.AsInteger);
      end
      else if cdsDealTicketXBS.AsString = 'S' then
      begin
        cdsDealTicketExecXDUECASH.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUESELLCASH.AsInteger);
        cdsDealTicketExecXDUESTOCK.AsDateTime := dmGlobal.RemoteServer.DateAppend(
          trdDateFile, cdsLuBoardDUESELLSTOCK.AsInteger);
      end;
    end;
  end;

end;

procedure TfrmDealTickets.cdsDealTicketExecXBROKERCODEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsDealTicketExecXCPTYPE.AsString <> 'ACT' then
    begin
      if not cdsLuAccount.Active then
      begin
        cdsLuAccount.Close;
        cdsLuAccount.Open;
      end;

      if not cdsDealTicketExecXBROKERCODE.IsNull then
      begin
        if cdsLuAccount.Locate('ACCINIT', cdsDealTicketExecXBROKERCODE.Value, []) then
        begin
          cdsDealTicketExecXCPACCID.AsInteger := cdsLuAccountACCID.AsInteger;
        end;
      end;

    end;

  end;
end;

procedure TfrmDealTickets.cdsDealTicketExecXEXQTYChange(Sender: TField);
begin
  inherited;
  cdsDealTicketExecXEXVALUE.AsFloat := cdsDealTicketExecXEXQTY.AsFloat * cdsDealTicketExecXEXPRICE.AsFloat;
end;

procedure TfrmDealTickets.cdsDealTicketListCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (cdsDealTicketListALLOCQTY.IsNull) or (cdsDealTicketListALLOCQTY.AsLargeInt = 0) then
    cdsDealTicketListALLOCSTAT.AsString := 'No Allocation'
  else if (cdsDealTicketListALLOCQTY.AsLargeInt < cdsDealTicketListDEALQTY.AsLargeInt) and (cdsDealTicketListALLOCQTY.AsLargeInt > 0) then
    cdsDealTicketListALLOCSTAT.AsString := 'Partial Allocation'
  else if (cdsDealTicketListALLOCQTY.AsLargeInt = cdsDealTicketListDEALQTY.AsLargeInt) then
    cdsDealTicketListALLOCSTAT.AsString := 'Full Allocation';
end;

procedure TfrmDealTickets.cdsDealTicketMARKETCODEChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuMarket.Locate('MARKETCODE', Sender.Value, []) then
    begin
      cdsDealTicketCCYCODE.AsString := cdsLuMarketCCY.AsString;
    end;

    if (not cdsDealTicketACCID.IsNull) and (not cdsDealTicketCHANNELCODE.IsNull) and (not cdsDealTicketMARKETCODE.IsNull) then
    begin

      cdsLuAllocAccount.Close;
      cdsLuAllocAccount.Params[0].AsString := cdsDealTicketMARKETCODE.AsString;
      cdsLuAllocAccount.Params[1].AsString := cdsDealTicketCHANNELCODE.AsString;
      cdsLuAllocAccount.Params[2].AsString := cdsDealTicketCCYCODE.AsString;
      cdsLuAllocAccount.Params[3].AsInteger := cdsDealTicketACCID.AsInteger;
      cdsLuAllocAccount.Open;

      if (not cdsLuAccountComm.Active) or (cdsLuAccountComm.Params[0].AsInteger <> cdsDealTicketACCID.AsInteger) then
      begin
        cdsLuAccountComm.Close;
        cdsLuAccountComm.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
        cdsLuAccountComm.Open;
      end;

      if cdsLuAccountComm.Locate('MARKETCODE;CHANNELCODE', VarArrayOf([cdsDealTicketMARKETCODE.AsString, cdsDealTicketCHANNELCODE.AsString]), []) then
      begin
        cdsDealTicketCALC_METHOD.AsString := cdsLuAccountCommCALC_METHOD.AsString;
        cdsDealTicketCOMM_RATE.AsFloat := cdsLuAccountCommCOMM_RATE.AsFloat;
      end;
    end;

  end;
end;

procedure TfrmDealTickets.cdsDealTicketNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDealTicketDEALTICKETDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsDealTicketMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
  cdsDealTicketCHANNELCODE.AsString := 'NT';
  cdsDealTicketOMNIBUSTRADE.AsString := '0';
  cdsDealTicketDUESTOCK.AsInteger := 3;
  cdsDealTicketDUECASH.AsInteger := 3;
end;

procedure TfrmDealTickets.cdsDealTicketROUNDPRICEChange(Sender: TField);
begin
  inherited;
  cdsDealTicketROUNDVALUE.AsFloat := cdsDealTicketDEALQTY.AsLargeInt * cdsDealTicketROUNDPRICE.AsFloat;
  cdsDealTicketDIFFVALUE.AsFloat := cdsDealTicketROUNDVALUE.AsFloat - cdsDealTicketDEALVALUE.AsFloat;
end;

procedure TfrmDealTickets.cdsDealTicketSTOCKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrument.Locate('INSTRUMENT_ID', Sender.Value, []) then
    begin
      cdsDealTicketSTOCKCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsDealTicketSTOCKNAME.AsString := cdsLuInstrumentSHORTNAME.AsString;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketXACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuTradingAccount.Locate('ACCID', Sender.Value, []) then
    begin
      cdsDealTicketXACCNO.AsString := cdsLuTradingAccountACCCODE.AsString;
      cdsDealTicketXACCNAME.AsString := cdsLuTradingAccountACCNAME.AsString;
      cdsDealTicketXOMNIBUSTRADE.AsString := cdsLuTradingAccountOMNIBUSTRADE.AsString;
      cdsDealTicketXSALESID.AsLargeInt := cdsLuTradingAccountSALESID.AsLargeInt;
      cdsDealTicketXAUTO_ALLOC.AsString := cdsLuTradingAccountAUTO_ALLOC.AsString;
    end;

    if (not cdsDealTicketXACCID.IsNull) and (not cdsDealTicketXCHANNELCODE.IsNull)
      and (not cdsDealTicketXMARKETCODE.IsNull) then
    begin
      if (not cdsLuAccountComm.Active) or (cdsLuAccountComm.Params[0].AsInteger <> cdsDealTicketXACCID.AsInteger) then
      begin
        cdsLuAccountComm.Close;
        cdsLuAccountComm.Params[0].AsInteger := cdsDealTicketXACCID.AsInteger;
        cdsLuAccountComm.Open;
      end;

      if cdsLuAccountComm.Locate('MARKETCODE;CHANNELCODE', VarArrayOf([cdsDealTicketXMARKETCODE.AsString, cdsDealTicketXCHANNELCODE.AsString]), []) then
      begin
        cdsDealTicketXCALC_METHOD.AsString := cdsLuAccountCommCALC_METHOD.AsString;
        cdsDealTicketXCOMM_RATE.AsFloat := cdsLuAccountCommCOMM_RATE.AsFloat;
      end;
    end;

  end;

end;

procedure TfrmDealTickets.cdsDealTicketXBeforePost(DataSet: TDataSet);
var
  TrdDateFile: Integer;
begin
  inherited;
  TrdDateFile := DateTimeToFileDate(cdsDealTicketXDEALTICKETDATE.AsDateTime);
  cdsDealTicketXCDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketXDUECASH.AsInteger);
  cdsDealTicketXSDUEDATE.AsDateTime := dmGlobal.RemoteServer.DateAppend(TrdDateFile, cdsDealTicketXDUESTOCK.AsInteger);
end;

procedure TfrmDealTickets.cdsDealTicketXDEALPRICEChange(Sender: TField);
var
  isRound: Boolean;
begin
  inherited;
  isRound := False;
  with dmGlobal.IntDataLookup do
  begin
    if (cdsLuTradingAccount.Locate('ACCID', cdsDealTicketXACCID.Value, [])) and
      (not cdsDealTicketX.ReadOnly) then
    begin
      if not cdsLuTradingAccountAVGPRICEDEC.IsNull then
      begin
        if dmGlobal.CountDecimalPoint(cdsDealTicketXDEALPRICE.AsFloat) > cdsLuTradingAccountAVGPRICEDEC.AsInteger then
        begin
          cdsDealTicketXROUNDPRICE.AsFloat := dmGlobal.RoundFloatNumber(cdsDealTicketXDEALPRICE.AsFloat, cdsLuTradingAccountAVGPRICEDEC.AsInteger);
          isRound := True;
        end;
      end;
    end;

    if not isRound then
      cdsDealTicketXROUNDPRICE.AsFloat := cdsDealTicketXDEALPRICE.AsFloat;
  end;

  cdsDealTicketXROUNDVALUE.AsFloat := Round(cdsDealTicketXROUNDPRICE.AsFloat * cdsDealTicketXDEALQTY.AsLargeInt);
  cdsDealTicketXDIFFVALUE.AsFloat := cdsDealTicketXROUNDVALUE.AsFloat - cdsDealTicketXDEALVALUE.AsFloat;

  if not cdsDealTicketAllocX.IsEmpty then
  begin
    cdsDealTicketAllocX.First;
    while not cdsDealTicketAllocX.Eof do
    begin
      cdsDealTicketAllocX.Edit;
      cdsDealTicketAllocXADIFFVALUE.AsFloat := cdsDealTicketAllocXAVALUE.AsFloat - Round(cdsDealTicketXDEALPRICE.AsFloat * cdsDealTicketAllocXAQTY.AsLargeInt);
      cdsDealTicketAllocX.Post;

      cdsDealTicketAllocX.Next;
    end;
  end;
end;

procedure TfrmDealTickets.cdsDealTicketXNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsDealTicketXDEALTICKETDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsDealTicketXMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
  cdsDealTicketXCHANNELCODE.AsString := 'NT';
  cdsDealTicketXOMNIBUSTRADE.AsString := '0';
  cdsDealTicketXDUESTOCK.AsInteger := 3;
  cdsDealTicketXDUECASH.AsInteger := 3;
end;

procedure TfrmDealTickets.cdsDealTicketXSTOCKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrument.Locate('INSTRUMENT_ID', Sender.Value, []) then
    begin
      cdsDealTicketXSTOCKCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsDealTicketXSTOCKNAME.AsString := cdsLuInstrumentSHORTNAME.AsString;
    end;
  end;

end;

procedure TfrmDealTickets.cdsNegoTomACCIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (not cdsNegoTomACCID.IsNull) and (not cdsNegoTomCHANNELCODE.IsNull) and (not cdsNegoTomMARKETCODE.IsNull) then
    begin
      if (not cdsLuAccountComm.Active) or (cdsLuAccountComm.Params[0].AsInteger <> cdsNegoTomACCID.AsInteger) then
      begin
        cdsLuAccountComm.Close;
        cdsLuAccountComm.Params[0].AsInteger := cdsNegoTomACCID.AsInteger;
        cdsLuAccountComm.Open;
      end;

      if cdsLuAccountComm.Locate('MARKETCODE;CHANNELCODE', VarArrayOf([cdsNegoTomMARKETCODE.AsString, cdsNegoTomCHANNELCODE.AsString]), []) then
      begin
        cdsNegoTomCALC_METHOD.AsString := cdsLuAccountCommCALC_METHOD.AsString;
        cdsNegoTomCOMM_RATE.AsFloat := cdsLuAccountCommCOMM_RATE.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmDealTickets.cdsNegoTomDEALQTYChange(Sender: TField);
begin
  inherited;
  cdsNegoTomDEALVALUE.AsFloat := cdsNegoTomDEALQTY.AsLargeInt * cdsNegoTomDEALPRICE.AsFloat;
end;

procedure TfrmDealTickets.cdsNegoTomNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsNegoTomDEALTICKETDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsNegoTomMARKETCODE.AsString := dmGlobal.RemoteServer.GetDefaultMarket;
  cdsNegoTomCHANNELCODE.AsString := 'NT';
  cdsNegoTomOMNIBUSTRADE.AsString := '0';
  cdsNegoTomDUESTOCK.AsInteger := 3;
  cdsNegoTomDUECASH.AsInteger := 3;
end;

procedure TfrmDealTickets.cdsNegoTomSTOCKIDChange(Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuInstrument.Locate('INSTRUMENT_ID', Sender.Value, []) then
    begin
      cdsNegoTomSTOCKCODE.AsString := cdsLuInstrumentLOCALCODE.AsString;
      cdsNegoTomSTOCKNAME.AsString := cdsLuInstrumentSHORTNAME.AsString;
    end;
  end;
end;

procedure TfrmDealTickets.cdsSplitDetailAllocAPRICEChange(Sender: TField);
begin
  inherited;
  cdsSplitDetailAllocAVALUE.AsFloat := cdsSplitDetailAllocAQTY.AsLargeInt * cdsSplitDetailAllocAPRICE.AsFloat;
end;

procedure TfrmDealTickets.cdsSplitDetailAllocNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSplitDetailAllocDUESTOCK.AsInteger := cdsDealTicketDUESTOCK.AsInteger;
  cdsSplitDetailAllocDUECASH.AsInteger := cdsDealTicketDUECASH.AsInteger;
end;

procedure TfrmDealTickets.cdsSplitDetailBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  FSplitQtyRest := FSplitQtyRest + cdsSplitDetailSPLITQTY.AsLargeInt;
end;

procedure TfrmDealTickets.cdsSplitDetailBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  FOldSplitQty := cdsSplitDetailSPLITQTY.AsLargeInt;
end;

procedure TfrmDealTickets.cdsSplitDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsInsert] then
  begin
    FSplitQtyRest := FSplitQtyRest - cdsSplitDetailSPLITQTY.AsLargeInt;
  end
  else if DataSet.State in [dsEdit] then
  begin
    FSplitQtyRest := FSplitQtyRest + FOldSplitQty - cdsSplitDetailSPLITQTY.AsLargeInt;
  end;
end;

procedure TfrmDealTickets.cdsSplitDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsSplitDetailACCID.AsInteger := cdsDealTicketACCID.AsInteger;
  cdsSplitDetailACCNO.AsString := cdsDealTicketACCNO.AsString;
  cdsSplitDetailACCNAME.AsString := cdsDealTicketACCNAME.AsString;
  cdsSplitDetailSPLITQTY.AsLargeInt := FSplitQtyRest;
  cdsSplitDetailSPLITPRICE.AsFloat := cdsDealTicketROUNDPRICE.AsFloat;
end;

procedure TfrmDealTickets.chkFilterByEntityClick(Sender: TObject);
begin
  inherited;
  lcEntity.Visible := chkFilterByEntity.Checked;
end;

procedure TfrmDealTickets.DataContainerAfterCreateEditorForm(AForm: TForm);
var
  dtServer: TDateTime;
  useCPAcc: Boolean;
  CPAccID: Integer;
begin
  inherited;
  if DataContainer.State = mddsInsert then
  begin
    cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
      cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
  end;

  if not FCrossTomCondition then
  begin
    TfrmDealTicket(AForm).MergeCondition := FMergeCondition;
    TfrmDealTicket(AForm).FacilitationCondition := FFacilitationCondition;
    TfrmDealTicket(AForm).WarehouseCondition := FWarehouseCondition;
  end;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
    begin
      cdsLuAccount.Close;
      cdsLuAccount.Open;
    end
    else
      cdsLuAccount.Refresh;
  end;

  if FMergeCondition then
  begin
//    cdsDealTicketDEALTICKETCODE.AsString := Format('%.20d', [cdsDealTicketDEALTICKETID.Value]);
    cdsDealTicketDEALTICKETDATE.AsDateTime := cdsDealTicketTemp.FieldByName('DEALTICKETDATE').AsDateTime;
    cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
          cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
    cdsDealTicketACCID.AsInteger := cdsDealTicketTemp.FieldByName('ACCID').AsInteger;
    cdsDealTicketACCNO.AsString := cdsDealTicketTemp.FieldByName('ACCNO').AsString;
    cdsDealTicketACCNAME.AsString := cdsDealTicketTemp.FieldByName('ACCNAME').AsString;
    cdsDealTicketSTOCKID.AsLargeInt := cdsDealTicketTemp.FieldByName('STOCKID').AsLargeInt;
    cdsDealTicketSTOCKCODE.AsString := cdsDealTicketTemp.FieldByName('STOCKCODE').AsString;
    cdsDealTicketSTOCKNAME.AsString := cdsDealTicketTemp.FieldByName('STOCKNAME').AsString;
    cdsDealTicketBS.AsString := cdsDealTicketTemp.FieldByName('BS').AsString;
    cdsDealTicketMARKETCODE.AsString := cdsDealTicketTemp.FieldByName('MARKETCODE').AsString;
    cdsDealTicketCCYCODE.AsString := cdsDealTicketTemp.FieldByName('CCYCODE').AsString;
    cdsDealTicketCHANNELCODE.AsString := cdsDealTicketTemp.FieldByName('CHANNELCODE').AsString;
    cdsDealTicketOMNIBUSTRADE.AsString := cdsDealTicketTemp.FieldByName('OMNIBUSTRADE').AsString;
    cdsDealTicketSALESID.AsLargeInt := cdsDealTicketTemp.FieldByName('SALESID').AsLargeInt;
    cdsDealTicketDEALERID.AsLargeInt := cdsDealTicketTemp.FieldByName('DEALERID').AsLargeInt;
    cdsDealTicketDUESTOCK.AsInteger := cdsDealTicketTemp.FieldByName('DUESTOCK').AsInteger;
    cdsDealTicketDUECASH.AsInteger := cdsDealTicketTemp.FieldByName('DUECASH').AsInteger;
    cdsDealTicketSTAT.AsString := 'O';
    cdsDealTicket.Post;

    cdsDealTicketExecTemp.First;
    while not cdsDealTicketExecTemp.Eof do
    begin
      cdsDealTicketExec.Append;
      cdsDealTicketExecBOARDID.AsLargeInt := cdsDealTicketExecTemp.FieldByName('BOARDID').AsLargeInt;
      cdsDealTicketExecBROKERCODE.AsString := cdsDealTicketExecTemp.FieldByName('BROKERCODE').AsString;
      cdsDealTicketExecEXQTY.AsLargeInt := cdsDealTicketExecTemp.FieldByName('EXQTY').AsLargeInt;
      cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketExecTemp.FieldByName('EXPRICE').AsFloat;
      cdsDealTicketExecEXVALUE.AsFloat := cdsDealTicketExecTemp.FieldByName('EXVALUE').AsFloat;
      cdsDealTicketExecEXTIME.AsDateTime := cdsDealTicketExecTemp.FieldByName('EXTIME').AsDateTime;
      cdsDealTicketExecTRDID.AsString := cdsDealTicketExecTemp.FieldByName('TRDID').AsString;
      cdsDealTicketExecCPACCID.AsInteger := cdsDealTicketExecTemp.FieldByName('CPACCID').AsInteger;
      cdsDealTicketExecDUECASH.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUECASH').AsDateTime;
      cdsDealTicketExecDUESTOCK.AsDateTime := cdsDealTicketExecTemp.FieldByName('DUESTOCK').AsDateTime;
      cdsDealTicketExecCPTYPE.AsString := cdsDealTicketExecTemp.FieldByName('CPTYPE').AsString;
      cdsDealTicketExec.Post;

      cdsDealTicketExecTemp.Next;
    end;
  end;

  if FFacilitationCondition then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
      begin
        if not cdsLuMarketFACILITATION_BOARD.IsNull then
        begin
          if cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'F', []) then
          begin
            if (FFacilitationQty = cdsDealTicketDEALQTY.AsLargeInt) then
            begin
              cdsDealTicketExec.Append;
              cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
              cdsDealTicketExecEXQTY.AsLargeInt := FFacilitationQty * -1;
              cdsDealTicketExecEXPRICE.AsFloat := cdsDealTicketDEALPRICE.AsFloat;
              cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
              cdsDealTicketExec.Post;

              cdsDealTicketExec.Append;
              cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
              cdsDealTicketExecEXQTY.AsLargeInt := FFacilitationQty;
              cdsDealTicketExecEXPRICE.AsFloat := FFacilitationPrice;
              cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
              cdsDealTicketExec.Post;
            end
            else
            begin
              cdsDealTicketExec.Append;
              cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketFACILITATION_BOARD.AsLargeInt;
              cdsDealTicketExecEXQTY.AsLargeInt := FFacilitationQty - cdsDealTicketDEALQTY.AsLargeInt;
              cdsDealTicketExecEXPRICE.AsFloat := ((FFacilitationQty * FFacilitationPrice) - cdsDealTicketDEALVALUE.AsFloat) / cdsDealTicketExecEXQTY.AsLargeInt;
              cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
              cdsDealTicketExec.Post;
            end;

            dtServer := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

            cdsFacilitationTrade.Append;
            cdsFacilitationTradeFACILITATIONID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_FACILITATION_TRADE');
            cdsFacilitationTradeFACILITATIONCODE.AsString := cdsDealTicketDEALTICKETCODE.AsString;
            cdsFacilitationTradeFACILITATIONDESC.AsString := 'Facilitated for trading ' +
              cdsDealTicketDEALTICKETCODE.AsString + ' @ ' + FormatDateTime('dd MMM yyyy', cdsDealTicketDEALTICKETDATE.AsDateTime);
            cdsFacilitationTradeDEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
            cdsFacilitationTradeSEQID.AsInteger := cdsDealTicketExecSEQID.AsInteger;
            cdsFacilitationTradeDEALTICKETDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
            cdsFacilitationTradeACCID.AsInteger := cdsDealTicketACCID.AsInteger;
            cdsFacilitationTradeACCNO.AsString := cdsDealTicketACCNO.AsString;
            cdsFacilitationTradeACCNAME.AsString := cdsDealTicketACCNAME.AsString;
            cdsFacilitationTradeSTOCKID.AsLargeInt := cdsDealTicketSTOCKID.AsLargeInt;
            cdsFacilitationTradeSTOCKCODE.AsString := cdsDealTicketSTOCKCODE.AsString;
            cdsFacilitationTradeSTOCKNAME.AsString := cdsDealTicketSTOCKNAME.AsString;
            cdsFacilitationTradeBS.AsString := cdsDealTicketBS.AsString;
            cdsFacilitationTradeMARKETCODE.AsString := cdsDealTicketMARKETCODE.AsString;
            cdsFacilitationTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
            cdsFacilitationTradeQTY.AsLargeInt := cdsDealTicketExecEXQTY.AsLargeInt;
            cdsFacilitationTradePRICE.AsFloat := cdsDealTicketExecEXPRICE.AsFloat;
            cdsFacilitationTradeVALUE.AsFloat := cdsDealTicketExecEXVALUE.AsFloat;
            cdsFacilitationTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
            cdsFacilitationTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
            cdsFacilitationTradeLISTED_DATE.AsDateTime := dtServer;
            cdsFacilitationTradeSTATUS.AsString := 'O'; //Open
            cdsFacilitationTradeMODDA.AsDateTime := dtServer;
            cdsFacilitationTradeMODUI.AsString := dmGlobal.UserID;
            cdsFacilitationTradeISDEL.AsInteger := 0;
            cdsFacilitationTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_FACILITATION_TRADE');
            cdsFacilitationTrade.Post;
          end;
        end;
      end;
    end;
  end;

  if FWarehouseCondition then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'W', []) then
      begin
        cdsDealTicket.Edit;
        cdsDealTicketACCID.AsInteger := cdsLuAccountByEntityACCID.AsInteger;
        cdsDealTicket.Post;

        dtServer := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

        cdsWarehouseTrade.Append;
        cdsWarehouseTradeWAREHOUSEID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_WAREHOUSE_TRADE');
        cdsWarehouseTradeWAREHOUSECODE.AsString := cdsDealTicketDEALTICKETCODE.AsString;
        cdsWarehouseTradeWAREHOUSEDESC.AsString := 'Warehouse for trading ' +
          cdsDealTicketDEALTICKETCODE.AsString + ' @ ' + FormatDateTime('dd MMM yyyy', cdsDealTicketDEALTICKETDATE.AsDateTime);
        cdsWarehouseTradeDEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
        cdsWarehouseTradeDEALTICKETDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
        cdsWarehouseTradeACCID.AsInteger := cdsDealTicketACCID.AsInteger;
        cdsWarehouseTradeACCNO.AsString := cdsDealTicketACCNO.AsString;
        cdsWarehouseTradeACCNAME.AsString := cdsDealTicketACCNAME.AsString;
        cdsWarehouseTradeSTOCKID.AsLargeInt := cdsDealTicketSTOCKID.AsLargeInt;
        cdsWarehouseTradeSTOCKCODE.AsString := cdsDealTicketSTOCKCODE.AsString;
        cdsWarehouseTradeSTOCKNAME.AsString := cdsDealTicketSTOCKNAME.AsString;
        cdsWarehouseTradeBS.AsString := cdsDealTicketBS.AsString;
        cdsWarehouseTradeMARKETCODE.AsString := cdsDealTicketMARKETCODE.AsString;
        cdsWarehouseTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
        cdsWarehouseTradeQTY.AsLargeInt := cdsDealTicketDEALQTY.AsLargeInt;
        cdsWarehouseTradePRICE.AsFloat := cdsDealTicketDEALPRICE.AsFloat;
        cdsWarehouseTradeVALUE.AsFloat := cdsDealTicketDEALVALUE.AsFloat;
        cdsWarehouseTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
        cdsWarehouseTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
        cdsWarehouseTradeLISTED_DATE.AsDateTime := dtServer;
        cdsWarehouseTradeSTATUS.AsString := 'O'; //Open
        cdsWarehouseTradeMODDA.AsDateTime := dtServer;
        cdsWarehouseTradeMODUI.AsString := dmGlobal.UserID;
        cdsWarehouseTradeISDEL.AsInteger := 0;
        cdsWarehouseTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_WAREHOUSE_TRADE');
        cdsWarehouseTrade.Post;
      end;
    end;
  end;

  if FCrossTomCondition then
  begin
    with dmGlobal.IntDataLookup do
    begin
      useCPAcc := False;

      if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
      begin
        if cdsLuBoard.Locate('BOARDID', cdsLuMarketCROSSTOM_BOARD.Value, []) then
        begin
          if cdsLuBoardCPTYPE.AsString = 'ACT' then
          begin
            useCPAcc := True;
            CPAccID := cdsLuBoardCPVALUE.AsInteger;
          end;
        end;

        if not useCPAcc then
        begin
          cdsLuAccountBySubType.Close;
          cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
          cdsLuAccountBySubType.Params[1].AsString := 'X';
          cdsLuAccountBySubType.Open;
        end;

        cdsDealTicketExec.Append;
        cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketCROSSTOM_BOARD.AsLargeInt;
        cdsDealTicketExecEXQTY.AsLargeInt := FCrossTomQty;
        cdsDealTicketExecEXPRICE.AsFloat := FCrossTomPrice;
        if useCPAcc then
          cdsDealTicketExecCPACCID.AsInteger := CPAccID
        else
          cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
        cdsDealTicketExec.Post;

        FCrossTomSeqID := cdsDealTicketExecSEQID.AsInteger;
      end;
    end;

    cdsDealTicket.ReadOnly := True;
    cdsDealTicketExec.ReadOnly := True;

    cdsDealticketTemp.ReadOnly := True;
    cdsDealTicketExecTemp.ReadOnly := True;
  end;

  if FBookOutWarehouseCondition then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
      begin
        cdsBookedOutWarehouseTrade.First;
        while not cdsBookedOutWarehouseTrade.Eof do
        begin
          cdsDealTicketExec.Append;
          cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketWAREHOUSE_BOARD.AsLargeInt;
          cdsDealTicketExecEXQTY.AsLargeInt := cdsBookedOutWarehouseTradeQTY.AsLargeInt;
          cdsDealTicketExecEXPRICE.AsFloat := cdsBookedOutWarehouseTradePRICE.AsFloat;
          cdsDealTicketExecCPACCID.AsInteger := cdsBookedOutWarehouseTradeACCID.AsInteger;
          cdsDealTicketExecDUECASH.AsDateTime := cdsBookedOutWarehouseTradeCDUEDATE.AsDateTime;
          cdsDealTicketExecDUESTOCK.AsDateTime := cdsBookedOutWarehouseTradeSDUEDATE.AsDateTime;
          cdsDealTicketExec.Post;

          cdsBookedOutWarehouseTrade.Edit;
          cdsBookedOutWarehouseTradeBOOKED_DATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
          cdsBookedOutWarehouseTradeBOOKED_DEALTICKETID.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
          cdsBookedOutWarehouseTradeBOOKED_DEALTICKETSEQID.AsInteger := cdsDealTicketExecSEQID.AsInteger;
          cdsBookedOutWarehouseTradeSTATUS.AsString := 'S';
          cdsBookedOutWarehouseTrade.Post;

          cdsBookedOutWarehouseTrade.Next;
        end;
      end;
    end;

  end;
end;

procedure TfrmDealTickets.DataContainerAfterDestroyEditorForm(
  Sender: TNMasterDetailData);
begin
  inherited;
  if Sender.State in [mddsInsert, mddsEdit] then
  begin
    if Sender.ModalResult = mrOk then
    begin
      actViewListData.Execute;
    end;
  end;
end;

procedure TfrmDealTickets.DataContainerAfterEdit(Sender: TNMasterDetailData);
begin
  inherited;
  FSplitCondition := False;
  FFacilitationCondition := False;
  FWarehouseCondition := False;
  FCrossTomCondition := False;
  FBookOutWarehouseCondition := False;

  cdsDealTicket.ReadOnly := False;
  cdsDealTicketExec.ReadOnly := False;
  cdsDealticketTemp.ReadOnly := False;
  cdsDealTicketExecTemp.ReadOnly := False;
end;

procedure TfrmDealTickets.DataContainerAfterInsert(Sender: TNMasterDetailData);
begin
  inherited;
  FMergeCondition := False;
end;

procedure TfrmDealTickets.DataContainerAfterOpenEditorDataset(
  Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  if Sender.State = mddsEdit then
  begin
    if cdsDealTicketSTAT.AsString <> 'O' then
    begin
      AContinue := False;
      MessageDlg('This data status is not open.' + #13 + 'You can''t change this data!', mtInformation, [mbOK], 0);
      FSplitCondition := False;
      FFacilitationCondition := False;
      FWarehouseCondition := False;
      FCrossTomCondition := False;
      FBookOutWarehouseCondition := False;
      FMergeCondition := False;
    end;
  end;
end;

procedure TfrmDealTickets.DataContainerBeforeEdit(Sender: TNMasterDetailData;
  var AContinue: Boolean);
var
  oForm: TForm;
  bMark: TBookmark;
  ctACCID: Integer;
  ctSTOCKID: Int64;
  ctBS: String;
  ctMarket: String;
  i: Integer;
  oField: TField;
  useCPAcc: Boolean;
  CPAccID: Integer;
begin
  inherited;
  //Check if this Deal Ticket was made as Warehouse Trade
  cdsWarehouseTradeByDealTicket.Close;
  cdsWarehouseTradeByDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
  cdsWarehouseTradeByDealTicket.Open;

  if not cdsWarehouseTradeByDealTicket.IsEmpty then
  begin
    AContinue := False;
    MessageDlg('This Deal Ticket was create as Warehouse Trade.' + #13 +
      'You can''t change this deal ticket!', mtWarning, [mbOK], 0);
    Exit;
  end;

  //Do if you want to make facilitation trade
  if FFacilitationCondition then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuTradingAccount.Locate('ACCID', cdsDealTicketListACCID.AsInteger, []) then
      begin
        cdsLuAccountByEntity.Close;
        cdsLuAccountByEntity.Params[0].AsInteger := cdsLuTradingAccountENTTID.AsInteger;
        cdsLuAccountByEntity.Open;

        if not cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'F', []) then
        begin
          MessageDlg('This Account don''t have Facilitation Account.' + #13 +
            'Please create Facilitation Account for this related Account first!', mtWarning, [mbOK], 0);
          AContinue := False;
          FFacilitationCondition := False;
          Exit;
        end;
      end
      else
      begin
        AContinue := False;
        FFacilitationCondition := False;
        Exit;
      end;
    end;

    cdsFacilitationTrade.Close;
    cdsFacilitationTrade.Params[0].AsInteger := 0;
    cdsFacilitationTrade.Open;

    oForm := TfrmFacilitationDealTicket.Create(nil);
    Try
      TfrmFacilitationDealTicket(oForm).edFacQty.EditValue := TfrmFacilitationDealTicket(oForm).edDealQty.EditValue;
      if oForm.ShowModal = mrOK then
      begin
        FFacilitationQty := TfrmFacilitationDealTicket(oForm).edFacQty.EditValue;
        FFacilitationPrice := TfrmFacilitationDealTicket(oForm).edFacPrice.EditValue;
      end
      else
      begin
        AContinue := False;
        FFacilitationCondition := False;
      end;
    Finally
      oForm.Free;
    End;
  end;

  //Do if want to make warehouse trade
  if FWarehouseCondition then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if cdsLuTradingAccount.Locate('ACCID', cdsDealTicketListACCID.AsInteger, []) then
      begin
        cdsLuAccountByEntity.Close;
        cdsLuAccountByEntity.Params[0].AsInteger := cdsLuTradingAccountENTTID.AsInteger;
        cdsLuAccountByEntity.Open;

        if not cdsLuAccountByEntity.Locate('ACCSUBTYPE', 'W', []) then
        begin
          MessageDlg('This Account don''t have Warehouse Account.' + #13 +
            'Please create Warehouse Account for this related Account first!', mtWarning, [mbOK], 0);
          AContinue := False;
          FWarehouseCondition := False;
          Exit;
        end;
      end
      else
      begin
        AContinue := False;
        FWarehouseCondition := False;
        Exit;
      end;
    end;

    cdsWarehouseTrade.Close;
    cdsWarehouseTrade.Params[0].AsInteger := 0;
    cdsWarehouseTrade.Open;
  end;

  //Do if you want to make crossing tomorrow trade
  if FCrossTomCondition then
  begin
    useCPAcc := False;

    with dmGlobal.IntDataLookup do
    begin
      if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketListMARKETCODE.AsString, []) then
      begin
        if cdsLuBoard.Locate('BOARDID', cdsLuMarketCROSSTOM_BOARD.Value, []) then
        begin
          if cdsLuBoardCPTYPE.AsString = 'ACT' then
          begin
            useCPAcc := True;
            CPAccID := cdsLuBoardCPVALUE.AsInteger;
          end;
        end;
      end;

      if not useCPAcc then
      begin
        cdsLuAccountBySubType.Close;
        cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketListACCID.AsInteger;
        cdsLuAccountBySubType.Params[1].AsString := 'X';//Cross Tom Account
        cdsLuAccountBySubType.Open;

        if cdsLuAccountBySubType.IsEmpty then
        begin
          MessageDlg('This Account don''t have Crossing Tomorrow Account.' + #13 +
            'Please create Crossing Tomorrow Account for this related Account first!', mtWarning, [mbOK], 0);
          AContinue := False;
          FCrossTomCondition := False;
          Exit;
        end;
      end;

    end;

    cdsCrossTomChooseList.Close;
    cdsCrossTomChooseList.CreateDataSet;

    cdsDealTicketList.DisableControls;
    Try
      bMark := cdsDealTicketList.GetBookmark;
      ctACCID := cdsDealTicketListACCID.AsInteger;
      ctSTOCKID := cdsDealTicketListSTOCKID.AsLargeInt;
      ctBS := cdsDealTicketListBS.AsString;
      ctMarket := cdsDealTicketListMARKETCODE.AsString;

      cdsDealTicketList.First;
      while not cdsDealTicketList.Eof do
      begin
        if (cdsDealTicketListACCID.AsInteger <> ctACCID)
          and (cdsDealTicketListSTOCKID.AsLargeInt = ctSTOCKID)
          and (cdsDealTicketListBS.AsString <> ctBS)
          and (cdsDealTicketListMARKETCODE.AsString = ctMarket)
          and (cdsDealTicketListSTAT.AsString = 'O') then
        begin
          cdsCrossTomChooseList.Append;
          cdsCrossTomChooseListDEALTICKETID.AsLargeInt := cdsDealTicketListDEALTICKETID.AsLargeInt;
          cdsCrossTomChooseListDEALTICKETCODE.AsString := cdsDealTicketListDEALTICKETCODE.AsString;
          cdsCrossTomChooseListACCID.AsInteger := cdsDealTicketListACCID.AsInteger;
          cdsCrossTomChooseListACCNO.AsString := cdsDealTicketListACCNO.AsString;
          cdsCrossTomChooseListACCNAME.AsString := cdsDealTicketListACCNAME.AsString;
          cdsCrossTomChooseListSTOCKCODE.AsString := cdsDealTicketListSTOCKCODE.AsString;
          cdsCrossTomChooseListSTOCKNAME.AsString := cdsDealTicketListSTOCKNAME.AsString;
          cdsCrossTomChooseListMARKETCODE.AsString := cdsDealTicketListMARKETCODE.AsString;
          cdsCrossTomChooseListCCYCODE.AsString := cdsDealTicketListCCYCODE.AsString;
          cdsCrossTomChooseListDEALQTY.AsLargeInt := cdsDealTicketListDEALQTY.AsLargeInt;
          cdsCrossTomChooseListDEALPRICE.AsFloat := cdsDealTicketListDEALPRICE.AsFloat;
          cdsCrossTomChooseListDEALVALUE.AsFloat := cdsDealTicketListDEALVALUE.AsFloat;
          cdsCrossTomChooseList.Post;
        end;

        cdsDealTicketList.Next;
      end;
    Finally
      cdsDealTicketList.GotoBookmark(bMark);
      cdsDealTicketList.EnableControls;
    End;

//    if cdsCrossTomChooseList.IsEmpty then
//    begin
//      MessageDlg('You can''t create Crossing Tomorrow Trade!' + #13 +
//        'Please create new deal ticket with same stock from another account first!', mtError, [mbOK], 0);
//      AContinue := False;
//      FCrossTomCondition := False;
//      Exit;
//    end;

    oForm := TfrmCrossTomChoose.Create(nil);
    Try
      if cdsCrossTomChooseList.IsEmpty then
      begin
        TfrmCrossTomChoose(oForm).rgBased.EditValue := 'N';
        TfrmCrossTomChoose(oForm).lcNewAccount.Visible := True;
        TfrmCrossTomChoose(oForm).lcCurrentAccount.Visible := False;
      end;

      TfrmCrossTomChoose(oForm).useCPAcc := useCPAcc;

      if oForm.ShowModal = mrOK then
      begin
        if TfrmCrossTomChoose(oForm).rgBased.EditValue = 'C' then
        begin

          FCrossTomDealTicketID := TfrmCrossTomChoose(oForm).cbCrossAccount.EditValue;
          FCrossTomQty := TfrmCrossTomChoose(oForm).edCrossQty.EditValue;
          FCrossTomPrice := TfrmCrossTomChoose(oForm).edCrossPrice.EditValue;

          cdsDealTicket.Close;
          cdsDealTicket.Params[0].AsInteger := FCrossTomDealTicketID;
          cdsDealTicket.Open;

          if not cdsDealTicket.IsEmpty then
          begin
            with dmGlobal.IntDataLookup do
            begin
              if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
              begin
                cdsDealTicketExec.Append;
                cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketCROSSTOM_BOARD.AsLargeInt;
                cdsDealTicketExecEXQTY.AsLargeInt := FCrossTomQty;
                cdsDealTicketExecEXPRICE.AsFloat := FCrossTomPrice;
                if useCPAcc then
                  cdsDealTicketExecCPACCID.AsInteger := CPAccID
                else
                  cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
                cdsDealTicketExec.Post;
              end;
            end;

            cdsDealTicketTemp.Close;
            cdsDealTicketTemp.CreateDataSet;
            cdsDealTicketExecTemp.Close;
            cdsDealTicketExecTemp.CreateDataSet;

            cdsDealTicketTemp.Append;
            for i := 0 to cdsDealTicketTemp.FieldCount - 1 do
            begin
              oField := cdsDealTicket.FindField(cdsDealTicketTemp.Fields[i].FieldName);
              if (oField <> nil) and (oField.FieldKind = fkData) then
                cdsDealTicketTemp.Fields[i].Value := oField.Value;
            end;
            cdsDealTicketTemp.Post;

            cdsDealTicketExec.First;
            while not cdsDealTicketExec.Eof do
            begin
              cdsDealTicketExecTemp.Append;
              for i := 0 to cdsDealTicketExecTemp.FieldCount - 1 do
              begin
                oField := cdsDealTicketExec.FindField(cdsDealTicketExecTemp.Fields[i].FieldName);
                if (oField <> nil) and (oField.FieldKind = fkData) then
                  cdsDealTicketExecTemp.Fields[i].Value := oField.Value;
              end;
              cdsDealTicketExecTemp.Post;

              cdsDealTicketExec.Next;
            end;

            cdsDealTicket.Cancel;

          end;

        end

        else if TfrmCrossTomChoose(oForm).rgBased.EditValue = 'N' then
        begin
          FCrossTomQty := TfrmCrossTomChoose(oForm).edCrossQty.EditValue;
          FCrossTomPrice := TfrmCrossTomChoose(oForm).edCrossPrice.EditValue;

          cdsDealTicket.Close;
          cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
          cdsDealTicket.Open;

          if not cdsDealTicket.IsEmpty then
          begin
            while not cdsDealTicketExec.IsEmpty do
            begin
              cdsDealTicketExec.Delete;
            end;

            while not cdsDealTicketAlloc.IsEmpty do
            begin
              cdsDealTicketAlloc.Delete;
            end;

            cdsDealTicket.Edit;
            if cdsDealTicketDEALTICKETID.ReadOnly then
              cdsDealTicketDEALTICKETID.ReadOnly := False;
            cdsDealTicketDEALTICKETID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_DEALTICKET');
            cdsDealTicketDEALTICKETCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
              cdsDealTicketDEALTICKETDATE.AsDateTime, 'DT', 'TBL_B_DEALTICKET');
            cdsDealTicketACCID.AsInteger := TfrmCrossTomChoose(oForm).AccID;
            cdsDealTicketACCNO.AsString := TfrmCrossTomChoose(oForm).AccNo;
            cdsDealTicketACCNAME.AsString := TfrmCrossTomChoose(oForm).edAccountName.Text;
            if cdsDealTicketBS.AsString = 'B' then
              cdsDealTicketBS.AsString := 'S'
            else
              cdsDealTicketBS.AsString := 'B';
            cdsDealTicket.Post;


            FCrossTomDealTicketID := cdsDealTicketDEALTICKETID.AsLargeInt;

            with dmGlobal.IntDataLookup do
            begin
              if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
              begin
                cdsDealTicketExec.Append;
                cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketCROSSTOM_BOARD.AsLargeInt;
                cdsDealTicketExecEXQTY.AsLargeInt := FCrossTomQty;
                cdsDealTicketExecEXPRICE.AsFloat := FCrossTomPrice;
                if useCPAcc then
                  cdsDealTicketExecCPACCID.AsInteger := CPAccID
                else
                  cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
                cdsDealTicketExec.Post;
              end;
            end;

            cdsDealTicketTemp.Close;
            cdsDealTicketTemp.CreateDataSet;
            cdsDealTicketExecTemp.Close;
            cdsDealTicketExecTemp.CreateDataSet;

            cdsDealTicketTemp.Append;
            for i := 0 to cdsDealTicketTemp.FieldCount - 1 do
            begin
              oField := cdsDealTicket.FindField(cdsDealTicketTemp.Fields[i].FieldName);
              if (oField <> nil) and (oField.FieldKind = fkData) then
                cdsDealTicketTemp.Fields[i].Value := oField.Value;
            end;
            cdsDealTicketTemp.Post;

            cdsDealTicketExec.First;
            while not cdsDealTicketExec.Eof do
            begin
              cdsDealTicketExecTemp.Append;
              for i := 0 to cdsDealTicketExecTemp.FieldCount - 1 do
              begin
                oField := cdsDealTicketExec.FindField(cdsDealTicketExecTemp.Fields[i].FieldName);
                if (oField <> nil) and (oField.FieldKind = fkData) then
                  cdsDealTicketExecTemp.Fields[i].Value := oField.Value;
              end;
              cdsDealTicketExecTemp.Post;

              cdsDealTicketExec.Next;
            end;

            cdsDealTicket.Cancel;

          end;

        end;

      end
      else
      begin
        AContinue := False;
        FCrossTomCondition := False;
      end;

    Finally
      oForm.Free;
    End;
  end;
end;

procedure TfrmDealTickets.DataContainerBeforePost(Sender: TNMasterDetailData;
  var AContinue: Boolean);
begin
  inherited;
  if Sender.State = mddsInsert then
  begin
    Sender.MasterDataset.FieldByName('STAT').AsString := 'O';
    Sender.MasterDataset.FieldByName('STATUS').Clear;
    Sender.MasterDataset.FieldByName('POSTED').Clear;
  end;
end;

procedure TfrmDealTickets.DataContainerCommitTransaction(
  Sender: TNMasterDetailData);
var
  i, RecIdx: Integer;
  tempDealTicketID, tempID: Int64;
  tempSeqID: Integer;
  serverTime: TDateTime;
  oField: TField;
  useCPAcc: Boolean;
  CPAccID: Integer;
begin
  if FMergeCondition then
  begin
    FMergeCondition := False;

    tempDealTicketID := cdsDealTicketDEALTICKETID.AsLargeInt;
    tempID := cdsDealTicketID.AsLargeInt;

    for i := 0 to gvwMaster.Controller.SelectedRowCount - 1 do
    begin
      RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
      gvwMaster.DataController.FocusedRecordIndex := RecIdx;

      cdsDealTicket.Close;
      cdsDealTicket.Params[0].AsInteger := cdsDealTicketListDEALTICKETID.AsInteger;
      cdsDealTicket.Open;

      cdsDealTicket.Edit;
      cdsDealTicketSTAT.AsString := 'C';//Cancel Deal Ticket
      cdsDealTicketSTATUS.AsString := 'M';//Merge Deal Ticket
      cdsDealTicketOLD_DEALTICKETID.AsLargeInt := tempDealTicketID;
      cdsDealTicketID.AsLargeInt := tempID;
      cdsDealTicket.Post;
      cdsDealTicket.ApplyUpdates(-1);
    end;
  end;

  if FFacilitationCondition then
  begin
    cdsFacilitationTrade.ApplyUpdates(-1);
  end;

  if FWarehouseCondition then
  begin
    cdsWarehouseTrade.ApplyUpdates(-1);
  end;

  if FBookOutWarehouseCondition then
  begin
    cdsBookedOutWarehouseTrade.ApplyUpdates(-1);
  end;

  if FCrossTomCondition then
  begin
    cdsDealTicket.ReadOnly := False;
    cdsDealTicketExec.ReadOnly := False;
    cdsDealticketTemp.ReadOnly := False;
    cdsDealTicketExecTemp.ReadOnly := False;

    serverTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

    cdsDealTicket.Close;
    cdsDealTicket.Params[0].AsInteger := cdsDealTicketTempDEALTICKETID.AsInteger;
    cdsDealTicket.Open;

    if cdsDealTicket.IsEmpty then
    begin
      cdsDealTicket.Append;
      for i := 0 to cdsDealTicket.FieldCount - 1 do
      begin
        oField := cdsDealTicketTemp.FindField(cdsDealTicket.Fields[i].FieldName);
        if (oField <> nil) and (oField.FieldKind = fkData) then
        begin
          if cdsDealTicket.Fields[i].ReadOnly then
          begin
            cdsDealTicket.Fields[i].ReadOnly := False;
            cdsDealTicket.Fields[i].Value := oField.Value;
            cdsDealTicket.Fields[i].ReadOnly := True;
          end
          else
            cdsDealTicket.Fields[i].Value := oField.Value;
        end;
      end;
      cdsDealTicketDEALQTY.Clear;
      cdsDealTicketDEALPRICE.Clear;
      cdsDealTicketDEALVALUE.Clear;
      cdsDealTicketALLOCQTY.Clear;
      cdsDealTicket.Post;
    end;

    with dmGlobal.IntDataLookup do
    begin
      useCPAcc := False;

      if cdsLuMarket.Locate('MARKETCODE', cdsDealTicketMARKETCODE.Value, []) then
      begin
        if cdsLuBoard.Locate('BOARDID', cdsLuMarketCROSSTOM_BOARD.Value, []) then
        begin
          if cdsLuBoardCPTYPE.AsString = 'ACT' then
          begin
            useCPAcc := True;
            CPAccID := cdsLuBoardCPVALUE.AsInteger;
          end;
        end;

        if not useCPAcc then
        begin
          cdsLuAccountBySubType.Close;
          cdsLuAccountBySubType.Params[0].AsInteger := cdsDealTicketACCID.AsInteger;
          cdsLuAccountBySubType.Params[1].AsString := 'X';
          cdsLuAccountBySubType.Open;
        end;

        cdsDealTicketExec.Append;
        cdsDealTicketExecBOARDID.AsLargeInt := cdsLuMarketCROSSTOM_BOARD.AsLargeInt;
        cdsDealTicketExecEXQTY.AsLargeInt := FCrossTomQty;
        cdsDealTicketExecEXPRICE.AsFloat := FCrossTomPrice;
        if useCPAcc then
          cdsDealTicketExecCPACCID.AsInteger := CPAccID
        else
          cdsDealTicketExecCPACCID.AsInteger := cdsLuAccountBySubTypeACCID.AsInteger;
        cdsDealTicketExecMODDA.AsDateTime := serverTime;
        cdsDealTicketExecMODUI.AsString := dmGlobal.UserID;
        cdsDealTicketExec.Post;
        tempSeqID := cdsDealTicketExecSEQID.AsInteger;
      end;
    end;

    cdsDealTicket.Edit;
    cdsDealTicketMODDA.AsDateTime := serverTime;
    cdsDealTicketMODUI.AsString := dmGlobal.UserID;
    cdsDealTicket.Post;

    cdsDealTicket.ApplyUpdates(-1);

    cdsCrossTomTrade.Close;
    cdsCrossTomTrade.Params[0].AsInteger := 0;
    cdsCrossTomTrade.Open;

    cdsCrossTomTrade.Append;
    cdsCrossTomTradeCROSSTOMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CROSSTOM_TRADE');
    cdsCrossTomTradeCROSSTOMCODE.AsString := cdsDealTicketListDEALTICKETID.AsString +
      ' Crossing With ' + cdsDealTicketDEALTICKETID.AsString;
    cdsCrossTomTradeCROSSTOMDESC.AsString := cdsDealTicketListDEALTICKETCODE.AsString +
      ' Crossing With ' + cdsDealTicketDEALTICKETCODE.AsString;

    if cdsDealTicketBS.AsString = 'B' then
    begin
      cdsCrossTomTradeDEALTICKETID_BUY.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
      cdsCrossTomTradeSEQID_BUY.AsInteger := tempSeqID;
      cdsCrossTomTradeDEALTICKETID_SELL.AsLargeInt := cdsDealTicketListDEALTICKETID.AsLargeInt;
      cdsCrossTomTradeSEQID_SELL.AsInteger := FCrossTomSeqID;
      cdsCrossTomTradeACCID_BUY.AsInteger := cdsDealTicketACCID.AsInteger;
      cdsCrossTomTradeACCNO_BUY.AsString := cdsDealTicketACCNO.AsString;
      cdsCrossTomTradeACCNAME_BUY.AsString := cdsDealTicketACCNAME.AsString;
      cdsCrossTomTradeACCID_SELL.AsInteger := cdsDealTicketListACCID.AsInteger;
      cdsCrossTomTradeACCNO_SELL.AsString := cdsDealTicketListACCNO.AsString;
      cdsCrossTomTradeACCNAME_SELL.AsString := cdsDealTicketListACCNAME.AsString;
    end
    else if cdsDealTicketBS.AsString = 'S' then
    begin
      cdsCrossTomTradeDEALTICKETID_BUY.AsLargeInt := cdsDealTicketListDEALTICKETID.AsLargeInt;
      cdsCrossTomTradeSEQID_BUY.AsInteger := FCrossTomSeqID;
      cdsCrossTomTradeDEALTICKETID_SELL.AsLargeInt := cdsDealTicketDEALTICKETID.AsLargeInt;
      cdsCrossTomTradeSEQID_SELL.AsInteger := tempSeqID;
      cdsCrossTomTradeACCID_BUY.AsInteger := cdsDealTicketListACCID.AsInteger;
      cdsCrossTomTradeACCNO_BUY.AsString := cdsDealTicketListACCNO.AsString;
      cdsCrossTomTradeACCNAME_BUY.AsString := cdsDealTicketListACCNAME.AsString;
      cdsCrossTomTradeACCID_SELL.AsInteger := cdsDealTicketACCID.AsInteger;
      cdsCrossTomTradeACCNO_SELL.AsString := cdsDealTicketACCNO.AsString;
      cdsCrossTomTradeACCNAME_SELL.AsString := cdsDealTicketACCNAME.AsString;
    end;

    cdsCrossTomTradeDEALTICKETDATE.AsDateTime := cdsDealTicketDEALTICKETDATE.AsDateTime;
    cdsCrossTomTradeSTOCKID.AsLargeInt := cdsDealTicketSTOCKID.AsLargeInt;
    cdsCrossTomTradeSTOCKCODE.AsString := cdsDealTicketSTOCKCODE.AsString;
    cdsCrossTomTradeSTOCKNAME.AsString := cdsDealTicketSTOCKNAME.AsString;
    cdsCrossTomTradeMARKETCODE.AsString := cdsDealTicketMARKETCODE.AsString;
    cdsCrossTomTradeCCYCODE.AsString := cdsDealTicketCCYCODE.AsString;
    cdsCrossTomTradeQTY.AsLargeInt := FCrossTomQty;
    cdsCrossTomTradePRICE.AsFloat := FCrossTomPrice;
    cdsCrossTomTradeVALUE.AsFloat := FCrossTomQty * FCrossTomPrice;
    cdsCrossTomTradeCDUEDATE.AsDateTime := cdsDealTicketCDUEDATE.AsDateTime;
    cdsCrossTomTradeSDUEDATE.AsDateTime := cdsDealTicketSDUEDATE.AsDateTime;
    cdsCrossTomTradeLISTED_DATE.AsDateTime := serverTime;
    cdsCrossTomTradeSTATUS.AsString := 'O'; //open
    cdsCrossTomTradeMODDA.AsDateTime := serverTime;
    cdsCrossTomTradeMODUI.AsString := dmGlobal.UserID;
    cdsCrossTomTradeISDEL.AsInteger := 0;
    cdsCrossTomTradeID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CROSSTOM_TRADE');
    cdsCrossTomTrade.Post;
    cdsCrossTomTrade.ApplyUpdates(-1);

  end;

  inherited;
end;

procedure TfrmDealTickets.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmDealTicket;

  if FCrossTomCondition then
    AFormClass := TfrmCrossTomDealTicket;
end;

procedure TfrmDealTickets.DataContainerRollbackTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  FMergeCondition := False;
end;

procedure TfrmDealTickets.DataContainerStartTransaction(
  Sender: TNMasterDetailData);
begin
  inherited;
  cdsDealTicket.ReadOnly := False;
  cdsDealTicketExec.ReadOnly := False;
  cdsDealticketTemp.ReadOnly := False;
  cdsDealTicketExecTemp.ReadOnly := False;
end;

procedure TfrmDealTickets.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDateStart.Date := dmGlobal.RemoteServer.GetTransDate;
  dtTransDateEnd.Date := dtTransDateStart.Date;
  chkFilterByEntity.EditValue := 0;
  luEntity.Visible := False;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuEntity.Close;
    cdsLuEntity.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuChannel.Close;
    cdsLuChannel.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;

    cdsLuBoard.Close;
    cdsLuBoard.Open;

    cdsLuBroker.Close;
    cdsLuBroker.Open;

    cdsLuDealer.Close;
    cdsLuDealer.Open;

    cdsLuSales.Close;
    cdsLuSales.Open;

    cdsLuTradingAccount.Close;
    cdsLuTradingAccount.Open;

    cdsluExternalReff.Close;
    cdsluExternalReff.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;
  end;

  actViewListData.Execute;
end;

procedure TfrmDealTickets.gvwMasterCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[gvwMasterSTAT.Index] = 'C') then
  begin
    ACanvas.Font.Color := clRed;
  end
  else if (AViewInfo.GridRecord.Values[gvwMasterSTAT.Index] = 'O') then
  begin
    ACanvas.Font.Color := clBlack;
  end
  else if (AViewInfo.GridRecord.Values[gvwMasterSTAT.Index] = 'S') then
  begin
    ACanvas.Font.Color := clBlue;
  end
  else if (AViewInfo.GridRecord.Values[gvwMasterSTAT.Index] = 'R') then
  begin
    ACanvas.Font.Color := clGreen;
  end;
  inherited;
end;

Initialization
  RegisterClass(TfrmDealTickets);

end.
