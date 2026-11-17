unit FormVerdhanaOrderList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxCalendar, cxBarEditItem, cxButtonEdit,
  ComObj;

type
  TfrmVerdhanaOrderList = class(TfrmBrowseData)
    cdsVerdhanaOrderList: TNClientDataset;
    cdsVerdhanaOrderListid: TLargeintField;
    cdsVerdhanaOrderListorderDate: TDateField;
    cdsVerdhanaOrderListclientName: TStringField;
    cdsVerdhanaOrderListfixInTicket: TStringField;
    cdsVerdhanaOrderListlocalAccount: TStringField;
    cdsVerdhanaOrderListexchangeAccount: TStringField;
    cdsVerdhanaOrderListclientID: TStringField;
    cdsVerdhanaOrderListfundName: TStringField;
    cdsVerdhanaOrderListside: TStringField;
    cdsVerdhanaOrderListbloomberg: TStringField;
    cdsVerdhanaOrderListtradedQty: TFloatField;
    cdsVerdhanaOrderListaveragePrice: TFloatField;
    cdsVerdhanaOrderListorderInformation: TStringField;
    cdsVerdhanaOrderListactor: TStringField;
    cdsVerdhanaOrderListorderStatus: TStringField;
    cdsVerdhanaOrderListclientOrderID: TStringField;
    gvwMasterid: TcxGridDBBandedColumn;
    gvwMasterorderDate: TcxGridDBBandedColumn;
    gvwMasterclientName: TcxGridDBBandedColumn;
    gvwMasterfixInTicket: TcxGridDBBandedColumn;
    gvwMasterlocalAccount: TcxGridDBBandedColumn;
    gvwMasterexchangeAccount: TcxGridDBBandedColumn;
    gvwMasterclientID: TcxGridDBBandedColumn;
    gvwMasterfundName: TcxGridDBBandedColumn;
    gvwMasterside: TcxGridDBBandedColumn;
    gvwMasterbloomberg: TcxGridDBBandedColumn;
    gvwMastertradedQty: TcxGridDBBandedColumn;
    gvwMasteraveragePrice: TcxGridDBBandedColumn;
    gvwMasterorderInformation: TcxGridDBBandedColumn;
    gvwMasteractor: TcxGridDBBandedColumn;
    gvwMasterorderStatus: TcxGridDBBandedColumn;
    gvwMasterclientOrderID: TcxGridDBBandedColumn;
    cdsUploadOrders: TNClientDataset;
    cdsUploadOrdersorderDate: TDateField;
    cdsUploadOrdersclientName: TStringField;
    cdsUploadOrdersfixInTicket: TStringField;
    cdsUploadOrderslocalAccount: TStringField;
    cdsUploadOrdersexchangeAccount: TStringField;
    cdsUploadOrdersclientID: TStringField;
    cdsUploadOrdersfundName: TStringField;
    cdsUploadOrdersside: TStringField;
    cdsUploadOrdersbloomberg: TStringField;
    cdsUploadOrderstradedQty: TFloatField;
    cdsUploadOrdersaveragePrice: TFloatField;
    cdsUploadOrdersorderInformation: TStringField;
    cdsUploadOrdersactor: TStringField;
    cdsUploadOrdersorderStatus: TStringField;
    cdsUploadOrdersclientOrderID: TStringField;
    dtOrders: TcxBarEditItem;
    edFileName: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    OpenDialog: TOpenDialog;
    cdsVerdhanaOrderListACCNAME: TStringField;
    cdsVerdhanaOrderListSHORTNAME: TStringField;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    procedure actRefreshExecute(Sender: TObject);
    procedure edFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVerdhanaOrderList: TfrmVerdhanaOrderList;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmVerdhanaOrderList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsVerdhanaOrderList.Close;
  cdsVerdhanaOrderList.Params[0].AsDate := VarToDateTime(dtOrders.EditValue);
  cdsVerdhanaOrderList.Open;
end;

procedure TfrmVerdhanaOrderList.dxBarButton1Click(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  i, j, iRows, iCols: Integer;
  oProgress: TfrmProgressBar;
  sFileName: string;
begin
  inherited;
  sFileName := edFileName.EditValue;
  if sFileName = '' then
    exit;

  if not MessageQuestion('Upload Vedhana Order ?') then
    exit;

  if not cdsUploadOrders.Active then
    cdsUploadOrders.Open;

  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Open(sFileName);

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    iCols  := oSheet.Usedrange.Columns.Count;
    iRows  := oSheet.Usedrange.Rows.Count;

    i := 2;
    repeat
      cdsUploadOrders.Append;
      cdsUploadOrdersorderDate.AsDateTime       := VarToDateTime(dtOrders.EditValue);
      cdsUploadOrdersclientName.AsString        := oSheet.Cells[i, 1].Value;
      cdsUploadOrdersfixInTicket.AsString       := oSheet.Cells[i, 2].Value;
      cdsUploadOrderslocalAccount.AsString      := oSheet.Cells[i, 3].Value;
      cdsUploadOrdersexchangeAccount.AsString   := oSheet.Cells[i, 4].Value;
      cdsUploadOrdersclientID.AsString          := oSheet.Cells[i, 5].Value;
      cdsUploadOrdersfundName.AsString          := oSheet.Cells[i, 6].Value;
      cdsUploadOrdersside.AsString              := oSheet.Ceels[i, 7].Value;
      cdsUploadOrdersbloomberg.AsString         := oSheet.Ceels[i, 8].Value;
      cdsUploadOrderstradedQty.AsFloat          := StrToFloatDef(oSheet.Cells[i, 9].Value, 0);
      cdsUploadOrdersaveragePrice.AsFloat       := StrToFloatDef(oSheet.Cells[i, 10].Value, 0);
      cdsUploadOrdersorderInformation.AsString  := oSheet.Cells[i, 11].Value;
      cdsUploadOrdersactor.AsString             := oSheet.Cells[i, 12].Value;
      cdsUploadOrdersorderStatus.AsString       := oSheet.Cells[i, 13].Value;
      cdsUploadOrdersclientOrderID.AsString     := oSheet.Ceels[i, 14].Value;
      cdsUploadOrders.Post;

      Inc(i);
    until (oExcel.cells.item[i, 1].Value = '');

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    MessageDlg('Upload Verdhana Order has done...', mtInformation, [mbOk], 0);
    cdsUploadOrders.Refresh;
  finally

  end;
end;

procedure TfrmVerdhanaOrderList.edFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if OpenDialog.Execute then
  begin
    edFileName.EditValue := OpenDialog.FileName;
  end;
end;

end.
