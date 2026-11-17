unit FormEBlast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  Vcl.Menus, dxLayoutControlAdapters, dxSkinsdxStatusBarPainter, Data.DB,
  Datasnap.DBClient, NClientDataset, dxLayoutLookAndFeels, Vcl.Tabs,
  dxStatusBar, dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, cxMemo, cxTextEdit;

type
  TfrmEBlast = class(TfrmEditorData)
    cdsEBlast: TNClientDataset;
    cdsEBlastEBLAST_ID: TLargeintField;
    cdsEBlastEMAILSUBJECT: TStringField;
    cdsEBlastEMAILMESSAGE: TMemoField;
    cdsEBlastEMAIL_OBJECT_FILENAME: TStringField;
    cdsEBlastEMAIL_OBJECT_FILE: TBlobField;
    cdsEBlastMODDA: TDateTimeField;
    cdsEBlastMODUI: TStringField;
    cdsEBlastAPPDA: TDateTimeField;
    cdsEBlastAPPUI: TStringField;
    cdsEBlastUNDER4Y: TIntegerField;
    cdsEBlastUNDER4YDA: TDateTimeField;
    cdsEBlastNOTES4Y: TStringField;
    cdsEBlastISDEL: TIntegerField;
    cdsEBlastID: TLargeintField;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    odDocs: TOpenDialog;
    cdsEBlastEMAILTYPE: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    procedure btnOKClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure UploadDocs(AFileName: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEBlast: TfrmEBlast;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmEBlast.btnOKClick(Sender: TObject);
begin
  if cdsEBlast.State in [dsInsert] then
    cdsEBlastEBLAST_ID.AsInteger := dmGlobal.RemoteServer.GetSeq('main.B_EBLAST');
  inherited;
end;

procedure TfrmEBlast.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if odDocs.Execute then
  begin
    if FileExists(odDocs.FileName) then
      UploadDocs(odDocs.FileName);
  end;
end;

procedure TfrmEBlast.UploadDocs(AFileName: string);
var
  oFileStream: TFileStream;
  oDataSet: TDataSet;
begin
  oDataSet    := dsSubject.DataSet;
  oFileStream := TFileStream.Create(AFileName, fmOpenRead or fmShareDenyWrite);
  try
    oFileStream.Seek(0, soFromBeginning);
    TblobField(oDataSet.FieldByName('EMAIL_OBJECT_FILE')).LoadFromStream(oFileStream);
    oDataSet.FieldByName('EMAIL_OBJECT_FILENAME').Value := ExtractFileName(AFileName);
  finally
    oFileStream.Free;
  end;
end;

end.
