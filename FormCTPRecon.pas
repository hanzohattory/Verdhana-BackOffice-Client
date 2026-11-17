unit FormCTPRecon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseNoGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, Data.DB, Vcl.Menus, cxStyles,
  dxPSCore, dxPScxCommon, Vcl.ImgList, cxPropertiesStore, NActionPermission,
  cxCalendar, cxBarEditItem, Datasnap.DBClient, NClientDataset, cxButtonEdit,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  cxGridDBTableView, ComObj;

type
  TfrmCTPRecon = class(TfrmBrowseNoGrid)
    cdsBondsDealTicket: TNClientDataset;
    BarMBrowseBar2: TdxBar;
    cdsBondsDealTicketTRADEBOND_ID: TLargeintField;
    cdsBondsDealTicketTRADEDATE: TDateTimeField;
    cdsBondsDealTicketINSTRUMENT_ID: TLargeintField;
    cdsBondsDealTicketINSTRUMENT_CODE: TStringField;
    cdsBondsDealTicketSHORTNAME: TWideStringField;
    cdsBondsDealTicketTRADETYPE: TStringField;
    cdsBondsDealTicketCCY: TStringField;
    cdsBondsDealTicketFACEVALUE: TFloatField;
    cdsBondsDealTicketINTERESTRATE: TFloatField;
    cdsBondsDealTicketBCTPREFF: TStringField;
    cdsBondsDealTicketBACCID: TLargeintField;
    cdsBondsDealTicketBPRICE: TFloatField;
    cdsBondsDealTicketSCTPREFF: TStringField;
    cdsBondsDealTicketSACCID: TLargeintField;
    cdsBondsDealTicketSPRICE: TFloatField;
    cdsBondsDealTicketSTAT: TStringField;
    cdsBondsDealTicketLASTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketNEXTCOUPONDATE: TDateTimeField;
    cdsBondsDealTicketPERIODECOUPON: TIntegerField;
    cdsBondsDealTicketHOLD_TAX: TFloatField;
    cdsBondsDealTicketMODDA: TDateTimeField;
    cdsBondsDealTicketMODUI: TStringField;
    cdsBondsDealTicketAPPDA: TDateTimeField;
    cdsBondsDealTicketAPPUI: TStringField;
    cdsBondsDealTicketISDEL: TIntegerField;
    cdsBondsDealTicketID: TLargeintField;
    cdsBondsDealTicketSCAPGAINTAX: TFloatField;
    cdsBondsDealTicketDUEDAYS: TIntegerField;
    cdsBondsDealTicketDUEBUYSTOCK: TIntegerField;
    cdsBondsDealTicketDUESELLSTOCK: TIntegerField;
    cdsBondsDealTicketDUEBUYCASH: TIntegerField;
    cdsBondsDealTicketDUESELLCASH: TIntegerField;
    cdsBondsDealTicketSACCCODE: TStringField;
    cdsBondsDealTicketBACCCODE: TStringField;
    cdsBondsDealTicketSACCNAME: TStringField;
    cdsBondsDealTicketBACCNAME: TStringField;
    cdsBondsDealTicketACCRDAYS: TIntegerField;
    cdsBondsDealTicketCOUPONDAY: TIntegerField;
    cdsBondsDealTicketBONDCONID: TLargeintField;
    cdsBondsDealTicketMARKETCODE: TStringField;
    cdsBondsDealTicketWHTPCT: TFloatField;
    cdsBondsDealTicketRVSDDATE: TDateField;
    cdsBondsDealTicketRVSD_DTID: TLargeintField;
    cdsBondsDealTicketSSALES: TLargeintField;
    cdsBondsDealTicketBSALES: TLargeintField;
    cdsBondsDealTicketHOLDPERIOD: TIntegerField;
    cdsBondsDealTicketSCAPGAIN: TFloatField;
    cdsBondsDealTicketINTEREST_AMT: TFloatField;
    cdsBondsDealTicketSPROCEED: TFloatField;
    cdsBondsDealTicketSNETPROCEED: TFloatField;
    cdsBondsDealTicketBPROCEED: TFloatField;
    cdsBondsDealTicketBNETPROCEED: TFloatField;
    cdsBondsDealTicketBCAPGAIN: TFloatField;
    cdsBondsDealTicketVALUEDATE: TDateTimeField;
    cdsBondsDealTicketBCAPGAINTAX: TFloatField;
    cdsBondsDealTicketSCOST_PRICE: TFloatField;
    cdsBondsDealTicketSCOST_AMT: TFloatField;
    cdsBondsDealTicketBCOST_PRICE: TFloatField;
    cdsBondsDealTicketBCOST_AMT: TFloatField;
    cdsBondsDealTicketMATURITY_DATE: TDateTimeField;
    cdsBondsDealTicketHOLDING_INTEREST: TFloatField;
    cdsBondsDealTicketHOLDING_INTEREST_TAX: TFloatField;
    cdsBondsDealTicketWHT_TAX: TFloatField;
    txtTradeDate: TcxBarEditItem;
    txtCTPFileName: TcxBarEditItem;
    Panel1: TPanel;
    cdsBondsDealTicketBS: TNClientDataset;
    cdsBondsDealTicketBSTRADEDATE: TDateTimeField;
    cdsBondsDealTicketBSINSTRUMENTNO: TStringField;
    cdsBondsDealTicketBSSHORTNAME: TStringField;
    cdsBondsDealTicketBSFACEVALUE: TFloatField;
    cdsBondsDealTicketBSPRICE: TFloatField;
    cdsBondsDealTicketBSCTPREFF: TStringField;
    cdsBondsDealTicketBSVALUEDATE: TDateTimeField;
    cdsBondsDealTicketBSACCNO: TStringField;
    cdsBondsDealTicketBSACCCNAME: TStringField;
    grdDealTicketLevel1: TcxGridLevel;
    grdDealTicket: TcxGrid;
    gvwDealTicket: TcxGridDBBandedTableView;
    gvwDealTicketTRADEDATE: TcxGridDBBandedColumn;
    gvwDealTicketINSTRUMENTNO: TcxGridDBBandedColumn;
    gvwDealTicketSHORTNAME: TcxGridDBBandedColumn;
    gvwDealTicketFACEVALUE: TcxGridDBBandedColumn;
    gvwDealTicketPRICE: TcxGridDBBandedColumn;
    gvwDealTicketCTPREFF: TcxGridDBBandedColumn;
    gvwDealTicketVALUEDATE: TcxGridDBBandedColumn;
    gvwDealTicketACCNO: TcxGridDBBandedColumn;
    gvwDealTicketACCCNAME: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    gvwCTP: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    cdsCTP: TNClientDataset;
    cdsCTPCTPID: TLargeintField;
    cdsCTPREPORTCODE: TStringField;
    cdsCTPREPORTSTATUS: TStringField;
    cdsCTPCOMPLETENESS_STATUS: TStringField;
    cdsCTPCOUNTERPARTY: TStringField;
    cdsCTPREPORTTYPE: TStringField;
    cdsCTPMYPOSITION: TStringField;
    cdsCTPTRADEDATE: TDateField;
    cdsCTPTRADETIME: TTimeField;
    cdsCTPINSTRUCTIONDATE: TDateField;
    cdsCTPINSTRUCTIONTIME: TTimeField;
    cdsCTPENTRYDATE: TDateField;
    cdsCTPENTRYTIME: TTimeField;
    cdsCTPCONFIRMLIMIT: TTimeField;
    cdsCTPCOMPLETEDATE: TDateField;
    cdsCTPCOMPLETETIME: TTimeField;
    cdsCTPCONFIRMDATE: TDateField;
    cdsCTPCONFIRMTIME: TTimeField;
    cdsCTPSETTLEDATE: TDateField;
    cdsCTPTRANSAC_TYPE: TStringField;
    cdsCTPSECURITY_ID: TStringField;
    cdsCTPPRICE: TFloatField;
    cdsCTPYIELD: TStringField;
    cdsCTPVOL_BIO: TIntegerField;
    cdsCTPVALUE: TFloatField;
    cdsCTPRATE: TFloatField;
    cdsCTPTENURE: TStringField;
    cdsCTPREVERSEDATE: TDateField;
    cdsCTPREMARKS: TStringField;
    cdsCTPREFERENCE: TStringField;
    dsCTP: TDataSource;
    dxBarButton2: TdxBarButton;
    odImportData: TOpenDialog;
    gvwCTPCTPID: TcxGridDBBandedColumn;
    gvwCTPREPORTCODE: TcxGridDBBandedColumn;
    gvwCTPREPORTSTATUS: TcxGridDBBandedColumn;
    gvwCTPCOMPLETENESS_STATUS: TcxGridDBBandedColumn;
    gvwCTPCOUNTERPARTY: TcxGridDBBandedColumn;
    gvwCTPREPORTTYPE: TcxGridDBBandedColumn;
    gvwCTPMYPOSITION: TcxGridDBBandedColumn;
    gvwCTPTRADEDATE: TcxGridDBBandedColumn;
    gvwCTPTRADETIME: TcxGridDBBandedColumn;
    gvwCTPINSTRUCTIONDATE: TcxGridDBBandedColumn;
    gvwCTPINSTRUCTIONTIME: TcxGridDBBandedColumn;
    gvwCTPENTRYDATE: TcxGridDBBandedColumn;
    gvwCTPENTRYTIME: TcxGridDBBandedColumn;
    gvwCTPCONFIRMLIMIT: TcxGridDBBandedColumn;
    gvwCTPCOMPLETEDATE: TcxGridDBBandedColumn;
    gvwCTPCOMPLETETIME: TcxGridDBBandedColumn;
    gvwCTPCONFIRMDATE: TcxGridDBBandedColumn;
    gvwCTPCONFIRMTIME: TcxGridDBBandedColumn;
    gvwCTPSETTLEDATE: TcxGridDBBandedColumn;
    gvwCTPTRANSAC_TYPE: TcxGridDBBandedColumn;
    gvwCTPSECURITY_ID: TcxGridDBBandedColumn;
    gvwCTPPRICE: TcxGridDBBandedColumn;
    gvwCTPYIELD: TcxGridDBBandedColumn;
    gvwCTPVOL_BIO: TcxGridDBBandedColumn;
    gvwCTPVALUE: TcxGridDBBandedColumn;
    gvwCTPRATE: TcxGridDBBandedColumn;
    gvwCTPTENURE: TcxGridDBBandedColumn;
    gvwCTPREVERSEDATE: TcxGridDBBandedColumn;
    gvwCTPREMARKS: TcxGridDBBandedColumn;
    gvwCTPREFERENCE: TcxGridDBBandedColumn;
    cdsCTPMODDA: TDateTimeField;
    cdsCTPMODUI: TStringField;
    cdsCTPAPPDA: TDateTimeField;
    cdsCTPAPPUI: TStringField;
    cdsCTPISDEL: TIntegerField;
    cdsCTPID: TLargeintField;
    cdsCTPSECOND_LEG_PRICE: TFloatField;
    cdsCTPSECOND_LEG_YIELD: TStringField;
    dxBarButton3: TdxBarButton;
    gvwDealTicketFLAG: TcxGridDBBandedColumn;
    cdsBondsDealTicketBSFLAG: TStringField;
    cdsBondsDealTicketBSBS: TStringField;
    gvwDealTicketBS: TcxGridDBBandedColumn;
    cdsBondsDealTicketMATCH_BUY: TStringField;
    cdsBondsDealTicketMATCH_SELL: TStringField;
    cdsBondsDealTicketBSINSTRUMENTCODE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtTradeDatePropertiesCloseUp(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure txtCTPFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure gvwDealTicketCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mnuRefreshClick(Sender: TObject);
  private
    procedure ShowBondsDealTicket(ATradeDate: TDateTime);
    procedure ShowCTP(ATradeDate: TDateTime);
    procedure ImportData(AFileName: string);

    procedure UpdateBondsDealTicket(ABS, ACTPReff: string);
  public
    { Public declarations }
  end;

var
  frmCTPRecon: TfrmCTPRecon;

implementation

{$R *.dfm}

uses DataGlobal, DataLookup;


procedure TfrmCTPRecon.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  if txtCTPFileName.EditValue <> '' then
    ImportData(txtCTPFileName.EditValue);
end;

procedure TfrmCTPRecon.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  cdsBondsDealTicketBS.DisableControls;
  cdsCTP.DisableControls;

  cdsBondsDealTicketBS.First;
  while not cdsBondsDealTicketBS.Eof do
  begin
    if cdsBondsDealTicketBSFLAG.AsString <> '1' then
    begin
      if cdsCTP.Locate('REPORTCODE', cdsBondsDealTicketBSCTPREFF.AsString, []) then
      begin
        if (cdsCTPSECURITY_ID.AsString = cdsBondsDealTicketBSINSTRUMENTNO.AsString) and
           (cdsCTPVALUE.AsFloat = cdsBondsDealTicketBSFACEVALUE.AsFloat) and
           (cdsCTPPRICE.AsFloat = cdsBondsDealTicketBSPRICE.AsFloat) and
           (cdsCTPSETTLEDATE.AsDateTime = cdsBondsDealTicketBSVALUEDATE.AsDateTime) and
           (cdsCTPCOUNTERPARTY.AsString = cdsBondsDealTicketBSACCNO.AsString) and
           (cdsCTPMYPOSITION.AsString = cdsBondsDealTicketBSBS.AsString)
        then
        begin
          cdsBondsDealTicketBS.Edit;
          cdsBondsDealTicketBSFLAG.AsString := '1';
          cdsBondsDealTicketBS.Post;

          UpdateBondsDealTicket(cdsBondsDealTicketBSBS.AsString, cdsBondsDealTicketBSCTPREFF.AsString);
        end
        else
        begin
          cdsBondsDealTicketBS.Edit;
          cdsBondsDealTicketBSFLAG.AsString := '2';
          cdsBondsDealTicketBS.Post;
        end;
      end;
    end;

    cdsBondsDealTicketBS.Next;
  end;

  cdsCTP.EnableControls;
  cdsBondsDealTicketBS.EnableControls;
end;

procedure TfrmCTPRecon.FormCreate(Sender: TObject);
begin
  MasterData := gvwDealTicket;
  inherited;

  dmGlobal.IntDataLookup.cdsLuInstrumentBonds.Close;
  dmGlobal.IntDataLookup.cdsLuInstrumentBonds.Open;

  ShowBondsDealTicket(dmGlobal.RemoteServer.GetTransDate);
  ShowCTP(dmGlobal.RemoteServer.GetTransDate);
end;

procedure TfrmCTPRecon.FormResize(Sender: TObject);
begin
  inherited;
  grdDealTicket.Width := Round(Panel1.Width / 2);
end;

procedure TfrmCTPRecon.FormShow(Sender: TObject);
begin
  inherited;
  txtTradeDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmCTPRecon.gvwDealTicketCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Values[gvwDealTicketFLAG.Index] = '1' then
    ACanvas.Brush.Color := clMoneyGreen
  else if AViewInfo.GridRecord.Values[gvwDealTicketFLAG.Index] = '2' then
    ACanvas.Brush.Color := clRed;

end;

procedure TfrmCTPRecon.ImportData(AFileName: string);
var
  oXlsApps: OleVariant;
  iMaxRow,
  iMaxCol,
  i, j: Integer;
  oSheet,
  vArrData: Variant;
  dTradeDate: TDateTime;
  x: Integer;
begin
  Application.ProcessMessages;
  x:= 0;

  oXlsApps := CreateOleObject('Excel.Application');
  oXlsApps.WorkBooks.Open(Trim(AFileName));

  oSheet   := oXlsApps.WorkSheets[1];
  vArrData := oSheet.Usedrange.Value;

  iMaxRow := oSheet.Usedrange.EntireRow.Count;
  iMaxCol := oSheet.Usedrange.EntireColumn.Count;

  for i := 2 to iMaxRow do
  begin
    dTradeDate := vArrData[i,7];
    if txtTradeDate.EditValue = dTradeDate then
    begin
      cdsCTP.Append;
      cdsCTPCTPID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_CTP');
      for j := 0 to cdsCTP.FieldCount -11 do
        cdsCTP.Fields[j+1].Value := vArrData[i, j+1];
      cdsCTP.Post;

      inc(x);
    end;
  end;

  if x = 0 then
    MessageDlg('There is no data CTP can be compared...', mtConfirmation, [mbOk], 0)
  else
  begin
//    dmGlobal.RemoteServer.ClearCTP(txtTradeDate.EditValue);
    cdsCTP.ApplyUpdates(-1);
  end;

  oXlsApps.WorkBooks.Close;
  oXlsApps.Quit;

  cdsCTP.Refresh;
end;

procedure TfrmCTPRecon.mnuRefreshClick(Sender: TObject);
begin
  //inherited;
  cdsBondsDealTicket.Refresh;
  cdsCTP.Refresh;
end;

procedure TfrmCTPRecon.ShowBondsDealTicket(ATradeDate: TDateTime);
begin
  cdsBondsDealTicket.Close;
  cdsBondsDealTicket.Params[0].AsDate := ATradeDate;
  cdsBondsDealticket.Open;

  cdsBondsDealTicketBS.Close;
  cdsBondsDealTicketBS.CreateDataSet;

  while not cdsBondsDealTicket.EOF do
  begin
    cdsBondsDealTicketBS.Append;
    cdsBondsDealTicketBSTRADEDATE.AsDateTime  := cdsBondsDealTicketTRADEDATE.AsDateTime;
    cdsBondsDealTicketBSVALUEDATE.AsDateTime  := cdsBondsDealTicketVALUEDATE.AsDateTime;
    cdsBondsDealTicketBSINSTRUMENTNO.AsString := cdsBondsDealTicketINSTRUMENT_CODE.AsString;
    cdsBondsDealTicketBSSHORTNAME.AsString    := cdsBondsDealTicketSHORTNAME.AsString;
    cdsBondsDealTicketBSFACEVALUE.AsFloat     := cdsBondsDealTicketFACEVALUE.AsFloat;
    cdsBondsDealTicketBSCTPREFF.AsString      := cdsBondsDealTicketSCTPREFF.AsString;
    cdsBondsDealTicketBSPRICE.AsFloat         := cdsBondsDealTicketSPRICE.AsFloat;
    cdsBondsDealTicketBSACCNO.AsString        := cdsBondsDealTicketSACCCODE.AsString;
    cdsBondsDealTicketBSACCCNAME.AsString     := cdsBondsDealTicketSACCNAME.AsString;
    cdsBondsDealTicketBSBS.AsString           := 'B';
    cdsBondsDealTicketBSFLAG.AsString         := cdsBondsDealTicketMATCH_SELL.AsString;
    cdsBondsDealTicketBS.Post;

    cdsBondsDealTicketBS.Append;
    cdsBondsDealTicketBSTRADEDATE.AsDateTime  := cdsBondsDealTicketTRADEDATE.AsDateTime;
    cdsBondsDealTicketBSVALUEDATE.AsDateTime  := cdsBondsDealTicketVALUEDATE.AsDateTime;
    cdsBondsDealTicketBSINSTRUMENTNO.AsString := cdsBondsDealTicketINSTRUMENT_CODE.AsString;
    cdsBondsDealTicketBSSHORTNAME.AsString    := cdsBondsDealTicketSHORTNAME.AsString;
    cdsBondsDealTicketBSFACEVALUE.AsFloat     := cdsBondsDealTicketFACEVALUE.AsFloat;
    cdsBondsDealTicketBSCTPREFF.AsString      := cdsBondsDealTicketBCTPREFF.AsString;
    cdsBondsDealTicketBSPRICE.AsFloat         := cdsBondsDealTicketBPRICE.AsFloat;
    cdsBondsDealTicketBSACCNO.AsString        := cdsBondsDealTicketBACCCODE.AsString;
    cdsBondsDealTicketBSACCCNAME.AsString     := cdsBondsDealTicketBACCNAME.AsString;
    cdsBondsDealTicketBSBS.AsString           := 'S';
    cdsBondsDealTicketBSFLAG.AsString         := cdsBondsDealTicketMATCH_BUY.AsString;
    cdsBondsDealTicketBS.Post;

    cdsBondsDealTicket.Next;
  end;
end;

procedure TfrmCTPRecon.ShowCTP(ATradeDate: TDateTime);
begin
  cdsCTP.Close;
  cdsCTP.Params[0].AsDate := ATradeDate;
  cdsCTP.Open;
end;

procedure TfrmCTPRecon.txtCTPFileNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if odImportData.Execute then
    txtCTPFileName.EditValue := odImportData.FileName;
end;

procedure TfrmCTPRecon.txtTradeDatePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  ShowBondsDealTicket(txtTradeDate.EditValue);
  ShowCTP(txtTradeDate.EditValue);
end;

procedure TfrmCTPRecon.UpdateBondsDealTicket(ABS, ACTPReff: string);
begin
  if ABS = 'B' then
  begin
    if cdsBondsDealTicket.Locate('SCTPREFF', ACTPReff, []) then
    begin
      cdsBondsDealTicket.Edit;
      cdsBondsDealTicketMATCH_SELL.AsString := '1';
      cdsBondsDealTicket.Post;
    end;
  end
  else if ABS = 'S' then
  begin
    if cdsBondsDealTicket.Locate('BCTPREFF', ACTPReff, []) then
    begin
      cdsBondsDealTicket.Edit;
      cdsBondsDealTicketMATCH_BUY.AsString := '1';
      cdsBondsDealTicket.Post;
    end;
  end;
end;

Initialization
  RegisterClass(TfrmCTPRecon);

end.
