unit FormClient2Inquery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls, ClassClientConst,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxPCdxBarPopupMenu, cxPC,
  Vcl.ActnList, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, NActionPermission, Vcl.ComCtrls,
  dxCore, cxDateUtils, NDatasetAction, cxDropDownEdit, cxCalendar, cxLabel,
  cxDBLabel, cxCheckBox, Data.DB, Datasnap.DBClient, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxGridDBTableView,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox,
  NClientDataset, Vcl.ExtCtrls, dxBarBuiltInMenu, dxDateRanges,
  dxScrollbarAnnotations, System.Actions;

type
  TfrmClient2Inquery = class(TfrmBasic)
    ActionList1: TActionList;
    pgParent: TcxPageControl;
    tsTransactional: TcxTabSheet;
    tsPosition: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    pgPos: TcxPageControl;
    tsCashPos: TcxTabSheet;
    tsStockPos: TcxTabSheet;
    dtValueDate: TcxDateEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    actViewDetail: TNAction;
    actViewCreditControlParam: TNAction;
    dxLayoutControl3: TdxLayoutControl;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel11: TcxDBLabel;
    cxDBLabel14: TcxDBLabel;
    cxDBLabel16: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel15: TcxDBLabel;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item7: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Item21: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item4: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
    cdsCashPos: TClientDataSet;
    dsCashPos: TDataSource;
    cdsCashPosACCID: TIntegerField;
    cdsCashPosACCNO: TStringField;
    cdsCashPosACCNAME: TStringField;
    cdsCashPosACCINIT: TStringField;
    cdsCashPosCASH_ONHAND: TFloatField;
    cdsCashPosACCRUED_INTEREST: TFloatField;
    cdsCashPosCASH_QQ: TFloatField;
    cdsCashPosCASH_SUBACC: TFloatField;
    cdsCashPosCASH_ONHOLD: TFloatField;
    cdsCashPosARAMT: TFloatField;
    cdsCashPosAPAMT: TFloatField;
    cdsCashPosCASH_OUTS: TFloatField;
    cdsCashPosBUY_AMT: TFloatField;
    cdsCashPosSELL_AMT: TFloatField;
    cdsCashPosCASH_WDR: TFloatField;
    cdsCashPosCASH_OTHERS: TFloatField;
    cdsCashPosCASH_ASEET: TFloatField;
    cdsCashPosVALUEDATE: TDateField;
    cdsAgingArapDue: TClientDataSet;
    cdsAgingArapDueIKEY: TIntegerField;
    cdsAgingArapDueACCID: TLargeintField;
    cdsAgingArapDueDUEDATE: TDateField;
    cdsAgingArapDuePOS: TStringField;
    cdsAgingArapDueCCY: TStringField;
    cdsAgingArapDueAR: TFloatField;
    cdsAgingArapDueAP: TFloatField;
    cdsAgingArapDueNETARAP: TFloatField;
    dsAgingArap: TDataSource;
    cdsAgingArapDueARAPDESC: TStringField;
    cdsAgingArapDueTPLUS: TStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    gvwAgingARAP: TcxGridDBBandedTableView;
    gvwAgingARAPCCY: TcxGridDBBandedColumn;
    gvwAgingARAPAR: TcxGridDBBandedColumn;
    gvwAgingARAPAP: TcxGridDBBandedColumn;
    gvwAgingARAPNETARAP: TcxGridDBBandedColumn;
    gvwAgingARAPARAPDESC: TcxGridDBBandedColumn;
    cdsStockPos: TClientDataSet;
    cdsStockPosACCID: TLargeintField;
    cdsStockPosACCNO: TStringField;
    cdsStockPosSTOCKCODE: TStringField;
    cdsStockPosPRDCODE: TStringField;
    cdsStockPosVALUEDATE: TDateField;
    cdsStockPosHCUT: TFloatField;
    cdsStockPosQTY_ONHAND: TFloatField;
    cdsStockPosQTY_RCV: TFloatField;
    cdsStockPosQTY_DLV: TFloatField;
    cdsStockPosQTY_OUTS: TFloatField;
    cdsStockPosLASTCLSPRICE: TFloatField;
    cdsStockPosHAIRCUT: TFloatField;
    cdsStockPosAVGPRICE: TFloatField;
    cdsStockPosBUY_VAL: TFloatField;
    cdsStockPosSELL_VAL: TFloatField;
    cdsStockPosQTY_BAL: TFloatField;
    cdsStockPosBUY_QTY: TFloatField;
    cdsStockPosSELL_QTY: TFloatField;
    cdsStockPosCOLLATERAL: TFloatField;
    cdsStockPosMKTVALUE: TFloatField;
    cdsStockPosASSETVALUE: TFloatField;
    cdsStockPosPL: TFloatField;
    cdsClientInfo: TClientDataSet;
    cdsClientInfoACCID: TIntegerField;
    cdsClientInfoENTTID: TIntegerField;
    cdsClientInfoACCCODE: TStringField;
    cdsClientInfoACCNAME: TStringField;
    cdsClientInfoACCINIT: TStringField;
    cdsClientInfoPRDCODE: TStringField;
    cdsClientInfoPRDDESC: TStringField;
    dsClientInfo: TDataSource;
    dsStockPos: TDataSource;
    cdsStockPosPRDDESC: TStringField;
    cdsStockPosACCINFO: TStringField;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterHCUT: TcxGridDBBandedColumn;
    gvwMasterQTY_ONHAND: TcxGridDBBandedColumn;
    gvwMasterQTY_RCV: TcxGridDBBandedColumn;
    gvwMasterQTY_DLV: TcxGridDBBandedColumn;
    gvwMasterQTY_OUTS: TcxGridDBBandedColumn;
    gvwMasterLASTCLSPRICE: TcxGridDBBandedColumn;
    gvwMasterAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY_BAL: TcxGridDBBandedColumn;
    gvwMasterBUY_QTY: TcxGridDBBandedColumn;
    gvwMasterSELL_QTY: TcxGridDBBandedColumn;
    gvwMasterCOLLATERAL: TcxGridDBBandedColumn;
    gvwMasterMKTVALUE: TcxGridDBBandedColumn;
    gvwMasterASSETVALUE: TcxGridDBBandedColumn;
    gvwMasterPL: TcxGridDBBandedColumn;
    gvwMasterACCINFO: TcxGridDBBandedColumn;
    cdsStockPosMARKETCODE: TStringField;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    luAgingArapViewBy: TcxImageComboBox;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    luCCY: TcxLookupComboBox;
    lyCcy: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    cdsCCY: TClientDataSet;
    cdsCCYCCY: TStringField;
    cdsCCYCCYNAME: TStringField;
    dsCCY: TDataSource;
    cdsAgingARAPTrading: TClientDataSet;
    cdsAgingARAPTradingIKEY: TIntegerField;
    cdsAgingARAPTradingACCID: TLargeintField;
    cdsAgingARAPTradingDUEDATE: TDateField;
    cdsAgingARAPTradingPOS: TStringField;
    cdsAgingARAPTradingCCY: TStringField;
    cdsAgingARAPTradingAR: TFloatField;
    cdsAgingARAPTradingAP: TFloatField;
    cdsAgingARAPTradingNETARAP: TFloatField;
    cdsAgingARAPTradingARAPDESC: TStringField;
    cdsAgingARAPTradingTPLUS: TStringField;
    Panel1: TPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    edAccCode: TcxButtonEdit;
    edAccName: TcxTextEdit;
    cxButton2: TcxButton;
    chkByAccount: TcxCheckBox;
    edEntityCode: TcxButtonEdit;
    edEntityName: TcxTextEdit;
    chkByEntity: TcxCheckBox;
    cxButton4: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    lcButtonViewAccpunt: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    lgAccount: TdxLayoutGroup;
    lcButtonViewCreditLimit: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    lgEntity: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    lcViewDetailEntity: TdxLayoutItem;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwAccountInfo: TcxGridDBBandedTableView;
    gvwAccountInfoACCCODE: TcxGridDBBandedColumn;
    gvwAccountInfoACCNAME: TcxGridDBBandedColumn;
    gvwAccountInfoACCINIT: TcxGridDBBandedColumn;
    gvwAccountInfoPRDDESC: TcxGridDBBandedColumn;
    actViewDetailEntity: TNAction;
    cdsEntAGingArapDUe: TClientDataSet;
    cdsEntAGingArapDUeIKEY: TIntegerField;
    cdsEntAGingArapDUeENTTID: TLargeintField;
    cdsEntAGingArapDUeDUEDATE: TDateField;
    cdsEntAGingArapDUePOS: TStringField;
    cdsEntAGingArapDUeCCY: TStringField;
    cdsEntAGingArapDUeAR: TFloatField;
    cdsEntAGingArapDUeAP: TFloatField;
    cdsEntAGingArapDUeNETARAP: TFloatField;
    cdsEntAGingArapDUeTPLUS: TStringField;
    cdsEntAgingArapTrading: TClientDataSet;
    cdsEntAgingArapTradingIKEY: TIntegerField;
    cdsEntAgingArapTradingENTTID: TLargeintField;
    cdsEntAgingArapTradingDUEDATE: TDateField;
    cdsEntAgingArapTradingPOS: TStringField;
    cdsEntAgingArapTradingCCY: TStringField;
    cdsEntAgingArapTradingAR: TFloatField;
    cdsEntAgingArapTradingAP: TFloatField;
    cdsEntAgingArapTradingNETARAP: TFloatField;
    cdsEntAgingArapTradingTPLUS: TStringField;
    cdsEntCashPos: TClientDataSet;
    cdsEntCashPosENTTID: TIntegerField;
    cdsEntCashPosENTTCODE: TStringField;
    cdsEntCashPosENTINIT: TStringField;
    cdsEntCashPosVALUEDATE: TDateField;
    cdsEntCashPosCCY: TStringField;
    cdsEntCashPosCASH_ONHAND: TFloatField;
    cdsEntCashPosACCRUED_INTEREST: TFloatField;
    cdsEntCashPosCASH_QQ: TFloatField;
    cdsEntCashPosCASH_SUBACC: TFloatField;
    cdsEntCashPosCASH_ONHOLD: TFloatField;
    cdsEntCashPosARAMT: TFloatField;
    cdsEntCashPosAPAMT: TFloatField;
    cdsEntCashPosCASH_OUTS: TFloatField;
    cdsEntCashPosBUY_AMT: TFloatField;
    cdsEntCashPosSELL_AMT: TFloatField;
    cdsEntCashPosCASH_WDR: TFloatField;
    cdsEntCashPosCASH_OTHERS: TFloatField;
    cdsEntCashPosCASH_ASEET: TFloatField;
    cdsEntAgingArapTradingARAPDESC: TStringField;
    cdsEntAGingArapDUeARAPDESC: TStringField;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    dtTransStart: TcxDateEdit;
    dxLayoutControl4Item1: TdxLayoutItem;
    dtTransTo: TcxDateEdit;
    dxLayoutControl4Item2: TdxLayoutItem;
    cdsDailyMktTransByAcc: TClientDataSet;
    cxButton5: TcxButton;
    dxLayoutControl4Item3: TdxLayoutItem;
    dxLayoutControl4Group2: TdxLayoutGroup;
    pgTrans: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cdsDailyMktTransByAccCONID: TLargeintField;
    cdsDailyMktTransByAccCONCODE: TStringField;
    cdsDailyMktTransByAccCONDATE: TDateField;
    cdsDailyMktTransByAccCASHSETTLEDATE: TDateField;
    cdsDailyMktTransByAccSTOCKSETTLEDATE: TDateField;
    cdsDailyMktTransByAccMARKETCODE: TStringField;
    cdsDailyMktTransByAccCCYCODE: TStringField;
    cdsDailyMktTransByAccNETAMT: TFloatField;
    cdsDailyMktTransByAccFOREIGN_CCYCODE: TStringField;
    cdsDailyMktTransByAccFOREIGN_EXRATE: TFloatField;
    cdsDailyMktTransByAccFOREIGN_NETAMT: TFloatField;
    cdsDailyMktTransByAccACCID: TIntegerField;
    cdsDailyMktTransByAccACCCODE: TStringField;
    cdsDailyMktTransByAccACCNAME: TStringField;
    cdsDailyMktTransByAccACCINIT: TStringField;
    cdsDailyMktTransByAccACCTYPE: TStringField;
    cdsDailyMktTransByAccPRDCODE: TStringField;
    cdsDailyMktTransByAccCASHKEEP: TStringField;
    cdsDailyMktTransByAccSTOCKKEEP: TStringField;
    cdsDailyMktTransByAccENTTCODE: TStringField;
    cdsDailyMktTransByAccENTNAME: TStringField;
    cdsDailyMktTransByAccENTACCTYPE: TStringField;
    cdsDailyMktTransByAccAFFIL: TBooleanField;
    cdsDailyMktTransByAccSALESID: TLargeintField;
    cdsDailyMktTransByAccSALESCODE: TStringField;
    cdsDailyMktTransByAccSALESNAME: TStringField;
    cdsDailyMktTransByAccSTOCKCODE: TStringField;
    cdsDailyMktTransByAccSTOCKNAME: TStringField;
    cdsDailyMktTransByAccBOARDID: TLargeintField;
    cdsDailyMktTransByAccBOARDCODE: TStringField;
    cdsDailyMktTransByAccCPACCID: TIntegerField;
    cdsDailyMktTransByAccCPACCCODE: TStringField;
    cdsDailyMktTransByAccCPACCNAME: TStringField;
    cdsDailyMktTransByAccCPACCINIT: TStringField;
    cdsDailyMktTransByAccBS: TStringField;
    cdsDailyMktTransByAccAPRICE: TFloatField;
    cdsDailyMktTransByAccEXPRICE: TFloatField;
    cdsDailyMktTransByAccQTY: TFloatField;
    cdsDailyMktTransByAccVALUE: TFloatField;
    cdsDailyMktTransByAccBUY_QTY: TFloatField;
    cdsDailyMktTransByAccBUY_VALUE: TFloatField;
    cdsDailyMktTransByAccBUY_AVALUE: TFloatField;
    cdsDailyMktTransByAccSELL_QTY: TFloatField;
    cdsDailyMktTransByAccSELL_VALUE: TFloatField;
    cdsDailyMktTransByAccSELL_AVALUE: TFloatField;
    cdsDailyMktTransByAccBROKERFEE: TFloatField;
    cdsDailyMktTransByAccCHG1_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG1_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG1_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG2_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG2_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG2_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG3_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG3_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG3_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG4_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG4_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG4_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG5_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG5_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG5_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG6_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG6_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG6_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG7_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG7_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG7_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG8_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG8_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG8_CHARGE_DIFF: TFloatField;
    cdsDailyMktTransByAccCHG9_CHARGE_VAL1: TFloatField;
    cdsDailyMktTransByAccCHG9_CHARGE_VAL2: TFloatField;
    cdsDailyMktTransByAccCHG9_CHARGE_DIFF: TFloatField;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    gvwDailyMktTrans: TcxGridDBBandedTableView;
    dsDailyMarketTrans: TDataSource;
    gvwDailyMktTransCONCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransCONDATE: TcxGridDBBandedColumn;
    gvwDailyMktTransCASHSETTLEDATE: TcxGridDBBandedColumn;
    gvwDailyMktTransSTOCKSETTLEDATE: TcxGridDBBandedColumn;
    gvwDailyMktTransMARKETCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransCCYCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransNETAMT: TcxGridDBBandedColumn;
    gvwDailyMktTransFOREIGN_CCYCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransFOREIGN_EXRATE: TcxGridDBBandedColumn;
    gvwDailyMktTransFOREIGN_NETAMT: TcxGridDBBandedColumn;
    gvwDailyMktTransCASHKEEP: TcxGridDBBandedColumn;
    gvwDailyMktTransSTOCKKEEP: TcxGridDBBandedColumn;
    gvwDailyMktTransAFFIL: TcxGridDBBandedColumn;
    gvwDailyMktTransSALESCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransSALESNAME: TcxGridDBBandedColumn;
    gvwDailyMktTransSTOCKCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransSTOCKNAME: TcxGridDBBandedColumn;
    gvwDailyMktTransBOARDCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransCPACCCODE: TcxGridDBBandedColumn;
    gvwDailyMktTransCPACCNAME: TcxGridDBBandedColumn;
    gvwDailyMktTransCPACCINIT: TcxGridDBBandedColumn;
    gvwDailyMktTransBS: TcxGridDBBandedColumn;
    gvwDailyMktTransAPRICE: TcxGridDBBandedColumn;
    gvwDailyMktTransEXPRICE: TcxGridDBBandedColumn;
    gvwDailyMktTransQTY: TcxGridDBBandedColumn;
    gvwDailyMktTransVALUE: TcxGridDBBandedColumn;
    gvwDailyMktTransBUY_QTY: TcxGridDBBandedColumn;
    gvwDailyMktTransBUY_VALUE: TcxGridDBBandedColumn;
    gvwDailyMktTransBUY_AVALUE: TcxGridDBBandedColumn;
    gvwDailyMktTransSELL_QTY: TcxGridDBBandedColumn;
    gvwDailyMktTransSELL_VALUE: TcxGridDBBandedColumn;
    gvwDailyMktTransSELL_AVALUE: TcxGridDBBandedColumn;
    gvwDailyMktTransBROKERFEE: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG1_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG1_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG1_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG2_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG2_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG2_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG3_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG3_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG3_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG4_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG4_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG4_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG5_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG5_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG5_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG6_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG6_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG6_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG7_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG7_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG7_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG8_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG8_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG8_CHARGE_DIFF: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG9_CHARGE_VAL1: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG9_CHARGE_VAL2: TcxGridDBBandedColumn;
    gvwDailyMktTransCHG9_CHARGE_DIFF: TcxGridDBBandedColumn;
    cdsDailyMktTransByAccACCDESC: TStringField;
    gvwDailyMktTransACCDESC: TcxGridDBBandedColumn;
    actViewBank: TNAction;
    actViewBankCustody: TNAction;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actViewDetailExecute(Sender: TObject);
    procedure actViewCreditControlParamExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkByEntityPropertiesChange(Sender: TObject);
    procedure chkByAccountPropertiesChange(Sender: TObject);
    procedure cdsAgingArapDueCalcFields(DataSet: TDataSet);
    procedure pgPosChange(Sender: TObject);
    procedure gvwAgingARAPCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwStockPosCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsAgingARAPTradingCalcFields(DataSet: TDataSet);
    procedure cxButton3Click(Sender: TObject);
    procedure edEntityCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actViewDetailEntityExecute(Sender: TObject);
    procedure cdsEntAgingArapTradingCalcFields(DataSet: TDataSet);
    procedure cdsEntAGingArapDUeCalcFields(DataSet: TDataSet);
    procedure cdsDailyMktTransByAccCalcFields(DataSet: TDataSet);
    procedure pgParentChange(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
    FAccID: Integer;
    FEntID: Integer;
    FEntCustType: Integer;
    FAccProdCode: String;
    procedure LoadAccCashPos;
    procedure LoadAgingARAP;
    procedure LoadStockPositionByAccount;
    procedure LoadCurreny;
    procedure LoadAccountInfo;
    procedure LoadDailyTrade;

    procedure LoadInfo;
  public
    { Public declarations }
  end;

var
  frmClient2Inquery: TfrmClient2Inquery;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount, FormAccount, FormAccCreditLimit,
  FormMarginMonitorDetail, FormBrowseData, FormLookUpCIF, FormEntityIns,
  FormEntityRet;

procedure TfrmClient2Inquery.actViewCreditControlParamExecute(Sender: TObject);
var
  sKey: string;
begin
  inherited;
  sKey := inttostr(FAccID);
  dmGlobal.ShowEditorForm(TfrmAccCreditLimit, sKey, pkRead);
end;

procedure TfrmClient2Inquery.actViewDetailEntityExecute(Sender: TObject);
var
  sKey: string;
begin
  inherited;
  sKey := inttostr(FEntID);
  if FEntCustType = 1 then dmGlobal.ShowEditorForm(TfrmEntityRet, sKey, pkRead)
  else dmGlobal.ShowEditorForm(TfrmEntityIns, sKey, pkRead)

end;

procedure TfrmClient2Inquery.actViewDetailExecute(Sender: TObject);
var
  sKey: string;
begin
  inherited;
  sKey := inttostr(FAccID);
  dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkRead);

end;

procedure TfrmClient2Inquery.cdsAgingArapDueCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsAgingArapDuePOS.AsString = '<' then cdsAgingArapDueARAPDESC.AsString := '< T' + cdsAgingArapDueTPLUS.AsString
  else if cdsAgingArapDuePOS.AsString = '=' then
  begin
    cdsAgingArapDueARAPDESC.AsString := '= T' + cdsAgingArapDueTPLUS.AsString +
      ' (' + FormatDateTime('dd-mmm-yy', cdsAgingArapDueDUEDATE.AsDateTime) + ')'
  end
  else if cdsAgingArapDuePOS.AsString = '>' then cdsAgingArapDueARAPDESC.AsString := '> T' + cdsAgingArapDueTPLUS.AsString;
end;

procedure TfrmClient2Inquery.cdsAgingARAPTradingCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsAgingArapTradingPOS.AsString = '<' then cdsAgingArapTradingARAPDESC.AsString := '< T' + cdsAgingArapTradingTPLUS.AsString
  else if cdsAgingArapTradingPOS.AsString = '=' then
  begin
    cdsAgingArapTradingARAPDESC.AsString := '= T' + cdsAgingArapTradingTPLUS.AsString +
      ' (' + FormatDateTime('dd-mmm-yy', cdsAgingArapTradingDUEDATE.AsDateTime) + ')'
  end
  else if cdsAgingArapTradingPOS.AsString = '>' then cdsAgingArapTradingARAPDESC.AsString := '> T' + cdsAgingArapTradingTPLUS.AsString;

end;

procedure TfrmClient2Inquery.cdsDailyMktTransByAccCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsDailyMktTransByAccACCDESC.AsString := cdsDailyMktTransByAccMARKETCODE.AsString + ' - ' + cdsDailyMktTransByAccPRDCODE.AsString +
    ' :: (' + cdsDailyMktTransByAccACCCODE.AsString + ') ' + cdsDailyMktTransByAccACCNAME.AsString;
end;

procedure TfrmClient2Inquery.cdsEntAGingArapDUeCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsEntAGingArapDUePOS.AsString = '<' then cdsEntAgingArapDueARAPDESC.AsString := '< T' + cdsEntAgingArapDueTPLUS.AsString
  else if cdsEntAGingArapDUePOS.AsString = '=' then
  begin
    cdsEntAgingArapDueARAPDESC.AsString := '= T' + cdsEntAgingArapDueTPLUS.AsString +
      ' (' + FormatDateTime('dd-mmm-yy', cdsEntAgingArapDueDUEDATE.AsDateTime) + ')'
  end
  else if cdsEntAgingArapDuePOS.AsString = '>' then cdsEntAgingArapDueARAPDESC.AsString := '> T' + cdsEntAGingArapDUeTPLUS.AsString;

end;

procedure TfrmClient2Inquery.cdsEntAgingArapTradingCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if cdsEntAgingArapTradingPOS.AsString = '<' then cdsEntAgingArapTradingARAPDESC.AsString := '< T' + cdsEntAgingArapTradingTPLUS.AsString
  else if cdsEntAgingArapTradingPOS.AsString = '=' then
  begin
    cdsEntAgingArapTradingARAPDESC.AsString := '= T' + cdsEntAgingArapTradingTPLUS.AsString +
      ' (' + FormatDateTime('dd-mmm-yy', cdsEntAgingArapTradingDUEDATE.AsDateTime) + ')'
  end
  else if cdsEntAgingArapTradingPOS.AsString = '>' then cdsEntAgingArapTradingARAPDESC.AsString := '> T' + cdsEntAGingArapTradingTPLUS.AsString;

end;

procedure TfrmClient2Inquery.chkByAccountPropertiesChange(Sender: TObject);
begin
  inherited;
  chkByEntity.Checked := not chkByAccount.Checked;

  if not chkByAccount.Checked then
  begin
    lgAccount.Visible := False;
    lgEntity.Visible := True;

    lcButtonViewAccpunt.Visible := False;
    lcButtonViewCreditLimit.Visible := False;
    lcViewDetailEntity.Visible := True;

  end
  else
  begin
    lgAccount.Visible := True;
    lgEntity.Visible := False;

    lcButtonViewAccpunt.Visible := True;
    lcButtonViewCreditLimit.Visible := True;
    lcViewDetailEntity.Visible := False;
  end;

end;

procedure TfrmClient2Inquery.chkByEntityPropertiesChange(Sender: TObject);
begin
  inherited;
  chkByAccount.Checked := not chkByEntity.Checked;

  if chkByEntity.Checked then
  begin
    lgAccount.Visible := False;
    lgEntity.Visible := True;

    lcButtonViewAccpunt.Visible := False;
    lcButtonViewCreditLimit.Visible := False;
    lcViewDetailEntity.Visible := True;

  end
  else
  begin
    lgAccount.Visible := True;
    lgEntity.Visible := False;

    lcButtonViewAccpunt.Visible := True;
    lcButtonViewCreditLimit.Visible := True;
    lcViewDetailEntity.Visible := False;
  end;

end;

procedure TfrmClient2Inquery.cxButton3Click(Sender: TObject);
begin
  inherited;
  LoadInfo;
end;

procedure TfrmClient2Inquery.cxButton5Click(Sender: TObject);
begin
  inherited;
  LoadInfo;
end;

procedure TfrmClient2Inquery.edAccCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      FEntID := cdsLuAccountMultiFilterENTTID.AsInteger;
      FAccProdCode := cdsLuAccountMultiFilterPRDCODE.AsString;

      edAccCode.EditValue := FAccID;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;


      LoadInfo;

    end;
  end;

end;

procedure TfrmClient2Inquery.edEntityCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  oForm : TfrmLookupCIF;
begin
  inherited;

  with dmglobal.IntDataLookup do
  begin

    oForm := TfrmLookupCIF.Create(Nil);

    if oform.RunByEntity(FEntID) = mrOK then
    begin
      FEntID := cdsLuCIFENTTID.AsInteger;
      FEntCustType := cdsLuCIFCUST_TYPE.AsInteger;
      edEntityCode.EditValue := cdsLuCIFENTTCODE.AsString;
      edEntityName.EditValue := cdsLuCIFENTNAME.AsString;
      LoadInfo;
    end;
  end;

end;

procedure TfrmClient2Inquery.FormCreate(Sender: TObject);
begin
  inherited;
  chkByAccount.Checked := True;
  lgAccount.Visible := True;
  lgEntity.Visible := False;

  lcButtonViewAccpunt.Visible := True;
  lcButtonViewCreditLimit.Visible := True;
  lcViewDetailEntity.Visible := False;

  dtValueDate.Date :=  dmGlobal.RemoteServer.GetTransDate;
  luAgingArapViewBy.EditValue := 'D';

  dtTransStart.date := dmGlobal.RemoteServer.GetTransDate;
  dtTransTo.Date := dmGlobal.RemoteServer.GetTransDate;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;
  end;

  lyCcy.Visible := True;

end;

procedure TfrmClient2Inquery.gvwAgingARAPCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmClient2Inquery.gvwStockPosCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Selected then
  begin
    if AViewInfo.Item.Focused then
    begin
      ACanvas.FrameRect(AViewInfo.Bounds, clBlack);
      ACanvas.Font.Color := clWhite;
    end;
  end;

end;

procedure TfrmClient2Inquery.LoadAccCashPos;
begin
  if chkByAccount.Checked then
  begin
    dsCashPos.DataSet := cdsCashPos;
    cdsCashPos.Close;
    cdsCashPos.Params[0].Value := FAccID;
    cdsCashPos.Params[1].Value := luCCY.EditValue;
    cdsCashPos.Params[2].Value := dtValueDate.Date;
    cdsCashPos.Open;
  end
  else
  begin
    cdsEntCashPos.Close;
    cdsEntCashPos.Params[0].Value := FEntID;
    cdsEntCashPos.Params[1].Value := luCCY.EditValue;
    cdsEntCashPos.Params[2].Value := dtValueDate.Date;
    cdsEntCashPos.Open;
  end;
end;

procedure TfrmClient2Inquery.LoadAccountInfo;
begin
  cdsClientInfo.Close;
  cdsClientInfo.Params[0].Value := FEntID;
  cdsClientInfo.Open;
end;

procedure TfrmClient2Inquery.LoadAgingARAP;
begin
  if chkByAccount.Checked then
  begin
    if luAgingArapViewBy.EditValue = 'D' then
    begin
      dsAgingArap.DataSet := cdsAgingArapDue;
      gvwAgingARAPARAPDESC.Caption := 'Due Date';
      cdsAgingArapDue.Close;
      cdsAgingArapDue.Params[0].Value := dtValueDate.Date;
      cdsAgingArapDue.Params[1].Value := FAccID;
      cdsAgingArapDue.Params[2].Value := luCCY.EditValue;
      cdsAgingArapDue.Open;
    end
    else
    begin
      dsAgingArap.DataSet := cdsAgingARAPTrading;
      gvwAgingARAPARAPDESC.Caption := 'Trading Date';
      cdsAgingARAPTrading.Close;
      cdsAgingARAPTrading.Params[0].Value := dtValueDate.Date;
      cdsAgingARAPTrading.Params[1].Value := FAccID;
      cdsAgingARAPTrading.Params[2].Value := luCCY.EditValue;
      cdsAgingARAPTrading.Open;
    end;
  end
  else
  begin
    if luAgingArapViewBy.EditValue = 'D' then
    begin
      dsAgingArap.DataSet := cdsEntAGingArapDUe;
      gvwAgingARAPARAPDESC.Caption := 'Due Date';
      cdsEntAGingArapDUe.Close;
      cdsEntAGingArapDUe.Params[0].Value := dtValueDate.Date;
      cdsEntAGingArapDUe.Params[1].Value := FEntID;
      cdsEntAGingArapDUe.Params[2].Value := luCCY.EditValue;
      cdsEntAGingArapDUe.Open;
    end
    else
    begin
      dsAgingArap.DataSet := cdsEntAgingArapTrading;
      gvwAgingARAPARAPDESC.Caption := 'Trading Date';
      cdsEntAgingArapTrading.Close;
      cdsEntAgingArapTrading.Params[0].Value := dtValueDate.Date;
      cdsEntAgingArapTrading.Params[1].Value := FEntID;
      cdsEntAgingArapTrading.Params[2].Value := luCCY.EditValue;
      cdsEntAgingArapTrading.Open;
    end;

  end;

end;

procedure TfrmClient2Inquery.LoadCurreny;
begin
  if chkByAccount.Checked then
  begin

    cdsCCY.Close;
    cdsCCY.Params[0].AsInteger := 1;
    cdsCCY.Params[1].AsInteger := FAccID;
    cdsCCY.Params[2].AsInteger := 1;
    cdsCCY.Params[4].AsDateTime := dtValueDate.EditValue;

    cdsCCY.Open;


  end
  else
  begin

    cdsCCY.Close;
    cdsCCY.Params[0].AsInteger := 2;
//    cdsStockPos.Params[1].AsInteger := FAccID;
    cdsCCY.Params[2].AsInteger := 2;
    cdsCCY.Params[3].AsInteger := FEntID;
    cdsCCY.Params[4].AsDateTime := dtValueDate.EditValue;

    cdsCCY.Open;



  end;


  if not cdsCCY.IsEmpty then
  begin
    if cdsCCY.Locate('CCY', dmGlobal.RemoteServer.GetLocalCCY, []) then
    begin
      luCCY.EditValue := cdsCCYCCY.AsString;
    end
    else
    begin
      cdsCCY.First;
      luCCY.EditValue := cdsCCYCCY.AsString;
    end;
  end
  else luCCY.Clear;
end;

procedure TfrmClient2Inquery.LoadDailyTrade;
begin
  if chkByAccount.Checked then
  begin

    cdsDailyMktTransByAcc.Close;
    cdsDailyMktTransByAcc.Params[0].Value := FAccID;
    cdsDailyMktTransByAcc.Params[1].Value := dtTransStart.Date;
    cdsDailyMktTransByAcc.Params[2].Value := dtTransTo.Date;
    cdsDailyMktTransByAcc.Open;

  end
  else
  begin

  end;

end;

procedure TfrmClient2Inquery.LoadInfo;
begin
  LoadAccountInfo;
  if chkByAccount.Checked then
  begin
    if pgParent.ActivePageIndex = 0 then
    begin
      if pgPos.ActivePageIndex = 0 then
      begin
//        LoadCurreny;
        LoadAccCashPos;
        LoadAgingARAP;
      end
      else if pgPos.ActivePageIndex = 1 then
      begin
        LoadStockPositionByAccount;
      end;
    end
    else if pgParent.ActivePageIndex = 1 then
    begin
      if pgTrans.ActivePageIndex = 0 then
      begin
        LoadDailyTrade;
      end;
    end;

  end
  else
  begin
    if pgParent.ActivePageIndex = 0 then
    begin
      if pgPos.ActivePageIndex = 0 then
      begin
//        LoadCurreny;
        LoadAccCashPos;
        LoadAgingARAP;
      end
      else if pgPos.ActivePageIndex = 1 then
      begin
        LoadStockPositionByAccount;
      end;
    end;

  end;
end;

procedure TfrmClient2Inquery.LoadStockPositionByAccount;
begin
  if chkByAccount.Checked then
  begin
    cdsStockPos.DisableControls;

    cdsStockPos.Close;
    cdsStockPos.Params[0].AsInteger := 1;
    cdsStockPos.Params[1].AsInteger := FAccID;
    cdsStockPos.Params[2].AsInteger := 1;
    cdsStockPos.Params[4].AsDateTime := dtValueDate.EditValue;

    cdsStockPos.Open;


    cdsStockPos.EnableControls;
  end
  else
  begin
    cdsStockPos.DisableControls;

    cdsStockPos.Close;
    cdsStockPos.Params[0].AsInteger := 2;
//    cdsStockPos.Params[1].AsInteger := FAccID;
    cdsStockPos.Params[2].AsInteger := 2;
    cdsStockPos.Params[3].AsInteger := FEntID;
    cdsStockPos.Params[4].AsDateTime := dtValueDate.EditValue;

    cdsStockPos.Open;


    cdsStockPos.EnableControls;

  end;


end;

procedure TfrmClient2Inquery.pgParentChange(Sender: TObject);
begin
  inherited;
  LoadInfo;
end;

procedure TfrmClient2Inquery.pgPosChange(Sender: TObject);
begin
  inherited;
  if pgPos.ActivePageIndex = 0 then
  begin
//    LoadCurreny;
    lyCcy.Visible := True;

    LoadAccCashPos;
    LoadAgingARAP;
  end
  else if pgPos.ActivePageIndex = 1 then
  begin
    lyCcy.Visible := False;
    LoadStockPositionByAccount;
  end;
end;

end.
