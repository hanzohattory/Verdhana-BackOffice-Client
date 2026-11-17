unit FormSOPMember;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.Menus, cxImageComboBox, cxDBEdit, dxStatusBar,
  Data.DB, Vcl.StdCtrls, cxButtons, dxLayoutContainer, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, XLSSheetData5, XLSReadWriteII5, Datasnap.DBClient,
  DBXJSON, Data.DBXJSONCommon, NClientDataset, System.DateUtils, System.JSON;

type
  TfrmSOPMember = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    btnOK: TcxButton;
    btnCancel: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dsSubject: TDataSource;
    StatusBar: TdxStatusBar;
    dxLayoutControl1Group3: TdxLayoutGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    grdMaster: TcxGrid;
    gvwMaster: TcxGridDBBandedTableView;
    grdMasterLevel1: TcxGridLevel;
    dsSOPMember: TDataSource;
    gvwMasterNIK: TcxGridDBBandedColumn;
    gvwMasterNAME: TcxGridDBBandedColumn;
    gvwMasterBNCODE: TcxGridDBBandedColumn;
    gvwMasterBANKACCNO: TcxGridDBBandedColumn;
    gvwMasterBANKACCNAME: TcxGridDBBandedColumn;
    btnImportXls: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    XLS: TXLSReadWriteII5;
    OpenDialog: TOpenDialog;
    gvwMasterDEPOSIT_QTY: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    gvwMasterBANKBRANCH: TcxGridDBBandedColumn;
    gvwMasterACC_CUSTCODE: TcxGridDBBandedColumn;
    gvwMasterNPWPNO: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    AddBank1: TMenuItem;
    cdsAccSOPBank: TNClientDataset;
    cdsAccSOPBankACCSOPID: TIntegerField;
    cdsAccSOPBankMSOP_BANKID: TLargeintField;
    cdsAccSOPBankACCBANKCODE: TStringField;
    cdsAccSOPBankBNCODE: TStringField;
    cdsAccSOPBankBANKACCNO: TStringField;
    cdsAccSOPBankBANKACCNAME: TStringField;
    cdsAccSOPBankBANKBRANCH: TStringField;
    cdsAccSOPBankREMARKS: TStringField;
    cdsAccSOPBankASDEFAULT: TStringField;
    cdsAccSOPBankMODDA: TDateTimeField;
    cdsAccSOPBankMODUI: TStringField;
    cdsAccSOPBankAPPDA: TDateTimeField;
    cdsAccSOPBankAPPUI: TStringField;
    cdsAccSOPBankUNDER4Y: TIntegerField;
    cdsAccSOPBankUNDER4YDA: TDateTimeField;
    cdsAccSOPBankNOTES4Y: TStringField;
    cdsAccSOPBankISDEL: TIntegerField;
    cdsAccSOPBankID: TLargeintField;
    gvwMasterACCSOPID: TcxGridDBBandedColumn;
    procedure btnImportXlsClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure AddBank1Click(Sender: TObject);
    procedure cdsAccSOPBankNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSOPMember: TfrmSOPMember;

implementation

{$R *.dfm}

uses FormSOPList, DataGlobal, FormSOPAccBank;

procedure TfrmSOPMember.AddBank1Click(Sender: TObject);
var
  oForm: TfrmSOPAccBank;
  sNIK, sAccCode, sAccName: string;
  iAccSOPID: Integer;
begin
  iAccSOPID := gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterACCSOPID.Index];

  cdsAccSOPBank.Close;
  cdsAccSOPBank.Params[0].AsInteger := iAccSOPID;
  cdsAccSOPBank.Open;

  if VarIsNull(gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterNIK.Index]) then
    sNIK := ''
  else
    sNIK     := gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterNIK.Index];
  sAccCode := gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterACC_CUSTCODE.Index];
  sAccName := gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterNAME.Index];

  oForm := TfrmSOPAccBank.Create(nil);
  with TfrmSOPAccBank(oForm) do
  begin
    txtNIK.Text     := sNIK;
    txtAccCode.Text := sAccCode;
    txtAccName.Text := sAccName;
  end;

  if oForm.ShowModal = mrOk then
    cdsAccSOPBank.ApplyUpdates(-1);
  FreeAndNil(oForm);
end;

procedure TfrmSOPMember.btnImportXlsClick(Sender: TObject);
var
  sFileName: String;
  oSheet: TXLSWorkSheet;
  oDataSet: TDataSet;
  i: Integer;
  bResult: Boolean;
  oFileStream: TFileStream;
  oFileArray: TJSONArray;
begin
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;
    if FileExists(sFileName) then
    begin
       try
        Screen.Cursor := crSQLWait;

        oFileStream   := TFileStream.Create(sFileName, fmOpenRead);
        oFileArray    := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
        oDataSet      := dsSOPMember.DataSet;
        bResult       := dmGlobal.RemoteServer.UploadSOPMember(oFileArray, sFileName, oDataSet.FieldByName('SOPID').AsInteger);

        if bResult then
          MessageDlg('Upload SOP member successfully', mtInformation, [mbOK], 0)
        else
          MessageDlg('Upload SOP member fail', mtError, [mbOK], 0);

      finally
        oDataSet.Refresh;
        Screen.Cursor := crDefault;
        FreeAndNil(oFileArray);
        FreeAndNil(oFileStream);
      end;

//      XLS.Filename := sFileName;
//      XLS.Read;
//      oSheet := XLS.Sheets[0];
//      oDataSet := dsSOPMember.DataSet;
//
//      oDataSet.DisableControls;
//      Screen.Cursor := crSQLWait;
//      Try
//        for i := 1 to oSheet.LastRow do
//        begin
//          oDataSet.Append;
//          oDataSet.FieldByName('NIK').AsString := oSheet.AsString[0, i];
//          oDataSet.FieldByName('NAME').AsString := oSheet.AsString[1, i];
//          oDataSet.FieldByName('BNCODE').AsString := oSheet.AsString[2, i];
//          oDataSet.FieldByName('BANKACCNO').AsString := oSheet.AsString[3, i];
//          oDataSet.FieldByName('BANKACCNAME').AsString := oSheet.AsString[4, i];
//          oDataSet.Post;
//        end;
//
//        if oDataSet is TClientDataSet then
//        begin
//          TClientDataSet(oDataSet).ApplyUpdates(0);
//        end;
//
//      Finally
//        Screen.Cursor := crDefault;
//        oDataSet.EnableControls;
//      End;
    end;
  end;

end;

procedure TfrmSOPMember.cdsAccSOPBankNewRecord(DataSet: TDataSet);
begin
  cdsAccSOPBankMSOP_BANKID.AsInteger := dmGlobal.RemoteServer.GetSeq('MSOPBANKID');
  cdsAccSOPBankACCSOPID.AsInteger    := gvwMaster.Controller.SelectedRecords[0].Values[gvwMasterACCSOPID.Index];
end;

procedure TfrmSOPMember.cxButton1Click(Sender: TObject);
var
  sFileName: String;
  oSheet: TXLSWorkSheet;
  oDataSet: TDataSet;
  bResult: Boolean;
  oFileStream: TFileStream;
  oFileArray: TJSONArray;
begin
  if OpenDialog.Execute then
  begin
    sFileName := OpenDialog.FileName;
    if FileExists(sFileName) then
    begin
      try
        Screen.Cursor := crSQLWait;

        oFileStream   := TFileStream.Create(sFileName, fmOpenRead);
        oFileArray    := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
        oDataSet      := dsSOPMember.DataSet;
        bResult       := dmGlobal.RemoteServer.UploadSOPDepositQty(oFileArray, sFileName, oDataSet.FieldByName('SOPID').AsInteger);

        if bResult then
          MessageDlg('Upload deposit quantity successfully', mtInformation, [mbOK], 0)
        else
          MessageDlg('Upload deposit quantity fail', mtError, [mbOK], 0);

      finally
        oDataSet.Refresh;
        Screen.Cursor := crDefault;
        FreeAndNil(oFileArray);
        FreeAndNil(oFileStream);
      end;
    end;
  end;
end;

end.
