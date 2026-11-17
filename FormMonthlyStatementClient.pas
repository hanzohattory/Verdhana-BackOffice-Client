unit FormMonthlyStatementClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.ActnList, NDatasetAction, WinAPI.ShellAPI;

type
  TfrmMonthlyStatementClient = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    grdMonthlyStatement: TcxGrid;
    gvwMonthlyStatement: TcxGridDBTableView;
    grdMonthlyStatementLevel1: TcxGridLevel;
    dsMonthlyStatementClient: TDataSource;
    gvwMonthlyStatementACCID: TcxGridDBColumn;
    gvwMonthlyStatementACCCODE: TcxGridDBColumn;
    gvwMonthlyStatementPROCESS_NAME: TcxGridDBColumn;
    gvwMonthlyStatementMAIL_SUBJECT: TcxGridDBColumn;
    gvwMonthlyStatementMAIL_TO: TcxGridDBColumn;
    gvwMonthlyStatementMAIL_MESSAGE: TcxGridDBColumn;
    gvwMonthlyStatementMAIL_OBJECT_FILENAME: TcxGridDBColumn;
    gvwMonthlyStatementMAIL_STATUS: TcxGridDBColumn;
    gvwMonthlyStatementNOTES: TcxGridDBColumn;
    aclClientStatement: TActionList;
    actViewDoc: TNAction;
    popClientStatement: TPopupMenu;
    ViewClientStatementDocument1: TMenuItem;
    procedure actViewDocExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    tempPath: string;
  public
    { Public declarations }
  end;

var
  frmMonthlyStatementClient: TfrmMonthlyStatementClient;

implementation

{$R *.dfm}

uses FormMonthlyStatementProcess, DataGlobal;

procedure TfrmMonthlyStatementClient.actViewDocExecute(Sender: TObject);
var
  BlobStream: TStream;
  FileName : string;
  wFileName : array [0..255] of WideChar;
  oDataset: TDataset;
begin
  oDataset := dsMonthlyStatementClient.DataSet;

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

procedure TfrmMonthlyStatementClient.FormCreate(Sender: TObject);
begin
  tempPath := ExtractFilePath(Application.ExeName)+'temp\';
  if not DirectoryExists(tempPath) then CreateDir(tempPath);

  gvwMonthlyStatement.ApplyBestFit();
end;

end.
