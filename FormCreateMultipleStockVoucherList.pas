unit FormCreateMultipleStockVoucherList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxContainer,
  dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  dxLayoutContainer, cxTextEdit, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, Vcl.ActnList, NDatasetAction, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox, cxCheckBox, cxCurrencyEdit, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons;

type
  TfrmCreateMultipleStockVoucherList = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cdsSIStockList: TNClientDataset;
    cdsSIStockListSIID: TLargeintField;
    cdsSIStockListSINO: TStringField;
    cdsSIStockListENTRYDATE: TDateField;
    cdsSIStockListVALUEDATE: TDateField;
    cdsSIStockListSITYPE: TStringField;
    cdsSIStockListSIDE_ACC: TStringField;
    cdsSIStockListCLIENT_ACCSIDE: TLargeintField;
    cdsSIStockListCASH_STOCK: TStringField;
    cdsSIStockListSETTLE_SIDE: TStringField;
    cdsSIStockListINSTRUCTION_TYPE: TStringField;
    cdsSIStockListNETTYPE: TStringField;
    cdsSIStockListACCOUNT_SID: TStringField;
    cdsSIStockListACCID: TLargeintField;
    cdsSIStockListACCNO: TStringField;
    cdsSIStockListACCNAME: TStringField;
    cdsSIStockListTRANSFER_MODE: TStringField;
    cdsSIStockListBASE_CCYCODE: TStringField;
    cdsSIStockListBASE_NETAMT: TFloatField;
    cdsSIStockListBANK_CHARGES: TFloatField;
    cdsSIStockListSETTLE_CCYCODE: TStringField;
    cdsSIStockListSETTLE_EXRATE: TFloatField;
    cdsSIStockListSETTLE_NETAMT: TFloatField;
    cdsSIStockListSETTLED_AMT: TFloatField;
    cdsSIStockListSTOCKID: TIntegerField;
    cdsSIStockListSTOCKCODE: TStringField;
    cdsSIStockListPRICE: TFloatField;
    cdsSIStockListQTY: TFloatField;
    cdsSIStockListTRDDATE: TDateField;
    cdsSIStockListDUEDATE: TDateField;
    cdsSIStockListSETTLEDDATE: TDateField;
    cdsSIStockListMOVEDUEDATE: TDateField;
    cdsSIStockListSI_DESC: TStringField;
    cdsSIStockListSTAT: TStringField;
    cdsSIStockListOLD_SIID: TLargeintField;
    cdsSIStockListVOUCHERAMT: TFloatField;
    cdsSIStockListVOUCHERQTY: TFloatField;
    cdsSIStockListNO_INTRC: TStringField;
    cdsSIStockListKSEI_RECON: TStringField;
    cdsSIStockListSETTLED_QTY: TFloatField;
    cdsSIStockListTRF_PRVT_BANK: TStringField;
    cdsSIStockListACCSOPID: TLargeintField;
    cdsSIStockListUSE_ACS: TStringField;
    cdsSIStockListCP_ACCBANKID: TIntegerField;
    cdsSIStockListCP_BANKCODE: TStringField;
    cdsSIStockListCP_BANKACCNO: TStringField;
    cdsSIStockListSOURCE_ACCBANKID: TLargeintField;
    cdsSIStockListSOURCE_ACCBANKCODE: TStringField;
    cdsSIStockListSOURCE_ACCBANKNO: TStringField;
    cdsSIStockListSOURCE_ACCBANKNAME: TStringField;
    cdsSIStockListTARGET_ACCBANKID: TLargeintField;
    cdsSIStockListTARGET_ACCBANKCODE: TStringField;
    cdsSIStockListTARGET_ACCBANKNO: TStringField;
    cdsSIStockListTARGET_ACCBANKNAME: TStringField;
    cdsSIStockListCONFIRM_BY: TStringField;
    cdsSIStockListCREATE_FILE: TStringField;
    cdsSIStockListCOUNT_CREATE_FILE: TIntegerField;
    cdsSIStockListCBEST_UPLOAD: TStringField;
    cdsSIStockListPURPOSE: TStringField;
    cdsSIStockListTRADE_REF: TStringField;
    cdsSIStockListSETTLE_REASON: TStringField;
    cdsSIStockListREMARKS: TStringField;
    cdsSIStockListSIID_NEW: TLargeintField;
    cdsSIStockListBANKACCBRANCH: TStringField;
    cdsSIStockListACCBANKID: TIntegerField;
    cdsSIStockListCP_BANKACCNAME: TStringField;
    cdsSIStockListBANKCODE: TStringField;
    cdsSIStockListBANKACCNO: TStringField;
    cdsSIStockListBANKACCNAME: TStringField;
    cdsSIStockListCP_BANKACCBRANCH: TStringField;
    cdsSIStockListCMOVE_SETTLE: TStringField;
    cdsSIStockListSMOVE_SETTLE: TStringField;
    cdsSIStockListCUSTODY_INSTR: TLargeintField;
    cdsSIStockListCASH_SIID: TLargeintField;
    cdsSIStockListLINKID: TLargeintField;
    cdsSIStockListLINKSEQID: TIntegerField;
    cdsSIStockListLINKNO: TStringField;
    cdsSIStockListLINKTYPE: TStringField;
    cdsSIStockListAUTO_WDR: TStringField;
    cdsSIStockListMODDA: TDateTimeField;
    cdsSIStockListMODUI: TStringField;
    cdsSIStockListAPPDA: TDateTimeField;
    cdsSIStockListAPPUI: TStringField;
    cdsSIStockListUNDER4Y: TIntegerField;
    cdsSIStockListUNDER4YDA: TDateTimeField;
    cdsSIStockListNOTES4Y: TStringField;
    cdsSIStockListISDEL: TIntegerField;
    cdsSIStockListID: TLargeintField;
    cdsSIStockListVOUCHERDATE: TDateField;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterSITYPE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterPRICE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterSI_DESC: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    actCreateVoucher: TNAction;
    CreateVoucher1: TMenuItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cdsSIStockListSTOCKNAME: TStringField;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSIDE_ACC: TcxGridDBBandedColumn;
    gvwMasterCLIENT_ACCSIDE: TcxGridDBBandedColumn;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwMasterNETTYPE: TcxGridDBBandedColumn;
    gvwMasterACCOUNT_SID: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterBANK_CHARGES: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_AMT: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLEDDATE: TcxGridDBBandedColumn;
    gvwMasterMOVEDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterOLD_SIID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERAMT: TcxGridDBBandedColumn;
    gvwMasterVOUCHERQTY: TcxGridDBBandedColumn;
    gvwMasterNO_INTRC: TcxGridDBBandedColumn;
    gvwMasterKSEI_RECON: TcxGridDBBandedColumn;
    gvwMasterSETTLED_QTY: TcxGridDBBandedColumn;
    gvwMasterTRF_PRVT_BANK: TcxGridDBBandedColumn;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    gvwMasterUSE_ACS: TcxGridDBBandedColumn;
    gvwMasterCP_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterCP_BANKCODE: TcxGridDBBandedColumn;
    gvwMasterCP_BANKACCNO: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNAME: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKID: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNAME: TcxGridDBBandedColumn;
    gvwMasterCONFIRM_BY: TcxGridDBBandedColumn;
    gvwMasterCREATE_FILE: TcxGridDBBandedColumn;
    gvwMasterCOUNT_CREATE_FILE: TcxGridDBBandedColumn;
    gvwMasterCBEST_UPLOAD: TcxGridDBBandedColumn;
    gvwMasterPURPOSE: TcxGridDBBandedColumn;
    gvwMasterTRADE_REF: TcxGridDBBandedColumn;
    gvwMasterSETTLE_REASON: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    gvwMasterSIID_NEW: TcxGridDBBandedColumn;
    gvwMasterBANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterACCBANKID: TcxGridDBBandedColumn;
    gvwMasterCP_BANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterBANKCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    gvwMasterCP_BANKACCBRANCH: TcxGridDBBandedColumn;
    gvwMasterCMOVE_SETTLE: TcxGridDBBandedColumn;
    gvwMasterSMOVE_SETTLE: TcxGridDBBandedColumn;
    gvwMasterCUSTODY_INSTR: TcxGridDBBandedColumn;
    gvwMasterCASH_SIID: TcxGridDBBandedColumn;
    gvwMasterLINKID: TcxGridDBBandedColumn;
    gvwMasterLINKSEQID: TcxGridDBBandedColumn;
    gvwMasterLINKNO: TcxGridDBBandedColumn;
    gvwMasterLINKTYPE: TcxGridDBBandedColumn;
    gvwMasterAUTO_WDR: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERDATE: TcxGridDBBandedColumn;
    gvwMasterSTOCKNAME: TcxGridDBBandedColumn;
    cdsSIStockListCHK: TBooleanField;
    gvwMasterCHK: TcxGridDBBandedColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    txtDeliver: TcxCurrencyEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    txtReceive: TcxCurrencyEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    actNext: TNAction;
    cdsStockSplitSI: TNClientDataset;
    cdsStockSplitSISIID: TLargeintField;
    cdsStockSplitSIQTY: TFloatField;
    cdsStockSplitSISPLITID: TLargeintField;
    procedure FormShow(Sender: TObject);
    procedure actCreateVoucherExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gvwMasterCHKPropertiesChange(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
  private
    { Private declarations }
    FACCID : integer;
    FSTOCKID : integer;
    FDueDate: TDateTime;
    FAvgAmt: Double;
    FSIID: string;
  public
    { Public declarations }
    property ACCID: integer read FACCID write FACCID;
    property STOCKID: integer read FSTOCKID write FSTOCKID;
    property DueDate: TDateTime read FDueDate write FDueDate;
    property AvgAmt: Double read FAvgAmt write FAvgAmt;
  end;

var
  frmCreateMultipleStockVoucherList: TfrmCreateMultipleStockVoucherList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormCreateMultipleStockVoucher,
  FormMulitpleStockSplit;

procedure TfrmCreateMultipleStockVoucherList.actCreateVoucherExecute(
  Sender: TObject);
var
  oForm : TfrmCreateMultipleStockVoucher;
begin
  //inherited;
  oForm := TfrmCreateMultipleStockVoucher.Create(nil);
  TfrmCreateMultipleStockVoucher(oForm).SIID := cdsSIStockListSIID.asInteger;
  oForm.ShowModal;
  FreeAndNil(oForm);
end;

procedure TfrmCreateMultipleStockVoucherList.actNextExecute(Sender: TObject);
var
  oForm: TfrmMultipeStockSplit;
  sMsg: string;
  iSplitID: Int64;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount = 0 then
    MessageDlg('There is no data dan be multiple split, '+#13+
               'please select one or more data for be splited', mtInformation, [mbOk], 0)
  else
  begin
    oForm := TfrmMultipeStockSplit.Create(nil);

    with TfrmMultipeStockSplit(oForm) do
    begin
//      dmGlobal.RemoteServer.EmptyTable('main.B_SPLIT_STOCK_H', sMsg);
//      dmGlobal.RemoteServer.EmptyTable('main.B_SPLIT_STOCK_D', sMsg);
//      dmGlobal.RemoteServer.EmptyTable('main.B_SPLIT_STOCK_SI', sMsg);

      cdsStockSplitH.Close;
      cdsStockSplitH.Open;

      cdsStockSplitD.Close;
      cdsStockSplitD.Params[0].AsInteger := -1;
      cdsStockSplitD.Open;

      cdsStockSplitSI.Close;
      cdsStockSplitSI.Open;

      iSplitID := dmGlobal.RemoteServer.GetSeq('TBL_H_SPLIT_STOCK_H');

      cdsStockSplitH.Append;
      cdsStockSplitHSPLITID.AsLargeInt  := iSplitID;
      cdsStockSplitHDUEDATE.AsDateTime  := FDueDate;
      cdsStockSplitHACCID.AsInteger     := cdsSIStockListACCID.AsInteger;
      cdsStockSplitHACCNO.AsString      := cdsSIStockListACCNO.AsString;
      cdsStockSplitHACCNAME.AsString    := cdsSIStockListACCNAME.AsString;
      cdsStockSplitHSTOCKID.AsInteger   := cdsSIStockListSTOCKID.AsInteger;
      cdsStockSplitHSTOCKCODE.AsString  := cdsSIStockListSTOCKCODE.AsString;
      cdsStockSplitHSTOCKNAME.AsString  := cdsSIStockListSTOCKNAME.AsString;
      cdsStockSplitHRECEIVE.AsFloat     := txtReceive.EditValue;
      cdsStockSplitHDELIVER.AsFloat     := txtDeliver.EditValue;
      cdsStockSplitH.Post;

      while not cdsSIStockList.Eof do
      begin
        if cdsSIStockListCHK.AsVariant = True then
        begin
          cdsStockSplitSI.Append;
          cdsStockSplitSISPLITID.AsInteger := cdsStockSplitHSPLITID.AsInteger;
          cdsStockSplitSISIID.AsInteger    := cdsSIStockListSIID.AsInteger;
          cdsStockSplitSIQTY.AsFloat       := cdsSIStockListQTY.AsFloat;
          cdsStockSplitSI.Post;
        end;

        cdsSIStockList.Next;
      end;
    end;

    if oForm.ShowModal = mrOk then
    begin
      TfrmMultipeStockSplit(oForm).cdsStockSplitH.ApplyUpdates(-1);
      TfrmMultipeStockSplit(oForm).cdsStockSplitD.ApplyUpdates(-1);
      cdsStockSplitSI.ApplyUpdates(-1);

      dmGlobal.RemoteServer.CreateSplitStockVoucher(iSplitID, sMsg);
      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end;

    FreeAndNil(oForm);
    self.ModalResult := mrOk;
  end;
end;

procedure TfrmCreateMultipleStockVoucherList.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure TfrmCreateMultipleStockVoucherList.FormDestroy(Sender: TObject);
begin
//  inherited;

end;

procedure TfrmCreateMultipleStockVoucherList.FormShow(Sender: TObject);
begin
  inherited;

  cdsSIStockList.Close;
  cdsSIStockList.Params[0].AsInteger := FACCID;
  cdsSIStockList.Params[1].AsInteger := FSTOCKID;
  cdsSIStockList.Params[2].AsDate    := FDueDate;
  cdsSIStockList.Open;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuInstrument.Active then
      cdsLuInstrument.Open;
  end;

  txtDeliver.EditValue := 0;
  txtReceive.EditValue := 0;

  FSIID := '';
end;

procedure TfrmCreateMultipleStockVoucherList.gvwMasterCHKPropertiesChange(
  Sender: TObject);
var
  fDeliver,
  fReceive: Double;
begin
  inherited;
  cdsSIStockList.Post;

  fDeliver := txtDeliver.EditValue;
  fReceive := txtReceive.EditValue;

  if cdsSIStockListCHK.AsBoolean = True then
  begin
    if cdsSIStockListSETTLE_SIDE.AsString = 'R' then
      fReceive := fReceive + cdsSIStockListQTY.AsFloat
    else
      fDeliver := fDeliver + cdsSIStockListQTY.AsFloat;
  end
  else
  begin
    if cdsSIStockListSETTLE_SIDE.AsString = 'R' then
      fReceive := fReceive - cdsSIStockListQTY.AsFloat
    else
      fDeliver := fDeliver - cdsSIStockListQTY.AsFloat;
  end;

  txtDeliver.EditValue := fDeliver;
  txtReceive.EditValue := fReceive;

  FSIID := FSIID + cdsSIStockListSIID.AsString + ',';
end;

end.
