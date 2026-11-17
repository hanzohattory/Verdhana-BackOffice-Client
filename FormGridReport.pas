unit FormGridReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, FrameGridReport,
  NActionPermission, Vcl.Menus, Data.DB;

type
  TfrmGridReport = class(TfrmBasic)
    frGridReport: TfrGridReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ViewReportModal(AReportID: Integer): Boolean;

var
  frmGridReport: TfrmGridReport;

implementation

{$R *.dfm}

uses DataGlobal;

function ViewReportModal(AReportID: Integer): Boolean;
var
  LayoutStream, PropStream: TStream;
begin
  Result := False;
  frmGridReport := TfrmGridReport.Create(Nil);
  Try
    with frmGridReport do
    begin
      frGridReport.cdsReportGrid.Close;
      frGridReport.cdsReportGrid.Params[0].AsInteger := AReportID;
      frGridReport.cdsReportGrid.Open;

      if not frGridReport.cdsReportGrid.IsEmpty then
      begin
        frGridReport.cdsSubject.CommandText := frGridReport.cdsReportGridSQL.AsWideString;
        LayoutStream := frGridReport.cdsReportGrid.CreateBlobStream(frGridReport.cdsReportGridFILTER_CONFIG, bmRead);
        PropStream := frGridReport.cdsReportGrid.CreateBlobStream(frGridReport.cdsReportGridREPORT_CONFIG, bmRead);
        Try
          frGridReport.lcFilter.LoadFromStream(LayoutStream);
          frGridReport.PropStore.StorageStream := PropStream;
          frGridReport.PropStore.RestoreFrom;
        Finally
          FreeAndNil(PropStream);
          FreeAndNil(LayoutStream);
        End;
        BorderStyle := bsSizeable;
        Position := poMainFormCenter;
        WindowState := wsMaximized;
        frGridReport.FirstView := True;
        frGridReport.dt1.Date := dmGlobal.RemoteServer.GetTransDate;
        frGridReport.dt2.Date := frGridReport.dt1.Date;
        Caption := frGridReport.cdsReportGridDESCRIPTION.AsString;
        ShowModal;
        Result := True;
      end;
    end;
  Finally
    FreeAndNil(frmGridReport);
  End;
end;

end.
