unit FormIPOAllotmentUpload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  NClientDataset, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  dxLayoutContainer, dxLayoutControl, cxContainer, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxButtonEdit, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, XLSSheetData5, XLSReadWriteII5, ComObj;

type
  TfrmIPOAllotmentUpload = class(TForm)
    cdsMaster: TNClientDataset;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    glvMaster: TcxGridLevel;
    cdsMasterUploadedDate: TDateTimeField;
    cdsMasterIPOID: TLargeintField;
    cdsMasterGroupID: TLargeintField;
    cdsMasterAccID: TLargeintField;
    cdsMasterAccCode: TStringField;
    cdsMasterAccName: TStringField;
    cdsMasterXlsAccName: TStringField;
    cdsMasterQty: TFloatField;
    cdsMasterAddToAlotment: TStringField;
    txtFileName: TcxButtonEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsMaster: TDataSource;
    gvwMasterUploadedDate: TcxGridDBBandedColumn;
    gvwMasterIPOID: TcxGridDBBandedColumn;
    gvwMasterGroupID: TcxGridDBBandedColumn;
    gvwMasterAccID: TcxGridDBBandedColumn;
    gvwMasterAccCode: TcxGridDBBandedColumn;
    gvwMasterAccName: TcxGridDBBandedColumn;
    gvwMasterXlsAccName: TcxGridDBBandedColumn;
    gvwMasterQty: TcxGridDBBandedColumn;
    gvwMasterAddToAlotment: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    XLS: TXLSReadWriteII5;
    OpenDialog: TOpenDialog;
    cdsMasterAccInit: TStringField;
    cdsMasterXlsAccInit: TStringField;
    gvwMasterAccInit: TcxGridDBBandedColumn;
    gvwMasterXlsAccInit: TcxGridDBBandedColumn;
    cdsAccountList: TNClientDataset;
    cdsAccountListACCID: TIntegerField;
    cdsAccountListENTTID: TIntegerField;
    cdsAccountListACCCODE: TStringField;
    cdsAccountListACCNAME: TStringField;
    cdsAccountListACCINIT: TStringField;
    cdsAccountListACCTYPE: TStringField;
    cdsAccountListACCSUBTYPE: TStringField;
    cdsAccountListBRANCHID: TLargeintField;
    cdsAccountListINVTYPE: TStringField;
    cdsAccountListBUSSTYPE: TLargeintField;
    cdsAccountListTC_MODEL: TStringField;
    cdsAccountListPRDCODE: TStringField;
    cdsAccountListA_CLS_ORDER: TStringField;
    cdsAccountListAVGPRICEDEC: TSmallintField;
    cdsAccountListOMNIBUSTRADE: TStringField;
    cdsAccountListCASHKEEP: TStringField;
    cdsAccountListSTOCKKEEP: TStringField;
    cdsAccountListISWAPU: TStringField;
    cdsAccountListISUSEWHT: TStringField;
    cdsAccountListISUSEOTC: TStringField;
    cdsAccountListISOWNCONTACT: TStringField;
    cdsAccountListSALESID: TLargeintField;
    cdsAccountListACC_STS: TStringField;
    cdsAccountListOMGUSE: TStringField;
    cdsAccountListOMGEXREFFCODE: TStringField;
    cdsAccountListOMGALERT: TStringField;
    cdsAccountListOMGSENDSSI: TStringField;
    cdsAccountListOMGSENDFEEINBLOCK: TStringField;
    cdsAccountListMODDA: TDateTimeField;
    cdsAccountListMODUI: TStringField;
    cdsAccountListAPPDA: TDateTimeField;
    cdsAccountListAPPUI: TStringField;
    cdsAccountListUNDER4Y: TIntegerField;
    cdsAccountListUNDER4YDA: TDateTimeField;
    cdsAccountListNOTES4Y: TStringField;
    cdsAccountListISDEL: TIntegerField;
    cdsAccountListID: TLargeintField;
    cdsAccountListENTTCODE: TStringField;
    cdsAccountListENTNAME: TStringField;
    cdsAccountListENTTDESC: TStringField;
    cdsAccountListISTRDACCOUNT: TStringField;
    pmAllotmentUpload: TPopupMenu;
    ChangeCustomerData1: TMenuItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    cdsIPOAllotment: TNClientDataset;
    cdsIPOAllotmentALLOTMENTID: TIntegerField;
    cdsIPOAllotmentIPOID: TIntegerField;
    cdsIPOAllotmentALLOTMENTCODE: TStringField;
    cdsIPOAllotmentACCID: TIntegerField;
    cdsIPOAllotmentACCCODE: TStringField;
    cdsIPOAllotmentQTY: TFloatField;
    cdsIPOAllotmentAMOUNT: TFloatField;
    cdsIPOAllotmentNETFEE_PCT: TFloatField;
    cdsIPOAllotmentVAT_PCT: TFloatField;
    cdsIPOAllotmentWHT_PCT: TFloatField;
    cdsIPOAllotmentBFEE: TFloatField;
    cdsIPOAllotmentVAT: TFloatField;
    cdsIPOAllotmentWHT: TFloatField;
    cdsIPOAllotmentNETAMOUNT: TFloatField;
    cdsIPOAllotmentCDBCRID: TStringField;
    cdsIPOAllotmentCOUTSTANDID: TStringField;
    cdsIPOAllotmentFPPS: TStringField;
    cdsIPOAllotmentDPPS: TStringField;
    cdsIPOAllotmentCOFSENT: TStringField;
    cdsIPOAllotmentCONFIRMED: TStringField;
    cdsIPOAllotmentCONFORIGIN: TStringField;
    cdsIPOAllotmentPOSTEDFINANCE: TStringField;
    cdsIPOAllotmentPOSTEDCUSTODY: TStringField;
    cdsIPOAllotmentIDCARD: TStringField;
    cdsIPOAllotmentQTYPROCESS: TFloatField;
    cdsIPOAllotmentPEID: TStringField;
    cdsIPOAllotmentREMARK: TStringField;
    cdsIPOAllotmentBOOKID: TIntegerField;
    cdsIPOAllotmentMODDA: TDateTimeField;
    cdsIPOAllotmentMODUI: TStringField;
    cdsIPOAllotmentAPPDA: TDateTimeField;
    cdsIPOAllotmentAPPUI: TStringField;
    cdsIPOAllotmentUNDER4Y: TIntegerField;
    cdsIPOAllotmentUNDER4YDA: TDateTimeField;
    cdsIPOAllotmentNOTES4Y: TStringField;
    cdsIPOAllotmentISDEL: TIntegerField;
    cdsIPOAllotmentID: TLargeintField;
    cdsIPOAllotmentACCNAME: TStringField;
    cdsIPOAllotmentALLOTMENTDATE: TDateField;
    cdsIPOAllotmentSTATUS: TStringField;
    cdsIPOAllotmentCASH_VOUCHERID: TLargeintField;
    cdsIPOAllotmentSTOCK_VOUCHERID: TLargeintField;
    cdsIPOAllotmentSIID: TLargeintField;
    cdsIPOAllotmentVOUCHERCREATED: TStringField;
    cdsIPOAllotmentDISTRIBUTION: TStringField;
    cdsIPOAllotmentPAYMENT: TStringField;
    cdsIPOAllotmentPAYMENTAMT: TFloatField;
    cdsIPOAllotmentALLOTMENT_GROUPID: TLargeintField;
    cdsIPO: TNClientDataset;
    cdsIPOIPOID: TIntegerField;
    cdsIPOIPOCODE: TStringField;
    cdsIPOSCRIPCODE: TStringField;
    cdsIPOSCRIPNAME: TStringField;
    cdsIPOENTRYDATE: TDateField;
    cdsIPOIPODATE: TDateField;
    cdsIPOORDERFROMDATE: TDateField;
    cdsIPOORDERTODATE: TDateField;
    cdsIPONETFEE: TFloatField;
    cdsIPOVAT: TFloatField;
    cdsIPOWHT: TFloatField;
    cdsIPOCCY: TStringField;
    cdsIPOBOTPRICE: TFloatField;
    cdsIPOTOPPRICE: TFloatField;
    cdsIPOFIXEDPRICE: TFloatField;
    cdsIPOACCBANKID: TIntegerField;
    cdsIPOGUARANTEETYPE: TStringField;
    cdsIPOCONDATE: TDateField;
    cdsIPOREMARK1: TStringField;
    cdsIPOREMARK2: TStringField;
    cdsIPOSTATUS: TStringField;
    cdsIPOMODDA: TDateTimeField;
    cdsIPOMODUI: TStringField;
    cdsIPOAPPDA: TDateTimeField;
    cdsIPOAPPUI: TStringField;
    cdsIPOUNDER4Y: TIntegerField;
    cdsIPOUNDER4YDA: TDateTimeField;
    cdsIPONOTES4Y: TStringField;
    cdsIPOISDEL: TIntegerField;
    cdsIPOID: TLargeintField;
    cdsIPOCOMMITMENTAMT: TFloatField;
    cdsIPOABSORBAMT: TFloatField;
    cdsIPOBGAMT: TFloatField;
    cdsIPOHAIRCUT: TIntegerField;
    cdsIPOBAEID: TIntegerField;
    cdsIPODUEDATE: TDateField;
    cdsIPODISTRIBUTIONDATE: TDateField;
    cdsIPOLISTINGDATE: TDateField;
    cdsIPOREFUNDDATE: TDateField;
    cdsIPOISINCODE: TStringField;
    cdsIPOISINDATE: TDateTimeField;
    cdsIPOIS_CURRENT_INSTRUMENT: TStringField;
    cdsIPOINSTRUMENT_ID: TLargeintField;
    cdsIPOALLOTMENT_VOUCHER: TStringField;
    cdsIPOALLOTMENT_AMOUNT: TFloatField;
    cdsIPOALLOTMENT_SIID: TLargeintField;
    cdsIPOPOOLING_VOUCHER: TStringField;
    cdsIPOPOOLING_AMOUNT: TFloatField;
    cdsIPOPOOLING_SIID: TLargeintField;
    cdsIPOACCID: TIntegerField;
    cdsIPOACCCODE: TStringField;
    cdsIPOACCNAME: TStringField;
    cdsIPOACCNO: TStringField;
    cdsIPOIPO_TYPE: TStringField;
    cdsIPOIPO_PRODUCT: TStringField;
    cdsIPOCOUPON_RATE: TFloatField;
    cdsIPOMATURITYDATE: TDateField;
    cdsIPOCALCULATE_DAYS_METHOD: TIntegerField;
    cdsIPOCOUNTINGDAYS_METHOD: TIntegerField;
    cdsIPOISSUER_TYPE: TStringField;
    cdsIPOCOMMITMENTQTY: TIntegerField;
    cdsIPOABSORBQTY: TIntegerField;
    cdsIPOUSEGROUP: TStringField;
    cdsIPOGROUPID: TIntegerField;
    cdsIPOTMPNETFEE: TFloatField;
    cdsIPOTMPVAT: TFloatField;
    cdsIPOTMPWHT: TFloatField;
    cdsIPOAllotmentByIPO: TNClientDataset;
    cdsIPOAllotmentByIPOALLOTMENTID: TIntegerField;
    cdsIPOAllotmentByIPOIPOID: TIntegerField;
    cdsIPOAllotmentByIPOALLOTMENTCODE: TStringField;
    cdsIPOAllotmentByIPOACCID: TIntegerField;
    cdsIPOAllotmentByIPOACCCODE: TStringField;
    cdsIPOAllotmentByIPOQTY: TFloatField;
    cdsIPOAllotmentByIPOAMOUNT: TFloatField;
    cdsIPOAllotmentByIPONETFEE_PCT: TFloatField;
    cdsIPOAllotmentByIPOVAT_PCT: TFloatField;
    cdsIPOAllotmentByIPOWHT_PCT: TFloatField;
    cdsIPOAllotmentByIPOBFEE: TFloatField;
    cdsIPOAllotmentByIPOVAT: TFloatField;
    cdsIPOAllotmentByIPOWHT: TFloatField;
    cdsIPOAllotmentByIPONETAMOUNT: TFloatField;
    cdsIPOAllotmentByIPOCDBCRID: TStringField;
    cdsIPOAllotmentByIPOCOUTSTANDID: TStringField;
    cdsIPOAllotmentByIPOFPPS: TStringField;
    cdsIPOAllotmentByIPODPPS: TStringField;
    cdsIPOAllotmentByIPOCOFSENT: TStringField;
    cdsIPOAllotmentByIPOCONFIRMED: TStringField;
    cdsIPOAllotmentByIPOCONFORIGIN: TStringField;
    cdsIPOAllotmentByIPOPOSTEDFINANCE: TStringField;
    cdsIPOAllotmentByIPOPOSTEDCUSTODY: TStringField;
    cdsIPOAllotmentByIPOIDCARD: TStringField;
    cdsIPOAllotmentByIPOQTYPROCESS: TFloatField;
    cdsIPOAllotmentByIPOPEID: TStringField;
    cdsIPOAllotmentByIPOREMARK: TStringField;
    cdsIPOAllotmentByIPOBOOKID: TIntegerField;
    cdsIPOAllotmentByIPOMODDA: TDateTimeField;
    cdsIPOAllotmentByIPOMODUI: TStringField;
    cdsIPOAllotmentByIPOAPPDA: TDateTimeField;
    cdsIPOAllotmentByIPOAPPUI: TStringField;
    cdsIPOAllotmentByIPOUNDER4Y: TIntegerField;
    cdsIPOAllotmentByIPOUNDER4YDA: TDateTimeField;
    cdsIPOAllotmentByIPONOTES4Y: TStringField;
    cdsIPOAllotmentByIPOISDEL: TIntegerField;
    cdsIPOAllotmentByIPOID: TLargeintField;
    cdsIPOAllotmentByIPOALLOTMENTDATE: TDateField;
    cdsIPOAllotmentByIPOSTATUS: TStringField;
    cdsIPOAllotmentByIPOCASH_VOUCHERID: TLargeintField;
    cdsIPOAllotmentByIPOSTOCK_VOUCHERID: TLargeintField;
    cdsIPOAllotmentByIPOSIID: TLargeintField;
    cdsIPOAllotmentByIPOACCCODE_1: TStringField;
    cdsIPOAllotmentByIPOACCNAME: TStringField;
    cdsIPOAllotmentByIPOACCINIT: TStringField;
    cdsIPOAllotmentByIPOVOUCHERCREATED: TStringField;
    cdsIPOAllotmentByIPODISTRIBUTION: TStringField;
    cdsIPOAllotmentByIPOALLOTMENT_GROUPID: TLargeintField;
    cdsIPOAllotmentByIPOPAYMENT: TStringField;
    cdsIPOAllotmentByIPOPAYMENTAMT: TFloatField;
    procedure txtFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gvwMasterAccCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ChangeCustomerData1Click(Sender: TObject);
    procedure gvwMasterAccInitCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cdsIPOAllotmentNewRecord(DataSet: TDataSet);
    procedure cdsIPOAllotmentACCIDChange(Sender: TField);
    procedure cdsIPOAllotmentQTYChange(Sender: TField);
    procedure cdsIPOAllotmentNETFEE_PCTChange(Sender: TField);
    procedure cdsIPOAllotmentQTYPROCESSChange(Sender: TField);
  private
    FIPOID: Integer;
    FGroupID: Integer;
    FTransDate: TDate;

    FNetFee,
    FVAT,
    FWHT: Double;

    procedure RefreshData;
    { Private declarations }
  public
    { Public declarations }
    property IPOID: Integer read FIPOID write FIPOID;
    property GroupID: Integer read FGroupID write FGroupID;
  end;

var
  frmIPOAllotmentUpload: TfrmIPOAllotmentUpload;

implementation

{$R *.dfm}

uses DataGlobal, FormProgressBar, DataLookup, FormLuAccount, FormAccountEditor;

procedure TfrmIPOAllotmentUpload.cdsIPOAllotmentACCIDChange(Sender: TField);
begin
  with dmGlobal.IntDataLookup do
  begin
    if cdsLuAccount.Locate('ACCID', Sender.Value, []) then
      cdsIPOAllotmentACCCODE.AsString := cdsLuAccountACCCODE.AsString
  end;
end;

procedure TfrmIPOAllotmentUpload.cdsIPOAllotmentNETFEE_PCTChange(
  Sender: TField);
var
  NetFee: Double;
begin
  inherited;
  cdsIPOAllotmentAMOUNT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOAllotmentQTYPROCESS.AsFloat;
  NetFee := cdsIPOAllotmentNETFEE_PCT.AsFloat * cdsIPOAllotmentAMOUNT.AsFloat / 100;
  cdsIPOAllotmentBFEE.AsFloat := dmGlobal.RoundFloatNumber(NetFee * 100 / (100 + cdsIPOAllotmentVAT_PCT.AsFloat), 2);
  cdsIPOAllotmentVAT.AsFloat  := dmGlobal.RoundFloatNumber(cdsIPOAllotmentVAT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2);

  if (dmGlobal.RemoteServer.CheckAccountChargeUsed(cdsIPOAllotmentACCID.AsInteger, 'IDX', 'CHG9') = '1') then
    cdsIPOAllotmentWHT.AsFloat := dmGlobal.RoundFloatNumber(cdsIPOAllotmentWHT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2)
  else
    cdsIPOAllotmentWHT.AsFloat := 0;

  cdsIPOAllotmentNETAMOUNT.AsFloat := cdsIPOAllotmentAMOUNT.AsFloat +
    cdsIPOAllotmentBFEE.AsFloat + cdsIPOAllotmentVAT.AsFloat - cdsIPOAllotmentWHT.AsFloat;
end;

procedure TfrmIPOAllotmentUpload.cdsIPOAllotmentNewRecord(DataSet: TDataSet);
begin
  cdsIPOAllotmentALLOTMENTDATE.AsDateTime := dmGlobal.RemoteServer.GetTransDate;
  cdsIPOAllotmentPOSTEDFINANCE.AsString   := '0';
  cdsIPOAllotmentVOUCHERCREATED.AsString  := '0';
  cdsIPOAllotmentCONFIRMED.AsString       := '0';
end;

procedure TfrmIPOAllotmentUpload.cdsIPOAllotmentQTYChange(Sender: TField);
begin
  cdsIPOAllotmentQTYPROCESS.AsFloat := cdsIPOAllotmentQTY.AsFloat;
end;

procedure TfrmIPOAllotmentUpload.cdsIPOAllotmentQTYPROCESSChange(
  Sender: TField);
var
  NetFee: Double;
begin
  inherited;
  cdsIPOAllotmentAMOUNT.AsFloat := cdsIPOFIXEDPRICE.AsFloat * cdsIPOAllotmentQTYPROCESS.AsFloat;
  NetFee := cdsIPOAllotmentNETFEE_PCT.AsFloat * cdsIPOAllotmentAMOUNT.AsFloat / 100;
  cdsIPOAllotmentBFEE.AsFloat := dmGlobal.RoundFloatNumber(NetFee * 100 / (100 + cdsIPOAllotmentVAT_PCT.AsFloat), 2);
  cdsIPOAllotmentVAT.AsFloat  := dmGlobal.RoundFloatNumber(cdsIPOAllotmentVAT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2);

  if (dmGlobal.RemoteServer.CheckAccountChargeUsed(cdsIPOAllotmentACCID.AsInteger, 'IDX', 'CHG9') = '1') then
    cdsIPOAllotmentWHT.AsFloat := dmGlobal.RoundFloatNumber(cdsIPOAllotmentWHT_PCT.AsFloat * cdsIPOAllotmentBFEE.AsFloat / 100, 2)
  else
    cdsIPOAllotmentWHT.AsFloat := 0;

  cdsIPOAllotmentNETAMOUNT.AsFloat := cdsIPOAllotmentAMOUNT.AsFloat +
    cdsIPOAllotmentBFEE.AsFloat + cdsIPOAllotmentVAT.AsFloat - cdsIPOAllotmentWHT.AsFloat;
end;

procedure TfrmIPOAllotmentUpload.ChangeCustomerData1Click(Sender: TObject);
var
  oForm: TfrmCustomerEditor;
begin
  if MessageDlg('Change Customer Data ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    oForm := TfrmCustomerEditor.Create(nil);

    cdsMaster.Edit;
    if oForm.ShowModal = mrOk then
    begin
      cdsMaster.Post;
      cdsMaster.ApplyUpdates(-1);
    end
    else
      cdsMaster.Cancel;

    FreeAndNil(oForm);
  end;
end;

procedure TfrmIPOAllotmentUpload.cxButton1Click(Sender: TObject);
var
  oExcel, oSheet: OleVariant;
  i, RecNo, n: Integer;
  iRows, iCols: Integer;
  oProgress: TfrmProgressBar;
  sStockCode: string;
begin
  try
    oExcel := CreateOleObject('Excel.Application');
    oExcel.DisplayAlerts := False;
    oExcel.WorkBooks.Open(txtFileName.EditValue);

    oSheet := oExcel.WorkBooks[1].WorkSheets[1];
    iRows  := oSheet.UsedRange.Rows.Count;

    cdsMaster.DisableControls;
    oProgress := TfrmProgressBar.Create(Nil);
    oProgress.Show;
    oProgress.ChangeBarCaption('Uploading IPO Allotment...');

    cdsMaster.DisableControls;
    for i := 2 to iRows do
    begin
      oProgress.ChangeBar(trunc(i / iRows * 100), 'Uploading IPO Allotment');

      cdsMaster.Append;

      cdsMasterUploadedDate.AsDateTime := FTransDate;
      cdsMasterIPOID.AsInteger         := FIPOID;
      cdsMasterGroupID.AsInteger       := FGroupID;
      cdsMasterXlsAccInit.AsString     := oSheet.Cells[i, 1].Value;
      cdsMasterXlsAccName.AsString     := oSheet.Cells[i, 2].Value;
      cdsMasterQty.AsFloat             := oSheet.Cells[i, 3].Value;

      if cdsAccountList.Locate('ACCINIT', cdsMasterXlsAccInit.AsString, []) then
      begin
        cdsMasterAccID.AsInteger  := cdsAccountListACCID.AsInteger;
        cdsMasterAccCode.AsString := cdsAccountListACCCODE.AsString;
        cdsMasterAccInit.AsString := cdsAccountListACCINIT.AsString;
        cdsMasterAccName.AsString := cdsAccountListACCNAME.AsString;;
      end;

      cdsMaster.Post;
    end;

  finally
    oExcel.Quit;
    oExcel := Unassigned;
    oSheet := Unassigned;

    cdsMaster.ApplyUpdates(-1);
    cdsMaster.EnableControls;

    FreeAndNil(oProgress);
    MessageDlg('Upload IPO allotment data finished.', mtInformation, [mbOk], 0);

    RefreshData;
  end;

end;

procedure TfrmIPOAllotmentUpload.cxButton2Click(Sender: TObject);
var
  iID, iCode: Integer;
  sCodeSeq: String;
begin
  if MessageDlg('Insert into IPO Allotment ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  cdsMaster.DisableControls;
  cdsMaster.First;

  cdsIPOAllotment.Close;
  cdsIPOAllotment.Params[0].AsInteger := -1;
  cdsIPOAllotment.Open;

  while not cdsMaster.Eof do
  begin
    iID      := dmGlobal.RemoteServer.GetSeq('TBL_B_IPO_ALLOTMENT');
    sCodeSeq := 'Allotment' + cdsIPOIPOCODE.AsString;
    iCode    := dmGlobal.RemoteServer.GetSeq(sCodeSeq);

    cdsIPOAllotment.Append;
    cdsIPOAllotmentALLOTMENTID.AsInteger  := iID;
    cdsIPOAllotmentALLOTMENTCODE.AsString := cdsIPOIPOCODE.AsString + '-F' + Format('%.5d', [iCode]);
    cdsIPOAllotmentIPOID.AsInteger        := cdsIPOIPOID.AsInteger;
    cdsIPOAllotmentNETFEE_PCT.AsFloat     := FNetFee;
    cdsIPOAllotmentVAT_PCT.AsFloat        := FVAT;
    cdsIPOAllotmentWHT_PCT.AsFloat        := FWHT;
    cdsIPOAllotmentSTATUS.AsString        := 'O';
    cdsIPOAllotmentQTYPROCESS.AsFloat     := cdsIPOAllotmentQTY.AsFloat;

    cdsIPOAllotmentACCID.AsInteger        := cdsMasterAccID.AsInteger;
    cdsIPOAllotmentACCCODE.AsString       := cdsMasterAccCode.AsString;
    cdsIPOAllotmentACCNAME.AsString       := cdsMasterAccName.AsString;
    cdsIPOAllotmentQTY.AsFloat            := cdsMasterQty.AsFloat;

    cdsIPOAllotmentALLOTMENT_GROUPID.AsInteger := FGroupID;
    cdsIPOAllotment.Post;

    cdsIPO.Edit;
    cdsIPOABSORBQTY.AsFloat := cdsIPOABSORBQTY.AsFloat + cdsIPOAllotmentQTY.AsFloat;
    cdsIPOABSORBAMT.AsFloat := cdsIPOABSORBAMT.AsFloat + cdsIPOAllotmentAMOUNT.AsFloat;
    cdsIPO.Post;
    cdsIPO.ApplyUpdates(-1);

    cdsMaster.Edit;
    cdsMasterAddToAlotment.AsString := '1';
    cdsMaster.Post;

    cdsMaster.Next;
  end;
  cdsMaster.ApplyUpdates(-1);
  cdsIPOAllotment.ApplyUpdates(-1);

  cdsMaster.EnableControls;
end;

procedure TfrmIPOAllotmentUpload.FormShow(Sender: TObject);
begin
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  cdsAccountList.Close;
  cdsAccountList.Params[0].AsInteger := 0;
  cdsAccountList.Params[1].AsString  := dmGlobal.UserID;
  cdsAccountList.Open;

  cdsIPO.Close;
  cdsIPO.Params[0].AsInteger := FIPOID;
  cdsIPO.Open;

  cdsIPOAllotmentByIPO.Close;
  cdsIPOAllotmentByIPO.Params[0].AsInteger := FIPOID;
  cdsIPOAllotmentByIPO.Open;

  with dmGlobal.IntDataLookup do
  begin
    FNetFee := cdsLuIPOAllotmentGroupNETFEE.AsFloat;
    FVAT    := cdsLuIPOAllotmentGroupVAT.AsFloat;
    FWHT    := cdsLuIPOAllotmentGroupWHT.AsFloat;
  end;

  RefreshData;
end;

procedure TfrmIPOAllotmentUpload.gvwMasterAccCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not TClientDataSet(dsMaster.DataSet).ReadOnly then
  begin
    with dmGlobal.IntDataLookup do
    begin
      if frmLuAccount.Run(dsMaster.DataSet.FieldByName('ACCID').AsInteger, True) = mrOK then
      begin
        dsMaster.DataSet.FieldByName('ACCID').AsInteger  := cdsLuAccountMultiFilterACCID.AsInteger;
        dsMaster.DataSet.FieldByName('ACCCODE').AsString := cdsLuAccountMultiFilterACCCODE.AsString;
        dsMaster.DataSet.FieldByName('ACCNAME').AsString := cdsLuAccountMultiFilterACCNAME.AsString;
        dsMaster.DataSet.FieldByName('ACCINIT').AsString := cdsLuAccountMultiFilterACCINIT.AsString;
      end;
    end;
  end;
end;

procedure TfrmIPOAllotmentUpload.gvwMasterAccInitCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[gvwMasterAccInit.Index] <> AViewInfo.GridRecord.Values[gvwMasterXlsAccInit.Index] then
    ACanvas.Font.Color := clRed;
end;

procedure TfrmIPOAllotmentUpload.RefreshData;
begin
  cdsMaster.Close;
  cdsMaster.Params[0].AsInteger := FIPOID;
  cdsMaster.Params[1].AsInteger := FGroupID;
  cdsMaster.Open;
end;

procedure TfrmIPOAllotmentUpload.txtFileNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;
    txtFileName.Text := sFileName;
  end;
end;

end.
