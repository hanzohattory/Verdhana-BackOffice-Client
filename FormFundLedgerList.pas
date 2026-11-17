unit FormFundLedgerList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxCheckBox, cxCalendar,
  dxBar, cxBarEditItem, NReportClient, NDatasetContainer, cxClasses,
  System.Actions, Vcl.ActnList, NDatasetAction, Vcl.Menus, dxPSCore,
  dxPScxCommon, System.ImageList, Vcl.ImgList, cxPropertiesStore,
  NActionPermission, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  Datasnap.DBClient, NClientDataset, cxImageComboBox, dxDateRanges,
  dxScrollbarAnnotations;

type
  TfrmFundLedgerList = class(TfrmBrowseData)
    BarMBrowseBar2: TdxBar;
    FVDate: TcxBarEditItem;
    dtSVDate: TcxBarEditItem;
    dtEVDate: TcxBarEditItem;
    FEDate: TcxBarEditItem;
    dtSEDate: TcxBarEditItem;
    dtEEDate: TcxBarEditItem;
    cdsFundLedgerList: TNClientDataset;
    cdsFundLedgerListFLGID: TLargeintField;
    cdsFundLedgerListVDATE: TDateField;
    cdsFundLedgerListEDATE: TDateField;
    cdsFundLedgerListVPERIODID: TLargeintField;
    cdsFundLedgerListVPERIODCODE: TStringField;
    cdsFundLedgerListEPERIODID: TLargeintField;
    cdsFundLedgerListEPERIODCODE: TStringField;
    cdsFundLedgerListHDESC: TStringField;
    cdsFundLedgerListTOTALDB: TFloatField;
    cdsFundLedgerListTOTALCR: TFloatField;
    cdsFundLedgerListPOSTED: TStringField;
    cdsFundLedgerListPOSTEDDATE: TDateField;
    cdsFundLedgerListPOSTEDUI: TStringField;
    cdsFundLedgerListCANCELED: TVarBytesField;
    cdsFundLedgerListCANCELDATE: TDateField;
    cdsFundLedgerListCANCELUI: TStringField;
    cdsFundLedgerListREVERSED: TStringField;
    cdsFundLedgerListREVERSDATE: TDateField;
    cdsFundLedgerListREVERSUI: TStringField;
    cdsFundLedgerListMODDA: TDateTimeField;
    cdsFundLedgerListMODUI: TStringField;
    cdsFundLedgerListAPPDA: TDateTimeField;
    cdsFundLedgerListAPPUI: TStringField;
    cdsFundLedgerListUNDER4Y: TIntegerField;
    cdsFundLedgerListUNDER4YDA: TDateTimeField;
    cdsFundLedgerListNOTES4Y: TStringField;
    cdsFundLedgerListISDEL: TIntegerField;
    cdsFundLedgerListID: TLargeintField;
    gvwMasterFLGID: TcxGridDBBandedColumn;
    gvwMasterFLGCD: TcxGridDBBandedColumn;
    gvwMasterVDATE: TcxGridDBBandedColumn;
    gvwMasterEDATE: TcxGridDBBandedColumn;
    gvwMasterVPERIODID: TcxGridDBBandedColumn;
    gvwMasterVPERIODCODE: TcxGridDBBandedColumn;
    gvwMasterEPERIODID: TcxGridDBBandedColumn;
    gvwMasterEPERIODCODE: TcxGridDBBandedColumn;
    gvwMasterHDESC: TcxGridDBBandedColumn;
    gvwMasterTOTALDB: TcxGridDBBandedColumn;
    gvwMasterTOTALCR: TcxGridDBBandedColumn;
    gvwMasterPOSTED: TcxGridDBBandedColumn;
    gvwMasterPOSTEDDATE: TcxGridDBBandedColumn;
    gvwMasterPOSTEDUI: TcxGridDBBandedColumn;
    gvwMasterCANCELED: TcxGridDBBandedColumn;
    gvwMasterCANCELDATE: TcxGridDBBandedColumn;
    gvwMasterCANCELUI: TcxGridDBBandedColumn;
    gvwMasterREVERSED: TcxGridDBBandedColumn;
    gvwMasterREVERSDATE: TcxGridDBBandedColumn;
    gvwMasterREVERSUI: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    actPosting: TNAction;
    Posting1: TMenuItem;
    cdsFundLedgerListFLGCD: TStringField;
    cdsFundLedgerListGL_SUBGL: TStringField;
    gvwMasterGL_SUBGL: TcxGridDBBandedColumn;
    cdsFundLedgerListFUNDTRANSID: TLargeintField;
    actViewTransaction: TNAction;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FVDatePropertiesEditValueChanged(Sender: TObject);
    procedure FEDatePropertiesEditValueChanged(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actPostingUpdate(Sender: TObject);
    procedure actViewTransactionExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFundLedgerList: TfrmFundLedgerList;

implementation

{$R *.dfm}

uses DataGlobal, FormFundLedger, FormViewTransaction;

procedure TfrmFundLedgerList.actPostingExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Posting Fund Ledger ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     dmGlobal.RemoteServer.FundLedgerJournal(cdsFundLedgerListFLGID.AsLargeInt, sMsg);
     MessageDlg(sMsg, mtInformation, [mbOk], 0);

     actRefresh.Execute;
  end;
end;

procedure TfrmFundLedgerList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  actPosting.Enabled := cdsFundLedgerListPOSTED.AsString <> '1';
end;

procedure TfrmFundLedgerList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsFundLedgerList.Close;
  cdsFundLedgerList.Params[0].AsInteger  := FVDate.EditValue;
  cdsFundLedgerList.params[1].AsDate     := dtSVDate.EditValue;
  cdsFundLedgerList.Params[2].AsDate     := dtEVDate.EditValue;
  cdsFundLedgerList.Open;

//  if (FVDate.EditValue = '1') or (FEDate.EditValue = '1') then
//  begin
//    cdsFundLedgerList.Close;
//    cdsFundLedgerList.Params[0].AsDate := dtSVDate.EditValue;
//    cdsFundLedgerList.Params[1].AsDate := dtEVDate.EditValue;
//    cdsFundLedgerList.Params[2].AsDate := dtSEDate.EditValue;
//    cdsFundLedgerList.Params[3].AsDate := dtEEDate.EditValue;
//    cdsFundLedgerList.Open;
//  end
//  else
//    MessageError('Please select one or more filter date');
end;

procedure TfrmFundLedgerList.actViewTransactionExecute(Sender: TObject);
var
  oForm: TfrmViewTransaction;
  dtConDate: TDateTime;
  iLedgerTransID,
  iStockTransID,
  iFundTransID: Int64;
begin
  inherited;
  try
    dtConDate      := cdsFundLedgerListVDATE.AsDateTime;
    iLedgerTransID := -1;
    iStockTransID  := -1;
    iFundTransID   := cdsFundLedgerListFUNDTRANSID.AsLargeInt;

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

procedure TfrmFundLedgerList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmFundLedger;
end;

procedure TfrmFundLedgerList.FEDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  dtSEDate.Enabled := FEDate.EditValue = '1';
  dtEEDate.Enabled := FEDate.EditValue = '1';

end;

procedure TfrmFundLedgerList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField         := cdsFundLedgerListFLGID;
  FVDate.EditValue := 0;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuCcy.Close;
    cdsLuCcy.Open;

    cdsLuActLedTypeCash.Close;
    cdsLuActLedTypeCash.Open;
  end;
end;

procedure TfrmFundLedgerList.FormShow(Sender: TObject);
begin
  inherited;
  dtSVDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEVDate.EditValue := dmGlobal.RemoteServer.GetTransDate;

  dtSEDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEEDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmFundLedgerList.FVDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  dtSVDate.Enabled := FVDate.EditValue = '1';
  dtEVDate.Enabled := FVDate.EditValue = '1';

end;

end.
