unit FormUpdateContract;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters,
  Vcl.Menus, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxClasses,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGridLevel, cxGrid,
  dxLayoutcxEditAdapters, cxContainer, cxLabel, cxDBLabel, cxCurrencyEdit,
  cxTextEdit, cxDBEdit;

type
  TfrmUpdateContract = class(TForm)
    dsUpdateContract: TDataSource;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edGrossAmount: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    edBrokerFee: TcxCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    edLevy: TcxCurrencyEdit;
    dxLayoutItem14: TdxLayoutItem;
    edVATLevy: TcxCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    edKPEI: TcxCurrencyEdit;
    dxLayoutItem16: TdxLayoutItem;
    edSalesTax: TcxCurrencyEdit;
    dxLayoutItem17: TdxLayoutItem;
    edWHT: TcxCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    edWapu: TcxCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    edNetAmount: TcxCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    edVAT: TcxCurrencyEdit;
    dxLayoutItem21: TdxLayoutItem;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutItem22: TdxLayoutItem;
    procedure edBrokerFeePropertiesEditValueChanged(Sender: TObject);
    procedure edLevyPropertiesEditValueChanged(Sender: TObject);
    procedure edVATLevyPropertiesEditValueChanged(Sender: TObject);
    procedure edKPEIPropertiesEditValueChanged(Sender: TObject);
    procedure edSalesTaxPropertiesEditValueChanged(Sender: TObject);
    procedure edWHTPropertiesEditValueChanged(Sender: TObject);
    procedure edWapuPropertiesEditValueChanged(Sender: TObject);
    procedure edVATPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    FBS: string;
    { Private declarations }
    procedure CountNetAmount;
  public
    { Public declarations }
    property BS: string read FBS write FBS;
  end;

var
  frmUpdateContract: TfrmUpdateContract;

implementation

{$R *.dfm}

uses DataGlobal, FormContract;

procedure TfrmUpdateContract.CountNetAmount;
begin
  if BS = 'B' then
  begin
    edNetAmount.EditValue := edGrossAmount.EditValue + edBrokerFee.EditValue + edVAT.EditValue +
      edLevy.EditValue + edVATLevy.EditValue + edKPEI.EditValue - edWHT.EditValue -
      edWapu.EditValue;
  end
  else
  begin
    edNetAmount.EditValue := edGrossAmount.EditValue - edBrokerFee.EditValue - edVAT.EditValue -
      edLevy.EditValue - edVATLevy.EditValue - edKPEI.EditValue - edSalesTax.EditValue +
      edWHT.EditValue + edWapu.EditValue;
  end;
end;

procedure TfrmUpdateContract.cxButton1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure to change charges amount ?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ModalResult := mrOk
  else
    ModalResult := mrNone;
end;

procedure TfrmUpdateContract.edBrokerFeePropertiesEditValueChanged(
  Sender: TObject);
begin
  CountNetAmount;
end;

procedure TfrmUpdateContract.edKPEIPropertiesEditValueChanged(Sender: TObject);
begin
  CountNetAmount;
end;

procedure TfrmUpdateContract.edLevyPropertiesEditValueChanged(Sender: TObject);
begin
  CountNetAmount;
end;

procedure TfrmUpdateContract.edSalesTaxPropertiesEditValueChanged(
  Sender: TObject);
begin
  CountNetAmount;
end;

procedure TfrmUpdateContract.edVATLevyPropertiesEditValueChanged(
  Sender: TObject);
begin
  CountNetAmount;
end;

procedure TfrmUpdateContract.edVATPropertiesEditValueChanged(Sender: TObject);
begin
  CountNetAmount;
end;

procedure TfrmUpdateContract.edWapuPropertiesEditValueChanged(Sender: TObject);
begin
  CountNetAmount;
end;

procedure TfrmUpdateContract.edWHTPropertiesEditValueChanged(Sender: TObject);
begin
  CountNetAmount;
end;

end.
