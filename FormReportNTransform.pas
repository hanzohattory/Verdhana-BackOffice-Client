unit FormReportNTransform;
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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxCalendar, Datasnap.DBClient, NClientDataset,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  NReportClient, NDatasetContainer, dxBar, cxClasses, Vcl.ActnList,
  NDatasetAction, dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxSplitter, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, XLSSheetData5, XLSReadWriteII5, XLSMergedCells5, XLSCmdFormat5,
  Xc12Utils5, Xc12DataStyleSheet5, XLSComment5, XLSDrawing5, NLibraries, System.DateUtils,
  System.Actions, System.ImageList, System.Win.ComObj, StrUtils, ClassClientConst,
  dxSkinsCore, dxSkinMetropolisDark, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges, Vcl.ExtCtrls, dxScrollbarAnnotations,
  Vcl.Grids, Vcl.DBGrids, Math, frxExportPDF, frxClass, frxExportBaseDialog;
type
  TfrmReportNTransform = class(TfrmBrowseData)
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsReportList: TNClientDataset;
    dtReportDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    actViewData: TNAction;
    cdsLuRptType: TNClientDataset;
    cdsLuRptTypeRPTTYPE: TStringField;
    cdsLuRptTypeRTPTYPEDESC: TStringField;
    grdReportType: TcxGrid;
    gvwReportType: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    dsLuRptType: TDataSource;
    gvwReportTypeRPTTYPE: TcxGridDBBandedColumn;
    gvwReportTypeRTPTYPEDESC: TcxGridDBBandedColumn;
    cdsReportListRPTTYPE: TStringField;
    cdsReportListLENNO: TIntegerField;
    cdsReportListLNNUM: TIntegerField;
    cdsReportListLENRMK1: TIntegerField;
    cdsReportListNO: TStringField;
    cdsReportListREMARKS1: TStringField;
    cdsReportListREMARKS2: TStringField;
    cdsReportListREMARKS3: TStringField;
    cdsReportListREMARKS4: TStringField;
    cdsReportListREMARKS5: TStringField;
    cdsReportListREMARKS6: TStringField;
    cdsReportListREMARKS7: TStringField;
    cdsReportListREMARKS8: TStringField;
    cdsReportListREMARKS9: TStringField;
    cdsReportListREMARKS10: TStringField;
    cdsReportListREMARKS11: TStringField;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    actPrintAllXLS: TNAction;
    cdsReportVD51: TNClientDataset;
    cdsReportVD52: TNClientDataset;
    cdsReportVD53: TNClientDataset;
    cdsReportVD54: TNClientDataset;
    cdsReportVD55: TNClientDataset;
    cdsReportVD56: TNClientDataset;
    cdsReportVD57: TNClientDataset;
    cdsReportVD58: TNClientDataset;
    cdsReportVD59: TNClientDataset;
    cdsReportVD510: TNClientDataset;
    cdsReportXE13: TNClientDataset;
    cdsReportTransDate: TNClientDataset;
    cdsReportBackDate: TNClientDataset;
    cdsReportTransDateRPTTYPE: TStringField;
    cdsReportTransDateLENNO: TIntegerField;
    cdsReportTransDateLNNUM: TIntegerField;
    cdsReportTransDateLENRMK1: TIntegerField;
    cdsReportTransDateNO: TStringField;
    cdsReportTransDateREMARKS1: TStringField;
    cdsReportTransDateREMARKS2: TStringField;
    cdsReportTransDateREMARKS3: TStringField;
    cdsReportTransDateREMARKS4: TStringField;
    cdsReportTransDateREMARKS5: TStringField;
    cdsReportTransDateREMARKS6: TStringField;
    cdsReportTransDateREMARKS7: TStringField;
    cdsReportTransDateREMARKS8: TStringField;
    cdsReportTransDateREMARKS9: TStringField;
    cdsReportTransDateREMARKS10: TStringField;
    cdsReportTransDateREMARKS11: TStringField;
    cdsReportBackDateRPTTYPE: TStringField;
    cdsReportBackDateLENNO: TIntegerField;
    cdsReportBackDateLNNUM: TIntegerField;
    cdsReportBackDateLENRMK1: TIntegerField;
    cdsReportBackDateNO: TStringField;
    cdsReportBackDateREMARKS1: TStringField;
    cdsReportBackDateREMARKS2: TStringField;
    cdsReportBackDateREMARKS3: TStringField;
    cdsReportBackDateREMARKS4: TStringField;
    cdsReportBackDateREMARKS5: TStringField;
    cdsReportBackDateREMARKS6: TStringField;
    cdsReportBackDateREMARKS7: TStringField;
    cdsReportBackDateREMARKS8: TStringField;
    cdsReportBackDateREMARKS9: TStringField;
    cdsReportBackDateREMARKS10: TStringField;
    cdsReportBackDateREMARKS11: TStringField;
    pnlWait: TPanel;
    actPrintAllPDF: TNAction;
    dxBarButton3: TdxBarButton;
    frxPDFExport: TfrxPDFExport;
    procedure FormCreate(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure gvwReportTypeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actPrintAllXLSExecute(Sender: TObject);
    procedure actPrintAllPDFExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ExportToExcel;
    procedure ExportToXls;
    procedure ConvertToNumber(ASheet: TXLSWorkSheet; col1, row1, col2, row2: Integer; AFormat: String);
    procedure GenerateExcelFile(AFileName: string);
    procedure GenerateVD5(AExcel: OleVariant; ADataSheet: TNClientDataset; ASheetName: string);
    procedure GenerateVD510(AExcel: OleVariant);
    procedure AddColumn(AClientDataSet: TNClientDataset);
    procedure GenerateToPDFFile(AReportName: string; AFileName: string);

    function numberToString(number: Integer): String;
  public
    { Public declarations }
    procedure CreateMergeCells(ASheet: TXLSWorkSheet; col1, row1, col2, row2: Integer);
  end;
var
  frmReportNTransform: TfrmReportNTransform;
implementation
uses DataGlobal;
{$R *.dfm}

function StringInArray(Value: string; Strings: array of string): Boolean;
var I: Integer;
begin
  Result := False;
  for I := Low(Strings) to High(Strings) do
  Result := Result or (Value = Strings[I]);
end;

procedure TfrmReportNTransform.actPrintAllPDFExecute(Sender: TObject);
var
  sFileName: string;
  sReportPath: string;
begin
  inherited;
  pnlWait.Visible := True;
  Cursor := crHourGlass;

  sReportPath := IncludeTrailingBackslash(dmGlobal.MKBDOutPath);
  if not DirectoryExists(sReportPath) then CreateDir(sReportPath);

  // -- VD51 --//
  sFileName := sReportPath + 'VD51_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD51.fr3', sFileName);

  // -- VD52 --//
  sFileName := sReportPath + 'VD52_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD52.fr3', sFileName);

  // -- VD53 --//
  sFileName := sReportPath + 'VD53_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD53.fr3', sFileName);

  // -- VD54 --//
  sFileName := sReportPath + 'VD54_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD54.fr3', sFileName);

  // -- VD55 --//
  sFileName := sReportPath + 'VD55_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD55.fr3', sFileName);

  // -- VD56 --//
  sFileName := sReportPath + 'VD56_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD56.fr3', sFileName);

  // -- VD57 --//
  sFileName := sReportPath + 'VD57_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD57.fr3', sFileName);

  // -- VD58 --//
  sFileName := sReportPath + 'VD58_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD58.fr3', sFileName);

  // -- VD59 --//
  sFileName := sReportPath + 'VD59_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD59.fr3', sFileName);

  // -- VD510 --//
  sFileName := sReportPath + 'VD510_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '.pdf';
  GenerateToPDFFile('Report MKBD\VD510.fr3', sFileName);

  Cursor := crDefault;
  pnlWait.Visible := False;
  ShowMessage('Create PDF File is Done...');
  dmGlobal.Log(ltInfo,'Printing All Report to Pdf file');
end;

procedure TfrmReportNTransform.actPrintAllXLSExecute(Sender: TObject);
begin
  inherited;
  pnlWait.Visible := True;
  Cursor := crHourGlass;
  ExportToExcel;
  Cursor := crDefault;
  pnlWait.Visible := False;
  ShowMessage('Create Excel is Done...');
  dmGlobal.Log(ltInfo,'Printing All Report to Excel file');
end;

procedure TfrmReportNTransform.actViewDataExecute(Sender: TObject);
begin
  inherited;
  gvwReportType.BeginUpdate();
  Try
    cdsLuRptType.Close;
    cdsLuRptType.Open;
  Finally
    gvwReportType.EndUpdate;
  End;
end;

procedure TfrmReportNTransform.AddColumn(AClientDataSet: TNClientDataset);
var
  ocds: TNClientDataset;
  i: integer;
begin
  pnlWait.Visible := True;
  Application.ProcessMessages;

  try
    ocds := AClientDataSet;

    gvwMaster.ClearItems;
    for i := 0 to ocds.Fields.Count -1 do
    begin
      gvwMaster.CreateColumn.DataBinding.FieldName := ocds.Fields[i].FieldName;
    end;
    gvwMaster.ApplyBestFit;
  finally
    pnlWait.Visible := False;
  end;
end;

procedure TfrmReportNTransform.ConvertToNumber(ASheet: TXLSWorkSheet; col1,
  row1, col2, row2: Integer; AFormat: String);
var
  sValue: String;
  fValue, fMinDouble: Double;
  row, col: Integer;
begin
  fMinDouble := Low(Int64);
  for row := row1 to row2 do
  begin
    for col := col1 to col2 do
    begin
      sValue := Trim(ASheet.AsString[col, row]);
      if sValue <> '' then
      begin
        fValue := StrToFloatDef(sValue, fMinDouble);
        if fValue <> fMinDouble then
        begin
          ASheet.AsFloat[col, row] := fValue;
          ASheet.Cell[col, row].NumberFormat := AFormat;
        end;
      end;
    end;
  end;
end;

procedure TfrmReportNTransform.GenerateExcelFile(AFileName: string);
var
  oExcel, oSheet: OleVariant;
  i, j, x: Integer;
begin
  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;
//    V.D.5-10
    GenerateVD510(oExcel);
//    V.D.5-9
    cdsReportVD59.Close;
    cdsReportVD59.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD59.Open;
    GenerateVD5(oExcel, cdsReportVD59, 'V.D.5-9');
//    V.D.5-8
    cdsReportVD58.Close;
    cdsReportVD58.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD58.Open;
    GenerateVD5(oExcel, cdsReportVD58, 'V.D.5-8');
//    V.D.5-7
    cdsReportVD57.Close;
    cdsReportVD57.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD57.Open;
    GenerateVD5(oExcel, cdsReportVD57, 'V.D.5-7');
//    V.D.5-6
    cdsReportVD56.Close;
    cdsReportVD56.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD56.Open;
    GenerateVD5(oExcel, cdsReportVD56, 'V.D.5-6');
//    V.D.5-5
    cdsReportVD55.Close;
    cdsReportVD55.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD55.Open;
    GenerateVD5(oExcel, cdsReportVD55, 'V.D.5-5');
//    V.D.5-4
    cdsReportVD54.Close;
    cdsReportVD54.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD54.Open;
    GenerateVD5(oExcel, cdsReportVD54, 'V.D.5-4');
//    V.D.5-3
    cdsReportVD53.Close;
    cdsReportVD53.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD53.Open;
    GenerateVD5(oExcel, cdsReportVD53, 'V.D.5-3');
//    V.D.5-2
    cdsReportVD52.Close;
    cdsReportVD52.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD52.Open;
    GenerateVD5(oExcel, cdsReportVD52, 'V.D.5-2');
//    V.D.5-1
    cdsReportVD51.Close;
    cdsReportVD51.Params[0].AsDate := dtReportDate.Date;
    cdsReportVD51.Open;
    GenerateVD5(oExcel, cdsReportVD51, 'V.D.5-1');
  finally
    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(AFileName);
    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;
end;

procedure TfrmReportNTransform.GenerateToPDFFile(AReportName, AFileName: string);
begin
  ReportContainer.Params[0].AsDate := dtReportDate.Date;
  ReportContainer.ReportClient.ReportName := AReportName;
//  ReportContainer.ReportClient.FileName := AFileName;
  ReportContainer.ReportClient.PrepareReport;

  frxPDFExport.FileName := AFileName;
  ReportContainer.ReportClient.Export(frxPDFExport);
end;

procedure TfrmReportNTransform.GenerateVD5(AExcel: OleVariant;
  ADataSheet: TNClientDataset; ASheetName: string);
var
  x, i: Integer;
  oSheet: OleVariant;
  sRange: string;
begin
  try
    oSheet := AExcel.Sheets.Add;
    AExcel.WorkBooks[1].WorkSheets[1].Name := ASheetName;
    oSheet := AExcel.WorkBooks[1].WorkSheets[ASheetName];
    oSheet.Range['A1','A1'].ColumnWidth := 4;
    if (ASheetName = 'V.D.5-6') then
    begin
      oSheet.Range['A1','A1'].ColumnWidth := 6;
      oSheet.Range['B1','B1'].ColumnWidth := 66;
      oSheet.Range['C1','C1'].ColumnWidth := 25;
      oSheet.Range['D1','H1'].ColumnWidth := 25;
    end
    else
    begin
      oSheet.Range['B1','B1'].ColumnWidth := 55;
      oSheet.Range['C1','C1'].ColumnWidth := 2;
      oSheet.Range['D1','D1'].ColumnWidth := 20;
      if (ASheetName = 'V.D.5-3') then
        oSheet.Range['E1','Z1'].ColumnWidth := 45
      else
        oSheet.Range['E1','Z1'].ColumnWidth := 22;
    end;
    ADataSheet.First;
    oSheet.Cells[1, 1] := ADataSheet.Fields[0].AsString;
    oSheet.Cells[1, 2] := ADataSheet.Fields[1].AsString;
    ADataSheet.Next;
    x := 2;
    repeat
      Inc(x);
      oSheet.Cells[x, 1] := ADataSheet.Fields[0].AsString;
      if (ASheetName = 'V.D.5-6') then
      begin
        oSheet.Cells[x, 2] := ADataSheet.Fields[1].AsString;
        oSheet.Cells[x, 3] := ': '+ ADataSheet.Fields[4].AsString;
      end
      else
      begin
        oSheet.Cells[x, 2] := ADataSheet.Fields[1].AsString;
        oSheet.Cells[x, 3] := ': ';
        oSheet.Cells[x, 4] := ADataSheet.Fields[2].AsString;
      end;
      ADataSheet.Next;
    until (x = 5);
    while not ADataSheet.Eof do
    begin
      Inc(x);
      oSheet.Cells[x, 1] := ADataSheet.Fields[0].AsString;
      oSheet.Cells[x, 2] := ADataSheet.Fields[1].AsString;
      if (ASheetName = 'V.D.5-1')
        or (ASheetName = 'V.D.5-2')
        or (ASheetName = 'V.D.5-3')
        or (ASheetName = 'V.D.5-7')
        or (ASheetName = 'V.D.5-8')
        or (ASheetName = 'V.D.5-9') then
      begin
        oSheet.Cells[x, 3] := ADataSheet.Fields[2].AsString;
        if (ASheetName = 'V.D.5-3') then
          oSheet.Cells[x, 5] := ADataSheet.Fields[3].AsString;
        if (ASheetName = 'V.D.5-7') or (ASheetName = 'V.D.5-8') or (ASheetName = 'V.D.5-9') then
        begin
          oSheet.Cells[x, 5] := ADataSheet.Fields[3].AsString;
          oSheet.Cells[x, 6] := ADataSheet.Fields[4].AsString;
          oSheet.Cells[x, 7] := ADataSheet.Fields[5].AsString;
          if (ASheetName = 'V.D.5-9') then
          begin
            oSheet.Cells[x, 8] := ADataSheet.Fields[6].AsString;
            oSheet.Cells[x, 9] := ADataSheet.Fields[7].AsString;
          end;
        end;
        oSheet.Range['B'+IntToStr(x), 'E'+IntToStr(x)].WrapText   := True;
        oSheet.Range['C'+IntToStr(x), 'D'+IntToStr(x)].Mergecells := True;
      end
      else if (ASheetName = 'V.D.5-4')
        or (ASheetName = 'V.D.5-5')then
      begin
        oSheet.Cells[x, 3]  := ADataSheet.Fields[2].AsString;
        oSheet.Cells[x, 5]  := ADataSheet.Fields[3].AsString;
        oSheet.Cells[x, 6]  := ADataSheet.Fields[4].AsString;
        oSheet.Cells[x, 7]  := ADataSheet.Fields[5].AsString;
        oSheet.Cells[x, 8]  := ADataSheet.Fields[6].AsString;
        oSheet.Cells[x, 9]  := ADataSheet.Fields[7].AsString;
        oSheet.Cells[x, 10] := ADataSheet.Fields[8].AsString;
        oSheet.Range['B'+IntToStr(x), 'J'+IntToStr(x)].WrapText   := True;
        oSheet.Range['C'+IntToStr(x), 'D'+IntToStr(x)].Mergecells := True;
      end else if (ASheetName = 'V.D.5-6') then
      begin
        if VarIsNull(ADataSheet.Fields[2].AsVariant) then
        begin
          oSheet.Cells[x, 5] := ADataSheet.Fields[4].AsString;
          oSheet.Range['B'+IntToStr(x), 'D'+IntToStr(x)].Mergecells := True;
        end
        else
        begin
          oSheet.Cells[x, 3] := ADataSheet.Fields[2].AsString;
          oSheet.Cells[x, 4] := ADataSheet.Fields[3].AsString;
        end;
        oSheet.Cells[x, 5] := ADataSheet.Fields[4].AsString;
        oSheet.Cells[x, 6] := ADataSheet.Fields[5].AsString;
        oSheet.Cells[x, 7] := ADataSheet.Fields[6].AsString;
//        oSheet.Cells[x, 8] := ADataSheet.Fields[7].AsString;
        oSheet.Range['B16:G16'].Font.Bold           := True;
        oSheet.Range['B16:G16'].HorizontalAlignment := xlCenter;
        oSheet.Range['B24:G25'].Font.Bold           := True;
        oSheet.Range['B25:G25'].HorizontalAlignment := xlCenter;
//        oSheet.Range['B23', 'H23'].Mergecells       := True;
      end;
      ADataSheet.Next;
    end;
  finally
    oSheet.Range['B1:Z7'].Font.Bold                      := True;
    oSheet.Range['B6:Z7'].HorizontalAlignment            := xlCenter;
    oSheet.Range['A1:A'+IntToStr(x)].HorizontalAlignment := xlCenter;
    oSheet.Range['C8', 'Z'+IntToStr(x)].NumberFormat     := '#,##0.00;(#,##0.00);0.00';
    if (ASheetName = 'V.D.5-1') or (ASheetName = 'V.D.5-2') then
      sRange := 'A6:D'+IntToStr(x)
    else if (ASheetName = 'V.D.5-3') then
      sRange := 'A6:E'+IntToStr(x)
    else if (ASheetName = 'V.D.5-4') or (ASheetName = 'V.D.5-5') then
      sRange := 'A6:J'+IntToStr(x)
    else if (ASheetName = 'V.D.5-6') then
      sRange := 'A6:G'+IntToStr(x)
    else if (ASheetName = 'V.D.5-7') or (ASheetName = 'V.D.5-8') then
      sRange := 'A6:G'+IntToStr(x)
    else if (ASheetName = 'V.D.5-9') then
      sRange := 'A6:I'+IntToStr(x);
    oSheet.Range[sRange].Borders.Weight := xlThin;
    if (ASheetName = 'V.D.5-6') then
    begin
      oSheet.Range['B16:G16'].Font.Bold           := True;
      oSheet.Range['B16:G16'].HorizontalAlignment := xlCenter;
      oSheet.Range['B24', 'G24'].Mergecells       := True;
      oSheet.Range['B24:G25'].Font.Bold           := True;
      oSheet.Range['B25:G25'].HorizontalAlignment := xlCenter;
      oSheet.Range['F26:F38'].HorizontalAlignment := xlCenter;
      oSheet.Range['D26:D38'].HorizontalAlignment := xlCenter;
      oSheet.Range['E26:E38'].NumberFormat        := '#';
    end;
    if (ASheetName = 'V.D.5-7') then
    begin
      oSheet.Range['B27:G27'].Font.Bold           := True;
      oSheet.Range['B27:G27'].HorizontalAlignment := xlCenter;
      oSheet.Range['B37:G38'].Font.Bold           := True;
      oSheet.Range['B38:G38'].HorizontalAlignment := xlCenter;
    end;
    if (ASheetName = 'V.D.5-9') then
    begin
      oSheet.Range['D95', 'H95'].Mergecells := True;
      oSheet.Range['D96', 'H96'].Mergecells := True;
      oSheet.Range['D97', 'H97'].Mergecells := True;
      oSheet.Range['D98', 'H98'].Mergecells := True;
      oSheet.Range['D99', 'H99'].Mergecells := True;
      oSheet.Range['F8','F'+IntToStr(x)].NumberFormat := '#,##0;(#,##0);0';
      oSheet.Range['C8:F94'].HorizontalAlignment      := xlCenter;
      oSheet.Range['C101:F104'].HorizontalAlignment   := xlCenter;
    end;
    if (ASheetName = 'V.D.5-8') then
    begin
      oSheet.Range['F8','F'+IntToStr(x)].NumberFormat     := '#,##0;(#,##0);0';
      oSheet.Range['C8:F'+IntToStr(x)].HorizontalAlignment := xlCenter;
    end;
    oSheet := Unassigned;
    AExcel.ActiveWindow.DisplayGridlines := False;
  end;
end;

procedure TfrmReportNTransform.GenerateVD510(AExcel: OleVariant);
  procedure LoadDataVD510(AReportDate: TDate);
  begin
    cdsReportVD510.Close;
    cdsReportVD510.Params[0].AsDate := AReportDate;
    cdsReportVD510.Open;
  end;
var
  x, i, j: Integer;
  oSheet: OleVariant;
  sSheetName, sRange: string;
  dReportDate: TDate;
  ADataSheet: TNClientDataset;
  sDataValue: string;
  sMerge, sTitle: string;
begin
  try
    sRange      := '';
    oSheet      := AExcel.Sheets.Add;
    sSheetName  := 'V.D.5-10';
    dReportDate := dtReportDate.Date;
    ADataSheet  := cdsReportVD510;
    AExcel.WorkBooks[1].WorkSheets[1].Name := sSheetName;
    oSheet      := AExcel.WorkBooks[1].WorkSheets[sSheetName];
    oSheet.Range['A1','A1'].ColumnWidth := 4;
    oSheet.Range['B1','Z1'].ColumnWidth := 22;
    LoadDataVD510(dReportDate);
    ADataSheet.First;
    oSheet.Cells[1, 1] := ADataSheet.Fields[0].AsString;
    ADataSheet.Next;
    x := 2;
    while not ADataSheet.Eof do
    begin
      Inc(x);
      if Copy(ADataSheet.Fields[0].AsString, 1, 8) = 'V.D.5-10' then
      begin
        Inc(x);
        sTitle := Copy(ADataSheet.Fields[0].AsString, 1, 10);
        sRange := '';
        oSheet.Range['A'+IntToStr(x)+':A'+IntToStr(x)].Font.Bold  := True;
        oSheet.Range['A'+IntToStr(x)+':F'+IntToStr(x)].Mergecells := True;
      end
      else if UpperCase(Copy(ADataSheet.Fields[0].AsString, 1, 2)) = 'NO' then
      begin
        sRange := 'A'+ IntToStr(x);
        oSheet.Range['A'+IntToStr(x)+':K'+IntToStr(x)].Font.Bold := True;
        oSheet.Range['A'+IntToStr(x), 'k'+IntToStr(x)].WrapText := True;
      end;
      for j := 0 to ADataSheet.FieldCount -1 do
      begin
        oSheet.Cells[x, j+1] := ADataSheet.Fields[j].AsString;
        if ((StrToIntDef(copy(ADataSheet.Fields[j].AsString, 1, 1), -131981) <> -131981) or (ADataSheet.Fields[j].AsString = '-')) and (sMerge = '') then
        begin
          if j = 0 then
            sMerge := 'A'
          else
            sMerge := numberToString(j);
        end;
      end;
      if (sMerge <> '') then
      begin
        oSheet.Range['A'+IntToStr(x)+':'+sMerge+IntToStr(x)].Mergecells := True;
        sMerge := '';
      end;
      if UpperCase(Copy(ADataSheet.Fields[0].AsString, 1, 5)) = 'TOTAL' then
      begin
        if sTitle = 'V.D.5-10 D' then
          sRange := sRange +':H'+IntToStr(x)
        else if sTitle = 'V.D.5-10 E' then
          sRange := sRange +':F'+IntToStr(x)
        else if sTitle = 'V.D.5-10 F' then
          sRange := sRange +':J'+IntToStr(x)
        else if sTitle = 'V.D.5-10 G' then
          sRange := sRange +':I'+IntToStr(x)
        else if (sTitle = 'V.D.5-10 H') or (sTitle = 'V.D.5-10 I') then
          sRange := sRange +':G'+IntToStr(x)
        else
          sRange := sRange +':K'+IntToStr(x);
        oSheet.Range['A'+IntToStr(x)+':K'+IntToStr(x)].Font.Bold  := True;
        oSheet.Range['A'+IntToStr(x)+':C'+IntToStr(x)].Mergecells := True;
      end;
      if (sRange <> '') and ContainsText(sRange, ':') then
      begin
        oSheet.Range[sRange].Borders.Weight := xlThin;
        sRange := '';
      end;
      ADataSheet.Next;
    end;
    oSheet.Range['A1:E5'].Font.Bold := True;
  finally
    oSheet.Range['D8', 'Z'+IntToStr(x)].NumberFormat := '#,##0.00;(#,##0.00);0.00';
    oSheet := Unassigned;
    AExcel.ActiveWindow.DisplayGridlines := False;
  end;
end;

procedure TfrmReportNTransform.CreateMergeCells(ASheet: TXLSWorkSheet; col1,
  row1, col2, row2: Integer);
var
  oMergedCell: TXLSMergedCell;
begin
  oMergedCell := ASheet.MergedCells.Add;
  oMergedCell.Col1 := col1;
  oMergedCell.Row1 := row1;
  oMergedCell.Col2 := col2;
  oMergedCell.Row2 := row2;
end;

procedure TfrmReportNTransform.ExportToExcel;
var
  TransDate: TDateTime;
  sReportPath: String;
  strRptDate: string;
  AFileExt: string;
  AFileName: string;
  i: Integer;
begin
  TransDate := dmGlobal.RemoteServer.GetTransDate;

//  Check Output Directory
  sReportPath := IncludeTrailingBackslash(dmGlobal.MKBDOutPath);
  if not DirectoryExists(sReportPath) then CreateDir(sReportPath);

  Screen.Cursor := crSQLWait;
  Try
    strRptDate   := FormatDateTime('ddmmyyyy',dtReportDate.Date);
    AFileExt     := '.xlsx';
    AFileName    := sReportPath + 'VD5_'+ FormatDateTime('yyyymmdd', dtReportDate.EditValue) + '_' + strRptDate + AFileExt;

    GenerateExcelFile(AFileName);
  Finally
    Screen.Cursor := crDefault;
  End;
end;

procedure TfrmReportNTransform.ExportToXls;
var
  oExcel, oSheet: Variant;
  TransDate: TDateTime;
  sReportPath: String;
  strRptDate: string;
  sFileExt: string;
  sFileName: string;
  i, r, c, row, col: Integer;
begin
//  try
//    try
//      oExcel := CreateOleObject('Excel.Application');
//      oExcel.DisplayAlerts := False;
//      TransDate := dmGlobal.RemoteServer.GetTransDate;
//
//      sReportPath := IncludeTrailingBackslash(dmGlobal.MKBDOutPath);
//      if not DirectoryExists(sReportPath) then CreateDir(sReportPath);
//
//      Screen.Cursor := crSQLWait;
//      strRptDate    := FormatDateTime('ddmmyyyy',dtReportDate.Date);
//      sFileExt      := '.xlsx';
//      sFileName     := sReportPath + cbReportGroupType.EditValue + '_' + strRptDate + sFileExt;
//
//      if cbReportGroupType.EditValue = 'VD5' then
//      begin
//
//        cdsReportVD51.Close;
//        cdsReportVD51.Params[0].AsDate := dtReportDate.Date;
//        cdsReportVD51.Open;
//
//        for r := 0 to cdsReportVD51.RecordCount - 1 do
//        begin
//          for c := 0 to cdsReportVD51.FieldCount - 1 do
//          begin
//            row := r;
//            col := c;
//            if not cdsReportVD51.Fields[c].IsNull then
//            begin
//              if cdsReportVD51.Fields[c].DataType in [ftFloat]  then
//                oSheet.AsFloat[col, row] := cdsReportVD51.Fields[c].AsFloat
//              else if cdsReportVD51.Fields[c].DataType in [ftInteger]  then
//                oSheet.AsInteger[col, row] := cdsReportVD51.Fields[c].AsInteger
//              else
//                oSheet.AsString[col, row] := cdsReportVD51.Fields[c].AsString;
//            end
//            else
//              oSheet.ClearCell(col, row);
//          end;
//          cdsReportVD51.Next;
//        end;
//      end;
//
//    finally
//      oExcel.ActiveWorkbook.SaveAs(sFileName);
//
//      oExcel.Quit;
//      oExcel := Unassigned;
//      oSheet := Unassigned;
//
//      MessageDlg('Done', mtConfirmation, [mbOk], 0);
//    end;
//  except
//    on E: Exception do
//      MessageError('Error : ' + E.Message);
//  end;
end;

procedure TfrmReportNTransform.FormCreate(Sender: TObject);
begin
  inherited;
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
  dtReportDate.Properties.MaxDate := dtReportDate.Date;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuRptGrpType.Close;
    cdsLuRptGrpType.Open;
  end;
end;

procedure TfrmReportNTransform.gvwReportTypeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  sReportType: string;
  dtReport: TDate;
begin
  inherited;
  sReportType := cdsLuRptTypeRPTTYPE.AsString;
  dtReport    := VarToDateTime(dtReportDate.EditValue);
  if sReportType = 'VD51' then
  begin
    cdsReportVD51.Close;
    cdsReportVD51.Params[0].AsDate := dtReport;
    cdsReportVD51.Open;

    dsBrowseMaster.DataSet := cdsReportVD51;
    AddColumn(cdsReportVD51);
  end
  else if sReportType = 'VD52' then
  begin
    cdsReportVD52.Close;
    cdsReportVD52.Params[0].AsDate := dtReport;
    cdsReportVD52.Open;

    dsBrowseMaster.DataSet := cdsReportVD52;
    AddColumn(cdsReportVD52);
  end
  else if sReportType = 'VD53' then
  begin
    cdsReportVD53.Close;
    cdsReportVD53.Params[0].AsDate := dtReport;
    cdsReportVD53.Open;

    dsBrowseMaster.DataSet := cdsReportVD53;
    AddColumn(cdsReportVD53);
  end
  else if sReportType = 'VD54' then
  begin
    cdsReportVD54.Close;
    cdsReportVD54.Params[0].AsDate := dtReport;
    cdsReportVD54.Open;

    dsBrowseMaster.DataSet := cdsReportVD54;
    AddColumn(cdsReportVD54);
  end
  else if sReportType = 'VD55' then
  begin
    cdsReportVD55.Close;
    cdsReportVD55.Params[0].AsDate := dtReport;
    cdsReportVD55.Open;

    dsBrowseMaster.DataSet := cdsReportVD55;
    AddColumn(cdsReportVD55);
  end
  else if sReportType = 'VD56' then
  begin
    cdsReportVD56.Close;
    cdsReportVD56.Params[0].AsDate := dtReport;
    cdsReportVD56.Open;

    dsBrowseMaster.DataSet := cdsReportVD56;
    AddColumn(cdsReportVD56);
  end
  else if sReportType = 'VD57' then
  begin
    cdsReportVD57.Close;
    cdsReportVD57.Params[0].AsDate := dtReport;
    cdsReportVD57.Open;

    dsBrowseMaster.DataSet := cdsReportVD57;
    AddColumn(cdsReportVD57);
  end
  else if sReportType = 'VD58' then
  begin
    cdsReportVD58.Close;
    cdsReportVD58.Params[0].AsDate := dtReport;
    cdsReportVD58.Open;

    dsBrowseMaster.DataSet := cdsReportVD58;
    AddColumn(cdsReportVD58);
  end
  else if sReportType = 'VD59' then
  begin
    cdsReportVD59.Close;
    cdsReportVD59.Params[0].AsDate := dtReport;
    cdsReportVD59.Open;

    dsBrowseMaster.DataSet := cdsReportVD59;
    AddColumn(cdsReportVD59);
  end
  else if sReportType = 'VD510' then
  begin
    cdsReportVD510.Close;
    cdsReportVD510.Params[0].AsDate := dtReport;
    cdsReportVD510.Open;

    dsBrowseMaster.DataSet := cdsReportVD510;
    AddColumn(cdsReportVD510);
  end;
end;
function TfrmReportNTransform.numberToString(number: Integer): String;
begin
  Result := '';
  if (number < 1) or (number > 26) then
      Exit;

  Result := 'ABCDEFGHIJKLMNOPQRSTUVWZYZ'[number];
end;

Initialization
  RegisterClass(TfrmReportNTransform);
end.
