unit FormStockSettementList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, cxGridBandedTableView,
  cxGridDBBandedTableView, Vcl.ActnList, NDatasetAction, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxGroupBox, cxRadioGroup,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, System.Actions, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, dxDateRanges, cxImageComboBox,
  dxBar, System.ImageList, Vcl.ImgList, cxBarEditItem, DateUtils,Clipbrd,
  dxScrollbarAnnotations;

type
  TfrmStockSettlementList = class(TfrmBasic)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsBrokerSettlement: TNClientDataset;
    dsBrokerSettlement: TDataSource;
    gvwBrokerSettlement: TcxGridDBBandedTableView;
    aclStockSettlement: TActionList;
    actView: TNAction;
    actStockSettleVoucher: TNAction;
    actViewStockVoucher: TNAction;
    actCreateStockVoucher: TNAction;
    actCreateMultipleVoucher: TNAction;
    cdsClientSettlement: TNClientDataset;
    cxGrid1Level2: TcxGridLevel;
    gvwClientSettlement: TcxGridDBBandedTableView;
    dsClientSettlementOTC: TDataSource;
    pmStockSettlement: TPopupMenu;
    ViewStockVoucher2: TMenuItem;
    CreateMultipleStockVoucher2: TMenuItem;
    cdsBrokerSettlementACCID: TLargeintField;
    cdsBrokerSettlementACCCODE: TStringField;
    cdsBrokerSettlementACCNAME: TStringField;
    cdsBrokerSettlementCLIENTACCID: TLargeintField;
    cdsBrokerSettlementCLIENTACCCODE: TStringField;
    cdsBrokerSettlementCLIENTACCNAME: TStringField;
    cdsBrokerSettlementSIDE_ACC: TStringField;
    cdsBrokerSettlementSTOCKID: TIntegerField;
    cdsBrokerSettlementLOCALCODE: TStringField;
    cdsBrokerSettlementMARKETCODE: TStringField;
    cdsBrokerSettlementQTYPOS: TFloatField;
    cdsBrokerSettlementVOUCHERQTY: TFloatField;
    cdsBrokerSettlementQTYDLV_DUE: TFloatField;
    cdsBrokerSettlementQTYRCV_DUE: TFloatField;
    cdsBrokerSettlementNETQTY_DUE: TFloatField;
    cdsBrokerSettlementBOARDCODE: TStringField;
    cdsBrokerSettlementSTOCKKEEP: TStringField;
    gvwBrokerSettlementACCID: TcxGridDBBandedColumn;
    gvwBrokerSettlementACCCODE: TcxGridDBBandedColumn;
    gvwBrokerSettlementACCNAME: TcxGridDBBandedColumn;
    gvwBrokerSettlementCLIENTACCID: TcxGridDBBandedColumn;
    gvwBrokerSettlementCLIENTACCCODE: TcxGridDBBandedColumn;
    gvwBrokerSettlementCLIENTACCNAME: TcxGridDBBandedColumn;
    gvwBrokerSettlementSIDE_ACC: TcxGridDBBandedColumn;
    gvwBrokerSettlementSTOCKID: TcxGridDBBandedColumn;
    gvwBrokerSettlementLOCALCODE: TcxGridDBBandedColumn;
    gvwBrokerSettlementMARKETCODE: TcxGridDBBandedColumn;
    gvwBrokerSettlementQTYPOS: TcxGridDBBandedColumn;
    gvwBrokerSettlementVOUCHERQTY: TcxGridDBBandedColumn;
    gvwBrokerSettlementQTYDLV_DUE: TcxGridDBBandedColumn;
    gvwBrokerSettlementQTYRCV_DUE: TcxGridDBBandedColumn;
    gvwBrokerSettlementNETQTY_DUE: TcxGridDBBandedColumn;
    gvwBrokerSettlementBOARDCODE: TcxGridDBBandedColumn;
    gvwBrokerSettlementSTOCKKEEP: TcxGridDBBandedColumn;
    cdsClientSettlementACCID: TLargeintField;
    cdsClientSettlementACCCODE: TStringField;
    cdsClientSettlementACCNAME: TStringField;
    cdsClientSettlementCLIENTACCID: TLargeintField;
    cdsClientSettlementCLIENTACCCODE: TStringField;
    cdsClientSettlementCLIENTACCNAME: TStringField;
    cdsClientSettlementSIDE_ACC: TStringField;
    cdsClientSettlementSTOCKID: TIntegerField;
    cdsClientSettlementLOCALCODE: TStringField;
    cdsClientSettlementMARKETCODE: TStringField;
    cdsClientSettlementQTYPOS: TFloatField;
    cdsClientSettlementVOUCHERQTY: TFloatField;
    cdsClientSettlementQTYDLV_DUE: TFloatField;
    cdsClientSettlementQTYRCV_DUE: TFloatField;
    cdsClientSettlementNETQTY_DUE: TFloatField;
    cdsClientSettlementBOARDCODE: TStringField;
    cdsClientSettlementSTOCKKEEP: TStringField;
    gvwClientSettlementACCID: TcxGridDBBandedColumn;
    gvwClientSettlementACCCODE: TcxGridDBBandedColumn;
    gvwClientSettlementACCNAME: TcxGridDBBandedColumn;
    gvwClientSettlementCLIENTACCID: TcxGridDBBandedColumn;
    gvwClientSettlementCLIENTACCCODE: TcxGridDBBandedColumn;
    gvwClientSettlementCLIENTACCNAME: TcxGridDBBandedColumn;
    gvwClientSettlementSIDE_ACC: TcxGridDBBandedColumn;
    gvwClientSettlementSTOCKID: TcxGridDBBandedColumn;
    gvwClientSettlementLOCALCODE: TcxGridDBBandedColumn;
    gvwClientSettlementMARKETCODE: TcxGridDBBandedColumn;
    gvwClientSettlementQTYPOS: TcxGridDBBandedColumn;
    gvwClientSettlementVOUCHERQTY: TcxGridDBBandedColumn;
    gvwClientSettlementQTYDLV_DUE: TcxGridDBBandedColumn;
    gvwClientSettlementQTYRCV_DUE: TcxGridDBBandedColumn;
    gvwClientSettlementNETQTY_DUE: TcxGridDBBandedColumn;
    gvwClientSettlementBOARDCODE: TcxGridDBBandedColumn;
    gvwClientSettlementSTOCKKEEP: TcxGridDBBandedColumn;
    actCreateAllStockVoucher: TNAction;
    cdsBrokerSettlementSTAT: TStringField;
    gvwBrokerSettlementSTAT: TcxGridDBBandedColumn;
    cdsClientSettlementSTAT: TStringField;
    gvwClientSettlementSTAT: TcxGridDBBandedColumn;
    BarMBrowse: TdxBarManager;
    BarMBrowseBar1: TdxBar;
    dtDue: TcxBarEditItem;
    edMarketCode: TcxBarEditItem;
    chkAllMarket: TcxBarEditItem;
    edGroupType: TcxBarEditItem;
    chkAllGroup: TcxBarEditItem;
    imlBrowse: TImageList;
    chkOpen: TcxBarEditItem;
    chkSettled: TcxBarEditItem;
    chkCanceled: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    cdsClientSettlementSETTLED_QTY: TFloatField;
    gvwClientSettlementSETTLED_QTY: TcxGridDBBandedColumn;
    actStockSettlementPostByDate: TNAction;
    actCreateStockSettleVoucherByDate: TNAction;
    actCreateStockSettleVoucherByDate1: TMenuItem;
    N1: TMenuItem;
    procedure actViewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkAllMarketPropertiesChange(Sender: TObject);
    procedure actStockSettleVoucherExecute(Sender: TObject);
    procedure cbMarketPropertiesChange(Sender: TObject);
    procedure rgSpecificDatePropertiesChange(Sender: TObject);
    procedure rgStockKeepPropertiesChange(Sender: TObject);
    procedure actViewStockVoucherExecute(Sender: TObject);
    procedure actCreateStockVoucherExecute(Sender: TObject);
    procedure actCreateMultipleVoucherExecute(Sender: TObject);
    procedure chkAllGroupTypePropertiesChange(Sender: TObject);
    procedure actCreateAllStockVoucherExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
    procedure actStockSettlementPostByDateExecute(Sender: TObject);
    procedure actCreateStockSettleVoucherByDateExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshData;
  public
    { Public declarations }
  end;

var
  frmStockSettlementList: TfrmStockSettlementList;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup, FormStockSettleVoucher,
  FormStockSettleVoucherProcess, FormCreateMultipleStockVoucherList,
  FormStockSettleVoucherMultiple, FormProgressBar;

procedure TfrmStockSettlementList.actCopySelectedExecute(Sender: TObject);
var
  LView: TcxGridDBBandedTableView;
  iCol,iRow : Integer;
  sValues,sHeader: String;
begin
  inherited;
  LView := TcxGridDBBandedTableView(cxGrid1.FocusedView);

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

procedure TfrmStockSettlementList.actCreateAllStockVoucherExecute(
  Sender: TObject);
var
  i,x, v: Integer;
  iAccID,iClientAccID :Int64;
  iStockID: Integer;
  sMsg,sTmpMsg,sErrorMsg: string;
  sMarketCode,sAllMarket,sStockGroupType: string;
  bRes: Boolean;
  oProgress: TfrmProgressBar;
  iRecordCount: Integer;
begin
  inherited;
  dmGlobal.RemoteServer.CreateStockSettleVoucherByDate(VarToDateTime(dtDue.EditValue), sMsg);

//  sErrorMsg := '';
//  sTmpMsg   := '';
//
//  x := 0;
//  v := 0;
//
//  cdsBrokerSettlement.First;
//  for i := 0 to cdsBrokerSettlement.RecordCount - 1 do
//  begin
//    iAccID          := cdsBrokerSettlementACCID.Value;
//    iStockID        := cdsBrokerSettlementSTOCKID.Value;
//    iClientAccID    := cdsBrokerSettlementCLIENTACCID.Value;
//    sMarketCode     := cdsBrokerSettlementMARKETCODE.Value;
//    sAllMarket      := chkAllMarket.EditValue;
//    sStockGroupType := edGroupType.EditValue;
//
//    bRes := dmGlobal.RemoteServer.CreateStockSettleBroker(iAccID, iClientAccID, iStockID, DateOf(dtDue.EditValue), sMarketCode, sAllMarket,
//        sStockGroupType, sMsg);
//
////    oProgress := TfrmProgressBar.Create(Nil);
////    oProgress.Show;
////    oProgress.ChangeBarCaption('Uploading cash withdraw');
//
//    if bRes then
//      Inc(v)
//    else
//    begin
//      Inc(x);
//      if sTmpMsg <> sMsg then
//      begin
//        sTmpMsg   := sMsg;
//        sErrorMsg := sErrorMsg + #13 + sTmpMsg;
//      end;
//    end;
//
//    cdsBrokerSettlement.Next;
//  end;
//
//  iRecordCount := cdsClientSettlement.RecordCount;
//
//  i := 0;
//  cdsClientSettlement.First;
//  for i := 0 to iRecordCount - 1 do
//  begin
////    oProgress.ChangeBar(trunc((i+1) / iRecordCount * 100), 'Processing Stock Settlement ' + cdsClientSettlementACCCODE.AsString);
//
//    iAccID          := cdsClientSettlementACCID.Value;
//    iStockID        := cdsClientSettlementSTOCKID.Value;
//    sMarketCode     := cdsClientSettlementMARKETCODE.Value;
//    sAllMarket      := chkAllMarket.EditValue;
//    sStockGroupType := edGroupType.EditValue;
//
//    bRes := dmGlobal.RemoteServer.CreateStockSettleClient(iAccID, iStockID, DateOf(dtDue.EditValue), sMarketCode, sAllMarket, sStockGroupType, sMsg);
//    if bRes then
//      Inc(v)
//    else
//    begin
//      Inc(x);
//
//      if sTmpMsg <> sMsg then
//      begin
//        sTmpMsg   := sMsg;
//        sErrorMsg := sErrorMsg + #13 + sTmpMsg;
//      end;
//    end;
//
//    cdsClientSettlement.Next;
//  end;
//
//  if (cdsBrokerSettlement.RecordCount > 1) or (cdsClientSettlement.RecordCount > 1)  then
//    sMsg := IntToStr(v)+' Success Create Stock Settlement'+#13+IntToStr(x)+
//            ' Fail to Create Stock Settlement'+#13+'Fail Message(s) : '+#13+sErrorMsg;
//
  MessageDlg(sMsg, mtInformation, [mbOk], 0);
  cdsBrokerSettlement.Refresh;
  cdsClientSettlement.Refresh;
end;

procedure TfrmStockSettlementList.actCreateMultipleVoucherExecute(
  Sender: TObject);
var
  iAccID,
  iClAccID,
  iStockID: Integer;
  iSideAcc,iInstrType : String;
begin
  inherited;

  if cxGrid1Level1.Active then
  begin
    iAccID     := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementACCID.Index], 0);
    iStockID   := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementSTOCKID.Index], 0);
    IClAccID   := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementCLIENTACCID.Index], 0);
    iSideAcc   := gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementSIDE_ACC.Index];
    iInstrType := gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementBOARDCODE.Index];
  end
  else
  begin
    iAccID     := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementACCID.Index], 0);
    iStockID   := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementSTOCKID.Index], 0);
    IClAccID   := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementCLIENTACCID.Index], 0);
    iSideAcc   := gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementSIDE_ACC.Index];
    iInstrType := gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementBOARDCODE.Index];
  end;

  if frmStockSettleVoucherMultiple.CreateVoucher(iAccID, iStockID, iClAccID, iInstrType, iSideAcc, DateOf(dtDue.EditValue)) then
  begin
    if cxGrid1Level1.Active then
      cdsBrokerSettlement.Refresh
    else
      cdsClientSettlement.Refresh;
  end;
end;

procedure TfrmStockSettlementList.actCreateStockSettleVoucherByDateExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if cxGrid1Level1.Active then
  begin
    dmGlobal.RemoteServer.CreateStockSettleVoucherBrokerByDate(VarToDateTime(dtDue.EditValue), sMsg);
  end
  else
  begin
    dmGlobal.RemoteServer.CreateStockSettleVoucherClientByDate(VarToDateTime(dtDue.EditValue), sMsg);
  end;

  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmStockSettlementList.actCreateStockVoucherExecute(Sender: TObject);
var
  i: Integer;
  iAccID,
  iClientAccID,
  iSSID: Int64;
  x, v: Integer;
  sMsg,
  sTmpMsg,
  sErrorMsg: string;
  iStockID: Integer;
  sMarketCode,
  sAllMarket,
  sStockGroupType: string;
  bRes: Boolean;
begin
  inherited;
  sErrorMsg := '';
  sTmpMsg   := '';

  x := 0;
  v := 0;
  if cxGrid1Level1.Active then
  begin
    for i := 0 to gvwBrokerSettlement.Controller.SelectedRecordCount -1 do
    begin
      iAccID          := StrToInt64Def(gvwBrokerSettlement.Controller.SelectedRecords[i].Values[gvwBrokerSettlementACCID.Index], 0);
      iStockID        := StrToInt64Def(gvwBrokerSettlement.Controller.SelectedRecords[i].Values[gvwBrokerSettlementSTOCKID.Index], 0);
      iClientAccID    := StrToInt64Def(gvwBrokerSettlement.Controller.SelectedRecords[i].Values[gvwBrokerSettlementCLIENTACCID.Index], 0);
      sMarketCode     := gvwBrokerSettlement.Controller.SelectedRecords[i].Values[gvwBrokerSettlementMARKETCODE.Index];
      sAllMarket      := chkAllMarket.EditValue;
      sStockGroupType := edGroupType.EditValue;

      bRes := dmGlobal.RemoteServer.CreateStockSettleBroker(iAccID, iClientAccID, iStockID, DateOf(dtDue.EditValue), sMarketCode, sAllMarket,
              sStockGroupType, sMsg);
      if bRes then
        Inc(v)
      else
      begin
        Inc(x);

        if sTmpMsg <> sMsg then
        begin
          sTmpMsg   := sMsg;
          sErrorMsg := sErrorMsg + #13 + sTmpMsg;
        end;
      end;
    end;

    if gvwBrokerSettlement.Controller.SelectedRecordCount > 1 then
      sMsg := IntToStr(v)+' Success Create Broker Stock Settlement'+#13+IntToStr(x)+
              ' Fail to Create Broker Stock Settlement'+#13+'Fail Message(s) : '+#13+sErrorMsg;
  end
  else
  begin
    for i := 0 to gvwClientSettlement.Controller.SelectedRecordCount -1 do
    begin
      iAccID          := StrToInt64Def(gvwClientSettlement.Controller.SelectedRecords[i].Values[gvwClientSettlementACCID.Index], 0);
      iStockID        := StrToInt64Def(gvwClientSettlement.Controller.SelectedRecords[i].Values[gvwClientSettlementSTOCKID.Index], 0);
//      iClientAccID    := StrToInt64Def(gvwClientSettlement.Controller.SelectedRecords[i].Values[gvwClientSettlementCLIENTACCID.Index], 0);
      sMarketCode     := gvwClientSettlement.Controller.SelectedRecords[i].Values[gvwClientSettlementMARKETCODE.Index];
      sAllMarket      := chkAllMarket.EditValue;
      sStockGroupType := edGroupType.EditValue;

      bRes := dmGlobal.RemoteServer.CreateStockSettleClient(iAccID, iStockID, DateOf(dtDue.EditValue), sMarketCode, sAllMarket, sStockGroupType, sMsg);
      if bRes then
        Inc(v)
      else
      begin
        Inc(x);

        if sTmpMsg <> sMsg then
        begin
          sTmpMsg   := sMsg;
          sErrorMsg := sErrorMsg + #13 + sTmpMsg;
        end;
      end;
    end;

    if gvwClientSettlement.Controller.SelectedRecordCount > 1 then
      sMsg := IntToStr(v)+' Success Create Client Stock Settlement'+#13+IntToStr(x)+
              ' Fail to Create Client Stock Settlement'+#13+'Fail Message(s) : '+sErrorMsg;
  end;

  MessageDlg(sMsg, mtInformation, [mbOk], 0);
  cdsBrokerSettlement.Refresh;
  cdsClientSettlement.Refresh;
end;

procedure TfrmStockSettlementList.actStockSettlementPostByDateExecute(
  Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  dmGlobal.RemoteServer.StockSettlementPostByDate(VarToDateTime(dtDue.EditValue), sMsg);

  MessageDlg(sMsg, mtInformation, [mbOk], 0);
end;

procedure TfrmStockSettlementList.actStockSettleVoucherExecute(Sender: TObject);
var
  iAccID,
  iClAccID,
  iStockID: Integer;
  iSideAcc,iInstrType : String;
begin
  inherited;

  if cxGrid1Level1.Active then
  begin
    iAccID   := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementACCID.Index], 0);
    iStockID := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementSTOCKID.Index], 0);
    IClAccID := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementCLIENTACCID.Index], 0);
    iSideAcc := gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementSIDE_ACC.Index];
    iInstrType := gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementBOARDCODE.Index];

    if frmStockSettleVoucher.CreateVoucher(iAccID, iStockID, iClAccID, iInstrType, iSideAcc, DateOf(dtDue.EditValue)) then

  end
  else
  begin
    iAccID   := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementACCID.Index], 0);
    iStockID := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementSTOCKID.Index], 0);
    IClAccID := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementCLIENTACCID.Index], 0);
    iSideAcc := gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementSIDE_ACC.Index];
    iInstrType := gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementBOARDCODE.Index];
  end;

  if frmStockSettleVoucher.CreateVoucher(iAccID, iStockID, iClAccID, iInstrType, iSideAcc, DateOf(dtDue.EditValue)) then
  begin
    if cxGrid1Level1.Active then
      cdsBrokerSettlement.Refresh
    else
      cdsClientSettlement.Refresh;
  end;
end;

procedure TfrmStockSettlementList.actViewExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmStockSettlementList.actViewStockVoucherExecute(Sender: TObject);
var
  iAccID,
  iSSID,
  iStockID: Integer;
begin
  inherited;
  iSSID    := 0;
  if cxGrid1Level1.Active then
  begin
    iAccID   := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementACCID.Index], 0);
    iStockID := StrToIntDef(gvwBrokerSettlement.Controller.SelectedRecords[0].Values[gvwBrokerSettlementSTOCKID.Index], 0);
  end
  else
  begin
    iAccID   := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementACCID.Index], 0);
    iStockID := StrToIntDef(gvwClientSettlement.Controller.SelectedRecords[0].Values[gvwClientSettlementSTOCKID.Index], 0);
  end;

  if frmStockSettleVoucherProcess.ViewVoucher(False, iSSID, iAccID, iStockID) then
  begin
    if cxGrid1Level1.Active then
      cdsBrokerSettlement.Refresh
    else
      cdsClientSettlement.Refresh;
  end;
end;

procedure TfrmStockSettlementList.cbMarketPropertiesChange(Sender: TObject);
begin
  inherited;
//  RefreshData;
end;

procedure TfrmStockSettlementList.chkAllGroupTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  edGroupType.Enabled := not chkAllGroup.EditValue = '1';
end;

procedure TfrmStockSettlementList.chkAllMarketPropertiesChange(Sender: TObject);
begin
  inherited;
  edMarketCode.Enabled := not chkAllMarket.EditValue = '1';
//  RefreshData;
end;

procedure TfrmStockSettlementList.FormShow(Sender: TObject);
begin
  inherited;
  dtDue.EditValue        := dmGlobal.RemoteServer.GetTransDate;
  edGroupType.EditValue  := 'S';
  chkAllMarket.EditValue := '0';
  chkAllGroup.EditValue  := '0';
  edMarketCode.EditValue := 'IDX';

  chkOpen.EditValue      := 'O';
  chkSettled.EditValue   := 'X';
  chkCanceled.EditValue  := 'X';
end;

procedure TfrmStockSettlementList.RefreshData;
begin
  cdsBrokerSettlement.DisableControls;
  cdsClientSettlement.DisableControls;

  cdsBrokerSettlement.Close;
  cdsBrokerSettlement.Params[0].AsString   := chkOpen.EditValue+','+chkSettled.EditValue+','+
                                              chkCanceled.EditValue;
  cdsBrokerSettlement.Params[1].AsDateTime := DateOf(dtDue.EditValue);
  cdsBrokerSettlement.Params[2].AsString   := edMarketCode.EditValue;
  cdsBrokerSettlement.Params[3].AsString   := chkAllMarket.EditValue;
  cdsBrokerSettlement.Params[4].AsString   := edGroupType.EditValue;
  cdsBrokerSettlement.Params[5].AsString   := chkAllGroup.EditValue;
  cdsBrokerSettlement.Open;

  cdsClientSettlement.Close;
  cdsClientSettlement.Params[0].AsString := chkOpen.EditValue+','+chkSettled.EditValue+','+
                                              chkCanceled.EditValue;
  cdsClientSettlement.Params[1].AsDateTime := DateOf(dtDue.EditValue);
  cdsClientSettlement.Params[2].AsString   := edMarketCode.EditValue;
  cdsClientSettlement.Params[3].AsString   := chkAllMarket.EditValue;
  cdsClientSettlement.Params[4].AsString   := edGroupType.EditValue;
  cdsClientSettlement.Params[5].AsString   := chkAllGroup.EditValue;
  cdsClientSettlement.Open;

  cdsBrokerSettlement.EnableControls;
  cdsClientSettlement.EnableControls;
end;

procedure TfrmStockSettlementList.rgSpecificDatePropertiesChange(
  Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TfrmStockSettlementList.rgStockKeepPropertiesChange(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

end.
