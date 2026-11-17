unit FormAccountBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, cxTextEdit, Data.DB, Datasnap.DBClient,
  NClientDataset, Vcl.Tabs, dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ActnList, NDatasetAction,
  dxLayoutLookAndFeels, dxDateRanges, System.Actions, dxScrollbarAnnotations;

type
  TfrmAccountBank = class(TfrmEditorData)
    cdsAccForBank: TNClientDataset;
    dsAccInfo: TDataSource;
    cdsAccInfo: TNClientDataset;
    cdsAccInfoACCID: TIntegerField;
    cdsAccInfoACCCODE: TStringField;
    cdsAccInfoACCNAME: TStringField;
    cdsAccInfoACCINIT: TStringField;
    cdsAccInfoACC_STS: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsAccForBankACCID: TIntegerField;
    cdsAccForBankqryAccBank: TDataSetField;
    cdsAccForBankqryAccDefaultBank: TDataSetField;
    cdsAccForBankqryAccBankOwner: TDataSetField;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwBank: TcxGridDBTableView;
    gvwBankBNCODE: TcxGridDBColumn;
    gvwBankBANKACCNO: TcxGridDBColumn;
    gvwBankBANKACCNAME: TcxGridDBColumn;
    gvwBankBANKBRANCH: TcxGridDBColumn;
    gvwBankCCYCODE: TcxGridDBColumn;
    gvwBankISRDN: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cdsAccBankOwner: TNClientDataset;
    cdsAccDefaultBank: TNClientDataset;
    cdsAccBank: TNClientDataset;
    cdsAccBankOwnerACCID_OWNER: TIntegerField;
    cdsAccBankOwnerACCBANKID: TIntegerField;
    cdsAccBankOwnerMODDA: TDateTimeField;
    cdsAccBankOwnerMODUI: TStringField;
    cdsAccBankOwnerAPPDA: TDateTimeField;
    cdsAccBankOwnerAPPUI: TStringField;
    cdsAccBankOwnerUNDER4Y: TIntegerField;
    cdsAccBankOwnerUNDER4YDA: TDateTimeField;
    cdsAccBankOwnerNOTES4Y: TStringField;
    cdsAccBankOwnerISDEL: TIntegerField;
    cdsAccBankOwnerID: TLargeintField;
    cdsAccDefaultBankACCID: TIntegerField;
    cdsAccDefaultBankCCYCODE: TStringField;
    cdsAccDefaultBankPRIVATEBANK_DEFAULT: TIntegerField;
    cdsAccDefaultBankRDNBANK_DEFAULT: TIntegerField;
    cdsAccDefaultBankMODDA: TDateTimeField;
    cdsAccDefaultBankMODUI: TStringField;
    cdsAccDefaultBankAPPDA: TDateTimeField;
    cdsAccDefaultBankAPPUI: TStringField;
    cdsAccDefaultBankUNDER4Y: TIntegerField;
    cdsAccDefaultBankUNDER4YDA: TDateTimeField;
    cdsAccDefaultBankNOTES4Y: TStringField;
    cdsAccDefaultBankISDEL: TIntegerField;
    cdsAccDefaultBankID: TLargeintField;
    cdsAccBankACCBANKID: TIntegerField;
    cdsAccBankACCBANKCODE: TStringField;
    cdsAccBankCCYCODE: TStringField;
    cdsAccBankACCID: TIntegerField;
    cdsAccBankBNCODE: TStringField;
    cdsAccBankBANKACCNO: TStringField;
    cdsAccBankBANKACCNAME: TStringField;
    cdsAccBankBANKBRANCH: TStringField;
    cdsAccBankISRDN: TStringField;
    cdsAccBankBANKTYPE: TStringField;
    cdsAccBankBNCHGSTYPE: TStringField;
    cdsAccBankACTLED_SEQID: TIntegerField;
    cdsAccBankCBEST_CODE: TStringField;
    cdsAccBankBANK_DEFAULT: TStringField;
    cdsAccBankSTAT: TStringField;
    cdsAccBankMODDA: TDateTimeField;
    cdsAccBankMODUI: TStringField;
    cdsAccBankAPPDA: TDateTimeField;
    cdsAccBankAPPUI: TStringField;
    cdsAccBankUNDER4Y: TIntegerField;
    cdsAccBankUNDER4YDA: TDateTimeField;
    cdsAccBankNOTES4Y: TStringField;
    cdsAccBankISDEL: TIntegerField;
    cdsAccBankID: TLargeintField;
    cdsAccBankOwnerCCYCODE: TStringField;
    cdsAccBankOwnerBNCODE: TStringField;
    cdsAccBankOwnerBANKACCNO: TStringField;
    cdsAccBankOwnerBANKACCNAME: TStringField;
    cdsAccBankOwnerBANKBRANCH: TStringField;
    cdsAccBankOwnerISRDN: TStringField;
    dsBank: TDataSource;
    cdsAccBankOwnerDEFAULT_BANK: TBooleanField;
    gvwBankDEFAULT_BANK: TcxGridDBColumn;
    cdsAccBankOwnerPRIVATEBANK_DEFAULT: TIntegerField;
    cdsAccBankOwnerRDNBANK_DEFAULT: TIntegerField;
    gvwBankACCBANKID: TcxGridDBColumn;
    gvwBankPRIVATEBANK_DEFAULT: TcxGridDBColumn;
    gvwBankRDNBANK_DEFAULT: TcxGridDBColumn;
    aclBank: TActionList;
    popBank: TPopupMenu;
    actSetDefaultBank: TNAction;
    SetAsDefaultBank1: TMenuItem;
    actAddNewBank: TNAction;
    actAddFromCurrentBank: TNAction;
    actEditBank: TNAction;
    EditBank1: TMenuItem;
    AddBank1: TMenuItem;
    New1: TMenuItem;
    actAddFromCurrentBank1: TMenuItem;
    cdsAccBankOwnerDEFAULT_BANK_ACCOUNT: TBooleanField;
    cdsAccBankOwnerACCID: TIntegerField;
    gvwBankDEFAULT_BANK_ACCOUNT: TcxGridDBColumn;
    NClientDataset1: TNClientDataset;
    cdsAccBankOwnerCCYCODE_1: TStringField;
    cdsAccBankOwnerBNCODE_1: TStringField;
    cdsAccBankOwnerBANKACCNO_1: TStringField;
    cdsAccBankOwnerBANKACCNAME_1: TStringField;
    cdsAccBankOwnerBANKBRANCH_1: TStringField;
    cdsAccBankOwnerISRDN_1: TStringField;
    cdsAccBankOwnerACCID_1: TIntegerField;
    cdsAccBankOwnerCCYCODE_2: TStringField;
    cdsAccBankOwnerBNCODE_2: TStringField;
    cdsAccBankOwnerBANKACCNO_2: TStringField;
    cdsAccBankOwnerBANKACCNAME_2: TStringField;
    cdsAccBankOwnerBANKBRANCH_2: TStringField;
    cdsAccBankOwnerISRDN_2: TStringField;
    cdsAccBankOwnerACCID_2: TIntegerField;
    cdsAccBankOwnerRDNBANK_DEFAULT_1: TIntegerField;
    cdsAccBankOwnerPRIVATEBANK_DEFAULT_1: TIntegerField;
    NClientDataset1RDNBANK_DEFAULT: TIntegerField;
    NClientDataset1PRIVATEBANK_DEFAULT: TIntegerField;
    cdsAccBankOwnerRDNBANK_DEFAULT_2: TIntegerField;
    cdsAccBankOwnerPRIVATEBANK_DEFAULT_2: TIntegerField;
    cdsAccBankOther: TNClientDataset;
    cdsAccBankOtherACCBANKID: TIntegerField;
    cdsAccBankOtherACCBANKCODE: TStringField;
    cdsAccBankOtherCCYCODE: TStringField;
    cdsAccBankOtherACCID: TIntegerField;
    cdsAccBankOtherBNCODE: TStringField;
    cdsAccBankOtherBANKACCNO: TStringField;
    cdsAccBankOtherBANKACCNAME: TStringField;
    cdsAccBankOtherBANKBRANCH: TStringField;
    cdsAccBankOtherISRDN: TStringField;
    cdsAccBankOtherBANKTYPE: TStringField;
    cdsAccBankOtherBNCHGSTYPE: TStringField;
    cdsAccBankOtherACTLED_SEQID: TIntegerField;
    cdsAccBankOtherCBEST_CODE: TStringField;
    cdsAccBankOtherBANK_DEFAULT: TStringField;
    cdsAccBankOtherSTAT: TStringField;
    cdsAccBankOtherMODDA: TDateTimeField;
    cdsAccBankOtherMODUI: TStringField;
    cdsAccBankOtherAPPDA: TDateTimeField;
    cdsAccBankOtherAPPUI: TStringField;
    cdsAccBankOtherUNDER4Y: TIntegerField;
    cdsAccBankOtherUNDER4YDA: TDateTimeField;
    cdsAccBankOtherNOTES4Y: TStringField;
    cdsAccBankOtherISDEL: TIntegerField;
    cdsAccBankOtherID: TLargeintField;
    cxButton1: TcxButton;
    dxLayoutControl2Item1: TdxLayoutItem;
    cdsAccForBankNOTES4Y: TStringField;
    actDeleteBank: TNAction;
    DeleteBank1: TMenuItem;
    procedure cdsAccForBankAfterOpen(DataSet: TDataSet);
    procedure cdsAccBankOwnerCalcFields(DataSet: TDataSet);
    procedure actSetDefaultBankExecute(Sender: TObject);
    procedure actSetDefaultBankUpdate(Sender: TObject);
    procedure actEditBankExecute(Sender: TObject);
    procedure actAddNewBankExecute(Sender: TObject);
    procedure cdsAccBankNewRecord(DataSet: TDataSet);
    procedure cdsAccBankOwnerNewRecord(DataSet: TDataSet);
    procedure actAddFromCurrentBankExecute(Sender: TObject);
    procedure cdsAccInfoAfterOpen(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure actAddNewBankUpdate(Sender: TObject);
    procedure actDeleteBankExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountBank: TfrmAccountBank;

implementation

{$R *.dfm}

uses DataGlobal, FormAccBankNo, FormAccBankRelatedAccount;

procedure TfrmAccountBank.actAddFromCurrentBankExecute(Sender: TObject);
var
  oForm: TfrmAccBankRelatedAccount;
  AccBankID: Integer;
begin
  inherited;
  if not cdsAccBankOther.IsEmpty then
  begin
    oForm := TfrmAccBankRelatedAccount.Create(Nil);
    Try
      if oForm.ShowModal = mrOk then
      begin
        if not cdsAccBankOwner.Locate('ACCBANKID', cdsAccBankOtherACCBANKID.AsInteger, []) then
        begin
          cdsAccBankOwner.Append;
          cdsAccBankOwnerACCBANKID.AsInteger := cdsAccBankOtherACCBANKID.AsInteger;
          cdsAccBankOwner.Post;
        end;

        if cdsAccDefaultBank.Locate('CCYCODE', cdsAccBankOwnerCCYCODE.AsString, []) then
        begin
          if cdsAccBankOwnerISRDN.AsString = '1' then
          begin
            if cdsAccDefaultBankRDNBANK_DEFAULT.IsNull then
            begin
              cdsAccDefaultBank.Edit;
              cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
              cdsAccDefaultBank.Post;
            end;
          end
          else
          begin
            if cdsAccDefaultBankPRIVATEBANK_DEFAULT.IsNull then
            begin
              cdsAccDefaultBank.Edit;
              cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
              cdsAccDefaultBank.Post;
            end;
          end;
        end
        else
        begin
          cdsAccDefaultBank.Append;
          cdsAccDefaultBankCCYCODE.AsString := cdsAccBankOwnerCCYCODE.AsString;
          if cdsAccBankOwnerISRDN.AsString = '1' then
            cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger
          else
            cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
          cdsAccDefaultBank.Post;
        end;

        cdsAccBankOwner.Edit;
        cdsAccBankOwner.Post;
      end;
    Finally
      FreeAndNil(oForm);
    End;
  end
  else
  begin
    ShowMessage('There is no Other Bank Account from this related account.');
  end;
end;

procedure TfrmAccountBank.actAddNewBankExecute(Sender: TObject);
var
  oForm: TfrmAccBankNo;
  AccBankID: Integer;
begin
  inherited;
  oForm := TfrmAccBankNo.Create(Nil);
  Try
    cdsAccBank.Append;
    if oForm.ShowModal = mrOk then
    begin
      if cdsAccBank.State in dsEditModes then
      begin
        cdsAccBank.Post;
      end;

      cdsAccBankOwner.Append;
      cdsAccBankOwnerACCBANKID.AsInteger := cdsAccBankACCBANKID.AsInteger;
      cdsAccBankOwner.Post;

      if cdsAccDefaultBank.Locate('CCYCODE', cdsAccBankOwnerCCYCODE.AsString, []) then
      begin
        if cdsAccBankOwnerISRDN.AsString = '1' then
        begin
          if cdsAccDefaultBankRDNBANK_DEFAULT.IsNull then
          begin
            cdsAccDefaultBank.Edit;
            cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
            cdsAccDefaultBank.Post;
          end;
        end
        else
        begin
          if cdsAccDefaultBankPRIVATEBANK_DEFAULT.IsNull then
          begin
            cdsAccDefaultBank.Edit;
            cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
            cdsAccDefaultBank.Post;
          end;
        end;
      end
      else
      begin
        cdsAccDefaultBank.Append;
        cdsAccDefaultBankCCYCODE.AsString := cdsAccBankOwnerCCYCODE.AsString;
        if cdsAccBankOwnerISRDN.AsString = '1' then
          cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger
        else
          cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
        cdsAccDefaultBank.Post;
      end;

      cdsAccBankOwner.Edit;
      cdsAccBankOwner.Post;

    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmAccountBank.actAddNewBankUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (not cdsAccForBank.ReadOnly);
end;

procedure TfrmAccountBank.actDeleteBankExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
dmGlobal.RemoteServer.DeleteAccountBank(cdsAccBankOwnerACCBANKID.AsInteger, sMsg);
 MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmAccountBank.actEditBankExecute(Sender: TObject);
var
  oForm: TfrmAccBankNo;
  bDefaultBank, bRDNBank: Boolean;
  sCcy, sRDN: String;
begin
  inherited;
  if cdsAccBankOwnerDEFAULT_BANK_ACCOUNT.AsBoolean then
  begin
    if cdsAccBank.Locate('ACCBANKID', cdsAccBankOwnerACCBANKID.AsInteger, []) then
    begin
      bDefaultBank := cdsAccBankOwnerDEFAULT_BANK.AsBoolean;
      bRDNBank := cdsAccBankOwnerISRDN.AsString = '1';
      sCcy := cdsAccBankOwnerCCYCODE.AsString;

      oForm := TfrmAccBankNo.Create(Nil);
      Try
        oForm.dsSubject.DataSet := cdsAccBank;
        cdsAccBank.Edit;

        if oForm.ShowModal = mrOk then
        begin
          if cdsAccBank.State in dsEditModes then
            cdsAccBank.Post;

          //Reset Last Default Bank Setting
          if bDefaultBank then
          begin
            if (sCcy <> cdsAccBankCCYCODE.AsString) then
            begin
              if cdsAccDefaultBank.Locate('CCYCODE', sCcy, []) then
              begin
                cdsAccDefaultBank.Edit;
                if bRDNBank then
                  cdsAccDefaultBankRDNBANK_DEFAULT.Clear
                else
                  cdsAccDefaultBankPRIVATEBANK_DEFAULT.Clear;
                cdsAccDefaultBank.Post;
              end;
            end
            else
            begin
              if cdsAccDefaultBank.Locate('CCYCODE', sCcy, [])  then
              begin
                if not ((bRDNBank) and (cdsAccBankISRDN.AsString = '1')) then
                begin
                  cdsAccDefaultBank.Edit;
                  if bRDNBank then
                    cdsAccDefaultBankRDNBANK_DEFAULT.Clear
                  else
                    cdsAccDefaultBankPRIVATEBANK_DEFAULT.Clear;
                  cdsAccDefaultBank.Post;
                end;
              end;
            end;
          end;

          //Automatically Set Default Bank if Not Exists
          if cdsAccDefaultBank.Locate('CCYCODE', cdsAccBankCCYCODE.AsString, []) then
          begin
            if cdsAccBankISRDN.AsString = '1' then
            begin
              if cdsAccDefaultBankRDNBANK_DEFAULT.IsNull then
              begin
                cdsAccDefaultBank.Edit;
                cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankACCBANKID.AsInteger;
                cdsAccDefaultBank.Post;
              end;
            end
            else
            begin
              if cdsAccDefaultBankPRIVATEBANK_DEFAULT.IsNull then
              begin
                cdsAccDefaultBank.Edit;
                cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankACCBANKID.AsInteger;
                cdsAccDefaultBank.Post;
              end;
            end;
          end
          else
          begin
            cdsAccDefaultBank.Append;
            cdsAccDefaultBankCCYCODE.AsString := cdsAccBankCCYCODE.AsString;
            if cdsAccBankISRDN.AsString = '1' then
              cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankACCBANKID.AsInteger
            else
              cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankACCBANKID.AsInteger;
            cdsAccDefaultBank.Post;
          end;

          cdsAccBankOwner.Edit;
          cdsAccBankOwner.Post;
        end;
      Finally
        FreeAndNil(oForm);
      End;
    end;
  end
  else
  begin
    MessageDlg('Unable to edit bank account, it is not your own bank account!', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmAccountBank.actSetDefaultBankExecute(Sender: TObject);
begin
  inherited;
  if cdsAccDefaultBank.Locate('CCYCODE', cdsAccBankOwnerCCYCODE.AsString, []) then
  begin
    cdsAccDefaultBank.Edit;
    if cdsAccBankOwnerISRDN.AsString = '1' then
      cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger
    else
      cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
    cdsAccDefaultBank.Post;
  end
  else
  begin
    cdsAccDefaultBank.Append;
    cdsAccDefaultBankCCYCODE.AsString := cdsAccBankOwnerCCYCODE.AsString;
    if cdsAccBankOwnerISRDN.AsString = '1' then
      cdsAccDefaultBankRDNBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger
    else
      cdsAccDefaultBankPRIVATEBANK_DEFAULT.AsInteger := cdsAccBankOwnerACCBANKID.AsInteger;
    cdsAccDefaultBank.Post;
  end;

  cdsAccBankOwner.Edit;
  cdsAccBankOwner.Post;
end;

procedure TfrmAccountBank.actSetDefaultBankUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (not cdsAccBankOwner.IsEmpty) And (not cdsAccForBank.ReadOnly);
end;

procedure TfrmAccountBank.cdsAccBankNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccBankACCBANKID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTBANK');
  cdsAccBankACCID.AsInteger := cdsAccForBankACCID.AsInteger;
  cdsAccBankCCYCODE.AsString := dmGlobal.RemoteServer.GetLocalCCY;
  cdsAccBankISRDN.AsString := '0';
end;

procedure TfrmAccountBank.cdsAccBankOwnerCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not DataSet.FieldByName('CCYCODE_1').IsNull then
  begin
    DataSet.FieldByName('CCYCODE').AsString := DataSet.FieldByName('CCYCODE_1').AsString;
    DataSet.FieldByName('BNCODE').AsString := DataSet.FieldByName('BNCODE_1').AsString;
    DataSet.FieldByName('BANKACCNO').AsString := DataSet.FieldByName('BANKACCNO_1').AsString;
    DataSet.FieldByName('BANKACCNAME').AsString := DataSet.FieldByName('BANKACCNAME_1').AsString;
    DataSet.FieldByName('BANKBRANCH').AsString := DataSet.FieldByName('BANKBRANCH_1').AsString;
    DataSet.FieldByName('ISRDN').AsString := DataSet.FieldByName('ISRDN_1').AsString;
    DataSet.FieldByName('ACCID').AsInteger := DataSet.FieldByName('ACCID_1').AsInteger;
    DataSet.FieldByName('RDNBANK_DEFAULT').AsInteger := DataSet.FieldByName('RDNBANK_DEFAULT_1').AsInteger;
    DataSet.FieldByName('PRIVATEBANK_DEFAULT').AsInteger := DataSet.FieldByName('PRIVATEBANK_DEFAULT_1').AsInteger;
  end
  else
  begin
    DataSet.FieldByName('CCYCODE').AsString := DataSet.FieldByName('CCYCODE_2').AsString;
    DataSet.FieldByName('BNCODE').AsString := DataSet.FieldByName('BNCODE_2').AsString;
    DataSet.FieldByName('BANKACCNO').AsString := DataSet.FieldByName('BANKACCNO_2').AsString;
    DataSet.FieldByName('BANKACCNAME').AsString := DataSet.FieldByName('BANKACCNAME_2').AsString;
    DataSet.FieldByName('BANKBRANCH').AsString := DataSet.FieldByName('BANKBRANCH_2').AsString;
    DataSet.FieldByName('ISRDN').AsString := DataSet.FieldByName('ISRDN_2').AsString;
    DataSet.FieldByName('ACCID').AsInteger := DataSet.FieldByName('ACCID_2').AsInteger;
    DataSet.FieldByName('RDNBANK_DEFAULT').AsInteger := DataSet.FieldByName('RDNBANK_DEFAULT_2').AsInteger;
    DataSet.FieldByName('PRIVATEBANK_DEFAULT').AsInteger := DataSet.FieldByName('PRIVATEBANK_DEFAULT_2').AsInteger;
  end;

  if DataSet.FieldByName('ISRDN').AsString = '1' then
  begin
    DataSet.FieldByName('DEFAULT_BANK').AsBoolean := DataSet.FieldByName('ACCBANKID').AsInteger = DataSet.FieldByName('RDNBANK_DEFAULT').AsInteger;
  end
  else
  begin
    DataSet.FieldByName('DEFAULT_BANK').AsBoolean := DataSet.FieldByName('ACCBANKID').AsInteger = DataSet.FieldByName('PRIVATEBANK_DEFAULT').AsInteger;
  end;

  DataSet.FieldByName('DEFAULT_BANK_ACCOUNT').AsBoolean := DataSet.FieldByName('ACCID_OWNER').AsInteger = DataSet.FieldByName('ACCID').AsInteger;
end;

procedure TfrmAccountBank.cdsAccBankOwnerNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccBankOwnerACCID_OWNER.AsInteger := cdsAccForBankACCID.AsInteger;
end;

procedure TfrmAccountBank.cdsAccForBankAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsAccInfo.Close;
  cdsAccInfo.Params[0].AsInteger := cdsAccForBankACCID.AsInteger;
  cdsAccInfo.Open;
end;

procedure TfrmAccountBank.cdsAccInfoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsAccBankOther.Close;
  cdsAccBankOther.Params[0].AsInteger := cdsAccInfoACCID.AsInteger;
  cdsAccBankOther.Open;
end;

procedure TfrmAccountBank.cxButton1Click(Sender: TObject);
var
  sFileName: String;
begin
  inherited;
  sFileName := ExtractFilePath(Application.ExeName) + 'AccountBank.xml';
  cdsAccForBank.SaveToFile(sFileName, dfXML);
end;

Initialization
  RegisterClass(TfrmAccountBank);

end.
