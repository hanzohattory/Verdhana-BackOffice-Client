unit FormWaveInterestPenaltyList;

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
  TfrmWaveInterestPenaltyList = class(TfrmBrowseData)
    cdsWaveInterestPenaltyList: TNClientDataset;
    cdsWaveInterestPenaltyListWaveID: TIntegerField;
    cdsWaveInterestPenaltyListWaveCode: TStringField;
    cdsWaveInterestPenaltyListWaveType: TStringField;
    cdsWaveInterestPenaltyListDescription: TStringField;
    cdsWaveInterestPenaltyListEntryDate: TDateField;
    cdsWaveInterestPenaltyListCcy: TStringField;
    cdsWaveInterestPenaltyListInterestAmount: TFloatField;
    cdsWaveInterestPenaltyListAccountCode: TStringField;
    cdsWaveInterestPenaltyListAccountName: TStringField;
    cdsWaveInterestPenaltyListAccountType: TStringField;
    cdsWaveInterestPenaltyListTransactionID: TLargeintField;
    cdsWaveInterestPenaltyListTransactionNo: TStringField;
    cdsWaveInterestPenaltyListTRTYPE: TStringField;
    cdsWaveInterestPenaltyListStatus: TStringField;
    cdsWaveInterestPenaltyListPrincipalzedSystemDate: TDateField;
    cdsWaveInterestPenaltyListPrincipalzedServerDate: TDateTimeField;
    cdsWaveInterestPenaltyListPrincipalzedUser: TStringField;
    cdsWaveInterestPenaltyListCanceledSystemDate: TDateField;
    cdsWaveInterestPenaltyListCanceledServerDate: TDateTimeField;
    cdsWaveInterestPenaltyListCanceledUser: TStringField;
    cdsWaveInterestPenaltyListCanceledNotes: TStringField;
    gvwMasterWaveID: TcxGridDBBandedColumn;
    gvwMasterWaveCode: TcxGridDBBandedColumn;
    gvwMasterWaveType: TcxGridDBBandedColumn;
    gvwMasterDescription: TcxGridDBBandedColumn;
    gvwMasterEntryDate: TcxGridDBBandedColumn;
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
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWaveInterestPenaltyList: TfrmWaveInterestPenaltyList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmWaveInterestPenaltyList.actCancelExecute(Sender: TObject);
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
    sNotes     := '.::Cancel::.';
    iInvoiceID := cdsWaveInterestPenaltyListWaveID.AsInteger;

    sNotes := InputBox('Wave Interest & Penalty Cancel', 'Cancel Reason', '');
    if sNotes <> '' then
    begin
      bRes := dmGlobal.RemoteServer.WaveInterestCancel(iInvoiceID, sNotes, sMsg);
      if bRes then
      begin
        MessageInformation(sMsg);
        cdsWaveInterestPenaltyList.Refresh;
      end
      else
        MessageError(sMsg);
    end
    else
      actCancel.Execute;
  end;
end;

end.
