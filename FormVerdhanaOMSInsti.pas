unit FormVerdhanaOMSInsti;

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
  dxPScxExtEditorProducers, cxCalendar, dxBar, cxBarEditItem, NReportClient,
  NDatasetContainer, cxClasses, System.Actions, Vcl.ActnList, NDatasetAction,
  Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, DateUtils,
  cxGridDBBandedTableView, cxGrid, cxSplitter, Datasnap.DBClient, NClientDataset,
  ComObj, cxImageComboBox, dxLayoutContainer, dxLayoutControl;

type
  TfrmVerdhanaOMSInsti = class(TfrmBrowseData)
    dtOrder: TcxBarEditItem;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gvwExecs: TcxGridDBBandedTableView;
    cxSplitter1: TcxSplitter;
    cdsOrderExec: TNClientDataset;
    dsOrderExec: TDataSource;
    cdsOrderExecORDERDATE: TDateTimeField;
    cdsOrderExecMARKETID: TStringField;
    cdsOrderExecCLIENTORDERID: TStringField;
    cdsOrderExecMARKETORDERID: TStringField;
    cdsOrderExecIDXORDERNO: TStringField;
    cdsOrderExecBOARDID: TStringField;
    cdsOrderExecBROKERID: TStringField;
    cdsOrderExecLATETRADEFLAG: TStringField;
    cdsOrderExecBUYSELL: TStringField;
    cdsOrderExecSTOCKID: TStringField;
    cdsOrderExecCLIENTID: TStringField;
    cdsOrderExecDONEPRICE: TFloatField;
    cdsOrderExecVOLUME: TFloatField;
    cdsOrderExecMARKETTRADERID: TStringField;
    cdsOrderExecCOUNTERPARTY: TIntegerField;
    cdsOrderExecACCNAME: TStringField;
    cdsOrderExecSHORTNAME: TStringField;
    gvwMasterORDERDATE: TcxGridDBBandedColumn;
    gvwMasterMARKETID: TcxGridDBBandedColumn;
    gvwMasterCLIENTORDERID: TcxGridDBBandedColumn;
    gvwMasterMARKETORDERID: TcxGridDBBandedColumn;
    gvwMasterIDXORDERNO: TcxGridDBBandedColumn;
    gvwMasterBOARDID: TcxGridDBBandedColumn;
    gvwMasterBROKERID: TcxGridDBBandedColumn;
    gvwMasterLATETRADEFLAG: TcxGridDBBandedColumn;
    gvwMasterBUYSELL: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterCLIENTID: TcxGridDBBandedColumn;
    gvwMasterDONEPRICE: TcxGridDBBandedColumn;
    gvwMasterVOLUME: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    gvwExecsID: TcxGridDBBandedColumn;
    gvwExecsORDERDATE: TcxGridDBBandedColumn;
    gvwExecsMARKETID: TcxGridDBBandedColumn;
    gvwExecsCLIENTORDERID: TcxGridDBBandedColumn;
    gvwExecsMARKETORDERID: TcxGridDBBandedColumn;
    gvwExecsIDXORDERNO: TcxGridDBBandedColumn;
    gvwExecsBOARDID: TcxGridDBBandedColumn;
    gvwExecsBROKERID: TcxGridDBBandedColumn;
    gvwExecsLATETRADEFLAG: TcxGridDBBandedColumn;
    gvwExecsBUYSELL: TcxGridDBBandedColumn;
    gvwExecsSTOCKID: TcxGridDBBandedColumn;
    gvwExecsCLIENTID: TcxGridDBBandedColumn;
    gvwExecsDONEPRICE: TcxGridDBBandedColumn;
    gvwExecsVOLUME: TcxGridDBBandedColumn;
    gvwExecsMARKETTRADERID: TcxGridDBBandedColumn;
    gvwExecsCOUNTERPARTY: TcxGridDBBandedColumn;
    gvwExecsACCNAME: TcxGridDBBandedColumn;
    gvwExecsSHORTNAME: TcxGridDBBandedColumn;
    OpenDialog: TOpenDialog;
    actUploadOrder: TNAction;
    actUploadExec: TNAction;
    N1: TMenuItem;
    UploadOrderRegular1: TMenuItem;
    PopupMenu: TPopupMenu;
    UploadTradeExecution1: TMenuItem;
    dxBarButton1: TdxBarButton;
    actGenrateDealTicket: TNAction;
    actUpdateDealTicketExecManual: TNAction;
    cdsOrderExecID: TLargeintField;
    cdsOrderExecSTAT: TStringField;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwExecsSTAT: TcxGridDBBandedColumn;
    cdsUploadExec: TNClientDataset;
    cdsUploadExecORDERDATE: TDateTimeField;
    cdsUploadExecMARKETID: TStringField;
    cdsUploadExecCLIENTORDERID: TStringField;
    cdsUploadExecMARKETORDERID: TStringField;
    cdsUploadExecIDXORDERNO: TStringField;
    cdsUploadExecBOARDID: TStringField;
    cdsUploadExecBROKERID: TStringField;
    cdsUploadExecLATETRADEFLAG: TStringField;
    cdsUploadExecBUYSELL: TStringField;
    cdsUploadExecSTOCKID: TStringField;
    cdsUploadExecCLIENTID: TStringField;
    cdsUploadExecDONEPRICE: TFloatField;
    cdsUploadExecVOLUME: TFloatField;
    cdsUploadExecMARKETTRADERID: TStringField;
    cdsUploadExecCOUNTERPARTY: TIntegerField;
    cdsUploadExecSTAT: TStringField;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cdsUploadOrders: TNClientDataset;
    cdsVerdhanaOrderList: TNClientDataset;
    cdsUploadOrdersorderDate: TDateField;
    cdsUploadOrdersmarketID: TStringField;
    cdsUploadOrdersmarketOrderID: TIntegerField;
    cdsUploadOrdersboardID: TStringField;
    cdsUploadOrdersbrokerID: TStringField;
    cdsUploadOrdersstockID: TStringField;
    cdsUploadOrdersclientID: TStringField;
    cdsUploadOrdersorderPrice: TFloatField;
    cdsUploadOrdersdayTrade: TFloatField;
    cdsVerdhanaOrderListid: TLargeintField;
    cdsVerdhanaOrderListorderDate: TDateField;
    cdsVerdhanaOrderListmarketID: TStringField;
    cdsVerdhanaOrderListmarketOrderID: TIntegerField;
    cdsVerdhanaOrderListboardID: TStringField;
    cdsVerdhanaOrderListbrokerID: TStringField;
    cdsVerdhanaOrderListstockID: TStringField;
    cdsVerdhanaOrderListclientID: TStringField;
    cdsVerdhanaOrderListorderPrice: TFloatField;
    cdsVerdhanaOrderListorderVolume: TFloatField;
    cdsVerdhanaOrderListdayTrade: TFloatField;
    cdsVerdhanaOrderListACCNAME: TStringField;
    cdsVerdhanaOrderListSHORTNAME: TStringField;
    cxGridDBBandedTableView1id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1orderDate: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1marketID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1marketOrderID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1boardID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1brokerID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1stockID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1clientID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1orderPrice: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1orderVolume: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1dayTrade: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ACCNAME: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SHORTNAME: TcxGridDBBandedColumn;
    cdsUploadOrdersorderVolume: TFloatField;
    cdsUploadOrdersbs: TStringField;
    cdsVerdhanaOrderListbs: TStringField;
    cxGridDBBandedTableView1bs: TcxGridDBBandedColumn;
    dxBarButton4: TdxBarButton;
    procedure actRefreshExecute(Sender: TObject);
    procedure actUploadOrderExecute(Sender: TObject);
    procedure actUploadExecExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure popMasterPopup(Sender: TObject);
    procedure cdsOrderListPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure actGenrateDealTicketExecute(Sender: TObject);
    procedure actUpdateDealTicketExecManualExecute(Sender: TObject);
  private
    { Private declarations }
    procedure UploadDataExecs;
  public
    { Public declarations }
  end;

var
  frmVerdhanaOMSInsti: TfrmVerdhanaOMSInsti;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmVerdhanaOMSInsti.actGenrateDealTicketExecute(Sender: TObject);
var
  sMsg: string;
  dtOrders: TDateTime;
begin
  inherited;
  if MessageQuestion('Generate Dealticket ?') then
  begin
    dtOrders := VarToDateTime(dtOrder.EditValue);

    dmGlobal.RemoteServer.GenerateDealticketFromVerdhanaRT(dtOrders, sMsg);
    MessageInformation(sMsg);

    actRefresh.Execute;
  end;
end;

procedure TfrmVerdhanaOMSInsti.actUpdateDealTicketExecManualExecute(Sender: TObject);
var
  sMsg: string;
  dtOrders: TDateTime;
  bRes: Boolean;
begin
  inherited;
  if MessageQuestion('Update Deal Ticket Execution Manual ?') then
  begin
    dtOrders := VarToDateTime(dtOrder.EditValue);

    Screen.Cursor := crSQLWait;
    try
      // SP : verdhana.nsp_ChangeDataExecutionManualDealticket
      bRes := dmGlobal.RemoteServer.ChangeDataExecutionManualDealticket(dtOrders, sMsg);
    finally
      Screen.Cursor := crDefault;
    end;

    if bRes then
      MessageInformation(sMsg)
    else
      MessageError(sMsg);

    actRefresh.Execute;
  end;
end;

procedure TfrmVerdhanaOMSInsti.actRefreshExecute(Sender: TObject);
begin
//  inherited;
  cdsVerdhanaOrderList.Close;
  cdsVerdhanaOrderList.Params[0].AsDate := VarToDateTime(dtOrder.EditValue);
  cdsVerdhanaOrderList.Open;

  cdsOrderExec.Close;
  cdsOrderExec.Params[0].AsDate := VarToDateTime(dtOrder.EditValue);
  cdsOrderExec.Open;
end;

procedure TfrmVerdhanaOMSInsti.actUploadExecExecute(Sender: TObject);
begin
  inherited;
  UploadDataExecs;
end;

procedure TfrmVerdhanaOMSInsti.actUploadOrderExecute(Sender: TObject);
var
  sFileName: string;
  sMsg, sErrMsg: string;
  iDone, iFail, i, j: integer;
  oProgressBar: TfrmProgressBar;
  sFieldName: string;

  oExcel, oSheet: OleVariant;
  iRows, iCols: Integer;
  oProgress: TfrmProgressBar;
  dtTradeOrder: TDateTime;
  sBrokerID: string;
begin
  sFileName := '';
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;

    if sFileName = '' then
    begin
      MessageInformation('Please choose the file to be uploaded !');
      exit;
    end;
  end;

  try
    dtTradeOrder := VarToDateTime(dtOrder.EditValue);

    cdsVerdhanaOrderList.DisableControls;
    if not cdsVerdhanaOrderList.Active then
    begin
      cdsVerdhanaOrderList.Close;
      cdsVerdhanaOrderList.Params[0].AsDate := dtTradeOrder;
      cdsVerdhanaOrderList.Open;
    end;

    if cdsVerdhanaOrderList.RecordCount > 0 then
    begin
      if MessageQuestion('Upload data orders will erase orders with date '+ FormatDateTime('dd mmm yyyy', dtTradeOrder) +'?') then
      begin
        if not dmGlobal.RemoteServer.ClearVedhanaDataTradeOrder(dtTradeOrder, 'orders', sErrMsg) then
        begin
          MessageError(sErrMsg);
          cdsVerdhanaOrderList.EnableControls;
          Exit;
        end;
      end
      else
      begin
        cdsVerdhanaOrderList.EnableControls;
        Exit;
      end;
    end;

    if not cdsUploadOrders.Active then
      cdsUploadOrders.Open;

    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := false;
    oExcel.WorkBooks.Open(sFileName);

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    iCols  := oSheet.Usedrange.Columns.Count;
    iRows  := oSheet.Usedrange.Rows.Count;

    oProgressBar := TfrmProgressBar.Create(nil);
    oProgressBar.Show;

    i := 2;
    repeat
      oProgressBar.ChangeBar(trunc((i + 1) / iRows * 100), 'Uploading Verdhana Order : '+
        QuotedStr(oSheet.Cells[i, 2].Value));

      // BrokerID sekarang varchar(5): sel kosong (Null) / angka dari Excel dibaca sebagai string
      sBrokerID := Trim(VarToStr(oSheet.Cells[i, 5].Value));
      if Length(sBrokerID) > 5 then
        raise Exception.CreateFmt('Broker ID "%s" on row %d is longer than 5 characters !', [sBrokerID, i]);

      cdsUploadOrders.Append;
      cdsUploadOrdersorderDate.AsDateTime    := oSheet.Cells[i, 1].Value;
      cdsUploadOrdersmarketID.AsString       := oSheet.Cells[i, 2].Value;
      cdsUploadOrdersmarketOrderID.AsString  := oSheet.Cells[i, 3].Value;
      cdsUploadOrdersboardID.AsString        := oSheet.Cells[i, 4].Value;
      cdsUploadOrdersbrokerID.AsString       := sBrokerID;
      cdsUploadOrdersbs.AsString             := oSheet.Cells[i, 6].Value;
      cdsUploadOrdersstockID.AsString        := oSheet.Cells[i, 7].Value;
      cdsUploadOrdersclientID.AsString       := oSheet.Cells[i, 8].Value;
      cdsUploadOrdersorderPrice.AsFloat      := StrToFloatDef(oSheet.Cells[i, 9].Value, 0);
      cdsUploadOrdersorderVolume.AsFloat     := StrToFloatDef(oSheet.Cells[i, 10].Value, 0);
      cdsUploadOrdersdayTrade.AsString       := oSheet.Cells[i, 11].Value;
      cdsUploadOrders.Post;

      Inc(i);
    until (oSheet.Cells[i, 2].Value = '');

    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

  finally
    cdsUploadOrders.ApplyUpdates(-1);
    MessageInformation(FormatFloat('#,##0', i - 2) +' data has been uploaded');

    FreeAndNil(oProgressBar);

    cdsVerdhanaOrderList.EnableControls;
    cdsVerdhanaOrderList.Refresh;
  end;
end;

procedure TfrmVerdhanaOMSInsti.cdsOrderListPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TfrmVerdhanaOMSInsti.FormShow(Sender: TObject);
begin
  inherited;
  dtOrder.EditValue := dmglobal.RemoteServer.GetTransDate;
end;

procedure TfrmVerdhanaOMSInsti.popMasterPopup(Sender: TObject);
begin
  inherited;
  actUploadOrder.Visible := grdMasterLevel1.Active;
end;

procedure TfrmVerdhanaOMSInsti.UploadDataExecs;
var
  sFileName: string;
  oListData, oData: TStringList;
  sMsg, sErrMsg: string;
  iDone, iFail, i, iCount: integer;
  oProgressBar: TfrmProgressBar;
  dtTradeOrder: TDateTime;
begin
  try
    sFileName := '';
    if OpenDialog.Execute then
    begin
      sFileName := OpenDialog.FileName;
    end;

    if sFileName = '' then
    begin
      MessageInformation('Please choose the file to be uploaded !');
      exit;
    end;

    if dmGlobal.RemoteServer.FileNameUploaded(sFileName, sMsg) then
    begin
      MessageError(sMsg);
      exit;
    end;

    cdsOrderExec.DisableControls;

    oData     := TStringList.Create;
    oListData := TStringList.Create;
    oListData.LoadFromFile(sFileName);

    oData.Clear;
    oData.DelimitedText := oListData.Strings[1];
    oData.Delimiter     := ',';

    dtTradeOrder := VarToDateTime(oData.Strings[0]);

    if dtTradeOrder <> VarToDateTime(dtOrder.EditValue) then
    begin
      MessageInformation('upload trade execution is not same as filtered date !');
      cdsOrderExec.EnableControls;
      exit;
    end;

    cdsOrderExec.Close;
    cdsOrderExec.Params[0].AsDate := dtTradeOrder;
    cdsOrderExec.Open;

    if cdsOrderExec.RecordCount > 0 then
    begin
      if MessageQuestion('Upload data orders will erase trades with date '+ FormatDateTime('dd mmm yyyy', dtTradeOrder) +'?') then
      begin
        if not dmGlobal.RemoteServer.ClearVedhanaDataTradeOrder(dtTradeOrder, 'trades', sErrMsg) then
        begin
          MessageError(sErrMsg);
          cdsOrderExec.EnableControls;
          Exit;
        end;
      end
      else
      begin
        cdsOrderExec.EnableControls;
        Exit;
      end;
    end;

    if not cdsUploadExec.Active then
      cdsUploadExec.Open;

    iCount       := oListData.Count;
    oProgressBar := TfrmProgressBar.Create(nil);
    oProgressBar.Show;

    for i := 1 to iCount -1 do
    begin
      oData.Clear;
      oData.DelimitedText := oListData.Strings[i];
      oData.Delimiter     := ',';

      oProgressBar.ChangeBar(trunc((i + 1) / iCount * 100), 'Uploading Verdhana Trade Execution : '+  QuotedStr(oData.Strings[4]));

      cdsUploadExec.Append;
      cdsUploadExecORDERDATE.AsDateTime    := VarToDateTime(oData.Strings[0]);
      cdsUploadExecMARKETID.AsString       := oData.Strings[1];
      cdsUploadExecCLIENTORDERID.AsString  := oData.Strings[2];
      cdsUploadExecMARKETORDERID.AsString  := oData.Strings[3];
      cdsUploadExecIDXORDERNO.AsString     := oData.Strings[4];
      cdsUploadExecBOARDID.AsString        := oData.Strings[5];
      cdsUploadExecBROKERID.AsString       := oData.Strings[6];
      cdsUploadExecLATETRADEFLAG.AsString  := oData.Strings[7];
      cdsUploadExecBUYSELL.AsString        := oData.Strings[8];
      cdsUploadExecSTOCKID.AsString        := oData.Strings[9];
      cdsUploadExecCLIENTID.AsString       := oData.Strings[10];
      cdsUploadExecDONEPRICE.AsFloat       := StrToFloat(oData.Strings[11]);
      cdsUploadExecVOLUME.AsFloat          := StrToFloat(oData.Strings[12]);
      cdsUploadExecMARKETTRADERID.AsString := oData.Strings[13];
      cdsUploadExecCOUNTERPARTY.AsInteger  := StrToInt(oData.Strings[14]);
      cdsUploadExec.Post;
    end;

  finally
    if iCount > 0 then
    begin
      cdsUploadExec.ApplyUpdates(-1);

      MessageInformation(FormatFloat('#,##0', iCount) +' data has been uploaded');
    end;

    FreeAndNil(oData);
    FreeAndNil(oListData);
    FreeAndNil(oProgressBar);

    cdsOrderExec.EnableControls;
    cdsOrderExec.Refresh;
  end;
end;

end.
