unit FormStockLedgerList;

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
  Datasnap.DBClient, NClientDataset;

type
  TfrmStockLedgerList = class(TfrmBrowseData)
    BarMBrowseBar2: TdxBar;
    FVDate: TcxBarEditItem;
    dtSVDate: TcxBarEditItem;
    dtEVDate: TcxBarEditItem;
    BarMBrowseBar3: TdxBar;
    FEDate: TcxBarEditItem;
    dtSEDate: TcxBarEditItem;
    dtEEDate: TcxBarEditItem;
    cdsStockLedgerList: TNClientDataset;
    cdsStockLedgerListVDATE: TDateField;
    cdsStockLedgerListEDATE: TDateField;
    cdsStockLedgerListVPERIODID: TLargeintField;
    cdsStockLedgerListVPERIODCODE: TStringField;
    cdsStockLedgerListEPERIODID: TLargeintField;
    cdsStockLedgerListEPERIODCODE: TStringField;
    cdsStockLedgerListHDESC: TStringField;
    cdsStockLedgerListTOTALDB: TFloatField;
    cdsStockLedgerListTOTALCR: TFloatField;
    cdsStockLedgerListPOSTED: TStringField;
    cdsStockLedgerListPOSTEDDATE: TDateField;
    cdsStockLedgerListPOSTEDUI: TStringField;
    cdsStockLedgerListCANCELED: TVarBytesField;
    cdsStockLedgerListCANCELDATE: TDateField;
    cdsStockLedgerListCANCELUI: TStringField;
    cdsStockLedgerListREVERSED: TStringField;
    cdsStockLedgerListREVERSDATE: TDateField;
    cdsStockLedgerListREVERSUI: TStringField;
    cdsStockLedgerListMODDA: TDateTimeField;
    cdsStockLedgerListMODUI: TStringField;
    cdsStockLedgerListAPPDA: TDateTimeField;
    cdsStockLedgerListAPPUI: TStringField;
    cdsStockLedgerListUNDER4Y: TIntegerField;
    cdsStockLedgerListUNDER4YDA: TDateTimeField;
    cdsStockLedgerListNOTES4Y: TStringField;
    cdsStockLedgerListISDEL: TIntegerField;
    cdsStockLedgerListID: TLargeintField;
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
    cdsStockLedgerListSLGID: TLargeintField;
    gvwMasterSLGID: TcxGridDBBandedColumn;
    gvwMasterSLGCD: TcxGridDBBandedColumn;
    cdsStockLedgerListSLGCD: TStringField;
    actPosting: TNAction;
    Posting1: TMenuItem;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FVDatePropertiesEditValueChanged(Sender: TObject);
    procedure FEDatePropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actPostingUpdate(Sender: TObject);
    procedure actPostingExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockLedgerList: TfrmStockLedgerList;

implementation

{$R *.dfm}

uses DataGlobal, FormStockLedger;

procedure TfrmStockLedgerList.actEditUpdate(Sender: TObject);
begin
  inherited;
  actEdit.Enabled := cdsStockLedgerListPOSTED.AsString <> '1';
end;

procedure TfrmStockLedgerList.actPostingExecute(Sender: TObject);
var
  sMsg: string;
begin
  inherited;
  if MessageDlg('Posting Securities Ledger ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     dmGlobal.RemoteServer.SecuritiesLedgerJournal(cdsStockLedgerListSLGID.AsLargeInt, sMsg);
     MessageDlg(sMsg, mtInformation, [mbOk], 0);

     actRefresh.Execute;
  end;
end;

procedure TfrmStockLedgerList.actPostingUpdate(Sender: TObject);
begin
  inherited;
  actPosting.Enabled := cdsStockLedgerListPOSTED.AsString <> '1';
end;

procedure TfrmStockLedgerList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  if (FVDate.EditValue = '1') or (FEDate.EditValue = '1') then
  begin
    cdsStockLedgerList.Close;
    cdsStockLedgerList.Params[0].AsDate := dtSVDate.EditValue;
    cdsStockLedgerList.Params[1].AsDate := dtEVDate.EditValue;
    cdsStockLedgerList.Params[2].AsDate := dtSEDate.EditValue;
    cdsStockLedgerList.Params[3].AsDate := dtEEDate.EditValue;
    cdsStockLedgerList.Open;
  end
  else
    MessageError('Please select one or more filter date');
end;

procedure TfrmStockLedgerList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
  AFormClass := TfrmStockLedger;
end;

procedure TfrmStockLedgerList.FEDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  dtSEDate.Enabled := FEDate.EditValue = '1';
  dtEEDate.Enabled := FEDate.EditValue = '1';

end;

procedure TfrmStockLedgerList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsStockLedgerListSLGID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuAccount.Close;
    cdsLuAccount.Open;

    cdsLuInstrument.Close;
    cdsLuInstrument.Open;

    cdsLuInstrumentAll.Close;
    cdsLuInstrumentAll.Open;

    cdsLuActLedTypeStock.Close;
    cdsLuActLedTypeStock.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;
  end;
end;

procedure TfrmStockLedgerList.FormShow(Sender: TObject);
begin
  inherited;
  dtSVDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEVDate.EditValue := dmGlobal.RemoteServer.GetTransDate;

  dtSEDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
  dtEEDate.EditValue := dmGlobal.RemoteServer.GetTransDate;
end;

procedure TfrmStockLedgerList.FVDatePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  dtSVDate.Enabled := FVDate.EditValue = '1';
  dtEVDate.Enabled := FVDate.EditValue = '1';

end;

end.
