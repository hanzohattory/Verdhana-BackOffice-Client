unit FormStockSettement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, Datasnap.DBClient, NClientDataset, cxPropertiesStore,
  dxBar, cxClasses, dxPSCore, dxPScxCommon, NDatasetContainer, NDatasetAction,
  Vcl.ActnList, Vcl.ImgList, NActionPermission, Vcl.Menus, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  cxImageComboBox, cxGroupBox, cxRadioGroup;

type
  TfrmStockSettlement = class(TfrmBrowseSingle)
    dsStockLink: TDataSource;
    cdsStockLink: TNClientDataset;
    cdsStockLinkSIID: TLargeintField;
    cdsStockLinkLINKID: TLargeintField;
    cdsStockLinkBASE_CCYCODE: TStringField;
    cdsStockLinkBASE_AMT: TFloatField;
    cdsStockLinkSETTLE_CCY: TStringField;
    cdsStockLinkSETTLE_EXRATE: TFloatField;
    cdsStockLinkSETTLE_AMT: TFloatField;
    cdsStockDeliver: TNClientDataset;
    cdsStockDeliverNO_INTRC: TStringField;
    dsStockDeliver: TDataSource;
    cdsStockReceive: TNClientDataset;
    cdsStockReceiveSIID: TLargeintField;
    cdsStockReceiveSINO: TStringField;
    cdsStockReceiveTRDDATE: TDateField;
    cdsStockReceiveDUEDATE: TDateField;
    cdsStockReceiveSITYPE: TStringField;
    cdsStockReceiveACCID: TLargeintField;
    cdsStockReceiveACCNO: TStringField;
    cdsStockReceiveACCNAME: TStringField;
    cdsStockReceiveSTOCKID: TIntegerField;
    cdsStockReceiveSTOCKCODE: TStringField;
    cdsStockReceiveQTY: TFloatField;
    cdsStockReceiveCCYCODE: TStringField;
    cdsStockReceiveCASH_AMT: TFloatField;
    cdsStockReceiveNO_INTRC: TStringField;
    gvwBrowseSIID: TcxGridDBBandedColumn;
    gvwBrowseSINO: TcxGridDBBandedColumn;
    gvwBrowseTRDDATE: TcxGridDBBandedColumn;
    gvwBrowseDUEDATE: TcxGridDBBandedColumn;
    gvwBrowseSITYPE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseACCNO: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseSTOCKID: TcxGridDBBandedColumn;
    gvwBrowseSTOCKCODE: TcxGridDBBandedColumn;
    gvwBrowseQTY: TcxGridDBBandedColumn;
    gvwBrowseCCYCODE: TcxGridDBBandedColumn;
    gvwBrowseCASH_AMT: TcxGridDBBandedColumn;
    gvwBrowseNO_INTRC: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtDueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnView: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsStockDeliverSIID: TLargeintField;
    cdsStockDeliverSINO: TStringField;
    cdsStockDeliverTRDDATE: TDateField;
    cdsStockDeliverDUEDATE: TDateField;
    cdsStockDeliverSITYPE: TStringField;
    cdsStockDeliverACCID: TLargeintField;
    cdsStockDeliverACCNO: TStringField;
    cdsStockDeliverACCNAME: TStringField;
    cdsStockDeliverSTOCKID: TIntegerField;
    cdsStockDeliverSTOCKCODE: TStringField;
    cdsStockDeliverQTY: TFloatField;
    cdsStockDeliverCCYCODE: TStringField;
    cdsStockDeliverCASH_AMT: TFloatField;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwStockDeliver: TcxGridDBBandedTableView;
    gvwStockDeliverSIID: TcxGridDBBandedColumn;
    gvwStockDeliverSINO: TcxGridDBBandedColumn;
    gvwStockDeliverTRDDATE: TcxGridDBBandedColumn;
    gvwStockDeliverDUEDATE: TcxGridDBBandedColumn;
    gvwStockDeliverSITYPE: TcxGridDBBandedColumn;
    gvwStockDeliverACCID: TcxGridDBBandedColumn;
    gvwStockDeliverACCNO: TcxGridDBBandedColumn;
    gvwStockDeliverACCNAME: TcxGridDBBandedColumn;
    gvwStockDeliverSTOCKID: TcxGridDBBandedColumn;
    gvwStockDeliverSTOCKCODE: TcxGridDBBandedColumn;
    gvwStockDeliverQTY: TcxGridDBBandedColumn;
    gvwStockDeliverCCYCODE: TcxGridDBBandedColumn;
    gvwStockDeliverCASH_AMT: TcxGridDBBandedColumn;
    gvwStockDeliverNO_INTRC: TcxGridDBBandedColumn;
    actCreateSelectedStock: TNAction;
    actCreateAllStock: TNAction;
    actCreateGroupStock: TNAction;
    actCreateSelectedStock2: TNAction;
    actCreateAllStock2: TNAction;
    actCreateGroupStock2: TNAction;
    popDeliver: TPopupMenu;
    dxLayoutControl1Item3: TdxLayoutItem;
    chkBusCat: TcxCheckBox;
    lcBusCat: TdxLayoutItem;
    cbBusCat: TcxLookupComboBox;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    actGenerateSettlementInstruction: TNAction;
    cdsStockDeliverCREATEINSTRUCTION: TStringField;
    cdsStockDeliverCUSTODY_INSTRNO: TStringField;
    cdsStockDeliverSTAT: TStringField;
    cdsStockReceiveCREATEINSTRUCTION: TStringField;
    cdsStockReceiveCUSTODY_INSTRNO: TStringField;
    cdsStockReceiveSTAT: TStringField;
    gvwBrowseCREATEINSTRUCTION: TcxGridDBBandedColumn;
    gvwBrowseCUSTODY_INSTRNO: TcxGridDBBandedColumn;
    gvwBrowseSTAT: TcxGridDBBandedColumn;
    gvwStockDeliverCREATEINSTRUCTION: TcxGridDBBandedColumn;
    gvwStockDeliverCUSTODY_INSTRNO: TcxGridDBBandedColumn;
    gvwStockDeliverSTAT: TcxGridDBBandedColumn;
    cbFilter: TcxRadioGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    actSettleProcess: TNAction;
    procedure FormCreate(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actCreateSelectedStockExecute(Sender: TObject);
    procedure actCreateAllStockExecute(Sender: TObject);
    procedure actCreateGroupStockExecute(Sender: TObject);
    procedure actCreateSelectedStock2Execute(Sender: TObject);
    procedure actCreateAllStock2Execute(Sender: TObject);
    procedure actCreateGroupStock2Execute(Sender: TObject);
    procedure chkBusCatClick(Sender: TObject);
    procedure actGenerateSettlementInstructionExecute(Sender: TObject);
    procedure cbFilterClick(Sender: TObject);
    procedure actSettleProcessExecute(Sender: TObject);
  private
    procedure GetViewByDate(ADueDate: TDateTime);
  public
    { Public declarations }
  end;

var
  frmStockSettlement: TfrmStockSettlement;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmBrowseSingle1 }

procedure TfrmStockSettlement.actCreateAllStock2Execute(Sender: TObject);
var
  sSID, sBankAccID: string;
  iSID, iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
begin
  inherited;
  if MessageDlg('Create stock voucher All ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dVoucherDate := StrToDate(gvwStockDeliver.DataController.Controller.SelectedRecords[i].Values[gvwStockDeliverDUEDATE.Index]);

    dmGlobal.RemoteServer.CreateStockVoucherAll(dVoucherDate, 'D');
    MessageDlg('Create stock voucher has done...', mtInformation, [mbOk], 0);
  end;
  cdsStockDeliver.Refresh;
end;

procedure TfrmStockSettlement.actCreateAllStockExecute(Sender: TObject);
var
  sSID, sBankAccID: string;
  iSID, iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
begin
  inherited;
  if MessageDlg('Create stock voucher All ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    dVoucherDate := StrToDate(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseDUEDATE.Index]);

    dmGlobal.RemoteServer.CreateStockVoucherAll(dVoucherDate, 'R');
    MessageDlg('Create Stock voucher has done...', mtInformation, [mbOk], 0);
  end;
  cdsStockReceive.Refresh;
end;

procedure TfrmStockSettlement.actCreateGroupStock2Execute(Sender: TObject);
var
  sSID, sBankAccID, xSID: string;
  dVoucherDate: TDateTime;
  i, j: Integer;
begin
  inherited;
//  if MessageDlg('Create stock voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
//  begin
//    j    := 0;
//    xSid := '';
//
//    for i := 0 to gvwStockDeliver.Controller.SelectedRowCount -1 do
//    begin
//      sSID := gvwStockDeliver.DataController.Controller.SelectedRecords[i].Values[gvwStockDeliverSIID.Index];
//      if i = 0 then
//        xSID := sSID
//      else if i < gvwStockDeliver.Controller.SelectedRowCount then
//        xSID := xSID + ',' + sSID;
//    end;
//
//    dVoucherDate := StrToDate(gvwStockDeliver.DataController.Controller.SelectedRecords[i].Values[gvwStockDeliverDUEDATE.Index]);
//
//    dmGlobal.RemoteServer.CreateStockVoucherGroup(xSID, dVoucherDate, 'D');
//    MessageDlg('Create stock voucher has done...', mtInformation, [mbOk], 0);
//  end;
//  cdsStockDeliver.Refresh;
end;

procedure TfrmStockSettlement.actCreateGroupStockExecute(Sender: TObject);
var
  sSID, sBankAccID, xSID: string;
  iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i, j: Integer;
begin
  inherited;
//  if MessageDlg('Create stock voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
//  begin
//    j    := 0;
//    xSid := '';
//
//    for i := 0 to gvwBrowse.Controller.SelectedRowCount -1 do
//    begin
//      sSID := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseSIID.Index];
//      if i = 0 then
//        xSID := sSID
//      else if i < gvwBrowse.Controller.SelectedRowCount then
//        xSID := xSID + ',' + sSID;
//    end;
//
//    dVoucherDate := StrToDate(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseDUEDATE.Index]);
//
//    dmGlobal.RemoteServer.CreateStockVoucherGroup(xSID, dVoucherDate, 'R');
//    MessageDlg('Create stock voucher has done...', mtInformation, [mbOk], 0);
//    cdsStockReceive.Refresh;
//  end;
end;

procedure TfrmStockSettlement.actCreateSelectedStock2Execute(Sender: TObject);
var
  sSID, sBankAccID: string;
  iSID, iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
  sCashPos: string;
begin
  inherited;
//  if MessageDlg('Create stock voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
//  begin
//    for i := 0 to gvwStockDeliver.Controller.SelectedRowCount -1 do
//    begin
//      sSID         := gvwStockDeliver.DataController.Controller.SelectedRecords[i].Values[gvwStockDeliverSIID.Index];
//      iSID         := StrToInt64(sSID);
//      dVoucherDate := StrToDate(gvwStockDeliver.DataController.Controller.SelectedRecords[i].Values[gvwStockDeliverDUEDATE.Index]);
//
//      dmGlobal.RemoteServer.CreateStockVoucherBySI(iSID, dVoucherDate, 'D');
//      MessageDlg('Create stock voucher has done...', mtInformation, [mbOk], 0);
//    end;
//  end;
//  cdsStockDeliver.Refresh;
end;

procedure TfrmStockSettlement.actCreateSelectedStockExecute(Sender: TObject);
var
  sSID: string;
  iSID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
  sCashPos: string;
begin
  inherited;
//  if MessageDlg('Create stock voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
//  begin
//    for i := 0 to gvwBrowse.Controller.SelectedRowCount -1 do
//    begin
//      sSID         := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseSIID.Index];
//      iSID         := StrToInt64(sSID);
//      dVoucherDate := StrToDate(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseDUEDATE.Index]);
//
//      dmGlobal.RemoteServer.CreateStockVoucherBySI(iSID, dVoucherDate, 'R');
//    end;
//    MessageDlg('Create stock voucher has done...', mtInformation, [mbOk], 0);
//  end;
//  cdsStockReceive.Refresh;
end;

procedure TfrmStockSettlement.actGenerateSettlementInstructionExecute(
  Sender: TObject);
var
  sMessage : string;
begin
  inherited;
  if MessageDlg('Generate Settlement Instruction ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmGlobal.RemoteServer.GenerateCustodiInstruction(dtDueDate.Date, 0, '1', sMessage);
    MessageDlg(sMessage, mtInformation, [mbOk], 0);
    GetViewByDate(dtDueDate.Date);
  end;
end;

procedure TfrmStockSettlement.actSettleProcessExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Settle Process ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dtDueDate.Date = dmGlobal.RemoteServer.GetTransDate then
      MessageDlg(dmGlobal.RemoteServer.SettleStockProcess(dtDueDate.Date), mtInformation, [mbOk], 0)
    else
      MessageError('Due date is not same as trade date');
  end;
end;

procedure TfrmStockSettlement.btnViewClick(Sender: TObject);
begin
  inherited;
  GetViewByDate(dtDueDate.Date);
end;

procedure TfrmStockSettlement.chkBusCatClick(Sender: TObject);
begin
  inherited;
  lcBusCat.Visible := chkBusCat.Checked;
end;

procedure TfrmStockSettlement.cbFilterClick(Sender: TObject);
begin
  inherited;
  if cbFilter.EditValue = 'A' then
  begin
    cdsStockReceive.Filtered := False;
    cdsStockDeliver.Filtered := False;
  end
  else if cbFilter.EditValue = 'S' then
  begin
    cdsStockReceive.Filter   := 'STAT = '+QuotedStr('S');
    cdsStockReceive.Filtered := True;

    cdsStockDeliver.Filter   := 'STAT = '+QuotedStr('S');
    cdsStockDeliver.Filtered := True;
  end
  else if cbFilter.EditValue = 'O' then
  begin
    cdsStockReceive.Filter   := 'STAT = '+QuotedStr('O');
    cdsStockReceive.Filtered := True;

    cdsStockDeliver.Filter   := 'STAT = '+QuotedStr('O');
    cdsStockDeliver.Filtered := True;
  end;

end;

procedure TfrmStockSettlement.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBussCat.Close;
    cdsLuBussCat.Open;
  end;
  dtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  lcBusCat.Visible := chkBusCat.Checked;
  cbBusCat.EditValue := -1;
  GetViewByDate(dtDueDate.Date);
end;

procedure TfrmStockSettlement.FormResize(Sender: TObject);
begin
  inherited;
  cxgrid2.Height := round((Self.Height - dxLayoutControl1.Height)/2);
end;

procedure TfrmStockSettlement.GetViewByDate(ADueDate: TDateTime);
begin
  cdsStockReceive.Close;
  cdsStockReceive.Params[0].AsDateTime := ADueDate;
  cdsStockReceive.Params[1].AsInteger := chkBusCat.EditValue;
  cdsStockReceive.Params[2].AsInteger := cbBusCat.EditValue;
  cdsStockReceive.Open;

  cdsStockDeliver.Close;
  cdsStockDeliver.Params[0].AsDateTime := ADueDate;
  cdsStockDeliver.Params[1].AsInteger := chkBusCat.EditValue;
  cdsStockDeliver.Params[2].AsInteger := cbBusCat.EditValue;
  cdsStockDeliver.Open;

//  cdsStockLink.Close;
//  cdsStockLink.Open;
end;

Initialization
  RegisterClass(TfrmStockSettlement);

end.
