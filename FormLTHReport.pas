unit FormLTHReport;

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
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  XLSSheetData5, XLSReadWriteII5, XLSMergedCells5, XLSCmdFormat5,
  Xc12Utils5, Xc12DataStyleSheet5, XLSComment5, XLSDrawing5,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, System.Actions, System.ImageList, ComObj, ClassClientConst,
  dxDateRanges, dxScrollbarAnnotations;

type
  TfrmLTHReport = class(TfrmBrowseData)
    cdsLTHReport: TNClientDataset;
    cdsLTHReportTmp: TNClientDataset;
    cdsLTHReportTmpDESC: TStringField;
    cdsLTHReportTmpBUY: TFloatField;
    cdsLTHReportTmpSELL: TFloatField;
    cdsLTHReportTmpTOTAL: TFloatField;
    gvwMasterDESC: TcxGridDBBandedColumn;
    gvwMasterBUY: TcxGridDBBandedColumn;
    gvwMasterSELL: TcxGridDBBandedColumn;
    gvwMasterTOTAL: TcxGridDBBandedColumn;
    SaveDialog: TSaveDialog;
    actGenerateLTH: TNAction;
    GeneratetoFile1: TMenuItem;
    N5: TMenuItem;
    dxLayoutControl1: TdxLayoutControl;
    dtReportDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actViewData: TNAction;
    XLSReadWriteII51: TXLSReadWriteII5;
    cdsLTHReportDATA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actGenerateLTHExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveGridExcelExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
    function CreateExcelLTH(AFileName: String): Boolean;
    function CreateLTHFile(AFileName: String): Boolean;
  end;

var
  frmLTHReport: TfrmLTHReport;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmLTHReport.actGenerateLTHExecute(Sender: TObject);
var
  sFileName, sExt: string;
begin
  inherited;
  if MessageDlg('Generate to LTH Files?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Abort;

  SaveDialog.FileName := dmGlobal.RemoteServer.GetBrokerCode + '-LTH' + FormatDateTime('yyyymmdd', cdsLTHReport.Params[0].AsDate);
  if not SaveDialog.Execute then
    Abort;

  cdsLTHReportTmp.DisableControls;
  cdsLTHReport.DisableControls;

  sFileName := SaveDialog.FileName;
  sExt      := ExtractFileExt(sFileName);
  if LowerCase(sExt) = '.lth' then
  begin
    sFileName := sFileName + '.lth';
    CreateLTHFile(sFileName);
  end
  else if (LowerCase(sExt) = '.xlsx') or (LowerCase(sExt) = '.xls') then
  begin
    sFileName := sFileName + '.xlsx';
    CreateExcelLTH(sFileName);
  end
  else
  begin
    sFileName := sFileName + '.lth';
    CreateLTHFile(sFileName);
    sFileName := ChangeFileExt(sFileName, '.xlsx');
    CreateExcelLTH(sFileName);
  end;

  cdsLTHReportTmp.EnableControls;
  cdsLTHReport.EnableControls;
  MessageDlg('Generate file has done...', mtInformation, [mbOk], 0);
end;

procedure TfrmLTHReport.actRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmLTHReport.actSaveGridExcelExecute(Sender: TObject);
var
  sFileName, sExt: string;
  oXLS : TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  sList: string;
  i: Integer;
begin
  //inherited;
  if MessageDlg('Generate to excel file?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Abort;

  SaveDialog.FileName := dmGlobal.RemoteServer.GetBrokerCode
    + '-LTH' + FormatDateTime('yyyymmdd', dmGlobal.RemoteServer.GetTransDate);
  if not SaveDialog.Execute then
    Abort;

  sFileName := SaveDialog.FileName;
  sExt      := ExtractFileExt(sFileName);
  if LowerCase(sExt) <> '.xls' then
    sFileName := sFileName +'.xls';

  oXls          := TXLSReadWriteII5.Create(self);
  oXls.Filename := sFileName;

  oSheet := oXls.Sheets[0];
  oSheet.Clear;

  i := 0;
  cdsLTHReport.First;
  sList := cdsLTHReportDATA.AsString;
  oSheet.AsString[0, i] := dmGlobal.GetStringDelimiter(sList, '|');
  cdsLTHReport.Next;
  while not cdsLTHReport.Eof do
  begin
    Inc(i);
    sList := cdsLTHReportDATA.AsString;
    oSheet.AsString[0, i] := dmGlobal.GetStringDelimiter(sList, '|');
    oSheet.AsString[1, i] := dmGlobal.GetStringDelimiter(sList, '|');
    oSheet.AsString[2, i] := dmGlobal.GetStringDelimiter(sList, '|');
    oSheet.AsString[3, i] := dmGlobal.GetStringDelimiter(sList, '|');
    cdsLTHReport.Next;
  end;

  oXls.Write;
  FreeAndNil(oXls);
  MessageDlg('Generate file has done...', mtInformation, [mbOk], 0);
end;

procedure TfrmLTHReport.actViewDataExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

function TfrmLTHReport.CreateExcelLTH(AFileName: String): Boolean;
var
  oExcel, oSheet: OleVariant;
begin
  Result := False;

  if (cdsLTHReportTmp.IsEmpty) or (not cdsLTHReportTmp.Active) then
    exit;

  Screen.Cursor := crSQLWait;
  Try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Add;
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'LTH';

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];

    oSheet.Range['A1','A1'].ColumnWidth := 4;
    oSheet.Range['B1','B1'].ColumnWidth := 35;
    oSheet.Range['C1','E1'].ColumnWidth := 20;

    oSheet.Cells[1, 1] := 'Nama Anggota Bursa';
    oSheet.Cells[2, 1] := 'Kode Anggota Bursa';
    oSheet.Cells[3, 1] := 'Tanggal';
    oSheet.Cells[4, 1] := 'Nama Direktur yang bertanggung jawab';

    oSheet.Cells[1, 3] := dmGlobal.RemoteServer.GetGlobalParamString('001');
    oSheet.Cells[2, 3] := dmGlobal.RemoteServer.GetGlobalParamString('000');
    oSheet.Cells[3, 3] := cdsLTHReport.Params[0].AsDate;
    oSheet.Cells[4, 3] := dmGlobal.RemoteServer.GetGlobalParamString('004');

    oSheet.Cells[6, 3] := 'Nilai Transaksi';
    oSheet.Cells[7, 1] := 'No.';
    oSheet.Cells[7, 2] := 'Keterangan';
    oSheet.Cells[7, 3] := 'Beli';
    oSheet.Cells[7, 4] := 'Jual';
    oSheet.Cells[7, 5] := 'Total';

    oSheet.Cells[9, 1]  := '1';
    oSheet.Cells[13, 1] := '2';
    oSheet.Cells[18, 1] := '3';

    oSheet.Cells[9, 2]  := 'Transaksi Portofolio';
    oSheet.Cells[10, 2] := 'Transaksi Nasabah';
    oSheet.Cells[11, 2] := 'Total Transaksi';

    oSheet.Cells[13, 2] := 'Transaksi Nasabah Reguler';
    oSheet.Cells[14, 2] := 'Transaksi Nasabah Margin';
    oSheet.Cells[15, 2] := 'Transaksi Nasabah Short Selling';
    oSheet.Cells[16, 2] := 'Total Transaksi Nasabah';

    oSheet.Cells[18, 2] := 'Transaksi Lokal';
    oSheet.Cells[19, 2] := 'Transaksi Pemodal Asing';
    oSheet.Cells[20, 2] := 'Total Transaksi Nasabah';

    //No. 1
    if cdsLTHReportTmp.Locate('DESC', 'Transaksi Portofolio', [loCaseInsensitive]) then
    begin
      oSheet.Cells[9, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[9, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[9, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[9, 3] := 0;
      oSheet.Cells[9, 4] := 0;
      oSheet.Cells[9, 5] := 0;
    end;

    if cdsLTHReportTmp.Locate('DESC', 'Transaksi Nasabah', [loCaseInsensitive]) then
    begin
      oSheet.Cells[10, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[10, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[10, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[10, 3] := 0;
      oSheet.Cells[10, 4] := 0;
      oSheet.Cells[10, 5] := 0;
    end;

    if cdsLTHReportTmp.Locate('DESC', 'Total Transaksi', [loCaseInsensitive]) then
    begin
      oSheet.Cells[11, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[11, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[11, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[11, 3] := 0;
      oSheet.Cells[11, 4] := 0;
      oSheet.Cells[11, 5] := 0;
    end;

    //No. 2
    if cdsLTHReportTmp.Locate('DESC', 'Transaksi Nasabah Reguler', [loCaseInsensitive]) then
    begin
      oSheet.Cells[13, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[13, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[13, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[13, 3] := 0;
      oSheet.Cells[13, 4] := 0;
      oSheet.Cells[13, 5] := 0;
    end;

    if cdsLTHReportTmp.Locate('DESC', 'Transaksi Nasabah Margin', [loCaseInsensitive]) then
    begin
      oSheet.Cells[14, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[14, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[14, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[14, 3] := 0;
      oSheet.Cells[14, 4] := 0;
      oSheet.Cells[14, 5] := 0;
    end;

    if cdsLTHReportTmp.Locate('DESC', 'Transaksi Nasabah Short Selling', [loCaseInsensitive]) then
    begin
      oSheet.Cells[15, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[15, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[15, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[15, 3] := 0;
      oSheet.Cells[15, 4] := 0;
      oSheet.Cells[15, 5] := 0;
    end;

    if cdsLTHReportTmp.Locate('DESC', 'Total Transaksi Nasabah', [loCaseInsensitive]) then
    begin
      oSheet.Cells[16, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[16, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[16, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[16, 3] := 0;
      oSheet.Cells[16, 4] := 0;
      oSheet.Cells[16, 5] := 0;
    end;

    //No. 3
    if cdsLTHReportTmp.Locate('DESC', 'Transaksi Lokal', [loCaseInsensitive]) then
    begin
      oSheet.Cells[18, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[18, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[18, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[18, 3] := 0;
      oSheet.Cells[18, 4] := 0;
      oSheet.Cells[18, 5] := 0;
    end;

    if cdsLTHReportTmp.Locate('DESC', 'Transaksi Pemodal Asing', [loCaseInsensitive]) then
    begin
      oSheet.Cells[19, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[19, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[19, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[19, 3] := 0;
      oSheet.Cells[19, 4] := 0;
      oSheet.Cells[19, 5] := 0;
    end;

    if cdsLTHReportTmp.Locate('DESC', 'Total Transaksi Nasabah', [loCaseInsensitive]) then
    begin
      oSheet.Cells[20, 3] := cdsLTHReportTmpBUY.AsFloat;
      oSheet.Cells[20, 4] := cdsLTHReportTmpSELL.AsFloat;
      oSheet.Cells[20, 5] := cdsLTHReportTmpTOTAL.AsFloat;
    end
    else
    begin
      oSheet.Cells[20, 3] := 0;
      oSheet.Cells[20, 4] := 0;
      oSheet.Cells[20, 5] := 0;
    end;

    oSheet.Range['C6:E6'].MergeCells          := True;
    oSheet.Range['A6:A7'].MergeCells          := True;
    oSheet.Range['B6:B7'].MergeCells          := True;
    oSheet.Range['A6:E7'].VerticalAlignment   := xlCenter;
    oSheet.Range['A6:E7'].HorizontalAlignment := xlCenter;
    oSheet.Range['A1:A4'].Font.Bold           := True;
    oSheet.Range['A6:E7'].Font.Bold           := True;
    oSheet.Range['B11:E11'].Font.Bold         := True;
    oSheet.Range['B16:E16'].Font.Bold         := True;
    oSheet.Range['B20:E20'].Font.Bold         := True;
    oSheet.Range['C9:F20'].NumberFormat       := '#,##0;(#,##0);0';

    oSheet.Range['A6:E7'].Borders.Weight   := xlThin;
    oSheet.Range['B11:E11'].Borders.Weight := xlThin;
    oSheet.Range['B16:E16'].Borders.Weight := xlThin;
    oSheet.Range['B20:E20'].Borders.Weight := xlThin;

    oSheet.Range['A8:A21'].Borders[xlEdgeLeft].Weight    := xlThin;
    oSheet.Range['A20:E21'].Borders[xlEdgeBottom].Weight := xlThin;
    oSheet.Range['B8:B21'].Borders[xlEdgeLeft].Weight    := xlThin;
    oSheet.Range['C8:C20'].Borders[xlEdgeLeft].Weight    := xlThin;
    oSheet.Range['D8:D20'].Borders[xlEdgeLeft].Weight    := xlThin;
    oSheet.Range['E8:E20'].Borders[xlEdgeLeft].Weight    := xlThin;
    oSheet.Range['E8:E21'].Borders[xlEdgeRight].Weight   := xlThin;

    oSheet.Range['A6:E7'].Interior.Color := ColorToRGB(clSilver);
  Finally
    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.WorkBooks[1].SaveAs(AFileName);
    oExcel.Quit;

    oExcel := Unassigned;
    oSheet := Unassigned;

    Screen.Cursor := crDefault;
  End;
end;

function TfrmLTHReport.CreateLTHFile(AFileName: String): Boolean;
var
  oList: TStringList;
begin
  Result := False;
  oList := TStringList.Create;
  Try
    cdsLTHReport.First;
    while not cdsLTHReport.Eof do
    begin
      oList.Add(UpperCase(cdsLTHReportDATA.AsString));
      cdsLTHReport.Next;
    end;

    oList.SaveToFile(AFileName);
    Result := True;
  Finally
    FreeAndNil(oList);
  End;

end;

procedure TfrmLTHReport.FormCreate(Sender: TObject);
begin
  dtReportDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmLTHReport.RefreshData;
var
  sList: string;
begin
  inherited;
  cdsLTHReport.Close;
  cdsLTHReport.Params[0].AsDate := dtReportDate.Date;
  cdsLTHReport.Open;

  cdsLTHReportTmp.Close;
  cdsLTHReportTmp.CreateDataSet;

  cdsLTHReport.First;
  cdsLTHReport.Next;
  sList := cdsLTHReportDATA.AsString;
  cdsLTHReportTmp.Append;
  cdsLTHReportTmpDESC.AsString := dmGlobal.GetStringDelimiter(sList, '|') +' : '+ dmGlobal.GetStringDelimiter(sList, '|');
  cdsLTHReportTmpBUY.AsFloat   := 0;
  cdsLTHReportTmpSELL.AsFloat  := 0;
  cdsLTHReportTmpTOTAL.AsFloat := 0;
  cdsLTHReportTmp.Post;

  cdsLTHReport.Next;
  sList := cdsLTHReportDATA.AsString;
  cdsLTHReportTmp.Append;
  cdsLTHReportTmpDESC.AsString := dmGlobal.GetStringDelimiter(sList, '|') +' : '+ dmGlobal.GetStringDelimiter(sList, '|');
  cdsLTHReportTmpBUY.AsFloat   := 0;
  cdsLTHReportTmpSELL.AsFloat  := 0;
  cdsLTHReportTmpTOTAL.AsFloat := 0;
  cdsLTHReportTmp.Post;

  cdsLTHReport.Next;
  sList := cdsLTHReportDATA.AsString;
  cdsLTHReportTmp.Append;
  cdsLTHReportTmpDESC.AsString := dmGlobal.GetStringDelimiter(sList, '|') +' : '+ dmGlobal.GetStringDelimiter(sList, '|');
  cdsLTHReportTmpBUY.AsFloat   := 0;
  cdsLTHReportTmpSELL.AsFloat  := 0;
  cdsLTHReportTmpTOTAL.AsFloat := 0;
  cdsLTHReportTmp.Post;
  cdsLTHReport.Next;

  while not cdsLTHReport.Eof do
  begin
    sList := cdsLTHReportDATA.AsString;

    cdsLTHReportTmp.Append;
    cdsLTHReportTmpDESC.AsString := Trim(dmGlobal.GetStringDelimiter(sList, '|'));
    cdsLTHReportTmpBUY.AsFloat   := StrToFloatDef(dmGlobal.GetStringDelimiter(sList, '|'), 0);
    cdsLTHReportTmpSELL.AsFloat  := StrToFloatDef(dmGlobal.GetStringDelimiter(sList, '|'), 0);
    cdsLTHReportTmpTOTAL.AsFloat := StrToFloatDef(dmGlobal.GetStringDelimiter(sList, '|'), 0);
    cdsLTHReportTmp.Post;

    cdsLTHReport.Next;
  end;
end;

end.
