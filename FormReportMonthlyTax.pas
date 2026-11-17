unit FormReportMonthlyTax;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Datasnap.DBClient,
  NClientDataset, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxCalendar, cxBarEditItem, System.Win.ComObj, ClassClientConst, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmReportMonthlyTax = class(TfrmBrowseData)
    cdsReportMonthlyTax: TNClientDataset;
    cdsReportMonthlyTaxNPWPNO: TStringField;
    cdsReportMonthlyTaxACCOUNTNAME: TStringField;
    cdsReportMonthlyTaxFAKTURPAJAK: TIntegerField;
    cdsReportMonthlyTaxMONTH: TStringField;
    cdsReportMonthlyTaxYEAR: TStringField;
    cdsReportMonthlyTaxDATETO: TDateTimeField;
    cdsReportMonthlyTaxBRKFEE: TFloatField;
    cdsReportMonthlyTaxVAT: TFloatField;
    gvwMasterNPWPNO: TcxGridDBBandedColumn;
    gvwMasterACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterFAKTURPAJAK: TcxGridDBBandedColumn;
    gvwMasterMONTH: TcxGridDBBandedColumn;
    gvwMasterYEAR: TcxGridDBBandedColumn;
    gvwMasterDATETO: TcxGridDBBandedColumn;
    gvwMasterBRKFEE: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    dtReport: TcxBarEditItem;
    actGenerateToExcel: TNAction;
    SaveDialog: TSaveDialog;
    GeneratetoExcel1: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actGenerateToExcelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportMonthlyTax: TfrmReportMonthlyTax;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmReportMonthlyTax.actGenerateToExcelExecute(Sender: TObject);
var
  sFileName, sExt, sReportPath: string;
  oExcel, oSheet: OleVariant;
  i, x: Integer;
  sSheetName: string;
begin
  inherited;
  if MessageDlg('Generate to Monthly Transaction Report ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Abort;

  sFileName           := ExtractFileDir(Application.ExeName)+'\MonthlyTaxReport_'+FormatDateTime('mmyyyy', dtReport.EditValue) +'.xlsx';
  SaveDialog.FileName := sFileName;
  if not SaveDialog.Execute then
    Abort;

  sFileName := SaveDialog.FileName;
  x := 1;
  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    oSheet := oExcel.Sheets.Add;
    sSheetName := 'Monthly Tax Report';
    oExcel.WorkBooks[1].WorkSheets[1].Name := sSheetName;
    oSheet := oExcel.WorkBooks[1].WorkSheets[sSheetName];

    for i := 1 to cdsReportMonthlyTax.FieldCount -1 do
      oSheet.Cells[x, i] := cdsReportMonthlyTax.Fields[i].FieldName;

    cdsReportMonthlyTax.DisableControls;
    cdsReportMonthlyTax.First;
    while not cdsReportMonthlyTax.Eof do
    begin
      Inc(x);
      for i := 0 to cdsReportMonthlyTax.FieldCount -1 do
      begin
        if i = 3 then
          oSheet.Cells[x, i] := ''''+cdsReportMonthlyTax.Fields[i].AsString
        else
          oSheet.Cells[x, i] := cdsReportMonthlyTax.Fields[i].AsString;
      end;
      cdsReportMonthlyTax.Next;
    end;
  finally
    cdsReportMonthlyTax.EnableControls;

    oSheet.Cells[x+1, 6] := '=SUM(F2:F'+IntToStr(x)+')';
    oSheet.Cells[x+1, 7] := '=SUM(G2:G'+IntToStr(x)+')';

    oSheet.Range['A1:A1'].ColumnWidth := 55;
    oSheet.Range['E1:E1'].ColumnWidth := 13;
    oSheet.Range['F1:G1'].ColumnWidth := 20;

    oSheet.Range['A1:G1'].Font.Bold := True;
    oSheet.Range['A'+IntToStr(x+1)+':G'+IntToStr(x+1)].Font.Bold := True;

    oSheet.Range['F2:G'+IntToStr(x+1)].NumberFormat         := '#,##0;(#,##0);0';
    oSheet.Range['A1:G1'].Borders[xlEdgeBottom].LineStyle   := xlContinuous;
    oSheet.Range['A'+IntToStr(x)+':G'+IntToStr(x)].Borders[xlEdgeBottom].LineStyle   := xlContinuous;

    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    MessageDlg('Monthly Tax Report has been saved', mtInformation, [mbOk], 0);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;
end;

procedure TfrmReportMonthlyTax.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsReportMonthlyTax.Close;
  cdsReportMonthlyTax.Params[0].AsDateTime := dtReport.EditValue;
  cdsReportMonthlyTax.Open;
end;

procedure TfrmReportMonthlyTax.FormShow(Sender: TObject);
begin
  inherited;
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

end.
