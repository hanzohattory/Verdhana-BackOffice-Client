unit FormStockSettleVoucherList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxDBLookupComboBox,
  cxCalendar, cxCheckGroup, dxBar, cxBarEditItem, NReportClient,
  NDatasetContainer, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, System.Actions, System.ImageList, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxDateRanges;

type
  TfrmStockSettleVoucherList = class(TfrmBrowseData)
    cbMarket: TcxBarEditItem;
    dtValue: TcxBarEditItem;
    edStatus: TcxBarEditItem;
    actCreateCashVoucher: TNAction;
    CreateCashVoucher1: TMenuItem;
    cdsStockSettleVoucherList: TNClientDataset;
    cdsStockSettleVoucherListSSID: TLargeintField;
    cdsStockSettleVoucherListSSNO: TStringField;
    cdsStockSettleVoucherListSSDESC: TStringField;
    cdsStockSettleVoucherListSETTLE_TYPE: TStringField;
    cdsStockSettleVoucherListENTRYDATE: TDateField;
    cdsStockSettleVoucherListVALUEDATE: TDateField;
    cdsStockSettleVoucherListACCID: TLargeintField;
    cdsStockSettleVoucherListCL_ACCID: TLargeintField;
    cdsStockSettleVoucherListSTOCKID: TLargeintField;
    cdsStockSettleVoucherListINSTRUCTION_TYPE: TStringField;
    cdsStockSettleVoucherListQTY: TFloatField;
    cdsStockSettleVoucherListORIG_AMOUNT: TFloatField;
    cdsStockSettleVoucherListAMOUNT: TFloatField;
    cdsStockSettleVoucherListACCCUSTODYID: TLargeintField;
    cdsStockSettleVoucherListCASH_VOUCHER_CREATED: TStringField;
    cdsStockSettleVoucherListSTAT: TStringField;
    cdsStockSettleVoucherListCANCEL_DATE: TDateTimeField;
    cdsStockSettleVoucherListCANCEL_UI: TStringField;
    cdsStockSettleVoucherListPOSTED_DATE: TDateTimeField;
    cdsStockSettleVoucherListPOSTED_UI: TStringField;
    cdsStockSettleVoucherListREVERSED_DATE: TDateTimeField;
    cdsStockSettleVoucherListREVERSED_UI: TStringField;
    cdsStockSettleVoucherListMODDA: TDateTimeField;
    cdsStockSettleVoucherListMODUI: TStringField;
    cdsStockSettleVoucherListAPPDA: TDateTimeField;
    cdsStockSettleVoucherListAPPUI: TStringField;
    cdsStockSettleVoucherListUNDER4Y: TIntegerField;
    cdsStockSettleVoucherListUDER4YDA: TDateTimeField;
    cdsStockSettleVoucherListNOTES4Y: TStringField;
    cdsStockSettleVoucherListISDEL: TIntegerField;
    cdsStockSettleVoucherListID: TLargeintField;
    cdsStockSettleVoucherListACCCODE: TStringField;
    cdsStockSettleVoucherListACCNAME: TStringField;
    cdsStockSettleVoucherListACCINIT: TStringField;
    cdsStockSettleVoucherListACCTYPE: TStringField;
    cdsStockSettleVoucherListPRDCODE: TStringField;
    cdsStockSettleVoucherListMARKETCODE: TStringField;
    cdsStockSettleVoucherListLOCALCODE: TStringField;
    cdsStockSettleVoucherListSHORTNAME: TStringField;
    gvwMasterSSID: TcxGridDBBandedColumn;
    gvwMasterSSNO: TcxGridDBBandedColumn;
    gvwMasterSSDESC: TcxGridDBBandedColumn;
    gvwMasterSETTLE_TYPE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterCL_ACCID: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterORIG_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterACCCUSTODYID: TcxGridDBBandedColumn;
    gvwMasterCASH_VOUCHER_CREATED: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSED_UI: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    cdsStockSettleVoucherListCUSTODYCODE: TStringField;
    cdsStockSettleVoucherListCUSTODYACCNO: TStringField;
    gvwMasterCUSTODYCODE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn;
    cdsStockSettleVoucherListDIFF_AMOUNT: TFloatField;
    gvwMasterDIFF_AMOUNT: TcxGridDBBandedColumn;
    cdsStockSettleVoucherListSETTLE_MODE: TStringField;
    cdsStockSettleVoucherListACS_PRICE: TFloatField;
    cdsStockSettleVoucherListACS_PERCENT: TFloatField;
    cdsStockSettleVoucherListSETTLE_AMOUNT: TFloatField;
    gvwMasterSETTLE_MODE: TcxGridDBBandedColumn;
    gvwMasterACS_PRICE: TcxGridDBBandedColumn;
    gvwMasterACS_PERCENT: TcxGridDBBandedColumn;
    gvwMasterSETTLE_AMOUNT: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure cdsStockSettleVoucherListCalcFields(DataSet: TDataSet);
    procedure actCreateCashVoucherExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockSettleVoucherList: TfrmStockSettleVoucherList;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar;

procedure TfrmStockSettleVoucherList.actCreateCashVoucherExecute(
  Sender: TObject);
var
  slMsg: TStringList;
  sMsg, sVoucherNo: String;
  i, n, RecIdx, iSuccess, iReject: Integer;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount >= 1 then
  begin
    if MessageDlg('Are you sure to create cash voucher from selected stock voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      slMsg := TStringList.Create;
      oProgress := TfrmProgressBar.Create(Nil);
      Try
        iSuccess := 0;
        iReject := 0;
        n := gvwMaster.Controller.SelectedRecordCount;
        oProgress.Show;
        for i := 0 to n -1 do
        begin
          RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
          gvwMaster.DataController.FocusedRecordIndex := RecIdx;

          oProgress.ChangeBar(trunc((i+1) / n * 100), 'Processing Stock Voucher ' +
            QuotedStr(cdsStockSettleVoucherListSSNO.AsString));

          if cdsStockSettleVoucherListCASH_VOUCHER_CREATED.AsString <> '1' then
          begin
            bRes := dmGlobal.RemoteServer.CreateCashVoucherFromStockVoucher(cdsStockSettleVoucherListSSID.AsLargeInt, sMsg);

            if bRes then
            begin
              iSuccess := iSuccess + 1;
            end
            Else
            begin
              iReject := iReject + 1;
            end;

            sMsg := cdsStockSettleVoucherListSSNO.AsString + ': ' + sMsg;
          end
          else 
          begin
            sMsg := cdsStockSettleVoucherListSSNO.AsString + ': Cash Voucher Have Been Created From This Stock Voucher.';
          end;

          slMsg.Add(sMsg);
        end;
      Finally
        slMsg.Insert(0, 'Cash Voucher Created Successfully ' + IntToStr(iSuccess));
        sMsg := slMsg.Text;
        FreeAndNil(oProgress);
        FreeAndNil(slMsg);
        ShowMessage(sMsg);
      End;

      if iSuccess > 0 then
        cdsStockSettleVoucherList.Refresh;
    end;
  end;
end;

procedure TfrmStockSettleVoucherList.actRefreshExecute(Sender: TObject);
var
  sStatus, sStatValue: String;
begin
//  inherited;
  sStatus := '';
  sStatValue := VarToStrDef(edStatus.EditValue, '1100');
  
  if Copy(sStatValue, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
      
    sStatus := sStatus + 'O';
  end;

  if Copy(sStatValue, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
      
    sStatus := sStatus + 'S';
  end;

  if Copy(sStatValue, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
      
    sStatus := sStatus + 'R';
  end;

  if Copy(sStatValue, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ';';
      
    sStatus := sStatus + 'C';
  end;

  cdsStockSettleVoucherList.Close;
  cdsStockSettleVoucherList.Params[0].AsDate := VarToDateTime(dtValue.EditValue);
  cdsStockSettleVoucherList.Params[1].AsString := VarToStr(cbMarket.EditValue);
  cdsStockSettleVoucherList.Params[2].AsString := sStatus;
  cdsStockSettleVoucherList.Open;
end;

procedure TfrmStockSettleVoucherList.cdsStockSettleVoucherListCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockSettleVoucherListDIFF_AMOUNT.AsFloat := cdsStockSettleVoucherListAMOUNT.AsFloat 
    - cdsStockSettleVoucherListORIG_AMOUNT.AsFloat;
end;

procedure TfrmStockSettleVoucherList.FormCreate(Sender: TObject);
begin
  inherited;
  cbMarket.EditValue := dmGlobal.RemoteServer.GetDefaultMarket;
  dtValue.EditValue := dmGlobal.RemoteServer.GetTransDate;
  edStatus.EditValue := '1100';

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuMarket.Active then
      cdsLuMarket.Open;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;
end;

Initialization
  RegisterClass(TfrmStockSettleVoucherList);

end.
