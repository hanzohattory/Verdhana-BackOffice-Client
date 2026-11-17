unit FormSendEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxMemo, cxRichEdit, cxDBRichEdit, cxPC, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxImageComboBox,
  dxLayoutControl, Vcl.ActnList, NDatasetAction, Datasnap.DBClient,
  NClientDataset,
  cxButtonEdit, dxBarBuiltInMenu,
  System.Actions, dxDateRanges;

type
  TfrmSendEmail = class(TForm)
    dsAttachment: TDataSource;
    popAttachment: TPopupMenu;
    AddAttachmentFile1: TMenuItem;
    ChangeAttachmentFile1: TMenuItem;
    DeleteAttachmentFile1: TMenuItem;
    ViewAttachmentFile1: TMenuItem;
    aclEmail: TActionList;
    actAdd: TNAction;
    actChange: TNAction;
    actDelete: TNAction;
    actView: TNAction;
    dsSubject: TDataSource;
    odDocs: TOpenDialog;
    dxLayoutControl1: TdxLayoutControl;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxPageControl2: TcxPageControl;
    tabAttachment: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwAttachment: TcxGridDBBandedTableView;
    gvwAttachmentEMAIL_OBJECT_FILENAME: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    tabNotes: TcxTabSheet;
    cxDBRichEdit2: TcxDBRichEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cdsEmail: TNClientDataset;
    cdsEmailEMAILID: TLargeintField;
    cdsEmailEMAILTYPE: TStringField;
    cdsEmailEMAILDATE: TDateField;
    cdsEmailLINKID: TLargeintField;
    cdsEmailACCID: TIntegerField;
    cdsEmailACCCODE: TStringField;
    cdsEmailACCNAME: TStringField;
    cdsEmailEMAILTO: TStringField;
    cdsEmailEMAILCC: TStringField;
    cdsEmailEMAILBCC: TStringField;
    cdsEmailEMAILSUBJECT: TStringField;
    cdsEmailEMAILMESSAGE: TMemoField;
    cdsEmailEMAILSTATUS: TStringField;
    cdsEmailNOTES: TMemoField;
    cdsEmailMODDA: TDateTimeField;
    cdsEmailMODUI: TStringField;
    cdsEmailAPPDA: TDateTimeField;
    cdsEmailAPPUI: TStringField;
    cdsEmailUNDER4Y: TIntegerField;
    cdsEmailUNDER4YDA: TDateTimeField;
    cdsEmailNOTES4Y: TStringField;
    cdsEmailISDEL: TIntegerField;
    cdsEmailID: TLargeintField;
    cdsEmailqryEmailAttachmentView: TDataSetField;
    cdsEmailAttachment: TNClientDataset;
    cdsEmailAttachmentEMAILID: TLargeintField;
    cdsEmailAttachmentSEQID: TIntegerField;
    cdsEmailAttachmentEMAIL_OBJECT_FILENAME: TStringField;
    cdsEmailAttachmentEMAIL_OBJECT_FILE: TBlobField;
    cdsEmailAttachmentMODDA: TDateTimeField;
    cdsEmailAttachmentMODUI: TStringField;
    cdsEmailAttachmentAPPDA: TDateTimeField;
    cdsEmailAttachmentAPPUI: TStringField;
    cdsEmailAttachmentUNDER4Y: TIntegerField;
    cdsEmailAttachmentUNDER4YDA: TDateTimeField;
    cdsEmailAttachmentNOTES4Y: TStringField;
    cdsEmailAttachmentISDEL: TIntegerField;
    cdsEmailAttachmentID: TLargeintField;
    cdsEmailDraft: TNClientDataset;
    cdsEmailDraftEMAILTYPE: TStringField;
    cdsEmailDraftSMTPHOST: TStringField;
    cdsEmailDraftSMTPPORT: TIntegerField;
    cdsEmailDraftSMTPUSERNAME: TStringField;
    cdsEmailDraftSMTPPASSWORD: TStringField;
    cdsEmailDraftEMAILTO: TStringField;
    cdsEmailDraftEMAILCC: TStringField;
    cdsEmailDraftEMAILBCC: TStringField;
    cdsEmailDraftEMAILSUBJECT: TStringField;
    cdsEmailDraftEMAILMESSAGE: TMemoField;
    cdsEmailDraftMODDA: TDateTimeField;
    cdsEmailDraftMODUI: TStringField;
    cdsEmailDraftAPPDA: TDateTimeField;
    cdsEmailDraftAPPUI: TStringField;
    cdsEmailDraftUNDER4Y: TIntegerField;
    cdsEmailDraftUNDER4YDA: TDateTimeField;
    cdsEmailDraftNOTES4Y: TStringField;
    cdsEmailDraftISDEL: TIntegerField;
    cdsEmailDraftID: TLargeintField;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cdsAccContactUsage: TNClientDataset;
    cdsAccContactUsageACCID: TIntegerField;
    cdsAccContactUsageCUSGID: TIntegerField;
    cdsAccContactUsageCOUNTCODE: TStringField;
    cdsAccContactUsageCONTNAME: TStringField;
    cdsAccContactUsageCONTPHONE: TStringField;
    cdsAccContactUsageCONTMOBILE: TStringField;
    cdsAccContactUsageCONTADDRESS: TStringField;
    cdsAccContactUsageCONTEMAIL: TStringField;
    cdsAccContactUsageCONTFAX: TStringField;
    cdsAccContactUsageIDCARDTYPE: TStringField;
    cdsAccContactUsageIDCARDNO: TStringField;
    cdsAccContactUsageIDCARDEXPIRE: TDateField;
    cdsAccContactUsageSENDBYEMAIL: TStringField;
    cdsAccContactUsageSENDBYFAX: TStringField;
    cdsAccContactUsageSENDBYSMS: TStringField;
    cdsAccContactUsageSENDBYPOSTMAIL: TStringField;
    cdsAccContactUsageMODDA: TDateTimeField;
    cdsAccContactUsageMODUI: TStringField;
    cdsAccContactUsageAPPDA: TDateTimeField;
    cdsAccContactUsageAPPUI: TStringField;
    cdsAccContactUsageUNDER4Y: TIntegerField;
    cdsAccContactUsageUNDER4YDA: TDateTimeField;
    cdsAccContactUsageNOTES4Y: TStringField;
    cdsAccContactUsageISDEL: TIntegerField;
    cdsAccContactUsageID: TLargeintField;
    cdsAccContactUsageACCCODE: TStringField;
    cdsAccContactUsageACCNAME: TStringField;
    cdsAccContactUsageACCINIT: TStringField;
    cdsAccContactUsageACC_STS: TStringField;
    cdsEmailDraftCUSGID: TIntegerField;
    dxLayoutItem3: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    procedure actAddExecute(Sender: TObject);
    procedure actChangeExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
//    procedure webEditorConsoleMessage(Sender: TObject;
//      const browser: ICefBrowser; message, source: ustring; line: Integer;
//      out Result: Boolean);
//    procedure webEditorJsAlert(Sender: TObject; const browser: ICefBrowser;
//      const frame: ICefFrame; const message: ustring; out Result: Boolean);
//    procedure webEditorKeyEvent(Sender: TObject; const browser: ICefBrowser;
//      event: TCefHandlerKeyEventType; code, modifiers: Integer;
//      isSystemKey: Boolean; out Result: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actChangeUpdate(Sender: TObject);
    procedure cdsEmailNewRecord(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsEmailACCIDChange(Sender: TField);
  private
    { Private declarations }
    FBodyMessage: String;
    FFirstTabHTMLView: Boolean;
    FEditorFile: String;
  public
    { Public declarations }
    procedure UploadDocs(AFileName: string);
    function NewEmail(AccID: Integer; EmailType: String): Boolean;overload;
    function NewEmail(AccID: Integer; EmailType: String; AFileName: String): Boolean;overload;
    function NewEmail(AccID: Integer; EmailType: String; AFileName, AFileName2: String): Boolean;overload;
  end;

var
  frmSendEmail: TfrmSendEmail;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmSendEmail.actAddExecute(Sender: TObject);
begin
  if odDocs.Execute then
  begin
    if FileExists(odDocs.FileName) then
    begin
      dsAttachment.DataSet.Append;
      UploadDocs(odDocs.FileName);
      dsAttachment.DataSet.Post;
    end;
  end;
end;

procedure TfrmSendEmail.actChangeExecute(Sender: TObject);
begin
  if odDocs.Execute then
  begin
    if FileExists(odDocs.FileName) then
    begin
      dsAttachment.DataSet.Edit;
      UploadDocs(odDocs.FileName);
      dsAttachment.DataSet.Post;
    end;
  end;
end;

procedure TfrmSendEmail.actChangeUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := not dsAttachment.DataSet.IsEmpty;
end;

procedure TfrmSendEmail.actDeleteExecute(Sender: TObject);
begin
  dsAttachment.DataSet.Delete;
end;

procedure TfrmSendEmail.actViewExecute(Sender: TObject);
var
  BlobStream: TStream;
  tempPath, FileName : string;
  oDataset: TDataset;
begin
  oDataset := dsAttachment.DataSet;

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

procedure TfrmSendEmail.btnOKClick(Sender: TObject);

begin

  ModalResult := mrOk;
end;

procedure TfrmSendEmail.cdsEmailACCIDChange(Sender: TField);
begin
  if (not cdsEmailACCID.IsNull) and (not cdsEmailEMAILTYPE.IsNull) then
  begin
    if (cdsEmailDraft.Params[0].AsString <> cdsEmailEMAILTYPE.AsString)
      or (not cdsEmailDraft.Active) then
    begin
      cdsEmailDraft.Close;
      cdsEmailDraft.Params[0].AsString := cdsEmailEMAILTYPE.AsString;
      cdsEmailDraft.Open;
    end;

    if not cdsEmailDraft.IsEmpty then
    begin
      cdsEmailEMAILTO.AsString := cdsEmailDraftEMAILTO.AsString;
      cdsEmailEMAILCC.AsString := cdsEmailDraftEMAILCC.AsString;
      cdsEmailEMAILBCC.AsString := cdsEmailDraftEMAILBCC.AsString;
      cdsEmailEMAILSUBJECT.AsString := cdsEmailDraftEMAILSUBJECT.AsString;
      cdsEmailEMAILMESSAGE.AsString := cdsEmailDraftEMAILMESSAGE.AsString;

      cdsAccContactUsage.Close;
      cdsAccContactUsage.Params[0].AsInteger := cdsEmailACCID.AsInteger;
      cdsAccContactUsage.Params[1].AsInteger := cdsEmailDraftCUSGID.AsInteger;
      cdsAccContactUsage.Open;

      if not cdsAccContactUsage.IsEmpty then
      begin
        cdsEmailACCCODE.AsString := cdsAccContactUsageACCCODE.AsString;
        cdsEmailACCNAME.AsString := cdsAccContactUsageACCNAME.AsString;
      
        //Script for modify email content based on related account
        cdsEmailEMAILTO.AsString := StringReplace(cdsEmailEMAILTO.AsString, '[EMAILTO]',
          cdsAccContactUsageCONTEMAIL.AsString, [rfReplaceAll]);

        cdsEmailEMAILSUBJECT.AsString := StringReplace(
           cdsEmailEMAILSUBJECT.AsString, '[ACCNO]',
           cdsAccContactUsageACCCODE.AsString, [rfReplaceAll]);

        cdsEmailEMAILMESSAGE.AsString := StringReplace(
           cdsEmailEMAILMESSAGE.AsString, '[ACCNO]',
           cdsAccContactUsageACCCODE.AsString, [rfReplaceAll]);
        cdsEmailEMAILMESSAGE.AsString := StringReplace(
           cdsEmailEMAILMESSAGE.AsString, '[ACCNAME]',
           cdsAccContactUsageACCNAME.AsString, [rfReplaceAll]);
        cdsEmailEMAILMESSAGE.AsString := StringReplace(
           cdsEmailEMAILMESSAGE.AsString, '[EMAILID]',
           cdsEmailEMAILID.AsString, [rfReplaceAll]);
      end;

    end;
  end;
end;

procedure TfrmSendEmail.cdsEmailNewRecord(DataSet: TDataSet);
begin
  cdsEmailEMAILID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_EMAIL');
end;

procedure TfrmSendEmail.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if not TClientDataSet(dsSubject.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsSubject.DataSet.FieldByName('ACCID').AsInteger) = mrOK then
      begin
        if not (dsSubject.DataSet.State in dsEditModes) then
          dsSubject.DataSet.Edit;

        dsSubject.DataSet.FieldByName('ACCID').AsInteger := cdsLuAccountMultiFilterACCID.AsInteger;
        dsSubject.DataSet.FieldByName('ACCCODE').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsSubject.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
      end;
    end;
  end;
end;

procedure TfrmSendEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not TClientDataset(dsSubject.DataSet).ReadOnly then
  begin
    dsSubject.DataSet.FieldByName('EMAILMESSAGE').AsString := FBodyMessage;
  end;
end;

procedure TfrmSendEmail.FormDestroy(Sender: TObject);
begin
  if FileExists(FEditorFile) then
  begin
    DeleteFile(FEditorFile);
  end;
end;

function TfrmSendEmail.NewEmail(AccID: Integer; EmailType, AFileName,
  AFileName2: String): Boolean;
var
  oForm: TfrmSendEmail;
  processDateTime: TDateTime;
begin
  Result := False;
  oForm := TfrmSendEmail.Create(nil);
  Try
    with oForm do
    begin
      cdsEmailDraft.Close;
      cdsEmailDraft.Params[0].AsString := EmailType;
      cdsEmailDraft.Open;

      cdsEmail.Close;
      cdsEmail.Params[0].AsInteger := -1;
      cdsEmail.Open;

      cdsEmail.Append;
      cdsEmailEMAILTYPE.AsString := EmailType;
      cdsEmailACCID.AsInteger := AccID;
      cdsEmailEMAILDATE.AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

      cdsEmail.Post;

      if FileExists(AFileName) then
      begin
        cdsEmailAttachment.Append;
        UploadDocs(AFileName);
        cdsEmailAttachment.Post;
      end;

      if FileExists(AFileName2) then
      begin
        cdsEmailAttachment.Append;
        UploadDocs(AFileName2);
        cdsEmailAttachment.Post;
      end;

      if ShowModal = mrOk then
      begin
        if not (cdsEmail.State in dsEditModes) then
          cdsEmail.Edit;

        processDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
        cdsEmailMODDA.AsDateTime := processDateTime;
        cdsEmailMODUI.AsString := dmGlobal.UserID;
        cdsEmailISDEL.AsInteger := 0;
        cdsEmailID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_EMAIL');
        cdsEmail.Post;

        if cdsEmail.ApplyUpdates(0) = 0 then
        begin
          dmGlobal.RemoteServer.SendEmail(cdsEmailEMAILID.AsLargeInt);
          Result := True;
        end;
      end
      else
      begin
        dmGlobal.RemoteServer.CancelSeq('TBL_B_EMAIL', cdsEmailEMAILID.AsLargeInt);
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

function TfrmSendEmail.NewEmail(AccID: Integer; EmailType: String): Boolean;
begin
  Result := frmSendEmail.NewEmail(AccID, EmailType, '');
end;

function TfrmSendEmail.NewEmail(AccID: Integer; EmailType: String;
  AFileName: String): Boolean;
var
  oForm: TfrmSendEmail;
  processDateTime: TDateTime;
begin
  Result := False;
  oForm := TfrmSendEmail.Create(nil);
  Try
    with oForm do
    begin
      cdsEmailDraft.Close;
      cdsEmailDraft.Params[0].AsString := EmailType;
      cdsEmailDraft.Open;

      cdsEmail.Close;
      cdsEmail.Params[0].AsInteger := -1;
      cdsEmail.Open;

      cdsEmail.Append;
      cdsEmailEMAILTYPE.AsString := EmailType;
      cdsEmailACCID.AsInteger := AccID;
      cdsEmailEMAILDATE.AsDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);

      cdsEmail.Post;

      if FileExists(AFileName) then
      begin
        cdsEmailAttachment.Append;
        UploadDocs(AFileName);
        cdsEmailAttachment.Post;
      end;

      if ShowModal = mrOk then
      begin
        if not (cdsEmail.State in dsEditModes) then
          cdsEmail.Edit;

        processDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
        cdsEmailMODDA.AsDateTime := processDateTime;
        cdsEmailMODUI.AsString := dmGlobal.UserID;
        cdsEmailISDEL.AsInteger := 0;
        cdsEmailID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('main.B_EMAIL');
        cdsEmail.Post;

        if cdsEmail.ApplyUpdates(0) = 0 then
        begin
          dmGlobal.RemoteServer.SendEmail(cdsEmailEMAILID.AsLargeInt);
          Result := True;
        end;
      end
      else
      begin
        dmGlobal.RemoteServer.CancelSeq('TBL_B_EMAIL', cdsEmailEMAILID.AsLargeInt);
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmSendEmail.UploadDocs(AFileName: string);
var
  oFileStream: TFileStream;
  oDataSet: TDataSet;
begin
  oDataSet    := dsAttachment.DataSet;
  oFileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    oFileStream.Seek(0, soFromBeginning);
    TblobField(oDataSet.FieldByName('EMAIL_OBJECT_FILE')).LoadFromStream(oFileStream);
    oDataSet.FieldByName('EMAIL_OBJECT_FILENAME').AsString := ExtractFileName(AFileName);
  finally
    oFileStream.Free;
  end;
end;

//procedure TfrmSendEmail.webEditorConsoleMessage(Sender: TObject;
//  const browser: ICefBrowser; message, source: ustring; line: Integer;
//  out Result: Boolean);
//begin
//  FBodyMessage := message;
//  if not TClientDataset(dsSubject.DataSet).ReadOnly then
//  begin
//    dsSubject.DataSet.FieldByName('EMAILMESSAGE').AsString := FBodyMessage;
//  end;
//end;

//procedure TfrmSendEmail.webEditorJsAlert(Sender: TObject;
//  const browser: ICefBrowser; const frame: ICefFrame; const message: ustring;
//  out Result: Boolean);
//begin
//  FBodyMessage := message;
//  if not TClientDataset(dsSubject.DataSet).ReadOnly then
//  begin
//    dsSubject.DataSet.FieldByName('EMAILMESSAGE').AsString := FBodyMessage;
//  end;
//  Result := True;
//end;

//procedure TfrmSendEmail.webEditorKeyEvent(Sender: TObject;
//  const browser: ICefBrowser; event: TCefHandlerKeyEventType; code,
//  modifiers: Integer; isSystemKey: Boolean; out Result: Boolean);
//begin
//  webEditor.Browser.MainFrame.ExecuteJavaScript('console.debug(tinyMCE.get("description").getContent())', webEditor.Browser.MainFrame.Url, 0);
//end;

end.
