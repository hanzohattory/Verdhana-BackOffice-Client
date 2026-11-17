unit FormReportMonthlyStamp;
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
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  dxLayoutcxEditAdapters, Datasnap.DBClient, NClientDataset, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxLayoutControl,
  System.Actions, System.ImageList, dxDateRanges, dxScrollbarAnnotations,
  cxDBLookupComboBox, cxBarEditItem, cxCalendar, ComObj;
type
  TfrmReportMonthlyStamp = class(TfrmBrowseData)
    cdsMonthlyStampList: TNClientDataset;
    dtPeriod: TcxBarEditItem;
    cmbFilterStatus: TcxBarEditItem;
    cmbCollectBroker: TcxBarEditItem;
    mnuGenerateExcel: TdxBarButton;
    actGenerateExcel: TNAction;
    strngfldMonthlyStampListStampStat: TStringField;
    strngfldMonthlyStampListAccountCode: TStringField;
    strngfldMonthlyStampListAccountName: TStringField;
    strngfldMonthlyStampListDocType: TStringField;
    strngfldMonthlyStampListDocNo: TStringField;
    dtfldMonthlyStampListDocDate: TDateField;
    fltfldMonthlyStampListDocAmount: TFloatField;
    strngfldMonthlyStampListIdentityType: TStringField;
    strngfldMonthlyStampListIdentityNo: TStringField;
    strngfldMonthlyStampListAccountType: TStringField;
    strngfldMonthlyStampListCollection: TStringField;
    strngfldMonthlyStampListCollection_Desc: TStringField;
    fltfldMonthlyStampListStampingAmount: TFloatField;
    fltfldMonthlyStampListStampedAmount: TFloatField;
    cxgrdbndclmnMasterStampStat: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterAccountCode: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterAccountName: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterDocType: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterDocNo: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterDocDate: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterDocAmount: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterIdentityType: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterIdentityNo: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterAccountType: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterCollection_Desc: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterStampingAmount: TcxGridDBBandedColumn;
    cxgrdbndclmnMasterStampedAmount: TcxGridDBBandedColumn;
    GenerateToExcel: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actGenerateExcelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GetPeriodStr: string;
  public
    { Public declarations }
  end;
var
  frmReportMonthlyStamp: TfrmReportMonthlyStamp;
implementation
{$R *.dfm}
uses DataGlobal;
{ TfrmReportMonthlyStamp }
function TfrmReportMonthlyStamp.GetPeriodStr: string;
begin
  if VarIsNull(dtPeriod.EditValue) or VarIsEmpty(dtPeriod.EditValue) then
    Result := FormatDateTime('yyyymm', Now)
  else
    Result := FormatDateTime('yyyymm', VarToDateTime(dtPeriod.EditValue));
end;

procedure TfrmReportMonthlyStamp.actRefreshExecute(Sender: TObject);
begin
  cdsMonthlyStampList.Close;
  cdsMonthlyStampList.Params.ParamByName('PERIOD').AsString      := GetPeriodStr;
  cdsMonthlyStampList.Params.ParamByName('FilterStat').AsString  := VarToStrDef(cmbFilterStatus.EditValue, '');
  cdsMonthlyStampList.Params.ParamByName('Collection').AsString  := VarToStrDef(cmbCollectBroker.EditValue, '');
  cdsMonthlyStampList.Open;
end;

procedure TfrmReportMonthlyStamp.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params.ParamByName('PERIOD').AsString      := GetPeriodStr;
  ReportContainer.Params.ParamByName('FilterStat').AsString  := VarToStrDef(cmbFilterStatus.EditValue, '');
  ReportContainer.Params.ParamByName('Collection').AsString  := VarToStrDef(cmbCollectBroker.EditValue, '');
  inherited;
end;

function IsFileInUse(const AFileName: string): Boolean;
var
  HFileRes: HFILE;
begin
  Result := False;
  if not FileExists(AFileName) then
    Exit;
    HFileRes := CreateFile(PChar(AFileName), GENERIC_READ or GENERIC_WRITE,
    0 { no sharing = exclusive access test }, nil, OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL, 0);
    Result := (HFileRes = INVALID_HANDLE_VALUE);
  if not Result then
    CloseHandle(HFileRes);
end;

procedure TfrmReportMonthlyStamp.actGenerateExcelExecute(Sender: TObject);
var
  cdsDJP: TNClientDataset;
  xlApp, xlBook, xlSheet: OleVariant;
  i, iCol: Integer;
  sFileName, sSavePath: string;
begin
  cdsDJP := TNClientDataset.Create(Self);
  try
    cdsDJP.ProviderName := 'dspN_dmReport_qryMonthlyStampbyDJP';
    cdsDJP.RemoteServer := dmGlobal.dspConnection;

    cdsDJP.Params.CreateParam(ftString, 'PERIOD', ptInput);
    cdsDJP.Params.CreateParam(ftString, 'FILTERSTAT', ptInput);
    cdsDJP.Params.CreateParam(ftString, 'COLLECTION', ptInput);

    cdsDJP.Params.ParamByName('PERIOD').AsString := GetPeriodStr;
    cdsDJP.Params.ParamByName('FILTERSTAT').AsString := VarToStrDef(cmbFilterStatus.EditValue, '');
    cdsDJP.Params.ParamByName('COLLECTION').AsString := VarToStrDef(cmbCollectBroker.EditValue, '');

    cdsDJP.Open;

    if cdsDJP.IsEmpty then
    begin
      ShowMessage('No data available for the selected period/filter.');
      Exit;
    end;

    sFileName :=  Copy(GetPeriodStr, 1, 4) + Copy(GetPeriodStr, 5, 2) + '.xlsx';

    with TSaveDialog.Create(Self) do
    try
      Filter     := 'Excel Workbook (*.xlsx)|*.xlsx';
      FileName   := sFileName;
      DefaultExt := 'xlsx';

      if not Execute then
         Exit;

      sSavePath := FileName;
    finally
      Free;
    end;

    if IsFileInUse(sSavePath) then
    begin
      ShowMessage('File opened. Please close the file first before regenerating..');
      Exit;
    end;

    if FileExists(sSavePath) then
    begin
      if MessageDlg(
        'The file already exists.' + sLineBreak + 'Do you want to replace it?',mtConfirmation,[mbYes, mbNo],0 )<> mrYes
      then
        Exit;
    end;

    xlApp := CreateOleObject('Excel.Application');
    try
      xlApp.Visible := False;
      xlBook := xlApp.Workbooks.Add;
      xlSheet := xlBook.WorkSheets[1];

      for iCol := 0 to cdsDJP.FieldCount - 1 do
        if cdsDJP.Fields[iCol].DataType in [ftString, ftWideString, ftFixedChar, ftFixedWideChar] then
           xlSheet.Columns[iCol + 1].NumberFormat := '@';

      for iCol := 0 to cdsDJP.FieldCount - 1 do
           xlSheet.Cells[1, iCol + 1] := cdsDJP.Fields[iCol].DisplayLabel;

      i := 2;
      cdsDJP.First;

      while not cdsDJP.Eof do
      begin
        for iCol := 0 to cdsDJP.FieldCount - 1 do
            xlSheet.Cells[i, iCol + 1] := VarToStrDef( cdsDJP.Fields[iCol].AsVariant,'');
            cdsDJP.Next;
            Inc(i);
      end;

      xlBook.SaveAs(sSavePath);

      ShowMessage('File saved successfully: ' + sSavePath);

    finally
      xlBook.Close(False);
      xlApp.Quit;
      xlSheet := Unassigned;
      xlBook := Unassigned;
      xlApp := Unassigned;
    end;

  finally
    cdsDJP.Free;
  end;
end;
procedure TfrmReportMonthlyStamp.FormShow(Sender: TObject);
begin
  inherited;
  dtPeriod.EditValue      := dmGlobal.RemoteServer.GetTransDate;
  cmbFilterStatus.EditValue := '3';
  cmbCollectBroker.EditValue := '3';
end;
end.
