unit FormIPOPaymentBAE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormIPOList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxGroupBox, cxRadioGroup,
  cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxTextEdit, dxLayoutControl, Vcl.ActnList,
  NDatasetAction, Datasnap.DBClient, NClientDataset, XLSSheetData5,
  XLSReadWriteII5, Winapi.ShellAPI, XLSCmdFormat5, Xc12Utils5,
  Xc12DataStyleSheet5, XLSComment5, XLSDrawing5, XLSMergedCells5,
  FileCtrl, stdActns, System.Actions;

type
  TfrmIPOPaymentBAE = class(TForm)
    aclPayment: TActionList;
    actReload: TNAction;
    actPostingFinance: TNAction;
    actCreateAllotmentVoucher: TNAction;
    dsAllotment: TDataSource;
    dsSubject: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    btnReload: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Item20: TdxLayoutItem;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwAllotment: TcxGridDBBandedTableView;
    gvwAllotmentALLOTMENTID: TcxGridDBBandedColumn;
    gvwAllotmentIPOID: TcxGridDBBandedColumn;
    gvwAllotmentALLOTMENTCODE: TcxGridDBBandedColumn;
    gvwAllotmentACCID: TcxGridDBBandedColumn;
    gvwAllotmentACCCODE: TcxGridDBBandedColumn;
    gvwAllotmentQTY: TcxGridDBBandedColumn;
    gvwAllotmentAMOUNT: TcxGridDBBandedColumn;
    gvwAllotmentNETFEE_PCT: TcxGridDBBandedColumn;
    gvwAllotmentVAT_PCT: TcxGridDBBandedColumn;
    gvwAllotmentWHT_PCT: TcxGridDBBandedColumn;
    gvwAllotmentBFEE: TcxGridDBBandedColumn;
    gvwAllotmentVAT: TcxGridDBBandedColumn;
    gvwAllotmentWHT: TcxGridDBBandedColumn;
    gvwAllotmentNETAMOUNT: TcxGridDBBandedColumn;
    gvwAllotmentCDBCRID: TcxGridDBBandedColumn;
    gvwAllotmentCOUTSTANDID: TcxGridDBBandedColumn;
    gvwAllotmentFPPS: TcxGridDBBandedColumn;
    gvwAllotmentDPPS: TcxGridDBBandedColumn;
    gvwAllotmentCOFSENT: TcxGridDBBandedColumn;
    gvwAllotmentCONFIRMED: TcxGridDBBandedColumn;
    gvwAllotmentCONFORIGIN: TcxGridDBBandedColumn;
    gvwAllotmentPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwAllotmentPOSTEDCUSTODY: TcxGridDBBandedColumn;
    gvwAllotmentIDCARD: TcxGridDBBandedColumn;
    gvwAllotmentQTYPROCESS: TcxGridDBBandedColumn;
    gvwAllotmentPEID: TcxGridDBBandedColumn;
    gvwAllotmentREMARK: TcxGridDBBandedColumn;
    gvwAllotmentBOOKID: TcxGridDBBandedColumn;
    gvwAllotmentMODDA: TcxGridDBBandedColumn;
    gvwAllotmentMODUI: TcxGridDBBandedColumn;
    gvwAllotmentAPPDA: TcxGridDBBandedColumn;
    gvwAllotmentAPPUI: TcxGridDBBandedColumn;
    gvwAllotmentUNDER4Y: TcxGridDBBandedColumn;
    gvwAllotmentUNDER4YDA: TcxGridDBBandedColumn;
    gvwAllotmentNOTES4Y: TcxGridDBBandedColumn;
    gvwAllotmentISDEL: TcxGridDBBandedColumn;
    gvwAllotmentID: TcxGridDBBandedColumn;
    gvwAllotmentALLOTMENTDATE: TcxGridDBBandedColumn;
    gvwAllotmentSTATUS: TcxGridDBBandedColumn;
    gvwAllotmentCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwAllotmentSTOCK_VOUCHERID: TcxGridDBBandedColumn;
    gvwAllotmentSIID: TcxGridDBBandedColumn;
    gvwAllotmentACCCODE_1: TcxGridDBBandedColumn;
    gvwAllotmentACCNAME: TcxGridDBBandedColumn;
    gvwAllotmentACCINIT: TcxGridDBBandedColumn;
    gvwAllotmentVOUCHERCREATED: TcxGridDBBandedColumn;
    grdMasterLevel1: TcxGridLevel;
    grdMasterLevel2: TcxGridLevel;
    gvwPooling: TcxGridDBBandedTableView;
    dsPooling: TDataSource;
    gvwPoolingPOOLINGID: TcxGridDBBandedColumn;
    gvwPoolingPOOLINGCODE: TcxGridDBBandedColumn;
    gvwPoolingPOOLINGDATE: TcxGridDBBandedColumn;
    gvwPoolingPOOLINGDESC: TcxGridDBBandedColumn;
    gvwPoolingPOOLINGTYPE: TcxGridDBBandedColumn;
    gvwPoolingIPOID: TcxGridDBBandedColumn;
    gvwPoolingACCID: TcxGridDBBandedColumn;
    gvwPoolingCUST_NAME: TcxGridDBBandedColumn;
    gvwPoolingCUST_IDCARDTYPE: TcxGridDBBandedColumn;
    gvwPoolingCUST_IDCARDNO: TcxGridDBBandedColumn;
    gvwPoolingCUST_IDCARDEXPIRE: TcxGridDBBandedColumn;
    gvwPoolingCUST_ADDRESS: TcxGridDBBandedColumn;
    gvwPoolingCUST_PHONE: TcxGridDBBandedColumn;
    gvwPoolingCUST_FAX: TcxGridDBBandedColumn;
    gvwPoolingCUST_MAIL: TcxGridDBBandedColumn;
    gvwPoolingORDERCCY: TcxGridDBBandedColumn;
    gvwPoolingORDERQTY: TcxGridDBBandedColumn;
    gvwPoolingORDERAMT: TcxGridDBBandedColumn;
    gvwPoolingPROCESSQTY: TcxGridDBBandedColumn;
    gvwPoolingPROCESSAMT: TcxGridDBBandedColumn;
    gvwPoolingRETURNAMT: TcxGridDBBandedColumn;
    gvwPoolingCONFIRMED: TcxGridDBBandedColumn;
    gvwPoolingPOSTEDFINANCE: TcxGridDBBandedColumn;
    gvwPoolingVOUCHERCREATED: TcxGridDBBandedColumn;
    gvwPoolingCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwPoolingSTOCK_VOUCHERID: TcxGridDBBandedColumn;
    gvwPoolingSIID: TcxGridDBBandedColumn;
    gvwPoolingSTATUS: TcxGridDBBandedColumn;
    gvwPoolingMODDA: TcxGridDBBandedColumn;
    gvwPoolingMODUI: TcxGridDBBandedColumn;
    gvwPoolingAPPDA: TcxGridDBBandedColumn;
    gvwPoolingAPPUI: TcxGridDBBandedColumn;
    gvwPoolingUNDER4Y: TcxGridDBBandedColumn;
    gvwPoolingUNDER4YDA: TcxGridDBBandedColumn;
    gvwPoolingNOTES4Y: TcxGridDBBandedColumn;
    gvwPoolingISDEL: TcxGridDBBandedColumn;
    gvwPoolingID: TcxGridDBBandedColumn;
    gvwPoolingACCCODE: TcxGridDBBandedColumn;
    gvwPoolingACCNAME: TcxGridDBBandedColumn;
    gvwPoolingACCINIT: TcxGridDBBandedColumn;
    actCreatePoolingVoucher: TNAction;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxButton2: TcxButton;
    dxLayoutControl1Item23: TdxLayoutItem;
    actCreateAllotmentFPPSFile: TNAction;
    actCreatePoolingFPPSFile: TNAction;
    cdsIPOFPPS: TNClientDataset;
    cdsIPOFPPSB: TStringField;
    cdsIPOFPPSC: TStringField;
    cdsIPOFPPSD: TStringField;
    cdsIPOFPPSE: TStringField;
    cdsIPOFPPSF: TStringField;
    cdsIPOFPPSG: TStringField;
    cdsIPOFPPSH: TStringField;
    cdsIPOFPPSI: TStringField;
    cdsIPOFPPSJ: TDateField;
    cdsIPOFPPSK: TStringField;
    cdsIPOFPPSL: TStringField;
    cdsIPOFPPSM: TStringField;
    cdsIPOFPPSN: TFloatField;
    cdsIPOFPPSO: TStringField;
    cxButton3: TcxButton;
    dxLayoutControl1Item24: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutControl1Item25: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    procedure actReloadExecute(Sender: TObject);
    procedure actCreateAllotmentVoucherExecute(Sender: TObject);
    procedure actCreatePoolingVoucherExecute(Sender: TObject);
    procedure actCreateAllotmentVoucherUpdate(Sender: TObject);
    procedure actCreatePoolingVoucherUpdate(Sender: TObject);
    procedure actCreateAllotmentFPPSFileExecute(Sender: TObject);
    procedure actCreatePoolingFPPSFileExecute(Sender: TObject);
  private
    { Private declarations }
    FFormBrowse: TfrmIPOList;
    FReadOnly: Boolean;
  public
    { Public declarations }
    property FormBrowse: TfrmIPOList read FFormBrowse write FFormBrowse;
    property ReadOnly: Boolean read FReadOnly write FReadOnly;

    procedure CreateFPPSFile(AFileName: String);

    function BrowseFolder(var sDir: String): Boolean;
  end;

var
  frmIPOPaymentBAE: TfrmIPOPaymentBAE;

implementation

{$R *.dfm}

uses DataGlobal, FormCashPayment;

procedure TfrmIPOPaymentBAE.actCreateAllotmentFPPSFileExecute(Sender: TObject);
var
  IPOID: Integer;
  sFileName, sDir: String;
  dtProcess: TDateTime;
begin
  IPOID := dsSubject.DataSet.FieldByName('IPOID').AsInteger;

  cdsIPOFPPS.Close;
  cdsIPOFPPS.Params[0].AsInteger := IPOID;
  cdsIPOFPPS.Params[1].AsString := 'F';//Fixed Allotment
  cdsIPOFPPS.Open;

  if not cdsIPOFPPS.IsEmpty then
  begin
    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
    sDir := ExtractFileDir(Application.ExeName);
    if SelectDirectory(sDir, [sdAllowCreate, sdPerformCreate, sdPrompt], -1) then
    begin
      sFileName := sDir + '\DX' + FormatDateTime('DDMM', dtProcess) + 'P02.xls';;

      CreateFPPSFile(sFileName);

      if FileExists(sFileName) then
      begin
        ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL) ;
      end;
    end;
  end
  else
    dmGlobal.ErrorMessage('No data to generate file.');
end;

procedure TfrmIPOPaymentBAE.actCreateAllotmentVoucherExecute(Sender: TObject);
var
  IPOID, BrokerBankID: Integer;
begin
  IPOID := dsSubject.DataSet.FieldByName('IPOID').AsInteger;
  BrokerBankID := dsSubject.DataSet.FieldByName('ACCBANKID').AsInteger;
  if frmCashPayment.IPOPaymentToBAE(IPOID, BrokerBankID, 'AL') = mrOk then
  begin
    actReload.Execute;
  end;
end;

procedure TfrmIPOPaymentBAE.actCreateAllotmentVoucherUpdate(Sender: TObject);
begin
  actCreateAllotmentVoucher.Enabled := dsSubject.DataSet.FieldByName('ALLOTMENT_VOUCHER').AsString <> '1';
end;

procedure TfrmIPOPaymentBAE.actCreatePoolingFPPSFileExecute(Sender: TObject);
var
  IPOID: Integer;
  sFileName, sDir: String;
  dtProcess: TDateTime;
begin
  IPOID := dsSubject.DataSet.FieldByName('IPOID').AsInteger;

  cdsIPOFPPS.Close;
  cdsIPOFPPS.Params[0].AsInteger := IPOID;
  cdsIPOFPPS.Params[1].AsString := 'P';//Pooling
  cdsIPOFPPS.Open;

  if not cdsIPOFPPS.IsEmpty then
  begin
    dtProcess := FloatToDateTime(dmGlobal.RemoteServer.GetServerTimeStamp);
    sDir := ExtractFileDir(Application.ExeName);
    if SelectDirectory(sDir, [sdAllowCreate, sdPerformCreate, sdPrompt], -1) then
    begin
      sFileName := sDir + '\DX' + FormatDateTime('DDMM', dtProcess) + 'P02.xls';;

      CreateFPPSFile(sFileName);

      if FileExists(sFileName) then
      begin
        ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL) ;
      end;
    end;
  end
  else
    dmGlobal.ErrorMessage('No data to generate file.');
end;

procedure TfrmIPOPaymentBAE.actCreatePoolingVoucherExecute(Sender: TObject);
var
  IPOID, BrokerBankID: Integer;
begin
  IPOID := dsSubject.DataSet.FieldByName('IPOID').AsInteger;
  BrokerBankID := dsSubject.DataSet.FieldByName('ACCBANKID').AsInteger;
  if frmCashPayment.IPOPaymentToBAE(IPOID, BrokerBankID, 'PO') = mrOk then
  begin
    actReload.Execute;
  end;
end;

procedure TfrmIPOPaymentBAE.actCreatePoolingVoucherUpdate(Sender: TObject);
begin
  actCreatePoolingVoucher.Enabled := dsSubject.DataSet.FieldByName('POOLING_VOUCHER').AsString <> '1';
end;

procedure TfrmIPOPaymentBAE.actReloadExecute(Sender: TObject);
var
  AllotmentID, PoolingID: Integer;
begin
  AllotmentID := -1;
  if dsAllotment.DataSet.Active then
    AllotmentID := dsAllotment.DataSet.FieldByName('ALLOTMENTID').AsInteger;

  dsAllotment.DataSet.Close;
  dsAllotment.DataSet.Open;

  dsAllotment.DataSet.Locate('ALLOTMENTID', AllotmentID, []);

  PoolingID := -1;
  if dsPooling.DataSet.Active then
    PoolingID := dsPooling.DataSet.FieldByName('POOLINGID').AsInteger;

  dsPooling.DataSet.Close;
  dsPooling.DataSet.Open;

  dsPooling.DataSet.Locate('POOLINGID', PoolingID, []);

  dsSubject.DataSet.Close;
  dsSubject.DataSet.Open;
end;

function TfrmIPOPaymentBAE.BrowseFolder(var sDir: String): Boolean;
begin
  Result := False;
  with TBrowseForFolder.Create(nil) do try
    RootDir := sDir;
    if Execute then
    begin
      sDir := Folder;
      Result := True;
    end;
  finally
    Free;
  end;
end;

procedure TfrmIPOPaymentBAE.CreateFPPSFile(AFileName: String);
var
  LastRow: Integer;
  oSheet: TXLSWorkSheet;
begin
//  XLS.Filename := AFileName;
//  oSheet := XLS.Sheets[0];
//  oSheet.Clear;
//
//  //Set Excel Header
//  oSheet.AsString[0, 0] := 'NO';
//  oSheet.AsString[1, 0] := 'NAMA PEAP';
//  oSheet.AsString[2, 0] := 'JENIS ID';
//  oSheet.AsString[3, 0] := 'NO ID';
//  oSheet.AsString[4, 0] := 'NAMA-1';
//  oSheet.AsString[5, 0] := 'NAMA-2';
//  oSheet.AsString[6, 0] := 'ALAMAT-1';
//  oSheet.AsString[7, 0] := 'ALAMAT-2';
//  oSheet.AsString[8, 0] := 'KOTA';
//  oSheet.AsString[9, 0] := 'TANGGAL LAHIR';
//  oSheet.AsString[10, 0] := 'WARGANEGARA';
//  oSheet.AsString[11, 0] := 'PARTISIPAN';
//  oSheet.AsString[12, 0] := 'REKENING EFEK';
//  oSheet.AsString[13, 0] := 'JUM_PESAN';
//  oSheet.AsString[14, 0] := 'STATUS PESANAN';
//
//  oSheet.AsString[0, 1] := 'A';
//  oSheet.AsString[1, 1] := 'B';
//  oSheet.AsString[2, 1] := 'C';
//  oSheet.AsString[3, 1] := 'D';
//  oSheet.AsString[4, 1] := 'E';
//  oSheet.AsString[5, 1] := 'F';
//  oSheet.AsString[6, 1] := 'G';
//  oSheet.AsString[7, 1] := 'H';
//  oSheet.AsString[8, 1] := 'I';
//  oSheet.AsString[9, 1] := 'J';
//  oSheet.AsString[10, 1] := 'K';
//  oSheet.AsString[11, 1] := 'L';
//  oSheet.AsString[12, 1] := 'M';
//  oSheet.AsString[13, 1] := 'N';
//  oSheet.AsString[14, 1] := 'O';
//
//  LastRow := 2;
//
//  cdsIPOFPPS.First;
//  while not cdsIPOFPPS.Eof do
//  begin
//    oSheet.AsInteger[0, LastRow] := cdsIPOFPPS.RecNo;
//    oSheet.AsString[1, LastRow] := UpperCase(cdsIPOFPPSB.AsString);
//    oSheet.AsString[2, LastRow] := UpperCase(cdsIPOFPPSC.AsString);
//    oSheet.AsString[3, LastRow] := UpperCase(cdsIPOFPPSD.AsString);
//    oSheet.AsString[4, LastRow] := UpperCase(cdsIPOFPPSE.AsString);
//    oSheet.AsString[5, LastRow] := UpperCase(cdsIPOFPPSF.AsString);
//    oSheet.AsString[6, LastRow] := UpperCase(cdsIPOFPPSG.AsString);
//    oSheet.AsString[7, LastRow] := UpperCase(cdsIPOFPPSH.AsString);
//    oSheet.AsString[8, LastRow] := UpperCase(cdsIPOFPPSI.AsString);
//    oSheet.AsDateTime[9, LastRow] := cdsIPOFPPSJ.AsDateTime;
//    oSheet.AsString[10, LastRow] := UpperCase(cdsIPOFPPSK.AsString);
//    oSheet.AsString[11, LastRow] := UpperCase(cdsIPOFPPSL.AsString);
//    oSheet.AsString[12, LastRow] := UpperCase(cdsIPOFPPSM.AsString);
//    oSheet.AsFloat[13, LastRow] := cdsIPOFPPSN.AsFloat;
//    oSheet.AsString[14, LastRow] := UpperCase(cdsIPOFPPSO.AsString);
//
//    Inc(LastRow);
//    cdsIPOFPPS.Next
//  end;

//  oSheet.Columns[0].PixelWidth := 40;
//  oSheet.Columns[1].PixelWidth := 400;
//  oSheet.Columns[2].PixelWidth := 80;
//  oSheet.Columns[3].PixelWidth := 140;
//  oSheet.Columns[4].PixelWidth := 290;
//  oSheet.Columns[5].PixelWidth := 290;
//  oSheet.Columns[6].PixelWidth := 290;
//  oSheet.Columns[7].PixelWidth := 290;
//  oSheet.Columns[8].PixelWidth := 190;
//  oSheet.Columns[9].PixelWidth := 120;
//  oSheet.Columns[10].PixelWidth := 120;
//  oSheet.Columns[11].PixelWidth := 210;
//  oSheet.Columns[12].PixelWidth := 140;
//  oSheet.Columns[13].PixelWidth := 100;
//  oSheet.Columns[14].PixelWidth := 130;

//  XLS.CmdFormat.Clear;
//  XLS.CmdFormat.Font.Bold := True;
//  XLS.CmdFormat.Fill.BackgroundColor.RGB := $FFFF43;
//  XLS.CmdFormat.Alignment.Horizontal := chaCenter;
//  XLS.CmdFormat.Border.Style := cbsThin;
//  XLS.CmdFormat.Border.Preset(cbspInside);
//  XLS.CmdFormat.Border.Preset(cbspOutline);
//  XLS.CmdFormat.Apply(0, 0, 14, 1);
//
//  XLS.CmdFormat.Clear;
//  XLS.CmdFormat.Border.Style := cbsThin;
//  XLS.CmdFormat.Border.Preset(cbspOutline);
//  XLS.CmdFormat.Apply(0, 2, 14, LastRow - 1);
//
//  XLS.Write;
end;

end.
