unit FormReportNotificationToClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit;

type
  TfrmReportNotificationToClient = class(TfrmReport)
    edAccCode: TcxButtonEdit;
    lcParameterItem1: TdxLayoutItem;
    edAccName: TcxTextEdit;
    lcParameterItem2: TdxLayoutItem;
    lcParameterGroup1: TdxLayoutGroup;
    procedure edAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure actReloadDataExecute(Sender: TObject);
  private
    FAccID : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportNotificationToClient: TfrmReportNotificationToClient;

implementation

{$R *.dfm}

uses DataGlobal, FormLuAccount;

procedure TfrmReportNotificationToClient.actReloadDataExecute(Sender: TObject);
begin
  Report.Params[0].AsInteger := FAccID;
  inherited;
end;

procedure TfrmReportNotificationToClient.edAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if frmLuAccount.Run(FAccID) = mrOK then
    begin
      FAccID := cdsLuAccountMultiFilterACCID.AsInteger;
      edAccCode.Text := cdsLuAccountMultiFilterACCCODE.AsString;
      edAccName.Text := cdsLuAccountMultiFilterACCNAME.AsString;
    end;
  end;
end;

procedure TfrmReportNotificationToClient.FormCreate(Sender: TObject);
begin
  inherited;
  FAccID := 0 ;
end;

end.
