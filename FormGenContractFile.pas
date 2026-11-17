unit FormGenContractFile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, cxMemo,
  cxDBEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.ActnList, NDatasetAction, WinAPI.ShellAPI;

type
  TfrmGenContractFile = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    grdContractFile: TcxGrid;
    gvwContractFile: TcxGridDBTableView;
    gvwContractFileACCID: TcxGridDBColumn;
    gvwContractFileACCCODE: TcxGridDBColumn;
    gvwContractFilePROCESS_NAME: TcxGridDBColumn;
    gvwContractFileMAIL_SUBJECT: TcxGridDBColumn;
    gvwContractFileMAIL_TO: TcxGridDBColumn;
    gvwContractFileMAIL_MESSAGE: TcxGridDBColumn;
    gvwContractFileMAIL_OBJECT_FILENAME: TcxGridDBColumn;
    gvwContractFileMAIL_STATUS: TcxGridDBColumn;
    gvwContractFileNOTES: TcxGridDBColumn;
    grdContractFileLevel1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dsGenContract: TDataSource;
    dsGenContractFile: TDataSource;
    popContractFile: TPopupMenu;
    ViewClientStatementDocument1: TMenuItem;
    aclContractFile: TActionList;
    actViewDoc: TNAction;
    procedure actViewDocExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    tempPath: String;
  public
    { Public declarations }
  end;

var
  frmGenContractFile: TfrmGenContractFile;

implementation

{$R *.dfm}

uses FormContracts;

procedure TfrmGenContractFile.actViewDocExecute(Sender: TObject);
var
  BlobStream: TStream;
  FileName : string;
  wFileName : array [0..255] of WideChar;
  oDataset: TDataset;
begin
  oDataset := dsGenContractFile.DataSet;

  FileName := oDataset.FieldByName('MAIL_OBJECT_FILENAME').AsString;
  FileName := tempPath+Filename;
  BlobStream := oDataset.CreateBlobStream(oDataset.FieldByName('MAIL_OBJECT_FILE'),bmRead);
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
  if FileExists(FileName) then
    ShellExecute(Handle, 'open', StringToWideChar(FileName,wFileName,255) , nil, nil, SW_SHOWNORMAL) ;
end;

procedure TfrmGenContractFile.FormCreate(Sender: TObject);
begin
  tempPath := ExtractFilePath(Application.ExeName)+'temp\';
  if not DirectoryExists(tempPath) then CreateDir(tempPath);

  gvwContractFile.ApplyBestFit();
end;

end.
