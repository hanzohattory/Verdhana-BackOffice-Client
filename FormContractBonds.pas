unit FormContractBonds;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportClient, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxContainer,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, Datasnap.DBClient,
  NClientDataset, cxCurrencyEdit, frxExportPDF, cxImageComboBox, cxCheckBox,
  XLSSheetData5, XLSReadWriteII5, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.Actions,
  System.ImageList;

type
  TfrmContractBonds = class(TfrmBrowseData)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    txtContractDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cdsContractBondList: TNClientDataset;
    actCloseContractBonds: TNAction;
    cdsContractBondListCONBONID: TLargeintField;
    cdsContractBondListTRADEBOND_ID: TLargeintField;
    cdsContractBondListCONDATE: TDateTimeField;
    cdsContractBondListINSTRUMENT_ID: TLargeintField;
    cdsContractBondListINSTRUMENT_CODE: TStringField;
    cdsContractBondListFACEVALUE: TFloatField;
    cdsContractBondListDUEDATE: TDateTimeField;
    cdsContractBondListMODDA: TDateTimeField;
    cdsContractBondListMODUI: TStringField;
    cdsContractBondListAPPDA: TDateTimeField;
    cdsContractBondListAPPUI: TStringField;
    cdsContractBondListID: TLargeintField;
    cdsContractBond_D: TNClientDataset;
    cdsContractBondListSTAT: TStringField;
    gvwMasterCONBONID: TcxGridDBBandedColumn;
    gvwMasterTRADEBOND_ID: TcxGridDBBandedColumn;
    gvwMasterCONDATE: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_ID: TcxGridDBBandedColumn;
    gvwMasterINSTRUMENT_CODE: TcxGridDBBandedColumn;
    gvwMasterFACEVALUE: TcxGridDBBandedColumn;
    gvwMasterDUEDATE: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    gvwMasterSTAT: TcxGridDBBandedColumn;
    grdMasterLevel2: TcxGridLevel;
    gvwDetails: TcxGridDBBandedTableView;
    dsContractBond_D: TDataSource;
    cdsContractBond_DCONBONID_DE: TLargeintField;
    cdsContractBond_DCONBONID: TLargeintField;
    cdsContractBond_DCONNO: TStringField;
    cdsContractBond_DACCID: TLargeintField;
    cdsContractBond_DACCNO: TStringField;
    cdsContractBond_DBS: TStringField;
    cdsContractBond_DPRICE: TFloatField;
    cdsContractBond_DPROCEED: TFloatField;
    cdsContractBond_DCAPGAIN_RATE: TFloatField;
    cdsContractBond_DCAPGAIN: TFloatField;
    cdsContractBond_DCAPGAIN_TAX: TFloatField;
    cdsContractBond_DCTPREF: TStringField;
    cdsContractBond_DNETPROCEED: TFloatField;
    cdsContractBond_DMARKETCODE: TStringField;
    cdsContractBond_DCCYCODE: TStringField;
    cdsContractBond_DWHTAMT: TFloatField;
    cdsContractBond_DSTAT: TStringField;
    cdsContractBond_DMODDA: TDateTimeField;
    cdsContractBond_DMODUI: TStringField;
    cdsContractBond_DAPPDA: TDateTimeField;
    cdsContractBond_DAPPUI: TStringField;
    cdsContractBond_DID: TLargeintField;
    cdsContractBond_DHOLDINTERESTTAX: TFloatField;
    cdsContractBond_DSALESID: TLargeintField;
    cdsContractBond_DHOLDINGINTEREST: TFloatField;
    cdsContractBond_DCOST_PRICE: TFloatField;
    cdsContractBond_DCOST_AMT: TFloatField;
    cdsContractBond_DACQ_DATE: TDateTimeField;
    gvwDetailsCONBONID_DE: TcxGridDBBandedColumn;
    gvwDetailsCONBONID: TcxGridDBBandedColumn;
    gvwDetailsCONNO: TcxGridDBBandedColumn;
    gvwDetailsACCID: TcxGridDBBandedColumn;
    gvwDetailsACCNO: TcxGridDBBandedColumn;
    gvwDetailsBS: TcxGridDBBandedColumn;
    gvwDetailsPRICE: TcxGridDBBandedColumn;
    gvwDetailsPROCEED: TcxGridDBBandedColumn;
    gvwDetailsCAPGAIN_RATE: TcxGridDBBandedColumn;
    gvwDetailsCAPGAIN: TcxGridDBBandedColumn;
    gvwDetailsCAPGAIN_TAX: TcxGridDBBandedColumn;
    gvwDetailsCTPREF: TcxGridDBBandedColumn;
    gvwDetailsNETPROCEED: TcxGridDBBandedColumn;
    gvwDetailsMARKETCODE: TcxGridDBBandedColumn;
    gvwDetailsCCYCODE: TcxGridDBBandedColumn;
    gvwDetailsWHTAMT: TcxGridDBBandedColumn;
    gvwDetailsSTAT: TcxGridDBBandedColumn;
    gvwDetailsMODDA: TcxGridDBBandedColumn;
    gvwDetailsMODUI: TcxGridDBBandedColumn;
    gvwDetailsAPPDA: TcxGridDBBandedColumn;
    gvwDetailsAPPUI: TcxGridDBBandedColumn;
    gvwDetailsID: TcxGridDBBandedColumn;
    gvwDetailsHOLDINTERESTTAX: TcxGridDBBandedColumn;
    gvwDetailsCAPGAINRATE: TcxGridDBBandedColumn;
    gvwDetailsSALESID: TcxGridDBBandedColumn;
    gvwDetailsHOLDINGINTEREST: TcxGridDBBandedColumn;
    gvwDetailsCOST_PRICE: TcxGridDBBandedColumn;
    gvwDetailsCOST_AMT: TcxGridDBBandedColumn;
    gvwDetailsACQ_DATE: TcxGridDBBandedColumn;
    cdsContractBondListINTEREST_RATE: TFloatField;
    cdsContractBondListACR_INTEREST: TFloatField;
    cdsContractBondListHOLDPERIOD: TIntegerField;
    cdsContractBondListLASTCOUPONDATE: TDateTimeField;
    cdsContractBondListNEXTCOUPONDATE: TDateTimeField;
    cdsContractBondListMATURITYDATE: TDateTimeField;
    cdsContractBondListCOUPONPERIOD: TIntegerField;
    cdsContractBondListACRINTERESTDAY: TIntegerField;
    cdsContractBondListVALUEDATE: TDateTimeField;
    cdsContractBondListPOSTED: TStringField;
    cdsContractBondListCTPREFF: TStringField;
    gvwMasterCTPREFF: TcxGridDBBandedColumn;
    cdsContractBonds: TNClientDataset;
    actCTPUpd: TNAction;
    CTPRefferenceUpate1: TMenuItem;
    cdsContractBondListCTP_UPD: TStringField;
    gvwMasterCTP_UPD: TcxGridDBBandedColumn;
    actReverseBondsContract: TNAction;
    ReverseBondsContract1: TMenuItem;
    N5: TMenuItem;
    actCancelContract: TNAction;
    cdsCancelContractBonds: TNClientDataset;
    CancelContractBonds1: TMenuItem;
    cdsContractBondListTRADEBOND_NO: TStringField;
    gvwMasterTRADEBOND_NO: TcxGridDBBandedColumn;
    cdsContractBondListJRNID: TLargeintField;
    cdsContractBondListSETTLE_INSTR: TStringField;
    cdsContractBondListCONFIRMED: TStringField;
    gvwMasterINTEREST_RATE: TcxGridDBBandedColumn;
    gvwMasterACR_INTEREST: TcxGridDBBandedColumn;
    gvwMasterHOLDPERIOD: TcxGridDBBandedColumn;
    gvwMasterLASTCOUPONDATE: TcxGridDBBandedColumn;
    gvwMasterNEXTCOUPONDATE: TcxGridDBBandedColumn;
    gvwMasterMATURITYDATE: TcxGridDBBandedColumn;
    gvwMasterCOUPONPERIOD: TcxGridDBBandedColumn;
    gvwMasterACRINTERESTDAY: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterJRNID: TcxGridDBBandedColumn;
    gvwMasterSETTLE_INSTR: TcxGridDBBandedColumn;
    gvwMasterCONFIRMED: TcxGridDBBandedColumn;
    actConfirm: TNAction;
    cdsContractBondH: TNClientDataset;
    cdsContractBondHCONBONID: TLargeintField;
    cdsContractBondHTRADEBOND_ID: TLargeintField;
    cdsContractBondHCONDATE: TDateTimeField;
    cdsContractBondHINSTRUMENT_ID: TLargeintField;
    cdsContractBondHINSTRUMENT_CODE: TStringField;
    cdsContractBondHFACEVALUE: TFloatField;
    cdsContractBondHDUEDATE: TDateTimeField;
    cdsContractBondHINTEREST_RATE: TFloatField;
    cdsContractBondHACR_INTEREST: TFloatField;
    cdsContractBondHHOLDPERIOD: TIntegerField;
    cdsContractBondHLASTCOUPONDATE: TDateTimeField;
    cdsContractBondHNEXTCOUPONDATE: TDateTimeField;
    cdsContractBondHMATURITYDATE: TDateTimeField;
    cdsContractBondHCOUPONPERIOD: TIntegerField;
    cdsContractBondHACRINTERESTDAY: TIntegerField;
    cdsContractBondHVALUEDATE: TDateTimeField;
    cdsContractBondHCTPREFF: TStringField;
    cdsContractBondHCTP_UPD: TStringField;
    cdsContractBondHSTAT: TStringField;
    cdsContractBondHPOSTED: TStringField;
    cdsContractBondHJRNID: TLargeintField;
    cdsContractBondHMODDA: TDateTimeField;
    cdsContractBondHMODUI: TStringField;
    cdsContractBondHAPPDA: TDateTimeField;
    cdsContractBondHAPPUI: TStringField;
    cdsContractBondHID: TLargeintField;
    cdsContractBondHSETTLE_INSTR: TStringField;
    cdsContractBondHCONFIRMED: TStringField;
    ConfirmContract1: TMenuItem;
    cdsContractBondsTRADEBOND_ID: TLargeintField;
    cdsContractBondsCONBONID: TLargeintField;
    cdsContractBondsINSTRUMENT_ID: TLargeintField;
    cdsContractBondsINSTRUMENT_CODE: TStringField;
    cdsContractBondsCONDATE: TDateTimeField;
    cdsContractBondsDUEDATE: TDateTimeField;
    cdsContractBondsFACEVALUE: TFloatField;
    cdsContractBondsINTEREST_RATE: TFloatField;
    cdsContractBondsACR_INTEREST: TFloatField;
    cdsContractBondsHOLDPERIOD: TIntegerField;
    cdsContractBondsLASTCOUPONDATE: TDateTimeField;
    cdsContractBondsNEXTCOUPONDATE: TDateTimeField;
    cdsContractBondsMATURITYDATE: TDateTimeField;
    cdsContractBondsCOUPONPERIOD: TIntegerField;
    cdsContractBondsACRINTERESTDAY: TIntegerField;
    cdsContractBondsACQ_DATE: TDateTimeField;
    cdsContractBondsSHORTNAME: TStringField;
    cdsContractBondsCTPREF: TStringField;
    cxButton2: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    actGenerateFileSI: TNAction;
    cdsGenerateSI: TNClientDataset;
    cdsGenerateSICTPREF: TStringField;
    cdsGenerateSIACCNO: TStringField;
    cdsGenerateSIACCNAME: TStringField;
    cdsGenerateSIBANKACCNO: TStringField;
    cdsGenerateSIBS: TStringField;
    cdsGenerateSIINSTRUMENT_CODE: TStringField;
    cdsGenerateSISHORTNAME: TStringField;
    cdsGenerateSICONDATE: TDateTimeField;
    cdsGenerateSIDUEDATE: TDateTimeField;
    cdsGenerateSIFACEVALUE: TFloatField;
    cdsGenerateSIPRICE: TFloatField;
    cdsGenerateSIPROCEED: TFloatField;
    cdsGenerateSICAPGAIN: TFloatField;
    cdsGenerateSIACR_INTEREST: TFloatField;
    cdsGenerateSITOTAL_PROCEED: TFloatField;
    cdsGenerateSIACR_INTEREST_TAX: TFloatField;
    cdsGenerateSICAPGAIN_TAXAMT: TFloatField;
    cdsGenerateSINETPROCEED: TFloatField;
    cdsGenerateSICOUNTERPARTY: TStringField;
    actGenerateReportSI: TNAction;
    dxLayoutControl1Group2: TdxLayoutGroup;
    GenerateReportSI1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure actCloseContractBondsExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actCTPUpdExecute(Sender: TObject);
    procedure actReverseBondsContractExecute(Sender: TObject);
    procedure popMasterPopup(Sender: TObject);
    procedure actCancelContractExecute(Sender: TObject);
    procedure actCTPUpdUpdate(Sender: TObject);
    procedure actReverseBondsContractUpdate(Sender: TObject);
    procedure actConfirmExecute(Sender: TObject);
    procedure actCloseContractBondsUpdate(Sender: TObject);
    procedure actConfirmUpdate(Sender: TObject);
    procedure actCancelContractUpdate(Sender: TObject);
    procedure actGenerateFileSIExecute(Sender: TObject);
    procedure actGenerateReportSIExecute(Sender: TObject);
  private
    procedure ShowContractBonds(ADueDate: TDateTime);
  public
    { Public declarations }
  end;

var
  frmContractBonds: TfrmContractBonds;

implementation

{$R *.dfm}

uses DataGlobal, FormContractBond, FormCTPReffUpdate, DataLookup;

procedure TfrmContractBonds.actCancelContractExecute(Sender: TObject);
var
  iTradeID: Integer;
begin
  inherited;
  if MessageQuestion('Cancel contract bond ?') then
  begin
    iTradeID := StrToInt(gvwMaster.DataController.Controller.SelectedRecords[0].Values[gvwMasterTRADEBOND_ID.Index]);

    cdsCancelContractBonds.Close;
    cdsCancelContractBonds.Params[0].AsInteger := iTradeID;
    cdsCancelContractBonds.Execute;

    ShowContractBonds(txtContractDate.Date);
  end;
end;

procedure TfrmContractBonds.actCancelContractUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsContractBondListSTAT.AsString = 'O';
end;

procedure TfrmContractBonds.actCloseContractBondsExecute(Sender: TObject);
var
  sMsg, sTmpMsg, sMsgList: String;
  x, v: Integer;
begin
  inherited;
  if MessageQuestion('Close contract bond ?') then
  begin
    x := 0;
    v := 0;

    sTmpMsg  := '';
    sMsgList := '';

    cdsContractBondList.DisableControls;
    if cdsContractBondList.RecordCount = 1 then
    begin
      dmGlobal.RemoteServer.CloseContractBonds(cdsContractBondListCONBONID.AsInteger, sMsg);
      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end
    else
    begin
      cdsContractBondList.First;
      while  not cdsContractBondList.Eof do
      begin
        if cdsContractBondListSTAT.AsString = 'O' then
        begin
          if dmGlobal.RemoteServer.CloseContractBonds(cdsContractBondListCONBONID.AsInteger, sMsg) then
            Inc(v)
          else
          begin
            if sMsg <> sTmpMsg then
            begin
              sTmpMsg  := sMsg;
              sMsgList := sMsgList +'- '+ sMsg + #13;
            end;

            Inc(x);
          end;
        end;

        cdsContractBondList.Next;
      end;

      MessageDlg(IntToStr(v)+' data has success close contract, '+ IntToStr(x) +' Data Fail to close contract'+#13+
        'Fail Message : '+#13+sMsgList, mtInformation, [mbOk], 0);
    end;

    cdsContractBondList.Refresh;
    cdsContractBondList.EnableControls;
  end;
end;

procedure TfrmContractBonds.actCloseContractBondsUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsContractBondListCONFIRMED.AsString = '1';
end;

procedure TfrmContractBonds.actConfirmExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if MessageQuestion('Confirm contract bond ?') then
  begin
    cdsContractBondList.DisableControls;
    for i := 0 to gvwMaster.Controller.SelectedRecordCount -1 do
    begin
      cdsContractBondH.Close;
      cdsContractBondH.Params[0].AsInteger := StrToIntDef(gvwMaster.Controller.SelectedRecords[i].Values[gvwMasterCONBONID.Index], 0);
      cdsContractBondH.Open;

      if not cdsContractBondH.IsEmpty then
      begin
        if cdsContractBondHCONFIRMED.AsString = '0' then
        begin
          cdsContractBondH.Edit;
          cdsContractBondHCONFIRMED.AsString := '1';
          cdsContractBondH.Post;

          cdsContractBondH.ApplyUpdates(-1);
          cdsContractBondList.Refresh;
        end;
      end;
    end;
    cdsContractBondList.EnableControls;
  end;
end;

procedure TfrmContractBonds.actConfirmUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsContractBondListSTAT.AsString = 'O';
end;

procedure TfrmContractBonds.actCTPUpdExecute(Sender: TObject);
var
  oForm: TForm;
begin
  inherited;
  cdsContractBonds.Close;
  cdsContractBonds.Params[0].AsInteger := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterCONBONID.Index], 0);
  cdsContractBonds.Open;

  if cdsContractBondListSTAT.AsString = 'O' then
  begin
    oForm := TfrmCTPReffUpdate.Create(nil);
    if oForm.ShowModal = mrOk then
      dmGlobal.RemoteServer.UpdateCTPReff(cdsContractBondsCTPREF.AsString, cdsContractBondListCONBONID.AsInteger,0);
    oForm.Free;

    cdsContractBond_D.Refresh;
    cdsContractBondList.Refresh;
  end
  else
    MessageDlg('Contract bond has closed...', mtWarning, [mbOk], 0);
end;

procedure TfrmContractBonds.actCTPUpdUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsContractBondListSTAT.AsString = 'O';
end;

procedure TfrmContractBonds.actGenerateFileSIExecute(Sender: TObject);
var
  i, RecIdx, LastRow: Integer;
//  oSheet: TXLSWorkSheet;
begin
  inherited;
//  if SaveDlg.Execute then
//  begin
//    cdsGenerateSI.Close;
//    cdsGenerateSI.Params[0].AsDate := txtContractDate.Date;
//    cdsGenerateSI.Open;
//
//    if not cdsGenerateSI.IsEmpty then
//    begin
//      XLS.Filename := SaveDlg.FileName;
//      oSheet := XLS.Sheets[0];
//      oSheet.Clear;
//
//      //Set Excel Header
//      oSheet.AsString[0, 0]  := 'No';
//      oSheet.AsString[1, 0]  := 'No CTP';
//      oSheet.AsString[2, 0]  := 'Kode Nasabah';
//      oSheet.AsString[3, 0]  := 'Nama Nasabah';
//      oSheet.AsString[4, 0]  := 'No Rekening RDN';
//      oSheet.AsString[5, 0]  := 'Beli/Jual';
//      oSheet.AsString[6, 0]  := 'Kode Obligasi';
//      oSheet.AsString[7, 0]  := 'Nama Obligasi';
//      oSheet.AsString[8, 0]  := 'Tanggal Transaksi';
//      oSheet.AsString[9, 0]  := 'Tanggal Penyelesaian';
//      oSheet.AsString[10, 0] := 'Nominal Obligasi';
//      oSheet.AsString[11, 0] := 'Harga Obligasi';
//      oSheet.AsString[12, 0] := 'Proceed';
//      oSheet.AsString[13, 0] := 'Capital Gain';
//      oSheet.AsString[14, 0] := 'Accrue Interest/Bunga Berjalan';
//      oSheet.AsString[15, 0] := 'Total Proceed';
//      oSheet.AsString[16, 0] := 'Tax on Accrued Interest';
//      oSheet.AsString[17, 0] := 'Tax On Capital Gain';
//      oSheet.AsString[18, 0] := 'Net Proceed';
//      oSheet.AsString[19, 0] := 'Counterparty';
//
//      LastRow := 0;
//
//      cdsGenerateSI.First;
//      while not cdsGenerateSI.Eof do
//      begin
//        Inc(LastRow);
//
//        oSheet.AsInteger[0, LastRow]  := LastRow;
//        oSheet.AsString[1, LastRow]   := cdsGenerateSICTPREF.AsString;
//        oSheet.AsString[2, LastRow]   := cdsGenerateSIACCNO.AsString;
//        oSheet.AsString[3, LastRow]   := cdsGenerateSIACCNAME.AsString;
//        oSheet.AsString[4, LastRow]   := cdsGenerateSIBANKACCNO.AsString;
//        oSheet.AsString[5, LastRow]   := cdsGenerateSIBS.AsString;
//        oSheet.AsString[6, LastRow]   := cdsGenerateSIINSTRUMENT_CODE.AsString;
//        oSheet.AsString[7, LastRow]   := cdsGenerateSISHORTNAME.AsString;
//        oSheet.AsDateTime[8, LastRow] := cdsGenerateSICONDATE.AsDateTime;
//        oSheet.AsDateTime[9, LastRow] := cdsGenerateSIDUEDATE.AsDateTime;
//        oSheet.AsFloat[10, LastRow]   := cdsGenerateSIFACEVALUE.AsFloat;
//        oSheet.AsFloat[11, LastRow]   := cdsGenerateSIPRICE.AsFloat;
//        oSheet.AsFloat[12, LastRow]   := cdsGenerateSIPROCEED.AsFloat;
//        oSheet.AsFloat[13, LastRow]   := cdsGenerateSICAPGAIN.AsFloat;
//        oSheet.AsFloat[14, LastRow]   := cdsGenerateSIACR_INTEREST.AsFloat;
//        oSheet.AsFloat[15, LastRow]   := cdsGenerateSITOTAL_PROCEED.AsFloat;
//        oSheet.AsFloat[16, LastRow]   := cdsGenerateSIACR_INTEREST_TAX.AsFloat;
//        oSheet.AsFloat[17, LastRow]   := cdsGenerateSICAPGAIN_TAXAMT.AsFloat;
//        oSheet.AsFloat[18, LastRow]   := cdsGenerateSINETPROCEED.AsFloat;
//        oSheet.AsString[19, LastRow]  := cdsGenerateSICOUNTERPARTY.AsString;
//
//
//        cdsGenerateSI.Next;
//      end;
//
//      XLS.Write;
//      MessageDlg('File has been generate...', mtInformation, [mbOk], 0);
//    end;
//  end;
end;

procedure TfrmContractBonds.actGenerateReportSIExecute(Sender: TObject);
begin
  inherited;
//  ReportContainer.Params[0].AsDate    := txtContractDate.Date;
//  ReportContainer.Params[1].AsInteger := 0;
//
//  ReportContainer.PreviewReport;

  actPrint.Execute;
end;

procedure TfrmContractBonds.actPrintExecute(Sender: TObject);
begin
  ReportContainer.Params[0].AsDate    := txtContractDate.Date;
  ReportContainer.Params[1].AsInteger := StrToIntDef(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterTRADEBOND_ID.Index], 0);

  inherited;
end;

procedure TfrmContractBonds.actReverseBondsContractExecute(
  Sender: TObject);
var
  iConBonID: Int64;
  sMessage: string;
begin
  inherited;
  if MessageQuestion('Reverse contract bond ?') then
  begin
    iConBonID := StrToInt64(gvwMaster.DataController.Controller.SelectedRecords[0].Values[gvwMasterCONBONID.Index]);

    if MessageDlg('Are you sure want to reverse bonds contract ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dmGlobal.RemoteServer.ReverseBondsContract(iConBonID, sMessage);

    MessageDlg(sMessage, mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmContractBonds.actReverseBondsContractUpdate(Sender: TObject);
begin
  inherited;
  TNAction(Sender).Enabled := cdsContractBondListSTAT.AsString = 'S';
end;

procedure TfrmContractBonds.cxButton1Click(Sender: TObject);
begin
  inherited;
  ShowContractBonds(txtContractDate.Date);
end;

procedure TfrmContractBonds.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
//  AFormClass := TfrmContractBond;
end;

procedure TfrmContractBonds.FormCreate(Sender: TObject);
begin
  inherited;
  ShowContractBonds(dmGlobal.RemoteServer.GetTransDate);

  with dmGlobal.IntDataLookUp do
  begin
    cdsLuCustomerBonds.Close;
    cdsLuCustomerBonds.Open;

    cdsLuInstrumentBonds.Close;
    cdsLuInstrumentBonds.Open;
  end;
end;

procedure TfrmContractBonds.FormShow(Sender: TObject);
begin
  inherited;
  txtContractDate.Date := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmContractBonds.popMasterPopup(Sender: TObject);
var
  sStat : string;
begin
  inherited;
//  actCTPUpd.Enabled               := False;
//  actReverseBondsContract.Enabled := False;
//  actCancelContract.Enabled       := False;
//
//  if (gvwMaster.Focused) and (not gvwMaster.DataController.DataSource.DataSet.IsEmpty) then
//  begin
//    sStat := gvwMaster.DataController.Controller.SelectedRecords[0].Values[gvwMasterSTAT.Index];
//
//    if sStat = 'O' then
//      actCancelContract.Enabled := True
//    else if sStat = 'S' then
//      actReverseBondsContract.Enabled := True;
//  end
//  else
//    actCTPUpd.Enabled := True;

end;

procedure TfrmContractBonds.ShowContractBonds(ADueDate: TDateTime);
begin
  cdsContractBondList.Close;
  cdsContractBondList.Params[0].AsDateTime := ADueDate;
  cdsContractBondList.Open;

  cdsContractBond_D.Close;
  cdsContractBond_D.Params[0].AsDateTime := ADueDate;
  cdsContractBond_D.Open;
end;

Initialization
  RegisterClass(TfrmContractBonds);

end.

