unit FormReportCustomersData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormReport, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, Data.DB, Datasnap.DBClient,
  NClientDataset, Vcl.Menus, NReportClient, System.Actions, Vcl.ActnList, dxBar,
  cxClasses, NActionPermission, dxStatusBar, cxSplitter, dxLayoutContainer,
  dxLayoutControl, frxClass, frxPreview, ComObj;

type
  TfrmReportCustomersData = class(TfrmReport)
    cdsCustomersData: TNClientDataset;
    SaveDlg: TSaveDialog;
    procedure actExportToXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCustomersData: TfrmReportCustomersData;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportCustomersData.actExportToXLSExecute(Sender: TObject);
var
  iRows, i: Integer;
  oExcel, oSheet: OleVariant;
  sFileName: string;
begin
  //inherited;
  cdsCustomersData.Close;
  cdsCustomersData.Open;

  sFileName := '';
  if SaveDlg.Execute then
    sFileName := SaveDlg.FileName;

  if sFileName = '' then
    Abort;

  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    oExcel.Sheets.Add;
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'Customers Data';
    oSheet := oExcel.WorkBooks[1].WorkSheets['Customers Data'];

    cdsCustomersData.DisableControls;
    cdsCustomersData.First;

    for i := 0 to cdsCustomersData.FieldCount -1 do
        oSheet.Cells[1, i+1] := cdsCustomersData.Fields[i].FieldName;

    iRows := 2;
    while not cdsCustomersData.Eof do
    begin
      for i := 0 to cdsCustomersData.FieldCount -1 do
        oSheet.Cells[iRows, i+1] := cdsCustomersData.Fields[i].AsString;

      inc(iRows);
      cdsCustomersData.Next;
    end;
  finally
    MessageDlg('Generate customers data to Excel file has been done', mtInformation, [mbOk], 0);
    cdsCustomersData.EnableControls;

    oExcel.Visible := False;
//    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;
end;

end.
