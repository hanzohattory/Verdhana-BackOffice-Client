unit FormCorpactEntitlementMonitoring;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormEditorData, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, Data.DB, Vcl.Tabs, dxStatusBar,
  dxLayoutContainer, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxLabel, cxDBLabel, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Datasnap.DBClient, NClientDataset,
  Vcl.ActnList, NDatasetAction, frxClass, frxServerClient, NReportClient,
  XLSSheetData5, XLSReadWriteII5, cxGridDBTableView, cxGridExportLink, Winapi.ShellAPI,
  cxCheckBox, cxBlobEdit, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinscxPCPainter,
  dxSkinsdxStatusBarPainter, System.Actions, dxLayoutLookAndFeels, dxDateRanges;

type
  TfrmCorpActEntitlementMonitoring = class(TfrmEditorData)
    cxDBLabel1: TcxDBLabel;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBLabel2: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBLabel3: TcxDBLabel;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBLabel4: TcxDBLabel;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    txtCorpActType: TcxLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsCorpActEnt: TDataSource;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    PaymentDate: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    DistributionDate: TdxLayoutItem;
    cdsCorpActEnt: TNClientDataset;
    cdsCorpActEntCAID: TLargeintField;
    cdsCorpActEntACCID: TLargeintField;
    cdsCorpActEntACCNO: TStringField;
    cdsCorpActEntACCNAME: TStringField;
    cdsCorpActEntCUSTODYNO: TStringField;
    cdsCorpActEntSTOCKID: TIntegerField;
    cdsCorpActEntSTOCKCODE: TStringField;
    cdsCorpActEntACCTYPE: TStringField;
    cdsCorpActEntAV_QTY: TFloatField;
    cdsCorpActEntCA_QTY: TFloatField;
    cdsCorpActEntCA_AMT: TFloatField;
    cdsCorpActEntTAXRATE: TFloatField;
    cdsCorpActEntTAXAMT: TFloatField;
    cdsCorpActEntCA_NETAMT: TFloatField;
    cdsCorpActEntCDIV_PAYDATE: TDateField;
    cdsCorpActEntSTAT: TStringField;
    cdsCorpActEntDIV_PAID: TStringField;
    cdsCorpActEntMODDA: TDateTimeField;
    cdsCorpActEntMODUI: TStringField;
    cdsCorpActEntAPPDA: TDateTimeField;
    cdsCorpActEntAPPUI: TStringField;
    cdsCorpActEntUNDER4Y: TIntegerField;
    cdsCorpActEntUNDER4YDA: TDateTimeField;
    cdsCorpActEntNOTES4Y: TStringField;
    cdsCorpActEntISDEL: TIntegerField;
    cdsCorpActEntID: TLargeintField;
    cdsCorpActEntAVGPRICE: TFloatField;
    cdsCorpActEntCA_PRICE: TFloatField;
    cdsCorpActEntPAID: TStringField;
    cdsCorpActEntPAID_DATE: TDateField;
    cdsCorpActEntCCYCODE: TStringField;
    pnlCorpActEnt: TPanel;
    cxGrid1: TcxGrid;
    gvwEntetlement: TcxGridDBBandedTableView;
    gvwEntetlementCAID: TcxGridDBBandedColumn;
    gvwEntetlementACCID: TcxGridDBBandedColumn;
    gvwEntetlementACCNO: TcxGridDBBandedColumn;
    gvwEntetlementACCNAME: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYNO: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKID: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKCODE: TcxGridDBBandedColumn;
    gvwEntetlementACCTYPE: TcxGridDBBandedColumn;
    gvwEntetlementAV_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_QTY: TcxGridDBBandedColumn;
    gvwEntetlementCA_AMT: TcxGridDBBandedColumn;
    gvwEntetlementTAXRATE: TcxGridDBBandedColumn;
    gvwEntetlementTAXAMT: TcxGridDBBandedColumn;
    gvwEntetlementCA_NETAMT: TcxGridDBBandedColumn;
    gvwEntetlementCDIV_PAYDATE: TcxGridDBBandedColumn;
    gvwEntetlementSTAT: TcxGridDBBandedColumn;
    gvwEntetlementDIV_PAID: TcxGridDBBandedColumn;
    gvwEntetlementMODDA: TcxGridDBBandedColumn;
    gvwEntetlementMODUI: TcxGridDBBandedColumn;
    gvwEntetlementAPPDA: TcxGridDBBandedColumn;
    gvwEntetlementAPPUI: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4Y: TcxGridDBBandedColumn;
    gvwEntetlementUNDER4YDA: TcxGridDBBandedColumn;
    gvwEntetlementNOTES4Y: TcxGridDBBandedColumn;
    gvwEntetlementISDEL: TcxGridDBBandedColumn;
    gvwEntetlementID: TcxGridDBBandedColumn;
    gvwEntetlementAVGPRICE: TcxGridDBBandedColumn;
    gvwEntetlementCA_PRICE: TcxGridDBBandedColumn;
    gvwEntetlementPAID: TcxGridDBBandedColumn;
    gvwEntetlementPAID_DATE: TcxGridDBBandedColumn;
    gvwEntetlementCCYCODE: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    ActionList1: TActionList;
    actSendEmail: TNAction;
    PopupMenu1: TPopupMenu;
    SendEmail1: TMenuItem;
    cdsCorpActEntAVAIL_EXER_QTY: TFloatField;
    actPrintPreview: TNAction;
    PrintPreview1: TMenuItem;
    Report: TNClientReportContainer;
    actGenerateToExcelFile: TNAction;
    cdsGenerateCorpActEnt: TNClientDataset;
    cdsGenerateCorpActEntCAID: TLargeintField;
    cdsGenerateCorpActEntSEQID: TLargeintField;
    cdsGenerateCorpActEntACCID: TLargeintField;
    cdsGenerateCorpActEntACCNO: TStringField;
    cdsGenerateCorpActEntACCNAME: TStringField;
    cdsGenerateCorpActEntCUSTODYNO: TStringField;
    cdsGenerateCorpActEntSTOCKID: TIntegerField;
    cdsGenerateCorpActEntSTOCKCODE: TStringField;
    cdsGenerateCorpActEntACCTYPE: TStringField;
    cdsGenerateCorpActEntAV_QTY: TFloatField;
    cdsGenerateCorpActEntCA_QTY: TFloatField;
    cdsGenerateCorpActEntCA_AMT: TFloatField;
    cdsGenerateCorpActEntTAXRATE: TFloatField;
    cdsGenerateCorpActEntTAXAMT: TFloatField;
    cdsGenerateCorpActEntCA_NETAMT: TFloatField;
    cdsGenerateCorpActEntCDIV_PAYDATE: TDateField;
    cdsGenerateCorpActEntSTAT: TStringField;
    cdsGenerateCorpActEntDIV_PAID: TStringField;
    cdsGenerateCorpActEntCASH_VOUCHERID: TLargeintField;
    cdsGenerateCorpActEntAVGPRICE: TFloatField;
    cdsGenerateCorpActEntCA_PRICE: TFloatField;
    cdsGenerateCorpActEntPAID: TStringField;
    cdsGenerateCorpActEntPAID_DATE: TDateField;
    cdsGenerateCorpActEntISPARENT: TLargeintField;
    cdsGenerateCorpActEntCCYCODE: TStringField;
    cdsGenerateCorpActEntEXCH_CA_NETAMT: TFloatField;
    cdsGenerateCorpActEntRCVD: TStringField;
    cdsGenerateCorpActEntSDLV: TStringField;
    cdsGenerateCorpActEntAVAIL_EXER_QTY: TFloatField;
    cdsGenerateCorpActEntMODDA: TDateTimeField;
    cdsGenerateCorpActEntMODUI: TStringField;
    cdsGenerateCorpActEntAPPDA: TDateTimeField;
    cdsGenerateCorpActEntAPPUI: TStringField;
    cdsGenerateCorpActEntUNDER4Y: TIntegerField;
    cdsGenerateCorpActEntUNDER4YDA: TDateTimeField;
    cdsGenerateCorpActEntNOTES4Y: TStringField;
    cdsGenerateCorpActEntISDEL: TIntegerField;
    cdsGenerateCorpActEntID: TLargeintField;
    cdsGenerateCorpActEntSALESNAME: TStringField;
    cdsGenerateCorpActEntACCINIT: TStringField;
    GenerateToExcelFile1: TMenuItem;
    SaveDialog: TSaveDialog;
    N1: TMenuItem;
    actExportToExcel: TNAction;
    ExportToExcel1: TMenuItem;
    cdsCorpActEntTAXPCNT: TFloatField;
    gvwEntetlementAVAIL_EXER_QTY: TcxGridDBBandedColumn;
    gvwEntetlementTAXPCNT: TcxGridDBBandedColumn;
    cdsCorpActEntSEQID: TLargeintField;
    cdsCorpActEntCASH_VOUCHERID: TLargeintField;
    cdsCorpActEntISPARENT: TLargeintField;
    cdsCorpActEntEXCH_CA_NETAMT: TFloatField;
    cdsCorpActEntRCVD: TStringField;
    cdsCorpActEntSDLV: TStringField;
    cdsCorpActEntRECON: TStringField;
    gvwEntetlementSEQID: TcxGridDBBandedColumn;
    gvwEntetlementCASH_VOUCHERID: TcxGridDBBandedColumn;
    gvwEntetlementISPARENT: TcxGridDBBandedColumn;
    gvwEntetlementEXCH_CA_NETAMT: TcxGridDBBandedColumn;
    gvwEntetlementRCVD: TcxGridDBBandedColumn;
    gvwEntetlementSDLV: TcxGridDBBandedColumn;
    gvwEntetlementRECON: TcxGridDBBandedColumn;
    cxDBLabel5: TcxDBLabel;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBLabel6: TcxDBLabel;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBLabel7: TcxDBLabel;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBLabel8: TcxDBLabel;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    actGenerateWireTransfer: TNAction;
    cdsWireTransfer: TNClientDataset;
    cdsWireTransferexternalReference: TStringField;
    cdsWireTransferparticipantCode: TStringField;
    cdsWireTransferparticipantAccount: TStringField;
    cdsWireTransferbeneficiaryAccount: TStringField;
    cdsWireTransferbeneficiaryInstitution: TStringField;
    cdsWireTransfervalueDate: TStringField;
    cdsWireTransfercurrencyCode: TStringField;
    cdsWireTransfercashAmount: TFloatField;
    cdsWireTransferdescription: TStringField;
    cdsCorpActEntWT_INSTRUCTION: TStringField;
    gvwEntetlementWT_INSTRUCTION: TcxGridDBBandedColumn;
    GenerateWireTransfer1: TMenuItem;
    cdsCorpActEntCENO: TStringField;
    cdsCorpActEntINVTYPE: TStringField;
    cdsCorpActEntSTOCKTAXAMT: TFloatField;
    gvwEntetlementCENO: TcxGridDBBandedColumn;
    gvwEntetlementINVTYPE: TcxGridDBBandedColumn;
    gvwEntetlementSTOCKTAXAMT: TcxGridDBBandedColumn;
    cdsCorpActEntList: TNClientDataset;
    cdsCorpActEntListCAID: TLargeintField;
    cdsCorpActEntListSEQID: TLargeintField;
    cdsCorpActEntListACCID: TLargeintField;
    cdsCorpActEntListCENO: TStringField;
    cdsCorpActEntListACCNO: TStringField;
    cdsCorpActEntListACCNAME: TStringField;
    cdsCorpActEntListCUSTODYNO: TStringField;
    cdsCorpActEntListSTOCKID: TIntegerField;
    cdsCorpActEntListSTOCKCODE: TStringField;
    cdsCorpActEntListACCTYPE: TStringField;
    cdsCorpActEntListINVTYPE: TStringField;
    cdsCorpActEntListAV_QTY: TFloatField;
    cdsCorpActEntListCA_QTY: TFloatField;
    cdsCorpActEntListCA_AMT: TFloatField;
    cdsCorpActEntListTAXRATE: TFloatField;
    cdsCorpActEntListTAXAMT: TFloatField;
    cdsCorpActEntListSTOCKTAXAMT: TFloatField;
    cdsCorpActEntListCA_NETAMT: TFloatField;
    cdsCorpActEntListCDIV_PAYDATE: TDateField;
    cdsCorpActEntListSTAT: TStringField;
    cdsCorpActEntListDIV_PAID: TStringField;
    cdsCorpActEntListCASH_VOUCHERID: TLargeintField;
    cdsCorpActEntListAVGPRICE: TFloatField;
    cdsCorpActEntListCA_PRICE: TFloatField;
    cdsCorpActEntListPAID: TStringField;
    cdsCorpActEntListPAID_DATE: TDateField;
    cdsCorpActEntListISPARENT: TLargeintField;
    cdsCorpActEntListCCYCODE: TStringField;
    cdsCorpActEntListEXCH_CA_NETAMT: TFloatField;
    cdsCorpActEntListRCVD: TStringField;
    cdsCorpActEntListSDLV: TStringField;
    cdsCorpActEntListAVAIL_EXER_QTY: TFloatField;
    cdsCorpActEntListRECON: TStringField;
    cdsCorpActEntListWT_INSTRUCTION: TStringField;
    cdsCorpActEntListMODDA: TDateTimeField;
    cdsCorpActEntListMODUI: TStringField;
    cdsCorpActEntListAPPDA: TDateTimeField;
    cdsCorpActEntListAPPUI: TStringField;
    cdsCorpActEntListUNDER4Y: TIntegerField;
    cdsCorpActEntListUNDER4YDA: TDateTimeField;
    cdsCorpActEntListNOTES4Y: TStringField;
    cdsCorpActEntListISDEL: TIntegerField;
    cdsCorpActEntListID: TLargeintField;
    cdsCorpActEntListACCCUSTODYID: TIntegerField;
    cdsCorpActEntListCUSTODYCODE: TStringField;
    cdsCorpActEntListCUSTODYACCNO: TStringField;
    cdsCorpActEntListCUSTODYACCNAME: TStringField;
    dsCorpActEntList: TDataSource;
    gvwEntetlementACCCUSTODYID: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYCODE: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwEntetlementCUSTODYACCNAME: TcxGridDBBandedColumn;
    cdsCorpActEntListCA_NETQTY: TFloatField;
    cdsCorpActEntCA_NETQTY: TFloatField;
    gvwEntetlementCA_NETQTY: TcxGridDBBandedColumn;
    cdsCorpActEntListTAXPCNT: TFloatField;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    cdsCorpActEntListEXER_AMT: TFloatField;
    cdsCorpActEntListEXERQTY: TFloatField;
    gvwEntetlementEXER_AMT: TcxGridDBBandedColumn;
    gvwEntetlementEXERQTY: TcxGridDBBandedColumn;

    procedure FormShow(Sender: TObject);
    procedure actSendEmailExecute(Sender: TObject);
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure actGenerateToExcelFileExecute(Sender: TObject);
    procedure actGenerateToExcelFileUpdate(Sender: TObject);
    procedure actExportToExcelExecute(Sender: TObject);
    procedure actGenerateWireTransferExecute(Sender: TObject);
    procedure cdsCorpActEntCalcFields(DataSet: TDataSet);
    procedure cdsCorpActEntListCalcFields(DataSet: TDataSet);
    procedure actGenerateWireTransferUpdate(Sender: TObject);
  private
    { Private declarations }
    FTransDate: TDateTime;

    procedure ListHeaderEntitlement(ACorpActType: Integer);

    function GetCorpactType(ACAType: Integer): string;
  public
    { Public declarations }
  end;

var
  frmCorpActEntitlementMonitoring: TfrmCorpActEntitlementMonitoring;

implementation

{$R *.dfm}

uses DataGlobal, FormCorpactList, FormCorpactSubAccList,
  FormModifyEntitlement;

procedure TfrmCorpActEntitlementMonitoring.actExportToExcelExecute(Sender: TObject);
var
  sFileName: string;
begin
  inherited;
  SaveDialog.FileName := GetCurrentDir + '\CorpactEntitlementMonitoring.xls';
  if not SaveDialog.Execute then
    Abort;

  sFileName := SaveDialog.FileName;
  if sFileName <> '' then
  begin
    ExportGridToExcel(sFileName, cxGrid1, True, True, False);
    MessageDlg('Export to excel has done', mtInformation, [mbOk], 0);
    ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TfrmCorpActEntitlementMonitoring.actGenerateToExcelFileExecute(
  Sender: TObject);
var
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  sFileName, sSalesName: string;
  i: integer;
  sTransDate: string;
begin
  inherited;
  i          := 0;
  sTransDate := FormatDateTime('dd-mmm-yyyy', dmGlobal.RemoteServer.GetTransDate);

  cdsGenerateCorpActEnt.Close;
  cdsGenerateCorpActEnt.Params[0].AsInteger := cdsCorpActEnt.FieldByName('CAID').AsInteger;
  cdsGenerateCorpActEnt.Open;

  if cdsGenerateCorpActEnt.IsEmpty then
  begin
    MessageDlg('Can not generate Empty Entitlement...', mtError, [mbOk], 0);
    exit;
  end;

  if not SaveDialog.Execute(Application.Handle) then
    Abort;

  sFileName := SaveDialog.FileName;
  if sFileName = '' then
  begin
    MessageDlg('Please write file name to be saved', mtError, [mbOk], 0);
    exit;
  end;

  oXls   := TXLSReadWriteII5.Create(self);
  oSheet := oXls.Sheets[0];
  oSheet.Clear;

  cdsGenerateCorpActEnt.First;
  oXls.Filename := sFileName;

  oSheet.Name := 'Sales Name : '+ cdsGenerateCorpActEntSALESNAME.AsString;
  oSheet.AsString[0, 0] := 'Customer Code';
  oSheet.AsString[1, 0] := 'Qty';
  oSheet.AsString[2, 0] := 'Customer Name';
  oSheet.AsString[3, 0] := 'Customer Initial';

  sSalesName := cdsGenerateCorpActEntSALESNAME.AsString;
  while not cdsGenerateCorpActEnt.Eof do
  begin
    Inc(i);

    oSheet.AsString[0, i] := cdsGenerateCorpActEntACCNO.AsString;
    oSheet.AsFloat[1, i]  := cdsGenerateCorpActEntCA_QTY.AsFloat;
    oSheet.AsString[2, i] := cdsGenerateCorpActEntACCNAME.AsString;
    oSheet.AsString[3, i] := cdsGenerateCorpActEntACCINIT.AsString;

    cdsGenerateCorpActEnt.Next;

    if sSalesName <> cdsGenerateCorpActEntSALESNAME.AsString then
    begin
      sSalesName := cdsGenerateCorpActEntSALESNAME.AsString;

      oXls.Write;
      FreeAndNil(oXls);

      i := 0;
      oXls          := TXLSReadWriteII5.Create(self);
      oXls.Filename := dmGlobal.AppPath + 'Temp\HMETD-' + sSalesName +'-'+sTransDate+'.xls';
      oSheet        := oXls.Sheets[0];
      oSheet.Name   := 'Sales Name : '+ sSalesName;
      oSheet.Clear;

      oSheet.AsString[0, 0] := 'Customer Code';
      oSheet.AsString[1, 0] := 'Qty';
      oSheet.AsString[2, 0] := 'Customer Name';
      oSheet.AsString[3, 0] := 'Customer Initial';
    end;

  end;
  oXls.Write;
  FreeAndNil(oXls);

  MessageDlg('Generate excel file has done...', mtInformation, [mbOk], 0);
end;

procedure TfrmCorpActEntitlementMonitoring.actGenerateToExcelFileUpdate(
  Sender: TObject);
begin
  inherited;
//  actGenerateToExcelFile.Visible := dsSubject.DataSet.FieldByName('CATYPE').AsString = '1';
end;

procedure TfrmCorpActEntitlementMonitoring.actGenerateWireTransferExecute(
  Sender: TObject);
var
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  sFileName, sSalesName: string;
  i, j, RecIdx: Integer;
  sSeqNo: WideString;
begin
  if not SaveDialog.Execute(Application.Handle) then
    Abort;

  sFileName := SaveDialog.FileName;
  if sFileName = '' then
  begin
    MessageDlg('Please write file name to be saved', mtError, [mbOk], 0);
    exit;
  end;

  oXls   := TXLSReadWriteII5.Create(self);
  oSheet := oXls.Sheets[0];
  oSheet.Clear;

  sSeqNo := '';
  for i := 0 to gvwEntetlement.Controller.SelectedRecordCount -1 do
  begin
    RecIdx := gvwEntetlement.Controller.SelectedRecords[i].RecordIndex;
    gvwEntetlement.DataController.FocusedRecordIndex := RecIdx;

    if sSeqNo <> '' then
      sSeqNo := sSeqNo + ';';

    sSeqNo := sSeqNo + cdsCorpActEntListSEQID.AsString;
  end;

  cdsWireTransfer.Close;
  cdsWireTransfer.Params[0].AsInteger    := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsWireTransfer.Params[1].AsWideString := sSeqNo;
  cdsWireTransfer.Open;

  if cdsWireTransfer.IsEmpty then
  begin
    MessageDlg('There is no data can be generated to excel file', mtError, [mbOK], 0);
    Exit;
  end
  else
  begin
    for i := 0 to gvwEntetlement.Controller.SelectedRecordCount -1 do
    begin
      RecIdx := gvwEntetlement.Controller.SelectedRecords[i].RecordIndex;
      gvwEntetlement.DataController.FocusedRecordIndex := RecIdx;

      cdsCorpActEnt.Close;
      cdsCorpActEnt.Params[0].AsInteger := cdsCorpActEntListCAID.AsInteger;
      cdsCorpActEnt.Params[1].AsInteger := cdsCorpActEntListSEQID.AsInteger;
      cdsCorpActEnt.Params[2].AsInteger := cdsCorpActEntListACCID.AsInteger;
      cdsCorpActEnt.Open;

      if not cdsCorpActEnt.IsEmpty then
      begin
        cdsCorpActEnt.Edit;
        cdsCorpActEntWT_INSTRUCTION.AsString := '1';
        cdsCorpActEnt.Post;
        cdsCorpActEnt.ApplyUpdates(0);
      end;
    end;
  end;

  cdsWireTransfer.First;
  oXls.Filename := sFileName;
  oSheet.Name := FormatDateTime('yyyymmdd', dmGlobal.RemoteServer.GetTransDate);
  for i := 0 to cdsWireTransfer.FieldCount -1 do
    oSheet.AsString[i, 0] := cdsWireTransfer.Fields[i].FieldName;

  j := 0;
  while not cdsWireTransfer.Eof do
  begin
    Inc(j);

    for i := 0 to cdsWireTransfer.FieldCount -1 do
    begin
      if cdsWireTransfer.Fields[i].DataType = ftFloat then
      begin
        if VarIsNull(cdsWireTransfer.Fields[i].Value) then
          oSheet.AsFloat[i, j] := 0
        else
          oSheet.AsFloat[i, j] := cdsWireTransfer.Fields[i].Value;
      end
      else
      begin
        if VarIsNull(cdsWireTransfer.Fields[i].Value) then
          oSheet.AsString[i, j] := ''
        else
          oSheet.AsString[i, j] := cdsWireTransfer.Fields[i].Value;
      end;
    end;

    cdsWireTransfer.Next;
  end;
  oXls.Write;
  FreeAndNil(oXls);

  cdsCorpActEntList.Refresh;

  MessageDlg('Generate wire transfer has done...', mtInformation, [mbOk], 0);

  if FileExists(sFileName) then
    ShellExecute(Application.Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmCorpActEntitlementMonitoring.actGenerateWireTransferUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Enabled := dsSubject.DataSet.FieldByName('PAYDATE').AsDateTime <= FTransDate;
end;

procedure TfrmCorpActEntitlementMonitoring.actPrintPreviewExecute(Sender: TObject);
var
  sReportFile: string;
  sAccID: string;
  i: Integer;
begin
  inherited;
  try
    sAccID := '';
    for i := 0 to gvwEntetlement.Controller.SelectedRecordCount -1 do
    begin
      sAccID := sAccID + IntToStr(gvwEntetlement.Controller.SelectedRecords[i].Values[gvwEntetlementACCID.Index]);
      if i < gvwEntetlement.Controller.SelectedRecordCount -1 then
        sAccID := sAccID + ', ';

    end;

    sReportFile := 'Corporate Action\'+ GetCorpactType(dsSubject.DataSet.FieldByName('CATYPE').AsInteger) +'.fr3';

    Report.ReportName := sReportFile;

    Report.Params[0].AsInteger := cdsCorpActEntList.FieldByName('CAID').AsInteger;
    Report.Params[1].AsString  := sAccID;
    Report.PreviewReport;

  except
    on E : Exception do MessageDlg('Error while print preview, Error : '+ E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TfrmCorpActEntitlementMonitoring.actSendEmailExecute(Sender: TObject);
var
  iCAID, iACCID, iCAType: Integer;
begin
  inherited;
  if  MessageDlg('Send to email ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  iCAID   := dsCorpActEntList.DataSet.FieldByName('CAID').AsInteger;
  iACCID  := dsCorpActEntList.DataSet.FieldByName('ACCID').AsInteger;
  iCAType := StrToInt(dsSubject.DataSet.FieldByName('CATYPE').AsString);

  MessageDlg(dmGlobal.RemoteServer.SendCorpactEntitlement(iCAID, iACCID, iCAType, 'CA'), mtInformation, [mbOk], 0);
end;

procedure TfrmCorpActEntitlementMonitoring.cdsCorpActEntCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsCorpActEntTAXPCNT.AsFloat := cdsCorpActEntTAXRATE.AsFloat * 100;
end;

procedure TfrmCorpActEntitlementMonitoring.cdsCorpActEntListCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsCorpActEntListTAXPCNT.AsFloat := cdsCorpActEntListTAXRATE.AsFloat * 100;
end;

procedure TfrmCorpActEntitlementMonitoring.FormShow(Sender: TObject);
var
  iCAType: Integer;
begin
  inherited;
  if dsSubject.DataSet.FieldByName('CATYPE').AsString <> '' then
  begin
    iCAType := StrToInt(dsSubject.DataSet.FieldByName('CATYPE').AsString);
    case iCAType of
      1 : txtCorpActType.Caption := 'HMETD';
      2 : txtCorpActType.Caption := 'Cash Dividen';
      3 : txtCorpActType.Caption := 'Stock Dividen';
      4 : txtCorpActType.Caption := 'Mix';
      5 : txtCorpActType.Caption := 'Stock Bonus';
      6 : txtCorpActType.Caption := 'Stock Split';
      7 : txtCorpActType.Caption := 'Stock Reverse';
      8 : txtCorpActType.Caption := 'Stock Merge';
      9 : txtCorpActType.Caption := 'Coupon Payment';
    end;

    ListHeaderEntitlement(iCAType);
  end;

  cdsCorpActEntList.Close;
  cdsCorpActEntList.Params[0].AsInteger := dsSubject.DataSet.FieldByName('CAID').AsInteger;
  cdsCorpActEntList.Params[1].AsInteger := dsSubject.DataSet.FieldByName('STOCKID').AsInteger;
  cdsCorpActEntList.Open;

  FTransDate := dmGlobal.RemoteServer.GetTransDate;

//  btnGenerateEnt.Enabled := cdsCorpActEnt.IsEmpty;
end;

function TfrmCorpActEntitlementMonitoring.GetCorpactType(ACAType: Integer): string;
begin
  case ACAType of
    1 : Result := 'CorpActHMETD';
    2 : Result := 'CorpActCashDividen';
    3 : Result := 'CorpActStockDividen';
    4 : Result := 'CorpActStockMix';
    5 : Result := 'CorpActStockBonus';
    6 : Result := 'CorpActStockSplit';
    7 : Result := 'CorpActStockReverse';
    8 : Result := 'CorpActStockMerge';
    9 : Result := 'CorpActCouponPayment';
  end;
end;

procedure TfrmCorpActEntitlementMonitoring.ListHeaderEntitlement(
  ACorpActType: Integer);
var
  i: Integer;
begin
  for i := 0 to gvwEntetlement.ColumnCount -1 do
    gvwEntetlement.Columns[i].Visible := False;

  gvwEntetlementACCNO.Visible := True;
  gvwEntetlementACCNAME.Visible := True;
  gvwEntetlementAV_QTY.Visible := True;
  gvwEntetlementRECON.Visible := True;
  gvwEntetlementCUSTODYACCNO.Visible := True;
  gvwEntetlementAV_QTY.Visible := True;
  gvwEntetlementCA_PRICE.Visible := (ACorpActType in [1, 3, 4, 5, 6, 7, 8]);
  gvwEntetlementCCYCODE.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementCA_AMT.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementTAXPCNT.Visible := (ACorpActType in [2, 3, 4, 9]);
  gvwEntetlementTAXAMT.Visible := (ACorpActType in [2, 3, 4, 9]);
  gvwEntetlementCA_NETAMT.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementSTAT.Visible := (ACorpActType in [2, 4, 9]);
  gvwEntetlementCA_QTY.Visible := (ACorpActType in [1, 3, 4, 5, 6, 7, 8]);
  gvwEntetlementWT_INSTRUCTION.Visible := (ACorpActType in [2, 3, 4]);
  gvwEntetlementEXERQTY.Visible := (ACorpActType in [1]);
  gvwEntetlementEXER_AMT.Visible := (ACorpActType in [1]);
  gvwEntetlementSTOCKTAXAMT.Visible := (ACorpActType in [3, 4]);
  gvwEntetlementAVGPRICE.Visible := (ACorpActType in [6, 7]);
  gvwEntetlementCA_NETQTY.Visible := (ACorpActType in [3, 4]);

  PaymentDate.Visible := (ACorpActType in [1, 2, 3, 4, 9]);
  DistributionDate.Visible := (ACorpActType in [1, 5, 6, 7, 8]);

  gvwEntetlementCA_QTY.Caption := txtCorpActType.Caption + ' (Qty)';
  gvwEntetlementCA_PRICE.Caption := txtCorpActType.Caption + ' (Price)';
  gvwEntetlementCA_AMT.Caption := txtCorpActType.Caption + ' (IDR)';
  gvwEntetlementCA_NETAMT.Caption := 'Net ' + txtCorpActType.Caption + ' (IDR)';
  gvwEntetlementCA_NETQTY.Caption := 'Net ' + txtCorpActType.Caption + ' (Qty)';
  gvwEntetlementAVGPRICE.Caption := txtCorpActType.Caption + ' Avg. Price';

//  case ACorpActType of
//    1 : begin
//          gvwEntetlementCA_PRICE.Caption := 'Excercise (Price)';
//        end;
//    else
//      gvwEntetlementCA_PRICE.Caption := 'Entitlement (Price)';
//  end;

end;

end.
