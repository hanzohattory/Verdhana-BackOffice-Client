unit FormCashAccountOutstand;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, cxGroupBox, cxRadioGroup, dxLayoutControl,
  NActionPermission, Vcl.Menus, Vcl.ActnList, NDatasetAction;

type
  TfrmCashAccountOutstanding = class(TfrmBasic)
    dxLayoutControl1: TdxLayoutControl;
    rbVoucherType: TcxRadioGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwCashAccountOuts: TcxGridDBTableView;
    gvwCashAccountOutsVoucherNo: TcxGridDBColumn;
    gvwCashAccountOutsVoucherType: TcxGridDBColumn;
    gvwCashAccountOutsEntryDate: TcxGridDBColumn;
    gvwCashAccountOutsProcessDate: TcxGridDBColumn;
    gvwCashAccountOutsAccountCode: TcxGridDBColumn;
    gvwCashAccountOutsAccountName: TcxGridDBColumn;
    gvwCashAccountOutsMSOP_Name: TcxGridDBColumn;
    gvwCashAccountOutsSettlementType: TcxGridDBColumn;
    gvwCashAccountOutsBussinesType: TcxGridDBColumn;
    gvwCashAccountOutsBankAccountCode: TcxGridDBColumn;
    gvwCashAccountOutsBankCode: TcxGridDBColumn;
    gvwCashAccountOutsBankAccountNo: TcxGridDBColumn;
    gvwCashAccountOutsCurrency: TcxGridDBColumn;
    gvwCashAccountOutsExchRate: TcxGridDBColumn;
    gvwCashAccountOutsAmount: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsCashAccountOuts: TNClientDataset;
    cdsCashAccountOutsVoucherNo: TStringField;
    cdsCashAccountOutsVoucherType: TStringField;
    cdsCashAccountOutsEntryDate: TDateField;
    cdsCashAccountOutsProcessDate: TDateField;
    cdsCashAccountOutsAccountCode: TStringField;
    cdsCashAccountOutsAccountName: TStringField;
    cdsCashAccountOutsMSOP_Name: TStringField;
    cdsCashAccountOutsSettlementType: TStringField;
    cdsCashAccountOutsBussinesType: TStringField;
    cdsCashAccountOutsBankAccountCode: TStringField;
    cdsCashAccountOutsBankCode: TStringField;
    cdsCashAccountOutsBankAccountNo: TStringField;
    cdsCashAccountOutsCurrency: TStringField;
    cdsCashAccountOutsExchRate: TFloatField;
    cdsCashAccountOutsAmount: TFloatField;
    dsSubject: TDataSource;
    aclCashAccountOut: TActionList;
    actViewData: TNAction;
    procedure actViewDataExecute(Sender: TObject);
    procedure rbVoucherTypePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashAccountOutstanding: TfrmCashAccountOutstanding;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashAccountOutstanding.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsCashAccountOuts.Close;
  cdsCashAccountOuts.Params[0].AsString := rbVoucherType.EditValue;
  cdsCashAccountOuts.Open;
end;

procedure TfrmCashAccountOutstanding.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCashAccountOuts.Close;
  cdsCashAccountOuts.Params[0].AsString := rbVoucherType.EditValue;
  cdsCashAccountOuts.Open;
end;

procedure TfrmCashAccountOutstanding.rbVoucherTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmCashAccountOutstanding);

end.
