unit FormOmgeoMonitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, Vcl.Menus, dxPSCore, dxPScxCommon, dxBar, cxClasses,
  cxPropertiesStore, Vcl.ImgList, cxStyles, Vcl.ActnList, NDatasetAction,
  Data.DB, NActionPermission, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, Datasnap.DBClient,
  NClientDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  dxLayoutContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, dxLayoutControl, System.DateUtils,
  System.ImageList, System.Actions, dxDateRanges, dxScrollbarAnnotations,
  NDatasetContainer;

type
  TfrmOmgeoMonitor = class(TfrmBasic)
    dsBrowseMaster: TDataSource;
    aclEditor: TActionList;
    saBrowse: TcxStyleRepository;
    BlueToggle: TcxStyle;
    imlBrowse: TImageList;
    PropStore: TcxPropertiesStore;
    PrintComp: TdxComponentPrinter;
    PrintCompMainGrid: TdxGridReportLink;
    popMaster: TPopupMenu;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    dtTransFrom: TcxDateEdit;
    cxButton4: TcxButton;
    dtTransTo: TcxDateEdit;
    lblPendingAllocation: TcxLabel;
    lblLastUpdate: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    LayoutlblPendingAllocation: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    actViewData: TNAction;
    actGenerateBlock: TNAction;
    actGenerateContract: TNAction;
    cdsOMGDealTicketList: TNClientDataset;
    cdsOMGDealTicketListDEALTICKETID: TLargeintField;
    cdsOMGDealTicketListDEALTICKETCODE: TStringField;
    cdsOMGDealTicketListDEALTICKETDATE: TDateField;
    cdsOMGDealTicketListACCID: TIntegerField;
    cdsOMGDealTicketListACCNO: TStringField;
    cdsOMGDealTicketListACCNAME: TStringField;
    cdsOMGDealTicketListSTOCKID: TLargeintField;
    cdsOMGDealTicketListSTOCKCODE: TStringField;
    cdsOMGDealTicketListSTOCKNAME: TStringField;
    cdsOMGDealTicketListACCSOPID: TLargeintField;
    cdsOMGDealTicketListCALC_METHOD: TStringField;
    cdsOMGDealTicketListCOMM_RATE: TFloatField;
    cdsOMGDealTicketListBS: TStringField;
    cdsOMGDealTicketListMARKETCODE: TStringField;
    cdsOMGDealTicketListCCYCODE: TStringField;
    cdsOMGDealTicketListSETTLE_CCYCODE: TStringField;
    cdsOMGDealTicketListCHANNELCODE: TStringField;
    cdsOMGDealTicketListOMNIBUSTRADE: TStringField;
    cdsOMGDealTicketListDEALQTY: TLargeintField;
    cdsOMGDealTicketListDEALPRICE: TFloatField;
    cdsOMGDealTicketListDEALVALUE: TFloatField;
    cdsOMGDealTicketListALLOCQTY: TLargeintField;
    cdsOMGDealTicketListROUNDPRICE: TFloatField;
    cdsOMGDealTicketListROUNDVALUE: TFloatField;
    cdsOMGDealTicketListDIFFVALUE: TFloatField;
    cdsOMGDealTicketListDCCYAMT: TFloatField;
    cdsOMGDealTicketListSALESID: TLargeintField;
    cdsOMGDealTicketListDEALERID: TLargeintField;
    cdsOMGDealTicketListDUESTOCK: TIntegerField;
    cdsOMGDealTicketListDUECASH: TIntegerField;
    cdsOMGDealTicketListPOSTED: TStringField;
    cdsOMGDealTicketListDAYTRADE: TStringField;
    cdsOMGDealTicketListCONID: TLargeintField;
    cdsOMGDealTicketListCNNO: TStringField;
    cdsOMGDealTicketListCXLD: TStringField;
    cdsOMGDealTicketListRVSD: TStringField;
    cdsOMGDealTicketListRVSD_DTID: TIntegerField;
    cdsOMGDealTicketListRVSDDATE: TDateTimeField;
    cdsOMGDealTicketListRVS: TStringField;
    cdsOMGDealTicketListRVS_STS: TStringField;
    cdsOMGDealTicketListCDUEDATE: TDateField;
    cdsOMGDealTicketListSDUEDATE: TDateField;
    cdsOMGDealTicketListSTATUS: TStringField;
    cdsOMGDealTicketListOLD_DEALTICKETID: TLargeintField;
    cdsOMGDealTicketListEXTERNALID: TStringField;
    cdsOMGDealTicketListSALES_BRANCHID: TLargeintField;
    cdsOMGDealTicketListSTAT: TStringField;
    cdsOMGDealTicketListISOMG: TStringField;
    cdsOMGDealTicketListMODDA: TDateTimeField;
    cdsOMGDealTicketListMODUI: TStringField;
    cdsOMGDealTicketListAPPDA: TDateTimeField;
    cdsOMGDealTicketListAPPUI: TStringField;
    cdsOMGDealTicketListISDEL: TIntegerField;
    cdsOMGDealTicketListID: TLargeintField;
    cdsOMGDealTicketListENTTID: TIntegerField;
    cdsOMGDealTicketListENTTCODE: TStringField;
    cdsOMGDealTicketListENTNAME: TStringField;
    cdsOMGDealTicketListAUTO_ALLOC: TStringField;
    cdsOMGDealTicketListTC_BASE: TStringField;
    cdsOMGDealTicketListACCINIT: TStringField;
    cdsOMGDealTicketListSOP_MEMBER: TStringField;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    gvwMasterDEALTICKETCODE: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    gvwMasterBS: TcxGridDBBandedColumn;
    gvwMasterMARKETCODE: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    gvwMasterCHANNELCODE: TcxGridDBBandedColumn;
    gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwMasterDEALQTY: TcxGridDBBandedColumn;
    gvwMasterDEALPRICE: TcxGridDBBandedColumn;
    gvwMasterDEALVALUE: TcxGridDBBandedColumn;
    gvwMasterALLOCQTY: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterDEALERID: TcxGridDBBandedColumn;
    gvwMasterDUESTOCK: TcxGridDBBandedColumn;
    gvwMasterDUECASH: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterDEALTICKETDATE: TcxGridDBBandedColumn;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterAUTO_ALLOC: TcxGridDBBandedColumn;
    gvwMasterROUNDPRICE: TcxGridDBBandedColumn;
    gvwMasterROUNDVALUE: TcxGridDBBandedColumn;
    gvwMasterDIFFVALUE: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterSOP_MEMBER: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    cdsOMGDealTicketListBLOCKVER: TIntegerField;
    cdsOMGDealTicketListCONTRACTVER: TIntegerField;
    cdsOMGDealTicketListPROCSTATUS: TStringField;
    cdsOMGDealTicketListOMGSTATUS: TStringField;
    cdsOMGDealTicketListREMARKS: TStringField;
    gvwMasterBLOCKVER: TcxGridDBBandedColumn;
    gvwMasterCONTRACTVER: TcxGridDBBandedColumn;
    gvwMasterPROCSTATUS: TcxGridDBBandedColumn;
    gvwMasterOMGSTATUS: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    cdsOMGDealTicketD: TNClientDataset;
    dsOMGDealTicketD: TDataSource;
    cdsOMGDealTicketDDEALTICKETID: TLargeintField;
    cdsOMGDealTicketDACCID: TIntegerField;
    cdsOMGDealTicketDACCCODE: TStringField;
    cdsOMGDealTicketDACCNAME: TStringField;
    cdsOMGDealTicketDAQTY: TLargeintField;
    cdsOMGDealTicketDAPRICE: TFloatField;
    cdsOMGDealTicketDAVALUE: TFloatField;
    cdsOMGDealTicketDCOMM_CODE: TStringField;
    cdsOMGDealTicketDCOMM_RATE: TFloatField;
    grdMasterLevel2: TcxGridLevel;
    gvwDetail: TcxGridDBBandedTableView;
    gvwDetailDEALTICKETID: TcxGridDBBandedColumn;
    gvwDetailACCID: TcxGridDBBandedColumn;
    gvwDetailACCCODE: TcxGridDBBandedColumn;
    gvwDetailACCNAME: TcxGridDBBandedColumn;
    gvwDetailAQTY: TcxGridDBBandedColumn;
    gvwDetailAPRICE: TcxGridDBBandedColumn;
    gvwDetailAVALUE: TcxGridDBBandedColumn;
    gvwDetailCOMM_CODE: TcxGridDBBandedColumn;
    gvwDetailCOMM_RATE: TcxGridDBBandedColumn;
    actCustomizeColumn: TNAction;
    CustomizeColumn1: TMenuItem;
    cdsOMGDealTicketListAllocStat: TStringField;
    gvwMasterAllocStat: TcxGridDBBandedColumn;
    actGenerateBlockSelected: TNAction;
    actGenerateContractSelected: TNAction;
    gvwMasterDEALTICKETID: TcxGridDBBandedColumn;
    GenerateBlockSelected1: TMenuItem;
    GenerateContractSelected1: TMenuItem;
    N1: TMenuItem;
    actSplitDealTicket: TNAction;
    cdsQtySplit: TClientDataSet;
    cdsQtySplitQty: TFloatField;
    actSplitDealTicket1: TMenuItem;
    N2: TMenuItem;
    actEditAmountContract: TNAction;
    EditAmountContract1: TMenuItem;
    N3: TMenuItem;
    cdsOMGDealTicketListFOREIGN_ALLOCAMT: TFloatField;
    gvwMasterFOREIGN_ALLOCAMT: TcxGridDBBandedColumn;
    cdsTradeConfirmDataTmp: TClientDataSet;
    cdsTradeConfirmData: TNClientDataset;
    cdsTradeConfirmDataCONID: TLargeintField;
    cdsTradeConfirmDataCONCODE: TStringField;
    cdsTradeConfirmDataCONDATE: TDateField;
    cdsTradeConfirmDataDEALTICKETID: TLargeintField;
    cdsTradeConfirmDataDEALTICKETCODE: TStringField;
    cdsTradeConfirmDataACCNO: TStringField;
    cdsTradeConfirmDataACCNAME: TStringField;
    cdsTradeConfirmDataCOMM_RATE: TFloatField;
    cdsTradeConfirmDataSTOCKCODE: TStringField;
    cdsTradeConfirmDataBS: TStringField;
    cdsTradeConfirmDataQTY: TFloatField;
    cdsTradeConfirmDataPRICE: TFloatField;
    cdsTradeConfirmDataAMOUNT: TFloatField;
    cdsTradeConfirmDataBROKERFEE: TFloatField;
    cdsTradeConfirmDataLEVY: TFloatField;
    cdsTradeConfirmDataVAT_LEVY: TFloatField;
    cdsTradeConfirmDataKPEI: TFloatField;
    cdsTradeConfirmDataVAT: TFloatField;
    cdsTradeConfirmDataSALES_TAX: TFloatField;
    cdsTradeConfirmDataWHT: TFloatField;
    cdsTradeConfirmDataNET_AMOUNT: TFloatField;
    cdsTradeConfirmDataDT_STAT: TStringField;
    cdsTradeConfirmDataCONSTS: TStringField;
    cdsTradeConfirmDataTmpDescription: TStringField;
    cdsTradeConfirmDataTmpLastValue: TFloatField;
    cdsTradeConfirmDataTmpNewValue: TFloatField;
    dsTradeConfirmDataTmp: TDataSource;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterCALC_METHOD: TcxGridDBBandedColumn;
    gvwMasterCOMM_RATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterDCCYAMT: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterDAYTRADE: TcxGridDBBandedColumn;
    gvwMasterCONID: TcxGridDBBandedColumn;
    gvwMasterCNNO: TcxGridDBBandedColumn;
    gvwMasterCXLD: TcxGridDBBandedColumn;
    gvwMasterRVSD: TcxGridDBBandedColumn;
    gvwMasterRVSD_DTID: TcxGridDBBandedColumn;
    gvwMasterRVSDDATE: TcxGridDBBandedColumn;
    gvwMasterRVS: TcxGridDBBandedColumn;
    gvwMasterRVS_STS: TcxGridDBBandedColumn;
    gvwMasterCDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSDUEDATE: TcxGridDBBandedColumn;
    gvwMasterOLD_DEALTICKETID: TcxGridDBBandedColumn;
    gvwMasterEXTERNALID: TcxGridDBBandedColumn;
    gvwMasterSALES_BRANCHID: TcxGridDBBandedColumn;
    gvwMasterISOMG: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterTC_BASE: TcxGridDBBandedColumn;
    cdsAccExref: TNClientDataset;
    cdsAccExrefACCID: TIntegerField;
    cdsAccExrefEXTSYS_ID: TIntegerField;
    cdsAccExrefEXTREF_CODE: TStringField;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actGenerateBlockExecute(Sender: TObject);
    procedure actGenerateContractExecute(Sender: TObject);
    procedure actCustomizeColumnExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGenerateBlockSelectedExecute(Sender: TObject);
    procedure actGenerateContractSelectedExecute(Sender: TObject);
    procedure actSplitDealTicketExecute(Sender: TObject);
    procedure actEditAmountContractExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddingData;
  end;

var
  frmOmgeoMonitor: TfrmOmgeoMonitor;

implementation

{$R *.dfm}

uses DataGlobal, FormSplitDealtcketByQty, FormEditAmountOmgeoContract;

procedure TfrmOmgeoMonitor.actCustomizeColumnExecute(Sender: TObject);
begin
  inherited;
  gvwMaster.Controller.Customization := True;
end;

procedure TfrmOmgeoMonitor.actEditAmountContractExecute(Sender: TObject);
var
  iDealID: int64;
  cNetAmount: Double;
  sMsg: string;
  oForm: TfrmEditAmountOmgeoContract;
  sBS: string;
  fBrokerFee, fVAT, fLevy, fVAT_Levy,
  fKPEI, fSalesTax, fWHT, fNetAmount: Double;
begin
  inherited;
  try
    iDealID    := 0;
    cNetAmount := 0;

    AddingData;

    oForm := TfrmEditAmountOmgeoContract.Create(nil);
    with TfrmEditAmountOmgeoContract(oForm) do
    begin
      iDealID := cdsOMGDealTicketListDEALTICKETID.AsLargeInt;
      if cdsOMGDealTicketListBS.AsString = 'B' then sBS := 'Buy' else sBS := 'Sell';

      edDate.EditValue      := FormatDateTime('dd mmm yyyy', cdsOMGDealTicketListDEALTICKETDATE.AsDateTime);
      edDealID.EditValue    := cdsOMGDealTicketListDEALTICKETCODE.asstring;
      edAccNo.EditValue     := cdsOMGDealTicketListACCNO.AsString;
      edAccName.EditValue   := cdsOMGDealTicketListAccName.AsString;
      edStockCode.EditValue := cdsOMGDealTicketListSTOCKCODE.AsString;
      edStockName.EditValue := cdsOMGDealTicketListSTOCKNAME.AsString;
      edBS.EditValue        := sBS;
      edPrice.EditValue     := cdsOMGDealTicketListDEALPRICE.AsFloat;
      edQty.EditValue       := cdsOMGDealTicketListDEALQTY.AsFloat;

      if oForm.ShowModal = mrOk then
      begin
        cdsTradeConfirmDataTmp.First;
        fBrokerFee := cdsTradeConfirmDataTmpNewValue.AsFloat; cdsTradeConfirmDataTmp.Next;
        fLevy      := cdsTradeConfirmDataTmpNewValue.AsFloat; cdsTradeConfirmDataTmp.Next;
        fVAT_Levy  := cdsTradeConfirmDataTmpNewValue.AsFloat; cdsTradeConfirmDataTmp.Next;
        fKPEI      := cdsTradeConfirmDataTmpNewValue.AsFloat; cdsTradeConfirmDataTmp.Next;
        fVAT       := cdsTradeConfirmDataTmpNewValue.AsFloat; cdsTradeConfirmDataTmp.Next;
        fSalesTax  := cdsTradeConfirmDataTmpNewValue.AsFloat; cdsTradeConfirmDataTmp.Next;
        fWHT       := cdsTradeConfirmDataTmpNewValue.AsFloat; cdsTradeConfirmDataTmp.Next;
        fNetAmount := cdsTradeConfirmDataTmpNewValue.AsFloat;

        dmGlobal.RemoteServer.ContractEditAmount(iDealID, fBrokerFee, fVAT, fLevy, fVAT_Levy, fKPEI, fSalesTax, fWHT, fNetAmount, sMsg);

        MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);
      end;
    end;
  finally
    FreeAndNil(oForm);
  end;
end;

procedure TfrmOmgeoMonitor.actGenerateBlockExecute(Sender: TObject);
begin
  inherited;
  actViewData.Execute;
  cdsOMGDealTicketList.Filtered := True;
  cdsOMGDealTicketList.Filter := 'PROCSTATUS in ' + '('''', ''Pending New'',''Pending Amend'', ''Pending Cancel'')';

  if cdsOMGDealTicketList.IsEmpty then
  begin
    cdsOMGDealTicketList.Filtered := False;
    actViewData.Execute;
    ShowMessage('There isn''t data can be processed');
    Exit;
  end;

  cdsOMGDealTicketList.DisableControls;
  Try
    cdsOMGDealTicketList.First;
    while not cdsOMGDealTicketList.Eof do
    begin
      dmGlobal.RemoteServer.MTIProcess(cdsOMGDealTicketListDEALTICKETID.AsLargeInt, 1);//for import_eb_block

      cdsOMGDealTicketList.Next;
    end;
  Finally
    cdsOMGDealTicketList.Filtered := False;
    cdsOMGDealTicketList.EnableControls;
    actViewData.Execute;
  End;
end;

procedure TfrmOmgeoMonitor.actGenerateBlockSelectedExecute(Sender: TObject);
var
  iDealTicketID: int64;
  i, iFail:Integer;
  oDealTicketList: TStringList;
  sProcStat, sOmgStat: string;
  iAccID: Integer;
  sErrorMsg: string;
  bcon: Boolean;
  sAccNo: string;
  sAccName: string;
begin
  inherited;
  try
    sErrorMsg := '';
    bCon      := False;
    iFail     := 0;

    oDealTicketList := TStringList.Create;
    for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
    begin
      iDealTicketID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index];
      sProcStat     := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterPROCSTATUS.Index];
      iAccID        := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterACCID.Index];
      sAccNo        := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterACCNO.Index];
      sAccName      := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterACCNAME.Index];

      cdsAccExref.Close;
      cdsAccExref.Params[0].AsInteger := iAccID;
      cdsAccExref.Open;

      if not cdsAccExref.IsEmpty then
      begin
        cdsAccExref.First;
        if (cdsAccExrefEXTSYS_ID.AsInteger = 1) or (cdsAccExrefEXTSYS_ID.AsInteger = 5) then
          bCon := true
        else
        begin
          if sErrorMsg <> '' then
            sErrorMsg := sErrorMsg + #10#13;
          sErrorMsg := sErrorMsg + 'Account '+ sAccNo +' - '+ sAccName +' does not has Omgeo or Omgeo Fund Code';
        end;

        cdsAccExref.Next;
        if (bCon) and ((cdsAccExrefEXTSYS_ID.AsInteger = 1) or (cdsAccExrefEXTSYS_ID.AsInteger = 5)) then
          bCon := true
        else
          bCon := False;

        if bcon then
        begin
          if (sProcStat = 'Pending New') or (sProcStat = 'Pending Amend') or (sProcStat = 'Pending Cancel') then
            oDealTicketList.Add(IntToStr(iDealTicketID));
        end
        else
          iFail := iFail + 1;
      end;

      bCon := False;
    end;

    if iFail > 0 then
    begin
      if MessageQuestion(FormatFloat('#,##0', iFail) +' data can not continue process'+#10#13+sErrorMsg) then
        bCon := True;
    end
    else
      bCon := True;


    if oDealTicketList.Count = 0 then
    begin
      MessageError('There isn''t data can be processed');
    end
    else if bCon then
    begin
      for i := 0 to oDealTicketList.Count -1 do
        dmGlobal.RemoteServer.MTIProcess(StrToInt64(oDealTicketList.Strings[i]), 1);//for import_eb_block
      MessageDlg(FormatFloat('#,##0', oDealTicketList.Count)+ ' data has been proceed !', TMsgDlgType.mtInformation, [mbOk], 0);
    end;

  finally
    FreeAndNil(oDealTicketList);
    actViewData.Execute;
  end;
end;

procedure TfrmOmgeoMonitor.actGenerateContractExecute(Sender: TObject);
begin
  inherited;
  actViewData.Execute;
  cdsOMGDealTicketList.Filtered := True;
  cdsOMGDealTicketList.Filter := '(PROCSTATUS = ''Allocated'') And (OMGSTATUS = ''Confirmed'')';

  if cdsOMGDealTicketList.IsEmpty then
  begin
    cdsOMGDealTicketList.Filtered := False;
    actViewData.Execute;
    ShowMessage('There isn''t data can be processed');
    Exit;
  end;

  cdsOMGDealTicketList.DisableControls;
  Try
    cdsOMGDealTicketList.First;
    while not cdsOMGDealTicketList.Eof do
    begin
      dmGlobal.RemoteServer.MTIProcess(cdsOMGDealTicketListDEALTICKETID.AsLargeInt, 3);//for import_contract

      cdsOMGDealTicketList.Next;
    end;
  Finally
    cdsOMGDealTicketList.Filtered := False;
    cdsOMGDealTicketList.EnableControls;
    actViewData.Execute;
  End;
end;

procedure TfrmOmgeoMonitor.actGenerateContractSelectedExecute(Sender: TObject);
var
  iDealTicketID: int64;
  i:Integer;
  oDealTicketList: TStringList;
  sProcStat, sOmgStat: string;
  sMsg: string;
begin
  inherited;
  try
    oDealTicketList := TStringList.Create;
    for i := 0 to gvwMaster.Controller.SelectedRowCount -1 do
    begin
      if VarIsNull(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterOMGSTATUS.Index]) then
        MessageError('Can not procees generate contract, please generate block first !')
      else
      begin
        iDealTicketID := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterDEALTICKETID.Index];
        sProcStat     := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterPROCSTATUS.Index];
        sOmgStat      := gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterOMGSTATUS.Index];

        if (sProcStat = 'Allocated') and (sOmgStat = 'Confirmed') then
          oDealTicketList.Add(IntToStr(iDealTicketID));
      end;
    end;

    if oDealTicketList.Count = 0 then
    begin
      MessageError('There isn''t data can be processed');
      Exit;
    end;

    for i := 0 to oDealTicketList.Count -1 do
      dmGlobal.RemoteServer.MTIProcess(StrToInt64(oDealTicketList.Strings[i]), 3);//for import_eb_block

  finally
    FreeAndNil(oDealTicketList);
    actViewData.Execute;
  end;
end;

procedure TfrmOmgeoMonitor.actSplitDealTicketExecute(Sender: TObject);
var
  oForm: TfrmSplitDealticketByQty;
  sBS, sMsg, sQty: string;
begin
  inherited;
  try
    cdsQtySplit.Close;
    cdsQtySplit.CreateDataSet;

    oForm := TfrmSplitDealticketByQty.Create(nil);
    with TfrmSplitDealticketByQty(oForm) do
    begin
      if cdsOMGDealTicketListBS.AsString = 'S' then sBS := 'Sell' else sBS := 'Buy';

      edTransDate.EditValue := FormatDateTime('dd mmm yyyy', cdsOMGDealTicketListDEALTICKETDATE.AsDateTime);
      edDealCode.EditValue  := cdsOMGDealTicketListDEALTICKETCODE.AsString;
      edAccCode.EditValue   := cdsOMGDealTicketListACCNO.AsString;
      edAccName.EditValue   := cdsOMGDealTicketListACCNAME.AsString;
      edStockCode.EditValue := cdsOMGDealTicketListSTOCKCODE.AsString;
      edStockName.EditValue := cdsOMGDealTicketListSTOCKNAME.AsString;
      edBS.EditValue        := sBS;
      edPrice.EditValue     := cdsOMGDealTicketListDEALPRICE.AsFloat;
      edQty.EditValue       := cdsOMGDealTicketListDEALQTY.AsFloat;

      if oForm.ShowModal = mrOk then
      begin
        sQty := '';

        cdsQtySplit.First;
        while not cdsQtySplit.Eof do
        begin
          if sQty = '' then
            sQty := cdsQtySplitQty.AsString + ';'
          else
            sQty := sQty + ';' + cdsQtySplitQty.AsString;

          cdsQtySplit.Next;
        end;

        dmGlobal.RemoteServer.SplitDealTicketByQty(cdsOMGDealTicketListDEALTICKETID.AsLargeInt, sQty, sMsg);
        MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0);

        FreeAndNil(oForm);
      end;

    end;

  finally
    cdsQtySplit.Close;
  end;
end;

procedure TfrmOmgeoMonitor.actViewDataExecute(Sender: TObject);
begin
  inherited;
  if dtTransTo.Date < dtTransFrom.Date then
  begin
    MessageDlg('Range date is invalid',mtError,[mbOK],0);
    Exit;
  end;

  cdsOMGDealTicketList.Close;
  cdsOMGDealTicketList.Params[0].AsDate := DateOf(dtTransFrom.Date);
  cdsOMGDealTicketList.Params[1].AsDate := DateOf(dtTransTo.Date);
  cdsOMGDealTicketList.Params[2].AsString := dmGlobal.UserID;
  cdsOMGDealTicketList.Open;

  cdsOMGDealTicketD.Close;
  cdsOMGDealTicketD.Params[0].AsDate := DateOf(dtTransFrom.Date);
  cdsOMGDealTicketD.Params[1].AsDate := DateOf(dtTransTo.Date);
  cdsOMGDealTicketD.Open;

  gvwMaster.ApplyBestFit();

  lblLastUpdate.Caption := Format('Last Refresh Data : %s',[FormatDateTime('hh:nn:ss ampm', now)]);
end;

procedure TfrmOmgeoMonitor.AddingData;
begin
    cdsTradeConfirmData.Close;
    cdsTradeConfirmData.Params[0].AsInteger := cdsOMGDealTicketListDEALTICKETID.AsInteger;
    cdsTradeConfirmData.Open;

    cdsTradeConfirmDataTmp.Close;
    cdsTradeConfirmDataTmp.CreateDataSet;

    //Adding data Broker Fee
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'Broker Fee';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataBROKERFEE.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataBROKERFEE.AsFloat;
    cdsTradeConfirmDataTmp.Post;

    //Adding data Levy
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'Levy';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataLEVY.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataLEVY.AsFloat;
    cdsTradeConfirmDataTmp.Post;

    //Adding data VAT Levy
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'VAT Levy';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataVAT_LEVY.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataVAT_LEVY.AsFloat;
    cdsTradeConfirmDataTmp.Post;

    //Adding data KPEI
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'KPEI';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataKPEI.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataKPEI.AsFloat;
    cdsTradeConfirmDataTmp.Post;

    //Adding data VAT Comission
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'VAT Comission';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataVAT.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataVAT.AsFloat;
    cdsTradeConfirmDataTmp.Post;

    //Adding data Sales Tax
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'Sales Tax';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataSALES_TAX.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataSALES_TAX.AsFloat;
    cdsTradeConfirmDataTmp.Post;

    //Adding data WHT
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'WHT';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataWHT.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataWHT.AsFloat;
    cdsTradeConfirmDataTmp.Post;

    //Adding data Net Amount
    cdsTradeConfirmDataTmp.Append;
    cdsTradeConfirmDataTmpDescription.AsString := 'Net Amount';
    cdsTradeConfirmDataTmpLastValue.AsFloat    := cdsTradeConfirmDataNET_AMOUNT.AsFloat;
    cdsTradeConfirmDataTmpNewValue.AsFloat     := cdsTradeConfirmDataNET_AMOUNT.AsFloat;
    cdsTradeConfirmDataTmp.Post;
end;

procedure TfrmOmgeoMonitor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  gvwMaster.Controller.Customization := False;
end;

procedure TfrmOmgeoMonitor.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransFrom.Date := dmGlobal.RemoteServer.GetTransDate;
  dtTransTo.Date := dtTransFrom.Date;

  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmOmgeoMonitor);

end.

