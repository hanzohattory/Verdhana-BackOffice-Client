unit FormCashPositionMovement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, Datasnap.DBClient, NClientDataset,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxCurrencyEdit, cxButtonEdit;

type
  TfrmCashPositionMovement = class(TfrmEditorData)
    cdsCashPositionMovement: TNClientDataset;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    dxLayoutControl1Item11: TdxLayoutItem;
    dsLuAccountByEntity: TDataSource;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cdsCashPosition: TNClientDataset;
    cdsCashPositionBranchID: TIntegerField;
    cdsCashPositionBranchCode: TStringField;
    cdsCashPositionBranchName: TStringField;
    cdsCashPositionSalesID: TIntegerField;
    cdsCashPositionSalesCode: TStringField;
    cdsCashPositionSalesName: TStringField;
    cdsCashPositionACCID: TLargeintField;
    cdsCashPositionACCNO: TStringField;
    cdsCashPositionACCNAME: TStringField;
    cdsCashPositionCCY: TStringField;
    cdsCashPositionCashOnHand: TFloatField;
    cdsCashPositionCashOnHold: TFloatField;
    cdsCashPositionARAmt: TFloatField;
    cdsCashPositionApAmt: TFloatField;
    cdsCashPositionNetARAP: TFloatField;
    cdsCashPositionCashPosition: TFloatField;
    cdsCashPositionSAVEKEEP: TStringField;
    cdsCashPositionBuyAmount: TFloatField;
    cdsCashPositionAvCashAmount: TFloatField;
    txtSourceAccCode: TcxButtonEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    txtTargetAccCode: TcxButtonEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cdsCashPositionMovementCMPOSID: TLargeintField;
    cdsCashPositionMovementCMPOSCODE: TStringField;
    cdsCashPositionMovementCMPOSDATE: TDateField;
    cdsCashPositionMovementENTRYDATE: TDateField;
    cdsCashPositionMovementCMPOSTYPE: TStringField;
    cdsCashPositionMovementSOURCE_ACCID: TLargeintField;
    cdsCashPositionMovementTARGET_ACCID: TLargeintField;
    cdsCashPositionMovementSOURCE_ALTYPE: TStringField;
    cdsCashPositionMovementTARGET_ALTYPE: TStringField;
    cdsCashPositionMovementCCYCODE: TStringField;
    cdsCashPositionMovementEXCHRATE: TFloatField;
    cdsCashPositionMovementAMOUNT: TFloatField;
    cdsCashPositionMovementFXAMOUNT: TFloatField;
    cdsCashPositionMovementPOSTED: TStringField;
    cdsCashPositionMovementPOSTED_DATE: TDateField;
    cdsCashPositionMovementPOSTED_UI: TStringField;
    cdsCashPositionMovementCANCEL: TStringField;
    cdsCashPositionMovementCANCEL_DATE: TDateField;
    cdsCashPositionMovementCANCEL_UI: TStringField;
    cdsCashPositionMovementAPPROVED: TStringField;
    cdsCashPositionMovementAPPROVED_DATE: TDateField;
    cdsCashPositionMovementAPPROVED_UI: TStringField;
    cdsCashPositionMovementMODDA: TDateTimeField;
    cdsCashPositionMovementMODUI: TStringField;
    cdsCashPositionMovementAPPDA: TDateTimeField;
    cdsCashPositionMovementAPPUI: TStringField;
    cdsCashPositionMovementUNDER4Y: TIntegerField;
    cdsCashPositionMovementUNDER4YDA: TDateTimeField;
    cdsCashPositionMovementNOTES4Y: TStringField;
    cdsCashPositionMovementISDEL: TIntegerField;
    cdsCashPositionMovementID: TLargeintField;
    cdsCashPositionMovementSOURCEACCNAME: TStringField;
    cdsCashPositionMovementCASHPOS: TFloatField;
    cdsCashPositionMovementTARGETACCNAME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsCashPositionMovementSOURCE_ACCIDChange(Sender: TField);
    procedure cdsCashPositionMovementCCYCODEChange(Sender: TField);
    procedure cdsCashPositionMovementEXCHRATEChange(Sender: TField);
    procedure txtSourceAccIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txtTargetAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    FEntityID : Integer;
  public
    { Public declarations }
  end;

var
  frmCashPositionMovement: TfrmCashPositionMovement;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount;

procedure TfrmCashPositionMovement.btnOKClick(Sender: TObject);
begin
  if (dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger = dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger) and
     (dsSubject.DataSet.FieldByName('SOURCE_ALTYPE').AsString = dsSubject.DataSet.FieldByName('TARGET_ALTYPE').AsString) then
    MessageDlg('Can not move cash position with same account and same ledger type', mtError, [mbOk], 0)
  else
    inherited;
end;

procedure TfrmCashPositionMovement.cdsCashPositionMovementCCYCODEChange(
  Sender: TField);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
    cdsCashPositionMovementEXCHRATE.AsFloat := dmGlobal.RemoteServer.GetCCYRate(cdsCashPositionMovementCMPOSDATE.AsDateTime, cdsCashPositionMovementCCYCODE.AsString);
end;

procedure TfrmCashPositionMovement.cdsCashPositionMovementEXCHRATEChange(
  Sender: TField);
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
    cdsCashPositionMovementFXAMOUNT.AsFloat := cdsCashPositionMovementEXCHRATE.AsFloat * cdsCashPositionMovementAMOUNT.AsFloat;
end;

procedure TfrmCashPositionMovement.cdsCashPositionMovementSOURCE_ACCIDChange(
  Sender: TField);
begin
  inherited;
  cdsCashPosition.Close;
  cdsCashPosition.Params[0].AsDateTime := cdsCashPositionMovementCMPOSDATE.AsDateTime;
  cdsCashPosition.Params[1].AsInteger  := cdsCashPositionMovementSOURCE_ACCID.AsInteger;
  cdsCashPosition.Open;

  cdsCashPositionMovementCASHPOS.AsFloat := cdsCashPositionAvCashAmount.AsFloat;
end;

procedure TfrmCashPositionMovement.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccountRDN.Close;
    cdsLuAccountRDN.Open;

    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuActLedTypeCash.Close;
    cdsLuActLedTypeCash.Open;
  end;
end;

procedure TfrmCashPositionMovement.FormShow(Sender: TObject);
var
  sSeqNo: string;
  iSeqNo: Int64;
begin
  inherited;
  if dsSubject.DataSet.State in [dsInsert] then
  begin
    iSeqNo := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHPOSMOVE');
    sSeqNo := FormatFloat('0000000000',iSeqNo);

    dsSubject.DataSet.FieldByName('CMPOSID').AsLargeInt   := iSeqNo;
    dsSubject.DataSet.FieldByName('CMPOSDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
    dsSubject.DataSet.FieldByName('CMPOSCODE').AsString   := 'CP-'+FormatDateTime('MMYYYY',dmGlobal.RemoteServer.GetTransDate)+'-'+sSeqNo;
    dsSubject.DataSet.FieldByName('ENTRYDATE').AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  end
  else
  begin
    if cdsCashPositionMovement.State in dsEditModes then
    begin
      with dmGlobal.IntDataLookup do
      begin
        if cdsLuAccountByEntity.Locate('ACCID', cdsCashPositionMovementSOURCE_ACCID.AsInteger, []) then
          cdsCashPositionMovementSOURCEACCNAME.AsString := cdsLuAccountByEntityACCNAME.AsString;

        if cdsLuAccountByEntity.Locate('ACCID', cdsCashPositionMovementTARGET_ACCID.AsInteger, []) then
          cdsCashPositionMovementTARGETACCNAME.AsString := cdsLuAccountByEntityACCNAME.AsString;

      end;
    end;
  end;
end;

procedure TfrmCashPositionMovement.txtSourceAccIDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger, True) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;
        dsSubject.DataSet.FieldByName('SOURCE_ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('SOURCEACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;

        txtSourceAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
        FEntityID             := cdsLuAccountMultiFilterENTTID.AsInteger;

      end;
    end;
  end;
end;

procedure TfrmCashPositionMovement.txtTargetAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if dsSubject.DataSet.FieldByName('SOURCE_ACCID').IsNull then
    begin
      dmGlobal.ErrorMessage('Please fill source account first!');
      exit;
    end;

    if frmLuAccount.RunByEntity(dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger, FEntityID) = mrOK then
    begin
      dsSubject.DataSet.FieldByName('TARGET_ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
      dsSubject.DataSet.FieldByName('TARGETACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;

      txtTargetAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
    end;
  end;
end;

end.
