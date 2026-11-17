unit FormSInvTradeAllocList;

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
  cxCalendar, cxBarEditItem, cxImageComboBox, cxButtonEdit, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmSInvTradeAllocList = class(TfrmBrowseData)
    cdsSInvTradeAlloc: TNClientDataset;
    dtTrade: TcxBarEditItem;
    cdsSInvTradeAllocTransactionStatus: TStringField;
    cdsSInvTradeAllocTAReferenceID: TStringField;
    cdsSInvTradeAllocTAReferenceNo: TStringField;
    cdsSInvTradeAllocTradeDate: TStringField;
    cdsSInvTradeAllocSettlementDate: TStringField;
    cdsSInvTradeAllocIMCode: TStringField;
    cdsSInvTradeAllocBRCode: TStringField;
    cdsSInvTradeAllocFundCode: TStringField;
    cdsSInvTradeAllocSecurityCode: TStringField;
    cdsSInvTradeAllocBuySell: TIntegerField;
    cdsSInvTradeAllocPrice: TFloatField;
    cdsSInvTradeAllocQuantity: TFloatField;
    cdsSInvTradeAllocTradeAmount: TFloatField;
    cdsSInvTradeAllocCommission: TFloatField;
    cdsSInvTradeAllocSalesTax: TFloatField;
    cdsSInvTradeAllocLevy: TFloatField;
    cdsSInvTradeAllocVAT: TFloatField;
    gvwMasterTransactionStatus: TcxGridDBBandedColumn;
    gvwMasterTAReferenceID: TcxGridDBBandedColumn;
    gvwMasterTAReferenceNo: TcxGridDBBandedColumn;
    gvwMasterTradeDate: TcxGridDBBandedColumn;
    gvwMasterSettlementDate: TcxGridDBBandedColumn;
    gvwMasterIMCode: TcxGridDBBandedColumn;
    gvwMasterBRCode: TcxGridDBBandedColumn;
    gvwMasterFundCode: TcxGridDBBandedColumn;
    gvwMasterSecurityCode: TcxGridDBBandedColumn;
    gvwMasterBuySell: TcxGridDBBandedColumn;
    gvwMasterPrice: TcxGridDBBandedColumn;
    gvwMasterQuantity: TcxGridDBBandedColumn;
    gvwMasterTradeAmount: TcxGridDBBandedColumn;
    gvwMasterCommission: TcxGridDBBandedColumn;
    gvwMasterSalesTax: TcxGridDBBandedColumn;
    gvwMasterLevy: TcxGridDBBandedColumn;
    gvwMasterVAT: TcxGridDBBandedColumn;
    odTradeAlloc: TOpenDialog;
    BarMBrowseBar2: TdxBar;
    edTradeAllocFile: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    actGenerateFile: TNAction;
    cdsSInvTradeAllocOtherCharges: TFloatField;
    cdsSInvTradeAllocGrossSettlementAmount: TFloatField;
    cdsSInvTradeAllocWHTonCommission: TFloatField;
    cdsSInvTradeAllocNetSettlementAmount: TFloatField;
    cdsSInvTradeAllocSettlementType: TIntegerField;
    cdsSInvTradeAllocRemarks: TMemoField;
    cdsSInvTradeAllocCancellationReason: TMemoField;
    cdsSInvTradeAllocResponseCode: TStringField;
    gvwMasterOtherCharges: TcxGridDBBandedColumn;
    gvwMasterGrossSettlementAmount: TcxGridDBBandedColumn;
    gvwMasterWHTonCommission: TcxGridDBBandedColumn;
    gvwMasterNetSettlementAmount: TcxGridDBBandedColumn;
    gvwMasterSettlementType: TcxGridDBBandedColumn;
    gvwMasterRemarks: TcxGridDBBandedColumn;
    gvwMasterCancellationReason: TcxGridDBBandedColumn;
    gvwMasterResponseCode: TcxGridDBBandedColumn;
    cdsSInvTA: TNClientDataset;
    cdsSInvTATransactionStatus: TStringField;
    cdsSInvTATAReferenceID: TStringField;
    cdsSInvTATAReferenceNo: TStringField;
    cdsSInvTATradeDate: TStringField;
    cdsSInvTASettlementDate: TStringField;
    cdsSInvTAIMCode: TStringField;
    cdsSInvTABRCode: TStringField;
    cdsSInvTAFundCode: TStringField;
    cdsSInvTASecurityCode: TStringField;
    cdsSInvTABuySell: TIntegerField;
    cdsSInvTAPrice: TFloatField;
    cdsSInvTAQuantity: TFloatField;
    cdsSInvTATradeAmount: TFloatField;
    cdsSInvTACommission: TFloatField;
    cdsSInvTASalesTax: TFloatField;
    cdsSInvTALevy: TFloatField;
    cdsSInvTAVAT: TFloatField;
    cdsSInvTAOtherCharges: TFloatField;
    cdsSInvTAGrossSettlementAmount: TFloatField;
    cdsSInvTAWHTonCommission: TFloatField;
    cdsSInvTANetSettlementAmount: TFloatField;
    cdsSInvTASettlementType: TIntegerField;
    cdsSInvTARemarks: TMemoField;
    cdsSInvTACancellationReason: TMemoField;
    cdsSInvTAResponseCode: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actGenerateFileExecute(Sender: TObject);
    procedure edTradeAllocFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsSInvTAReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dtTradePropertiesCloseUp(Sender: TObject);
    procedure dtTradeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSInvTradeAllocList: TfrmSInvTradeAllocList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSInvTradeAllocList.actGenerateFileExecute(Sender: TObject);
var
  sFileName, sExt: string;
  sSeparator: Char;
  oFileDatalist,
  oDataList: TStringList;
  i, j: Integer;
  sSQLScript: string;
begin
  inherited;
  sFileName := edTradeAllocFile.EditValue;
  if sFileName = '' then
  begin
    MessageError('There is no file can be generated');
    Exit;
  end;

  sExt := ExtractFileExt(sFileName);
  if LowerCase(sExt) = '.csv' then
    sSeparator := ','
  else if LowerCase(sExt) = '.txt' then
    sSeparator := '|'
  else
  begin
    MessageError('Unknown File Extention');
    Exit;
  end;

  cdsSInvTA.Close;
  cdsSInvTA.Params[0].AsDate := dtTrade.EditValue;
  cdsSInvTA.Open;

  try
    oFileDatalist := TStringList.Create;
    oFileDatalist.LoadFromFile(sFileName);

    for i := 1 to oFileDatalist.Count -1 do
    begin
      oDataList := TStringList.Create;
      oDataList.StrictDelimiter := True;
      oDataList.Delimiter       := sSeparator;
      oDataList.DelimitedText   := oFileDatalist.Strings[i];

      cdsSInvTA.Append;
      sSQLScript := 'INSERT INTO main.B_SINV_TA VALUES(';
      for j := 0 to oDataList.Count -2 do
      begin
        if (cdsSInvTA.Fields[j].DataType = ftInteger) or (cdsSInvTA.Fields[j].DataType = ftFloat) then
        begin
          if oDataList.Strings[j] = '' then
            sSQLScript := sSQLScript + '0,'
          else
            sSQLScript := sSQLScript + oDataList.Strings[j] + ',';
        end
        else
          sSQLScript := sSQLScript + QuotedStr(oDataList.Strings[j]) + ',';
      end;
      sSQLScript := sSQLScript + QuotedStr(oDataList.Strings[j])+')';
      dmGlobal.RemoteServer.RunningFreeSQLScript(sSQLScript);

      FreeAndNil(oDataList);
    end;
  finally
    FreeAndNil(oFileDatalist);

    MessageDlg('Generate file S-Invest Trade Allocation has been done', mtInformation, [mbOk], 0);
    actRefresh.Execute;
  end;
end;

procedure TfrmSInvTradeAllocList.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsSInvTradeAlloc.Close;
  cdsSInvTradeAlloc.Params[0].AsDate := dtTrade.EditValue;
  cdsSInvTradeAlloc.Open;
end;

procedure TfrmSInvTradeAllocList.cdsSInvTAReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmSInvTradeAllocList.dtTradeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    actRefresh.Execute;
end;

procedure TfrmSInvTradeAllocList.dtTradePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  actRefresh.Execute;
end;

procedure TfrmSInvTradeAllocList.edTradeAllocFilePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  if odTradeAlloc.Execute then
    edTradeAllocFile.EditValue := odTradeAlloc.FileName;
end;

procedure TfrmSInvTradeAllocList.FormShow(Sender: TObject);
begin
  inherited;
  dtTrade.EditValue := dmGlobal.RemoteServer.GetTransDate;

  actRefresh.Execute;
end;

initialization
  RegisterClass(TfrmSInvTradeAllocList);

end.
