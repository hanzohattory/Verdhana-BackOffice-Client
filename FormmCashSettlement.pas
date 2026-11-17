unit FormmCashSettlement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseSingle, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
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
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, cxGridDBTableView, cxCheckBox, System.Actions,
  System.ImageList, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmCashSettlement = class(TfrmBrowseSingle)
    cdsBankCashReceived: TNClientDataset;
    cdsBankCashReceived_D: TNClientDataset;
    cdsBankCashReceived_DSIID: TLargeintField;
    cdsBankCashReceived_DLINKID: TLargeintField;
    cdsBankCashReceived_DDUEDATE: TDateField;
    cdsBankCashReceived_DBASE_CCYCODE: TStringField;
    cdsBankCashReceived_DBASE_AMT: TFloatField;
    cdsBankCashReceived_DSETTLE_CCY: TStringField;
    cdsBankCashReceived_DSETTLE_EXRATE: TFloatField;
    cdsBankCashReceived_DSETTLE_AMT: TFloatField;
    cdsBankCashReceivedSIID: TLargeintField;
    cdsBankCashReceivedSINO: TStringField;
    cdsBankCashReceivedTRDDATE: TDateField;
    cdsBankCashReceivedDUEDATE: TDateField;
    cdsBankCashReceivedSITYPE: TStringField;
    cdsBankCashReceivedACCID: TLargeintField;
    cdsBankCashReceivedACCNO: TStringField;
    cdsBankCashReceivedACCNAME: TStringField;
    cdsBankCashReceivedBANKID: TIntegerField;
    cdsBankCashReceivedBANKCODE: TStringField;
    cdsBankCashReceivedBANKNO: TStringField;
    cdsBankCashReceivedBANKNAME: TStringField;
    cdsBankCashReceivedBANKBRANCH: TStringField;
    cdsBankCashReceivedBASE_CCYCODE: TStringField;
    cdsBankCashReceivedBASE_NETAMT: TFloatField;
    cdsBankCashReceivedSETTLE_CCYCODE: TStringField;
    cdsBankCashReceivedTRANSFER_MODE: TStringField;
    cdsBankCashReceivedBANK_CHARGES: TFloatField;
    cdsBankCashReceivedSETTLE_EXRATE: TFloatField;
    cdsBankCashReceivedSETTLE_NETAMT: TFloatField;
    cdsBankCashReceivedNO_INTRC: TStringField;
    gvwBrowseSIID: TcxGridDBBandedColumn;
    gvwBrowseSINO: TcxGridDBBandedColumn;
    gvwBrowseTRDDATE: TcxGridDBBandedColumn;
    gvwBrowseDUEDATE: TcxGridDBBandedColumn;
    gvwBrowseSITYPE: TcxGridDBBandedColumn;
    gvwBrowseACCID: TcxGridDBBandedColumn;
    gvwBrowseACCNO: TcxGridDBBandedColumn;
    gvwBrowseACCNAME: TcxGridDBBandedColumn;
    gvwBrowseBANKID: TcxGridDBBandedColumn;
    gvwBrowseBANKCODE: TcxGridDBBandedColumn;
    gvwBrowseBANKNO: TcxGridDBBandedColumn;
    gvwBrowseBANKNAME: TcxGridDBBandedColumn;
    gvwBrowseBANKBRANCH: TcxGridDBBandedColumn;
    gvwBrowseBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwBrowseBASE_NETAMT: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwBrowseTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwBrowseBANK_CHARGES: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwBrowseSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwBrowseNO_INTRC: TcxGridDBBandedColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtDueDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    btnView: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dsBankCashReceived_D: TDataSource;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dsBankCashPayment: TDataSource;
    cdsBankCashPayment: TNClientDataset;
    cxGrid2: TcxGrid;
    gvwPayment: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    gvwPayment2: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    gvwPaymentSIID: TcxGridDBBandedColumn;
    gvwPaymentSINO: TcxGridDBBandedColumn;
    gvwPaymentTRDDATE: TcxGridDBBandedColumn;
    gvwPaymentDUEDATE: TcxGridDBBandedColumn;
    gvwPaymentSITYPE: TcxGridDBBandedColumn;
    gvwPaymentACCID: TcxGridDBBandedColumn;
    gvwPaymentACCNO: TcxGridDBBandedColumn;
    gvwPaymentACCNAME: TcxGridDBBandedColumn;
    gvwPaymentBANKID: TcxGridDBBandedColumn;
    gvwPaymentBANKCODE: TcxGridDBBandedColumn;
    gvwPaymentBANKNO: TcxGridDBBandedColumn;
    gvwPaymentBANKNAME: TcxGridDBBandedColumn;
    gvwPaymentBANKBRANCH: TcxGridDBBandedColumn;
    gvwPaymentBASE_CCYCODE: TcxGridDBBandedColumn;
    gvwPaymentBASE_NETAMT: TcxGridDBBandedColumn;
    gvwPaymentSETTLE_CCYCODE: TcxGridDBBandedColumn;
    gvwPaymentTRANSFER_MODE: TcxGridDBBandedColumn;
    gvwPaymentBANK_CHARGES: TcxGridDBBandedColumn;
    gvwPaymentSETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwPaymentSETTLE_NETAMT: TcxGridDBBandedColumn;
    gvwPaymentNO_INTRC: TcxGridDBBandedColumn;
    gvwPayment2SIID: TcxGridDBBandedColumn;
    gvwPayment2LINKID: TcxGridDBBandedColumn;
    gvwPayment2DUEDATE: TcxGridDBBandedColumn;
    gvwPayment2BASE_CCYCODE: TcxGridDBBandedColumn;
    gvwPayment2BASE_AMT: TcxGridDBBandedColumn;
    gvwPayment2SETTLE_CCY: TcxGridDBBandedColumn;
    gvwPayment2SETTLE_EXRATE: TcxGridDBBandedColumn;
    gvwPayment2SETTLE_AMT: TcxGridDBBandedColumn;
    cdsBankCashReceivedCASH_POS: TFloatField;
    gvwBrowseCASH_POS: TcxGridDBBandedColumn;
    actCreateCashVoucherBySI: TNAction;
    actCreateCashVoucherAll: TNAction;
    actCreateCashVoucherGroup: TNAction;
    CreateVoucher1: TMenuItem;
    N5: TMenuItem;
    CreateCashVoucherBySettlementInstruction1: TMenuItem;
    CreateCashVoucherAll1: TMenuItem;
    popGridPayment: TPopupMenu;
    CreateVoucher2: TMenuItem;
    actCreateCashVoucherBySI2: TNAction;
    actCreateCashVoucherAll2: TNAction;
    actCreateCashVoucherGroup2: TNAction;
    CreateCashVoucherBySettlementInstruction2: TMenuItem;
    CreateCashVoucherAll2: TMenuItem;
    cdsAccSaveKeep: TNClientDataset;
    cdsAccSaveKeepACCID: TIntegerField;
    cdsAccSaveKeepSAVEKEEP: TIntegerField;
    cdsBankCashPaymentSIID: TLargeintField;
    cdsBankCashPaymentSINO: TStringField;
    cdsBankCashPaymentTRDDATE: TDateField;
    cdsBankCashPaymentDUEDATE: TDateField;
    cdsBankCashPaymentSITYPE: TStringField;
    cdsBankCashPaymentACCID: TLargeintField;
    cdsBankCashPaymentACCNO: TStringField;
    cdsBankCashPaymentACCNAME: TStringField;
    cdsBankCashPaymentBANKID: TIntegerField;
    cdsBankCashPaymentBANKCODE: TStringField;
    cdsBankCashPaymentBANKNO: TStringField;
    cdsBankCashPaymentBANKNAME: TStringField;
    cdsBankCashPaymentBANKBRANCH: TStringField;
    cdsBankCashPaymentBASE_CCYCODE: TStringField;
    cdsBankCashPaymentBASE_NETAMT: TFloatField;
    cdsBankCashPaymentSETTLE_CCYCODE: TStringField;
    cdsBankCashPaymentTRANSFER_MODE: TStringField;
    cdsBankCashPaymentBANK_CHARGES: TFloatField;
    cdsBankCashPaymentSETTLE_EXRATE: TFloatField;
    cdsBankCashPaymentSETTLE_NETAMT: TFloatField;
    cdsBankCashPaymentNO_INTRC: TStringField;
    cdsBankCashPaymentBANKACCOUNTID: TIntegerField;
    cdsBankCashReceivedBANKACCOUNTID: TIntegerField;
    gvwPaymentBANKACCOUNTID: TcxGridDBBandedColumn;
    gvwBrowseBANKACCOUNTID: TcxGridDBBandedColumn;
    chkBusCat: TcxCheckBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cbBusCat: TcxLookupComboBox;
    lcBusCat: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    procedure btnViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actCreateCashVoucherBySIExecute(Sender: TObject);
    procedure actCreateCashVoucherAllExecute(Sender: TObject);
    procedure actCreateCashVoucherBySI2Execute(Sender: TObject);
    procedure actCreateCashVoucherAll2Execute(Sender: TObject);
    procedure actCreateCashVoucherGroupExecute(Sender: TObject);
    procedure actCreateCashVoucherGroup2Execute(Sender: TObject);
    procedure chkBusCatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashSettlement: TfrmCashSettlement;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;

procedure TfrmCashSettlement.actCreateCashVoucherAllExecute(Sender: TObject);
var
  sSID, sBankAccID: string;
  iSID, iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
  bContinue: Boolean;
begin
  inherited;
  i := 0;
  cdsBankCashReceived.DisableControls;
  if MessageDlg('Create cash voucher All ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    cdsBankCashReceived.First;

    while cdsBankCashReceived.Eof do
    begin
      if VarIsNull(cdsBankCashReceivedCASH_POS.AsFloat) or (cdsBankCashReceivedCASH_POS.AsFloat = 0) then
      begin
        cdsAccSaveKeep.Close;
        cdsAccSaveKeep.Params[0].AsInteger := cdsBankCashReceivedACCID.AsInteger;
        cdsAccSaveKeep.Open;

        if cdsAccSaveKeepSAVEKEEP.AsString = '0' then
          bContinue := True
        else
          bContinue := False;
      end
      else
        bContinue := True;

      if bContinue then
      begin
        iSID         := cdsBankCashReceivedSIID.AsLargeInt;
        dVoucherDate := cdsBankCashReceivedDUEDATE.AsDateTime;
//        sBankAccID   := txtBankAccNo.EditValue;
//        iBankAccID   := StrToInt64(sBankAccID);
        iBankAccID   := cdsBankCashReceivedBANKACCOUNTID.AsInteger;

        dmGlobal.RemoteServer.CreateCashVoucherBySI(iSID, dVoucherDate, 'R');
        Inc(i);
      end;

      Sleep(100);

      cdsBankCashReceived.Next;
    end;
  end;

  MessageDlg('Create all cash voucher has done, '+IntToStr(i)+' voucher has been created...', mtInformation, [mbOk], 0);
  cdsBankCashReceived.EnableControls;

  cdsBankCashReceived.Close;
  cdsBankCashReceived.Params[0].AsDateTime := txtDueDate.Date;
  cdsBankCashReceived.Params[1].AsInteger  := chkBusCat.EditValue;
  cdsBankCashReceived.Params[2].AsInteger  := cbBusCat.EditValue;
  cdsBankCashREceived.Open;

  cdsBankCashReceived_D.Close;
  cdsBankCashReceived_D.Open;
end;

procedure TfrmCashSettlement.actCreateCashVoucherBySIExecute(Sender: TObject);
var
  sSID, sBankAccID: string;
  iSID, iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
  sCashPos: string;
  bContinue: Boolean;
begin
  inherited;
  if MessageDlg('Create cash voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    for i := 0 to gvwBrowse.Controller.SelectedRowCount -1 do
    begin
      if VarIsNull(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseCASH_POS.Index]) then
        sCashPos := '0'
      else
        sCashPos := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseCASH_POS.Index];

      cdsAccSaveKeep.Close;
      cdsAccSaveKeep.Params[0].AsInteger := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseACCID.Index];
      cdsAccSaveKeep.Open;

      if sCashPos = '0' then
      begin
        if cdsAccSaveKeepSAVEKEEP.AsString = '0' then
          sCashPos := '1'
        else
          sCashPos := '0';
      end;

      if StrToFloatDef(sCashPos, 0) > 0 then
      begin
        sSID         := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseSIID.Index];
        iSID         := StrToInt64(sSID);
        dVoucherDate := StrToDate(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseDUEDATE.Index]);
//        sBankAccID   := txtBankAccNo.EditValue;
//        iBankAccID   := StrToInt64(sBankAccID);
//        iBankAccID   := StrToInt64(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseBANKACCOUNTID.Index]);

        dmGlobal.RemoteServer.CreateCashVoucherBySI(iSID, dVoucherDate, 'R');
      end
      else
        MessageDlg(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseSINO.Index]+' is not enought cash on hand...', mtError, [mbOk], 0);

      Sleep(100);
    end;

  end;

  cdsBankCashReceived.Close;
  cdsBankCashReceived.Params[0].AsDateTime := txtDueDate.Date;
  cdsBankCashReceived.Params[1].AsInteger := chkBusCat.EditValue;
  cdsBankCashReceived.Params[2].AsInteger := cbBusCat.EditValue;
  cdsBankCashREceived.Open;

  cdsBankCashReceived_D.Close;
  cdsBankCashReceived_D.Open;
end;

procedure TfrmCashSettlement.actCreateCashVoucherGroup2Execute(Sender: TObject);
var
  sSID, sBankAccID, xSID: string;
  iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i, j: Integer;
begin
  inherited;
  if MessageDlg('Create cash voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    j    := 0;
    xSid := '';

    for i := 0 to gvwPayment.Controller.SelectedRowCount -1 do
    begin
      sSID := gvwPayment.DataController.Controller.SelectedRecords[i].Values[gvwPaymentSIID.Index];
      if i = 0 then
        xSID := sSID
      else if i < gvwPayment.Controller.SelectedRowCount then
        xSID := xSID + ',' + sSID;
    end;

    dVoucherDate := StrToDate(gvwPayment.DataController.Controller.SelectedRecords[i].Values[gvwPaymentDUEDATE.Index]);
//    sBankAccID   := txtBankAccNo.EditValue;
//    iBankAccID   := StrToInt64(sBankAccID);
    iBankAccID   := StrToInt64Def(gvwPayment.DataController.Controller.SelectedRecords[i].Values[gvwPaymentBANKACCOUNTID.Index], -1);

    dmGlobal.RemoteServer.CreateCashVoucherGroup(xSID, dVoucherDate, iBankAccID, 'P');
    MessageDlg('Create selected cash voucher has done...', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCashSettlement.actCreateCashVoucherGroupExecute(Sender: TObject);
var
  sSID, sBankAccID, xSID: string;
  iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i, j: Integer;
begin
  inherited;
  if MessageDlg('Create cash voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    j    := 0;
    xSid := '';

    for i := 0 to gvwBrowse.Controller.SelectedRowCount -1 do
    begin
      sSID := gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseSIID.Index];
      if i = 0 then
        xSID := sSID
      else if i < gvwBrowse.Controller.SelectedRowCount then
        xSID := xSID + ',' + sSID;
    end;

    dVoucherDate := StrToDate(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseDUEDATE.Index]);
//    sBankAccID   := txtBankAccNo.EditValue;
//    iBankAccID   := StrToInt64(sBankAccID);
    iBankAccID   := StrToInt64Def(gvwBrowse.DataController.Controller.SelectedRecords[i].Values[gvwBrowseBANKACCOUNTID.Index], -1);

    dmGlobal.RemoteServer.CreateCashVoucherGroup(xSID, dVoucherDate, iBankAccID, 'R');
    MessageDlg('Create cash voucher has done...', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCashSettlement.btnViewClick(Sender: TObject);
begin
  inherited;
  cdsBankCashReceived.Close;
  cdsBankCashReceived.Params[0].AsDateTime := txtDueDate.Date;
  cdsBankCashReceived.Params[1].AsInteger := chkBusCat.EditValue;
  cdsBankCashReceived.Params[2].AsInteger := cbBusCat.EditValue;
  cdsBankCashREceived.Open;

  cdsBankCashPayment.Close;
  cdsBankCashPayment.Params[0].AsDateTime := txtDueDate.Date;
  cdsBankCashPayment.Params[1].AsInteger := chkBusCat.EditValue;
  cdsBankCashPayment.Params[2].AsInteger := cbBusCat.EditValue;
  cdsBankCashPayment.Open;

  cdsBankCashReceived_D.Close;
  cdsBankCashReceived_D.Open;

end;

procedure TfrmCashSettlement.chkBusCatClick(Sender: TObject);
begin
  inherited;
  lcBusCat.Visible := chkBusCat.Checked;
end;

procedure TfrmCashSettlement.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    cdsLuBussCat.Close;
    cdsLuBussCat.Open;

    cdsLuAccountBankSettlement.Close;
    cdsLuAccountBankSettlement.Open;
  end;

  txtDueDate.Date := dmGlobal.RemoteServer.GetTransDate;
  lcBusCat.Visible := chkBusCat.Checked;
  cbBusCat.EditValue := -1;

  btnView.Click;
end;

procedure TfrmCashSettlement.FormResize(Sender: TObject);
begin
  inherited;
  cxGrid1.Height := Round((Self.Height - dxLayoutControl1.Height) / 2);
end;

procedure TfrmCashSettlement.FormShow(Sender: TObject);
begin
  inherited;
  txtDueDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmCashSettlement.actCreateCashVoucherBySI2Execute(Sender: TObject);
var
  sSID, sBankAccID: string;
  iSID, iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
  sCashPos: string;
begin
  inherited;
  if MessageDlg('Create cash voucher by selected ID ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    for i := 0 to gvwPayment.Controller.SelectedRowCount -1 do
    begin
      sSID         := gvwPayment.DataController.Controller.SelectedRecords[i].Values[gvwPaymentSIID.Index];
      iSID         := StrToInt64(sSID);
      dVoucherDate := StrToDate(gvwPayment.DataController.Controller.SelectedRecords[i].Values[gvwPaymentDUEDATE.Index]);
//      sBankAccID   := txtBankAccNo.EditValue;
//      iBankAccID   := StrToInt64(sBankAccID);
//      iBankAccID   := StrToInt64(gvwPayment.DataController.Controller.SelectedRecords[i].Values[gvwPaymentBANKACCOUNTID.Index]);

      dmGlobal.RemoteServer.CreateCashVoucherBySI(iSID, dVoucherDate, 'P');
      MessageDlg('Create cash voucher has done...', mtInformation, [mbOk], 0);
    end;
  end;

  cdsBankCashPayment.Close;
  cdsBankCashPayment.Params[0].AsDateTime := txtDueDate.Date;
  cdsBankCashPayment.Params[1].AsInteger := chkBusCat.EditValue;
  cdsBankCashPayment.Params[2].AsInteger := cbBusCat.EditValue;
  cdsBankCashPayment.Open;

  cdsBankCashReceived_D.Close;
  cdsBankCashReceived_D.Open;
end;

procedure TfrmCashSettlement.actCreateCashVoucherAll2Execute(Sender: TObject);
var
  sSID, sBankAccID: string;
  iSID, iBankAccID: Int64;
  dVoucherDate: TDateTime;
  i: Integer;
begin
  inherited;

  if MessageDlg('Create all cash voucher ?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    cdsBankCashPayment.First;
    while not cdsBankCashPayment.Eof do
    begin
//      sBankAccID   := txtBankAccNo.EditValue;
//      iBankAccID   := StrToInt64(sBankAccID);
      iBankAccID := cdsBankCashPaymentBANKACCOUNTID.AsInteger;
      dmGlobal.RemoteServer.CreateCashVoucherBySI(cdsBankCashPaymentSIID.AsLargeInt, cdsBankCashPaymentDUEDATE.AsDateTime, 'P');

      cdsBankCashPayment.Next;
    end;

    MessageDlg('Create all cash voucher has done...', mtInformation, [mbOk], 0);
    cdsBankCashPayment.Close;
    cdsBankCashPayment.Params[0].AsDateTime := txtDueDate.Date;
    cdsBankCashPayment.Params[1].AsInteger := chkBusCat.EditValue;
    cdsBankCashPayment.Params[2].AsInteger := cbBusCat.EditValue;
    cdsBankCashPayment.Open;

    cdsBankCashReceived_D.Close;
    cdsBankCashReceived_D.Open;
  end;

end;

Initialization
  RegisterClass(TfrmCashSettlement);

end.
