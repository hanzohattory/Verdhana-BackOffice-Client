unit FormReportContractDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, NReportClient,
  Vcl.ActnList, dxBar, cxClasses, NActionPermission, Vcl.Menus,
  dxStatusBar, cxSplitter, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportContractDate = class(TfrmReport)
    dtConDateFrom: TcxDateEdit;
    lcParameterItem1: TdxLayoutItem;
    dtConDateTo: TcxDateEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportContractDate: TfrmReportContractDate;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportContractDate.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsDate := dtConDateFrom.Date;
  Report.Params[1].AsDate := dtConDateTo.Date;

  inherited;
end;

procedure TfrmReportContractDate.FormCreate(Sender: TObject);
begin
  inherited;
  dtConDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtConDateTo.Date   := dtConDateFrom.Date;
end;

end.
