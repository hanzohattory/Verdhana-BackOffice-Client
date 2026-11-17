unit FormCompany;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxSkinsdxStatusBarPainter, cxPCdxBarPopupMenu,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, cxTextEdit, cxDBEdit, cxPC, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Datasnap.DBClient, NClientDataset, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfrmCompany = class(TfrmEditorData)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsAddress: TDataSource;
    gvwAddress: TcxGridDBBandedTableView;
    gvwAddressCOUNTCODE: TcxGridDBBandedColumn;
    gvwAddressPROVCODE: TcxGridDBBandedColumn;
    gvwAddressADDRTYPE: TcxGridDBBandedColumn;
    gvwAddressADDRESS: TcxGridDBBandedColumn;
    gvwAddressCITY: TcxGridDBBandedColumn;
    gvwAddressZIPCODE: TcxGridDBBandedColumn;
    cxTabSheet3: TcxTabSheet;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gvwBOD: TcxGridDBBandedTableView;
    dsBOD: TDataSource;
    gvwBODBODNAME: TcxGridDBBandedColumn;
    dsSHL: TDataSource;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    gvwSHL: TcxGridDBBandedTableView;
    gvwSHLSHLNAME: TcxGridDBBandedColumn;
    gvwSHLSHLPERCENT: TcxGridDBBandedColumn;
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
    procedure cdsEntCompnyNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompany: TfrmCompany;

implementation

{$R *.dfm}

uses FormCompanyList, DataGlobal;

procedure TfrmCompany.cdsEntCompnyNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEntCompnyENTTID.AsInteger := dmGlobal.RemoteServer.GetSeq('TBL_B_ENTITY');
end;

Initialization
  RegisterClass(TfrmCompany);

end.
