unit FormCashDebetCreditNote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxButtonEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxCurrencyEdit;

type
  TfrmCashCreditDebitNote = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    StatusBar: TdxStatusBar;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dsSubject: TDataSource;
    cdsCashDCNote: TNClientDataset;
    cdsCashDCNoteCDBCRID: TIntegerField;
    cdsCashDCNoteCDBCRCODE: TStringField;
    cdsCashDCNoteJTYPE: TStringField;
    cdsCashDCNoteACCID: TIntegerField;
    cdsCashDCNoteTRDATE: TDateField;
    cdsCashDCNoteDUEDATE: TDateField;
    cdsCashDCNoteDC: TStringField;
    cdsCashDCNoteCCY: TStringField;
    cdsCashDCNoteAMOUNT: TFloatField;
    cdsCashDCNoteCCYFX: TStringField;
    cdsCashDCNoteEXRATE: TFloatField;
    cdsCashDCNoteAMOUNTFX: TFloatField;
    cdsCashDCNoteREMARK: TStringField;
    cdsCashDCNoteGLCDDB: TIntegerField;
    cdsCashDCNoteGLCDCR: TIntegerField;
    cdsCashDCNoteSTATUS: TStringField;
    cdsCashDCNotePROCESSDATE: TDateTimeField;
    cdsCashDCNoteCANCELDATE: TDateTimeField;
    cdsCashDCNoteACCCDATE: TDateTimeField;
    cdsCashDCNoteMODDA: TDateTimeField;
    cdsCashDCNoteMODUI: TStringField;
    cdsCashDCNoteAPPDA: TDateTimeField;
    cdsCashDCNoteAPPUI: TStringField;
    cdsCashDCNoteUNDER4Y: TIntegerField;
    cdsCashDCNoteUNDER4YDA: TDateTimeField;
    cdsCashDCNoteNOTES4Y: TStringField;
    cdsCashDCNoteISDEL: TIntegerField;
    cdsCashDCNoteID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    edAccount: TcxDBButtonEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBRadioGroup1: TcxDBRadioGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cbCcy: TcxDBLookupComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    edExRate: TcxDBTextEdit;
    lcExRate: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcAmountFx: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cdsCashDCNoteACCODE: TStringField;
    cdsCashDCNoteACCNAME: TStringField;
    cdsExRateValue: TNClientDataset;
    cdsExRateValueCCY_CODE_FROM: TStringField;
    cdsExRateValueCCY_CODE_TO: TStringField;
    cdsExRateValueEFFECTIVE_DATE: TDateField;
    cdsExRateValueCONVERSION_VALUE: TFloatField;
    cdsExRateValueINVERSE_CONVERSION_VALUE: TFloatField;
    cdsExRateValueMODDA: TDateTimeField;
    cdsExRateValueMODUI: TStringField;
    cdsExRateValueAPPDA: TDateTimeField;
    cdsExRateValueAPPUI: TStringField;
    cdsExRateValueUNDER4Y: TIntegerField;
    cdsExRateValueUNDER4YDA: TDateTimeField;
    cdsExRateValueNOTES4Y: TStringField;
    cdsExRateValueISDEL: TIntegerField;
    cdsExRateValueID: TLargeintField;
    cdsCashDCNoteCURR_EXRATE: TFloatField;
    cdsCashDCNoteCURR_AMTFX: TFloatField;
    cdsCashDCNoteJRNHID: TLargeintField;
    cdsCashDCNoteJRN_POSTED: TStringField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure edAccountPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsCashDCNoteNewRecord(DataSet: TDataSet);
    procedure cbCcyPropertiesChange(Sender: TObject);
    procedure cdsCashDCNoteCCYChange(Sender: TField);
    procedure cdsCashDCNoteAMOUNTChange(Sender: TField);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Run(ACRDBNoteID: Integer): Boolean;
    function New(AccID: Integer): Boolean;
    procedure View(ACRDBNoteID: Integer);
  end;

var
  frmCashCreditDebitNote: TfrmCashCreditDebitNote;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormLuAccount;

{ TfrmCashCreditDebitNote }

procedure TfrmCashCreditDebitNote.btnOKClick(Sender: TObject);
begin
  if messagedlg('Are you sure posting this note?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        ModalResult := mrOk;
end;

procedure TfrmCashCreditDebitNote.cbCcyPropertiesChange(Sender: TObject);
begin
  lcExRate.Enabled := (cdsCashDCNoteCCYFX.AsString <> cbCcy.EditValue);
end;

procedure TfrmCashCreditDebitNote.cdsCashDCNoteAMOUNTChange(Sender: TField);
begin
  if (not cdsCashDCNoteAMOUNT.IsNull) and (not cdsCashDCNoteEXRATE.IsNull) then
  begin
    cdsCashDCNoteAMOUNTFX.AsFloat := cdsCashDCNoteAMOUNT.AsFloat * cdsCashDCNoteEXRATE.AsFloat;
  end;
end;

procedure TfrmCashCreditDebitNote.cdsCashDCNoteCCYChange(Sender: TField);
begin
  if (not cdsCashDCNoteCCY.IsNull) and (not cdsCashDCNoteCCYFX.IsNull)
    and (not cdsCashDCNoteTRDATE.IsNull) then
  begin
    if cdsCashDCNoteCCY.AsString = cdsCashDCNoteCCYFX.AsString then
    begin
      cdsCashDCNoteEXRATE.AsFloat := 1;
    end
    else
    begin
      cdsExRateValue.Close;
      cdsExRateValue.Params[0].AsString := cdsCashDCNoteCCY.AsString;
      cdsExRateValue.Params[1].AsString := cdsCashDCNoteCCYFX.AsString;
      cdsExRateValue.Params[2].AsDate := cdsCashDCNoteTRDATE.AsDateTime;
      cdsExRateValue.Open;

      if not cdsExRateValue.IsEmpty then
      begin
        cdsCashDCNoteEXRATE.AsFloat      := cdsExRateValueCONVERSION_VALUE.AsFloat;
        cdsCashDCNoteCURR_EXRATE.AsFloat := cdsExRateValueCONVERSION_VALUE.AsFloat;
        cdsCashDCNoteCURR_AMTFX.AsFloat  := cdsExRateValueCONVERSION_VALUE.AsFloat;
      end;
    end;
  end;
end;

procedure TfrmCashCreditDebitNote.cdsCashDCNoteNewRecord(DataSet: TDataSet);
begin
  cdsCashDCNoteCDBCRCODE.AsString := '<AUTO>';
  cdsCashDCNoteTRDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsCashDCNoteDUEDATE.AsDateTime := cdsCashDCNoteTRDATE.AsDateTime;
  cdsCashDCNoteCCY.AsString := dmGlobal.RemoteServer.GetLocalCCY;
  cdsCashDCNoteCCYFX.AsString := cdsCashDCNoteCCY.AsString;
  cdsCashDCNoteEXRATE.AsFloat := 1;
  cdsCashDCNoteAMOUNT.AsFloat := 0;
  cdsCashDCNoteAMOUNTFX.AsFloat := 0;
  cdsCashDCNoteDC.AsString := 'D';
end;

procedure TfrmCashCreditDebitNote.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  if cdsCashDCNoteJTYPE.AsString = '' then btnOK.Enabled := false else btnOK.Enabled := true;

end;

procedure TfrmCashCreditDebitNote.edAccountPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger) = mrOK then
      begin
        dsSubject.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
      end;
    end;
  end;
end;

procedure TfrmCashCreditDebitNote.FormShow(Sender: TObject);
begin
  lcExRate.Enabled := (cdsCashDCNoteCCYFX.AsString <> cbCcy.EditValue);
  if cdsCashDCNoteJTYPE.AsString = '' then btnOK.Enabled := false else btnOK.Enabled := true;
end;

function TfrmCashCreditDebitNote.New(AccID: Integer): Boolean;
var
  oForm: TfrmCashCreditDebitNote;
  dtProcess: TDateTime;
begin
  Result := False;
  oForm := TfrmCashCreditDebitNote.Create(nil);
  Try
    with oForm do
    begin
      cdsCashDCNote.Close;
      cdsCashDCNote.Params[0].AsInteger := -1;
      cdsCashDCNote.Open;

      StatusBar.Panels[0].Text := 'New Data';
      Caption := 'New ' + Caption;

      cdsCashDCNote.Append;
      cdsCashDCNoteACCID.AsInteger := AccID;

      if (ShowModal = mrOk) then
      begin
        if cdsCashDCNoteJTYPE.AsString = '' then
        begin
          MessageDlg('Journal Type can not be null...', mtWarning, [mbOk], 0);
          Result := False;
          Exit;
        end;

        if not cdsCashDCNote.ReadOnly then
        begin
          if cdsCashDCNote.State in dsEditModes then
          begin
            if cdsCashDCNote.State in [dsInsert] then
            begin
              cdsCashDCNoteCDBCRID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHDBCRNOTE');
              cdsCashDCNoteCDBCRCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                cdsCashDCNoteTRDATE.AsDateTime, 'CDC', 'TBL_B_CASHDBCRNOTE');
              cdsCashDCNoteSTATUS.AsString := 'O';
              cdsCashDCNoteISDEL.AsInteger := 0;
            end;

            dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
            if dmGlobal.IntDataLookup.cdsJrnType.Locate('JTYPE', cdsCashDCNoteJTYPE.AsString, []) then
            begin
              if cdsCashDCNoteDC.AsString = 'D' then
                cdsCashDCNoteGLCDCR.AsInteger := dmGlobal.IntDataLookup.cdsJrnTypeGLCDDBID.AsInteger
              else
                cdsCashDCNoteGLCDDB.AsInteger := dmGlobal.IntDataLookup.cdsJrnTypeGLCDDBID.AsInteger
            end;
            cdsCashDCNoteMODDA.AsDateTime := dtProcess;
            cdsCashDCNoteMODUI.AsString := dmGlobal.UserID;
            cdsCashDCNote.Post;

            if cdsCashDCNote.ApplyUpdates(0) = 0 then
            begin
              Result := True;
            end;
          end;
        end;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

function TfrmCashCreditDebitNote.Run(ACRDBNoteID: Integer): Boolean;
var
  oForm: TfrmCashCreditDebitNote;
  dtProcess: TDateTime;
begin
  Result := False;

  oForm := TfrmCashCreditDebitNote.Create(nil);
  Try
    with oForm do
    begin
      cdsCashDCNote.Close;
      cdsCashDCNote.Params[0].AsInteger := ACRDBNoteID;
      cdsCashDCNote.Open;

      if not cdsCashDCNote.IsEmpty then
      begin
        if cdsCashDCNoteSTATUS.AsString <> 'O' then
        begin
          StatusBar.Panels[0].Text := 'View Data';
          Caption := 'View ' + Caption;
          cdsCashDCNote.ReadOnly := True;
        end
        else
        begin
          StatusBar.Panels[0].Text := 'Edit Data';
          Caption := 'Edit ' + Caption;
        end;
      end
      else
      begin
        StatusBar.Panels[0].Text := 'New Data';
        Caption := 'New ' + Caption;

        cdsCashDCNote.Append;
      end;

      if ShowModal = mrOk then
      begin
        if not cdsCashDCNote.ReadOnly then
        begin
          if cdsCashDCNote.State in dsEditModes then
          begin
            if cdsCashDCNote.State in [dsInsert] then
            begin
              cdsCashDCNoteCDBCRID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_CASHDBCRNOTE');
              cdsCashDCNoteCDBCRCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(
                cdsCashDCNoteTRDATE.AsDateTime, 'CDC', 'TBL_B_CASHDBCRNOTE');
              cdsCashDCNoteSTATUS.AsString := 'O';
              cdsCashDCNoteISDEL.AsInteger := 0;
            end;

            dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
            if dmGlobal.IntDataLookup.cdsJrnType.Locate('JTYPE', cdsCashDCNoteJTYPE.AsString, []) then
            begin
              if cdsCashDCNoteDC.AsString = 'D' then
                cdsCashDCNoteGLCDCR.AsInteger := dmGlobal.IntDataLookup.cdsJrnTypeGLCDDBID.AsInteger
              else
                cdsCashDCNoteGLCDDB.AsInteger := dmGlobal.IntDataLookup.cdsJrnTypeGLCDDBID.AsInteger
            end;
            cdsCashDCNoteMODDA.AsDateTime := dtProcess;
            cdsCashDCNoteMODUI.AsString := dmGlobal.UserID;
            cdsCashDCNote.Post;

            if cdsCashDCNote.ApplyUpdates(0) = 0 then
            begin
              Result := True;
            end;
          end;
        end;
      end;

    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmCashCreditDebitNote.View(ACRDBNoteID: Integer);
var
  oForm: TfrmCashCreditDebitNote;
begin
  oForm := TfrmCashCreditDebitNote.Create(nil);
  Try
    with oForm do
    begin
      cdsCashDCNote.Close;
      cdsCashDCNote.Params[0].AsInteger := ACRDBNoteID;
      cdsCashDCNote.Open;

      if not cdsCashDCNote.IsEmpty then
      begin
        StatusBar.Panels[0].Text := 'View Data';
        Caption := 'View ' + Caption;
        cdsCashDCNote.ReadOnly := True;

        ShowModal;
      end;

    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
