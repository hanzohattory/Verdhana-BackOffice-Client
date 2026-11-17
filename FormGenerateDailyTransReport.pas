unit FormGenerateDailyTransReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxClasses, dxLayoutControl, dxBarBuiltInMenu,
  cxMemo, cxPC, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Data.DB, Datasnap.DBClient, NClientDataset;

type
  TfrmGenerateDailyTransReport = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtValue: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    mmLog: TcxMemo;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cdsLTHReport: TNClientDataset;
    cdsMJNReport: TNClientDataset;
    cdsREPReport: TNClientDataset;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    cdsLTHReportDATA: TStringField;
    cdsMJNReportDATA: TMemoField;
    cdsREPReportDATA: TMemoField;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerateDailyTransReport: TfrmGenerateDailyTransReport;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmGenerateDailyTransReport.cxButton1Click(Sender: TObject);
var
  oLTHReport,
  oMarginReport,
  oRepoReport: TStringList;
  sFileName: string;
  sCompanyCode: string;
begin
  if (dmGlobal.DailyReportFolder = '') or (not DirectoryExists(dmGlobal.DailyReportFolder)) then
  begin
    MessageDlg('Directory does not exit, please check application setting', mtError, [mbOk], 0);
    Abort;
  end;

  try
    sCompanyCode := dmGlobal.RemoteServer.GetBrokerCode;

    oLTHReport := TStringList.Create;
    sFileName  := dmGlobal.DailyReportFolder+sCompanyCode+'-LTH'+FormatDateTime('yyyymmdd', dtValue.Date)+'.lth';

    cdsLTHReport.Close;
    cdsLTHReport.Params[0].AsDate := dtValue.Date;
    cdsLTHReport.Open;

    cdsLTHReport.First;
    while not cdsLTHReport.Eof do
    begin
      oLTHReport.Add(cdsLTHReportDATA.AsString);
      cdsLTHReport.Next;
    end;
  finally
    oLTHReport.SaveToFile(sFileName);
    FreeAndNil(oLTHReport);

    mmLog.Lines.add('LTH report has been save to '+ sFileName);
    Application.ProcessMessages;
  end;

  try
    oMarginReport := TStringList.Create;
    sFileName     := dmGlobal.DailyReportFolder+sCompanyCode+'-MARJIN'+FormatDateTime('yyyymmdd', dtValue.Date)+'.mjn';

    cdsMJNReport.Close;
    cdsMJNReport.Params[0].AsDate := dtValue.Date;
    cdsMJNReport.Open;

    cdsMJNReport.First;
    while not cdsMJNReport.Eof do
    begin
      oMarginReport.Add(cdsMJNReportDATA.AsString);
      cdsMJNReport.Next;
    end;
  finally
    oMarginReport.SaveToFile(sFileName);
    FreeAndNil(oMarginReport);

    mmLog.Lines.add('Margin report has been save to '+ sFileName);
    Application.ProcessMessages;
  end;

  try
    oRepoReport := TStringList.Create;
    sFileName   := dmGlobal.DailyReportFolder+sCompanyCode+'-REPO'+FormatDateTime('yyyymmdd', dtValue.Date)+'.rep';

    cdsREPReport.Close;
    cdsREPReport.Params[0].AsDate := dtValue.Date;
    cdsREPReport.Open;

    cdsREPReport.First;
    while not cdsREPReport.Eof do
    begin
      oRepoReport.Add(cdsREPReportDATA.AsString);
      cdsREPReport.Next;
    end;
  finally
    oRepoReport.SaveToFile(sFileName);
    FreeAndNil(oRepoReport);

    mmLog.Lines.add('Repo report has been save to '+ sFileName);
    Application.ProcessMessages;
  end;
end;

procedure TfrmGenerateDailyTransReport.FormShow(Sender: TObject);
begin
  dtValue.Date := dmGlobal.RemoteServer.GetTransDate;
end;

end.
