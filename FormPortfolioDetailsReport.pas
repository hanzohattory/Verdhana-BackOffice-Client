unit FormPortfolioDetailsReport;

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
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxImageComboBox,
  XLSSheetData5, XLSReadWriteII5, XLSMergedCells5, XLSCmdFormat5,
  Xc12Utils5, Xc12DataStyleSheet5, XLSComment5, XLSDrawing5, System.Actions,
  System.ImageList, ComObj, ClassClientConst, dxDateRanges;

type
  TfrmPortfolioDetailsReport = class(TfrmBrowseData)
    cdsPortfolioDetailsReport: TNClientDataset;
    cdsPortfolioDetailsReportLNNUM: TIntegerField;
    cdsPortfolioDetailsReportSTOCKTYPE: TStringField;
    cdsPortfolioDetailsReportSTOCKCODE: TStringField;
    cdsPortfolioDetailsReportCLOSEPRICE: TFloatField;
    cdsPortfolioDetailsReportCO_BAL1: TFloatField;
    cdsPortfolioDetailsReportCO_BAL2: TFloatField;
    cdsPortfolioDetailsReportCO_BAL4: TFloatField;
    cdsPortfolioDetailsReportCL_BAL1: TFloatField;
    cdsPortfolioDetailsReportCL_BAL2: TFloatField;
    cdsPortfolioDetailsReportCL_BAL4: TFloatField;
    cdsPortfolioDetailsReportSR_BAL: TFloatField;
    gvwMasterLNNUM: TcxGridDBBandedColumn;
    gvwMasterSTOCKTYPE: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterCLOSEPRICE: TcxGridDBBandedColumn;
    gvwMasterCO_BAL1: TcxGridDBBandedColumn;
    gvwMasterCO_BAL2: TcxGridDBBandedColumn;
    gvwMasterCO_BAL4: TcxGridDBBandedColumn;
    gvwMasterCL_BAL1: TcxGridDBBandedColumn;
    gvwMasterCL_BAL2: TcxGridDBBandedColumn;
    gvwMasterCL_BAL4: TcxGridDBBandedColumn;
    gvwMasterSR_BAL: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    actGenerateToFile: TNAction;
    SaveDialog: TSaveDialog;
    GeneratetoFile1: TMenuItem;
    N5: TMenuItem;
    cdsAccCustodyOwner: TNClientDataset;
    cdsAccCustodyOwner__COLUMN1: TIntegerField;
    dtReportDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    grdMasterLevel2: TcxGridLevel;
    gvwDetail: TcxGridDBBandedTableView;
    cdsPortfolioDetails: TNClientDataset;
    cdsPortfolioDetailsACCID: TLargeintField;
    cdsPortfolioDetailsACCNO: TStringField;
    cdsPortfolioDetailsACCNAME: TStringField;
    cdsPortfolioDetailsACCTYPE: TStringField;
    cdsPortfolioDetailsSTOCKTYPE: TStringField;
    cdsPortfolioDetailsSTOCKCODE: TStringField;
    cdsPortfolioDetailsSTOCKNAME: TStringField;
    cdsPortfolioDetailsCLOSEPRICE: TFloatField;
    cdsPortfolioDetailsCO_BAL1: TFloatField;
    cdsPortfolioDetailsCO_BAL2: TFloatField;
    cdsPortfolioDetailsCO_BAL4: TFloatField;
    cdsPortfolioDetailsCL_BAL1: TFloatField;
    cdsPortfolioDetailsCL_BAL2: TFloatField;
    cdsPortfolioDetailsCL_BAL4: TFloatField;
    cdsPortfolioDetailsSR_BAL: TFloatField;
    dsDetail: TDataSource;
    gvwDetailACCID: TcxGridDBBandedColumn;
    gvwDetailACCNO: TcxGridDBBandedColumn;
    gvwDetailACCNAME: TcxGridDBBandedColumn;
    gvwDetailACCTYPE: TcxGridDBBandedColumn;
    gvwDetailSTOCKTYPE: TcxGridDBBandedColumn;
    gvwDetailSTOCKCODE: TcxGridDBBandedColumn;
    gvwDetailSTOCKNAME: TcxGridDBBandedColumn;
    gvwDetailCLOSEPRICE: TcxGridDBBandedColumn;
    gvwDetailCO_BAL1: TcxGridDBBandedColumn;
    gvwDetailCO_BAL2: TcxGridDBBandedColumn;
    gvwDetailCO_BAL4: TcxGridDBBandedColumn;
    gvwDetailCL_BAL1: TcxGridDBBandedColumn;
    gvwDetailCL_BAL2: TcxGridDBBandedColumn;
    gvwDetailCL_BAL4: TcxGridDBBandedColumn;
    gvwDetailSR_BAL: TcxGridDBBandedColumn;
    btnViewData: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    actViewData: TNAction;
    cdsPortfolioDetailsSUBREK: TStringField;
    gvwDetailSUBREK: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actGenerateToFileExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
  private
    { Private declarations }
    FReportDate: TDateTime;

    procedure RefreshData;

    function ZeroToEmpty(AData: Double): string;
  public
    { Public declarations }
    function CreatePORFile(AFileName: String): Boolean;
    function CreateExcelPOR(AFileName: String): Boolean;
  end;

var
  frmPortfolioDetailsReport: TfrmPortfolioDetailsReport;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmPortfolioDetailsReport.actGenerateToFileExecute(Sender: TObject);
var
  sFileName, sExt: string;
begin
  inherited;
  if MessageDlg('Generate to file .por ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Abort;

  SaveDialog.FileName := dmGlobal.RemoteServer.GetBrokerCode
    +'-PORTOFOLIO' + FormatDateTime('yyyymmdd', cdsPortfolioDetailsReport.Params[0].AsDate);
  if not SaveDialog.Execute then
    Abort;

  cdsAccCustodyOwner.Close;
  cdsAccCustodyOwner.Open;

  sFileName := SaveDialog.FileName;
//  sExt      := ExtractFileExt(sFileName);
//  if LowerCase(sExt) = '.por' then
//  begin
//    sFileName := sFileName +'.por';
//    CreatePORFile(sFileName);
//  end
//  else if LowerCase(sExt) = '.xlsx' then
//  begin
//    sFileName := sFileName + '.xlsx';
//    CreateExcelPOR(sFileName);
//  end
//  else
//  begin
    sFileName := sFileName + '.por';
    CreatePORFile(sFileName);
    sFileName := ChangeFileExt(sFileName, '.xlsx');
    CreateExcelPOR(sFileName);
//  end;


  MessageDlg('Generate file has done...', mtInformation, [mbOk], 0);
  RefreshData;
end;

procedure TfrmPortfolioDetailsReport.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate := dtReportDate.Date;
  inherited;
end;

procedure TfrmPortfolioDetailsReport.actViewDataExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

function TfrmPortfolioDetailsReport.CreateExcelPOR(AFileName: String): Boolean;
var
  oExcel, oSheet: OleVariant;
  i, row, rowHeaderWarkat: Integer;
begin
  Result := False;

  if (cdsPortfolioDetailsReport.IsEmpty) or (not cdsPortfolioDetailsReport.Active) then
    exit;

  Screen.Cursor := crSQLWait;
  Try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Add;
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'LTH';

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];

    oSheet.Range['A1:J1'].ColumnWidth := 15;

    oSheet.Cells[1, 1] := 'LAPORAN RINCIAN PORTOFOLIO';
    oSheet.Cells[3, 1] := 'Nama Anggota Bursa Efek';
    oSheet.Cells[4, 1] := 'Kode Anggota Bursa Efek';
    oSheet.Cells[5, 1] := 'Tanggal Pelaporan';
    oSheet.Cells[6, 1] := 'Jumlah Own Account di KSEI';

    oSheet.Cells[3, 3] := dmGlobal.RemoteServer.GetGlobalParamString('001');
    oSheet.Cells[4, 3] := dmGlobal.RemoteServer.GetGlobalParamString('000');
    oSheet.Cells[5, 3] := cdsPortfolioDetailsReport.Params[0].AsDate;
    oSheet.Cells[6, 3] := UpperCase(cdsAccCustodyOwner.Fields[0].AsString);

    oSheet.Cells[8, 1]  := 'No.';
    oSheet.Cells[8, 2]  := 'Kode Efek';
    oSheet.Cells[8, 3]  := 'Harga Efek';
    oSheet.Cells[8, 4]  := 'Portofolio (Unit)';
    oSheet.Cells[9, 4]  := 'Rek. 001';
    oSheet.Cells[9, 5]  := 'Rek. 002';
    oSheet.Cells[9, 6]  := 'Rek. 004';
    oSheet.Cells[8, 7]  := 'Nasabah (Unit)';
    oSheet.Cells[9, 7]  := 'Rek. 001';
    oSheet.Cells[9, 8]  := 'Rek. 002';
    oSheet.Cells[9, 9]  := 'Rek. 004';
    oSheet.Cells[9, 10] := 'Rek. Sub Acc.';

    i   := 0;
    row := 9;
    cdsPortfolioDetailsReport.Filter   := 'STOCKTYPE = '+QuotedStr('S');
    cdsPortfolioDetailsReport.Filtered := True;

    if not cdsPortfolioDetailsReport.IsEmpty then
    begin
      cdsPortfolioDetailsReport.First;
      while not cdsPortfolioDetailsReport.Eof do
      begin
        Inc(i);
        row := 9 + i;

        oSheet.Cells[row, 1]  := i;
        oSheet.Cells[row, 2]  := cdsPortfolioDetailsReportSTOCKCODE.AsString;
        oSheet.Cells[row, 3]  := cdsPortfolioDetailsReportCLOSEPRICE.AsFloat;
        oSheet.Cells[row, 4]  := cdsPortfolioDetailsReportCO_BAL1.AsFloat;
        oSheet.Cells[row, 5]  := cdsPortfolioDetailsReportCO_BAL2.AsFloat;
        oSheet.Cells[row, 6]  := cdsPortfolioDetailsReportCO_BAL4.AsFloat;
        oSheet.Cells[row, 7]  := cdsPortfolioDetailsReportCL_BAL1.AsFloat;
        oSheet.Cells[row, 8]  := cdsPortfolioDetailsReportCL_BAL2.AsFloat;
        oSheet.Cells[row, 9]  := cdsPortfolioDetailsReportCL_BAL4.AsFloat;
        oSheet.Cells[row, 10] := cdsPortfolioDetailsReportSR_BAL.AsFloat;

        cdsPortfolioDetailsReport.Next;
      end;
    end;

    oSheet.Range['A8:J'+IntToStr(row)].Borders.Weight := xlThin;
    oSheet.Range['C10:J'+IntToStr(row)].NumberFormat  := '#,##0;(#,##0);0';

    row := row + 3;
    oSheet.Cells[row, 1] := 'EFEK WARKAT DAN KUSTODIAN LAIN';
    oSheet.Range['A'+IntToStr(row)].Font.Bold := True;

    row := row + 2;
    rowHeaderWarkat := row;
    oSheet.Cells[row, 1] := 'No';
    oSheet.Cells[row, 2] := 'Kode Efek';
    oSheet.Cells[row, 3] := 'Harga Efek';
    oSheet.Cells[row, 4] := 'Kustodian Sendiri'+#10+'(Dengan Warkat)';
    oSheet.Cells[row, 6] := 'Kustodian Lain'+#10+'(Tanpa Warkat)';

    oSheet.Range['A'+IntToStr(row)+':A'+IntToStr(row+2)].MergeCells := True;
    oSheet.Range['B'+IntToStr(row)+':B'+IntToStr(row+2)].MergeCells := True;
    oSheet.Range['C'+IntToStr(row)+':C'+IntToStr(row+2)].MergeCells := True;
    oSheet.Range['D'+IntToStr(row)+':E'+IntToStr(row+1)].MergeCells := True;
    oSheet.Range['F'+IntToStr(row)+':G'+IntToStr(row+1)].MergeCells := True;

//    row := row + 1;
//    oSheet.Cells[row, 4] := '(Dengan Warkat)';
//    oSheet.Cells[row, 6] := '(Tanpa Warkat)';

    row := row + 2;
    oSheet.Cells[row, 4] := 'Portfolio';
    oSheet.Cells[row, 5] := 'Nasabah';
    oSheet.Cells[row, 6] := 'Portfolio';
    oSheet.Cells[row, 7] := 'Nasabah';

    oSheet.Range['A'+IntToStr(rowHeaderWarkat)+':G'+IntToStr(row)].VerticalAlignment   := xlCenter;
    oSheet.Range['A'+IntToStr(rowHeaderWarkat)+':G'+IntToStr(row)].HorizontalAlignment := xlCenter;

    oSheet.Range['A'+IntToStr(rowHeaderWarkat)+':G'+IntToStr(row)].Interior.Color := ColorToRGB(clSilver);

    i := 1;
    row := row + 1;
    cdsPortfolioDetailsReport.Filter   := 'STOCKTYPE = '+QuotedStr('W');
    cdsPortfolioDetailsReport.Filtered := True;

    if not cdsPortfolioDetailsReport.IsEmpty then
    begin
      cdsPortfolioDetailsReport.First;
      while not cdsPortfolioDetailsReport.Eof do
      begin
        oSheet.Cells[row, 1] := i;
        oSheet.Cells[row, 2] := cdsPortfolioDetailsReportSTOCKCODE.AsString;
        oSheet.Cells[row, 3] := cdsPortfolioDetailsReportCLOSEPRICE.AsFloat;
        oSheet.Cells[row, 4] := cdsPortfolioDetailsReportCO_BAL1.AsFloat;
        oSheet.Cells[row, 5] := cdsPortfolioDetailsReportSR_BAL.AsFloat;

        Inc(row);
        Inc(i);
        cdsPortfolioDetailsReport.Next;
      end;
    end;

    oSheet.Range['A'+IntToStr(rowHeaderWarkat)+':G'+IntToStr(row)].Borders.Weight := xlThin;
    oSheet.Range['A'+IntToStr(rowHeaderWarkat)+':G'+IntToStr(row)].Font.Bold      := True;
    oSheet.Range['C'+IntToStr(rowHeaderWarkat+3)+':G'+IntToStr(row)].NumberFormat := '#,##0;(#,##0);0';

  Finally
    oSheet.Range['A8:A9'].MergeCells := True;
    oSheet.Range['B8:B9'].MergeCells := True;
    oSheet.Range['C8:C9'].MergeCells := True;
    oSheet.Range['D8:F8'].MergeCells := True;
    oSheet.Range['G8:J8'].MergeCells := True;

    oSheet.Range['A8:A9'].VerticalAlignment   := xlCenter;
    oSheet.Range['B8:B9'].VerticalAlignment   := xlCenter;
    oSheet.Range['C8:C9'].VerticalAlignment   := xlCenter;
    oSheet.Range['D8:D9'].VerticalAlignment   := xlCenter;
    oSheet.Range['A8:J9'].HorizontalAlignment := xlCenter;

    oSheet.Range['A8:A'+IntToStr(row)].HorizontalAlignment            := xlCenter;
    oSheet.Range['A'+IntToStr(rowHeaderWarkat-2)].HorizontalAlignment := xlLeft;

    oSheet.Range['A1:A7'].Font.Bold      := True;
    oSheet.Range['A8:J9'].Font.Bold      := True;
    oSheet.Range['A8:J9'].Interior.Color := ColorToRGB(clSilver);

    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.WorkBooks[1].SaveAs(AFileName);
    oExcel.Quit;

    oExcel := Unassigned;
    oSheet := Unassigned;

    Screen.Cursor := crDefault;
  End;
end;

function TfrmPortfolioDetailsReport.CreatePORFile(AFileName: String): Boolean;
var
  oList: TStringList;
begin
  Result := False;

  cdsPortfolioDetailsReport.DisableControls;
  oList     := TStringList.Create;

  Try
    oList.Add('LAPORAN RINCIAN PORTOFOLIO');
    oList.Add(UpperCase(dmGlobal.RemoteServer.GetGlobalParamString('001')));
    oList.Add(UpperCase(dmGlobal.RemoteServer.GetGlobalParamString('000')));
    oList.Add(FormatDateTime('yyyymmdd', FReportDate));
    oList.Add(UpperCase(cdsAccCustodyOwner.Fields[0].AsString));

    cdsPortfolioDetailsReport.Filter   := 'STOCKTYPE = '+QuotedStr('S');
    cdsPortfolioDetailsReport.Filtered := True;
    if cdsPortfolioDetailsReport.RecordCount > 0 then
    begin
      cdsPortfolioDetailsReport.First;
      while not cdsPortfolioDetailsReport.Eof do
      begin
        oList.Add(cdsPortfolioDetailsReportSTOCKCODE.AsString+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCLOSEPRICE.AsFloat)+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCO_BAL1.AsFloat)+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCO_BAL2.AsFloat)+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCO_BAL4.AsFloat)+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCL_BAL1.AsFloat)+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCL_BAL2.AsFloat)+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCL_BAL4.AsFloat)+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportSR_BAL.AsFloat));
        cdsPortfolioDetailsReport.Next;
      end;
    end;
//    else
//      oList.Add('||||||||');

//    request Corpus untuk IDR dihilangkan 06/2019
//    oList.Add('IDR|1|||||||');
//    oList.Add('EFEK WARKAT DAN KUSTODIAN LAIN');

    cdsPortfolioDetailsReport.Filter   := 'STOCKTYPE = '+QuotedStr('W');
    cdsPortfolioDetailsReport.Filtered := True;
    if cdsPortfolioDetailsReport.RecordCount > 0 then
    begin
      cdsPortfolioDetailsReport.First;
      while not cdsPortfolioDetailsReport.Eof do
      begin
        oList.Add(cdsPortfolioDetailsReportSTOCKCODE.AsString+'|'+
          ZeroToEmpty(cdsPortfolioDetailsReportCLOSEPRICE.AsFloat)+'||'+
          ZeroToEmpty(cdsPortfolioDetailsReportSR_BAL.AsFloat)+'||');
        cdsPortfolioDetailsReport.Next;
      end;
    end;
//    else
//      oList.Add('|||||');
//    request Corpus untuk IDR dihilangkan 06/2019
//    oList.Add('IDR|1||||');

    oList.SaveToFile(AFileName);
    Result := True;
  Finally
    FreeAndNil(oList);
    cdsPortfolioDetailsReport.Filtered := False;
    cdsPortfolioDetailsReport.EnableControls;
  End;

end;

procedure TfrmPortfolioDetailsReport.FormCreate(Sender: TObject);
begin
  inherited;
  FReportDate := dmGlobal.RemoteServer.GetTransDate;
  dtReportDate.Date := FReportDate;

//  with dmGlobal.IntDataLookup do
//  begin
//    if not cdsLuInstrumentType.Active then
//      cdsLuInstrumentType.Open;
//
//    if not cdsLuAccType.Active then
//      cdsLuAccType.Open;
//  end;

//  cdsPortfolioDetailsReport.Close;
//  cdsPortfolioDetailsReport.Params[0].AsDate := dtReportDate.Date;
//  cdsPortfolioDetailsReport.Open;

//  cdsPortfolioDetails.Close;
//  cdsPortfolioDetails.Params[0].AsDate := dtReportDate.Date;
//  cdsPortfolioDetails.Open;
end;

procedure TfrmPortfolioDetailsReport.RefreshData;
begin
  cdsPortfolioDetailsReport.Filtered := False;

  cdsPortfolioDetailsReport.Close;
  cdsPortfolioDetailsReport.Params[0].AsDate := dtReportDate.Date;
  cdsPortfolioDetailsReport.Open;

  cdsPortfolioDetails.Close;
  cdsPortfolioDetails.Params[0].AsDate := dtReportDate.Date;
  cdsPortfolioDetails.Open;
end;

function TfrmPortfolioDetailsReport.ZeroToEmpty(AData: Double): string;
begin
  if AData = 0 then
    Result := '0'
  else
    Result := FloatToStr(AData);
end;

end.
