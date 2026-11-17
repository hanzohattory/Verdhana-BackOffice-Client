unit FormMonthlyTransactionReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCalendar, dxBar,
  cxBarEditItem, NReportClient, NDatasetContainer, cxClasses, System.Actions,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon,
  System.ImageList, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, System.Win.ComObj, ClassClientConst;

type
  TfrmMonthlyTransactionReport = class(TfrmBrowseData)
    cxBarEditItem1: TcxBarEditItem;
    dtReport: TcxBarEditItem;
    cdsMonthlyTransaction: TNClientDataset;
    cdsMonthlyTransactionLNNUM: TIntegerField;
    cdsMonthlyTransactionNO: TStringField;
    cdsMonthlyTransactionREMARKS1: TStringField;
    cdsMonthlyTransactionREMARKS2: TStringField;
    cdsMonthlyTransactionREMARKS3: TStringField;
    cdsMonthlyTransactionREMARKS4: TStringField;
    cdsMonthlyTransactionREMARKS5: TStringField;
    cdsMonthlyTransactionREMARKS6: TStringField;
    gvwMasterLNNUM: TcxGridDBBandedColumn;
    gvwMasterNO: TcxGridDBBandedColumn;
    gvwMasterREMARKS1: TcxGridDBBandedColumn;
    gvwMasterREMARKS2: TcxGridDBBandedColumn;
    gvwMasterREMARKS3: TcxGridDBBandedColumn;
    gvwMasterREMARKS4: TcxGridDBBandedColumn;
    gvwMasterREMARKS5: TcxGridDBBandedColumn;
    gvwMasterREMARKS6: TcxGridDBBandedColumn;
    SaveDialog: TSaveDialog;
    actGenerateToExcel: TNAction;
    GenerateToExcelFile1: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGenerateToExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonthlyTransactionReport: TfrmMonthlyTransactionReport;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmMonthlyTransactionReport.actGenerateToExcelExecute(
  Sender: TObject);
var
  sFileName, sExt, sReportPath: string;
  oExcel, oSheet: OleVariant;
  i, x: Integer;
begin
  inherited;
  if MessageDlg('Generate to Monthly Transaction Report ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Abort;

//  sReportPath := IncludeTrailingBackslash(dmGlobal.MKBDOutPath);
//  if not DirectoryExists(sReportPath) then CreateDir(sReportPath);

  sFileName           := ExtractFileDir(Application.ExeName)+'\MonthlyTransactionReport_'+FormatDateTime('mmyyyy', dtReport.EditValue) +'.xlsx';
  SaveDialog.FileName := sFileName;
  if not SaveDialog.Execute then
    Abort;

  sFileName := SaveDialog.FileName;
  x := 0;
  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    oSheet := oExcel.Sheets.Add;
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'X.E.1-3';
    oSheet := oExcel.WorkBooks[1].WorkSheets['X.E.1-3'];

    cdsMonthlyTransaction.DisableControls;
    cdsMonthlyTransaction.First;
    while not cdsMonthlyTransaction.Eof do
    begin
      Inc(x);
      for i := 1 to cdsMonthlyTransaction.FieldCount -1 do
        oSheet.Cells[x, i] := cdsMonthlyTransaction.Fields[i].AsString;
      cdsMonthlyTransaction.Next;
    end;
  finally
    cdsMonthlyTransaction.EnableControls;

    oSheet.Range['A1:A'+IntToStr(x)].ColumnWidth := 4;
    oSheet.Range['B1:B'+IntToStr(x)].ColumnWidth := 70;
    oSheet.Range['C1:G'+IntToStr(x)].ColumnWidth := 20;
    oSheet.Range['B2:B'+IntToStr(x)].WrapText    := True;

    oSheet.Range['B2:G2'].Font.Bold    := True;
    oSheet.Range['B1:G1'].Font.Bold    := True;
    oSheet.Range['C3:C3'].Font.Bold    := True;
    oSheet.Range['C5:G7'].Font.Bold    := True;
    oSheet.Range['C26:G26'].Font.Bold  := True;
    oSheet.Range['C37:G37'].Font.Bold  := True;
    oSheet.Range['C41:G41'].Font.Bold  := True;
    oSheet.Range['C46:G46'].Font.Bold  := True;

    oSheet.Range['B1:G1'].Mergecells   := True;
    oSheet.Range['B2:G2'].Mergecells   := True;
    oSheet.Range['D26:E26'].Mergecells := True;
    oSheet.Range['F26:G26'].Mergecells := True;
    oSheet.Range['D37:E37'].Mergecells := True;
    oSheet.Range['F37:G37'].Mergecells := True;
    oSheet.Range['D47:E47'].Mergecells := True;
    oSheet.Range['F47:G47'].Mergecells := True;

    oSheet.Range['B1:G1'].HorizontalAlignment   := xlCenter;
    oSheet.Range['B2:G2'].HorizontalAlignment   := xlCenter;
    oSheet.Range['C6:G7'].HorizontalAlignment   := xlCenter;
    oSheet.Range['C26:G26'].HorizontalAlignment := xlCenter;
    oSheet.Range['C37:G37'].HorizontalAlignment := xlCenter;
    oSheet.Range['C41:G41'].HorizontalAlignment := xlCenter;
    oSheet.Range['C46:G46'].HorizontalAlignment := xlCenter;

    oSheet.Range['C8:G25'].NumberFormat  := '#,##0;(#,##0);0';
    oSheet.Range['A1:G1'].Borders[xlEdgeBottom].LineStyle   := xlContinuous;
    oSheet.Range['A7:G7'].Borders[xlEdgeBottom].LineStyle   := xlContinuous;
    oSheet.Range['A25:G25'].Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oSheet.Range['A26:G26'].Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oSheet.Range['A36:G36'].Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oSheet.Range['A37:G37'].Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oSheet.Range['A40:G40'].Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oSheet.Range['A41:G41'].Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oSheet.Range['A45:G45'].Borders[xlEdgeBottom].LineStyle := xlContinuous;
    oSheet.Range['A46:G46'].Borders[xlEdgeBottom].LineStyle := xlContinuous;

    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    MessageDlg('Monthly Transaction Detail has been saved', mtInformation, [mbOk], 0);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;
end;

procedure TfrmMonthlyTransactionReport.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsMonthlyTransaction.Close;
  cdsMonthlyTransaction.Params[0].AsDate := dtReport.EditValue;
  cdsMonthlyTransaction.Open;
end;

procedure TfrmMonthlyTransactionReport.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

end.
