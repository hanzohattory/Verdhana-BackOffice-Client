unit FormAccUnSuspend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxSkinsdxStatusBarPainter, Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxSkinsCore, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxCurrencyEdit, cxCalendar, Datasnap.DBClient, NClientDataset,
  cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxMemo, cxDropDownEdit, cxImageComboBox, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls, Vcl.DBCtrls,
  dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels;

type
    TfrmAccUnSuspend = class(TfrmEditorData)
    cxDBMemo1: TcxDBMemo;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cdsAccountByParam: TNClientDataset;
    cdsAccountByParamACCID: TIntegerField;
    cdsAccountByParamENTTID: TIntegerField;
    cdsAccountByParamACCCODE: TStringField;
    cdsAccountByParamACCNAME: TStringField;
    cdsSPReasonByParam: TNClientDataset;
    cdsSPReasonByParamSPRESID: TLargeintField;
    cdsSPReasonByParamSPREASON: TWideStringField;
    dsStockPos: TDataSource;
    dsCashPos: TDataSource;
    Status: TdxLayoutItem;
    dtSuspenDate: TdxLayoutItem;
    cmbACCID: TcxDBLookupComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cdsAccUnSuspend: TNClientDataset;
    cdsCashPos: TNClientDataset;
    cdsStockPos: TNClientDataset;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwStockPosition: TcxGridDBBandedTableView;
    gvwCashPosition: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cdsAccUnSuspendACCID: TIntegerField;
    cdsAccUnSuspendUNSPDATE: TDateField;
    cdsAccUnSuspendUNSPBY: TStringField;
    cdsAccUnSuspendUNSPNOTES: TStringField;
    cdsAccUnSuspendMODDA: TDateTimeField;
    cdsAccUnSuspendMODUI: TStringField;
    cdsAccUnSuspendAPPDA: TDateTimeField;
    cdsAccUnSuspendAPPUI: TStringField;
    cdsAccUnSuspendUNDER4Y: TIntegerField;
    cdsAccUnSuspendUNDER4YDA: TDateTimeField;
    cdsAccUnSuspendNOTES4Y: TStringField;
    cdsAccUnSuspendISDEL: TIntegerField;
    cdsAccUnSuspendID: TLargeintField;
    cdsAccUnSuspendACCCODE: TStringField;
    cdsAccUnSuspendACCNAME: TStringField;
    cdsAccUnSuspendACC_STS: TStringField;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cdsAccUnSuspendSPRESID: TLargeintField;
    cdsCashPosACCID: TLargeintField;
    cdsCashPosCCYCODE: TStringField;
    cdsCashPosACCRUED_INTEREST: TFloatField;
    cdsCashPosCASH_ONHAND: TFloatField;
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
    cdsCashPosCASH_BAL: TFloatField;
    gvwCashPositionACCID: TcxGridDBBandedColumn;
    gvwCashPositionCCYCODE: TcxGridDBBandedColumn;
    gvwCashPositionACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwCashPositionCASH_ONHAND: TcxGridDBBandedColumn;
    gvwCashPositionCASH_QQ: TcxGridDBBandedColumn;
    gvwCashPositionCASH_SUBACC: TcxGridDBBandedColumn;
    gvwCashPositionCASH_ONHOLD: TcxGridDBBandedColumn;
    gvwCashPositionARAMT: TcxGridDBBandedColumn;
    gvwCashPositionAPAMT: TcxGridDBBandedColumn;
    gvwCashPositionCASH_OUTS: TcxGridDBBandedColumn;
    gvwCashPositionBUY_AMT: TcxGridDBBandedColumn;
    gvwCashPositionSELL_AMT: TcxGridDBBandedColumn;
    gvwCashPositionCASH_WDR: TcxGridDBBandedColumn;
    gvwCashPositionCASH_OTHERS: TcxGridDBBandedColumn;
    gvwCashPositionCASH_BAL: TcxGridDBBandedColumn;
    cdsStockPosACCID: TLargeintField;
    cdsStockPosSTOCKID: TIntegerField;
    cdsStockPosAVGPRICE: TFloatField;
    cdsStockPosQTY_CORPACT: TFloatField;
    cdsStockPosQTY_ONHAND: TFloatField;
    cdsStockPosQTY_OUTS: TFloatField;
    cdsStockPosQTY_ONHOLD: TFloatField;
    cdsStockPosQTY_OVERDUE: TFloatField;
    cdsStockPosQTY_DLV: TFloatField;
    cdsStockPosQTY_RCV: TFloatField;
    cdsStockPosPROFIT_LOSS: TFloatField;
    cdsStockPosBUY_VAL: TFloatField;
    cdsStockPosSELL_VAL: TFloatField;
    cdsStockPosQTY_WARKAT: TFloatField;
    cdsStockPosSTK_WDR: TFloatField;
    cdsStockPosBUY_QTY: TFloatField;
    cdsStockPosSELL_QTY: TFloatField;
    cdsStockPosQTY_VOUCHER: TFloatField;
    cdsStockPosQTY_REPO: TFloatField;
    cdsStockPosAVGPRICE_FEE: TFloatField;
    cdsStockPosQTY_OLD_DLV: TFloatField;
    cdsStockPosQTY_OLD_RCV: TFloatField;
    cdsStockPosQTY_BAL: TFloatField;
    gvwStockPositionACCID: TcxGridDBBandedColumn;
    gvwStockPositionSTOCKID: TcxGridDBBandedColumn;
    gvwStockPositionAVGPRICE: TcxGridDBBandedColumn;
    gvwStockPositionQTY_CORPACT: TcxGridDBBandedColumn;
    gvwStockPositionQTY_ONHAND: TcxGridDBBandedColumn;
    gvwStockPositionQTY_OUTS: TcxGridDBBandedColumn;
    gvwStockPositionQTY_ONHOLD: TcxGridDBBandedColumn;
    gvwStockPositionQTY_OVERDUE: TcxGridDBBandedColumn;
    gvwStockPositionQTY_DLV: TcxGridDBBandedColumn;
    gvwStockPositionQTY_RCV: TcxGridDBBandedColumn;
    gvwStockPositionPROFIT_LOSS: TcxGridDBBandedColumn;
    gvwStockPositionBUY_VAL: TcxGridDBBandedColumn;
    gvwStockPositionSELL_VAL: TcxGridDBBandedColumn;
    gvwStockPositionQTY_WARKAT: TcxGridDBBandedColumn;
    gvwStockPositionSTK_WDR: TcxGridDBBandedColumn;
    gvwStockPositionBUY_QTY: TcxGridDBBandedColumn;
    gvwStockPositionSELL_QTY: TcxGridDBBandedColumn;
    gvwStockPositionQTY_VOUCHER: TcxGridDBBandedColumn;
    gvwStockPositionQTY_REPO: TcxGridDBBandedColumn;
    gvwStockPositionAVGPRICE_FEE: TcxGridDBBandedColumn;
    gvwStockPositionQTY_OLD_DLV: TcxGridDBBandedColumn;
    gvwStockPositionQTY_OLD_RCV: TcxGridDBBandedColumn;
    gvwStockPositionQTY_BAL: TcxGridDBBandedColumn;
    cdsStockPosLOCALCODE: TStringField;
    cdsStockPosSHORTNAME: TStringField;
    gvwStockPositionLOCALCODE: TcxGridDBBandedColumn;
    gvwStockPositionSHORTNAME: TcxGridDBBandedColumn;
    procedure cdsAccUnSuspendNewRecord(DataSet: TDataSet);
    procedure cdsAccUnSuspendAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccUnSuspend: TfrmAccUnSuspend;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormAccUnSuspendList;

procedure TfrmAccUnSuspend.cdsAccUnSuspendAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsCashPos.Close;
  cdsCashPos.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsCashPos.Open;

  cdsStockPos.Close;
  cdsStockPos.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsStockPos.Open;
end;

procedure TfrmAccUnSuspend.cdsAccUnSuspendNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccUnSuspendACCID.AsInteger := cdsAccUnSuspend.Params[0].AsInteger;
  cdsAccUnSuspendUNSPDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsAccUnSuspendUNSPBY.AsString := dmGlobal.UserID;
end;

Initialization
  RegisterClass(TfrmAccUnSuspend);

end.
