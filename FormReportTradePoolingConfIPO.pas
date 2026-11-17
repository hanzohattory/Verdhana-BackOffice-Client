unit FormReportTradePoolingConfIPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList,
  dxBar, cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportTradePoolingConfIPO = class(TfrmReport)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(APOOLINGID: Integer);
  end;

var
  frmReportTradePoolingConfIPO: TfrmReportTradePoolingConfIPO;

implementation

{$R *.dfm}

{ TfrmReport1 }

procedure TfrmReportTradePoolingConfIPO.Run(APOOLINGID: Integer);
var
  oForm: TfrmReportTradePoolingConfIPO;
begin
  oForm := TfrmReportTradePoolingConfIPO.Create(nil);
  Try
    with oForm do
    begin
      Report.Params[0].AsInteger := APOOLINGID;
      actReloadData.Execute;

      ShowModal;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
