unit FormNextOfYearProcess;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMemo, cxPC, dxLayoutContainer, cxClasses, Vcl.StdCtrls, cxButtons,
  dxLayoutControl;

type
  TfrmNextOfYearProcess = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    btnOK: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    mmLog: TcxMemo;
    dxLayoutControl2: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    edEndOfYear: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edNextOfYear: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edEndOfYearKeyPress(Sender: TObject; var Key: Char);
    procedure edEndOfYearExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNextOfYearProcess: TfrmNextOfYearProcess;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmNextOfYearProcess.cxButton1Click(Sender: TObject);
var
  sMsg: string;
begin
  dmGlobal.RemoteServer.NextOfYearProcess(edEndOfYear.EditValue, edNextOfYear.EditValue, sMsg);
  mmLog.Lines.Add(sMsg);
  Application.ProcessMessages;
end;

procedure TfrmNextOfYearProcess.edEndOfYearExit(Sender: TObject);
var
  iNextOfYear: Integer;
begin
  iNextOfYear := StrToInt(edEndOfYear.EditValue);
  Inc(iNextOfYear);

  edNextOfYear.EditValue := IntToStr(iNextOfYear);
end;

procedure TfrmNextOfYearProcess.edEndOfYearKeyPress(Sender: TObject;
  var Key: Char);
var
  iNextOfYear: Integer;
begin
  if Key = #13 then
  begin
    iNextOfYear := StrToInt(edEndOfYear.EditValue);
    Inc(iNextOfYear);

    edNextOfYear.EditValue := IntToStr(iNextOfYear);
  end;
end;

procedure TfrmNextOfYearProcess.FormShow(Sender: TObject);
var
  dtTrans: TDateTime;
  iDate, iMonth, iYear: Word;
  iNextOfYear: Integer;
begin
  dtTrans := dmGlobal.RemoteServer.GetTransDate;

  DecodeDate(dtTrans, iYear, iMonth, iDate);
  iNextOfYear := iYear;
  Inc(iNextOfYear);

  edEndOfYear.EditValue  := IntToStr(iYear);
  edNextOfYear.EditValue := IntToStr(iNextOfYear);
end;

end.
