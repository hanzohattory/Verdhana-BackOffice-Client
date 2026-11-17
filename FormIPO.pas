unit FormIPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxMemo, cxTextEdit, Data.DB,
  Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.ExtCtrls, Vcl.DBCtrls, cxGroupBox, cxRadioGroup,
  cxCheckBox, Datasnap.DBClient, NClientDataset, cxButtonEdit, cxDateUtils,
  Vcl.ComCtrls, dxLayoutLookAndFeels, cxCurrencyEdit, cxClasses;

type
  TfrmIPO = class(TfrmEditorData)
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    lcFixedPrice: TdxLayoutItem;
    Comission: TdxLayoutGroup;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutControl1Item15: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBDateEdit5: TcxDBDateEdit;
    dxLayoutControl1Item18: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    txtAbsorbAmount: TcxDBTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    txtBAE: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBDateEdit7: TcxDBDateEdit;
    dxLayoutControl1Item25: TdxLayoutItem;
    cxDBDateEdit8: TcxDBDateEdit;
    dxLayoutControl1Item26: TdxLayoutItem;
    cxDBDateEdit9: TcxDBDateEdit;
    dxLayoutControl1Item27: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    lcISINCode: TdxLayoutItem;
    cxDBDateEdit10: TcxDBDateEdit;
    lcISINDate: TdxLayoutItem;
    lgStockReg: TdxLayoutGroup;
    chkIsCurrentStock: TcxDBCheckBox;
    lcIsCurrentStock: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    lcStockCode: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    lcStock: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item28: TdxLayoutItem;
    cxDBTextEdit17: TcxDBTextEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    Coupon: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxDBDateEdit6: TcxDBDateEdit;
    dxLayoutControl1Item29: TdxLayoutItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Group16: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item30: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item32: TdxLayoutItem;
    cxDBTextEdit18: TcxDBTextEdit;
    dxLayoutControl1Item33: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    dxLayoutControl1Item35: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    dxLayoutControl1Item17: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item31: TdxLayoutItem;
    dxLayoutControl1Group14: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item23: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item34: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkIsCurrentStockClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBDateEdit3PropertiesGetDayOfWeekState(Sender: TObject;
      ADayOfWeek: TDay; AState: TCustomDrawState; AFont: TFont;
      var ABackgroundColor: TColor);
    procedure cxDBLookupComboBox5Exit(Sender: TObject);
  private
    { Private declarations }
    FFlowAct: String;
  public
    { Public declarations }
    property FlowAct: String read FFlowAct write FFlowAct;
  end;

var
  frmIPO: TfrmIPO;

implementation

{$R *.dfm}

uses DataGlobal, FormIPOList, FormLuAccount, FormLuAccountUnderwriter,
  DataLookup;

procedure TfrmIPO.chkIsCurrentStockClick(Sender: TObject);
begin
  inherited;
  lcStockCode.Visible := chkIsCurrentStock.Checked;
  lcStock.Visible := not lcStockCode.Visible;
end;

procedure TfrmIPO.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  oDataSet: TClientDataSet;
begin
  inherited;
  oDataSet := TClientDataSet(dsSubject.DataSet);
  if (oDataSet.ReadOnly) then
    Exit;

  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccountUnderwriter.Run = mrOK then
    begin
      if not (oDataSet.State in dsEditModes) then
        oDataSet.Edit;

      oDataSet.FieldByName('ACCID').AsInteger    := cdsLuAccountUnderWriterACCID.AsInteger;
      oDataSet.FieldByName('SCRIPNAME').AsString := cdsLuAccountUnderWriterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmIPO.cxDBDateEdit3PropertiesGetDayOfWeekState(Sender: TObject;
  ADayOfWeek: TDay; AState: TCustomDrawState; AFont: TFont;
  var ABackgroundColor: TColor);
begin
  inherited;
//  if ADayOfWeek in [dSaturday, dSunday] then
//    ABackgroundColor := clRed;
end;

procedure TfrmIPO.cxDBLookupComboBox5Exit(Sender: TObject);
begin
  inherited;
  if dsSubject.DataSet.FieldByName('IPO_TYPE').AsString = 'B' then
  begin
    txtAbsorbAmount.Properties.AssignedValues.ReadOnly := False;
    txtAbsorbAmount.ParentColor := False;

    txtBAE.Enabled    := False;
    Coupon.Enabled    := True;
    Comission.Enabled := False;
  end
  else
  begin
    txtAbsorbAmount.Properties.AssignedValues.ReadOnly := True;
    txtAbsorbAmount.ParentColor := True;

    txtBAE.Enabled    := True;
    Coupon.Enabled    := False;
    Comission.Enabled := True;
  end;
end;

procedure TfrmIPO.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankByAccount.Close;
    cdsLuBankByAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankByAccount.Open;

    cdsLuIPOInstrumentType.Close;
    cdsLuIPOInstrumentType.Open;
  end;
end;

procedure TfrmIPO.FormShow(Sender: TObject);
//var
//  i: Integer;
//  oItem: TdxLayoutItem;
begin
  inherited;

  if dsSubject.DataSet.FieldByName('IPO_TYPE').AsString = 'B' then
  begin
    txtAbsorbAmount.Properties.AssignedValues.ReadOnly := False;
    txtAbsorbAmount.ParentColor := False;
  end
  else
  begin
    txtAbsorbAmount.Properties.AssignedValues.ReadOnly := True;
    txtAbsorbAmount.ParentColor := True;
  end;


//  lcStockCode.Visible := chkIsCurrentStock.Checked;
//  lcStock.Visible := not lcStockCode.Visible;
//
//  for i := 0 to dxLayoutControl1.ControlCount - 1 do
//  begin
//    oItem := dxLayoutControl1.FindItem(dxLayoutControl1.Controls[i]);
//
//    if (oItem <> nil) then
//    begin
//      if FlowAct = 'RG' then
//      begin
//        if //(oItem.Name = 'lcFixedPrice') or
//          (oItem.Name = 'lgStockReg') or
//          (oItem.Name = 'lcISINCode') or
//          (oItem.Name = 'lcISINDate') or
//          (oItem.Name = 'lcIsCurrentStock') or
//          (oItem.Name = 'lcStockCode') or
//          (oItem.Name = 'lcStock') then
//        begin
//          oItem.Enabled := False;
//        end;
//      end
//      else if FlowAct = 'FP' then
//      begin
//        oItem.Enabled := oItem.Name = 'lcFixedPrice';
//      end
//      else if FlowAct = 'SR' then
//      begin
//        oItem.Enabled := (oItem.Name = 'lcISINCode')
//                 or (oItem.Name = 'lcISINDate')
//                 or (oItem.Name = 'lcIsCurrentStock')
//                 or (oItem.Name = 'lcStockCode')
//                 or (oItem.Name = 'lcStock');
//      end;
//    end;
//  end;
end;


Initialization
  RegisterClass(TfrmIPO);

end.
