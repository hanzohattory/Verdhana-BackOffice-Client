unit FormSendMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxMemo, cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxImageComboBox,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Datasnap.DBClient, NClientDataset,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxDateRanges;

type
  TfrmSendMail = class(TForm)
    dsSubject: TDataSource;
    dsAttachment: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    gvwAttachment: TcxGridDBBandedTableView;
    gvwAttachmentEMAIL_OBJECT_FILENAME: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBDateEdit2: TcxDBDateEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    popAttachment: TPopupMenu;
    ViewFile1: TMenuItem;
    cdsSendEmailView: TNClientDataset;
    cdsSendEmailViewSENDID: TLargeintField;
    cdsSendEmailViewEMAILID: TLargeintField;
    cdsSendEmailViewEMAILTO: TStringField;
    cdsSendEmailViewEMAILCC: TStringField;
    cdsSendEmailViewEMAILBCC: TStringField;
    cdsSendEmailViewEMAILSUBJECT: TStringField;
    cdsSendEmailViewEMAILMESSAGE: TMemoField;
    cdsSendEmailViewEMAILSTATUS: TStringField;
    cdsSendEmailViewSENDDA: TDateTimeField;
    cdsSendEmailViewSENDUI: TStringField;
    cdsSendEmailViewMODDA: TDateTimeField;
    cdsSendEmailViewMODUI: TStringField;
    cdsSendEmailViewEMAILTYPE: TStringField;
    cdsSendEmailViewEMAILDATE: TDateField;
    cdsSendEmailViewLINKID: TLargeintField;
    cdsSendEmailViewACCID: TIntegerField;
    cdsSendEmailViewACCCODE: TStringField;
    cdsSendEmailViewACCNAME: TStringField;
    cdsSendEmailViewqrySendEmailAttachmentView: TDataSetField;
    cdsSendEmailAttachmentView: TNClientDataset;
    cdsSendEmailAttachmentViewSENDID: TLargeintField;
    cdsSendEmailAttachmentViewSEQID: TIntegerField;
    cdsSendEmailAttachmentViewEMAIL_OBJECT_FILENAME: TStringField;
    cdsSendEmailAttachmentViewEMAIL_OBJECT_FILE: TBlobField;
    cxDBMemo2: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cdsSendEmailViewSENDINFO: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure ViewFile1Click(Sender: TObject);
    procedure cdsSendEmailViewAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FMailMessage: String;
  public
    { Public declarations }
    procedure ViewSendMail(AEmailID: Integer);
  end;

var
  frmSendMail: TfrmSendMail;

implementation

{$R *.dfm}

uses FormEmailMonitoring, DataGlobal;

procedure TfrmSendMail.cdsSendEmailViewAfterOpen(DataSet: TDataSet);
var
  sTemp: TStringList;
begin
//  Self.Caption := Self.Caption + ' ID : ' + dsSubject.DataSet.FieldByName('SENDID').AsString;
//  sTemp := TStringList.Create;
//  Try
//    sTemp.Text := dsSubject.DataSet.FieldByName('EMAILMESSAGE').AsString;
//    FMailMessage := dmGlobal.AppPath + 'cache\index' + FormatDateTime('yyyyMMddhhnnss', Now) + '.html';
//    sTemp.SaveToFile(FMailMessage);
//  Finally
//    FreeAndNil(sTemp);
//  End;
end;

procedure TfrmSendMail.FormCreate(Sender: TObject);
begin
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuEmailType.Active then
      cdsLuEmailType.Open;
  end;
end;

procedure TfrmSendMail.FormDestroy(Sender: TObject);
begin
  if FileExists(FMailMessage) then
  begin
    DeleteFile(FMailMessage);
  end;
end;

procedure TfrmSendMail.ViewFile1Click(Sender: TObject);
var
  BlobStream: TStream;
  tempPath, FileName : string;
  oDataset: TDataset;
begin
  oDataset := dsAttachment.DataSet;

  if not oDataset.IsEmpty then
  begin
    tempPath := dmGlobal.AppPath + 'temp\';
    if not DirectoryExists(tempPath) then CreateDir(tempPath);

    FileName := oDataset.FieldByName('EMAIL_OBJECT_FILENAME').AsString;
    FileName := tempPath+Filename;
    BlobStream := oDataset.CreateBlobStream(oDataset.FieldByName('EMAIL_OBJECT_FILE'),bmRead);
    try
      BlobStream.Seek(0, soFromBeginning);

      with TFileStream.Create(FileName, fmCreate) do
        try
          CopyFrom(BlobStream, BlobStream.Size)
        finally
          Free
        end;
    finally
      BlobStream.Free
    end;

    dmGlobal.OpenFile(FileName);
  end;
end;

procedure TfrmSendMail.ViewSendMail(AEmailID: Integer);
var
  oForm: TfrmSendMail;
begin
  oForm := TfrmSendMail.Create(nil);
  Try
    with oForm do
    begin
      cdsSendEmailView.Close;
      cdsSendEmailView.Params[0].AsInteger := AEmailID;
      cdsSendEmailView.Open;

      if not cdsSendEmailView.IsEmpty then
      begin
        ShowModal;
      end;
    end;

  Finally
    FreeAndNil(oForm);
  End;
end;

Initialization
  RegisterClass(TfrmSendMail);

end.
