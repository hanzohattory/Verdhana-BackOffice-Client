unit FormGLAccountActivity;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportClient, dxBar, cxClasses, Vcl.ImgList, Vcl.ActnList,
  NDatasetAction, NActionPermission, Vcl.Menus, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, cxRadioGroup,cxGridExportLink, XLSSheetData5,
  XLSReadWriteII5,XLSCmdFormat5, Xc12DataStyleSheet5, System.ImageList,
  System.Actions, ComObj, ClassClientConst,Clipbrd, dxDateRanges,
  cxCheckComboBox, cxBarEditItem, dxScrollbarAnnotations;

type
  TfrmGLAccountActivity = class(TfrmBasic)
    aclEditor: TActionList;
    actPrint: TNAction;
    actLoadData: TNAction;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    imlBrowse: TImageList;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    mnuPrint: TdxBarButton;
    mnuLoadData: TdxBarButton;
    ReportContainer: TNClientReportContainer;
    dsGLActivity: TDataSource;
    cdsGLActivity: TNClientDataset;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dxLayoutControl1: TdxLayoutControl;
    dtDateFrom: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cdsGLActivityLNNUM: TIntegerField;
    cdsGLActivityJRNID: TLargeintField;
    cdsGLActivityJRNCD: TStringField;
    cdsGLActivityEDATE: TDateField;
    cdsGLActivityVDATE: TDateField;
    cdsGLActivityGLACCOUNTID: TIntegerField;
    cdsGLActivityGLACCOUNTCODE: TStringField;
    cdsGLActivityGLACCOUNTNAME: TStringField;
    cdsGLActivityJRNTYPE: TStringField;
    cdsGLActivityHDESC: TStringField;
    cdsGLActivityCCYCODE: TStringField;
    cdsGLActivityDBAMOUNT: TFloatField;
    cdsGLActivityCRAMOUNT: TFloatField;
    cdsGLActivityENDBALANCE: TFloatField;
    dtDateTo: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    gvwMasterLNNUM: TcxGridDBBandedColumn;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    gvwMasterJRNCD: TcxGridDBBandedColumn;
    gvwMasterEDATE: TcxGridDBBandedColumn;
    gvwMasterVDATE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTID: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTCODE: TcxGridDBBandedColumn;
    gvwMasterGLACCOUNTNAME: TcxGridDBBandedColumn;
    gvwMasterJRNTYPE: TcxGridDBBandedColumn;
    gvwMasterHDESC: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterDBAMOUNT: TcxGridDBBandedColumn;
    gvwMasterCRAMOUNT: TcxGridDBBandedColumn;
    gvwMasterENDBALANCE: TcxGridDBBandedColumn;
    rgReportType: TcxRadioGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    rgDateFilter: TcxRadioGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    cbGLFrom: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cbGLTo: TcxLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsGLActivityGLACCOUNTDESC: TStringField;
    gvwMasterGLACCOUNTDESC: TcxGridDBBandedColumn;
    actViewDetail: TNAction;
    ViewDetail1: TMenuItem;
    cdsGLActivityFXDBAMOUNT: TFloatField;
    cdsGLActivityFXCRAMOUNT: TFloatField;
    cdsGLActivityFXENDBALANCE: TFloatField;
    cdsGLActivityEXRATE: TFloatField;
    gvwMasterFXDBAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXCRAMOUNT: TcxGridDBBandedColumn;
    gvwMasterFXENDBALANCE: TcxGridDBBandedColumn;
    gvwMasterEXRATE: TcxGridDBBandedColumn;
    actExportExcel: TNAction;
    ExportToExcel1: TMenuItem;
    SaveDialog: TSaveDialog;
    cdsGLActivityREFFNO: TStringField;
    gvwMasterREFFNO: TcxGridDBBandedColumn;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    cxBarEditItem1: TcxBarEditItem;
    procedure actPrintExecute(Sender: TObject);
    procedure actLoadDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsGLActivityCalcFields(DataSet: TDataSet);
    procedure cbGLFromExit(Sender: TObject);
    procedure actViewDetailExecute(Sender: TObject);
    procedure actExportExcelExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure createExcelFile(AFileName:String);
    { Public declarations }
  end;

var
  frmGLAccountActivity: TfrmGLAccountActivity;

implementation

{$R *.dfm}

uses DataGlobal, FormGLDetail;

procedure TfrmGLAccountActivity.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader,sFilterText: String;
begin
  inherited;
  LView := TcxGridDBBandedTableView(grdMaster.FocusedView);

  If Assigned(LView) Then
  begin
    Clipboard.Clear;
    sValues := '';

    if LView.OptionsSelection.CellMultiSelect then
    begin
      for iRow := 0 to Pred(LView.Controller.SelectedRecordCount) do
      begin
        for iCol := 0 to Pred(LView.Controller.SelectedColumnCount) do
        begin
          if iRow = 0 then
          begin
            if sHeader = '' then sHeader := LView.Controller.SelectedColumns[iCol].Caption + #9
            else sHeader := sHeader + LView.Controller.SelectedColumns[iCol].Caption + #9;
          end;

          if sValues = '' then
            sValues := VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) + #9
          else
            sValues := sValues + VarToStrDef(LView.DataController.Values[LView.Controller.SelectedRecords[iRow].RecordIndex, LView.Controller.SelectedColumns[iCol].Index],EmptyStr) +#9;
        end;
        sValues := sValues + sLineBreak ;
      end;
    end;
    Clipboard.AsText := sHeader + sLineBreak + sValues;
  end;

end;

procedure TfrmGLAccountActivity.actExportExcelExecute(Sender: TObject);
var
  sFileName : string;
begin
  inherited;
  // Create the save dialog object - assign to our save dialog variable
  saveDialog := TSaveDialog.Create(self);

  // Give the dialog a title
  saveDialog.Title := 'Save your text or word file';

  // Set up the starting directory to be the current one
  saveDialog.InitialDir := GetCurrentDir;

  // Allow only .txt and .doc file types to be saved
  saveDialog.Filter := 'Excel file|*.xlsx';

  // Set the default extension
  saveDialog.DefaultExt := 'xlsx';

  // Select text files as the starting filter type
  saveDialog.FilterIndex := 1;

  // Display the open file dialog
  if saveDialog.Execute
  then
  begin
    sFileName := SaveDialog.FileName;
    if sFileName <> '' then
    begin
      createExcelFile(sFileName);
      //ExportGridToExcel(sFileName, grdMaster, True, True, False);
      MessageDlg('Export to excel has done ', mtInformation, [mbOk], 0);
      dmGLobal.OpenFile(sFileName);
    end;
  end
    else ShowMessage('Save file was cancelled');

  // Free up the dialog
  saveDialog.Free;
end;

procedure TfrmGLAccountActivity.actLoadDataExecute(Sender: TObject);
begin
  inherited;
  cdsGLActivity.Close;
  cdsGLActivity.Params[0].AsDate := dtDateFrom.Date;
  cdsGLActivity.Params[1].AsDate := dtDateTo.Date;
  cdsGLActivity.Params[2].AsString := cbGLFrom.EditText;
  cdsGLActivity.Params[3].AsString := cbGLTo.EditText;
  cdsGLActivity.Params[4].AsInteger := rgReportType.EditValue;
  cdsGLActivity.Params[5].AsInteger := rgDateFilter.EditValue;
  cdsGLActivity.Open;
end;

procedure TfrmGLAccountActivity.actPrintExecute(Sender: TObject);
begin
  inherited;
  ReportContainer.Params[0].AsDate := cdsGLActivity.Params[0].AsDate;
  ReportContainer.Params[1].AsDate := cdsGLActivity.Params[1].AsDate;
  ReportContainer.Params[2].AsString := cdsGLActivity.Params[2].AsString;
  ReportContainer.Params[3].AsString := cdsGLActivity.Params[3].AsString;
  ReportContainer.Params[4].AsInteger := cdsGLActivity.Params[4].AsInteger;
  ReportContainer.Params[5].AsInteger := cdsGLActivity.Params[5].AsInteger;
  ReportContainer.PreviewReport;
end;

procedure TfrmGLAccountActivity.actViewDetailExecute(Sender: TObject);
begin
  inherited;
  frmGLDetail.createForm(cdsGLActivityJRNID.AsInteger, cdsGLActivityREFFNO.AsString);
end;

procedure TfrmGLAccountActivity.cbGLFromExit(Sender: TObject);
begin
  inherited;
  cbGLTo.EditValue := cbGLFrom.EditValue;
end;

procedure TfrmGLAccountActivity.cdsGLActivityCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsGLActivityGLACCOUNTDESC.AsString := cdsGLActivityGLACCOUNTCODE.AsString + ' - ' + cdsGLActivityGLACCOUNTNAME.AsString;
end;

procedure TfrmGLAccountActivity.createExcelFile(AFileName: String);
var
  iRows, iLastRow: Integer;
  oExcel, oSheet: OleVariant;
  sGLAcc: string;
begin
  try
    cursor := crHourGlass;

    sGLAcc := '';
    cdsGLActivity.DisableControls;
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;

    oExcel.WorkBooks.Add;
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'GL Account Activity';

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    iRows  := oSheet.UsedRange.Rows.Count;

    //Set Excel Header
    oSheet.Cells[1, 1]  := 'GL Account No';
    oSheet.Cells[1, 2]  := 'Journal Code';
    oSheet.Cells[1, 3]  := 'Reference No';
    oSheet.Cells[1, 4]  := 'Entry Date';
    oSheet.Cells[1, 5]  := 'Value Date';
    oSheet.Cells[1, 6]  := 'Journal Type';
    oSheet.Cells[1, 7]  := 'Description';
    oSheet.Cells[1, 8]  := 'Currency';
    oSheet.Cells[1, 9]  := 'Exrate';
    oSheet.Cells[1, 10]  := 'Debet';
    oSheet.Cells[1, 11] := 'Credit';
    oSheet.Cells[1, 12] := 'Debet (IDR)';
    oSheet.Cells[1, 13] := 'Credit (IDR)';
    oSheet.Cells[1, 14] := 'End Balance (IDR)';

    iLastRow := 1;

    cdsGLActivity.First;
    while not cdsGLActivity.Eof do
    begin
      Inc(iLastRow);
      if sGLAcc <> cdsGLActivityGLACCOUNTCODE.AsString then
      begin
        sGLAcc := cdsGLActivityGLACCOUNTCODE.AsString;
        oSheet.Cells[iLastRow, 1]  := cdsGLActivityGLACCOUNTCODE.AsString +' - '+ cdsGLActivityGLACCOUNTNAME.AsString;
        oSheet.Range['A'+IntToStr(iLastRow)+':N'+IntToStr(iLastRow)].MergeCells := True;
        inc(iLastRow);
      end;

      oSheet.Cells[iLastRow, 1]  := cdsGLActivityGLACCOUNTCODE.AsString;
      oSheet.Cells[iLastRow, 2]  := cdsGLActivityJRNCD.AsString;
      oSheet.Cells[iLastRow, 3]  := cdsGLActivityREFFNO.AsString;
      oSheet.Cells[iLastRow, 4]  := cdsGLActivityEDATE.AsDateTime;
      oSheet.Cells[iLastRow, 5]  := cdsGLActivityVDATE.AsDateTime;
      oSheet.Cells[iLastRow, 6]  := cdsGLActivityJRNTYPE.AsString;
      oSheet.Cells[iLastRow, 7]  := cdsGLActivityHDESC.AsString;
      oSheet.Cells[iLastRow, 8]  := cdsGLActivityCCYCODE.AsString;
      oSheet.Cells[iLastRow, 9]  := cdsGLActivityEXRATE.AsFloat;
      oSheet.Cells[iLastRow, 10] := cdsGLActivityDBAMOUNT.AsFloat;
      oSheet.Cells[iLastRow, 11] := cdsGLActivityCRAMOUNT.asFloat;
      oSheet.Cells[iLastRow, 12] := cdsGLActivityFXDBAMOUNT.asFloat;
      oSheet.Cells[iLastRow, 13] := cdsGLActivityFXCRAMOUNT.asFloat;
      oSheet.Cells[iLastRow, 14] := cdsGLActivityFXENDBALANCE.asFloat;

      cdsGLActivity.Next
    end;
  finally
    oSheet.Range['A1'].ColumnWidth    := 14;
    oSheet.Range['B1'].ColumnWidth    := 12;
    oSheet.Range['C1'].ColumnWidth    := 16;
    oSheet.Range['D1:F1'].ColumnWidth := 12;
    oSheet.Range['G1'].ColumnWidth    := 25;
    oSheet.Range['H1:I1'].ColumnWidth := 9;
    oSheet.Range['J1:N1'].ColumnWidth := 16;

    oSheet.Range['A1:N1'].Interior.Color := ColorToRGB(clSilver);
    oSheet.Range['A1:N'+IntToStr(iLastRow)].Borders.Weight := xlThin;
    oSheet.Range['I2:N'+IntToStr(iLastRow)].NumberFormat   := '#,##0.00;(#,##0.00);0.00';
    oExcel.ActiveWindow.DisplayGridlines := False;

    oExcel.WorkBooks[1].SaveAs(AFileName);
    oExcel.Visible := False;

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;
  end;
  cdsGLActivity.EnableControls;

  Cursor := crDefault;
end;

procedure TfrmGLAccountActivity.FormCreate(Sender: TObject);
begin
  inherited;
  dtDateFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtDateTo.Date := dtDateFrom.Date;
  rgReportType.EditValue := 0;
  rgDateFilter.EditValue := 0;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuGLAccountTrx.Close;
    cdsLuGLAccountTrx.Open;
  end;
end;

Initialization
  RegisterClass(TfrmGLAccountActivity);

end.
