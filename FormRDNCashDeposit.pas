unit FormRDNCashDeposit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  Data.DB, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, cxCurrencyEdit, dxLayoutLookAndFeels, cxClasses, cxCheckBox,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxStatusBarPainter;

type
  TfrmRDNCashDeposit = class(TfrmEditorData)
    cdsRDNCashDeposit: TNClientDataset;
    cdsRDNCashDepositCMID: TLargeintField;
    cdsRDNCashDepositCMCODE: TStringField;
    cdsRDNCashDepositCMDATE: TDateField;
    cdsRDNCashDepositCMTYPE: TStringField;
    cdsRDNCashDepositCMDESC: TStringField;
    cdsRDNCashDepositACCID: TIntegerField;
    cdsRDNCashDepositACCNO: TStringField;
    cdsRDNCashDepositACCBANKID: TIntegerField;
    cdsRDNCashDepositDC: TStringField;
    cdsRDNCashDepositCCY: TStringField;
    cdsRDNCashDepositCMAMT: TFloatField;
    cdsRDNCashDepositPOSTED: TStringField;
    cdsRDNCashDepositMODDA: TDateTimeField;
    cdsRDNCashDepositMODUI: TStringField;
    cdsRDNCashDepositAPPDA: TDateTimeField;
    cdsRDNCashDepositAPPUI: TStringField;
    cdsRDNCashDepositUNDER4Y: TIntegerField;
    cdsRDNCashDepositUNDER4YDA: TDateTimeField;
    cdsRDNCashDepositNOTES4Y: TStringField;
    cdsRDNCashDepositISDEL: TIntegerField;
    cdsRDNCashDepositID: TLargeintField;
    cdsRDNCashDepositPOSTED_DATE: TDateField;
    cdsRDNCashDepositPOSTED_UI: TStringField;
    cdsRDNCashDepositCANCEL: TStringField;
    cdsRDNCashDepositCANCEL_DATE: TDateField;
    cdsRDNCashDepositCANCEL_UI: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsRDNCashDepositBNCODE: TStringField;
    cdsRDNCashDepositBNACCNO: TStringField;
    cdsRDNCashDepositBNACCNAME: TStringField;
    cdsRDNCashDepositBNBRANCH: TStringField;
    cmbBankCode: TcxDBLookupComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cdsRDNCashDepositBANK_CCYCODE: TStringField;
    cdsRDNCashDepositCASHCBEST: TStringField;
    chkCBEST: TcxDBCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsRDNCashDepositACCNAME: TStringField;
    procedure cdsRDNCashDepositNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsRDNCashDepositACCIDChange(Sender: TField);
    procedure btnOKClick(Sender: TObject);
    procedure cdsRDNCashDepositACCBANKIDChange(Sender: TField);
    procedure cdsRDNCashDepositAfterPost(DataSet: TDataSet);
    procedure chkCBESTClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsRDNCashDepositBeforePost(DataSet: TDataSet);
  private
    FCon: Boolean;

    procedure GetBankID;
  public
    { Public declarations }
  end;

var
  frmRDNCashDeposit: TfrmRDNCashDeposit;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount;

procedure TfrmRDNCashDeposit.btnOKClick(Sender: TObject);
begin
  if FCon then
    inherited
  else
    MessageDlg('Deposit Customer to bank RDN only', mtError,[mbOk], 0);
end;

procedure TfrmRDNCashDeposit.cdsRDNCashDepositACCBANKIDChange(Sender: TField);
begin
  inherited;
  cdsRDNCashDepositCCY.AsString := cdsRDNCashDepositBANK_CCYCODE.AsString;
end;

procedure TfrmRDNCashDeposit.cdsRDNCashDepositACCIDChange(Sender: TField);
begin
//  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', cdsRDNCashDepositACCID.Value, []) then
    begin
      cdsRDNCashDepositACCNO.AsString   := cdsLuAccountACCCODE.AsString;
      cdsRDNCashDepositACCNAME.AsString := cdsLuAccountACCNAME.AsString;
    end;
  end;

  GetBankID;

  if chkCBEST.Checked then
    cmbBankCode.RepositoryItem := dmGlobal.luBankAccountMutation
  else
    cmbBankCode.RepositoryItem := dmGlobal.luBankRDNByAccount
end;

procedure TfrmRDNCashDeposit.cdsRDNCashDepositAfterPost(DataSet: TDataSet);
begin
//  inherited;
  dmGlobal.CashDepRDNID     := cdsRDNCashDepositCMID.AsInteger;
  dmGlobal.DefaultAccountID := -1;
end;

procedure TfrmRDNCashDeposit.cdsRDNCashDepositBeforePost(DataSet: TDataSet);
begin
//  inherited;
  if cdsRDNCashDepositCMID.AsInteger = -1 then
  begin
    cdsRDNCashDepositCMID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_CASH_MUTATION');
    cdsRDNCashDepositCMCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsRDNCashDepositCMDATE.AsDateTime, 'CM', 'TBL_B_CASH_MUTATION');
  end;
end;

procedure TfrmRDNCashDeposit.cdsRDNCashDepositNewRecord(DataSet: TDataSet);
begin
//  inherited;
  cdsRDNCashDepositCMID.AsInteger    := -1;
  cdsRDNCashDepositCMCODE.AsString   := '<AUTO>';
  cdsRDNCashDepositCMDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsRDNCashDepositDC.AsString       := 'D';

  if dmGlobal.DefaultAccountID <> -1 then
  begin
    cdsRDNCashDepositACCID.AsInteger := dmGlobal.DefaultAccountID;
    cdsRDNCashDepositCCY.AsString    := dmGlobal.DefaultCurrency;
    cdsRDNCashDepositCMAMT.AsFloat   := dmGlobal.DefaultAmount;
  end;
end;

procedure TfrmRDNCashDeposit.cxDBButtonEdit1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('ACCNO').AsString   := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
        dsSubject.DataSet.FieldByName('CCY').AsString     := dmGlobal.RemoteServer.GetLocalCCY;
      end;
    end;
  end;
end;

procedure TfrmRDNCashDeposit.chkCBESTClick(Sender: TObject);
begin
  inherited;
  GetBankID;

  if chkCBEST.Checked then
    cmbBankCode.RepositoryItem := dmGlobal.luBankAccountMutation
  else
    cmbBankCode.RepositoryItem := dmGlobal.luBankRDNByAccount
end;

procedure TfrmRDNCashDeposit.FormShow(Sender: TObject);
begin
//  inherited;
//  if not (cdsRDNCashDeposit.State in dsEditModes) then
//  begin
//    with dmGlobal.IntDataLookup do
//    begin
//      if chkCBEST.Checked then
//      begin
//        cmbBankCode.RepositoryItem := dmGlobal.luBankAccountMutation;
//
//        cdsLuBankAccountMutation.Close;
//        cdsLuBankAccountMutation.Params[0].AsString  := '1';
//        cdsLuBankAccountMutation.Params[1].AsInteger := cdsRDNCashDepositACCID.AsInteger;
//        cdsLuBankAccountMutation.Open;
//      end
//      else
//      begin
//        cmbBankCode.RepositoryItem := dmGlobal.luBankRDNByAccount;
//
//        cdsLuBankRDNByAccount.Close;
//        cdsLuBankRDNByAccount.Params[0].AsInteger := cdsRDNCashDepositACCID.AsInteger;
//        cdsLuBankRDNByAccount.Params[1].AsInteger := cdsRDNCashDepositACCID.AsInteger;
//        cdsLuBankRDNByAccount.Open;
//      end;
//    end;
//  end;
end;

procedure TfrmRDNCashDeposit.GetBankID;
begin
  if (not VarIsEmpty(cdsRDNCashDepositACCID.AsInteger)) and (cdsRDNCashDepositACCID.AsInteger <> 0) then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if chkCBEST.Checked then
      begin
        cdsLuBankAccountMutation.Close;
        cdsLuBankAccountMutation.Params[0].AsString  := '1';
        cdsLuBankAccountMutation.Params[1].AsInteger := cdsRDNCashDepositACCID.AsInteger;
        cdsLuBankAccountMutation.Open;

        if not cdsLuBankAccountMutation.IsEmpty then
        begin
          cdsRDNCashDepositACCBANKID.AsInteger := cdsLuBankAccountMutationACCBANKID.AsInteger;
          FCon := True;
        end
        else
        begin
          MessageDlg('There is no bank CBEST in this account', mtError, [mbOk], 0);
          FCon := False;
        end;
      end
      else
      begin
        cdsLuBankRDNByAccount.Close;
        cdsLuBankRDNByAccount.Params[0].AsInteger := cdsRDNCashDepositACCID.AsInteger;
        cdsLuBankRDNByAccount.Params[1].AsInteger := cdsRDNCashDepositACCID.AsInteger;
        cdsLuBankRDNByAccount.Open;

        if cdsLuBankRDNByAccount.Locate('ISRDN', '1', []) then
        begin
          cdsRDNCashDepositACCBANKID.AsInteger := cdsLuBankRDNByAccountACCBANKID.AsInteger;
          FCon := True;
        end
        else
        begin
          MessageDlg('There is no RDN bank in this account', mtError, [mbOk], 0);
          FCon := False;
        end;
      end;
    end;
  end;
end;

end.
