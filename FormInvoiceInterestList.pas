unit FormInvoiceInterestList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, NReportClient, NDatasetContainer, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset;

type
  TfrmInvoiceInterestList = class(TfrmBrowseData)
    cdsInvoiceInterestList: TNClientDataset;
    cdsInvoiceInterestListInvoiceID: TIntegerField;
    cdsInvoiceInterestListInvoiceCode: TStringField;
    cdsInvoiceInterestListInterestType: TStringField;
    cdsInvoiceInterestListDescription: TStringField;
    cdsInvoiceInterestListEntryDate: TDateField;
    cdsInvoiceInterestListDueDate: TDateField;
    cdsInvoiceInterestListCcy: TStringField;
    cdsInvoiceInterestListInterestAmount: TFloatField;
    cdsInvoiceInterestListAccountCode: TStringField;
    cdsInvoiceInterestListAccountName: TStringField;
    cdsInvoiceInterestListAccountType: TStringField;
    cdsInvoiceInterestListTransactionID: TLargeintField;
    cdsInvoiceInterestListTransactionNo: TStringField;
    cdsInvoiceInterestListTRTYPE: TStringField;
    cdsInvoiceInterestListStatus: TStringField;
    cdsInvoiceInterestListPrincipalzedSystemDate: TDateTimeField;
    cdsInvoiceInterestListPrincipalzedServerDate: TDateTimeField;
    cdsInvoiceInterestListPrincipalzedUser: TStringField;
    cdsInvoiceInterestListCanceledSystemDate: TDateField;
    cdsInvoiceInterestListCanceledServerDate: TDateTimeField;
    cdsInvoiceInterestListCanceledUser: TStringField;
    cdsInvoiceInterestListCanceledNotes: TStringField;
    gvwMasterInvoiceID: TcxGridDBBandedColumn;
    gvwMasterInvoiceCode: TcxGridDBBandedColumn;
    gvwMasterInterestType: TcxGridDBBandedColumn;
    gvwMasterDescription: TcxGridDBBandedColumn;
    gvwMasterEntryDate: TcxGridDBBandedColumn;
    gvwMasterDueDate: TcxGridDBBandedColumn;
    gvwMasterCcy: TcxGridDBBandedColumn;
    gvwMasterInterestAmount: TcxGridDBBandedColumn;
    gvwMasterAccountCode: TcxGridDBBandedColumn;
    gvwMasterAccountName: TcxGridDBBandedColumn;
    gvwMasterAccountType: TcxGridDBBandedColumn;
    gvwMasterTransactionID: TcxGridDBBandedColumn;
    gvwMasterTransactionNo: TcxGridDBBandedColumn;
    gvwMasterTRTYPE: TcxGridDBBandedColumn;
    gvwMasterStatus: TcxGridDBBandedColumn;
    gvwMasterPrincipalzedSystemDate: TcxGridDBBandedColumn;
    gvwMasterPrincipalzedServerDate: TcxGridDBBandedColumn;
    gvwMasterPrincipalzedUser: TcxGridDBBandedColumn;
    gvwMasterCanceledSystemDate: TcxGridDBBandedColumn;
    gvwMasterCanceledServerDate: TcxGridDBBandedColumn;
    gvwMasterCanceledUser: TcxGridDBBandedColumn;
    gvwMasterCanceledNotes: TcxGridDBBandedColumn;
    Cancel1: TMenuItem;
    cdsInvoiceInterestListLEDGERTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    ViewTransaction1: TMenuItem;
    procedure actCancelExecute(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInvoiceInterestList: TfrmInvoiceInterestList;

implementation

{$R *.dfm}

uses DataGlobal, FormViewTransaction;

procedure TfrmInvoiceInterestList.actCancelExecute(Sender: TObject);
var
  iInvoiceID: Integer;
  sMsg: string;
  sNotes: string;
  bRes: Boolean;
begin
//  inherited;
  sNotes := 'Default Reason';
  if sNotes <> '' then
    sMsg := 'Cancel Invoice Interest ?'
  else
    sMsg := 'Cancel Reason is Empty, Continue Cancel Invoice Interest ?';

  if MessageQuestion(sMsg) then
  begin
    iInvoiceID := cdsInvoiceInterestListInvoiceID.AsInteger;

    sNotes := InputBox('Invoice Interest Cancel', 'Cancel Reason', '');
    if sNotes <> '' then
    begin
      bRes := dmGlobal.RemoteServer.InvoiceInterestCancel(iInvoiceID, sNotes, sMsg);
      if bRes then
      begin
        MessageInformation(sMsg);
        cdsInvoiceInterestList.Refresh;
      end
      else
        MessageError(sMsg);
    end
    else
      actCancel.Execute;
  end;
end;

procedure TfrmInvoiceInterestList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsInvoiceInterestListDueDate.AsDateTime;
    iLedgerTransID := cdsInvoiceInterestListLEDGERTRANSID.AsLargeInt;
    iStockTransID  := -1;
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

end.
