unit FormReportTradeConfIPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, NReportClient, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, Vcl.Menus, dxStatusBar, cxSplitter,
  dxLayoutContainer, dxLayoutControl, frxClass, frxPreview;

type
  TfrmReportTradeConfIPO = class(TfrmReport)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(AllotmentID: Integer);
  end;

var
  frmReportTradeConfIPO: TfrmReportTradeConfIPO;

implementation

{$R *.dfm}

{ TfrmReportTradeConfIPO }

procedure TfrmReportTradeConfIPO.Run(AllotmentID: Integer);
var
  oForm: TfrmReportTradeConfIPO;
begin
  oForm := TfrmReportTradeConfIPO.Create(nil);
  Try
    with oForm do
    begin
      Report.Params[0].AsInteger := AllotmentID;
      actReloadData.Execute;

      ShowModal;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

end.
