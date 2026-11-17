unit FormStockSettlementVoucherList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxLayoutContainer,
  dxLayoutControl, NReportClient, NDatasetContainer, dxBar, cxClasses,
  Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxContainer, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  dxLayoutControlAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, Datasnap.DBClient,
  NClientDataset, Vcl.StdCtrls, cxButtons, cxCalendar, cxCheckBox,
  System.Actions, System.ImageList, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxDateRanges, cxBarEditItem,Clipbrd,
  dxScrollbarAnnotations;

type
  TfrmStockSettlementVoucherList = class(TfrmBrowseData)
    actViewData: TNAction;
    cdsStockSettlementVoucherList: TNClientDataset;
    cdsCustodyInstruction: TNClientDataset;
    cdsCustodyInstructionCUSTODY_INSTRID: TLargeintField;
    cdsCustodyInstructionCUSTODY_EXTREF: TStringField;
    cdsCustodyInstructionEXCHANGE: TStringField;
    cdsCustodyInstructionACCID: TLargeintField;
    cdsCustodyInstructionACCNO: TStringField;
    cdsCustodyInstructionACCNAME: TStringField;
    cdsCustodyInstructionVALUEDATE: TDateField;
    cdsCustodyInstructionTRDDATE: TDateField;
    cdsCustodyInstructionSETTLEDATE: TDateField;
    cdsCustodyInstructionSETTLE_SIDE: TStringField;
    cdsCustodyInstructionINSTRUCTION_TYPE: TStringField;
    cdsCustodyInstructionPARTY_ID: TLargeintField;
    cdsCustodyInstructionPARTY_CODE: TStringField;
    cdsCustodyInstructionPARTY_ACC: TStringField;
    cdsCustodyInstructionCOUNTER_ID: TLargeintField;
    cdsCustodyInstructionCOUNTER_CODE: TStringField;
    cdsCustodyInstructionCOUNTER_ACC: TStringField;
    cdsCustodyInstructionSECURITYCODE_TYPE: TStringField;
    cdsCustodyInstructionSTOCKID: TLargeintField;
    cdsCustodyInstructionSTOCKCODE: TStringField;
    cdsCustodyInstructionQTY: TFloatField;
    cdsCustodyInstructionCCY: TStringField;
    cdsCustodyInstructionORIGINAL_AMT: TFloatField;
    cdsCustodyInstructionSETTLE_AMOUNT: TFloatField;
    cdsCustodyInstructionSALDO: TFloatField;
    cdsCustodyInstructionSALDO_TYPE: TStringField;
    cdsCustodyInstructionISMULTICCY: TStringField;
    cdsCustodyInstructionFOREIGN_CCYCODE: TStringField;
    cdsCustodyInstructionFOREIGN_EXRATE: TFloatField;
    cdsCustodyInstructionFOREIGN_SETTTLEAMT: TFloatField;
    cdsCustodyInstructionCUSTODY_DESC: TStringField;
    cdsCustodyInstructionREMARKS: TStringField;
    cdsCustodyInstructionPURPOSE: TStringField;
    cdsCustodyInstructionTRADE_REF: TStringField;
    cdsCustodyInstructionSETTLE_REASON: TStringField;
    cdsCustodyInstructionBENEFICIARYCODE: TStringField;
    cdsCustodyInstructionBENEFICIARYACC: TStringField;
    cdsCustodyInstructionCORPACT_TYPE: TStringField;
    cdsCustodyInstructionLINKTYPE: TStringField;
    cdsCustodyInstructionLINKID: TLargeintField;
    cdsCustodyInstructionCONFIRM_BY: TStringField;
    cdsCustodyInstructionCONFIRM_WITH: TStringField;
    cdsCustodyInstructionCREATE_FILE: TStringField;
    cdsCustodyInstructionCOUNT_CREATE_FILE: TIntegerField;
    cdsCustodyInstructionCBEST_UPLOAD: TStringField;
    cdsCustodyInstructionSID_NO: TStringField;
    cdsCustodyInstructionSTAT: TStringField;
    cdsCustodyInstructionMATCH: TStringField;
    cdsCustodyInstructionKSEI_RECON: TStringField;
    cdsCustodyInstructionCLIENT_ACCID: TLargeintField;
    cdsCustodyInstructionMODDA: TDateTimeField;
    cdsCustodyInstructionMODUI: TStringField;
    cdsCustodyInstructionAPPDA: TDateTimeField;
    cdsCustodyInstructionAPPUI: TStringField;
    cdsCustodyInstructionUNDER4Y: TIntegerField;
    cdsCustodyInstructionUNDER4YDA: TDateTimeField;
    cdsCustodyInstructionNOTES4Y: TStringField;
    cdsCustodyInstructionISDEL: TIntegerField;
    cdsCustodyInstructionID: TLargeintField;
    cdsCustodyInstructionBS: TStringField;
    cdsCustodyInstructionDHKID: TLargeintField;
    cdsCustodyInstructionNEW_CUSTODY_INSTRID: TLargeintField;
    cdsCustodyInstructionMERGE_ID: TIntegerField;
    cdsCustodyInstructionSPLIT_ID: TIntegerField;
    cdsCustodyInstructionIS_MERGE: TBooleanField;
    cdsCustodyInstructionIS_SPLIT: TBooleanField;
    cdsStockSettlementVoucherListSSID: TLargeintField;
    cdsStockSettlementVoucherListSSNO: TStringField;
    cdsStockSettlementVoucherListSSDESC: TStringField;
    cdsStockSettlementVoucherListENTRYDATE: TDateField;
    cdsStockSettlementVoucherListVALUEDATE: TDateField;
    cdsStockSettlementVoucherListACCID: TLargeintField;
    cdsStockSettlementVoucherListACCCODE: TStringField;
    cdsStockSettlementVoucherListACCINIT: TStringField;
    cdsStockSettlementVoucherListACCTYPE: TStringField;
    cdsStockSettlementVoucherListPRDCODE: TStringField;
    cdsStockSettlementVoucherListSETTLE_TYPE: TStringField;
    cdsStockSettlementVoucherListQTY: TFloatField;
    cdsStockSettlementVoucherListSTAT: TStringField;
    dsCustodyInstruction: TDataSource;
    gvwMasterSSID: TcxGridDBBandedColumn;
    gvwMasterSSNO: TcxGridDBBandedColumn;
    gvwMasterSSDESC: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_TYPE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    cdsStockSettlementVoucherListACCNAME: TStringField;
    cdsStockSettlementVoucherListSTOCKID: TLargeintField;
    cdsStockSettlementVoucherListSHORTNAME: TStringField;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSHORTNAME: TcxGridDBBandedColumn;
    cdsStockSettlementVoucherListLOCALCODE: TStringField;
    gvwMasterLOCALCODE: TcxGridDBBandedColumn;
    grdMasterLevel2: TcxGridLevel;
    gvwCustodyInstruction: TcxGridDBBandedTableView;
    gvwCustodyInstructionCUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwCustodyInstructionCUSTODY_EXTREF: TcxGridDBBandedColumn;
    gvwCustodyInstructionEXCHANGE: TcxGridDBBandedColumn;
    gvwCustodyInstructionACCID: TcxGridDBBandedColumn;
    gvwCustodyInstructionACCNO: TcxGridDBBandedColumn;
    gvwCustodyInstructionACCNAME: TcxGridDBBandedColumn;
    gvwCustodyInstructionVALUEDATE: TcxGridDBBandedColumn;
    gvwCustodyInstructionTRDDATE: TcxGridDBBandedColumn;
    gvwCustodyInstructionSETTLEDATE: TcxGridDBBandedColumn;
    gvwCustodyInstructionSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwCustodyInstructionINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwCustodyInstructionPARTY_ID: TcxGridDBBandedColumn;
    gvwCustodyInstructionPARTY_CODE: TcxGridDBBandedColumn;
    gvwCustodyInstructionPARTY_ACC: TcxGridDBBandedColumn;
    gvwCustodyInstructionCOUNTER_ID: TcxGridDBBandedColumn;
    gvwCustodyInstructionCOUNTER_CODE: TcxGridDBBandedColumn;
    gvwCustodyInstructionCOUNTER_ACC: TcxGridDBBandedColumn;
    gvwCustodyInstructionSECURITYCODE_TYPE: TcxGridDBBandedColumn;
    gvwCustodyInstructionSTOCKID: TcxGridDBBandedColumn;
    gvwCustodyInstructionSTOCKCODE: TcxGridDBBandedColumn;
    gvwCustodyInstructionQTY: TcxGridDBBandedColumn;
    gvwCustodyInstructionCCY: TcxGridDBBandedColumn;
    gvwCustodyInstructionORIGINAL_AMT: TcxGridDBBandedColumn;
    gvwCustodyInstructionSETTLE_AMOUNT: TcxGridDBBandedColumn;
    gvwCustodyInstructionSALDO: TcxGridDBBandedColumn;
    gvwCustodyInstructionSALDO_TYPE: TcxGridDBBandedColumn;
    gvwCustodyInstructionISMULTICCY: TcxGridDBBandedColumn;
    gvwCustodyInstructionFOREIGN_CCYCODE: TcxGridDBBandedColumn;
    gvwCustodyInstructionFOREIGN_EXRATE: TcxGridDBBandedColumn;
    gvwCustodyInstructionFOREIGN_SETTTLEAMT: TcxGridDBBandedColumn;
    gvwCustodyInstructionCUSTODY_DESC: TcxGridDBBandedColumn;
    gvwCustodyInstructionREMARKS: TcxGridDBBandedColumn;
    gvwCustodyInstructionPURPOSE: TcxGridDBBandedColumn;
    gvwCustodyInstructionTRADE_REF: TcxGridDBBandedColumn;
    gvwCustodyInstructionSETTLE_REASON: TcxGridDBBandedColumn;
    gvwCustodyInstructionBENEFICIARYCODE: TcxGridDBBandedColumn;
    gvwCustodyInstructionBENEFICIARYACC: TcxGridDBBandedColumn;
    gvwCustodyInstructionCORPACT_TYPE: TcxGridDBBandedColumn;
    gvwCustodyInstructionLINKTYPE: TcxGridDBBandedColumn;
    gvwCustodyInstructionLINKID: TcxGridDBBandedColumn;
    gvwCustodyInstructionCONFIRM_BY: TcxGridDBBandedColumn;
    gvwCustodyInstructionCONFIRM_WITH: TcxGridDBBandedColumn;
    gvwCustodyInstructionCREATE_FILE: TcxGridDBBandedColumn;
    gvwCustodyInstructionCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwCustodyInstructionCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwCustodyInstructionSID_NO: TcxGridDBBandedColumn;
    gvwCustodyInstructionSTAT: TcxGridDBBandedColumn;
    gvwCustodyInstructionMATCH: TcxGridDBBandedColumn;
    gvwCustodyInstructionKSEI_RECON: TcxGridDBBandedColumn;
    gvwCustodyInstructionCLIENT_ACCID: TcxGridDBBandedColumn;
    gvwCustodyInstructionMODDA: TcxGridDBBandedColumn;
    gvwCustodyInstructionMODUI: TcxGridDBBandedColumn;
    gvwCustodyInstructionAPPDA: TcxGridDBBandedColumn;
    gvwCustodyInstructionAPPUI: TcxGridDBBandedColumn;
    gvwCustodyInstructionUNDER4Y: TcxGridDBBandedColumn;
    gvwCustodyInstructionUNDER4YDA: TcxGridDBBandedColumn;
    gvwCustodyInstructionNOTES4Y: TcxGridDBBandedColumn;
    gvwCustodyInstructionISDEL: TcxGridDBBandedColumn;
    gvwCustodyInstructionID: TcxGridDBBandedColumn;
    gvwCustodyInstructionBS: TcxGridDBBandedColumn;
    gvwCustodyInstructionDHKID: TcxGridDBBandedColumn;
    gvwCustodyInstructionNEW_CUSTODY_INSTRID: TcxGridDBBandedColumn;
    gvwCustodyInstructionMERGE_ID: TcxGridDBBandedColumn;
    gvwCustodyInstructionSPLIT_ID: TcxGridDBBandedColumn;
    gvwCustodyInstructionIS_MERGE: TcxGridDBBandedColumn;
    gvwCustodyInstructionIS_SPLIT: TcxGridDBBandedColumn;
    actViewDetail: TNAction;
    ViewDetail1: TMenuItem;
    actSettle: TNAction;
    actReverse: TNAction;
    actCancelVoucher: TNAction;
    N1: TMenuItem;
    SettleSelectedStockVoucher1: TMenuItem;
    CancelStockVoucher1: TMenuItem;
    ReverseStockVoucher1: TMenuItem;
    cdsStockSettlementVoucherListCL_ACCID: TLargeintField;
    cdsStockSettlementVoucherListAMOUNT: TFloatField;
    cdsStockSettlementVoucherListINSTRUCTION_TYPE: TStringField;
    gvwMasterAMOUNT: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    cdsStockSettlementVoucherListORIG_AMOUNT: TFloatField;
    cdsStockSettlementVoucherListCUSTODYCODE: TStringField;
    cdsStockSettlementVoucherListCUSTODYACCNO: TStringField;
    cdsStockSettlementVoucherListDIFF_AMOUNT: TFloatField;
    gvwMasterCL_ACCID: TcxGridDBBandedColumn;
    gvwMasterORIG_AMOUNT: TcxGridDBBandedColumn;
    gvwMasterCUSTODYCODE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwMasterDIFF_AMOUNT: TcxGridDBBandedColumn;
    actCreateVPFile: TNAction;
    cdsGenerateOTCTXT: TNClientDataset;
    cdsGenerateOTCTXTDATA: TStringField;
    SaveDialog: TSaveDialog;
    cmbSettleType: TcxBarEditItem;
    dtValueDate: TcxBarEditItem;
    chkOpen: TcxBarEditItem;
    chkPosted: TcxBarEditItem;
    chkReversed: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    cdsStockSettlementVoucherListSETTLE_MODE: TStringField;
    cdsStockSettlementVoucherListACS_PRICE: TFloatField;
    cdsStockSettlementVoucherListACS_PERCENT: TFloatField;
    cdsStockSettlementVoucherListSETTLE_AMOUNT: TFloatField;
    gvwMasterSETTLE_MODE: TcxGridDBBandedColumn;
    gvwMasterACS_PRICE: TcxGridDBBandedColumn;
    gvwMasterACS_PERCENT: TcxGridDBBandedColumn;
    gvwMasterSETTLE_AMOUNT: TcxGridDBBandedColumn;
    actSettleVouecherPostByDate: TNAction;
    StockSettlementVoucherPostingByDate1: TMenuItem;
    N5: TMenuItem;
    dxBarButton1: TdxBarButton;
    cdsStockSettlementVoucherListSTOCKTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actViewDetailExecute(Sender: TObject);
    procedure actSettleExecute(Sender: TObject);
    procedure actCancelVoucherExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actSettleUpdate(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actCancelVoucherUpdate(Sender: TObject);
    procedure cdsStockSettlementVoucherListCalcFields(DataSet: TDataSet);
    procedure actCreateVPFileExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
    procedure actSettleVouecherPostByDateExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockSettlementVoucherList: TfrmStockSettlementVoucherList;

implementation

{$R *.dfm}

uses DataGlobal, FormStockSettleVoucher, FormStockSettement,
  FormStockSettleVoucherProcess, FormViewTransaction;

procedure TfrmStockSettlementVoucherList.actCancelVoucherExecute(
  Sender: TObject);
var
  i, x, v: Integer;
  iSSID: Int64;
  sTmpMsg,
  sMsg,
  sErrMsg: string;
begin
  inherited;
  x := 0;
  v := 0;

  sTmpMsg := '';
  sErrMsg := '';
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    iSSID := StrToInt64Def(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterSSID.Index], 0);

    if dmGlobal.RemoteServer.StockSettleVoucherCancel(iSSID, sMsg) then
      Inc(v)
    else
    begin
      Inc(x);

      if sMsg <> sTmpMsg then
        sErrMsg := sErrMsg + sMsg + #13;
      sTmpMsg := sMsg;
    end;
  end;

  if x > 0 then
    sMsg := IntToStr(v)+' Canceled and '+IntToStr(x)+' Fail to cancel'+#13+'Fail Message : '+#13+sErrMsg
  else
    sMsg := IntToStr(v)+' Canceled and '+IntToStr(x)+' Fail to cancel';
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  cdsStockSettlementVoucherList.Refresh;
end;

procedure TfrmStockSettlementVoucherList.actCancelVoucherUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsStockSettlementVoucherListSTAT.AsString = 'O';
end;

procedure TfrmStockSettlementVoucherList.actCopySelectedExecute(
  Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
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

procedure TfrmStockSettlementVoucherList.actCreateVPFileExecute(
  Sender: TObject);
var
  sFileName, sFolderName, sTmpFileName: string;
  sList, sSettleSide: string;
  oCBestList: TStringList;
  i, j, iNoFile, iCreateFile : Integer;
  sMode: string;
  iSID: Int64;
  oGrid: TcxGridDBBandedTableView;
  sPurpose, sTradeRef, sSettleReason: string;
  sIDRCur: string;
  sCustodyID, sMsg: string;
begin
  inherited;
  oCBestList := TStringList.Create;
  sCustodyID := '';

//  if TabOTCInstruction.Properties.ActivePage = TabExchage then
//    SaveDialog.FileName := 'OTCExchange_'+FormatDateTime('YYYYMMDD', dtFilterDate.Date)
//  else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
//    SaveDialog.FileName := 'NonOTCExchange_'+FormatDateTime('YYYYMMDD', dtFilterDate.Date);

  SaveDialog.FileName := 'VP_'+FormatDateTime('YYYYMMDD', VarToDateTime(dtValueDate.EditValue));
  if SaveDialog.Execute(Handle) then
  begin
    sFileName := SaveDialog.FileName;
    if sFileName = '' then
      MessageDlg('Can not be saved without name of file', mtConfirmation, [mbOk], 0);
  end
  else
    sFileName := '';

  if sFileName <> '' then
  begin
    if ExtractFileExt(sFileName) = '' then
      sFileName := sFileName + '.otc';

    if FileExists(sFileName) then
      DeleteFile(sFileName);

//    if TabOTCInstruction.Properties.ActivePage = TabExchage then
//    begin
//      for i := 0 to gvwExchange.Controller.SelectedRecordCount -1 do
//      begin
//        if (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'DFOP') or (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'RFOP') then
//        begin
//          sPurpose      := IsNull(GetData(i, gvwExchangePURPOSE.Index));
//          sTradeRef     := IsNull(GetData(i, gvwExchangeTRADE_REF.Index));
//          sSettleReason := IsNull(GetData(i, gvwExchangeSETTLE_REASON.Index));
//        end
//        else
//        begin
//          sPurpose      := '';
//          sTradeRef     := '';
//          sSettleReason := '';
//        end;
//
//        sList := '';
//        sList := IsNull(GetData(i, gvwExchangeCUSTODY_EXTREF.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeINSTRUCTION_TYPE_CODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeBROKERCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeBROKERMAINACCOUNT.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeparticipantAccountCash.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeCUSTODIANCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeSTOCKCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwExchangeQTY.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwExchangeTRDDATE.Index)) +'|'+
//                 IsNull(GetData(i, gvwExchangeCCYCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwExchangeAMOUNT.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwExchangeSETTLEDDATE.Index)) +'|'+
//                 sPurpose +'|'+
//                 sTradeRef +'|'+
//                 sSettleReason +'|'+
//                 IsNull(GetData(i, gvwExchangeREMARKS.Index)) +'|'+
//                 'LOCAL';
//
//        oCBestList.Add(sList);
//
//        sCustodyID := sCustodyID + IsNull(GetData(i, gvwExchangeCUSTODY_INSTRID.Index)) + ',';
//      end;
//
//      sMsg := dmGlobal.RemoteServer.UpdateStatusCustodyInst('U', sCustodyID);
//    end
//    else if TabOTCInstruction.Properties.ActivePage = TabNonEchange then
//    begin
//      for i := 0 to gvwNonExchange.Controller.SelectedRecordCount -1 do
//      begin
//        if (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'DFOP') or (IsNull(GetData(i, gvwExchangeINSTRUCTION.Index)) = 'RFOP') then
//        begin
//          sPurpose      := IsNull(GetData(i, gvwNonExchangePURPOSE.Index));
//          sTradeRef     := IsNull(GetData(i, gvwNonExchangeTRADE_REF.Index));
//          sSettleReason := IsNull(GetData(i, gvwNonExchangeSETTLE_REASON.Index));
//        end
//        else
//        begin
//          sPurpose      := '';
//          sTradeRef     := '';
//          sSettleReason := '';
//        end;
//
//        if sSettleReason = 'OWNE' then
//          sIDRCur := '|'
//        else
//          sIDRCur := IsNull(GetData(i, gvwNonExchangeCCYCODE.Index)) +'|'+ FloatToStr(GetData(i, gvwNonExchangeAMOUNT.Index));
//
//        sList := '';
//        sList := IsNull(GetData(i, gvwNonExchangeCUSTODY_EXTREF.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeINSTRUCTION_TYPE_CODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeBROKERCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeBROKERMAINACCOUNT.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeparticipantAccountCash.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeCUSTODIANCODE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeSTOCKCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwNonExchangeQTY.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwNonExchangeTRDDATE.Index)) +'|'+
//                 IsNull(GetData(i, gvwNonExchangeCCYCODE.Index)) +'|'+
//                 FloatToStr(GetData(i, gvwNonExchangeAMOUNT.Index)) +'|'+
//                 FormatDateTime('yyyymmdd', GetData(i, gvwNonExchangeSETTLEDDATE.Index)) +'|'+
//                 sPurpose +'|'+
//                 sTradeRef +'|'+
//                 sSettleReason +'|'+
//                 IsNull(GetData(i, gvwNonExchangeREMARKS.Index)) +'|'+
//                 'LOCAL';
//
//        oCBestList.Add(sList);
//      end;
//    end;

//    cdsGenerateOTCTXT.Close;
//    cdsGenerateOTCTXT.Params[0].AsInteger := cdsStockSettlementVoucherList.AsInteger;
//    cdsGenerateOTCTXT.Open;

    if not cdsGenerateOTCTXT.IsEmpty then
    begin
      cdsGenerateOTCTXT.First;
      while not cdsGenerateOTCTXT.Eof do
      begin
        oCBestList.Add(cdsGenerateOTCTXTDATA.AsString);

        cdsGenerateOTCTXT.Next;
      end;
    end
    else
      MessageError('There is no data can be generated');

    iNoFile     := 0;
    if oCBestList.Count > 0 then
      dmGlobal.IntDataCBest.GenerateRD(sFileName, oCBestList, '1');

    FreeAndNil(oCBestList);
    MessageDlg('Generate FOP/VP has done', mtInformation, [mbYes], 0);

    if FileExists(sFileName) then
//      ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfrmStockSettlementVoucherList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsStockSettlementVoucherList.Close;
  cdsStockSettlementVoucherList.Params[0].AsString := chkOpen.EditValue+','+chkPosted.EditValue+','+
                                                      chkReversed.EditValue+','+chkCanceled.EditValue;
  cdsStockSettlementVoucherList.Params[1].AsString := cmbSettleType.EditValue;
  cdsStockSettlementVoucherList.Params[2].AsDate   := VarToDateTime(dtValueDate.EditValue);
  cdsStockSettlementVoucherList.Open;
end;

procedure TfrmStockSettlementVoucherList.actReverseExecute(Sender: TObject);
var
  i, x, v: Integer;
  iSSID: Int64;
  sTmpMsg,
  sMsg,
  sErrMsg: string;
begin
  inherited;
  x := 0;
  v := 0;

  sTmpMsg := '';
  sErrMsg := '';
  for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
  begin
    iSSID := StrToInt64Def(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterSSID.Index], 0);

    if dmGlobal.RemoteServer.StockSettleVoucherReverse(iSSID, sMsg) then
      Inc(v)
    else
    begin
      Inc(x);

      if sMsg <> sTmpMsg then
        sErrMsg := sErrMsg + sMsg + #13;
      sTmpMsg := sMsg;
    end;
  end;

  if x > 0 then
    sMsg := IntToStr(v)+' Reversed and '+IntToStr(x)+' Fail to reverse'+#13+'Fail Message : '+#13+sErrMsg
  else
    sMsg := IntToStr(v)+' Reversed and '+IntToStr(x)+' Fail to reverse';
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  cdsStockSettlementVoucherList.Refresh;
end;

procedure TfrmStockSettlementVoucherList.actReverseUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsStockSettlementVoucherListSTAT.AsString = 'S';
end;

procedure TfrmStockSettlementVoucherList.actSettleExecute(Sender: TObject);
var
  i, x, v: Integer;
  iSSID: Int64;
  sTmpMsg,
  sMsg,
  sErrMsg: string;
  oForm: TfrmStockSettleVoucherProcess;
  iAccID,
  iStockID: Integer;
begin
  inherited;
  x := 0;
  v := 0;

  sTmpMsg := '';
  sErrMsg := '';

  if gvwMaster.Controller.SelectedRecordCount = 1 then
  begin
    iAccID   := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterACCID.Index], 0);
    iSSID    := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterSSID.Index], 0);
    iStockID := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterSTOCKID.Index], 0);

    if frmStockSettleVoucherProcess.EditVoucher(True, iSSID, iAccID, iStockID) then
      cdsStockSettlementVoucherList.Refresh;
  end
  else
  begin
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      iSSID := StrToInt64Def(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterSSID.Index], 0);

      if dmGlobal.RemoteServer.StockSettleVoucherPosting(iSSID, sMsg) then
        Inc(v)
      else
      begin
        Inc(x);

        if sMsg <> sTmpMsg then
          sErrMsg := sErrMsg + sMsg + #13;
        sTmpMsg := sMsg;
      end;
    end;
  end;

  if x > 0 then
    sMsg := IntToStr(v)+' Settled and '+IntToStr(x)+' Fail to settle'+#13+'Fail Message : '+#13+sErrMsg
  else
    sMsg := IntToStr(v)+' Settled and '+IntToStr(x)+' Fail to settle';
  MessageDlg(sMsg, mtInformation, [mbOk], 0);

  cdsStockSettlementVoucherList.Refresh;
end;

procedure TfrmStockSettlementVoucherList.actSettleUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := cdsStockSettlementVoucherListSTAT.AsString = 'O';
end;

procedure TfrmStockSettlementVoucherList.actSettleVouecherPostByDateExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageQuestion('Posting All Stock Settlement Voucher By Date ?') then
  begin
    dmGlobal.RemoteServer.StockSettlementPostByDate(VarToDateTime(dtValueDate.EditValue), sMsg);
    MessageDlg(sMsg, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmStockSettlementVoucherList.actViewDetailExecute(Sender: TObject);
var
  iAccID,
  iSSID,
  iStockID: Integer;
begin
//  inherited;
  iAccID   := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterACCID.Index], 0);
  iSSID    := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterSSID.Index], 0);
  iStockID := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterSTOCKID.Index], 0);

  if frmStockSettleVoucherProcess.ViewVoucher(True, iSSID, iAccID, iStockID) then
    cdsStockSettlementVoucherList.Refresh;
end;

procedure TfrmStockSettlementVoucherList.actViewTransactionExecute(
  Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsStockSettlementVoucherListVALUEDATE.AsDateTime;
    iLedgerTransID := -1;
    iStockTransID  := cdsStockSettlementVoucherListSTOCKTRANSID.AsLargeInt;
    iFundTransID   := -1;

    oForm := TfrmViewTransaction.Create(nil);

    TfrmViewTransaction(oForm).conDate       := dtConDate;
    TfrmViewTransaction(oForm).ledgerTransID := iLedgerTransID;
    TfrmViewTransaction(oForm).stockTransID  := iStockTransID;
    TfrmViewTransaction(oForm).fundTransID   := iFundTransID;

    oForm.ShowModal;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmStockSettlementVoucherList.cdsStockSettlementVoucherListCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsStockSettlementVoucherListDIFF_AMOUNT.AsFloat := Abs(cdsStockSettlementVoucherListAMOUNT.AsFloat)
    - Abs(cdsStockSettlementVoucherListORIG_AMOUNT.AsFloat);
end;

procedure TfrmStockSettlementVoucherList.FormShow(Sender: TObject);
begin
  inherited;
  cmbSettleType.EditValue := 'D';
  dtValueDate.EditValue   := dmGlobal.RemoteServer.GetTransDate;

  chkOpen.EditValue       :='O';
  chkPosted.EditValue     :='-';
  chkReversed.EditValue   :='-';
  chkCanceled.EditValue   :='-';
end;

end.
