unit FormLendBorrowFeeHis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Datasnap.DBClient, NClientDataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxDBEdit, cxCalendar, dxLayoutLookAndFeels;

type
  TfrmLendBorrowFeeHis = class(TfrmEditorData)
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterLBID: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterCLOSERICE: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    cdsLBFeeHis: TNClientDataset;
    cdsLBFeeHisLBID: TLargeintField;
    cdsLBFeeHisVALUEDATE: TDateField;
    cdsLBFeeHisCLOSERICE: TFloatField;
    cdsLBFeeHisAMOUNT: TFloatField;
    dsLBFeeHis: TDataSource;
    cdsLendBorrow: TNClientDataset;
    cdsLendBorrowLBID: TLargeintField;
    cdsLendBorrowLBNO: TStringField;
    cdsLendBorrowENTRYDATE: TDateField;
    cdsLendBorrowLBDATE: TDateField;
    cdsLendBorrowDUEDATE: TDateField;
    cdsLendBorrowSTOCKID: TLargeintField;
    cdsLendBorrowSTOCKCODE: TStringField;
    cdsLendBorrowACCID: TLargeintField;
    cdsLendBorrowACCNO: TStringField;
    cdsLendBorrowACCNAME: TStringField;
    cdsLendBorrowCP_ACCID: TLargeintField;
    cdsLendBorrowCP_ACCNO: TStringField;
    cdsLendBorrowCP_ACCNAME: TStringField;
    cdsLendBorrowLBTYPE: TStringField;
    cdsLendBorrowLB_QTY: TFloatField;
    cdsLendBorrowLB_PRICE: TFloatField;
    cdsLendBorrowLB_CHARGESRATE: TFloatField;
    cdsLendBorrowLB_DAY: TIntegerField;
    cdsLendBorrowLB_TIMEMODE: TStringField;
    cdsLendBorrowARO: TStringField;
    cdsLendBorrowCHARGE_PAYDATE: TDateField;
    cdsLendBorrowPOSTED: TStringField;
    cdsLendBorrowPAID: TStringField;
    cdsLendBorrowCASH_VOUCHERID: TLargeintField;
    cdsLendBorrowSET2SIDE: TStringField;
    cdsLendBorrowLINK2SIDEID: TLargeintField;
    cdsLendBorrowMODDA: TDateTimeField;
    cdsLendBorrowMODUI: TStringField;
    cdsLendBorrowAPPDA: TDateTimeField;
    cdsLendBorrowAPPUI: TStringField;
    cdsLendBorrowUNDER4Y: TIntegerField;
    cdsLendBorrowUNDER4YDA: TDateTimeField;
    cdsLendBorrowNOTES4Y: TStringField;
    cdsLendBorrowISDEL: TIntegerField;
    cdsLendBorrowID: TLargeintField;
    cdsLendBorrowOVERDUEDATE: TDateField;
    cdsLendBorrowOVERDAY: TIntegerField;
    cdsLendBorrowACCCODETEMP: TStringField;
    cdsLendBorrowACCNAMETMP: TStringField;
    cdsLendBorrowCPACCCODETMP: TStringField;
    cdsLendBorrowCPACCNAMETMP: TStringField;
    cdsLendBorrowSTOCKCODETMP: TStringField;
    cdsLendBorrowSTOCKNAMETMP: TStringField;
    cdsLendBorrowPROCESSED: TStringField;
    cdsLendBorrowLB_FEEAMT: TFloatField;
    cdsLendBorrowJRNID: TLargeintField;
    cdsLendBorrowRECALL: TStringField;
    cdsLendBorrowRECALL_DATE: TDateField;
    cdsLendBorrowSETTLED: TStringField;
    cdsLendBorrowCOL_AMT: TFloatField;
    cdsLendBorrowLB_DAY_ACTUAL: TIntegerField;
    cdsLendBorrowSETTLED_RECALL: TStringField;
    cdsLendBorrowqryLBFeeHis: TDataSetField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLendBorrowFeeHis: TfrmLendBorrowFeeHis;

implementation

{$R *.dfm}

uses DataGlobal;

end.
