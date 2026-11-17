unit FormMKBDVD55Monthly;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, Datasnap.DBClient,
  NClientDataset, ComObj, System.Actions, System.ImageList, ClassClientConst,
  cxCalendar, dxDateRanges, dxScrollbarAnnotations, cxSpinEdit, cxBarEditItem;

type
  TfrmMKBDVD55Monthly = class(TfrmBrowseData)
    actViewData: TNAction;
    actGenerateData: TNAction;
    cdsVD55Monthly: TNClientDataset;
    cdsVD55MonthlyPERIOD: TStringField;
    cdsVD55MonthlyNO: TIntegerField;
    cdsVD55MonthlyLNUM: TStringField;
    cdsVD55MonthlyCOL1: TStringField;
    cdsVD55MonthlyCOL2: TStringField;
    cdsVD55MonthlyCOL3: TStringField;
    cdsVD55MonthlyCOL4: TStringField;
    cdsVD55MonthlyCOL5: TStringField;
    cdsVD55MonthlyCOL6: TStringField;
    gvwMasterPERIOD: TcxGridDBBandedColumn;
    gvwMasterNO: TcxGridDBBandedColumn;
    gvwMasterLNUM: TcxGridDBBandedColumn;
    gvwMasterCOL1: TcxGridDBBandedColumn;
    gvwMasterCOL2: TcxGridDBBandedColumn;
    gvwMasterCOL3: TcxGridDBBandedColumn;
    gvwMasterCOL4: TcxGridDBBandedColumn;
    gvwMasterCOL5: TcxGridDBBandedColumn;
    gvwMasterCOL6: TcxGridDBBandedColumn;
    actEditValue: TNAction;
    actGenerateExcel: TNAction;
    edMonth: TcxBarEditItem;
    edYear: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cdsVD55MonthlyID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure actGenerateDataExecute(Sender: TObject);
    procedure gvwMasterEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsVD55MonthlyCOL4Change(Sender: TField);
    procedure cdsVD55MonthlyCOL6Change(Sender: TField);
    procedure RefreshData();
    procedure actGenerateExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    wDay,wMonth,wYear : Word;
    sPeriod : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMKBDVD55Monthly: TfrmMKBDVD55Monthly;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormMonthlyXE13Report;

procedure TfrmMKBDVD55Monthly.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Visible := (cdsVD55MonthlyNO.AsInteger <> 1)
    and (cdsVD55MonthlyNO.AsInteger <> 2)
    and (cdsVD55MonthlyNO.AsInteger <> 3)
    and (cdsVD55MonthlyNO.AsInteger <> 4)
    and (cdsVD55MonthlyNO.AsInteger <> 5)
    and (cdsVD55MonthlyNO.AsInteger <> 6)
    and (cdsVD55MonthlyNO.AsInteger <> 25)
    and (cdsVD55MonthlyNO.AsInteger <> 36)
    and (cdsVD55MonthlyNO.AsInteger <> 40)
    and (cdsVD55MonthlyNO.AsInteger <> 45);
end;

procedure TfrmMKBDVD55Monthly.actGenerateDataExecute(Sender: TObject);
begin
  inherited;
  RefreshData;

  if not cdsVD55Monthly.IsEmpty then
  begin
    if (MessageDlg('Are you sure to regenerate this report?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
    begin
      dmGlobal.RemoteServer.GenerateVD55Monthly(edMonth.EditValue, edYear.EditValue);
      ShowMessage('Generate Done!');
    end;
  end
  else
  begin
    dmGlobal.RemoteServer.GenerateVD55Monthly(edMonth.EditValue, edYear.EditValue);
    ShowMessage('Generate Done!');
  end;

  RefreshData;
end;

procedure TfrmMKBDVD55Monthly.actGenerateExcelExecute(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName, sSheetName: string;
  iFields, iRows, i: Integer;
begin
  inherited;
  SaveDlg.FileName := dmGlobal.RemoteServer.GetBrokerCode + IntToStr(edYear.EditValue) + FormatFloat('00', edMonth.EditValue);
  if SaveDlg.Execute then
    sFileName := SaveDlg.FileName;

  if sFileName = '' then
    Abort;

  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Add;

    sSheetName := 'X.E.1.3';
    oExcel.WorkBooks[1].WorkSheets[1].Name := sSheetName;
    oSheet := oExcel.WorkBooks[1].WorkSheets[sSheetName];

    oSheet.Range['A1','A1'].ColumnWidth := 1;
    oSheet.Range['B1','B1'].ColumnWidth := 4;
    oSheet.Range['C1','C1'].ColumnWidth := 63;
    oSheet.Range['D1','H1'].ColumnWidth := 19;

    iRows := 2;
    cdsVD55Monthly.DisableControls;
    cdsVD55Monthly.First;
    while not cdsVD55Monthly.Eof do
    begin
      Inc(iRows);
      for iFields := 2 to 8 do
        oSheet.Cells[iRows, iFields] := cdsVD55Monthly.Fields[iFields].AsString;

      cdsVD55Monthly.Next;
    end;

  finally
    oSheet.Cells[1, 2] := 'Laporan Bulanan Kegiatan Perusahaan Efek Formulir X.E.1-3';
    oSheet.Cells[7, 3] := 'Keterangan';

    oSheet.Range['C7:C8'].Mergecells   := True;
    oSheet.Range['D7:D8'].Mergecells   := True;
    oSheet.Range['E7:F7'].Mergecells   := True;
    oSheet.Range['G7:H7'].Mergecells   := True;
    oSheet.Range['C7:C8'].Mergecells   := True;
    for i := 27 to iRows do
    begin
      oSheet.Range['E'+IntToStr(i)+':F'+IntToStr(i)].Mergecells := True;
      oSheet.Range['G'+IntToStr(i)+':H'+IntToStr(i)].Mergecells := True;
    end;

    oSheet.Range['B1:B5'].Font.Bold  := True;
    oSheet.Range['B7:H8'].Font.Bold  := True;
    oSheet.Cells[1, 2].Font.Size     := 16;

    oSheet.Range['C7:H8'].HorizontalAlignment                 := xlCenter;
    oSheet.Range['B3:B'+IntToStr(iRows)].HorizontalAlignment  := xlCenter;
    oSheet.Range['B7:H'+IntToStr(iRows)].VerticalAlignment    := xlCenter;
    oSheet.Range['E27:H'+IntToStr(iRows)].HorizontalAlignment := xlCenter;
    oSheet.Range['B27:H'+IntToStr(iRows)].VerticalAlignment   := xlCenter;
    oSheet.Range['D27:D27'].HorizontalAlignment               := xlCenter;
    oSheet.Range['D47:D47'].HorizontalAlignment               := xlCenter;

    oSheet.Range['D9:D37'].NumberFormat                 := '#,##0;(#,##0);0';
    oSheet.Range['E9:H'+IntToStr(iRows)].NumberFormat   := '#,##0;(#,##0);0';
    oSheet.Range['B7:H'+IntToStr(iRows)].Borders.Weight := xlThin;
    oSheet.Range['C9:C'+IntToStr(iRows)].WrapText       := True;

    oExcel.Visible := False;
    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    MessageDlg('Generate data to Excel file has been done', mtInformation, [mbOk], 0);
    cdsVD55Monthly.EnableControls;
  end;

end;

procedure TfrmMKBDVD55Monthly.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsString := sPeriod;

  inherited;
end;

procedure TfrmMKBDVD55Monthly.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  RefreshData;
end;

procedure TfrmMKBDVD55Monthly.cdsVD55MonthlyCOL4Change(Sender: TField);
begin
  inherited;
  cdsVD55MonthlyCOL2.AsString := IntToStr(StrToInt(cdsVD55MonthlyCOL4.AsString) + StrToInt(cdsVD55MonthlyCOL6.AsString));
end;

procedure TfrmMKBDVD55Monthly.cdsVD55MonthlyCOL6Change(Sender: TField);
begin
  inherited;
  cdsVD55MonthlyCOL2.AsString := IntToStr(StrToInt(cdsVD55MonthlyCOL4.AsString) + StrToInt(cdsVD55MonthlyCOL6.AsString));
end;

procedure TfrmMKBDVD55Monthly.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmMonthlyXE13Report;
end;

procedure TfrmMKBDVD55Monthly.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  cdsVD55Monthly.ApplyUpdates(-1);
  ShowMessage('Updates Applied!');
end;

procedure TfrmMKBDVD55Monthly.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsVD55MonthlyID;
end;

procedure TfrmMKBDVD55Monthly.FormShow(Sender: TObject);
var
  dDateNow : TdateTime;
begin
  inherited;
  dDateNow := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dDateNow,wYear,wMonth,wDay);

  wMonth := wMonth + 1;

  if wMonth = 1 then
  begin
    wMonth := 12;
    wYear := wYear - 1;
  end;

  edMonth.EditValue := wMonth - 1;
  edYear.EditValue  := wYear;
end;

procedure TfrmMKBDVD55Monthly.gvwMasterEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  AAllow := False;

  if (AItem = gvwMasterCOL2) or (AItem = gvwMasterCOL4) or (AItem = gvwMasterCOL6) then
  begin
      if ((AItem = gvwMasterCOL4) or (AItem = gvwMasterCOL6)) then
      begin
        if ((gvwMasterNO.EditValue >= 26) and (gvwMasterNO.EditValue <= 35))
          or ((gvwMasterNO.EditValue >= 37) and (gvwMasterNO.EditValue <= 39)) or (gvwMasterNO.EditValue = 46) then
        begin
          AAllow := True;
        end;
      end
      else if (AItem = gvwMasterCOL2) then
      begin
        if ((gvwMasterNO.EditValue >= 41) and (gvwMasterNO.EditValue <= 44)) then
        begin
          AAllow := True;
        end;
      end;
  end;
end;

procedure TfrmMKBDVD55Monthly.RefreshData;
var
  iMonth : Integer;
  iYear : Integer;
begin
  iMonth  := edMonth.EditValue;
  iYear   := edYear.EditValue;
  sPeriod := IntToStr(iMonth)+'/'+IntToStr(iYear);

  cdsVD55Monthly.Close;
  cdsVD55Monthly.Params[0].AsString := sPeriod;
  cdsVD55Monthly.Open;
end;

end.
