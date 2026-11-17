unit FormReportCustomersDataList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ComObj, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, Datasnap.DBClient, NClientDataset, cxPropertiesStore,
  dxBar, cxClasses, dxPSCore, dxPScxCommon, NDatasetContainer, NDatasetAction,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  NActionPermission, Vcl.Menus, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxCalendar, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmReportCustomerDataList = class(TfrmBrowseSingle)
    cdsCustomersData: TNClientDataset;
    SaveDlg: TSaveDialog;
    procedure actPrintExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportCustomerDataList: TfrmReportCustomerDataList;

implementation

{$R *.dfm}

uses DataGlobal, FormProcessWait;

procedure TfrmReportCustomerDataList.actPrintExecute(Sender: TObject);
var
  iRows, i: Integer;
  oExcel, oSheet: OleVariant;
  sFileName: string;
  oProcessWait: TfrmProcessWait;
begin
  //inherited;
  if cdsCustomersData.IsEmpty then
  begin
    MessageDlg('There is no data can be generated !', TMsgDlgType.mtInformation, [mbOk], 0);
    Exit;
  end;

  oProcessWait := TfrmProcessWait.Create(nil);
  oProcessWait.Show;

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
    oExcel.WorkBooks[1].WorkSheets[1].Name := 'Customers Data';
    oSheet := oExcel.WorkBooks[1].WorkSheets['Customers Data'];

    cdsCustomersData.DisableControls;
    cdsCustomersData.First;

    for i := 0 to cdsCustomersData.FieldCount -1 do
        oSheet.Cells[1, i+1] := cdsCustomersData.Fields[i].FieldName;

    iRows := 2;
    while not cdsCustomersData.Eof do
    begin
      for i := 0 to cdsCustomersData.FieldCount -1 do
        oSheet.Cells[iRows, i+1] := cdsCustomersData.Fields[i].AsString;

      oProcessWait.ChangeProcessCaption(cdsCustomersData.Fields[0].AsString +' - '+ cdsCustomersData.Fields[1].AsString);
      inc(iRows);
      cdsCustomersData.Next;
    end;
  finally
    FreeAndNil(oProcessWait);

    oExcel.Visible := False;
    oExcel.Workbooks[1].SaveAs(sFileName);

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    MessageDlg('Generate customers data to Excel file has been done', mtInformation, [mbOk], 0);
    cdsCustomersData.EnableControls;
  end;
end;

procedure TfrmReportCustomerDataList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsCustomersData.Close;
  cdsCustomersData.Open;

  gvwBrowse.DataController.CreateAllItems();
end;

procedure TfrmReportCustomerDataList.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCustomersData.Close;
  cdsCustomersData.Open;

  gvwBrowse.DataController.CreateAllItems();
end;

end.
