unit FormCashFlow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, Vcl.ExtCtrls, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  NActionPermission, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, Datasnap.DBClient, NClientDataset, cxGridCustomView,
  cxGridLevel, cxGrid, cxCurrencyEdit, Vcl.ActnList;

type
  TfrmCashFlow = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsBank: TDataSource;
    cdsBankBalance: TNClientDataset;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    cdsBankBalanceBNCODE: TStringField;
    cdsBankBalanceBNNAME: TStringField;
    cdsBankBalanceACCID: TStringField;
    cdsBankBalanceBNSALDO: TFloatField;
    cdsBankBalanceT0PAYMENT: TFloatField;
    cdsBankBalanceT0RECEIVE: TFloatField;
    cdsBankBalanceT1PAYMENT: TFloatField;
    cdsBankBalanceT1RECEIVE: TFloatField;
    cdsBankBalanceACCNO: TStringField;
    cdsBankBalanceACCNAME: TStringField;
    cxGrid1: TcxGrid;
    gvwBank: TcxGridDBBandedTableView;
    gvwBankBNNAME: TcxGridDBBandedColumn;
    gvwBankBNSALDO: TcxGridDBBandedColumn;
    gvwBankT0PAYMENT: TcxGridDBBandedColumn;
    gvwBankT0RECEIVE: TcxGridDBBandedColumn;
    gvwBankT1PAYMENT: TcxGridDBBandedColumn;
    gvwBankT1RECEIVE: TcxGridDBBandedColumn;
    gvwBankACCNO: TcxGridDBBandedColumn;
    gvwBankACCNAME: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsBankBalanceT0NET: TFloatField;
    cdsBankBalanceT1NET: TFloatField;
    cdsBankBalanceCASHREQUIRED: TFloatField;
    gvwBankT0NET: TcxGridDBBandedColumn;
    gvwBankT1NET: TcxGridDBBandedColumn;
    gvwBankCASHREQUIRED: TcxGridDBBandedColumn;
    cdsCFGroup: TNClientDataset;
    cdsCFGroupBNCODE: TStringField;
    cdsCFGroupGROUPCODE: TStringField;
    cdsCFGroupT0PAYMENT: TFloatField;
    cdsCFGroupT0RECEIVE: TFloatField;
    cdsCFGroupT1PAYMENT: TFloatField;
    cdsCFGroupT1RECEIVE: TFloatField;
    cxGrid1Level2: TcxGridLevel;
    gvwGroup: TcxGridDBBandedTableView;
    dsGroup: TDataSource;
    gvwGroupGROUPCODE: TcxGridDBBandedColumn;
    gvwGroupT0PAYMENT: TcxGridDBBandedColumn;
    gvwGroupT0RECEIVE: TcxGridDBBandedColumn;
    gvwGroupT1PAYMENT: TcxGridDBBandedColumn;
    gvwGroupT1RECEIVE: TcxGridDBBandedColumn;
    aclCF: TActionList;
    procedure FormCreate(Sender: TObject);
    procedure cdsBankBalanceCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashFlow: TfrmCashFlow;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashFlow.cdsBankBalanceCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsBankBalanceT0NET.AsFloat := cdsBankBalanceT0RECEIVE.AsFloat - cdsBankBalanceT0PAYMENT.AsFloat;
  cdsBankBalanceT1NET.AsFloat := cdsBankBalanceT1RECEIVE.AsFloat - cdsBankBalanceT1PAYMENT.AsFloat;
  if cdsBankBalanceT0NET.AsFloat < 0 then
  begin
    if Abs(cdsBankBalanceT0NET.AsFloat) > cdsBankBalanceBNSALDO.AsFloat then
    begin
      cdsBankBalanceCASHREQUIRED.AsFloat := abs(cdsBankBalanceBNSALDO.AsFloat - Abs(cdsBankBalanceT0NET.AsFloat));
    end
    else cdsBankBalanceCASHREQUIRED.AsFloat := 0;
  end
  else cdsBankBalanceCASHREQUIRED.AsFloat := 0;
end;

procedure TfrmCashFlow.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;

  cdsBankBalance.Close;
  cdsBankBalance.Open;

  cdsCFGroup.Close;
  cdsCFGroup.Open;
end;

initialization
registerclass(TfrmCashFlow);

end.
