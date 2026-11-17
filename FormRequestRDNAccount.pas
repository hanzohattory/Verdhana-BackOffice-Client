unit FormRequestRDNAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxDBEdit, Datasnap.DBClient, NClientDataset, Vcl.Tabs,
  dxStatusBar, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutLookAndFeels;

type
  TfrmRequestRDNAccount = class(TfrmEditorData)
    cdsKSEIRDNCompare: TNClientDataset;
    cdsKSEIRDNCompareSID: TStringField;
    cdsKSEIRDNCompareNAME: TStringField;
    cdsKSEIRDNCompareSUBREK01: TStringField;
    cdsKSEIRDNCompareSUBREK04: TStringField;
    cdsKSEIRDNCompareRDN: TStringField;
    cdsKSEIRDNCompareBANK: TStringField;
    cdsKSEIRDNCompareMODDA: TDateTimeField;
    cdsKSEIRDNCompareMODUI: TStringField;
    cdsKSEIRDNCompareAPPDA: TDateTimeField;
    cdsKSEIRDNCompareAPPUI: TStringField;
    cdsKSEIRDNCompareUNDER4Y: TIntegerField;
    cdsKSEIRDNCompareUNDER4YDA: TDateTimeField;
    cdsKSEIRDNCompareNOTES4Y: TStringField;
    cdsKSEIRDNCompareISDEL: TIntegerField;
    cdsKSEIRDNCompareID: TLargeintField;
    dsRDN: TDataSource;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxGrid8: TcxGrid;
    gvwRDNRequest: TcxGridDBBandedTableView;
    cxGridLevel8: TcxGridLevel;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnUpdate: TcxButton;
    cdsOARDN: TNClientDataset;
    cdsOARDNOAID: TIntegerField;
    cdsOARDNSEQNO: TIntegerField;
    cdsOARDNCCYCODE: TStringField;
    cdsOARDNBANKCODE: TStringField;
    cdsOARDNBANKACCNO: TStringField;
    cdsOARDNBANKACCNAME: TStringField;
    cdsOARDNBANKBRANCH: TStringField;
    cdsOARDNMODDA: TDateTimeField;
    cdsOARDNMODUI: TStringField;
    cdsOARDNAPPDA: TDateTimeField;
    cdsOARDNAPPUI: TStringField;
    cdsOARDNUNDER4Y: TIntegerField;
    cdsOARDNUNDER4YDA: TDateTimeField;
    cdsOARDNNOTES4Y: TStringField;
    cdsOARDNISDEL: TIntegerField;
    cdsOARDNID: TLargeintField;
    gvwRDNRequestOAID: TcxGridDBBandedColumn;
    gvwRDNRequestSEQNO: TcxGridDBBandedColumn;
    gvwRDNRequestCCYCODE: TcxGridDBBandedColumn;
    gvwRDNRequestBANKCODE: TcxGridDBBandedColumn;
    gvwRDNRequestBANKACCNO: TcxGridDBBandedColumn;
    gvwRDNRequestBANKACCNAME: TcxGridDBBandedColumn;
    gvwRDNRequestBANKBRANCH: TcxGridDBBandedColumn;
    gvwRDNRequestMODDA: TcxGridDBBandedColumn;
    gvwRDNRequestMODUI: TcxGridDBBandedColumn;
    gvwRDNRequestAPPDA: TcxGridDBBandedColumn;
    gvwRDNRequestAPPUI: TcxGridDBBandedColumn;
    gvwRDNRequestUNDER4Y: TcxGridDBBandedColumn;
    gvwRDNRequestUNDER4YDA: TcxGridDBBandedColumn;
    gvwRDNRequestNOTES4Y: TcxGridDBBandedColumn;
    gvwRDNRequestISDEL: TcxGridDBBandedColumn;
    gvwRDNRequestID: TcxGridDBBandedColumn;
    cdsOA: TNClientDataset;
    cdsOAOAID: TIntegerField;
    cdsOAOACODE: TStringField;
    cdsOACUST_TYPE: TIntegerField;
    cdsOABRANCHID: TLargeintField;
    cdsOASALESID: TLargeintField;
    cdsOAENTNAME: TStringField;
    cdsOAFIRSTNAME: TStringField;
    cdsOAMIDDLENAME: TStringField;
    cdsOALASTNAME: TStringField;
    cdsOAENTDESC: TStringField;
    cdsOACREATEDATE: TDateTimeField;
    cdsOAENTSTATUS: TStringField;
    cdsOABUSSTYPEID: TLargeintField;
    cdsOAENTTYPE: TStringField;
    cdsOAINVESTORCAT: TStringField;
    cdsOAENTACCTYPE: TStringField;
    cdsOAAFFIL: TBooleanField;
    cdsOAKTP: TStringField;
    cdsOAKTP_EXPDATE: TDateField;
    cdsOANPWP: TStringField;
    cdsOANPWP_REGDATE: TDateField;
    cdsOAPASSPORT: TStringField;
    cdsOAPASSPORT_EXPDATE: TDateField;
    cdsOAKITAS: TStringField;
    cdsOAKITAS_EXPDATE: TDateField;
    cdsOARET_OCCUPATION: TStringField;
    cdsOARET_JOBTITTLE: TStringField;
    cdsOARET_COMPANYNAME: TStringField;
    cdsOARET_BIRTDATE: TDateField;
    cdsOARET_BIRTHPLACE: TStringField;
    cdsOARET_GENDER: TStringField;
    cdsOARET_MARITALSTATUS: TStringField;
    cdsOARET_SPOUSENAME: TStringField;
    cdsOARET_HEIRNAME: TStringField;
    cdsOARET_HEIRRELATION: TStringField;
    cdsOARET_EDUBACKGROUND: TStringField;
    cdsOASOURCEFUND: TStringField;
    cdsOASOURCEFUNDKSEI: TStringField;
    cdsOASOURCEFUNDOTHERS: TStringField;
    cdsOAINVESTOBJECTIVE: TStringField;
    cdsOAINVESTOBJECTIVEKSEI: TStringField;
    cdsOAINVESTEXP: TStringField;
    cdsOAANUALINCOME: TStringField;
    cdsOAESTDAILYTRADE: TStringField;
    cdsOAINS_DATEOFESTABLIZED: TDateField;
    cdsOAINS_DATEOFGAZETTE: TDateField;
    cdsOAINS_NOOFGAZETTE: TStringField;
    cdsOAINS_COMPTYPE: TStringField;
    cdsOAINS_TOTALASET: TStringField;
    cdsOACNTREST: TStringField;
    cdsOACNTCITIZEN: TStringField;
    cdsOACNTINVESTMENT: TStringField;
    cdsOASIDNO: TStringField;
    cdsOATAXID: TStringField;
    cdsOAINS_BUSSTYPE: TStringField;
    cdsOAINVS_TYPE: TStringField;
    cdsOAENTINIT: TStringField;
    cdsOACUSTODYCODE: TStringField;
    cdsOAHOBBIES: TStringField;
    cdsOAANNUAL_NET_PROFIT: TIntegerField;
    cdsOATOTAL_ASSET: TIntegerField;
    cdsOAINVS_OBJ: TIntegerField;
    cdsOAINVS_OBJ_OTHER: TStringField;
    cdsOAOCCUPATION: TIntegerField;
    cdsOAOCCUPATION_OTHER: TStringField;
    cdsOACOMPANY: TStringField;
    cdsOAFIELD_WORK: TStringField;
    cdsOAFIELD_WORK_DESC: TStringField;
    cdsOAPOSITION: TStringField;
    cdsOAJOB_DIVISION: TStringField;
    cdsOAYOS_MONTH: TStringField;
    cdsOAYOS_YEAR: TStringField;
    cdsOACOMPANY_PHONE: TStringField;
    cdsOACOMPANY_PHONE_EXT: TStringField;
    cdsOACOMPANY_ADDRESS: TStringField;
    cdsOAANNUAL_INCOME: TIntegerField;
    cdsOAANNUAL_INCOME_SOURCE: TLargeintField;
    cdsOAANNUAL_INCOME_SOURCE_OTHER: TStringField;
    cdsOAADD_INCOME: TIntegerField;
    cdsOAADD_INCOME_SOURCE: TIntegerField;
    cdsOAADD_INCOME_SOURCE_OTHER: TStringField;
    cdsOANAT_BUSINESS_ENTREPRENEUR: TStringField;
    cdsOAMOTHER_NAME: TStringField;
    cdsOARELIGION: TStringField;
    cdsOATAXPAYER_STATUS: TIntegerField;
    cdsOARISK: TStringField;
    cdsOAGU_NAME: TStringField;
    cdsOAGU_HUB: TIntegerField;
    cdsOAGU_ID_NO: TStringField;
    cdsOAGU_TAXPAYER_NO: TStringField;
    cdsOAGU_NATIONALITY: TStringField;
    cdsOAGU_POB: TStringField;
    cdsOAGU_MATIAL_STATUS: TIntegerField;
    cdsOAGU_EMAIL: TStringField;
    cdsOAGU_HANDPHONE: TStringField;
    cdsOAGU_FAX: TStringField;
    cdsOAGU_ADDRESS: TStringField;
    cdsOAGU_CITY: TStringField;
    cdsOAGU_POSTALCODE: TStringField;
    cdsOAGU_PROVINCE: TStringField;
    cdsOAGU_COUNTRY: TStringField;
    cdsOAGU_PHONE: TStringField;
    cdsOAGU_ADDRESS2: TStringField;
    cdsOAGU_CITY2: TStringField;
    cdsOAGU_POSTALCODE2: TStringField;
    cdsOAGU_PROVICE2: TStringField;
    cdsOAGU_COUNTRY2: TStringField;
    cdsOAGU_PHONE2: TStringField;
    cdsOAGU_JOBS: TStringField;
    cdsOAGU_LAST_POSITION: TStringField;
    cdsOAGU_JOBS_COMPANY: TStringField;
    cdsOAGU_JOBS_COMPANY_TYPE: TStringField;
    cdsOAGU_JOBS_ADDRESS: TStringField;
    cdsOAGU_JOBS_CITY: TStringField;
    cdsOAGU_JOBS_POSTALCODE: TStringField;
    cdsOAGU_JOBS_PHONE: TStringField;
    cdsOAGU_JOBS_FAX: TStringField;
    cdsOAGU_JOBS_FUND_SOURCE: TStringField;
    cdsOAGU_JOBS_FUND_SOURCE_OT: TStringField;
    cdsOAGU_JOBS_ANNUAL_SALARY: TIntegerField;
    cdsOAGU_JOBS_MARITAL_STATUS: TIntegerField;
    cdsOAGU_CELLPHONE: TStringField;
    cdsOAGU_MAIDEN_MOTHER: TStringField;
    cdsOACHKGUCURRADR: TStringField;
    cdsOACLIENT_STATUS: TIntegerField;
    cdsOASIUP_NO: TStringField;
    cdsOATDP_NO: TStringField;
    cdsOATDP_REG_DATE: TStringField;
    cdsOATDP_INVALID_DATE: TDateTimeField;
    cdsOAAPPROVER_HAM_MINISTRI: TStringField;
    cdsOAANNOUNC_STATE_GAZELLE: TStringField;
    cdsOATAX_REG_CHK: TIntegerField;
    cdsOATAS_REG_DATE: TDateTimeField;
    cdsOABUSINESS_ENTITY_CHK: TIntegerField;
    cdsOABUSINESS_ENTITY_OTHER: TStringField;
    cdsOABUSINESS_LINE_CHK: TIntegerField;
    cdsOABUSINESS_LINE_OTHER: TStringField;
    cdsOACOMPANY_CHARACTER_CHK: TIntegerField;
    cdsOACOMPANY_CHARACTER_OTHER: TStringField;
    cdsOAOFFC_ADDR_ASSKDP: TStringField;
    cdsOAOFFC_CITY: TStringField;
    cdsOAOFFC_ZIPCODE: TStringField;
    cdsOAOFFC_COUNTRY: TStringField;
    cdsOACORESP_ADDR: TStringField;
    cdsOACORESP_CITY: TStringField;
    cdsOACORESP_ZIPCODE: TStringField;
    cdsOACORESP_COUNTRY: TStringField;
    cdsOAOFFC_BUILD_STATUS: TIntegerField;
    cdsOAOFFC_LENGTH_COREPON: TIntegerField;
    cdsOAOFFC_PHONE_NO: TStringField;
    cdsOAOFFC_FAX_NO: TStringField;
    cdsOAEMAIL_CHK: TIntegerField;
    cdsOAEMAIL_ADDR: TStringField;
    cdsOAOFCC_FAX_CHK: TIntegerField;
    cdsOAOFFC_FAX_NO_OTHER: TStringField;
    cdsOASWIFTCODE: TStringField;
    cdsOAACC_TYPE_SEC: TIntegerField;
    cdsOACOMP_ESTABLISH_DATE: TDateTimeField;
    cdsOACOMP_ESTABLISH_PLACE: TStringField;
    cdsOADEED_ESTABLISH_DATE: TDateTimeField;
    cdsOADEED_ESTABLISH_PLACE: TStringField;
    cdsOANOTARY: TStringField;
    cdsOATAXPAYER_REG: TStringField;
    cdsOAEDU_BACKGOUND_OTHER: TStringField;
    cdsOABUS_CAT_ID: TLargeintField;
    cdsOAGU_LEGALRELATION: TStringField;
    cdsOAMODDA: TDateTimeField;
    cdsOAMODUI: TStringField;
    cdsOAAPPDA: TDateTimeField;
    cdsOAAPPUI: TStringField;
    cdsOAUNDER4Y: TIntegerField;
    cdsOAUNDER4YDA: TDateTimeField;
    cdsOANOTES4Y: TStringField;
    cdsOAISDEL: TIntegerField;
    cdsOAID: TLargeintField;
    cdsOAINVESTOR_ASSET_1: TStringField;
    cdsOAINVESTOR_ASSET_2: TStringField;
    cdsOAINVESTOR_ASSET_3: TStringField;
    cdsOAINVESTOR_OPERATING_PROFIT_1: TStringField;
    cdsOAINVESTOR_OPERATING_PROFIT_2: TStringField;
    cdsOAINVESTOR_OPERATING_PROFIT_3: TStringField;
    cdsOAFATCA_A1: TStringField;
    cdsOAFATCA_A1_DESC: TStringField;
    cdsOAFATCA_A2: TStringField;
    cdsOAFATCA_A2_DESC: TStringField;
    cdsOAFATCA_A3: TStringField;
    cdsOAFATCA_A3_DESC: TStringField;
    cdsOAFATCA_B1: TStringField;
    cdsOAFATCA_B2: TStringField;
    cdsOAFATCA_B3: TStringField;
    cdsOAFATCA_B4: TStringField;
    cdsOAFATCA_B5: TStringField;
    cdsOAFATCA_B6: TStringField;
    cdsOAFATCA_B2_DESC: TStringField;
    cdsOAARTICLE_ASSOCIATION: TStringField;
    cdsOAASSET_OWNER: TStringField;
    cdsOASUPPLEMENTARY_DOCTYPE: TStringField;
    cdsOASUPPLEMENTARY_DOCEXP: TDateField;
    cdsOAPRDCODE: TStringField;
    cdsOAACCID: TIntegerField;
    cdsOAEXISTING_CLIENT: TStringField;
    cdsOAPARENT_ACCID: TIntegerField;
    cdsOAqryOACustody: TDataSetField;
    cdsOAqryOABank: TDataSetField;
    cdsOAqryOAAuth: TDataSetField;
    cdsOAqryOATrackInfo: TDataSetField;
    cdsOAqryOASHL: TDataSetField;
    cdsOAqryOADOC: TDataSetField;
    cdsOAqryOABOD: TDataSetField;
    cdsOAqryOAAddress: TDataSetField;
    cdsOADIRECTSID: TStringField;
    cdsOAKSEI_CLIENT_CODE: TStringField;
    cdsOABICCODE: TStringField;
    cdsOAREQUEST_SUBREK: TStringField;
    cdsOAqryOARDN: TDataSetField;
    cdsOAqryOAKSEI: TDataSetField;
    cdsOAPARENT_ACCCODE: TStringField;
    cdsOAPARENT_ACCNAME: TStringField;
    cdsOAqryOAContact: TDataSetField;
    cdsOAGU_ID_EXP: TDateField;
    cdsOAGU_GENDER: TStringField;
    cdsOAGU_DOB: TDateField;
    cdsOAINFO_01: TStringField;
    cdsOAINFO_01_NAME: TStringField;
    cdsOAINFO_01_DESC1: TStringField;
    cdsOAINFO_01_DESC2: TStringField;
    cdsOAINFO_02: TStringField;
    cdsOAINFO_02_NAME: TStringField;
    cdsOAINFO_02_DESC1: TStringField;
    cdsOAINFO_02_DESC2: TStringField;
    cdsOAINFO_03: TStringField;
    cdsOAINFO_03_NAME: TStringField;
    cdsOAINFO_03_DESC1: TStringField;
    cdsOAINFO_03_DESC2: TStringField;
    cdsOAINFO_04: TStringField;
    cdsOAINFO_04_NAME: TStringField;
    cdsOAINFO_04_DESC1: TStringField;
    cdsOAINFO_04_DESC2: TStringField;
    cdsOAINFO_05: TStringField;
    cdsOAINFO_05_NAME: TStringField;
    cdsOAINFO_05_DESC1: TStringField;
    cdsOAINFO_05_DESC2: TStringField;
    cdsOAINFO_06: TStringField;
    cdsOAINFO_06_NAME: TStringField;
    cdsOAINFO_06_DESC1: TStringField;
    cdsOAINFO_06_DESC2: TStringField;
    cdsOAINFO_07: TStringField;
    cdsOAINFO_07_NAME: TStringField;
    cdsOAINFO_07_DESC1: TStringField;
    cdsOAINFO_07_DESC2: TStringField;
    cdsOAINFO_08: TStringField;
    cdsOAINFO_08_NAME: TStringField;
    cdsOAINFO_08_DESC1: TStringField;
    cdsOAINFO_08_DESC2: TStringField;
    cdsOAINFO_09: TStringField;
    cdsOAINFO_09_NAME: TStringField;
    cdsOAINFO_09_DESC1: TStringField;
    cdsOAINFO_09_DESC2: TStringField;
    cdsOAINFO_10: TStringField;
    cdsOAINFO_10_NAME: TStringField;
    cdsOAINFO_10_DESC1: TStringField;
    cdsOAINFO_10_DESC2: TStringField;
    cdsOAINFO_11: TStringField;
    cdsOAINFO_11_NAME: TStringField;
    cdsOAINFO_11_DESC1: TStringField;
    cdsOAINFO_11_DESC2: TStringField;
    cdsOAINFO_12: TStringField;
    cdsOAINFO_12_NAME: TStringField;
    cdsOAINFO_12_DESC1: TStringField;
    cdsOAINFO_12_DESC2: TStringField;
    cdsOAINFO_12_DESC3: TStringField;
    cdsOAINFO_13: TStringField;
    cdsOAINFO_13_NAME: TStringField;
    cdsOAKTP_LIFETIME: TStringField;
    cdsOAREFERRAL_ID_INT: TIntegerField;
    cdsOAREFERRAL_ID_EXT: TIntegerField;
    cdsOAGU_PROVINCE2: TStringField;
    cdsOAUSERID: TStringField;
    cdsOASUBMIT: TStringField;
    cdsOARET_SIBLINGSNAME: TStringField;
    cdsOARET_SIBLINGRELATION: TStringField;
    cdsOAPREFFERED_CONTACT: TStringField;
    cdsOAPREFFERED_DAY: TStringField;
    cdsOAPREFFERED_TIME_FROM: TStringField;
    cdsOAPREFFERED_TIME_TO: TStringField;
    cdsOAGU_BIRTHPLACE: TStringField;
    cdsOAGU_BIRTHDATE: TDateField;
    cdsOAPREFFERED_BANK_RDN: TStringField;
    cdsOAFEEDBACK: TStringField;
    cdsOALAST_STATUS: TStringField;
    cdsOARET_HEIRPHONE: TStringField;
    cdsOARET_SIBLINGPHONE: TStringField;
    cdsOARET_HEIRIDCARD: TStringField;
    cdsOARET_SIBLING_ADDRESS: TStringField;
    cdsOAGU_PROVICE: TStringField;
    cdsOAINVESTEXP_OTHER: TStringField;
    cdsOAINITIAL: TStringField;
    cdsOAeventid: TLargeintField;
    cdsOAPAYMENT_BANK: TStringField;
    procedure btnUpdateClick(Sender: TObject);
    procedure cdsOARDNNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRequestRDNAccount: TfrmRequestRDNAccount;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmRequestRDNAccount.btnUpdateClick(Sender: TObject);
var
  dtProcess: TDateTime;
begin
  inherited;
  if cdsOA.ReadOnly then Exit;

  cdsKSEIRDNCompare.Close;
  cdsKSEIRDNCompare.Params[0].AsString := cdsOAKSEI_CLIENT_CODE.AsString;
  cdsKSEIRDNCompare.Open;

  if cdsKSEIRDNCompare.IsEmpty then
  begin
    ShowMessage('This Opening Account Doesn''t exists in KSEI Data Uploaded!');
  end
  else
  begin
    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
    if not (cdsOA.State in dsEditModes) then
      cdsOA.Edit;

    //Update RDN
    if (not cdsKSEIRDNCompareRDN.IsNull) And (Trim(cdsKSEIRDNCompareRDN.AsString) <> '') then
    begin
      if cdsOARDN.Locate('BANKCODE', cdsKSEIRDNCompareBANK.AsString, []) then
        cdsOARDN.Edit
      else
        cdsOARDN.Append;

      cdsOARDNBANKCODE.AsString := cdsKSEIRDNCompareBANK.AsString;
      cdsOARDNBANKACCNO.AsString := cdsKSEIRDNCompareRDN.AsString;
      cdsOARDNBANKACCNAME.AsString := cdsKSEIRDNCompareNAME.AsString;
      if cdsOARDNCCYCODE.IsNull then
        cdsOARDNCCYCODE.AsString := dmGlobal.RemoteServer.GetLocalCCY;
      cdsOARDN.Post;
    end;
  end;
end;

procedure TfrmRequestRDNAccount.cdsOARDNNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsOARDNCCYCODE.AsString := dmGlobal.RemoteServer.GetLocalCCY;
end;

procedure TfrmRequestRDNAccount.FormCreate(Sender: TObject);
begin
  inherited;
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuBankRDN.Active then
      cdsLuBankRDN.Refresh
    else
      cdsLuBankRDN.Open;

    if cdsLuCcy.Active then
      cdsLuCcy.Refresh
    else
      cdsLuCcy.Open;
  end;
end;

procedure TfrmRequestRDNAccount.FormShow(Sender: TObject);
begin
  inherited;
  btnUpdate.Visible := False;
end;

Initialization
  RegisterClass(TfrmRequestRDNAccount);

end.


