unit FormCashSettlementT4;

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
  ComObj, ClassClientConst, cxImageComboBox, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmCashSettlementT4 = class(TfrmBrowseData)
    cdsCashSettlementT4: TNClientDataset;
    cdsCashSettlementT4VALUEDATE: TDateField;
    cdsCashSettlementT4ACCID: TIntegerField;
    cdsCashSettlementT4ACCCODE: TStringField;
    cdsCashSettlementT4ACCNAME: TStringField;
    cdsCashSettlementT4ACCTYPE: TStringField;
    cdsCashSettlementT4CCYCODE: TStringField;
    cdsCashSettlementT4AR_TMIN2MORE: TFloatField;
    cdsCashSettlementT4AR_TMIN2: TFloatField;
    cdsCashSettlementT4AR_TMIN1: TFloatField;
    cdsCashSettlementT4AR_OVERDUE: TFloatField;
    cdsCashSettlementT4AP_OVERDUE: TFloatField;
    cdsCashSettlementT4AR_T0: TFloatField;
    cdsCashSettlementT4AP_T0: TFloatField;
    cdsCashSettlementT4AR_T1: TFloatField;
    cdsCashSettlementT4AP_T1: TFloatField;
    cdsCashSettlementT4AR_T2: TFloatField;
    cdsCashSettlementT4AP_T2: TFloatField;
    cdsCashSettlementT4AR_T2MORE: TFloatField;
    cdsCashSettlementT4AP_T2MORE: TFloatField;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterAR_TMIN2MORE: TcxGridDBBandedColumn;
    gvwMasterAR_TMIN2: TcxGridDBBandedColumn;
    gvwMasterAR_TMIN1: TcxGridDBBandedColumn;
    gvwMasterAR_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterAP_OVERDUE: TcxGridDBBandedColumn;
    gvwMasterAR_T0: TcxGridDBBandedColumn;
    gvwMasterAP_T0: TcxGridDBBandedColumn;
    gvwMasterAR_T1: TcxGridDBBandedColumn;
    gvwMasterAP_T1: TcxGridDBBandedColumn;
    gvwMasterAR_T2: TcxGridDBBandedColumn;
    gvwMasterAP_T2: TcxGridDBBandedColumn;
    gvwMasterAR_T2MORE: TcxGridDBBandedColumn;
    gvwMasterAP_T2MORE: TcxGridDBBandedColumn;
    actGenerateToExcel: TNAction;
    cdsCashSettlementT4BRANCH: TStringField;
    GenerateToExcel1: TMenuItem;
    cdsCashSettlementT4CASH_ONHAND: TFloatField;
    gvwMasterBRANCH: TcxGridDBBandedColumn;
    gvwMasterCASH_ONHAND: TcxGridDBBandedColumn;
    cdsCashSettlementT4BALANCE: TFloatField;
    gvwMasterBALANCE: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure gvwMasterAR_TMIN2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwMasterAR_TMIN2MORECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gvwMasterAR_TMIN1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwMasterAR_OVERDUECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gvwMasterAR_T0CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actGenerateToExcelExecute(Sender: TObject);
    procedure cdsCashSettlementT4CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashSettlementT4: TfrmCashSettlementT4;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmCashSettlementT4.actGenerateToExcelExecute(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  sFileName, sSheetName: string;
  iFields, iRows, i, x: Integer;
  sBranch, sCustType: string;
begin
  inherited;
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
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'Customer Aging';
    oSheet := oExcel.WorkBooks[1].WorkSheets['Customer Aging'];

    sBranch := '';
    cdsCashSettlementT4.DisableControls;
    cdsCashSettlementT4.First;

    oSheet.Cells[1, 1] := 'Customer Aging';
    oSheet.Range['A1:M1'].Font.Bold  := True;
    oSheet.Range['A1:M1'].Mergecells := True;

    x := 1;
    while not cdsCashSettlementT4.Eof do
    begin
      if sBranch <> cdsCashSettlementT4BRANCH.AsString then
      begin
        sBranch := cdsCashSettlementT4BRANCH.AsString;
        Inc(x);
        Inc(x);
        oSheet.Cells[x, 1] := sBranch;
        oSheet.Range['A'+IntToStr(x)+':M'+IntToStr(x)].Font.Bold  := True;
        oSheet.Range['A'+IntToStr(x), 'M'+IntToStr(x)].Mergecells := True;
        Inc(x);
        oSheet.Cells[x, 7]  := 'Overdue';
        oSheet.Range['G'+IntToStr(x), 'J'+IntToStr(x)].Mergecells := True;
        oSheet.Cells[x, 11] := 'Due';
        oSheet.Range['K'+IntToStr(x), 'L'+IntToStr(x)].Mergecells := True;
        Inc(x);
        oSheet.Cells[x, 1]  := 'Generate Date';
        oSheet.Range['A'+IntToStr(x-1), 'A'+IntToStr(x)].Mergecells := True;
        oSheet.Cells[x, 2]  := 'Account Code';
        oSheet.Range['B'+IntToStr(x-1), 'B'+IntToStr(x)].Mergecells := True;
        oSheet.Cells[x, 3]  := 'Account Name';
        oSheet.Range['C'+IntToStr(x-1), 'C'+IntToStr(x)].Mergecells := True;
        oSheet.Cells[x, 4]  := 'Account Type';
        oSheet.Range['D'+IntToStr(x-1), 'D'+IntToStr(x)].Mergecells := True;
        oSheet.Cells[x, 5]  := 'Currency';
        oSheet.Range['E'+IntToStr(x-1), 'E'+IntToStr(x)].Mergecells := True;
        oSheet.Cells[x, 6]  := 'Cash Position';
        oSheet.Range['F'+IntToStr(x-1), 'F'+IntToStr(x)].Mergecells := True;
        oSheet.Cells[x, 7]  := '< AR T-2';
        oSheet.Cells[x, 8]  := 'AR T-2';
        oSheet.Cells[x, 9]  := 'AR T-1';
        oSheet.Cells[x, 10] := 'AP Overdue';
        oSheet.Cells[x, 11] := 'AR T-0';
        oSheet.Cells[x, 12] := 'AP T-0';
        oSheet.Cells[x, 13] := 'Balance';

        oSheet.Range['A'+IntToStr(x-1)+':M'+IntToStr(x)].Font.Bold      := True;
        oSheet.Range['A'+IntToStr(x-1)+':M'+IntToStr(x)].Borders.Weight := xlThin;
      end;
      Inc(x);

      if cdsCashSettlementT4ACCTYPE.AsString = 'N' then sCustType := 'Individu'
      else if cdsCashSettlementT4ACCTYPE.AsString = 'I' then sCustType := 'Institution'
      else if cdsCashSettlementT4ACCTYPE.AsString = 'B' then sCustType := 'Broker';

      oSheet.Cells[x, 1]  := cdsCashSettlementT4VALUEDATE.AsDateTime;
      oSheet.Cells[x, 2]  := ''''+cdsCashSettlementT4ACCCODE.AsString;
      oSheet.Cells[x, 3]  := cdsCashSettlementT4ACCNAME.AsString;
      oSheet.Cells[x, 4]  := sCustType;
      oSheet.Cells[x, 5]  := cdsCashSettlementT4CCYCODE.AsString;
      oSheet.Cells[x, 6]  := cdsCashSettlementT4CASH_ONHAND.AsString;
      oSheet.Cells[x, 7]  := cdsCashSettlementT4AR_TMIN2MORE.AsString;
      oSheet.Cells[x, 8]  := cdsCashSettlementT4AR_TMIN2.AsString;
      oSheet.Cells[x, 9]  := cdsCashSettlementT4AR_TMIN1.AsString;
      oSheet.Cells[x, 10] := cdsCashSettlementT4AP_OVERDUE.AsString;
      oSheet.Cells[x, 11] := cdsCashSettlementT4AR_T0.AsString;
      oSheet.Cells[x, 12] := cdsCashSettlementT4AP_T0.AsString;
      oSheet.Cells[x, 13] := cdsCashSettlementT4BALANCE.AsString;

      oSheet.Range['A'+IntToStr(x)+':M'+IntToStr(x)].Borders.Weight := xlThin;

      cdsCashSettlementT4.Next;
    end;

  finally
    oSheet.Range['A1','A1'].ColumnWidth := 11;
    oSheet.Range['B1','B1'].ColumnWidth := 13;
    oSheet.Range['C1','C1'].ColumnWidth := 41;
    oSheet.Range['D1','D1'].ColumnWidth := 13;
    oSheet.Range['E1','E1'].ColumnWidth := 9;
    oSheet.Range['F1','M1'].ColumnWidth := 19;

    oSheet.Range['F1', 'M'+IntToStr(x)].NumberFormat := '#,##0.00;(#,##0.00);0.00';

    oExcel.Visible := False;
    oExcel.ActiveWindow.DisplayGridlines := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    cdsCashSettlementT4.EnableControls;
    MessageDlg('Generate data to Excel file has been done', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCashSettlementT4.cdsCashSettlementT4CalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsCashSettlementT4BALANCE.AsFloat := cdsCashSettlementT4CASH_ONHAND.AsFloat -
    (cdsCashSettlementT4AR_TMIN2MORE.AsFloat + cdsCashSettlementT4AR_TMIN2.AsFloat + cdsCashSettlementT4AR_TMIN1.AsFloat) +
    cdsCashSettlementT4AP_OVERDUE.AsFloat - cdsCashSettlementT4AR_T0.AsFloat + cdsCashSettlementT4AP_T0.AsFloat;
end;

procedure TfrmCashSettlementT4.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCashSettlementT4.Close;
  cdsCashSettlementT4.Open;
end;

procedure TfrmCashSettlementT4.gvwMasterAR_OVERDUECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  ACanvas.Brush.Color := clWebYellow;
end;

procedure TfrmCashSettlementT4.gvwMasterAR_T0CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  ACanvas.Brush.Color := clWebLightGreen;
end;

procedure TfrmCashSettlementT4.gvwMasterAR_TMIN1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  ACanvas.Brush.Color := 254;
end;

procedure TfrmCashSettlementT4.gvwMasterAR_TMIN2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  ACanvas.Brush.Color := clRed;
end;

procedure TfrmCashSettlementT4.gvwMasterAR_TMIN2MORECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
//  ACanvas.Brush.Color := clRed;
end;

end.
