unit FormSettleInstrList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, NReportClient, NDatasetContainer, dxBar,
  cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl;

type
  TfrmSettleInstrList = class(TfrmBrowseData)
    cdsSettlementInstructionList: TNClientDataset;
    cdsSettlementInstruction: TNClientDataset;
    cdsSettlementInstructionListSIID: TLargeintField;
    cdsSettlementInstructionListSINO: TStringField;
    cdsSettlementInstructionListVALUEDATE: TDateField;
    cdsSettlementInstructionListSITYPE: TStringField;
    cdsSettlementInstructionListCASH_STOCK: TStringField;
    cdsSettlementInstructionListSETTLE_SIDE: TStringField;
    cdsSettlementInstructionListINSTRUCTION_TYPE: TStringField;
    cdsSettlementInstructionListNETTYPE: TStringField;
    cdsSettlementInstructionListACCID: TLargeintField;
    cdsSettlementInstructionListACCNO: TStringField;
    cdsSettlementInstructionListACCNAME: TStringField;
    cdsSettlementInstructionListTRANSFER_MODE: TStringField;
    cdsSettlementInstructionListBASE_CCYCODE: TStringField;
    cdsSettlementInstructionListBASE_NETAMT: TFloatField;
    cdsSettlementInstructionListBANK_CHARGES: TFloatField;
    cdsSettlementInstructionListSETTLE_CCYCODE: TStringField;
    cdsSettlementInstructionListSETTLE_EXRATE: TFloatField;
    cdsSettlementInstructionListSETTLE_NETAMT: TFloatField;
    cdsSettlementInstructionListSETTLED_AMT: TFloatField;
    cdsSettlementInstructionListSTOCKID: TIntegerField;
    cdsSettlementInstructionListSTOCKCODE: TStringField;
    cdsSettlementInstructionListQTY: TFloatField;
    cdsSettlementInstructionListTRDDATE: TDateField;
    cdsSettlementInstructionListDUEDATE: TDateField;
    cdsSettlementInstructionListSETTLEDDATE: TDateField;
    cdsSettlementInstructionListSTAT: TStringField;
    cdsSettlementInstructionListOLD_SIID: TLargeintField;
    cdsSettlementInstructionListMODDA: TDateTimeField;
    cdsSettlementInstructionListMODUI: TStringField;
    cdsSettlementInstructionListAPPDA: TDateTimeField;
    cdsSettlementInstructionListAPPUI: TStringField;
    cdsSettlementInstructionListUNDER4Y: TIntegerField;
    cdsSettlementInstructionListUNDER4YDA: TDateTimeField;
    cdsSettlementInstructionListNOTES4Y: TStringField;
    cdsSettlementInstructionListISDEL: TIntegerField;
    cdsSettlementInstructionListID: TLargeintField;
    cdsSettlementInstructionListVOUCHERAMT: TFloatField;
    cdsSettlementInstructionListVOUCHERQTY: TFloatField;
    cdsSettlementInstructionSIID: TLargeintField;
    cdsSettlementInstructionSINO: TStringField;
    cdsSettlementInstructionVALUEDATE: TDateField;
    cdsSettlementInstructionSITYPE: TStringField;
    cdsSettlementInstructionCASH_STOCK: TStringField;
    cdsSettlementInstructionSETTLE_SIDE: TStringField;
    cdsSettlementInstructionINSTRUCTION_TYPE: TStringField;
    cdsSettlementInstructionNETTYPE: TStringField;
    cdsSettlementInstructionACCID: TLargeintField;
    cdsSettlementInstructionACCNO: TStringField;
    cdsSettlementInstructionACCNAME: TStringField;
    cdsSettlementInstructionTRANSFER_MODE: TStringField;
    cdsSettlementInstructionBASE_CCYCODE: TStringField;
    cdsSettlementInstructionBASE_NETAMT: TFloatField;
    cdsSettlementInstructionBANK_CHARGES: TFloatField;
    cdsSettlementInstructionSETTLE_CCYCODE: TStringField;
    cdsSettlementInstructionSETTLE_EXRATE: TFloatField;
    cdsSettlementInstructionSETTLE_NETAMT: TFloatField;
    cdsSettlementInstructionSETTLED_AMT: TFloatField;
    cdsSettlementInstructionSTOCKID: TIntegerField;
    cdsSettlementInstructionSTOCKCODE: TStringField;
    cdsSettlementInstructionQTY: TFloatField;
    cdsSettlementInstructionTRDDATE: TDateField;
    cdsSettlementInstructionDUEDATE: TDateField;
    cdsSettlementInstructionSETTLEDDATE: TDateField;
    cdsSettlementInstructionSTAT: TStringField;
    cdsSettlementInstructionOLD_SIID: TLargeintField;
    cdsSettlementInstructionMODDA: TDateTimeField;
    cdsSettlementInstructionMODUI: TStringField;
    cdsSettlementInstructionAPPDA: TDateTimeField;
    cdsSettlementInstructionAPPUI: TStringField;
    cdsSettlementInstructionUNDER4Y: TIntegerField;
    cdsSettlementInstructionUNDER4YDA: TDateTimeField;
    cdsSettlementInstructionNOTES4Y: TStringField;
    cdsSettlementInstructionISDEL: TIntegerField;
    cdsSettlementInstructionID: TLargeintField;
    cdsSettlementInstructionVOUCHERAMT: TFloatField;
    cdsSettlementInstructionVOUCHERQTY: TFloatField;
    gvwMasterSIID: TcxGridDBBandedColumn;
    gvwMasterSINO: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterSITYPE: TcxGridDBBandedColumn;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterSETTLE_SIDE: TcxGridDBBandedColumn;
    gvwMasterINSTRUCTION_TYPE: TcxGridDBBandedColumn;
    gvwMasterNETTYPE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwMasterBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterBASE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterBANK_CHARGES: TcxGridDBBandedColumn;
    gvwMasterSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwMasterSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwMasterSETTLED_AMT: TcxGridDBBandedColumn;
    gvwMasterSTOCKID: TcxGridDBBandedColumn;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLEDDATE: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    gvwMasterOLD_SIID: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterVOUCHERAMT: TcxGridDBBandedColumn;
    gvwMasterVOUCHERQTY: TcxGridDBBandedColumn;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    actViewData: TNAction;
    actSplit: TNAction;
    actMerge: TNAction;
    cdsSettleInstrSplit: TNClientDataset;
    cdsSettleInstrSplitSIID: TLargeintField;
    cdsSettleInstrSplitSINO: TStringField;
    cdsSettleInstrSplitVALUEDATE: TDateField;
    cdsSettleInstrSplitSITYPE: TStringField;
    cdsSettleInstrSplitCASH_STOCK: TStringField;
    cdsSettleInstrSplitSETTLE_SIDE: TStringField;
    cdsSettleInstrSplitINSTRUCTION_TYPE: TStringField;
    cdsSettleInstrSplitNETTYPE: TStringField;
    cdsSettleInstrSplitACCID: TLargeintField;
    cdsSettleInstrSplitACCNO: TStringField;
    cdsSettleInstrSplitACCNAME: TStringField;
    cdsSettleInstrSplitTRANSFER_MODE: TStringField;
    cdsSettleInstrSplitBASE_CCYCODE: TStringField;
    cdsSettleInstrSplitBASE_NETAMT: TFloatField;
    cdsSettleInstrSplitBANK_CHARGES: TFloatField;
    cdsSettleInstrSplitSETTLE_CCYCODE: TStringField;
    cdsSettleInstrSplitSETTLE_EXRATE: TFloatField;
    cdsSettleInstrSplitSETTLE_NETAMT: TFloatField;
    cdsSettleInstrSplitSETTLED_AMT: TFloatField;
    cdsSettleInstrSplitSTOCKID: TIntegerField;
    cdsSettleInstrSplitSTOCKCODE: TStringField;
    cdsSettleInstrSplitQTY: TFloatField;
    cdsSettleInstrSplitTRDDATE: TDateField;
    cdsSettleInstrSplitDUEDATE: TDateField;
    cdsSettleInstrSplitSETTLEDDATE: TDateField;
    cdsSettleInstrSplitSTAT: TStringField;
    cdsSettleInstrSplitOLD_SIID: TLargeintField;
    cdsSettleInstrSplitMODDA: TDateTimeField;
    cdsSettleInstrSplitMODUI: TStringField;
    cdsSettleInstrSplitAPPDA: TDateTimeField;
    cdsSettleInstrSplitAPPUI: TStringField;
    cdsSettleInstrSplitUNDER4Y: TIntegerField;
    cdsSettleInstrSplitUNDER4YDA: TDateTimeField;
    cdsSettleInstrSplitNOTES4Y: TStringField;
    cdsSettleInstrSplitISDEL: TIntegerField;
    cdsSettleInstrSplitID: TLargeintField;
    cdsSettleInstrSplitVOUCHERAMT: TFloatField;
    cdsSettleInstrSplitVOUCHERQTY: TFloatField;
    Merge1: TMenuItem;
    cdsSettlementInstructionCCYRATE_TMP: TFloatField;
    cdsSettlementInstructionListENTRYDATE: TDateField;
    cdsSettlementInstructionListSI_DESC: TStringField;
    cdsSettlementInstructionListNO_INTRC: TStringField;
    cdsSettlementInstructionListSETTLED_QTY: TFloatField;
    cdsSettlementInstructionListTRF_PRVT_BANK: TStringField;
    cdsSettlementInstructionListBANKACCBRANCH: TStringField;
    cdsSettlementInstructionListCP_BANKACCBRANCH: TStringField;
    cdsSettlementInstructionListACCSOPID: TLargeintField;
    cdsSettlementInstructionListUSE_ACS: TStringField;
    cdsSettlementInstructionListSOURCE_ACCBANKID: TLargeintField;
    cdsSettlementInstructionListSOURCE_ACCBANKCODE: TStringField;
    cdsSettlementInstructionListSOURCE_ACCBANKNO: TStringField;
    cdsSettlementInstructionListSOURCE_ACCBANKNAME: TStringField;
    cdsSettlementInstructionListTARGET_ACCBANKID: TLargeintField;
    cdsSettlementInstructionListTARGET_ACCBANKCODE: TStringField;
    cdsSettlementInstructionListTARGET_ACCBANKNO: TStringField;
    cdsSettlementInstructionListTARGET_ACCBANKNAME: TStringField;
    gvwMasterSOURCE_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCBANKNAME: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKCODE: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNO: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCBANKNAME: TcxGridDBBandedColumn;
    cdsSettlementInstructionENTRYDATE: TDateField;
    cdsSettlementInstructionSI_DESC: TStringField;
    cdsSettlementInstructionNO_INTRC: TStringField;
    cdsSettlementInstructionSETTLED_QTY: TFloatField;
    cdsSettlementInstructionTRF_PRVT_BANK: TStringField;
    cdsSettlementInstructionBANKACCBRANCH: TStringField;
    cdsSettlementInstructionCP_BANKACCBRANCH: TStringField;
    cdsSettlementInstructionACCSOPID: TLargeintField;
    cdsSettlementInstructionUSE_ACS: TStringField;
    cdsSettlementInstructionSOURCE_ACCBANKID: TLargeintField;
    cdsSettlementInstructionSOURCE_ACCBANKCODE: TStringField;
    cdsSettlementInstructionSOURCE_ACCBANKNO: TStringField;
    cdsSettlementInstructionSOURCE_ACCBANKNAME: TStringField;
    cdsSettlementInstructionTARGET_ACCBANKID: TLargeintField;
    cdsSettlementInstructionTARGET_ACCBANKCODE: TStringField;
    cdsSettlementInstructionTARGET_ACCBANKNO: TStringField;
    cdsSettlementInstructionTARGET_ACCBANKNAME: TStringField;
    cdsSettleInstrSplitCCYRATE_TMP: TFloatField;
    cdsSettleInstrSplitENTRYDATE: TDateField;
    cdsSettleInstrSplitSI_DESC: TStringField;
    cdsSettleInstrSplitNO_INTRC: TStringField;
    cdsSettleInstrSplitSETTLED_QTY: TFloatField;
    cdsSettleInstrSplitTRF_PRVT_BANK: TStringField;
    cdsSettleInstrSplitBANKACCBRANCH: TStringField;
    cdsSettleInstrSplitCP_BANKACCBRANCH: TStringField;
    cdsSettleInstrSplitACCSOPID: TLargeintField;
    cdsSettleInstrSplitUSE_ACS: TStringField;
    cdsSettleInstrSplitSOURCE_ACCBANKID: TLargeintField;
    cdsSettleInstrSplitSOURCE_ACCBANKCODE: TStringField;
    cdsSettleInstrSplitSOURCE_ACCBANKNO: TStringField;
    cdsSettleInstrSplitSOURCE_ACCBANKNAME: TStringField;
    cdsSettleInstrSplitTARGET_ACCBANKID: TLargeintField;
    cdsSettleInstrSplitTARGET_ACCBANKCODE: TStringField;
    cdsSettleInstrSplitTARGET_ACCBANKNO: TStringField;
    cdsSettleInstrSplitTARGET_ACCBANKNAME: TStringField;
    cdsSettlementInstructionACCOUNT_SID: TStringField;
    cdsSettlementInstructionBANKCODE: TStringField;
    cdsSettlementInstructionBANKACCNO: TStringField;
    cdsSettlementInstructionBANKACCNAME: TStringField;
    cdsSettlementInstructionCP_BANKCODE: TStringField;
    cdsSettlementInstructionCP_BANKACCNO: TStringField;
    cdsSettlementInstructionCP_BANKACCNAME: TStringField;
    cdsSettlementInstructionACCBANKID: TIntegerField;
    cdsSettlementInstructionCP_ACCBANKID: TIntegerField;
    cdsSettlementInstructionKSEI_RECON: TStringField;
    cdsSettlementInstructionCOMFIRM_BY: TStringField;
    cdsSettlementInstructionREMARK: TStringField;
    cdsSettlementInstructionListCOMFIRM_BY: TStringField;
    cdsSettlementInstructionListREMARK: TStringField;
    gvwMasterCOMFIRM_BY: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSplitExecute(Sender: TObject);
    procedure cdsSettleInstrSplitBeforePost(DataSet: TDataSet);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsSettleInstrSplitTARGET_ACCBANKIDChange(Sender: TField);
    procedure cdsSettleInstrSplitSOURCE_ACCBANKIDChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettleInstrList: TfrmSettleInstrList;

implementation

{$R *.dfm}

uses DataGlobal, FormSplitSettleInstr, DataLookup, FormSettleInstr;

procedure TfrmSettleInstrList.actSplitExecute(Sender: TObject);
var
  oForm: TForm;
  ProcessDateTime: TDateTime;
  OldID: Int64;
  oField: TField;
  i: Integer;
begin
  inherited;
  cdsSettlementInstruction.Close;
  cdsSettlementInstruction.Params[0].AsInteger := cdsSettlementInstructionListSIID.AsInteger;
  cdsSettlementInstruction.Open;

  cdsSettleInstrSplit.Close;
  cdsSettleInstrSplit.CreateDataSet;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankAccount.Close;
    cdsLuBankAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankAccount.Open;

    cdsLuBankByAccount.Close;
    cdsLuBankByAccount.Params[0].AsInteger := cdsSettlementInstructionACCID.AsInteger;
    cdsLuBankByAccount.Open;
  end;

  oForm := TfrmSplitSettleInstr.Create(nil);
  Try
    if oForm.ShowModal = mrOk then
    begin
      if not cdsSettleInstrSplit.IsEmpty then
      begin
        ProcessDateTime := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
        OldID := cdsSettlementInstructionSIID.AsLargeInt;

        cdsSettlementInstruction.Edit;
        cdsSettlementInstructionSTAT.AsString := 'C';
        cdsSettlementInstructionMODDA.AsDateTime := ProcessDateTime;
        cdsSettlementInstructionMODUI.AsString := dmGlobal.UserID;
        cdsSettlementInstruction.Post;

        cdsSettleInstrSplit.First;
        while not cdsSettleInstrSplit.Eof do
        begin
          cdsSettlementInstruction.Append;

          for i := 0 to cdsSettlementInstruction.FieldCount - 1 do
          begin
            oField := cdsSettleInstrSplit.FindField(cdsSettlementInstruction.Fields[i].FieldName);
            if oField <> nil then
            begin
              cdsSettlementInstruction.Fields[i].Value := oField.Value;
            end;
          end;

          cdsSettlementInstructionSIID.AsLargeInt := dmGlobal.RemoteServer.GetSeq('TBL_B_SETTLE_INSTR');
          cdsSettlementInstructionSTAT.AsString := 'O';
          cdsSettlementInstructionMODDA.AsDateTime := ProcessDateTime;
          cdsSettlementInstructionMODUI.AsString := dmGlobal.UserID;
          cdsSettlementInstructionOLD_SIID.AsLargeInt := OldID;

          cdsSettlementInstruction.Post;

          cdsSettleInstrSplit.Next;
        end;

        dmGlobal.RemoteServer.StartTransaction;
        cdsSettlementInstruction.ApplyUpdates(-1);
        dmGlobal.RemoteServer.CommitTransaction;

        cdsSettlementInstructionList.Close;
        cdsSettlementInstructionList.Open;
      end;
    end;
  Finally
    FreeAndNil(oForm);
  End;
end;

procedure TfrmSettleInstrList.actViewDataExecute(Sender: TObject);
begin
  inherited;
  cdsSettlementInstructionList.Close;
  cdsSettlementInstructionList.Params[0].AsDate := dtTransDate.Date;
  cdsSettlementInstructionList.Open;
end;

procedure TfrmSettleInstrList.cdsSettleInstrSplitBeforePost(DataSet: TDataSet);
var
  i: Integer;
  oField: TField;
begin
  inherited;

  for i := 0 to cdsSettlementInstruction.FieldCount - 1 do
  begin
    oField := cdsSettleInstrSplit.FindField(cdsSettlementInstruction.Fields[i].FieldName);
    if (oField <> nil) then
    begin
      if oField.IsNull then
        oField.Value := cdsSettlementInstruction.Fields[i].Value;
    end;
  end;
end;

procedure TfrmSettleInstrList.cdsSettleInstrSplitSOURCE_ACCBANKIDChange(
  Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankByAccount.Locate('ACCBANKID', Sender.Value, []) then
    begin
      cdsSettleInstrSplitSOURCE_ACCBANKCODE.AsString := cdsLuBankByAccountBNCODE.AsString;
      cdsSettleInstrSplitSOURCE_ACCBANKNO.AsString := cdsLuBankByAccountBANKACCNO.AsString;
      cdsSettleInstrSplitSOURCE_ACCBANKNAME.AsString := cdsLuBankByAccountBANKACCNAME.AsString;
    end;
  end;
end;

procedure TfrmSettleInstrList.cdsSettleInstrSplitTARGET_ACCBANKIDChange(
  Sender: TField);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankAccount.Locate('ACCBANKID', Sender.Value, []) then
    begin
      cdsSettleInstrSplitTARGET_ACCBANKCODE.AsString := cdsLuBankAccountBNCODE.AsString;
      cdsSettleInstrSplitTARGET_ACCBANKNO.AsString := cdsLuBankAccountBANKACCNO.AsString;
      cdsSettleInstrSplitTARGET_ACCBANKNAME.AsString := cdsLuBankAccountBANKACCNAME.AsString;
    end;
  end;
end;

procedure TfrmSettleInstrList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmSettleInstr;
end;

procedure TfrmSettleInstrList.FormCreate(Sender: TObject);
begin
  inherited;
  dtTransDate.Date := dmGlobal.RemoteServer.GetTransDate;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuExchangeRate.Close;
    cdsLuExchangeRate.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
    cdsLuExchangeRate.Open;

    cdsLuInstructionTypes.Close;
    cdsLuInstructionTypes.Open;

    cdsLuBank.Close;
    cdsLuBank.Open;

    cdsLuCustody.Close;
    cdsLuCustody.Open;
  end;
  actViewData.Execute;
end;

Initialization
  RegisterClass(TfrmSettleInstrList);

end.
