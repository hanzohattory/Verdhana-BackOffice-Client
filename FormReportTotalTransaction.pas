unit FormReportTotalTransaction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxMemo, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, cxClasses, dxLayoutControl, Data.DB, Datasnap.DBClient, System.Win.ComObj, ClassClientConst;

type
  TfrmReportTotalTransaction = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtMonth: TcxImageComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dtYear: TcxSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    mmLog: TcxMemo;
    cdsTotalTransaction: TClientDataSet;
    cdsTotalTransactionChannel: TStringField;
    cdsTotalTransactionPeriod: TStringField;
    cdsTotalTransactionNilaiTransaksiBeli: TFloatField;
    cdsTotalTransactionNilaiTransaksiJual: TFloatField;
    SaveDialog: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportTotalTransaction: TfrmReportTotalTransaction;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportTotalTransaction.cxButton1Click(Sender: TObject);
var
  sFileName, sExt, sReportPath: string;
  oExcel, oSheet: OleVariant;
  i, x: Integer;
  sSheetName: string;
  dtTrans: TDate;
begin
  mmLog.Lines.Add('Load data total transaction...');
  Application.ProcessMessages;

  cdsTotalTransaction.Close;
  cdsTotalTransaction.Params[0].AsString := IntToStr(dtYear.EditValue)+FormatFloat('00',dtMonth.EditValue);
  cdsTotalTransaction.Open;

  inherited;
  if MessageDlg('Generate to Total Monthly Transaction Report ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Abort;

  sFileName           := ExtractFileDir(Application.ExeName)+'\TotalMonthlyTransactionReport_'+cdsTotalTransaction.Params[0].AsString +'.xlsx';
  SaveDialog.FileName := sFileName;
  if not SaveDialog.Execute then
    Abort;

  mmLog.Lines.Add('Generating data total transaction RDN and DMA...');
  Application.ProcessMessages;

  sFileName := SaveDialog.FileName;
  x := 1;
  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    oSheet := oExcel.Sheets.Add;
    sSheetName := 'Total Transaction';
    oExcel.WorkBooks[1].WorkSheets[1].Name := sSheetName;
    oSheet := oExcel.WorkBooks[1].WorkSheets[sSheetName];

    dtTrans := EncodeDate(dtYear.EditValue, dtMonth.EditValue, 1);

    oSheet.Cells[1, 1] := 'Laporan Transaksi Online Trading dan Direct Market Access';
    oSheet.Cells[2, 1] := 'Kode AB : '+ dmGlobal.RemoteServer.GetBrokerCode;
    oSheet.Cells[3, 1] := 'Kode AB : '+ dmGlobal.RemoteServer.GetBrokerName;
    oSheet.Cells[5, 1] := 'Data Nilai Transaksi Bursa (Jual-Beli) - Online Trading';
    oSheet.Cells[6, 1] := 'Period';
    oSheet.Cells[6, 2] := 'Nilai Transaksi Beli (Rp)';
    oSheet.Cells[6, 3] := 'Nilai Transaksi Jual (Rp)';

    if cdsTotalTransaction.IsEmpty then
    begin
      oSheet.Cells[7, 1] := FormatDateTime('mmm yyyy', dtTrans);
      oSheet.Cells[7, 2] := 0;
      oSheet.Cells[7, 3] := 0;
    end
    else
    begin
      cdsTotalTransaction.First;
      oSheet.Cells[7, 1] := cdsTotalTransactionPeriod.AsString;
      oSheet.Cells[7, 2] := cdsTotalTransactionNilaiTransaksiBeli.AsFloat;
      oSheet.Cells[7, 3] := cdsTotalTransactionNilaiTransaksiJual.AsFloat;
    end;

    oSheet.Cells[9, 1]  := 'Data Nilai Transaksi Bursa (Jual/Beli) - DMA';
    oSheet.Cells[10, 1] := 'Period';
    oSheet.Cells[10, 2] := 'Nilai Transaksi Beli (Rp)';
    oSheet.Cells[10, 3] := 'Nilai Transaksi Jual (Rp)';

    if (cdsTotalTransaction.IsEmpty) or (cdsTotalTransaction.RecordCount >= 1) then
    begin
      oSheet.Cells[11, 1] := FormatDateTime('mmm yyyy', dtTrans);
      oSheet.Cells[11, 2] := 0;
      oSheet.Cells[11, 3] := 0;
    end
    else
    begin
      cdsTotalTransaction.Next;
      oSheet.Cells[11, 1] := cdsTotalTransactionPeriod.AsString;
      oSheet.Cells[11, 2] := cdsTotalTransactionNilaiTransaksiBeli.AsFloat;
      oSheet.Cells[11, 3] := cdsTotalTransactionNilaiTransaksiJual.AsFloat;
    end;

    finally
    oSheet.Range['A1:A1'].Font.Bold := True;
    oSheet.Range['B1:C1'].ColumnWidth   := 25;
    oSheet.Range['B7:C11'].NumberFormat := '#,##0;(#,##0);0';

    oSheet.Range['A6:C7'].Borders.LineStyle   := xlContinuous;
    oSheet.Range['A10:C11'].Borders.LineStyle := xlContinuous;

    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    MessageDlg('Total Monthly Transaction RDN and DMA has been saved', mtInformation, [mbOk], 0);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    mmLog.Lines.Add('File has been save in '+ sFileName);
    Application.ProcessMessages;
  end;
end;

procedure TfrmReportTotalTransaction.FormShow(Sender: TObject);
begin
  dtMonth.EditValue := StrToInt(FormatDateTime('mm', dmGlobal.RemoteServer.GetTransDate));
  dtYear.EditValue  := StrToInt(FormatDateTime('yyyy', dmGlobal.RemoteServer.GetTransDate));
end;

end.
