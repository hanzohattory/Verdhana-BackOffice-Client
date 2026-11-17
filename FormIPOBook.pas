unit FormIPOBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, Data.DB,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxGroupBox, cxRadioGroup, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox, Datasnap.DBClient,
  NClientDataset, FormIPOList;

type
  TfrmIPOBook = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsSubject: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    rgBookType: TcxDBRadioGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cbCust: TcxDBLookupComboBox;
    lcCustomer: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    cbOrderType: TcxDBImageComboBox;
    dxLayoutControl1Item14: TdxLayoutItem;
    edMaxPrice: TcxDBTextEdit;
    lcMaxPrice: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    lcCcy: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cdsIPOBook: TNClientDataset;
    cdsIPOBookBOOKID: TIntegerField;
    cdsIPOBookBOOKCODE: TStringField;
    cdsIPOBookBOOKDATE: TDateField;
    cdsIPOBookBOOKDESC: TStringField;
    cdsIPOBookBOOKTYPE: TStringField;
    cdsIPOBookIPOID: TIntegerField;
    cdsIPOBookCUST_NAME: TStringField;
    cdsIPOBookCUST_IDCARDTYPE: TStringField;
    cdsIPOBookCUST_IDCARDNO: TStringField;
    cdsIPOBookCUST_IDCARDEXPIRE: TDateField;
    cdsIPOBookCUST_ADDRESS: TStringField;
    cdsIPOBookCUST_PHONE: TStringField;
    cdsIPOBookCUST_FAX: TStringField;
    cdsIPOBookCUST_MAIL: TStringField;
    cdsIPOBookORDERTYPE: TStringField;
    cdsIPOBookORDERCCY: TStringField;
    cdsIPOBookORDERMAXPRICE: TFloatField;
    cdsIPOBookORDERVALUE: TFloatField;
    cdsIPOBookSTATUS: TStringField;
    cdsIPOBookMODDA: TDateTimeField;
    cdsIPOBookMODUI: TStringField;
    cdsIPOBookAPPDA: TDateTimeField;
    cdsIPOBookAPPUI: TStringField;
    cdsIPOBookUNDER4Y: TIntegerField;
    cdsIPOBookUNDER4YDA: TDateTimeField;
    cdsIPOBookNOTES4Y: TStringField;
    cdsIPOBookISDEL: TIntegerField;
    cdsIPOBookID: TLargeintField;
    cbIPO: TcxDBLookupComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    cdsIPOBookSCRIPNAME: TStringField;
    cdsIPOBookBOTPRICE: TFloatField;
    cdsIPOBookTOPPRICE: TFloatField;
    cdsIPOBookACCID: TIntegerField;
    cdsIPOBookDIST_TYPE: TStringField;
    cdsIPOBookORDERBASED: TStringField;
    cbBasedOrder: TcxDBImageComboBox;
    lcBasedOrder: TdxLayoutItem;
    procedure cbOrderTypeExit(Sender: TObject);
    procedure rgBookTypeExit(Sender: TObject);
    procedure cdsIPOBookNewRecord(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure cdsIPOBookACCIDChange(Sender: TField);
    procedure cbBasedOrderExit(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FBookCodeID: Int64;
  public
    { Public declarations }
    procedure Run(ABookID: Integer; AFormBrowse: TfrmIPOList);
  end;

var
  frmIPOBook: TfrmIPOBook;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmIPOBook }

procedure TfrmIPOBook.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to cdsIPOBook.FieldCount - 1 do
  begin
    if cdsIPOBook.Fields[i].Required then
    begin
      if cdsIPOBook.Fields[i].IsNull then
      begin
        dmGlobal.ErrorMessage(cdsIPOBook.Fields[i].DisplayName +' must have value ');
        Abort;
      end;
    end;
  end;

  if cdsIPOBookORDERTYPE.AsString = '2' then
  begin
    if (cdsIPOBookORDERMAXPRICE.AsFloat < cdsIPOBookBOTPRICE.AsFloat) or
      (cdsIPOBookORDERMAXPRICE.AsFloat > cdsIPOBookTOPPRICE.AsFloat) then
    begin
      MessageDlg('Order Max Price Must At Range of IPO Prediction Price: ' +
        FormatFloat('#,##0.00', cdsIPOBookBOTPRICE.AsFloat) + ' - ' +
        FormatFloat('#,##0.00', cdsIPOBookTOPPRICE.AsFloat), mtWarning, [mbOK],
        0);
      edMaxPrice.SetFocus;

      Abort;
    end;
  end;

  ModalResult := mrOk;
end;

procedure TfrmIPOBook.cbOrderTypeExit(Sender: TObject);
begin
  lcMaxPrice.Visible := cbOrderType.DataBinding.Field.AsString = '2';
end;

procedure TfrmIPOBook.cdsIPOBookACCIDChange(Sender: TField);
var
  oDataset: TDataSet;
begin
  oDataset := TcxLookupComboBoxProperties(
     cbCust.RepositoryItem.Properties).ListSource.DataSet;

  if oDataset.Locate('ACCID', cdsIPOBookACCID.Value, []) then
  begin
    cdsIPOBookCUST_NAME.AsString := oDataset.FieldByName('CUST_NAME').AsString;
    cdsIPOBookCUST_IDCARDTYPE.AsString := oDataset.FieldByName(
       'CUST_IDCARDTYPE').AsString;
    cdsIPOBookCUST_IDCARDNO.AsString := oDataset.FieldByName(
       'CUST_IDCARDNO').AsString;
    cdsIPOBookCUST_IDCARDEXPIRE.AsDateTime := oDataset.FieldByName(
       'CUST_IDCARDEXPIRE').AsDateTime;
    cdsIPOBookCUST_ADDRESS.AsString := oDataset.FieldByName(
       'CUST_ADDRESS').AsString;
    cdsIPOBookCUST_PHONE.AsString := oDataset.FieldByName(
       'CUST_PHONE').AsString;
    cdsIPOBookCUST_FAX.AsString := oDataset.FieldByName('CUST_FAX').AsString;
    cdsIPOBookCUST_MAIL.AsString := oDataset.FieldByName('CUST_MAIL').AsString;
  end;

end;

procedure TfrmIPOBook.cdsIPOBookNewRecord(DataSet: TDataSet);
var
  oDataset: TDataSet;
begin
  oDataset := FFormBrowse.cdsIPOList;

  FBookCodeID := dmGlobal.RemoteServer.GetSeq('TBL_IPO_BOOK_CODE');
  cdsIPOBookBOOKID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO_BOOK');
  cdsIPOBookBOOKCODE.AsString := 'IB' + '-' + Format('%.7d', [FBookCodeID]);
  cdsIPOBookIPOID.AsInteger := oDataset.FieldByName('IPOID').AsInteger;
  cdsIPOBookBOOKDATE.AsDateTime := FloatToDateTime(
     dmGlobal.RemoteServer.GetServerTimeStamp);
  cdsIPOBookSTATUS.AsString := 'O';
  cdsIPOBookORDERCCY.AsString := oDataset.FieldByName('CCY').AsString;
  cdsIPOBookORDERTYPE.AsString := '1';
end;

procedure TfrmIPOBook.cbBasedOrderExit(Sender: TObject);
begin
  lcCcy.Visible := cdsIPOBookORDERBASED.AsString = 'A';
end;

procedure TfrmIPOBook.rgBookTypeExit(Sender: TObject);
begin
  lcCustomer.Visible := rgBookType.DataBinding.Field.AsString = 'C';
end;

procedure TfrmIPOBook.Run(ABookID: Integer; AFormBrowse: TfrmIPOList);
var
  oForm: TfrmIPOBook;
begin
  oForm := TfrmIPOBook.Create(nil);
  Try
    with oForm do
    begin
      FFormBrowse := AFormBrowse;

      cdsIPOBook.Close;
      cdsIPOBook.Params[0].AsInteger := ABookID;
      cdsIPOBook.Open;

      lcMaxPrice.Visible := cbOrderType.DataBinding.Field.AsString = '2';
//      lcCustomer.Visible := rgBookType.DataBinding.Field.AsString = 'C';
      lcCcy.Visible := cbBasedOrder.DataBinding.Field.AsString = 'A';

      if cdsIPOBook.IsEmpty then
      begin
        cdsIPOBook.Append;
        cdsIPOBookBOOKTYPE.AsString := 'C';
      end
      else
        cdsIPOBook.Edit;

      if ShowModal = mrOk then
      begin
        if cdsIPOBook.State in dsEditModes then
          cdsIPOBook.Post;

        cdsIPOBook.ApplyUpdates(-1);
      end
      else
      begin
        if cdsIPOBook.State in [dsInsert] then
        begin
          dmGlobal.RemoteServer.CancelSeq('TBL_B_IPO_BOOK',
             cdsIPOBookBOOKID.AsInteger);
          dmGlobal.RemoteServer.CancelSeq('TBL_IPO_BOOK_CODE', FBookCodeID);
        end;

        cdsIPOBook.CancelUpdates;
      end;

    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
