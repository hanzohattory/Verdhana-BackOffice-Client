unit FormSplitSettleInstr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, dxStatusBar, Data.DB, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmSplitSettleInstr = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dsSubject: TDataSource;
    StatusBar: TdxStatusBar;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    grdSplitSettleInstr: TcxGrid;
    gvwSplitDetail: TcxGridDBBandedTableView;
    grdSplitSettleInstrLevel1: TcxGridLevel;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    cxDBTextEdit15: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dsSetteInstrSplit: TDataSource;
    gvwSplitDetailSIID: TcxGridDBBandedColumn;
    gvwSplitDetailSINO: TcxGridDBBandedColumn;
    gvwSplitDetailVALUEDATE: TcxGridDBBandedColumn;
    gvwSplitDetailSITYPE: TcxGridDBBandedColumn;
    gvwSplitDetailCASH_STOCK: TcxGridDBBandedColumn;
    gvwSplitDetailSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwSplitDetailINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwSplitDetailNETTYPE: TcxGridDBBandedColumn;
    gvwSplitDetailACCID: TcxGridDBBandedColumn;
    gvwSplitDetailACCNO: TcxGridDBBandedColumn;
    gvwSplitDetailACCNAME: TcxGridDBBandedColumn;
    gvwSplitDetailTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwSplitDetailBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwSplitDetailBASE_NETAMT: TcxGridDBBandedColumn;
    gvwSplitDetailBANK_CHARGES: TcxGridDBBandedColumn;
    gvwSplitDetailSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwSplitDetailSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwSplitDetailSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwSplitDetailSETTLED_AMT: TcxGridDBBandedColumn;
    gvwSplitDetailSTOCKID: TcxGridDBBandedColumn;
    gvwSplitDetailSTOCKCODE: TcxGridDBBandedColumn;
    gvwSplitDetailQTY: TcxGridDBBandedColumn;
    gvwSplitDetailTRDDATE: TcxGridDBBandedColumn;
    gvwSplitDetailDUEDATE: TcxGridDBBandedColumn;
    gvwSplitDetailSETTLEDDATE: TcxGridDBBandedColumn;
    gvwSplitDetailSTAT: TcxGridDBBandedColumn;
    gvwSplitDetailOLD_SIID: TcxGridDBBandedColumn;
    gvwSplitDetailMODDA: TcxGridDBBandedColumn;
    gvwSplitDetailMODUI: TcxGridDBBandedColumn;
    gvwSplitDetailAPPDA: TcxGridDBBandedColumn;
    gvwSplitDetailAPPUI: TcxGridDBBandedColumn;
    gvwSplitDetailUNDER4Y: TcxGridDBBandedColumn;
    gvwSplitDetailUNDER4YDA: TcxGridDBBandedColumn;
    gvwSplitDetailNOTES4Y: TcxGridDBBandedColumn;
    gvwSplitDetailISDEL: TcxGridDBBandedColumn;
    gvwSplitDetailID: TcxGridDBBandedColumn;
    gvwSplitDetailVOUCHERAMT: TcxGridDBBandedColumn;
    gvwSplitDetailVOUCHERQTY: TcxGridDBBandedColumn;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    gvwSplitDetailSOURCE_ACCBANKID: TcxGridDBBandedColumn;
    gvwSplitDetailSOURCE_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwSplitDetailSOURCE_ACCBANKNO: TcxGridDBBandedColumn;
    gvwSplitDetailSOURCE_ACCBANKNAME: TcxGridDBBandedColumn;
    gvwSplitDetailTARGET_ACCBANKID: TcxGridDBBandedColumn;
    gvwSplitDetailTARGET_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwSplitDetailTARGET_ACCBANKNO: TcxGridDBBandedColumn;
    gvwSplitDetailTARGET_ACCBANKNAME: TcxGridDBBandedColumn;
    cxDBTextEdit19: TcxDBTextEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplitSettleInstr: TfrmSplitSettleInstr;

implementation

{$R *.dfm}

uses FormSettleInstrList, DataGlobal, FormConSI;

procedure TfrmSplitSettleInstr.btnOKClick(Sender: TObject);
var
  SettleAmt, Qty: Double;
begin
  if VarIsNull(dsSubject.DataSet.FieldByName('SETTLE_NETAMT').Value) then
    SettleAmt := 0
  else
    SettleAmt := dsSubject.DataSet.FieldByName('SETTLE_NETAMT').Value;

  if VarIsNull(dsSubject.DataSet.FieldByName('QTY').Value) then
    Qty := 0
  else
    Qty := dsSubject.DataSet.FieldByName('QTY').Value;

  if (gvwSplitDetail.DataController.Summary.FooterSummaryValues[0] <> SettleAmt) or
    (gvwSplitDetail.DataController.Summary.FooterSummaryValues[1] <> Qty) then
  begin
    MessageDlg('Total split quantity and Total Settlement Net Amount must be same!', mtError, [mbOK], 0);
    Abort;
  end
  else
    ModalResult := mrOk;
end;

end.
