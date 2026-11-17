unit FormCashPaymentBeneficiary;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Data.DB;

type
  TfrmCashPaymentBeneficiary = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    Ok: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    Cancel: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dsSubject: TDataSource;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashPaymentBeneficiary: TfrmCashPaymentBeneficiary;

implementation

{$R *.dfm}

uses FormCashPayment, DataGlobal, FormLuAccBankGroupByEntity, FormBank,
  FormLuBank;

procedure TfrmCashPaymentBeneficiary.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  AccBankID: Integer;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if (not cdsLuBank.IsEmpty) then
    begin
      if dsSubject.DataSet.FieldByName('ACCBANKID').IsNull then
        AccBankID := -1
      else
        AccBankID := dsSubject.DataSet.FieldByName('ACCBANKID').AsInteger;

      if frmLuBank.Run = mrOk then
      begin
        if dsSubject.DataSet.State in [dsEdit, dsInsert] then
        begin
          dsSubject.DataSet.FieldByName('ACCBANKID').AsInteger  := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTBANK_ID');
          dsSubject.DataSet.FieldByName('BNCODE').AsString      := cdsLuBankBNCODE.AsString;
          dsSubject.DataSet.FieldByName('ACCBANKCODE').AsString := cdsLuBankBNCODE.AsString + FormatFloat('0000', dmGlobal.RemoteServer.GetSeq('TBL_BANK'));
          dsSubject.DataSet.FieldByName('CCYCODE').AsString     := dmGlobal.RemoteServer.GetGlobalParamString('050');
          dsSubject.DataSet.FieldByName('ISRDN').AsString       := '0';
        end;
      end;
    end;
  end;
end;

end.
