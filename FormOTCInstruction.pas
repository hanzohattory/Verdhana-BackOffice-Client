unit FormOTCInstruction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  NReportClient, NDatasetContainer, dxBar, cxClasses, NDatasetAction,
  Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxContainer, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, dxLayoutControl, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxCheckBox,
  Vcl.Grids, Vcl.DBGrids, cxPCdxBarPopupMenu, cxPC, Winapi.ShellAPI,
  Vcl.ExtCtrls, NDatasetGeneral, dxBarBuiltInMenu, System.Actions,
  System.ImageList, dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges, dxScrollbarAnnotations;

type
  TNettingDifferent = class(TObject)
  private
    FQty: integer;
    FAmount: Double;
    FCustoInstrID: Integer;
  public
    property Qty: integer read FQty write FQty;
    property Amount: Double read FAmount write FAmount;
    property CustoInstrID: Integer read FCustoInstrID write fCustoInstrID;
  end;

  TfrmOTCInstruction = class(TfrmBrowseData)
    cdsOTCInstruction: TNClientDataset;
    grdMasterDBBandedTableView1: TcxGridDBBandedTableView;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cmbFilterBy: TcxImageComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    dtFilterDate: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cdsSettleInstr: TNClientDataset;
    actSplit: TNAction;
    Split1: TMenuItem;
    actOTCEdit: TNAction;
    actGenerateRFOPVP: TNAction;
    cdsCBestInstOTC: TNClientDataset;
    N6: TMenuItem;
    GenerateRFOPRVP1: TMenuItem;
    actConfirmBy: TNAction;
    ConfirmBy1: TMenuItem;
    actCancelConfirmBy: TNAction;
    CancelConfirmBy1: TMenuItem;
    actMerger: TNAction;
    Merger1: TMenuItem;
    cdsOTCInstructionOTC_STATUS: TStringField;
    cdsOTCInstructionCREATE_FILE: TStringField;
    cdsOTCInstructionCOUNT_CREATE_FILE: TIntegerField;
    cdsOTCInstructionCBEST_UPLOAD: TStringField;
    cdsOTCInstructionCUSTODY_INSTRID: TLargeintField;
    cdsOTCInstructionCUSTODY_EXTREF: TStringField;
    cdsOTCInstructionTRDDATE: TDateField;
    cdsOTCInstructionDUEDATE: TDateField;
    cdsOTCInstructionSETTLE_SIDE: TStringField;
    cdsOTCInstructionINSTRUCTION: TStringField;
    cdsOTCInstructionACCID: TLargeintField;
    cdsOTCInstructionACCNO: TStringField;
    cdsOTCInstructionACCNAME: TStringField;
    cdsOTCInstructionACCINIT: TStringField;
    cdsOTCInstructionBROKERCODE: TStringField;
    cdsOTCInstructionBROKERMAINACCOUNT: TStringField;
    cdsOTCInstructionCUSTODIANCODE: TStringField;
    cdsOTCInstructionSTOCKID: TLargeintField;
    cdsOTCInstructionSTOCKCODE: TStringField;
    cdsOTCInstructionQTY: TFloatField;
    cdsOTCInstructionCCYCODE: TStringField;
    cdsOTCInstructionEXRATE: TFloatField;
    cdsOTCInstructionAMOUNT: TFloatField;
    cdsOTCInstructionCONFIRM_BY: TStringField;
    cdsOTCInstructionSETTLEDDATE: TDateField;
    cdsOTCInstructionREMARKS: TStringField;
    cdsOTCInstructionPURPOSE: TStringField;
    cdsOTCInstructionTRADE_REF: TStringField;
    cdsOTCInstructionSETTLE_REASON: TStringField;
    gvwMasterOTC_STATUS: TcxGridDBBandedColumn;
    gvwMasterCREATE_FILE: TcxGridDBBandedColumn;
    gvwMasterCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwMasterCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwMasterCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwMasterCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterBROKERCODE: TcxGridDBBandedColumn;
    gvwMasterBROKERMAINACCOUNT: TcxGridDBBandedColumn;
    gvwMasterCUSTODIANCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCONFIRM_BY: TcxGridDBBandedColumn;
    gvwMasterSETTLEDDATE: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    gvwMasterPURPOSE: TcxGridDBBandedColumn;
    gvwMasterTRADE_REF: TcxGridDBBandedColumn;
    gvwMasterSETTLE_REASON: TcxGridDBBandedColumn;
    cdsSettleInstrCUSTODY_INSTRID: TLargeintField;
    cdsSettleInstrCUSTODY_EXTREF: TStringField;
    cdsSettleInstrACCID: TLargeintField;
    cdsSettleInstrACCNO: TStringField;
    cdsSettleInstrACCNAME: TStringField;
    cdsSettleInstrVALUEDATE: TDateField;
    cdsSettleInstrTRDDATE: TDateField;
    cdsSettleInstrSETTLEDATE: TDateField;
    cdsSettleInstrSETTLE_SIDE: TStringField;
    cdsSettleInstrINSTRUCTION_TYPE: TStringField;
    cdsSettleInstrPARTY_CODE: TStringField;
    cdsSettleInstrPARTY_ACC: TStringField;
    cdsSettleInstrCOUNTER_CODE: TStringField;
    cdsSettleInstrCOUNTER_ACC: TStringField;
    cdsSettleInstrSECURITYCODE_TYPE: TStringField;
    cdsSettleInstrSTOCKID: TLargeintField;
    cdsSettleInstrSTOCKCODE: TStringField;
    cdsSettleInstrQTY: TFloatField;
    cdsSettleInstrCCY: TStringField;
    cdsSettleInstrORIGINAL_AMT: TFloatField;
    cdsSettleInstrSETTLE_AMOUNT: TFloatField;
    cdsSettleInstrREMARKS: TStringField;
    cdsSettleInstrPURPOSE: TStringField;
    cdsSettleInstrTRADE_REF: TStringField;
    cdsSettleInstrSETTLE_REASON: TStringField;
    cdsSettleInstrBENEFICIARYCODE: TStringField;
    cdsSettleInstrBENEFICIARYACC: TStringField;
    cdsSettleInstrCORPACT_TYPE: TStringField;
    cdsSettleInstrLINKTYPE: TStringField;
    cdsSettleInstrLINKID: TLargeintField;
    cdsSettleInstrCONFIRM_BY: TStringField;
    cdsSettleInstrCREATE_FILE: TStringField;
    cdsSettleInstrCOUNT_CREATE_FILE: TIntegerField;
    cdsSettleInstrCBEST_UPLOAD: TStringField;
    cdsSettleInstrSTAT: TStringField;
    cdsSettleInstrMODDA: TDateTimeField;
    cdsSettleInstrMODUI: TStringField;
    cdsSettleInstrAPPDA: TDateTimeField;
    cdsSettleInstrAPPUI: TStringField;
    cdsSettleInstrUNDER4Y: TIntegerField;
    cdsSettleInstrUNDER4YDA: TDateTimeField;
    cdsSettleInstrNOTES4Y: TStringField;
    cdsSettleInstrISDEL: TIntegerField;
    cdsSettleInstrID: TLargeintField;
    cdsSettleInstrCUSTODY_DESC: TStringField;
    cdsOTCInstructionCUSTODY_DESC: TStringField;
    gvwMasterCUSTODY_DESC: TcxGridDBBandedColumn;
    actSettleOLTInstr: TNAction;
    Settle1: TMenuItem;
    cdsCustodyLink: TNClientDataset;
    cdsCustodyLinkCUSTODY_INSTRID: TLargeintField;
    cdsCustodyLinkSIID: TLargeintField;
    cdsCustodyLinkQTY: TFloatField;
    cdsCustodyLinkSETTLE_AMT: TFloatField;
    cdsSettleInstrPARTY_ID: TLargeintField;
    cdsSettleInstrCOUNTER_ID: TLargeintField;
    cdsSettleInstrISMULTICCY: TStringField;
    cdsSettleInstrFOREIGN_CCYCODE: TStringField;
    cdsSettleInstrFOREIGN_EXRATE: TFloatField;
    cdsSettleInstrFOREIGN_SETTTLEAMT: TFloatField;
    cdsSettleInstrSID_NO: TStringField;
    cdsSettleInstrKSEI_RECON: TStringField;
    actSettleCancel: TNAction;
    actSettleReverse: TNAction;
    CancelSettle1: TMenuItem;
    Reverse1: TMenuItem;
    cdsSettleInstrSALDO: TFloatField;
    cdsSettleInstrSALDO_TYPE: TStringField;
    cdsSettleInstrMATCH: TStringField;
    cdsOTCInstructionINSTRUCTION_TYPE_CODE: TStringField;
    cdsOTCInstructionORIGINALAMT: TFloatField;
    cdsOTCInstructionSALDO: TFloatField;
    cdsOTCInstructionSALDO_TYPE: TStringField;
    cdsOTCInstructionMATCH: TStringField;
    gvwMasterINSTRUCTION_TYPE_CODE: TcxGridDBBandedColumn;
    gvwMasterORIGINALAMT: TcxGridDBBandedColumn;
    gvwMasterSALDO: TcxGridDBBandedColumn;
    gvwMasterSALDO_TYPE: TcxGridDBBandedColumn;
    gvwMasterMATCH: TcxGridDBBandedColumn;
    actManualPreMatch: TNAction;
    actUploadPreMatch: TNAction;
    OpenDialog: TOpenDialog;
    N7: TMenuItem;
    PreMatchManual1: TMenuItem;
    PreMatchUpload1: TMenuItem;
    actSettleByCBest: TNAction;
    SettleByCBest1: TMenuItem;
    actNetting: TNAction;
    NettingCustody1: TMenuItem;
    cdsTmpSettleInstr: TNClientDataset;
    cdsTmpSettleInstrCUSTODY_INSTRID: TLargeintField;
    cdsTmpSettleInstrCUSTODY_EXTREF: TStringField;
    cdsTmpSettleInstrACCID: TLargeintField;
    cdsTmpSettleInstrACCNO: TStringField;
    cdsTmpSettleInstrACCNAME: TStringField;
    cdsTmpSettleInstrVALUEDATE: TDateField;
    cdsTmpSettleInstrTRDDATE: TDateField;
    cdsTmpSettleInstrSETTLEDATE: TDateField;
    cdsTmpSettleInstrSETTLE_SIDE: TStringField;
    cdsTmpSettleInstrINSTRUCTION_TYPE: TStringField;
    cdsTmpSettleInstrPARTY_CODE: TStringField;
    cdsTmpSettleInstrPARTY_ACC: TStringField;
    cdsTmpSettleInstrCOUNTER_CODE: TStringField;
    cdsTmpSettleInstrCOUNTER_ACC: TStringField;
    cdsTmpSettleInstrSECURITYCODE_TYPE: TStringField;
    cdsTmpSettleInstrSTOCKID: TLargeintField;
    cdsTmpSettleInstrSTOCKCODE: TStringField;
    cdsTmpSettleInstrQTY: TFloatField;
    cdsTmpSettleInstrCCY: TStringField;
    cdsTmpSettleInstrORIGINAL_AMT: TFloatField;
    cdsTmpSettleInstrSETTLE_AMOUNT: TFloatField;
    cdsTmpSettleInstrREMARKS: TStringField;
    cdsTmpSettleInstrPURPOSE: TStringField;
    cdsTmpSettleInstrTRADE_REF: TStringField;
    cdsTmpSettleInstrSETTLE_REASON: TStringField;
    cdsTmpSettleInstrBENEFICIARYCODE: TStringField;
    cdsTmpSettleInstrBENEFICIARYACC: TStringField;
    cdsTmpSettleInstrCORPACT_TYPE: TStringField;
    cdsTmpSettleInstrLINKTYPE: TStringField;
    cdsTmpSettleInstrLINKID: TLargeintField;
    cdsTmpSettleInstrCONFIRM_BY: TStringField;
    cdsTmpSettleInstrCREATE_FILE: TStringField;
    cdsTmpSettleInstrCOUNT_CREATE_FILE: TIntegerField;
    cdsTmpSettleInstrCBEST_UPLOAD: TStringField;
    cdsTmpSettleInstrSTAT: TStringField;
    cdsTmpSettleInstrMODDA: TDateTimeField;
    cdsTmpSettleInstrMODUI: TStringField;
    cdsTmpSettleInstrAPPDA: TDateTimeField;
    cdsTmpSettleInstrAPPUI: TStringField;
    cdsTmpSettleInstrUNDER4Y: TIntegerField;
    cdsTmpSettleInstrUNDER4YDA: TDateTimeField;
    cdsTmpSettleInstrNOTES4Y: TStringField;
    cdsTmpSettleInstrISDEL: TIntegerField;
    cdsTmpSettleInstrID: TLargeintField;
    cdsTmpSettleInstrCUSTODY_DESC: TStringField;
    cdsTmpSettleInstrPARTY_ID: TLargeintField;
    cdsTmpSettleInstrCOUNTER_ID: TLargeintField;
    cdsTmpSettleInstrISMULTICCY: TStringField;
    cdsTmpSettleInstrFOREIGN_CCYCODE: TStringField;
    cdsTmpSettleInstrFOREIGN_EXRATE: TFloatField;
    cdsTmpSettleInstrFOREIGN_SETTTLEAMT: TFloatField;
    cdsTmpSettleInstrSID_NO: TStringField;
    cdsTmpSettleInstrKSEI_RECON: TStringField;
    cdsTmpSettleInstrSALDO: TFloatField;
    cdsTmpSettleInstrSALDO_TYPE: TStringField;
    cdsTmpSettleInstrMATCH: TStringField;
    actNettingDiff: TNAction;
    NettingDifferentCustody1: TMenuItem;
    TabOTCInstruction: TcxPageControl;
    TabExchage: TcxTabSheet;
    TabNonEchange: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwNonExchange: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwExchange: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    gvwExchangeOTC_STATUS: TcxGridDBBandedColumn;
    gvwExchangeCREATE_FILE: TcxGridDBBandedColumn;
    gvwExchangeCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwExchangeCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwExchangeCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwExchangeCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwExchangeTRDDATE: TcxGridDBBandedColumn;
    gvwExchangeDUEDATE: TcxGridDBBandedColumn;
    gvwExchangeSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwExchangeINSTRUCTION: TcxGridDBBandedColumn;
    gvwExchangeACCID: TcxGridDBBandedColumn;
    gvwExchangeACCNO: TcxGridDBBandedColumn;
    gvwExchangeACCNAME: TcxGridDBBandedColumn;
    gvwExchangeACCINIT: TcxGridDBBandedColumn;
    gvwExchangeBROKERCODE: TcxGridDBBandedColumn;
    gvwExchangeBROKERMAINACCOUNT: TcxGridDBBandedColumn;
    gvwExchangeCUSTODIANCODE: TcxGridDBBandedColumn;
    gvwExchangeSTOCKID: TcxGridDBBandedColumn;
    gvwExchangeSTOCKCODE: TcxGridDBBandedColumn;
    gvwExchangeQTY: TcxGridDBBandedColumn;
    gvwExchangeCCYCODE: TcxGridDBBandedColumn;
    gvwExchangeEXRATE: TcxGridDBBandedColumn;
    gvwExchangeAMOUNT: TcxGridDBBandedColumn;
    gvwExchangeCONFIRM_BY: TcxGridDBBandedColumn;
    gvwExchangeSETTLEDDATE: TcxGridDBBandedColumn;
    gvwExchangeREMARKS: TcxGridDBBandedColumn;
    gvwExchangePURPOSE: TcxGridDBBandedColumn;
    gvwExchangeTRADE_REF: TcxGridDBBandedColumn;
    gvwExchangeSETTLE_REASON: TcxGridDBBandedColumn;
    gvwExchangeCUSTODY_DESC: TcxGridDBBandedColumn;
    gvwExchangeINSTRUCTION_TYPE_CODE: TcxGridDBBandedColumn;
    gvwExchangeORIGINALAMT: TcxGridDBBandedColumn;
    gvwExchangeSALDO: TcxGridDBBandedColumn;
    gvwExchangeSALDO_TYPE: TcxGridDBBandedColumn;
    gvwExchangeMATCH: TcxGridDBBandedColumn;
    gvwExchangeEXCHANGE: TcxGridDBBandedColumn;
    gvwNonExchangeOTC_STATUS: TcxGridDBBandedColumn;
    gvwNonExchangeCREATE_FILE: TcxGridDBBandedColumn;
    gvwNonExchangeCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwNonExchangeCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwNonExchangeCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwNonExchangeCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwNonExchangeTRDDATE: TcxGridDBBandedColumn;
    gvwNonExchangeDUEDATE: TcxGridDBBandedColumn;
    gvwNonExchangeSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwNonExchangeINSTRUCTION: TcxGridDBBandedColumn;
    gvwNonExchangeACCID: TcxGridDBBandedColumn;
    gvwNonExchangeACCNO: TcxGridDBBandedColumn;
    gvwNonExchangeACCNAME: TcxGridDBBandedColumn;
    gvwNonExchangeACCINIT: TcxGridDBBandedColumn;
    gvwNonExchangeBROKERCODE: TcxGridDBBandedColumn;
    gvwNonExchangeBROKERMAINACCOUNT: TcxGridDBBandedColumn;
    gvwNonExchangeCUSTODIANCODE: TcxGridDBBandedColumn;
    gvwNonExchangeSTOCKID: TcxGridDBBandedColumn;
    gvwNonExchangeSTOCKCODE: TcxGridDBBandedColumn;
    gvwNonExchangeQTY: TcxGridDBBandedColumn;
    gvwNonExchangeCCYCODE: TcxGridDBBandedColumn;
    gvwNonExchangeEXRATE: TcxGridDBBandedColumn;
    gvwNonExchangeAMOUNT: TcxGridDBBandedColumn;
    gvwNonExchangeCONFIRM_BY: TcxGridDBBandedColumn;
    gvwNonExchangeSETTLEDDATE: TcxGridDBBandedColumn;
    gvwNonExchangeREMARKS: TcxGridDBBandedColumn;
    gvwNonExchangePURPOSE: TcxGridDBBandedColumn;
    gvwNonExchangeTRADE_REF: TcxGridDBBandedColumn;
    gvwNonExchangeSETTLE_REASON: TcxGridDBBandedColumn;
    gvwNonExchangeCUSTODY_DESC: TcxGridDBBandedColumn;
    gvwNonExchangeINSTRUCTION_TYPE_CODE: TcxGridDBBandedColumn;
    gvwNonExchangeORIGINALAMT: TcxGridDBBandedColumn;
    gvwNonExchangeSALDO: TcxGridDBBandedColumn;
    gvwNonExchangeSALDO_TYPE: TcxGridDBBandedColumn;
    gvwNonExchangeMATCH: TcxGridDBBandedColumn;
    gvwNonExchangeEXCHANGE: TcxGridDBBandedColumn;
    cdsSettleInstrEXCHANGE: TStringField;
    cdsOTCInstructionEXCHANGE: TStringField;
    cdsTmpSettleInstrEXCHANGE: TStringField;
    SaveDialog: TSaveDialog;
    PreMatch1: TMenuItem;
    Netting1: TMenuItem;
    Settle2: TMenuItem;
    cdsOTCInstructionSIDNO: TStringField;
    gvwNonExchangeSIDNO: TcxGridDBBandedColumn;
    cdsOTCInstructionCONFIRM_WITH: TStringField;
    gvwExchangeSIDNO: TcxGridDBBandedColumn;
    gvwExchangeCONFIRM_WITH: TcxGridDBBandedColumn;
    gvwNonExchangeCONFIRM_WITH: TcxGridDBBandedColumn;
    cdsSettleInstrCONFIRM_WITH: TStringField;
    cdsTmpSettleInstrCONFIRM_WITH: TStringField;
    tabCC: TcxTabSheet;
    cdsColWColDS: TNClientDataset;
    dsColWColDS: TDataSource;
    grdColWColDS: TcxGrid;
    gvwColWColDS: TcxGridDBBandedTableView;
    glvColWColDS: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    actGenerateColwColds: TNAction;
    cdsOTCInstructionLINKID: TIntegerField;
    cdsOTCInstructionLINKTYPE: TStringField;
    gvwExchangeLINKID: TcxGridDBBandedColumn;
    gvwExchangeLINKTYPE: TcxGridDBBandedColumn;
    gvwNonExchangeLINKID: TcxGridDBBandedColumn;
    gvwNonExchangeLINKTYPE: TcxGridDBBandedColumn;
    cdsSettleInstrCLIENT_ACCID: TLargeintField;
    Settle3: TMenuItem;
    SettleByCBest2: TMenuItem;
    SettleManual1: TMenuItem;
    Cancel2: TMenuItem;
    Reverse2: TMenuItem;
    cdsColWColDSCBEST_STATUS: TStringField;
    cdsColWColDSCREATE_FILE: TStringField;
    cdsColWColDSCOUNT_CREATE_FILE: TIntegerField;
    cdsColWColDSCBEST_UPLOAD: TStringField;
    cdsColWColDSCUSTODY_INSTRID: TLargeintField;
    cdsColWColDSCUSTODY_EXTREF: TStringField;
    cdsColWColDSTRDDATE: TDateField;
    cdsColWColDSSETTLEMENTDATE: TDateField;
    cdsColWColDSSETTLE_SIDE: TStringField;
    cdsColWColDSINSTRUCTION: TStringField;
    cdsColWColDSACCID: TLargeintField;
    cdsColWColDSACCNO: TStringField;
    cdsColWColDSACCNAME: TStringField;
    cdsColWColDSACCINIT: TStringField;
    cdsColWColDSCCYCODE: TStringField;
    cdsColWColDSSECURITIY_CODE: TStringField;
    cdsColWColDSQTY: TFloatField;
    cdsColWColDSCUSTODY_DESC: TStringField;
    cdsColWColDSREMARKS: TStringField;
    gvwColWColDSCBEST_STATUS: TcxGridDBBandedColumn;
    gvwColWColDSCREATE_FILE: TcxGridDBBandedColumn;
    gvwColWColDSCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwColWColDSCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwColWColDSCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwColWColDSCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwColWColDSTRDDATE: TcxGridDBBandedColumn;
    gvwColWColDSSETTLEMENTDATE: TcxGridDBBandedColumn;
    gvwColWColDSSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwColWColDSINSTRUCTION: TcxGridDBBandedColumn;
    gvwColWColDSACCID: TcxGridDBBandedColumn;
    gvwColWColDSACCNO: TcxGridDBBandedColumn;
    gvwColWColDSACCNAME: TcxGridDBBandedColumn;
    gvwColWColDSACCINIT: TcxGridDBBandedColumn;
    gvwColWColDSPARTY_CODE: TcxGridDBBandedColumn;
    gvwColWColDSCCYCODE: TcxGridDBBandedColumn;
    gvwColWColDSSECURITIY_CODE: TcxGridDBBandedColumn;
    gvwColWColDSQTY: TcxGridDBBandedColumn;
    gvwColWColDSCUSTODY_DESC: TcxGridDBBandedColumn;
    gvwColWColDSREMARKS: TcxGridDBBandedColumn;
    cdsColWColDSPARTY_CODE: TStringField;
    pnlGenerating: TPanel;
    actGenerateColds: TNAction;
    cdsTmpSettleInstrCLIENT_ACCID: TLargeintField;
    cdsColWColDSCBEST_01: TStringField;
    cdsColWColDSCBEST_04: TStringField;
    cdsColWColDSBS: TStringField;
    gvwColWColDSCBEST_01: TcxGridDBBandedColumn;
    gvwColWColDSCBEST_04: TcxGridDBBandedColumn;
    gvwColWColDSBS: TcxGridDBBandedColumn;
    gvwExchangeBS: TcxGridDBBandedColumn;
    gvwNonExchangeBS: TcxGridDBBandedColumn;
    cdsOTCInstructionBS: TStringField;
    cdsSettleInstrBS: TStringField;
    cdsSettleInstrDHKID: TLargeintField;
    cdsTmpSettleInstrBS: TStringField;
    cdsTmpSettleInstrNEW_CUSTODY_INSTRID: TLargeintField;
    cdsTmpSettleInstrDHKID: TLargeintField;
    cdsColWColDSTmp: TNClientDataset;
    cdsColWColDSTmpCBEST_STATUS: TStringField;
    cdsColWColDSTmpCREATE_FILE: TStringField;
    cdsColWColDSTmpCOUNT_CREATE_FILE: TIntegerField;
    cdsColWColDSTmpCBEST_UPLOAD: TStringField;
    cdsColWColDSTmpCUSTODY_INSTRID: TLargeintField;
    cdsColWColDSTmpCUSTODY_EXTREF: TStringField;
    cdsColWColDSTmpTRDDATE: TDateField;
    cdsColWColDSTmpSETTLEMENTDATE: TDateField;
    cdsColWColDSTmpSETTLE_SIDE: TStringField;
    cdsColWColDSTmpINSTRUCTION: TStringField;
    cdsColWColDSTmpACCID: TLargeintField;
    cdsColWColDSTmpACCNO: TStringField;
    cdsColWColDSTmpACCNAME: TStringField;
    cdsColWColDSTmpACCINIT: TStringField;
    cdsColWColDSTmpPARTY_CODE: TStringField;
    cdsColWColDSTmpCCYCODE: TStringField;
    cdsColWColDSTmpSECURITIY_CODE: TStringField;
    cdsColWColDSTmpQTY: TFloatField;
    cdsColWColDSTmpCUSTODY_DESC: TStringField;
    cdsColWColDSTmpREMARKS: TStringField;
    cdsColWColDSTmpCBEST_01: TStringField;
    cdsColWColDSTmpCBEST_04: TStringField;
    cdsColWColDSTmpBS: TStringField;
    cdsOTCInstructionACCTYPE: TStringField;
    cdsOTCInstructionPRDCODE: TStringField;
    gvwExchangeACCTYPE: TcxGridDBBandedColumn;
    gvwExchangePRDCODE: TcxGridDBBandedColumn;
    gvwNonExchangeACCTYPE: TcxGridDBBandedColumn;
    gvwNonExchangePRDCODE: TcxGridDBBandedColumn;
    actUnUploaded: TNAction;
    UnUploadedData1: TMenuItem;
    cdsCBestInstOTCInstructionID: TLargeintField;
    cdsCBestInstOTCexternalReference: TStringField;
    cdsCBestInstOTCinstructionType: TStringField;
    cdsCBestInstOTCparticipantCode: TStringField;
    cdsCBestInstOTCparticipantAccount: TStringField;
    cdsCBestInstOTCparticipantAccountCash: TStringField;
    cdsCBestInstOTCcounterpartCode: TStringField;
    cdsCBestInstOTCsecurityCode: TStringField;
    cdsCBestInstOTCnumberOfSecurities: TFloatField;
    cdsCBestInstOTCtradeDate: TStringField;
    cdsCBestInstOTCcurrencyCode: TStringField;
    cdsCBestInstOTCsettlementAmount: TFloatField;
    cdsCBestInstOTCsettlementDate: TStringField;
    cdsCBestInstOTCpurpose: TStringField;
    cdsCBestInstOTCtradingReference: TStringField;
    cdsCBestInstOTCsettlementReason: TStringField;
    cdsCBestInstOTCdescription: TStringField;
    cdsCBestInstOTCsecurityCodeType: TStringField;
    cdsOTCInstructionparticipantAccountCash: TStringField;
    gvwExchangeparticipantAccountCash: TcxGridDBBandedColumn;
    gvwNonExchangeparticipantAccountCash: TcxGridDBBandedColumn;
    cdsGenerateOTCTXT: TNClientDataset;
    cdsGenerateOTCTXTDATA: TStringField;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actSplitExecute(Sender: TObject);
    procedure actOTCEditExecute(Sender: TObject);
    procedure actGenerateRFOPVPExecute(Sender: TObject);
    procedure actConfirmByExecute(Sender: TObject);
    procedure actCancelConfirmByExecute(Sender: TObject);
    procedure actConfirmByUpdate(Sender: TObject);
    procedure actCancelConfirmByUpdate(Sender: TObject);
    procedure actMergerExecute(Sender: TObject);
    procedure dtFilterDatePropertiesCloseUp(Sender: TObject);
    procedure actSettleOLTInstrExecute(Sender: TObject);
    procedure actSettleOLTInstrUpdate(Sender: TObject);
    procedure actMergerUpdate(Sender: TObject);
    procedure actSettleCancelUpdate(Sender: TObject);
    procedure actSettleCancelExecute(Sender: TObject);
    procedure actSettleReverseExecute(Sender: TObject);
    procedure actSettleReverseUpdate(Sender: TObject);
    procedure actManualPreMatchExecute(Sender: TObject);
    procedure actUploadPreMatchExecute(Sender: TObject);
    procedure actSettleByCBestExecute(Sender: TObject);
    procedure actNettingExecute(Sender: TObject);
    procedure actNettingDiffExecute(Sender: TObject);
    procedure TabOTCInstructionChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSplitUpdate(Sender: TObject);
    procedure actSettleByCBestUpdate(Sender: TObject);
    procedure actManualPreMatchUpdate(Sender: TObject);
    procedure actNettingUpdate(Sender: TObject);
    procedure actNettingDiffUpdate(Sender: TObject);
    procedure actOTCEditUpdate(Sender: TObject);
    procedure actGenerateRFOPVPUpdate(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actGenerateColwColdsExecute(Sender: TObject);
    procedure cdsSettleInstrINSTRUCTION_TYPEChange(Sender: TField);
    procedure actGenerateColdsExecute(Sender: TObject);
    procedure cmbFilterByPropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actUnUploadedExecute(Sender: TObject);
  private
    { Private declarations }
    FEditorForm: TNFormClass;
    FEditor: Integer;
    FDueDate: TDate;

    procedure GenerateDeliverRFOPRV(AFolderName: string);
    procedure GenerateReceiveRFOPRV(AFolderName: string);

    procedure GenerateCBestInstOTC(ASettle_Side, AFileNameRV, AFileNameFOP: string);
    procedure UpdateMatch(ACustodyInstrID: Integer);
    procedure UpdateStatus(ACustodyInstrIDList: TStringList);

    function AddNewNetting(ACustodyInstrID: Integer; AQty: Integer; AAmount: Double; AInstrType: string): string;
    function GetData(ARecord, AIndex: Integer): Variant;

    procedure Refresh;
    procedure GenerateColwColds;

    function IsNull(AData: Variant): string;
  public
    { Public declarations }
  end;

var
  frmOTCInstruction: TfrmOTCInstruction;

implementation

{$R *.dfm}

uses DataGlobal, FormOTCInstructions, FormOTCInstructionSplit,
  ClassRemoteServer, FormOTCInstructionNetting,
  FormOTCInstructionNettingDiff, FormOTCConfirm;

procedure TfrmOTCInstruction.actCancelConfirmByExecute(Sender: TObject);
begin
  inherited;
  cdsSettleInstr.Close;
  cdsSettleInstr.Params[0].AsInteger := cdsOTCInstructionCUSTODY_INSTRID.AsInteger;
  cdsSettleInstr.Open;

  if not cdsSettleInstr.IsEmpty then
  begin
    cdsSettleInstr.Edit;
    cdsSettleInstrCONFIRM_BY.AsString := '';
    cdsSettleInstr.Post;

    cdsSettleInstr.ApplyUpdates(-1);
  end;

  actRefresh.Execute;
end;

procedure TfrmOTCInstruction.actCancelConfirmByUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O') and
    (cdsOTCInstructionCREATE_FILE.AsString = '1') and (cdsOTCInstructionMATCH.AsString = '0');
end;

procedure TfrmOTCInstruction.actConfirmByExecute(Sender: TObject);
var
  i: Integer;
  sConfirmWith: string;
  bContinue: Boolean;
  oGrid: TcxGridDBBandedTableView;
  oForm: TfrmOTCConfirm;
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = TabExchage then
    oGrid := gvwExchange
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    oGrid := gvwNonExchange;

  sConfirmWith := dmGlobal.LastOTCConfirmWith;

  oForm := TfrmOTCConfirm.Create(nil);
  TfrmOTCConfirm(oForm).lbSID.Caption       := cdsOTCInstructionSIDNO.AsString;
  TfrmOTCConfirm(oForm).lbInstrType.Caption := cdsOTCInstructionINSTRUCTION_TYPE_CODE.AsString;
  TfrmOTCConfirm(oForm).lbCustCode.Caption  := cdsOTCInstructionCUSTODIANCODE.AsString;
  TfrmOTCConfirm(oForm).lbStockCode.Caption := cdsOTCInstructionSTOCKCODE.AsString;
  TfrmOTCConfirm(oForm).lbQty.Caption       := FormatFloat('#,##0' ,cdsOTCInstructionQTY.AsFloat) +' Shares';
  TfrmOTCConfirm(oForm).lbDateTime.Caption  := FormatDateTime('dd mmm yyyy hh:nn:ss', Now);
  TfrmOTCConfirm(oForm).lbCCYAmount.Caption := cdsOTCInstructionCCYCODE.AsString + ' ' + FormatFloat('#,##0' ,cdsOTCInstructionAMOUNT.AsFloat);
  TfrmOTCConfirm(oForm).txtConfirmBy.Text   := dmGlobal.UserID;
  TfrmOTCConfirm(oForm).txtConfirmWith.Text := sConfirmWith;

  oForm.ShowModal;
  sConfirmWith := TfrmOTCConfirm(oForm).txtConfirmWith.Text;

  for i := 0 to oGrid.Controller.SelectedRecordCount -1 do
  begin
    cdsSettleInstr.Close;
    cdsSettleInstr.Params[0].AsInteger := StrToInt(GetData(i, gvwMasterCUSTODY_INSTRID.Index));
    cdsSettleInstr.Open;

    if not cdsSettleInstr.IsEmpty then
    begin
      cdsSettleInstr.Edit;
      cdsSettleInstrCONFIRM_WITH.AsString := sConfirmWith;
      cdsSettleInstrCONFIRM_BY.AsString   := dmGlobal.UserID;
      cdsSettleInstr.Post;

      cdsSettleInstr.ApplyUpdates(-1);
    end;
  end;

  dmGlobal.LastOTCConfirmWith := sConfirmWith;
  FreeAndNil(oForm);
  actRefresh.Execute;
end;

procedure TfrmOTCInstruction.actConfirmByUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O');
end;

procedure TfrmOTCInstruction.actEditExecute(Sender: TObject);
begin
//  inherited;
  FEditorForm := TfrmOTCInstructions;
  if TabOTCInstruction.Properties.ActivePage = TabExchage  then
    DataContainer.Edit
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange  then
    DataContainer.Open;
  cdsOTCInstruction.Refresh;
end;

procedure TfrmOTCInstruction.actEditUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O') and (TabOTCInstruction.Properties.ActivePage = TabExchage);
end;

procedure TfrmOTCInstruction.actGenerateColdsExecute(Sender: TObject);
var
  sFileName, sFolderName,
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9: string;
  oCBestList: TStringList;
  iCreateFile: Integer;
  i : Integer;
begin
  inherited;
  SaveDialog.FileName := 'COLDS_'+FormatDateTime('YYYYMMDD', dtFilterDate.Date);
  if SaveDialog.Execute(Handle) then
    sFileName := SaveDialog.FileName
  else
    sFileName := '';

  if sFileName <> '' then
  begin
    cursor := crHourGlass;
    pnlGenerating.Visible := True;
    Application.ProcessMessages;

    oCBestList := TStringList.Create;
    s0         := IntToStr(cdsColWColDS.RecordCount);

    cdsColWColDS.DisableControls;

    cdsColWColDS.Filter   := 'SETTLE_SIDE = '+QuotedStr('D');
    cdsColWColDS.Filtered := True;

    cdsColWColDS.First;
    while not cdsColWColDS.Eof do
    begin
      if cdsColWColDSQTY.AsFloat <> 0 then
      begin
        s0 := cdsColWColDSCUSTODY_EXTREF.AsString;
        s1 := dmGlobal.RemoteServer.GetGlobalParamString('009');
        s2 := cdsColWColDSCBEST_01.AsString;
        s3 := cdsColWColDSCBEST_04.AsString;
        s4 := '';
        s5 := 'LOCAL';
        s6 := cdsColWColDSSECURITIY_CODE.AsString;
        s7 := FloatToStr(Abs(cdsColWColDSQTY.AsFloat));
        s8 := FormatDateTime('YYYYMMDD', cdsColWColDSSETTLEMENTDATE.AsDateTime);
        s9 := cdsColWColDSREMARKS.AsString;

        oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+s8+'|'+s9);

        cdsSettleInstr.Close;
        cdsSettleInstr.Params[0].AsInteger := cdsColWColDSCUSTODY_INSTRID.AsInteger;
        cdsSettleInstr.Open;
      end;

      cdsColWColDS.Next;
    end;
    oCBestList.SaveToFile(sFileName+'.txt');
    dmGlobal.IntDataCBest.GenerateCOL(sFileName+'.xlsx', oCBestList, 'COLW/COLDS', True);

    cdsColWColDS.Filtered := False;
    cdsColWColDS.EnableControls;
    cdsColWColDS.Refresh;

    pnlGenerating.Visible := False;
    ShowMessage('Generate file has done');
    FreeAndNil(oCBestList);
  end;
end;

procedure TfrmOTCInstruction.actGenerateColwColdsExecute(Sender: TObject);
begin
  inherited;
  GenerateColwColds;
end;

procedure TfrmOTCInstruction.actGenerateRFOPVPExecute(Sender: TObject);
var
  sFileName, sFolderName, sTmpFileName: string;
  sList, sSettleSide: string;
  oCBestList: TStringList;
  i, j, iNoFile, iCreateFile : Integer;
  sMode: string;
  iSID: Int64;
  oGrid: TcxGridDBBandedTableView;
  sPurpose, sTradeRef, sSettleReason: string;
  sIDRCur: string;
  sCustodyID, sMsg: string;
begin
  inherited;
  oCBestList := TStringList.Create;
  sCustodyID := '';

  if TabOTCInstruction.Properties.ActivePage = TabExchage then
    SaveDialog.FileName := 'OTCExchange_'+FormatDateTime('YYYYMMDD', dtFilterDate.Date)
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    SaveDialog.FileName := 'NonOTCExchange_'+FormatDateTime('YYYYMMDD', dtFilterDate.Date);

  if SaveDialog.Execute(Handle) then
  begin
    sFileName := SaveDialog.FileName;
    if sFileName = '' then
      MessageDlg('Can not be saved without name of file', mtConfirmation, [mbOk], 0);
  end
  else
    sFileName := '';

  if sFileName <> '' then
  begin
    if ExtractFileExt(sFileName) = '' then
      sFileName := sFileName + '.otc';

    if FileExists(sFileName) then
      DeleteFile(sFileName);

//    if TabOTCInstruction.Properties.ActivePage = TabExchage then
//    begin
//      for i := 0 to gvwExchange.Controller.SelectedRecordCount -1 do
//      begin
//        if (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'DFOP') or (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'RFOP') then
//        begin
//          sPurpose      := IsNull(GetData(i, gvwExchangePURPOSE.Index));
//          sTradeRef     := IsNull(GetData(i, gvwExchangeTRADE_REF.Index));
//          sSettleReason := IsNull(GetData(i, gvwExchangeSETTLE_REASON.Index));
//        end
//        else
//        begin
//          sPurpose      := '';
//          sTradeRef     := '';
//          sSettleReason := '';
//        end;
//
//        sList := '';
//        sList := IsNull(GetData(i, gvwExchangeCUSTODY_EXTREF.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeINSTRUCTION_TYPE_CODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeBROKERCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeBROKERMAINACCOUNT.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeparticipantAccountCash.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeCUSTODIANCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeSTOCKCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwExchangeQTY.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwExchangeTRDDATE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeCCYCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwExchangeAMOUNT.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwExchangeSETTLEDDATE.Index)) +'|'+
//                 sPurpose +'|'+
//                 sTradeRef +'|'+
//                 sSettleReason +'|'+
//                 IsNull(GetData(i, gvwExchangeREMARKS.Index)) +'|'+
//                 'LOCAL';
//
//        oCBestList.Add(sList);
//
//        sCustodyID := sCustodyID + IsNull(GetData(i, gvwExchangeCUSTODY_INSTRID.Index)) + ',';
//      end;
//
//      sMsg := dmGlobal.RemoteServer.UpdateStatusCustodyInst('U', sCustodyID);
//    end
//    else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
//    begin
//      for i := 0 to gvwNonExchange.Controller.SelectedRecordCount -1 do
//      begin
//        if (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'DFOP') or (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'RFOP') then
//        begin
//          sPurpose      := IsNull(GetData(i, gvwNonExchangePURPOSE.Index));
//          sTradeRef     := IsNull(GetData(i, gvwNonExchangeTRADE_REF.Index));
//          sSettleReason := IsNull(GetData(i, gvwNonExchangeSETTLE_REASON.Index));
//        end
//        else
//        begin
//          sPurpose      := '';
//          sTradeRef     := '';
//          sSettleReason := '';
//        end;
//
//        if sSettleReason = 'OWNE' then
//          sIDRCur := '|'
//        else
//          sIDRCur := IsNull(GetData(i, gvwNonExchangeCCYCODE.Index)) +'|'+ FloatToStr(GetData(i, gvwNonExchangeAMOUNT.Index));
//
//        sList := '';
//        sList := IsNull(GetData(i, gvwNonExchangeCUSTODY_EXTREF.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeINSTRUCTION_TYPE_CODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeBROKERCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeBROKERMAINACCOUNT.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeparticipantAccountCash.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeCUSTODIANCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeSTOCKCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwNonExchangeQTY.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwNonExchangeTRDDATE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeCCYCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwNonExchangeAMOUNT.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwNonExchangeSETTLEDDATE.Index)) +'|'+
//                 sPurpose +'|'+
//                 sTradeRef +'|'+
//                 sSettleReason +'|'+
//                 IsNull(GetData(i, gvwNonExchangeREMARKS.Index)) +'|'+
//                 'LOCAL';
//
//        oCBestList.Add(sList);
//      end;
//    end;

    for i := 0 to gvwExchange.Controller.SelectedRecordCount -1 do
    begin
      if sCustodyID <> '' then
        sCustodyID := sCustodyID + ',';
      sCustodyID := sCustodyID + IntToStr(gvwExchange.Controller.SelectedRows[i].Values[gvwMasterCUSTODY_INSTRID.Index]);
    end;

    cdsGenerateOTCTXT.Close;
    cdsGenerateOTCTXT.Params[0].AsString := sCustodyID;
    cdsGenerateOTCTXT.Open;

    if not cdsGenerateOTCTXT.IsEmpty then
    begin
      cdsGenerateOTCTXT.First;
      while not cdsGenerateOTCTXT.Eof do
      begin
        oCBestList.Add(cdsGenerateOTCTXTDATA.AsString);

        cdsGenerateOTCTXT.Next;
      end;
    end
    else
      MessageError('There is no data can be generated');

    iNoFile     := 0;
    if oCBestList.Count > 0 then
      dmGlobal.IntDataCBest.GenerateRD(sFileName, oCBestList, '1');

    FreeAndNil(oCBestList);
    MessageDlg('Generate FOP/VP has done', mtInformation, [mbYes], 0);

    cdsOTCInstruction.EnableControls;
    actRefresh.Execute;

    if FileExists(sFileName) then
      ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfrmOTCInstruction.actGenerateRFOPVPUpdate(Sender: TObject);
begin
  inherited;
//  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O');
end;

procedure TfrmOTCInstruction.actManualPreMatchExecute(Sender: TObject);
var
  oGrid: TcxGridDBBandedTableView;
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = TabExchage then
    oGrid := gvwExchange
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    oGrid := gvwNonExchange;

  if MessageDlg('Execute Manual Pre Match ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    UpdateMatch(StrToInt(oGrid.Controller.SelectedRecords[0].Values[gvwMasterCUSTODY_INSTRID.Index]));

  cdsOTCInstruction.Refresh;
end;

procedure TfrmOTCInstruction.actManualPreMatchUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O') and (cdsOTCInstructionCREATE_FILE.AsString = '1') and (cdsOTCInstructionMATCH.AsString = '0');
end;

procedure TfrmOTCInstruction.actMergerExecute(Sender: TObject);
var
  i, j: Integer;
  sCustodyID,
  sSettleSide, xSettleSide: string;
  dValueDate: TDateTime;
  iStockID, xStockID : Integer;
  sAccNo, sAccInit, xAccNo, xAccInit,
  sBrokerCode, sBrokerMainAcc, xBrokerCode, xBrokerMainAcc,
  sCustodianCode, xCustodianCode, sInstruction, xInstruction: string;
  bContinue: boolean;
  dQty, dAmt,
  dSumQty, dSumAmt, dSumOrigAmt, dOrigAmt: Double;
  sAccID, xAccID: integer;
  sMessage, sExtreff: string;
  oGrid: TcxGridDBBandedTableView;
  sInstructioMode: string;
  dtTrans: TDateTime;
  dtDue: TDateTime;
  sSeqName: string;
  sRefNo: string;
  sStockCode: string;
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = TabExchage then
    oGrid := gvwExchange
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    oGrid := gvwNonExchange;

  sCustodyID     := IntToStr(oGrid.Controller.SelectedRows[0].Values[gvwMasterCUSTODY_INSTRID.Index])+';';
  iStockID       := StrToInt(oGrid.Controller.SelectedRecords[0].Values[gvwMasterSTOCKID.Index]);
  sSettleSide    := oGrid.Controller.SelectedRows[0].Values[gvwMasterSETTLE_SIDE.Index];
  sAccID         := StrToInt(oGrid.Controller.SelectedRows[0].Values[gvwMasterACCID.Index]);
  sBrokerCode    := oGrid.Controller.SelectedRows[0].Values[gvwMasterBROKERCODE.Index];
  sBrokerMainAcc := oGrid.Controller.SelectedRows[0].Values[gvwMasterBROKERMAINACCOUNT.Index];
  sCustodianCode := oGrid.Controller.SelectedRows[0].Values[gvwMasterCUSTODIANCODE.Index];
  sInstruction   := oGrid.Controller.SelectedRows[0].Values[gvwMasterINSTRUCTION.Index];
  dSumQty        := oGrid.Controller.SelectedRows[0].Values[gvwMasterQTY.Index];
  dSumAmt        := oGrid.Controller.SelectedRows[0].Values[gvwMasterAMOUNT.Index];
  dSumOrigAmt    := oGrid.Controller.SelectedRows[0].Values[gvwMasterORIGINALAMT.Index];

  if sSettleSide = 'R' then
  begin
    dSumQty := dSumQty * (- 1);
    dSumAmt := dSumAmt * (- 1);
  end;

  if oGrid.Controller.SelectedRecordCount < 2 then
  begin
    MessageDlg('Can not merge one custody', mtError, [mbOk], 0);
    exit;
  end;

  for i := 0 to oGrid.Controller.SelectedRecordCount -1 do
  begin
    sCustodyID     := sCustodyID+IntToStr(oGrid.Controller.SelectedRows[i].Values[gvwMasterCUSTODY_INSTRID.Index])+';';
    xStockID       := StrToInt(oGrid.Controller.SelectedRecords[i].Values[gvwMasterSTOCKID.Index]);
    xSettleSide    := oGrid.Controller.SelectedRows[i].Values[gvwMasterSETTLE_SIDE.Index];
    xAccID         := StrToInt(oGrid.Controller.SelectedRows[0].Values[gvwMasterACCID.Index]);
    xBrokerCode    := oGrid.Controller.SelectedRows[i].Values[gvwMasterBROKERCODE.Index];
    xBrokerMainAcc := oGrid.Controller.SelectedRows[i].Values[gvwMasterBROKERMAINACCOUNT.Index];
    xCustodianCode := oGrid.Controller.SelectedRows[i].Values[gvwMasterCUSTODIANCODE.Index];
    xInstruction   := oGrid.Controller.SelectedRows[i].Values[gvwMasterINSTRUCTION.Index];
    dQty           := oGrid.Controller.SelectedRows[i].Values[gvwMasterQTY.Index];
    dAmt           := oGrid.Controller.SelectedRows[i].Values[gvwMasterAMOUNT.Index];
    dOrigAmt       := oGrid.Controller.SelectedRows[0].Values[gvwMasterORIGINALAMT.Index];

    bContinue := (iStockID = xStockID) and (sAccNo = xAccNo) and (sBrokerCode = xBrokerCode) and
                 (sBrokerMainAcc = xBrokerMainAcc) and (sCustodianCode = xCustodianCode) and (sInstruction = xInstruction);

    if not bContinue then
    begin
      MessageDlg('Merge can not be done, becaouse there is data not same...', mtError, [mbYes], 0);
      exit;
    end
    else
    begin
      if sSettleSide = 'R' then
      begin
        dSumQty     := dSumQty - dQty;
        dSumAmt     := dSumAmt - dAmt;
        dSumOrigAmt := dSumOrigAmt - dOrigAmt;
      end
      else
      begin
        dSumQty     := dSumQty + dQty;
        dSumAmt     := dSumAmt + dAmt;
        dSumOrigAmt := dSumOrigAmt + dOrigAmt;
      end;
    end;
  end;

  sInstructioMode := cdsOTCInstructionINSTRUCTION.AsString;
  dtTrans         := cdsOTCInstructionTRDDATE.AsDateTime;
  dtDue           := cdsOTCInstructionDUEDATE.AsDateTime;
  sSeqName        := 'TBL_B_CUSTODY_INSTRUCTION';
  sRefNo          := '';
  sStockCode      := cdsOTCInstructionSTOCKCODE.AsString;

  sExtreff := dmGlobal.RemoteServer.CustodyExternalRef(sInstructioMode, dtTrans, dtDue, sSeqName, sRefNo, sStockCode);
  sMessage := dmGlobal.RemoteServer.MergeCustodyInstr(sCustodyID, StrToInt64(oGrid.Controller.SelectedRows[0].Values[gvwMasterCUSTODY_INSTRID.Index]),
              dmGlobal.RemoteServer.GetSeq('TBL_B_CUSTODY_INSTRUCTION'), dSumQty, dSumAmt, sExtReff, dSumOrigAmt);
  MessageDlg(sMessage, mtInformation, [mbYes], 0);
  sMessage := dmGlobal.RemoteServer.CustodianToMerger(sCustodyID);

  DataContainer.Refresh;
end;

procedure TfrmOTCInstruction.actMergerUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O') and
    (cdsOTCInstructionCREATE_FILE.AsString = '0') and (cdsOTCInstructionMATCH.AsString = '0');
end;

procedure TfrmOTCInstruction.actNettingDiffExecute(Sender: TObject);
var
  iAccID, iAccIDNext, iQty: Integer;
  sCustody: String;
  dDAmount, dRAmount, dAmount: Double;
  oCustodyList: TStringList;
  oNetting: TNettingDifferent;
  iRes, i, j: Integer;
  sSettleSide: string;
  oForm: TfrmOTCInstructionNettingDiff;
  iMaxDID, iMaxRID: Integer;
  dMaxDAmount, dMaxRAmount: Double;
  oGrid: TcxGridDBBandedTableView;
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = TabExchage then
    oGrid := gvwExchange
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    oGrid := gvwNonExchange;

  if oGrid.Controller.SelectedRecordCount < 2 then
  begin
    MessageError('Can not netting if only one record selected');
    Exit;
  end;

  oCustodyList := TStringList.Create;
  iAccID       := StrToInt(GetData(0, gvwMasterACCID.Index));
  iMaxDID      := 0;
  iMaxRID      := 0;
  dMaxDAmount  := 0;
  dMaxRAmount  := 0;

  for i := 0 to oGrid.Controller.SelectedRecordCount -1 do
  begin
    iAccIDNext := StrToInt(GetData(i, gvwMasterACCID.Index));
    sCustody   := IntToStr(GetData(i, gvwMasterSTOCKID.Index));

    if iAccID = iAccIDNext then
    begin
      if GetData(i, gvwMasterSETTLE_SIDE.Index) = 'D' then
      begin
        dAmount := StrToFloat(GetData(i, gvwMasterAMOUNT.Index));
        iQty    := StrToInt(GetData(i, gvwMasterQTY.Index));

        if dMaxDAmount < dAmount then
        begin
          dMaxDAmount := dAmount;
          iMaxDID     := StrToInt(GetData(i, gvwMasterCUSTODY_INSTRID.Index));
        end;
      end
      else
      begin
        iQty    := - StrToInt(GetData(i, gvwMasterQTY.Index));
        dAmount := - StrToFloat(GetData(i, gvwMasterAMOUNT.Index));

        if dMaxRAmount < -(dAmount) then
        begin
          dMaxRAmount := dAmount;
          iMaxRID     := StrToInt(GetData(i, gvwMasterCUSTODY_INSTRID.Index));
        end;
      end;

      iRes := oCustodyList.IndexOf(sCustody);
      if iRes <> -1 then
      begin
        oNetting        := TNettingDifferent(oCustodyList.Objects[iRes]);
        oNetting.Qty    := oNetting.Qty + iQty;
        oNetting.Amount := oNetting.Amount + dAmount;
      end
      else
      begin
        oNetting              := TNettingDifferent.Create;
        oNetting.Qty          := iQty;
        oNetting.Amount       := dAmount;
        oNetting.CustoInstrID := GetData(i, gvwMasterCUSTODY_INSTRID.Index);

        oCustodyList.AddObject(sCustody, oNetting);
      end;
    end
    else
    begin
      MessageError('There is no different Account Allowed');
      FreeAndNil(oCustodyList);
      Exit;
    end;
  end;

  cdsTmpSettleInstr.Close;
  cdsTmpSettleInstr.CreateDataSet;
  dAmount := 0;
  for i := 0 to oCustodyList.Count -1 do
  begin
    oNetting := TNettingDifferent(oCustodyList.Objects[i]);

    cdsSettleInstr.Close;
    cdsSettleInstr.Params[0].AsInteger := oNetting.CustoInstrID;
    cdsSettleInstr.Open;

    cdsTmpSettleInstr.Append;
    for j := 0 to cdsSettleInstr.FieldCount -1 do
      cdsTmpSettleInstr.Fields[j].Value := cdsSettleInstr.Fields[j].Value;

    dAmount := dAmount + oNetting.Amount;
    if (oNetting.Amount > 0) then
    begin
      sSettleSide := 'D';

      cdsTmpSettleInstrQTY.AsInteger        := oNetting.Qty;
      cdsTmpSettleInstrORIGINAL_AMT.AsFloat := 0; //oNetting.Amount;
      cdsTmpSettleInstrSETTLE_AMOUNT.AsFloat:= 0;
      cdsTmpSettleInstrSETTLE_SIDE.AsString := sSettleSide;
      cdsTmpSettleInstrINSTRUCTION_TYPE.AsString := sSettleSide + 'FOP';
    end
    else
    begin
      sSettleSide := 'R';

      cdsTmpSettleInstrQTY.AsInteger        := - oNetting.Qty;
      cdsTmpSettleInstrORIGINAL_AMT.AsFloat := 0; //- oNetting.Amount;
      cdsTmpSettleInstrSETTLE_AMOUNT.AsFloat:= 0;
      cdsTmpSettleInstrSETTLE_SIDE.AsString := sSettleSide;
      cdsTmpSettleInstrINSTRUCTION_TYPE.AsString := sSettleSide + 'FOP';
    end;
    cdsTmpSettleInstr.Post;
  end;
  FreeAndNil(oCustodyList);

  if dAmount > 0 then
    cdsTmpSettleInstr.Filter := 'SETTLE_SIDE = '+QuotedStr('D')+' AND CUSTODY_INSTRID = '+ IntToStr(iMaxDID)
  else
  begin
    cdsTmpSettleInstr.Filter := 'SETTLE_SIDE = '+QuotedStr('R')+' AND CUSTODY_INSTRID = '+ IntToStr(iMaxRID);
    dAmount                  := - dAmount;
  end;
  cdsTmpSettleInstr.Filtered := True;

  if not cdsTmpSettleInstr.IsEmpty then
  begin
    cdsTmpSettleInstr.Edit;
    cdsTmpSettleInstrSETTLE_AMOUNT.AsFloat     := dAmount;
    cdsTmpSettleInstrORIGINAL_AMT.AsFloat      := dAmount;
    cdsTmpSettleInstrINSTRUCTION_TYPE.AsString := cdsTmpSettleInstrSETTLE_SIDE.AsString + 'VP';
    cdsTmpSettleInstr.Post;
    cdsTmpSettleInstr.Filtered := False;
  end;

  oForm := TfrmOTCInstructionNettingDiff.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    cdsTmpSettleInstr.First;
    while not cdsTmpSettleInstr.Eof do
    begin
      cdsSettleInstr.Close;
      cdsSettleInstr.Params[0].AsInteger := cdsTmpSettleInstrCUSTODY_INSTRID.AsInteger;
      cdsSettleInstr.Open;

      if not cdsSettleInstr.IsEmpty then
      begin
        cdsSettleInstr.Edit;
        cdsSettleInstrSTAT.AsString  := 'C';
        cdsSettleInstrMATCH.AsString := '1';
        cdsSettleInstr.Post;

        cdsSettleInstr.ApplyUpdates(-1)
      end;

      cdsSettleInstr.Append;
      for i := 0 to cdsTmpSettleInstr.FieldCount -1 do
        cdsSettleInstr.Fields[i].Value := cdsTmpSettleInstr.Fields[i].Value;
      cdsSettleInstrCUSTODY_INSTRID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CUSTODY_INSTRUCTION');
//      cdsSettleInstr.Post;
//      cdsSettleInstr.ApplyUpdates(-1);

      cdsCustodyLink.Close;
      cdsCustodyLink.Params[0].AsInteger := cdsTmpSettleInstrCUSTODY_INSTRID.AsInteger;
      cdsCustodyLink.Open;

      if not cdsCustodyLink.IsEmpty then
      begin
        cdsCustodyLink.First;
        while not cdsCustodyLink.Eof do
        begin
          cdsCustodyLink.Edit;
          cdsCustodyLinkCUSTODY_INSTRID.AsInteger := cdsSettleInstrCUSTODY_INSTRID.AsInteger;
          cdsCustodyLink.Post;

          cdsCustodyLink.Next;
        end;
        cdsCustodyLink.ApplyUpdates(-1);
      end;

      cdsSettleInstr.Post;
      cdsSettleInstr.ApplyUpdates(-1);

      cdsTmpSettleInstr.Next;
    end;
  end;
  oForm.Free;

  actRefresh.Execute;
end;

procedure TfrmOTCInstruction.actNettingDiffUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O') and
    (cdsOTCInstructionCREATE_FILE.AsString = '0') and (cdsOTCInstructionMATCH.AsString = '0');
end;

procedure TfrmOTCInstruction.actNettingExecute(Sender: TObject);
var
  sStockCode, sBS: string;
  dAmount, dDAmount, dRAmount,
  dDAmountX, dRAmountX: double;
  i, iStockID,
  iStockIDNext,
  iAccID, iAccIDNext,
  iQty, iDQty, iRQty,
  iDQtyX, iRQtyX,
  iCustodyInstrID: Integer;
  oNettingID: TStringList;
  sDInstrType, sRInstrType,
  sInstrType, sMessage: string;
  sCustodyID, sCounterCode: string;
  oGrid: TcxGridDBBandedTableView;
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = TabExchage then
    oGrid := gvwExchange
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    oGrid := gvwNonExchange;

  if oGrid.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Netting Custody ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      oNettingID := TStringList.Create;
      dAmount    := 0;
      iQty       := 0;
      sCustodyID := '';

      if TabOTCInstruction.Properties.ActivePage = TabExchage then
      begin
        iAccID    := StrToInt(GetData(0, gvwExchangeACCID.Index));
        iStockID  := StrToInt(GetData(0, gvwExchangeSTOCKID.Index));
      end
      else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
      begin
        iAccID    := StrToInt(GetData(0, gvwNonExchangeACCID.Index));
        iStockID  := StrToInt(GetData(0, gvwNonExchangeSTOCKID.Index));
      end;

      for i := 0 to oGrid.Controller.SelectedRecordCount -1 do
      begin
        if TabOTCInstruction.Properties.ActivePage = TabExchage then
        begin
          iCustodyInstrID := GetData(i, gvwExchangeCUSTODY_INSTRID.Index);
          iAccIDNext      := StrToInt(GetData(i, gvwExchangeACCID.Index));
          iStockIDNext    := StrToInt(GetData(i, gvwExchangeSTOCKID.Index));
          sDInstrType     := GetData(i, gvwExchangeINSTRUCTION_TYPE_CODE.Index);
          sRInstrType     := GetData(i, gvwExchangeINSTRUCTION_TYPE_CODE.Index);
          sBS             := GetData(i, gvwExchangeSETTLE_SIDE.Index);
          if VarIsNull(GetData(i, gvwExchangeAMOUNT.Index)) then
            dDAmountX     := 0
          else
            dDAmountX     := StrToFloatDef(GetData(i, gvwExchangeAMOUNT.Index), 0);
          iDQtyX          := StrToIntDef(GetData(i, gvwExchangeQTY.Index), 0);
        end
        else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
        begin
          iCustodyInstrID := GetData(i, gvwNonExchangeCUSTODY_INSTRID.Index);
          iAccIDNext      := StrToInt(GetData(i, gvwNonExchangeACCID.Index));
          iStockIDNext    := StrToInt(GetData(i, gvwNonExchangeSTOCKID.Index));
          sDInstrType     := GetData(i, gvwNonExchangeINSTRUCTION_TYPE_CODE.Index);
          sRInstrType     := GetData(i, gvwNonExchangeINSTRUCTION_TYPE_CODE.Index);
          sBS             := GetData(i, gvwNonExchangeSETTLE_SIDE.Index);
          if VarIsNull(GetData(i, gvwNonExchangeAMOUNT.Index)) then
            dDAmountX     := 0
          else
            dDAmountX     := StrToFloatDef(GetData(i, gvwNonExchangeAMOUNT.Index), 0);
          iDQtyX          := StrToIntDef(GetData(i, gvwNonExchangeQTY.Index), 0);
        end;

        dRAmountX := dDAmountX;
        iRQtyX    := iDQtyX;

        if iAccID = iAccIDNext then
        begin
          if iStockID <> iStockIDNext then
          begin
            MessageError('There is no different Stock Code Allowed');
            Exit;
          end;

          if sBS = 'D' then
          begin
            dDAmount    := dDAmount + dDAmountX;
            iDQty       := iDQty + iDQtyX;
          end
          else if sBS = 'R' then
          begin
            dRAmount    := dRAmount + dRAmountX;
            iRQty       := iRQty + iRQtyX;
          end;

          sCustodyID := IntToStr(iCustodyInstrID) +';';
          oNettingID.Add(IntToStr(iCustodyInstrID));
        end
        else
        begin
          MessageError('There is no different Account Allowed');
          FreeAndNil(oNettingID);
          Exit;
        end;
      end;

      if (iDQty <> 0) and (iRQty <> 0) then
      begin
        iQty    := iDQty - iRQty;
        dAmount := dDAmount - dRAmount;
        if iQty > 0 then
          sInstrType := sDInstrType
        else
          sInstrType := sRInstrType;

        if AddNewNetting(iCustodyInstrID, iQty, dAmount, sInstrType) = 'OK' then
        begin
          UpdateStatus(oNettingID);
          sMessage := 'Netting OTC Custody has been done';
        end
        else
          sMessage := 'Netting OTC Custody has been canceled';
      end
      else
        MessageError('Can not netting if Receive or Deliver Quantity is 0');

      FreeAndNil(oNettingID);
      MessageDlg(sMessage, mtInformation, [mbOK], 0);

      actRefresh.Execute;
    end;
  end
  else
    MessageError('Can not netting if only one data selected');

end;

procedure TfrmOTCInstruction.actNettingUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O');
//    and (cdsOTCInstructionCREATE_FILE.AsString = '0') and (cdsOTCInstructionMATCH.AsString = '0');
end;

procedure TfrmOTCInstruction.actOpenExecute(Sender: TObject);
begin
//  inherited;
  FEditorForm := TfrmOTCInstructions;
  DataContainer.Open;
end;

procedure TfrmOTCInstruction.actOTCEditExecute(Sender: TObject);
begin
  inherited;
  FEditorForm := TfrmOTCInstructions;
  DataContainer.Edit;
end;

procedure TfrmOTCInstruction.actOTCEditUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O') and
    (cdsOTCInstructionCREATE_FILE.AsString = '0') and (cdsOTCInstructionMATCH.AsString = '0');
end;

procedure TfrmOTCInstruction.actRefreshExecute(Sender: TObject);
begin
  //inherited;

  cdsOTCInstruction.Close;
  cdsOTCInstruction.Params[0].AsDate   := dtFilterDate.Date;
  cdsOTCInstruction.Params[1].AsString := cmbFilterBy.EditValue;
  cdsOTCInstruction.Open;

  cdsColWColDS.Close;
  cdsColWColDS.Params[0].AsDate   := dtFilterDate.Date;
  cdsColWColDS.Params[1].AsString := cmbFilterBy.EditValue;
  cdsColWColDS.Open;

end;

procedure TfrmOTCInstruction.actSettleByCBestExecute(Sender: TObject);
var
  sFileName, sCustInstrID, sMessage, sStockID, sStockType: string;
  oSettleList, oData: TStringList;
  i: Integer;
begin
  inherited;
  OpenDialog.Execute(Handle);
  sFileName := OpenDialog.FileName;
  if sFileName = '' then
    Exit;

  if not FileExists(sFileName) then
  begin
    MessageError('File does''n exist, please check file name');
    exit;
  end;

  cdsOTCInstruction.DisableControls;
  Screen.Cursor := crHourGlass;
  oSettleList   := TStringList.Create;
  oSettleList.LoadFromFile(sFileName);

  try
    sCustInstrID := '';
    sStockID     := '';
    sStockType   := '';

    for i := 0 to oSettleList.Count -1 do
    begin
      oData := TStringList.Create;
      oData.DelimitedText := oSettleList.Strings[i];
      oData.Delimiter     := '|';

      if cdsOTCInstruction.Locate('CUSTODY_EXTREF', oData.Strings[1], []) then
      begin
        if (cdsOTCInstructionMATCH.AsString = '1') and (cdsOTCInstructionOTC_STATUS.AsString = 'O') then
        begin
          sCustInstrID := sCustInstrID + cdsOTCInstructionCUSTODY_INSTRID.AsString +';';
          sStockID     := sStockID + cdsOTCInstructionLINKID.AsString +';';
          sStockType   := sStockType + cdsOTCInstructionLINKTYPE.AsString +';';
        end;
      end;
    end;

    oSettleList.Free;
    cdsOTCInstruction.EnableControls;

    if sCustInstrID <> '' then
      sMessage := dmGlobal.RemoteServer.SettleOTCInstruction(sCustInstrID, sStockID, sStockType)
    else
      sMessage := 'There is no data match with cbest can be settled';
    MessageDlg(sMessage, mtInformation, [mbOk], 0);

    Screen.Cursor := crDefault;
    cdsOTCInstruction.Refresh;
  except
    on E: Exception do
    begin
      sMessage := E.Message;
      MessageError(sMessage);
      Screen.Cursor := crDefault;
      oSettleList.Free;
      cdsOTCInstruction.EnableControls;
    end;
  end;
end;

procedure TfrmOTCInstruction.actSettleByCBestUpdate(Sender: TObject);
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = tabCC then
    TAction(Sender).Enabled := (cdsColWColDSCBEST_STATUS.AsString = 'O')
  else
    TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O');
end;

procedure TfrmOTCInstruction.actSettleCancelExecute(Sender: TObject);
var
  sMessage : string;
  iCustID: Int64;
begin
  inherited;
  if MessageDlg('Cancel OTC Instruction ?', mtConfirmation, [mbYes, mbNo], 0) = MrYes then
  begin
    if TabOTCInstruction.Properties.ActivePage = TabExchage then
      iCustID := cdsOTCInstructionCUSTODY_INSTRID.AsLargeInt
    else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
      iCustID := cdsOTCInstructionCUSTODY_INSTRID.AsLargeInt
    else if TabOTCInstruction.Properties.ActivePage = tabCC then
      iCustID := cdsColWColDSCUSTODY_INSTRID.AsLargeInt;

    sMessage := dmGlobal.RemoteServer.StockSettleCancel(iCustID);
    MessageDlg(sMessage, mtInformation, [mbOk], 0);

    cdsOTCInstruction.Refresh;
    cdsColWColDS.Refresh;
  end;
end;

procedure TfrmOTCInstruction.actSettleCancelUpdate(Sender: TObject);
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = tabCC then
    TAction(Sender).Enabled := (cdsColWColDSCBEST_STATUS.AsString = 'O')
  else
    TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O');
end;

procedure TfrmOTCInstruction.actSettleOLTInstrExecute(Sender: TObject);
var
  sCustodyIstrID, sMessage, sStockID, sStockType: string;
  i, iCustodyIstrID, iStockID: Integer;
  oGrid: TcxGridDBBandedTableView;
  iRes, iFail: Integer;
  sCreateFile, sOTCStatus: string;
begin
  inherited;
  if MessageDlg('Settle Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    sCustodyIstrID := '';
    sStockID       := '';
    sStockType     := '';

    iRes  := 0;
    iFail := 0;
    sMessage := '';

    if TabOTCInstruction.Properties.ActivePage = TabExchage then
    begin
      oGrid := gvwExchange;

      for i := 0 to oGrid.Controller.SelectedRowCount -1 do
      begin
        sOTCStatus := oGrid.Controller.SelectedRows[i].Values[gvwExchangeOTC_STATUS.Index];
        if (sOTCStatus = 'O') and (dtFilterDate.Date >= FDueDate) then
        begin
          iCustodyIstrID := StrToIntDef(VarToStrDef(oGrid.Controller.SelectedRows[i].Values[gvwExchangeCUSTODY_INSTRID.Index], '0'), 0);
          iStockID       := StrToIntDef(VarToStrDef(oGrid.Controller.SelectedRows[i].Values[gvwExchangeLINKID.Index], '0'), 0);

          sCustodyIstrID := IntToStr(iCustodyIstrID)+';';
          sStockID       := IntToStr(iStockID)+';';
          sStockType     := VarToStrDef(oGrid.Controller.SelectedRows[i].Values[gvwExchangeLINKTYPE.Index], ' ') +';';

          if sMessage <> '' then
            sMessage := sMessage + #10#13;

          sMessage := sMessage + dmGlobal.RemoteServer.SettleOTCInstruction(sCustodyIstrID, sStockID, sStockType);
          Inc(iRes);
        end
        else
          Inc(iFail);
      end;
    end
    else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    begin
      oGrid := gvwNonExchange;

      for i := 0 to oGrid.Controller.SelectedRowCount -1 do
      begin
        sOTCStatus := oGrid.Controller.SelectedRows[i].Values[gvwNonExchangeOTC_STATUS.Index];
        if (sOTCStatus = 'O') and (dtFilterDate.Date >= FDueDate) then
        begin
          iCustodyIstrID := StrToIntDef(VarToStrDef(oGrid.Controller.SelectedRows[i].Values[gvwNonExchangeCUSTODY_INSTRID.Index], '0'), 0);
          iStockID       := StrToIntDef(VarToStrDef(oGrid.Controller.SelectedRows[i].Values[gvwNonExchangeLINKID.Index], '0'), 0);

          sCustodyIstrID := sCustodyIstrID + IntToStr(iCustodyIstrID)+';';
          sStockID       := IntToStr(iStockID)+';';
          sStockType     := VarToStrDef(oGrid.Controller.SelectedRows[i].Values[gvwNonExchangeLINKTYPE.Index], ' ') +';';

          if sMessage <> '' then
            sMessage := sMessage + #10#13;

          sMessage := sMessage + dmGlobal.RemoteServer.SettleOTCInstruction(sCustodyIstrID, sStockID, sStockType);
          Inc(iRes);
        end
        else
          Inc(iFail);
      end;
    end
    else if TabOTCInstruction.Properties.ActivePage = tabCC then
    begin
      oGrid := gvwColWColDS;

      for i := 0 to oGrid.Controller.SelectedRowCount -1 do
      begin
        sOTCStatus  := oGrid.Controller.SelectedRows[i].Values[gvwColWColDSCBEST_STATUS.Index];
        sCreateFile := oGrid.Controller.SelectedRows[i].Values[gvwColWColDSCREATE_FILE.Index];

        if (sOTCStatus = 'O') and (dtFilterDate.Date >= FDueDate) then
        begin
          iCustodyIstrID := StrToIntDef(VarToStrDef(oGrid.Controller.SelectedRows[i].Values[gvwColWColDSCUSTODY_INSTRID.Index], '0'), 0);

          sCustodyIstrID := sCustodyIstrID + IntToStr(iCustodyIstrID)+';';
          sStockID       := sStockID + ';';
          sStockType     := sStockType +  ';';

          if sMessage <> '' then
            sMessage := sMessage + #10#13;

          sMessage := sMessage + dmGlobal.RemoteServer.SettleOTCInstruction(sCustodyIstrID, sStockID, sStockType);
          Inc(iRes);
        end
        else
          Inc(iFail);
      end;
    end;

//    sMessage := dmGlobal.RemoteServer.SettleOTCInstruction(sCustodyIstrID, sStockID, sStockType);
//    if (iRes > 0) or (iFail > 0) then
//      sMessage := IntToStr(iRes) + sMessage + ' and ' + IntToStr(iFail) + ' can not process settle'
//    else
//      sMessage := IntToStr(iRes) + sMessage;

    MessageDlg(sMessage, mtInformation, [mbOk], 0);

    cdsOTCInstruction.Refresh;
    cdsColWColDS.Refresh;
  end;
end;

procedure TfrmOTCInstruction.actSettleOLTInstrUpdate(Sender: TObject);
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = tabCC then
    TAction(Sender).Enabled := (cdsColWColDSCBEST_STATUS.AsString = 'O')
  else
    TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O');// and (cdsOTCInstructionCREATE_FILE.AsString = '1');
end;

procedure TfrmOTCInstruction.actSettleReverseExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := 'Do you want to reverse instruction?';
  if MessageDlg(sMessage, mtConfirmation, mbYesNo, 0) = mrYes then
  Begin
    if TabOTCInstruction.Properties.ActivePage = tabCC then
      sMessage := dmGlobal.RemoteServer.StockSettleReverse(cdsColWColDSCUSTODY_INSTRID.AsLargeInt, cdsColWColDSTRDDATE.AsDateTime)
    else
      sMessage := dmGlobal.RemoteServer.StockSettleReverse(cdsOTCInstructionCUSTODY_INSTRID.AsLargeInt, cdsOTCInstructionTRDDATE.AsDateTime);
    MessageDlg(sMessage, mtInformation, [mbOk], 0);
    actRefresh.Execute;
  End;
end;

procedure TfrmOTCInstruction.actSettleReverseUpdate(Sender: TObject);
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = tabCC then
    TAction(Sender).Enabled := (cdsColWColDSCBEST_STATUS.AsString = 'S')
  else
    TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'S');
end;

procedure TfrmOTCInstruction.actSplitExecute(Sender: TObject);
begin
  inherited;
  FEditorForm := TfrmOTCInstructionSplit;
  DataContainer.Edit;
end;

procedure TfrmOTCInstruction.actSplitUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsOTCInstructionOTC_STATUS.AsString = 'O') and
    (cdsOTCInstructionCREATE_FILE.AsString = '0') and (cdsOTCInstructionMATCH.AsString = '0');
end;

procedure TfrmOTCInstruction.actUnUploadedExecute(Sender: TObject);
var
  sCustodyID: string;
  i: Integer;
begin
  inherited;
  sCustodyID := '';

  for i := 0 to gvwExchange.Controller.SelectedRecordCount -1 do
    sCustodyID := sCustodyID + IsNull(GetData(i, gvwExchangeCUSTODY_INSTRID.Index)) + ',';

  MessageDlg(dmGlobal.RemoteServer.UpdateStatusCustodyInst('O', sCustodyID), mtInformation, [mbOk], 0);
  actRefresh.Execute;
end;

procedure TfrmOTCInstruction.actUploadPreMatchExecute(Sender: TObject);
var
  sFileName: string;
  oPreMatchList, oData: TStringList;
  i: Integer;
begin
  inherited;
  cdsOTCInstruction.DisableControls;
  OpenDialog.Execute(Handle);

  sFileName := OpenDialog.FileName;
  if sFileName = '' then
  begin
    cdsOTCInstruction.EnableControls;
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  oPreMatchList := TStringList.Create;
  oPreMatchList.LoadFromFile(sFileName);

  for i := 0 to oPreMatchList.Count -1 do
  begin
    oData := TStringList.Create;
    oData.DelimitedText := oPreMatchList.Strings[i];
    oData.Delimiter     := '|';

    if cdsOTCInstruction.Locate('CUSTODY_EXTREF', oData.Strings[1], []) then
    begin
      if LowerCase(Copy(oData.Strings[15], 0, 5)) = 'match' then
      begin
        if cdsOTCInstructionOTC_STATUS.AsString = 'O' then
          UpdateMatch(cdsOTCInstructionCUSTODY_INSTRID.AsInteger);
      end;
    end;
  end;

  oPreMatchList.Free;
  cdsOTCInstruction.EnableControls;
  Screen.Cursor := crDefault;

  cdsOTCInstruction.Refresh;
end;

procedure TfrmOTCInstruction.actViewExecute(Sender: TObject);
begin
  FEditor := 2;
  inherited;
//  FEditorForm := TfrmOTCInstructions;
//  DataContainer.Open;
end;

function TfrmOTCInstruction.AddNewNetting(ACustodyInstrID, AQty: Integer; AAmount: Double; AInstrType: string): string;
var
  i: Integer;
  iQty: Integer;
  dAmount: Double;
  sDR, sBS: string;
  oForm: TfrmOTCInstructionNetting;
  sMessage: string;
begin
  if AQty = 0 then
  begin
    if AAmount > 0 then
    begin
      sDR     := 'D';
      sBS     := 'B';
      dAmount := AAmount;
    end else
    begin
      sDR     := 'R';
      sBS     := 'S';
      dAmount := - AAmount;
    end;
  end
  else if AQty > 0 then
  begin
    sDR     := 'D';
    sBS     := 'B';
    iQty    := AQty;
    dAmount := AAmount;
  end
  else
  begin
    sDR     := 'R';
    sBS     := 'S';
    iQty    := - AQty;
    dAmount := - AAmount;
  end;

  cdsSettleInstr.Close;
  cdsSettleInstr.Params[0].AsInteger := ACustodyInstrID;
  cdsSettleInstr.Open;

  cdsTmpSettleInstr.Close;
  cdsTmpSettleInstr.CreateDataSet;
  cdsTmpSettleInstr.Append;
  for i := 0 to cdsSettleInstr.FieldCount -1 do
    cdsTmpSettleInstr.Fields[i].Value := cdsSettleInstr.Fields[i].Value;
  cdsTmpSettleInstrQTY.AsInteger             := iQty;
  cdsTmpSettleInstrSETTLE_AMOUNT.AsFloat     := dAmount;
  cdsTmpSettleInstrORIGINAL_AMT.AsFloat      := dAmount;
  cdsTmpSettleInstrINSTRUCTION_TYPE.AsString := sDR+'VP';
  cdsTmpSettleInstrSETTLE_SIDE.AsString      := sDR;
  cdsTmpSettleInstrCOUNTER_CODE.AsString     := '';
  cdsTmpSettleInstrBS.AsString               := sBS;
  cdsTmpSettleInstr.Post;

  oForm := TfrmOTCInstructionNetting.Create(nil);
  if oForm.ShowModal = mrOk then
  begin
    cdsSettleInstr.Append;
    for i := 0 to cdsTmpSettleInstr.FieldCount -1 do
      cdsSettleInstr.Fields[i].Value := cdsTmpSettleInstr.Fields[i].Value;
    cdsSettleInstrCUSTODY_INSTRID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_CUSTODY_INSTRUCTION');
    if AAmount = 0 then
      cdsSettleInstrINSTRUCTION_TYPE.AsString := sDR + 'FOP'
    else
      cdsSettleInstrINSTRUCTION_TYPE.AsString := AInstrType;

    cdsCustodyLink.Append;
    cdsCustodyLinkCUSTODY_INSTRID.AsInteger := cdsTmpSettleInstrCUSTODY_INSTRID.AsInteger;
    cdsCustodyLinkSIID.AsInteger            := cdsSettleInstrCUSTODY_INSTRID.AsInteger;
    cdsCustodyLinkQTY.AsInteger             := iQty;
    cdsCustodyLinkSETTLE_AMT.AsFloat        := AAmount;
    cdsCustodyLink.Post;
    cdsCustodyLink.ApplyUpdates(-1);

    cdsSettleInstr.Post;
    cdsSettleInstr.ApplyUpdates(-1);

    sMessage := 'OK';

    if AQty = 0 then
      sMessage := dmGlobal.RemoteServer.SettleOTCInstruction(IntToStr(cdsSettleInstrCUSTODY_INSTRID.AsInteger), IntToStr(cdsSettleInstrLINKID.AsInteger), cdsSettleInstrLINKTYPE.AsString);
  end
  else
    sMessage := '';

  oForm.Free;
  cdsTmpSettleInstr.Close;
  Result := sMessage;
end;

procedure TfrmOTCInstruction.cdsSettleInstrINSTRUCTION_TYPEChange(
  Sender: TField);
var
  sInstructionType: string;
begin
  inherited;
  if cdsSettleInstr.State in [dsInsert, dsEdit] then
  begin
    sInstructionType := cdsSettleInstr.FieldByName('INSTRUCTION_TYPE').AsString;
    if (sInstructionType = 'DFOP') or (sInstructionType = 'RFOP') then
    begin
      cdsSettleInstr.FieldByName('SETTLE_AMOUNT').AsFloat := 0;
      cdsSettleInstr.FieldByName('SALDO').AsFloat := 0;   //Request By Irvan 20160818
    end
    //Request By Irvan 20160818
    else
    begin
      cdsSettleInstr.FieldByName('ISMULTICCY').AsString := '0';

      cdsSettleInstr.FieldByName('FOREIGN_CCYCODE').AsString   := '';
      cdsSettleInstr.FieldByName('FOREIGN_EXRATE').AsFloat     := 0;
      cdsSettleInstr.FieldByName('FOREIGN_SETTTLEAMT').AsFloat := 0;
      cdsSettleInstr.FieldByName('SETTLE_AMOUNT').AsFloat      := cdsSettleInstr.FieldByName('ORIGINAL_AMT').AsFloat;
      cdsSettleInstr.FieldByName('SALDO').AsFloat              := 0;
    end;

    //Request By Irvan 20160818
//    lcSettleAmount.Enabled := not ((sInstructionType = 'DFOP') or (sInstructionType = 'RFOP'));
  end;
end;

procedure TfrmOTCInstruction.cmbFilterByPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Refresh
end;

procedure TfrmOTCInstruction.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  AFormClass := FEditorForm;
  inherited;
end;

procedure TfrmOTCInstruction.dtFilterDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TfrmOTCInstruction.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;
begin
  for i := 0 to gvwExchange.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwExchange.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  for i := 0 to gvwNonExchange.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwNonExchange.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  for i := 0 to gvwColWColDS.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwColWColDS.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  with dmGlobal do
  begin
    OpenUserLayout(Self.Name);

    if cdsUserLayout.isEmpty then
      cdsUserLayout.Append
    else
      cdsUserLayout.Edit;

    LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmReadWrite);
    Try
      PropStore.StorageStream := LayoutStream;
      PropStore.StoreTo();
      cdsUserLayoutFORMNAME.AsString := Self.Name;
      cdsUserLayoutLAYOUTSETTING.LoadFromStream(LayoutStream);
      cdsUserLayout.Post;
    Finally
      if Assigned(LayoutStream) then
        FreeAndNil(LayoutStream);
    End;
  end;
end;

procedure TfrmOTCInstruction.FormCreate(Sender: TObject);
var
  oDataset: TDataset;
  i: Integer;
  oPropStoreComponenItem: TcxPropertiesStoreComponent;
  LayoutStream: TStream;

  procedure SetDisplayFormat(ADataset: TDataset);
  var
    oField: TField;
  begin
    if ADataset <> nil then
    begin
      oField := ADataset.FindField(CONT_FIELD_MODDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;

      oField := ADataset.FindField(CONT_FIELD_APPDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;

      oField := ADataset.FindField(CONT_FIELD_EDIT4YDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;

      oField := ADataset.FindField(CONT_FIELD_UNDER4YDA);
      if (oField <> nil) then
      begin
        if oField.DataType in [ftDateTime] then
          TDateTimeField(oField).DisplayFormat := 'dd MMM yyyy hh:nn:ss'
      end;
    end;
  end;
begin
  inherited;
  oDataset := DataContainer.ListDataset;
  if oDataset <> nil then
  begin
    SetDisplayFormat(oDataset);
  end;

  oDataset := DataContainer.ListDatasetUpd;
  if oDataset <> nil then
  begin
    SetDisplayFormat(oDataset);
  end;

  oDataset := DataContainer.ListDatasetDel;
  if oDataset <> nil then
  begin
    SetDisplayFormat(oDataset);
  end;

  for i := 0 to gvwExchange.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwExchange.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  for i := 0 to gvwNonExchange.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwNonExchange.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  for i := 0 to gvwColWColDS.ColumnCount - 1 do
  begin
    oPropStoreComponenItem := TcxPropertiesStoreComponent(PropStore.Components.Add);
    oPropStoreComponenItem.Component := gvwColWColDS.Columns[i];
    oPropStoreComponenItem.Properties.Add('GroupIndex');
    oPropStoreComponenItem.Properties.Add('Position.ColIndex');
    oPropStoreComponenItem.Properties.Add('Visible');
    oPropStoreComponenItem.Properties.Add('Width');
  end;

  with dmGlobal do
  begin
    OpenUserLayout(Self.Name);

    if cdsUserLayout.IsEmpty then
      exit;

    LayoutStream := cdsUserLayout.CreateBlobStream(cdsUserLayoutLAYOUTSETTING, bmRead);
    Try
      PropStore.StorageStream := LayoutStream;
      PropStore.RestoreFrom;
    Finally
      if Assigned(LayoutStream) then
        FreeAndNil(LayoutStream);
    End;
  end;

  FDueDate              := dmGlobal.RemoteServer.GetTransDate;
  dtFilterDate.Date     := FDueDate;
  cmbFilterBy.EditValue := 'D';

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccType.Active then
    cdsLuAccType.Open;
  end;

  cdsOTCInstruction.Close;
  cdsOTCInstruction.Params[0].AsDate   := dtFilterDate.Date;
  cdsOTCInstruction.Params[1].AsString := cmbFilterBy.EditValue;
  cdsOTCInstruction.Open;

  cdsColWColDS.Close;
  cdsColWColDS.Params[0].AsDate   := dtFilterDate.Date;
  cdsColWColDS.Params[1].AsString := cmbFilterBy.EditValue;
  cdsColWColDS.Open;

  cdsCustodyLink.Close;
  cdsCustodyLink.Params[0].AsInteger := 0;
  cdsCustodyLink.Open;

  dmGlobal.IntDataLookup.cdsLuCustody.Close;
  dmGlobal.IntDataLookup.cdsLuCustody.Open;

  dmGlobal.IntDataLookup.cdsLuInstructionTypes.Close;
  dmGlobal.IntDataLookup.cdsLuInstructionTypes.Open;

  dmGlobal.IntDataLookup.cdsLuCcy.Close;
  dmGlobal.IntDataLookup.cdsLuCcy.Open;

  dmGlobal.IntDataLookup.cdsLuCBestInstrReason.Close;
  dmGlobal.IntDataLookup.cdsLuCBestInstrReason.Open;

  dmGlobal.IntDataLookup.cdsLuCBestInstrPurpose.Close;
  dmGlobal.IntDataLookup.cdsLuCBestInstrPurpose.Open;
end;

procedure TfrmOTCInstruction.FormShow(Sender: TObject);
begin
  inherited;

  cdsOTCInstruction.Filter   := 'EXCHANGE = '+QuotedStr('1');
  cdsOTCInstruction.Filtered := True;
end;

procedure TfrmOTCInstruction.GenerateCBestInstOTC(ASettle_Side, AFileNameRV, AFileNameFOP: string);
var
  sFileName, sFolderName, sTmpFileName: string;
  sListVP, sListFOP, sList: string;
  oCBestRVList, oCBestFOPList, oCBestList: TStringList;
  i, iNoFile : Integer;
  sMode: string;
begin
  Cursor        := crHourGlass;
  oCBestList    := TStringList.Create;

  cdsCBestInstOTC.Close;
  cdsCBestInstOTC.Params[0].AsDateTime := dtFilterDate.Date;
  cdsCBestInstOTC.Params[1].AsString   := ''; //cbInstructionType.EditValue;
  cdsCBestInstOTC.Open;

  cdsCBestInstOTC.First;
  while not cdsCBestInstOTC.Eof do
  begin

    for i := 1 to 17 do
      sList := sList + cdsCBestInstOTC.Fields[i].AsString + '|';
    oCBestList.Add(sList);

    cdsCBestInstOTC.Next;
  end;

  if oCBestList.Count > 0 then
  begin
    if FileExists(AFileNameRV) then
      DeleteFile(AFileNameRV);
    dmGlobal.IntDataCBest.GenerateRD(AFileNameRV, oCBestList, '1');
  end;

  oCBestList.Free;
  Cursor := crDefault;
end;

procedure TfrmOTCInstruction.GenerateColwColds;
var
  sFileName, sFolderName,
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9: string;
  oCBestList: TStringList;
  iCreateFile: Integer;
  i : Integer;
begin
  inherited;
  SaveDialog.FileName := 'COLW_'+FormatDateTime('YYYYMMDD', dtFilterDate.Date);
  if SaveDialog.Execute(Handle) then
    sFileName := SaveDialog.FileName
  else
    sFileName := '';

  if sFileName <> '' then
  begin
    cursor := crHourGlass;
    pnlGenerating.Visible := True;
    Application.ProcessMessages;

    oCBestList := TStringList.Create;
    s0         := IntToStr(cdsColWColDS.RecordCount);

    cdsColWColDS.DisableControls;

    cdsColWColDS.Filter   := 'SETTLE_SIDE = '+QuotedStr('R');
    cdsColWColDS.Filtered := True;

    cdsColWColDS.First;
    while not cdsColWColDS.Eof do
    begin
      if cdsColWColDSQTY.AsFloat <> 0 then
      begin
        s0 := cdsColWColDSCUSTODY_EXTREF.AsString;
        s1 := dmGlobal.RemoteServer.GetGlobalParamString('009');
        s2 := cdsColWColDSCBEST_04.AsString;
        s3 := cdsColWColDSCBEST_01.AsString;
        s4 := '';
        s5 := 'LOCAL';
        s6 := cdsColWColDSSECURITIY_CODE.AsString;
        s7 := FloatToStr(Abs(cdsColWColDSQTY.AsFloat));
        s8 := FormatDateTime('YYYYMMDD', cdsColWColDSSETTLEMENTDATE.AsDateTime);
        s9 := cdsColWColDSREMARKS.AsString;

        oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+s8+'|'+s9);

        cdsSettleInstr.Close;
        cdsSettleInstr.Params[0].AsInteger := cdsColWColDSCUSTODY_INSTRID.AsInteger;
        cdsSettleInstr.Open;
      end;

      cdsColWColDS.Next;
    end;
    oCBestList.SaveToFile(sFileName+'.txt');
    dmGlobal.IntDataCBest.GenerateCOL(sFileName+'.xlsx', oCBestList, 'COLW/COLDS');

    cdsColWColDS.Filtered := False;
    cdsColWColDS.EnableControls;
    cdsColWColDS.Refresh;

    pnlGenerating.Visible := False;
    ShowMessage('Generate file has done');
    FreeAndNil(oCBestList);
  end;
end;

procedure TfrmOTCInstruction.GenerateDeliverRFOPRV(AFolderName: string);
var
  sFileNameRV, sFileNameFOP,
  sFileName: string;
begin
  sFileName := AFolderName;
  GenerateCBestInstOTC('D', sFileName, '');
end;

procedure TfrmOTCInstruction.GenerateReceiveRFOPRV(AFolderName: string);
var
  sFileName: string;
begin
  sFileName := AFolderName+'OTC'+FormatDateTime('YYYYMMDD', dtFilterDate.Date)+'_'+FormatDateTime('DDMMYY', Now);
  sFileName := sFileName+'.xls';

  if FileExists(sFileName) then
    DeleteFile(sFileName);

//  GenerateCBestInstOTC('R', sFileName);
end;

function TfrmOTCInstruction.GetData(ARecord, AIndex: Integer): Variant;
var
  oGrid: TcxGridDBBandedTableView;
begin
  if TabOTCInstruction.Properties.ActivePage = TabExchage then
    oGrid := gvwExchange
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
    oGrid := gvwNonExchange;

  Result := oGrid.Controller.SelectedRecords[ARecord].Values[AIndex];
end;

function TfrmOTCInstruction.IsNull(AData: variant): string;
begin
  if VarIsNull(AData) then
    Result := ''
  else
    Result := AData;
end;

procedure TfrmOTCInstruction.Refresh;
begin
  cdsOTCInstruction.Close;
  cdsOTCInstruction.Params[0].AsDate   := dtFilterDate.Date;
  cdsOTCInstruction.Params[1].AsString := cmbFilterBy.EditValue;
  cdsOTCInstruction.Open;

  cdsColWColDS.Close;
  cdsColWColDS.Params[0].AsDate   := dtFilterDate.Date;
  cdsColWColDS.Params[1].AsString := cmbFilterBy.EditValue;
  cdsColWColDS.Open;
end;

procedure TfrmOTCInstruction.TabOTCInstructionChange(Sender: TObject);
begin
  inherited;
  if TabOTCInstruction.Properties.ActivePage = TabExchage then
  begin
    cdsOTCInstruction.Filter := 'EXCHANGE = '+QuotedStr('1');
    actOTCEdit.Visible       := True;
    actMerger.Visible        := True;
    actNetting.Visible       := True;
    actNettingDiff.Visible   := True;
    actSplit.Visible         := True;

  end
  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
  begin
    cdsOTCInstruction.Filter := 'EXCHANGE = '+QuotedStr('0');
    actOTCEdit.Visible       := False;
    actMerger.Visible        := False;
    actNetting.Visible       := False;
    actNettingDiff.Visible   := False;
    actSplit.Visible         := False;
  end;

  cdsOTCInstruction.Filtered := True;
  cdsOTCInstruction.Refresh;
end;

procedure TfrmOTCInstruction.UpdateMatch(ACustodyInstrID: Integer);
begin
  cdsSettleInstr.Close;
  cdsSettleInstr.Params[0].AsInteger := ACustodyInstrID;
  cdsSettleInstr.Open;

  cdsSettleInstr.Edit;
  cdsSettleInstrMATCH.AsString := '1';
  cdsSettleInstr.Post;
  cdsSettleInstr.ApplyUpdates(-1);
end;

procedure TfrmOTCInstruction.UpdateStatus(ACustodyInstrIDList: TStringList);
var
  i: integer;
begin
  for i := 0 to ACustodyInstrIDList.Count -1 do
  begin
    cdsSettleInstr.Close;
    cdsSettleInstr.Params[0].AsInteger := StrToInt(ACustodyInstrIDList.Strings[i]);
    cdsSettleInstr.Open;

    if not cdsSettleInstr.IsEmpty then
    begin
      cdsSettleInstr.Edit;
      cdsSettleInstrSTAT.AsString  := 'C';
      cdsSettleInstrMATCH.AsString := '1';
      cdsSettleInstr.Post;

      cdsSettleInstr.ApplyUpdates(-1)
    end;
  end;
end;

Initialization
  RegisterClass(TfrmOTCInstruction);


end.
