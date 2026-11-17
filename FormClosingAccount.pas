unit FormClosingAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxMemo, cxDBEdit, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels;

type
  TfrmClosingAccount = class(TfrmEditorData)
    cdsCloseAccount: TNClientDataset;
    cdsCloseAccountCAID: TIntegerField;
    cdsCloseAccountREQCODE: TStringField;
    cdsCloseAccountREQDATE: TDateField;
    cdsCloseAccountACCID: TIntegerField;
    cdsCloseAccountNOTES: TStringField;
    cdsCloseAccountMODDA: TDateTimeField;
    cdsCloseAccountMODUI: TStringField;
    cdsCloseAccountAPPDA: TDateTimeField;
    cdsCloseAccountAPPUI: TStringField;
    cdsCloseAccountUNDER4Y: TIntegerField;
    cdsCloseAccountUNDER4YDA: TDateTimeField;
    cdsCloseAccountNOTES4Y: TStringField;
    cdsCloseAccountISDEL: TIntegerField;
    cdsCloseAccountID: TLargeintField;
    cdsCloseAccountACCCODE: TStringField;
    cdsCloseAccountACCNAME: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    grdBrowse: TcxGrid;
    gvwStockPos: TcxGridDBBandedTableView;
    grdBrowseLevel1: TcxGridLevel;
    grdBrowseLevel2: TcxGridLevel;
    dsAccountCashPos: TDataSource;
    dsAccountStockPos: TDataSource;
    gvwCashPos: TcxGridDBBandedTableView;
    gvwCashPosVALUEDATE: TcxGridDBBandedColumn;
    gvwCashPosACCID: TcxGridDBBandedColumn;
    gvwCashPosACCSOPID: TcxGridDBBandedColumn;
    gvwCashPosACCNO: TcxGridDBBandedColumn;
    gvwCashPosACCRUED_INTEREST: TcxGridDBBandedColumn;
    gvwCashPosCASH_ONHAND: TcxGridDBBandedColumn;
    gvwCashPosCASH_QQ: TcxGridDBBandedColumn;
    gvwCashPosCASH_SUBACC: TcxGridDBBandedColumn;
    gvwCashPosCASH_ONHOLD: TcxGridDBBandedColumn;
    gvwCashPosARAMT: TcxGridDBBandedColumn;
    gvwCashPosAPAMT: TcxGridDBBandedColumn;
    gvwCashPosCASH_OUTS: TcxGridDBBandedColumn;
    gvwCashPosBUY_AMT: TcxGridDBBandedColumn;
    gvwCashPosSELL_AMT: TcxGridDBBandedColumn;
    cdsAccountCashPos: TNClientDataset;
    cdsAccountCashPosACCID: TLargeintField;
    cdsAccountCashPosCCYCODE: TStringField;
    cdsAccountCashPosACCRUED_INTEREST: TFloatField;
    cdsAccountCashPosCASH_ONHAND: TFloatField;
    cdsAccountCashPosCASH_QQ: TFloatField;
    cdsAccountCashPosCASH_SUBACC: TFloatField;
    cdsAccountCashPosCASH_ONHOLD: TFloatField;
    cdsAccountCashPosARAMT: TFloatField;
    cdsAccountCashPosAPAMT: TFloatField;
    cdsAccountCashPosCASH_OUTS: TFloatField;
    cdsAccountCashPosBUY_AMT: TFloatField;
    cdsAccountCashPosSELL_AMT: TFloatField;
    cdsAccountCashPosCASH_WDR: TFloatField;
    cdsAccountCashPosCASH_OTHERS: TFloatField;
    cdsAccountCashPosCASH_BAL: TFloatField;
    cdsAccountStockPos: TNClientDataset;
    cdsAccountStockPosACCID: TLargeintField;
    cdsAccountStockPosSTOCKID: TIntegerField;
    cdsAccountStockPosAVGPRICE: TFloatField;
    cdsAccountStockPosQTY_CORPACT: TFloatField;
    cdsAccountStockPosQTY_ONHAND: TFloatField;
    cdsAccountStockPosQTY_OUTS: TFloatField;
    cdsAccountStockPosQTY_ONHOLD: TFloatField;
    cdsAccountStockPosQTY_OVERDUE: TFloatField;
    cdsAccountStockPosQTY_DLV: TFloatField;
    cdsAccountStockPosQTY_RCV: TFloatField;
    cdsAccountStockPosPROFIT_LOSS: TFloatField;
    cdsAccountStockPosBUY_VAL: TFloatField;
    cdsAccountStockPosSELL_VAL: TFloatField;
    cdsAccountStockPosQTY_WARKAT: TFloatField;
    cdsAccountStockPosSTK_WDR: TFloatField;
    cdsAccountStockPosBUY_QTY: TFloatField;
    cdsAccountStockPosSELL_QTY: TFloatField;
    cdsAccountStockPosQTY_VOUCHER: TFloatField;
    cdsAccountStockPosQTY_REPO: TFloatField;
    cdsAccountStockPosAVGPRICE_FEE: TFloatField;
    cdsAccountStockPosQTY_OLD_DLV: TFloatField;
    cdsAccountStockPosQTY_OLD_RCV: TFloatField;
    cdsAccountStockPosQTY_BAL: TFloatField;
    cdsAccountStockPosLOCALCODE: TStringField;
    cdsAccountStockPosSHORTNAME: TStringField;
    gvwStockPosACCID: TcxGridDBBandedColumn;
    gvwStockPosSTOCKID: TcxGridDBBandedColumn;
    gvwStockPosAVGPRICE: TcxGridDBBandedColumn;
    gvwStockPosQTY_CORPACT: TcxGridDBBandedColumn;
    gvwStockPosQTY_ONHAND: TcxGridDBBandedColumn;
    gvwStockPosQTY_OUTS: TcxGridDBBandedColumn;
    gvwStockPosQTY_ONHOLD: TcxGridDBBandedColumn;
    gvwStockPosQTY_OVERDUE: TcxGridDBBandedColumn;
    gvwStockPosQTY_DLV: TcxGridDBBandedColumn;
    gvwStockPosQTY_RCV: TcxGridDBBandedColumn;
    gvwStockPosPROFIT_LOSS: TcxGridDBBandedColumn;
    gvwStockPosBUY_VAL: TcxGridDBBandedColumn;
    gvwStockPosSELL_VAL: TcxGridDBBandedColumn;
    gvwStockPosQTY_WARKAT: TcxGridDBBandedColumn;
    gvwStockPosSTK_WDR: TcxGridDBBandedColumn;
    gvwStockPosBUY_QTY: TcxGridDBBandedColumn;
    gvwStockPosSELL_QTY: TcxGridDBBandedColumn;
    gvwStockPosQTY_VOUCHER: TcxGridDBBandedColumn;
    gvwStockPosQTY_REPO: TcxGridDBBandedColumn;
    gvwStockPosAVGPRICE_FEE: TcxGridDBBandedColumn;
    gvwStockPosQTY_OLD_DLV: TcxGridDBBandedColumn;
    gvwStockPosQTY_OLD_RCV: TcxGridDBBandedColumn;
    gvwStockPosQTY_BAL: TcxGridDBBandedColumn;
    gvwStockPosLOCALCODE: TcxGridDBBandedColumn;
    gvwStockPosSHORTNAME: TcxGridDBBandedColumn;
    gvwCashPosCCYCODE: TcxGridDBBandedColumn;
    gvwCashPosCASH_WDR: TcxGridDBBandedColumn;
    gvwCashPosCASH_OTHERS: TcxGridDBBandedColumn;
    gvwCashPosCASH_BAL: TcxGridDBBandedColumn;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsCloseAccountACCIDChange(Sender: TField);
    procedure cdsCloseAccountBeforePost(DataSet: TDataSet);
    procedure cdsCloseAccountNewRecord(DataSet: TDataSet);
    procedure cdsCloseAccountAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClosingAccount: TfrmClosingAccount;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount, DataLookup;

procedure TfrmClosingAccount.cdsCloseAccountACCIDChange(Sender: TField);
begin
  inherited;
  cdsAccountStockPos.Close;
  cdsAccountStockPos.Params[0].AsInteger := cdsCloseAccountACCID.AsInteger;
  cdsAccountStockPos.Open;

  cdsAccountCashPos.Close;
  cdsAccountCashPos.Params[0].AsInteger := cdsCloseAccountACCID.AsInteger;
  cdsAccountCashPos.Open;
end;

procedure TfrmClosingAccount.cdsCloseAccountAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not cdsCloseAccount.IsEmpty then
  begin
    cdsAccountStockPos.Close;
    cdsAccountStockPos.Params[0].AsInteger := cdsCloseAccountACCID.AsInteger;
    cdsAccountStockPos.Open;

    cdsAccountCashPos.Close;
    cdsAccountCashPos.Params[0].AsInteger := cdsCloseAccountACCID.AsInteger;
    cdsAccountCashPos.Open;
  end;
end;

procedure TfrmClosingAccount.cdsCloseAccountBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsCloseAccount.State in [dsInsert] then
  begin
    cdsCloseAccountCAID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_CLOSE_ACCOUNT');
    cdsCloseAccountREQDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    cdsCloseAccountREQCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsCloseAccountREQDATE.AsDateTime, 'CA', 'TBL_B_CLOSE_ACCOUNT')
  end;
end;

procedure TfrmClosingAccount.cdsCloseAccountNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCloseAccountCAID.AsInteger := -1;
  cdsCloseAccountREQCODE.AsString := '<AUTO>';
  cdsCloseAccountREQDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmClosingAccount.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if cdsCloseAccount.ReadOnly then
    Exit;

  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(cdsCloseAccountACCID.AsInteger) = mrOK then
    begin
      if not (cdsCloseAccount.State in dsEditModes) then
        cdsCloseAccount.Edit;

      cdsCloseAccountACCID.AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
    end;
  end;
end;

procedure TfrmClosingAccount.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAccount.Active then
      cdsLuAccount.Open;

  end;
end;

Initialization
  RegisterClass(TfrmClosingAccount);

end.
