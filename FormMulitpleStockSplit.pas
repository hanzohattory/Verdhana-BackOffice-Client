unit FormMulitpleStockSplit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  Datasnap.DBClient, NClientDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, cxTextEdit, cxDBEdit, dxLayoutControl, cxCurrencyEdit,
  cxDBLookupComboBox, cxImageComboBox, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TfrmMultipeStockSplit = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwMultipleStockSplit: TcxGridDBTableView;
    gvwMultipleStockSplitACCCUSTODYID: TcxGridDBColumn;
    gvwMultipleStockSplitSETTLE_TYPE: TcxGridDBColumn;
    gvwMultipleStockSplitQTY: TcxGridDBColumn;
    gvwMultipleStockSplitAMOUNT: TcxGridDBColumn;
    gvwMultipleStockSplitINSTR_TYPE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dsStockSplitD: TDataSource;
    dsStockSplitH: TDataSource;
    cdsStockSplitH: TNClientDataset;
    cdsStockSplitHACCID: TLargeintField;
    cdsStockSplitHSTOCKID: TLargeintField;
    cdsStockSplitHRECEIVE: TFloatField;
    cdsStockSplitHDELIVER: TFloatField;
    cdsStockSplitD: TNClientDataset;
    cdsStockSplitDACCCUSTODYID: TLargeintField;
    cdsStockSplitDSETTLE_TYPE: TStringField;
    cdsStockSplitDQTY: TFloatField;
    cdsStockSplitDAMOUNT: TFloatField;
    cdsStockSplitDINSTR_TYPE: TStringField;
    cdsStockSplitHACCNO: TStringField;
    cdsStockSplitHACCNAME: TStringField;
    cdsStockSplitHSTOCKCODE: TStringField;
    cdsStockSplitHSTOCKNAME: TStringField;
    txtSumReceive: TcxCurrencyEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    txtSumDeliver: TcxCurrencyEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cdsLuAccountCustody: TNClientDataset;
    cdsLuAccountCustodyACCCUSTODYID: TIntegerField;
    cdsLuAccountCustodyACCID: TIntegerField;
    cdsLuAccountCustodyCUSTODYCODE: TStringField;
    cdsLuAccountCustodyCUSTODYACCNO: TStringField;
    cdsLuAccountCustodyCUSTODYACCNAME: TStringField;
    cdsLuAccountCustodyCUSTODYBRANCH: TStringField;
    cdsLuAccountCustodyCUSTODYTYPE: TStringField;
    cdsLuAccountCustodyACTLED_SEQID: TIntegerField;
    cdsLuAccountCustodyCBEST_ACCBANKID: TLargeintField;
    cdsLuAccountCustodyCUSTODY_DEFAULT: TStringField;
    cdsLuAccountCustodySTAT: TStringField;
    dsLuAccountCustody: TDataSource;
    cxButton1: TcxButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Group2: TdxLayoutGroup;
    cdsStockSplitHSTAT: TStringField;
    cdsStockSplitDORIG_AMOUNT: TFloatField;
    cdsStockSplitDDIFF_AMOUNT: TFloatField;
    gvwMultipleStockSplitSPLIT_HID: TcxGridDBColumn;
    gvwMultipleStockSplitORIG_AMOUNT: TcxGridDBColumn;
    gvwMultipleStockSplitDIFF_AMOUNT: TcxGridDBColumn;
    cdsStockSplitHDUEDATE: TDateField;
    cdsStockSplitHSPLITID: TLargeintField;
    cdsStockSplitDSPLITID: TLargeintField;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cdsGetOrigAmt: TNClientDataset;
    cdsGetOrigAmtORIG_RECEIVE: TFloatField;
    cdsGetOrigAmtORIG_DELIVER: TFloatField;
    txtOrigReceive: TcxCurrencyEdit;
    xx: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    txtOrigDeliver: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure gvwMultipleStockSplitINSTR_TYPEPropertiesChange(Sender: TObject);
    procedure cdsStockSplitDBeforePost(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cdsStockSplitDNewRecord(DataSet: TDataSet);
    procedure cdsStockSplitDQTYChange(Sender: TField);
  private
    FSIID: string;

    FReceive: Double;
    FDeliver: Double;

    FModalResult: Integer;
    { Private declarations }
  public
    { Public declarations }
    property SIID : string read FSIID write FSIID;
  end;

var
  frmMultipeStockSplit: TfrmMultipeStockSplit;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmMultipeStockSplit.cdsStockSplitDBeforePost(DataSet: TDataSet);
var
  fTmpReceive,
  fTmpDeliver: Double;
begin
  if cdsStockSplitDSETTLE_TYPE.AsString = 'R' then
  begin
    fTmpReceive := FReceive + cdsStockSplitDQTY.AsFloat;
    if cdsStockSplitHRECEIVE.AsFloat >= fTmpReceive then
    begin
      FReceive     := fTmpReceive;
      FModalResult := mrOk;
    end
    else
    begin
      MessageDlg('Inserted receive qty out of summary receive qty', mtError, [mbOk], 0);
      FModalResult := mrCancel;
    end;
  end
  else if cdsStockSplitDSETTLE_TYPE.AsString = 'D' then
  begin
    fTmpDeliver := FDeliver + cdsStockSplitDQTY.AsFloat;
    if cdsStockSplitHDELIVER.AsFloat > fTmpDeliver then
    begin
      FDeliver     := fTmpDeliver;
      FModalResult := mrOk;
    end
    else
    begin
      MessageDlg('Inserted deliver qty out of summary deliver qty', mtError, [mbOk], 0);
      FModalResult := mrCancel;
    end;
  end;

  txtSumReceive.EditValue := FReceive;
  txtSumDeliver.EditValue := FDeliver
end;

procedure TfrmMultipeStockSplit.cdsStockSplitDNewRecord(DataSet: TDataSet);
begin
  cdsStockSplitDSPLITID.AsLargeInt := cdsStockSplitHSPLITID.AsLargeInt;
end;

procedure TfrmMultipeStockSplit.cdsStockSplitDQTYChange(Sender: TField);
begin
  cdsStockSplitDORIG_AMOUNT.AsFloat := 100
end;

procedure TfrmMultipeStockSplit.cxButton1Click(Sender: TObject);
begin
  ModalResult := FModalResult;
end;

procedure TfrmMultipeStockSplit.FormShow(Sender: TObject);
begin
  FReceive     := 0;
  FDeliver     := 0;
  FModalResult := mrNone;

  cdsLuAccountCustody.Close;
  cdsLuAccountCustody.Params[0].AsInteger := cdsStockSplitHACCID.AsInteger;
  cdsLuAccountCustody.Open;

  cdsGetOrigAmt.Close;
  cdsGetOrigAmt.Params[0].AsString := FSIID;
  cdsGetOrigAmt.Open;

  txtOrigReceive.EditValue := cdsGetOrigAmtORIG_RECEIVE.AsFloat;
  txtOrigDeliver.EditValue := cdsGetOrigAmtORIG_DELIVER.AsFloat;

end;

procedure TfrmMultipeStockSplit.gvwMultipleStockSplitINSTR_TYPEPropertiesChange(
  Sender: TObject);
begin
  if cdsStockSplitDINSTR_TYPE.AsString = 'FOP' then
    cdsStockSplitDAMOUNT.AsFloat := 0;
end;

end.
