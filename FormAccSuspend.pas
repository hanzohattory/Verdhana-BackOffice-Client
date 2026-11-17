unit FormAccSuspend;

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
  cxButtonEdit, dxLayoutLookAndFeels, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmAccSuspend = class(TfrmEditorData)
    cxDBMemo1: TcxDBMemo;
    cxGrid1: TcxGrid;
    gvwStockPosition: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
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
    cdsAccSuspend: TNClientDataset;
    cxGrid1Level2: TcxGridLevel;
    gvwCashPosition: TcxGridDBBandedTableView;
    cdsAccSuspendACC_STAT: TStringField;
    cdsAccSuspendSPDATE: TDateField;
    cdsAccSuspendSPBY: TStringField;
    cdsAccSuspendSPRESID: TLargeintField;
    cdsAccSuspendSPNOTES: TStringField;
    cdsAccSuspendMODDA: TDateTimeField;
    cdsAccSuspendMODUI: TStringField;
    cdsAccSuspendAPPDA: TDateTimeField;
    cdsAccSuspendAPPUI: TStringField;
    cdsAccSuspendUNDER4Y: TIntegerField;
    cdsAccSuspendUNDER4YDA: TDateTimeField;
    cdsAccSuspendNOTES4Y: TStringField;
    cdsAccSuspendISDEL: TIntegerField;
    cdsAccSuspendID: TLargeintField;
    cdsAccSuspendACCCODE: TStringField;
    cdsAccSuspendACCNAME: TStringField;
    dxLayoutControl1Group3: TdxLayoutGroup;
    gvwCashPositionVALUEDATE: TcxGridDBBandedColumn;
    gvwCashPositionACCID: TcxGridDBBandedColumn;
    gvwCashPositionACCSOPID: TcxGridDBBandedColumn;
    gvwCashPositionACCNO: TcxGridDBBandedColumn;
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
    cdsAccSuspendACCID: TIntegerField;
    edAccount: TcxDBButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsCashPos: TNClientDataset;
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
    cdsStockPos: TNClientDataset;
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
    gvwCashPositionCCYCODE: TcxGridDBBandedColumn;
    gvwCashPositionCASH_OTHERS: TcxGridDBBandedColumn;
    gvwCashPositionCASH_BAL: TcxGridDBBandedColumn;
    procedure cdsAccSuspendNewRecord(DataSet: TDataSet);
    procedure cdsAccSuspendACCIDChange(Sender: TField);
    procedure cdsAccSuspendAfterOpen(DataSet: TDataSet);
    procedure cdsAccSuspendBeforePost(DataSet: TDataSet);
    procedure edAccountPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccSuspend: TfrmAccSuspend;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormAccSuspendList, FormLuAccount;

procedure TfrmAccSuspend.cdsAccSuspendACCIDChange(Sender: TField);
begin
  inherited;
  cdsCashPos.Close;
  cdsCashPos.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsCashPos.Open;

  cdsStockPos.Close;
  cdsStockPos.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsStockPos.Open;
end;

procedure TfrmAccSuspend.cdsAccSuspendAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsCashPos.Close;
  cdsCashPos.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsCashPos.Open;

  cdsStockPos.Close;
  cdsStockPos.Params[0].AsInteger := dsSubject.DataSet.FieldByName('ACCID').AsInteger;
  cdsStockPos.Open;
end;

procedure TfrmAccSuspend.cdsAccSuspendBeforePost(DataSet: TDataSet);
begin
  inherited;
  dsSubject.DataSet.FieldByName('SPBY').AsString  := dmGlobal.UserID;
end;

procedure TfrmAccSuspend.cdsAccSuspendNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccSuspendSPBY.AsString     := dmGlobal.UserID;
  cdsAccSuspendSPDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmAccSuspend.edAccountPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
      end;
    end;
  end;
end;

procedure TfrmAccSuspend.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
      cdsLuAccount.Open;
  end;
end;

Initialization
  RegisterClass(TfrmAccSuspend);

end.
