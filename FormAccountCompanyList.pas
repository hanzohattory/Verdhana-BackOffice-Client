unit FormAccountCompanyList;

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
  dxPScxEditorProducers, dxPScxExtEditorProducers, Vcl.Menus, cxContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  Datasnap.DBClient, NClientDataset, dxLayoutContainer, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, NReportRPC, NDatasetContainer,
  dxBar, cxClasses, NDatasetAction, Vcl.ActnList, dxPSCore, dxPScxCommon,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGrid, NReportClient, dxDateRanges, dxScrollbarAnnotations,
  System.Actions, System.ImageList;

type
  TfrmAccountCompanyList = class(TfrmBrowseData)
    actViewData: TNAction;
    cdsAccCompanyList: TNClientDataset;
    cdsAccCompanyListACCID: TIntegerField;
    cdsAccCompanyListENTTID: TIntegerField;
    cdsAccCompanyListACCCODE: TStringField;
    cdsAccCompanyListACCNAME: TStringField;
    cdsAccCompanyListACCINIT: TStringField;
    cdsAccCompanyListACCTYPE: TStringField;
    cdsAccCompanyListACCSUBTYPE: TStringField;
    cdsAccCompanyListBRANCHID: TLargeintField;
    cdsAccCompanyListINVTYPE: TStringField;
    cdsAccCompanyListBUSSTYPE: TLargeintField;
    cdsAccCompanyListTC_MODEL: TStringField;
    cdsAccCompanyListPRDCODE: TStringField;
    cdsAccCompanyListA_CLS_ORDER: TStringField;
    cdsAccCompanyListAVGPRICEDEC: TSmallintField;
    cdsAccCompanyListOMNIBUSTRADE: TStringField;
    cdsAccCompanyListCASHKEEP: TStringField;
    cdsAccCompanyListSTOCKKEEP: TStringField;
    cdsAccCompanyListISWAPU: TStringField;
    cdsAccCompanyListISUSEWHT: TStringField;
    cdsAccCompanyListISUSEOTC: TStringField;
    cdsAccCompanyListISOWNCONTACT: TStringField;
    cdsAccCompanyListISTRDACCOUNT: TStringField;
    cdsAccCompanyListSALESID: TLargeintField;
    cdsAccCompanyListACC_STS: TStringField;
    cdsAccCompanyListOMGUSE: TStringField;
    cdsAccCompanyListOMGEXREFFCODE: TStringField;
    cdsAccCompanyListOMGALERT: TStringField;
    cdsAccCompanyListOMGSENDSSI: TStringField;
    cdsAccCompanyListOMGSENDFEEINBLOCK: TStringField;
    cdsAccCompanyListMODDA: TDateTimeField;
    cdsAccCompanyListMODUI: TStringField;
    cdsAccCompanyListAPPDA: TDateTimeField;
    cdsAccCompanyListAPPUI: TStringField;
    cdsAccCompanyListUNDER4Y: TIntegerField;
    cdsAccCompanyListUNDER4YDA: TDateTimeField;
    cdsAccCompanyListNOTES4Y: TStringField;
    cdsAccCompanyListISDEL: TIntegerField;
    cdsAccCompanyListID: TLargeintField;
    gvwMasterACCID: TcxGridDBBandedColumn;
    gvwMasterENTTID: TcxGridDBBandedColumn;
    gvwMasterACCCODE: TcxGridDBBandedColumn;
    gvwMasterACCNAME: TcxGridDBBandedColumn;
    gvwMasterACCINIT: TcxGridDBBandedColumn;
    gvwMasterACCTYPE: TcxGridDBBandedColumn;
    gvwMasterACCSUBTYPE: TcxGridDBBandedColumn;
    gvwMasterBRANCHID: TcxGridDBBandedColumn;
    gvwMasterINVTYPE: TcxGridDBBandedColumn;
    gvwMasterBUSSTYPE: TcxGridDBBandedColumn;
    gvwMasterTC_MODEL: TcxGridDBBandedColumn;
    gvwMasterPRDCODE: TcxGridDBBandedColumn;
    gvwMasterA_CLS_ORDER: TcxGridDBBandedColumn;
    gvwMasterAVGPRICEDEC: TcxGridDBBandedColumn;
    gvwMasterOMNIBUSTRADE: TcxGridDBBandedColumn;
    gvwMasterCASHKEEP: TcxGridDBBandedColumn;
    gvwMasterSTOCKKEEP: TcxGridDBBandedColumn;
    gvwMasterISWAPU: TcxGridDBBandedColumn;
    gvwMasterWAPUVALUE: TcxGridDBBandedColumn;
    gvwMasterISAVGPRICE: TcxGridDBBandedColumn;
    gvwMasterISDEBETINTEREST: TcxGridDBBandedColumn;
    gvwMasterISCREDITINTEREST: TcxGridDBBandedColumn;
    gvwMasterISPENALTY: TcxGridDBBandedColumn;
    gvwMasterISUSEWHT: TcxGridDBBandedColumn;
    gvwMasterISUSEOTC: TcxGridDBBandedColumn;
    gvwMasterISOWNCONTACT: TcxGridDBBandedColumn;
    gvwMasterISTRDACCOUNT: TcxGridDBBandedColumn;
    gvwMasterSALESID: TcxGridDBBandedColumn;
    gvwMasterACC_STS: TcxGridDBBandedColumn;
    gvwMasterOMGUSE: TcxGridDBBandedColumn;
    gvwMasterOMGEXREFFCODE: TcxGridDBBandedColumn;
    gvwMasterOMGALERT: TcxGridDBBandedColumn;
    gvwMasterOMGSENDSSI: TcxGridDBBandedColumn;
    gvwMasterOMGSENDFEEINBLOCK: TcxGridDBBandedColumn;
    gvwMasterMODDA: TcxGridDBBandedColumn;
    gvwMasterMODUI: TcxGridDBBandedColumn;
    gvwMasterAPPDA: TcxGridDBBandedColumn;
    gvwMasterAPPUI: TcxGridDBBandedColumn;
    gvwMasterUNDER4Y: TcxGridDBBandedColumn;
    gvwMasterUNDER4YDA: TcxGridDBBandedColumn;
    gvwMasterNOTES4Y: TcxGridDBBandedColumn;
    gvwMasterISDEL: TcxGridDBBandedColumn;
    gvwMasterID: TcxGridDBBandedColumn;
    cdsAccCompContact: TNClientDataset;
    cdsAccCompContactACCID: TIntegerField;
    cdsAccCompContactCUSGID: TIntegerField;
    cdsAccCompContactCOUNTCODE: TStringField;
    cdsAccCompContactCONTNAME: TStringField;
    cdsAccCompContactCONTPHONE: TStringField;
    cdsAccCompContactCONTMOBILE: TStringField;
    cdsAccCompContactCONTADDRESS: TStringField;
    cdsAccCompContactCONTEMAIL: TStringField;
    cdsAccCompContactCONTFAX: TStringField;
    cdsAccCompContactIDCARDTYPE: TStringField;
    cdsAccCompContactIDCARDNO: TStringField;
    cdsAccCompContactIDCARDEXPIRE: TDateField;
    cdsAccCompContactSENDBYEMAIL: TStringField;
    cdsAccCompContactSENDBYFAX: TStringField;
    cdsAccCompContactSENDBYSMS: TStringField;
    cdsAccCompContactSENDBYPOSTMAIL: TStringField;
    cdsAccCompContactMODDA: TDateTimeField;
    cdsAccCompContactMODUI: TStringField;
    cdsAccCompContactAPPDA: TDateTimeField;
    cdsAccCompContactAPPUI: TStringField;
    cdsAccCompContactUNDER4Y: TIntegerField;
    cdsAccCompContactUNDER4YDA: TDateTimeField;
    cdsAccCompContactNOTES4Y: TStringField;
    cdsAccCompContactISDEL: TIntegerField;
    cdsAccCompContactID: TLargeintField;
    actSetBankAccount: TNAction;
    actViewBankAccount: TNAction;
    actSetCustodyAccount: TNAction;
    actViewCustodyAccount: TNAction;
    SetBankAccount1: TMenuItem;
    ViewBankAccount1: TMenuItem;
    SetCustodyAccount1: TMenuItem;
    ViewCustodyAccount1: TMenuItem;
    actCreateEmitenAccount: TNAction;
    CreateEmitenAccount1: TMenuItem;
    actCreateHouseAccount: TNAction;
    CreateHouseAccount1: TMenuItem;
    actCreateClearingHouseAccount: TNAction;
    actCreateBrokerAccount: TNAction;
    CreateClearingHouseAccount1: TMenuItem;
    CreateBrokerAccount1: TMenuItem;
    actCreateWalkInClient: TNAction;
    CreateWalkInClient1: TMenuItem;
    cdsAccCompanyListentDesc: TStringField;
    gvwMasterentDesc: TcxGridDBBandedColumn;
    btnExpand: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure actSetBankAccountExecute(Sender: TObject);
    procedure actViewBankAccountExecute(Sender: TObject);
    procedure actSetCustodyAccountExecute(Sender: TObject);
    procedure actViewCustodyAccountExecute(Sender: TObject);
    procedure actCreateEmitenAccountExecute(Sender: TObject);
    procedure actCreateHouseAccountExecute(Sender: TObject);
    procedure actCreateClearingHouseAccountExecute(Sender: TObject);
    procedure actCreateBrokerAccountExecute(Sender: TObject);
    procedure actCreateWalkInClientExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExpandClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountCompanyList: TfrmAccountCompanyList;

implementation

{$R *.dfm}

uses DataGlobal, FormAccountCompany, FormAccount, FormAccountBank,
  FormAccountCustody, ClassClientConst;

procedure TfrmAccountCompanyList.actCreateBrokerAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 7;
  sKey := IntToStr(dmGlobal.RemoteServer.GetBrokerAccount);
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actCreateClearingHouseAccountExecute(
  Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 6;
  sKey := IntToStr(dmGlobal.RemoteServer.GetBrokerAccount);
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actCreateEmitenAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 2;
  sKey := cdsAccCompanyListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actCreateHouseAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 4;
  sKey := IntToStr(dmGlobal.RemoteServer.GetBrokerAccount);
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actCreateWalkInClientExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  dmGlobal.NewAccountTag := 8;
  sKey := cdsAccCompanyListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccount, sKey, pkCreate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actRefreshExecute(Sender: TObject);
begin
  inherited;
  cdsAccCompanyList.Close;
  cdsAccCompanyList.Open;

  btnExpand.Caption    := 'Expand All';
  btnExpand.ImageIndex := 1;
end;

procedure TfrmAccountCompanyList.actSetBankAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccCompanyListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountBank, sKey, pkUpdate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actSetCustodyAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccCompanyListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountCustody, sKey, pkUpdate) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actViewBankAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccCompanyListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountBank, sKey, pkRead) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.actViewCustodyAccountExecute(Sender: TObject);
var
  sKey: String;
begin
  inherited;
  sKey := cdsAccCompanyListACCID.AsString;
  if dmGlobal.ShowEditorForm(TfrmAccountCustody, sKey, pkRead) = mrOk then
  begin
//
  end;
end;

procedure TfrmAccountCompanyList.btnExpandClick(Sender: TObject);
begin
  inherited;
  if btnExpand.Caption = 'Expand All' then
  begin
    gvwMaster.ViewData.Expand(True);
    btnExpand.Caption    := 'Collaps All';
    btnExpand.ImageIndex := 0;
  end
  else
  begin
    gvwMaster.ViewData.Collapse(True);
    btnExpand.Caption    := 'Expand All';
    btnExpand.ImageIndex := 1;
  end;
end;

procedure TfrmAccountCompanyList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
//  AFormClass := TfrmAccountCompany;
  AFormClass := TfrmAccount;
end;

procedure TfrmAccountCompanyList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsAccCompanyListACCID;

  with dmGlobal.IntDataLookup do
  begin
    cdsLuBusinessType.Close;
    cdsLuBusinessType.Open;

    cdsLuCharge.Close;
    cdsLuCharge.Open;

    cdsLuMarket.Close;
    cdsLuMarket.Open;

    cdsLuActLedgerType.Close;
    cdsLuActLedgerType.Open;

    cdsLuCompany.Close;
    cdsLuCompany.Open;

    cdsLuBank.Close;
    cdsLuBank.Open;

    cdsLuCustody.Close;
    cdsLuCustody.Open;

    cdsLuTransType.Close;
    cdsLuTransType.Open;

    cdsLuCounNation.Close;
    cdsLuCounNation.Open;

    if not cdsLuSales.Active then
      cdsLuSales.Open
    else
      cdsLuSales.Refresh;

    if not cdsLuBranch.Active then
      cdsLuBranch.Open
    else
      cdsLuBranch.Refresh;

    if not cdsLuAccType.Active then
      cdsLuAccType.Open;
  end;

end;

procedure TfrmAccountCompanyList.FormShow(Sender: TObject);
begin
  inherited;
  actReject.Execute;
end;

Initialization
  RegisterClass(TfrmAccountCompanyList);

end.
