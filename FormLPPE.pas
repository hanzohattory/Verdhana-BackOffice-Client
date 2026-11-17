unit FormLPPE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, NReportClient,
  NDatasetContainer, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxCalendar, cxBarEditItem, System.Win.ComObj;

type
  TfrmLPPE = class(TfrmBrowseData)
    cdsLPPE: TNClientDataset;
    cdsLPPEnum: TIntegerField;
    cdsLPPEDesc: TStringField;
    cdsLPPESummaryValue: TStringField;
    cdsLPPESumForeignAffil: TStringField;
    cdsLPPESumLocalAffil: TStringField;
    cdsLPPESumForeignNonAffil: TStringField;
    cdsLPPESumLocalNonAffil: TStringField;
    gvwMasternum: TcxGridDBBandedColumn;
    gvwMasterDesc: TcxGridDBBandedColumn;
    gvwMasterSummaryValue: TcxGridDBBandedColumn;
    gvwMasterSumForeignAffil: TcxGridDBBandedColumn;
    gvwMasterSumLocalAffil: TcxGridDBBandedColumn;
    gvwMasterSumForeignNonAffil: TcxGridDBBandedColumn;
    gvwMasterSumLocalNonAffil: TcxGridDBBandedColumn;
    dtReport: TcxBarEditItem;
    actExportToXLS: TNAction;
    Exporttoxls1: TMenuItem;
    N1: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actExportToXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLPPE: TfrmLPPE;

implementation

uses DataGlobal;

{$R *.dfm}

procedure TfrmLPPE.actExportToXLSExecute(Sender: TObject);
var
  oExcel: OleVariant;
  x, i: Integer;
  oSheet: OleVariant;
  sSheetName, sRange: string;
  sFileName: string;
begin
  inherited;
  if SaveDlg.Execute then
  begin
    sFileName := SaveDlg.FileName;
  end;

  if sFileName <> '' then
  begin
    try
      oExcel               := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := false;
      oExcel.WorkBooks.Add;

      oSheet      := oExcel.Sheets.Add;
      sSheetName  := 'LPPE';

      oExcel.WorkBooks[1].WorkSheets[1].Name := sSheetName;
      oSheet := oExcel.WorkBooks[1].WorkSheets[sSheetName];

      x := 0;

      if not cdsLPPE.Active then
        MessageError('No Data Tobe Exported !')
      else
      begin
        cdsLPPE.DisableControls;
        cdsLPPE.First;
        while not cdsLPPE.Eof do
        begin
          Inc(x);

          oSheet.Cells[x, 1] := cdsLPPEnum.AsInteger;
          oSheet.Cells[x, 2] := cdsLPPEDesc.AsString;
          oSheet.Cells[x, 3] := cdsLPPESummaryValue.AsString;
          oSheet.Cells[x, 4] := cdsLPPESumForeignAffil.AsString;
          oSheet.Cells[x, 5] := cdsLPPESumLocalAffil.AsString;
          oSheet.Cells[x, 6] := cdsLPPESumForeignNonAffil.AsString;
          oSheet.Cells[x, 7] := cdsLPPESumLocalNonAffil.AsString;

          cdsLPPE.Next;
        end;
        cdsLPPE.EnableControls;
      end;
    finally
      oExcel.Visible := False;
      oExcel.Workbooks[1].SaveAs(sFileName);

      oExcel.Quit;
      oExcel := Unassigned;

      MessageDlg('Export To Excel File Has Been Done...', mtInformation, [mbOk], 0);
    end;
  end;

end;

procedure TfrmLPPE.actRefreshExecute(Sender: TObject);
begin
  cdsLPPE.Close;
  cdsLPPE.Params[0].AsDate := VarToDateTime(dtReport.EditValue);
  cdsLPPE.Open;

//  inherited;

end;

procedure TfrmLPPE.FormCreate(Sender: TObject);
begin
  inherited;
  dtReport.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

end.
