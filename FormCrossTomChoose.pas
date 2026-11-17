unit FormCrossTomChoose;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxDBLookupComboBox, dxStatusBar,
  Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxMaskEdit,
  cxTextEdit, cxCurrencyEdit, dxLayoutControl, Data.DB, cxGroupBox,
  cxRadioGroup, cxButtonEdit;

type
  TfrmCrossTomChoose = class(TForm)
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    edCrossPrice: TcxCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    edDealQty: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    cbCrossAccount: TcxLookupComboBox;
    lcCurrentAccount: TdxLayoutItem;
    dsCrossTomChooseList: TDataSource;
    edCrossAccount: TcxButtonEdit;
    lcNewAccount: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    rgBased: TcxRadioGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    edAccountName: TcxTextEdit;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item1: TdxLayoutItem;
    edCrossQty: TcxCurrencyEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgBasedClick(Sender: TObject);
    procedure cbCrossAccountPropertiesEditValueChanged(Sender: TObject);
    procedure edCrossAccountPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    AccID: Integer;
    AccIDCurrent: Integer;
    AccNo: String;
    UseCPAcc: Boolean;
  end;

var
  frmCrossTomChoose: TfrmCrossTomChoose;

implementation

{$R *.dfm}

uses FormDealTickets, DataGlobal, FormLuAccount;

procedure TfrmCrossTomChoose.btnOKClick(Sender: TObject);
begin
  if (StrToIntDef(edCrossQty.EditValue, 0) <= 0) then
  begin
    MessageDlg('Crossing Tomorrow Trade Quantity Must More Than 0!', mtError, [mbOK], 0);
    Abort;
  end;

  if (StrToFloatDef(edCrossPrice.EditValue, 0) <= 0) then
  begin
    MessageDlg('Crossing Tomorrow Trade Price Must More Than 0!', mtError, [mbOK], 0);
    Abort;
  end;

  if rgBased.EditValue = 'C' then
  begin
    if (StrToIntDef(cbCrossAccount.EditValue, 0) <= 0) then
    begin
      MessageDlg('Please choose one of Crossing Tomorrow Trade Account!', mtError, [mbOK], 0);
      Abort;
    end;
  end
  else if rgBased.EditValue = 'N' then
  begin
    if (AccID <= 0) then
    begin
      MessageDlg('Please choose one of Crossing Tomorrow Trade Account!', mtError, [mbOK], 0);
      Abort;
    end;
  end;

  with dmGlobal.IntDataLookup do
  begin
    if not UseCPAcc then
    begin
      cdsLuAccountBySubType.Close;
      if rgBased.EditValue = 'C' then
        cdsLuAccountBySubType.Params[0].AsInteger := AccIDCurrent
      else
        cdsLuAccountBySubType.Params[0].AsInteger := AccID;
      cdsLuAccountBySubType.Params[1].AsString := 'X';
      cdsLuAccountBySubType.Open;

      if cdsLuAccountBySubType.IsEmpty then
      begin
        MessageDlg('This Account don''t have Crossing Tomorrow Account.' + #13 +
          'Please create Crossing Tomorrow Account for this related Account first!', mtWarning, [mbOK], 0);
        Abort;
      end;
    end;
  end;

  ModalResult := mrOK;
end;

procedure TfrmCrossTomChoose.cbCrossAccountPropertiesEditValueChanged(
  Sender: TObject);
begin
  if dsCrossTomChooseList.DataSet.Locate('DEALTICKETID', cbCrossAccount.EditValue, []) then
  begin;
    AccIDCurrent := dsCrossTomChooseList.DataSet.FieldByName('ACCID').AsInteger;
    edAccountName.Text := dsCrossTomChooseList.DataSet.FieldByName('ACCNAME').AsString;
  end;
end;

procedure TfrmCrossTomChoose.edCrossAccountPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(AccID) = mrOK then
    begin
      AccID := cdsLuAccountMultiFilterACCID.AsInteger;
      AccNo := cdsLuAccountMultiFilterACCCODE.AsString;
      edCrossAccount.EditValue := AccID;
      edCrossAccount.Text := AccNo;
      edAccountName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmCrossTomChoose.FormCreate(Sender: TObject);
begin
  rgBased.EditValue := 'C';
  lcNewAccount.Visible := False;
  lcCurrentAccount.Visible := True;
  edAccountName.Width := 250;
  edCrossAccount.EditValue := -1;
  cbCrossAccount.EditValue := -1;
  AccID := -1;
  AccIDCurrent := -1;
end;

procedure TfrmCrossTomChoose.rgBasedClick(Sender: TObject);
begin
  lcCurrentAccount.Visible := rgBased.EditValue = 'C';
  lcNewAccount.Visible := rgBased.EditValue = 'N';
end;

end.
