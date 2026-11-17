unit FormReportClientPortofolio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit, cxBarEditItem,
  System.Actions, cxCalendar;

type
  TfrmReportClientPortofolio = class(TfrmReport)
    edAccCode: TcxBarEditItem;
    edAccName: TcxBarEditItem;
    barMReportBar2: TdxBar;
    dtReport: TcxBarEditItem;
    procedure FormCreate(Sender: TObject);
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actReloadDataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FAccID : integer;
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frmReportClientPortofolio: TfrmReportClientPortofolio;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportClientPortofolio.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccID;
  Report.Params[1].AsDate    := dtReport.EditValue;
  inherited;
end;

procedure TfrmReportClientPortofolio.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.EditValue := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.EditValue := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportClientPortofolio.FormCreate(Sender: TObject);
begin
  inherited;
  FAccID := 0;
end;

procedure TfrmReportClientPortofolio.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

Initialization
  RegisterClass(TfrmReportClientPortofolio);

end.
