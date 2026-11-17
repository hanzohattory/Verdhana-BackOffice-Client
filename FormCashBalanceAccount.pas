unit FormCashBalanceAccount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, NActionPermission,
  Vcl.Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, Vcl.ActnList, NDatasetAction,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, Data.DB,
  Datasnap.DBClient, NClientDataset, cxPCdxBarPopupMenu, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxSplitter, cxGridCustomView, cxClasses, System.Math,
  cxGridLevel, cxGrid, cxCheckBox, XLSSheetData5, XLSReadWriteII5, ShellAPI, XMLIntf, XMLDoc,
  dxBarBuiltInMenu, System.Actions;

type
  TfrmCashBalanceAccount = class(TfrmBasic)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dtTransDate: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ActionList1: TActionList;
    actView: TNAction;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cdsCbestBalance: TNClientDataset;
    cdsCbestBalanceActivity: TNClientDataset;
    cdsCreditBalance: TNClientDataset;
    cdsCreditBalanceActivity: TNClientDataset;
    dsCbestBalance: TDataSource;
    dsCbestBalanceActivity: TDataSource;
    dsCreditBalance: TDataSource;
    dsCreditBalanceActivity: TDataSource;
    cdsCbestBalanceACCID: TLargeintField;
    cdsCbestBalanceACCNO: TStringField;
    cdsCbestBalanceACCNAME: TStringField;
    cdsCbestBalanceACCSOPID: TLargeintField;
    cdsCbestBalanceACCSOPNAME: TStringField;
    cdsCbestBalanceCCY: TStringField;
    cdsCbestBalanceSUBACCNO: TStringField;
    cdsCbestBalanceSUBACC_BALANCE: TFloatField;
    cdsCbestBalanceActivityACCID: TLargeintField;
    cdsCbestBalanceActivityACCSOPID: TLargeintField;
    cdsCbestBalanceActivityVALUEDATE: TDateField;
    cdsCbestBalanceActivityTRTYPE: TStringField;
    cdsCbestBalanceActivityREFID: TLargeintField;
    cdsCbestBalanceActivityREFNO: TStringField;
    cdsCbestBalanceActivityREFTYPE: TStringField;
    cdsCbestBalanceActivityCDESC: TStringField;
    cdsCbestBalanceActivityAMOUNT: TFloatField;
    cdsCreditBalanceACCID: TLargeintField;
    cdsCreditBalanceACCNO: TStringField;
    cdsCreditBalanceACCNAME: TStringField;
    cdsCreditBalanceACCSOPID: TLargeintField;
    cdsCreditBalanceACCSOPNAME: TStringField;
    cdsCreditBalanceCCY: TStringField;
    cdsCreditBalanceSUBACCNO: TStringField;
    cdsCreditBalanceCREDIT_BALANCE: TFloatField;
    cdsCreditBalanceActivityACCID: TLargeintField;
    cdsCreditBalanceActivityACCSOPID: TLargeintField;
    cdsCreditBalanceActivityVALUEDATE: TDateField;
    cdsCreditBalanceActivityTRTYPE: TStringField;
    cdsCreditBalanceActivityREFID: TLargeintField;
    cdsCreditBalanceActivityREFNO: TStringField;
    cdsCreditBalanceActivityREFTYPE: TStringField;
    cdsCreditBalanceActivityCDESC: TStringField;
    cdsCreditBalanceActivityAMOUNT: TFloatField;
    pcCashBalanceAccount: TcxPageControl;
    tbCBest: TcxTabSheet;
    tbCredit: TcxTabSheet;
    tbRecon: TcxTabSheet;
    grdCBestBalanceLevel1: TcxGridLevel;
    grdCBestBalance: TcxGrid;
    gvwCBestBalance: TcxGridDBBandedTableView;
    cxGrid2: TcxGrid;
    gvwCBestBalanceActivity: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    grdCreditBalance: TcxGrid;
    gvwCreditBalance: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    cxGrid3: TcxGrid;
    gvwCreditBalanceActivity: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    gvwCBestBalanceACCID: TcxGridDBBandedColumn;
    gvwCBestBalanceACCNO: TcxGridDBBandedColumn;
    gvwCBestBalanceACCNAME: TcxGridDBBandedColumn;
    gvwCBestBalanceACCSOPID: TcxGridDBBandedColumn;
    gvwCBestBalanceACCSOPNAME: TcxGridDBBandedColumn;
    gvwCBestBalanceCCY: TcxGridDBBandedColumn;
    gvwCBestBalanceSUBACCNO: TcxGridDBBandedColumn;
    gvwCBestBalanceSUBACC_BALANCE: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityACCID: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityACCSOPID: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityVALUEDATE: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityTRTYPE: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityREFID: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityREFNO: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityREFTYPE: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityCDESC: TcxGridDBBandedColumn;
    gvwCBestBalanceActivityAMOUNT: TcxGridDBBandedColumn;
    gvwCreditBalanceACCID: TcxGridDBBandedColumn;
    gvwCreditBalanceACCNO: TcxGridDBBandedColumn;
    gvwCreditBalanceACCNAME: TcxGridDBBandedColumn;
    gvwCreditBalanceACCSOPID: TcxGridDBBandedColumn;
    gvwCreditBalanceACCSOPNAME: TcxGridDBBandedColumn;
    gvwCreditBalanceCCY: TcxGridDBBandedColumn;
    gvwCreditBalanceSUBACCNO: TcxGridDBBandedColumn;
    gvwCreditBalanceCREDIT_BALANCE: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityACCID: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityACCSOPID: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityVALUEDATE: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityTRTYPE: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityREFID: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityREFNO: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityREFTYPE: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityCDESC: TcxGridDBBandedColumn;
    gvwCreditBalanceActivityAMOUNT: TcxGridDBBandedColumn;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    cdsCBestCashRecon: TNClientDataset;
    dsCBestCashRecon: TDataSource;
    cdsCBestCashReconACCID: TLargeintField;
    cdsCBestCashReconACCNO: TStringField;
    cdsCBestCashReconACCNAME: TStringField;
    cdsCBestCashReconACCSOPNAME: TStringField;
    cdsCBestCashReconCCYCODE: TStringField;
    cdsCBestCashReconKSEI_ACC: TStringField;
    cdsCBestCashReconSUBACC_BALANCE: TFloatField;
    cdsCBestCashReconORCHID_BALANCE: TFloatField;
    cxGridDBBandedTableView3ACCID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ACCNO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ACCNAME: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ACCSOPNAME: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3CCYCODE: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3KSEI_ACC: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3SUBACC_BALANCE: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3ORCHID_BALANCE: TcxGridDBBandedColumn;
    cdsCBestCashReconDifferent: TFloatField;
    cxGridDBBandedTableView3Different: TcxGridDBBandedColumn;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    chkDifferent: TcxCheckBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    SaveDialog: TSaveDialog;
    cdsWireTransfer: TNClientDataset;
    cdsBookTransfer: TNClientDataset;
    actCreditBalanceProcess: TNAction;
    actCBestBalanceProcess: TNAction;
    PopupMenu1: TPopupMenu;
    CreditBalanceProcess1: TMenuItem;
    CBestBalanceProcess1: TMenuItem;
    cdsWireTransferexternalReference: TStringField;
    cdsWireTransferparticipantCode: TStringField;
    cdsWireTransferparticipantAccount: TStringField;
    cdsWireTransferbeneficiaryAccount: TStringField;
    cdsWireTransferbeneficiaryInstitution: TStringField;
    cdsWireTransfervalueDate: TStringField;
    cdsWireTransfercurrencyCode: TStringField;
    cdsWireTransfercashAmount: TFloatField;
    cdsWireTransferdescription: TStringField;
    cdsWireTransferTmp: TClientDataSet;
    cdsBookTransferTmp: TClientDataSet;
    cdsWireTransferTmpexternalReference: TStringField;
    cdsWireTransferTmpparticipantCode: TStringField;
    cdsWireTransferTmpparticipantAccount: TStringField;
    cdsWireTransferTmpbeneficiaryAccount: TStringField;
    cdsWireTransferTmpbeneficiaryInstitution: TStringField;
    cdsWireTransferTmpvalueDate: TStringField;
    cdsWireTransferTmpcurrencyCode: TStringField;
    cdsWireTransferTmpcashAmount: TFloatField;
    cdsWireTransferTmpdescription: TStringField;
    cdsBookTransferTmpexternalReference: TStringField;
    cdsBookTransferTmpparticipantCode: TStringField;
    cdsBookTransferTmpparticipantAccount: TStringField;
    cdsBookTransferTmpcounterpartAccount: TStringField;
    cdsBookTransferTmpvalueDate: TStringField;
    cdsBookTransferTmpcurrencyCode: TStringField;
    cdsBookTransferTmpcashAmount: TFloatField;
    cdsBookTransferTmpdescription: TStringField;
    cdsBookTransferexternalReference: TStringField;
    cdsBookTransferparticipantCode: TStringField;
    cdsBookTransferparticipantAccount: TStringField;
    cdsBookTransfercounterpartAccount: TStringField;
    cdsBookTransfervalueDate: TStringField;
    cdsBookTransfercurrencyCode: TStringField;
    cdsBookTransfercashAmount: TFloatField;
    cdsBookTransferdescription: TStringField;
    procedure FormShow(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure gvwCBestBalanceCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gvwCreditBalanceCellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cdsCBestCashReconCalcFields(DataSet: TDataSet);
    procedure chkDifferentClick(Sender: TObject);
    procedure actCreditBalanceProcessExecute(Sender: TObject);
    procedure actCBestBalanceProcessExecute(Sender: TObject);
    procedure actCreditBalanceProcessUpdate(Sender: TObject);
    procedure actCBestBalanceProcessUpdate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure gvwCBestBalanceKeyPress(Sender: TObject; var Key: Char);
    procedure gvwCreditBalanceKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FTransDate : TDate;

    procedure LoadingData;
    procedure WireTransfer;
    procedure BookTransfer;
  public
    { Public declarations }
  end;

var
  frmCashBalanceAccount: TfrmCashBalanceAccount;

implementation

{$R *.dfm}

uses DataGlobal;

{ TfrmCashBalanceAccount }

procedure TfrmCashBalanceAccount.actCreditBalanceProcessExecute(
  Sender: TObject);
var
  i, x: Integer;
  sResult, sMessage,
  sExternalRefNo: string;
  iAccID, iAccSOPID: Int64;
  sCCY, sReffNo: string;
  dAmount: Double;
  sAccName, sSubAcc, sSOPAcc: string;
  bCon: Boolean;
  sSOPNo, sSOPName: string;
begin
  inherited;
  sReffNo := '';
  sMessage:= '';

  cdsBookTransferTmp.Close;
  cdsBookTransferTmp.CreateDataSet;

  dAmount := Ceil(cdsCreditBalanceCREDIT_BALANCE.AsFloat);
  if dAmount <> 0 then
  begin
    bCon := not cdsCreditBalanceActivity.IsEmpty;

    if VarIsNull(cdsCreditBalanceACCSOPID.AsLargeInt) then
      iAccSOPID := 0
    else
      iAccSOPID := cdsCreditBalanceACCSOPID.AsLargeInt;
    iAccID    := cdsCreditBalanceACCID.AsLargeInt;

    if bCon then
    begin
      sResult        := dmGlobal.RemoteServer.CreditBalanceProcess(FTransDate, iAccID, iAccSOPID, cdsCreditBalanceCCY.AsString,
                        cdsCreditBalanceCREDIT_BALANCE.AsFloat, '', sMessage);
      sExternalRefNo := sResult;
      if sExternalRefNo <> '' then
      begin
        if VarIsNull(cdsCBestBalanceSUBACCNO.AsString) then
        begin
          sSOPNo   := '';
          sSOPName := '';
        end
        else
        begin
          sSOPNo   := cdsCreditBalanceSUBACCNO.AsString;
          sSOPName := cdsCreditBalanceACCSOPNAME.AsString;
        end;

        cdsBookTransfer.Close;
        cdsBookTransfer.Params[0].AsString  := cdsCreditBalanceACCNAME.AsString;
        cdsBookTransfer.Params[1].AsDate    := FTransDate;
        cdsBookTransfer.Params[2].AsString  := cdsCreditBalanceCCY.AsString;
        cdsBookTransfer.Params[3].AsString  := sSOPNo;
        cdsBookTransfer.Params[4].AsFloat   := cdsCreditBalanceCREDIT_BALANCE.AsFloat;
        cdsBookTransfer.Params[5].AsString  := sExternalRefNo;
        cdsBookTransfer.Params[6].AsString  := sSOPName;
        cdsBookTransfer.Params[7].AsString  := 'BTS - Move To CBest';
        cdsBookTransfer.Open;

        cdsBookTransferTmp.Append;
        for x := 0 to cdsBookTransfer.FieldCount -1 do
          cdsBookTransferTmp.Fields[x].AsVariant := cdsBookTransfer.Fields[x].AsVariant;
        cdsBookTransferTmp.Post;
      end;
      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      if not cdsBookTransferTmp.IsEmpty then
        BookTransfer;
    end;
  end;

  cdsCreditBalance.Refresh;
  cdsCreditBalanceActivity.Refresh;
end;

procedure TfrmCashBalanceAccount.actCreditBalanceProcessUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Visible := pcCashBalanceAccount.ActivePage = tbCredit;
end;

procedure TfrmCashBalanceAccount.actViewExecute(Sender: TObject);
begin
  inherited;
  LoadingData;
end;

procedure TfrmCashBalanceAccount.BookTransfer;
var
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  sFileName, sSalesName: string;
  i, j: Integer;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  bCon: Boolean;
  sFieldValue: string;
begin
  bCon := False;

  if SaveDialog.Execute(Application.Handle) then
  begin
    sFileName := SaveDialog.FileName;
    if sFileName = '' then
    begin
      MessageDlg('Please write file name to be saved', mtError, [mbOk], 0);
      exit;
    end
    else
      bCon := True;
  end;

  if bCOn then
  begin
    try
      oXML := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      i := 0;
      cdsWireTransferTmp.First;
      while not cdsWireTransferTmp.Eof do
      begin
        inc(i);
        for j := 0 to cdsWireTransferTmp.FieldCount -1 do
        begin
          if j = 0 then
            sFieldValue := cdsWireTransferTmp.Fields[j].AsString + FormatFloat('_000', i)
          else
            sFieldValue := cdsWireTransferTmp.Fields[j].AsString;

          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsWireTransferTmp.Fields[j].FieldName;
          oCNode.Text := sFieldValue;
        end;

        cdsWireTransferTmp.Next;
      end;
    finally
      oXML.SaveToFile(sFileName)
    end;
  end;

//    oXls   := TXLSReadWriteII5.Create(self);
//    oSheet := oXls.Sheets[0];
//    oSheet.Clear;
//
//    cdsBookTransferTmp.First;
//    oXls.Filename := sFileName;
//    oSheet.Name := FormatDateTime('yyyymmdd', FTransDate);
//    for i := 0 to cdsBookTransferTmp.FieldCount -1 do
//      oSheet.AsString[i, 0] := cdsBookTransferTmp.Fields[i].FieldName;
//
//    j := 0;
//    while not cdsBookTransferTmp.Eof do
//    begin
//      Inc(j);
//
//      for i := 0 to cdsBookTransferTmp.FieldCount -1 do
//      begin
//        if VarIsNull(cdsBookTransferTmp.Fields[i].Value) then
//        begin
//          if (cdsBookTransferTmp.Fields[i].DataType = ftFloat) then
//            oSheet.AsFloat[i, j] := 0
//          else
//            oSheet.AsString[i, j] := '';
//        end
//        else
//        begin
//          if LowerCase(cdsBookTransferTmp.Fields[i].FieldName) = 'valuedate' then
//            oSheet.AsVariant[i, j]:= StrToInt(cdsBookTransferTmp.Fields[i].Value)
//          else
//            oSheet.AsVariant[i, j]:= cdsBookTransferTmp.Fields[i].Value;
//        end;
//      end;
//
//      cdsBookTransferTmp.Next;
//    end;
//    oXls.Write;
//    FreeAndNil(oXls);
//
//  //  MessageDlg('Generate excel file has done...', mtInformation, [mbOk], 0);
//
//    if FileExists(sFileName) then
//        ShellExecute(Application.Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmCashBalanceAccount.cdsCBestCashReconCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  cdsCBestCashReconDifferent.AsFloat := cdsCBestCashReconSUBACC_BALANCE.AsFloat - cdsCBestCashReconORCHID_BALANCE.AsFloat;
end;

procedure TfrmCashBalanceAccount.chkDifferentClick(Sender: TObject);
begin
  inherited;
  cdsCBestCashRecon.Filter := '(SUBACC_BALANCE - ORCHID_BALANCE) <> 0';

  if chkDifferent.Checked then
    cdsCBestCashRecon.Filtered := True
  else
    cdsCBestCashRecon.Filtered := False;
end;

procedure TfrmCashBalanceAccount.gvwCreditBalanceCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cdsCreditBalanceActivity.Close;
  cdsCreditBalanceActivity.Params[0].AsDate    := FTransDate;
  cdsCreditBalanceActivity.Params[1].AsInteger := cdsCreditBalanceACCID.AsInteger;
  cdsCreditBalanceActivity.Params[2].AsInteger := cdsCreditBalanceACCSOPID.AsInteger;
  cdsCreditBalanceActivity.Open;
end;

procedure TfrmCashBalanceAccount.gvwCreditBalanceKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = chr(13) then
  begin
    cdsCreditBalanceActivity.Close;
    cdsCreditBalanceActivity.Params[0].AsDate    := FTransDate;
    cdsCreditBalanceActivity.Params[1].AsInteger := cdsCreditBalanceACCID.AsInteger;
    cdsCreditBalanceActivity.Params[2].AsInteger := cdsCreditBalanceACCSOPID.AsInteger;
    cdsCreditBalanceActivity.Open;
  end;
end;

procedure TfrmCashBalanceAccount.FormResize(Sender: TObject);
begin
  inherited;
  grdCBestBalance.Width  := Round(Self.Width / 2);
  grdCreditBalance.Width := Round(Self.Width / 2);
end;

procedure TfrmCashBalanceAccount.FormShow(Sender: TObject);
begin
  inherited;
  FTransDate := dmGlobal.RemoteServer.GetTransDate;

  dtTransDate.Date := FTransDate;
  LoadingData;
end;

procedure TfrmCashBalanceAccount.gvwCBestBalanceCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cdsCbestBalanceActivity.Close;
  cdsCbestBalanceActivity.Params[0].AsDate    := FTransDate;
  cdsCbestBalanceActivity.Params[1].AsInteger := cdsCbestBalanceACCID.AsInteger;
  cdsCbestBalanceActivity.Params[2].AsInteger := cdsCbestBalanceACCSOPID.AsInteger;
  cdsCbestBalanceActivity.Open;
end;

procedure TfrmCashBalanceAccount.gvwCBestBalanceKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = chr(13) then
  begin
    cdsCbestBalanceActivity.Close;
    cdsCbestBalanceActivity.Params[0].AsDate    := FTransDate;
    cdsCbestBalanceActivity.Params[1].AsInteger := cdsCbestBalanceACCID.AsInteger;
    cdsCbestBalanceActivity.Params[2].AsInteger := cdsCbestBalanceACCSOPID.AsInteger;
    cdsCbestBalanceActivity.Open;
  end;
end;

procedure TfrmCashBalanceAccount.LoadingData;
begin
  cdsCbestBalance.Close;
  cdsCbestBalance.Params[0].AsDate := FTransDate;
  cdsCbestBalance.Open;

  cdsCreditBalance.Close;
  cdsCreditBalance.Params[0].AsDate := FTransDate;
  cdsCreditBalance.Open;

  cdsCBestCashRecon.Close;
  cdsCBestCashRecon.Params[0].AsDate := FTransDate;
  cdsCBestCashRecon.Open;
end;

procedure TfrmCashBalanceAccount.actCBestBalanceProcessExecute(Sender: TObject);
var
  i, x: Integer;
  sResult, sMessage,
  sExternalRefNo: string;
  iAccID, iAccSOPID: Int64;
  sCCY, sReffNo: string;
  dAmount: Double;
  sAccName, sSubAcc, sSOPName: string;
  bCon: Boolean;
begin
  inherited;
  sMessage := '';

  cdsBookTransferTmp.Close;
  cdsBookTransferTmp.CreateDataSet;

  dAmount := Ceil(cdsCbestBalanceSUBACC_BALANCE.AsFloat);
  if dAmount <> 0 then
  begin
    bCon := not cdsCbestBalanceActivity.IsEmpty;

    iAccID    := cdsCbestBalanceACCID.AsLargeInt;
    iAccSOPID := cdsCbestBalanceACCSOPID.AsLargeInt;
    if bCon then
    begin
      sResult        := dmGlobal.RemoteServer.CBestBalanceProcess(FTransDate, iAccID, iAccSOPID,
                        cdsCBestBalanceCCY.AsString, cdsCbestBalanceSUBACC_BALANCE.AsFloat, '', sMessage);
      sExternalRefNo := sResult;
      if sExternalRefNo <> '' then
      begin
        cdsBookTransfer.Close;
        cdsBookTransfer.Params[0].AsString  := cdsCBestBalanceACCNAME.AsString;
        cdsBookTransfer.Params[1].AsDate    := FTransDate;
        cdsBookTransfer.Params[2].AsString  := cdsCBestBalanceCCY.AsString;
        cdsBookTransfer.Params[3].AsString  := cdsCBestBalanceSUBACCNO.AsString;
        cdsBookTransfer.Params[4].AsFloat   := cdsCbestBalanceSUBACC_BALANCE.AsFloat;
        cdsBookTransfer.Params[5].AsString  := sExternalRefNo;
        cdsBookTransfer.Params[6].AsString  := cdsCBestBalanceACCSOPNAME.AsString;
        cdsBookTransfer.Params[7].AsString  := 'BTS - Move To Credit Balance';
        cdsBookTransfer.Open;

        cdsBookTransferTmp.Append;
        for x := 0 to cdsBookTransfer.FieldCount -1 do
          cdsBookTransferTmp.Fields[x].AsVariant := cdsBookTransfer.Fields[x].AsVariant;
        cdsBookTransferTmp.Post;
      end;
      MessageDlg(sMessage, mtInformation, [mbOk], 0);

      if not cdsBookTransferTmp.IsEmpty then
        BookTransfer;
    end;
  end;

  cdsCbestBalance.Refresh;
  cdsCbestBalanceActivity.Refresh;
end;

procedure TfrmCashBalanceAccount.actCBestBalanceProcessUpdate(
  Sender: TObject);
begin
  inherited;
  TAction(Sender).Visible := pcCashBalanceAccount.ActivePage = tbCBest;
end;

procedure TfrmCashBalanceAccount.WireTransfer;
var
  i, j: Integer;
  sFileName: string;
  oXls: TXLSReadWriteII5;
  oSheet: TXLSWorksheet;
  bCon: Boolean;
  oXML: IXMLDocument;
  oRootNode, oNode, oCNode: IXMLNode;
  sFieldValue: string;
begin
  bCon := False;
  if SaveDialog.Execute(Application.Handle) then
  begin
    sFileName := SaveDialog.FileName;
    if sFileName = '' then
    begin
      MessageDlg('Please write file name to be saved', mtError, [mbOk], 0);
      Exit;
    end
    else
      bCon := True;
  end;

  if bCOn then
  begin
    try
      oXML := NewXMLDocument;
      oXML.Options := [doNodeAutoIndent];
      oRootNode := oXML.AddChild('Message');

      oNode := oRootNode.AddChild('Record');
      oNode.Attributes['name'] := 'data';

      i := 0;
      cdsWireTransferTmp.First;
      while not cdsWireTransferTmp.Eof do
      begin
        inc(i);
        for j := 0 to cdsWireTransferTmp.FieldCount -1 do
        begin
          if j = 0 then
            sFieldValue := cdsWireTransferTmp.Fields[j].AsString + FormatFloat('_000', i)
          else
            sFieldValue := cdsWireTransferTmp.Fields[j].AsString;

          oCNode := oNode.AddChild('Field');
          oCNode.Attributes['name'] := cdsWireTransferTmp.Fields[j].FieldName;
          oCNode.Text := sFieldValue;
        end;

        cdsWireTransferTmp.Next;
      end;
    finally
      oXML.SaveToFile(sFileName)
    end;
  end;

//  if bCon then
//  begin
//    oXls   := TXLSReadWriteII5.Create(self);
//    oSheet := oXls.Sheets[0];
//    oSheet.Clear;
//
//    cdsWireTransferTmp.First;
//    oXls.Filename := sFileName;
//    oSheet.Name := FormatDateTime('yyyymmdd', FTransDate);
//    for i := 0 to cdsWireTransfer.FieldCount -1 do
//      oSheet.AsString[i, 0] := cdsWireTransfer.Fields[i].FieldName;
//
//    j := 0;
//    while not cdsWireTransferTmp.Eof do
//    begin
//      Inc(j);
//
//      for i := 0 to cdsWireTransferTmp.FieldCount -1 do
//      begin
//        if VarIsNull(cdsWireTransferTmp.Fields[i].Value) then
//        begin
//          if (cdsWireTransferTmp.Fields[i].DataType = ftFloat) then
//            oSheet.AsFloat[i, j] := 0
//          else
//            oSheet.AsString[i, j] := '';
//        end
//        else
//        begin
//          if LowerCase(cdsWireTransferTmp.Fields[i].FieldName) = 'valuedate' then
//            oSheet.AsVariant[i, j] := StrToInt(cdsWireTransferTmp.Fields[i].Value)
//          else
//            oSheet.AsVariant[i, j] := cdsWireTransferTmp.Fields[i].Value;
//        end;
//      end;
//
//      cdsWireTransferTmp.Next;
//    end;
//    oXls.Write;
//    FreeAndNil(oXls);
//
//    if FileExists(sFileName) then
//      ShellExecute(Application.Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL);
//  end;
end;

Initialization
  RegisterClass(TfrmCashBalanceAccount);

end.
