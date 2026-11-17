unit FormBankReceiveList;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxLabel, cxDBLabel, cxGridDBTableView, cxRadioGroup, StrUtils,
  cxImageComboBox, ShellApi, Vcl.ExtCtrls, cxCheckBox,
  cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView,
  cxPCdxBarPopupMenu, cxPC, dxBarBuiltInMenu, System.Actions, System.ImageList;

type
  TfrmBankReceiveList = class(TfrmBrowseData)
    cdsPayment_H: TNClientDataset;
    cdsPayment_D: TNClientDataset;
    dxLayoutControl1: TdxLayoutControl;
    dtVoucherDate: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    actViewData: TNAction;
    dsPayment_D: TDataSource;
    dxLayoutControl1Group5: TdxLayoutGroup;
    actGenerateBCAFile: TNAction;
    actGenerateCBest: TNAction;
    actPosting: TNAction;
    N6: TMenuItem;
    actCancelCash: TNAction;
    actGenerateMandiriFile: TNAction;
    actGeneratePermataFile: TNAction;
    actGenerateNiagaFile: TNAction;
    actGenerateBNIFile: TNAction;
    cdsCashVoucher_H: TNClientDataset;
    cdsCashVoucher_D: TNClientDataset;
    cdsCashVoucher_HVOUCHERID: TLargeintField;
    cdsCashVoucher_HVOUCHERNO: TStringField;
    cdsCashVoucher_HVOUCHERTYPE: TStringField;
    cdsCashVoucher_HENTRYDATE: TDateField;
    cdsCashVoucher_HVOUCHERDATE: TDateField;
    cdsCashVoucher_HACCID: TLargeintField;
    cdsCashVoucher_HACCNO: TStringField;
    cdsCashVoucher_HACCNAME: TStringField;
    cdsCashVoucher_HBROKER_BANKID: TIntegerField;
    cdsCashVoucher_HBROKER_BANKCODE: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNO: TStringField;
    cdsCashVoucher_HBROKER_BANKACCNAME: TStringField;
    cdsCashVoucher_HBROKER_BANKACCBRANCH: TStringField;
    cdsCashVoucher_HBROKER_BANKPAYMENTID: TLargeintField;
    cdsCashVoucher_HCUST_BANKID: TIntegerField;
    cdsCashVoucher_HCUST_BANKCODE: TStringField;
    cdsCashVoucher_HCUST_BANKACCNO: TStringField;
    cdsCashVoucher_HCUST_BANKACCNAME: TStringField;
    cdsCashVoucher_HCUST_BANKACCBRANCH: TStringField;
    cdsCashVoucher_HVOUCHER_DESC: TStringField;
    cdsCashVoucher_HCCYCODE: TStringField;
    cdsCashVoucher_HEXRATE: TFloatField;
    cdsCashVoucher_HTRANSFERMODE: TStringField;
    cdsCashVoucher_HCHARGESAMT: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT: TFloatField;
    cdsCashVoucher_HSTAT: TStringField;
    cdsCashVoucher_HPOSTED: TStringField;
    cdsCashVoucher_HJRNID: TLargeintField;
    cdsCashVoucher_HMODDA: TDateTimeField;
    cdsCashVoucher_HMODUI: TStringField;
    cdsCashVoucher_HAPPDA: TDateTimeField;
    cdsCashVoucher_HAPPUI: TStringField;
    cdsCashVoucher_HUNDER4Y: TIntegerField;
    cdsCashVoucher_HUNDER4YDA: TDateTimeField;
    cdsCashVoucher_HNOTES4Y: TStringField;
    cdsCashVoucher_HISDEL: TIntegerField;
    cdsCashVoucher_HID: TLargeintField;
    cdsCashVoucher_HqryCashVoucher_D: TDataSetField;
    cdsCashVoucher_DVOUCHERID: TLargeintField;
    cdsCashVoucher_DSEQID: TLargeintField;
    cdsCashVoucher_DTRANS_TYPE: TStringField;
    cdsCashVoucher_DLINKTYPE: TStringField;
    cdsCashVoucher_DLINKID: TLargeintField;
    cdsCashVoucher_DLINKNO: TStringField;
    cdsCashVoucher_DACCID: TLargeintField;
    cdsCashVoucher_DACCNO: TStringField;
    cdsCashVoucher_DACCNAME: TStringField;
    cdsCashVoucher_DTRDDATE: TDateField;
    cdsCashVoucher_DDUEDATE: TDateField;
    cdsCashVoucher_DCASH_DESC: TStringField;
    cdsCashVoucher_DTRANS_AMT: TFloatField;
    cdsCashVoucher_DNETTYPE: TStringField;
    cdsCashVoucher_DAMOUNT: TFloatField;
    cdsCashVoucher_DMODDA: TDateTimeField;
    cdsCashVoucher_DMODUI: TStringField;
    cdsCashVoucher_DAPPDA: TDateTimeField;
    cdsCashVoucher_DAPPUI: TStringField;
    cdsCashVoucher_DUNDER4Y: TIntegerField;
    cdsCashVoucher_DUNDER4YDA: TDateTimeField;
    cdsCashVoucher_DNOTES4Y: TStringField;
    cdsCashVoucher_DISDEL: TIntegerField;
    cdsCashVoucher_DID: TLargeintField;
    cdsCashVoucher_DOVERDUE: TStringField;
    gvwMasterVOUCHERID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERNO: TcxGridDBBandedColumn;
    gvwMasterVOUCHERTYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVOUCHERDATE: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKID: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterVOUCHER_DESC: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    gvwMasterTOTAL_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterTRANSFERMODE: TcxGridDBBandedColumn;
    cdsPayment_HVOUCHERID: TLargeintField;
    cdsPayment_HVOUCHERNO: TStringField;
    cdsPayment_HVOUCHERTYPE: TStringField;
    cdsPayment_HENTRYDATE: TDateField;
    cdsPayment_HVOUCHERDATE: TDateField;
    cdsPayment_HACCID: TLargeintField;
    cdsPayment_HACCNO: TStringField;
    cdsPayment_HACCNAME: TStringField;
    cdsPayment_HBROKER_BANKID: TIntegerField;
    cdsPayment_HBROKER_BANKCODE: TStringField;
    cdsPayment_HBROKER_BANKACCNO: TStringField;
    cdsPayment_HBROKER_BANKACCNAME: TStringField;
    cdsPayment_HBROKER_BANKACCBRANCH: TStringField;
    cdsPayment_HBROKER_BANKPAYMENTID: TLargeintField;
    cdsPayment_HCUST_BANKID: TIntegerField;
    cdsPayment_HCUST_BANKCODE: TStringField;
    cdsPayment_HCUST_BANKACCNO: TStringField;
    cdsPayment_HCUST_BANKACCNAME: TStringField;
    cdsPayment_HCUST_BANKACCBRANCH: TStringField;
    cdsPayment_HVOUCHER_DESC: TStringField;
    cdsPayment_HCCYCODE: TStringField;
    cdsPayment_HEXRATE: TFloatField;
    cdsPayment_HTRANSFERMODE: TStringField;
    cdsPayment_HCHARGESAMT: TFloatField;
    cdsPayment_HTOTAL_AMOUNT: TFloatField;
    cdsPayment_HSTAT: TStringField;
    cdsPayment_HPOSTED: TStringField;
    cdsPayment_HJRNID: TLargeintField;
    cdsPayment_HMODDA: TDateTimeField;
    cdsPayment_HMODUI: TStringField;
    cdsPayment_HAPPDA: TDateTimeField;
    cdsPayment_HAPPUI: TStringField;
    cdsPayment_HUNDER4Y: TIntegerField;
    cdsPayment_HUNDER4YDA: TDateTimeField;
    cdsPayment_HNOTES4Y: TStringField;
    cdsPayment_HISDEL: TIntegerField;
    cdsPayment_HID: TLargeintField;
    cdsPayment_DVOUCHERID: TLargeintField;
    cdsPayment_DSEQID: TLargeintField;
    cdsPayment_DTRANS_TYPE: TStringField;
    cdsPayment_DLINKTYPE: TStringField;
    cdsPayment_DLINKID: TLargeintField;
    cdsPayment_DLINKNO: TStringField;
    cdsPayment_DACCID: TLargeintField;
    cdsPayment_DACCNO: TStringField;
    cdsPayment_DACCNAME: TStringField;
    cdsPayment_DTRDDATE: TDateField;
    cdsPayment_DDUEDATE: TDateField;
    cdsPayment_DCASH_DESC: TStringField;
    cdsPayment_DTRANS_AMT: TFloatField;
    cdsPayment_DNETTYPE: TStringField;
    cdsPayment_DAMOUNT: TFloatField;
    cdsPayment_DMODDA: TDateTimeField;
    cdsPayment_DMODUI: TStringField;
    cdsPayment_DAPPDA: TDateTimeField;
    cdsPayment_DAPPUI: TStringField;
    cdsPayment_DUNDER4Y: TIntegerField;
    cdsPayment_DUNDER4YDA: TDateTimeField;
    cdsPayment_DNOTES4Y: TStringField;
    cdsPayment_DISDEL: TIntegerField;
    cdsPayment_DID: TLargeintField;
    cdsPayment_DOVERDUE: TStringField;
    cdsPayment_HBICODE: TStringField;
    cdsPayment_HBANK_REFERENCE: TStringField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterBROKER_BANKPAYMENTID: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKID: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUST_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterCHARGESAMT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterBICODE: TcxGridDBBandedColumn;
    gvwMasterBANK_REFERENCE: TcxGridDBBandedColumn;
    SaveFile: TSaveDialog;
    cdsCashVoucher_HBANK_REFERENCE: TStringField;
    cdsCashVoucher_HBANK_INSTRUCTION: TStringField;
    cdsCashVoucher_HCCYCODE_FX: TStringField;
    cdsCashVoucher_HCHARGESAMT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField;
    cdsPayment_HBANK_INSTRUCTION: TStringField;
    cdsPayment_HCCYCODE_FX: TStringField;
    cdsPayment_HCHARGESAMT_FX: TFloatField;
    cdsPayment_HTOTAL_AMOUNT_FX: TFloatField;
    cdsPayment_HTOTAL_AMOUNT_FX_CHANGED: TFloatField;
    cdsPayment_HTOTAL_AMOUNT_FX_DIFF: TFloatField;
    gvwMasterBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwMasterCCYCODE_FX: TcxGridDBBandedColumn;
    gvwMasterCHARGESAMT_FX: TcxGridDBBandedColumn;
    gvwMasterTOTAL_AMOUNT_FX: TcxGridDBBandedColumn;
    gvwMasterTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn;
    gvwMasterTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn;
    actReverse: TNAction;
    actGenerateBankFile: TNAction;
    GeneratetoBankFile2: TMenuItem;
    cdsPayment_HBROKER_BANKINFO: TStringField;
    gvwMasterBROKER_BANKINFO: TcxGridDBBandedColumn;
    cdsPayment_HACCSOPID: TLargeintField;
    cdsPayment_HSWIFT_CODE: TStringField;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterSWIFT_CODE: TcxGridDBBandedColumn;
    dsLuBrokerBank: TDataSource;
    cdsLuBrokerBank: TNClientDataset;
    cdsLuBrokerBankACCBANKID: TIntegerField;
    cdsLuBrokerBankACCID: TIntegerField;
    cdsLuBrokerBankBNCODE: TStringField;
    cdsLuBrokerBankBANKACCNO: TStringField;
    cdsLuBrokerBankBANKACCNAME: TStringField;
    cdsLuBrokerBankBANKBRANCH: TStringField;
    cdsLuBrokerBankACTLED_SEQID: TIntegerField;
    cdsLuBrokerBankISRDN: TStringField;
    cdsLuBrokerBankACCBANKCODE: TStringField;
    cdsLuBrokerBankCCYCODE: TStringField;
    dxLayoutControl1Group3: TdxLayoutGroup;
    actBankReceive: TNAction;
    dxBarButton1: TdxBarButton;
    ReportReceive: TNClientReportContainer;
    PrintBankReceive1: TMenuItem;
    actCreateCashReceive: TNAction;
    actPostCashReceive: TNAction;
    actReversePosting: TNAction;
    PostingCashReceive1: TMenuItem;
    ReversePosting1: TMenuItem;
    grdMasterDBCardView1: TcxGridDBCardView;
    Settle1: TMenuItem;
    N5: TMenuItem;
    cdsPayment_HDEAL_EXRATE: TFloatField;
    cdsPayment_HTRANSTYPE: TStringField;
    cdsPayment_HTRANSFER_AMT: TFloatField;
    cdsPayment_HMANUAL_VOUCHER: TStringField;
    cdsCashVoucher_HACCSOPID: TLargeintField;
    cdsCashVoucher_HDEAL_EXRATE: TFloatField;
    cdsCashVoucher_HTRANSTYPE: TStringField;
    cdsCashVoucher_HTRANSFER_AMT: TFloatField;
    cdsCashVoucher_HMANUAL_VOUCHER: TStringField;
    dxLayoutControl1Group1: TdxLayoutGroup;
    PageControl: TcxPageControl;
    tsAutoVoucher: TcxTabSheet;
    tsManualVoucher: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwAutoVoucher: TcxGridDBBandedTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridLevel2: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwManualVoucher: TcxGridDBBandedTableView;
    cxGridDBCardView2: TcxGridDBCardView;
    cxGridLevel3: TcxGridLevel;
    gvwManualVoucherVOUCHERID: TcxGridDBBandedColumn;
    gvwManualVoucherVOUCHERNO: TcxGridDBBandedColumn;
    gvwManualVoucherVOUCHERTYPE: TcxGridDBBandedColumn;
    gvwManualVoucherENTRYDATE: TcxGridDBBandedColumn;
    gvwManualVoucherVOUCHERDATE: TcxGridDBBandedColumn;
    gvwManualVoucherACCID: TcxGridDBBandedColumn;
    gvwManualVoucherACCNO: TcxGridDBBandedColumn;
    gvwManualVoucherACCNAME: TcxGridDBBandedColumn;
    gvwManualVoucherBROKER_BANKID: TcxGridDBBandedColumn;
    gvwManualVoucherBROKER_BANKCODE: TcxGridDBBandedColumn;
    gvwManualVoucherBROKER_BANKACCNO: TcxGridDBBandedColumn;
    gvwManualVoucherBROKER_BANKACCNAME: TcxGridDBBandedColumn;
    gvwManualVoucherBROKER_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwManualVoucherBROKER_BANKPAYMENTID: TcxGridDBBandedColumn;
    gvwManualVoucherCUST_BANKID: TcxGridDBBandedColumn;
    gvwManualVoucherCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwManualVoucherCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwManualVoucherCUST_BANKACCNAME: TcxGridDBBandedColumn;
    gvwManualVoucherCUST_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwManualVoucherVOUCHER_DESC: TcxGridDBBandedColumn;
    gvwManualVoucherCCYCODE: TcxGridDBBandedColumn;
    gvwManualVoucherEXRATE: TcxGridDBBandedColumn;
    gvwManualVoucherTRANSFERMODE: TcxGridDBBandedColumn;
    gvwManualVoucherCHARGESAMT: TcxGridDBBandedColumn;
    gvwManualVoucherTOTAL_AMOUNT: TcxGridDBBandedColumn;
    gvwManualVoucherSTAT: TcxGridDBBandedColumn;
    gvwManualVoucherPOSTED: TcxGridDBBandedColumn;
    gvwManualVoucherJRNID: TcxGridDBBandedColumn;
    gvwManualVoucherMODDA: TcxGridDBBandedColumn;
    gvwManualVoucherMODUI: TcxGridDBBandedColumn;
    gvwManualVoucherAPPDA: TcxGridDBBandedColumn;
    gvwManualVoucherAPPUI: TcxGridDBBandedColumn;
    gvwManualVoucherUNDER4Y: TcxGridDBBandedColumn;
    gvwManualVoucherUNDER4YDA: TcxGridDBBandedColumn;
    gvwManualVoucherNOTES4Y: TcxGridDBBandedColumn;
    gvwManualVoucherISDEL: TcxGridDBBandedColumn;
    gvwManualVoucherID: TcxGridDBBandedColumn;
    gvwManualVoucherBICODE: TcxGridDBBandedColumn;
    gvwManualVoucherBANK_REFERENCE: TcxGridDBBandedColumn;
    gvwManualVoucherBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwManualVoucherCCYCODE_FX: TcxGridDBBandedColumn;
    gvwManualVoucherCHARGESAMT_FX: TcxGridDBBandedColumn;
    gvwManualVoucherTOTAL_AMOUNT_FX: TcxGridDBBandedColumn;
    gvwManualVoucherTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn;
    gvwManualVoucherTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn;
    gvwManualVoucherBROKER_BANKINFO: TcxGridDBBandedColumn;
    gvwManualVoucherACCSOPID: TcxGridDBBandedColumn;
    gvwManualVoucherSWIFT_CODE: TcxGridDBBandedColumn;
    gvwManualVoucherDEAL_EXRATE: TcxGridDBBandedColumn;
    gvwManualVoucherTRANSTYPE: TcxGridDBBandedColumn;
    gvwManualVoucherTRANSFER_AMT: TcxGridDBBandedColumn;
    gvwManualVoucherMANUAL_VOUCHER: TcxGridDBBandedColumn;
    gvwAutoVoucherVOUCHERID: TcxGridDBBandedColumn;
    gvwAutoVoucherVOUCHERNO: TcxGridDBBandedColumn;
    gvwAutoVoucherVOUCHERTYPE: TcxGridDBBandedColumn;
    gvwAutoVoucherENTRYDATE: TcxGridDBBandedColumn;
    gvwAutoVoucherVOUCHERDATE: TcxGridDBBandedColumn;
    gvwAutoVoucherACCID: TcxGridDBBandedColumn;
    gvwAutoVoucherACCNO: TcxGridDBBandedColumn;
    gvwAutoVoucherACCNAME: TcxGridDBBandedColumn;
    gvwAutoVoucherBROKER_BANKID: TcxGridDBBandedColumn;
    gvwAutoVoucherBROKER_BANKCODE: TcxGridDBBandedColumn;
    gvwAutoVoucherBROKER_BANKACCNO: TcxGridDBBandedColumn;
    gvwAutoVoucherBROKER_BANKACCNAME: TcxGridDBBandedColumn;
    gvwAutoVoucherBROKER_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwAutoVoucherBROKER_BANKPAYMENTID: TcxGridDBBandedColumn;
    gvwAutoVoucherCUST_BANKID: TcxGridDBBandedColumn;
    gvwAutoVoucherCUST_BANKCODE: TcxGridDBBandedColumn;
    gvwAutoVoucherCUST_BANKACCNO: TcxGridDBBandedColumn;
    gvwAutoVoucherCUST_BANKACCNAME: TcxGridDBBandedColumn;
    gvwAutoVoucherCUST_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwAutoVoucherVOUCHER_DESC: TcxGridDBBandedColumn;
    gvwAutoVoucherCCYCODE: TcxGridDBBandedColumn;
    gvwAutoVoucherEXRATE: TcxGridDBBandedColumn;
    gvwAutoVoucherTRANSFERMODE: TcxGridDBBandedColumn;
    gvwAutoVoucherCHARGESAMT: TcxGridDBBandedColumn;
    gvwAutoVoucherTOTAL_AMOUNT: TcxGridDBBandedColumn;
    gvwAutoVoucherSTAT: TcxGridDBBandedColumn;
    gvwAutoVoucherPOSTED: TcxGridDBBandedColumn;
    gvwAutoVoucherJRNID: TcxGridDBBandedColumn;
    gvwAutoVoucherMODDA: TcxGridDBBandedColumn;
    gvwAutoVoucherMODUI: TcxGridDBBandedColumn;
    gvwAutoVoucherAPPDA: TcxGridDBBandedColumn;
    gvwAutoVoucherAPPUI: TcxGridDBBandedColumn;
    gvwAutoVoucherUNDER4Y: TcxGridDBBandedColumn;
    gvwAutoVoucherUNDER4YDA: TcxGridDBBandedColumn;
    gvwAutoVoucherNOTES4Y: TcxGridDBBandedColumn;
    gvwAutoVoucherISDEL: TcxGridDBBandedColumn;
    gvwAutoVoucherID: TcxGridDBBandedColumn;
    gvwAutoVoucherBICODE: TcxGridDBBandedColumn;
    gvwAutoVoucherBANK_REFERENCE: TcxGridDBBandedColumn;
    gvwAutoVoucherBANK_INSTRUCTION: TcxGridDBBandedColumn;
    gvwAutoVoucherCCYCODE_FX: TcxGridDBBandedColumn;
    gvwAutoVoucherCHARGESAMT_FX: TcxGridDBBandedColumn;
    gvwAutoVoucherTOTAL_AMOUNT_FX: TcxGridDBBandedColumn;
    gvwAutoVoucherTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn;
    gvwAutoVoucherTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn;
    gvwAutoVoucherBROKER_BANKINFO: TcxGridDBBandedColumn;
    gvwAutoVoucherACCSOPID: TcxGridDBBandedColumn;
    gvwAutoVoucherSWIFT_CODE: TcxGridDBBandedColumn;
    gvwAutoVoucherDEAL_EXRATE: TcxGridDBBandedColumn;
    gvwAutoVoucherTRANSTYPE: TcxGridDBBandedColumn;
    gvwAutoVoucherTRANSFER_AMT: TcxGridDBBandedColumn;
    gvwAutoVoucherMANUAL_VOUCHER: TcxGridDBBandedColumn;
    cdsBankList: TNClientDataset;
    cdsBankListBNCODE: TStringField;
    cdsBankListBNNAME: TStringField;
    cdsBankListINITIAL_NAME: TStringField;
    cdsCashVoucher_HSESION: TStringField;
    cdsCashVoucher_HSESION_TIME: TDateTimeField;
    cdsCashVoucher_HREQFF: TIntegerField;
    cdsPayment_HSESION: TStringField;
    cdsPayment_HSESION_TIME: TDateTimeField;
    cdsPayment_HREQFF: TIntegerField;
    gvwAutoVoucherSESION: TcxGridDBBandedColumn;
    gvwAutoVoucherSESION_TIME: TcxGridDBBandedColumn;
    gvwAutoVoucherREQFF: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure aclEditorExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actGenerateCBestExecute(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actCancelCashExecute(Sender: TObject);
    procedure actGenerateMandiriFileExecute(Sender: TObject);
    procedure actGeneratePermataFileExecute(Sender: TObject);
    procedure actGenerateNiagaFileExecute(Sender: TObject);
    procedure actGenerateBNIFileExecute(Sender: TObject);
    procedure cdsCashVoucher_HNewRecord(DataSet: TDataSet);
    procedure actRefreshExecute(Sender: TObject);
    procedure dtVoucherDatePropertiesCloseUp(Sender: TObject);
    procedure cbBankPropertiesCloseUp(Sender: TObject);
    procedure actPostingUpdate(Sender: TObject);
    procedure actCancelCashUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actGenerateBankFileExecute(Sender: TObject);
    procedure cdsPayment_HCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure actBankReceiveExecute(Sender: TObject);
    procedure actCreateCashReceiveExecute(Sender: TObject);
    procedure actPostCashReceiveExecute(Sender: TObject);
    procedure actReversePostingExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
  private
    { Private declarations }
    function ConvertComaToDot(AValue: string): string;
    function ConvertOrdinary(AValue: string): Integer;
    function GetValue(ARowIndex: integer; AValueIndex: Integer): string;

    procedure GenerateBCAChecksum(AFileName, ATransferMode: string);
    procedure GenerateBankBCA;
    procedure Refresh;
    procedure GenerateToBankFile;
    procedure GenerateBankFile(ABankName: string);
    function getBankCode(ABankCode: string): string;

  public
    { Public declarations }
  end;

var
  frmBankReceiveList: TfrmBankReceiveList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, DataCBest, FormPayment, FormBankRefference,
  FormCreateCashRecPay;

procedure TfrmBankReceiveList.aclEditorExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  actGenerateBCAFile.Enabled := False;
  actGenerateCBest.Enabled   := False;
end;

procedure TfrmBankReceiveList.actBankReceiveExecute(Sender: TObject);
begin
  inherited;
  ReportReceive.Params[0].AsDate    := dtVoucherDate.Date;
  ReportReceive.Params[1].AsString  := cdsPayment_HBANK_REFERENCE.AsString;
  ReportReceive.Params[2].AsString  := cdsPayment_HBROKER_BANKID.AsString;

  ReportReceive.PreviewReport;
end;

procedure TfrmBankReceiveList.actCancelCashExecute(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  if MessageDlg('Are you sure to cancel cash voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
      dmGlobal.RemoteServer.CashVoucherCancel(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterVOUCHERID.index]);
  end;
  ShowMessage('Finished Canceling Cash Voucher.');
  cdsPayment_H.Refresh;
end;

procedure TfrmBankReceiveList.actCancelCashUpdate(Sender: TObject);
begin
  inherited;
  actCancel.Enabled := cdsPayment_HSTAT.AsString = 'O';
end;

procedure TfrmBankReceiveList.actCreateCashReceiveExecute(Sender: TObject);
var
  oForm: TfrmCreateCashRecPay;
begin
  inherited;
  oForm := TfrmCreateCashRecPay.Create(nil);
  with TfrmCreateCashRecPay(oForm) do
  begin
    VoucherID  := -1;
    Caption    := 'Create Cash Receive';
    CreateCash := 'R';
    ChangeAcc  := True;
  end;
  oForm.ShowModal;
  FreeAndNil(oForm);
  cdsPayment_H.Refresh;
  cdsPayment_D.Refresh;
end;

procedure TfrmBankReceiveList.actEditExecute(Sender: TObject);
var
  oForm: TfrmCreateCashRecPay;
begin
//  inherited;
  oForm := TfrmCreateCashRecPay.Create(nil);
  with TfrmCreateCashRecPay(oForm) do
  begin
    VoucherID  := cdsPayment_HVOUCHERID.AsInteger;
    Caption    := 'Create Cash Receive';
    CreateCash := 'R';
    ChangeAcc  := True;
  end;
  oForm.ShowModal;
  FreeAndNil(oForm);
  cdsPayment_H.Refresh;
  cdsPayment_D.Refresh;
end;


function TfrmBankReceiveList.getBankCode(ABankCode: string): string;
var
  sBankInitial: string;
begin
  cdsBankList.Filter   := 'BNCODE = '+QuotedStr(ABankCode);
  cdsBankList.Filtered := True;

  sBankInitial := cdsBankListINITIAL_NAME.AsString;
  if sBankInitial = '' then
  begin
    cdsBankList.Filter   := 'INITIAL_NAME = '+QuotedStr(ABankCode);
    cdsBankList.Filtered := True;

    sBankInitial := cdsBankListBNCODE.AsString;
  end;

  Result := sBankInitial;
end;

procedure TfrmBankReceiveList.actGenerateBankFileExecute(Sender: TObject);
var
  sBankCode: string;
begin
  if PageControl.ActivePage = tsAutoVoucher then
    sBankCode := getBankCode(GetValue(0, gvwAutoVoucherBROKER_BANKCODE.Index))
  else
    sBankCode := getBankCode(GetValue(0, gvwManualVoucherBROKER_BANKCODE.Index));

  if sBankCode = 'BBCA' then
    GenerateBankBCA
  else if sBankCode = 'BMRI' then
    GenerateBankFile('Mandiri')
  else if sBankCode = 'BNLI' then
    GenerateBankFile('Permata')
  else if sBankCode = 'BNGA' then
    GenerateBankFile('Niaga')
  else if sBankCode = 'BBNI' then
    GenerateBankFile('BNI')
  else
    MessageDlg('Bank File Not Available', mtInformation, [mbOk], 0);
end;

procedure TfrmBankReceiveList.actGenerateBNIFileExecute(Sender: TObject);
begin
  inherited;
  GenerateBankFile('BNI');
end;

procedure TfrmBankReceiveList.actGenerateCBestExecute(Sender: TObject);
var
  sFileName, sFolderName,
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9: string;
  oCBestList: TStringList;
begin
  inherited;
  oCBestList := TStringList.Create;

  sFolderName := dmGlobal.FITSCBestInterfaceDir;
  if not DirectoryExists(sFolderName) then
    MessageDlg(sFolderName + ' does not exist, please check configuration setting...', mtError, [mbOk], 0)
  else
  begin
    if cdsPayment_HTRANSFERMODE.AsString = 'COLDS' then
      sFileName := sFolderName+'\Deposit_Cash_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'xlsx'
    else if cdsPayment_HTRANSFERMODE.AsString = 'COLW' then
      sFileName := sFolderName+'\Withdraw_Cash_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'xlsx';

    cdsPayment_H.DisableControls;
    cdsPayment_D.DisableControls;

    cdsPayment_H.First;
    while not cdsPayment_H.Eof do
    begin
      cdsPayment_D.Filtered := False;
      cdsPayment_D.Filter   := 'VOUCHERID = '+cdsPayment_HVOUCHERID.AsString;
      cdsPayment_D.Filtered := True;

      cdsPayment_D.First;
      while not cdsPayment_D.Eof do
      begin
        s0 := cdsPayment_DLINKNO.AsString;
        s1 := dmGlobal.RemoteServer.GetGlobalParamString('009');
        s2 := cdsPayment_HBROKER_BANKCODE.AsString;
        s3 := cdsPayment_DACCNO.AsString;
        s4 := cdsPayment_HCCYCODE.AsString;
        s5 := '';
        s6 := '';
        s7 := cdsPayment_DAMOUNT.AsString;
        s8 := FormatDateTime('YYYYMMDD', cdsPayment_HVOUCHERDATE.AsDateTime);
        s9 := '';

        oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+
           s8+'|'+s9);
        cdsPayment_D.Next;
      end;

      cdsPayment_H.Next;
    end;
    dmGlobal.IntDataCBest.GenerateCOL(sFileName, oCBestList);

    MessageDlg('Generate CBest has done...', mtInformation, [mbOk], 0);
  end;

  oCBestList.Free;
end;

procedure TfrmBankReceiveList.actGenerateMandiriFileExecute(Sender: TObject);
begin
  inherited;
  GenerateBankFile('Mandiri');
end;

procedure TfrmBankReceiveList.actGenerateNiagaFileExecute(Sender: TObject);
begin
  inherited;
  GenerateBankFile('Niaga');
end;

procedure TfrmBankReceiveList.actGeneratePermataFileExecute(Sender: TObject);
begin
  inherited;
  GenerateBankFile('Permata');
end;

procedure TfrmBankReceiveList.actNewExecute(Sender: TObject);
var
  oForm: TfrmCreateCashRecPay;
begin
//  inherited;
  oForm := TfrmCreateCashRecPay.Create(nil);
  with TfrmCreateCashRecPay(oForm) do
  begin
    VoucherID  := -1;
    Caption    := 'Create Cash Receive';
    CreateCash := 'R';
    ChangeAcc  := True;
  end;
  oForm.ShowModal;
  FreeAndNil(oForm);
  cdsPayment_H.Refresh;
  cdsPayment_D.Refresh;
end;

procedure TfrmBankReceiveList.actPostCashReceiveExecute(Sender: TObject);
var
  bResult: Boolean;
  sMsg: string;
begin
  bResult := dmGlobal.RemoteServer.CashVoucher_Posting('2', cdsPayment_HVOUCHERID.AsLargeInt, cdsPayment_HVOUCHERDATE.AsDateTime,
    '', cdsPayment_HVOUCHERTYPE.AsString, sMsg);
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  cdsPayment_H.Refresh;
end;

procedure TfrmBankReceiveList.actPostingExecute(Sender: TObject);
var
  i : Integer;
  iVoucherID: Int64;
begin
  inherited;
  if cdsPayment_HBANK_INSTRUCTION.AsString = '1' then
  begin
    if cdsPayment_HVOUCHERDATE.AsDateTime = dmGlobal.RemoteServer.GetTransDate then
    begin
      if MessageDlg('Are you sure to posting cash voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
          dmGlobal.RemoteServer.PostCashVoucher(StrToInt64(gvwMaster.Controller.SelectedRows[i].Values[gvwMasterVOUCHERID.Index]));
        ShowMessage('Finished Posting Cash Voucher.');
      end;
      cdsPayment_H.Refresh;
    end
    else
      MessageDlg('Can not settle, it''s not due date...', mtError, [mbOk], 0);
  end
  else
    MessageDlg('Data must generate bank first', mtError, [mbOk], 0);
end;

procedure TfrmBankReceiveList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  actPosting.Enabled := cdsPayment_HSTAT.AsString = 'O';
end;

procedure TfrmBankReceiveList.actPrintExecute(Sender: TObject);
begin
//  inherited;
  ReportContainer.Params[0].AsDate   := dtVoucherDate.Date;
  ReportContainer.Params[1].AsString := cdsPayment_HVOUCHERTYPE.AsString;

  ReportContainer.PreviewReport;
end;

procedure TfrmBankReceiveList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TfrmBankReceiveList.cbBankPropertiesCloseUp(Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TfrmBankReceiveList.cdsCashVoucher_HNewRecord(DataSet: TDataSet);
var
  iBankID: Integer;
begin
  inherited;
  iBankID := StrToInt(GetValue(0, gvwMasterBROKER_BANKID.Index));

  cdsCashVoucher_HVOUCHERDATE.AsDateTime  := dtVoucherDate.Date;
  cdsCashVoucher_HBROKER_BANKID.AsInteger := iBankID;
  cdsCashVoucher_HVOUCHERID.AsInteger     := dmGlobal.RemoteServer.GetSeq('TBL_B_CASH_VOUCHER_H');
  cdsCashVoucher_HVOUCHERNO.AsString      := dmGlobal.RemoteServer.GetVoucherNo(cdsCashVoucher_HVOUCHERDATE.AsDateTime, 'R','TBL_CASH_VOUCHER_H');
  cdsCashVoucher_HCCYCODE.AsString        := 'IDR';
  cdsCashVoucher_HMANUAL_VOUCHER.AsString := '1';
end;

procedure TfrmBankReceiveList.cdsPayment_HCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsPayment_HBROKER_BANKINFO.AsString := cdsPayment_HBROKER_BANKCODE.AsString
    + ' Account No: ' + cdsPayment_HBROKER_BANKACCNO.AsString;
end;

function TfrmBankReceiveList.ConvertComaToDot(AValue: string): string;
begin
  Result := StringReplace(AValue, ',', '.', [rfReplaceAll, rfIgnoreCase]);
end;

function TfrmBankReceiveList.ConvertOrdinary(AValue: string): Integer;
begin
  if AValue = 'mandiri' then Result := 1 else
  if AValue = 'permata' then Result := 2 else
  if AValue = 'niaga' then Result := 3 else
  if AValue = 'bni' then Result := 4;
end;

procedure TfrmBankReceiveList.cxLookupComboBox1PropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  Refresh;

//  if cdsLuBrokerBank.Locate('ACCBANKID', cbBrokerBank.EditValue, []) then
//    txtDesc.Text := cdsLuBrokerBankBNCODE.AsString+' ('+cdsLuBrokerBankBANKACCNO.AsString+') - '+cdsLuBrokerBankBANKACCNAME.AsString;
end;

procedure TfrmBankReceiveList.dtVoucherDatePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TfrmBankReceiveList.FormCreate(Sender: TObject);
var
  iBrokerAccount: Integer;
begin
  inherited;
  iBrokerAccount := dmGlobal.RemoteServer.GetBrokerAccount;
  KeyField       := cdsPayment_HVOUCHERID;

  with dmGlobal.IntDataLookup do
  begin
    cdsBankList.Close;
    cdsBankList.Open;

    cdsLuBankAccount.Close;
    cdsLuBankAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankAccount.Open;

    cdsLuBankTrType.Close;
    cdsLuBankTrType.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuCashInstructionMode.Close;
    cdsLuCashInstructionMode.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuBrokerBank.Close;
    cdsLuBrokerBank.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBrokerBank.Open;
  end;
  dtVoucherDate.Date := dmGlobal.RemoteServer.GetTransDate;
  Refresh;
end;

procedure TfrmBankReceiveList.GenerateBankBCA;
var
  sList : string;
  oBCAList : TStringList;
  iSeq: Integer;
  sTransferType: string;
  s1, s2, s3, s4, s5, s6, s7,
  s8, s9, s10, s11, s12, s13,
  s14, s15, s16 : string;
  sFileName, sFolderName: string;
  fTotalAmount: Double;
begin
  inherited;
  oBCAList     := TStringList.Create;
  sFileName    := '';
  fTotalAmount := 0;

  cdsPayment_H.DisableControls;
  cdsPayment_D.DisableControls;

  iSeq := 0;
  cdsPayment_H.First;

  sTransferType := cdsPayment_HTRANSFERMODE.AsString;
  if sTransferType = 'RTGS' then
    sTransferType := 'RTG'
  else if sTransferType = 'LLG' then
    sTransferType := 'LLG'
  else
    sTransferType := 'BCA';

  while not cdsPayment_H.Eof do
  begin
    Inc(iSeq);
    fTotalAmount := fTotalAmount + cdsPayment_HTOTAL_AMOUNT_FX.AsFloat;
    cdsPayment_H.Next;
  end;

  s1  := '0|FT|';
  s3  := cdsPayment_HVOUCHERID.AsString+'|';
  s4  := '|';
  s5  := cdsPayment_HVOUCHERTYPE.AsString+'|';
  s6  := FormatDateTime('YYYYMMDD', cdsPayment_HVOUCHERDATE.AsDateTime)+'|';
  s7  := leftStr(dmGlobal.RemoteServer.GetGlobalParamString('754'), 10)+'|';
  s8  := FormatFloat('#.00', fTotalAmount)+'|';
  s9  := IntToStr(iSeq)+'|';
  s10 := sTransferType+'|';
  s11 := cdsPayment_HCCYCODE.AsString+'|';

  sList := s1+s3+s4+s5+s6+s7+s8+s9+s10+s11;
  oBCAList.Add(sList);

  iSeq := 0;
  cdsPayment_H.First;
  while not cdsPayment_H.Eof do
  begin
    Inc(iSeq);
    s1  := '1|';
    s2  := IntToStr(iSeq)+'|';
    s3  := cdsPayment_HVOUCHERNO.AsString+'|';
    s4  := cdsPayment_HBROKER_BANKACCNO.AsString+'|';
    s5  := cdsPayment_HCUST_BANKACCNO.AsString+'|';
    s6  := FormatFloat('#.00', cdsPayment_HTOTAL_AMOUNT_FX.AsFloat)+'|';
    s7  := '|';
    s8  := '|';
    s9  := cdsPayment_HBICODE.AsString+'|';
    s10 := '|';
    s11 := cdsPayment_HCUST_BANKACCBRANCH.AsString+'|';
    s12 := cdsPayment_HCUST_BANKACCNAME.AsString+'|';
    s13 := '||||';

    sList := s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13;
    oBCAList.Add(sList);

    cdsPayment_H.Next;
  end;

  if DirectoryExists(dmGlobal.FITSBankInterfaceDir) then
  begin
    sFolderName := dmGlobal.FITSBankInterfaceDir+'BCA\';
    if not DirectoryExists(sFolderName) then
      CreateDir(sFolderName);

    sFileName := sFolderName+'Payment_BCA_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.txt';
    oBCAList.SaveToFile(sFileName);

    cdsPayment_D.Filtered := False;
    oBCAList.Free;

    cdsPayment_D.EnableControls;
    cdsPayment_H.EnableControls;

    MessageDlg('Generate BCA Bank Interface has done...', mtInformation, [mbOk], 0);
    MessageDlg('Execute BCA Check Sum...', mtInformation, [mbOk], 0);

    GenerateBCAChecksum(sFileName, sTransferType);
  end
  else
    MessageDlg(dmGlobal.FITSBankInterfaceDir + ' does not exist, please check configuration setting...', mtError, [mbOk], 0);
end;

procedure TfrmBankReceiveList.GenerateBankFile(ABankName: string);
var
  oBankList: TStringList;
  sFileName, sTransferType,
  sList, sFolderName: string;
  i, iRecordCount: Integer;
  oForm: TForm;
  sRefference, sFileExt: string;
  dTotalAmount: Double;
  oGridView: TcxGridDBBandedTableView;
begin
  inherited;
  oBankList := TStringList.Create;
  cdsPayment_H.DisableControls;

  if PageControl.Properties.ActivePage = tsAutoVoucher then
    oGridView := gvwAutoVoucher
  else if PageControl.Properties.ActivePage = tsManualVoucher then
    oGridView := gvwManualVoucher;

  oForm := TfrmBankRefference.Create(Self);
  TfrmBankRefference(oForm).txtRefference.Text := ABankName;
  if oForm.ShowModal = mrOk then
    sRefference := TfrmBankRefference(oForm).txtRefference.Text;

  if sRefference = '' then
  begin
    MessageDlg('Refference must have value', mtError, [mbOk], 0);
    cdsPayment_H.EnableControls;
    exit;
  end;

  for i := 0 to oGridView.Controller.SelectedRowCount -1 do
  begin
    cdsCashVoucher_H.Close;
    cdsCashVoucher_H.Params[0].AsInteger := StrToInt(GetValue(i, oGridView.GetColumnByFieldName('VOUCHERID').Index));
    cdsCashVoucher_H.Open;

    cdsCashVoucher_H.Edit;
    cdsCashVoucher_HBANK_REFERENCE.AsString   := sRefference;
    cdsCashVoucher_HBANK_INSTRUCTION.AsString := '1';
    cdsCashVoucher_H.Post;
    cdsCashVoucher_H.ApplyUpdates(-1);
  end;
  cdsPayment_H.ApplyUpdates(-1);

  for i := 0 to oGridView.Controller.SelectedRowCount -1 do
    dTotalAmount := StrToFloatDef(GetValue(i, oGridView.GetColumnByFieldName('TOTAL_AMOUNT').Index), 0) + dTotalAmount;

  iRecordCount := oGridView.Controller.SelectedRecordCount;
  case ConvertOrdinary(LowerCase(ABankName)) of
    1 : begin
          sList := FormatDateTime('yyyymmddhhnnss', StrToDateTime(GetValue(0, oGridView.GetColumnByFieldName('ENTRYDATE').Index)))+',,,,,,,,';
          oBankList.Add(sList);

          sList := 'P,'+FormatDateTime('yyyymmdd', StrToDateTime(GetValue(0, oGridView.GetColumnByFieldName('ENTRYDATE').Index))) +','+ GetValue(0, oGridView.GetColumnByFieldName('BROKER_BANKACCNO').Index) +','+ IntToStr(iRecordCount) +
                   ','+FormatFloat('#.00', dTotalAmount)+',,,';
          oBankList.Add(sList);
        end;
    3 : begin
          sList := GetValue(0, oGridView.GetColumnByFieldName('BROKER_BANKACCNO').Index)+','+GetValue(0, oGridView.GetColumnByFieldName('BROKER_BANKACCNAME').Index)+','+GetValue(0, oGridView.GetColumnByFieldName('CCYCODE').Index)+','+FloatToStr(dTotalAmount)+',CIMB 1,'+IntToStr(iRecordCount)+','+
                   FormatDateTime('yyyymmdd', StrToDateTime(GetValue(0, oGridView.GetColumnByFieldName('ENTRYDATE').Index)))+',bsfinance@bahana.co.id';
                   oBankList.Add(sList);
        end;
  end;

  for i := 0 to oGridView.Controller.SelectedRowCount -1 do
  begin
    sTransferType := GetValue(i, oGridView.GetColumnByFieldName('TRANSFERMODE').Index);
    if sTransferType = 'RTGS' then
      sTransferType := 'RTG'
    else if sTransferType = 'LOCAL' then
      sTransferType := UpperCase(ABankName);

    case ConvertOrdinary(LowerCase(ABankName)) of
      1 : sList := GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNO').Index) +','+ GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNAME').Index) +','+ GetValue(i, oGridView.GetColumnByFieldName('TOTAL_AMOUNT').Index)+
                   ','+dmGlobal.BankDefDesc+GetValue(i, oGridView.GetColumnByFieldName('VOUCHER_DESC').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('VOUCHERNO').Index) +',,N,Email';

      2 : sList := 'PermataBank,0,Jakarta,'+GetValue(i, oGridView.GetColumnByFieldName('BICODE').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('BROKER_BANKACCNAME').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('BROKER_BANKACCNO').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('CCYCODE').Index)+','+FormatFloat('#.00', StrToFloat(GetValue(i, oGridView.GetColumnByFieldName('TOTAL_AMOUNT').Index)))+','+
                   dmGlobal.BankDefDesc+GetValue(i, oGridView.GetColumnByFieldName('VOUCHER_DESC').Index)+',0,,ovb,1,1,Bursa Efek Indonesia,'+GetValue(i, oGridView.GetColumnByFieldName('VOUCHERNO').Index)+',0,'+FormatDateTime('ddmmyyyy', dtVoucherDate.Date)+',,,'+
                   GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNAME').Index) +','+ GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNO').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('CCYCODE').Index);

      3 : sList := GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNO').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNAME').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('CCYCODE').Index)+','+FormatFloat('#.00', StrToFloat(GetValue(i, oGridView.GetColumnByFieldName('TOTAL_AMOUNT').Index)))+
                   ','+dmGlobal.BankDefDesc+GetValue(i, oGridView.GetColumnByFieldName('VOUCHER_DESC').Index)+',bsfinance@bahana.co.id';

      4 : sList := 'MT100,,'+FormatDateTime('yyyymmdd', dtVoucherDate.Date)+','+GetValue(i, oGridView.GetColumnByFieldName('CCYCODE').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('TOTAL_AMOUNT').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNAME').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('CUST_BANKACCNO').Index)+
                   ',,,,,,,'+GetValue(i, oGridView.GetColumnByFieldName('SWIFT_CODE').Index)+',BNI,JAKARTA,,'+GetValue(i, oGridView.GetColumnByFieldName('BROKER_BANKACCNO').Index)+','+GetValue(i, oGridView.GetColumnByFieldName('BROKER_BANKACCNAME').Index)+','+dmGlobal.BankDefDesc+GetValue(i, oGridView.GetColumnByFieldName('VOUCHER_DESC').Index)+',,OUR,bsfinance@bahana.co.id,';

    end;
    oBankList.Add(sList);

  end;

  if ConvertOrdinary(LowerCase(ABankName)) = 4 then
    sFileName := sRefference+'_'+ABankName+'_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.txt'
  else
    sFileName := sRefference+'_'+ABankName+'_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.csv';

  SaveFile.FileName := sFileName;
  if SaveFile.Execute(Handle) then
  begin
    sFileName := SaveFile.FileName;
    oBankList.SaveToFile(sFileName);

    MessageDlg('Generate '+ABankName+' Bank Interface has done...', mtInformation, [mbOk], 0);
  end;

  cdsPayment_H.Filtered := False;
  cdsPayment_H.EnableControls;
  oBankList.Free;

  Refresh;
end;

procedure TfrmBankReceiveList.GenerateBCAChecksum(AFileName, ATransferMode: string);
  function Replace(AString: string): string;
  begin
    Result := ReplaceStr(AString, '\', '/');
  end;

var
  oTextFile: TextFile;
  sFileName,
  sCheckSumFileName,
  sCheckSumDir,
  sDataUpload,
  sTransMode: string;

  sTransFile, sCheckFile, sLogFile,
  sSource, sTarget: string;
begin
  sFileName         := ExtractFileName(AFileName);
  sCheckSumFileName := dmGlobal.BCACheckSum + '\Checksum.exe';
  sDataUpload       := dmGlobal.BCACheckSum + '\Dataupload\';

  Insert(' CS', sFileName, Pos('.', sFileName));

  sTransFile := ChangeFilePath(ExtractFileName(AFileName), sDataUpload);
  sCheckFile := sDataUpload + sFileName;
  sLogFile   := dmGlobal.BCACheckSum +'\checksum.log';

  sSource := Replace(AFileName);
  sTarget := Replace(sTransFile);
  CopyFile(pChar(sSource), pChar(sTarget), True);

  AssignFile(oTextFile, dmGlobal.BCACheckSum+'\Checksum.properties');
  Rewrite(oTextFile);
  Writeln(oTextFile, 'Is_Logged     = true');
  Writeln(oTextFile, 'Log_File_Path = ' + Replace(sLogFile));

  if ATransferMode = 'RTG' then
  begin
    sTransMode := 'atr';

    Writeln(oTextFile, 'Auto_Transfer_Rtgs_File_Path          = ' + Replace(sTransFile));
    Writeln(oTextFile, 'Auto_Transfer_Rtgs_Checksum_File_Path = ' + Replace(sCheckFile));
  end
  else if ATransferMode = 'BCA' then
  begin
    sTransMode := 'atb';

    Writeln(oTextFile, 'Auto_Transfer_Bca_File_Path          = ' + Replace(sTransFile));
    Writeln(oTextFile, 'Auto_Transfer_Bca_Checksum_File_Path = ' + Replace(sCheckFile));
  end;

  CloseFile(oTextFile);

  SetCurrentDir(dmGlobal.BCACheckSum);
  ShellExecute(Handle, 'open', PChar(sCheckSumFileName), PChar(sTransMode), nil, SW_SHOWNORMAL);
end;

procedure TfrmBankReceiveList.GenerateToBankFile;
begin

end;

function TfrmBankReceiveList.GetValue(ARowIndex,
  AValueIndex: Integer): string;
var
  oGridView: TcxGridDBBandedTableView;
begin
  inherited;
  if PageControl.Properties.ActivePage = tsAutoVoucher then
    oGridView := gvwAutoVoucher
  else if PageControl.Properties.ActivePage = tsManualVoucher then
    oGridView := gvwManualVoucher;

  if oGridView.Controller.SelectedRows[ARowIndex].Values[AValueIndex] = null then Result := '' else
    Result := oGridView.Controller.SelectedRows[ARowIndex].Values[AValueIndex];
end;

procedure TfrmBankReceiveList.PageControlChange(Sender: TObject);
begin
  inherited;
  if PageControl.Properties.ActivePage = tsAutoVoucher then
    cdsPayment_H.Filter := 'MANUAL_VOUCHER = '+QuotedStr('0')
  else if PageControl.Properties.ActivePage = tsManualVoucher then
    cdsPayment_H.Filter := 'MANUAL_VOUCHER = '+QuotedStr('1');
  cdsPayment_H.Filtered := True;
end;

procedure TfrmBankReceiveList.actReverseExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  dmGlobal.RemoteServer.CashVoucherReverse(cdsPayment_HVOUCHERID.AsLargeInt, sMessage);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
end;

procedure TfrmBankReceiveList.actReversePostingExecute(Sender: TObject);
var
  sMessage: string;
begin
  dmGlobal.RemoteServer.CashVoucherReverse(cdsPayment_HVOUCHERID.AsLargeInt, sMessage);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
  cdsPayment_H.Refresh;
end;

procedure TfrmBankReceiveList.actReverseUpdate(Sender: TObject);
begin
  inherited;
  actReverse.Enabled := cdsPayment_HSTAT.AsString = 'S';
end;

procedure TfrmBankReceiveList.Refresh;
var
  iBank: Integer;
  iBrokerID: integer;
  oGridView: TcxGridDBBandedTableView;
begin
  inherited;
  if PageControl.Properties.ActivePage = tsAutoVoucher then
    oGridView := gvwAutoVoucher
  else if PageControl.Properties.ActivePage = tsManualVoucher then
    oGridView := gvwManualVoucher;

  cdsPayment_H.Close;
  cdsPayment_H.Params[0].AsDateTime := dtVoucherDate.Date;
  cdsPayment_H.Params[1].AsString   := 'R';
  cdsPayment_H.Open;

  cdsPayment_D.Close;
  cdsPayment_D.Params[0].AsDateTime := dtVoucherDate.Date;
  cdsPayment_D.Params[1].AsString   := 'R';
  cdsPayment_D.Open;

  if PageControl.Properties.ActivePage = tsAutoVoucher then
    cdsPayment_H.Filter := 'MANUAL_VOUCHER = '+QuotedStr('0')
  else if PageControl.Properties.ActivePage = tsManualVoucher then
    cdsPayment_H.Filter := 'MANUAL_VOUCHER = '+QuotedStr('1');
  cdsPayment_H.Filtered := True;

  oGridView.ViewData.Expand(True);
  oGridView.DataController.Groups.FullCollapse;
end;

Initialization
  RegisterClass(TfrmBankReceiveList);

end.
