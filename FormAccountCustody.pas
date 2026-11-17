unit FormAccountCustody;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, cxTextEdit, Vcl.ActnList, NDatasetAction,
  Datasnap.DBClient, NClientDataset, Vcl.Tabs, dxStatusBar, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxDateRanges,
  System.Actions, dxLayoutLookAndFeels, dxScrollbarAnnotations;

type
  TfrmAccountCustody = class(TfrmEditorData)
    cdsAccForCustody: TNClientDataset;
    cdsAccForCustodyACCID: TIntegerField;
    cdsAccForCustodyqryAccDefaultCustody: TDataSetField;
    cdsAccForCustodyqryAccCustodyOwner: TDataSetField;
    cdsAccForCustodyqryAccCustody: TDataSetField;
    dsAccInfo: TDataSource;
    aclCustody: TActionList;
    actSetDefaultCustody: TNAction;
    actAddNewCustody: TNAction;
    actAddFromCurrentCustody: TNAction;
    actEditCustody: TNAction;
    popCustody: TPopupMenu;
    AddBank1: TMenuItem;
    New1: TMenuItem;
    actAddFromCurrentBank1: TMenuItem;
    EditBank1: TMenuItem;
    SetAsDefaultBank1: TMenuItem;
    cdsAccInfo: TNClientDataset;
    cdsAccInfoACCID: TIntegerField;
    cdsAccInfoACCCODE: TStringField;
    cdsAccInfoACCNAME: TStringField;
    cdsAccInfoACCINIT: TStringField;
    cdsAccInfoACC_STS: TStringField;
    dsCustody: TDataSource;
    cdsAccCustodyOwner: TNClientDataset;
    cdsAccCustodyOwnerACCID_OWNER: TIntegerField;
    cdsAccCustodyOwnerACCCUSTODYID: TIntegerField;
    cdsAccCustodyOwnerMODDA: TDateTimeField;
    cdsAccCustodyOwnerMODUI: TStringField;
    cdsAccCustodyOwnerAPPDA: TDateTimeField;
    cdsAccCustodyOwnerAPPUI: TStringField;
    cdsAccCustodyOwnerUNDER4Y: TIntegerField;
    cdsAccCustodyOwnerUNDER4YDA: TDateTimeField;
    cdsAccCustodyOwnerNOTES4Y: TStringField;
    cdsAccCustodyOwnerISDEL: TIntegerField;
    cdsAccCustodyOwnerID: TLargeintField;
    cdsAccDefaultCustody: TNClientDataset;
    cdsAccDefaultCustodyACCID: TIntegerField;
    cdsAccDefaultCustodyCUSTODYTYPE: TStringField;
    cdsAccDefaultCustodyACCCUSTODYID: TIntegerField;
    cdsAccDefaultCustodyMODDA: TDateTimeField;
    cdsAccDefaultCustodyMODUI: TStringField;
    cdsAccDefaultCustodyAPPDA: TDateTimeField;
    cdsAccDefaultCustodyAPPUI: TStringField;
    cdsAccDefaultCustodyUNDER4Y: TIntegerField;
    cdsAccDefaultCustodyUNDER4YDA: TDateTimeField;
    cdsAccDefaultCustodyNOTES4Y: TStringField;
    cdsAccDefaultCustodyISDEL: TIntegerField;
    cdsAccDefaultCustodyID: TLargeintField;
    cdsAccCustody: TNClientDataset;
    cdsAccCustodyACCCUSTODYID: TIntegerField;
    cdsAccCustodyACCID: TIntegerField;
    cdsAccCustodyCUSTODYCODE: TStringField;
    cdsAccCustodyCUSTODYACCNO: TStringField;
    cdsAccCustodyCUSTODYACCNAME: TStringField;
    cdsAccCustodyCUSTODYBRANCH: TStringField;
    cdsAccCustodyCUSTODYTYPE: TStringField;
    cdsAccCustodyACTLED_SEQID: TIntegerField;
    cdsAccCustodyCBEST_ACCBANKID: TLargeintField;
    cdsAccCustodyCUSTODY_DEFAULT: TStringField;
    cdsAccCustodySTAT: TStringField;
    cdsAccCustodyMODDA: TDateTimeField;
    cdsAccCustodyMODUI: TStringField;
    cdsAccCustodyAPPDA: TDateTimeField;
    cdsAccCustodyAPPUI: TStringField;
    cdsAccCustodyUNDER4Y: TIntegerField;
    cdsAccCustodyUNDER4YDA: TDateTimeField;
    cdsAccCustodyNOTES4Y: TStringField;
    cdsAccCustodyISDEL: TIntegerField;
    cdsAccCustodyID: TLargeintField;
    cdsAccCustodyOther: TNClientDataset;
    cdsAccCustodyOtherACCCUSTODYID: TIntegerField;
    cdsAccCustodyOtherACCID: TIntegerField;
    cdsAccCustodyOtherCUSTODYCODE: TStringField;
    cdsAccCustodyOtherCUSTODYACCNO: TStringField;
    cdsAccCustodyOtherCUSTODYACCNAME: TStringField;
    cdsAccCustodyOtherCUSTODYBRANCH: TStringField;
    cdsAccCustodyOtherCUSTODYTYPE: TStringField;
    cdsAccCustodyOtherACTLED_SEQID: TIntegerField;
    cdsAccCustodyOtherCBEST_ACCBANKID: TLargeintField;
    cdsAccCustodyOtherCUSTODY_DEFAULT: TStringField;
    cdsAccCustodyOtherSTAT: TStringField;
    cdsAccCustodyOtherMODDA: TDateTimeField;
    cdsAccCustodyOtherMODUI: TStringField;
    cdsAccCustodyOtherAPPDA: TDateTimeField;
    cdsAccCustodyOtherAPPUI: TStringField;
    cdsAccCustodyOtherUNDER4Y: TIntegerField;
    cdsAccCustodyOtherUNDER4YDA: TDateTimeField;
    cdsAccCustodyOtherNOTES4Y: TStringField;
    cdsAccCustodyOtherISDEL: TIntegerField;
    cdsAccCustodyOtherID: TLargeintField;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwCustody: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    NClientDataset1: TNClientDataset;
    cdsAccCustodyOwnerCUSTODYCODE_1: TStringField;
    cdsAccCustodyOwnerCUSTODYACCNO_1: TStringField;
    cdsAccCustodyOwnerCUSTODYACCNAME_1: TStringField;
    cdsAccCustodyOwnerCUSTODYBRANCH_1: TStringField;
    cdsAccCustodyOwnerCUSTODYTYPE_1: TStringField;
    cdsAccCustodyOwnerCUSTODY_DEFAULT_1: TIntegerField;
    cdsAccCustodyOwnerCUSTODYCODE_2: TStringField;
    cdsAccCustodyOwnerCUSTODYACCNO_2: TStringField;
    cdsAccCustodyOwnerCUSTODYACCNAME_2: TStringField;
    cdsAccCustodyOwnerCUSTODYBRANCH_2: TStringField;
    cdsAccCustodyOwnerCUSTODYTYPE_2: TStringField;
    cdsAccCustodyOwnerCUSTODY_DEFAULT_2: TIntegerField;
    cdsAccCustodyOwnerACCID_1: TIntegerField;
    cdsAccCustodyOwnerACCID_2: TIntegerField;
    cdsAccCustodyOwnerACCID: TIntegerField;
    cdsAccCustodyOwnerCUSTODYCODE: TStringField;
    cdsAccCustodyOwnerCUSTODYACCNO: TStringField;
    cdsAccCustodyOwnerCUSTODYACCNAME: TStringField;
    cdsAccCustodyOwnerCUSTODYBRANCH: TStringField;
    cdsAccCustodyOwnerCUSTODYTYPE: TStringField;
    cdsAccCustodyOwnerCUSTODY_DEFAULT: TIntegerField;
    cdsAccCustodyOwnerDEFAULT_CUSTODY: TBooleanField;
    cdsAccCustodyOwnerDEFAULT_CUSTODY_ACCOUNT: TBooleanField;
    gvwCustodyACCID_OWNER: TcxGridDBColumn;
    gvwCustodyACCCUSTODYID: TcxGridDBColumn;
    gvwCustodyMODDA: TcxGridDBColumn;
    gvwCustodyMODUI: TcxGridDBColumn;
    gvwCustodyAPPDA: TcxGridDBColumn;
    gvwCustodyAPPUI: TcxGridDBColumn;
    gvwCustodyUNDER4Y: TcxGridDBColumn;
    gvwCustodyUNDER4YDA: TcxGridDBColumn;
    gvwCustodyNOTES4Y: TcxGridDBColumn;
    gvwCustodyISDEL: TcxGridDBColumn;
    gvwCustodyID: TcxGridDBColumn;
    gvwCustodyACCID_1: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE_1: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO_1: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME_1: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH_1: TcxGridDBColumn;
    gvwCustodyCUSTODYTYPE_1: TcxGridDBColumn;
    gvwCustodyCUSTODY_DEFAULT_1: TcxGridDBColumn;
    gvwCustodyACCID_2: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE_2: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO_2: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME_2: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH_2: TcxGridDBColumn;
    gvwCustodyCUSTODYTYPE_2: TcxGridDBColumn;
    gvwCustodyCUSTODY_DEFAULT_2: TcxGridDBColumn;
    gvwCustodyACCID: TcxGridDBColumn;
    gvwCustodyCUSTODYCODE: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNO: TcxGridDBColumn;
    gvwCustodyCUSTODYACCNAME: TcxGridDBColumn;
    gvwCustodyCUSTODYBRANCH: TcxGridDBColumn;
    gvwCustodyCUSTODYTYPE: TcxGridDBColumn;
    gvwCustodyCUSTODY_DEFAULT: TcxGridDBColumn;
    gvwCustodyDEFAULT_CUSTODY: TcxGridDBColumn;
    gvwCustodyDEFAULT_CUSTODY_ACCOUNT: TcxGridDBColumn;
    cdsAccForCustodyNOTES4Y: TStringField;
    procedure cdsAccCustodyOwnerCalcFields(DataSet: TDataSet);
    procedure cdsAccCustodyOwnerNewRecord(DataSet: TDataSet);
    procedure cdsAccForCustodyAfterOpen(DataSet: TDataSet);
    procedure cdsAccInfoAfterOpen(DataSet: TDataSet);
    procedure cdsAccCustodyNewRecord(DataSet: TDataSet);
    procedure actSetDefaultCustodyExecute(Sender: TObject);
    procedure actAddNewCustodyExecute(Sender: TObject);
    procedure actEditCustodyExecute(Sender: TObject);
    procedure actAddFromCurrentCustodyExecute(Sender: TObject);
    procedure actSetDefaultCustodyUpdate(Sender: TObject);
    procedure actAddNewCustodyUpdate(Sender: TObject);
    procedure cdsAccCustodyOtherAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountCustody: TfrmAccountCustody;

implementation

{$R *.dfm}

uses DataGlobal, FormAccCustodyNo, FormAccCustodyRelatedAccount;

procedure TfrmAccountCustody.actAddFromCurrentCustodyExecute(Sender: TObject);
var
  oForm: TfrmAccCustodyRelatedAccount;
  AccBankID: Integer;
begin
  inherited;
  if not cdsAccCustodyOther.IsEmpty then
  begin
    oForm := TfrmAccCustodyRelatedAccount.Create(Nil);
    Try
      if oForm.ShowModal = mrOk then
      begin
        if not cdsAccCustodyOwner.Locate('ACCCUSTODYID', cdsAccCustodyOtherACCCUSTODYID.AsInteger, []) then
        begin
          cdsAccCustodyOwner.Append;
          cdsAccCustodyOwnerACCCUSTODYID.AsInteger := cdsAccCustodyOtherACCCUSTODYID.AsInteger;
          cdsAccCustodyOwner.Post;
        end;
      end;
    Finally
      FreeAndNil(oForm);
    End;
  end
  else
  begin
    ShowMessage('There is no Other Custody Account from this related account.');
  end;
end;

procedure TfrmAccountCustody.actAddNewCustodyExecute(Sender: TObject);
var
  oForm: TfrmAccCustodyNo;
  AccBankID: Integer;
begin
  inherited;
  oForm := TfrmAccCustodyNo.Create(Nil);
  Try
    cdsAccCustody.Append;
    if oForm.ShowModal = mrOk then
    begin
      if cdsAccCustody.State in dsEditModes then
      begin
        cdsAccCustody.Post;
      end;

      cdsAccCustodyOwner.Append;
      cdsAccCustodyOwnerACCCUSTODYID.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;
      cdsAccCustodyOwner.Post;

      if not cdsAccDefaultCustody.Locate('CUSTODYTYPE', cdsAccCustodyCUSTODYTYPE.AsString, []) then
      begin
        cdsAccDefaultCustody.Append;
        cdsAccDefaultCustodyCUSTODYTYPE.AsString := cdsAccCustodyCUSTODYTYPE.AsString;
        cdsAccDefaultCustodyACCCUSTODYID.AsInteger := cdsAccCustodyACCCUSTODYID.AsInteger;
        cdsAccDefaultCustody.Post;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmAccountCustody.actAddNewCustodyUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (not cdsAccForCustody.ReadOnly);
end;

procedure TfrmAccountCustody.actEditCustodyExecute(Sender: TObject);
var
  oForm: TfrmAccCustodyNo;
begin
  inherited;
  if cdsAccCustodyOwnerDEFAULT_CUSTODY_ACCOUNT.AsBoolean then
  begin
    if cdsAccCustody.Locate('ACCCUSTODYID', cdsAccCustodyOwnerACCCUSTODYID.AsInteger, []) then
    begin
      oForm := TfrmAccCustodyNo.Create(Nil);
      Try
        oForm.dsSubject.DataSet := cdsAccCustody;
        cdsAccCustody.Edit;
        if oForm.ShowModal = mrOk then
        begin
          if cdsAccCustody.State in dsEditModes then
            cdsAccCustody.Post;

          cdsAccCustodyOwner.Edit;
          cdsAccCustodyOwner.Post;
        end;
      Finally
        FreeAndNil(oForm);
      End;
    end;
  end
  else
  begin
    MessageDlg('Unable to edit custody account, it is not your own custody account!', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmAccountCustody.actSetDefaultCustodyExecute(Sender: TObject);
begin
  inherited;

  if cdsAccDefaultCustody.Locate('CUSTODYTYPE', cdsAccCustodyOwnerCUSTODYTYPE.AsString, []) then
  begin
    cdsAccDefaultCustody.Edit;
    cdsAccDefaultCustodyACCCUSTODYID.AsInteger := cdsAccCustodyOwnerACCCUSTODYID.AsInteger;
    cdsAccDefaultCustody.Post;
  end
  else
  begin
    cdsAccDefaultCustody.Append;
    cdsAccDefaultCustodyCUSTODYTYPE.AsString := cdsAccCustodyOwnerCUSTODYTYPE.AsString;
    cdsAccDefaultCustodyACCCUSTODYID.AsInteger := cdsAccCustodyOwnerACCCUSTODYID.AsInteger;
    cdsAccDefaultCustody.Post;
  end;

  cdsAccCustodyOwner.Edit;
  cdsAccCustodyOwner.Post;
end;

procedure TfrmAccountCustody.actSetDefaultCustodyUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := (not cdsAccCustodyOwner.IsEmpty) And (not cdsAccForCustody.ReadOnly);
end;

procedure TfrmAccountCustody.cdsAccCustodyNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccCustodyACCCUSTODYID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ACCOUNTCUSTODY');
  cdsAccCustodyACCID.AsInteger := cdsAccForCustodyACCID.AsInteger;
end;

procedure TfrmAccountCustody.cdsAccCustodyOtherAfterOpen(DataSet: TDataSet);
var
  bReadOnly: Boolean;
begin
  inherited;
  if (not cdsAccCustodyOther.IsEmpty) And (not cdsAccCustodyOwner.IsEmpty) then
  begin
    bReadOnly := cdsAccCustodyOwner.ReadOnly;
    cdsAccCustodyOwner.ReadOnly := False;
    cdsAccCustodyOwner.Edit;
    cdsAccCustodyOwner.Post;
    cdsAccCustodyOwner.ReadOnly := bReadOnly;
  end;
end;

procedure TfrmAccountCustody.cdsAccCustodyOwnerCalcFields(DataSet: TDataSet);
begin
  inherited;

  if not DataSet.FieldByName('CUSTODYCODE_1').IsNull then
  begin
    DataSet.FieldByName('CUSTODYCODE').AsString := DataSet.FieldByName('CUSTODYCODE_1').AsString;
    DataSet.FieldByName('CUSTODYACCNO').AsString := DataSet.FieldByName('CUSTODYACCNO_1').AsString;
    DataSet.FieldByName('CUSTODYACCNAME').AsString := DataSet.FieldByName('CUSTODYACCNAME_1').AsString;
    DataSet.FieldByName('CUSTODYBRANCH').AsString := DataSet.FieldByName('CUSTODYBRANCH_1').AsString;
    DataSet.FieldByName('CUSTODYTYPE').AsString := DataSet.FieldByName('CUSTODYTYPE_1').AsString;
    DataSet.FieldByName('CUSTODY_DEFAULT').AsInteger := DataSet.FieldByName('CUSTODY_DEFAULT_1').AsInteger;
    DataSet.FieldByName('ACCID').AsInteger := DataSet.FieldByName('ACCID_1').AsInteger;
  end
  else
  begin
    DataSet.FieldByName('CUSTODYCODE').AsString := DataSet.FieldByName('CUSTODYCODE_2').AsString;
    DataSet.FieldByName('CUSTODYACCNO').AsString := DataSet.FieldByName('CUSTODYACCNO_2').AsString;
    DataSet.FieldByName('CUSTODYACCNAME').AsString := DataSet.FieldByName('CUSTODYACCNAME_2').AsString;
    DataSet.FieldByName('CUSTODYBRANCH').AsString := DataSet.FieldByName('CUSTODYBRANCH_2').AsString;
    DataSet.FieldByName('CUSTODYTYPE').AsString := DataSet.FieldByName('CUSTODYTYPE_2').AsString;
    DataSet.FieldByName('CUSTODY_DEFAULT').AsInteger := DataSet.FieldByName('CUSTODY_DEFAULT_2').AsInteger;
    DataSet.FieldByName('ACCID').AsInteger := DataSet.FieldByName('ACCID_2').AsInteger;
  end;

  DataSet.FieldByName('DEFAULT_CUSTODY').AsBoolean := DataSet.FieldByName('ACCCUSTODYID').AsInteger = DataSet.FieldByName('CUSTODY_DEFAULT').AsInteger;
  DataSet.FieldByName('DEFAULT_CUSTODY_ACCOUNT').AsBoolean := DataSet.FieldByName('ACCID_OWNER').AsInteger = DataSet.FieldByName('ACCID').AsInteger;
end;

procedure TfrmAccountCustody.cdsAccCustodyOwnerNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsAccCustodyOwnerACCID_OWNER.AsInteger := cdsAccForCustodyACCID.AsInteger;
end;

procedure TfrmAccountCustody.cdsAccForCustodyAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsAccInfo.Close;
  cdsAccInfo.Params[0].AsInteger := cdsAccForCustodyACCID.AsInteger;
  cdsAccInfo.Open;
end;

procedure TfrmAccountCustody.cdsAccInfoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cdsAccCustodyOther.Close;
  cdsAccCustodyOther.Params[0].AsInteger := cdsAccInfoACCID.AsInteger;
  cdsAccCustodyOther.Open;
end;

Initialization
  RegisterClass(TfrmAccountCustody);

end.
