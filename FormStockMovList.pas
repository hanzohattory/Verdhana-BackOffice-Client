unit FormStockMovList;

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
  dxLayoutControl, cxImageComboBox, System.Actions, System.ImageList, DateUtils,
  dxDateRanges, cxBarEditItem, cxCheckBox,ComObj,System.Math,Clipbrd,
  dxScrollbarAnnotations, cxCheckGroup;

type
  TfrmStockMovList = class(TfrmBrowseData)
    cdsStockMovList: TNClientDataset;
    cdsStockMovListSMID: TIntegerField;
    cdsStockMovListSMCODE: TStringField;
    cdsStockMovListENTRYDATE: TDateField;
    cdsStockMovListVALUEDATE: TDateField;
    cdsStockMovListSOURCE_ACCID: TIntegerField;
    cdsStockMovListSOURCE_ACCNO: TStringField;
    cdsStockMovListSOURCE_ACCNAME: TStringField;
    cdsStockMovListTARGET_ACCID: TIntegerField;
    cdsStockMovListTARGET_ACCNO: TStringField;
    cdsStockMovListTARGET_ACCNAME: TStringField;
    cdsStockMovListREMARK: TStringField;
    cdsStockMovListSTATUS: TStringField;
    cdsStockMovListMODDA: TDateTimeField;
    cdsStockMovListMODUI: TStringField;
    cdsStockMovListAPPDA: TDateTimeField;
    cdsStockMovListAPPUI: TStringField;
    cdsStockMovListUNDER4Y: TIntegerField;
    cdsStockMovListUNDER4YDA: TDateTimeField;
    cdsStockMovListNOTES4Y: TStringField;
    cdsStockMovListISDEL: TIntegerField;
    cdsStockMovListID: TLargeintField;
    cdsStockMovH: TNClientDataset;
    cdsStockMovD: TNClientDataset;
    gvwMasterSMID: TcxGridDBBandedColumn;
    gvwMasterSMCODE: TcxGridDBBandedColumn;
    gvwMasterENTRYDATE: TcxGridDBBandedColumn;
    gvwMasterVALUEDATE: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCID: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCNO: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCNAME: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCID: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCNO: TcxGridDBBandedColumn;
    gvwMasterTARGET_ACCNAME: TcxGridDBBandedColumn;
    gvwMasterREMARK: TcxGridDBBandedColumn;
    gvwMasterSTATUS: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actViewData: TNAction;
    cdsStockPosByAcc: TNClientDataset;
    cdsStockPosByAccSTOCKID: TIntegerField;
    cdsStockPosByAccMARKETCODE: TStringField;
    cdsStockPosByAccLOCALCODE: TStringField;
    cdsStockPosByAccISSUERNAME: TStringField;
    cdsStockPosByAccISINCODE: TStringField;
    cdsStockPosByAccISINDATE: TDateTimeField;
    cdsStockPosByAccQTY_ONHAND: TFloatField;
    cdsStockPosByAccQTY_OUTS: TFloatField;
    cdsStockPosByAccQTY_ONHOLD: TFloatField;
    cdsStockPosByAccQTY_BAL: TFloatField;
    cdsStockPosByAccQTY_OVERDUE: TFloatField;
    cdsStockPosByAccQTY_DLV: TFloatField;
    cdsStockPosByAccQTY_RCV: TFloatField;
    actPosting: TNAction;
    Posting1: TMenuItem;
    actReverse: TNAction;
    Reverse1: TMenuItem;
    actGenerateInstruction: TNAction;
    actGenerateOTCNonExchange: TNAction;
    cdsStockMovListPURPOSE: TStringField;
    cdsStockMovListTRADEREFF: TStringField;
    cdsStockMovListSETTLEREASON: TStringField;
    N5: TMenuItem;
    cdsStockMovListSOURCE_ACCSOPID: TLargeintField;
    cdsStockMovListNIK: TStringField;
    cdsStockMovListNAME: TStringField;
    gvwMasterPURPOSE: TcxGridDBBandedColumn;
    gvwMasterTRADEREFF: TcxGridDBBandedColumn;
    gvwMasterSETTLEREASON: TcxGridDBBandedColumn;
    gvwMasterSOURCE_ACCSOPID: TcxGridDBBandedColumn;
    gvwMasterNIK: TcxGridDBBandedColumn;
    gvwMasterNAME: TcxGridDBBandedColumn;
    cdsStockMovListCANCEL: TStringField;
    cdsStockMovListCANCEL_UI: TStringField;
    cdsStockMovListAPPROVED: TStringField;
    cdsStockMovListAPPROVED_UI: TStringField;
    gvwMasterCANCEL: TcxGridDBBandedColumn;
    gvwMasterCANCEL_UI: TcxGridDBBandedColumn;
    gvwMasterAPPROVED: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_UI: TcxGridDBBandedColumn;
    actCancelStockMove: TNAction;
    actStockApproved: TNAction;
    Cancel2: TMenuItem;
    Approve2: TMenuItem;
    cdsStockMovHBySMID: TNClientDataset;
    cdsStockMovHBySMIDSMID: TIntegerField;
    cdsStockMovHBySMIDSMCODE: TStringField;
    cdsStockMovHBySMIDENTRYDATE: TDateField;
    cdsStockMovHBySMIDVALUEDATE: TDateField;
    cdsStockMovHBySMIDSOURCE_ACCID: TIntegerField;
    cdsStockMovHBySMIDSOURCE_ACCNO: TStringField;
    cdsStockMovHBySMIDSOURCE_ACCNAME: TStringField;
    cdsStockMovHBySMIDTARGET_ACCID: TIntegerField;
    cdsStockMovHBySMIDTARGET_ACCNO: TStringField;
    cdsStockMovHBySMIDTARGET_ACCNAME: TStringField;
    cdsStockMovHBySMIDREMARK: TStringField;
    cdsStockMovHBySMIDPURPOSE: TStringField;
    cdsStockMovHBySMIDTRADEREFF: TStringField;
    cdsStockMovHBySMIDSETTLEREASON: TStringField;
    cdsStockMovHBySMIDSTATUS: TStringField;
    cdsStockMovHBySMIDMODDA: TDateTimeField;
    cdsStockMovHBySMIDMODUI: TStringField;
    cdsStockMovHBySMIDAPPDA: TDateTimeField;
    cdsStockMovHBySMIDAPPUI: TStringField;
    cdsStockMovHBySMIDUNDER4Y: TIntegerField;
    cdsStockMovHBySMIDUNDER4YDA: TDateTimeField;
    cdsStockMovHBySMIDNOTES4Y: TStringField;
    cdsStockMovHBySMIDISDEL: TIntegerField;
    cdsStockMovHBySMIDID: TLargeintField;
    cdsStockMovHBySMIDSOURCE_ACCSOPID: TLargeintField;
    cdsStockMovHBySMIDCANCEL: TStringField;
    cdsStockMovHBySMIDCANCEL_DATE: TDateField;
    cdsStockMovHBySMIDCANCEL_UI: TStringField;
    cdsStockMovHBySMIDAPPROVED: TStringField;
    cdsStockMovHBySMIDAPPROVED_DATE: TDateField;
    cdsStockMovHBySMIDAPPROVED_UI: TStringField;
    grdMasterLevel2: TcxGridLevel;
    gvwOTCInstr: TcxGridDBBandedTableView;
    cdsOTCInstr: TNClientDataset;
    cdsOTCInstrAccountNo: TStringField;
    cdsOTCInstrAccountName: TStringField;
    cdsOTCInstrinstructionType: TStringField;
    cdsOTCInstrexternalReference: TStringField;
    cdsOTCInstrparticipantCode: TStringField;
    cdsOTCInstrparticipantAccount: TStringField;
    cdsOTCInstrparticipantAccountCash: TStringField;
    cdsOTCInstrcounterpartCode: TStringField;
    cdsOTCInstrsecurityCode: TStringField;
    cdsOTCInstrnumberOfSecurities: TFloatField;
    cdsOTCInstrtradeDate: TStringField;
    cdsOTCInstrcurrencyCode: TStringField;
    cdsOTCInstrsettlementAmount: TFloatField;
    cdsOTCInstrsettlementDate: TStringField;
    cdsOTCInstrpurpose: TStringField;
    cdsOTCInstrtradingReference: TStringField;
    cdsOTCInstrsettlementReason: TStringField;
    cdsOTCInstrdescription: TStringField;
    cdsOTCInstrsecurityCodeType: TStringField;
    dsOTCInstr: TDataSource;
    gvwOTCInstrAccountNo: TcxGridDBBandedColumn;
    gvwOTCInstrAccountName: TcxGridDBBandedColumn;
    gvwOTCInstrinstructionType: TcxGridDBBandedColumn;
    gvwOTCInstrexternalReference: TcxGridDBBandedColumn;
    gvwOTCInstrparticipantCode: TcxGridDBBandedColumn;
    gvwOTCInstrparticipantAccount: TcxGridDBBandedColumn;
    gvwOTCInstrparticipantAccountCash: TcxGridDBBandedColumn;
    gvwOTCInstrcounterpartCode: TcxGridDBBandedColumn;
    gvwOTCInstrsecurityCode: TcxGridDBBandedColumn;
    gvwOTCInstrnumberOfSecurities: TcxGridDBBandedColumn;
    gvwOTCInstrtradeDate: TcxGridDBBandedColumn;
    gvwOTCInstrcurrencyCode: TcxGridDBBandedColumn;
    gvwOTCInstrsettlementAmount: TcxGridDBBandedColumn;
    gvwOTCInstrsettlementDate: TcxGridDBBandedColumn;
    gvwOTCInstrpurpose: TcxGridDBBandedColumn;
    gvwOTCInstrtradingReference: TcxGridDBBandedColumn;
    gvwOTCInstrsettlementReason: TcxGridDBBandedColumn;
    gvwOTCInstrdescription: TcxGridDBBandedColumn;
    gvwOTCInstrsecurityCodeType: TcxGridDBBandedColumn;
    popOTCIns: TPopupMenu;
    GenerateRFOPFile1: TMenuItem;
    actGenerateOTCFile: TNAction;
    cdsStockMovListPROGRAM_ID: TIntegerField;
    cdsStockMovListprog_id: TIntegerField;
    cdsStockMovListprogName: TStringField;
    gvwMasterPROGRAM_ID: TcxGridDBBandedColumn;
    gvwMasterprogName: TcxGridDBBandedColumn;
    cxBarEditItem1: TcxBarEditItem;
    cbFilter: TcxBarEditItem;
    dtStartDate: TcxBarEditItem;
    cdsStockMovListPOSTED: TStringField;
    cdsStockMovListPOSTED_UI: TStringField;
    cdsStockMovListREVERSE: TStringField;
    cdsStockMovListREVERSE_UI: TStringField;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterPOSTED_UI: TcxGridDBBandedColumn;
    gvwMasterREVERSE: TcxGridDBBandedColumn;
    gvwMasterREVERSE_UI: TcxGridDBBandedColumn;
    N1: TMenuItem;
    UploadFromExcelFile: TMenuItem;
    actUploadFromFile: TNAction;
    OpenDialog: TOpenDialog;
    cdsAccountByAccNo: TNClientDataset;
    cdsAccountByAccNoACCID: TIntegerField;
    cdsAccountByAccNoACCCODE: TStringField;
    cdsAccountByAccNoACCNAME: TStringField;
    cdsAccountByAccNoACCBANKID: TIntegerField;
    cdsAccountByAccNoACCBANKCODE: TStringField;
    cdsAccNoTarget: TNClientDataset;
    cdsAccNoTargetACCID: TIntegerField;
    cdsAccNoTargetACCCODE: TStringField;
    cdsAccNoTargetACCNAME: TStringField;
    cdsAccNoTargetACCBANKID: TIntegerField;
    cdsAccNoTargetACCBANKCODE: TStringField;
    actCopySelected: TNAction;
    Copygridwithheader1: TMenuItem;
    cdsStockMovListSTOCKTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    chStatus: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cdsStockMovListCANCEL_SYSDATE: TDateTimeField;
    cdsStockMovListAPPROVED_SYSDATE: TDateTimeField;
    cdsStockMovListPOSTED_DATE: TDateTimeField;
    cdsStockMovListPOSTED_SYSDATE: TDateTimeField;
    cdsStockMovListREVERSE_SYSDATE: TDateTimeField;
    cdsStockMovListCANCEL_DATE: TDateTimeField;
    cdsStockMovListAPPROVED_DATE: TDateTimeField;
    cdsStockMovListREVERSE_DATE: TDateTimeField;
    gvwMasterprog_id: TcxGridDBBandedColumn;
    gvwMasterSTOCKTRANSID: TcxGridDBBandedColumn;
    gvwMasterCANCEL_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_DATE: TcxGridDBBandedColumn;
    gvwMasterPOSTED_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSE_SYSDATE: TcxGridDBBandedColumn;
    gvwMasterCANCEL_DATE: TcxGridDBBandedColumn;
    gvwMasterAPPROVED_DATE: TcxGridDBBandedColumn;
    gvwMasterREVERSE_DATE: TcxGridDBBandedColumn;
    cdsStockMovHSMID: TIntegerField;
    cdsStockMovHSMCODE: TStringField;
    cdsStockMovHENTRYDATE: TDateField;
    cdsStockMovHVALUEDATE: TDateField;
    cdsStockMovHSOURCE_ACCID: TIntegerField;
    cdsStockMovHSOURCE_ACCNO: TStringField;
    cdsStockMovHSOURCE_ACCNAME: TStringField;
    cdsStockMovHTARGET_ACCID: TIntegerField;
    cdsStockMovHTARGET_ACCNO: TStringField;
    cdsStockMovHTARGET_ACCNAME: TStringField;
    cdsStockMovHREMARK: TStringField;
    cdsStockMovHPURPOSE: TStringField;
    cdsStockMovHTRADEREFF: TStringField;
    cdsStockMovHSETTLEREASON: TStringField;
    cdsStockMovHSTATUS: TStringField;
    cdsStockMovHMODDA: TDateTimeField;
    cdsStockMovHMODUI: TStringField;
    cdsStockMovHAPPDA: TDateTimeField;
    cdsStockMovHAPPUI: TStringField;
    cdsStockMovHUNDER4Y: TIntegerField;
    cdsStockMovHUNDER4YDA: TDateTimeField;
    cdsStockMovHNOTES4Y: TStringField;
    cdsStockMovHISDEL: TIntegerField;
    cdsStockMovHID: TLargeintField;
    cdsStockMovHSOURCE_ACCSOPID: TLargeintField;
    cdsStockMovHCANCEL: TStringField;
    cdsStockMovHCANCEL_DATE: TDateField;
    cdsStockMovHCANCEL_UI: TStringField;
    cdsStockMovHAPPROVED: TStringField;
    cdsStockMovHAPPROVED_DATE: TDateField;
    cdsStockMovHAPPROVED_UI: TStringField;
    cdsStockMovHSOURCE_ENTID: TIntegerField;
    cdsStockMovHTARGET_ENTID: TIntegerField;
    cdsStockMovHPROGRAM_ID: TIntegerField;
    cdsStockMovHprog_id: TIntegerField;
    cdsStockMovHprogName: TStringField;
    cdsStockMovHqryStockMovD: TDataSetField;
    cdsStockMovDSMID: TIntegerField;
    cdsStockMovDINSTRUMENT_ID: TLargeintField;
    cdsStockMovDSMQTY: TLargeintField;
    cdsStockMovDMODDA: TDateTimeField;
    cdsStockMovDMODUI: TStringField;
    cdsStockMovDAPPDA: TDateTimeField;
    cdsStockMovDAPPUI: TStringField;
    cdsStockMovDUNDER4Y: TIntegerField;
    cdsStockMovDUNDER4YDA: TDateTimeField;
    cdsStockMovDNOTES4Y: TStringField;
    cdsStockMovDISDEL: TIntegerField;
    cdsStockMovDID: TLargeintField;
    cdsStockMovDMARKETCODE: TStringField;
    cdsStockMovDLOCALCODE: TStringField;
    cdsStockMovDISSUERNAME: TStringField;
    cdsStockMovDISINCODE: TStringField;
    cdsStockMovDISINDATE: TDateTimeField;
    cdsStockMovDSOURCE_SETTLED: TStringField;
    cdsStockMovDTARGET_SETTLED: TStringField;
    cdsStockMovDSOURCE_MATCH: TStringField;
    cdsStockMovDTARGET_MATCH: TStringField;
    cdsStockMovDSOURCE_PRICE: TFloatField;
    cdsStockMovDTARGET_PRICE: TFloatField;
    cdsStockMovDMAXQTY: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure cdsStockMovHSOURCE_ACCIDChange(Sender: TField);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure cdsStockMovHNewRecord(DataSet: TDataSet);
    procedure DataContainerAfterOpenEditorDataset(Sender: TNMasterDetailData;
      var AContinue: Boolean);
    procedure cdsStockMovDBeforePost(DataSet: TDataSet);
    procedure actPostingExecute(Sender: TObject);
    procedure actReverseExecute(Sender: TObject);
    procedure actReverseUpdate(Sender: TObject);
    procedure actGenerateInstructionExecute(Sender: TObject);
    procedure actGenerateOTCNonExchangeExecute(Sender: TObject);
    procedure actCancelStockMoveExecute(Sender: TObject);
    procedure actStockApprovedExecute(Sender: TObject);
    procedure actStockApprovedUpdate(Sender: TObject);
    procedure actCancelStockMoveUpdate(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure cdsStockMovHAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure actGenerateOTCFileExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actUploadFromFileExecute(Sender: TObject);
    procedure actCopySelectedExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cdsStockMovHBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    FSystemDate: TDate;
  public
    { Public declarations }
  end;

var
  frmStockMovList: TfrmStockMovList;

implementation

{$R *.dfm}

uses DataGlobal, FormStockMov, FormProgressBar, FormViewTransaction;

procedure TfrmStockMovList.actCancelStockMoveExecute(Sender: TObject);
var
  bResult : Boolean;
begin
  inherited;

  if MessageDlg('Cancel Stock Move ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    bResult := dmGlobal.RemoteServer.StockMovementCancel(cdsStockMovListSMID.AsInteger);

    if bResult then
      MessageDlg('Stock move has been cancelled', mtInformation, [mbOk], 0)
    else
      MessageDlg('Stock move cancellation failed', mtError, [mbOk], 0);

    cdsStockMovList.Refresh;
  end;

//  if MessageDlg('Cancel Stock Move ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//  begin
//    cdsStockMovHBySMID.Close;
//    cdsStockMovHBySMID.Params[0].AsInteger := cdsStockMovListSMID.AsInteger;
//    cdsStockMovHBySMID.Open;
//
//    if cdsStockMovHBySMID.RecordCount > 0 then
//    begin
//      cdsStockMovHBySMID.Edit;
//      cdsStockMovHBySMIDSTATUS.AsString        := 'C';
//      cdsStockMovHBySMIDCANCEL.AsString        := '1';
//      cdsStockMovHBySMIDCANCEL_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
//      cdsStockMovHBySMIDCANCEL_UI.AsString     := dmGlobal.UserID;
//      cdsStockMovHBySMID.Post;
//
//      cdsStockMovHBySMID.ApplyUpdates(-1);
//      cdsStockMovList.Refresh;
//    end;
//  end;
end;

procedure TfrmStockMovList.actCancelStockMoveUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsStockMovListSTATUS.AsString = 'O') and (cdsStockMovListCANCEL.AsString <> '1');;
end;

procedure TfrmStockMovList.actCopySelectedExecute(Sender: TObject);
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

procedure TfrmStockMovList.actEditUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsStockMovListAPPROVED.AsString <> '1') and (cdsStockMovListCANCEL.AsString <> '1') and (cdsStockMovListSTATUS.AsString <> 'P');
end;

procedure TfrmStockMovList.actGenerateInstructionExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := dmGlobal.RemoteServer.AddCustodianInstruction(
      cdsStockMovListSMID.AsLargeInt,
      cdsStockMovListSMCODE.AsString,
      'SMID', 0, '', '', 0, '', '', 0, '', 0, '', '', '', '', '');

  MessageDlg(sMessage, mtInformation, [mbOk], 0);
end;

procedure TfrmStockMovList.actGenerateOTCFileExecute(Sender: TObject);
  function GetValue(ARecord: Integer; AIndex: Integer): Variant;
  begin
    Result := gvwOTCInstr.Controller.SelectedRecords[ARecord].Values[AIndex];
  end;

  function IsNull(AData: variant): string;
  begin
    if VarIsNull(AData) then
      Result := ''
    else
      Result := AData;
  end;

var
  i: Integer;
  sSettlementReason,
  sDataList, sExt,
  sFileName: string;
  oDataList: TStringList;
begin
  inherited;
  if cdsOTCInstr.IsEmpty then
  begin
    MessageError('There is no data can be generated');
    Abort;
  end;

  if SaveDlg.Execute then
    sFileName := SaveDlg.FileName;

  if sFileName = '' then
    Abort;

  sExt := ExtractFileExt(sFileName);
  if sExt <> '.otc' then
  begin
    if not MessageQuestion('This extection file name will be rename as .otc') then
      Abort;
  end;

  try
    oDataList := TStringList.Create;

    for i := 0 to gvwOTCInstr.Controller.SelectedRecordCount -1 do
    begin
      sDataList := '';

      sDataList := IsNull(GetValue(i, gvwOTCInstrexternalReference.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrinstructionType.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrparticipantCode.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrparticipantAccount.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrparticipantAccountCash.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrcounterpartCode.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsecurityCode.Index)) +'|'+
                   FloatToStr(GetValue(i, gvwOTCInstrnumberOfSecurities.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrtradeDate.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrcurrencyCode.Index)) +'|'+
                   FloatToStr(GetValue(i, gvwOTCInstrsettlementAmount.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsettlementDate.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrpurpose.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrtradingReference.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsettlementReason.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrdescription.Index)) +'|'+
                   IsNull(GetValue(i, gvwOTCInstrsecurityCodeType.Index));

      oDataList.Add(sDataList);
    end;
  finally
    if oDataList.Count > 0 then
      dmGlobal.IntDataCBest.GenerateRD(sFileName, oDataList);

    FreeAndNil(oDataList);
    MessageDlg('Generate OTC Instruction File has been generate', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmStockMovList.actGenerateOTCNonExchangeExecute(
  Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  sMessage := dmGlobal.RemoteServer.GenerateOTCNonExchange(cdsStockMovListSMID.AsString, 'M');
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
end;

procedure TfrmStockMovList.actPostingExecute(Sender: TObject);
var
  i, RecIdx: Integer;
  sMessage, sMsg: String;
begin
  inherited;
  if gvwMaster.Controller.SelectedRecordCount > 1 then
  begin
    if MessageDlg('Are you sure to posting multiple Stock Movements?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      sMessage := '';

      for i := 0 to gvwMaster.Controller.SelectedRecordCount - 1 do
      begin
        RecIdx := gvwMaster.Controller.SelectedRecords[i].RecordIndex;
        gvwMaster.DataController.FocusedRecordIndex := RecIdx;

        if (cdsStockMovListSTATUS.AsString = 'O') then
        begin
          dmGlobal.RemoteServer.PostingStockMovement(cdsStockMovListSMID.AsInteger, sMsg);
          sMessage := sMessage + QuotedStr(cdsStockMovListSMCODE.AsString)+': '+sMsg+#13#10;
        end;
      end;

      cdsStockMovList.Refresh;
      ShowMessage(sMessage);
    end;
  end
  else
  begin
    if (cdsStockMovListSTATUS.AsString = 'O') then
    begin
      if MessageDlg('Are you sure to posting Stock Movement ' +
        QuotedStr(cdsStockMovListSMCODE.AsString) + '?', mtConfirmation, mbYesNo, 0) = mrYes then
      begin
        dmGlobal.RemoteServer.PostingStockMovement(cdsStockMovListSMID.AsInteger, sMsg);
        cdsStockMovList.Refresh;
        ShowMessage(sMsg);
      end;
    end;
  end;
end;

procedure TfrmStockMovList.actRefreshExecute(Sender: TObject);
var
  sTempStatus, sStatus: string;
begin
//  inherited;
  sTempStatus := chStatus.EditValue;
  sStatus     := '';

  // Status : Open
  if copy(sTempStatus, 1, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'O';
  end;

  // Status : Posted
  if copy(sTempStatus, 2, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'P';
  end;

  // Status : Canceled
  if copy(sTempStatus, 3, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'C';
  end;

  // Status : Reversed
  if copy(sTempStatus, 4, 1) = '1' then
  begin
    if sStatus <> '' then
      sStatus := sStatus + ',';
    sStatus := sStatus + 'R';
  end;

  cdsStockMovList.Close;
  cdsStockMovList.Params[0].AsString  := cbFilter.EditValue;
  cdsStockMovList.Params[1].AsDate    := VarToDateTime(dtStartDate.EditValue);
  cdsStockMovList.Params[2].AsString  := sStatus;
  cdsStockMovList.Open;

  cdsOTCInstr.Close;
  cdsOTCInstr.Params[0].AsDate := VarToDateTime(dtStartDate.EditValue);
  cdsOTCInstr.Open;

  gvwMaster.ApplyBestFit();
end;

procedure TfrmStockMovList.actReverseExecute(Sender: TObject);
var
  sMessage: string;
begin
  inherited;
  dmGlobal.RemoteServer.StockMoveReverse(cdsStockMovListSMID.AsLargeInt, sMessage);
  MessageDlg(sMessage, mtInformation, [mbOk], 0);
  cdsStockMovList.Refresh;
end;

procedure TfrmStockMovList.actReverseUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsStockMovListSTATUS.AsString = 'P') and (cdsStockMovListCANCEL.AsString <> '1');
end;

procedure TfrmStockMovList.actStockApprovedExecute(Sender: TObject);
var
  bResult : Boolean;
begin
  inherited;

  if MessageDlg('Approved Stock Move ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    bResult := dmGlobal.RemoteServer.StockMovementApprove(cdsStockMovListSMID.AsInteger);

    if bResult then
      MessageDlg('Stock Move has been approved', mtInformation, [mbOk], 0)
    else
      MessageDlg('Stock Move approval failed', mtError, [mbOk], 0);

    cdsStockMovList.Refresh;
  end;


//  if MessageDlg('Approved Stock Move ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//  begin
//    cdsStockMovHBySMID.Close;
//    cdsStockMovHBySMID.Params[0].AsInteger := cdsStockMovListSMID.AsInteger;
//    cdsStockMovHBySMID.Open;
//
//    if cdsStockMovHBySMID.RecordCount > 0 then
//    begin
//      cdsStockMovHBySMID.Edit;
//      cdsStockMovHBySMIDAPPROVED.AsString        := '1';
//      cdsStockMovHBySMIDAPPROVED_DATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
//      cdsStockMovHBySMIDAPPROVED_UI.AsString     := dmGlobal.UserID;
//      cdsStockMovHBySMID.Post;
//
//      cdsStockMovHBySMID.ApplyUpdates(-1);
//      cdsStockMovList.Refresh;
//
//      ShowMessage('Stock Move has been approved');
//    end;
//  end;
end;

procedure TfrmStockMovList.actStockApprovedUpdate(Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := (cdsStockMovListSTATUS.AsString = 'O') and (cdsStockMovListAPPROVED.AsString <> '1') and (cdsStockMovListCANCEL.AsString <> '1');
end;

procedure TfrmStockMovList.actUploadFromFileExecute(Sender: TObject);
var
  iError, iSuccess: Integer;
  sFileName: string;
  sErrorMsg,sMessage: string;
  sSource_AccCode,sTarget_AccCode,sStockCode: string;
  oProgress: TfrmProgressBar;
  oExcel, oSheet: OleVariant;
  iRows,i,sProgID : Integer;
  sQty,sVDate,sAccNoTarget : Boolean;
  sSource_Price,sTarget_Price : Double;
  oPros : Boolean ;
  sProgramName: string;
begin
  inherited;
  iError   := 0;
  iSuccess := 0;

  if OpenDialog.Execute then
    sFileName := OpenDialog.FileName;

  if FileExists(sFileName) then
  begin
    try
      Screen.Cursor := crSQLWait;
      sErrorMsg     := '';
      oProgress     := TfrmProgressBar.Create(nil);

      oExcel := CreateOleObject('Excel.Application');
      oExcel.DisplayAlerts := False;
      oExcel.WorkBooks.Open(sFileName);

      oSheet := oExcel.WorkBooks[1].WorkSheets[1];
      iRows  := oSheet.UsedRange.Rows.Count;

      oProgress.Show;
      oProgress.ChangeBarCaption('Uploading stock movement');
      for i  := 2 to iRows do
      begin
        sSource_AccCode := oSheet.Cells[i, 2].Value;
        sTarget_AccCode := oSheet.Cells[i, 3].Value;
        sStockCode      := oSheet.Cells[i, 5].Value;
        sProgramName    := oSheet.Cells[i, 4].Value;
        sSource_Price   := oSheet.Cells[i, 7].Value;
        sTarget_Price   := oSheet.Cells[i, 8].Value;
        sQty            := IsZero(oSheet.Cells[i, 6].Value);
        sVDate          := IsZero(oSheet.Cells[i, 1].Value);

        oProgress.ChangeBar(trunc(i / iRows * 100), 'Processing stock movement ' +
          QuotedStr(sSource_AccCode)+' - '+QuotedStr(sStockCode));

        if sSource_AccCode <> sTarget_AccCode then
        begin
          
          cdsAccountByAccNo.Close;
          cdsAccountByAccNo.Params[0].AsString := sSource_AccCode;
          cdsAccountByAccNo.Open;

          cdsAccNoTarget.Close;
          cdsAccNoTarget.Params[0].AsString := sTarget_AccCode;
          cdsAccNoTarget.Open;

          if cdsAccNoTarget.IsEmpty then sAccNoTarget :=True
          else sAccNoTarget := False; 


          if not cdsAccountByAccNo.IsEmpty then
          begin
            with dmGlobal.IntDataLookup do
            begin
              cdsluCustStock.Close;
              cdsluCustStock.Params[0].AsDate    := VarToDateTime(dtStartDate.EditValue);
              cdsluCustStock.Params[1].AsInteger := cdsAccountByAccNoACCID.AsInteger;
              cdsluCustStock.Open;

              if cdsluCustStock.IsEmpty then
              begin
                Inc(iError);
                sErrorMsg := sErrorMsg + sSource_AccCode +'-'+ cdsLuAccountACCNAME.AsString +
                  ' does not have stock '+ sStockCode + #13;
              end
              else
              begin
                sStockCode := dmGlobal.GetStringDelimiter(sStockCode, '.');
                sStockCode := sStockCode +'.'+ dmGlobal.RemoteServer.GetDefaultMarket;

                if not cdsluCustStock.Locate('StockCode', sStockCode, []) then
                begin
                  Inc(iError);
                  sErrorMsg := sErrorMsg + sSource_AccCode +'-'+ cdsLuAccountACCNAME.AsString +
                              ' does not have stock '+ sStockCode + #13;
                end
                else
                begin
                  if cdsluCustStockStockBalance.AsFloat < oSheet.Cells[i, 6].Value then
                  begin
                    Inc(iError);
                    sErrorMsg := sErrorMsg + sSource_AccCode +'-'+ cdsLuAccountACCNAME.AsString +
                              ' does not have enough balance stock for '+ sStockCode + #13
                  end
                  else
                  begin
                    if cdsluCustStock.Locate('StockCode', sStockCode, []) then
                    begin
                      if sVDate then
                      begin
                        Inc(iError);
                        sErrorMsg := sErrorMsg + 'Value Date Is Empty ' + #13;
                        oPros := False;
                      end
                      else if sSource_Price < 0  then
                      begin
                        Inc(iError);
                        sErrorMsg := sErrorMsg + 'Source Price Is Empty ' + #13;
                        oPros := False
                      end
                      else if sTarget_Price < 0 then
                      begin
                        Inc(iError);
                        sErrorMsg := sErrorMsg + 'Target Price Is Empty ' + #13;
                        oPros := False
                      end
                      else if sAccNoTarget then
                      begin
                        Inc(iError);
                        sErrorMsg := sErrorMsg + 'Unregistered Target Acc No: '+ sTarget_AccCode +'-'+ cdsAccNoTargetACCNAME.AsString + #13;
                        oPros := False                      
                      end
                      else if sQty then
                      begin
                        Inc(iError);
                        sErrorMsg := sErrorMsg + 'Qty Is Empty ' + #13;
                        oPros := False
                      end
                      else
                        oPros :=True;

                      if not sVDate then
                      begin
                        if FSystemDate <> oSheet.Cells[i, 1].Value then
                        begin
                          Inc(iError);
                          sErrorMsg := sErrorMsg + 'Value Date Is Different With System Date : ' + FormatDateTime('dd mmm yyyy', oSheet.Cells[i, 1].Value) + #13;
                          oPros     := False;
                        end;
                      end;

                      if sProgramName <> '' then
                      begin
                        if cdsLuMovementProgram.Locate('progName', sProgramName, []) then
                          sProgID := cdsLuMovementProgramprog_id.AsInteger
                        else
                        begin
                          Inc(iError);
                          sErrorMsg := sErrorMsg + 'Unregistered Program Name : '+ sProgramName + #13;
                          oPros := False
                        end;
                      end;

                      if oPros then
                      begin
                        if not cdsStockMovH.Active then
                          cdsStockMovH.Active := True;

                        cdsStockMovH.Append;
                        cdsStockMovHENTRYDATE.AsDateTime    := FSystemDate;
                        cdsStockMovHVALUEDATE.AsDateTime    := oSheet.Cells[i, 1].Value;
                        cdsStockMovHSOURCE_ACCID.AsInteger  := cdsAccountByAccNoACCID.AsInteger;
                        cdsStockMovHSOURCE_ACCNO.AsString   := cdsAccountByAccNoACCCODE.AsString;
                        cdsStockMovHSOURCE_ACCNAME.AsString := cdsAccountByAccNoACCNAME.AsString;
                        cdsStockMovHTARGET_ACCID.AsInteger  := cdsAccNoTargetACCID.AsInteger;
                        cdsStockMovHTARGET_ACCNO.AsString   := cdsAccNoTargetACCCODE.AsString;
                        cdsStockMovHTARGET_ACCNAME.AsString := cdsAccNoTargetACCNAME.AsString;
                        cdsStockMovHPROGRAM_ID.AsInteger    := sProgID;
                        cdsStockMovHREMARK.AsString         := oSheet.Cells[i, 9].Value;
                        cdsStockMovH.Post;
                        cdsStockMovH.ApplyUpdates(-1);

                        if not cdsStockMovD.Active then
                          cdsStockMovD.Active := True;

                        cdsStockMovD.Append;
                        cdsStockMovDSMID.AsInteger          := cdsStockMovHSMID.AsInteger;
                        cdsStockMovDINSTRUMENT_ID.AsInteger := cdsluCustStockStockID.AsInteger;
                        cdsStockMovDSOURCE_PRICE.AsFloat    := oSheet.Cells[i, 7].Value;
                        cdsStockMovDTARGET_PRICE.AsFloat    := oSheet.Cells[i, 8].Value;
                        cdsStockMovDSMQTY.AsLargeInt        := oSheet.Cells[i, 6].Value;
                        cdsStockMovDMAXQTY.AsLargeInt       := oSheet.Cells[i, 6].Value;
                        cdsStockMovD.Post;
                        cdsStockMovD.ApplyUpdates(-1);

                        Inc(iSuccess);
                      end;
                      
                    end
                    else
                    begin
                      Inc(iError);
                      sErrorMsg := sErrorMsg + sSource_AccCode +'-'+ cdsLuAccountACCNAME.AsString +
                                  ' does not have stock '+ sStockCode + #13
                    end;
                  end;
                end;
              end;
            end;
          end
          else
          begin
            Inc(iError);
            sErrorMsg := sErrorMsg + 'Unregistered Source Acc No: '+ sSource_AccCode +'-'+ cdsAccountByAccNoACCNAME.AsString + #13          
          end;
        end
        else
        begin
          Inc(iError);
          sErrorMsg := sErrorMsg + 'Source Account: ' + sSource_AccCode +' & '+ 
                    'Target Account: ' + sTarget_AccCode + ' must be different'+ #13;
        end;
        
      end;
        
    finally
      sMessage := IntToStr(iSuccess) + ' data successfully uploaded';
      if iError > 0 then
        sMessage := sMessage +#13+ IntToStr(iError) + ' fail to upload with error : '+#13+sErrorMsg;

      MessageDlg(sMessage, mtInformation, [mbOk], 0);


      FreeAndNil(oProgress);
      oExcel.Quit;

      oExcel := Unassigned;
      oSheet := Unassigned;

      cdsStockMovList.Refresh;
      Screen.Cursor := crDefault;

    end;
  end;
end;

procedure TfrmStockMovList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsStockMovListVALUEDATE.AsDateTime;
    iLedgerTransID := -1;
    iStockTransID  := cdsStockMovListSTOCKTRANSID.AsLargeInt;
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

procedure TfrmStockMovList.cdsStockMovDBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsStockMovDSMQTY.AsLargeInt > cdsStockMovDMAXQTY.AsLargeInt then
    cdsStockMovDSMQTY.AsLargeInt := cdsStockMovDMAXQTY.AsLargeInt;
end;

procedure TfrmStockMovList.cdsStockMovHAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
var
  ID: Integer;
  sMsg: String;
begin
  inherited;
  ID := cdsStockMovHSMID.AsInteger;
  dmGlobal.RemoteServer.GenerateCustodyInstruction(ID, 'SMID', sMsg);
end;

procedure TfrmStockMovList.cdsStockMovHBeforePost(DataSet: TDataSet);
begin
  if cdsStockMovHSMID.AsInteger = -1 then
  begin
    cdsStockMovHSMID.AsInteger  := dmGlobal.RemoteServer.GetSeq('TBL_B_STOCKMOV_H');
    cdsStockMovHSMCODE.AsString := dmGlobal.RemoteServer.GetVoucherNo(cdsStockMovHENTRYDATE.AsDateTime, 'SM', 'TBL_B_STOCKMOV_H');
  end;

  inherited;
end;

procedure TfrmStockMovList.cdsStockMovHNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsStockMovHSMID.AsInteger       := -1;
  cdsStockMovHSMCODE.AsString      := '<AUTO>';
  cdsStockMovHSTATUS.AsString      := 'O';
  cdsStockMovHENTRYDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsStockMovHVALUEDATE.AsDateTime := cdsStockMovHENTRYDATE.AsDateTime;
  cdsStockMovHPURPOSE.AsString     := 'NONEXCHG';
  cdsStockMovHSETTLEREASON.AsString:= 'OWNE';
end;

procedure TfrmStockMovList.cdsStockMovHSOURCE_ACCIDChange(Sender: TField);
begin
  inherited;
  if not cdsStockMovD.IsEmpty then
  begin
    while not cdsStockMovD.IsEmpty do
    begin
      cdsStockMovD.Delete;
    end;
  end;

//  if cdsStockMovHTARGET_ENTID.AsInteger <> cdsStockMovHSOURCE_ENTID.AsInteger then
  begin
    cdsStockMovHTARGET_ACCID.Clear;
    cdsStockMovHTARGET_ACCNO.Clear;
    cdsStockMovHTARGET_ACCNAME.Clear;
    cdsStockMovHTARGET_ENTID.Clear;
  end;
end;

procedure TfrmStockMovList.DataContainerAfterOpenEditorDataset(
  Sender: TNMasterDetailData; var AContinue: Boolean);
begin
  inherited;
  if Sender.State = mddsEdit then
  begin
    if not cdsStockMovD.IsEmpty then
    begin
      cdsStockPosByAcc.Close;
      cdsStockPosByAcc.Params[0].AsDate := dmGlobal.RemoteServer.GetTransDate;
      cdsStockPosByAcc.Params[1].AsInteger := cdsStockMovHSOURCE_ACCID.AsInteger;
      cdsStockPosByAcc.Open;

      if not cdsStockPosByAcc.IsEmpty then
      begin
        cdsStockMovD.First;

        while not cdsStockMovD.Eof do
        begin
          if cdsStockPosByAcc.Locate('STOCKID', cdsStockMovDINSTRUMENT_ID.Value, []) then
          begin
            cdsStockMovD.Edit;
            cdsStockMovDMAXQTY.AsLargeInt := Trunc(cdsStockPosByAccQTY_ONHAND.AsFloat);
            cdsStockMovD.Post;
          end;

          cdsStockMovD.Next;
        end;
      end;

    end;
  end;
end;

procedure TfrmStockMovList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmStockMov;
end;

procedure TfrmStockMovList.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '1111';
end;

procedure TfrmStockMovList.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  chStatus.EditValue := '0000';
end;

procedure TfrmStockMovList.FormCreate(Sender: TObject);
begin
  inherited;
  cbFilter.EditValue    := 'E';
  FSystemDate           := dmGlobal.RemoteServer.GetTransDate;
  dtStartDate.EditValue := FSystemDate;

  chStatus.EditValue := '1000';

  with dmGlobal.IntDataLookup do
  begin
    cdsLuMovementProgram.Close;
    cdsLuMovementProgram.Open;
  end;

  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmStockMovList);

end.
