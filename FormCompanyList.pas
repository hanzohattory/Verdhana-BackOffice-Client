unit FormCompanyList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, NReportRPC, NDatasetContainer, dxBar, cxClasses,
  NDatasetAction, Vcl.ActnList, Vcl.Menus, dxPSCore, dxPScxCommon, Vcl.ImgList,
  cxPropertiesStore, NActionPermission, cxSplitter, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, NReportClient;

type
  TfrmCompanyList = class(TfrmBrowseData)
    cdsEntCompny: TNClientDataset;
    cdsEntCompnyENTTID: TIntegerField;
    cdsEntCompnyENTTCODE: TStringField;
    cdsEntCompnyCUST_TYPE: TIntegerField;
    cdsEntCompnyBRANCHID: TLargeintField;
    cdsEntCompnySALESID: TLargeintField;
    cdsEntCompnyENTNAME: TStringField;
    cdsEntCompnyCREATEDATE: TDateTimeField;
    cdsEntCompnyENTSTATUS: TStringField;
    cdsEntCompnyBUSSTYPEID: TLargeintField;
    cdsEntCompnyENTTYPE: TStringField;
    cdsEntCompnyENTACCTYPE: TStringField;
    cdsEntCompnyAFFIL: TBooleanField;
    cdsEntCompnyNPWP: TStringField;
    cdsEntCompnyNPWP_REGDATE: TDateField;
    cdsEntCompnyRET_IDCARDTYPE: TStringField;
    cdsEntCompnyRET_IDCARDNO: TStringField;
    cdsEntCompnyRET_IDCARDEXPIRE: TDateField;
    cdsEntCompnyRET_EMAIL: TStringField;
    cdsEntCompnyRET_HOMEPHONE: TStringField;
    cdsEntCompnyRET_HOMEFAX: TStringField;
    cdsEntCompnyRET_MOBILE: TStringField;
    cdsEntCompnyRET_OCCUPATION: TStringField;
    cdsEntCompnyRET_JOBTITTLE: TStringField;
    cdsEntCompnyRET_COMPANYNAME: TStringField;
    cdsEntCompnyRET_BIRTDATE: TDateField;
    cdsEntCompnyRET_BIRTHPLACE: TStringField;
    cdsEntCompnyRET_GENDER: TStringField;
    cdsEntCompnySOURCEFUND: TStringField;
    cdsEntCompnyINVESTOBJECTIVE: TStringField;
    cdsEntCompnyINVESTEXP: TStringField;
    cdsEntCompnyANUALINCOME: TStringField;
    cdsEntCompnyESTDAILYTRADE: TStringField;
    cdsEntCompnyINS_DATEOFESTABLIZED: TDateField;
    cdsEntCompnyINS_DATEOFGAZETTE: TDateField;
    cdsEntCompnyINS_NOOFGAZETTE: TStringField;
    cdsEntCompnyINS_COMPTYPE: TStringField;
    cdsEntCompnyINS_TOTALASET: TStringField;
    cdsEntCompnyINS_AUTHNAME: TStringField;
    cdsEntCompnyINS_AUTHADDDRESS: TStringField;
    cdsEntCompnyINS_AUTHIDCARDTYPE: TStringField;
    cdsEntCompnyINS_AUTHIDCARDNO: TStringField;
    cdsEntCompnyINS_AUTHIDCARDEXPDATE: TDateField;
    cdsEntCompnyINS_AUTHPHONE: TStringField;
    cdsEntCompnyINS_AUTHMOBILE: TStringField;
    cdsEntCompnyINS_AUTHFAX: TStringField;
    cdsEntCompnyINS_AUTHEMAIL: TStringField;
    cdsEntCompnyINS_CPNAME: TStringField;
    cdsEntCompnyINS_CPADDRESS: TStringField;
    cdsEntCompnyINS_CPPOSITION: TStringField;
    cdsEntCompnyINS_CPTITLE: TStringField;
    cdsEntCompnyINS_COMPPHONE: TStringField;
    cdsEntCompnyINS_COMPFAX: TStringField;
    cdsEntCompnyCNTREST: TStringField;
    cdsEntCompnyCNTCITIZEN: TStringField;
    cdsEntCompnyCNTINVESTMENT: TStringField;
    cdsEntCompnySIDNO: TStringField;
    cdsEntCompnyTAXID: TStringField;
    cdsEntCompnyRET_MARITALSTATUS: TStringField;
    cdsEntCompnyRET_SPOUSENAME: TStringField;
    cdsEntCompnyRET_HEIRNAME: TStringField;
    cdsEntCompnyRET_HEIRRELATION: TStringField;
    cdsEntCompnyRET_EDUBACKGROUND: TStringField;
    cdsEntCompnySOURCEFUNDOTHERS: TStringField;
    cdsEntCompnyINS_BUSSTYPE: TStringField;
    cdsEntCompnyMODDA: TDateTimeField;
    cdsEntCompnyMODUI: TStringField;
    cdsEntCompnyAPPDA: TDateTimeField;
    cdsEntCompnyAPPUI: TStringField;
    cdsEntCompnyUNDER4Y: TIntegerField;
    cdsEntCompnyUNDER4YDA: TDateTimeField;
    cdsEntCompnyNOTES4Y: TStringField;
    cdsEntCompnyISDEL: TIntegerField;
    cdsEntCompnyID: TLargeintField;
    cdsEntCompnyINVS_TYPE: TStringField;
    cdsEntCompnyENTINIT: TStringField;
    cdsEntCompnyqryEntCompBOD: TDataSetField;
    cdsEntCompnyqryEntCompAddress: TDataSetField;
    cdsEntCompnyList: TNClientDataset;
    cdsEntCompnyListENTTID: TIntegerField;
    cdsEntCompnyListENTTCODE: TStringField;
    cdsEntCompnyListCUST_TYPE: TIntegerField;
    cdsEntCompnyListBRANCHID: TLargeintField;
    cdsEntCompnyListSALESID: TLargeintField;
    cdsEntCompnyListENTNAME: TStringField;
    cdsEntCompnyListCREATEDATE: TDateTimeField;
    cdsEntCompnyListENTSTATUS: TStringField;
    cdsEntCompnyListBUSSTYPEID: TLargeintField;
    cdsEntCompnyListENTTYPE: TStringField;
    cdsEntCompnyListENTACCTYPE: TStringField;
    cdsEntCompnyListAFFIL: TBooleanField;
    cdsEntCompnyListNPWP: TStringField;
    cdsEntCompnyListNPWP_REGDATE: TDateField;
    cdsEntCompnyListRET_OCCUPATION: TStringField;
    cdsEntCompnyListRET_JOBTITTLE: TStringField;
    cdsEntCompnyListRET_COMPANYNAME: TStringField;
    cdsEntCompnyListRET_BIRTDATE: TDateField;
    cdsEntCompnyListRET_BIRTHPLACE: TStringField;
    cdsEntCompnyListRET_GENDER: TStringField;
    cdsEntCompnyListSOURCEFUND: TStringField;
    cdsEntCompnyListINVESTOBJECTIVE: TStringField;
    cdsEntCompnyListINVESTEXP: TStringField;
    cdsEntCompnyListANUALINCOME: TStringField;
    cdsEntCompnyListESTDAILYTRADE: TStringField;
    cdsEntCompnyListINS_DATEOFESTABLIZED: TDateField;
    cdsEntCompnyListINS_DATEOFGAZETTE: TDateField;
    cdsEntCompnyListINS_NOOFGAZETTE: TStringField;
    cdsEntCompnyListINS_COMPTYPE: TStringField;
    cdsEntCompnyListINS_TOTALASET: TStringField;
    cdsEntCompnyListCNTREST: TStringField;
    cdsEntCompnyListCNTCITIZEN: TStringField;
    cdsEntCompnyListCNTINVESTMENT: TStringField;
    cdsEntCompnyListSIDNO: TStringField;
    cdsEntCompnyListTAXID: TStringField;
    cdsEntCompnyListRET_MARITALSTATUS: TStringField;
    cdsEntCompnyListRET_SPOUSENAME: TStringField;
    cdsEntCompnyListRET_HEIRNAME: TStringField;
    cdsEntCompnyListRET_HEIRRELATION: TStringField;
    cdsEntCompnyListRET_EDUBACKGROUND: TStringField;
    cdsEntCompnyListSOURCEFUNDOTHERS: TStringField;
    cdsEntCompnyListINS_BUSSTYPE: TStringField;
    cdsEntCompnyListMODDA: TDateTimeField;
    cdsEntCompnyListMODUI: TStringField;
    cdsEntCompnyListAPPDA: TDateTimeField;
    cdsEntCompnyListAPPUI: TStringField;
    cdsEntCompnyListUNDER4Y: TIntegerField;
    cdsEntCompnyListUNDER4YDA: TDateTimeField;
    cdsEntCompnyListNOTES4Y: TStringField;
    cdsEntCompnyListISDEL: TIntegerField;
    cdsEntCompnyListID: TLargeintField;
    cdsEntCompnyqryEntCompSHL: TDataSetField;
    cdsEntCompAddress: TNClientDataset;
    cdsEntCompAddressENTTID: TIntegerField;
    cdsEntCompAddressSEQNO: TIntegerField;
    cdsEntCompAddressCOUNTCODE: TStringField;
    cdsEntCompAddressPROVCODE: TStringField;
    cdsEntCompAddressADDRTYPE: TStringField;
    cdsEntCompAddressADDRESS: TStringField;
    cdsEntCompAddressCITY: TStringField;
    cdsEntCompAddressZIPCODE: TStringField;
    cdsEntCompAddressTCADDRESS: TStringField;
    cdsEntCompAddressMODDA: TDateTimeField;
    cdsEntCompAddressMODUI: TStringField;
    cdsEntCompAddressAPPDA: TDateTimeField;
    cdsEntCompAddressAPPUI: TStringField;
    cdsEntCompAddressUNDER4Y: TIntegerField;
    cdsEntCompAddressUNDER4YDA: TDateTimeField;
    cdsEntCompAddressNOTES4Y: TStringField;
    cdsEntCompAddressISDEL: TIntegerField;
    cdsEntCompAddressID: TLargeintField;
    cdsEntCompBOD: TNClientDataset;
    cdsEntCompBODENTTID: TIntegerField;
    cdsEntCompBODSEQNO: TIntegerField;
    cdsEntCompBODBODNAME: TStringField;
    cdsEntCompBODIDCARDTYPE: TStringField;
    cdsEntCompBODIDCARDNUM: TStringField;
    cdsEntCompBODMODDA: TDateTimeField;
    cdsEntCompBODMODUI: TStringField;
    cdsEntCompBODAPPDA: TDateTimeField;
    cdsEntCompBODAPPUI: TStringField;
    cdsEntCompBODUNDER4Y: TIntegerField;
    cdsEntCompBODUNDER4YDA: TDateTimeField;
    cdsEntCompBODNOTES4Y: TStringField;
    cdsEntCompBODISDEL: TIntegerField;
    cdsEntCompBODID: TLargeintField;
    cdsEntCompSHL: TNClientDataset;
    cdsEntCompSHLENTTID: TIntegerField;
    cdsEntCompSHLSEQNO: TIntegerField;
    cdsEntCompSHLSHLNAME: TStringField;
    cdsEntCompSHLSHLPERCENT: TFloatField;
    cdsEntCompSHLMODDA: TDateTimeField;
    cdsEntCompSHLMODUI: TStringField;
    cdsEntCompSHLAPPDA: TDateTimeField;
    cdsEntCompSHLAPPUI: TStringField;
    cdsEntCompSHLUNDER4Y: TIntegerField;
    cdsEntCompSHLUNDER4YDA: TDateTimeField;
    cdsEntCompSHLNOTES4Y: TStringField;
    cdsEntCompSHLISDEL: TIntegerField;
    cdsEntCompSHLID: TLargeintField;
    gvwMasterENTTCODE: TcxGridDBBandedColumn;
    gvwMasterENTNAME: TcxGridDBBandedColumn;
    gvwMasterCREATEDATE: TcxGridDBBandedColumn;
    gvwMasterENTSTATUS: TcxGridDBBandedColumn;
    gvwMasterENTTYPE: TcxGridDBBandedColumn;
    gvwMasterENTINIT: TcxGridDBBandedColumn;
    procedure DataContainerGetEditorClass(var AFormClass: TNFormClass);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompanyList: TfrmCompanyList;

implementation

{$R *.dfm}

uses DataGlobal, FormCompany, FormEntityIns;

procedure TfrmCompanyList.DataContainerGetEditorClass(
  var AFormClass: TNFormClass);
begin
  inherited;
//  AFormClass := TfrmCompany;
  AFormClass := TfrmEntityIns;
end;

procedure TfrmCompanyList.FormCreate(Sender: TObject);
begin
  inherited;
  KeyField := cdsEntCompnyListENTTID;

  with dmGlobal.IntDataLookup do
  begin
    if not cdsLuAddressType.Active then
      cdsLuAddressType.Open
    else
      cdsLuAddressType.Refresh;

    cdsLuCounNation.Close;
    cdsLuCounNation.Open;

    cdsLuProvince.Close;
    cdsLuProvince.Open;
  end;

  cdsEntCompnyList.Close;
  cdsEntCompnyList.Open;
end;

initialization
  RegisterClass(TfrmCompanyList);

end.
