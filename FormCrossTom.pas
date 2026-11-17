unit FormCrossTom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutContainer, cxButtonEdit, cxDBEdit, cxCheckBox, cxImageComboBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxTextEdit, dxLayoutControl, Data.DB, DBClient,
  cxCurrencyEdit, cxClasses, NClientDataset;

type
  TfrmCrossTom = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    edDealQty: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cdsAccountCommission: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cdsAccountCommissionACCID: TIntegerField;
    cdsAccountCommissionCOMM_ID: TLargeintField;
    cdsAccountCommissionCOMM_CODE: TStringField;
    cdsAccountCommissionCOMM_DESC: TStringField;
    cdsAccountCommissionCOMM_RATE: TFloatField;
    cdsAccountCommissionCALC_METHOD: TStringField;
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure GetAccountCommission(AAccountID: Integer);
  public
    { Public declarations }
  end;

var
  frmCrossTom: TfrmCrossTom;

implementation

{$R *.dfm}

uses DataGlobal, FormDealTickets, FormLuAccount;

procedure TfrmCrossTom.btnOKClick(Sender: TObject);
var
  i : Integer;
begin

  if dsSubject.DataSet <> nil then
  begin
    for i := 0 to dsSubject.DataSet.FieldCount -1 do
    begin
      if (dsSubject.DataSet.Fields[i].Required) and
        (not dsSubject.DataSet.Fields[i].ReadOnly) then
      begin
        case dsSubject.DataSet.Fields[i].DataType of
          ftString, ftWideString, //karakter
          ftMemo                  : begin
                                      if (dsSubject.DataSet.Fields[i].AsString = '') or
                                        (dsSubject.DataSet.Fields[i].IsNull)
                                      then
                                      begin
                                        dmGlobal.ErrorMessage(dsSubject.DataSet.Fields[i].DisplayName +' must have value ');
                                        Abort;
                                      end;
                                    end;
          ftInteger,ftFloat, ftBCD,ftLargeint,
          ftDate, ftTime, ftDateTime,
          ftWord,ftSmallint,
          ftCurrency
                                  : begin
                                      if //(dsSubject.DataSet.Fields[i].Value = 0) or
                                        (dsSubject.DataSet.Fields[i].IsNull)
                                      then
                                      begin
                                        dmGlobal.ErrorMessage(dsSubject.DataSet.Fields[i].DisplayName +' must have value ');
                                        Abort;
                                      end;
                                    end;

        end;
      end;
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfrmCrossTom.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  iAccountID: Integer;
begin
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('BUYACCID').AsInteger, True) = mrOK then
      begin
        iAccountID := cdsLuAccountMultiFilterACCID.AsInteger;
        GetAccountCommission(iAccountID);

        dsSubject.DataSet.FieldByName('BUYACCID').AsInteger      := iAccountID;
        dsSubject.DataSet.FieldByName('BUYACCNO').AsString       := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('BUYACCNAME').AsString     := cdsLuAccountMultiFilterACCNAME.AsString;
        dsSubject.DataSet.FieldByName('BUYCOMMID').AsInteger     := cdsAccountCommissionCOMM_ID.AsInteger;
        dsSubject.DataSet.FieldByName('BUYCOMMDESC').AsString    := cdsAccountCommissionCOMM_DESC.asstring;
        dsSubject.DataSet.FieldByName('BUYCOMM_RATE').AsFloat    := cdsAccountCommissionCOMM_RATE.AsFloat;
        dsSubject.DataSet.FieldByName('BUYCALC_METHOD').AsString := cdsAccountCommissionCALC_METHOD.AsString;
      end;
    end;
  end;
end;

procedure TfrmCrossTom.cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  iAccountID: Integer;
begin
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('SELLACCID').AsInteger, True) = mrOK then
      begin
        iAccountID := cdsLuAccountMultiFilterACCID.AsInteger;
        GetAccountCommission(iAccountID);

        dsSubject.DataSet.FieldByName('SELLACCID').AsInteger      := iAccountID;
        dsSubject.DataSet.FieldByName('SELLACCNO').AsString       := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('SELLACCNAME').AsString     := cdsLuAccountMultiFilterACCNAME.AsString;
        dsSubject.DataSet.FieldByName('SELLCOMMID').AsInteger     := cdsAccountCommissionCOMM_ID.AsInteger;
        dsSubject.DataSet.FieldByName('SELLCOMMDESC').AsString    := cdsAccountCommissionCOMM_DESC.asstring;
        dsSubject.DataSet.FieldByName('SELLCOMM_RATE').AsFloat    := cdsAccountCommissionCOMM_RATE.AsFloat;
        dsSubject.DataSet.FieldByName('SELLCALC_METHOD').AsString := cdsAccountCommissionCALC_METHOD.AsString;
      end;
    end;
  end;
end;

procedure TfrmCrossTom.FormShow(Sender: TObject);
begin
  if not dmGlobal.IntDataLookup.cdsLuCommission.Active then
    dmGlobal.IntDataLookup.cdsLuCommission.Open;
end;

procedure TfrmCrossTom.GetAccountCommission(AAccountID: Integer);
begin
  cdsAccountCommission.close;
  cdsAccountCommission.params[0].AsInteger := AAccountID;
  cdsAccountCommission.Open;
end;

end.
