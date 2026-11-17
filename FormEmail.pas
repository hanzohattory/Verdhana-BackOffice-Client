unit FormEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxClasses, cxGridLevel, cxGrid, cxMemo, cxRichEdit, cxDBRichEdit, cxDBEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxImageComboBox, Data.DB,
  Vcl.Tabs, dxStatusBar, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, Vcl.ActnList, NDatasetAction, cxPCdxBarPopupMenu,
  cxPC, DBClient, Vcl.ExtCtrls, Vcl.DBCtrls, dxBarBuiltInMenu,
  System.Actions, dxLayoutLookAndFeels, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxDateRanges;

type
  TfrmEmail = class(TfrmEditorData)
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dsAttachment: TDataSource;
    popAttachment: TPopupMenu;
    aclEmail: TActionList;
    actAdd: TNAction;
    actChange: TNAction;
    actDelete: TNAction;
    actView: TNAction;
    odDocs: TOpenDialog;
    AddAttachmentFile1: TMenuItem;
    ChangeAttachmentFile1: TMenuItem;
    DeleteAttachmentFile1: TMenuItem;
    ViewAttachmentFile1: TMenuItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxPageControl2: TcxPageControl;
    dxLayoutControl1Item9: TdxLayoutItem;
    tabAttachment: TcxTabSheet;
    tabNotes: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwAttachment: TcxGridDBBandedTableView;
    gvwAttachmentEMAIL_OBJECT_FILENAME: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxDBRichEdit2: TcxDBRichEdit;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure actAddExecute(Sender: TObject);
    procedure actChangeExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actChangeUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actViewExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FBodyMessage: String;
//    FFirstTabHTMLView: Boolean;
    FEditorFile: String;
  public
    { Public declarations }
    procedure UploadDocs(AFileName: string);
  end;

var
  frmEmail: TfrmEmail;

implementation

{$R *.dfm}

uses FormEmailMonitoring, DataGlobal;

procedure TfrmEmail.actAddExecute(Sender: TObject);
begin
  inherited;
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

procedure TfrmEmail.actChangeExecute(Sender: TObject);
begin
  inherited;
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

procedure TfrmEmail.actChangeUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := not dsAttachment.DataSet.IsEmpty;
end;

procedure TfrmEmail.actDeleteExecute(Sender: TObject);
begin
  inherited;
  dsAttachment.DataSet.Delete;
end;

procedure TfrmEmail.actViewExecute(Sender: TObject);
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

procedure TfrmEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if not TClientDataset(dsSubject.DataSet).ReadOnly then
  begin
    dsSubject.DataSet.FieldByName('EMAILMESSAGE').AsString := FBodyMessage;
  end;
end;

procedure TfrmEmail.FormCreate(Sender: TObject);
//var
//  sTemp: TStringList;
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuEmailType.Active then
      cdsLuEmailType.Open;
  end;
//  FFirstTabHTMLView := True;
//  FEditorFile := dmGlobal.AppPath + 'Lib\index.html';
//  if FileExists(FEditorFile) then
//  begin
//    sTemp := TStringList.Create;
//    Try
//      sTemp.LoadFromFile(FEditorFile);
//      FBodyMessage := dsSubject.DataSet.FieldByName('EMAILMESSAGE').AsString;
//      sTemp.Text := StringReplace(sTemp.Text, '[Mail Body]', FBodyMessage, [rfReplaceAll]);
//      FEditorFile := dmGlobal.AppPath + 'cache\index' + FormatDateTime('yyyyMMddhhnnss', Now) + '.html';
//      sTemp.SaveToFile(FEditorFile);
//    Finally
//      FreeAndNil(sTemp);
//    End;
//  end;
end;

procedure TfrmEmail.FormDestroy(Sender: TObject);
begin
  inherited;
  if FileExists(FEditorFile) then
  begin
    DeleteFile(FEditorFile);
  end;
end;

procedure TfrmEmail.UploadDocs(AFileName: string);
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

initialization

end.
