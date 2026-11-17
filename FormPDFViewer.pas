unit FormPDFViewer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutControlAdapters, Vcl.Menus, dxPDFCore,
  dxPDFBase, dxPDFText, dxPDFRecognizedObject, dxPDFDocument, dxBarBuiltInMenu,
  dxCustomPreview, dxPDFDocumentViewer, dxPDFViewer, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutControl, dxStatusBar;

type
  TfrmPDFViewer = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    PDFViewer: TdxPDFViewer;
    StatusBar: TdxStatusBar;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    procedure cxButton2Click(Sender: TObject);
  private
    FPDFStream: TMemoryStream;
    { Private declarations }
  public
    { Public declarations }

    property PDFStream: TMemoryStream read FPDFStream write FPDFStream;

    function Run(AStream: TMemoryStream): TModalResult;
  end;

var
  frmPDFViewer: TfrmPDFViewer;

implementation

{$R *.dfm}

{ TfrmPDFViewer }

procedure TfrmPDFViewer.cxButton2Click(Sender: TObject);
var
  sFileName: string;
  sExt: string;
begin
  sFileName := FormatDateTime('yyyymmdd', Now) + '-Pefindo.pdf';
  if SaveDialog.Execute then
    sFileName := SaveDialog.FileName;

  if sFileName <> '' then
  begin
    sExt := ExtractFileExt(sFileName);
    if sExt = '' then
      sFileName := sFileName + '.pdf';

    PDFStream.SaveToFile(sFileName);
    MessageDlg('File has been saved !', TMsgDlgType.mtInformation, [mbOk], 0);
  end;
end;

function TfrmPDFViewer.Run(AStream: TMemoryStream): TModalResult;
begin
  frmPDFViewer := TfrmPDFViewer.Create(nil);

  with frmPDFViewer do
  begin
    try
      PDFStream := AStream;
      PDFViewer.LoadFromStream(PDFStream);

      Result := ShowModal;
    finally
      FreeAndNil(frmPDFViewer);
    end;
  end;
end;

end.
