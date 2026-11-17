unit FromStockDelRev;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxLayoutContainer, dxLayoutControl, NReportClient,
  NDatasetContainer, dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Vcl.Menus,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxSplitter, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxContainer, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  cxImageComboBox, Vcl.Grids, Vcl.DBGrids, System.Actions, System.ImageList;

type
  TfrmStockDeliverList = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cdsStockDelRev: TNClientDataset;
    cdsStockDelRevVOUCHERNO: TStringField;
    cdsStockDelRevTRDDATE: TDateField;
    cdsStockDelRevSETTLEDATE: TDateField;
    cdsStockDelRevVALUEDATE: TDateField;
    cdsStockDelRevACCID: TLargeintField;
    cdsStockDelRevACCNO: TStringField;
    cdsStockDelRevACCNAME: TStringField;
    cdsStockDelRevCUSTODYID_SOURCE: TLargeintField;
    cdsStockDelRevCUSTODYCODE_SOURCE: TStringField;
    cdsStockDelRevCUSTODYACCNO_SOURCE: TStringField;
    cdsStockDelRevCUSTODYACCNAME_SOURCE: TStringField;
    cdsStockDelRevCUSTODYACCBRANCH_SOURCE: TStringField;
    cdsStockDelRevCUSTODYID_TARGET: TLargeintField;
    cdsStockDelRevCUSTODYCODE_TARGET: TStringField;
    cdsStockDelRevCUSTODYACCNO_TARGET: TStringField;
    cdsStockDelRevCUSTODYACCNAME_TARGET: TStringField;
    cdsStockDelRevCUSTODYACCBRANCH_TARGET: TStringField;
    cdsStockDelRevTRANSFERMODE: TStringField;
    cdsStockDelRevREMARKS: TStringField;
    cdsStockDelRevCCYCODE: TStringField;
    dtDueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cbInstructionType: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    rbMode: TcxRadioGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    gvwMasterVOUCHERNO: TcxGridDBBandedColumn;
    gvwMasterTRDDATE: TcxGridDBBandedColumn;
    gvwMasterSETTLEDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterACCNO: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterCUSTODYID_SOURCE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYCODE_SOURCE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO_SOURCE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNAME_SOURCE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCBRANCH_SOURCE: TcxGridDBBandedColumn;
    gvwMasterCUSTODYID_TARGET: TcxGridDBBandedColumn;
    gvwMasterCUSTODYCODE_TARGET: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNO_TARGET: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCNAME_TARGET: TcxGridDBBandedColumn;
    gvwMasterCUSTODYACCBRANCH_TARGET: TcxGridDBBandedColumn;
    gvwMasterTRANSFERMODE: TcxGridDBBandedColumn;
    gvwMasterREMARKS: TcxGridDBBandedColumn;
    gvwMasterCCYCODE: TcxGridDBBandedColumn;
    actPosting: TNAction;
    actGenerateCBest: TNAction;
    cdsStockDelRevSTOCKCODE: TStringField;
    cdsStockDelRevQTY: TFloatField;
    cdsStockDelRevAMT: TFloatField;
    gvwMasterSTOCKCODE: TcxGridDBBandedColumn;
    gvwMasterQTY: TcxGridDBBandedColumn;
    gvwMasterAMT: TcxGridDBBandedColumn;
    N5: TMenuItem;
    cdsStockDelRevSTAT: TStringField;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    cdsStockDelRevVOUCHERID: TLargeintField;
    gvwMasterVOUCHERID: TcxGridDBBandedColumn;
    Posting1: TMenuItem;
    actCancelVoucher: TNAction;
    CancelStockVoucher1: TMenuItem;
    cdsCBestInstOTC: TNClientDataset;
    actFOPVP: TNAction;
    actCOLWCOLDS: TNAction;
    GeneratetoCBestFile1: TMenuItem;
    FOPVP1: TMenuItem;
    COLWCOLDS1: TMenuItem;
    cdsStockDelRevCASH_STOCK: TStringField;
    cdsStockDelRevREFNO: TStringField;
    gvwMasterCASH_STOCK: TcxGridDBBandedColumn;
    gvwMasterREFNO: TcxGridDBBandedColumn;
    actCancelCashVoucher: TNAction;
    cdsCBestInstOTCInstructionID: TLargeintField;
    cdsCBestInstOTCexternalReference: TStringField;
    cdsCBestInstOTCinstructionType: TStringField;
    cdsCBestInstOTCparticipantCode: TStringField;
    cdsCBestInstOTCparticipantAccount: TStringField;
    cdsCBestInstOTCparticipantAccountCash: TStringField;
    cdsCBestInstOTCcounterpartCode: TStringField;
    cdsCBestInstOTCsecurityCode: TStringField;
    cdsCBestInstOTCnumberOfSecurities: TFloatField;
    cdsCBestInstOTCtradeDate: TStringField;
    cdsCBestInstOTCcurrencyCode: TStringField;
    cdsCBestInstOTCsettlementAmount: TFloatField;
    cdsCBestInstOTCsettlementDate: TStringField;
    cdsCBestInstOTCpurpose: TStringField;
    cdsCBestInstOTCtradingReference: TStringField;
    cdsCBestInstOTCsettlementReason: TStringField;
    cdsCBestInstOTCdescription: TStringField;
    cdsCBestInstOTCsecurityCodeType: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actCancelVoucherExecute(Sender: TObject);
    procedure actGenerateCBestExecute(Sender: TObject);
    procedure actFOPVPExecute(Sender: TObject);
    procedure actCOLWCOLDSExecute(Sender: TObject);
    procedure actCOLWCOLDSUpdate(Sender: TObject);
    procedure actFOPVPUpdate(Sender: TObject);
    procedure actCancelVoucherUpdate(Sender: TObject);
    procedure actCancelCashVoucherExecute(Sender: TObject);
    procedure actCancelCashVoucherUpdate(Sender: TObject);
  private
    { Private declarations }

    procedure RFOP_RVP(AFileName: string);
    procedure DFOP_DVP(AFIleName: string);

    procedure GenerateCBestInstruction;
    procedure GenerateCBest_COLDS_Instruction;
  public
    { Public declarations }
  end;

var
  frmStockDeliverList: TfrmStockDeliverList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmStockDeliverList.actCancelCashVoucherExecute(
  Sender: TObject);
var
  iVoucherID: Int64;
  i: Integer;
begin
  inherited;
  if MessageDlg('Are you sure to cancel cash voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin

    for i := 0 to gvwMaster.DataController.Controller.SelectedRecordCount -1 do
    begin
      if gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterSTAT.Index] <> 'P' then
      begin
        iVoucherID := StrToInt64Def(gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterVOUCHERID.Index], 0);
        dmGlobal.RemoteServer.CashVoucherCancel(iVoucherID);
      end;

      ShowMessage('Finished Cancel Cash Voucher.');
    end;
  end;
end;

procedure TfrmStockDeliverList.actCancelCashVoucherUpdate(Sender: TObject);
begin
  inherited;
  actCancelCashVoucher.Visible := cdsStockDelRevCASH_STOCK.AsString = 'C';
end;

procedure TfrmStockDeliverList.actCancelVoucherExecute(Sender: TObject);
var
  sVoucherID: string;
  iVoucherID: Int64;
  i: Integer;
begin
  inherited;
  if MessageDlg('Are you sure to cancel stock voucher?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    for i := 0 to gvwMaster.DataController.Controller.SelectedRecordCount -1 do
    begin
      if gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterSTAT.Index] <> 'P' then
      begin
        sVoucherID := gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterVOUCHERID.Index];
        iVoucherID := StrToInt64Def(sVoucherID, 0);

        dmGlobal.RemoteServer.StockVoucherCancel(iVoucherID);
      end;
    end;

    MessageDlg('Cancel stock voucher has done...', mtInformation, [mbYes], 0);
    cdsStockDelRev.Refresh;
  end;
end;

procedure TfrmStockDeliverList.actCancelVoucherUpdate(Sender: TObject);
begin
  inherited;
  actCancelVoucher.Visible := cdsStockDelRevCASH_STOCK.AsString = 'S';
end;

procedure TfrmStockDeliverList.actCOLWCOLDSExecute(Sender: TObject);
begin
  inherited;
  cdsCBestInstOTC.Close;
  cdsCBestInstOTC.Params[0].AsDateTime := dtDueDate.Date;
  cdsCBestInstOTC.Params[1].AsString   := rbMode.EditValue;
  cdsCBestInstOTC.Params[2].AsString   := 'C'; //cbInstructionType.EditValue;
  cdsCBestInstOTC.Open;

  GenerateCBest_COLDS_Instruction;
end;

procedure TfrmStockDeliverList.actCOLWCOLDSUpdate(Sender: TObject);
begin
  inherited;
  actCOLWCOLDS.Visible := (cdsStockDelRevTRANSFERMODE.AsString = 'COLDS') or (cdsStockDelRevTRANSFERMODE.AsString = 'COLW');
end;

procedure TfrmStockDeliverList.actFOPVPExecute(Sender: TObject);
begin
  inherited;
  cdsCBestInstOTC.Close;
  cdsCBestInstOTC.Params[0].AsDateTime := dtDueDate.Date;
  cdsCBestInstOTC.Params[1].AsString   := rbMode.EditValue;
  cdsCBestInstOTC.Params[2].AsString   := 'F'; //cbInstructionType.EditValue;
  cdsCBestInstOTC.Open;

  GenerateCBestInstruction
end;

procedure TfrmStockDeliverList.actFOPVPUpdate(Sender: TObject);
begin
  inherited;
  actFOPVP.Visible := (cdsStockDelRevTRANSFERMODE.AsString = 'RFOP') or (cdsStockDelRevTRANSFERMODE.AsString = 'RVP');
end;

procedure TfrmStockDeliverList.actGenerateCBestExecute(Sender: TObject);
begin
  inherited;
//  cdsStockDelRev.DisableControls;
//  if rbInstructionMode.EditValue = 'F' then
//    GenerateCBestInstruction
//  else if rbInstructionMode.EditValue = 'C' then
//    GenerateCBest_COLDS_Instruction;
//  cdsStockDelRev.EnableControls;

//  cdsCBestInstOTC.Close;
//  cdsCBestInstOTC.Params[0].AsDateTime := dtDueDate.Date;
//  cdsCBestInstOTC.Params[1].AsString   := rbMode.EditValue;
//  cdsCBestInstOTC.Params[2].AsString   := cbInstructionType.EditValue;
//  cdsCBestInstOTC.Open;
//
//  if rbInstructionMode.EditValue = 'F' then
//    GenerateCBestInstruction
//  else if rbInstructionMode.EditValue = 'C' then
//    GenerateCBest_COLDS_Instruction;

//  GenerateCBestInstruction;
end;

procedure TfrmStockDeliverList.actPostingExecute(Sender: TObject);
var
  sVoucherID: string;
  iVoucherID: Int64;
  i: Integer;
begin
  inherited;
  for i := 0 to gvwMaster.DataController.Controller.SelectedRecordCount -1 do
  begin
    if gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterSTAT.Index] <> 'P' then
    begin
      sVoucherID := gvwMaster.DataController.Controller.SelectedRecords[i].Values[gvwMasterVOUCHERID.Index];
      iVoucherID := StrToInt64Def(sVoucherID, 0);

      dmGlobal.RemoteServer.StockVoucherPosting(iVoucherID);
    end;
  end;

  MessageDlg('Posting stock voucher has done...', mtInformation, [mbYes], 0);
  cdsStockDelRev.Refresh;
end;

procedure TfrmStockDeliverList.RFOP_RVP(AFileName: string);
var
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9,
  s10, s11, s12, s13, s14,
  s15,
  sList: string;
  oCBestList: TStringList;
  i : Integer;
begin
  Cursor     := crHourGlass;
  oCBestList := TStringList.Create;

  sList := '';

//  cdsCBestInstOTC.First;
  cdsCBestInstOTC.First;
  while not cdsCBestInstOTC.Eof do
  begin
    for i := 0 to 16 do
      sList := sList + cdsCBestInstOTC.Fields[i].AsString + '|';


//    s0  := cdsCBestInstOTCexternalReference.AsString;
//    s1  := cdsCBestInstOTCinstructionType.AsString;
//    s2  := cds;
//    s3  := cdsStockDelRevCUSTODYCODE_TARGET.AsString;
//    s4  := dmGlobal.RemoteServer.GetGlobalParamString('009');
//    s5  := cbInstructionType.EditValue;
//    s6  := cdsStockDelRevSTOCKCODE.AsString;
//    s7  := cdsStockDelRevAMT.AsString;
//    s8  := FormatDateTime('YYYYMMDD', cdsStockDelRevTRDDATE.AsDateTime);
//    s9  := cdsStockDelRevCCYCODE.AsString;
//    s10 := '0';
//    s11 := FormatDateTime('YYYYMMDD', cdsStockDelRevSETTLEDATE.AsDateTime);;
//    s12 := cdsStockDelRevACCNAME.AsString;
//    s13 := 'EXCHG';
//    s14 := cdsStockDelRevVOUCHERNO.AsString;
//    s15 := '';
//
//    sList := s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+
//       s8+'|'+s9+'|'+s10+'|'+s11+'|'+s12+'|'+s13+'|'+s14+'|'+s15;

    oCBestList.Add(sList);
    cdsCBestInstOTC.Next;
  end;

  dmGlobal.IntDataCBest.GenerateRD(AFileName, oCBestList);
  oCBestList.Free;
  Cursor := crDefault;
end;

procedure TfrmStockDeliverList.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsStockDelRev.Close;
  cdsStockDelRev.Params[0].AsDateTime := dtDueDate.Date;
  cdsStockDelRev.Params[1].AsString   := rbMode.EditValue;
  cdsStockDelRev.Params[2].AsString   := cbInstructionType.EditValue;
  cdsStockDelRev.Open;
end;

procedure TfrmStockDeliverList.DFOP_DVP(AFileName: string);
var
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9,
  s10, s11, s12, s13, s14, s15,
  sList: string;
  oCBestList: TStringList;
begin
  Cursor     := crHourGlass;
  oCBestList := TStringList.Create;

  cdsStockDelRev.First;
  while not cdsStockDelRev.Eof do
  begin
    s0  := cdsStockDelRevVOUCHERNO.AsString;
    s1  := 'DFOP';
    s2  := dmGlobal.RemoteServer.GetGlobalParamString('009');
    s3  := cdsStockDelRevACCNO.AsString;
    s4  := cdsStockDelRevCUSTODYCODE_SOURCE.AsString;
    s5  := 'LOCAL';
    s6  := cdsStockDelRevSTOCKCODE.AsString;
    s7  := cdsStockDelRevQTY.AsString;
    s8  := FormatDateTime('YYYYMMDD', cdsStockDelRevTRDDATE.AsDateTime);
    s9  := cdsStockDelRevCCYCODE.AsString;
    s10 := cdsStockDelRevAMT.AsString;
    s11 := FormatDateTime('YYYYMMDD', cdsStockDelRevSETTLEDATE.AsDateTime);
    s12 := '';
    s13 := '';
    s14 := '';
    s15 := '';

    sList := s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+
       s8+'|'+s9+'|'+s10+'|'+s11+'|'+s12+'|'+s13+'|'+s14+'|'+s15;

    oCBestList.Add(sList);
    cdsStockDelRev.Next;
  end;

  dmGlobal.IntDataCBest.GenerateRD(AFileName, oCBestList);
  oCBestList.Free;
  Cursor := crDefault;
end;

procedure TfrmStockDeliverList.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBankAccount.Close;
    cdsLuBankAccount.Params[0].AsInteger := dmGlobal.RemoteServer.GetBrokerAccount;
    cdsLuBankAccount.Open;

    with cdsLuStockInstructionMode do
    begin
      Close;
      Open;
    end;
  end;

  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmStockDeliverList.GenerateCBestInstruction;
var
  sFileName, sFolderName: string;
begin
  sFolderName := dmGlobal.FITSCBestInterfaceDir;

  if rbMode.EditValue = 'D' then
    sFileName := sFolderName+'Stock_Delivered_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.xlsx'
  else
    sFileName := sFolderName+'Stock_Receive_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.xlsx';

  if not DirectoryExists(sFolderName) then
    MessageDlg(sFolderName + ' does not exist, please check configuration setting...', mtError, [mbOk], 0)
  else
    RFOP_RVP(sFileName);

end;

procedure TfrmStockDeliverList.GenerateCBest_COLDS_Instruction;
var
  sFileName, sFolderName,
  s0, s1, s2, s3, s4,
  s5, s6, s7, s8, s9,
  sTransferMode: string;
  oCBestList: TStringList;
begin
  oCBestList := TStringList.Create;

  sFolderName := dmGlobal.FITSCBestInterfaceDir;
  if not DirectoryExists(sFolderName) then
    MessageDlg(sFolderName + ' does not exist, please check configuration setting...', mtError, [mbOk], 0)
  else
  begin
    sTransferMode := cdsStockDelRevTRANSFERMODE.AsString;

    if (sTransferMode = 'DFOP') or (sTransferMode = 'DVP') then
      sFileName := sFolderName+'Deposit_Stock_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.xlsx'
    else if (sTransferMode = 'RFOP') or (sTransferMode = 'RVP') then
      sFileName := sFolderName+'Withdraw_Stock_'+FormatDateTime('DD_MM_YYYY', dmGlobal.RemoteServer.GetTransDate)+'.xlsx';


    cdsStockDelRev.First;
    while not cdsStockDelRev.Eof do
    begin
        s0 := cdsStockDelRevVOUCHERNO.AsString;
        s1 := dmGlobal.RemoteServer.GetGlobalParamString('009');
        s2 := cdsStockDelRevCUSTODYCODE_SOURCE.AsString;
        s3 := cdsStockDelRevCUSTODYCODE_TARGET.AsString;
        s4 := '';
        s5 := 'LOCAL';
        s6 := cdsStockDelRevSTOCKCODE.AsString;
        s7 := cdsStockDelRevQTY.AsString;
        s8 := FormatDateTime('YYYYMMDD', cdsStockDelRevSETTLEDATE.AsDateTime);
        s9 := '';

        oCBestList.Add(s0+'|'+s1+'|'+s2+'|'+s3+'|'+s4+'|'+s5+'|'+s6+'|'+s7+'|'+
           s8+'|'+s9);

      cdsStockDelRev.Next;
    end;

    dmGlobal.IntDataCBest.GenerateCOL(sFileName, oCBestList);
  end;

  oCBestList.Free;
end;

Initialization
  RegisterClass(TfrmStockDeliverList);

end.

