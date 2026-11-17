unit FormKSEIAccReconcile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBasic, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit,
  dxLayoutControl, Vcl.ActnList, NDatasetAction, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid,
  NActionPermission, Datasnap.DBClient, NClientDataset, cxPCdxBarPopupMenu, cxPC,
  System.JSON, dxBarBuiltInMenu, System.Actions, dxDateRanges, Vcl.ExtCtrls,
  dxScrollbarAnnotations;

type



  TfrmKSEIAccReconcile = class(TfrmBasic)
    aclKSEIAccRecon: TActionList;
    actViewData: TNAction;
    actUploadData: TNAction;
    ImportFilesDialog: TOpenDialog;
    cdsKSEIAccRecon: TNClientDataset;
    dsKSEIAccRecon: TDataSource;
    cxPageControl1: TcxPageControl;
    tabSIDRecon: TcxTabSheet;
    cxGrid1: TcxGrid;
    gvwKSEIAcc: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    tabRDNRecon: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    txtKSEIAccFile: TcxButtonEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    txtKSEIRDNFile: TcxButtonEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxGrid2: TcxGrid;
    gvwKSEIRDN: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    actViewDataRDN: TNAction;
    actUploadDataRDN: TNAction;
    cdsKSEIRDNRecon: TNClientDataset;
    dsKSEIRDNRecon: TDataSource;
    gvwKSEIRDNSIDNO: TcxGridDBBandedColumn;
    gvwKSEIRDNACCID: TcxGridDBBandedColumn;
    gvwKSEIRDNACCCODE: TcxGridDBBandedColumn;
    gvwKSEIRDNACCNAME: TcxGridDBBandedColumn;
    gvwKSEIRDNACC_STS: TcxGridDBBandedColumn;
    gvwKSEIRDNACCBANKID: TcxGridDBBandedColumn;
    gvwKSEIRDNBNCODE: TcxGridDBBandedColumn;
    gvwKSEIRDNBANKACCNO: TcxGridDBBandedColumn;
    gvwKSEIRDNCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwKSEIRDNSID: TcxGridDBBandedColumn;
    gvwKSEIAccCUSTODYACCNO: TcxGridDBBandedColumn;
    gvwKSEIAccKSEI_SID: TcxGridDBBandedColumn;
    gvwKSEIAccACCNAME: TcxGridDBBandedColumn;
    gvwKSEIAccSTAT: TcxGridDBBandedColumn;
    gvwKSEIAccX: TcxGridDBBandedColumn;
    gvwKSEIAccCUSTODYCODE: TcxGridDBBandedColumn;
    gvwKSEIAccCUSTDOYNAME: TcxGridDBBandedColumn;
    gvwKSEIAccSUBREKNO: TcxGridDBBandedColumn;
    gvwKSEIAccSUBREKTYPE: TcxGridDBBandedColumn;
    gvwKSEIAccSUBREKNAME: TcxGridDBBandedColumn;
    gvwKSEIAccSUBREKSTATUS: TcxGridDBBandedColumn;
    gvwKSEIAccSID: TcxGridDBBandedColumn;
    cdsKSEIAccReconCUSTODYACCNO: TStringField;
    cdsKSEIAccReconKSEI_SID: TStringField;
    cdsKSEIAccReconACCNAME: TStringField;
    cdsKSEIAccReconSTAT: TStringField;
    cdsKSEIAccReconX: TStringField;
    cdsKSEIAccReconCUSTODYCODE: TStringField;
    cdsKSEIAccReconCUSTODYNAME: TStringField;
    cdsKSEIAccReconSUBREKNO: TStringField;
    cdsKSEIAccReconSUBREKTYPE: TStringField;
    cdsKSEIAccReconSUBREKNAME: TStringField;
    cdsKSEIAccReconSUBREKSTATUS: TStringField;
    cdsKSEIAccReconSID: TStringField;
    cdsKSEIRDNReconCUSTODYACCNO: TStringField;
    cdsKSEIRDNReconKSEI_SID: TStringField;
    cdsKSEIRDNReconACCNAME: TStringField;
    cdsKSEIRDNReconSTAT: TStringField;
    cdsKSEIRDNReconX: TStringField;
    cdsKSEIRDNReconCUSTODYCODE: TStringField;
    cdsKSEIRDNReconCUSTODYNAME: TStringField;
    cdsKSEIRDNReconSUBREKNO: TStringField;
    cdsKSEIRDNReconSUBREKTYPE: TStringField;
    cdsKSEIRDNReconSUBREKNAME: TStringField;
    cdsKSEIRDNReconSUBREKSTATUS: TStringField;
    cdsKSEIRDNReconSID: TStringField;
    gvwSubrekStatus: TcxGridDBBandedColumn;
    gvwSID: TcxGridDBBandedColumn;
    pnlProgress: TPanel;
  //  cdsKSEIAccReconNPWP: TStringField;
//    cdsKSEIAccReconY: TStringField;
//    cdsKSEIAccReconZ: TStringField;
//    cdsKSEIAccReconENTTCODE: TStringField;
//    cdsKSEIAccReconW: TStringField;
    procedure txtKSEIRDNFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actUploadDataExecute(Sender: TObject);
    procedure actViewDataExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actUploadDataRDNExecute(Sender: TObject);
    procedure actViewDataRDNExecute(Sender: TObject);
    procedure txtKSEIAccFilePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKSEIAccReconcile: TfrmKSEIAccReconcile;

implementation

{$R *.dfm}

uses DataGlobal, DBXJSON, Data.DBXJSONCommon, FormPleaseWait;

procedure TfrmKSEIAccReconcile.actUploadDataExecute(Sender: TObject);
var
  sFileName, sMsg: String;
  slData: TStringList;
  oPleaseWait: TfrmPlaseWait;

  oFileStream: TFileStream;
  oFileArray: TJSONArray;

  oFileString: TStringList;
  sStartTime, sEndTime: string;
begin
  inherited;
  sFileName := txtKSEIAccFile.Text;
  if FileExists(sFileName) then
  begin
    try
      pnlProgress.Top     := Round((Self.Height / 2) - (pnlProgress.Height / 2));
      pnlProgress.Left    := Round((Self.Width / 2) - (pnlProgress.Width / 2));
      pnlProgress.Visible := True;
      Application.ProcessMessages;

      oFileString := TStringList.Create;
      oFileString.LoadFromFile(sFileName);

      sMsg := dmGlobal.RemoteServer.UploadStringListKSEI(oFileString.Text, ExtractFileName(sFileName));
    finally
      FreeAndNil(oFileString);

      cdsKSEIAccRecon.Close;
      cdsKSEIAccRecon.Open;

      pnlProgress.Visible := false;
      MessageDlg(sMsg, mtInformation, [mbOk], 0);
    end;

//    oFileStream := TFileStream.Create(sFileName, fmOpenRead);
//    oFileArray := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
//    Screen.Cursor := crSQLWait;
//    try
//      if dmGlobal.RemoteServer.UploadFileKSEIRecon(oFileArray, ExtractFileName(sFileName)) then
//      begin
//        Screen.Cursor := crDefault;
//        actViewData.Execute;
//      end;
//    finally
//      Screen.Cursor := crDefault;
//      FreeAndNil(oFileStream);
//    end;

//    oPleaseWait := TfrmPlaseWait.Create(nil);
//    slData      := TStringList.Create;
//    Try
//      oPleaseWait.Show;
//      Application.ProcessMessages;
//      slData.LoadFromFile(sFileName);
//      sMsg := dmGlobal.RemoteServer.UploadKSEIAccountData(slData.Text);
//      sEndTime := FormatDateTime('hh:nn:ss.zzz', Now);
//      actViewData.Execute;
//    Finally
//      FreeAndNil(slData);
//      FreeAndNil(oPleaseWait);
//
//      if sMsg <> '' then
//        ShowMessage(sMsg+';'+sStartTime+';'+sEndTime+';'+FormatDateTime('hh:nn:ss.zzz', Now));
//    End;
  end;
end;

procedure TfrmKSEIAccReconcile.actUploadDataRDNExecute(Sender: TObject);
var
  oFileStream: TFileStream;
  oFileArray: TJSONArray;
//  oSheet: TXLSWorkSheet;
begin
  inherited;
  if FileExists(txtKSEIRDNFile.Text) then
  begin
    if MessageDlg('Are you sure to upload KSEI RDN Progress File?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
//      XLS.Filename := txtKSEIRDNFile.Text;
//      XLS.Read;
//
//      oSheet := XLS.Sheets[0];
//      ShowMessage('oSheet.Name : ' + oSheet.Name);
//      Exit;

      oFileStream := TFileStream.Create(txtKSEIRDNFile.Text, fmOpenRead);
      oFileArray := TDBXJSONTools.StreamToJSON(oFileStream, 0, oFileStream.Size);
      Screen.Cursor := crSQLWait;
      Try
        if dmGlobal.RemoteServer.UploadRDNFile(oFileArray, ExtractFileName(txtKSEIRDNFile.Text)) then
        begin
          actViewData.Execute;
          Screen.Cursor := crDefault;
          ShowMessage('Finished upload KSEI RDN File');
        end;
      Finally
        Screen.Cursor := crDefault;
//        FreeAndNil(oFileArray);
        FreeAndNil(oFileStream);
      End;
    end;
  end;
end;

procedure TfrmKSEIAccReconcile.actViewDataExecute(Sender: TObject);

begin
  inherited;
  cdsKSEIAccRecon.Close;
  cdsKSEIAccRecon.Open;
//  gvwKSEIAcc.ApplyBestFit();

end;

procedure TfrmKSEIAccReconcile.actViewDataRDNExecute(Sender: TObject);
begin
  inherited;
  cdsKSEIRDNRecon.Close;
  cdsKSEIRDNRecon.Open;
//  gvwKSEIRDN.ApplyBestFit();
end;

procedure TfrmKSEIAccReconcile.FormCreate(Sender: TObject);
begin
  inherited;
//  actViewData.Execute;
//  actViewDataRDN.Execute;
end;

procedure TfrmKSEIAccReconcile.txtKSEIAccFilePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  ImportFilesDialog.Filter := 'Text Files|*.txt';
  if ImportFilesDialog.Execute then
  begin
    sFileName := ImportFilesDialog.FileName;

    if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
      txtKSEIAccFile.Text := sFileName;
  end;
end;

procedure TfrmKSEIAccReconcile.txtKSEIRDNFilePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  sFileName: string;
begin
  inherited;
  ImportFilesDialog.Filter := 'Excel Files|*.xls';
  if ImportFilesDialog.Execute then
  begin
    sFileName := ImportFilesDialog.FileName;

    if not VarIsEmpty(sFileName) or not VarIsNull(sFileName) then
      txtKSEIRDNFile.Text := sFileName;
  end;
end;

Initialization
  RegisterClass(TfrmKSEIAccReconcile);

end.
