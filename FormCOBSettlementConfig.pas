unit FormCOBSettlementConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditor, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEditRepository,
  cxEditRepositoryItems, Data.DB, Datasnap.DBClient, NClientDataset, cxCheckBox,
  cxDBEdit, cxImageComboBox, cxLabel, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl;

type
  TfrmCOBSettlementConfig = class(TfrmEditor)
    cxDBTextEdit1: TcxDBTextEdit;
    LayoutControlItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    LayoutControlItem4: TdxLayoutItem;
    LayoutControlGroup1: TdxLayoutGroup;
    LayoutControlItem1: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    LayoutControlItem2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    LayoutControlGroup2: TdxLayoutGroup;
    LayoutControlItem5: TdxLayoutItem;
    cxLabel4: TcxLabel;
    LayoutControlItem6: TdxLayoutItem;
    cxLabel2: TcxLabel;
    LayoutControlGroup3: TdxLayoutGroup;
    LayoutControlItem7: TdxLayoutItem;
    cxLabel3: TcxLabel;
    LayoutControlItem8: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    LayoutControlGroup4: TdxLayoutGroup;
    LayoutControlItem9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    LayoutControlItem10: TdxLayoutItem;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    LayoutControlGroup5: TdxLayoutGroup;
    LayoutControlItem11: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    LayoutControlItem12: TdxLayoutItem;
    cxDBLookupComboBox8: TcxDBLookupComboBox;
    LayoutControlItem13: TdxLayoutItem;
    cxDBLookupComboBox10: TcxDBLookupComboBox;
    LayoutControlItem14: TdxLayoutItem;
    cxDBLookupComboBox12: TcxDBLookupComboBox;
    LayoutControlItem15: TdxLayoutItem;
    cxDBLookupComboBox9: TcxDBLookupComboBox;
    LayoutControlGroup6: TdxLayoutGroup;
    LayoutControlItem16: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    LayoutControlItem17: TdxLayoutItem;
    cxDBLookupComboBox11: TcxDBLookupComboBox;
    LayoutControlGroup7: TdxLayoutGroup;
    LayoutControlItem18: TdxLayoutItem;
    cxDBImageComboBox4: TcxDBImageComboBox;
    LayoutControlItem19: TdxLayoutItem;
    cxDBLookupComboBox13: TcxDBLookupComboBox;
    LayoutControlGroup8: TdxLayoutGroup;
    LayoutControlItem20: TdxLayoutItem;
    cxDBImageComboBox6: TcxDBImageComboBox;
    LayoutControlItem21: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    cdsLuCustBank: TNClientDataset;
    cdsLuCustBankACCBANKID: TIntegerField;
    cdsLuCustBankACCID: TIntegerField;
    cdsLuCustBankBNCODE: TStringField;
    cdsLuCustBankBANKACCNO: TStringField;
    cdsLuCustBankBANKACCNAME: TStringField;
    cdsLuCustBankBANKBRANCH: TStringField;
    cdsLuCustCustody: TNClientDataset;
    cdsLuCustCustodyACCCUSTODYID: TIntegerField;
    cdsLuCustCustodyACCID: TIntegerField;
    cdsLuCustCustodyCUSTODYCODE: TStringField;
    cdsLuCustCustodyCUSTODYACCNO: TStringField;
    cdsLuCustCustodyCUSTODYACCNAME: TStringField;
    cdsLuCustCustodyCUSTODYBRANCH: TStringField;
    dsLuCustCustody: TDataSource;
    dsLuCustBank: TDataSource;
    LayoutControlItem22: TdxLayoutItem;
    cxLabel7: TcxLabel;
    LayoutControlItem23: TdxLayoutItem;
    cxLabel1: TcxLabel;
    LayoutControlItem24: TdxLayoutItem;
    cxLabel5: TcxLabel;
    LayoutControlGroup10: TdxLayoutGroup;
    LayoutControlItem25: TdxLayoutItem;
    cxDBLookupComboBox14: TcxDBLookupComboBox;
    LayoutControlItem26: TdxLayoutItem;
    cxDBLookupComboBox15: TcxDBLookupComboBox;
    LayoutControlGroup9: TdxLayoutGroup;
    LayoutControlItem27: TdxLayoutItem;
    cxDBLookupComboBox16: TcxDBLookupComboBox;
    LayoutControlItem28: TdxLayoutItem;
    cxDBLookupComboBox18: TcxDBLookupComboBox;
    LayoutControlItem29: TdxLayoutItem;
    cxDBLookupComboBox20: TcxDBLookupComboBox;
    LayoutControlItem30: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    LayoutControlItem31: TdxLayoutItem;
    cxDBLookupComboBox17: TcxDBLookupComboBox;
    LayoutControlGroup13: TdxLayoutGroup;
    LayoutControlItem32: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    LayoutControlItem33: TdxLayoutItem;
    cxDBLookupComboBox19: TcxDBLookupComboBox;
    LayoutControlGroup14: TdxLayoutGroup;
    LayoutControlItem34: TdxLayoutItem;
    cxDBImageComboBox7: TcxDBImageComboBox;
    LayoutControlItem35: TdxLayoutItem;
    cxDBLookupComboBox21: TcxDBLookupComboBox;
    LayoutControlGroup15: TdxLayoutGroup;
    Repository: TcxEditRepository;
    luCashInstr: TcxEditRepositoryImageComboBoxItem;
    luStockDelInstr: TcxEditRepositoryImageComboBoxItem;
    luStockRecInstr: TcxEditRepositoryImageComboBoxItem;
    luCustBank: TcxEditRepositoryLookupComboBoxItem;
    luCustCustody: TcxEditRepositoryLookupComboBoxItem;
    LayoutControlItem36: TdxLayoutItem;
    cxDBImageComboBox8: TcxDBImageComboBox;
    LayoutControlGroup11: TdxLayoutGroup;
    dsBank: TDataSource;
    dsCustody: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PrepareLookupData;
    procedure PrepareLookupBank;
    procedure PrepareLookupCustody;
  end;

var
  frmCOBSettlementConfig: TfrmCOBSettlementConfig;

implementation

{$R *.dfm}

uses FormCOBList, DataGlobal;

{ TfrmCOBSettlementConfig }

procedure TfrmCOBSettlementConfig.FormCreate(Sender: TObject);
begin
  inherited;
  PrepareLookupData;
end;

procedure TfrmCOBSettlementConfig.PrepareLookupBank;
var
  BrokerAccID: Integer;
begin
  cdsLuCustBank.Close;
  cdsLuCustBank.CreateDataSet;

  with dsBank.DataSet do
  begin
    First;
    while not Eof do
    begin
      cdsLuCustBank.Append;
      cdsLuCustBankACCBANKID.AsInteger := FieldByName('ACCBANKID').AsInteger;
      cdsLuCustBankACCID.AsInteger := FieldByName('ACCID').AsInteger;
      cdsLuCustBankBNCODE.AsString := FieldByName('BNCODE').AsString;
      cdsLuCustBankBANKACCNO.AsString := FieldByName('BANKACCNO').AsString;
      cdsLuCustBankBANKACCNAME.AsString := FieldByName('BANKACCNAME').AsString;
      cdsLuCustBankBANKBRANCH.AsString := FieldByName('BANKBRANCH').AsString;
      cdsLuCustBank.Post;

      Next;
    end;
  end;

  with dmGlobal.IntDataLookup.cdsLuBankAccount do
  begin
    BrokerAccID := dmGlobal.RemoteServer.GetBrokerAccount;

    Close;
    Params[0].AsInteger := BrokerAccID;
    Open;

    First;
    while not Eof do
    begin
      cdsLuCustBank.Append;
      cdsLuCustBankACCBANKID.AsInteger := FieldByName('ACCBANKID').AsInteger;
      cdsLuCustBankACCID.AsInteger := BrokerAccID;
      cdsLuCustBankBNCODE.AsString := FieldByName('BNCODE').AsString;
      cdsLuCustBankBANKACCNO.AsString := FieldByName('BANKACCNO').AsString;
      cdsLuCustBankBANKACCNAME.AsString := FieldByName('BANKACCNAME').AsString;
      cdsLuCustBankBANKBRANCH.AsString := FieldByName('BANKBRANCH').AsString;
      cdsLuCustBank.Post;

      Next;
    end;
  end;

end;

procedure TfrmCOBSettlementConfig.PrepareLookupCustody;
var
  BrokerAccID: Integer;
begin
  cdsLuCustCustody.Close;
  cdsLuCustCustody.CreateDataSet;

  with dsCustody.DataSet do
  begin
    First;
    while not Eof do
    begin
      cdsLuCustCustody.Append;
      cdsLuCustCustodyACCCUSTODYID.AsInteger := FieldByName('ACCCUSTODYID').AsInteger;
      cdsLuCustCustodyACCID.AsInteger := FieldByName('ACCID').AsInteger;
      cdsLuCustCustodyCUSTODYCODE.AsString := FieldByName('CUSTODYCODE').AsString;
      cdsLuCustCustodyCUSTODYACCNO.AsString := FieldByName('CUSTODYACCNO').AsString;
      cdsLuCustCustodyCUSTODYACCNAME.AsString := FieldByName('CUSTODYACCNAME').AsString;
      cdsLuCustCustodyCUSTODYBRANCH.AsString := FieldByName('CUSTODYBRANCH').AsString;
      cdsLuCustCustody.Post;

      Next;
    end;
  end;

  with dmGlobal.IntDataLookup.cdsLuCustodyAccount do
  begin
    BrokerAccID := dmGlobal.RemoteServer.GetBrokerAccount;

    Close;
    Params[0].AsInteger := BrokerAccID;
    Open;

    First;
    while not Eof do
    begin
      cdsLuCustCustody.Append;
      cdsLuCustCustodyACCCUSTODYID.AsInteger := FieldByName('ACCCUSTODYID').AsInteger;
      cdsLuCustCustodyACCID.AsInteger := FieldByName('ACCID').AsInteger;
      cdsLuCustCustodyCUSTODYCODE.AsString := FieldByName('CUSTODYCODE').AsString;
      cdsLuCustCustodyCUSTODYACCNO.AsString := FieldByName('CUSTODYACCNO').AsString;
      cdsLuCustCustodyCUSTODYACCNAME.AsString := FieldByName('CUSTODYACCNAME').AsString;
      cdsLuCustCustodyCUSTODYBRANCH.AsString := FieldByName('CUSTODYBRANCH').AsString;
      cdsLuCustCustody.Post;

      Next;
    end;
  end;
end;

procedure TfrmCOBSettlementConfig.PrepareLookupData;
begin
  PrepareLookupBank;
  PrepareLookupCustody;
end;

end.
